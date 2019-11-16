; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xaaf6a0_type = type <{ [4 x i8] }>
%G__0x57ad9b_type = type <{ [8 x i8] }>
%G__0x57b28d_type = type <{ [8 x i8] }>
%G__0x57b2ac_type = type <{ [8 x i8] }>
%G__0xaaf6b0_type = type <{ [8 x i8] }>
%G__0xb01180_type = type <{ [8 x i8] }>
%G__0xb9a0a0_type = type <{ [8 x i8] }>
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
@G_0xaaf6a0 = local_unnamed_addr global %G_0xaaf6a0_type zeroinitializer
@G__0x57ad9b = global %G__0x57ad9b_type zeroinitializer
@G__0x57b28d = global %G__0x57b28d_type zeroinitializer
@G__0x57b2ac = global %G__0x57b2ac_type zeroinitializer
@G__0xaaf6b0 = global %G__0xaaf6b0_type zeroinitializer
@G__0xb01180 = global %G__0xb01180_type zeroinitializer
@G__0xb9a0a0 = global %G__0xb9a0a0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @dragon_escape(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1544
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1536
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
  %RAX.i1786 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 3, i64* %RAX.i1786, align 8
  %RDI.i1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i1843, align 8
  %42 = add i64 %10, 19
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1840 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i1840, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %RDX.i1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i1837, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -1492
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 10
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 0, i32* %61, align 4
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -1496
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 10
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %63 to i32*
  store i32 0, i32* %66, align 4
  %67 = load i64, i64* %RAX.i1786, align 8
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -12
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 3
  store i64 %71, i64* %3, align 8
  %72 = trunc i64 %67 to i32
  %73 = inttoptr i64 %69 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = sub i32 %72, %74
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RAX.i1786, align 8
  %77 = icmp ult i32 %72, %74
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %14, align 1
  %79 = and i32 %75, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79)
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %21, align 1
  %84 = xor i32 %74, %72
  %85 = xor i32 %84, %75
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %26, align 1
  %89 = icmp eq i32 %75, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %29, align 1
  %91 = lshr i32 %75, 31
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %32, align 1
  %93 = lshr i32 %72, 31
  %94 = lshr i32 %74, 31
  %95 = xor i32 %94, %93
  %96 = xor i32 %91, %93
  %97 = add nuw nsw i32 %96, %95
  %98 = icmp eq i32 %97, 2
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %38, align 1
  %EAX.i1827 = bitcast %union.anon* %39 to i32*
  %100 = add i64 %68, -1500
  %101 = add i64 %70, 9
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i32*
  store i32 %75, i32* %102, align 4
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -1508
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 10
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i32*
  store i32 0, i32* %107, align 4
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -12
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 4
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %109 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, -1
  %115 = icmp eq i32 %113, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %14, align 1
  %117 = and i32 %114, 255
  %118 = tail call i32 @llvm.ctpop.i32(i32 %117)
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  store i8 %121, i8* %21, align 1
  %122 = xor i32 %114, %113
  %123 = lshr i32 %122, 4
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  store i8 %125, i8* %26, align 1
  %126 = icmp eq i32 %114, 0
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %29, align 1
  %128 = lshr i32 %114, 31
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %32, align 1
  %130 = lshr i32 %113, 31
  %131 = xor i32 %128, %130
  %132 = add nuw nsw i32 %131, %130
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %38, align 1
  %.v144 = select i1 %126, i64 20, i64 10
  %135 = add i64 %110, %.v144
  store i64 %135, i64* %3, align 8
  br i1 %126, label %block_.L_420e76, label %block_420e6c

block_420e6c:                                     ; preds = %entry
  %136 = add i64 %135, 4
  store i64 %136, i64* %3, align 8
  %137 = load i32, i32* %112, align 4
  %138 = add i32 %137, -2
  %139 = icmp ult i32 %137, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %14, align 1
  %141 = and i32 %138, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141)
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %21, align 1
  %146 = xor i32 %138, %137
  %147 = lshr i32 %146, 4
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  store i8 %149, i8* %26, align 1
  %150 = icmp eq i32 %138, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %29, align 1
  %152 = lshr i32 %138, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %32, align 1
  %154 = lshr i32 %137, 31
  %155 = xor i32 %152, %154
  %156 = add nuw nsw i32 %155, %154
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %38, align 1
  %.v145 = select i1 %150, i64 10, i64 15
  %159 = add i64 %135, %.v145
  store i64 %159, i64* %3, align 8
  br i1 %150, label %block_.L_420e76, label %block_.L_420e7b

block_.L_420e76:                                  ; preds = %block_420e6c, %entry
  %160 = phi i64 [ %159, %block_420e6c ], [ %135, %entry ]
  %161 = add i64 %160, 45
  store i64 %161, i64* %3, align 8
  br label %block_.L_420ea3

block_.L_420e7b:                                  ; preds = %block_420e6c
  store i64 ptrtoint (%G__0x57ad9b_type* @G__0x57ad9b to i64), i64* %RDI.i1843, align 8
  %RSI.i1814 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 1721, i64* %RSI.i1814, align 8
  store i64 ptrtoint (%G__0x57b28d_type* @G__0x57b28d to i64), i64* %RDX.i1837, align 8
  store i64 4294967295, i64* %RAX.i1786, align 8
  %RCX.i1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4294967295, i64* %RCX.i1808, align 8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 4294967295, i64* %162, align 8
  %163 = add i64 %159, 201237
  %164 = add i64 %159, 40
  %165 = load i64, i64* %6, align 8
  %166 = add i64 %165, -8
  %167 = inttoptr i64 %166 to i64*
  store i64 %164, i64* %167, align 8
  store i64 %166, i64* %6, align 8
  store i64 %163, i64* %3, align 8
  %call2_420e9e = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %163, %struct.Memory* %2)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_420ea3

block_.L_420ea3:                                  ; preds = %block_.L_420e7b, %block_.L_420e76
  %168 = phi i64 [ %161, %block_.L_420e76 ], [ %.pre, %block_.L_420e7b ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_420e76 ], [ %call2_420e9e, %block_.L_420e7b ]
  %169 = load i32, i32* bitcast (%G_0xaaf6a0_type* @G_0xaaf6a0 to i32*), align 8
  store i8 0, i8* %14, align 1
  %170 = and i32 %169, 255
  %171 = tail call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %175 = icmp eq i32 %169, 0
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %29, align 1
  %177 = lshr i32 %169, 31
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v146 = select i1 %175, i64 14, i64 52
  %179 = add i64 %168, %.v146
  store i64 %179, i64* %3, align 8
  br i1 %175, label %block_420eb1, label %block_.L_420ea3.block_.L_420ed7_crit_edge

block_.L_420ea3.block_.L_420ed7_crit_edge:        ; preds = %block_.L_420ea3
  %.pre138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre139 = getelementptr inbounds %union.anon, %union.anon* %.pre138, i64 0, i32 0
  %.pre141 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  br label %block_.L_420ed7

block_420eb1:                                     ; preds = %block_.L_420ea3
  store i64 ptrtoint (%G__0xaaf6b0_type* @G__0xaaf6b0 to i64), i64* %RAX.i1786, align 8
  %RSI.i1797 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 0, i64* %RSI.i1797, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1795 = getelementptr inbounds %union.anon, %union.anon* %180, i64 0, i32 0
  store i64 1600, i64* %RCX.i1795, align 8
  store i64 1600, i64* %RDX.i1837, align 8
  store i64 ptrtoint (%G__0xaaf6b0_type* @G__0xaaf6b0 to i64), i64* %RDI.i1843, align 8
  %181 = add i64 %179, -130625
  %182 = add i64 %179, 27
  %183 = load i64, i64* %6, align 8
  %184 = add i64 %183, -8
  %185 = inttoptr i64 %184 to i64*
  store i64 %182, i64* %185, align 8
  store i64 %184, i64* %6, align 8
  store i64 %181, i64* %3, align 8
  %186 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %MEMORY.1)
  %187 = load i64, i64* %3, align 8
  %188 = add i64 %187, 11
  store i64 %188, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0xaaf6a0_type* @G_0xaaf6a0 to i32*), align 8
  br label %block_.L_420ed7

block_.L_420ed7:                                  ; preds = %block_.L_420ea3.block_.L_420ed7_crit_edge, %block_420eb1
  %RSI.i1742.pre-phi = phi i64* [ %.pre141, %block_.L_420ea3.block_.L_420ed7_crit_edge ], [ %RSI.i1797, %block_420eb1 ]
  %ECX.i1772.pre-phi.in = phi %union.anon* [ %.pre138, %block_.L_420ea3.block_.L_420ed7_crit_edge ], [ %180, %block_420eb1 ]
  %RCX.i1775.pre-phi = phi i64* [ %.pre139, %block_.L_420ea3.block_.L_420ed7_crit_edge ], [ %RCX.i1795, %block_420eb1 ]
  %189 = phi i64 [ %179, %block_.L_420ea3.block_.L_420ed7_crit_edge ], [ %188, %block_420eb1 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_420ea3.block_.L_420ed7_crit_edge ], [ %186, %block_420eb1 ]
  %ECX.i1772.pre-phi = bitcast %union.anon* %ECX.i1772.pre-phi.in to i32*
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -28
  %192 = add i64 %189, 7
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  store i32 21, i32* %193, align 4
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_420ede

block_.L_420ede:                                  ; preds = %block_.L_420f42, %block_.L_420ed7
  %194 = phi i64 [ %359, %block_.L_420f42 ], [ %.pre107, %block_.L_420ed7 ]
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -28
  %197 = add i64 %194, 7
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = add i32 %199, -400
  %201 = icmp ult i32 %199, 400
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %14, align 1
  %203 = and i32 %200, 255
  %204 = tail call i32 @llvm.ctpop.i32(i32 %203)
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = xor i8 %206, 1
  store i8 %207, i8* %21, align 1
  %208 = xor i32 %199, 16
  %209 = xor i32 %208, %200
  %210 = lshr i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %26, align 1
  %213 = icmp eq i32 %200, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %29, align 1
  %215 = lshr i32 %200, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %32, align 1
  %217 = lshr i32 %199, 31
  %218 = xor i32 %215, %217
  %219 = add nuw nsw i32 %218, %217
  %220 = icmp eq i32 %219, 2
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %38, align 1
  %222 = icmp ne i8 %216, 0
  %223 = xor i1 %222, %220
  %.v147 = select i1 %223, i64 13, i64 119
  %224 = add i64 %194, %.v147
  store i64 %224, i64* %3, align 8
  br i1 %223, label %block_420eeb, label %block_.L_420f55

block_420eeb:                                     ; preds = %block_.L_420ede
  %225 = add i64 %224, 4
  store i64 %225, i64* %3, align 8
  %226 = load i32, i32* %198, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %RAX.i1786, align 8
  %228 = add nsw i64 %227, 12099168
  %229 = add i64 %224, 12
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i8*
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i64
  store i64 %232, i64* %RCX.i1775.pre-phi, align 8
  %233 = zext i8 %231 to i32
  %234 = add nsw i32 %233, -3
  %235 = icmp ult i8 %231, 3
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %14, align 1
  %237 = and i32 %234, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %21, align 1
  %242 = xor i32 %234, %233
  %243 = lshr i32 %242, 4
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  store i8 %245, i8* %26, align 1
  %246 = icmp eq i32 %234, 0
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %29, align 1
  %248 = lshr i32 %234, 31
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v235 = select i1 %246, i64 87, i64 21
  %250 = add i64 %224, %.v235
  store i64 %250, i64* %3, align 8
  br i1 %246, label %block_.L_420f42, label %block_420f00

block_420f00:                                     ; preds = %block_420eeb
  %251 = add i64 %195, -8
  %252 = add i64 %250, 4
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %RAX.i1786, align 8
  %255 = add i64 %250, 8
  store i64 %255, i64* %3, align 8
  %256 = load i32, i32* %198, align 4
  %257 = sext i32 %256 to i64
  store i64 %257, i64* %RCX.i1775.pre-phi, align 8
  %258 = add i64 %254, %257
  %259 = add i64 %250, 12
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i8*
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i64
  %263 = and i64 %262, 4294967295
  store i64 %263, i64* %RDX.i1837, align 8
  %264 = sext i8 %261 to i32
  store i8 0, i8* %14, align 1
  %265 = and i32 %264, 255
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265)
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %270 = icmp eq i8 %261, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %29, align 1
  %272 = lshr i32 %264, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v236 = select i1 %270, i64 66, i64 21
  %274 = add i64 %250, %.v236
  store i64 %274, i64* %3, align 8
  br i1 %270, label %block_.L_420f42, label %block_420f15

block_420f15:                                     ; preds = %block_420f00
  %275 = add i64 %274, 3
  store i64 %275, i64* %3, align 8
  %276 = load i32, i32* %198, align 4
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RAX.i1786, align 8
  %278 = add i64 %195, -1496
  %279 = add i64 %274, 9
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RCX.i1775.pre-phi, align 8
  %283 = add i32 %281, 1
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RDX.i1837, align 8
  %285 = icmp eq i32 %281, -1
  %286 = icmp eq i32 %283, 0
  %287 = or i1 %285, %286
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %14, align 1
  %289 = and i32 %283, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %21, align 1
  %294 = xor i32 %283, %281
  %295 = lshr i32 %294, 4
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  store i8 %297, i8* %26, align 1
  %298 = zext i1 %286 to i8
  store i8 %298, i8* %29, align 1
  %299 = lshr i32 %283, 31
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* %32, align 1
  %301 = lshr i32 %281, 31
  %302 = xor i32 %299, %301
  %303 = add nuw nsw i32 %302, %299
  %304 = icmp eq i32 %303, 2
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %38, align 1
  %306 = add i64 %274, 20
  store i64 %306, i64* %3, align 8
  store i32 %283, i32* %280, align 4
  %307 = load i32, i32* %ECX.i1772.pre-phi, align 4
  %308 = load i64, i64* %3, align 8
  %309 = sext i32 %307 to i64
  store i64 %309, i64* %RSI.i1742.pre-phi, align 8
  %310 = load i64, i64* %RBP.i, align 8
  %311 = shl nsw i64 %309, 2
  %312 = add nsw i64 %311, -1488
  %313 = add i64 %312, %310
  %314 = load i32, i32* %EAX.i1827, align 4
  %315 = add i64 %308, 10
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %313 to i32*
  store i32 %314, i32* %316, align 4
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -28
  %319 = load i64, i64* %3, align 8
  %320 = add i64 %319, 4
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %318 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  store i64 %323, i64* %RSI.i1742.pre-phi, align 8
  %324 = shl nsw i64 %323, 2
  %325 = add nsw i64 %324, 11204272
  %326 = add i64 %319, 15
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  store i32 1, i32* %327, align 4
  %.pre136 = load i64, i64* %3, align 8
  %.pre137 = load i64, i64* %RBP.i, align 8
  br label %block_.L_420f42

block_.L_420f42:                                  ; preds = %block_420f15, %block_420f00, %block_420eeb
  %328 = phi i64 [ %.pre137, %block_420f15 ], [ %195, %block_420f00 ], [ %195, %block_420eeb ]
  %329 = phi i64 [ %.pre136, %block_420f15 ], [ %274, %block_420f00 ], [ %250, %block_420eeb ]
  %330 = add i64 %328, -28
  %331 = add i64 %329, 8
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = add i32 %333, 1
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RAX.i1786, align 8
  %336 = icmp eq i32 %333, -1
  %337 = icmp eq i32 %334, 0
  %338 = or i1 %336, %337
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %14, align 1
  %340 = and i32 %334, 255
  %341 = tail call i32 @llvm.ctpop.i32(i32 %340)
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  store i8 %344, i8* %21, align 1
  %345 = xor i32 %334, %333
  %346 = lshr i32 %345, 4
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  store i8 %348, i8* %26, align 1
  %349 = zext i1 %337 to i8
  store i8 %349, i8* %29, align 1
  %350 = lshr i32 %334, 31
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %32, align 1
  %352 = lshr i32 %333, 31
  %353 = xor i32 %350, %352
  %354 = add nuw nsw i32 %353, %350
  %355 = icmp eq i32 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %38, align 1
  %357 = add i64 %329, 14
  store i64 %357, i64* %3, align 8
  store i32 %334, i32* %332, align 4
  %358 = load i64, i64* %3, align 8
  %359 = add i64 %358, -114
  store i64 %359, i64* %3, align 8
  br label %block_.L_420ede

block_.L_420f55:                                  ; preds = %block_.L_420ede
  %360 = add i64 %195, -1504
  %361 = add i64 %224, 10
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  store i32 0, i32* %362, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_420f5f

block_.L_420f5f:                                  ; preds = %block_.L_421ae7, %block_.L_420f55
  %363 = phi i64 [ %5606, %block_.L_421ae7 ], [ %.pre108, %block_.L_420f55 ]
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -1504
  %366 = add i64 %363, 7
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = add i32 %368, -4
  %370 = icmp ult i32 %368, 4
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %14, align 1
  %372 = and i32 %369, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %21, align 1
  %377 = xor i32 %369, %368
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %26, align 1
  %381 = icmp eq i32 %369, 0
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %29, align 1
  %383 = lshr i32 %369, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %32, align 1
  %385 = lshr i32 %368, 31
  %386 = xor i32 %383, %385
  %387 = add nuw nsw i32 %386, %385
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %38, align 1
  %390 = icmp ne i8 %384, 0
  %391 = xor i1 %390, %388
  %.demorgan = or i1 %381, %391
  %.v148 = select i1 %.demorgan, i64 13, i64 2977
  %392 = add i64 %363, %.v148
  store i64 %392, i64* %3, align 8
  br i1 %.demorgan, label %block_420f6c, label %block_.L_421b00

block_420f6c:                                     ; preds = %block_.L_420f5f
  %393 = add i64 %364, -1496
  %394 = add i64 %392, 6
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = zext i32 %396 to i64
  store i64 %397, i64* %RAX.i1786, align 8
  %398 = add i64 %364, -1512
  %399 = add i64 %392, 12
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  store i32 %396, i32* %400, align 4
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_420f78

block_.L_420f78:                                  ; preds = %block_.L_420f78.backedge, %block_420f6c
  %401 = phi i64 [ %.sink, %block_.L_420f78.backedge ], [ %.pre109, %block_420f6c ]
  %402 = load i64, i64* %RBP.i, align 8
  %403 = add i64 %402, -1492
  %404 = add i64 %401, 6
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RAX.i1786, align 8
  %408 = add i64 %402, -1512
  %409 = add i64 %401, 12
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = sub i32 %406, %411
  %413 = icmp ult i32 %406, %411
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %14, align 1
  %415 = and i32 %412, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %21, align 1
  %420 = xor i32 %411, %406
  %421 = xor i32 %420, %412
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %26, align 1
  %425 = icmp eq i32 %412, 0
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %29, align 1
  %427 = lshr i32 %412, 31
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %32, align 1
  %429 = lshr i32 %406, 31
  %430 = lshr i32 %411, 31
  %431 = xor i32 %430, %429
  %432 = xor i32 %427, %429
  %433 = add nuw nsw i32 %432, %431
  %434 = icmp eq i32 %433, 2
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %38, align 1
  %436 = icmp ne i8 %428, 0
  %437 = xor i1 %436, %434
  %.v = select i1 %437, i64 18, i64 2927
  %438 = add i64 %401, %.v
  store i64 %438, i64* %3, align 8
  br i1 %437, label %block_420f8a, label %block_.L_421ae7

block_420f8a:                                     ; preds = %block_.L_420f78
  %439 = add i64 %438, 7
  store i64 %439, i64* %3, align 8
  %440 = load i32, i32* %405, align 4
  %441 = sext i32 %440 to i64
  store i64 %441, i64* %RAX.i1786, align 8
  %442 = shl nsw i64 %441, 2
  %443 = add i64 %402, -1488
  %444 = add i64 %443, %442
  %445 = add i64 %438, 14
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = zext i32 %447 to i64
  store i64 %448, i64* %RCX.i1775.pre-phi, align 8
  %449 = add i64 %402, -28
  %450 = add i64 %438, 17
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i32*
  store i32 %447, i32* %451, align 4
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -1492
  %454 = load i64, i64* %3, align 8
  %455 = add i64 %454, 6
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %453 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = add i32 %457, 1
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RCX.i1775.pre-phi, align 8
  %460 = icmp eq i32 %457, -1
  %461 = icmp eq i32 %458, 0
  %462 = or i1 %460, %461
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %14, align 1
  %464 = and i32 %458, 255
  %465 = tail call i32 @llvm.ctpop.i32(i32 %464)
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %21, align 1
  %469 = xor i32 %458, %457
  %470 = lshr i32 %469, 4
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  store i8 %472, i8* %26, align 1
  %473 = zext i1 %461 to i8
  store i8 %473, i8* %29, align 1
  %474 = lshr i32 %458, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %32, align 1
  %476 = lshr i32 %457, 31
  %477 = xor i32 %474, %476
  %478 = add nuw nsw i32 %477, %474
  %479 = icmp eq i32 %478, 2
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %38, align 1
  %481 = add i64 %454, 15
  store i64 %481, i64* %3, align 8
  store i32 %458, i32* %456, align 4
  %482 = load i64, i64* %RBP.i, align 8
  %483 = add i64 %482, -12
  %484 = load i64, i64* %3, align 8
  %485 = add i64 %484, 4
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %483 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = add i32 %487, -1
  %489 = icmp eq i32 %487, 0
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %14, align 1
  %491 = and i32 %488, 255
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491)
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %21, align 1
  %496 = xor i32 %488, %487
  %497 = lshr i32 %496, 4
  %498 = trunc i32 %497 to i8
  %499 = and i8 %498, 1
  store i8 %499, i8* %26, align 1
  %500 = icmp eq i32 %488, 0
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %29, align 1
  %502 = lshr i32 %488, 31
  %503 = trunc i32 %502 to i8
  store i8 %503, i8* %32, align 1
  %504 = lshr i32 %487, 31
  %505 = xor i32 %502, %504
  %506 = add nuw nsw i32 %505, %504
  %507 = icmp eq i32 %506, 2
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %38, align 1
  %.v151 = select i1 %500, i64 10, i64 81
  %509 = add i64 %484, %.v151
  store i64 %509, i64* %3, align 8
  br i1 %500, label %block_420fb4, label %block_.L_420ffb

block_420fb4:                                     ; preds = %block_420f8a
  store i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64* %RAX.i1786, align 8
  %510 = add i64 %482, -28
  %511 = add i64 %509, 14
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %510 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = sext i32 %513 to i64
  %515 = mul nsw i64 %514, 36
  store i64 %515, i64* %RCX.i1775.pre-phi, align 8
  %516 = lshr i64 %515, 63
  %517 = add i64 %515, ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64)
  store i64 %517, i64* %RAX.i1786, align 8
  %518 = icmp ult i64 %517, ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64)
  %519 = icmp ult i64 %517, %515
  %520 = or i1 %518, %519
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %14, align 1
  %522 = trunc i64 %517 to i32
  %523 = and i32 %522, 252
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %21, align 1
  %528 = xor i64 %515, ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64)
  %529 = xor i64 %528, %517
  %530 = lshr i64 %529, 4
  %531 = trunc i64 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %26, align 1
  %533 = icmp eq i64 %517, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %29, align 1
  %535 = lshr i64 %517, 63
  %536 = trunc i64 %535 to i8
  store i8 %536, i8* %32, align 1
  %537 = xor i64 %535, lshr (i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64 63)
  %538 = xor i64 %535, %516
  %539 = add nuw nsw i64 %537, %538
  %540 = icmp eq i64 %539, 2
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %38, align 1
  %542 = add i64 %515, add (i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64 29)
  %543 = add i64 %509, 25
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i8*
  %545 = load i8, i8* %544, align 1
  %546 = and i8 %545, 4
  %547 = zext i8 %546 to i64
  %548 = zext i8 %546 to i32
  store i64 %547, i64* %RDX.i1837, align 8
  store i8 0, i8* %14, align 1
  %549 = tail call i32 @llvm.ctpop.i32(i32 %548)
  %550 = trunc i32 %549 to i8
  %551 = xor i8 %550, 1
  store i8 %551, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit142 = lshr exact i8 %546, 2
  %552 = xor i8 %.lobit142, 1
  store i8 %552, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %553 = icmp eq i8 %552, 0
  %.v233 = select i1 %553, i64 152, i64 37
  %554 = add i64 %509, %.v233
  store i64 %554, i64* %3, align 8
  br i1 %553, label %block_.L_42104c, label %block_420fd9

block_420fd9:                                     ; preds = %block_420fb4
  store i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64* %RAX.i1786, align 8
  %555 = load i64, i64* %RBP.i, align 8
  %556 = add i64 %555, -28
  %557 = add i64 %554, 14
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = sext i32 %559 to i64
  %561 = mul nsw i64 %560, 36
  store i64 %561, i64* %RCX.i1775.pre-phi, align 8
  %562 = lshr i64 %561, 63
  %563 = add i64 %561, ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64)
  store i64 %563, i64* %RAX.i1786, align 8
  %564 = icmp ult i64 %563, ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64)
  %565 = icmp ult i64 %563, %561
  %566 = or i1 %564, %565
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %14, align 1
  %568 = trunc i64 %563 to i32
  %569 = and i32 %568, 252
  %570 = tail call i32 @llvm.ctpop.i32(i32 %569)
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  store i8 %573, i8* %21, align 1
  %574 = xor i64 %561, ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64)
  %575 = xor i64 %574, %563
  %576 = lshr i64 %575, 4
  %577 = trunc i64 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %26, align 1
  %579 = icmp eq i64 %563, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %29, align 1
  %581 = lshr i64 %563, 63
  %582 = trunc i64 %581 to i8
  store i8 %582, i8* %32, align 1
  %583 = xor i64 %581, lshr (i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64 63)
  %584 = xor i64 %581, %562
  %585 = add nuw nsw i64 %583, %584
  %586 = icmp eq i64 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %38, align 1
  %588 = add i64 %561, add (i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64 32)
  %589 = add i64 %554, 25
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i8*
  %591 = load i8, i8* %590, align 4
  %592 = sext i8 %591 to i64
  %593 = and i64 %592, 4294967295
  store i64 %593, i64* %RDX.i1837, align 8
  %594 = sext i8 %591 to i32
  %595 = add nsw i32 %594, -1
  %596 = icmp eq i8 %591, 0
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %14, align 1
  %598 = and i32 %595, 255
  %599 = tail call i32 @llvm.ctpop.i32(i32 %598)
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %21, align 1
  %603 = xor i32 %595, %594
  %604 = lshr i32 %603, 4
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  store i8 %606, i8* %26, align 1
  %607 = icmp eq i32 %595, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %29, align 1
  %609 = lshr i32 %595, 31
  %610 = trunc i32 %609 to i8
  store i8 %610, i8* %32, align 1
  %611 = lshr i32 %594, 31
  %612 = xor i32 %609, %611
  %613 = add nuw nsw i32 %612, %611
  %614 = icmp eq i32 %613, 2
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %38, align 1
  %.v234 = select i1 %607, i64 115, i64 34
  %616 = add i64 %554, %.v234
  store i64 %616, i64* %3, align 8
  br i1 %607, label %block_.L_42104c, label %block_420fd9.block_.L_420ffb_crit_edge

block_420fd9.block_.L_420ffb_crit_edge:           ; preds = %block_420fd9
  %.pre110 = load i64, i64* %RBP.i, align 8
  br label %block_.L_420ffb

block_.L_420ffb:                                  ; preds = %block_420f8a, %block_420fd9.block_.L_420ffb_crit_edge
  %617 = phi i64 [ %616, %block_420fd9.block_.L_420ffb_crit_edge ], [ %509, %block_420f8a ]
  %618 = phi i64 [ %.pre110, %block_420fd9.block_.L_420ffb_crit_edge ], [ %482, %block_420f8a ]
  %619 = add i64 %618, -12
  %620 = add i64 %617, 4
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = add i32 %622, -2
  %624 = icmp ult i32 %622, 2
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %14, align 1
  %626 = and i32 %623, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %21, align 1
  %631 = xor i32 %623, %622
  %632 = lshr i32 %631, 4
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  store i8 %634, i8* %26, align 1
  %635 = icmp eq i32 %623, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %29, align 1
  %637 = lshr i32 %623, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %32, align 1
  %639 = lshr i32 %622, 31
  %640 = xor i32 %637, %639
  %641 = add nuw nsw i32 %640, %639
  %642 = icmp eq i32 %641, 2
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %38, align 1
  %.v152 = select i1 %635, i64 10, i64 86
  %644 = add i64 %617, %.v152
  store i64 %644, i64* %3, align 8
  br i1 %635, label %block_421005, label %block_.L_421051

block_421005:                                     ; preds = %block_.L_420ffb
  store i64 ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64), i64* %RAX.i1786, align 8
  %645 = add i64 %618, -28
  %646 = add i64 %644, 14
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = sext i32 %648 to i64
  %650 = mul nsw i64 %649, 36
  store i64 %650, i64* %RCX.i1775.pre-phi, align 8
  %651 = lshr i64 %650, 63
  %652 = add i64 %650, ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64)
  store i64 %652, i64* %RAX.i1786, align 8
  %653 = icmp ult i64 %652, ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64)
  %654 = icmp ult i64 %652, %650
  %655 = or i1 %653, %654
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %14, align 1
  %657 = trunc i64 %652 to i32
  %658 = and i32 %657, 252
  %659 = tail call i32 @llvm.ctpop.i32(i32 %658)
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  store i8 %662, i8* %21, align 1
  %663 = xor i64 %650, ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64)
  %664 = xor i64 %663, %652
  %665 = lshr i64 %664, 4
  %666 = trunc i64 %665 to i8
  %667 = and i8 %666, 1
  store i8 %667, i8* %26, align 1
  %668 = icmp eq i64 %652, 0
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %29, align 1
  %670 = lshr i64 %652, 63
  %671 = trunc i64 %670 to i8
  store i8 %671, i8* %32, align 1
  %672 = xor i64 %670, lshr (i64 ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64), i64 63)
  %673 = xor i64 %670, %651
  %674 = add nuw nsw i64 %672, %673
  %675 = icmp eq i64 %674, 2
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %38, align 1
  %677 = add i64 %650, add (i64 ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64), i64 29)
  %678 = add i64 %644, 25
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i8*
  %680 = load i8, i8* %679, align 1
  %681 = and i8 %680, 4
  %682 = zext i8 %681 to i64
  %683 = zext i8 %681 to i32
  store i64 %682, i64* %RDX.i1837, align 8
  store i8 0, i8* %14, align 1
  %684 = tail call i32 @llvm.ctpop.i32(i32 %683)
  %685 = trunc i32 %684 to i8
  %686 = xor i8 %685, 1
  store i8 %686, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit143 = lshr exact i8 %681, 2
  %687 = xor i8 %.lobit143, 1
  store i8 %687, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %688 = icmp eq i8 %687, 0
  %.v231 = select i1 %688, i64 71, i64 37
  %689 = add i64 %644, %.v231
  store i64 %689, i64* %3, align 8
  br i1 %688, label %block_.L_42104c, label %block_42102a

block_42102a:                                     ; preds = %block_421005
  store i64 ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64), i64* %RAX.i1786, align 8
  %690 = load i64, i64* %RBP.i, align 8
  %691 = add i64 %690, -28
  %692 = add i64 %689, 14
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = sext i32 %694 to i64
  %696 = mul nsw i64 %695, 36
  store i64 %696, i64* %RCX.i1775.pre-phi, align 8
  %697 = lshr i64 %696, 63
  %698 = add i64 %696, ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64)
  store i64 %698, i64* %RAX.i1786, align 8
  %699 = icmp ult i64 %698, ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64)
  %700 = icmp ult i64 %698, %696
  %701 = or i1 %699, %700
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %14, align 1
  %703 = trunc i64 %698 to i32
  %704 = and i32 %703, 252
  %705 = tail call i32 @llvm.ctpop.i32(i32 %704)
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  %708 = xor i8 %707, 1
  store i8 %708, i8* %21, align 1
  %709 = xor i64 %696, ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64)
  %710 = xor i64 %709, %698
  %711 = lshr i64 %710, 4
  %712 = trunc i64 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %26, align 1
  %714 = icmp eq i64 %698, 0
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %29, align 1
  %716 = lshr i64 %698, 63
  %717 = trunc i64 %716 to i8
  store i8 %717, i8* %32, align 1
  %718 = xor i64 %716, lshr (i64 ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64), i64 63)
  %719 = xor i64 %716, %697
  %720 = add nuw nsw i64 %718, %719
  %721 = icmp eq i64 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %38, align 1
  %723 = add i64 %696, add (i64 ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64), i64 32)
  %724 = add i64 %689, 25
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to i8*
  %726 = load i8, i8* %725, align 4
  %727 = sext i8 %726 to i64
  %728 = and i64 %727, 4294967295
  store i64 %728, i64* %RDX.i1837, align 8
  %729 = sext i8 %726 to i32
  %730 = add nsw i32 %729, -1
  %731 = icmp eq i8 %726, 0
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %14, align 1
  %733 = and i32 %730, 255
  %734 = tail call i32 @llvm.ctpop.i32(i32 %733)
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  store i8 %737, i8* %21, align 1
  %738 = xor i32 %730, %729
  %739 = lshr i32 %738, 4
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  store i8 %741, i8* %26, align 1
  %742 = icmp eq i32 %730, 0
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %29, align 1
  %744 = lshr i32 %730, 31
  %745 = trunc i32 %744 to i8
  store i8 %745, i8* %32, align 1
  %746 = lshr i32 %729, 31
  %747 = xor i32 %744, %746
  %748 = add nuw nsw i32 %747, %746
  %749 = icmp eq i32 %748, 2
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %38, align 1
  %.v232 = select i1 %742, i64 34, i64 39
  %751 = add i64 %689, %.v232
  store i64 %751, i64* %3, align 8
  br i1 %742, label %block_.L_42104c, label %block_42102a.block_.L_421051_crit_edge

block_42102a.block_.L_421051_crit_edge:           ; preds = %block_42102a
  %.pre111 = load i64, i64* %RBP.i, align 8
  br label %block_.L_421051

block_.L_42104c:                                  ; preds = %block_42102a, %block_421005, %block_420fd9, %block_420fb4
  %752 = phi i64 [ %751, %block_42102a ], [ %689, %block_421005 ], [ %616, %block_420fd9 ], [ %554, %block_420fb4 ]
  %753 = add i64 %752, -212
  br label %block_.L_420f78.backedge

block_.L_420f78.backedge:                         ; preds = %block_.L_42104c, %block_.L_421ae2
  %.sink = phi i64 [ %753, %block_.L_42104c ], [ %5576, %block_.L_421ae2 ]
  store i64 %.sink, i64* %3, align 8
  br label %block_.L_420f78

block_.L_421051:                                  ; preds = %block_.L_420ffb, %block_42102a.block_.L_421051_crit_edge
  %754 = phi i64 [ %751, %block_42102a.block_.L_421051_crit_edge ], [ %644, %block_.L_420ffb ]
  %755 = phi i64 [ %.pre111, %block_42102a.block_.L_421051_crit_edge ], [ %618, %block_.L_420ffb ]
  %756 = add i64 %755, -1504
  %757 = add i64 %754, 7
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = add i32 %759, -4
  %761 = icmp ult i32 %759, 4
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %14, align 1
  %763 = and i32 %760, 255
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %21, align 1
  %768 = xor i32 %760, %759
  %769 = lshr i32 %768, 4
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  store i8 %771, i8* %26, align 1
  %772 = icmp eq i32 %760, 0
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %29, align 1
  %774 = lshr i32 %760, 31
  %775 = trunc i32 %774 to i8
  store i8 %775, i8* %32, align 1
  %776 = lshr i32 %759, 31
  %777 = xor i32 %774, %776
  %778 = add nuw nsw i32 %777, %776
  %779 = icmp eq i32 %778, 2
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %38, align 1
  %.v153 = select i1 %772, i64 13, i64 42
  %781 = add i64 %754, %.v153
  store i64 %781, i64* %3, align 8
  br i1 %772, label %block_42105e, label %block_.L_42107b

block_42105e:                                     ; preds = %block_.L_421051
  %782 = add i64 %755, -24
  %783 = add i64 %781, 4
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i64*
  %785 = load i64, i64* %784, align 8
  store i64 %785, i64* %RAX.i1786, align 8
  %786 = add i64 %755, -28
  %787 = add i64 %781, 8
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = sext i32 %789 to i64
  store i64 %790, i64* %RCX.i1775.pre-phi, align 8
  %791 = add i64 %785, %790
  %792 = add i64 %781, 12
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i8*
  %794 = load i8, i8* %793, align 1
  %795 = sext i8 %794 to i64
  %796 = and i64 %795, 4294967295
  store i64 %796, i64* %RDX.i1837, align 8
  %797 = add i64 %755, -1508
  %798 = add i64 %781, 18
  store i64 %798, i64* %3, align 8
  %799 = sext i8 %794 to i32
  %800 = inttoptr i64 %797 to i32*
  %801 = load i32, i32* %800, align 4
  %802 = add i32 %801, %799
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RDX.i1837, align 8
  %804 = icmp ult i32 %802, %799
  %805 = icmp ult i32 %802, %801
  %806 = or i1 %804, %805
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %14, align 1
  %808 = and i32 %802, 255
  %809 = tail call i32 @llvm.ctpop.i32(i32 %808)
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  %812 = xor i8 %811, 1
  store i8 %812, i8* %21, align 1
  %813 = xor i32 %801, %799
  %814 = xor i32 %813, %802
  %815 = lshr i32 %814, 4
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  store i8 %817, i8* %26, align 1
  %818 = icmp eq i32 %802, 0
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %29, align 1
  %820 = lshr i32 %802, 31
  %821 = trunc i32 %820 to i8
  store i8 %821, i8* %32, align 1
  %822 = lshr i32 %799, 31
  %823 = lshr i32 %801, 31
  %824 = xor i32 %820, %822
  %825 = xor i32 %820, %823
  %826 = add nuw nsw i32 %824, %825
  %827 = icmp eq i32 %826, 2
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %38, align 1
  %829 = add i64 %781, 24
  store i64 %829, i64* %3, align 8
  store i32 %802, i32* %800, align 4
  %830 = load i64, i64* %3, align 8
  %831 = add i64 %830, 2668
  br label %block_.L_421ae2

block_.L_42107b:                                  ; preds = %block_.L_421051
  %832 = add i64 %755, -28
  %833 = add i64 %781, 3
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i32*
  %835 = load i32, i32* %834, align 4
  %836 = add i32 %835, 20
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RAX.i1786, align 8
  %838 = icmp ugt i32 %835, -21
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %14, align 1
  %840 = and i32 %836, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %21, align 1
  %845 = xor i32 %835, 16
  %846 = xor i32 %845, %836
  %847 = lshr i32 %846, 4
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  store i8 %849, i8* %26, align 1
  %850 = icmp eq i32 %836, 0
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %29, align 1
  %852 = lshr i32 %836, 31
  %853 = trunc i32 %852 to i8
  store i8 %853, i8* %32, align 1
  %854 = lshr i32 %835, 31
  %855 = xor i32 %852, %854
  %856 = add nuw nsw i32 %855, %852
  %857 = icmp eq i32 %856, 2
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %38, align 1
  %859 = sext i32 %836 to i64
  store i64 %859, i64* %RCX.i1775.pre-phi, align 8
  %860 = add nsw i64 %859, 12099168
  %861 = add i64 %781, 17
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i8*
  %863 = load i8, i8* %862, align 1
  %864 = zext i8 %863 to i64
  store i64 %864, i64* %RAX.i1786, align 8
  %865 = zext i8 %863 to i32
  %866 = add nsw i32 %865, -3
  %867 = icmp ult i8 %863, 3
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %14, align 1
  %869 = and i32 %866, 255
  %870 = tail call i32 @llvm.ctpop.i32(i32 %869)
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  %873 = xor i8 %872, 1
  store i8 %873, i8* %21, align 1
  %874 = xor i32 %866, %865
  %875 = lshr i32 %874, 4
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  store i8 %877, i8* %26, align 1
  %878 = icmp eq i32 %866, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %29, align 1
  %880 = lshr i32 %866, 31
  %881 = trunc i32 %880 to i8
  store i8 %881, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v154 = select i1 %878, i64 331, i64 26
  %882 = add i64 %781, %.v154
  store i64 %882, i64* %3, align 8
  br i1 %878, label %block_.L_4211c6, label %block_421095

block_421095:                                     ; preds = %block_.L_42107b
  %883 = add i64 %882, 3
  store i64 %883, i64* %3, align 8
  %884 = load i32, i32* %834, align 4
  %885 = add i32 %884, 20
  %886 = zext i32 %885 to i64
  store i64 %886, i64* %RAX.i1786, align 8
  %887 = icmp ugt i32 %884, -21
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %14, align 1
  %889 = and i32 %885, 255
  %890 = tail call i32 @llvm.ctpop.i32(i32 %889)
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  store i8 %893, i8* %21, align 1
  %894 = xor i32 %884, 16
  %895 = xor i32 %894, %885
  %896 = lshr i32 %895, 4
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  store i8 %898, i8* %26, align 1
  %899 = icmp eq i32 %885, 0
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %29, align 1
  %901 = lshr i32 %885, 31
  %902 = trunc i32 %901 to i8
  store i8 %902, i8* %32, align 1
  %903 = lshr i32 %884, 31
  %904 = xor i32 %901, %903
  %905 = add nuw nsw i32 %904, %901
  %906 = icmp eq i32 %905, 2
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %38, align 1
  %908 = sext i32 %885 to i64
  store i64 %908, i64* %RCX.i1775.pre-phi, align 8
  %909 = shl nsw i64 %908, 2
  %910 = add nsw i64 %909, 11204272
  %911 = add i64 %882, 17
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  store i8 0, i8* %14, align 1
  %914 = and i32 %913, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %919 = icmp eq i32 %913, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %29, align 1
  %921 = lshr i32 %913, 31
  %922 = trunc i32 %921 to i8
  store i8 %922, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v155 = select i1 %919, i64 23, i64 305
  %923 = add i64 %882, %.v155
  store i64 %923, i64* %3, align 8
  br i1 %919, label %block_4210ac, label %block_.L_4211c6

block_4210ac:                                     ; preds = %block_421095
  %924 = add i64 %923, 3
  store i64 %924, i64* %3, align 8
  %925 = load i32, i32* %834, align 4
  %926 = add i32 %925, 20
  %927 = zext i32 %926 to i64
  store i64 %927, i64* %RAX.i1786, align 8
  %928 = icmp ugt i32 %925, -21
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %14, align 1
  %930 = and i32 %926, 255
  %931 = tail call i32 @llvm.ctpop.i32(i32 %930)
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  store i8 %934, i8* %21, align 1
  %935 = xor i32 %925, 16
  %936 = xor i32 %935, %926
  %937 = lshr i32 %936, 4
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  store i8 %939, i8* %26, align 1
  %940 = icmp eq i32 %926, 0
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %29, align 1
  %942 = lshr i32 %926, 31
  %943 = trunc i32 %942 to i8
  store i8 %943, i8* %32, align 1
  %944 = lshr i32 %925, 31
  %945 = xor i32 %942, %944
  %946 = add nuw nsw i32 %945, %942
  %947 = icmp eq i32 %946, 2
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %38, align 1
  %949 = sext i32 %926 to i64
  store i64 %949, i64* %RCX.i1775.pre-phi, align 8
  %950 = add nsw i64 %949, 12099168
  %951 = add i64 %923, 17
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i8*
  %953 = load i8, i8* %952, align 1
  %954 = zext i8 %953 to i64
  store i64 %954, i64* %RAX.i1786, align 8
  %955 = zext i8 %953 to i32
  %956 = add i64 %755, -12
  %957 = add i64 %923, 20
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = sub i32 %955, %959
  %961 = icmp ult i32 %955, %959
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %14, align 1
  %963 = and i32 %960, 255
  %964 = tail call i32 @llvm.ctpop.i32(i32 %963)
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  store i8 %967, i8* %21, align 1
  %968 = xor i32 %959, %955
  %969 = xor i32 %968, %960
  %970 = lshr i32 %969, 4
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  store i8 %972, i8* %26, align 1
  %973 = icmp eq i32 %960, 0
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %29, align 1
  %975 = lshr i32 %960, 31
  %976 = trunc i32 %975 to i8
  store i8 %976, i8* %32, align 1
  %977 = lshr i32 %959, 31
  %978 = add nuw nsw i32 %975, %977
  %979 = icmp eq i32 %978, 2
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %38, align 1
  %.v223 = select i1 %973, i64 229, i64 26
  %981 = add i64 %923, %.v223
  store i64 %981, i64* %3, align 8
  br i1 %973, label %block_.L_421191, label %block_4210c6

block_4210c6:                                     ; preds = %block_4210ac
  %982 = add i64 %981, 3
  store i64 %982, i64* %3, align 8
  %983 = load i32, i32* %834, align 4
  %984 = add i32 %983, 20
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RAX.i1786, align 8
  %986 = icmp ugt i32 %983, -21
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %14, align 1
  %988 = and i32 %984, 255
  %989 = tail call i32 @llvm.ctpop.i32(i32 %988)
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = xor i8 %991, 1
  store i8 %992, i8* %21, align 1
  %993 = xor i32 %983, 16
  %994 = xor i32 %993, %984
  %995 = lshr i32 %994, 4
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  store i8 %997, i8* %26, align 1
  %998 = icmp eq i32 %984, 0
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %29, align 1
  %1000 = lshr i32 %984, 31
  %1001 = trunc i32 %1000 to i8
  store i8 %1001, i8* %32, align 1
  %1002 = lshr i32 %983, 31
  %1003 = xor i32 %1000, %1002
  %1004 = add nuw nsw i32 %1003, %1000
  %1005 = icmp eq i32 %1004, 2
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %38, align 1
  %1007 = sext i32 %984 to i64
  store i64 %1007, i64* %RCX.i1775.pre-phi, align 8
  %1008 = add nsw i64 %1007, 12099168
  %1009 = add i64 %981, 17
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i8*
  %1011 = load i8, i8* %1010, align 1
  %1012 = zext i8 %1011 to i64
  store i64 %1012, i64* %RAX.i1786, align 8
  %1013 = zext i8 %1011 to i32
  store i8 0, i8* %14, align 1
  %1014 = tail call i32 @llvm.ctpop.i32(i32 %1013)
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  %1017 = xor i8 %1016, 1
  store i8 %1017, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1018 = icmp eq i8 %1011, 0
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v224 = select i1 %1018, i64 26, i64 256
  %1020 = add i64 %981, %.v224
  store i64 %1020, i64* %3, align 8
  br i1 %1018, label %block_4210e0, label %block_.L_4211c6

block_4210e0:                                     ; preds = %block_4210c6
  %1021 = add i64 %1020, 3
  store i64 %1021, i64* %3, align 8
  %1022 = load i32, i32* %834, align 4
  %1023 = add i32 %1022, 20
  %1024 = lshr i32 %1023, 31
  %1025 = add i32 %1022, 21
  %1026 = zext i32 %1025 to i64
  store i64 %1026, i64* %RAX.i1786, align 8
  %1027 = icmp eq i32 %1023, -1
  %1028 = icmp eq i32 %1025, 0
  %1029 = or i1 %1027, %1028
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %14, align 1
  %1031 = and i32 %1025, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %21, align 1
  %1036 = xor i32 %1025, %1023
  %1037 = lshr i32 %1036, 4
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  store i8 %1039, i8* %26, align 1
  %1040 = zext i1 %1028 to i8
  store i8 %1040, i8* %29, align 1
  %1041 = lshr i32 %1025, 31
  %1042 = trunc i32 %1041 to i8
  store i8 %1042, i8* %32, align 1
  %1043 = xor i32 %1041, %1024
  %1044 = add nuw nsw i32 %1043, %1041
  %1045 = icmp eq i32 %1044, 2
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %38, align 1
  %1047 = sext i32 %1025 to i64
  store i64 %1047, i64* %RCX.i1775.pre-phi, align 8
  %1048 = add nsw i64 %1047, 12099168
  %1049 = add i64 %1020, 20
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i8*
  %1051 = load i8, i8* %1050, align 1
  %1052 = zext i8 %1051 to i64
  store i64 %1052, i64* %RAX.i1786, align 8
  %1053 = zext i8 %1051 to i32
  %1054 = add nsw i32 %1053, -3
  %1055 = icmp ult i8 %1051, 3
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %14, align 1
  %1057 = and i32 %1054, 255
  %1058 = tail call i32 @llvm.ctpop.i32(i32 %1057)
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  %1061 = xor i8 %1060, 1
  store i8 %1061, i8* %21, align 1
  %1062 = xor i32 %1054, %1053
  %1063 = lshr i32 %1062, 4
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  store i8 %1065, i8* %26, align 1
  %1066 = icmp eq i32 %1054, 0
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %29, align 1
  %1068 = lshr i32 %1054, 31
  %1069 = trunc i32 %1068 to i8
  store i8 %1069, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v225 = select i1 %1066, i64 230, i64 29
  %1070 = add i64 %1020, %.v225
  store i64 %1070, i64* %3, align 8
  br i1 %1066, label %block_.L_4211c6, label %block_4210fd

block_4210fd:                                     ; preds = %block_4210e0
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -28
  %1073 = add i64 %1070, 3
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  %1076 = add i32 %1075, 20
  %1077 = lshr i32 %1076, 31
  %1078 = add i32 %1075, 21
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RAX.i1786, align 8
  %1080 = icmp eq i32 %1076, -1
  %1081 = icmp eq i32 %1078, 0
  %1082 = or i1 %1080, %1081
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %14, align 1
  %1084 = and i32 %1078, 255
  %1085 = tail call i32 @llvm.ctpop.i32(i32 %1084)
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = xor i8 %1087, 1
  store i8 %1088, i8* %21, align 1
  %1089 = xor i32 %1078, %1076
  %1090 = lshr i32 %1089, 4
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  store i8 %1092, i8* %26, align 1
  %1093 = zext i1 %1081 to i8
  store i8 %1093, i8* %29, align 1
  %1094 = lshr i32 %1078, 31
  %1095 = trunc i32 %1094 to i8
  store i8 %1095, i8* %32, align 1
  %1096 = xor i32 %1094, %1077
  %1097 = add nuw nsw i32 %1096, %1094
  %1098 = icmp eq i32 %1097, 2
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %38, align 1
  %1100 = sext i32 %1078 to i64
  store i64 %1100, i64* %RCX.i1775.pre-phi, align 8
  %1101 = add nsw i64 %1100, 12099168
  %1102 = add i64 %1070, 20
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i8*
  %1104 = load i8, i8* %1103, align 1
  %1105 = zext i8 %1104 to i64
  store i64 %1105, i64* %RAX.i1786, align 8
  %1106 = zext i8 %1104 to i32
  %1107 = add i64 %1071, -1500
  %1108 = add i64 %1070, 26
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i32*
  %1110 = load i32, i32* %1109, align 4
  %1111 = sub i32 %1106, %1110
  %1112 = icmp ult i32 %1106, %1110
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %14, align 1
  %1114 = and i32 %1111, 255
  %1115 = tail call i32 @llvm.ctpop.i32(i32 %1114)
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  %1118 = xor i8 %1117, 1
  store i8 %1118, i8* %21, align 1
  %1119 = xor i32 %1110, %1106
  %1120 = xor i32 %1119, %1111
  %1121 = lshr i32 %1120, 4
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  store i8 %1123, i8* %26, align 1
  %1124 = icmp eq i32 %1111, 0
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %29, align 1
  %1126 = lshr i32 %1111, 31
  %1127 = trunc i32 %1126 to i8
  store i8 %1127, i8* %32, align 1
  %1128 = lshr i32 %1110, 31
  %1129 = add nuw nsw i32 %1126, %1128
  %1130 = icmp eq i32 %1129, 2
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %38, align 1
  %.v226 = select i1 %1124, i64 201, i64 32
  %1132 = add i64 %1070, %.v226
  store i64 %1132, i64* %3, align 8
  br i1 %1124, label %block_.L_4211c6, label %block_42111d

block_42111d:                                     ; preds = %block_4210fd
  %1133 = load i64, i64* %RBP.i, align 8
  %1134 = add i64 %1133, -28
  %1135 = add i64 %1132, 3
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = add i32 %1137, 40
  %1139 = zext i32 %1138 to i64
  store i64 %1139, i64* %RAX.i1786, align 8
  %1140 = icmp ugt i32 %1137, -41
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %14, align 1
  %1142 = and i32 %1138, 255
  %1143 = tail call i32 @llvm.ctpop.i32(i32 %1142)
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = xor i8 %1145, 1
  store i8 %1146, i8* %21, align 1
  %1147 = xor i32 %1138, %1137
  %1148 = lshr i32 %1147, 4
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  store i8 %1150, i8* %26, align 1
  %1151 = icmp eq i32 %1138, 0
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %29, align 1
  %1153 = lshr i32 %1138, 31
  %1154 = trunc i32 %1153 to i8
  store i8 %1154, i8* %32, align 1
  %1155 = lshr i32 %1137, 31
  %1156 = xor i32 %1153, %1155
  %1157 = add nuw nsw i32 %1156, %1153
  %1158 = icmp eq i32 %1157, 2
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %38, align 1
  %1160 = sext i32 %1138 to i64
  store i64 %1160, i64* %RCX.i1775.pre-phi, align 8
  %1161 = add nsw i64 %1160, 12099168
  %1162 = add i64 %1132, 17
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1161 to i8*
  %1164 = load i8, i8* %1163, align 1
  %1165 = zext i8 %1164 to i64
  store i64 %1165, i64* %RAX.i1786, align 8
  %1166 = zext i8 %1164 to i32
  %1167 = add nsw i32 %1166, -3
  %1168 = icmp ult i8 %1164, 3
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %14, align 1
  %1170 = and i32 %1167, 255
  %1171 = tail call i32 @llvm.ctpop.i32(i32 %1170)
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = xor i8 %1173, 1
  store i8 %1174, i8* %21, align 1
  %1175 = xor i32 %1167, %1166
  %1176 = lshr i32 %1175, 4
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  store i8 %1178, i8* %26, align 1
  %1179 = icmp eq i32 %1167, 0
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %29, align 1
  %1181 = lshr i32 %1167, 31
  %1182 = trunc i32 %1181 to i8
  store i8 %1182, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v227 = select i1 %1179, i64 169, i64 26
  %1183 = add i64 %1132, %.v227
  store i64 %1183, i64* %3, align 8
  br i1 %1179, label %block_.L_4211c6, label %block_421137

block_421137:                                     ; preds = %block_42111d
  %1184 = add i64 %1183, 3
  store i64 %1184, i64* %3, align 8
  %1185 = load i32, i32* %1136, align 4
  %1186 = add i32 %1185, 40
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %RAX.i1786, align 8
  %1188 = icmp ugt i32 %1185, -41
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %14, align 1
  %1190 = and i32 %1186, 255
  %1191 = tail call i32 @llvm.ctpop.i32(i32 %1190)
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = xor i8 %1193, 1
  store i8 %1194, i8* %21, align 1
  %1195 = xor i32 %1186, %1185
  %1196 = lshr i32 %1195, 4
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  store i8 %1198, i8* %26, align 1
  %1199 = icmp eq i32 %1186, 0
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %29, align 1
  %1201 = lshr i32 %1186, 31
  %1202 = trunc i32 %1201 to i8
  store i8 %1202, i8* %32, align 1
  %1203 = lshr i32 %1185, 31
  %1204 = xor i32 %1201, %1203
  %1205 = add nuw nsw i32 %1204, %1201
  %1206 = icmp eq i32 %1205, 2
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %38, align 1
  %1208 = sext i32 %1186 to i64
  store i64 %1208, i64* %RCX.i1775.pre-phi, align 8
  %1209 = add nsw i64 %1208, 12099168
  %1210 = add i64 %1183, 17
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i8*
  %1212 = load i8, i8* %1211, align 1
  %1213 = zext i8 %1212 to i64
  store i64 %1213, i64* %RAX.i1786, align 8
  %1214 = zext i8 %1212 to i32
  %1215 = add i64 %1133, -1500
  %1216 = add i64 %1183, 23
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i32*
  %1218 = load i32, i32* %1217, align 4
  %1219 = sub i32 %1214, %1218
  %1220 = icmp ult i32 %1214, %1218
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %14, align 1
  %1222 = and i32 %1219, 255
  %1223 = tail call i32 @llvm.ctpop.i32(i32 %1222)
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = xor i8 %1225, 1
  store i8 %1226, i8* %21, align 1
  %1227 = xor i32 %1218, %1214
  %1228 = xor i32 %1227, %1219
  %1229 = lshr i32 %1228, 4
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  store i8 %1231, i8* %26, align 1
  %1232 = icmp eq i32 %1219, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %29, align 1
  %1234 = lshr i32 %1219, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %32, align 1
  %1236 = lshr i32 %1218, 31
  %1237 = add nuw nsw i32 %1234, %1236
  %1238 = icmp eq i32 %1237, 2
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %38, align 1
  %.v228 = select i1 %1232, i64 143, i64 29
  %1240 = add i64 %1183, %.v228
  store i64 %1240, i64* %3, align 8
  br i1 %1232, label %block_.L_4211c6, label %block_421154

block_421154:                                     ; preds = %block_421137
  %1241 = add i64 %1240, 3
  store i64 %1241, i64* %3, align 8
  %1242 = load i32, i32* %1136, align 4
  %1243 = add i32 %1242, 20
  %1244 = icmp eq i32 %1243, 0
  %1245 = zext i1 %1244 to i8
  %1246 = lshr i32 %1243, 31
  %1247 = add i32 %1242, 19
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RAX.i1786, align 8
  store i8 %1245, i8* %14, align 1
  %1249 = and i32 %1247, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249)
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %21, align 1
  %1254 = xor i32 %1247, %1243
  %1255 = lshr i32 %1254, 4
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  store i8 %1257, i8* %26, align 1
  %1258 = icmp eq i32 %1247, 0
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %29, align 1
  %1260 = lshr i32 %1247, 31
  %1261 = trunc i32 %1260 to i8
  store i8 %1261, i8* %32, align 1
  %1262 = xor i32 %1260, %1246
  %1263 = add nuw nsw i32 %1262, %1246
  %1264 = icmp eq i32 %1263, 2
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %38, align 1
  %1266 = sext i32 %1247 to i64
  store i64 %1266, i64* %RCX.i1775.pre-phi, align 8
  %1267 = add nsw i64 %1266, 12099168
  %1268 = add i64 %1240, 20
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i8*
  %1270 = load i8, i8* %1269, align 1
  %1271 = zext i8 %1270 to i64
  store i64 %1271, i64* %RAX.i1786, align 8
  %1272 = zext i8 %1270 to i32
  %1273 = add nsw i32 %1272, -3
  %1274 = icmp ult i8 %1270, 3
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %14, align 1
  %1276 = and i32 %1273, 255
  %1277 = tail call i32 @llvm.ctpop.i32(i32 %1276)
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  %1280 = xor i8 %1279, 1
  store i8 %1280, i8* %21, align 1
  %1281 = xor i32 %1273, %1272
  %1282 = lshr i32 %1281, 4
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  store i8 %1284, i8* %26, align 1
  %1285 = icmp eq i32 %1273, 0
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %29, align 1
  %1287 = lshr i32 %1273, 31
  %1288 = trunc i32 %1287 to i8
  store i8 %1288, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v229 = select i1 %1285, i64 114, i64 29
  %1289 = add i64 %1240, %.v229
  store i64 %1289, i64* %3, align 8
  br i1 %1285, label %block_.L_4211c6, label %block_421171

block_421171:                                     ; preds = %block_421154
  %1290 = load i64, i64* %RBP.i, align 8
  %1291 = add i64 %1290, -28
  %1292 = add i64 %1289, 3
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1291 to i32*
  %1294 = load i32, i32* %1293, align 4
  %1295 = add i32 %1294, 20
  %1296 = icmp eq i32 %1295, 0
  %1297 = zext i1 %1296 to i8
  %1298 = lshr i32 %1295, 31
  %1299 = add i32 %1294, 19
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RAX.i1786, align 8
  store i8 %1297, i8* %14, align 1
  %1301 = and i32 %1299, 255
  %1302 = tail call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %21, align 1
  %1306 = xor i32 %1299, %1295
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  store i8 %1309, i8* %26, align 1
  %1310 = icmp eq i32 %1299, 0
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %29, align 1
  %1312 = lshr i32 %1299, 31
  %1313 = trunc i32 %1312 to i8
  store i8 %1313, i8* %32, align 1
  %1314 = xor i32 %1312, %1298
  %1315 = add nuw nsw i32 %1314, %1298
  %1316 = icmp eq i32 %1315, 2
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %38, align 1
  %1318 = sext i32 %1299 to i64
  store i64 %1318, i64* %RCX.i1775.pre-phi, align 8
  %1319 = add nsw i64 %1318, 12099168
  %1320 = add i64 %1289, 20
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i8*
  %1322 = load i8, i8* %1321, align 1
  %1323 = zext i8 %1322 to i64
  store i64 %1323, i64* %RAX.i1786, align 8
  %1324 = zext i8 %1322 to i32
  %1325 = add i64 %1290, -1500
  %1326 = add i64 %1289, 26
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = sub i32 %1324, %1328
  %1330 = icmp ult i32 %1324, %1328
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %14, align 1
  %1332 = and i32 %1329, 255
  %1333 = tail call i32 @llvm.ctpop.i32(i32 %1332)
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  store i8 %1336, i8* %21, align 1
  %1337 = xor i32 %1328, %1324
  %1338 = xor i32 %1337, %1329
  %1339 = lshr i32 %1338, 4
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  store i8 %1341, i8* %26, align 1
  %1342 = icmp eq i32 %1329, 0
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %29, align 1
  %1344 = lshr i32 %1329, 31
  %1345 = trunc i32 %1344 to i8
  store i8 %1345, i8* %32, align 1
  %1346 = lshr i32 %1328, 31
  %1347 = add nuw nsw i32 %1344, %1346
  %1348 = icmp eq i32 %1347, 2
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %38, align 1
  %.v230 = select i1 %1342, i64 85, i64 32
  %1350 = add i64 %1289, %.v230
  store i64 %1350, i64* %3, align 8
  br i1 %1342, label %block_.L_4211c6, label %block_421171.block_.L_421191_crit_edge

block_421171.block_.L_421191_crit_edge:           ; preds = %block_421171
  %.pre112 = load i64, i64* %RBP.i, align 8
  br label %block_.L_421191

block_.L_421191:                                  ; preds = %block_421171.block_.L_421191_crit_edge, %block_4210ac
  %1351 = phi i64 [ %1350, %block_421171.block_.L_421191_crit_edge ], [ %981, %block_4210ac ]
  %1352 = phi i64 [ %.pre112, %block_421171.block_.L_421191_crit_edge ], [ %755, %block_4210ac ]
  %1353 = add i64 %1352, -28
  %1354 = add i64 %1351, 3
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i32*
  %1356 = load i32, i32* %1355, align 4
  %1357 = add i32 %1356, 20
  %1358 = zext i32 %1357 to i64
  store i64 %1358, i64* %RAX.i1786, align 8
  %1359 = icmp ugt i32 %1356, -21
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %14, align 1
  %1361 = and i32 %1357, 255
  %1362 = tail call i32 @llvm.ctpop.i32(i32 %1361)
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = xor i8 %1364, 1
  store i8 %1365, i8* %21, align 1
  %1366 = xor i32 %1356, 16
  %1367 = xor i32 %1366, %1357
  %1368 = lshr i32 %1367, 4
  %1369 = trunc i32 %1368 to i8
  %1370 = and i8 %1369, 1
  store i8 %1370, i8* %26, align 1
  %1371 = icmp eq i32 %1357, 0
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %29, align 1
  %1373 = lshr i32 %1357, 31
  %1374 = trunc i32 %1373 to i8
  store i8 %1374, i8* %32, align 1
  %1375 = lshr i32 %1356, 31
  %1376 = xor i32 %1373, %1375
  %1377 = add nuw nsw i32 %1376, %1373
  %1378 = icmp eq i32 %1377, 2
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %38, align 1
  %1380 = add i64 %1352, -1496
  %1381 = add i64 %1351, 12
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i32*
  %1383 = load i32, i32* %1382, align 4
  %1384 = zext i32 %1383 to i64
  store i64 %1384, i64* %RCX.i1775.pre-phi, align 8
  %1385 = add i32 %1383, 1
  %1386 = zext i32 %1385 to i64
  store i64 %1386, i64* %RDX.i1837, align 8
  %1387 = icmp eq i32 %1383, -1
  %1388 = icmp eq i32 %1385, 0
  %1389 = or i1 %1387, %1388
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %14, align 1
  %1391 = and i32 %1385, 255
  %1392 = tail call i32 @llvm.ctpop.i32(i32 %1391)
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  store i8 %1395, i8* %21, align 1
  %1396 = xor i32 %1385, %1383
  %1397 = lshr i32 %1396, 4
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  store i8 %1399, i8* %26, align 1
  %1400 = zext i1 %1388 to i8
  store i8 %1400, i8* %29, align 1
  %1401 = lshr i32 %1385, 31
  %1402 = trunc i32 %1401 to i8
  store i8 %1402, i8* %32, align 1
  %1403 = lshr i32 %1383, 31
  %1404 = xor i32 %1401, %1403
  %1405 = add nuw nsw i32 %1404, %1401
  %1406 = icmp eq i32 %1405, 2
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %38, align 1
  %1408 = add i64 %1351, 23
  store i64 %1408, i64* %3, align 8
  store i32 %1385, i32* %1382, align 4
  %1409 = load i32, i32* %ECX.i1772.pre-phi, align 4
  %1410 = load i64, i64* %3, align 8
  %1411 = sext i32 %1409 to i64
  store i64 %1411, i64* %RSI.i1742.pre-phi, align 8
  %1412 = load i64, i64* %RBP.i, align 8
  %1413 = shl nsw i64 %1411, 2
  %1414 = add nsw i64 %1413, -1488
  %1415 = add i64 %1414, %1412
  %1416 = load i32, i32* %EAX.i1827, align 4
  %1417 = add i64 %1410, 10
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1415 to i32*
  store i32 %1416, i32* %1418, align 4
  %1419 = load i64, i64* %RBP.i, align 8
  %1420 = add i64 %1419, -28
  %1421 = load i64, i64* %3, align 8
  %1422 = add i64 %1421, 3
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1420 to i32*
  %1424 = load i32, i32* %1423, align 4
  %1425 = add i32 %1424, 20
  %1426 = zext i32 %1425 to i64
  store i64 %1426, i64* %RAX.i1786, align 8
  %1427 = icmp ugt i32 %1424, -21
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %14, align 1
  %1429 = and i32 %1425, 255
  %1430 = tail call i32 @llvm.ctpop.i32(i32 %1429)
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = xor i8 %1432, 1
  store i8 %1433, i8* %21, align 1
  %1434 = xor i32 %1424, 16
  %1435 = xor i32 %1434, %1425
  %1436 = lshr i32 %1435, 4
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  store i8 %1438, i8* %26, align 1
  %1439 = icmp eq i32 %1425, 0
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %29, align 1
  %1441 = lshr i32 %1425, 31
  %1442 = trunc i32 %1441 to i8
  store i8 %1442, i8* %32, align 1
  %1443 = lshr i32 %1424, 31
  %1444 = xor i32 %1441, %1443
  %1445 = add nuw nsw i32 %1444, %1441
  %1446 = icmp eq i32 %1445, 2
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %38, align 1
  %1448 = sext i32 %1425 to i64
  store i64 %1448, i64* %RSI.i1742.pre-phi, align 8
  %1449 = shl nsw i64 %1448, 2
  %1450 = add nsw i64 %1449, 11204272
  %1451 = add i64 %1421, 20
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  store i32 1, i32* %1452, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_4211c6

block_.L_4211c6:                                  ; preds = %block_4210c6, %block_421095, %block_.L_421191, %block_421171, %block_421154, %block_421137, %block_42111d, %block_4210fd, %block_4210e0, %block_.L_42107b
  %1453 = phi i64 [ %.pre113, %block_.L_421191 ], [ %1350, %block_421171 ], [ %1289, %block_421154 ], [ %1240, %block_421137 ], [ %1183, %block_42111d ], [ %1132, %block_4210fd ], [ %1070, %block_4210e0 ], [ %1020, %block_4210c6 ], [ %923, %block_421095 ], [ %882, %block_.L_42107b ]
  %1454 = load i64, i64* %RBP.i, align 8
  %1455 = add i64 %1454, -28
  %1456 = add i64 %1453, 3
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = add i32 %1458, -1
  %1460 = zext i32 %1459 to i64
  store i64 %1460, i64* %RAX.i1786, align 8
  %1461 = icmp eq i32 %1458, 0
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %14, align 1
  %1463 = and i32 %1459, 255
  %1464 = tail call i32 @llvm.ctpop.i32(i32 %1463)
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  %1467 = xor i8 %1466, 1
  store i8 %1467, i8* %21, align 1
  %1468 = xor i32 %1459, %1458
  %1469 = lshr i32 %1468, 4
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  store i8 %1471, i8* %26, align 1
  %1472 = icmp eq i32 %1459, 0
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %29, align 1
  %1474 = lshr i32 %1459, 31
  %1475 = trunc i32 %1474 to i8
  store i8 %1475, i8* %32, align 1
  %1476 = lshr i32 %1458, 31
  %1477 = xor i32 %1474, %1476
  %1478 = add nuw nsw i32 %1477, %1476
  %1479 = icmp eq i32 %1478, 2
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %38, align 1
  %1481 = sext i32 %1459 to i64
  store i64 %1481, i64* %RCX.i1775.pre-phi, align 8
  %1482 = add nsw i64 %1481, 12099168
  %1483 = add i64 %1453, 17
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i8*
  %1485 = load i8, i8* %1484, align 1
  %1486 = zext i8 %1485 to i64
  store i64 %1486, i64* %RAX.i1786, align 8
  %1487 = zext i8 %1485 to i32
  %1488 = add nsw i32 %1487, -3
  %1489 = icmp ult i8 %1485, 3
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %14, align 1
  %1491 = and i32 %1488, 255
  %1492 = tail call i32 @llvm.ctpop.i32(i32 %1491)
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  store i8 %1495, i8* %21, align 1
  %1496 = xor i32 %1488, %1487
  %1497 = lshr i32 %1496, 4
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  store i8 %1499, i8* %26, align 1
  %1500 = icmp eq i32 %1488, 0
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %29, align 1
  %1502 = lshr i32 %1488, 31
  %1503 = trunc i32 %1502 to i8
  store i8 %1503, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v156 = select i1 %1500, i64 331, i64 26
  %1504 = add i64 %1453, %.v156
  store i64 %1504, i64* %3, align 8
  br i1 %1500, label %block_.L_421311, label %block_4211e0

block_4211e0:                                     ; preds = %block_.L_4211c6
  %1505 = add i64 %1504, 3
  store i64 %1505, i64* %3, align 8
  %1506 = load i32, i32* %1457, align 4
  %1507 = add i32 %1506, -1
  %1508 = zext i32 %1507 to i64
  store i64 %1508, i64* %RAX.i1786, align 8
  %1509 = icmp eq i32 %1506, 0
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %14, align 1
  %1511 = and i32 %1507, 255
  %1512 = tail call i32 @llvm.ctpop.i32(i32 %1511)
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  store i8 %1515, i8* %21, align 1
  %1516 = xor i32 %1507, %1506
  %1517 = lshr i32 %1516, 4
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  store i8 %1519, i8* %26, align 1
  %1520 = icmp eq i32 %1507, 0
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %29, align 1
  %1522 = lshr i32 %1507, 31
  %1523 = trunc i32 %1522 to i8
  store i8 %1523, i8* %32, align 1
  %1524 = lshr i32 %1506, 31
  %1525 = xor i32 %1522, %1524
  %1526 = add nuw nsw i32 %1525, %1524
  %1527 = icmp eq i32 %1526, 2
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %38, align 1
  %1529 = sext i32 %1507 to i64
  store i64 %1529, i64* %RCX.i1775.pre-phi, align 8
  %1530 = shl nsw i64 %1529, 2
  %1531 = add nsw i64 %1530, 11204272
  %1532 = add i64 %1504, 17
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1531 to i32*
  %1534 = load i32, i32* %1533, align 4
  store i8 0, i8* %14, align 1
  %1535 = and i32 %1534, 255
  %1536 = tail call i32 @llvm.ctpop.i32(i32 %1535)
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  %1539 = xor i8 %1538, 1
  store i8 %1539, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1540 = icmp eq i32 %1534, 0
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %29, align 1
  %1542 = lshr i32 %1534, 31
  %1543 = trunc i32 %1542 to i8
  store i8 %1543, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v157 = select i1 %1540, i64 23, i64 305
  %1544 = add i64 %1504, %.v157
  store i64 %1544, i64* %3, align 8
  br i1 %1540, label %block_4211f7, label %block_.L_421311

block_4211f7:                                     ; preds = %block_4211e0
  %1545 = add i64 %1544, 3
  store i64 %1545, i64* %3, align 8
  %1546 = load i32, i32* %1457, align 4
  %1547 = add i32 %1546, -1
  %1548 = zext i32 %1547 to i64
  store i64 %1548, i64* %RAX.i1786, align 8
  %1549 = icmp eq i32 %1546, 0
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %14, align 1
  %1551 = and i32 %1547, 255
  %1552 = tail call i32 @llvm.ctpop.i32(i32 %1551)
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = xor i8 %1554, 1
  store i8 %1555, i8* %21, align 1
  %1556 = xor i32 %1547, %1546
  %1557 = lshr i32 %1556, 4
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  store i8 %1559, i8* %26, align 1
  %1560 = icmp eq i32 %1547, 0
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %29, align 1
  %1562 = lshr i32 %1547, 31
  %1563 = trunc i32 %1562 to i8
  store i8 %1563, i8* %32, align 1
  %1564 = lshr i32 %1546, 31
  %1565 = xor i32 %1562, %1564
  %1566 = add nuw nsw i32 %1565, %1564
  %1567 = icmp eq i32 %1566, 2
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %38, align 1
  %1569 = sext i32 %1547 to i64
  store i64 %1569, i64* %RCX.i1775.pre-phi, align 8
  %1570 = add nsw i64 %1569, 12099168
  %1571 = add i64 %1544, 17
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i8*
  %1573 = load i8, i8* %1572, align 1
  %1574 = zext i8 %1573 to i64
  store i64 %1574, i64* %RAX.i1786, align 8
  %1575 = zext i8 %1573 to i32
  %1576 = add i64 %1454, -12
  %1577 = add i64 %1544, 20
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i32*
  %1579 = load i32, i32* %1578, align 4
  %1580 = sub i32 %1575, %1579
  %1581 = icmp ult i32 %1575, %1579
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %14, align 1
  %1583 = and i32 %1580, 255
  %1584 = tail call i32 @llvm.ctpop.i32(i32 %1583)
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = xor i8 %1586, 1
  store i8 %1587, i8* %21, align 1
  %1588 = xor i32 %1579, %1575
  %1589 = xor i32 %1588, %1580
  %1590 = lshr i32 %1589, 4
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  store i8 %1592, i8* %26, align 1
  %1593 = icmp eq i32 %1580, 0
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %29, align 1
  %1595 = lshr i32 %1580, 31
  %1596 = trunc i32 %1595 to i8
  store i8 %1596, i8* %32, align 1
  %1597 = lshr i32 %1579, 31
  %1598 = add nuw nsw i32 %1595, %1597
  %1599 = icmp eq i32 %1598, 2
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %38, align 1
  %.v215 = select i1 %1593, i64 229, i64 26
  %1601 = add i64 %1544, %.v215
  store i64 %1601, i64* %3, align 8
  br i1 %1593, label %block_.L_4212dc, label %block_421211

block_421211:                                     ; preds = %block_4211f7
  %1602 = add i64 %1601, 3
  store i64 %1602, i64* %3, align 8
  %1603 = load i32, i32* %1457, align 4
  %1604 = add i32 %1603, -1
  %1605 = zext i32 %1604 to i64
  store i64 %1605, i64* %RAX.i1786, align 8
  %1606 = icmp eq i32 %1603, 0
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %14, align 1
  %1608 = and i32 %1604, 255
  %1609 = tail call i32 @llvm.ctpop.i32(i32 %1608)
  %1610 = trunc i32 %1609 to i8
  %1611 = and i8 %1610, 1
  %1612 = xor i8 %1611, 1
  store i8 %1612, i8* %21, align 1
  %1613 = xor i32 %1604, %1603
  %1614 = lshr i32 %1613, 4
  %1615 = trunc i32 %1614 to i8
  %1616 = and i8 %1615, 1
  store i8 %1616, i8* %26, align 1
  %1617 = icmp eq i32 %1604, 0
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %29, align 1
  %1619 = lshr i32 %1604, 31
  %1620 = trunc i32 %1619 to i8
  store i8 %1620, i8* %32, align 1
  %1621 = lshr i32 %1603, 31
  %1622 = xor i32 %1619, %1621
  %1623 = add nuw nsw i32 %1622, %1621
  %1624 = icmp eq i32 %1623, 2
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %38, align 1
  %1626 = sext i32 %1604 to i64
  store i64 %1626, i64* %RCX.i1775.pre-phi, align 8
  %1627 = add nsw i64 %1626, 12099168
  %1628 = add i64 %1601, 17
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i8*
  %1630 = load i8, i8* %1629, align 1
  %1631 = zext i8 %1630 to i64
  store i64 %1631, i64* %RAX.i1786, align 8
  %1632 = zext i8 %1630 to i32
  store i8 0, i8* %14, align 1
  %1633 = tail call i32 @llvm.ctpop.i32(i32 %1632)
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = xor i8 %1635, 1
  store i8 %1636, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1637 = icmp eq i8 %1630, 0
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v216 = select i1 %1637, i64 26, i64 256
  %1639 = add i64 %1601, %.v216
  store i64 %1639, i64* %3, align 8
  br i1 %1637, label %block_42122b, label %block_.L_421311

block_42122b:                                     ; preds = %block_421211
  %1640 = add i64 %1639, 3
  store i64 %1640, i64* %3, align 8
  %1641 = load i32, i32* %1457, align 4
  %1642 = add i32 %1641, 20
  %1643 = icmp eq i32 %1642, 0
  %1644 = zext i1 %1643 to i8
  %1645 = lshr i32 %1642, 31
  %1646 = add i32 %1641, 19
  %1647 = zext i32 %1646 to i64
  store i64 %1647, i64* %RAX.i1786, align 8
  store i8 %1644, i8* %14, align 1
  %1648 = and i32 %1646, 255
  %1649 = tail call i32 @llvm.ctpop.i32(i32 %1648)
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  %1652 = xor i8 %1651, 1
  store i8 %1652, i8* %21, align 1
  %1653 = xor i32 %1646, %1642
  %1654 = lshr i32 %1653, 4
  %1655 = trunc i32 %1654 to i8
  %1656 = and i8 %1655, 1
  store i8 %1656, i8* %26, align 1
  %1657 = icmp eq i32 %1646, 0
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %29, align 1
  %1659 = lshr i32 %1646, 31
  %1660 = trunc i32 %1659 to i8
  store i8 %1660, i8* %32, align 1
  %1661 = xor i32 %1659, %1645
  %1662 = add nuw nsw i32 %1661, %1645
  %1663 = icmp eq i32 %1662, 2
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %38, align 1
  %1665 = sext i32 %1646 to i64
  store i64 %1665, i64* %RCX.i1775.pre-phi, align 8
  %1666 = add nsw i64 %1665, 12099168
  %1667 = add i64 %1639, 20
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i8*
  %1669 = load i8, i8* %1668, align 1
  %1670 = zext i8 %1669 to i64
  store i64 %1670, i64* %RAX.i1786, align 8
  %1671 = zext i8 %1669 to i32
  %1672 = add nsw i32 %1671, -3
  %1673 = icmp ult i8 %1669, 3
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %14, align 1
  %1675 = and i32 %1672, 255
  %1676 = tail call i32 @llvm.ctpop.i32(i32 %1675)
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = xor i8 %1678, 1
  store i8 %1679, i8* %21, align 1
  %1680 = xor i32 %1672, %1671
  %1681 = lshr i32 %1680, 4
  %1682 = trunc i32 %1681 to i8
  %1683 = and i8 %1682, 1
  store i8 %1683, i8* %26, align 1
  %1684 = icmp eq i32 %1672, 0
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %29, align 1
  %1686 = lshr i32 %1672, 31
  %1687 = trunc i32 %1686 to i8
  store i8 %1687, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v217 = select i1 %1684, i64 230, i64 29
  %1688 = add i64 %1639, %.v217
  store i64 %1688, i64* %3, align 8
  br i1 %1684, label %block_.L_421311, label %block_421248

block_421248:                                     ; preds = %block_42122b
  %1689 = load i64, i64* %RBP.i, align 8
  %1690 = add i64 %1689, -28
  %1691 = add i64 %1688, 3
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to i32*
  %1693 = load i32, i32* %1692, align 4
  %1694 = add i32 %1693, 20
  %1695 = icmp eq i32 %1694, 0
  %1696 = zext i1 %1695 to i8
  %1697 = lshr i32 %1694, 31
  %1698 = add i32 %1693, 19
  %1699 = zext i32 %1698 to i64
  store i64 %1699, i64* %RAX.i1786, align 8
  store i8 %1696, i8* %14, align 1
  %1700 = and i32 %1698, 255
  %1701 = tail call i32 @llvm.ctpop.i32(i32 %1700)
  %1702 = trunc i32 %1701 to i8
  %1703 = and i8 %1702, 1
  %1704 = xor i8 %1703, 1
  store i8 %1704, i8* %21, align 1
  %1705 = xor i32 %1698, %1694
  %1706 = lshr i32 %1705, 4
  %1707 = trunc i32 %1706 to i8
  %1708 = and i8 %1707, 1
  store i8 %1708, i8* %26, align 1
  %1709 = icmp eq i32 %1698, 0
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %29, align 1
  %1711 = lshr i32 %1698, 31
  %1712 = trunc i32 %1711 to i8
  store i8 %1712, i8* %32, align 1
  %1713 = xor i32 %1711, %1697
  %1714 = add nuw nsw i32 %1713, %1697
  %1715 = icmp eq i32 %1714, 2
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %38, align 1
  %1717 = sext i32 %1698 to i64
  store i64 %1717, i64* %RCX.i1775.pre-phi, align 8
  %1718 = add nsw i64 %1717, 12099168
  %1719 = add i64 %1688, 20
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1718 to i8*
  %1721 = load i8, i8* %1720, align 1
  %1722 = zext i8 %1721 to i64
  store i64 %1722, i64* %RAX.i1786, align 8
  %1723 = zext i8 %1721 to i32
  %1724 = add i64 %1689, -1500
  %1725 = add i64 %1688, 26
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i32*
  %1727 = load i32, i32* %1726, align 4
  %1728 = sub i32 %1723, %1727
  %1729 = icmp ult i32 %1723, %1727
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %14, align 1
  %1731 = and i32 %1728, 255
  %1732 = tail call i32 @llvm.ctpop.i32(i32 %1731)
  %1733 = trunc i32 %1732 to i8
  %1734 = and i8 %1733, 1
  %1735 = xor i8 %1734, 1
  store i8 %1735, i8* %21, align 1
  %1736 = xor i32 %1727, %1723
  %1737 = xor i32 %1736, %1728
  %1738 = lshr i32 %1737, 4
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  store i8 %1740, i8* %26, align 1
  %1741 = icmp eq i32 %1728, 0
  %1742 = zext i1 %1741 to i8
  store i8 %1742, i8* %29, align 1
  %1743 = lshr i32 %1728, 31
  %1744 = trunc i32 %1743 to i8
  store i8 %1744, i8* %32, align 1
  %1745 = lshr i32 %1727, 31
  %1746 = add nuw nsw i32 %1743, %1745
  %1747 = icmp eq i32 %1746, 2
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %38, align 1
  %.v218 = select i1 %1741, i64 201, i64 32
  %1749 = add i64 %1688, %.v218
  store i64 %1749, i64* %3, align 8
  br i1 %1741, label %block_.L_421311, label %block_421268

block_421268:                                     ; preds = %block_421248
  %1750 = load i64, i64* %RBP.i, align 8
  %1751 = add i64 %1750, -28
  %1752 = add i64 %1749, 3
  store i64 %1752, i64* %3, align 8
  %1753 = inttoptr i64 %1751 to i32*
  %1754 = load i32, i32* %1753, align 4
  %1755 = add i32 %1754, -2
  %1756 = zext i32 %1755 to i64
  store i64 %1756, i64* %RAX.i1786, align 8
  %1757 = icmp ult i32 %1754, 2
  %1758 = zext i1 %1757 to i8
  store i8 %1758, i8* %14, align 1
  %1759 = and i32 %1755, 255
  %1760 = tail call i32 @llvm.ctpop.i32(i32 %1759)
  %1761 = trunc i32 %1760 to i8
  %1762 = and i8 %1761, 1
  %1763 = xor i8 %1762, 1
  store i8 %1763, i8* %21, align 1
  %1764 = xor i32 %1755, %1754
  %1765 = lshr i32 %1764, 4
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  store i8 %1767, i8* %26, align 1
  %1768 = icmp eq i32 %1755, 0
  %1769 = zext i1 %1768 to i8
  store i8 %1769, i8* %29, align 1
  %1770 = lshr i32 %1755, 31
  %1771 = trunc i32 %1770 to i8
  store i8 %1771, i8* %32, align 1
  %1772 = lshr i32 %1754, 31
  %1773 = xor i32 %1770, %1772
  %1774 = add nuw nsw i32 %1773, %1772
  %1775 = icmp eq i32 %1774, 2
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %38, align 1
  %1777 = sext i32 %1755 to i64
  store i64 %1777, i64* %RCX.i1775.pre-phi, align 8
  %1778 = add nsw i64 %1777, 12099168
  %1779 = add i64 %1749, 17
  store i64 %1779, i64* %3, align 8
  %1780 = inttoptr i64 %1778 to i8*
  %1781 = load i8, i8* %1780, align 1
  %1782 = zext i8 %1781 to i64
  store i64 %1782, i64* %RAX.i1786, align 8
  %1783 = zext i8 %1781 to i32
  %1784 = add nsw i32 %1783, -3
  %1785 = icmp ult i8 %1781, 3
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %14, align 1
  %1787 = and i32 %1784, 255
  %1788 = tail call i32 @llvm.ctpop.i32(i32 %1787)
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  %1791 = xor i8 %1790, 1
  store i8 %1791, i8* %21, align 1
  %1792 = xor i32 %1784, %1783
  %1793 = lshr i32 %1792, 4
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  store i8 %1795, i8* %26, align 1
  %1796 = icmp eq i32 %1784, 0
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %29, align 1
  %1798 = lshr i32 %1784, 31
  %1799 = trunc i32 %1798 to i8
  store i8 %1799, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v219 = select i1 %1796, i64 169, i64 26
  %1800 = add i64 %1749, %.v219
  store i64 %1800, i64* %3, align 8
  br i1 %1796, label %block_.L_421311, label %block_421282

block_421282:                                     ; preds = %block_421268
  %1801 = add i64 %1800, 3
  store i64 %1801, i64* %3, align 8
  %1802 = load i32, i32* %1753, align 4
  %1803 = add i32 %1802, -2
  %1804 = zext i32 %1803 to i64
  store i64 %1804, i64* %RAX.i1786, align 8
  %1805 = icmp ult i32 %1802, 2
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %14, align 1
  %1807 = and i32 %1803, 255
  %1808 = tail call i32 @llvm.ctpop.i32(i32 %1807)
  %1809 = trunc i32 %1808 to i8
  %1810 = and i8 %1809, 1
  %1811 = xor i8 %1810, 1
  store i8 %1811, i8* %21, align 1
  %1812 = xor i32 %1803, %1802
  %1813 = lshr i32 %1812, 4
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  store i8 %1815, i8* %26, align 1
  %1816 = icmp eq i32 %1803, 0
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %29, align 1
  %1818 = lshr i32 %1803, 31
  %1819 = trunc i32 %1818 to i8
  store i8 %1819, i8* %32, align 1
  %1820 = lshr i32 %1802, 31
  %1821 = xor i32 %1818, %1820
  %1822 = add nuw nsw i32 %1821, %1820
  %1823 = icmp eq i32 %1822, 2
  %1824 = zext i1 %1823 to i8
  store i8 %1824, i8* %38, align 1
  %1825 = sext i32 %1803 to i64
  store i64 %1825, i64* %RCX.i1775.pre-phi, align 8
  %1826 = add nsw i64 %1825, 12099168
  %1827 = add i64 %1800, 17
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1826 to i8*
  %1829 = load i8, i8* %1828, align 1
  %1830 = zext i8 %1829 to i64
  store i64 %1830, i64* %RAX.i1786, align 8
  %1831 = zext i8 %1829 to i32
  %1832 = add i64 %1750, -1500
  %1833 = add i64 %1800, 23
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to i32*
  %1835 = load i32, i32* %1834, align 4
  %1836 = sub i32 %1831, %1835
  %1837 = icmp ult i32 %1831, %1835
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %14, align 1
  %1839 = and i32 %1836, 255
  %1840 = tail call i32 @llvm.ctpop.i32(i32 %1839)
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  %1843 = xor i8 %1842, 1
  store i8 %1843, i8* %21, align 1
  %1844 = xor i32 %1835, %1831
  %1845 = xor i32 %1844, %1836
  %1846 = lshr i32 %1845, 4
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  store i8 %1848, i8* %26, align 1
  %1849 = icmp eq i32 %1836, 0
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %29, align 1
  %1851 = lshr i32 %1836, 31
  %1852 = trunc i32 %1851 to i8
  store i8 %1852, i8* %32, align 1
  %1853 = lshr i32 %1835, 31
  %1854 = add nuw nsw i32 %1851, %1853
  %1855 = icmp eq i32 %1854, 2
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %38, align 1
  %.v220 = select i1 %1849, i64 143, i64 29
  %1857 = add i64 %1800, %.v220
  store i64 %1857, i64* %3, align 8
  br i1 %1849, label %block_.L_421311, label %block_42129f

block_42129f:                                     ; preds = %block_421282
  %1858 = add i64 %1857, 3
  store i64 %1858, i64* %3, align 8
  %1859 = load i32, i32* %1753, align 4
  %1860 = add i32 %1859, -20
  %1861 = icmp eq i32 %1860, 0
  %1862 = zext i1 %1861 to i8
  %1863 = lshr i32 %1860, 31
  %1864 = add i32 %1859, -21
  %1865 = zext i32 %1864 to i64
  store i64 %1865, i64* %RAX.i1786, align 8
  store i8 %1862, i8* %14, align 1
  %1866 = and i32 %1864, 255
  %1867 = tail call i32 @llvm.ctpop.i32(i32 %1866)
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  %1870 = xor i8 %1869, 1
  store i8 %1870, i8* %21, align 1
  %1871 = xor i32 %1864, %1860
  %1872 = lshr i32 %1871, 4
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  store i8 %1874, i8* %26, align 1
  %1875 = icmp eq i32 %1864, 0
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %29, align 1
  %1877 = lshr i32 %1864, 31
  %1878 = trunc i32 %1877 to i8
  store i8 %1878, i8* %32, align 1
  %1879 = xor i32 %1877, %1863
  %1880 = add nuw nsw i32 %1879, %1863
  %1881 = icmp eq i32 %1880, 2
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %38, align 1
  %1883 = sext i32 %1864 to i64
  store i64 %1883, i64* %RCX.i1775.pre-phi, align 8
  %1884 = add nsw i64 %1883, 12099168
  %1885 = add i64 %1857, 20
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i8*
  %1887 = load i8, i8* %1886, align 1
  %1888 = zext i8 %1887 to i64
  store i64 %1888, i64* %RAX.i1786, align 8
  %1889 = zext i8 %1887 to i32
  %1890 = add nsw i32 %1889, -3
  %1891 = icmp ult i8 %1887, 3
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %14, align 1
  %1893 = and i32 %1890, 255
  %1894 = tail call i32 @llvm.ctpop.i32(i32 %1893)
  %1895 = trunc i32 %1894 to i8
  %1896 = and i8 %1895, 1
  %1897 = xor i8 %1896, 1
  store i8 %1897, i8* %21, align 1
  %1898 = xor i32 %1890, %1889
  %1899 = lshr i32 %1898, 4
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  store i8 %1901, i8* %26, align 1
  %1902 = icmp eq i32 %1890, 0
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %29, align 1
  %1904 = lshr i32 %1890, 31
  %1905 = trunc i32 %1904 to i8
  store i8 %1905, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v221 = select i1 %1902, i64 114, i64 29
  %1906 = add i64 %1857, %.v221
  store i64 %1906, i64* %3, align 8
  br i1 %1902, label %block_.L_421311, label %block_4212bc

block_4212bc:                                     ; preds = %block_42129f
  %1907 = load i64, i64* %RBP.i, align 8
  %1908 = add i64 %1907, -28
  %1909 = add i64 %1906, 3
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i32*
  %1911 = load i32, i32* %1910, align 4
  %1912 = add i32 %1911, -20
  %1913 = icmp eq i32 %1912, 0
  %1914 = zext i1 %1913 to i8
  %1915 = lshr i32 %1912, 31
  %1916 = add i32 %1911, -21
  %1917 = zext i32 %1916 to i64
  store i64 %1917, i64* %RAX.i1786, align 8
  store i8 %1914, i8* %14, align 1
  %1918 = and i32 %1916, 255
  %1919 = tail call i32 @llvm.ctpop.i32(i32 %1918)
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  %1922 = xor i8 %1921, 1
  store i8 %1922, i8* %21, align 1
  %1923 = xor i32 %1916, %1912
  %1924 = lshr i32 %1923, 4
  %1925 = trunc i32 %1924 to i8
  %1926 = and i8 %1925, 1
  store i8 %1926, i8* %26, align 1
  %1927 = icmp eq i32 %1916, 0
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %29, align 1
  %1929 = lshr i32 %1916, 31
  %1930 = trunc i32 %1929 to i8
  store i8 %1930, i8* %32, align 1
  %1931 = xor i32 %1929, %1915
  %1932 = add nuw nsw i32 %1931, %1915
  %1933 = icmp eq i32 %1932, 2
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %38, align 1
  %1935 = sext i32 %1916 to i64
  store i64 %1935, i64* %RCX.i1775.pre-phi, align 8
  %1936 = add nsw i64 %1935, 12099168
  %1937 = add i64 %1906, 20
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i8*
  %1939 = load i8, i8* %1938, align 1
  %1940 = zext i8 %1939 to i64
  store i64 %1940, i64* %RAX.i1786, align 8
  %1941 = zext i8 %1939 to i32
  %1942 = add i64 %1907, -1500
  %1943 = add i64 %1906, 26
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1942 to i32*
  %1945 = load i32, i32* %1944, align 4
  %1946 = sub i32 %1941, %1945
  %1947 = icmp ult i32 %1941, %1945
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %14, align 1
  %1949 = and i32 %1946, 255
  %1950 = tail call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  store i8 %1953, i8* %21, align 1
  %1954 = xor i32 %1945, %1941
  %1955 = xor i32 %1954, %1946
  %1956 = lshr i32 %1955, 4
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  store i8 %1958, i8* %26, align 1
  %1959 = icmp eq i32 %1946, 0
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %29, align 1
  %1961 = lshr i32 %1946, 31
  %1962 = trunc i32 %1961 to i8
  store i8 %1962, i8* %32, align 1
  %1963 = lshr i32 %1945, 31
  %1964 = add nuw nsw i32 %1961, %1963
  %1965 = icmp eq i32 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %38, align 1
  %.v222 = select i1 %1959, i64 85, i64 32
  %1967 = add i64 %1906, %.v222
  store i64 %1967, i64* %3, align 8
  br i1 %1959, label %block_.L_421311, label %block_4212bc.block_.L_4212dc_crit_edge

block_4212bc.block_.L_4212dc_crit_edge:           ; preds = %block_4212bc
  %.pre114 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4212dc

block_.L_4212dc:                                  ; preds = %block_4212bc.block_.L_4212dc_crit_edge, %block_4211f7
  %1968 = phi i64 [ %1967, %block_4212bc.block_.L_4212dc_crit_edge ], [ %1601, %block_4211f7 ]
  %1969 = phi i64 [ %.pre114, %block_4212bc.block_.L_4212dc_crit_edge ], [ %1454, %block_4211f7 ]
  %1970 = add i64 %1969, -28
  %1971 = add i64 %1968, 3
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i32*
  %1973 = load i32, i32* %1972, align 4
  %1974 = add i32 %1973, -1
  %1975 = zext i32 %1974 to i64
  store i64 %1975, i64* %RAX.i1786, align 8
  %1976 = icmp eq i32 %1973, 0
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %14, align 1
  %1978 = and i32 %1974, 255
  %1979 = tail call i32 @llvm.ctpop.i32(i32 %1978)
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  store i8 %1982, i8* %21, align 1
  %1983 = xor i32 %1974, %1973
  %1984 = lshr i32 %1983, 4
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  store i8 %1986, i8* %26, align 1
  %1987 = icmp eq i32 %1974, 0
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %29, align 1
  %1989 = lshr i32 %1974, 31
  %1990 = trunc i32 %1989 to i8
  store i8 %1990, i8* %32, align 1
  %1991 = lshr i32 %1973, 31
  %1992 = xor i32 %1989, %1991
  %1993 = add nuw nsw i32 %1992, %1991
  %1994 = icmp eq i32 %1993, 2
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %38, align 1
  %1996 = add i64 %1969, -1496
  %1997 = add i64 %1968, 12
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1996 to i32*
  %1999 = load i32, i32* %1998, align 4
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %RCX.i1775.pre-phi, align 8
  %2001 = add i32 %1999, 1
  %2002 = zext i32 %2001 to i64
  store i64 %2002, i64* %RDX.i1837, align 8
  %2003 = icmp eq i32 %1999, -1
  %2004 = icmp eq i32 %2001, 0
  %2005 = or i1 %2003, %2004
  %2006 = zext i1 %2005 to i8
  store i8 %2006, i8* %14, align 1
  %2007 = and i32 %2001, 255
  %2008 = tail call i32 @llvm.ctpop.i32(i32 %2007)
  %2009 = trunc i32 %2008 to i8
  %2010 = and i8 %2009, 1
  %2011 = xor i8 %2010, 1
  store i8 %2011, i8* %21, align 1
  %2012 = xor i32 %2001, %1999
  %2013 = lshr i32 %2012, 4
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  store i8 %2015, i8* %26, align 1
  %2016 = zext i1 %2004 to i8
  store i8 %2016, i8* %29, align 1
  %2017 = lshr i32 %2001, 31
  %2018 = trunc i32 %2017 to i8
  store i8 %2018, i8* %32, align 1
  %2019 = lshr i32 %1999, 31
  %2020 = xor i32 %2017, %2019
  %2021 = add nuw nsw i32 %2020, %2017
  %2022 = icmp eq i32 %2021, 2
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %38, align 1
  %2024 = add i64 %1968, 23
  store i64 %2024, i64* %3, align 8
  store i32 %2001, i32* %1998, align 4
  %2025 = load i32, i32* %ECX.i1772.pre-phi, align 4
  %2026 = load i64, i64* %3, align 8
  %2027 = sext i32 %2025 to i64
  store i64 %2027, i64* %RSI.i1742.pre-phi, align 8
  %2028 = load i64, i64* %RBP.i, align 8
  %2029 = shl nsw i64 %2027, 2
  %2030 = add nsw i64 %2029, -1488
  %2031 = add i64 %2030, %2028
  %2032 = load i32, i32* %EAX.i1827, align 4
  %2033 = add i64 %2026, 10
  store i64 %2033, i64* %3, align 8
  %2034 = inttoptr i64 %2031 to i32*
  store i32 %2032, i32* %2034, align 4
  %2035 = load i64, i64* %RBP.i, align 8
  %2036 = add i64 %2035, -28
  %2037 = load i64, i64* %3, align 8
  %2038 = add i64 %2037, 3
  store i64 %2038, i64* %3, align 8
  %2039 = inttoptr i64 %2036 to i32*
  %2040 = load i32, i32* %2039, align 4
  %2041 = add i32 %2040, -1
  %2042 = zext i32 %2041 to i64
  store i64 %2042, i64* %RAX.i1786, align 8
  %2043 = icmp eq i32 %2040, 0
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %14, align 1
  %2045 = and i32 %2041, 255
  %2046 = tail call i32 @llvm.ctpop.i32(i32 %2045)
  %2047 = trunc i32 %2046 to i8
  %2048 = and i8 %2047, 1
  %2049 = xor i8 %2048, 1
  store i8 %2049, i8* %21, align 1
  %2050 = xor i32 %2041, %2040
  %2051 = lshr i32 %2050, 4
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  store i8 %2053, i8* %26, align 1
  %2054 = icmp eq i32 %2041, 0
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %29, align 1
  %2056 = lshr i32 %2041, 31
  %2057 = trunc i32 %2056 to i8
  store i8 %2057, i8* %32, align 1
  %2058 = lshr i32 %2040, 31
  %2059 = xor i32 %2056, %2058
  %2060 = add nuw nsw i32 %2059, %2058
  %2061 = icmp eq i32 %2060, 2
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %38, align 1
  %2063 = sext i32 %2041 to i64
  store i64 %2063, i64* %RSI.i1742.pre-phi, align 8
  %2064 = shl nsw i64 %2063, 2
  %2065 = add nsw i64 %2064, 11204272
  %2066 = add i64 %2037, 20
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2065 to i32*
  store i32 1, i32* %2067, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_421311

block_.L_421311:                                  ; preds = %block_421211, %block_4211e0, %block_.L_4212dc, %block_4212bc, %block_42129f, %block_421282, %block_421268, %block_421248, %block_42122b, %block_.L_4211c6
  %2068 = phi i64 [ %.pre115, %block_.L_4212dc ], [ %1967, %block_4212bc ], [ %1906, %block_42129f ], [ %1857, %block_421282 ], [ %1800, %block_421268 ], [ %1749, %block_421248 ], [ %1688, %block_42122b ], [ %1639, %block_421211 ], [ %1544, %block_4211e0 ], [ %1504, %block_.L_4211c6 ]
  %2069 = load i64, i64* %RBP.i, align 8
  %2070 = add i64 %2069, -28
  %2071 = add i64 %2068, 3
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = add i32 %2073, -20
  %2075 = zext i32 %2074 to i64
  store i64 %2075, i64* %RAX.i1786, align 8
  %2076 = icmp ult i32 %2073, 20
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %14, align 1
  %2078 = and i32 %2074, 255
  %2079 = tail call i32 @llvm.ctpop.i32(i32 %2078)
  %2080 = trunc i32 %2079 to i8
  %2081 = and i8 %2080, 1
  %2082 = xor i8 %2081, 1
  store i8 %2082, i8* %21, align 1
  %2083 = xor i32 %2073, 16
  %2084 = xor i32 %2083, %2074
  %2085 = lshr i32 %2084, 4
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  store i8 %2087, i8* %26, align 1
  %2088 = icmp eq i32 %2074, 0
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %29, align 1
  %2090 = lshr i32 %2074, 31
  %2091 = trunc i32 %2090 to i8
  store i8 %2091, i8* %32, align 1
  %2092 = lshr i32 %2073, 31
  %2093 = xor i32 %2090, %2092
  %2094 = add nuw nsw i32 %2093, %2092
  %2095 = icmp eq i32 %2094, 2
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %38, align 1
  %2097 = sext i32 %2074 to i64
  store i64 %2097, i64* %RCX.i1775.pre-phi, align 8
  %2098 = add nsw i64 %2097, 12099168
  %2099 = add i64 %2068, 17
  store i64 %2099, i64* %3, align 8
  %2100 = inttoptr i64 %2098 to i8*
  %2101 = load i8, i8* %2100, align 1
  %2102 = zext i8 %2101 to i64
  store i64 %2102, i64* %RAX.i1786, align 8
  %2103 = zext i8 %2101 to i32
  %2104 = add nsw i32 %2103, -3
  %2105 = icmp ult i8 %2101, 3
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %14, align 1
  %2107 = and i32 %2104, 255
  %2108 = tail call i32 @llvm.ctpop.i32(i32 %2107)
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  %2111 = xor i8 %2110, 1
  store i8 %2111, i8* %21, align 1
  %2112 = xor i32 %2104, %2103
  %2113 = lshr i32 %2112, 4
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  store i8 %2115, i8* %26, align 1
  %2116 = icmp eq i32 %2104, 0
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %29, align 1
  %2118 = lshr i32 %2104, 31
  %2119 = trunc i32 %2118 to i8
  store i8 %2119, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v158 = select i1 %2116, i64 331, i64 26
  %2120 = add i64 %2068, %.v158
  store i64 %2120, i64* %3, align 8
  br i1 %2116, label %block_.L_42145c, label %block_42132b

block_42132b:                                     ; preds = %block_.L_421311
  %2121 = add i64 %2120, 3
  store i64 %2121, i64* %3, align 8
  %2122 = load i32, i32* %2072, align 4
  %2123 = add i32 %2122, -20
  %2124 = zext i32 %2123 to i64
  store i64 %2124, i64* %RAX.i1786, align 8
  %2125 = icmp ult i32 %2122, 20
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %14, align 1
  %2127 = and i32 %2123, 255
  %2128 = tail call i32 @llvm.ctpop.i32(i32 %2127)
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  %2131 = xor i8 %2130, 1
  store i8 %2131, i8* %21, align 1
  %2132 = xor i32 %2122, 16
  %2133 = xor i32 %2132, %2123
  %2134 = lshr i32 %2133, 4
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  store i8 %2136, i8* %26, align 1
  %2137 = icmp eq i32 %2123, 0
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %29, align 1
  %2139 = lshr i32 %2123, 31
  %2140 = trunc i32 %2139 to i8
  store i8 %2140, i8* %32, align 1
  %2141 = lshr i32 %2122, 31
  %2142 = xor i32 %2139, %2141
  %2143 = add nuw nsw i32 %2142, %2141
  %2144 = icmp eq i32 %2143, 2
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %38, align 1
  %2146 = sext i32 %2123 to i64
  store i64 %2146, i64* %RCX.i1775.pre-phi, align 8
  %2147 = shl nsw i64 %2146, 2
  %2148 = add nsw i64 %2147, 11204272
  %2149 = add i64 %2120, 17
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2148 to i32*
  %2151 = load i32, i32* %2150, align 4
  store i8 0, i8* %14, align 1
  %2152 = and i32 %2151, 255
  %2153 = tail call i32 @llvm.ctpop.i32(i32 %2152)
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  %2156 = xor i8 %2155, 1
  store i8 %2156, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2157 = icmp eq i32 %2151, 0
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %29, align 1
  %2159 = lshr i32 %2151, 31
  %2160 = trunc i32 %2159 to i8
  store i8 %2160, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v159 = select i1 %2157, i64 23, i64 305
  %2161 = add i64 %2120, %.v159
  store i64 %2161, i64* %3, align 8
  br i1 %2157, label %block_421342, label %block_.L_42145c

block_421342:                                     ; preds = %block_42132b
  %2162 = add i64 %2161, 3
  store i64 %2162, i64* %3, align 8
  %2163 = load i32, i32* %2072, align 4
  %2164 = add i32 %2163, -20
  %2165 = zext i32 %2164 to i64
  store i64 %2165, i64* %RAX.i1786, align 8
  %2166 = icmp ult i32 %2163, 20
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %14, align 1
  %2168 = and i32 %2164, 255
  %2169 = tail call i32 @llvm.ctpop.i32(i32 %2168)
  %2170 = trunc i32 %2169 to i8
  %2171 = and i8 %2170, 1
  %2172 = xor i8 %2171, 1
  store i8 %2172, i8* %21, align 1
  %2173 = xor i32 %2163, 16
  %2174 = xor i32 %2173, %2164
  %2175 = lshr i32 %2174, 4
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  store i8 %2177, i8* %26, align 1
  %2178 = icmp eq i32 %2164, 0
  %2179 = zext i1 %2178 to i8
  store i8 %2179, i8* %29, align 1
  %2180 = lshr i32 %2164, 31
  %2181 = trunc i32 %2180 to i8
  store i8 %2181, i8* %32, align 1
  %2182 = lshr i32 %2163, 31
  %2183 = xor i32 %2180, %2182
  %2184 = add nuw nsw i32 %2183, %2182
  %2185 = icmp eq i32 %2184, 2
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %38, align 1
  %2187 = sext i32 %2164 to i64
  store i64 %2187, i64* %RCX.i1775.pre-phi, align 8
  %2188 = add nsw i64 %2187, 12099168
  %2189 = add i64 %2161, 17
  store i64 %2189, i64* %3, align 8
  %2190 = inttoptr i64 %2188 to i8*
  %2191 = load i8, i8* %2190, align 1
  %2192 = zext i8 %2191 to i64
  store i64 %2192, i64* %RAX.i1786, align 8
  %2193 = zext i8 %2191 to i32
  %2194 = add i64 %2069, -12
  %2195 = add i64 %2161, 20
  store i64 %2195, i64* %3, align 8
  %2196 = inttoptr i64 %2194 to i32*
  %2197 = load i32, i32* %2196, align 4
  %2198 = sub i32 %2193, %2197
  %2199 = icmp ult i32 %2193, %2197
  %2200 = zext i1 %2199 to i8
  store i8 %2200, i8* %14, align 1
  %2201 = and i32 %2198, 255
  %2202 = tail call i32 @llvm.ctpop.i32(i32 %2201)
  %2203 = trunc i32 %2202 to i8
  %2204 = and i8 %2203, 1
  %2205 = xor i8 %2204, 1
  store i8 %2205, i8* %21, align 1
  %2206 = xor i32 %2197, %2193
  %2207 = xor i32 %2206, %2198
  %2208 = lshr i32 %2207, 4
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  store i8 %2210, i8* %26, align 1
  %2211 = icmp eq i32 %2198, 0
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %29, align 1
  %2213 = lshr i32 %2198, 31
  %2214 = trunc i32 %2213 to i8
  store i8 %2214, i8* %32, align 1
  %2215 = lshr i32 %2197, 31
  %2216 = add nuw nsw i32 %2213, %2215
  %2217 = icmp eq i32 %2216, 2
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %38, align 1
  %.v207 = select i1 %2211, i64 229, i64 26
  %2219 = add i64 %2161, %.v207
  store i64 %2219, i64* %3, align 8
  br i1 %2211, label %block_.L_421427, label %block_42135c

block_42135c:                                     ; preds = %block_421342
  %2220 = add i64 %2219, 3
  store i64 %2220, i64* %3, align 8
  %2221 = load i32, i32* %2072, align 4
  %2222 = add i32 %2221, -20
  %2223 = zext i32 %2222 to i64
  store i64 %2223, i64* %RAX.i1786, align 8
  %2224 = icmp ult i32 %2221, 20
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %14, align 1
  %2226 = and i32 %2222, 255
  %2227 = tail call i32 @llvm.ctpop.i32(i32 %2226)
  %2228 = trunc i32 %2227 to i8
  %2229 = and i8 %2228, 1
  %2230 = xor i8 %2229, 1
  store i8 %2230, i8* %21, align 1
  %2231 = xor i32 %2221, 16
  %2232 = xor i32 %2231, %2222
  %2233 = lshr i32 %2232, 4
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  store i8 %2235, i8* %26, align 1
  %2236 = icmp eq i32 %2222, 0
  %2237 = zext i1 %2236 to i8
  store i8 %2237, i8* %29, align 1
  %2238 = lshr i32 %2222, 31
  %2239 = trunc i32 %2238 to i8
  store i8 %2239, i8* %32, align 1
  %2240 = lshr i32 %2221, 31
  %2241 = xor i32 %2238, %2240
  %2242 = add nuw nsw i32 %2241, %2240
  %2243 = icmp eq i32 %2242, 2
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %38, align 1
  %2245 = sext i32 %2222 to i64
  store i64 %2245, i64* %RCX.i1775.pre-phi, align 8
  %2246 = add nsw i64 %2245, 12099168
  %2247 = add i64 %2219, 17
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i8*
  %2249 = load i8, i8* %2248, align 1
  %2250 = zext i8 %2249 to i64
  store i64 %2250, i64* %RAX.i1786, align 8
  %2251 = zext i8 %2249 to i32
  store i8 0, i8* %14, align 1
  %2252 = tail call i32 @llvm.ctpop.i32(i32 %2251)
  %2253 = trunc i32 %2252 to i8
  %2254 = and i8 %2253, 1
  %2255 = xor i8 %2254, 1
  store i8 %2255, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2256 = icmp eq i8 %2249, 0
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v208 = select i1 %2256, i64 26, i64 256
  %2258 = add i64 %2219, %.v208
  store i64 %2258, i64* %3, align 8
  br i1 %2256, label %block_421376, label %block_.L_42145c

block_421376:                                     ; preds = %block_42135c
  %2259 = add i64 %2258, 3
  store i64 %2259, i64* %3, align 8
  %2260 = load i32, i32* %2072, align 4
  %2261 = add i32 %2260, -20
  %2262 = icmp eq i32 %2261, 0
  %2263 = zext i1 %2262 to i8
  %2264 = lshr i32 %2261, 31
  %2265 = add i32 %2260, -21
  %2266 = zext i32 %2265 to i64
  store i64 %2266, i64* %RAX.i1786, align 8
  store i8 %2263, i8* %14, align 1
  %2267 = and i32 %2265, 255
  %2268 = tail call i32 @llvm.ctpop.i32(i32 %2267)
  %2269 = trunc i32 %2268 to i8
  %2270 = and i8 %2269, 1
  %2271 = xor i8 %2270, 1
  store i8 %2271, i8* %21, align 1
  %2272 = xor i32 %2265, %2261
  %2273 = lshr i32 %2272, 4
  %2274 = trunc i32 %2273 to i8
  %2275 = and i8 %2274, 1
  store i8 %2275, i8* %26, align 1
  %2276 = icmp eq i32 %2265, 0
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %29, align 1
  %2278 = lshr i32 %2265, 31
  %2279 = trunc i32 %2278 to i8
  store i8 %2279, i8* %32, align 1
  %2280 = xor i32 %2278, %2264
  %2281 = add nuw nsw i32 %2280, %2264
  %2282 = icmp eq i32 %2281, 2
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %38, align 1
  %2284 = sext i32 %2265 to i64
  store i64 %2284, i64* %RCX.i1775.pre-phi, align 8
  %2285 = add nsw i64 %2284, 12099168
  %2286 = add i64 %2258, 20
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2285 to i8*
  %2288 = load i8, i8* %2287, align 1
  %2289 = zext i8 %2288 to i64
  store i64 %2289, i64* %RAX.i1786, align 8
  %2290 = zext i8 %2288 to i32
  %2291 = add nsw i32 %2290, -3
  %2292 = icmp ult i8 %2288, 3
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %14, align 1
  %2294 = and i32 %2291, 255
  %2295 = tail call i32 @llvm.ctpop.i32(i32 %2294)
  %2296 = trunc i32 %2295 to i8
  %2297 = and i8 %2296, 1
  %2298 = xor i8 %2297, 1
  store i8 %2298, i8* %21, align 1
  %2299 = xor i32 %2291, %2290
  %2300 = lshr i32 %2299, 4
  %2301 = trunc i32 %2300 to i8
  %2302 = and i8 %2301, 1
  store i8 %2302, i8* %26, align 1
  %2303 = icmp eq i32 %2291, 0
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %29, align 1
  %2305 = lshr i32 %2291, 31
  %2306 = trunc i32 %2305 to i8
  store i8 %2306, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v209 = select i1 %2303, i64 230, i64 29
  %2307 = add i64 %2258, %.v209
  store i64 %2307, i64* %3, align 8
  br i1 %2303, label %block_.L_42145c, label %block_421393

block_421393:                                     ; preds = %block_421376
  %2308 = load i64, i64* %RBP.i, align 8
  %2309 = add i64 %2308, -28
  %2310 = add i64 %2307, 3
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i32*
  %2312 = load i32, i32* %2311, align 4
  %2313 = add i32 %2312, -20
  %2314 = icmp eq i32 %2313, 0
  %2315 = zext i1 %2314 to i8
  %2316 = lshr i32 %2313, 31
  %2317 = add i32 %2312, -21
  %2318 = zext i32 %2317 to i64
  store i64 %2318, i64* %RAX.i1786, align 8
  store i8 %2315, i8* %14, align 1
  %2319 = and i32 %2317, 255
  %2320 = tail call i32 @llvm.ctpop.i32(i32 %2319)
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  %2323 = xor i8 %2322, 1
  store i8 %2323, i8* %21, align 1
  %2324 = xor i32 %2317, %2313
  %2325 = lshr i32 %2324, 4
  %2326 = trunc i32 %2325 to i8
  %2327 = and i8 %2326, 1
  store i8 %2327, i8* %26, align 1
  %2328 = icmp eq i32 %2317, 0
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %29, align 1
  %2330 = lshr i32 %2317, 31
  %2331 = trunc i32 %2330 to i8
  store i8 %2331, i8* %32, align 1
  %2332 = xor i32 %2330, %2316
  %2333 = add nuw nsw i32 %2332, %2316
  %2334 = icmp eq i32 %2333, 2
  %2335 = zext i1 %2334 to i8
  store i8 %2335, i8* %38, align 1
  %2336 = sext i32 %2317 to i64
  store i64 %2336, i64* %RCX.i1775.pre-phi, align 8
  %2337 = add nsw i64 %2336, 12099168
  %2338 = add i64 %2307, 20
  store i64 %2338, i64* %3, align 8
  %2339 = inttoptr i64 %2337 to i8*
  %2340 = load i8, i8* %2339, align 1
  %2341 = zext i8 %2340 to i64
  store i64 %2341, i64* %RAX.i1786, align 8
  %2342 = zext i8 %2340 to i32
  %2343 = add i64 %2308, -1500
  %2344 = add i64 %2307, 26
  store i64 %2344, i64* %3, align 8
  %2345 = inttoptr i64 %2343 to i32*
  %2346 = load i32, i32* %2345, align 4
  %2347 = sub i32 %2342, %2346
  %2348 = icmp ult i32 %2342, %2346
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %14, align 1
  %2350 = and i32 %2347, 255
  %2351 = tail call i32 @llvm.ctpop.i32(i32 %2350)
  %2352 = trunc i32 %2351 to i8
  %2353 = and i8 %2352, 1
  %2354 = xor i8 %2353, 1
  store i8 %2354, i8* %21, align 1
  %2355 = xor i32 %2346, %2342
  %2356 = xor i32 %2355, %2347
  %2357 = lshr i32 %2356, 4
  %2358 = trunc i32 %2357 to i8
  %2359 = and i8 %2358, 1
  store i8 %2359, i8* %26, align 1
  %2360 = icmp eq i32 %2347, 0
  %2361 = zext i1 %2360 to i8
  store i8 %2361, i8* %29, align 1
  %2362 = lshr i32 %2347, 31
  %2363 = trunc i32 %2362 to i8
  store i8 %2363, i8* %32, align 1
  %2364 = lshr i32 %2346, 31
  %2365 = add nuw nsw i32 %2362, %2364
  %2366 = icmp eq i32 %2365, 2
  %2367 = zext i1 %2366 to i8
  store i8 %2367, i8* %38, align 1
  %.v210 = select i1 %2360, i64 201, i64 32
  %2368 = add i64 %2307, %.v210
  store i64 %2368, i64* %3, align 8
  br i1 %2360, label %block_.L_42145c, label %block_4213b3

block_4213b3:                                     ; preds = %block_421393
  %2369 = load i64, i64* %RBP.i, align 8
  %2370 = add i64 %2369, -28
  %2371 = add i64 %2368, 3
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i32*
  %2373 = load i32, i32* %2372, align 4
  %2374 = add i32 %2373, -40
  %2375 = zext i32 %2374 to i64
  store i64 %2375, i64* %RAX.i1786, align 8
  %2376 = icmp ult i32 %2373, 40
  %2377 = zext i1 %2376 to i8
  store i8 %2377, i8* %14, align 1
  %2378 = and i32 %2374, 255
  %2379 = tail call i32 @llvm.ctpop.i32(i32 %2378)
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  %2382 = xor i8 %2381, 1
  store i8 %2382, i8* %21, align 1
  %2383 = xor i32 %2374, %2373
  %2384 = lshr i32 %2383, 4
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  store i8 %2386, i8* %26, align 1
  %2387 = icmp eq i32 %2374, 0
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %29, align 1
  %2389 = lshr i32 %2374, 31
  %2390 = trunc i32 %2389 to i8
  store i8 %2390, i8* %32, align 1
  %2391 = lshr i32 %2373, 31
  %2392 = xor i32 %2389, %2391
  %2393 = add nuw nsw i32 %2392, %2391
  %2394 = icmp eq i32 %2393, 2
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %38, align 1
  %2396 = sext i32 %2374 to i64
  store i64 %2396, i64* %RCX.i1775.pre-phi, align 8
  %2397 = add nsw i64 %2396, 12099168
  %2398 = add i64 %2368, 17
  store i64 %2398, i64* %3, align 8
  %2399 = inttoptr i64 %2397 to i8*
  %2400 = load i8, i8* %2399, align 1
  %2401 = zext i8 %2400 to i64
  store i64 %2401, i64* %RAX.i1786, align 8
  %2402 = zext i8 %2400 to i32
  %2403 = add nsw i32 %2402, -3
  %2404 = icmp ult i8 %2400, 3
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %14, align 1
  %2406 = and i32 %2403, 255
  %2407 = tail call i32 @llvm.ctpop.i32(i32 %2406)
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  %2410 = xor i8 %2409, 1
  store i8 %2410, i8* %21, align 1
  %2411 = xor i32 %2403, %2402
  %2412 = lshr i32 %2411, 4
  %2413 = trunc i32 %2412 to i8
  %2414 = and i8 %2413, 1
  store i8 %2414, i8* %26, align 1
  %2415 = icmp eq i32 %2403, 0
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %29, align 1
  %2417 = lshr i32 %2403, 31
  %2418 = trunc i32 %2417 to i8
  store i8 %2418, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v211 = select i1 %2415, i64 169, i64 26
  %2419 = add i64 %2368, %.v211
  store i64 %2419, i64* %3, align 8
  br i1 %2415, label %block_.L_42145c, label %block_4213cd

block_4213cd:                                     ; preds = %block_4213b3
  %2420 = add i64 %2419, 3
  store i64 %2420, i64* %3, align 8
  %2421 = load i32, i32* %2372, align 4
  %2422 = add i32 %2421, -40
  %2423 = zext i32 %2422 to i64
  store i64 %2423, i64* %RAX.i1786, align 8
  %2424 = icmp ult i32 %2421, 40
  %2425 = zext i1 %2424 to i8
  store i8 %2425, i8* %14, align 1
  %2426 = and i32 %2422, 255
  %2427 = tail call i32 @llvm.ctpop.i32(i32 %2426)
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  %2430 = xor i8 %2429, 1
  store i8 %2430, i8* %21, align 1
  %2431 = xor i32 %2422, %2421
  %2432 = lshr i32 %2431, 4
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  store i8 %2434, i8* %26, align 1
  %2435 = icmp eq i32 %2422, 0
  %2436 = zext i1 %2435 to i8
  store i8 %2436, i8* %29, align 1
  %2437 = lshr i32 %2422, 31
  %2438 = trunc i32 %2437 to i8
  store i8 %2438, i8* %32, align 1
  %2439 = lshr i32 %2421, 31
  %2440 = xor i32 %2437, %2439
  %2441 = add nuw nsw i32 %2440, %2439
  %2442 = icmp eq i32 %2441, 2
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %38, align 1
  %2444 = sext i32 %2422 to i64
  store i64 %2444, i64* %RCX.i1775.pre-phi, align 8
  %2445 = add nsw i64 %2444, 12099168
  %2446 = add i64 %2419, 17
  store i64 %2446, i64* %3, align 8
  %2447 = inttoptr i64 %2445 to i8*
  %2448 = load i8, i8* %2447, align 1
  %2449 = zext i8 %2448 to i64
  store i64 %2449, i64* %RAX.i1786, align 8
  %2450 = zext i8 %2448 to i32
  %2451 = add i64 %2369, -1500
  %2452 = add i64 %2419, 23
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i32*
  %2454 = load i32, i32* %2453, align 4
  %2455 = sub i32 %2450, %2454
  %2456 = icmp ult i32 %2450, %2454
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %14, align 1
  %2458 = and i32 %2455, 255
  %2459 = tail call i32 @llvm.ctpop.i32(i32 %2458)
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  %2462 = xor i8 %2461, 1
  store i8 %2462, i8* %21, align 1
  %2463 = xor i32 %2454, %2450
  %2464 = xor i32 %2463, %2455
  %2465 = lshr i32 %2464, 4
  %2466 = trunc i32 %2465 to i8
  %2467 = and i8 %2466, 1
  store i8 %2467, i8* %26, align 1
  %2468 = icmp eq i32 %2455, 0
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %29, align 1
  %2470 = lshr i32 %2455, 31
  %2471 = trunc i32 %2470 to i8
  store i8 %2471, i8* %32, align 1
  %2472 = lshr i32 %2454, 31
  %2473 = add nuw nsw i32 %2470, %2472
  %2474 = icmp eq i32 %2473, 2
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %38, align 1
  %.v212 = select i1 %2468, i64 143, i64 29
  %2476 = add i64 %2419, %.v212
  store i64 %2476, i64* %3, align 8
  br i1 %2468, label %block_.L_42145c, label %block_4213ea

block_4213ea:                                     ; preds = %block_4213cd
  %2477 = add i64 %2476, 3
  store i64 %2477, i64* %3, align 8
  %2478 = load i32, i32* %2372, align 4
  %2479 = add i32 %2478, -20
  %2480 = lshr i32 %2479, 31
  %2481 = add i32 %2478, -19
  %2482 = zext i32 %2481 to i64
  store i64 %2482, i64* %RAX.i1786, align 8
  %2483 = icmp eq i32 %2479, -1
  %2484 = icmp eq i32 %2481, 0
  %2485 = or i1 %2483, %2484
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %14, align 1
  %2487 = and i32 %2481, 255
  %2488 = tail call i32 @llvm.ctpop.i32(i32 %2487)
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  %2491 = xor i8 %2490, 1
  store i8 %2491, i8* %21, align 1
  %2492 = xor i32 %2481, %2479
  %2493 = lshr i32 %2492, 4
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  store i8 %2495, i8* %26, align 1
  %2496 = zext i1 %2484 to i8
  store i8 %2496, i8* %29, align 1
  %2497 = lshr i32 %2481, 31
  %2498 = trunc i32 %2497 to i8
  store i8 %2498, i8* %32, align 1
  %2499 = xor i32 %2497, %2480
  %2500 = add nuw nsw i32 %2499, %2497
  %2501 = icmp eq i32 %2500, 2
  %2502 = zext i1 %2501 to i8
  store i8 %2502, i8* %38, align 1
  %2503 = sext i32 %2481 to i64
  store i64 %2503, i64* %RCX.i1775.pre-phi, align 8
  %2504 = add nsw i64 %2503, 12099168
  %2505 = add i64 %2476, 20
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2504 to i8*
  %2507 = load i8, i8* %2506, align 1
  %2508 = zext i8 %2507 to i64
  store i64 %2508, i64* %RAX.i1786, align 8
  %2509 = zext i8 %2507 to i32
  %2510 = add nsw i32 %2509, -3
  %2511 = icmp ult i8 %2507, 3
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %14, align 1
  %2513 = and i32 %2510, 255
  %2514 = tail call i32 @llvm.ctpop.i32(i32 %2513)
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  %2517 = xor i8 %2516, 1
  store i8 %2517, i8* %21, align 1
  %2518 = xor i32 %2510, %2509
  %2519 = lshr i32 %2518, 4
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  store i8 %2521, i8* %26, align 1
  %2522 = icmp eq i32 %2510, 0
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %29, align 1
  %2524 = lshr i32 %2510, 31
  %2525 = trunc i32 %2524 to i8
  store i8 %2525, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v213 = select i1 %2522, i64 114, i64 29
  %2526 = add i64 %2476, %.v213
  store i64 %2526, i64* %3, align 8
  br i1 %2522, label %block_.L_42145c, label %block_421407

block_421407:                                     ; preds = %block_4213ea
  %2527 = load i64, i64* %RBP.i, align 8
  %2528 = add i64 %2527, -28
  %2529 = add i64 %2526, 3
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i32*
  %2531 = load i32, i32* %2530, align 4
  %2532 = add i32 %2531, -20
  %2533 = lshr i32 %2532, 31
  %2534 = add i32 %2531, -19
  %2535 = zext i32 %2534 to i64
  store i64 %2535, i64* %RAX.i1786, align 8
  %2536 = icmp eq i32 %2532, -1
  %2537 = icmp eq i32 %2534, 0
  %2538 = or i1 %2536, %2537
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %14, align 1
  %2540 = and i32 %2534, 255
  %2541 = tail call i32 @llvm.ctpop.i32(i32 %2540)
  %2542 = trunc i32 %2541 to i8
  %2543 = and i8 %2542, 1
  %2544 = xor i8 %2543, 1
  store i8 %2544, i8* %21, align 1
  %2545 = xor i32 %2534, %2532
  %2546 = lshr i32 %2545, 4
  %2547 = trunc i32 %2546 to i8
  %2548 = and i8 %2547, 1
  store i8 %2548, i8* %26, align 1
  %2549 = zext i1 %2537 to i8
  store i8 %2549, i8* %29, align 1
  %2550 = lshr i32 %2534, 31
  %2551 = trunc i32 %2550 to i8
  store i8 %2551, i8* %32, align 1
  %2552 = xor i32 %2550, %2533
  %2553 = add nuw nsw i32 %2552, %2550
  %2554 = icmp eq i32 %2553, 2
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %38, align 1
  %2556 = sext i32 %2534 to i64
  store i64 %2556, i64* %RCX.i1775.pre-phi, align 8
  %2557 = add nsw i64 %2556, 12099168
  %2558 = add i64 %2526, 20
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2557 to i8*
  %2560 = load i8, i8* %2559, align 1
  %2561 = zext i8 %2560 to i64
  store i64 %2561, i64* %RAX.i1786, align 8
  %2562 = zext i8 %2560 to i32
  %2563 = add i64 %2527, -1500
  %2564 = add i64 %2526, 26
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i32*
  %2566 = load i32, i32* %2565, align 4
  %2567 = sub i32 %2562, %2566
  %2568 = icmp ult i32 %2562, %2566
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %14, align 1
  %2570 = and i32 %2567, 255
  %2571 = tail call i32 @llvm.ctpop.i32(i32 %2570)
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = xor i8 %2573, 1
  store i8 %2574, i8* %21, align 1
  %2575 = xor i32 %2566, %2562
  %2576 = xor i32 %2575, %2567
  %2577 = lshr i32 %2576, 4
  %2578 = trunc i32 %2577 to i8
  %2579 = and i8 %2578, 1
  store i8 %2579, i8* %26, align 1
  %2580 = icmp eq i32 %2567, 0
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %29, align 1
  %2582 = lshr i32 %2567, 31
  %2583 = trunc i32 %2582 to i8
  store i8 %2583, i8* %32, align 1
  %2584 = lshr i32 %2566, 31
  %2585 = add nuw nsw i32 %2582, %2584
  %2586 = icmp eq i32 %2585, 2
  %2587 = zext i1 %2586 to i8
  store i8 %2587, i8* %38, align 1
  %.v214 = select i1 %2580, i64 85, i64 32
  %2588 = add i64 %2526, %.v214
  store i64 %2588, i64* %3, align 8
  br i1 %2580, label %block_.L_42145c, label %block_421407.block_.L_421427_crit_edge

block_421407.block_.L_421427_crit_edge:           ; preds = %block_421407
  %.pre116 = load i64, i64* %RBP.i, align 8
  br label %block_.L_421427

block_.L_421427:                                  ; preds = %block_421407.block_.L_421427_crit_edge, %block_421342
  %2589 = phi i64 [ %2588, %block_421407.block_.L_421427_crit_edge ], [ %2219, %block_421342 ]
  %2590 = phi i64 [ %.pre116, %block_421407.block_.L_421427_crit_edge ], [ %2069, %block_421342 ]
  %2591 = add i64 %2590, -28
  %2592 = add i64 %2589, 3
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i32*
  %2594 = load i32, i32* %2593, align 4
  %2595 = add i32 %2594, -20
  %2596 = zext i32 %2595 to i64
  store i64 %2596, i64* %RAX.i1786, align 8
  %2597 = icmp ult i32 %2594, 20
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %14, align 1
  %2599 = and i32 %2595, 255
  %2600 = tail call i32 @llvm.ctpop.i32(i32 %2599)
  %2601 = trunc i32 %2600 to i8
  %2602 = and i8 %2601, 1
  %2603 = xor i8 %2602, 1
  store i8 %2603, i8* %21, align 1
  %2604 = xor i32 %2594, 16
  %2605 = xor i32 %2604, %2595
  %2606 = lshr i32 %2605, 4
  %2607 = trunc i32 %2606 to i8
  %2608 = and i8 %2607, 1
  store i8 %2608, i8* %26, align 1
  %2609 = icmp eq i32 %2595, 0
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %29, align 1
  %2611 = lshr i32 %2595, 31
  %2612 = trunc i32 %2611 to i8
  store i8 %2612, i8* %32, align 1
  %2613 = lshr i32 %2594, 31
  %2614 = xor i32 %2611, %2613
  %2615 = add nuw nsw i32 %2614, %2613
  %2616 = icmp eq i32 %2615, 2
  %2617 = zext i1 %2616 to i8
  store i8 %2617, i8* %38, align 1
  %2618 = add i64 %2590, -1496
  %2619 = add i64 %2589, 12
  store i64 %2619, i64* %3, align 8
  %2620 = inttoptr i64 %2618 to i32*
  %2621 = load i32, i32* %2620, align 4
  %2622 = zext i32 %2621 to i64
  store i64 %2622, i64* %RCX.i1775.pre-phi, align 8
  %2623 = add i32 %2621, 1
  %2624 = zext i32 %2623 to i64
  store i64 %2624, i64* %RDX.i1837, align 8
  %2625 = icmp eq i32 %2621, -1
  %2626 = icmp eq i32 %2623, 0
  %2627 = or i1 %2625, %2626
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %14, align 1
  %2629 = and i32 %2623, 255
  %2630 = tail call i32 @llvm.ctpop.i32(i32 %2629)
  %2631 = trunc i32 %2630 to i8
  %2632 = and i8 %2631, 1
  %2633 = xor i8 %2632, 1
  store i8 %2633, i8* %21, align 1
  %2634 = xor i32 %2623, %2621
  %2635 = lshr i32 %2634, 4
  %2636 = trunc i32 %2635 to i8
  %2637 = and i8 %2636, 1
  store i8 %2637, i8* %26, align 1
  %2638 = zext i1 %2626 to i8
  store i8 %2638, i8* %29, align 1
  %2639 = lshr i32 %2623, 31
  %2640 = trunc i32 %2639 to i8
  store i8 %2640, i8* %32, align 1
  %2641 = lshr i32 %2621, 31
  %2642 = xor i32 %2639, %2641
  %2643 = add nuw nsw i32 %2642, %2639
  %2644 = icmp eq i32 %2643, 2
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %38, align 1
  %2646 = add i64 %2589, 23
  store i64 %2646, i64* %3, align 8
  store i32 %2623, i32* %2620, align 4
  %2647 = load i32, i32* %ECX.i1772.pre-phi, align 4
  %2648 = load i64, i64* %3, align 8
  %2649 = sext i32 %2647 to i64
  store i64 %2649, i64* %RSI.i1742.pre-phi, align 8
  %2650 = load i64, i64* %RBP.i, align 8
  %2651 = shl nsw i64 %2649, 2
  %2652 = add nsw i64 %2651, -1488
  %2653 = add i64 %2652, %2650
  %2654 = load i32, i32* %EAX.i1827, align 4
  %2655 = add i64 %2648, 10
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2653 to i32*
  store i32 %2654, i32* %2656, align 4
  %2657 = load i64, i64* %RBP.i, align 8
  %2658 = add i64 %2657, -28
  %2659 = load i64, i64* %3, align 8
  %2660 = add i64 %2659, 3
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2658 to i32*
  %2662 = load i32, i32* %2661, align 4
  %2663 = add i32 %2662, -20
  %2664 = zext i32 %2663 to i64
  store i64 %2664, i64* %RAX.i1786, align 8
  %2665 = icmp ult i32 %2662, 20
  %2666 = zext i1 %2665 to i8
  store i8 %2666, i8* %14, align 1
  %2667 = and i32 %2663, 255
  %2668 = tail call i32 @llvm.ctpop.i32(i32 %2667)
  %2669 = trunc i32 %2668 to i8
  %2670 = and i8 %2669, 1
  %2671 = xor i8 %2670, 1
  store i8 %2671, i8* %21, align 1
  %2672 = xor i32 %2662, 16
  %2673 = xor i32 %2672, %2663
  %2674 = lshr i32 %2673, 4
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  store i8 %2676, i8* %26, align 1
  %2677 = icmp eq i32 %2663, 0
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %29, align 1
  %2679 = lshr i32 %2663, 31
  %2680 = trunc i32 %2679 to i8
  store i8 %2680, i8* %32, align 1
  %2681 = lshr i32 %2662, 31
  %2682 = xor i32 %2679, %2681
  %2683 = add nuw nsw i32 %2682, %2681
  %2684 = icmp eq i32 %2683, 2
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %38, align 1
  %2686 = sext i32 %2663 to i64
  store i64 %2686, i64* %RSI.i1742.pre-phi, align 8
  %2687 = shl nsw i64 %2686, 2
  %2688 = add nsw i64 %2687, 11204272
  %2689 = add i64 %2659, 20
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i32*
  store i32 1, i32* %2690, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_42145c

block_.L_42145c:                                  ; preds = %block_42135c, %block_42132b, %block_.L_421427, %block_421407, %block_4213ea, %block_4213cd, %block_4213b3, %block_421393, %block_421376, %block_.L_421311
  %2691 = phi i64 [ %.pre117, %block_.L_421427 ], [ %2588, %block_421407 ], [ %2526, %block_4213ea ], [ %2476, %block_4213cd ], [ %2419, %block_4213b3 ], [ %2368, %block_421393 ], [ %2307, %block_421376 ], [ %2258, %block_42135c ], [ %2161, %block_42132b ], [ %2120, %block_.L_421311 ]
  %2692 = load i64, i64* %RBP.i, align 8
  %2693 = add i64 %2692, -28
  %2694 = add i64 %2691, 3
  store i64 %2694, i64* %3, align 8
  %2695 = inttoptr i64 %2693 to i32*
  %2696 = load i32, i32* %2695, align 4
  %2697 = add i32 %2696, 1
  %2698 = zext i32 %2697 to i64
  store i64 %2698, i64* %RAX.i1786, align 8
  %2699 = icmp eq i32 %2696, -1
  %2700 = icmp eq i32 %2697, 0
  %2701 = or i1 %2699, %2700
  %2702 = zext i1 %2701 to i8
  store i8 %2702, i8* %14, align 1
  %2703 = and i32 %2697, 255
  %2704 = tail call i32 @llvm.ctpop.i32(i32 %2703)
  %2705 = trunc i32 %2704 to i8
  %2706 = and i8 %2705, 1
  %2707 = xor i8 %2706, 1
  store i8 %2707, i8* %21, align 1
  %2708 = xor i32 %2697, %2696
  %2709 = lshr i32 %2708, 4
  %2710 = trunc i32 %2709 to i8
  %2711 = and i8 %2710, 1
  store i8 %2711, i8* %26, align 1
  %2712 = zext i1 %2700 to i8
  store i8 %2712, i8* %29, align 1
  %2713 = lshr i32 %2697, 31
  %2714 = trunc i32 %2713 to i8
  store i8 %2714, i8* %32, align 1
  %2715 = lshr i32 %2696, 31
  %2716 = xor i32 %2713, %2715
  %2717 = add nuw nsw i32 %2716, %2713
  %2718 = icmp eq i32 %2717, 2
  %2719 = zext i1 %2718 to i8
  store i8 %2719, i8* %38, align 1
  %2720 = sext i32 %2697 to i64
  store i64 %2720, i64* %RCX.i1775.pre-phi, align 8
  %2721 = add nsw i64 %2720, 12099168
  %2722 = add i64 %2691, 17
  store i64 %2722, i64* %3, align 8
  %2723 = inttoptr i64 %2721 to i8*
  %2724 = load i8, i8* %2723, align 1
  %2725 = zext i8 %2724 to i64
  store i64 %2725, i64* %RAX.i1786, align 8
  %2726 = zext i8 %2724 to i32
  %2727 = add nsw i32 %2726, -3
  %2728 = icmp ult i8 %2724, 3
  %2729 = zext i1 %2728 to i8
  store i8 %2729, i8* %14, align 1
  %2730 = and i32 %2727, 255
  %2731 = tail call i32 @llvm.ctpop.i32(i32 %2730)
  %2732 = trunc i32 %2731 to i8
  %2733 = and i8 %2732, 1
  %2734 = xor i8 %2733, 1
  store i8 %2734, i8* %21, align 1
  %2735 = xor i32 %2727, %2726
  %2736 = lshr i32 %2735, 4
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  store i8 %2738, i8* %26, align 1
  %2739 = icmp eq i32 %2727, 0
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %29, align 1
  %2741 = lshr i32 %2727, 31
  %2742 = trunc i32 %2741 to i8
  store i8 %2742, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v160 = select i1 %2739, i64 331, i64 26
  %2743 = add i64 %2691, %.v160
  store i64 %2743, i64* %3, align 8
  br i1 %2739, label %block_.L_4215a7, label %block_421476

block_421476:                                     ; preds = %block_.L_42145c
  %2744 = add i64 %2743, 3
  store i64 %2744, i64* %3, align 8
  %2745 = load i32, i32* %2695, align 4
  %2746 = add i32 %2745, 1
  %2747 = zext i32 %2746 to i64
  store i64 %2747, i64* %RAX.i1786, align 8
  %2748 = icmp eq i32 %2745, -1
  %2749 = icmp eq i32 %2746, 0
  %2750 = or i1 %2748, %2749
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %14, align 1
  %2752 = and i32 %2746, 255
  %2753 = tail call i32 @llvm.ctpop.i32(i32 %2752)
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  %2756 = xor i8 %2755, 1
  store i8 %2756, i8* %21, align 1
  %2757 = xor i32 %2746, %2745
  %2758 = lshr i32 %2757, 4
  %2759 = trunc i32 %2758 to i8
  %2760 = and i8 %2759, 1
  store i8 %2760, i8* %26, align 1
  %2761 = zext i1 %2749 to i8
  store i8 %2761, i8* %29, align 1
  %2762 = lshr i32 %2746, 31
  %2763 = trunc i32 %2762 to i8
  store i8 %2763, i8* %32, align 1
  %2764 = lshr i32 %2745, 31
  %2765 = xor i32 %2762, %2764
  %2766 = add nuw nsw i32 %2765, %2762
  %2767 = icmp eq i32 %2766, 2
  %2768 = zext i1 %2767 to i8
  store i8 %2768, i8* %38, align 1
  %2769 = sext i32 %2746 to i64
  store i64 %2769, i64* %RCX.i1775.pre-phi, align 8
  %2770 = shl nsw i64 %2769, 2
  %2771 = add nsw i64 %2770, 11204272
  %2772 = add i64 %2743, 17
  store i64 %2772, i64* %3, align 8
  %2773 = inttoptr i64 %2771 to i32*
  %2774 = load i32, i32* %2773, align 4
  store i8 0, i8* %14, align 1
  %2775 = and i32 %2774, 255
  %2776 = tail call i32 @llvm.ctpop.i32(i32 %2775)
  %2777 = trunc i32 %2776 to i8
  %2778 = and i8 %2777, 1
  %2779 = xor i8 %2778, 1
  store i8 %2779, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2780 = icmp eq i32 %2774, 0
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %29, align 1
  %2782 = lshr i32 %2774, 31
  %2783 = trunc i32 %2782 to i8
  store i8 %2783, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v161 = select i1 %2780, i64 23, i64 305
  %2784 = add i64 %2743, %.v161
  store i64 %2784, i64* %3, align 8
  br i1 %2780, label %block_42148d, label %block_.L_4215a7

block_42148d:                                     ; preds = %block_421476
  %2785 = add i64 %2784, 3
  store i64 %2785, i64* %3, align 8
  %2786 = load i32, i32* %2695, align 4
  %2787 = add i32 %2786, 1
  %2788 = zext i32 %2787 to i64
  store i64 %2788, i64* %RAX.i1786, align 8
  %2789 = icmp eq i32 %2786, -1
  %2790 = icmp eq i32 %2787, 0
  %2791 = or i1 %2789, %2790
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %14, align 1
  %2793 = and i32 %2787, 255
  %2794 = tail call i32 @llvm.ctpop.i32(i32 %2793)
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  store i8 %2797, i8* %21, align 1
  %2798 = xor i32 %2787, %2786
  %2799 = lshr i32 %2798, 4
  %2800 = trunc i32 %2799 to i8
  %2801 = and i8 %2800, 1
  store i8 %2801, i8* %26, align 1
  %2802 = zext i1 %2790 to i8
  store i8 %2802, i8* %29, align 1
  %2803 = lshr i32 %2787, 31
  %2804 = trunc i32 %2803 to i8
  store i8 %2804, i8* %32, align 1
  %2805 = lshr i32 %2786, 31
  %2806 = xor i32 %2803, %2805
  %2807 = add nuw nsw i32 %2806, %2803
  %2808 = icmp eq i32 %2807, 2
  %2809 = zext i1 %2808 to i8
  store i8 %2809, i8* %38, align 1
  %2810 = sext i32 %2787 to i64
  store i64 %2810, i64* %RCX.i1775.pre-phi, align 8
  %2811 = add nsw i64 %2810, 12099168
  %2812 = add i64 %2784, 17
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2811 to i8*
  %2814 = load i8, i8* %2813, align 1
  %2815 = zext i8 %2814 to i64
  store i64 %2815, i64* %RAX.i1786, align 8
  %2816 = zext i8 %2814 to i32
  %2817 = add i64 %2692, -12
  %2818 = add i64 %2784, 20
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2817 to i32*
  %2820 = load i32, i32* %2819, align 4
  %2821 = sub i32 %2816, %2820
  %2822 = icmp ult i32 %2816, %2820
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %14, align 1
  %2824 = and i32 %2821, 255
  %2825 = tail call i32 @llvm.ctpop.i32(i32 %2824)
  %2826 = trunc i32 %2825 to i8
  %2827 = and i8 %2826, 1
  %2828 = xor i8 %2827, 1
  store i8 %2828, i8* %21, align 1
  %2829 = xor i32 %2820, %2816
  %2830 = xor i32 %2829, %2821
  %2831 = lshr i32 %2830, 4
  %2832 = trunc i32 %2831 to i8
  %2833 = and i8 %2832, 1
  store i8 %2833, i8* %26, align 1
  %2834 = icmp eq i32 %2821, 0
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %29, align 1
  %2836 = lshr i32 %2821, 31
  %2837 = trunc i32 %2836 to i8
  store i8 %2837, i8* %32, align 1
  %2838 = lshr i32 %2820, 31
  %2839 = add nuw nsw i32 %2836, %2838
  %2840 = icmp eq i32 %2839, 2
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %38, align 1
  %.v199 = select i1 %2834, i64 229, i64 26
  %2842 = add i64 %2784, %.v199
  store i64 %2842, i64* %3, align 8
  br i1 %2834, label %block_.L_421572, label %block_4214a7

block_4214a7:                                     ; preds = %block_42148d
  %2843 = add i64 %2842, 3
  store i64 %2843, i64* %3, align 8
  %2844 = load i32, i32* %2695, align 4
  %2845 = add i32 %2844, 1
  %2846 = zext i32 %2845 to i64
  store i64 %2846, i64* %RAX.i1786, align 8
  %2847 = icmp eq i32 %2844, -1
  %2848 = icmp eq i32 %2845, 0
  %2849 = or i1 %2847, %2848
  %2850 = zext i1 %2849 to i8
  store i8 %2850, i8* %14, align 1
  %2851 = and i32 %2845, 255
  %2852 = tail call i32 @llvm.ctpop.i32(i32 %2851)
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  %2855 = xor i8 %2854, 1
  store i8 %2855, i8* %21, align 1
  %2856 = xor i32 %2845, %2844
  %2857 = lshr i32 %2856, 4
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  store i8 %2859, i8* %26, align 1
  %2860 = zext i1 %2848 to i8
  store i8 %2860, i8* %29, align 1
  %2861 = lshr i32 %2845, 31
  %2862 = trunc i32 %2861 to i8
  store i8 %2862, i8* %32, align 1
  %2863 = lshr i32 %2844, 31
  %2864 = xor i32 %2861, %2863
  %2865 = add nuw nsw i32 %2864, %2861
  %2866 = icmp eq i32 %2865, 2
  %2867 = zext i1 %2866 to i8
  store i8 %2867, i8* %38, align 1
  %2868 = sext i32 %2845 to i64
  store i64 %2868, i64* %RCX.i1775.pre-phi, align 8
  %2869 = add nsw i64 %2868, 12099168
  %2870 = add i64 %2842, 17
  store i64 %2870, i64* %3, align 8
  %2871 = inttoptr i64 %2869 to i8*
  %2872 = load i8, i8* %2871, align 1
  %2873 = zext i8 %2872 to i64
  store i64 %2873, i64* %RAX.i1786, align 8
  %2874 = zext i8 %2872 to i32
  store i8 0, i8* %14, align 1
  %2875 = tail call i32 @llvm.ctpop.i32(i32 %2874)
  %2876 = trunc i32 %2875 to i8
  %2877 = and i8 %2876, 1
  %2878 = xor i8 %2877, 1
  store i8 %2878, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2879 = icmp eq i8 %2872, 0
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v200 = select i1 %2879, i64 26, i64 256
  %2881 = add i64 %2842, %.v200
  store i64 %2881, i64* %3, align 8
  br i1 %2879, label %block_4214c1, label %block_.L_4215a7

block_4214c1:                                     ; preds = %block_4214a7
  %2882 = add i64 %2881, 3
  store i64 %2882, i64* %3, align 8
  %2883 = load i32, i32* %2695, align 4
  %2884 = add i32 %2883, -20
  %2885 = lshr i32 %2884, 31
  %2886 = add i32 %2883, -19
  %2887 = zext i32 %2886 to i64
  store i64 %2887, i64* %RAX.i1786, align 8
  %2888 = icmp eq i32 %2884, -1
  %2889 = icmp eq i32 %2886, 0
  %2890 = or i1 %2888, %2889
  %2891 = zext i1 %2890 to i8
  store i8 %2891, i8* %14, align 1
  %2892 = and i32 %2886, 255
  %2893 = tail call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  store i8 %2896, i8* %21, align 1
  %2897 = xor i32 %2886, %2884
  %2898 = lshr i32 %2897, 4
  %2899 = trunc i32 %2898 to i8
  %2900 = and i8 %2899, 1
  store i8 %2900, i8* %26, align 1
  %2901 = zext i1 %2889 to i8
  store i8 %2901, i8* %29, align 1
  %2902 = lshr i32 %2886, 31
  %2903 = trunc i32 %2902 to i8
  store i8 %2903, i8* %32, align 1
  %2904 = xor i32 %2902, %2885
  %2905 = add nuw nsw i32 %2904, %2902
  %2906 = icmp eq i32 %2905, 2
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %38, align 1
  %2908 = sext i32 %2886 to i64
  store i64 %2908, i64* %RCX.i1775.pre-phi, align 8
  %2909 = add nsw i64 %2908, 12099168
  %2910 = add i64 %2881, 20
  store i64 %2910, i64* %3, align 8
  %2911 = inttoptr i64 %2909 to i8*
  %2912 = load i8, i8* %2911, align 1
  %2913 = zext i8 %2912 to i64
  store i64 %2913, i64* %RAX.i1786, align 8
  %2914 = zext i8 %2912 to i32
  %2915 = add nsw i32 %2914, -3
  %2916 = icmp ult i8 %2912, 3
  %2917 = zext i1 %2916 to i8
  store i8 %2917, i8* %14, align 1
  %2918 = and i32 %2915, 255
  %2919 = tail call i32 @llvm.ctpop.i32(i32 %2918)
  %2920 = trunc i32 %2919 to i8
  %2921 = and i8 %2920, 1
  %2922 = xor i8 %2921, 1
  store i8 %2922, i8* %21, align 1
  %2923 = xor i32 %2915, %2914
  %2924 = lshr i32 %2923, 4
  %2925 = trunc i32 %2924 to i8
  %2926 = and i8 %2925, 1
  store i8 %2926, i8* %26, align 1
  %2927 = icmp eq i32 %2915, 0
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %29, align 1
  %2929 = lshr i32 %2915, 31
  %2930 = trunc i32 %2929 to i8
  store i8 %2930, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v201 = select i1 %2927, i64 230, i64 29
  %2931 = add i64 %2881, %.v201
  store i64 %2931, i64* %3, align 8
  br i1 %2927, label %block_.L_4215a7, label %block_4214de

block_4214de:                                     ; preds = %block_4214c1
  %2932 = load i64, i64* %RBP.i, align 8
  %2933 = add i64 %2932, -28
  %2934 = add i64 %2931, 3
  store i64 %2934, i64* %3, align 8
  %2935 = inttoptr i64 %2933 to i32*
  %2936 = load i32, i32* %2935, align 4
  %2937 = add i32 %2936, -20
  %2938 = lshr i32 %2937, 31
  %2939 = add i32 %2936, -19
  %2940 = zext i32 %2939 to i64
  store i64 %2940, i64* %RAX.i1786, align 8
  %2941 = icmp eq i32 %2937, -1
  %2942 = icmp eq i32 %2939, 0
  %2943 = or i1 %2941, %2942
  %2944 = zext i1 %2943 to i8
  store i8 %2944, i8* %14, align 1
  %2945 = and i32 %2939, 255
  %2946 = tail call i32 @llvm.ctpop.i32(i32 %2945)
  %2947 = trunc i32 %2946 to i8
  %2948 = and i8 %2947, 1
  %2949 = xor i8 %2948, 1
  store i8 %2949, i8* %21, align 1
  %2950 = xor i32 %2939, %2937
  %2951 = lshr i32 %2950, 4
  %2952 = trunc i32 %2951 to i8
  %2953 = and i8 %2952, 1
  store i8 %2953, i8* %26, align 1
  %2954 = zext i1 %2942 to i8
  store i8 %2954, i8* %29, align 1
  %2955 = lshr i32 %2939, 31
  %2956 = trunc i32 %2955 to i8
  store i8 %2956, i8* %32, align 1
  %2957 = xor i32 %2955, %2938
  %2958 = add nuw nsw i32 %2957, %2955
  %2959 = icmp eq i32 %2958, 2
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %38, align 1
  %2961 = sext i32 %2939 to i64
  store i64 %2961, i64* %RCX.i1775.pre-phi, align 8
  %2962 = add nsw i64 %2961, 12099168
  %2963 = add i64 %2931, 20
  store i64 %2963, i64* %3, align 8
  %2964 = inttoptr i64 %2962 to i8*
  %2965 = load i8, i8* %2964, align 1
  %2966 = zext i8 %2965 to i64
  store i64 %2966, i64* %RAX.i1786, align 8
  %2967 = zext i8 %2965 to i32
  %2968 = add i64 %2932, -1500
  %2969 = add i64 %2931, 26
  store i64 %2969, i64* %3, align 8
  %2970 = inttoptr i64 %2968 to i32*
  %2971 = load i32, i32* %2970, align 4
  %2972 = sub i32 %2967, %2971
  %2973 = icmp ult i32 %2967, %2971
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %14, align 1
  %2975 = and i32 %2972, 255
  %2976 = tail call i32 @llvm.ctpop.i32(i32 %2975)
  %2977 = trunc i32 %2976 to i8
  %2978 = and i8 %2977, 1
  %2979 = xor i8 %2978, 1
  store i8 %2979, i8* %21, align 1
  %2980 = xor i32 %2971, %2967
  %2981 = xor i32 %2980, %2972
  %2982 = lshr i32 %2981, 4
  %2983 = trunc i32 %2982 to i8
  %2984 = and i8 %2983, 1
  store i8 %2984, i8* %26, align 1
  %2985 = icmp eq i32 %2972, 0
  %2986 = zext i1 %2985 to i8
  store i8 %2986, i8* %29, align 1
  %2987 = lshr i32 %2972, 31
  %2988 = trunc i32 %2987 to i8
  store i8 %2988, i8* %32, align 1
  %2989 = lshr i32 %2971, 31
  %2990 = add nuw nsw i32 %2987, %2989
  %2991 = icmp eq i32 %2990, 2
  %2992 = zext i1 %2991 to i8
  store i8 %2992, i8* %38, align 1
  %.v202 = select i1 %2985, i64 201, i64 32
  %2993 = add i64 %2931, %.v202
  store i64 %2993, i64* %3, align 8
  br i1 %2985, label %block_.L_4215a7, label %block_4214fe

block_4214fe:                                     ; preds = %block_4214de
  %2994 = load i64, i64* %RBP.i, align 8
  %2995 = add i64 %2994, -28
  %2996 = add i64 %2993, 3
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2995 to i32*
  %2998 = load i32, i32* %2997, align 4
  %2999 = add i32 %2998, 2
  %3000 = zext i32 %2999 to i64
  store i64 %3000, i64* %RAX.i1786, align 8
  %3001 = icmp ugt i32 %2998, -3
  %3002 = zext i1 %3001 to i8
  store i8 %3002, i8* %14, align 1
  %3003 = and i32 %2999, 255
  %3004 = tail call i32 @llvm.ctpop.i32(i32 %3003)
  %3005 = trunc i32 %3004 to i8
  %3006 = and i8 %3005, 1
  %3007 = xor i8 %3006, 1
  store i8 %3007, i8* %21, align 1
  %3008 = xor i32 %2999, %2998
  %3009 = lshr i32 %3008, 4
  %3010 = trunc i32 %3009 to i8
  %3011 = and i8 %3010, 1
  store i8 %3011, i8* %26, align 1
  %3012 = icmp eq i32 %2999, 0
  %3013 = zext i1 %3012 to i8
  store i8 %3013, i8* %29, align 1
  %3014 = lshr i32 %2999, 31
  %3015 = trunc i32 %3014 to i8
  store i8 %3015, i8* %32, align 1
  %3016 = lshr i32 %2998, 31
  %3017 = xor i32 %3014, %3016
  %3018 = add nuw nsw i32 %3017, %3014
  %3019 = icmp eq i32 %3018, 2
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %38, align 1
  %3021 = sext i32 %2999 to i64
  store i64 %3021, i64* %RCX.i1775.pre-phi, align 8
  %3022 = add nsw i64 %3021, 12099168
  %3023 = add i64 %2993, 17
  store i64 %3023, i64* %3, align 8
  %3024 = inttoptr i64 %3022 to i8*
  %3025 = load i8, i8* %3024, align 1
  %3026 = zext i8 %3025 to i64
  store i64 %3026, i64* %RAX.i1786, align 8
  %3027 = zext i8 %3025 to i32
  %3028 = add nsw i32 %3027, -3
  %3029 = icmp ult i8 %3025, 3
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %14, align 1
  %3031 = and i32 %3028, 255
  %3032 = tail call i32 @llvm.ctpop.i32(i32 %3031)
  %3033 = trunc i32 %3032 to i8
  %3034 = and i8 %3033, 1
  %3035 = xor i8 %3034, 1
  store i8 %3035, i8* %21, align 1
  %3036 = xor i32 %3028, %3027
  %3037 = lshr i32 %3036, 4
  %3038 = trunc i32 %3037 to i8
  %3039 = and i8 %3038, 1
  store i8 %3039, i8* %26, align 1
  %3040 = icmp eq i32 %3028, 0
  %3041 = zext i1 %3040 to i8
  store i8 %3041, i8* %29, align 1
  %3042 = lshr i32 %3028, 31
  %3043 = trunc i32 %3042 to i8
  store i8 %3043, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v203 = select i1 %3040, i64 169, i64 26
  %3044 = add i64 %2993, %.v203
  store i64 %3044, i64* %3, align 8
  br i1 %3040, label %block_.L_4215a7, label %block_421518

block_421518:                                     ; preds = %block_4214fe
  %3045 = add i64 %3044, 3
  store i64 %3045, i64* %3, align 8
  %3046 = load i32, i32* %2997, align 4
  %3047 = add i32 %3046, 2
  %3048 = zext i32 %3047 to i64
  store i64 %3048, i64* %RAX.i1786, align 8
  %3049 = icmp ugt i32 %3046, -3
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %14, align 1
  %3051 = and i32 %3047, 255
  %3052 = tail call i32 @llvm.ctpop.i32(i32 %3051)
  %3053 = trunc i32 %3052 to i8
  %3054 = and i8 %3053, 1
  %3055 = xor i8 %3054, 1
  store i8 %3055, i8* %21, align 1
  %3056 = xor i32 %3047, %3046
  %3057 = lshr i32 %3056, 4
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  store i8 %3059, i8* %26, align 1
  %3060 = icmp eq i32 %3047, 0
  %3061 = zext i1 %3060 to i8
  store i8 %3061, i8* %29, align 1
  %3062 = lshr i32 %3047, 31
  %3063 = trunc i32 %3062 to i8
  store i8 %3063, i8* %32, align 1
  %3064 = lshr i32 %3046, 31
  %3065 = xor i32 %3062, %3064
  %3066 = add nuw nsw i32 %3065, %3062
  %3067 = icmp eq i32 %3066, 2
  %3068 = zext i1 %3067 to i8
  store i8 %3068, i8* %38, align 1
  %3069 = sext i32 %3047 to i64
  store i64 %3069, i64* %RCX.i1775.pre-phi, align 8
  %3070 = add nsw i64 %3069, 12099168
  %3071 = add i64 %3044, 17
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3070 to i8*
  %3073 = load i8, i8* %3072, align 1
  %3074 = zext i8 %3073 to i64
  store i64 %3074, i64* %RAX.i1786, align 8
  %3075 = zext i8 %3073 to i32
  %3076 = add i64 %2994, -1500
  %3077 = add i64 %3044, 23
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3076 to i32*
  %3079 = load i32, i32* %3078, align 4
  %3080 = sub i32 %3075, %3079
  %3081 = icmp ult i32 %3075, %3079
  %3082 = zext i1 %3081 to i8
  store i8 %3082, i8* %14, align 1
  %3083 = and i32 %3080, 255
  %3084 = tail call i32 @llvm.ctpop.i32(i32 %3083)
  %3085 = trunc i32 %3084 to i8
  %3086 = and i8 %3085, 1
  %3087 = xor i8 %3086, 1
  store i8 %3087, i8* %21, align 1
  %3088 = xor i32 %3079, %3075
  %3089 = xor i32 %3088, %3080
  %3090 = lshr i32 %3089, 4
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  store i8 %3092, i8* %26, align 1
  %3093 = icmp eq i32 %3080, 0
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %29, align 1
  %3095 = lshr i32 %3080, 31
  %3096 = trunc i32 %3095 to i8
  store i8 %3096, i8* %32, align 1
  %3097 = lshr i32 %3079, 31
  %3098 = add nuw nsw i32 %3095, %3097
  %3099 = icmp eq i32 %3098, 2
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %38, align 1
  %.v204 = select i1 %3093, i64 143, i64 29
  %3101 = add i64 %3044, %.v204
  store i64 %3101, i64* %3, align 8
  br i1 %3093, label %block_.L_4215a7, label %block_421535

block_421535:                                     ; preds = %block_421518
  %3102 = add i64 %3101, 3
  store i64 %3102, i64* %3, align 8
  %3103 = load i32, i32* %2997, align 4
  %3104 = add i32 %3103, 20
  %3105 = lshr i32 %3104, 31
  %3106 = add i32 %3103, 21
  %3107 = zext i32 %3106 to i64
  store i64 %3107, i64* %RAX.i1786, align 8
  %3108 = icmp eq i32 %3104, -1
  %3109 = icmp eq i32 %3106, 0
  %3110 = or i1 %3108, %3109
  %3111 = zext i1 %3110 to i8
  store i8 %3111, i8* %14, align 1
  %3112 = and i32 %3106, 255
  %3113 = tail call i32 @llvm.ctpop.i32(i32 %3112)
  %3114 = trunc i32 %3113 to i8
  %3115 = and i8 %3114, 1
  %3116 = xor i8 %3115, 1
  store i8 %3116, i8* %21, align 1
  %3117 = xor i32 %3106, %3104
  %3118 = lshr i32 %3117, 4
  %3119 = trunc i32 %3118 to i8
  %3120 = and i8 %3119, 1
  store i8 %3120, i8* %26, align 1
  %3121 = zext i1 %3109 to i8
  store i8 %3121, i8* %29, align 1
  %3122 = lshr i32 %3106, 31
  %3123 = trunc i32 %3122 to i8
  store i8 %3123, i8* %32, align 1
  %3124 = xor i32 %3122, %3105
  %3125 = add nuw nsw i32 %3124, %3122
  %3126 = icmp eq i32 %3125, 2
  %3127 = zext i1 %3126 to i8
  store i8 %3127, i8* %38, align 1
  %3128 = sext i32 %3106 to i64
  store i64 %3128, i64* %RCX.i1775.pre-phi, align 8
  %3129 = add nsw i64 %3128, 12099168
  %3130 = add i64 %3101, 20
  store i64 %3130, i64* %3, align 8
  %3131 = inttoptr i64 %3129 to i8*
  %3132 = load i8, i8* %3131, align 1
  %3133 = zext i8 %3132 to i64
  store i64 %3133, i64* %RAX.i1786, align 8
  %3134 = zext i8 %3132 to i32
  %3135 = add nsw i32 %3134, -3
  %3136 = icmp ult i8 %3132, 3
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %14, align 1
  %3138 = and i32 %3135, 255
  %3139 = tail call i32 @llvm.ctpop.i32(i32 %3138)
  %3140 = trunc i32 %3139 to i8
  %3141 = and i8 %3140, 1
  %3142 = xor i8 %3141, 1
  store i8 %3142, i8* %21, align 1
  %3143 = xor i32 %3135, %3134
  %3144 = lshr i32 %3143, 4
  %3145 = trunc i32 %3144 to i8
  %3146 = and i8 %3145, 1
  store i8 %3146, i8* %26, align 1
  %3147 = icmp eq i32 %3135, 0
  %3148 = zext i1 %3147 to i8
  store i8 %3148, i8* %29, align 1
  %3149 = lshr i32 %3135, 31
  %3150 = trunc i32 %3149 to i8
  store i8 %3150, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v205 = select i1 %3147, i64 114, i64 29
  %3151 = add i64 %3101, %.v205
  store i64 %3151, i64* %3, align 8
  br i1 %3147, label %block_.L_4215a7, label %block_421552

block_421552:                                     ; preds = %block_421535
  %3152 = load i64, i64* %RBP.i, align 8
  %3153 = add i64 %3152, -28
  %3154 = add i64 %3151, 3
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3153 to i32*
  %3156 = load i32, i32* %3155, align 4
  %3157 = add i32 %3156, 20
  %3158 = lshr i32 %3157, 31
  %3159 = add i32 %3156, 21
  %3160 = zext i32 %3159 to i64
  store i64 %3160, i64* %RAX.i1786, align 8
  %3161 = icmp eq i32 %3157, -1
  %3162 = icmp eq i32 %3159, 0
  %3163 = or i1 %3161, %3162
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %14, align 1
  %3165 = and i32 %3159, 255
  %3166 = tail call i32 @llvm.ctpop.i32(i32 %3165)
  %3167 = trunc i32 %3166 to i8
  %3168 = and i8 %3167, 1
  %3169 = xor i8 %3168, 1
  store i8 %3169, i8* %21, align 1
  %3170 = xor i32 %3159, %3157
  %3171 = lshr i32 %3170, 4
  %3172 = trunc i32 %3171 to i8
  %3173 = and i8 %3172, 1
  store i8 %3173, i8* %26, align 1
  %3174 = zext i1 %3162 to i8
  store i8 %3174, i8* %29, align 1
  %3175 = lshr i32 %3159, 31
  %3176 = trunc i32 %3175 to i8
  store i8 %3176, i8* %32, align 1
  %3177 = xor i32 %3175, %3158
  %3178 = add nuw nsw i32 %3177, %3175
  %3179 = icmp eq i32 %3178, 2
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %38, align 1
  %3181 = sext i32 %3159 to i64
  store i64 %3181, i64* %RCX.i1775.pre-phi, align 8
  %3182 = add nsw i64 %3181, 12099168
  %3183 = add i64 %3151, 20
  store i64 %3183, i64* %3, align 8
  %3184 = inttoptr i64 %3182 to i8*
  %3185 = load i8, i8* %3184, align 1
  %3186 = zext i8 %3185 to i64
  store i64 %3186, i64* %RAX.i1786, align 8
  %3187 = zext i8 %3185 to i32
  %3188 = add i64 %3152, -1500
  %3189 = add i64 %3151, 26
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3188 to i32*
  %3191 = load i32, i32* %3190, align 4
  %3192 = sub i32 %3187, %3191
  %3193 = icmp ult i32 %3187, %3191
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %14, align 1
  %3195 = and i32 %3192, 255
  %3196 = tail call i32 @llvm.ctpop.i32(i32 %3195)
  %3197 = trunc i32 %3196 to i8
  %3198 = and i8 %3197, 1
  %3199 = xor i8 %3198, 1
  store i8 %3199, i8* %21, align 1
  %3200 = xor i32 %3191, %3187
  %3201 = xor i32 %3200, %3192
  %3202 = lshr i32 %3201, 4
  %3203 = trunc i32 %3202 to i8
  %3204 = and i8 %3203, 1
  store i8 %3204, i8* %26, align 1
  %3205 = icmp eq i32 %3192, 0
  %3206 = zext i1 %3205 to i8
  store i8 %3206, i8* %29, align 1
  %3207 = lshr i32 %3192, 31
  %3208 = trunc i32 %3207 to i8
  store i8 %3208, i8* %32, align 1
  %3209 = lshr i32 %3191, 31
  %3210 = add nuw nsw i32 %3207, %3209
  %3211 = icmp eq i32 %3210, 2
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %38, align 1
  %.v206 = select i1 %3205, i64 85, i64 32
  %3213 = add i64 %3151, %.v206
  store i64 %3213, i64* %3, align 8
  br i1 %3205, label %block_.L_4215a7, label %block_421552.block_.L_421572_crit_edge

block_421552.block_.L_421572_crit_edge:           ; preds = %block_421552
  %.pre118 = load i64, i64* %RBP.i, align 8
  br label %block_.L_421572

block_.L_421572:                                  ; preds = %block_421552.block_.L_421572_crit_edge, %block_42148d
  %3214 = phi i64 [ %3213, %block_421552.block_.L_421572_crit_edge ], [ %2842, %block_42148d ]
  %3215 = phi i64 [ %.pre118, %block_421552.block_.L_421572_crit_edge ], [ %2692, %block_42148d ]
  %3216 = add i64 %3215, -28
  %3217 = add i64 %3214, 3
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3216 to i32*
  %3219 = load i32, i32* %3218, align 4
  %3220 = add i32 %3219, 1
  %3221 = zext i32 %3220 to i64
  store i64 %3221, i64* %RAX.i1786, align 8
  %3222 = icmp eq i32 %3219, -1
  %3223 = icmp eq i32 %3220, 0
  %3224 = or i1 %3222, %3223
  %3225 = zext i1 %3224 to i8
  store i8 %3225, i8* %14, align 1
  %3226 = and i32 %3220, 255
  %3227 = tail call i32 @llvm.ctpop.i32(i32 %3226)
  %3228 = trunc i32 %3227 to i8
  %3229 = and i8 %3228, 1
  %3230 = xor i8 %3229, 1
  store i8 %3230, i8* %21, align 1
  %3231 = xor i32 %3220, %3219
  %3232 = lshr i32 %3231, 4
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  store i8 %3234, i8* %26, align 1
  %3235 = zext i1 %3223 to i8
  store i8 %3235, i8* %29, align 1
  %3236 = lshr i32 %3220, 31
  %3237 = trunc i32 %3236 to i8
  store i8 %3237, i8* %32, align 1
  %3238 = lshr i32 %3219, 31
  %3239 = xor i32 %3236, %3238
  %3240 = add nuw nsw i32 %3239, %3236
  %3241 = icmp eq i32 %3240, 2
  %3242 = zext i1 %3241 to i8
  store i8 %3242, i8* %38, align 1
  %3243 = add i64 %3215, -1496
  %3244 = add i64 %3214, 12
  store i64 %3244, i64* %3, align 8
  %3245 = inttoptr i64 %3243 to i32*
  %3246 = load i32, i32* %3245, align 4
  %3247 = zext i32 %3246 to i64
  store i64 %3247, i64* %RCX.i1775.pre-phi, align 8
  %3248 = add i32 %3246, 1
  %3249 = zext i32 %3248 to i64
  store i64 %3249, i64* %RDX.i1837, align 8
  %3250 = icmp eq i32 %3246, -1
  %3251 = icmp eq i32 %3248, 0
  %3252 = or i1 %3250, %3251
  %3253 = zext i1 %3252 to i8
  store i8 %3253, i8* %14, align 1
  %3254 = and i32 %3248, 255
  %3255 = tail call i32 @llvm.ctpop.i32(i32 %3254)
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  %3258 = xor i8 %3257, 1
  store i8 %3258, i8* %21, align 1
  %3259 = xor i32 %3248, %3246
  %3260 = lshr i32 %3259, 4
  %3261 = trunc i32 %3260 to i8
  %3262 = and i8 %3261, 1
  store i8 %3262, i8* %26, align 1
  %3263 = zext i1 %3251 to i8
  store i8 %3263, i8* %29, align 1
  %3264 = lshr i32 %3248, 31
  %3265 = trunc i32 %3264 to i8
  store i8 %3265, i8* %32, align 1
  %3266 = lshr i32 %3246, 31
  %3267 = xor i32 %3264, %3266
  %3268 = add nuw nsw i32 %3267, %3264
  %3269 = icmp eq i32 %3268, 2
  %3270 = zext i1 %3269 to i8
  store i8 %3270, i8* %38, align 1
  %3271 = add i64 %3214, 23
  store i64 %3271, i64* %3, align 8
  store i32 %3248, i32* %3245, align 4
  %3272 = load i32, i32* %ECX.i1772.pre-phi, align 4
  %3273 = load i64, i64* %3, align 8
  %3274 = sext i32 %3272 to i64
  store i64 %3274, i64* %RSI.i1742.pre-phi, align 8
  %3275 = load i64, i64* %RBP.i, align 8
  %3276 = shl nsw i64 %3274, 2
  %3277 = add nsw i64 %3276, -1488
  %3278 = add i64 %3277, %3275
  %3279 = load i32, i32* %EAX.i1827, align 4
  %3280 = add i64 %3273, 10
  store i64 %3280, i64* %3, align 8
  %3281 = inttoptr i64 %3278 to i32*
  store i32 %3279, i32* %3281, align 4
  %3282 = load i64, i64* %RBP.i, align 8
  %3283 = add i64 %3282, -28
  %3284 = load i64, i64* %3, align 8
  %3285 = add i64 %3284, 3
  store i64 %3285, i64* %3, align 8
  %3286 = inttoptr i64 %3283 to i32*
  %3287 = load i32, i32* %3286, align 4
  %3288 = add i32 %3287, 1
  %3289 = zext i32 %3288 to i64
  store i64 %3289, i64* %RAX.i1786, align 8
  %3290 = icmp eq i32 %3287, -1
  %3291 = icmp eq i32 %3288, 0
  %3292 = or i1 %3290, %3291
  %3293 = zext i1 %3292 to i8
  store i8 %3293, i8* %14, align 1
  %3294 = and i32 %3288, 255
  %3295 = tail call i32 @llvm.ctpop.i32(i32 %3294)
  %3296 = trunc i32 %3295 to i8
  %3297 = and i8 %3296, 1
  %3298 = xor i8 %3297, 1
  store i8 %3298, i8* %21, align 1
  %3299 = xor i32 %3288, %3287
  %3300 = lshr i32 %3299, 4
  %3301 = trunc i32 %3300 to i8
  %3302 = and i8 %3301, 1
  store i8 %3302, i8* %26, align 1
  %3303 = zext i1 %3291 to i8
  store i8 %3303, i8* %29, align 1
  %3304 = lshr i32 %3288, 31
  %3305 = trunc i32 %3304 to i8
  store i8 %3305, i8* %32, align 1
  %3306 = lshr i32 %3287, 31
  %3307 = xor i32 %3304, %3306
  %3308 = add nuw nsw i32 %3307, %3304
  %3309 = icmp eq i32 %3308, 2
  %3310 = zext i1 %3309 to i8
  store i8 %3310, i8* %38, align 1
  %3311 = sext i32 %3288 to i64
  store i64 %3311, i64* %RSI.i1742.pre-phi, align 8
  %3312 = shl nsw i64 %3311, 2
  %3313 = add nsw i64 %3312, 11204272
  %3314 = add i64 %3284, 20
  store i64 %3314, i64* %3, align 8
  %3315 = inttoptr i64 %3313 to i32*
  store i32 1, i32* %3315, align 4
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_4215a7

block_.L_4215a7:                                  ; preds = %block_4214a7, %block_421476, %block_.L_421572, %block_421552, %block_421535, %block_421518, %block_4214fe, %block_4214de, %block_4214c1, %block_.L_42145c
  %3316 = phi i64 [ %.pre119, %block_.L_421572 ], [ %3213, %block_421552 ], [ %3151, %block_421535 ], [ %3101, %block_421518 ], [ %3044, %block_4214fe ], [ %2993, %block_4214de ], [ %2931, %block_4214c1 ], [ %2881, %block_4214a7 ], [ %2784, %block_421476 ], [ %2743, %block_.L_42145c ]
  %3317 = load i64, i64* %RBP.i, align 8
  %3318 = add i64 %3317, -1504
  %3319 = add i64 %3316, 7
  store i64 %3319, i64* %3, align 8
  %3320 = inttoptr i64 %3318 to i32*
  %3321 = load i32, i32* %3320, align 4
  store i8 0, i8* %14, align 1
  %3322 = and i32 %3321, 255
  %3323 = tail call i32 @llvm.ctpop.i32(i32 %3322)
  %3324 = trunc i32 %3323 to i8
  %3325 = and i8 %3324, 1
  %3326 = xor i8 %3325, 1
  store i8 %3326, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3327 = icmp eq i32 %3321, 0
  %3328 = zext i1 %3327 to i8
  store i8 %3328, i8* %29, align 1
  %3329 = lshr i32 %3321, 31
  %3330 = trunc i32 %3329 to i8
  store i8 %3330, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v162 = select i1 %3327, i64 13, i64 1334
  %3331 = add i64 %3316, %.v162
  store i64 %3331, i64* %3, align 8
  br i1 %3327, label %block_4215b4, label %block_.L_421add

block_4215b4:                                     ; preds = %block_.L_4215a7
  %3332 = add i64 %3317, -28
  %3333 = add i64 %3331, 3
  store i64 %3333, i64* %3, align 8
  %3334 = inttoptr i64 %3332 to i32*
  %3335 = load i32, i32* %3334, align 4
  %3336 = add i32 %3335, 20
  %3337 = zext i32 %3336 to i64
  store i64 %3337, i64* %RAX.i1786, align 8
  %3338 = icmp ugt i32 %3335, -21
  %3339 = zext i1 %3338 to i8
  store i8 %3339, i8* %14, align 1
  %3340 = and i32 %3336, 255
  %3341 = tail call i32 @llvm.ctpop.i32(i32 %3340)
  %3342 = trunc i32 %3341 to i8
  %3343 = and i8 %3342, 1
  %3344 = xor i8 %3343, 1
  store i8 %3344, i8* %21, align 1
  %3345 = xor i32 %3335, 16
  %3346 = xor i32 %3345, %3336
  %3347 = lshr i32 %3346, 4
  %3348 = trunc i32 %3347 to i8
  %3349 = and i8 %3348, 1
  store i8 %3349, i8* %26, align 1
  %3350 = icmp eq i32 %3336, 0
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %29, align 1
  %3352 = lshr i32 %3336, 31
  %3353 = trunc i32 %3352 to i8
  store i8 %3353, i8* %32, align 1
  %3354 = lshr i32 %3335, 31
  %3355 = xor i32 %3352, %3354
  %3356 = add nuw nsw i32 %3355, %3352
  %3357 = icmp eq i32 %3356, 2
  %3358 = zext i1 %3357 to i8
  store i8 %3358, i8* %38, align 1
  %3359 = sext i32 %3336 to i64
  store i64 %3359, i64* %RCX.i1775.pre-phi, align 8
  %3360 = add nsw i64 %3359, 12099168
  %3361 = add i64 %3331, 17
  store i64 %3361, i64* %3, align 8
  %3362 = inttoptr i64 %3360 to i8*
  %3363 = load i8, i8* %3362, align 1
  %3364 = zext i8 %3363 to i64
  store i64 %3364, i64* %RAX.i1786, align 8
  %3365 = zext i8 %3363 to i32
  store i8 0, i8* %14, align 1
  %3366 = tail call i32 @llvm.ctpop.i32(i32 %3365)
  %3367 = trunc i32 %3366 to i8
  %3368 = and i8 %3367, 1
  %3369 = xor i8 %3368, 1
  store i8 %3369, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3370 = icmp eq i8 %3363, 0
  %3371 = zext i1 %3370 to i8
  store i8 %3371, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v163 = select i1 %3370, i64 26, i64 329
  %3372 = add i64 %3331, %.v163
  store i64 %3372, i64* %3, align 8
  br i1 %3370, label %block_4215ce, label %block_.L_4216fd

block_4215ce:                                     ; preds = %block_4215b4
  %3373 = add i64 %3372, 3
  store i64 %3373, i64* %3, align 8
  %3374 = load i32, i32* %3334, align 4
  %3375 = add i32 %3374, -1
  %3376 = zext i32 %3375 to i64
  store i64 %3376, i64* %RAX.i1786, align 8
  %3377 = icmp eq i32 %3374, 0
  %3378 = zext i1 %3377 to i8
  store i8 %3378, i8* %14, align 1
  %3379 = and i32 %3375, 255
  %3380 = tail call i32 @llvm.ctpop.i32(i32 %3379)
  %3381 = trunc i32 %3380 to i8
  %3382 = and i8 %3381, 1
  %3383 = xor i8 %3382, 1
  store i8 %3383, i8* %21, align 1
  %3384 = xor i32 %3375, %3374
  %3385 = lshr i32 %3384, 4
  %3386 = trunc i32 %3385 to i8
  %3387 = and i8 %3386, 1
  store i8 %3387, i8* %26, align 1
  %3388 = icmp eq i32 %3375, 0
  %3389 = zext i1 %3388 to i8
  store i8 %3389, i8* %29, align 1
  %3390 = lshr i32 %3375, 31
  %3391 = trunc i32 %3390 to i8
  store i8 %3391, i8* %32, align 1
  %3392 = lshr i32 %3374, 31
  %3393 = xor i32 %3390, %3392
  %3394 = add nuw nsw i32 %3393, %3392
  %3395 = icmp eq i32 %3394, 2
  %3396 = zext i1 %3395 to i8
  store i8 %3396, i8* %38, align 1
  %3397 = sext i32 %3375 to i64
  store i64 %3397, i64* %RCX.i1775.pre-phi, align 8
  %3398 = add nsw i64 %3397, 12099168
  %3399 = add i64 %3372, 17
  store i64 %3399, i64* %3, align 8
  %3400 = inttoptr i64 %3398 to i8*
  %3401 = load i8, i8* %3400, align 1
  %3402 = zext i8 %3401 to i64
  store i64 %3402, i64* %RAX.i1786, align 8
  %3403 = zext i8 %3401 to i32
  store i8 0, i8* %14, align 1
  %3404 = tail call i32 @llvm.ctpop.i32(i32 %3403)
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = xor i8 %3406, 1
  store i8 %3407, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3408 = icmp eq i8 %3401, 0
  %3409 = zext i1 %3408 to i8
  store i8 %3409, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v191 = select i1 %3408, i64 26, i64 303
  %3410 = add i64 %3372, %.v191
  store i64 %3410, i64* %3, align 8
  br i1 %3408, label %block_4215e8, label %block_.L_4216fd

block_4215e8:                                     ; preds = %block_4215ce
  %3411 = add i64 %3410, 3
  store i64 %3411, i64* %3, align 8
  %3412 = load i32, i32* %3334, align 4
  %3413 = add i32 %3412, 20
  %3414 = icmp eq i32 %3413, 0
  %3415 = zext i1 %3414 to i8
  %3416 = lshr i32 %3413, 31
  %3417 = add i32 %3412, 19
  %3418 = zext i32 %3417 to i64
  store i64 %3418, i64* %RAX.i1786, align 8
  store i8 %3415, i8* %14, align 1
  %3419 = and i32 %3417, 255
  %3420 = tail call i32 @llvm.ctpop.i32(i32 %3419)
  %3421 = trunc i32 %3420 to i8
  %3422 = and i8 %3421, 1
  %3423 = xor i8 %3422, 1
  store i8 %3423, i8* %21, align 1
  %3424 = xor i32 %3417, %3413
  %3425 = lshr i32 %3424, 4
  %3426 = trunc i32 %3425 to i8
  %3427 = and i8 %3426, 1
  store i8 %3427, i8* %26, align 1
  %3428 = icmp eq i32 %3417, 0
  %3429 = zext i1 %3428 to i8
  store i8 %3429, i8* %29, align 1
  %3430 = lshr i32 %3417, 31
  %3431 = trunc i32 %3430 to i8
  store i8 %3431, i8* %32, align 1
  %3432 = xor i32 %3430, %3416
  %3433 = add nuw nsw i32 %3432, %3416
  %3434 = icmp eq i32 %3433, 2
  %3435 = zext i1 %3434 to i8
  store i8 %3435, i8* %38, align 1
  %3436 = sext i32 %3417 to i64
  store i64 %3436, i64* %RCX.i1775.pre-phi, align 8
  %3437 = shl nsw i64 %3436, 2
  %3438 = add nsw i64 %3437, 11204272
  %3439 = add i64 %3410, 20
  store i64 %3439, i64* %3, align 8
  %3440 = inttoptr i64 %3438 to i32*
  %3441 = load i32, i32* %3440, align 4
  store i8 0, i8* %14, align 1
  %3442 = and i32 %3441, 255
  %3443 = tail call i32 @llvm.ctpop.i32(i32 %3442)
  %3444 = trunc i32 %3443 to i8
  %3445 = and i8 %3444, 1
  %3446 = xor i8 %3445, 1
  store i8 %3446, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3447 = icmp eq i32 %3441, 0
  %3448 = zext i1 %3447 to i8
  store i8 %3448, i8* %29, align 1
  %3449 = lshr i32 %3441, 31
  %3450 = trunc i32 %3449 to i8
  store i8 %3450, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v192 = select i1 %3447, i64 26, i64 277
  %3451 = add i64 %3410, %.v192
  store i64 %3451, i64* %3, align 8
  br i1 %3447, label %block_421602, label %block_.L_4216fd

block_421602:                                     ; preds = %block_4215e8
  %3452 = add i64 %3451, 3
  store i64 %3452, i64* %3, align 8
  %3453 = load i32, i32* %3334, align 4
  %3454 = add i32 %3453, 20
  %3455 = icmp eq i32 %3454, 0
  %3456 = zext i1 %3455 to i8
  %3457 = lshr i32 %3454, 31
  %3458 = add i32 %3453, 19
  %3459 = zext i32 %3458 to i64
  store i64 %3459, i64* %RAX.i1786, align 8
  store i8 %3456, i8* %14, align 1
  %3460 = and i32 %3458, 255
  %3461 = tail call i32 @llvm.ctpop.i32(i32 %3460)
  %3462 = trunc i32 %3461 to i8
  %3463 = and i8 %3462, 1
  %3464 = xor i8 %3463, 1
  store i8 %3464, i8* %21, align 1
  %3465 = xor i32 %3458, %3454
  %3466 = lshr i32 %3465, 4
  %3467 = trunc i32 %3466 to i8
  %3468 = and i8 %3467, 1
  store i8 %3468, i8* %26, align 1
  %3469 = icmp eq i32 %3458, 0
  %3470 = zext i1 %3469 to i8
  store i8 %3470, i8* %29, align 1
  %3471 = lshr i32 %3458, 31
  %3472 = trunc i32 %3471 to i8
  store i8 %3472, i8* %32, align 1
  %3473 = xor i32 %3471, %3457
  %3474 = add nuw nsw i32 %3473, %3457
  %3475 = icmp eq i32 %3474, 2
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %38, align 1
  %3477 = sext i32 %3458 to i64
  store i64 %3477, i64* %RCX.i1775.pre-phi, align 8
  %3478 = add nsw i64 %3477, 12099168
  %3479 = add i64 %3451, 20
  store i64 %3479, i64* %3, align 8
  %3480 = inttoptr i64 %3478 to i8*
  %3481 = load i8, i8* %3480, align 1
  %3482 = zext i8 %3481 to i64
  store i64 %3482, i64* %RAX.i1786, align 8
  %3483 = zext i8 %3481 to i32
  %3484 = add i64 %3317, -12
  %3485 = add i64 %3451, 23
  store i64 %3485, i64* %3, align 8
  %3486 = inttoptr i64 %3484 to i32*
  %3487 = load i32, i32* %3486, align 4
  %3488 = sub i32 %3483, %3487
  %3489 = icmp ult i32 %3483, %3487
  %3490 = zext i1 %3489 to i8
  store i8 %3490, i8* %14, align 1
  %3491 = and i32 %3488, 255
  %3492 = tail call i32 @llvm.ctpop.i32(i32 %3491)
  %3493 = trunc i32 %3492 to i8
  %3494 = and i8 %3493, 1
  %3495 = xor i8 %3494, 1
  store i8 %3495, i8* %21, align 1
  %3496 = xor i32 %3487, %3483
  %3497 = xor i32 %3496, %3488
  %3498 = lshr i32 %3497, 4
  %3499 = trunc i32 %3498 to i8
  %3500 = and i8 %3499, 1
  store i8 %3500, i8* %26, align 1
  %3501 = icmp eq i32 %3488, 0
  %3502 = zext i1 %3501 to i8
  store i8 %3502, i8* %29, align 1
  %3503 = lshr i32 %3488, 31
  %3504 = trunc i32 %3503 to i8
  store i8 %3504, i8* %32, align 1
  %3505 = lshr i32 %3487, 31
  %3506 = add nuw nsw i32 %3503, %3505
  %3507 = icmp eq i32 %3506, 2
  %3508 = zext i1 %3507 to i8
  store i8 %3508, i8* %38, align 1
  %.v193 = select i1 %3501, i64 192, i64 29
  %3509 = add i64 %3451, %.v193
  store i64 %3509, i64* %3, align 8
  %.pre120 = load i64, i64* %RBP.i, align 8
  br i1 %3501, label %block_.L_4216c2, label %block_42161f

block_42161f:                                     ; preds = %block_421602
  %3510 = add i64 %.pre120, -28
  %3511 = add i64 %3509, 3
  store i64 %3511, i64* %3, align 8
  %3512 = inttoptr i64 %3510 to i32*
  %3513 = load i32, i32* %3512, align 4
  %3514 = add i32 %3513, 20
  %3515 = icmp eq i32 %3514, 0
  %3516 = zext i1 %3515 to i8
  %3517 = lshr i32 %3514, 31
  %3518 = add i32 %3513, 19
  %3519 = zext i32 %3518 to i64
  store i64 %3519, i64* %RAX.i1786, align 8
  store i8 %3516, i8* %14, align 1
  %3520 = and i32 %3518, 255
  %3521 = tail call i32 @llvm.ctpop.i32(i32 %3520)
  %3522 = trunc i32 %3521 to i8
  %3523 = and i8 %3522, 1
  %3524 = xor i8 %3523, 1
  store i8 %3524, i8* %21, align 1
  %3525 = xor i32 %3518, %3514
  %3526 = lshr i32 %3525, 4
  %3527 = trunc i32 %3526 to i8
  %3528 = and i8 %3527, 1
  store i8 %3528, i8* %26, align 1
  %3529 = icmp eq i32 %3518, 0
  %3530 = zext i1 %3529 to i8
  store i8 %3530, i8* %29, align 1
  %3531 = lshr i32 %3518, 31
  %3532 = trunc i32 %3531 to i8
  store i8 %3532, i8* %32, align 1
  %3533 = xor i32 %3531, %3517
  %3534 = add nuw nsw i32 %3533, %3517
  %3535 = icmp eq i32 %3534, 2
  %3536 = zext i1 %3535 to i8
  store i8 %3536, i8* %38, align 1
  %3537 = sext i32 %3518 to i64
  store i64 %3537, i64* %RCX.i1775.pre-phi, align 8
  %3538 = add nsw i64 %3537, 12099168
  %3539 = add i64 %3509, 20
  store i64 %3539, i64* %3, align 8
  %3540 = inttoptr i64 %3538 to i8*
  %3541 = load i8, i8* %3540, align 1
  %3542 = zext i8 %3541 to i64
  store i64 %3542, i64* %RAX.i1786, align 8
  %3543 = zext i8 %3541 to i32
  store i8 0, i8* %14, align 1
  %3544 = tail call i32 @llvm.ctpop.i32(i32 %3543)
  %3545 = trunc i32 %3544 to i8
  %3546 = and i8 %3545, 1
  %3547 = xor i8 %3546, 1
  store i8 %3547, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3548 = icmp eq i8 %3541, 0
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v194 = select i1 %3548, i64 29, i64 222
  %3550 = add i64 %3509, %.v194
  store i64 %3550, i64* %3, align 8
  br i1 %3548, label %block_42163c, label %block_.L_4216fd

block_42163c:                                     ; preds = %block_42161f
  %3551 = load i64, i64* %RBP.i, align 8
  %3552 = add i64 %3551, -28
  %3553 = add i64 %3550, 3
  store i64 %3553, i64* %3, align 8
  %3554 = inttoptr i64 %3552 to i32*
  %3555 = load i32, i32* %3554, align 4
  %3556 = add i32 %3555, 19
  %3557 = lshr i32 %3556, 31
  %3558 = add i32 %3555, 39
  %3559 = zext i32 %3558 to i64
  store i64 %3559, i64* %RAX.i1786, align 8
  %3560 = icmp ugt i32 %3556, -21
  %3561 = zext i1 %3560 to i8
  store i8 %3561, i8* %14, align 1
  %3562 = and i32 %3558, 255
  %3563 = tail call i32 @llvm.ctpop.i32(i32 %3562)
  %3564 = trunc i32 %3563 to i8
  %3565 = and i8 %3564, 1
  %3566 = xor i8 %3565, 1
  store i8 %3566, i8* %21, align 1
  %3567 = xor i32 %3556, 16
  %3568 = xor i32 %3567, %3558
  %3569 = lshr i32 %3568, 4
  %3570 = trunc i32 %3569 to i8
  %3571 = and i8 %3570, 1
  store i8 %3571, i8* %26, align 1
  %3572 = icmp eq i32 %3558, 0
  %3573 = zext i1 %3572 to i8
  store i8 %3573, i8* %29, align 1
  %3574 = lshr i32 %3558, 31
  %3575 = trunc i32 %3574 to i8
  store i8 %3575, i8* %32, align 1
  %3576 = xor i32 %3574, %3557
  %3577 = add nuw nsw i32 %3576, %3574
  %3578 = icmp eq i32 %3577, 2
  %3579 = zext i1 %3578 to i8
  store i8 %3579, i8* %38, align 1
  %3580 = sext i32 %3558 to i64
  store i64 %3580, i64* %RCX.i1775.pre-phi, align 8
  %3581 = add nsw i64 %3580, 12099168
  %3582 = add i64 %3550, 23
  store i64 %3582, i64* %3, align 8
  %3583 = inttoptr i64 %3581 to i8*
  %3584 = load i8, i8* %3583, align 1
  %3585 = zext i8 %3584 to i64
  store i64 %3585, i64* %RAX.i1786, align 8
  %3586 = zext i8 %3584 to i32
  %3587 = add nsw i32 %3586, -3
  %3588 = icmp ult i8 %3584, 3
  %3589 = zext i1 %3588 to i8
  store i8 %3589, i8* %14, align 1
  %3590 = and i32 %3587, 255
  %3591 = tail call i32 @llvm.ctpop.i32(i32 %3590)
  %3592 = trunc i32 %3591 to i8
  %3593 = and i8 %3592, 1
  %3594 = xor i8 %3593, 1
  store i8 %3594, i8* %21, align 1
  %3595 = xor i32 %3587, %3586
  %3596 = lshr i32 %3595, 4
  %3597 = trunc i32 %3596 to i8
  %3598 = and i8 %3597, 1
  store i8 %3598, i8* %26, align 1
  %3599 = icmp eq i32 %3587, 0
  %3600 = zext i1 %3599 to i8
  store i8 %3600, i8* %29, align 1
  %3601 = lshr i32 %3587, 31
  %3602 = trunc i32 %3601 to i8
  store i8 %3602, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v195 = select i1 %3599, i64 193, i64 32
  %3603 = add i64 %3550, %.v195
  store i64 %3603, i64* %3, align 8
  br i1 %3599, label %block_.L_4216fd, label %block_42165c

block_42165c:                                     ; preds = %block_42163c
  %3604 = load i64, i64* %RBP.i, align 8
  %3605 = add i64 %3604, -28
  %3606 = add i64 %3603, 3
  store i64 %3606, i64* %3, align 8
  %3607 = inttoptr i64 %3605 to i32*
  %3608 = load i32, i32* %3607, align 4
  %3609 = add i32 %3608, 19
  %3610 = lshr i32 %3609, 31
  %3611 = add i32 %3608, 39
  %3612 = zext i32 %3611 to i64
  store i64 %3612, i64* %RAX.i1786, align 8
  %3613 = icmp ugt i32 %3609, -21
  %3614 = zext i1 %3613 to i8
  store i8 %3614, i8* %14, align 1
  %3615 = and i32 %3611, 255
  %3616 = tail call i32 @llvm.ctpop.i32(i32 %3615)
  %3617 = trunc i32 %3616 to i8
  %3618 = and i8 %3617, 1
  %3619 = xor i8 %3618, 1
  store i8 %3619, i8* %21, align 1
  %3620 = xor i32 %3609, 16
  %3621 = xor i32 %3620, %3611
  %3622 = lshr i32 %3621, 4
  %3623 = trunc i32 %3622 to i8
  %3624 = and i8 %3623, 1
  store i8 %3624, i8* %26, align 1
  %3625 = icmp eq i32 %3611, 0
  %3626 = zext i1 %3625 to i8
  store i8 %3626, i8* %29, align 1
  %3627 = lshr i32 %3611, 31
  %3628 = trunc i32 %3627 to i8
  store i8 %3628, i8* %32, align 1
  %3629 = xor i32 %3627, %3610
  %3630 = add nuw nsw i32 %3629, %3627
  %3631 = icmp eq i32 %3630, 2
  %3632 = zext i1 %3631 to i8
  store i8 %3632, i8* %38, align 1
  %3633 = sext i32 %3611 to i64
  store i64 %3633, i64* %RCX.i1775.pre-phi, align 8
  %3634 = add nsw i64 %3633, 12099168
  %3635 = add i64 %3603, 23
  store i64 %3635, i64* %3, align 8
  %3636 = inttoptr i64 %3634 to i8*
  %3637 = load i8, i8* %3636, align 1
  %3638 = zext i8 %3637 to i64
  store i64 %3638, i64* %RAX.i1786, align 8
  %3639 = zext i8 %3637 to i32
  %3640 = load i64, i64* %RBP.i, align 8
  %3641 = add i64 %3640, -1500
  %3642 = add i64 %3603, 29
  store i64 %3642, i64* %3, align 8
  %3643 = inttoptr i64 %3641 to i32*
  %3644 = load i32, i32* %3643, align 4
  %3645 = sub i32 %3639, %3644
  %3646 = icmp ult i32 %3639, %3644
  %3647 = zext i1 %3646 to i8
  store i8 %3647, i8* %14, align 1
  %3648 = and i32 %3645, 255
  %3649 = tail call i32 @llvm.ctpop.i32(i32 %3648)
  %3650 = trunc i32 %3649 to i8
  %3651 = and i8 %3650, 1
  %3652 = xor i8 %3651, 1
  store i8 %3652, i8* %21, align 1
  %3653 = xor i32 %3644, %3639
  %3654 = xor i32 %3653, %3645
  %3655 = lshr i32 %3654, 4
  %3656 = trunc i32 %3655 to i8
  %3657 = and i8 %3656, 1
  store i8 %3657, i8* %26, align 1
  %3658 = icmp eq i32 %3645, 0
  %3659 = zext i1 %3658 to i8
  store i8 %3659, i8* %29, align 1
  %3660 = lshr i32 %3645, 31
  %3661 = trunc i32 %3660 to i8
  store i8 %3661, i8* %32, align 1
  %3662 = lshr i32 %3644, 31
  %3663 = add nuw nsw i32 %3660, %3662
  %3664 = icmp eq i32 %3663, 2
  %3665 = zext i1 %3664 to i8
  store i8 %3665, i8* %38, align 1
  %.v196 = select i1 %3658, i64 161, i64 35
  %3666 = add i64 %3603, %.v196
  store i64 %3666, i64* %3, align 8
  br i1 %3658, label %block_.L_4216fd, label %block_42167f

block_42167f:                                     ; preds = %block_42165c
  %3667 = add i64 %3640, -28
  %3668 = add i64 %3666, 3
  store i64 %3668, i64* %3, align 8
  %3669 = inttoptr i64 %3667 to i32*
  %3670 = load i32, i32* %3669, align 4
  %3671 = add i32 %3670, 19
  %3672 = icmp eq i32 %3671, 0
  %3673 = zext i1 %3672 to i8
  %3674 = lshr i32 %3671, 31
  %3675 = add i32 %3670, 18
  %3676 = zext i32 %3675 to i64
  store i64 %3676, i64* %RAX.i1786, align 8
  store i8 %3673, i8* %14, align 1
  %3677 = and i32 %3675, 255
  %3678 = tail call i32 @llvm.ctpop.i32(i32 %3677)
  %3679 = trunc i32 %3678 to i8
  %3680 = and i8 %3679, 1
  %3681 = xor i8 %3680, 1
  store i8 %3681, i8* %21, align 1
  %3682 = xor i32 %3675, %3671
  %3683 = lshr i32 %3682, 4
  %3684 = trunc i32 %3683 to i8
  %3685 = and i8 %3684, 1
  store i8 %3685, i8* %26, align 1
  %3686 = icmp eq i32 %3675, 0
  %3687 = zext i1 %3686 to i8
  store i8 %3687, i8* %29, align 1
  %3688 = lshr i32 %3675, 31
  %3689 = trunc i32 %3688 to i8
  store i8 %3689, i8* %32, align 1
  %3690 = xor i32 %3688, %3674
  %3691 = add nuw nsw i32 %3690, %3674
  %3692 = icmp eq i32 %3691, 2
  %3693 = zext i1 %3692 to i8
  store i8 %3693, i8* %38, align 1
  %3694 = sext i32 %3675 to i64
  store i64 %3694, i64* %RCX.i1775.pre-phi, align 8
  %3695 = add nsw i64 %3694, 12099168
  %3696 = add i64 %3666, 23
  store i64 %3696, i64* %3, align 8
  %3697 = inttoptr i64 %3695 to i8*
  %3698 = load i8, i8* %3697, align 1
  %3699 = zext i8 %3698 to i64
  store i64 %3699, i64* %RAX.i1786, align 8
  %3700 = zext i8 %3698 to i32
  %3701 = add nsw i32 %3700, -3
  %3702 = icmp ult i8 %3698, 3
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %14, align 1
  %3704 = and i32 %3701, 255
  %3705 = tail call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  store i8 %3708, i8* %21, align 1
  %3709 = xor i32 %3701, %3700
  %3710 = lshr i32 %3709, 4
  %3711 = trunc i32 %3710 to i8
  %3712 = and i8 %3711, 1
  store i8 %3712, i8* %26, align 1
  %3713 = icmp eq i32 %3701, 0
  %3714 = zext i1 %3713 to i8
  store i8 %3714, i8* %29, align 1
  %3715 = lshr i32 %3701, 31
  %3716 = trunc i32 %3715 to i8
  store i8 %3716, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v197 = select i1 %3713, i64 126, i64 32
  %3717 = add i64 %3666, %.v197
  store i64 %3717, i64* %3, align 8
  br i1 %3713, label %block_.L_4216fd, label %block_42169f

block_42169f:                                     ; preds = %block_42167f
  %3718 = load i64, i64* %RBP.i, align 8
  %3719 = add i64 %3718, -28
  %3720 = add i64 %3717, 3
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3719 to i32*
  %3722 = load i32, i32* %3721, align 4
  %3723 = add i32 %3722, 19
  %3724 = icmp eq i32 %3723, 0
  %3725 = zext i1 %3724 to i8
  %3726 = lshr i32 %3723, 31
  %3727 = add i32 %3722, 18
  %3728 = zext i32 %3727 to i64
  store i64 %3728, i64* %RAX.i1786, align 8
  store i8 %3725, i8* %14, align 1
  %3729 = and i32 %3727, 255
  %3730 = tail call i32 @llvm.ctpop.i32(i32 %3729)
  %3731 = trunc i32 %3730 to i8
  %3732 = and i8 %3731, 1
  %3733 = xor i8 %3732, 1
  store i8 %3733, i8* %21, align 1
  %3734 = xor i32 %3727, %3723
  %3735 = lshr i32 %3734, 4
  %3736 = trunc i32 %3735 to i8
  %3737 = and i8 %3736, 1
  store i8 %3737, i8* %26, align 1
  %3738 = icmp eq i32 %3727, 0
  %3739 = zext i1 %3738 to i8
  store i8 %3739, i8* %29, align 1
  %3740 = lshr i32 %3727, 31
  %3741 = trunc i32 %3740 to i8
  store i8 %3741, i8* %32, align 1
  %3742 = xor i32 %3740, %3726
  %3743 = add nuw nsw i32 %3742, %3726
  %3744 = icmp eq i32 %3743, 2
  %3745 = zext i1 %3744 to i8
  store i8 %3745, i8* %38, align 1
  %3746 = sext i32 %3727 to i64
  store i64 %3746, i64* %RCX.i1775.pre-phi, align 8
  %3747 = add nsw i64 %3746, 12099168
  %3748 = add i64 %3717, 23
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3747 to i8*
  %3750 = load i8, i8* %3749, align 1
  %3751 = zext i8 %3750 to i64
  store i64 %3751, i64* %RAX.i1786, align 8
  %3752 = zext i8 %3750 to i32
  %3753 = load i64, i64* %RBP.i, align 8
  %3754 = add i64 %3753, -1500
  %3755 = add i64 %3717, 29
  store i64 %3755, i64* %3, align 8
  %3756 = inttoptr i64 %3754 to i32*
  %3757 = load i32, i32* %3756, align 4
  %3758 = sub i32 %3752, %3757
  %3759 = icmp ult i32 %3752, %3757
  %3760 = zext i1 %3759 to i8
  store i8 %3760, i8* %14, align 1
  %3761 = and i32 %3758, 255
  %3762 = tail call i32 @llvm.ctpop.i32(i32 %3761)
  %3763 = trunc i32 %3762 to i8
  %3764 = and i8 %3763, 1
  %3765 = xor i8 %3764, 1
  store i8 %3765, i8* %21, align 1
  %3766 = xor i32 %3757, %3752
  %3767 = xor i32 %3766, %3758
  %3768 = lshr i32 %3767, 4
  %3769 = trunc i32 %3768 to i8
  %3770 = and i8 %3769, 1
  store i8 %3770, i8* %26, align 1
  %3771 = icmp eq i32 %3758, 0
  %3772 = zext i1 %3771 to i8
  store i8 %3772, i8* %29, align 1
  %3773 = lshr i32 %3758, 31
  %3774 = trunc i32 %3773 to i8
  store i8 %3774, i8* %32, align 1
  %3775 = lshr i32 %3757, 31
  %3776 = add nuw nsw i32 %3773, %3775
  %3777 = icmp eq i32 %3776, 2
  %3778 = zext i1 %3777 to i8
  store i8 %3778, i8* %38, align 1
  %.v198 = select i1 %3771, i64 94, i64 35
  %3779 = add i64 %3717, %.v198
  store i64 %3779, i64* %3, align 8
  br i1 %3771, label %block_.L_4216fd, label %block_.L_4216c2

block_.L_4216c2:                                  ; preds = %block_421602, %block_42169f
  %3780 = phi i64 [ %3779, %block_42169f ], [ %3509, %block_421602 ]
  %3781 = phi i64 [ %3753, %block_42169f ], [ %.pre120, %block_421602 ]
  %3782 = add i64 %3781, -28
  %3783 = add i64 %3780, 3
  store i64 %3783, i64* %3, align 8
  %3784 = inttoptr i64 %3782 to i32*
  %3785 = load i32, i32* %3784, align 4
  %3786 = add i32 %3785, 20
  %3787 = icmp eq i32 %3786, 0
  %3788 = zext i1 %3787 to i8
  %3789 = lshr i32 %3786, 31
  %3790 = add i32 %3785, 19
  %3791 = zext i32 %3790 to i64
  store i64 %3791, i64* %RAX.i1786, align 8
  store i8 %3788, i8* %14, align 1
  %3792 = and i32 %3790, 255
  %3793 = tail call i32 @llvm.ctpop.i32(i32 %3792)
  %3794 = trunc i32 %3793 to i8
  %3795 = and i8 %3794, 1
  %3796 = xor i8 %3795, 1
  store i8 %3796, i8* %21, align 1
  %3797 = xor i32 %3790, %3786
  %3798 = lshr i32 %3797, 4
  %3799 = trunc i32 %3798 to i8
  %3800 = and i8 %3799, 1
  store i8 %3800, i8* %26, align 1
  %3801 = icmp eq i32 %3790, 0
  %3802 = zext i1 %3801 to i8
  store i8 %3802, i8* %29, align 1
  %3803 = lshr i32 %3790, 31
  %3804 = trunc i32 %3803 to i8
  store i8 %3804, i8* %32, align 1
  %3805 = xor i32 %3803, %3789
  %3806 = add nuw nsw i32 %3805, %3789
  %3807 = icmp eq i32 %3806, 2
  %3808 = zext i1 %3807 to i8
  store i8 %3808, i8* %38, align 1
  %3809 = add i64 %3781, -1496
  %3810 = add i64 %3780, 15
  store i64 %3810, i64* %3, align 8
  %3811 = inttoptr i64 %3809 to i32*
  %3812 = load i32, i32* %3811, align 4
  %3813 = zext i32 %3812 to i64
  store i64 %3813, i64* %RCX.i1775.pre-phi, align 8
  %3814 = add i32 %3812, 1
  %3815 = zext i32 %3814 to i64
  store i64 %3815, i64* %RDX.i1837, align 8
  %3816 = icmp eq i32 %3812, -1
  %3817 = icmp eq i32 %3814, 0
  %3818 = or i1 %3816, %3817
  %3819 = zext i1 %3818 to i8
  store i8 %3819, i8* %14, align 1
  %3820 = and i32 %3814, 255
  %3821 = tail call i32 @llvm.ctpop.i32(i32 %3820)
  %3822 = trunc i32 %3821 to i8
  %3823 = and i8 %3822, 1
  %3824 = xor i8 %3823, 1
  store i8 %3824, i8* %21, align 1
  %3825 = xor i32 %3814, %3812
  %3826 = lshr i32 %3825, 4
  %3827 = trunc i32 %3826 to i8
  %3828 = and i8 %3827, 1
  store i8 %3828, i8* %26, align 1
  %3829 = zext i1 %3817 to i8
  store i8 %3829, i8* %29, align 1
  %3830 = lshr i32 %3814, 31
  %3831 = trunc i32 %3830 to i8
  store i8 %3831, i8* %32, align 1
  %3832 = lshr i32 %3812, 31
  %3833 = xor i32 %3830, %3832
  %3834 = add nuw nsw i32 %3833, %3830
  %3835 = icmp eq i32 %3834, 2
  %3836 = zext i1 %3835 to i8
  store i8 %3836, i8* %38, align 1
  %3837 = load i64, i64* %RBP.i, align 8
  %3838 = add i64 %3837, -1496
  %3839 = add i64 %3780, 26
  store i64 %3839, i64* %3, align 8
  %3840 = inttoptr i64 %3838 to i32*
  store i32 %3814, i32* %3840, align 4
  %3841 = load i32, i32* %ECX.i1772.pre-phi, align 4
  %3842 = load i64, i64* %3, align 8
  %3843 = sext i32 %3841 to i64
  store i64 %3843, i64* %RSI.i1742.pre-phi, align 8
  %3844 = load i64, i64* %RBP.i, align 8
  %3845 = shl nsw i64 %3843, 2
  %3846 = add nsw i64 %3845, -1488
  %3847 = add i64 %3846, %3844
  %3848 = load i32, i32* %EAX.i1827, align 4
  %3849 = add i64 %3842, 10
  store i64 %3849, i64* %3, align 8
  %3850 = inttoptr i64 %3847 to i32*
  store i32 %3848, i32* %3850, align 4
  %3851 = load i64, i64* %RBP.i, align 8
  %3852 = add i64 %3851, -28
  %3853 = load i64, i64* %3, align 8
  %3854 = add i64 %3853, 3
  store i64 %3854, i64* %3, align 8
  %3855 = inttoptr i64 %3852 to i32*
  %3856 = load i32, i32* %3855, align 4
  %3857 = add i32 %3856, 20
  %3858 = icmp eq i32 %3857, 0
  %3859 = zext i1 %3858 to i8
  %3860 = lshr i32 %3857, 31
  %3861 = add i32 %3856, 19
  %3862 = zext i32 %3861 to i64
  store i64 %3862, i64* %RAX.i1786, align 8
  store i8 %3859, i8* %14, align 1
  %3863 = and i32 %3861, 255
  %3864 = tail call i32 @llvm.ctpop.i32(i32 %3863)
  %3865 = trunc i32 %3864 to i8
  %3866 = and i8 %3865, 1
  %3867 = xor i8 %3866, 1
  store i8 %3867, i8* %21, align 1
  %3868 = xor i32 %3861, %3857
  %3869 = lshr i32 %3868, 4
  %3870 = trunc i32 %3869 to i8
  %3871 = and i8 %3870, 1
  store i8 %3871, i8* %26, align 1
  %3872 = icmp eq i32 %3861, 0
  %3873 = zext i1 %3872 to i8
  store i8 %3873, i8* %29, align 1
  %3874 = lshr i32 %3861, 31
  %3875 = trunc i32 %3874 to i8
  store i8 %3875, i8* %32, align 1
  %3876 = xor i32 %3874, %3860
  %3877 = add nuw nsw i32 %3876, %3860
  %3878 = icmp eq i32 %3877, 2
  %3879 = zext i1 %3878 to i8
  store i8 %3879, i8* %38, align 1
  %3880 = sext i32 %3861 to i64
  store i64 %3880, i64* %RSI.i1742.pre-phi, align 8
  %3881 = shl nsw i64 %3880, 2
  %3882 = add nsw i64 %3881, 11204272
  %3883 = add i64 %3853, 23
  store i64 %3883, i64* %3, align 8
  %3884 = inttoptr i64 %3882 to i32*
  store i32 1, i32* %3884, align 4
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_4216fd

block_.L_4216fd:                                  ; preds = %block_42161f, %block_4215e8, %block_4215ce, %block_4215b4, %block_.L_4216c2, %block_42169f, %block_42167f, %block_42165c, %block_42163c
  %3885 = phi i64 [ %.pre121, %block_.L_4216c2 ], [ %3779, %block_42169f ], [ %3717, %block_42167f ], [ %3666, %block_42165c ], [ %3603, %block_42163c ], [ %3550, %block_42161f ], [ %3451, %block_4215e8 ], [ %3410, %block_4215ce ], [ %3372, %block_4215b4 ]
  %3886 = load i64, i64* %RBP.i, align 8
  %3887 = add i64 %3886, -28
  %3888 = add i64 %3885, 3
  store i64 %3888, i64* %3, align 8
  %3889 = inttoptr i64 %3887 to i32*
  %3890 = load i32, i32* %3889, align 4
  %3891 = add i32 %3890, -1
  %3892 = zext i32 %3891 to i64
  store i64 %3892, i64* %RAX.i1786, align 8
  %3893 = icmp eq i32 %3890, 0
  %3894 = zext i1 %3893 to i8
  store i8 %3894, i8* %14, align 1
  %3895 = and i32 %3891, 255
  %3896 = tail call i32 @llvm.ctpop.i32(i32 %3895)
  %3897 = trunc i32 %3896 to i8
  %3898 = and i8 %3897, 1
  %3899 = xor i8 %3898, 1
  store i8 %3899, i8* %21, align 1
  %3900 = xor i32 %3891, %3890
  %3901 = lshr i32 %3900, 4
  %3902 = trunc i32 %3901 to i8
  %3903 = and i8 %3902, 1
  store i8 %3903, i8* %26, align 1
  %3904 = icmp eq i32 %3891, 0
  %3905 = zext i1 %3904 to i8
  store i8 %3905, i8* %29, align 1
  %3906 = lshr i32 %3891, 31
  %3907 = trunc i32 %3906 to i8
  store i8 %3907, i8* %32, align 1
  %3908 = lshr i32 %3890, 31
  %3909 = xor i32 %3906, %3908
  %3910 = add nuw nsw i32 %3909, %3908
  %3911 = icmp eq i32 %3910, 2
  %3912 = zext i1 %3911 to i8
  store i8 %3912, i8* %38, align 1
  %3913 = sext i32 %3891 to i64
  store i64 %3913, i64* %RCX.i1775.pre-phi, align 8
  %3914 = add nsw i64 %3913, 12099168
  %3915 = add i64 %3885, 17
  store i64 %3915, i64* %3, align 8
  %3916 = inttoptr i64 %3914 to i8*
  %3917 = load i8, i8* %3916, align 1
  %3918 = zext i8 %3917 to i64
  store i64 %3918, i64* %RAX.i1786, align 8
  %3919 = zext i8 %3917 to i32
  store i8 0, i8* %14, align 1
  %3920 = tail call i32 @llvm.ctpop.i32(i32 %3919)
  %3921 = trunc i32 %3920 to i8
  %3922 = and i8 %3921, 1
  %3923 = xor i8 %3922, 1
  store i8 %3923, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3924 = icmp eq i8 %3917, 0
  %3925 = zext i1 %3924 to i8
  store i8 %3925, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v164 = select i1 %3924, i64 26, i64 329
  %3926 = add i64 %3885, %.v164
  store i64 %3926, i64* %3, align 8
  br i1 %3924, label %block_421717, label %block_.L_421846

block_421717:                                     ; preds = %block_.L_4216fd
  %3927 = add i64 %3926, 3
  store i64 %3927, i64* %3, align 8
  %3928 = load i32, i32* %3889, align 4
  %3929 = add i32 %3928, -20
  %3930 = zext i32 %3929 to i64
  store i64 %3930, i64* %RAX.i1786, align 8
  %3931 = icmp ult i32 %3928, 20
  %3932 = zext i1 %3931 to i8
  store i8 %3932, i8* %14, align 1
  %3933 = and i32 %3929, 255
  %3934 = tail call i32 @llvm.ctpop.i32(i32 %3933)
  %3935 = trunc i32 %3934 to i8
  %3936 = and i8 %3935, 1
  %3937 = xor i8 %3936, 1
  store i8 %3937, i8* %21, align 1
  %3938 = xor i32 %3928, 16
  %3939 = xor i32 %3938, %3929
  %3940 = lshr i32 %3939, 4
  %3941 = trunc i32 %3940 to i8
  %3942 = and i8 %3941, 1
  store i8 %3942, i8* %26, align 1
  %3943 = icmp eq i32 %3929, 0
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %29, align 1
  %3945 = lshr i32 %3929, 31
  %3946 = trunc i32 %3945 to i8
  store i8 %3946, i8* %32, align 1
  %3947 = lshr i32 %3928, 31
  %3948 = xor i32 %3945, %3947
  %3949 = add nuw nsw i32 %3948, %3947
  %3950 = icmp eq i32 %3949, 2
  %3951 = zext i1 %3950 to i8
  store i8 %3951, i8* %38, align 1
  %3952 = sext i32 %3929 to i64
  store i64 %3952, i64* %RCX.i1775.pre-phi, align 8
  %3953 = add nsw i64 %3952, 12099168
  %3954 = add i64 %3926, 17
  store i64 %3954, i64* %3, align 8
  %3955 = inttoptr i64 %3953 to i8*
  %3956 = load i8, i8* %3955, align 1
  %3957 = zext i8 %3956 to i64
  store i64 %3957, i64* %RAX.i1786, align 8
  %3958 = zext i8 %3956 to i32
  store i8 0, i8* %14, align 1
  %3959 = tail call i32 @llvm.ctpop.i32(i32 %3958)
  %3960 = trunc i32 %3959 to i8
  %3961 = and i8 %3960, 1
  %3962 = xor i8 %3961, 1
  store i8 %3962, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3963 = icmp eq i8 %3956, 0
  %3964 = zext i1 %3963 to i8
  store i8 %3964, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v183 = select i1 %3963, i64 26, i64 303
  %3965 = add i64 %3926, %.v183
  store i64 %3965, i64* %3, align 8
  br i1 %3963, label %block_421731, label %block_.L_421846

block_421731:                                     ; preds = %block_421717
  %3966 = add i64 %3965, 3
  store i64 %3966, i64* %3, align 8
  %3967 = load i32, i32* %3889, align 4
  %3968 = add i32 %3967, -20
  %3969 = icmp eq i32 %3968, 0
  %3970 = zext i1 %3969 to i8
  %3971 = lshr i32 %3968, 31
  %3972 = add i32 %3967, -21
  %3973 = zext i32 %3972 to i64
  store i64 %3973, i64* %RAX.i1786, align 8
  store i8 %3970, i8* %14, align 1
  %3974 = and i32 %3972, 255
  %3975 = tail call i32 @llvm.ctpop.i32(i32 %3974)
  %3976 = trunc i32 %3975 to i8
  %3977 = and i8 %3976, 1
  %3978 = xor i8 %3977, 1
  store i8 %3978, i8* %21, align 1
  %3979 = xor i32 %3972, %3968
  %3980 = lshr i32 %3979, 4
  %3981 = trunc i32 %3980 to i8
  %3982 = and i8 %3981, 1
  store i8 %3982, i8* %26, align 1
  %3983 = icmp eq i32 %3972, 0
  %3984 = zext i1 %3983 to i8
  store i8 %3984, i8* %29, align 1
  %3985 = lshr i32 %3972, 31
  %3986 = trunc i32 %3985 to i8
  store i8 %3986, i8* %32, align 1
  %3987 = xor i32 %3985, %3971
  %3988 = add nuw nsw i32 %3987, %3971
  %3989 = icmp eq i32 %3988, 2
  %3990 = zext i1 %3989 to i8
  store i8 %3990, i8* %38, align 1
  %3991 = sext i32 %3972 to i64
  store i64 %3991, i64* %RCX.i1775.pre-phi, align 8
  %3992 = shl nsw i64 %3991, 2
  %3993 = add nsw i64 %3992, 11204272
  %3994 = add i64 %3965, 20
  store i64 %3994, i64* %3, align 8
  %3995 = inttoptr i64 %3993 to i32*
  %3996 = load i32, i32* %3995, align 4
  store i8 0, i8* %14, align 1
  %3997 = and i32 %3996, 255
  %3998 = tail call i32 @llvm.ctpop.i32(i32 %3997)
  %3999 = trunc i32 %3998 to i8
  %4000 = and i8 %3999, 1
  %4001 = xor i8 %4000, 1
  store i8 %4001, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4002 = icmp eq i32 %3996, 0
  %4003 = zext i1 %4002 to i8
  store i8 %4003, i8* %29, align 1
  %4004 = lshr i32 %3996, 31
  %4005 = trunc i32 %4004 to i8
  store i8 %4005, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v184 = select i1 %4002, i64 26, i64 277
  %4006 = add i64 %3965, %.v184
  store i64 %4006, i64* %3, align 8
  br i1 %4002, label %block_42174b, label %block_.L_421846

block_42174b:                                     ; preds = %block_421731
  %4007 = add i64 %4006, 3
  store i64 %4007, i64* %3, align 8
  %4008 = load i32, i32* %3889, align 4
  %4009 = add i32 %4008, -20
  %4010 = icmp eq i32 %4009, 0
  %4011 = zext i1 %4010 to i8
  %4012 = lshr i32 %4009, 31
  %4013 = add i32 %4008, -21
  %4014 = zext i32 %4013 to i64
  store i64 %4014, i64* %RAX.i1786, align 8
  store i8 %4011, i8* %14, align 1
  %4015 = and i32 %4013, 255
  %4016 = tail call i32 @llvm.ctpop.i32(i32 %4015)
  %4017 = trunc i32 %4016 to i8
  %4018 = and i8 %4017, 1
  %4019 = xor i8 %4018, 1
  store i8 %4019, i8* %21, align 1
  %4020 = xor i32 %4013, %4009
  %4021 = lshr i32 %4020, 4
  %4022 = trunc i32 %4021 to i8
  %4023 = and i8 %4022, 1
  store i8 %4023, i8* %26, align 1
  %4024 = icmp eq i32 %4013, 0
  %4025 = zext i1 %4024 to i8
  store i8 %4025, i8* %29, align 1
  %4026 = lshr i32 %4013, 31
  %4027 = trunc i32 %4026 to i8
  store i8 %4027, i8* %32, align 1
  %4028 = xor i32 %4026, %4012
  %4029 = add nuw nsw i32 %4028, %4012
  %4030 = icmp eq i32 %4029, 2
  %4031 = zext i1 %4030 to i8
  store i8 %4031, i8* %38, align 1
  %4032 = sext i32 %4013 to i64
  store i64 %4032, i64* %RCX.i1775.pre-phi, align 8
  %4033 = add nsw i64 %4032, 12099168
  %4034 = add i64 %4006, 20
  store i64 %4034, i64* %3, align 8
  %4035 = inttoptr i64 %4033 to i8*
  %4036 = load i8, i8* %4035, align 1
  %4037 = zext i8 %4036 to i64
  store i64 %4037, i64* %RAX.i1786, align 8
  %4038 = zext i8 %4036 to i32
  %4039 = add i64 %3886, -12
  %4040 = add i64 %4006, 23
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4039 to i32*
  %4042 = load i32, i32* %4041, align 4
  %4043 = sub i32 %4038, %4042
  %4044 = icmp ult i32 %4038, %4042
  %4045 = zext i1 %4044 to i8
  store i8 %4045, i8* %14, align 1
  %4046 = and i32 %4043, 255
  %4047 = tail call i32 @llvm.ctpop.i32(i32 %4046)
  %4048 = trunc i32 %4047 to i8
  %4049 = and i8 %4048, 1
  %4050 = xor i8 %4049, 1
  store i8 %4050, i8* %21, align 1
  %4051 = xor i32 %4042, %4038
  %4052 = xor i32 %4051, %4043
  %4053 = lshr i32 %4052, 4
  %4054 = trunc i32 %4053 to i8
  %4055 = and i8 %4054, 1
  store i8 %4055, i8* %26, align 1
  %4056 = icmp eq i32 %4043, 0
  %4057 = zext i1 %4056 to i8
  store i8 %4057, i8* %29, align 1
  %4058 = lshr i32 %4043, 31
  %4059 = trunc i32 %4058 to i8
  store i8 %4059, i8* %32, align 1
  %4060 = lshr i32 %4042, 31
  %4061 = add nuw nsw i32 %4058, %4060
  %4062 = icmp eq i32 %4061, 2
  %4063 = zext i1 %4062 to i8
  store i8 %4063, i8* %38, align 1
  %.v185 = select i1 %4056, i64 192, i64 29
  %4064 = add i64 %4006, %.v185
  store i64 %4064, i64* %3, align 8
  %.pre122 = load i64, i64* %RBP.i, align 8
  br i1 %4056, label %block_.L_42180b, label %block_421768

block_421768:                                     ; preds = %block_42174b
  %4065 = add i64 %.pre122, -28
  %4066 = add i64 %4064, 3
  store i64 %4066, i64* %3, align 8
  %4067 = inttoptr i64 %4065 to i32*
  %4068 = load i32, i32* %4067, align 4
  %4069 = add i32 %4068, -20
  %4070 = icmp eq i32 %4069, 0
  %4071 = zext i1 %4070 to i8
  %4072 = lshr i32 %4069, 31
  %4073 = add i32 %4068, -21
  %4074 = zext i32 %4073 to i64
  store i64 %4074, i64* %RAX.i1786, align 8
  store i8 %4071, i8* %14, align 1
  %4075 = and i32 %4073, 255
  %4076 = tail call i32 @llvm.ctpop.i32(i32 %4075)
  %4077 = trunc i32 %4076 to i8
  %4078 = and i8 %4077, 1
  %4079 = xor i8 %4078, 1
  store i8 %4079, i8* %21, align 1
  %4080 = xor i32 %4073, %4069
  %4081 = lshr i32 %4080, 4
  %4082 = trunc i32 %4081 to i8
  %4083 = and i8 %4082, 1
  store i8 %4083, i8* %26, align 1
  %4084 = icmp eq i32 %4073, 0
  %4085 = zext i1 %4084 to i8
  store i8 %4085, i8* %29, align 1
  %4086 = lshr i32 %4073, 31
  %4087 = trunc i32 %4086 to i8
  store i8 %4087, i8* %32, align 1
  %4088 = xor i32 %4086, %4072
  %4089 = add nuw nsw i32 %4088, %4072
  %4090 = icmp eq i32 %4089, 2
  %4091 = zext i1 %4090 to i8
  store i8 %4091, i8* %38, align 1
  %4092 = sext i32 %4073 to i64
  store i64 %4092, i64* %RCX.i1775.pre-phi, align 8
  %4093 = add nsw i64 %4092, 12099168
  %4094 = add i64 %4064, 20
  store i64 %4094, i64* %3, align 8
  %4095 = inttoptr i64 %4093 to i8*
  %4096 = load i8, i8* %4095, align 1
  %4097 = zext i8 %4096 to i64
  store i64 %4097, i64* %RAX.i1786, align 8
  %4098 = zext i8 %4096 to i32
  store i8 0, i8* %14, align 1
  %4099 = tail call i32 @llvm.ctpop.i32(i32 %4098)
  %4100 = trunc i32 %4099 to i8
  %4101 = and i8 %4100, 1
  %4102 = xor i8 %4101, 1
  store i8 %4102, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4103 = icmp eq i8 %4096, 0
  %4104 = zext i1 %4103 to i8
  store i8 %4104, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v186 = select i1 %4103, i64 29, i64 222
  %4105 = add i64 %4064, %.v186
  store i64 %4105, i64* %3, align 8
  br i1 %4103, label %block_421785, label %block_.L_421846

block_421785:                                     ; preds = %block_421768
  %4106 = load i64, i64* %RBP.i, align 8
  %4107 = add i64 %4106, -28
  %4108 = add i64 %4105, 3
  store i64 %4108, i64* %3, align 8
  %4109 = inttoptr i64 %4107 to i32*
  %4110 = load i32, i32* %4109, align 4
  %4111 = add i32 %4110, -21
  %4112 = icmp eq i32 %4111, 0
  %4113 = zext i1 %4112 to i8
  %4114 = lshr i32 %4111, 31
  %4115 = add i32 %4110, -22
  %4116 = zext i32 %4115 to i64
  store i64 %4116, i64* %RAX.i1786, align 8
  store i8 %4113, i8* %14, align 1
  %4117 = and i32 %4115, 255
  %4118 = tail call i32 @llvm.ctpop.i32(i32 %4117)
  %4119 = trunc i32 %4118 to i8
  %4120 = and i8 %4119, 1
  %4121 = xor i8 %4120, 1
  store i8 %4121, i8* %21, align 1
  %4122 = xor i32 %4115, %4111
  %4123 = lshr i32 %4122, 4
  %4124 = trunc i32 %4123 to i8
  %4125 = and i8 %4124, 1
  store i8 %4125, i8* %26, align 1
  %4126 = icmp eq i32 %4115, 0
  %4127 = zext i1 %4126 to i8
  store i8 %4127, i8* %29, align 1
  %4128 = lshr i32 %4115, 31
  %4129 = trunc i32 %4128 to i8
  store i8 %4129, i8* %32, align 1
  %4130 = xor i32 %4128, %4114
  %4131 = add nuw nsw i32 %4130, %4114
  %4132 = icmp eq i32 %4131, 2
  %4133 = zext i1 %4132 to i8
  store i8 %4133, i8* %38, align 1
  %4134 = sext i32 %4115 to i64
  store i64 %4134, i64* %RCX.i1775.pre-phi, align 8
  %4135 = add nsw i64 %4134, 12099168
  %4136 = add i64 %4105, 23
  store i64 %4136, i64* %3, align 8
  %4137 = inttoptr i64 %4135 to i8*
  %4138 = load i8, i8* %4137, align 1
  %4139 = zext i8 %4138 to i64
  store i64 %4139, i64* %RAX.i1786, align 8
  %4140 = zext i8 %4138 to i32
  %4141 = add nsw i32 %4140, -3
  %4142 = icmp ult i8 %4138, 3
  %4143 = zext i1 %4142 to i8
  store i8 %4143, i8* %14, align 1
  %4144 = and i32 %4141, 255
  %4145 = tail call i32 @llvm.ctpop.i32(i32 %4144)
  %4146 = trunc i32 %4145 to i8
  %4147 = and i8 %4146, 1
  %4148 = xor i8 %4147, 1
  store i8 %4148, i8* %21, align 1
  %4149 = xor i32 %4141, %4140
  %4150 = lshr i32 %4149, 4
  %4151 = trunc i32 %4150 to i8
  %4152 = and i8 %4151, 1
  store i8 %4152, i8* %26, align 1
  %4153 = icmp eq i32 %4141, 0
  %4154 = zext i1 %4153 to i8
  store i8 %4154, i8* %29, align 1
  %4155 = lshr i32 %4141, 31
  %4156 = trunc i32 %4155 to i8
  store i8 %4156, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v187 = select i1 %4153, i64 193, i64 32
  %4157 = add i64 %4105, %.v187
  store i64 %4157, i64* %3, align 8
  br i1 %4153, label %block_.L_421846, label %block_4217a5

block_4217a5:                                     ; preds = %block_421785
  %4158 = load i64, i64* %RBP.i, align 8
  %4159 = add i64 %4158, -28
  %4160 = add i64 %4157, 3
  store i64 %4160, i64* %3, align 8
  %4161 = inttoptr i64 %4159 to i32*
  %4162 = load i32, i32* %4161, align 4
  %4163 = add i32 %4162, -21
  %4164 = icmp eq i32 %4163, 0
  %4165 = zext i1 %4164 to i8
  %4166 = lshr i32 %4163, 31
  %4167 = add i32 %4162, -22
  %4168 = zext i32 %4167 to i64
  store i64 %4168, i64* %RAX.i1786, align 8
  store i8 %4165, i8* %14, align 1
  %4169 = and i32 %4167, 255
  %4170 = tail call i32 @llvm.ctpop.i32(i32 %4169)
  %4171 = trunc i32 %4170 to i8
  %4172 = and i8 %4171, 1
  %4173 = xor i8 %4172, 1
  store i8 %4173, i8* %21, align 1
  %4174 = xor i32 %4167, %4163
  %4175 = lshr i32 %4174, 4
  %4176 = trunc i32 %4175 to i8
  %4177 = and i8 %4176, 1
  store i8 %4177, i8* %26, align 1
  %4178 = icmp eq i32 %4167, 0
  %4179 = zext i1 %4178 to i8
  store i8 %4179, i8* %29, align 1
  %4180 = lshr i32 %4167, 31
  %4181 = trunc i32 %4180 to i8
  store i8 %4181, i8* %32, align 1
  %4182 = xor i32 %4180, %4166
  %4183 = add nuw nsw i32 %4182, %4166
  %4184 = icmp eq i32 %4183, 2
  %4185 = zext i1 %4184 to i8
  store i8 %4185, i8* %38, align 1
  %4186 = sext i32 %4167 to i64
  store i64 %4186, i64* %RCX.i1775.pre-phi, align 8
  %4187 = add nsw i64 %4186, 12099168
  %4188 = add i64 %4157, 23
  store i64 %4188, i64* %3, align 8
  %4189 = inttoptr i64 %4187 to i8*
  %4190 = load i8, i8* %4189, align 1
  %4191 = zext i8 %4190 to i64
  store i64 %4191, i64* %RAX.i1786, align 8
  %4192 = zext i8 %4190 to i32
  %4193 = load i64, i64* %RBP.i, align 8
  %4194 = add i64 %4193, -1500
  %4195 = add i64 %4157, 29
  store i64 %4195, i64* %3, align 8
  %4196 = inttoptr i64 %4194 to i32*
  %4197 = load i32, i32* %4196, align 4
  %4198 = sub i32 %4192, %4197
  %4199 = icmp ult i32 %4192, %4197
  %4200 = zext i1 %4199 to i8
  store i8 %4200, i8* %14, align 1
  %4201 = and i32 %4198, 255
  %4202 = tail call i32 @llvm.ctpop.i32(i32 %4201)
  %4203 = trunc i32 %4202 to i8
  %4204 = and i8 %4203, 1
  %4205 = xor i8 %4204, 1
  store i8 %4205, i8* %21, align 1
  %4206 = xor i32 %4197, %4192
  %4207 = xor i32 %4206, %4198
  %4208 = lshr i32 %4207, 4
  %4209 = trunc i32 %4208 to i8
  %4210 = and i8 %4209, 1
  store i8 %4210, i8* %26, align 1
  %4211 = icmp eq i32 %4198, 0
  %4212 = zext i1 %4211 to i8
  store i8 %4212, i8* %29, align 1
  %4213 = lshr i32 %4198, 31
  %4214 = trunc i32 %4213 to i8
  store i8 %4214, i8* %32, align 1
  %4215 = lshr i32 %4197, 31
  %4216 = add nuw nsw i32 %4213, %4215
  %4217 = icmp eq i32 %4216, 2
  %4218 = zext i1 %4217 to i8
  store i8 %4218, i8* %38, align 1
  %.v188 = select i1 %4211, i64 161, i64 35
  %4219 = add i64 %4157, %.v188
  store i64 %4219, i64* %3, align 8
  br i1 %4211, label %block_.L_421846, label %block_4217c8

block_4217c8:                                     ; preds = %block_4217a5
  %4220 = add i64 %4193, -28
  %4221 = add i64 %4219, 3
  store i64 %4221, i64* %3, align 8
  %4222 = inttoptr i64 %4220 to i32*
  %4223 = load i32, i32* %4222, align 4
  %4224 = add i32 %4223, -21
  %4225 = lshr i32 %4224, 31
  %4226 = add i32 %4223, -41
  %4227 = zext i32 %4226 to i64
  store i64 %4227, i64* %RAX.i1786, align 8
  %4228 = icmp ult i32 %4224, 20
  %4229 = zext i1 %4228 to i8
  store i8 %4229, i8* %14, align 1
  %4230 = and i32 %4226, 255
  %4231 = tail call i32 @llvm.ctpop.i32(i32 %4230)
  %4232 = trunc i32 %4231 to i8
  %4233 = and i8 %4232, 1
  %4234 = xor i8 %4233, 1
  store i8 %4234, i8* %21, align 1
  %4235 = xor i32 %4224, 16
  %4236 = xor i32 %4235, %4226
  %4237 = lshr i32 %4236, 4
  %4238 = trunc i32 %4237 to i8
  %4239 = and i8 %4238, 1
  store i8 %4239, i8* %26, align 1
  %4240 = icmp eq i32 %4226, 0
  %4241 = zext i1 %4240 to i8
  store i8 %4241, i8* %29, align 1
  %4242 = lshr i32 %4226, 31
  %4243 = trunc i32 %4242 to i8
  store i8 %4243, i8* %32, align 1
  %4244 = xor i32 %4242, %4225
  %4245 = add nuw nsw i32 %4244, %4225
  %4246 = icmp eq i32 %4245, 2
  %4247 = zext i1 %4246 to i8
  store i8 %4247, i8* %38, align 1
  %4248 = sext i32 %4226 to i64
  store i64 %4248, i64* %RCX.i1775.pre-phi, align 8
  %4249 = add nsw i64 %4248, 12099168
  %4250 = add i64 %4219, 23
  store i64 %4250, i64* %3, align 8
  %4251 = inttoptr i64 %4249 to i8*
  %4252 = load i8, i8* %4251, align 1
  %4253 = zext i8 %4252 to i64
  store i64 %4253, i64* %RAX.i1786, align 8
  %4254 = zext i8 %4252 to i32
  %4255 = add nsw i32 %4254, -3
  %4256 = icmp ult i8 %4252, 3
  %4257 = zext i1 %4256 to i8
  store i8 %4257, i8* %14, align 1
  %4258 = and i32 %4255, 255
  %4259 = tail call i32 @llvm.ctpop.i32(i32 %4258)
  %4260 = trunc i32 %4259 to i8
  %4261 = and i8 %4260, 1
  %4262 = xor i8 %4261, 1
  store i8 %4262, i8* %21, align 1
  %4263 = xor i32 %4255, %4254
  %4264 = lshr i32 %4263, 4
  %4265 = trunc i32 %4264 to i8
  %4266 = and i8 %4265, 1
  store i8 %4266, i8* %26, align 1
  %4267 = icmp eq i32 %4255, 0
  %4268 = zext i1 %4267 to i8
  store i8 %4268, i8* %29, align 1
  %4269 = lshr i32 %4255, 31
  %4270 = trunc i32 %4269 to i8
  store i8 %4270, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v189 = select i1 %4267, i64 126, i64 32
  %4271 = add i64 %4219, %.v189
  store i64 %4271, i64* %3, align 8
  br i1 %4267, label %block_.L_421846, label %block_4217e8

block_4217e8:                                     ; preds = %block_4217c8
  %4272 = load i64, i64* %RBP.i, align 8
  %4273 = add i64 %4272, -28
  %4274 = add i64 %4271, 3
  store i64 %4274, i64* %3, align 8
  %4275 = inttoptr i64 %4273 to i32*
  %4276 = load i32, i32* %4275, align 4
  %4277 = add i32 %4276, -21
  %4278 = lshr i32 %4277, 31
  %4279 = add i32 %4276, -41
  %4280 = zext i32 %4279 to i64
  store i64 %4280, i64* %RAX.i1786, align 8
  %4281 = icmp ult i32 %4277, 20
  %4282 = zext i1 %4281 to i8
  store i8 %4282, i8* %14, align 1
  %4283 = and i32 %4279, 255
  %4284 = tail call i32 @llvm.ctpop.i32(i32 %4283)
  %4285 = trunc i32 %4284 to i8
  %4286 = and i8 %4285, 1
  %4287 = xor i8 %4286, 1
  store i8 %4287, i8* %21, align 1
  %4288 = xor i32 %4277, 16
  %4289 = xor i32 %4288, %4279
  %4290 = lshr i32 %4289, 4
  %4291 = trunc i32 %4290 to i8
  %4292 = and i8 %4291, 1
  store i8 %4292, i8* %26, align 1
  %4293 = icmp eq i32 %4279, 0
  %4294 = zext i1 %4293 to i8
  store i8 %4294, i8* %29, align 1
  %4295 = lshr i32 %4279, 31
  %4296 = trunc i32 %4295 to i8
  store i8 %4296, i8* %32, align 1
  %4297 = xor i32 %4295, %4278
  %4298 = add nuw nsw i32 %4297, %4278
  %4299 = icmp eq i32 %4298, 2
  %4300 = zext i1 %4299 to i8
  store i8 %4300, i8* %38, align 1
  %4301 = sext i32 %4279 to i64
  store i64 %4301, i64* %RCX.i1775.pre-phi, align 8
  %4302 = add nsw i64 %4301, 12099168
  %4303 = add i64 %4271, 23
  store i64 %4303, i64* %3, align 8
  %4304 = inttoptr i64 %4302 to i8*
  %4305 = load i8, i8* %4304, align 1
  %4306 = zext i8 %4305 to i64
  store i64 %4306, i64* %RAX.i1786, align 8
  %4307 = zext i8 %4305 to i32
  %4308 = load i64, i64* %RBP.i, align 8
  %4309 = add i64 %4308, -1500
  %4310 = add i64 %4271, 29
  store i64 %4310, i64* %3, align 8
  %4311 = inttoptr i64 %4309 to i32*
  %4312 = load i32, i32* %4311, align 4
  %4313 = sub i32 %4307, %4312
  %4314 = icmp ult i32 %4307, %4312
  %4315 = zext i1 %4314 to i8
  store i8 %4315, i8* %14, align 1
  %4316 = and i32 %4313, 255
  %4317 = tail call i32 @llvm.ctpop.i32(i32 %4316)
  %4318 = trunc i32 %4317 to i8
  %4319 = and i8 %4318, 1
  %4320 = xor i8 %4319, 1
  store i8 %4320, i8* %21, align 1
  %4321 = xor i32 %4312, %4307
  %4322 = xor i32 %4321, %4313
  %4323 = lshr i32 %4322, 4
  %4324 = trunc i32 %4323 to i8
  %4325 = and i8 %4324, 1
  store i8 %4325, i8* %26, align 1
  %4326 = icmp eq i32 %4313, 0
  %4327 = zext i1 %4326 to i8
  store i8 %4327, i8* %29, align 1
  %4328 = lshr i32 %4313, 31
  %4329 = trunc i32 %4328 to i8
  store i8 %4329, i8* %32, align 1
  %4330 = lshr i32 %4312, 31
  %4331 = add nuw nsw i32 %4328, %4330
  %4332 = icmp eq i32 %4331, 2
  %4333 = zext i1 %4332 to i8
  store i8 %4333, i8* %38, align 1
  %.v190 = select i1 %4326, i64 94, i64 35
  %4334 = add i64 %4271, %.v190
  store i64 %4334, i64* %3, align 8
  br i1 %4326, label %block_.L_421846, label %block_.L_42180b

block_.L_42180b:                                  ; preds = %block_42174b, %block_4217e8
  %4335 = phi i64 [ %4334, %block_4217e8 ], [ %4064, %block_42174b ]
  %4336 = phi i64 [ %4308, %block_4217e8 ], [ %.pre122, %block_42174b ]
  %4337 = add i64 %4336, -28
  %4338 = add i64 %4335, 3
  store i64 %4338, i64* %3, align 8
  %4339 = inttoptr i64 %4337 to i32*
  %4340 = load i32, i32* %4339, align 4
  %4341 = add i32 %4340, -20
  %4342 = icmp eq i32 %4341, 0
  %4343 = zext i1 %4342 to i8
  %4344 = lshr i32 %4341, 31
  %4345 = add i32 %4340, -21
  %4346 = zext i32 %4345 to i64
  store i64 %4346, i64* %RAX.i1786, align 8
  store i8 %4343, i8* %14, align 1
  %4347 = and i32 %4345, 255
  %4348 = tail call i32 @llvm.ctpop.i32(i32 %4347)
  %4349 = trunc i32 %4348 to i8
  %4350 = and i8 %4349, 1
  %4351 = xor i8 %4350, 1
  store i8 %4351, i8* %21, align 1
  %4352 = xor i32 %4345, %4341
  %4353 = lshr i32 %4352, 4
  %4354 = trunc i32 %4353 to i8
  %4355 = and i8 %4354, 1
  store i8 %4355, i8* %26, align 1
  %4356 = icmp eq i32 %4345, 0
  %4357 = zext i1 %4356 to i8
  store i8 %4357, i8* %29, align 1
  %4358 = lshr i32 %4345, 31
  %4359 = trunc i32 %4358 to i8
  store i8 %4359, i8* %32, align 1
  %4360 = xor i32 %4358, %4344
  %4361 = add nuw nsw i32 %4360, %4344
  %4362 = icmp eq i32 %4361, 2
  %4363 = zext i1 %4362 to i8
  store i8 %4363, i8* %38, align 1
  %4364 = add i64 %4336, -1496
  %4365 = add i64 %4335, 15
  store i64 %4365, i64* %3, align 8
  %4366 = inttoptr i64 %4364 to i32*
  %4367 = load i32, i32* %4366, align 4
  %4368 = zext i32 %4367 to i64
  store i64 %4368, i64* %RCX.i1775.pre-phi, align 8
  %4369 = add i32 %4367, 1
  %4370 = zext i32 %4369 to i64
  store i64 %4370, i64* %RDX.i1837, align 8
  %4371 = icmp eq i32 %4367, -1
  %4372 = icmp eq i32 %4369, 0
  %4373 = or i1 %4371, %4372
  %4374 = zext i1 %4373 to i8
  store i8 %4374, i8* %14, align 1
  %4375 = and i32 %4369, 255
  %4376 = tail call i32 @llvm.ctpop.i32(i32 %4375)
  %4377 = trunc i32 %4376 to i8
  %4378 = and i8 %4377, 1
  %4379 = xor i8 %4378, 1
  store i8 %4379, i8* %21, align 1
  %4380 = xor i32 %4369, %4367
  %4381 = lshr i32 %4380, 4
  %4382 = trunc i32 %4381 to i8
  %4383 = and i8 %4382, 1
  store i8 %4383, i8* %26, align 1
  %4384 = zext i1 %4372 to i8
  store i8 %4384, i8* %29, align 1
  %4385 = lshr i32 %4369, 31
  %4386 = trunc i32 %4385 to i8
  store i8 %4386, i8* %32, align 1
  %4387 = lshr i32 %4367, 31
  %4388 = xor i32 %4385, %4387
  %4389 = add nuw nsw i32 %4388, %4385
  %4390 = icmp eq i32 %4389, 2
  %4391 = zext i1 %4390 to i8
  store i8 %4391, i8* %38, align 1
  %4392 = load i64, i64* %RBP.i, align 8
  %4393 = add i64 %4392, -1496
  %4394 = add i64 %4335, 26
  store i64 %4394, i64* %3, align 8
  %4395 = inttoptr i64 %4393 to i32*
  store i32 %4369, i32* %4395, align 4
  %4396 = load i32, i32* %ECX.i1772.pre-phi, align 4
  %4397 = load i64, i64* %3, align 8
  %4398 = sext i32 %4396 to i64
  store i64 %4398, i64* %RSI.i1742.pre-phi, align 8
  %4399 = load i64, i64* %RBP.i, align 8
  %4400 = shl nsw i64 %4398, 2
  %4401 = add nsw i64 %4400, -1488
  %4402 = add i64 %4401, %4399
  %4403 = load i32, i32* %EAX.i1827, align 4
  %4404 = add i64 %4397, 10
  store i64 %4404, i64* %3, align 8
  %4405 = inttoptr i64 %4402 to i32*
  store i32 %4403, i32* %4405, align 4
  %4406 = load i64, i64* %RBP.i, align 8
  %4407 = add i64 %4406, -28
  %4408 = load i64, i64* %3, align 8
  %4409 = add i64 %4408, 3
  store i64 %4409, i64* %3, align 8
  %4410 = inttoptr i64 %4407 to i32*
  %4411 = load i32, i32* %4410, align 4
  %4412 = add i32 %4411, -20
  %4413 = icmp eq i32 %4412, 0
  %4414 = zext i1 %4413 to i8
  %4415 = lshr i32 %4412, 31
  %4416 = add i32 %4411, -21
  %4417 = zext i32 %4416 to i64
  store i64 %4417, i64* %RAX.i1786, align 8
  store i8 %4414, i8* %14, align 1
  %4418 = and i32 %4416, 255
  %4419 = tail call i32 @llvm.ctpop.i32(i32 %4418)
  %4420 = trunc i32 %4419 to i8
  %4421 = and i8 %4420, 1
  %4422 = xor i8 %4421, 1
  store i8 %4422, i8* %21, align 1
  %4423 = xor i32 %4416, %4412
  %4424 = lshr i32 %4423, 4
  %4425 = trunc i32 %4424 to i8
  %4426 = and i8 %4425, 1
  store i8 %4426, i8* %26, align 1
  %4427 = icmp eq i32 %4416, 0
  %4428 = zext i1 %4427 to i8
  store i8 %4428, i8* %29, align 1
  %4429 = lshr i32 %4416, 31
  %4430 = trunc i32 %4429 to i8
  store i8 %4430, i8* %32, align 1
  %4431 = xor i32 %4429, %4415
  %4432 = add nuw nsw i32 %4431, %4415
  %4433 = icmp eq i32 %4432, 2
  %4434 = zext i1 %4433 to i8
  store i8 %4434, i8* %38, align 1
  %4435 = sext i32 %4416 to i64
  store i64 %4435, i64* %RSI.i1742.pre-phi, align 8
  %4436 = shl nsw i64 %4435, 2
  %4437 = add nsw i64 %4436, 11204272
  %4438 = add i64 %4408, 23
  store i64 %4438, i64* %3, align 8
  %4439 = inttoptr i64 %4437 to i32*
  store i32 1, i32* %4439, align 4
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_421846

block_.L_421846:                                  ; preds = %block_421768, %block_421731, %block_421717, %block_.L_4216fd, %block_.L_42180b, %block_4217e8, %block_4217c8, %block_4217a5, %block_421785
  %4440 = phi i64 [ %.pre123, %block_.L_42180b ], [ %4334, %block_4217e8 ], [ %4271, %block_4217c8 ], [ %4219, %block_4217a5 ], [ %4157, %block_421785 ], [ %4105, %block_421768 ], [ %4006, %block_421731 ], [ %3965, %block_421717 ], [ %3926, %block_.L_4216fd ]
  %4441 = load i64, i64* %RBP.i, align 8
  %4442 = add i64 %4441, -28
  %4443 = add i64 %4440, 3
  store i64 %4443, i64* %3, align 8
  %4444 = inttoptr i64 %4442 to i32*
  %4445 = load i32, i32* %4444, align 4
  %4446 = add i32 %4445, -20
  %4447 = zext i32 %4446 to i64
  store i64 %4447, i64* %RAX.i1786, align 8
  %4448 = icmp ult i32 %4445, 20
  %4449 = zext i1 %4448 to i8
  store i8 %4449, i8* %14, align 1
  %4450 = and i32 %4446, 255
  %4451 = tail call i32 @llvm.ctpop.i32(i32 %4450)
  %4452 = trunc i32 %4451 to i8
  %4453 = and i8 %4452, 1
  %4454 = xor i8 %4453, 1
  store i8 %4454, i8* %21, align 1
  %4455 = xor i32 %4445, 16
  %4456 = xor i32 %4455, %4446
  %4457 = lshr i32 %4456, 4
  %4458 = trunc i32 %4457 to i8
  %4459 = and i8 %4458, 1
  store i8 %4459, i8* %26, align 1
  %4460 = icmp eq i32 %4446, 0
  %4461 = zext i1 %4460 to i8
  store i8 %4461, i8* %29, align 1
  %4462 = lshr i32 %4446, 31
  %4463 = trunc i32 %4462 to i8
  store i8 %4463, i8* %32, align 1
  %4464 = lshr i32 %4445, 31
  %4465 = xor i32 %4462, %4464
  %4466 = add nuw nsw i32 %4465, %4464
  %4467 = icmp eq i32 %4466, 2
  %4468 = zext i1 %4467 to i8
  store i8 %4468, i8* %38, align 1
  %4469 = sext i32 %4446 to i64
  store i64 %4469, i64* %RCX.i1775.pre-phi, align 8
  %4470 = add nsw i64 %4469, 12099168
  %4471 = add i64 %4440, 17
  store i64 %4471, i64* %3, align 8
  %4472 = inttoptr i64 %4470 to i8*
  %4473 = load i8, i8* %4472, align 1
  %4474 = zext i8 %4473 to i64
  store i64 %4474, i64* %RAX.i1786, align 8
  %4475 = zext i8 %4473 to i32
  store i8 0, i8* %14, align 1
  %4476 = tail call i32 @llvm.ctpop.i32(i32 %4475)
  %4477 = trunc i32 %4476 to i8
  %4478 = and i8 %4477, 1
  %4479 = xor i8 %4478, 1
  store i8 %4479, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4480 = icmp eq i8 %4473, 0
  %4481 = zext i1 %4480 to i8
  store i8 %4481, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v165 = select i1 %4480, i64 26, i64 329
  %4482 = add i64 %4440, %.v165
  store i64 %4482, i64* %3, align 8
  br i1 %4480, label %block_421860, label %block_.L_42198f

block_421860:                                     ; preds = %block_.L_421846
  %4483 = add i64 %4482, 3
  store i64 %4483, i64* %3, align 8
  %4484 = load i32, i32* %4444, align 4
  %4485 = add i32 %4484, 1
  %4486 = zext i32 %4485 to i64
  store i64 %4486, i64* %RAX.i1786, align 8
  %4487 = icmp eq i32 %4484, -1
  %4488 = icmp eq i32 %4485, 0
  %4489 = or i1 %4487, %4488
  %4490 = zext i1 %4489 to i8
  store i8 %4490, i8* %14, align 1
  %4491 = and i32 %4485, 255
  %4492 = tail call i32 @llvm.ctpop.i32(i32 %4491)
  %4493 = trunc i32 %4492 to i8
  %4494 = and i8 %4493, 1
  %4495 = xor i8 %4494, 1
  store i8 %4495, i8* %21, align 1
  %4496 = xor i32 %4485, %4484
  %4497 = lshr i32 %4496, 4
  %4498 = trunc i32 %4497 to i8
  %4499 = and i8 %4498, 1
  store i8 %4499, i8* %26, align 1
  %4500 = zext i1 %4488 to i8
  store i8 %4500, i8* %29, align 1
  %4501 = lshr i32 %4485, 31
  %4502 = trunc i32 %4501 to i8
  store i8 %4502, i8* %32, align 1
  %4503 = lshr i32 %4484, 31
  %4504 = xor i32 %4501, %4503
  %4505 = add nuw nsw i32 %4504, %4501
  %4506 = icmp eq i32 %4505, 2
  %4507 = zext i1 %4506 to i8
  store i8 %4507, i8* %38, align 1
  %4508 = sext i32 %4485 to i64
  store i64 %4508, i64* %RCX.i1775.pre-phi, align 8
  %4509 = add nsw i64 %4508, 12099168
  %4510 = add i64 %4482, 17
  store i64 %4510, i64* %3, align 8
  %4511 = inttoptr i64 %4509 to i8*
  %4512 = load i8, i8* %4511, align 1
  %4513 = zext i8 %4512 to i64
  store i64 %4513, i64* %RAX.i1786, align 8
  %4514 = zext i8 %4512 to i32
  store i8 0, i8* %14, align 1
  %4515 = tail call i32 @llvm.ctpop.i32(i32 %4514)
  %4516 = trunc i32 %4515 to i8
  %4517 = and i8 %4516, 1
  %4518 = xor i8 %4517, 1
  store i8 %4518, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4519 = icmp eq i8 %4512, 0
  %4520 = zext i1 %4519 to i8
  store i8 %4520, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v175 = select i1 %4519, i64 26, i64 303
  %4521 = add i64 %4482, %.v175
  store i64 %4521, i64* %3, align 8
  br i1 %4519, label %block_42187a, label %block_.L_42198f

block_42187a:                                     ; preds = %block_421860
  %4522 = add i64 %4521, 3
  store i64 %4522, i64* %3, align 8
  %4523 = load i32, i32* %4444, align 4
  %4524 = add i32 %4523, -20
  %4525 = lshr i32 %4524, 31
  %4526 = add i32 %4523, -19
  %4527 = zext i32 %4526 to i64
  store i64 %4527, i64* %RAX.i1786, align 8
  %4528 = icmp eq i32 %4524, -1
  %4529 = icmp eq i32 %4526, 0
  %4530 = or i1 %4528, %4529
  %4531 = zext i1 %4530 to i8
  store i8 %4531, i8* %14, align 1
  %4532 = and i32 %4526, 255
  %4533 = tail call i32 @llvm.ctpop.i32(i32 %4532)
  %4534 = trunc i32 %4533 to i8
  %4535 = and i8 %4534, 1
  %4536 = xor i8 %4535, 1
  store i8 %4536, i8* %21, align 1
  %4537 = xor i32 %4526, %4524
  %4538 = lshr i32 %4537, 4
  %4539 = trunc i32 %4538 to i8
  %4540 = and i8 %4539, 1
  store i8 %4540, i8* %26, align 1
  %4541 = zext i1 %4529 to i8
  store i8 %4541, i8* %29, align 1
  %4542 = lshr i32 %4526, 31
  %4543 = trunc i32 %4542 to i8
  store i8 %4543, i8* %32, align 1
  %4544 = xor i32 %4542, %4525
  %4545 = add nuw nsw i32 %4544, %4542
  %4546 = icmp eq i32 %4545, 2
  %4547 = zext i1 %4546 to i8
  store i8 %4547, i8* %38, align 1
  %4548 = sext i32 %4526 to i64
  store i64 %4548, i64* %RCX.i1775.pre-phi, align 8
  %4549 = shl nsw i64 %4548, 2
  %4550 = add nsw i64 %4549, 11204272
  %4551 = add i64 %4521, 20
  store i64 %4551, i64* %3, align 8
  %4552 = inttoptr i64 %4550 to i32*
  %4553 = load i32, i32* %4552, align 4
  store i8 0, i8* %14, align 1
  %4554 = and i32 %4553, 255
  %4555 = tail call i32 @llvm.ctpop.i32(i32 %4554)
  %4556 = trunc i32 %4555 to i8
  %4557 = and i8 %4556, 1
  %4558 = xor i8 %4557, 1
  store i8 %4558, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4559 = icmp eq i32 %4553, 0
  %4560 = zext i1 %4559 to i8
  store i8 %4560, i8* %29, align 1
  %4561 = lshr i32 %4553, 31
  %4562 = trunc i32 %4561 to i8
  store i8 %4562, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v176 = select i1 %4559, i64 26, i64 277
  %4563 = add i64 %4521, %.v176
  store i64 %4563, i64* %3, align 8
  br i1 %4559, label %block_421894, label %block_.L_42198f

block_421894:                                     ; preds = %block_42187a
  %4564 = load i64, i64* %RBP.i, align 8
  %4565 = add i64 %4564, -28
  %4566 = add i64 %4563, 3
  store i64 %4566, i64* %3, align 8
  %4567 = inttoptr i64 %4565 to i32*
  %4568 = load i32, i32* %4567, align 4
  %4569 = add i32 %4568, -20
  %4570 = lshr i32 %4569, 31
  %4571 = add i32 %4568, -19
  %4572 = zext i32 %4571 to i64
  store i64 %4572, i64* %RAX.i1786, align 8
  %4573 = icmp eq i32 %4569, -1
  %4574 = icmp eq i32 %4571, 0
  %4575 = or i1 %4573, %4574
  %4576 = zext i1 %4575 to i8
  store i8 %4576, i8* %14, align 1
  %4577 = and i32 %4571, 255
  %4578 = tail call i32 @llvm.ctpop.i32(i32 %4577)
  %4579 = trunc i32 %4578 to i8
  %4580 = and i8 %4579, 1
  %4581 = xor i8 %4580, 1
  store i8 %4581, i8* %21, align 1
  %4582 = xor i32 %4571, %4569
  %4583 = lshr i32 %4582, 4
  %4584 = trunc i32 %4583 to i8
  %4585 = and i8 %4584, 1
  store i8 %4585, i8* %26, align 1
  %4586 = zext i1 %4574 to i8
  store i8 %4586, i8* %29, align 1
  %4587 = lshr i32 %4571, 31
  %4588 = trunc i32 %4587 to i8
  store i8 %4588, i8* %32, align 1
  %4589 = xor i32 %4587, %4570
  %4590 = add nuw nsw i32 %4589, %4587
  %4591 = icmp eq i32 %4590, 2
  %4592 = zext i1 %4591 to i8
  store i8 %4592, i8* %38, align 1
  %4593 = sext i32 %4571 to i64
  store i64 %4593, i64* %RCX.i1775.pre-phi, align 8
  %4594 = add nsw i64 %4593, 12099168
  %4595 = add i64 %4563, 20
  store i64 %4595, i64* %3, align 8
  %4596 = inttoptr i64 %4594 to i8*
  %4597 = load i8, i8* %4596, align 1
  %4598 = zext i8 %4597 to i64
  store i64 %4598, i64* %RAX.i1786, align 8
  %4599 = zext i8 %4597 to i32
  %4600 = add i64 %4564, -12
  %4601 = add i64 %4563, 23
  store i64 %4601, i64* %3, align 8
  %4602 = inttoptr i64 %4600 to i32*
  %4603 = load i32, i32* %4602, align 4
  %4604 = sub i32 %4599, %4603
  %4605 = icmp ult i32 %4599, %4603
  %4606 = zext i1 %4605 to i8
  store i8 %4606, i8* %14, align 1
  %4607 = and i32 %4604, 255
  %4608 = tail call i32 @llvm.ctpop.i32(i32 %4607)
  %4609 = trunc i32 %4608 to i8
  %4610 = and i8 %4609, 1
  %4611 = xor i8 %4610, 1
  store i8 %4611, i8* %21, align 1
  %4612 = xor i32 %4603, %4599
  %4613 = xor i32 %4612, %4604
  %4614 = lshr i32 %4613, 4
  %4615 = trunc i32 %4614 to i8
  %4616 = and i8 %4615, 1
  store i8 %4616, i8* %26, align 1
  %4617 = icmp eq i32 %4604, 0
  %4618 = zext i1 %4617 to i8
  store i8 %4618, i8* %29, align 1
  %4619 = lshr i32 %4604, 31
  %4620 = trunc i32 %4619 to i8
  store i8 %4620, i8* %32, align 1
  %4621 = lshr i32 %4603, 31
  %4622 = add nuw nsw i32 %4619, %4621
  %4623 = icmp eq i32 %4622, 2
  %4624 = zext i1 %4623 to i8
  store i8 %4624, i8* %38, align 1
  %.v177 = select i1 %4617, i64 192, i64 29
  %4625 = add i64 %4563, %.v177
  store i64 %4625, i64* %3, align 8
  %.pre124 = load i64, i64* %RBP.i, align 8
  br i1 %4617, label %block_.L_421954, label %block_4218b1

block_4218b1:                                     ; preds = %block_421894
  %4626 = add i64 %.pre124, -28
  %4627 = add i64 %4625, 3
  store i64 %4627, i64* %3, align 8
  %4628 = inttoptr i64 %4626 to i32*
  %4629 = load i32, i32* %4628, align 4
  %4630 = add i32 %4629, -20
  %4631 = lshr i32 %4630, 31
  %4632 = add i32 %4629, -19
  %4633 = zext i32 %4632 to i64
  store i64 %4633, i64* %RAX.i1786, align 8
  %4634 = icmp eq i32 %4630, -1
  %4635 = icmp eq i32 %4632, 0
  %4636 = or i1 %4634, %4635
  %4637 = zext i1 %4636 to i8
  store i8 %4637, i8* %14, align 1
  %4638 = and i32 %4632, 255
  %4639 = tail call i32 @llvm.ctpop.i32(i32 %4638)
  %4640 = trunc i32 %4639 to i8
  %4641 = and i8 %4640, 1
  %4642 = xor i8 %4641, 1
  store i8 %4642, i8* %21, align 1
  %4643 = xor i32 %4632, %4630
  %4644 = lshr i32 %4643, 4
  %4645 = trunc i32 %4644 to i8
  %4646 = and i8 %4645, 1
  store i8 %4646, i8* %26, align 1
  %4647 = zext i1 %4635 to i8
  store i8 %4647, i8* %29, align 1
  %4648 = lshr i32 %4632, 31
  %4649 = trunc i32 %4648 to i8
  store i8 %4649, i8* %32, align 1
  %4650 = xor i32 %4648, %4631
  %4651 = add nuw nsw i32 %4650, %4648
  %4652 = icmp eq i32 %4651, 2
  %4653 = zext i1 %4652 to i8
  store i8 %4653, i8* %38, align 1
  %4654 = sext i32 %4632 to i64
  store i64 %4654, i64* %RCX.i1775.pre-phi, align 8
  %4655 = add nsw i64 %4654, 12099168
  %4656 = add i64 %4625, 20
  store i64 %4656, i64* %3, align 8
  %4657 = inttoptr i64 %4655 to i8*
  %4658 = load i8, i8* %4657, align 1
  %4659 = zext i8 %4658 to i64
  store i64 %4659, i64* %RAX.i1786, align 8
  %4660 = zext i8 %4658 to i32
  store i8 0, i8* %14, align 1
  %4661 = tail call i32 @llvm.ctpop.i32(i32 %4660)
  %4662 = trunc i32 %4661 to i8
  %4663 = and i8 %4662, 1
  %4664 = xor i8 %4663, 1
  store i8 %4664, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4665 = icmp eq i8 %4658, 0
  %4666 = zext i1 %4665 to i8
  store i8 %4666, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v178 = select i1 %4665, i64 29, i64 222
  %4667 = add i64 %4625, %.v178
  store i64 %4667, i64* %3, align 8
  br i1 %4665, label %block_4218ce, label %block_.L_42198f

block_4218ce:                                     ; preds = %block_4218b1
  %4668 = load i64, i64* %RBP.i, align 8
  %4669 = add i64 %4668, -28
  %4670 = add i64 %4667, 3
  store i64 %4670, i64* %3, align 8
  %4671 = inttoptr i64 %4669 to i32*
  %4672 = load i32, i32* %4671, align 4
  %4673 = add i32 %4672, -19
  %4674 = lshr i32 %4673, 31
  %4675 = add i32 %4672, -39
  %4676 = zext i32 %4675 to i64
  store i64 %4676, i64* %RAX.i1786, align 8
  %4677 = icmp ult i32 %4673, 20
  %4678 = zext i1 %4677 to i8
  store i8 %4678, i8* %14, align 1
  %4679 = and i32 %4675, 255
  %4680 = tail call i32 @llvm.ctpop.i32(i32 %4679)
  %4681 = trunc i32 %4680 to i8
  %4682 = and i8 %4681, 1
  %4683 = xor i8 %4682, 1
  store i8 %4683, i8* %21, align 1
  %4684 = xor i32 %4673, 16
  %4685 = xor i32 %4684, %4675
  %4686 = lshr i32 %4685, 4
  %4687 = trunc i32 %4686 to i8
  %4688 = and i8 %4687, 1
  store i8 %4688, i8* %26, align 1
  %4689 = icmp eq i32 %4675, 0
  %4690 = zext i1 %4689 to i8
  store i8 %4690, i8* %29, align 1
  %4691 = lshr i32 %4675, 31
  %4692 = trunc i32 %4691 to i8
  store i8 %4692, i8* %32, align 1
  %4693 = xor i32 %4691, %4674
  %4694 = add nuw nsw i32 %4693, %4674
  %4695 = icmp eq i32 %4694, 2
  %4696 = zext i1 %4695 to i8
  store i8 %4696, i8* %38, align 1
  %4697 = sext i32 %4675 to i64
  store i64 %4697, i64* %RCX.i1775.pre-phi, align 8
  %4698 = add nsw i64 %4697, 12099168
  %4699 = add i64 %4667, 23
  store i64 %4699, i64* %3, align 8
  %4700 = inttoptr i64 %4698 to i8*
  %4701 = load i8, i8* %4700, align 1
  %4702 = zext i8 %4701 to i64
  store i64 %4702, i64* %RAX.i1786, align 8
  %4703 = zext i8 %4701 to i32
  %4704 = add nsw i32 %4703, -3
  %4705 = icmp ult i8 %4701, 3
  %4706 = zext i1 %4705 to i8
  store i8 %4706, i8* %14, align 1
  %4707 = and i32 %4704, 255
  %4708 = tail call i32 @llvm.ctpop.i32(i32 %4707)
  %4709 = trunc i32 %4708 to i8
  %4710 = and i8 %4709, 1
  %4711 = xor i8 %4710, 1
  store i8 %4711, i8* %21, align 1
  %4712 = xor i32 %4704, %4703
  %4713 = lshr i32 %4712, 4
  %4714 = trunc i32 %4713 to i8
  %4715 = and i8 %4714, 1
  store i8 %4715, i8* %26, align 1
  %4716 = icmp eq i32 %4704, 0
  %4717 = zext i1 %4716 to i8
  store i8 %4717, i8* %29, align 1
  %4718 = lshr i32 %4704, 31
  %4719 = trunc i32 %4718 to i8
  store i8 %4719, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v179 = select i1 %4716, i64 193, i64 32
  %4720 = add i64 %4667, %.v179
  store i64 %4720, i64* %3, align 8
  br i1 %4716, label %block_.L_42198f, label %block_4218ee

block_4218ee:                                     ; preds = %block_4218ce
  %4721 = load i64, i64* %RBP.i, align 8
  %4722 = add i64 %4721, -28
  %4723 = add i64 %4720, 3
  store i64 %4723, i64* %3, align 8
  %4724 = inttoptr i64 %4722 to i32*
  %4725 = load i32, i32* %4724, align 4
  %4726 = add i32 %4725, -19
  %4727 = lshr i32 %4726, 31
  %4728 = add i32 %4725, -39
  %4729 = zext i32 %4728 to i64
  store i64 %4729, i64* %RAX.i1786, align 8
  %4730 = icmp ult i32 %4726, 20
  %4731 = zext i1 %4730 to i8
  store i8 %4731, i8* %14, align 1
  %4732 = and i32 %4728, 255
  %4733 = tail call i32 @llvm.ctpop.i32(i32 %4732)
  %4734 = trunc i32 %4733 to i8
  %4735 = and i8 %4734, 1
  %4736 = xor i8 %4735, 1
  store i8 %4736, i8* %21, align 1
  %4737 = xor i32 %4726, 16
  %4738 = xor i32 %4737, %4728
  %4739 = lshr i32 %4738, 4
  %4740 = trunc i32 %4739 to i8
  %4741 = and i8 %4740, 1
  store i8 %4741, i8* %26, align 1
  %4742 = icmp eq i32 %4728, 0
  %4743 = zext i1 %4742 to i8
  store i8 %4743, i8* %29, align 1
  %4744 = lshr i32 %4728, 31
  %4745 = trunc i32 %4744 to i8
  store i8 %4745, i8* %32, align 1
  %4746 = xor i32 %4744, %4727
  %4747 = add nuw nsw i32 %4746, %4727
  %4748 = icmp eq i32 %4747, 2
  %4749 = zext i1 %4748 to i8
  store i8 %4749, i8* %38, align 1
  %4750 = sext i32 %4728 to i64
  store i64 %4750, i64* %RCX.i1775.pre-phi, align 8
  %4751 = add nsw i64 %4750, 12099168
  %4752 = add i64 %4720, 23
  store i64 %4752, i64* %3, align 8
  %4753 = inttoptr i64 %4751 to i8*
  %4754 = load i8, i8* %4753, align 1
  %4755 = zext i8 %4754 to i64
  store i64 %4755, i64* %RAX.i1786, align 8
  %4756 = zext i8 %4754 to i32
  %4757 = load i64, i64* %RBP.i, align 8
  %4758 = add i64 %4757, -1500
  %4759 = add i64 %4720, 29
  store i64 %4759, i64* %3, align 8
  %4760 = inttoptr i64 %4758 to i32*
  %4761 = load i32, i32* %4760, align 4
  %4762 = sub i32 %4756, %4761
  %4763 = icmp ult i32 %4756, %4761
  %4764 = zext i1 %4763 to i8
  store i8 %4764, i8* %14, align 1
  %4765 = and i32 %4762, 255
  %4766 = tail call i32 @llvm.ctpop.i32(i32 %4765)
  %4767 = trunc i32 %4766 to i8
  %4768 = and i8 %4767, 1
  %4769 = xor i8 %4768, 1
  store i8 %4769, i8* %21, align 1
  %4770 = xor i32 %4761, %4756
  %4771 = xor i32 %4770, %4762
  %4772 = lshr i32 %4771, 4
  %4773 = trunc i32 %4772 to i8
  %4774 = and i8 %4773, 1
  store i8 %4774, i8* %26, align 1
  %4775 = icmp eq i32 %4762, 0
  %4776 = zext i1 %4775 to i8
  store i8 %4776, i8* %29, align 1
  %4777 = lshr i32 %4762, 31
  %4778 = trunc i32 %4777 to i8
  store i8 %4778, i8* %32, align 1
  %4779 = lshr i32 %4761, 31
  %4780 = add nuw nsw i32 %4777, %4779
  %4781 = icmp eq i32 %4780, 2
  %4782 = zext i1 %4781 to i8
  store i8 %4782, i8* %38, align 1
  %.v180 = select i1 %4775, i64 161, i64 35
  %4783 = add i64 %4720, %.v180
  store i64 %4783, i64* %3, align 8
  br i1 %4775, label %block_.L_42198f, label %block_421911

block_421911:                                     ; preds = %block_4218ee
  %4784 = add i64 %4757, -28
  %4785 = add i64 %4783, 3
  store i64 %4785, i64* %3, align 8
  %4786 = inttoptr i64 %4784 to i32*
  %4787 = load i32, i32* %4786, align 4
  %4788 = add i32 %4787, -19
  %4789 = lshr i32 %4788, 31
  %4790 = add i32 %4787, -18
  %4791 = zext i32 %4790 to i64
  store i64 %4791, i64* %RAX.i1786, align 8
  %4792 = icmp eq i32 %4788, -1
  %4793 = icmp eq i32 %4790, 0
  %4794 = or i1 %4792, %4793
  %4795 = zext i1 %4794 to i8
  store i8 %4795, i8* %14, align 1
  %4796 = and i32 %4790, 255
  %4797 = tail call i32 @llvm.ctpop.i32(i32 %4796)
  %4798 = trunc i32 %4797 to i8
  %4799 = and i8 %4798, 1
  %4800 = xor i8 %4799, 1
  store i8 %4800, i8* %21, align 1
  %4801 = xor i32 %4790, %4788
  %4802 = lshr i32 %4801, 4
  %4803 = trunc i32 %4802 to i8
  %4804 = and i8 %4803, 1
  store i8 %4804, i8* %26, align 1
  %4805 = zext i1 %4793 to i8
  store i8 %4805, i8* %29, align 1
  %4806 = lshr i32 %4790, 31
  %4807 = trunc i32 %4806 to i8
  store i8 %4807, i8* %32, align 1
  %4808 = xor i32 %4806, %4789
  %4809 = add nuw nsw i32 %4808, %4806
  %4810 = icmp eq i32 %4809, 2
  %4811 = zext i1 %4810 to i8
  store i8 %4811, i8* %38, align 1
  %4812 = sext i32 %4790 to i64
  store i64 %4812, i64* %RCX.i1775.pre-phi, align 8
  %4813 = add nsw i64 %4812, 12099168
  %4814 = add i64 %4783, 23
  store i64 %4814, i64* %3, align 8
  %4815 = inttoptr i64 %4813 to i8*
  %4816 = load i8, i8* %4815, align 1
  %4817 = zext i8 %4816 to i64
  store i64 %4817, i64* %RAX.i1786, align 8
  %4818 = zext i8 %4816 to i32
  %4819 = add nsw i32 %4818, -3
  %4820 = icmp ult i8 %4816, 3
  %4821 = zext i1 %4820 to i8
  store i8 %4821, i8* %14, align 1
  %4822 = and i32 %4819, 255
  %4823 = tail call i32 @llvm.ctpop.i32(i32 %4822)
  %4824 = trunc i32 %4823 to i8
  %4825 = and i8 %4824, 1
  %4826 = xor i8 %4825, 1
  store i8 %4826, i8* %21, align 1
  %4827 = xor i32 %4819, %4818
  %4828 = lshr i32 %4827, 4
  %4829 = trunc i32 %4828 to i8
  %4830 = and i8 %4829, 1
  store i8 %4830, i8* %26, align 1
  %4831 = icmp eq i32 %4819, 0
  %4832 = zext i1 %4831 to i8
  store i8 %4832, i8* %29, align 1
  %4833 = lshr i32 %4819, 31
  %4834 = trunc i32 %4833 to i8
  store i8 %4834, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v181 = select i1 %4831, i64 126, i64 32
  %4835 = add i64 %4783, %.v181
  store i64 %4835, i64* %3, align 8
  br i1 %4831, label %block_.L_42198f, label %block_421931

block_421931:                                     ; preds = %block_421911
  %4836 = load i64, i64* %RBP.i, align 8
  %4837 = add i64 %4836, -28
  %4838 = add i64 %4835, 3
  store i64 %4838, i64* %3, align 8
  %4839 = inttoptr i64 %4837 to i32*
  %4840 = load i32, i32* %4839, align 4
  %4841 = add i32 %4840, -19
  %4842 = lshr i32 %4841, 31
  %4843 = add i32 %4840, -18
  %4844 = zext i32 %4843 to i64
  store i64 %4844, i64* %RAX.i1786, align 8
  %4845 = icmp eq i32 %4841, -1
  %4846 = icmp eq i32 %4843, 0
  %4847 = or i1 %4845, %4846
  %4848 = zext i1 %4847 to i8
  store i8 %4848, i8* %14, align 1
  %4849 = and i32 %4843, 255
  %4850 = tail call i32 @llvm.ctpop.i32(i32 %4849)
  %4851 = trunc i32 %4850 to i8
  %4852 = and i8 %4851, 1
  %4853 = xor i8 %4852, 1
  store i8 %4853, i8* %21, align 1
  %4854 = xor i32 %4843, %4841
  %4855 = lshr i32 %4854, 4
  %4856 = trunc i32 %4855 to i8
  %4857 = and i8 %4856, 1
  store i8 %4857, i8* %26, align 1
  %4858 = zext i1 %4846 to i8
  store i8 %4858, i8* %29, align 1
  %4859 = lshr i32 %4843, 31
  %4860 = trunc i32 %4859 to i8
  store i8 %4860, i8* %32, align 1
  %4861 = xor i32 %4859, %4842
  %4862 = add nuw nsw i32 %4861, %4859
  %4863 = icmp eq i32 %4862, 2
  %4864 = zext i1 %4863 to i8
  store i8 %4864, i8* %38, align 1
  %4865 = sext i32 %4843 to i64
  store i64 %4865, i64* %RCX.i1775.pre-phi, align 8
  %4866 = add nsw i64 %4865, 12099168
  %4867 = add i64 %4835, 23
  store i64 %4867, i64* %3, align 8
  %4868 = inttoptr i64 %4866 to i8*
  %4869 = load i8, i8* %4868, align 1
  %4870 = zext i8 %4869 to i64
  store i64 %4870, i64* %RAX.i1786, align 8
  %4871 = zext i8 %4869 to i32
  %4872 = load i64, i64* %RBP.i, align 8
  %4873 = add i64 %4872, -1500
  %4874 = add i64 %4835, 29
  store i64 %4874, i64* %3, align 8
  %4875 = inttoptr i64 %4873 to i32*
  %4876 = load i32, i32* %4875, align 4
  %4877 = sub i32 %4871, %4876
  %4878 = icmp ult i32 %4871, %4876
  %4879 = zext i1 %4878 to i8
  store i8 %4879, i8* %14, align 1
  %4880 = and i32 %4877, 255
  %4881 = tail call i32 @llvm.ctpop.i32(i32 %4880)
  %4882 = trunc i32 %4881 to i8
  %4883 = and i8 %4882, 1
  %4884 = xor i8 %4883, 1
  store i8 %4884, i8* %21, align 1
  %4885 = xor i32 %4876, %4871
  %4886 = xor i32 %4885, %4877
  %4887 = lshr i32 %4886, 4
  %4888 = trunc i32 %4887 to i8
  %4889 = and i8 %4888, 1
  store i8 %4889, i8* %26, align 1
  %4890 = icmp eq i32 %4877, 0
  %4891 = zext i1 %4890 to i8
  store i8 %4891, i8* %29, align 1
  %4892 = lshr i32 %4877, 31
  %4893 = trunc i32 %4892 to i8
  store i8 %4893, i8* %32, align 1
  %4894 = lshr i32 %4876, 31
  %4895 = add nuw nsw i32 %4892, %4894
  %4896 = icmp eq i32 %4895, 2
  %4897 = zext i1 %4896 to i8
  store i8 %4897, i8* %38, align 1
  %.v182 = select i1 %4890, i64 94, i64 35
  %4898 = add i64 %4835, %.v182
  store i64 %4898, i64* %3, align 8
  br i1 %4890, label %block_.L_42198f, label %block_.L_421954

block_.L_421954:                                  ; preds = %block_421894, %block_421931
  %4899 = phi i64 [ %4898, %block_421931 ], [ %4625, %block_421894 ]
  %4900 = phi i64 [ %4872, %block_421931 ], [ %.pre124, %block_421894 ]
  %4901 = add i64 %4900, -28
  %4902 = add i64 %4899, 3
  store i64 %4902, i64* %3, align 8
  %4903 = inttoptr i64 %4901 to i32*
  %4904 = load i32, i32* %4903, align 4
  %4905 = add i32 %4904, -20
  %4906 = lshr i32 %4905, 31
  %4907 = add i32 %4904, -19
  %4908 = zext i32 %4907 to i64
  store i64 %4908, i64* %RAX.i1786, align 8
  %4909 = icmp eq i32 %4905, -1
  %4910 = icmp eq i32 %4907, 0
  %4911 = or i1 %4909, %4910
  %4912 = zext i1 %4911 to i8
  store i8 %4912, i8* %14, align 1
  %4913 = and i32 %4907, 255
  %4914 = tail call i32 @llvm.ctpop.i32(i32 %4913)
  %4915 = trunc i32 %4914 to i8
  %4916 = and i8 %4915, 1
  %4917 = xor i8 %4916, 1
  store i8 %4917, i8* %21, align 1
  %4918 = xor i32 %4907, %4905
  %4919 = lshr i32 %4918, 4
  %4920 = trunc i32 %4919 to i8
  %4921 = and i8 %4920, 1
  store i8 %4921, i8* %26, align 1
  %4922 = zext i1 %4910 to i8
  store i8 %4922, i8* %29, align 1
  %4923 = lshr i32 %4907, 31
  %4924 = trunc i32 %4923 to i8
  store i8 %4924, i8* %32, align 1
  %4925 = xor i32 %4923, %4906
  %4926 = add nuw nsw i32 %4925, %4923
  %4927 = icmp eq i32 %4926, 2
  %4928 = zext i1 %4927 to i8
  store i8 %4928, i8* %38, align 1
  %4929 = add i64 %4900, -1496
  %4930 = add i64 %4899, 15
  store i64 %4930, i64* %3, align 8
  %4931 = inttoptr i64 %4929 to i32*
  %4932 = load i32, i32* %4931, align 4
  %4933 = zext i32 %4932 to i64
  store i64 %4933, i64* %RCX.i1775.pre-phi, align 8
  %4934 = add i32 %4932, 1
  %4935 = zext i32 %4934 to i64
  store i64 %4935, i64* %RDX.i1837, align 8
  %4936 = icmp eq i32 %4932, -1
  %4937 = icmp eq i32 %4934, 0
  %4938 = or i1 %4936, %4937
  %4939 = zext i1 %4938 to i8
  store i8 %4939, i8* %14, align 1
  %4940 = and i32 %4934, 255
  %4941 = tail call i32 @llvm.ctpop.i32(i32 %4940)
  %4942 = trunc i32 %4941 to i8
  %4943 = and i8 %4942, 1
  %4944 = xor i8 %4943, 1
  store i8 %4944, i8* %21, align 1
  %4945 = xor i32 %4934, %4932
  %4946 = lshr i32 %4945, 4
  %4947 = trunc i32 %4946 to i8
  %4948 = and i8 %4947, 1
  store i8 %4948, i8* %26, align 1
  %4949 = zext i1 %4937 to i8
  store i8 %4949, i8* %29, align 1
  %4950 = lshr i32 %4934, 31
  %4951 = trunc i32 %4950 to i8
  store i8 %4951, i8* %32, align 1
  %4952 = lshr i32 %4932, 31
  %4953 = xor i32 %4950, %4952
  %4954 = add nuw nsw i32 %4953, %4950
  %4955 = icmp eq i32 %4954, 2
  %4956 = zext i1 %4955 to i8
  store i8 %4956, i8* %38, align 1
  %4957 = load i64, i64* %RBP.i, align 8
  %4958 = add i64 %4957, -1496
  %4959 = add i64 %4899, 26
  store i64 %4959, i64* %3, align 8
  %4960 = inttoptr i64 %4958 to i32*
  store i32 %4934, i32* %4960, align 4
  %4961 = load i32, i32* %ECX.i1772.pre-phi, align 4
  %4962 = load i64, i64* %3, align 8
  %4963 = sext i32 %4961 to i64
  store i64 %4963, i64* %RSI.i1742.pre-phi, align 8
  %4964 = load i64, i64* %RBP.i, align 8
  %4965 = shl nsw i64 %4963, 2
  %4966 = add nsw i64 %4965, -1488
  %4967 = add i64 %4966, %4964
  %4968 = load i32, i32* %EAX.i1827, align 4
  %4969 = add i64 %4962, 10
  store i64 %4969, i64* %3, align 8
  %4970 = inttoptr i64 %4967 to i32*
  store i32 %4968, i32* %4970, align 4
  %4971 = load i64, i64* %RBP.i, align 8
  %4972 = add i64 %4971, -28
  %4973 = load i64, i64* %3, align 8
  %4974 = add i64 %4973, 3
  store i64 %4974, i64* %3, align 8
  %4975 = inttoptr i64 %4972 to i32*
  %4976 = load i32, i32* %4975, align 4
  %4977 = add i32 %4976, -20
  %4978 = lshr i32 %4977, 31
  %4979 = add i32 %4976, -19
  %4980 = zext i32 %4979 to i64
  store i64 %4980, i64* %RAX.i1786, align 8
  %4981 = icmp eq i32 %4977, -1
  %4982 = icmp eq i32 %4979, 0
  %4983 = or i1 %4981, %4982
  %4984 = zext i1 %4983 to i8
  store i8 %4984, i8* %14, align 1
  %4985 = and i32 %4979, 255
  %4986 = tail call i32 @llvm.ctpop.i32(i32 %4985)
  %4987 = trunc i32 %4986 to i8
  %4988 = and i8 %4987, 1
  %4989 = xor i8 %4988, 1
  store i8 %4989, i8* %21, align 1
  %4990 = xor i32 %4979, %4977
  %4991 = lshr i32 %4990, 4
  %4992 = trunc i32 %4991 to i8
  %4993 = and i8 %4992, 1
  store i8 %4993, i8* %26, align 1
  %4994 = zext i1 %4982 to i8
  store i8 %4994, i8* %29, align 1
  %4995 = lshr i32 %4979, 31
  %4996 = trunc i32 %4995 to i8
  store i8 %4996, i8* %32, align 1
  %4997 = xor i32 %4995, %4978
  %4998 = add nuw nsw i32 %4997, %4995
  %4999 = icmp eq i32 %4998, 2
  %5000 = zext i1 %4999 to i8
  store i8 %5000, i8* %38, align 1
  %5001 = sext i32 %4979 to i64
  store i64 %5001, i64* %RSI.i1742.pre-phi, align 8
  %5002 = shl nsw i64 %5001, 2
  %5003 = add nsw i64 %5002, 11204272
  %5004 = add i64 %4973, 23
  store i64 %5004, i64* %3, align 8
  %5005 = inttoptr i64 %5003 to i32*
  store i32 1, i32* %5005, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_42198f

block_.L_42198f:                                  ; preds = %block_4218b1, %block_42187a, %block_421860, %block_.L_421846, %block_.L_421954, %block_421931, %block_421911, %block_4218ee, %block_4218ce
  %5006 = phi i64 [ %.pre125, %block_.L_421954 ], [ %4898, %block_421931 ], [ %4835, %block_421911 ], [ %4783, %block_4218ee ], [ %4720, %block_4218ce ], [ %4667, %block_4218b1 ], [ %4563, %block_42187a ], [ %4521, %block_421860 ], [ %4482, %block_.L_421846 ]
  %5007 = load i64, i64* %RBP.i, align 8
  %5008 = add i64 %5007, -28
  %5009 = add i64 %5006, 3
  store i64 %5009, i64* %3, align 8
  %5010 = inttoptr i64 %5008 to i32*
  %5011 = load i32, i32* %5010, align 4
  %5012 = add i32 %5011, 1
  %5013 = zext i32 %5012 to i64
  store i64 %5013, i64* %RAX.i1786, align 8
  %5014 = icmp eq i32 %5011, -1
  %5015 = icmp eq i32 %5012, 0
  %5016 = or i1 %5014, %5015
  %5017 = zext i1 %5016 to i8
  store i8 %5017, i8* %14, align 1
  %5018 = and i32 %5012, 255
  %5019 = tail call i32 @llvm.ctpop.i32(i32 %5018)
  %5020 = trunc i32 %5019 to i8
  %5021 = and i8 %5020, 1
  %5022 = xor i8 %5021, 1
  store i8 %5022, i8* %21, align 1
  %5023 = xor i32 %5012, %5011
  %5024 = lshr i32 %5023, 4
  %5025 = trunc i32 %5024 to i8
  %5026 = and i8 %5025, 1
  store i8 %5026, i8* %26, align 1
  %5027 = zext i1 %5015 to i8
  store i8 %5027, i8* %29, align 1
  %5028 = lshr i32 %5012, 31
  %5029 = trunc i32 %5028 to i8
  store i8 %5029, i8* %32, align 1
  %5030 = lshr i32 %5011, 31
  %5031 = xor i32 %5028, %5030
  %5032 = add nuw nsw i32 %5031, %5028
  %5033 = icmp eq i32 %5032, 2
  %5034 = zext i1 %5033 to i8
  store i8 %5034, i8* %38, align 1
  %5035 = sext i32 %5012 to i64
  store i64 %5035, i64* %RCX.i1775.pre-phi, align 8
  %5036 = add nsw i64 %5035, 12099168
  %5037 = add i64 %5006, 17
  store i64 %5037, i64* %3, align 8
  %5038 = inttoptr i64 %5036 to i8*
  %5039 = load i8, i8* %5038, align 1
  %5040 = zext i8 %5039 to i64
  store i64 %5040, i64* %RAX.i1786, align 8
  %5041 = zext i8 %5039 to i32
  store i8 0, i8* %14, align 1
  %5042 = tail call i32 @llvm.ctpop.i32(i32 %5041)
  %5043 = trunc i32 %5042 to i8
  %5044 = and i8 %5043, 1
  %5045 = xor i8 %5044, 1
  store i8 %5045, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5046 = icmp eq i8 %5039, 0
  %5047 = zext i1 %5046 to i8
  store i8 %5047, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v166 = select i1 %5046, i64 26, i64 329
  %5048 = add i64 %5006, %.v166
  store i64 %5048, i64* %3, align 8
  br i1 %5046, label %block_4219a9, label %block_.L_421ad8

block_4219a9:                                     ; preds = %block_.L_42198f
  %5049 = add i64 %5048, 3
  store i64 %5049, i64* %3, align 8
  %5050 = load i32, i32* %5010, align 4
  %5051 = add i32 %5050, 20
  %5052 = zext i32 %5051 to i64
  store i64 %5052, i64* %RAX.i1786, align 8
  %5053 = icmp ugt i32 %5050, -21
  %5054 = zext i1 %5053 to i8
  store i8 %5054, i8* %14, align 1
  %5055 = and i32 %5051, 255
  %5056 = tail call i32 @llvm.ctpop.i32(i32 %5055)
  %5057 = trunc i32 %5056 to i8
  %5058 = and i8 %5057, 1
  %5059 = xor i8 %5058, 1
  store i8 %5059, i8* %21, align 1
  %5060 = xor i32 %5050, 16
  %5061 = xor i32 %5060, %5051
  %5062 = lshr i32 %5061, 4
  %5063 = trunc i32 %5062 to i8
  %5064 = and i8 %5063, 1
  store i8 %5064, i8* %26, align 1
  %5065 = icmp eq i32 %5051, 0
  %5066 = zext i1 %5065 to i8
  store i8 %5066, i8* %29, align 1
  %5067 = lshr i32 %5051, 31
  %5068 = trunc i32 %5067 to i8
  store i8 %5068, i8* %32, align 1
  %5069 = lshr i32 %5050, 31
  %5070 = xor i32 %5067, %5069
  %5071 = add nuw nsw i32 %5070, %5067
  %5072 = icmp eq i32 %5071, 2
  %5073 = zext i1 %5072 to i8
  store i8 %5073, i8* %38, align 1
  %5074 = sext i32 %5051 to i64
  store i64 %5074, i64* %RCX.i1775.pre-phi, align 8
  %5075 = add nsw i64 %5074, 12099168
  %5076 = add i64 %5048, 17
  store i64 %5076, i64* %3, align 8
  %5077 = inttoptr i64 %5075 to i8*
  %5078 = load i8, i8* %5077, align 1
  %5079 = zext i8 %5078 to i64
  store i64 %5079, i64* %RAX.i1786, align 8
  %5080 = zext i8 %5078 to i32
  store i8 0, i8* %14, align 1
  %5081 = tail call i32 @llvm.ctpop.i32(i32 %5080)
  %5082 = trunc i32 %5081 to i8
  %5083 = and i8 %5082, 1
  %5084 = xor i8 %5083, 1
  store i8 %5084, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5085 = icmp eq i8 %5078, 0
  %5086 = zext i1 %5085 to i8
  store i8 %5086, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v167 = select i1 %5085, i64 26, i64 303
  %5087 = add i64 %5048, %.v167
  store i64 %5087, i64* %3, align 8
  br i1 %5085, label %block_4219c3, label %block_.L_421ad8

block_4219c3:                                     ; preds = %block_4219a9
  %5088 = add i64 %5087, 3
  store i64 %5088, i64* %3, align 8
  %5089 = load i32, i32* %5010, align 4
  %5090 = add i32 %5089, 20
  %5091 = lshr i32 %5090, 31
  %5092 = add i32 %5089, 21
  %5093 = zext i32 %5092 to i64
  store i64 %5093, i64* %RAX.i1786, align 8
  %5094 = icmp eq i32 %5090, -1
  %5095 = icmp eq i32 %5092, 0
  %5096 = or i1 %5094, %5095
  %5097 = zext i1 %5096 to i8
  store i8 %5097, i8* %14, align 1
  %5098 = and i32 %5092, 255
  %5099 = tail call i32 @llvm.ctpop.i32(i32 %5098)
  %5100 = trunc i32 %5099 to i8
  %5101 = and i8 %5100, 1
  %5102 = xor i8 %5101, 1
  store i8 %5102, i8* %21, align 1
  %5103 = xor i32 %5092, %5090
  %5104 = lshr i32 %5103, 4
  %5105 = trunc i32 %5104 to i8
  %5106 = and i8 %5105, 1
  store i8 %5106, i8* %26, align 1
  %5107 = zext i1 %5095 to i8
  store i8 %5107, i8* %29, align 1
  %5108 = lshr i32 %5092, 31
  %5109 = trunc i32 %5108 to i8
  store i8 %5109, i8* %32, align 1
  %5110 = xor i32 %5108, %5091
  %5111 = add nuw nsw i32 %5110, %5108
  %5112 = icmp eq i32 %5111, 2
  %5113 = zext i1 %5112 to i8
  store i8 %5113, i8* %38, align 1
  %5114 = sext i32 %5092 to i64
  store i64 %5114, i64* %RCX.i1775.pre-phi, align 8
  %5115 = shl nsw i64 %5114, 2
  %5116 = add nsw i64 %5115, 11204272
  %5117 = add i64 %5087, 20
  store i64 %5117, i64* %3, align 8
  %5118 = inttoptr i64 %5116 to i32*
  %5119 = load i32, i32* %5118, align 4
  store i8 0, i8* %14, align 1
  %5120 = and i32 %5119, 255
  %5121 = tail call i32 @llvm.ctpop.i32(i32 %5120)
  %5122 = trunc i32 %5121 to i8
  %5123 = and i8 %5122, 1
  %5124 = xor i8 %5123, 1
  store i8 %5124, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5125 = icmp eq i32 %5119, 0
  %5126 = zext i1 %5125 to i8
  store i8 %5126, i8* %29, align 1
  %5127 = lshr i32 %5119, 31
  %5128 = trunc i32 %5127 to i8
  store i8 %5128, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v168 = select i1 %5125, i64 26, i64 277
  %5129 = add i64 %5087, %.v168
  store i64 %5129, i64* %3, align 8
  br i1 %5125, label %block_4219dd, label %block_.L_421ad8

block_4219dd:                                     ; preds = %block_4219c3
  %5130 = load i64, i64* %RBP.i, align 8
  %5131 = add i64 %5130, -28
  %5132 = add i64 %5129, 3
  store i64 %5132, i64* %3, align 8
  %5133 = inttoptr i64 %5131 to i32*
  %5134 = load i32, i32* %5133, align 4
  %5135 = add i32 %5134, 20
  %5136 = lshr i32 %5135, 31
  %5137 = add i32 %5134, 21
  %5138 = zext i32 %5137 to i64
  store i64 %5138, i64* %RAX.i1786, align 8
  %5139 = icmp eq i32 %5135, -1
  %5140 = icmp eq i32 %5137, 0
  %5141 = or i1 %5139, %5140
  %5142 = zext i1 %5141 to i8
  store i8 %5142, i8* %14, align 1
  %5143 = and i32 %5137, 255
  %5144 = tail call i32 @llvm.ctpop.i32(i32 %5143)
  %5145 = trunc i32 %5144 to i8
  %5146 = and i8 %5145, 1
  %5147 = xor i8 %5146, 1
  store i8 %5147, i8* %21, align 1
  %5148 = xor i32 %5137, %5135
  %5149 = lshr i32 %5148, 4
  %5150 = trunc i32 %5149 to i8
  %5151 = and i8 %5150, 1
  store i8 %5151, i8* %26, align 1
  %5152 = zext i1 %5140 to i8
  store i8 %5152, i8* %29, align 1
  %5153 = lshr i32 %5137, 31
  %5154 = trunc i32 %5153 to i8
  store i8 %5154, i8* %32, align 1
  %5155 = xor i32 %5153, %5136
  %5156 = add nuw nsw i32 %5155, %5153
  %5157 = icmp eq i32 %5156, 2
  %5158 = zext i1 %5157 to i8
  store i8 %5158, i8* %38, align 1
  %5159 = sext i32 %5137 to i64
  store i64 %5159, i64* %RCX.i1775.pre-phi, align 8
  %5160 = add nsw i64 %5159, 12099168
  %5161 = add i64 %5129, 20
  store i64 %5161, i64* %3, align 8
  %5162 = inttoptr i64 %5160 to i8*
  %5163 = load i8, i8* %5162, align 1
  %5164 = zext i8 %5163 to i64
  store i64 %5164, i64* %RAX.i1786, align 8
  %5165 = zext i8 %5163 to i32
  %5166 = add i64 %5130, -12
  %5167 = add i64 %5129, 23
  store i64 %5167, i64* %3, align 8
  %5168 = inttoptr i64 %5166 to i32*
  %5169 = load i32, i32* %5168, align 4
  %5170 = sub i32 %5165, %5169
  %5171 = icmp ult i32 %5165, %5169
  %5172 = zext i1 %5171 to i8
  store i8 %5172, i8* %14, align 1
  %5173 = and i32 %5170, 255
  %5174 = tail call i32 @llvm.ctpop.i32(i32 %5173)
  %5175 = trunc i32 %5174 to i8
  %5176 = and i8 %5175, 1
  %5177 = xor i8 %5176, 1
  store i8 %5177, i8* %21, align 1
  %5178 = xor i32 %5169, %5165
  %5179 = xor i32 %5178, %5170
  %5180 = lshr i32 %5179, 4
  %5181 = trunc i32 %5180 to i8
  %5182 = and i8 %5181, 1
  store i8 %5182, i8* %26, align 1
  %5183 = icmp eq i32 %5170, 0
  %5184 = zext i1 %5183 to i8
  store i8 %5184, i8* %29, align 1
  %5185 = lshr i32 %5170, 31
  %5186 = trunc i32 %5185 to i8
  store i8 %5186, i8* %32, align 1
  %5187 = lshr i32 %5169, 31
  %5188 = add nuw nsw i32 %5185, %5187
  %5189 = icmp eq i32 %5188, 2
  %5190 = zext i1 %5189 to i8
  store i8 %5190, i8* %38, align 1
  %.v169 = select i1 %5183, i64 192, i64 29
  %5191 = add i64 %5129, %.v169
  store i64 %5191, i64* %3, align 8
  %.pre126 = load i64, i64* %RBP.i, align 8
  br i1 %5183, label %block_.L_421a9d, label %block_4219fa

block_4219fa:                                     ; preds = %block_4219dd
  %5192 = add i64 %.pre126, -28
  %5193 = add i64 %5191, 3
  store i64 %5193, i64* %3, align 8
  %5194 = inttoptr i64 %5192 to i32*
  %5195 = load i32, i32* %5194, align 4
  %5196 = add i32 %5195, 20
  %5197 = lshr i32 %5196, 31
  %5198 = add i32 %5195, 21
  %5199 = zext i32 %5198 to i64
  store i64 %5199, i64* %RAX.i1786, align 8
  %5200 = icmp eq i32 %5196, -1
  %5201 = icmp eq i32 %5198, 0
  %5202 = or i1 %5200, %5201
  %5203 = zext i1 %5202 to i8
  store i8 %5203, i8* %14, align 1
  %5204 = and i32 %5198, 255
  %5205 = tail call i32 @llvm.ctpop.i32(i32 %5204)
  %5206 = trunc i32 %5205 to i8
  %5207 = and i8 %5206, 1
  %5208 = xor i8 %5207, 1
  store i8 %5208, i8* %21, align 1
  %5209 = xor i32 %5198, %5196
  %5210 = lshr i32 %5209, 4
  %5211 = trunc i32 %5210 to i8
  %5212 = and i8 %5211, 1
  store i8 %5212, i8* %26, align 1
  %5213 = zext i1 %5201 to i8
  store i8 %5213, i8* %29, align 1
  %5214 = lshr i32 %5198, 31
  %5215 = trunc i32 %5214 to i8
  store i8 %5215, i8* %32, align 1
  %5216 = xor i32 %5214, %5197
  %5217 = add nuw nsw i32 %5216, %5214
  %5218 = icmp eq i32 %5217, 2
  %5219 = zext i1 %5218 to i8
  store i8 %5219, i8* %38, align 1
  %5220 = sext i32 %5198 to i64
  store i64 %5220, i64* %RCX.i1775.pre-phi, align 8
  %5221 = add nsw i64 %5220, 12099168
  %5222 = add i64 %5191, 20
  store i64 %5222, i64* %3, align 8
  %5223 = inttoptr i64 %5221 to i8*
  %5224 = load i8, i8* %5223, align 1
  %5225 = zext i8 %5224 to i64
  store i64 %5225, i64* %RAX.i1786, align 8
  %5226 = zext i8 %5224 to i32
  store i8 0, i8* %14, align 1
  %5227 = tail call i32 @llvm.ctpop.i32(i32 %5226)
  %5228 = trunc i32 %5227 to i8
  %5229 = and i8 %5228, 1
  %5230 = xor i8 %5229, 1
  store i8 %5230, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5231 = icmp eq i8 %5224, 0
  %5232 = zext i1 %5231 to i8
  store i8 %5232, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v170 = select i1 %5231, i64 29, i64 222
  %5233 = add i64 %5191, %.v170
  store i64 %5233, i64* %3, align 8
  br i1 %5231, label %block_421a17, label %block_.L_421ad8

block_421a17:                                     ; preds = %block_4219fa
  %5234 = load i64, i64* %RBP.i, align 8
  %5235 = add i64 %5234, -28
  %5236 = add i64 %5233, 3
  store i64 %5236, i64* %3, align 8
  %5237 = inttoptr i64 %5235 to i32*
  %5238 = load i32, i32* %5237, align 4
  %5239 = add i32 %5238, 21
  %5240 = lshr i32 %5239, 31
  %5241 = add i32 %5238, 22
  %5242 = zext i32 %5241 to i64
  store i64 %5242, i64* %RAX.i1786, align 8
  %5243 = icmp eq i32 %5239, -1
  %5244 = icmp eq i32 %5241, 0
  %5245 = or i1 %5243, %5244
  %5246 = zext i1 %5245 to i8
  store i8 %5246, i8* %14, align 1
  %5247 = and i32 %5241, 255
  %5248 = tail call i32 @llvm.ctpop.i32(i32 %5247)
  %5249 = trunc i32 %5248 to i8
  %5250 = and i8 %5249, 1
  %5251 = xor i8 %5250, 1
  store i8 %5251, i8* %21, align 1
  %5252 = xor i32 %5241, %5239
  %5253 = lshr i32 %5252, 4
  %5254 = trunc i32 %5253 to i8
  %5255 = and i8 %5254, 1
  store i8 %5255, i8* %26, align 1
  %5256 = zext i1 %5244 to i8
  store i8 %5256, i8* %29, align 1
  %5257 = lshr i32 %5241, 31
  %5258 = trunc i32 %5257 to i8
  store i8 %5258, i8* %32, align 1
  %5259 = xor i32 %5257, %5240
  %5260 = add nuw nsw i32 %5259, %5257
  %5261 = icmp eq i32 %5260, 2
  %5262 = zext i1 %5261 to i8
  store i8 %5262, i8* %38, align 1
  %5263 = sext i32 %5241 to i64
  store i64 %5263, i64* %RCX.i1775.pre-phi, align 8
  %5264 = add nsw i64 %5263, 12099168
  %5265 = add i64 %5233, 23
  store i64 %5265, i64* %3, align 8
  %5266 = inttoptr i64 %5264 to i8*
  %5267 = load i8, i8* %5266, align 1
  %5268 = zext i8 %5267 to i64
  store i64 %5268, i64* %RAX.i1786, align 8
  %5269 = zext i8 %5267 to i32
  %5270 = add nsw i32 %5269, -3
  %5271 = icmp ult i8 %5267, 3
  %5272 = zext i1 %5271 to i8
  store i8 %5272, i8* %14, align 1
  %5273 = and i32 %5270, 255
  %5274 = tail call i32 @llvm.ctpop.i32(i32 %5273)
  %5275 = trunc i32 %5274 to i8
  %5276 = and i8 %5275, 1
  %5277 = xor i8 %5276, 1
  store i8 %5277, i8* %21, align 1
  %5278 = xor i32 %5270, %5269
  %5279 = lshr i32 %5278, 4
  %5280 = trunc i32 %5279 to i8
  %5281 = and i8 %5280, 1
  store i8 %5281, i8* %26, align 1
  %5282 = icmp eq i32 %5270, 0
  %5283 = zext i1 %5282 to i8
  store i8 %5283, i8* %29, align 1
  %5284 = lshr i32 %5270, 31
  %5285 = trunc i32 %5284 to i8
  store i8 %5285, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v171 = select i1 %5282, i64 193, i64 32
  %5286 = add i64 %5233, %.v171
  store i64 %5286, i64* %3, align 8
  br i1 %5282, label %block_.L_421ad8, label %block_421a37

block_421a37:                                     ; preds = %block_421a17
  %5287 = load i64, i64* %RBP.i, align 8
  %5288 = add i64 %5287, -28
  %5289 = add i64 %5286, 3
  store i64 %5289, i64* %3, align 8
  %5290 = inttoptr i64 %5288 to i32*
  %5291 = load i32, i32* %5290, align 4
  %5292 = add i32 %5291, 21
  %5293 = lshr i32 %5292, 31
  %5294 = add i32 %5291, 22
  %5295 = zext i32 %5294 to i64
  store i64 %5295, i64* %RAX.i1786, align 8
  %5296 = icmp eq i32 %5292, -1
  %5297 = icmp eq i32 %5294, 0
  %5298 = or i1 %5296, %5297
  %5299 = zext i1 %5298 to i8
  store i8 %5299, i8* %14, align 1
  %5300 = and i32 %5294, 255
  %5301 = tail call i32 @llvm.ctpop.i32(i32 %5300)
  %5302 = trunc i32 %5301 to i8
  %5303 = and i8 %5302, 1
  %5304 = xor i8 %5303, 1
  store i8 %5304, i8* %21, align 1
  %5305 = xor i32 %5294, %5292
  %5306 = lshr i32 %5305, 4
  %5307 = trunc i32 %5306 to i8
  %5308 = and i8 %5307, 1
  store i8 %5308, i8* %26, align 1
  %5309 = zext i1 %5297 to i8
  store i8 %5309, i8* %29, align 1
  %5310 = lshr i32 %5294, 31
  %5311 = trunc i32 %5310 to i8
  store i8 %5311, i8* %32, align 1
  %5312 = xor i32 %5310, %5293
  %5313 = add nuw nsw i32 %5312, %5310
  %5314 = icmp eq i32 %5313, 2
  %5315 = zext i1 %5314 to i8
  store i8 %5315, i8* %38, align 1
  %5316 = sext i32 %5294 to i64
  store i64 %5316, i64* %RCX.i1775.pre-phi, align 8
  %5317 = add nsw i64 %5316, 12099168
  %5318 = add i64 %5286, 23
  store i64 %5318, i64* %3, align 8
  %5319 = inttoptr i64 %5317 to i8*
  %5320 = load i8, i8* %5319, align 1
  %5321 = zext i8 %5320 to i64
  store i64 %5321, i64* %RAX.i1786, align 8
  %5322 = zext i8 %5320 to i32
  %5323 = load i64, i64* %RBP.i, align 8
  %5324 = add i64 %5323, -1500
  %5325 = add i64 %5286, 29
  store i64 %5325, i64* %3, align 8
  %5326 = inttoptr i64 %5324 to i32*
  %5327 = load i32, i32* %5326, align 4
  %5328 = sub i32 %5322, %5327
  %5329 = icmp ult i32 %5322, %5327
  %5330 = zext i1 %5329 to i8
  store i8 %5330, i8* %14, align 1
  %5331 = and i32 %5328, 255
  %5332 = tail call i32 @llvm.ctpop.i32(i32 %5331)
  %5333 = trunc i32 %5332 to i8
  %5334 = and i8 %5333, 1
  %5335 = xor i8 %5334, 1
  store i8 %5335, i8* %21, align 1
  %5336 = xor i32 %5327, %5322
  %5337 = xor i32 %5336, %5328
  %5338 = lshr i32 %5337, 4
  %5339 = trunc i32 %5338 to i8
  %5340 = and i8 %5339, 1
  store i8 %5340, i8* %26, align 1
  %5341 = icmp eq i32 %5328, 0
  %5342 = zext i1 %5341 to i8
  store i8 %5342, i8* %29, align 1
  %5343 = lshr i32 %5328, 31
  %5344 = trunc i32 %5343 to i8
  store i8 %5344, i8* %32, align 1
  %5345 = lshr i32 %5327, 31
  %5346 = add nuw nsw i32 %5343, %5345
  %5347 = icmp eq i32 %5346, 2
  %5348 = zext i1 %5347 to i8
  store i8 %5348, i8* %38, align 1
  %.v172 = select i1 %5341, i64 161, i64 35
  %5349 = add i64 %5286, %.v172
  store i64 %5349, i64* %3, align 8
  br i1 %5341, label %block_.L_421ad8, label %block_421a5a

block_421a5a:                                     ; preds = %block_421a37
  %5350 = add i64 %5323, -28
  %5351 = add i64 %5349, 3
  store i64 %5351, i64* %3, align 8
  %5352 = inttoptr i64 %5350 to i32*
  %5353 = load i32, i32* %5352, align 4
  %5354 = add i32 %5353, 21
  %5355 = lshr i32 %5354, 31
  %5356 = add i32 %5353, 41
  %5357 = zext i32 %5356 to i64
  store i64 %5357, i64* %RAX.i1786, align 8
  %5358 = icmp ugt i32 %5354, -21
  %5359 = zext i1 %5358 to i8
  store i8 %5359, i8* %14, align 1
  %5360 = and i32 %5356, 255
  %5361 = tail call i32 @llvm.ctpop.i32(i32 %5360)
  %5362 = trunc i32 %5361 to i8
  %5363 = and i8 %5362, 1
  %5364 = xor i8 %5363, 1
  store i8 %5364, i8* %21, align 1
  %5365 = xor i32 %5354, 16
  %5366 = xor i32 %5365, %5356
  %5367 = lshr i32 %5366, 4
  %5368 = trunc i32 %5367 to i8
  %5369 = and i8 %5368, 1
  store i8 %5369, i8* %26, align 1
  %5370 = icmp eq i32 %5356, 0
  %5371 = zext i1 %5370 to i8
  store i8 %5371, i8* %29, align 1
  %5372 = lshr i32 %5356, 31
  %5373 = trunc i32 %5372 to i8
  store i8 %5373, i8* %32, align 1
  %5374 = xor i32 %5372, %5355
  %5375 = add nuw nsw i32 %5374, %5372
  %5376 = icmp eq i32 %5375, 2
  %5377 = zext i1 %5376 to i8
  store i8 %5377, i8* %38, align 1
  %5378 = sext i32 %5356 to i64
  store i64 %5378, i64* %RCX.i1775.pre-phi, align 8
  %5379 = add nsw i64 %5378, 12099168
  %5380 = add i64 %5349, 23
  store i64 %5380, i64* %3, align 8
  %5381 = inttoptr i64 %5379 to i8*
  %5382 = load i8, i8* %5381, align 1
  %5383 = zext i8 %5382 to i64
  store i64 %5383, i64* %RAX.i1786, align 8
  %5384 = zext i8 %5382 to i32
  %5385 = add nsw i32 %5384, -3
  %5386 = icmp ult i8 %5382, 3
  %5387 = zext i1 %5386 to i8
  store i8 %5387, i8* %14, align 1
  %5388 = and i32 %5385, 255
  %5389 = tail call i32 @llvm.ctpop.i32(i32 %5388)
  %5390 = trunc i32 %5389 to i8
  %5391 = and i8 %5390, 1
  %5392 = xor i8 %5391, 1
  store i8 %5392, i8* %21, align 1
  %5393 = xor i32 %5385, %5384
  %5394 = lshr i32 %5393, 4
  %5395 = trunc i32 %5394 to i8
  %5396 = and i8 %5395, 1
  store i8 %5396, i8* %26, align 1
  %5397 = icmp eq i32 %5385, 0
  %5398 = zext i1 %5397 to i8
  store i8 %5398, i8* %29, align 1
  %5399 = lshr i32 %5385, 31
  %5400 = trunc i32 %5399 to i8
  store i8 %5400, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v173 = select i1 %5397, i64 126, i64 32
  %5401 = add i64 %5349, %.v173
  store i64 %5401, i64* %3, align 8
  br i1 %5397, label %block_.L_421ad8, label %block_421a7a

block_421a7a:                                     ; preds = %block_421a5a
  %5402 = load i64, i64* %RBP.i, align 8
  %5403 = add i64 %5402, -28
  %5404 = add i64 %5401, 3
  store i64 %5404, i64* %3, align 8
  %5405 = inttoptr i64 %5403 to i32*
  %5406 = load i32, i32* %5405, align 4
  %5407 = add i32 %5406, 21
  %5408 = lshr i32 %5407, 31
  %5409 = add i32 %5406, 41
  %5410 = zext i32 %5409 to i64
  store i64 %5410, i64* %RAX.i1786, align 8
  %5411 = icmp ugt i32 %5407, -21
  %5412 = zext i1 %5411 to i8
  store i8 %5412, i8* %14, align 1
  %5413 = and i32 %5409, 255
  %5414 = tail call i32 @llvm.ctpop.i32(i32 %5413)
  %5415 = trunc i32 %5414 to i8
  %5416 = and i8 %5415, 1
  %5417 = xor i8 %5416, 1
  store i8 %5417, i8* %21, align 1
  %5418 = xor i32 %5407, 16
  %5419 = xor i32 %5418, %5409
  %5420 = lshr i32 %5419, 4
  %5421 = trunc i32 %5420 to i8
  %5422 = and i8 %5421, 1
  store i8 %5422, i8* %26, align 1
  %5423 = icmp eq i32 %5409, 0
  %5424 = zext i1 %5423 to i8
  store i8 %5424, i8* %29, align 1
  %5425 = lshr i32 %5409, 31
  %5426 = trunc i32 %5425 to i8
  store i8 %5426, i8* %32, align 1
  %5427 = xor i32 %5425, %5408
  %5428 = add nuw nsw i32 %5427, %5425
  %5429 = icmp eq i32 %5428, 2
  %5430 = zext i1 %5429 to i8
  store i8 %5430, i8* %38, align 1
  %5431 = sext i32 %5409 to i64
  store i64 %5431, i64* %RCX.i1775.pre-phi, align 8
  %5432 = add nsw i64 %5431, 12099168
  %5433 = add i64 %5401, 23
  store i64 %5433, i64* %3, align 8
  %5434 = inttoptr i64 %5432 to i8*
  %5435 = load i8, i8* %5434, align 1
  %5436 = zext i8 %5435 to i64
  store i64 %5436, i64* %RAX.i1786, align 8
  %5437 = zext i8 %5435 to i32
  %5438 = load i64, i64* %RBP.i, align 8
  %5439 = add i64 %5438, -1500
  %5440 = add i64 %5401, 29
  store i64 %5440, i64* %3, align 8
  %5441 = inttoptr i64 %5439 to i32*
  %5442 = load i32, i32* %5441, align 4
  %5443 = sub i32 %5437, %5442
  %5444 = icmp ult i32 %5437, %5442
  %5445 = zext i1 %5444 to i8
  store i8 %5445, i8* %14, align 1
  %5446 = and i32 %5443, 255
  %5447 = tail call i32 @llvm.ctpop.i32(i32 %5446)
  %5448 = trunc i32 %5447 to i8
  %5449 = and i8 %5448, 1
  %5450 = xor i8 %5449, 1
  store i8 %5450, i8* %21, align 1
  %5451 = xor i32 %5442, %5437
  %5452 = xor i32 %5451, %5443
  %5453 = lshr i32 %5452, 4
  %5454 = trunc i32 %5453 to i8
  %5455 = and i8 %5454, 1
  store i8 %5455, i8* %26, align 1
  %5456 = icmp eq i32 %5443, 0
  %5457 = zext i1 %5456 to i8
  store i8 %5457, i8* %29, align 1
  %5458 = lshr i32 %5443, 31
  %5459 = trunc i32 %5458 to i8
  store i8 %5459, i8* %32, align 1
  %5460 = lshr i32 %5442, 31
  %5461 = add nuw nsw i32 %5458, %5460
  %5462 = icmp eq i32 %5461, 2
  %5463 = zext i1 %5462 to i8
  store i8 %5463, i8* %38, align 1
  %.v174 = select i1 %5456, i64 94, i64 35
  %5464 = add i64 %5401, %.v174
  store i64 %5464, i64* %3, align 8
  br i1 %5456, label %block_.L_421ad8, label %block_.L_421a9d

block_.L_421a9d:                                  ; preds = %block_4219dd, %block_421a7a
  %5465 = phi i64 [ %5464, %block_421a7a ], [ %5191, %block_4219dd ]
  %5466 = phi i64 [ %5438, %block_421a7a ], [ %.pre126, %block_4219dd ]
  %5467 = add i64 %5466, -28
  %5468 = add i64 %5465, 3
  store i64 %5468, i64* %3, align 8
  %5469 = inttoptr i64 %5467 to i32*
  %5470 = load i32, i32* %5469, align 4
  %5471 = add i32 %5470, 20
  %5472 = lshr i32 %5471, 31
  %5473 = add i32 %5470, 21
  %5474 = zext i32 %5473 to i64
  store i64 %5474, i64* %RAX.i1786, align 8
  %5475 = icmp eq i32 %5471, -1
  %5476 = icmp eq i32 %5473, 0
  %5477 = or i1 %5475, %5476
  %5478 = zext i1 %5477 to i8
  store i8 %5478, i8* %14, align 1
  %5479 = and i32 %5473, 255
  %5480 = tail call i32 @llvm.ctpop.i32(i32 %5479)
  %5481 = trunc i32 %5480 to i8
  %5482 = and i8 %5481, 1
  %5483 = xor i8 %5482, 1
  store i8 %5483, i8* %21, align 1
  %5484 = xor i32 %5473, %5471
  %5485 = lshr i32 %5484, 4
  %5486 = trunc i32 %5485 to i8
  %5487 = and i8 %5486, 1
  store i8 %5487, i8* %26, align 1
  %5488 = zext i1 %5476 to i8
  store i8 %5488, i8* %29, align 1
  %5489 = lshr i32 %5473, 31
  %5490 = trunc i32 %5489 to i8
  store i8 %5490, i8* %32, align 1
  %5491 = xor i32 %5489, %5472
  %5492 = add nuw nsw i32 %5491, %5489
  %5493 = icmp eq i32 %5492, 2
  %5494 = zext i1 %5493 to i8
  store i8 %5494, i8* %38, align 1
  %5495 = add i64 %5466, -1496
  %5496 = add i64 %5465, 15
  store i64 %5496, i64* %3, align 8
  %5497 = inttoptr i64 %5495 to i32*
  %5498 = load i32, i32* %5497, align 4
  %5499 = zext i32 %5498 to i64
  store i64 %5499, i64* %RCX.i1775.pre-phi, align 8
  %5500 = add i32 %5498, 1
  %5501 = zext i32 %5500 to i64
  store i64 %5501, i64* %RDX.i1837, align 8
  %5502 = icmp eq i32 %5498, -1
  %5503 = icmp eq i32 %5500, 0
  %5504 = or i1 %5502, %5503
  %5505 = zext i1 %5504 to i8
  store i8 %5505, i8* %14, align 1
  %5506 = and i32 %5500, 255
  %5507 = tail call i32 @llvm.ctpop.i32(i32 %5506)
  %5508 = trunc i32 %5507 to i8
  %5509 = and i8 %5508, 1
  %5510 = xor i8 %5509, 1
  store i8 %5510, i8* %21, align 1
  %5511 = xor i32 %5500, %5498
  %5512 = lshr i32 %5511, 4
  %5513 = trunc i32 %5512 to i8
  %5514 = and i8 %5513, 1
  store i8 %5514, i8* %26, align 1
  %5515 = zext i1 %5503 to i8
  store i8 %5515, i8* %29, align 1
  %5516 = lshr i32 %5500, 31
  %5517 = trunc i32 %5516 to i8
  store i8 %5517, i8* %32, align 1
  %5518 = lshr i32 %5498, 31
  %5519 = xor i32 %5516, %5518
  %5520 = add nuw nsw i32 %5519, %5516
  %5521 = icmp eq i32 %5520, 2
  %5522 = zext i1 %5521 to i8
  store i8 %5522, i8* %38, align 1
  %5523 = load i64, i64* %RBP.i, align 8
  %5524 = add i64 %5523, -1496
  %5525 = add i64 %5465, 26
  store i64 %5525, i64* %3, align 8
  %5526 = inttoptr i64 %5524 to i32*
  store i32 %5500, i32* %5526, align 4
  %5527 = load i32, i32* %ECX.i1772.pre-phi, align 4
  %5528 = load i64, i64* %3, align 8
  %5529 = sext i32 %5527 to i64
  store i64 %5529, i64* %RSI.i1742.pre-phi, align 8
  %5530 = load i64, i64* %RBP.i, align 8
  %5531 = shl nsw i64 %5529, 2
  %5532 = add nsw i64 %5531, -1488
  %5533 = add i64 %5532, %5530
  %5534 = load i32, i32* %EAX.i1827, align 4
  %5535 = add i64 %5528, 10
  store i64 %5535, i64* %3, align 8
  %5536 = inttoptr i64 %5533 to i32*
  store i32 %5534, i32* %5536, align 4
  %5537 = load i64, i64* %RBP.i, align 8
  %5538 = add i64 %5537, -28
  %5539 = load i64, i64* %3, align 8
  %5540 = add i64 %5539, 3
  store i64 %5540, i64* %3, align 8
  %5541 = inttoptr i64 %5538 to i32*
  %5542 = load i32, i32* %5541, align 4
  %5543 = add i32 %5542, 20
  %5544 = lshr i32 %5543, 31
  %5545 = add i32 %5542, 21
  %5546 = zext i32 %5545 to i64
  store i64 %5546, i64* %RAX.i1786, align 8
  %5547 = icmp eq i32 %5543, -1
  %5548 = icmp eq i32 %5545, 0
  %5549 = or i1 %5547, %5548
  %5550 = zext i1 %5549 to i8
  store i8 %5550, i8* %14, align 1
  %5551 = and i32 %5545, 255
  %5552 = tail call i32 @llvm.ctpop.i32(i32 %5551)
  %5553 = trunc i32 %5552 to i8
  %5554 = and i8 %5553, 1
  %5555 = xor i8 %5554, 1
  store i8 %5555, i8* %21, align 1
  %5556 = xor i32 %5545, %5543
  %5557 = lshr i32 %5556, 4
  %5558 = trunc i32 %5557 to i8
  %5559 = and i8 %5558, 1
  store i8 %5559, i8* %26, align 1
  %5560 = zext i1 %5548 to i8
  store i8 %5560, i8* %29, align 1
  %5561 = lshr i32 %5545, 31
  %5562 = trunc i32 %5561 to i8
  store i8 %5562, i8* %32, align 1
  %5563 = xor i32 %5561, %5544
  %5564 = add nuw nsw i32 %5563, %5561
  %5565 = icmp eq i32 %5564, 2
  %5566 = zext i1 %5565 to i8
  store i8 %5566, i8* %38, align 1
  %5567 = sext i32 %5545 to i64
  store i64 %5567, i64* %RSI.i1742.pre-phi, align 8
  %5568 = shl nsw i64 %5567, 2
  %5569 = add nsw i64 %5568, 11204272
  %5570 = add i64 %5539, 23
  store i64 %5570, i64* %3, align 8
  %5571 = inttoptr i64 %5569 to i32*
  store i32 1, i32* %5571, align 4
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_421ad8

block_.L_421ad8:                                  ; preds = %block_4219fa, %block_4219c3, %block_4219a9, %block_.L_42198f, %block_.L_421a9d, %block_421a7a, %block_421a5a, %block_421a37, %block_421a17
  %5572 = phi i64 [ %.pre127, %block_.L_421a9d ], [ %5464, %block_421a7a ], [ %5401, %block_421a5a ], [ %5349, %block_421a37 ], [ %5286, %block_421a17 ], [ %5233, %block_4219fa ], [ %5129, %block_4219c3 ], [ %5087, %block_4219a9 ], [ %5048, %block_.L_42198f ]
  %5573 = add i64 %5572, 5
  store i64 %5573, i64* %3, align 8
  br label %block_.L_421add

block_.L_421add:                                  ; preds = %block_.L_4215a7, %block_.L_421ad8
  %5574 = phi i64 [ %5573, %block_.L_421ad8 ], [ %3331, %block_.L_4215a7 ]
  %5575 = add i64 %5574, 5
  store i64 %5575, i64* %3, align 8
  br label %block_.L_421ae2

block_.L_421ae2:                                  ; preds = %block_.L_421add, %block_42105e
  %storemerge = phi i64 [ %831, %block_42105e ], [ %5575, %block_.L_421add ]
  %5576 = add i64 %storemerge, -2922
  br label %block_.L_420f78.backedge

block_.L_421ae7:                                  ; preds = %block_.L_420f78
  %5577 = add i64 %402, -1504
  %5578 = add i64 %438, 11
  store i64 %5578, i64* %3, align 8
  %5579 = inttoptr i64 %5577 to i32*
  %5580 = load i32, i32* %5579, align 4
  %5581 = add i32 %5580, 1
  %5582 = zext i32 %5581 to i64
  store i64 %5582, i64* %RAX.i1786, align 8
  %5583 = icmp eq i32 %5580, -1
  %5584 = icmp eq i32 %5581, 0
  %5585 = or i1 %5583, %5584
  %5586 = zext i1 %5585 to i8
  store i8 %5586, i8* %14, align 1
  %5587 = and i32 %5581, 255
  %5588 = tail call i32 @llvm.ctpop.i32(i32 %5587)
  %5589 = trunc i32 %5588 to i8
  %5590 = and i8 %5589, 1
  %5591 = xor i8 %5590, 1
  store i8 %5591, i8* %21, align 1
  %5592 = xor i32 %5581, %5580
  %5593 = lshr i32 %5592, 4
  %5594 = trunc i32 %5593 to i8
  %5595 = and i8 %5594, 1
  store i8 %5595, i8* %26, align 1
  %5596 = zext i1 %5584 to i8
  store i8 %5596, i8* %29, align 1
  %5597 = lshr i32 %5581, 31
  %5598 = trunc i32 %5597 to i8
  store i8 %5598, i8* %32, align 1
  %5599 = lshr i32 %5580, 31
  %5600 = xor i32 %5597, %5599
  %5601 = add nuw nsw i32 %5600, %5597
  %5602 = icmp eq i32 %5601, 2
  %5603 = zext i1 %5602 to i8
  store i8 %5603, i8* %38, align 1
  %5604 = add i64 %438, 20
  store i64 %5604, i64* %3, align 8
  store i32 %5581, i32* %5579, align 4
  %5605 = load i64, i64* %3, align 8
  %5606 = add i64 %5605, -2972
  store i64 %5606, i64* %3, align 8
  br label %block_.L_420f5f

block_.L_421b00:                                  ; preds = %block_.L_420f5f
  %5607 = add i64 %364, -32
  %5608 = add i64 %392, 7
  store i64 %5608, i64* %3, align 8
  %5609 = inttoptr i64 %5607 to i32*
  store i32 0, i32* %5609, align 4
  %RCX.i80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i76 = bitcast %union.anon* %5610 to i32*
  %5611 = getelementptr inbounds %union.anon, %union.anon* %5610, i64 0, i32 0
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i49 = bitcast %union.anon* %5613 to i32*
  %5614 = getelementptr inbounds %union.anon, %union.anon* %5613, i64 0, i32 0
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_421b07

block_.L_421b07:                                  ; preds = %block_.L_421bbb, %block_.L_421b00
  %5615 = phi i64 [ %.pre128, %block_.L_421b00 ], [ %5899, %block_.L_421bbb ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.2, %block_.L_421b00 ], [ %MEMORY.29, %block_.L_421bbb ]
  %5616 = load i64, i64* %RBP.i, align 8
  %5617 = add i64 %5616, -32
  %5618 = add i64 %5615, 3
  store i64 %5618, i64* %3, align 8
  %5619 = inttoptr i64 %5617 to i32*
  %5620 = load i32, i32* %5619, align 4
  %5621 = zext i32 %5620 to i64
  store i64 %5621, i64* %RAX.i1786, align 8
  %5622 = add i64 %5616, -1496
  %5623 = add i64 %5615, 9
  store i64 %5623, i64* %3, align 8
  %5624 = inttoptr i64 %5622 to i32*
  %5625 = load i32, i32* %5624, align 4
  %5626 = sub i32 %5620, %5625
  %5627 = icmp ult i32 %5620, %5625
  %5628 = zext i1 %5627 to i8
  store i8 %5628, i8* %14, align 1
  %5629 = and i32 %5626, 255
  %5630 = tail call i32 @llvm.ctpop.i32(i32 %5629)
  %5631 = trunc i32 %5630 to i8
  %5632 = and i8 %5631, 1
  %5633 = xor i8 %5632, 1
  store i8 %5633, i8* %21, align 1
  %5634 = xor i32 %5625, %5620
  %5635 = xor i32 %5634, %5626
  %5636 = lshr i32 %5635, 4
  %5637 = trunc i32 %5636 to i8
  %5638 = and i8 %5637, 1
  store i8 %5638, i8* %26, align 1
  %5639 = icmp eq i32 %5626, 0
  %5640 = zext i1 %5639 to i8
  store i8 %5640, i8* %29, align 1
  %5641 = lshr i32 %5626, 31
  %5642 = trunc i32 %5641 to i8
  store i8 %5642, i8* %32, align 1
  %5643 = lshr i32 %5620, 31
  %5644 = lshr i32 %5625, 31
  %5645 = xor i32 %5644, %5643
  %5646 = xor i32 %5641, %5643
  %5647 = add nuw nsw i32 %5646, %5645
  %5648 = icmp eq i32 %5647, 2
  %5649 = zext i1 %5648 to i8
  store i8 %5649, i8* %38, align 1
  %5650 = icmp ne i8 %5642, 0
  %5651 = xor i1 %5650, %5648
  %.v149 = select i1 %5651, i64 15, i64 217
  %5652 = add i64 %5615, %.v149
  store i64 %5652, i64* %3, align 8
  br i1 %5651, label %block_421b16, label %block_.L_421be0

block_421b16:                                     ; preds = %block_.L_421b07
  %5653 = add i64 %5652, 4
  store i64 %5653, i64* %3, align 8
  %5654 = load i32, i32* %5619, align 4
  %5655 = sext i32 %5654 to i64
  store i64 %5655, i64* %RAX.i1786, align 8
  %5656 = shl nsw i64 %5655, 2
  %5657 = add i64 %5616, -1488
  %5658 = add i64 %5657, %5656
  %5659 = add i64 %5652, 12
  store i64 %5659, i64* %3, align 8
  %5660 = inttoptr i64 %5658 to i32*
  %5661 = load i32, i32* %5660, align 4
  %5662 = sext i32 %5661 to i64
  store i64 %5662, i64* %RAX.i1786, align 8
  %5663 = shl nsw i64 %5662, 2
  %5664 = add nsw i64 %5663, 11204272
  %5665 = add i64 %5652, 20
  store i64 %5665, i64* %3, align 8
  %5666 = inttoptr i64 %5664 to i32*
  %5667 = load i32, i32* %5666, align 4
  %5668 = add i32 %5667, -1
  %5669 = icmp eq i32 %5667, 0
  %5670 = zext i1 %5669 to i8
  store i8 %5670, i8* %14, align 1
  %5671 = and i32 %5668, 255
  %5672 = tail call i32 @llvm.ctpop.i32(i32 %5671)
  %5673 = trunc i32 %5672 to i8
  %5674 = and i8 %5673, 1
  %5675 = xor i8 %5674, 1
  store i8 %5675, i8* %21, align 1
  %5676 = xor i32 %5668, %5667
  %5677 = lshr i32 %5676, 4
  %5678 = trunc i32 %5677 to i8
  %5679 = and i8 %5678, 1
  store i8 %5679, i8* %26, align 1
  %5680 = icmp eq i32 %5668, 0
  %5681 = zext i1 %5680 to i8
  store i8 %5681, i8* %29, align 1
  %5682 = lshr i32 %5668, 31
  %5683 = trunc i32 %5682 to i8
  store i8 %5683, i8* %32, align 1
  %5684 = lshr i32 %5667, 31
  %5685 = xor i32 %5682, %5684
  %5686 = add nuw nsw i32 %5685, %5684
  %5687 = icmp eq i32 %5686, 2
  %5688 = zext i1 %5687 to i8
  store i8 %5688, i8* %38, align 1
  %.v150 = select i1 %5680, i64 26, i64 31
  %5689 = add i64 %5652, %.v150
  store i64 %5689, i64* %3, align 8
  br i1 %5680, label %block_421b30, label %block_.L_421b35

block_421b30:                                     ; preds = %block_421b16
  %5690 = add i64 %5689, 139
  store i64 %5690, i64* %3, align 8
  br label %block_.L_421bbb

block_.L_421b35:                                  ; preds = %block_421b16
  store i64 ptrtoint (%G__0x57ad9b_type* @G__0x57ad9b to i64), i64* %RDI.i1843, align 8
  store i64 1853, i64* %RSI.i1742.pre-phi, align 8
  store i64 ptrtoint (%G__0x57b2ac_type* @G__0x57b2ac to i64), i64* %RDX.i1837, align 8
  store i64 20, i64* %RAX.i1786, align 8
  %5691 = add i64 %5689, 34
  store i64 %5691, i64* %3, align 8
  %5692 = load i32, i32* %5619, align 4
  %5693 = sext i32 %5692 to i64
  store i64 %5693, i64* %RCX.i80, align 8
  %5694 = shl nsw i64 %5693, 2
  %5695 = add i64 %5657, %5694
  %5696 = add i64 %5689, 42
  store i64 %5696, i64* %3, align 8
  %5697 = inttoptr i64 %5695 to i32*
  %5698 = load i32, i32* %5697, align 4
  %5699 = zext i32 %5698 to i64
  store i64 %5699, i64* %5611, align 8
  %5700 = add i64 %5616, -1516
  %5701 = add i64 %5689, 48
  store i64 %5701, i64* %3, align 8
  %5702 = inttoptr i64 %5700 to i32*
  store i32 20, i32* %5702, align 4
  %5703 = load i32, i32* %R8D.i76, align 4
  %5704 = zext i32 %5703 to i64
  %5705 = load i64, i64* %3, align 8
  store i64 %5704, i64* %RAX.i1786, align 8
  %5706 = load i64, i64* %RBP.i, align 8
  %5707 = add i64 %5706, -1528
  %5708 = load i64, i64* %RDX.i1837, align 8
  %5709 = add i64 %5705, 10
  store i64 %5709, i64* %3, align 8
  %5710 = inttoptr i64 %5707 to i64*
  store i64 %5708, i64* %5710, align 8
  %5711 = load i64, i64* %3, align 8
  %5712 = load i32, i32* %EAX.i1827, align 8
  %5713 = sext i32 %5712 to i64
  %5714 = lshr i64 %5713, 32
  store i64 %5714, i64* %5612, align 8
  %5715 = load i64, i64* %RBP.i, align 8
  %5716 = add i64 %5715, -1516
  %5717 = add i64 %5711, 8
  store i64 %5717, i64* %3, align 8
  %5718 = inttoptr i64 %5716 to i32*
  %5719 = load i32, i32* %5718, align 4
  %5720 = zext i32 %5719 to i64
  store i64 %5720, i64* %5611, align 8
  %5721 = add i64 %5711, 11
  store i64 %5721, i64* %3, align 8
  %5722 = zext i32 %5712 to i64
  %5723 = sext i32 %5719 to i64
  %5724 = shl nuw i64 %5714, 32
  %5725 = or i64 %5724, %5722
  %5726 = sdiv i64 %5725, %5723
  %5727 = shl i64 %5726, 32
  %5728 = ashr exact i64 %5727, 32
  %5729 = icmp eq i64 %5726, %5728
  br i1 %5729, label %5732, label %5730

; <label>:5730:                                   ; preds = %block_.L_421b35
  %5731 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5721, %struct.Memory* %MEMORY.28)
  %.pre129 = load i64, i64* %RAX.i1786, align 8
  %.pre130 = load i64, i64* %3, align 8
  %.pre131 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r8d.exit59

; <label>:5732:                                   ; preds = %block_.L_421b35
  %5733 = srem i64 %5725, %5723
  %5734 = and i64 %5726, 4294967295
  store i64 %5734, i64* %RAX.i1786, align 8
  %5735 = and i64 %5733, 4294967295
  store i64 %5735, i64* %RDX.i1837, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__r8d.exit59

routine_idivl__r8d.exit59:                        ; preds = %5732, %5730
  %5736 = phi i64 [ %.pre131, %5730 ], [ %5715, %5732 ]
  %5737 = phi i64 [ %.pre130, %5730 ], [ %5721, %5732 ]
  %5738 = phi i64 [ %.pre129, %5730 ], [ %5734, %5732 ]
  %5739 = phi %struct.Memory* [ %5731, %5730 ], [ %MEMORY.28, %5732 ]
  %5740 = trunc i64 %5738 to i32
  %5741 = add i32 %5740, -1
  %5742 = zext i32 %5741 to i64
  store i64 %5742, i64* %RAX.i1786, align 8
  %5743 = icmp eq i32 %5740, 0
  %5744 = zext i1 %5743 to i8
  store i8 %5744, i8* %14, align 1
  %5745 = and i32 %5741, 255
  %5746 = tail call i32 @llvm.ctpop.i32(i32 %5745)
  %5747 = trunc i32 %5746 to i8
  %5748 = and i8 %5747, 1
  %5749 = xor i8 %5748, 1
  store i8 %5749, i8* %21, align 1
  %5750 = xor i32 %5741, %5740
  %5751 = lshr i32 %5750, 4
  %5752 = trunc i32 %5751 to i8
  %5753 = and i8 %5752, 1
  store i8 %5753, i8* %26, align 1
  %5754 = icmp eq i32 %5741, 0
  %5755 = zext i1 %5754 to i8
  store i8 %5755, i8* %29, align 1
  %5756 = lshr i32 %5741, 31
  %5757 = trunc i32 %5756 to i8
  store i8 %5757, i8* %32, align 1
  %5758 = lshr i32 %5740, 31
  %5759 = xor i32 %5756, %5758
  %5760 = add nuw nsw i32 %5759, %5758
  %5761 = icmp eq i32 %5760, 2
  %5762 = zext i1 %5761 to i8
  store i8 %5762, i8* %38, align 1
  %5763 = add i64 %5736, -32
  %5764 = add i64 %5737, 7
  store i64 %5764, i64* %3, align 8
  %5765 = inttoptr i64 %5763 to i32*
  %5766 = load i32, i32* %5765, align 4
  %5767 = sext i32 %5766 to i64
  store i64 %5767, i64* %RCX.i80, align 8
  %5768 = shl nsw i64 %5767, 2
  %5769 = add i64 %5736, -1488
  %5770 = add i64 %5769, %5768
  %5771 = add i64 %5737, 15
  store i64 %5771, i64* %3, align 8
  %5772 = inttoptr i64 %5770 to i32*
  %5773 = load i32, i32* %5772, align 4
  %5774 = zext i32 %5773 to i64
  store i64 %5774, i64* %5614, align 8
  %5775 = add i64 %5736, -1532
  %5776 = add i64 %5737, 21
  store i64 %5776, i64* %3, align 8
  %5777 = inttoptr i64 %5775 to i32*
  store i32 %5741, i32* %5777, align 4
  %5778 = load i32, i32* %R9D.i49, align 4
  %5779 = zext i32 %5778 to i64
  %5780 = load i64, i64* %3, align 8
  store i64 %5779, i64* %RAX.i1786, align 8
  %5781 = sext i32 %5778 to i64
  %5782 = lshr i64 %5781, 32
  store i64 %5782, i64* %5612, align 8
  %5783 = load i32, i32* %R8D.i76, align 4
  %5784 = add i64 %5780, 7
  store i64 %5784, i64* %3, align 8
  %5785 = sext i32 %5783 to i64
  %5786 = shl nuw i64 %5782, 32
  %5787 = or i64 %5786, %5779
  %5788 = sdiv i64 %5787, %5785
  %5789 = shl i64 %5788, 32
  %5790 = ashr exact i64 %5789, 32
  %5791 = icmp eq i64 %5788, %5790
  br i1 %5791, label %5794, label %5792

; <label>:5792:                                   ; preds = %routine_idivl__r8d.exit59
  %5793 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5784, %struct.Memory* %5739)
  %.pre132 = load i64, i64* %RDX.i1837, align 8
  %.pre133 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit

; <label>:5794:                                   ; preds = %routine_idivl__r8d.exit59
  %5795 = srem i64 %5787, %5785
  %5796 = and i64 %5788, 4294967295
  store i64 %5796, i64* %RAX.i1786, align 8
  %5797 = and i64 %5795, 4294967295
  store i64 %5797, i64* %RDX.i1837, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %5794, %5792
  %5798 = phi i64 [ %.pre133, %5792 ], [ %5784, %5794 ]
  %5799 = phi i64 [ %.pre132, %5792 ], [ %5797, %5794 ]
  %5800 = phi %struct.Memory* [ %5793, %5792 ], [ %5739, %5794 ]
  %5801 = trunc i64 %5799 to i32
  %5802 = add i32 %5801, -1
  %5803 = zext i32 %5802 to i64
  store i64 %5803, i64* %RDX.i1837, align 8
  %5804 = icmp eq i32 %5801, 0
  %5805 = zext i1 %5804 to i8
  store i8 %5805, i8* %14, align 1
  %5806 = and i32 %5802, 255
  %5807 = tail call i32 @llvm.ctpop.i32(i32 %5806)
  %5808 = trunc i32 %5807 to i8
  %5809 = and i8 %5808, 1
  %5810 = xor i8 %5809, 1
  store i8 %5810, i8* %21, align 1
  %5811 = xor i32 %5802, %5801
  %5812 = lshr i32 %5811, 4
  %5813 = trunc i32 %5812 to i8
  %5814 = and i8 %5813, 1
  store i8 %5814, i8* %26, align 1
  %5815 = icmp eq i32 %5802, 0
  %5816 = zext i1 %5815 to i8
  store i8 %5816, i8* %29, align 1
  %5817 = lshr i32 %5802, 31
  %5818 = trunc i32 %5817 to i8
  store i8 %5818, i8* %32, align 1
  %5819 = lshr i32 %5801, 31
  %5820 = xor i32 %5817, %5819
  %5821 = add nuw nsw i32 %5820, %5819
  %5822 = icmp eq i32 %5821, 2
  %5823 = zext i1 %5822 to i8
  store i8 %5823, i8* %38, align 1
  %5824 = load i64, i64* %RBP.i, align 8
  %5825 = add i64 %5824, -1528
  %5826 = add i64 %5798, 10
  store i64 %5826, i64* %3, align 8
  %5827 = inttoptr i64 %5825 to i64*
  %5828 = load i64, i64* %5827, align 8
  store i64 %5828, i64* %RCX.i80, align 8
  %5829 = add i64 %5824, -1536
  %5830 = add i64 %5798, 16
  store i64 %5830, i64* %3, align 8
  %5831 = inttoptr i64 %5829 to i32*
  store i32 %5802, i32* %5831, align 4
  %5832 = load i64, i64* %RCX.i80, align 8
  %5833 = load i64, i64* %3, align 8
  store i64 %5832, i64* %RDX.i1837, align 8
  %5834 = load i64, i64* %RBP.i, align 8
  %5835 = add i64 %5834, -1532
  %5836 = add i64 %5833, 9
  store i64 %5836, i64* %3, align 8
  %5837 = inttoptr i64 %5835 to i32*
  %5838 = load i32, i32* %5837, align 4
  %5839 = zext i32 %5838 to i64
  store i64 %5839, i64* %RCX.i80, align 8
  %5840 = add i64 %5834, -1536
  %5841 = add i64 %5833, 16
  store i64 %5841, i64* %3, align 8
  %5842 = inttoptr i64 %5840 to i32*
  %5843 = load i32, i32* %5842, align 4
  %5844 = zext i32 %5843 to i64
  store i64 %5844, i64* %5611, align 8
  %5845 = add i64 %5833, 197866
  %5846 = add i64 %5833, 21
  %5847 = load i64, i64* %6, align 8
  %5848 = add i64 %5847, -8
  %5849 = inttoptr i64 %5848 to i64*
  store i64 %5846, i64* %5849, align 8
  store i64 %5848, i64* %6, align 8
  store i64 %5845, i64* %3, align 8
  %call2_421bb6 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %5845, %struct.Memory* %5800)
  %.pre134 = load i64, i64* %RBP.i, align 8
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_421bbb

block_.L_421bbb:                                  ; preds = %routine_idivl__r8d.exit, %block_421b30
  %5850 = phi i64 [ %.pre135, %routine_idivl__r8d.exit ], [ %5690, %block_421b30 ]
  %5851 = phi i64 [ %.pre134, %routine_idivl__r8d.exit ], [ %5616, %block_421b30 ]
  %MEMORY.29 = phi %struct.Memory* [ %call2_421bb6, %routine_idivl__r8d.exit ], [ %MEMORY.28, %block_421b30 ]
  %5852 = add i64 %5851, -32
  %5853 = add i64 %5850, 4
  store i64 %5853, i64* %3, align 8
  %5854 = inttoptr i64 %5852 to i32*
  %5855 = load i32, i32* %5854, align 4
  %5856 = sext i32 %5855 to i64
  store i64 %5856, i64* %RAX.i1786, align 8
  %5857 = shl nsw i64 %5856, 2
  %5858 = add i64 %5851, -1488
  %5859 = add i64 %5858, %5857
  %5860 = add i64 %5850, 12
  store i64 %5860, i64* %3, align 8
  %5861 = inttoptr i64 %5859 to i32*
  %5862 = load i32, i32* %5861, align 4
  %5863 = sext i32 %5862 to i64
  store i64 %5863, i64* %RAX.i1786, align 8
  %5864 = shl nsw i64 %5863, 2
  %5865 = add nsw i64 %5864, 11204272
  %5866 = add i64 %5850, 23
  store i64 %5866, i64* %3, align 8
  %5867 = inttoptr i64 %5865 to i32*
  store i32 0, i32* %5867, align 4
  %5868 = load i64, i64* %RBP.i, align 8
  %5869 = add i64 %5868, -32
  %5870 = load i64, i64* %3, align 8
  %5871 = add i64 %5870, 3
  store i64 %5871, i64* %3, align 8
  %5872 = inttoptr i64 %5869 to i32*
  %5873 = load i32, i32* %5872, align 4
  %5874 = add i32 %5873, 1
  %5875 = zext i32 %5874 to i64
  store i64 %5875, i64* %RAX.i1786, align 8
  %5876 = icmp eq i32 %5873, -1
  %5877 = icmp eq i32 %5874, 0
  %5878 = or i1 %5876, %5877
  %5879 = zext i1 %5878 to i8
  store i8 %5879, i8* %14, align 1
  %5880 = and i32 %5874, 255
  %5881 = tail call i32 @llvm.ctpop.i32(i32 %5880)
  %5882 = trunc i32 %5881 to i8
  %5883 = and i8 %5882, 1
  %5884 = xor i8 %5883, 1
  store i8 %5884, i8* %21, align 1
  %5885 = xor i32 %5874, %5873
  %5886 = lshr i32 %5885, 4
  %5887 = trunc i32 %5886 to i8
  %5888 = and i8 %5887, 1
  store i8 %5888, i8* %26, align 1
  %5889 = zext i1 %5877 to i8
  store i8 %5889, i8* %29, align 1
  %5890 = lshr i32 %5874, 31
  %5891 = trunc i32 %5890 to i8
  store i8 %5891, i8* %32, align 1
  %5892 = lshr i32 %5873, 31
  %5893 = xor i32 %5890, %5892
  %5894 = add nuw nsw i32 %5893, %5890
  %5895 = icmp eq i32 %5894, 2
  %5896 = zext i1 %5895 to i8
  store i8 %5896, i8* %38, align 1
  %5897 = add i64 %5870, 9
  store i64 %5897, i64* %3, align 8
  store i32 %5874, i32* %5872, align 4
  %5898 = load i64, i64* %3, align 8
  %5899 = add i64 %5898, -212
  store i64 %5899, i64* %3, align 8
  br label %block_.L_421b07

block_.L_421be0:                                  ; preds = %block_.L_421b07
  %5900 = add i64 %5616, -1508
  %5901 = add i64 %5652, 6
  store i64 %5901, i64* %3, align 8
  %5902 = inttoptr i64 %5900 to i32*
  %5903 = load i32, i32* %5902, align 4
  %5904 = zext i32 %5903 to i64
  store i64 %5904, i64* %RAX.i1786, align 8
  %5905 = load i64, i64* %6, align 8
  %5906 = add i64 %5905, 1536
  store i64 %5906, i64* %6, align 8
  %5907 = icmp ugt i64 %5905, -1537
  %5908 = zext i1 %5907 to i8
  store i8 %5908, i8* %14, align 1
  %5909 = trunc i64 %5906 to i32
  %5910 = and i32 %5909, 255
  %5911 = tail call i32 @llvm.ctpop.i32(i32 %5910)
  %5912 = trunc i32 %5911 to i8
  %5913 = and i8 %5912, 1
  %5914 = xor i8 %5913, 1
  store i8 %5914, i8* %21, align 1
  %5915 = xor i64 %5906, %5905
  %5916 = lshr i64 %5915, 4
  %5917 = trunc i64 %5916 to i8
  %5918 = and i8 %5917, 1
  store i8 %5918, i8* %26, align 1
  %5919 = icmp eq i64 %5906, 0
  %5920 = zext i1 %5919 to i8
  store i8 %5920, i8* %29, align 1
  %5921 = lshr i64 %5906, 63
  %5922 = trunc i64 %5921 to i8
  store i8 %5922, i8* %32, align 1
  %5923 = lshr i64 %5905, 63
  %5924 = xor i64 %5921, %5923
  %5925 = add nuw nsw i64 %5924, %5921
  %5926 = icmp eq i64 %5925, 2
  %5927 = zext i1 %5926 to i8
  store i8 %5927, i8* %38, align 1
  %5928 = add i64 %5652, 14
  store i64 %5928, i64* %3, align 8
  %5929 = add i64 %5905, 1544
  %5930 = inttoptr i64 %5906 to i64*
  %5931 = load i64, i64* %5930, align 8
  store i64 %5931, i64* %RBP.i, align 8
  store i64 %5929, i64* %6, align 8
  %5932 = add i64 %5652, 15
  store i64 %5932, i64* %3, align 8
  %5933 = inttoptr i64 %5929 to i64*
  %5934 = load i64, i64* %5933, align 8
  store i64 %5934, i64* %3, align 8
  %5935 = add i64 %5905, 1552
  store i64 %5935, i64* %6, align 8
  ret %struct.Memory* %MEMORY.28
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
define %struct.Memory* @routine_subq__0x600___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1536
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1536
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
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x5d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1492
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_movl__eax__MINUS0x5dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1500
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1508
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_420e76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_420e7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_420ea3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57ad9b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57ad9b_type* @G__0x57ad9b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6b9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1721, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57b28d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57b28d_type* @G__0x57b28d to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
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
define %struct.Memory* @routine_cmpl__0x0__0xaaf6a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xaaf6a0_type* @G_0xaaf6a0 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_420ed7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xaaf6b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xaaf6b0_type* @G__0xaaf6b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x1__0xaaf6a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0xaaf6a0_type* @G_0xaaf6a0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jge_.L_420f55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_420f42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x5d8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1496
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
define %struct.Memory* @routine_movl__edx__MINUS0x5d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1496
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x5d0__rbp__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1488
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0xaaf6b0___rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11204272
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420f47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_420ede(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x5e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jg_.L_421b00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5d8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1496
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
define %struct.Memory* @routine_movl__eax__MINUS0x5e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1512
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5d4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1492
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
define %struct.Memory* @routine_cmpl_MINUS0x5e8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1512
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
define %struct.Memory* @routine_jge_.L_421ae7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5d4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1492
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
define %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x5d4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1492
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
define %struct.Memory* @routine_movl__ecx__MINUS0x5d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1492
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_420ffb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb9a0a0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb9a0a0_type* @G__0xb9a0a0 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movsbl_0x1d__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 29
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 2
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_jne_.L_42104c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_0x20__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_je_.L_42104c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421051(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb01180___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb01180_type* @G__0xb01180 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420f78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42107b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x5e4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1508
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x5e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1508
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421ae2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_4211c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xaaf6b0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11204272
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
define %struct.Memory* @routine_jne_.L_4211c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_je_.L_421191(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1500
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x28___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 40
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -41
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
define %struct.Memory* @routine_je_.L_421311(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421311(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4212dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 2
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
define %struct.Memory* @routine_je_.L_42145c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42145c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_421427(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x28___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -40
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 40
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
define %struct.Memory* @routine_je_.L_4215a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4215a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_421572(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -3
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x5e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1504
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
define %struct.Memory* @routine_jne_.L_421add(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4216fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4216c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4216fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421846(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42180b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_421846(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42198f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_421954(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42198f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_421ad8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_421a9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_421ad8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_421add(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_421aec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5e0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1504
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
define %struct.Memory* @routine_movl__eax__MINUS0x5e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1504
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_420f5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x5d8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1496
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
define %struct.Memory* @routine_jge_.L_421be0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1488
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0xaaf6b0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11204272
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
define %struct.Memory* @routine_jne_.L_421b35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_421bbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x73d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1853, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57b2ac___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57b2ac_type* @G__0x57b2ac to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rcx_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1488
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1516
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x5f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1528
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
define %struct.Memory* @routine_movl_MINUS0x5ec__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1516
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R8D, align 4
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
define %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rcx_4____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1488
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1532
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
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
define %struct.Memory* @routine_movq_MINUS0x5f8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1528
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x600__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1536
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x5fc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1532
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
define %struct.Memory* @routine_movl_MINUS0x600__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1536
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
define %struct.Memory* @routine_movl__0x0__0xaaf6b0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11204272
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
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
define %struct.Memory* @routine_jmpq_.L_421b07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5e4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1508
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
define %struct.Memory* @routine_addq__0x600___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1536
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1537
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
