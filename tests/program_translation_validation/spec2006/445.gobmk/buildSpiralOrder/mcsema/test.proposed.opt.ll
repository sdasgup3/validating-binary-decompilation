; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
%G_0xaf3458_type = type <{ [1 x i8] }>
%G__0x579b60_type = type <{ [8 x i8] }>
%G__0x588751_type = type <{ [8 x i8] }>
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
@G_0x99c0a0 = local_unnamed_addr global %G_0x99c0a0_type zeroinitializer
@G_0xaf3458 = local_unnamed_addr global %G_0xaf3458_type zeroinitializer
@G__0x579b60 = global %G__0x579b60_type zeroinitializer
@G__0x588751 = global %G__0x588751_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @buildSpiralOrder(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -84760
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RDI.i416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %18 = add i64 %7, -16
  %19 = load i64, i64* %RDI.i416, align 8
  %20 = add i64 %10, 14
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %RBP.i, align 8
  %23 = add i64 %22, -84692
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 10
  store i64 %25, i64* %3, align 8
  %26 = inttoptr i64 %23 to i32*
  store i32 0, i32* %26, align 4
  %27 = load i64, i64* %RBP.i, align 8
  %28 = add i64 %27, -84696
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 10
  store i64 %30, i64* %3, align 8
  %31 = inttoptr i64 %28 to i32*
  store i32 0, i32* %31, align 4
  %32 = load i64, i64* %3, align 8
  %33 = load i32, i32* bitcast (%G_0xaf3458_type* @G_0xaf3458 to i32*), align 8
  %34 = add i32 %33, -1
  %35 = icmp eq i32 %33, 0
  %36 = zext i1 %35 to i8
  store i8 %36, i8* %12, align 1
  %37 = and i32 %34, 255
  %38 = tail call i32 @llvm.ctpop.i32(i32 %37)
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = xor i8 %40, 1
  store i8 %41, i8* %13, align 1
  %42 = xor i32 %34, %33
  %43 = lshr i32 %42, 4
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  store i8 %45, i8* %14, align 1
  %46 = icmp eq i32 %34, 0
  %47 = zext i1 %46 to i8
  store i8 %47, i8* %15, align 1
  %48 = lshr i32 %34, 31
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %16, align 1
  %50 = lshr i32 %33, 31
  %51 = xor i32 %48, %50
  %52 = add nuw nsw i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %17, align 1
  %55 = icmp ne i8 %49, 0
  %56 = xor i1 %55, %53
  %57 = or i1 %46, %56
  %.v56 = select i1 %57, i64 45, i64 14
  %58 = add i64 %32, %.v56
  store i64 %58, i64* %3, align 8
  br i1 %57, label %entry.block_.L_4a6a90_crit_edge, label %block_4a6a71

entry.block_.L_4a6a90_crit_edge:                  ; preds = %entry
  %.pre54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre55 = bitcast %union.anon* %.pre54 to i32*
  br label %block_.L_4a6a90

block_4a6a71:                                     ; preds = %entry
  %RSI.i423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 ptrtoint (%G__0x588751_type* @G__0x588751 to i64), i64* %RSI.i423, align 8
  %59 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %59, i64* %RDI.i416, align 8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i = bitcast %union.anon* %60 to i8*
  store i8 0, i8* %AL.i, align 1
  %61 = add i64 %58, -678305
  %62 = add i64 %58, 25
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, -8
  %65 = inttoptr i64 %64 to i64*
  store i64 %62, i64* %65, align 8
  store i64 %64, i64* %6, align 8
  store i64 %61, i64* %3, align 8
  %66 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  %EAX.i413 = bitcast %union.anon* %60 to i32*
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -84732
  %69 = load i32, i32* %EAX.i413, align 4
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 6
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %72, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4a6a90

block_.L_4a6a90:                                  ; preds = %entry.block_.L_4a6a90_crit_edge, %block_4a6a71
  %EAX.i394.pre-phi = phi i32* [ %.pre55, %entry.block_.L_4a6a90_crit_edge ], [ %EAX.i413, %block_4a6a71 ]
  %73 = phi i64 [ %58, %entry.block_.L_4a6a90_crit_edge ], [ %.pre, %block_4a6a71 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry.block_.L_4a6a90_crit_edge ], [ %66, %block_4a6a71 ]
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -84724
  %76 = add i64 %73, 10
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %75 to i32*
  store i32 0, i32* %77, align 4
  %RAX.i405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_4a6a9a

block_.L_4a6a9a:                                  ; preds = %block_4a6aaa, %block_.L_4a6a90
  %78 = phi i64 [ %148, %block_4a6aaa ], [ %.pre34, %block_.L_4a6a90 ]
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -84724
  %81 = add i64 %78, 10
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, -7056
  %85 = icmp ult i32 %83, 7056
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %12, align 1
  %87 = and i32 %84, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87)
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %13, align 1
  %92 = xor i32 %83, 16
  %93 = xor i32 %92, %84
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %14, align 1
  %97 = icmp eq i32 %84, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %15, align 1
  %99 = lshr i32 %84, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %16, align 1
  %101 = lshr i32 %83, 31
  %102 = xor i32 %99, %101
  %103 = add nuw nsw i32 %102, %101
  %104 = icmp eq i32 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %17, align 1
  %106 = icmp ne i8 %100, 0
  %107 = xor i1 %106, %104
  %.v57 = select i1 %107, i64 16, i64 54
  %108 = add i64 %78, %.v57
  store i64 %108, i64* %3, align 8
  br i1 %107, label %block_4a6aaa, label %block_.L_4a6ad0

block_4a6aaa:                                     ; preds = %block_.L_4a6a9a
  %109 = add i64 %108, 7
  store i64 %109, i64* %3, align 8
  %110 = load i32, i32* %82, align 4
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %RAX.i405, align 8
  %112 = shl nsw i64 %111, 2
  %113 = add i64 %79, -28240
  %114 = add i64 %113, %112
  %115 = add i64 %108, 18
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  store i32 1, i32* %116, align 4
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -84724
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 6
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %118 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %122, 1
  %124 = zext i32 %123 to i64
  store i64 %124, i64* %RAX.i405, align 8
  %125 = icmp eq i32 %122, -1
  %126 = icmp eq i32 %123, 0
  %127 = or i1 %125, %126
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %12, align 1
  %129 = and i32 %123, 255
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129)
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  store i8 %133, i8* %13, align 1
  %134 = xor i32 %123, %122
  %135 = lshr i32 %134, 4
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %14, align 1
  %138 = zext i1 %126 to i8
  store i8 %138, i8* %15, align 1
  %139 = lshr i32 %123, 31
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %16, align 1
  %141 = lshr i32 %122, 31
  %142 = xor i32 %139, %141
  %143 = add nuw nsw i32 %142, %139
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %17, align 1
  %146 = add i64 %119, 15
  store i64 %146, i64* %3, align 8
  store i32 %123, i32* %121, align 4
  %147 = load i64, i64* %3, align 8
  %148 = add i64 %147, -49
  store i64 %148, i64* %3, align 8
  br label %block_.L_4a6a9a

block_.L_4a6ad0:                                  ; preds = %block_.L_4a6a9a
  %149 = add i64 %79, -84700
  %150 = add i64 %108, 10
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  store i32 21, i32* %151, align 4
  %RCX.i375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_4a6ada

block_.L_4a6ada:                                  ; preds = %block_.L_4a6b2d, %block_.L_4a6ad0
  %152 = phi i64 [ %332, %block_.L_4a6b2d ], [ %.pre35, %block_.L_4a6ad0 ]
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -84700
  %155 = add i64 %152, 7
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = add i32 %157, -63
  %159 = icmp ult i32 %157, 63
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %12, align 1
  %161 = and i32 %158, 255
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161)
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %13, align 1
  %166 = xor i32 %157, 16
  %167 = xor i32 %166, %158
  %168 = lshr i32 %167, 4
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  store i8 %170, i8* %14, align 1
  %171 = icmp eq i32 %158, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %15, align 1
  %173 = lshr i32 %158, 31
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %16, align 1
  %175 = lshr i32 %157, 31
  %176 = xor i32 %173, %175
  %177 = add nuw nsw i32 %176, %175
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %17, align 1
  %180 = icmp ne i8 %174, 0
  %181 = xor i1 %180, %178
  %.v58 = select i1 %181, i64 13, i64 108
  %182 = add i64 %152, %.v58
  store i64 %182, i64* %3, align 8
  br i1 %181, label %block_4a6ae7, label %block_.L_4a6b46

block_4a6ae7:                                     ; preds = %block_.L_4a6ada
  %183 = add i64 %153, -84704
  %184 = add i64 %182, 10
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i32*
  store i32 21, i32* %185, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_4a6af1

block_.L_4a6af1:                                  ; preds = %block_4a6afe, %block_4a6ae7
  %186 = phi i64 [ %303, %block_4a6afe ], [ %.pre53, %block_4a6ae7 ]
  %187 = load i64, i64* %RBP.i, align 8
  %188 = add i64 %187, -84704
  %189 = add i64 %186, 7
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = add i32 %191, -63
  %193 = icmp ult i32 %191, 63
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %12, align 1
  %195 = and i32 %192, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %13, align 1
  %200 = xor i32 %191, 16
  %201 = xor i32 %200, %192
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %14, align 1
  %205 = icmp eq i32 %192, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %15, align 1
  %207 = lshr i32 %192, 31
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %16, align 1
  %209 = lshr i32 %191, 31
  %210 = xor i32 %207, %209
  %211 = add nuw nsw i32 %210, %209
  %212 = icmp eq i32 %211, 2
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %17, align 1
  %214 = icmp ne i8 %208, 0
  %215 = xor i1 %214, %212
  %.v = select i1 %215, i64 13, i64 60
  %216 = add i64 %186, %.v
  store i64 %216, i64* %3, align 8
  %217 = add i64 %187, -84700
  br i1 %215, label %block_4a6afe, label %block_.L_4a6b2d

block_4a6afe:                                     ; preds = %block_.L_4a6af1
  %218 = add i64 %216, 7
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = mul nsw i64 %221, 84
  %223 = trunc i64 %222 to i32
  %224 = and i64 %222, 4294967292
  store i64 %224, i64* %RAX.i405, align 8
  %225 = mul i64 %221, 360777252864
  %226 = ashr exact i64 %225, 32
  %227 = icmp ne i64 %226, %222
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %12, align 1
  %229 = and i32 %223, 252
  %230 = tail call i32 @llvm.ctpop.i32(i32 %229)
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  store i8 %233, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %234 = lshr i32 %223, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %16, align 1
  store i8 %228, i8* %17, align 1
  %236 = add i64 %216, 13
  store i64 %236, i64* %3, align 8
  %237 = trunc i64 %222 to i32
  %238 = load i32, i32* %190, align 4
  %239 = add i32 %238, %237
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RAX.i405, align 8
  %241 = icmp ult i32 %239, %237
  %242 = icmp ult i32 %239, %238
  %243 = or i1 %241, %242
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %12, align 1
  %245 = and i32 %239, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %13, align 1
  %250 = xor i32 %238, %237
  %251 = xor i32 %250, %239
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  store i8 %254, i8* %14, align 1
  %255 = icmp eq i32 %239, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %15, align 1
  %257 = lshr i32 %239, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %16, align 1
  %259 = lshr i32 %237, 31
  %260 = lshr i32 %238, 31
  %261 = xor i32 %257, %259
  %262 = xor i32 %257, %260
  %263 = add nuw nsw i32 %261, %262
  %264 = icmp eq i32 %263, 2
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %17, align 1
  %266 = sext i32 %239 to i64
  store i64 %266, i64* %RCX.i375, align 8
  %267 = shl nsw i64 %266, 2
  %268 = add nsw i64 %267, -28240
  %269 = add i64 %268, %187
  %270 = add i64 %216, 27
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  store i32 0, i32* %271, align 4
  %272 = load i64, i64* %RBP.i, align 8
  %273 = add i64 %272, -84704
  %274 = load i64, i64* %3, align 8
  %275 = add i64 %274, 6
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %273 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = add i32 %277, 1
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RAX.i405, align 8
  %280 = icmp eq i32 %277, -1
  %281 = icmp eq i32 %278, 0
  %282 = or i1 %280, %281
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %12, align 1
  %284 = and i32 %278, 255
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284)
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  store i8 %288, i8* %13, align 1
  %289 = xor i32 %278, %277
  %290 = lshr i32 %289, 4
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  store i8 %292, i8* %14, align 1
  %293 = zext i1 %281 to i8
  store i8 %293, i8* %15, align 1
  %294 = lshr i32 %278, 31
  %295 = trunc i32 %294 to i8
  store i8 %295, i8* %16, align 1
  %296 = lshr i32 %277, 31
  %297 = xor i32 %294, %296
  %298 = add nuw nsw i32 %297, %294
  %299 = icmp eq i32 %298, 2
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %17, align 1
  %301 = add i64 %274, 15
  store i64 %301, i64* %3, align 8
  store i32 %278, i32* %276, align 4
  %302 = load i64, i64* %3, align 8
  %303 = add i64 %302, -55
  store i64 %303, i64* %3, align 8
  br label %block_.L_4a6af1

block_.L_4a6b2d:                                  ; preds = %block_.L_4a6af1
  %304 = add i64 %216, 11
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %217 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = add i32 %306, 1
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX.i405, align 8
  %309 = icmp eq i32 %306, -1
  %310 = icmp eq i32 %307, 0
  %311 = or i1 %309, %310
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %12, align 1
  %313 = and i32 %307, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %13, align 1
  %318 = xor i32 %307, %306
  %319 = lshr i32 %318, 4
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %14, align 1
  %322 = zext i1 %310 to i8
  store i8 %322, i8* %15, align 1
  %323 = lshr i32 %307, 31
  %324 = trunc i32 %323 to i8
  store i8 %324, i8* %16, align 1
  %325 = lshr i32 %306, 31
  %326 = xor i32 %323, %325
  %327 = add nuw nsw i32 %326, %323
  %328 = icmp eq i32 %327, 2
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %17, align 1
  %330 = add i64 %216, 20
  store i64 %330, i64* %3, align 8
  store i32 %307, i32* %305, align 4
  %331 = load i64, i64* %3, align 8
  %332 = add i64 %331, -103
  store i64 %332, i64* %3, align 8
  br label %block_.L_4a6ada

block_.L_4a6b46:                                  ; preds = %block_.L_4a6ada
  %333 = add i64 %153, -84696
  %334 = add i64 %182, 10
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  store i32 0, i32* %335, align 4
  %336 = load i64, i64* %RBP.i, align 8
  %337 = add i64 %336, -84692
  %338 = load i64, i64* %3, align 8
  %339 = add i64 %338, 10
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %337 to i32*
  store i32 1, i32* %340, align 4
  %341 = load i64, i64* %RBP.i, align 8
  %342 = add i64 %341, -84696
  %343 = load i64, i64* %3, align 8
  %344 = add i64 %343, 7
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %342 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  store i64 %347, i64* %RAX.i405, align 8
  %348 = shl nsw i64 %347, 2
  %349 = add i64 %341, -84688
  %350 = add i64 %349, %348
  %351 = add i64 %343, 18
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  store i32 3570, i32* %352, align 4
  %353 = load i64, i64* %RBP.i, align 8
  %354 = add i64 %353, -84696
  %355 = load i64, i64* %3, align 8
  %356 = add i64 %355, 7
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %354 to i32*
  %358 = load i32, i32* %357, align 4
  %359 = sext i32 %358 to i64
  store i64 %359, i64* %RAX.i405, align 8
  %360 = shl nsw i64 %359, 2
  %361 = add i64 %353, -84688
  %362 = add i64 %361, %360
  %363 = add i64 %355, 15
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  store i64 %366, i64* %RAX.i405, align 8
  %367 = shl nsw i64 %366, 2
  %368 = add i64 %353, -28240
  %369 = add i64 %368, %367
  %370 = add i64 %355, 26
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  store i32 1, i32* %371, align 4
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i324 = getelementptr inbounds %union.anon, %union.anon* %372, i64 0, i32 0
  %ECX.i320 = bitcast %union.anon* %372 to i32*
  %RDX.i309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre36 = load i64, i64* %RBP.i, align 8
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_4a6b86

block_.L_4a6b86:                                  ; preds = %block_.L_4a6c7d, %block_.L_4a6b46
  %373 = phi i64 [ %763, %block_.L_4a6c7d ], [ %.pre37, %block_.L_4a6b46 ]
  %374 = phi i64 [ %521, %block_.L_4a6c7d ], [ %.pre36, %block_.L_4a6b46 ]
  %375 = add i64 %374, -84696
  %376 = add i64 %373, 10
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = add i32 %378, -1764
  %380 = icmp ult i32 %378, 1764
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %12, align 1
  %382 = and i32 %379, 255
  %383 = tail call i32 @llvm.ctpop.i32(i32 %382)
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  %386 = xor i8 %385, 1
  store i8 %386, i8* %13, align 1
  %387 = xor i32 %379, %378
  %388 = lshr i32 %387, 4
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  store i8 %390, i8* %14, align 1
  %391 = icmp eq i32 %379, 0
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %15, align 1
  %393 = lshr i32 %379, 31
  %394 = trunc i32 %393 to i8
  store i8 %394, i8* %16, align 1
  %395 = lshr i32 %378, 31
  %396 = xor i32 %393, %395
  %397 = add nuw nsw i32 %396, %395
  %398 = icmp eq i32 %397, 2
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %17, align 1
  %400 = icmp ne i8 %394, 0
  %401 = xor i1 %400, %398
  %.v59 = select i1 %401, i64 16, i64 252
  %402 = add i64 %373, %.v59
  store i64 %402, i64* %3, align 8
  br i1 %401, label %block_4a6b96, label %block_.L_4a6c82

block_4a6b96:                                     ; preds = %block_.L_4a6b86
  %403 = add i64 %402, 7
  store i64 %403, i64* %3, align 8
  %404 = load i32, i32* %377, align 4
  %405 = sext i32 %404 to i64
  store i64 %405, i64* %RAX.i405, align 8
  %406 = shl nsw i64 %405, 2
  %407 = add i64 %374, -84688
  %408 = add i64 %407, %406
  %409 = add i64 %402, 14
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RCX.i324, align 8
  %413 = add i64 %374, -84724
  %414 = add i64 %402, 20
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i32*
  store i32 %411, i32* %415, align 4
  %416 = load i64, i64* %RBP.i, align 8
  %417 = add i64 %416, -84724
  %418 = load i64, i64* %3, align 8
  %419 = add i64 %418, 6
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %417 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = add i32 %421, -3570
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RCX.i324, align 8
  %424 = icmp ult i32 %421, 3570
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %12, align 1
  %426 = and i32 %422, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426)
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %13, align 1
  %431 = xor i32 %421, 16
  %432 = xor i32 %431, %422
  %433 = lshr i32 %432, 4
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  store i8 %435, i8* %14, align 1
  %436 = icmp eq i32 %422, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %15, align 1
  %438 = lshr i32 %422, 31
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %16, align 1
  %440 = lshr i32 %421, 31
  %441 = xor i32 %438, %440
  %442 = add nuw nsw i32 %441, %440
  %443 = icmp eq i32 %442, 2
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %17, align 1
  %445 = add i64 %416, -8
  %446 = add i64 %418, 16
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RAX.i405, align 8
  %449 = add i64 %416, -84696
  %450 = add i64 %418, 23
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i32*
  %452 = load i32, i32* %451, align 4
  %453 = sext i32 %452 to i64
  %454 = shl nsw i64 %453, 5
  store i64 %454, i64* %RDX.i309, align 8
  %455 = add i64 %454, %448
  store i64 %455, i64* %RAX.i405, align 8
  %456 = icmp ult i64 %455, %448
  %457 = icmp ult i64 %455, %454
  %458 = or i1 %456, %457
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %12, align 1
  %460 = trunc i64 %455 to i32
  %461 = and i32 %460, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %13, align 1
  %466 = xor i64 %448, %455
  %467 = lshr i64 %466, 4
  %468 = trunc i64 %467 to i8
  %469 = and i8 %468, 1
  store i8 %469, i8* %14, align 1
  %470 = icmp eq i64 %455, 0
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %15, align 1
  %472 = lshr i64 %455, 63
  %473 = trunc i64 %472 to i8
  store i8 %473, i8* %16, align 1
  %474 = lshr i64 %448, 63
  %475 = lshr i64 %453, 58
  %476 = and i64 %475, 1
  %477 = xor i64 %472, %474
  %478 = xor i64 %472, %476
  %479 = add nuw nsw i64 %477, %478
  %480 = icmp eq i64 %479, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %17, align 1
  %482 = inttoptr i64 %455 to i32*
  %483 = load i32, i32* %ECX.i320, align 4
  %484 = add i64 %418, 32
  store i64 %484, i64* %3, align 8
  store i32 %483, i32* %482, align 4
  %485 = load i64, i64* %RBP.i, align 8
  %486 = add i64 %485, -84696
  %487 = load i64, i64* %3, align 8
  %488 = add i64 %487, 6
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %486 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = add i32 %490, 1
  %492 = zext i32 %491 to i64
  store i64 %492, i64* %RCX.i324, align 8
  %493 = icmp eq i32 %490, -1
  %494 = icmp eq i32 %491, 0
  %495 = or i1 %493, %494
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %12, align 1
  %497 = and i32 %491, 255
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497)
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %13, align 1
  %502 = xor i32 %491, %490
  %503 = lshr i32 %502, 4
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  store i8 %505, i8* %14, align 1
  %506 = zext i1 %494 to i8
  store i8 %506, i8* %15, align 1
  %507 = lshr i32 %491, 31
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %16, align 1
  %509 = lshr i32 %490, 31
  %510 = xor i32 %507, %509
  %511 = add nuw nsw i32 %510, %507
  %512 = icmp eq i32 %511, 2
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %17, align 1
  %514 = add i64 %487, 15
  store i64 %514, i64* %3, align 8
  store i32 %491, i32* %489, align 4
  %515 = load i64, i64* %RBP.i, align 8
  %516 = add i64 %515, -84716
  %517 = load i64, i64* %3, align 8
  %518 = add i64 %517, 10
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %516 to i32*
  store i32 0, i32* %519, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_4a6be3

block_.L_4a6be3:                                  ; preds = %block_.L_4a6c64, %block_4a6b96
  %520 = phi i64 [ %762, %block_.L_4a6c64 ], [ %.pre50, %block_4a6b96 ]
  %521 = load i64, i64* %RBP.i, align 8
  %522 = add i64 %521, -84716
  %523 = add i64 %520, 7
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = add i32 %525, -4
  %527 = icmp ult i32 %525, 4
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %12, align 1
  %529 = and i32 %526, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %13, align 1
  %534 = xor i32 %526, %525
  %535 = lshr i32 %534, 4
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  store i8 %537, i8* %14, align 1
  %538 = icmp eq i32 %526, 0
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %15, align 1
  %540 = lshr i32 %526, 31
  %541 = trunc i32 %540 to i8
  store i8 %541, i8* %16, align 1
  %542 = lshr i32 %525, 31
  %543 = xor i32 %540, %542
  %544 = add nuw nsw i32 %543, %542
  %545 = icmp eq i32 %544, 2
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %17, align 1
  %.v64 = select i1 %538, i64 154, i64 13
  %547 = add i64 %520, %.v64
  store i64 %547, i64* %3, align 8
  br i1 %538, label %block_.L_4a6c7d, label %block_4a6bf0

block_4a6bf0:                                     ; preds = %block_.L_4a6be3
  %548 = add i64 %547, 7
  store i64 %548, i64* %3, align 8
  %549 = load i32, i32* %524, align 4
  %550 = sext i32 %549 to i64
  store i64 %550, i64* %RAX.i405, align 8
  %551 = shl nsw i64 %550, 2
  %552 = add nsw i64 %551, 5138864
  %553 = add i64 %547, 14
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = zext i32 %555 to i64
  store i64 %556, i64* %RCX.i324, align 8
  %557 = add i64 %521, -84728
  %558 = add i64 %547, 20
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i32*
  store i32 %555, i32* %559, align 4
  %560 = load i64, i64* %RBP.i, align 8
  %561 = add i64 %560, -84724
  %562 = load i64, i64* %3, align 8
  %563 = add i64 %562, 6
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %561 to i32*
  %565 = load i32, i32* %564, align 4
  %566 = zext i32 %565 to i64
  store i64 %566, i64* %RCX.i324, align 8
  %567 = add i64 %560, -84728
  %568 = add i64 %562, 12
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i32*
  %570 = load i32, i32* %569, align 4
  %571 = add i32 %570, %565
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RCX.i324, align 8
  %573 = icmp ult i32 %571, %565
  %574 = icmp ult i32 %571, %570
  %575 = or i1 %573, %574
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %12, align 1
  %577 = and i32 %571, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577)
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %13, align 1
  %582 = xor i32 %570, %565
  %583 = xor i32 %582, %571
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %14, align 1
  %587 = icmp eq i32 %571, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %15, align 1
  %589 = lshr i32 %571, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %16, align 1
  %591 = lshr i32 %565, 31
  %592 = lshr i32 %570, 31
  %593 = xor i32 %589, %591
  %594 = xor i32 %589, %592
  %595 = add nuw nsw i32 %593, %594
  %596 = icmp eq i32 %595, 2
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %17, align 1
  %598 = sext i32 %571 to i64
  store i64 %598, i64* %RAX.i405, align 8
  %599 = shl nsw i64 %598, 2
  %600 = add nsw i64 %599, -28240
  %601 = add i64 %600, %560
  %602 = add i64 %562, 23
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  store i8 0, i8* %12, align 1
  %605 = and i32 %604, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605)
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %610 = icmp eq i32 %604, 0
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %15, align 1
  %612 = lshr i32 %604, 31
  %613 = trunc i32 %612 to i8
  store i8 %613, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v65 = select i1 %610, i64 29, i64 96
  %614 = add i64 %562, %.v65
  store i64 %614, i64* %3, align 8
  br i1 %610, label %block_4a6c21, label %block_.L_4a6c64

block_4a6c21:                                     ; preds = %block_4a6bf0
  %615 = add i64 %614, 6
  store i64 %615, i64* %3, align 8
  %616 = load i32, i32* %564, align 4
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RAX.i405, align 8
  %618 = add i64 %614, 12
  store i64 %618, i64* %3, align 8
  %619 = load i32, i32* %569, align 4
  %620 = add i32 %619, %616
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %RAX.i405, align 8
  %622 = icmp ult i32 %620, %616
  %623 = icmp ult i32 %620, %619
  %624 = or i1 %622, %623
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %12, align 1
  %626 = and i32 %620, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %13, align 1
  %631 = xor i32 %619, %616
  %632 = xor i32 %631, %620
  %633 = lshr i32 %632, 4
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  store i8 %635, i8* %14, align 1
  %636 = icmp eq i32 %620, 0
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %15, align 1
  %638 = lshr i32 %620, 31
  %639 = trunc i32 %638 to i8
  store i8 %639, i8* %16, align 1
  %640 = lshr i32 %616, 31
  %641 = lshr i32 %619, 31
  %642 = xor i32 %638, %640
  %643 = xor i32 %638, %641
  %644 = add nuw nsw i32 %642, %643
  %645 = icmp eq i32 %644, 2
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %17, align 1
  %647 = add i64 %560, -84692
  %648 = add i64 %614, 19
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i32*
  %650 = load i32, i32* %649, align 4
  %651 = sext i32 %650 to i64
  store i64 %651, i64* %RCX.i324, align 8
  %652 = shl nsw i64 %651, 2
  %653 = add i64 %560, -84688
  %654 = add i64 %653, %652
  %655 = add i64 %614, 26
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i32*
  store i32 %620, i32* %656, align 4
  %657 = load i64, i64* %RBP.i, align 8
  %658 = add i64 %657, -84724
  %659 = load i64, i64* %3, align 8
  %660 = add i64 %659, 6
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %658 to i32*
  %662 = load i32, i32* %661, align 4
  %663 = zext i32 %662 to i64
  store i64 %663, i64* %RAX.i405, align 8
  %664 = add i64 %657, -84728
  %665 = add i64 %659, 12
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = add i32 %667, %662
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RAX.i405, align 8
  %670 = icmp ult i32 %668, %662
  %671 = icmp ult i32 %668, %667
  %672 = or i1 %670, %671
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %12, align 1
  %674 = and i32 %668, 255
  %675 = tail call i32 @llvm.ctpop.i32(i32 %674)
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  store i8 %678, i8* %13, align 1
  %679 = xor i32 %667, %662
  %680 = xor i32 %679, %668
  %681 = lshr i32 %680, 4
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  store i8 %683, i8* %14, align 1
  %684 = icmp eq i32 %668, 0
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %15, align 1
  %686 = lshr i32 %668, 31
  %687 = trunc i32 %686 to i8
  store i8 %687, i8* %16, align 1
  %688 = lshr i32 %662, 31
  %689 = lshr i32 %667, 31
  %690 = xor i32 %686, %688
  %691 = xor i32 %686, %689
  %692 = add nuw nsw i32 %690, %691
  %693 = icmp eq i32 %692, 2
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %17, align 1
  %695 = sext i32 %668 to i64
  store i64 %695, i64* %RCX.i324, align 8
  %696 = shl nsw i64 %695, 2
  %697 = add nsw i64 %696, -28240
  %698 = add i64 %697, %657
  %699 = add i64 %659, 26
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  store i32 1, i32* %700, align 4
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -84692
  %703 = load i64, i64* %3, align 8
  %704 = add i64 %703, 6
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %702 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = add i32 %706, 1
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RAX.i405, align 8
  %709 = icmp eq i32 %706, -1
  %710 = icmp eq i32 %707, 0
  %711 = or i1 %709, %710
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %12, align 1
  %713 = and i32 %707, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713)
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %13, align 1
  %718 = xor i32 %707, %706
  %719 = lshr i32 %718, 4
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  store i8 %721, i8* %14, align 1
  %722 = zext i1 %710 to i8
  store i8 %722, i8* %15, align 1
  %723 = lshr i32 %707, 31
  %724 = trunc i32 %723 to i8
  store i8 %724, i8* %16, align 1
  %725 = lshr i32 %706, 31
  %726 = xor i32 %723, %725
  %727 = add nuw nsw i32 %726, %723
  %728 = icmp eq i32 %727, 2
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %17, align 1
  %730 = add i64 %703, 15
  store i64 %730, i64* %3, align 8
  store i32 %707, i32* %705, align 4
  %.pre51 = load i64, i64* %3, align 8
  %.pre52 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a6c64

block_.L_4a6c64:                                  ; preds = %block_4a6bf0, %block_4a6c21
  %731 = phi i64 [ %.pre52, %block_4a6c21 ], [ %560, %block_4a6bf0 ]
  %732 = phi i64 [ %.pre51, %block_4a6c21 ], [ %614, %block_4a6bf0 ]
  %733 = add i64 %731, -84716
  %734 = add i64 %732, 11
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to i32*
  %736 = load i32, i32* %735, align 4
  %737 = add i32 %736, 1
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RAX.i405, align 8
  %739 = icmp eq i32 %736, -1
  %740 = icmp eq i32 %737, 0
  %741 = or i1 %739, %740
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %12, align 1
  %743 = and i32 %737, 255
  %744 = tail call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  store i8 %747, i8* %13, align 1
  %748 = xor i32 %737, %736
  %749 = lshr i32 %748, 4
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  store i8 %751, i8* %14, align 1
  %752 = zext i1 %740 to i8
  store i8 %752, i8* %15, align 1
  %753 = lshr i32 %737, 31
  %754 = trunc i32 %753 to i8
  store i8 %754, i8* %16, align 1
  %755 = lshr i32 %736, 31
  %756 = xor i32 %753, %755
  %757 = add nuw nsw i32 %756, %753
  %758 = icmp eq i32 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %17, align 1
  %760 = add i64 %732, 20
  store i64 %760, i64* %3, align 8
  store i32 %737, i32* %735, align 4
  %761 = load i64, i64* %3, align 8
  %762 = add i64 %761, -149
  store i64 %762, i64* %3, align 8
  br label %block_.L_4a6be3

block_.L_4a6c7d:                                  ; preds = %block_.L_4a6be3
  %763 = add i64 %547, -247
  store i64 %763, i64* %3, align 8
  br label %block_.L_4a6b86

block_.L_4a6c82:                                  ; preds = %block_.L_4a6b86
  %764 = add i64 %374, -84716
  %765 = add i64 %402, 10
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i32*
  store i32 0, i32* %766, align 4
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i210 = getelementptr inbounds %union.anon, %union.anon* %767, i64 0, i32 0
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i203 = getelementptr inbounds %union.anon, %union.anon* %768, i64 0, i32 0
  %ESI.i196 = bitcast %union.anon* %768 to i32*
  %769 = bitcast %union.anon* %767 to i32*
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_4a6c8c

block_.L_4a6c8c:                                  ; preds = %block_.L_4a6e1a, %block_.L_4a6c82
  %770 = phi i64 [ %.pre38, %block_.L_4a6c82 ], [ %1580, %block_.L_4a6e1a ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.0, %block_.L_4a6c82 ], [ %1095, %block_.L_4a6e1a ]
  %771 = load i64, i64* %RBP.i, align 8
  %772 = add i64 %771, -84716
  %773 = add i64 %770, 10
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = add i32 %775, -1764
  %777 = icmp ult i32 %775, 1764
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %12, align 1
  %779 = and i32 %776, 255
  %780 = tail call i32 @llvm.ctpop.i32(i32 %779)
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  store i8 %783, i8* %13, align 1
  %784 = xor i32 %776, %775
  %785 = lshr i32 %784, 4
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  store i8 %787, i8* %14, align 1
  %788 = icmp eq i32 %776, 0
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %15, align 1
  %790 = lshr i32 %776, 31
  %791 = trunc i32 %790 to i8
  store i8 %791, i8* %16, align 1
  %792 = lshr i32 %775, 31
  %793 = xor i32 %790, %792
  %794 = add nuw nsw i32 %793, %792
  %795 = icmp eq i32 %794, 2
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %17, align 1
  %797 = icmp ne i8 %791, 0
  %798 = xor i1 %797, %795
  %.v60 = select i1 %798, i64 16, i64 418
  %799 = add i64 %770, %.v60
  store i64 %799, i64* %3, align 8
  br i1 %798, label %block_4a6c9c, label %block_.L_4a6e2e

block_4a6c9c:                                     ; preds = %block_.L_4a6c8c
  store i64 84, i64* %RAX.i405, align 8
  %800 = add i64 %771, -8
  %801 = add i64 %799, 9
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i64*
  %803 = load i64, i64* %802, align 8
  store i64 %803, i64* %RCX.i375, align 8
  %804 = add i64 %799, 16
  store i64 %804, i64* %3, align 8
  %805 = load i32, i32* %774, align 4
  %806 = sext i32 %805 to i64
  %807 = shl nsw i64 %806, 5
  store i64 %807, i64* %RDX.i210, align 8
  %808 = add i64 %807, %803
  store i64 %808, i64* %RCX.i375, align 8
  %809 = icmp ult i64 %808, %803
  %810 = icmp ult i64 %808, %807
  %811 = or i1 %809, %810
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %12, align 1
  %813 = trunc i64 %808 to i32
  %814 = and i32 %813, 255
  %815 = tail call i32 @llvm.ctpop.i32(i32 %814)
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  %818 = xor i8 %817, 1
  store i8 %818, i8* %13, align 1
  %819 = xor i64 %803, %808
  %820 = lshr i64 %819, 4
  %821 = trunc i64 %820 to i8
  %822 = and i8 %821, 1
  store i8 %822, i8* %14, align 1
  %823 = icmp eq i64 %808, 0
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %15, align 1
  %825 = lshr i64 %808, 63
  %826 = trunc i64 %825 to i8
  store i8 %826, i8* %16, align 1
  %827 = lshr i64 %803, 63
  %828 = lshr i64 %806, 58
  %829 = and i64 %828, 1
  %830 = xor i64 %825, %827
  %831 = xor i64 %825, %829
  %832 = add nuw nsw i64 %830, %831
  %833 = icmp eq i64 %832, 2
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %17, align 1
  %835 = inttoptr i64 %808 to i32*
  %836 = add i64 %799, 25
  store i64 %836, i64* %3, align 8
  %837 = load i32, i32* %835, align 4
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RSI.i203, align 8
  %839 = add i64 %771, -84736
  %840 = add i64 %799, 31
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i32*
  store i32 84, i32* %841, align 4
  %842 = load i32, i32* %ESI.i196, align 4
  %843 = zext i32 %842 to i64
  %844 = load i64, i64* %3, align 8
  store i64 %843, i64* %RAX.i405, align 8
  %845 = sext i32 %842 to i64
  %846 = lshr i64 %845, 32
  store i64 %846, i64* %RDX.i309, align 8
  %847 = load i64, i64* %RBP.i, align 8
  %848 = add i64 %847, -84736
  %849 = add i64 %844, 9
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = zext i32 %851 to i64
  store i64 %852, i64* %RSI.i203, align 8
  %853 = add i64 %844, 11
  store i64 %853, i64* %3, align 8
  %854 = sext i32 %851 to i64
  %855 = shl nuw i64 %846, 32
  %856 = or i64 %855, %843
  %857 = sdiv i64 %856, %854
  %858 = shl i64 %857, 32
  %859 = ashr exact i64 %858, 32
  %860 = icmp eq i64 %857, %859
  br i1 %860, label %863, label %861

; <label>:861:                                    ; preds = %block_4a6c9c
  %862 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %853, %struct.Memory* %MEMORY.7)
  %.pre39 = load i64, i64* %RBP.i, align 8
  %.pre40 = load i32, i32* %769, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit188

; <label>:863:                                    ; preds = %block_4a6c9c
  %864 = srem i64 %856, %854
  %865 = and i64 %857, 4294967295
  store i64 %865, i64* %RAX.i405, align 8
  %866 = and i64 %864, 4294967295
  store i64 %866, i64* %RDX.i210, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %867 = trunc i64 %864 to i32
  br label %routine_idivl__esi.exit188

routine_idivl__esi.exit188:                       ; preds = %863, %861
  %868 = phi i64 [ %.pre41, %861 ], [ %853, %863 ]
  %869 = phi i32 [ %.pre40, %861 ], [ %867, %863 ]
  %870 = phi i64 [ %.pre39, %861 ], [ %847, %863 ]
  %871 = phi %struct.Memory* [ %862, %861 ], [ %MEMORY.7, %863 ]
  %872 = add i64 %870, -84712
  %873 = add i64 %868, 6
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i32*
  store i32 %869, i32* %874, align 4
  %875 = load i64, i64* %RBP.i, align 8
  %876 = add i64 %875, -84712
  %877 = load i64, i64* %3, align 8
  %878 = add i64 %877, 7
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %876 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = add i32 %880, -42
  %882 = icmp ult i32 %880, 42
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %12, align 1
  %884 = and i32 %881, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %13, align 1
  %889 = xor i32 %881, %880
  %890 = lshr i32 %889, 4
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  store i8 %892, i8* %14, align 1
  %893 = icmp eq i32 %881, 0
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %15, align 1
  %895 = lshr i32 %881, 31
  %896 = trunc i32 %895 to i8
  store i8 %896, i8* %16, align 1
  %897 = lshr i32 %880, 31
  %898 = xor i32 %895, %897
  %899 = add nuw nsw i32 %898, %897
  %900 = icmp eq i32 %899, 2
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %17, align 1
  %902 = icmp ne i8 %896, 0
  %903 = xor i1 %902, %900
  %.v61 = select i1 %903, i64 28, i64 13
  %904 = add i64 %877, %.v61
  store i64 %904, i64* %3, align 8
  br i1 %903, label %block_.L_4a6ce8, label %block_4a6cd9

block_4a6cd9:                                     ; preds = %routine_idivl__esi.exit188
  %905 = add i64 %904, 6
  store i64 %905, i64* %3, align 8
  %906 = load i32, i32* %879, align 4
  %907 = add i32 %906, -84
  %908 = zext i32 %907 to i64
  store i64 %908, i64* %RAX.i405, align 8
  %909 = icmp ult i32 %906, 84
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %12, align 1
  %911 = and i32 %907, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911)
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %13, align 1
  %916 = xor i32 %906, 16
  %917 = xor i32 %916, %907
  %918 = lshr i32 %917, 4
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  store i8 %920, i8* %14, align 1
  %921 = icmp eq i32 %907, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %15, align 1
  %923 = lshr i32 %907, 31
  %924 = trunc i32 %923 to i8
  store i8 %924, i8* %16, align 1
  %925 = lshr i32 %906, 31
  %926 = xor i32 %923, %925
  %927 = add nuw nsw i32 %926, %925
  %928 = icmp eq i32 %927, 2
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %17, align 1
  %930 = add i64 %904, 15
  store i64 %930, i64* %3, align 8
  store i32 %907, i32* %879, align 4
  %.pre42 = load i64, i64* %RBP.i, align 8
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_4a6ce8

block_.L_4a6ce8:                                  ; preds = %block_4a6cd9, %routine_idivl__esi.exit188
  %931 = phi i64 [ %.pre43, %block_4a6cd9 ], [ %904, %routine_idivl__esi.exit188 ]
  %932 = phi i64 [ %.pre42, %block_4a6cd9 ], [ %875, %routine_idivl__esi.exit188 ]
  %933 = add i64 %932, -84712
  %934 = add i64 %931, 7
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = add i32 %936, 42
  %938 = icmp ult i32 %936, -42
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %12, align 1
  %940 = and i32 %937, 255
  %941 = tail call i32 @llvm.ctpop.i32(i32 %940)
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  %944 = xor i8 %943, 1
  store i8 %944, i8* %13, align 1
  %945 = xor i32 %936, 16
  %946 = xor i32 %945, %937
  %947 = lshr i32 %946, 4
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  store i8 %949, i8* %14, align 1
  %950 = icmp eq i32 %937, 0
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %15, align 1
  %952 = lshr i32 %937, 31
  %953 = trunc i32 %952 to i8
  store i8 %953, i8* %16, align 1
  %954 = lshr i32 %936, 31
  %955 = xor i32 %954, 1
  %956 = xor i32 %952, %954
  %957 = add nuw nsw i32 %956, %955
  %958 = icmp eq i32 %957, 2
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %17, align 1
  %960 = icmp ne i8 %953, 0
  %961 = xor i1 %960, %958
  %.v62 = select i1 %961, i64 13, i64 28
  %962 = add i64 %931, %.v62
  store i64 %962, i64* %3, align 8
  br i1 %961, label %block_4a6cf5, label %block_.L_4a6d04

block_4a6cf5:                                     ; preds = %block_.L_4a6ce8
  %963 = add i64 %962, 6
  store i64 %963, i64* %3, align 8
  %964 = load i32, i32* %935, align 4
  %965 = add i32 %964, 84
  %966 = zext i32 %965 to i64
  store i64 %966, i64* %RAX.i405, align 8
  %967 = icmp ugt i32 %964, -85
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %12, align 1
  %969 = and i32 %965, 255
  %970 = tail call i32 @llvm.ctpop.i32(i32 %969)
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  %973 = xor i8 %972, 1
  store i8 %973, i8* %13, align 1
  %974 = xor i32 %964, 16
  %975 = xor i32 %974, %965
  %976 = lshr i32 %975, 4
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  store i8 %978, i8* %14, align 1
  %979 = icmp eq i32 %965, 0
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %15, align 1
  %981 = lshr i32 %965, 31
  %982 = trunc i32 %981 to i8
  store i8 %982, i8* %16, align 1
  %983 = lshr i32 %964, 31
  %984 = xor i32 %981, %983
  %985 = add nuw nsw i32 %984, %981
  %986 = icmp eq i32 %985, 2
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %17, align 1
  %988 = add i64 %962, 15
  store i64 %988, i64* %3, align 8
  store i32 %965, i32* %935, align 4
  %.pre44 = load i64, i64* %3, align 8
  %.pre45 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a6d04

block_.L_4a6d04:                                  ; preds = %block_.L_4a6ce8, %block_4a6cf5
  %989 = phi i64 [ %932, %block_.L_4a6ce8 ], [ %.pre45, %block_4a6cf5 ]
  %990 = phi i64 [ %962, %block_.L_4a6ce8 ], [ %.pre44, %block_4a6cf5 ]
  store i64 84, i64* %RAX.i405, align 8
  %991 = add i64 %989, -8
  %992 = add i64 %990, 9
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i64*
  %994 = load i64, i64* %993, align 8
  store i64 %994, i64* %RCX.i375, align 8
  %995 = add i64 %989, -84716
  %996 = add i64 %990, 16
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = sext i32 %998 to i64
  %1000 = shl nsw i64 %999, 5
  store i64 %1000, i64* %RDX.i210, align 8
  %1001 = add i64 %1000, %994
  store i64 %1001, i64* %RCX.i375, align 8
  %1002 = icmp ult i64 %1001, %994
  %1003 = icmp ult i64 %1001, %1000
  %1004 = or i1 %1002, %1003
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %12, align 1
  %1006 = trunc i64 %1001 to i32
  %1007 = and i32 %1006, 255
  %1008 = tail call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  store i8 %1011, i8* %13, align 1
  %1012 = xor i64 %994, %1001
  %1013 = lshr i64 %1012, 4
  %1014 = trunc i64 %1013 to i8
  %1015 = and i8 %1014, 1
  store i8 %1015, i8* %14, align 1
  %1016 = icmp eq i64 %1001, 0
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %15, align 1
  %1018 = lshr i64 %1001, 63
  %1019 = trunc i64 %1018 to i8
  store i8 %1019, i8* %16, align 1
  %1020 = lshr i64 %994, 63
  %1021 = lshr i64 %999, 58
  %1022 = and i64 %1021, 1
  %1023 = xor i64 %1018, %1020
  %1024 = xor i64 %1018, %1022
  %1025 = add nuw nsw i64 %1023, %1024
  %1026 = icmp eq i64 %1025, 2
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %17, align 1
  %1028 = inttoptr i64 %1001 to i32*
  %1029 = add i64 %990, 25
  store i64 %1029, i64* %3, align 8
  %1030 = load i32, i32* %1028, align 4
  %1031 = zext i32 %1030 to i64
  store i64 %1031, i64* %RSI.i203, align 8
  %1032 = add i64 %989, -84712
  %1033 = add i64 %990, 31
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i32*
  %1035 = load i32, i32* %1034, align 4
  %1036 = sub i32 %1030, %1035
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %RSI.i203, align 8
  %1038 = icmp ult i32 %1030, %1035
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %12, align 1
  %1040 = and i32 %1036, 255
  %1041 = tail call i32 @llvm.ctpop.i32(i32 %1040)
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  %1044 = xor i8 %1043, 1
  store i8 %1044, i8* %13, align 1
  %1045 = xor i32 %1035, %1030
  %1046 = xor i32 %1045, %1036
  %1047 = lshr i32 %1046, 4
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  store i8 %1049, i8* %14, align 1
  %1050 = icmp eq i32 %1036, 0
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %15, align 1
  %1052 = lshr i32 %1036, 31
  %1053 = trunc i32 %1052 to i8
  store i8 %1053, i8* %16, align 1
  %1054 = lshr i32 %1030, 31
  %1055 = lshr i32 %1035, 31
  %1056 = xor i32 %1055, %1054
  %1057 = xor i32 %1052, %1054
  %1058 = add nuw nsw i32 %1057, %1056
  %1059 = icmp eq i32 %1058, 2
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %17, align 1
  %1061 = load i64, i64* %RBP.i, align 8
  %1062 = add i64 %1061, -84740
  %1063 = load i32, i32* %EAX.i394.pre-phi, align 4
  %1064 = add i64 %990, 37
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1062 to i32*
  store i32 %1063, i32* %1065, align 4
  %1066 = load i32, i32* %ESI.i196, align 4
  %1067 = zext i32 %1066 to i64
  %1068 = load i64, i64* %3, align 8
  store i64 %1067, i64* %RAX.i405, align 8
  %1069 = sext i32 %1066 to i64
  %1070 = lshr i64 %1069, 32
  store i64 %1070, i64* %RDX.i309, align 8
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -84740
  %1073 = add i64 %1068, 9
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  %1076 = zext i32 %1075 to i64
  store i64 %1076, i64* %RSI.i203, align 8
  %1077 = add i64 %1068, 11
  store i64 %1077, i64* %3, align 8
  %1078 = sext i32 %1075 to i64
  %1079 = shl nuw i64 %1070, 32
  %1080 = or i64 %1079, %1067
  %1081 = sdiv i64 %1080, %1078
  %1082 = shl i64 %1081, 32
  %1083 = ashr exact i64 %1082, 32
  %1084 = icmp eq i64 %1081, %1083
  br i1 %1084, label %1087, label %1085

; <label>:1085:                                   ; preds = %block_.L_4a6d04
  %1086 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1077, %struct.Memory* %871)
  %.pre46 = load i64, i64* %RBP.i, align 8
  %.pre47 = load i32, i32* %EAX.i394.pre-phi, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:1087:                                   ; preds = %block_.L_4a6d04
  %1088 = srem i64 %1080, %1078
  %1089 = and i64 %1081, 4294967295
  store i64 %1089, i64* %RAX.i405, align 8
  %1090 = and i64 %1088, 4294967295
  store i64 %1090, i64* %RDX.i210, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1091 = trunc i64 %1081 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %1087, %1085
  %1092 = phi i64 [ %.pre48, %1085 ], [ %1077, %1087 ]
  %1093 = phi i32 [ %.pre47, %1085 ], [ %1091, %1087 ]
  %1094 = phi i64 [ %.pre46, %1085 ], [ %1071, %1087 ]
  %1095 = phi %struct.Memory* [ %1086, %1085 ], [ %871, %1087 ]
  %1096 = add i64 %1094, -84708
  %1097 = add i64 %1092, 6
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to i32*
  store i32 %1093, i32* %1098, align 4
  %1099 = load i64, i64* %RBP.i, align 8
  %1100 = add i64 %1099, -84720
  %1101 = load i64, i64* %3, align 8
  %1102 = add i64 %1101, 10
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1100 to i32*
  store i32 1, i32* %1103, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_4a6d44

block_.L_4a6d44:                                  ; preds = %block_.L_4a6d56, %routine_idivl__esi.exit
  %1104 = phi i64 [ %1550, %block_.L_4a6d56 ], [ %.pre49, %routine_idivl__esi.exit ]
  %1105 = load i64, i64* %RBP.i, align 8
  %1106 = add i64 %1105, -84720
  %1107 = add i64 %1104, 7
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = add i32 %1109, -8
  %1111 = icmp ult i32 %1109, 8
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
  %.v63 = select i1 %1122, i64 209, i64 13
  %1131 = add i64 %1104, %.v63
  %1132 = add i64 %1131, 5
  store i64 %1132, i64* %3, align 8
  br i1 %1122, label %block_.L_4a6e1a, label %block_.L_4a6d56

block_.L_4a6d56:                                  ; preds = %block_.L_4a6d44
  store i64 ptrtoint (%G__0x579b60_type* @G__0x579b60 to i64), i64* %RAX.i405, align 8
  %1133 = add i64 %1131, 22
  store i64 %1133, i64* %3, align 8
  %1134 = load i32, i32* %1108, align 4
  %1135 = sext i32 %1134 to i64
  %1136 = shl nsw i64 %1135, 4
  store i64 %1136, i64* %RCX.i375, align 8
  %1137 = add i64 %1136, ptrtoint (%G__0x579b60_type* @G__0x579b60 to i64)
  store i64 %1137, i64* %RDX.i210, align 8
  %1138 = icmp ult i64 %1137, ptrtoint (%G__0x579b60_type* @G__0x579b60 to i64)
  %1139 = icmp ult i64 %1137, %1136
  %1140 = or i1 %1138, %1139
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %12, align 1
  %1142 = trunc i64 %1137 to i32
  %1143 = and i32 %1142, 248
  %1144 = tail call i32 @llvm.ctpop.i32(i32 %1143)
  %1145 = trunc i32 %1144 to i8
  %1146 = and i8 %1145, 1
  %1147 = xor i8 %1146, 1
  store i8 %1147, i8* %13, align 1
  %1148 = xor i64 %1136, ptrtoint (%G__0x579b60_type* @G__0x579b60 to i64)
  %1149 = xor i64 %1148, %1137
  %1150 = lshr i64 %1149, 4
  %1151 = trunc i64 %1150 to i8
  %1152 = and i8 %1151, 1
  store i8 %1152, i8* %14, align 1
  %1153 = icmp eq i64 %1137, 0
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %15, align 1
  %1155 = lshr i64 %1137, 63
  %1156 = trunc i64 %1155 to i8
  store i8 %1156, i8* %16, align 1
  %1157 = lshr i64 %1135, 59
  %1158 = and i64 %1157, 1
  %1159 = xor i64 %1155, lshr (i64 ptrtoint (%G__0x579b60_type* @G__0x579b60 to i64), i64 63)
  %1160 = xor i64 %1155, %1158
  %1161 = add nuw nsw i64 %1159, %1160
  %1162 = icmp eq i64 %1161, 2
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %17, align 1
  %1164 = inttoptr i64 %1137 to i32*
  %1165 = add i64 %1131, 34
  store i64 %1165, i64* %3, align 8
  %1166 = load i32, i32* %1164, align 8
  %1167 = zext i32 %1166 to i64
  store i64 %1167, i64* %RSI.i203, align 8
  %1168 = add i64 %1105, -84708
  %1169 = add i64 %1131, 41
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = sext i32 %1166 to i64
  %1173 = sext i32 %1171 to i64
  %1174 = mul nsw i64 %1173, %1172
  %1175 = trunc i64 %1174 to i32
  %1176 = and i64 %1174, 4294967295
  store i64 %1176, i64* %RSI.i203, align 8
  %1177 = shl i64 %1174, 32
  %1178 = ashr exact i64 %1177, 32
  %1179 = icmp ne i64 %1178, %1174
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %12, align 1
  %1181 = and i32 %1175, 255
  %1182 = tail call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  store i8 %1185, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %1186 = lshr i32 %1175, 31
  %1187 = trunc i32 %1186 to i8
  store i8 %1187, i8* %16, align 1
  store i8 %1180, i8* %17, align 1
  %1188 = load i64, i64* %RBP.i, align 8
  %1189 = add i64 %1188, -84720
  %1190 = add i64 %1131, 48
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i32*
  %1192 = load i32, i32* %1191, align 4
  %1193 = sext i32 %1192 to i64
  %1194 = shl nsw i64 %1193, 4
  store i64 %1194, i64* %RCX.i375, align 8
  %1195 = load i64, i64* %RAX.i405, align 8
  %1196 = add i64 %1194, %1195
  store i64 %1196, i64* %RDX.i210, align 8
  %1197 = icmp ult i64 %1196, %1195
  %1198 = icmp ult i64 %1196, %1194
  %1199 = or i1 %1197, %1198
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %12, align 1
  %1201 = trunc i64 %1196 to i32
  %1202 = and i32 %1201, 255
  %1203 = tail call i32 @llvm.ctpop.i32(i32 %1202)
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  store i8 %1206, i8* %13, align 1
  %1207 = xor i64 %1194, %1195
  %1208 = xor i64 %1207, %1196
  %1209 = lshr i64 %1208, 4
  %1210 = trunc i64 %1209 to i8
  %1211 = and i8 %1210, 1
  store i8 %1211, i8* %14, align 1
  %1212 = icmp eq i64 %1196, 0
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %15, align 1
  %1214 = lshr i64 %1196, 63
  %1215 = trunc i64 %1214 to i8
  store i8 %1215, i8* %16, align 1
  %1216 = lshr i64 %1195, 63
  %1217 = lshr i64 %1193, 59
  %1218 = and i64 %1217, 1
  %1219 = xor i64 %1214, %1216
  %1220 = xor i64 %1214, %1218
  %1221 = add nuw nsw i64 %1219, %1220
  %1222 = icmp eq i64 %1221, 2
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %17, align 1
  %1224 = add i64 %1196, 4
  %1225 = add i64 %1131, 61
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i32*
  %1227 = load i32, i32* %1226, align 4
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RDI.i416, align 8
  %1229 = add i64 %1188, -84712
  %1230 = add i64 %1131, 68
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = sext i32 %1227 to i64
  %1234 = sext i32 %1232 to i64
  %1235 = mul nsw i64 %1234, %1233
  %1236 = and i64 %1235, 4294967295
  store i64 %1236, i64* %RDI.i416, align 8
  %1237 = load i64, i64* %RSI.i203, align 8
  %1238 = trunc i64 %1235 to i32
  %1239 = trunc i64 %1237 to i32
  %1240 = add i32 %1238, %1239
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RSI.i203, align 8
  %1242 = icmp ult i32 %1240, %1239
  %1243 = icmp ult i32 %1240, %1238
  %1244 = or i1 %1242, %1243
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %12, align 1
  %1246 = and i32 %1240, 255
  %1247 = tail call i32 @llvm.ctpop.i32(i32 %1246)
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = xor i8 %1249, 1
  store i8 %1250, i8* %13, align 1
  %1251 = xor i64 %1235, %1237
  %1252 = trunc i64 %1251 to i32
  %1253 = xor i32 %1252, %1240
  %1254 = lshr i32 %1253, 4
  %1255 = trunc i32 %1254 to i8
  %1256 = and i8 %1255, 1
  store i8 %1256, i8* %14, align 1
  %1257 = icmp eq i32 %1240, 0
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %15, align 1
  %1259 = lshr i32 %1240, 31
  %1260 = trunc i32 %1259 to i8
  store i8 %1260, i8* %16, align 1
  %1261 = lshr i32 %1239, 31
  %1262 = lshr i32 %1238, 31
  %1263 = xor i32 %1259, %1261
  %1264 = xor i32 %1259, %1262
  %1265 = add nuw nsw i32 %1263, %1264
  %1266 = icmp eq i32 %1265, 2
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %17, align 1
  %1268 = load i64, i64* %RBP.i, align 8
  %1269 = add i64 %1268, -84700
  %1270 = add i64 %1131, 76
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1269 to i32*
  store i32 %1240, i32* %1271, align 4
  %1272 = load i64, i64* %RBP.i, align 8
  %1273 = add i64 %1272, -84720
  %1274 = load i64, i64* %3, align 8
  %1275 = add i64 %1274, 7
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1273 to i32*
  %1277 = load i32, i32* %1276, align 4
  %1278 = sext i32 %1277 to i64
  %1279 = shl nsw i64 %1278, 4
  store i64 %1279, i64* %RCX.i375, align 8
  %1280 = load i64, i64* %RAX.i405, align 8
  %1281 = add i64 %1279, %1280
  store i64 %1281, i64* %RDX.i210, align 8
  %1282 = icmp ult i64 %1281, %1280
  %1283 = icmp ult i64 %1281, %1279
  %1284 = or i1 %1282, %1283
  %1285 = zext i1 %1284 to i8
  store i8 %1285, i8* %12, align 1
  %1286 = trunc i64 %1281 to i32
  %1287 = and i32 %1286, 255
  %1288 = tail call i32 @llvm.ctpop.i32(i32 %1287)
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  %1291 = xor i8 %1290, 1
  store i8 %1291, i8* %13, align 1
  %1292 = xor i64 %1279, %1280
  %1293 = xor i64 %1292, %1281
  %1294 = lshr i64 %1293, 4
  %1295 = trunc i64 %1294 to i8
  %1296 = and i8 %1295, 1
  store i8 %1296, i8* %14, align 1
  %1297 = icmp eq i64 %1281, 0
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %15, align 1
  %1299 = lshr i64 %1281, 63
  %1300 = trunc i64 %1299 to i8
  store i8 %1300, i8* %16, align 1
  %1301 = lshr i64 %1280, 63
  %1302 = lshr i64 %1278, 59
  %1303 = and i64 %1302, 1
  %1304 = xor i64 %1299, %1301
  %1305 = xor i64 %1299, %1303
  %1306 = add nuw nsw i64 %1304, %1305
  %1307 = icmp eq i64 %1306, 2
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %17, align 1
  %1309 = add i64 %1281, 8
  %1310 = add i64 %1274, 20
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1309 to i32*
  %1312 = load i32, i32* %1311, align 4
  %1313 = zext i32 %1312 to i64
  store i64 %1313, i64* %RSI.i203, align 8
  %1314 = add i64 %1272, -84708
  %1315 = add i64 %1274, 27
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = sext i32 %1312 to i64
  %1319 = sext i32 %1317 to i64
  %1320 = mul nsw i64 %1319, %1318
  %1321 = trunc i64 %1320 to i32
  %1322 = and i64 %1320, 4294967295
  store i64 %1322, i64* %RSI.i203, align 8
  %1323 = shl i64 %1320, 32
  %1324 = ashr exact i64 %1323, 32
  %1325 = icmp ne i64 %1324, %1320
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %12, align 1
  %1327 = and i32 %1321, 255
  %1328 = tail call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  store i8 %1331, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %1332 = lshr i32 %1321, 31
  %1333 = trunc i32 %1332 to i8
  store i8 %1333, i8* %16, align 1
  store i8 %1326, i8* %17, align 1
  %1334 = load i64, i64* %RBP.i, align 8
  %1335 = add i64 %1334, -84720
  %1336 = add i64 %1274, 34
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = sext i32 %1338 to i64
  %1340 = shl nsw i64 %1339, 4
  store i64 %1340, i64* %RCX.i375, align 8
  %1341 = load i64, i64* %RAX.i405, align 8
  %1342 = add i64 %1340, %1341
  store i64 %1342, i64* %RAX.i405, align 8
  %1343 = icmp ult i64 %1342, %1341
  %1344 = icmp ult i64 %1342, %1340
  %1345 = or i1 %1343, %1344
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %12, align 1
  %1347 = trunc i64 %1342 to i32
  %1348 = and i32 %1347, 255
  %1349 = tail call i32 @llvm.ctpop.i32(i32 %1348)
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  %1352 = xor i8 %1351, 1
  store i8 %1352, i8* %13, align 1
  %1353 = xor i64 %1340, %1341
  %1354 = xor i64 %1353, %1342
  %1355 = lshr i64 %1354, 4
  %1356 = trunc i64 %1355 to i8
  %1357 = and i8 %1356, 1
  store i8 %1357, i8* %14, align 1
  %1358 = icmp eq i64 %1342, 0
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %15, align 1
  %1360 = lshr i64 %1342, 63
  %1361 = trunc i64 %1360 to i8
  store i8 %1361, i8* %16, align 1
  %1362 = lshr i64 %1341, 63
  %1363 = lshr i64 %1339, 59
  %1364 = and i64 %1363, 1
  %1365 = xor i64 %1360, %1362
  %1366 = xor i64 %1360, %1364
  %1367 = add nuw nsw i64 %1365, %1366
  %1368 = icmp eq i64 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %17, align 1
  %1370 = add i64 %1342, 12
  %1371 = add i64 %1274, 44
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i32*
  %1373 = load i32, i32* %1372, align 4
  %1374 = zext i32 %1373 to i64
  store i64 %1374, i64* %RDI.i416, align 8
  %1375 = add i64 %1334, -84712
  %1376 = add i64 %1274, 51
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i32*
  %1378 = load i32, i32* %1377, align 4
  %1379 = sext i32 %1373 to i64
  %1380 = sext i32 %1378 to i64
  %1381 = mul nsw i64 %1380, %1379
  %1382 = and i64 %1381, 4294967295
  store i64 %1382, i64* %RDI.i416, align 8
  %1383 = load i64, i64* %RSI.i203, align 8
  %1384 = trunc i64 %1381 to i32
  %1385 = trunc i64 %1383 to i32
  %1386 = add i32 %1384, %1385
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RSI.i203, align 8
  %1388 = icmp ult i32 %1386, %1385
  %1389 = icmp ult i32 %1386, %1384
  %1390 = or i1 %1388, %1389
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %12, align 1
  %1392 = and i32 %1386, 255
  %1393 = tail call i32 @llvm.ctpop.i32(i32 %1392)
  %1394 = trunc i32 %1393 to i8
  %1395 = and i8 %1394, 1
  %1396 = xor i8 %1395, 1
  store i8 %1396, i8* %13, align 1
  %1397 = xor i64 %1381, %1383
  %1398 = trunc i64 %1397 to i32
  %1399 = xor i32 %1398, %1386
  %1400 = lshr i32 %1399, 4
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  store i8 %1402, i8* %14, align 1
  %1403 = icmp eq i32 %1386, 0
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %15, align 1
  %1405 = lshr i32 %1386, 31
  %1406 = trunc i32 %1405 to i8
  store i8 %1406, i8* %16, align 1
  %1407 = lshr i32 %1385, 31
  %1408 = lshr i32 %1384, 31
  %1409 = xor i32 %1405, %1407
  %1410 = xor i32 %1405, %1408
  %1411 = add nuw nsw i32 %1409, %1410
  %1412 = icmp eq i32 %1411, 2
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %17, align 1
  %1414 = load i64, i64* %RBP.i, align 8
  %1415 = add i64 %1414, -84704
  %1416 = add i64 %1274, 59
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i32*
  store i32 %1386, i32* %1417, align 4
  %1418 = load i64, i64* %RBP.i, align 8
  %1419 = add i64 %1418, -84700
  %1420 = load i64, i64* %3, align 8
  %1421 = add i64 %1420, 7
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1419 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = sext i32 %1423 to i64
  %1425 = mul nsw i64 %1424, 84
  %1426 = trunc i64 %1425 to i32
  %1427 = and i64 %1425, 4294967292
  store i64 %1427, i64* %RAX.i405, align 8
  %1428 = mul i64 %1424, 360777252864
  %1429 = ashr exact i64 %1428, 32
  %1430 = icmp ne i64 %1429, %1425
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %12, align 1
  %1432 = and i32 %1426, 252
  %1433 = tail call i32 @llvm.ctpop.i32(i32 %1432)
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = xor i8 %1435, 1
  store i8 %1436, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %1437 = lshr i32 %1426, 31
  %1438 = trunc i32 %1437 to i8
  store i8 %1438, i8* %16, align 1
  store i8 %1431, i8* %17, align 1
  %1439 = add i64 %1418, -84704
  %1440 = add i64 %1420, 13
  store i64 %1440, i64* %3, align 8
  %1441 = trunc i64 %1425 to i32
  %1442 = inttoptr i64 %1439 to i32*
  %1443 = load i32, i32* %1442, align 4
  %1444 = add i32 %1443, %1441
  %1445 = zext i32 %1444 to i64
  store i64 %1445, i64* %RAX.i405, align 8
  %1446 = icmp ult i32 %1444, %1441
  %1447 = icmp ult i32 %1444, %1443
  %1448 = or i1 %1446, %1447
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %12, align 1
  %1450 = and i32 %1444, 255
  %1451 = tail call i32 @llvm.ctpop.i32(i32 %1450)
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = xor i8 %1453, 1
  store i8 %1454, i8* %13, align 1
  %1455 = xor i32 %1443, %1441
  %1456 = xor i32 %1455, %1444
  %1457 = lshr i32 %1456, 4
  %1458 = trunc i32 %1457 to i8
  %1459 = and i8 %1458, 1
  store i8 %1459, i8* %14, align 1
  %1460 = icmp eq i32 %1444, 0
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %15, align 1
  %1462 = lshr i32 %1444, 31
  %1463 = trunc i32 %1462 to i8
  store i8 %1463, i8* %16, align 1
  %1464 = lshr i32 %1441, 31
  %1465 = lshr i32 %1443, 31
  %1466 = xor i32 %1462, %1464
  %1467 = xor i32 %1462, %1465
  %1468 = add nuw nsw i32 %1466, %1467
  %1469 = icmp eq i32 %1468, 2
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %17, align 1
  %1471 = add i64 %1418, -8
  %1472 = add i64 %1420, 17
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i64*
  %1474 = load i64, i64* %1473, align 8
  store i64 %1474, i64* %RCX.i375, align 8
  %1475 = add i64 %1418, -84716
  %1476 = add i64 %1420, 24
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1475 to i32*
  %1478 = load i32, i32* %1477, align 4
  %1479 = sext i32 %1478 to i64
  %1480 = shl nsw i64 %1479, 5
  store i64 %1480, i64* %RDX.i210, align 8
  %1481 = add i64 %1480, %1474
  store i64 %1481, i64* %RCX.i375, align 8
  %1482 = icmp ult i64 %1481, %1474
  %1483 = icmp ult i64 %1481, %1480
  %1484 = or i1 %1482, %1483
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %12, align 1
  %1486 = trunc i64 %1481 to i32
  %1487 = and i32 %1486, 255
  %1488 = tail call i32 @llvm.ctpop.i32(i32 %1487)
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  %1491 = xor i8 %1490, 1
  store i8 %1491, i8* %13, align 1
  %1492 = xor i64 %1474, %1481
  %1493 = lshr i64 %1492, 4
  %1494 = trunc i64 %1493 to i8
  %1495 = and i8 %1494, 1
  store i8 %1495, i8* %14, align 1
  %1496 = icmp eq i64 %1481, 0
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %15, align 1
  %1498 = lshr i64 %1481, 63
  %1499 = trunc i64 %1498 to i8
  store i8 %1499, i8* %16, align 1
  %1500 = lshr i64 %1474, 63
  %1501 = lshr i64 %1479, 58
  %1502 = and i64 %1501, 1
  %1503 = xor i64 %1498, %1500
  %1504 = xor i64 %1498, %1502
  %1505 = add nuw nsw i64 %1503, %1504
  %1506 = icmp eq i64 %1505, 2
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %17, align 1
  %1508 = load i64, i64* %RBP.i, align 8
  %1509 = add i64 %1508, -84720
  %1510 = add i64 %1420, 38
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = sext i32 %1512 to i64
  store i64 %1513, i64* %RDX.i210, align 8
  %1514 = shl nsw i64 %1513, 2
  %1515 = add i64 %1514, %1481
  %1516 = load i32, i32* %EAX.i394.pre-phi, align 4
  %1517 = add i64 %1420, 41
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1515 to i32*
  store i32 %1516, i32* %1518, align 4
  %1519 = load i64, i64* %RBP.i, align 8
  %1520 = add i64 %1519, -84720
  %1521 = load i64, i64* %3, align 8
  %1522 = add i64 %1521, 6
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1520 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = add i32 %1524, 1
  %1526 = zext i32 %1525 to i64
  store i64 %1526, i64* %RAX.i405, align 8
  %1527 = icmp eq i32 %1524, -1
  %1528 = icmp eq i32 %1525, 0
  %1529 = or i1 %1527, %1528
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %12, align 1
  %1531 = and i32 %1525, 255
  %1532 = tail call i32 @llvm.ctpop.i32(i32 %1531)
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %13, align 1
  %1536 = xor i32 %1525, %1524
  %1537 = lshr i32 %1536, 4
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  store i8 %1539, i8* %14, align 1
  %1540 = zext i1 %1528 to i8
  store i8 %1540, i8* %15, align 1
  %1541 = lshr i32 %1525, 31
  %1542 = trunc i32 %1541 to i8
  store i8 %1542, i8* %16, align 1
  %1543 = lshr i32 %1524, 31
  %1544 = xor i32 %1541, %1543
  %1545 = add nuw nsw i32 %1544, %1541
  %1546 = icmp eq i32 %1545, 2
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %17, align 1
  %1548 = add i64 %1521, 15
  store i64 %1548, i64* %3, align 8
  store i32 %1525, i32* %1523, align 4
  %1549 = load i64, i64* %3, align 8
  %1550 = add i64 %1549, -204
  store i64 %1550, i64* %3, align 8
  br label %block_.L_4a6d44

block_.L_4a6e1a:                                  ; preds = %block_.L_4a6d44
  %1551 = add i64 %1105, -84716
  %1552 = add i64 %1131, 11
  store i64 %1552, i64* %3, align 8
  %1553 = inttoptr i64 %1551 to i32*
  %1554 = load i32, i32* %1553, align 4
  %1555 = add i32 %1554, 1
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RAX.i405, align 8
  %1557 = icmp eq i32 %1554, -1
  %1558 = icmp eq i32 %1555, 0
  %1559 = or i1 %1557, %1558
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %12, align 1
  %1561 = and i32 %1555, 255
  %1562 = tail call i32 @llvm.ctpop.i32(i32 %1561)
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  %1565 = xor i8 %1564, 1
  store i8 %1565, i8* %13, align 1
  %1566 = xor i32 %1555, %1554
  %1567 = lshr i32 %1566, 4
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  store i8 %1569, i8* %14, align 1
  %1570 = zext i1 %1558 to i8
  store i8 %1570, i8* %15, align 1
  %1571 = lshr i32 %1555, 31
  %1572 = trunc i32 %1571 to i8
  store i8 %1572, i8* %16, align 1
  %1573 = lshr i32 %1554, 31
  %1574 = xor i32 %1571, %1573
  %1575 = add nuw nsw i32 %1574, %1571
  %1576 = icmp eq i32 %1575, 2
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %17, align 1
  %1578 = add i64 %1131, 20
  store i64 %1578, i64* %3, align 8
  store i32 %1555, i32* %1553, align 4
  %1579 = load i64, i64* %3, align 8
  %1580 = add i64 %1579, -413
  store i64 %1580, i64* %3, align 8
  br label %block_.L_4a6c8c

block_.L_4a6e2e:                                  ; preds = %block_.L_4a6c8c
  %1581 = load i64, i64* %6, align 8
  %1582 = add i64 %1581, 84752
  store i64 %1582, i64* %6, align 8
  %1583 = icmp ugt i64 %1581, -84753
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %12, align 1
  %1585 = trunc i64 %1582 to i32
  %1586 = and i32 %1585, 255
  %1587 = tail call i32 @llvm.ctpop.i32(i32 %1586)
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  %1590 = xor i8 %1589, 1
  store i8 %1590, i8* %13, align 1
  %1591 = xor i64 %1581, 16
  %1592 = xor i64 %1591, %1582
  %1593 = lshr i64 %1592, 4
  %1594 = trunc i64 %1593 to i8
  %1595 = and i8 %1594, 1
  store i8 %1595, i8* %14, align 1
  %1596 = icmp eq i64 %1582, 0
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %15, align 1
  %1598 = lshr i64 %1582, 63
  %1599 = trunc i64 %1598 to i8
  store i8 %1599, i8* %16, align 1
  %1600 = lshr i64 %1581, 63
  %1601 = xor i64 %1598, %1600
  %1602 = add nuw nsw i64 %1601, %1598
  %1603 = icmp eq i64 %1602, 2
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %17, align 1
  %1605 = add i64 %799, 8
  store i64 %1605, i64* %3, align 8
  %1606 = add i64 %1581, 84760
  %1607 = inttoptr i64 %1582 to i64*
  %1608 = load i64, i64* %1607, align 8
  store i64 %1608, i64* %RBP.i, align 8
  store i64 %1606, i64* %6, align 8
  %1609 = add i64 %799, 9
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1606 to i64*
  %1611 = load i64, i64* %1610, align 8
  store i64 %1611, i64* %3, align 8
  %1612 = add i64 %1581, 84768
  store i64 %1612, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x14b10___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -84752
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 84752
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
define %struct.Memory* @routine_movl__0x0__MINUS0x14ad4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84692
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x14ad8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84696
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0xaf3458(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xaf3458_type* @G_0xaf3458 to i32*), align 8
  %6 = add i32 %5, -1
  %7 = icmp eq i32 %5, 0
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
define %struct.Memory* @routine_jle_.L_4a6a90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x588751___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x588751_type* @G__0x588751 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x14afc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84732
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x14af4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84724
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1b90__MINUS0x14af4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84724
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7056
  %10 = icmp ult i32 %8, 7056
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
define %struct.Memory* @routine_jge_.L_4a6ad0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x14af4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84724
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
define %struct.Memory* @routine_movl__0x1__MINUS0x6e50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -28240
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 1, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14af4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84724
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
define %struct.Memory* @routine_movl__eax__MINUS0x14af4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84724
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a6a9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x14adc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84700
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3f__MINUS0x14adc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84700
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -63
  %10 = icmp ult i32 %8, 63
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
define %struct.Memory* @routine_jge_.L_4a6b46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x15__MINUS0x14ae0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84704
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3f__MINUS0x14ae0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84704
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -63
  %10 = icmp ult i32 %8, 63
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
define %struct.Memory* @routine_jge_.L_4a6b2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x54__MINUS0x14adc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84700
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 84
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 360777252864
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
define %struct.Memory* @routine_addl_MINUS0x14ae0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84704
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
define %struct.Memory* @routine_movl__0x0__MINUS0x6e50__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -28240
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14ae0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84704
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
define %struct.Memory* @routine_movl__eax__MINUS0x14ae0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84704
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a6af1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a6b32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14adc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84700
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
define %struct.Memory* @routine_movl__eax__MINUS0x14adc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84700
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a6ada(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x14ad4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84692
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14ad8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84696
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
define %struct.Memory* @routine_movl__0xdf2__MINUS0x14ad0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -84688
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 3570, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14ad0__rbp__rax_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -84688
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
define %struct.Memory* @routine_cmpl__0x6e4__MINUS0x14ad8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84696
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1764
  %10 = icmp ult i32 %8, 1764
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
define %struct.Memory* @routine_jge_.L_4a6c82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x14ad0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -84688
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
define %struct.Memory* @routine_movl__ecx__MINUS0x14af4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84724
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14af4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84724
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
define %struct.Memory* @routine_subl__0xdf2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3570
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 3570
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
define %struct.Memory* @routine_movslq_MINUS0x14ad8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84696
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
define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x14ad8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84696
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
define %struct.Memory* @routine_movl__ecx__MINUS0x14ad8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84696
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x14aec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84716
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x14aec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84716
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
define %struct.Memory* @routine_je_.L_4a6c7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x14aec__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84716
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
define %struct.Memory* @routine_movl_0x4e69b0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 5138864
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x14af8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84728
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x14af8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84728
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x6e50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -28240
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
define %struct.Memory* @routine_jne_.L_4a6c64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x14af8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84728
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14ad4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84692
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
define %struct.Memory* @routine_movl__eax__MINUS0x14ad0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -84688
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
define %struct.Memory* @routine_movl__0x1__MINUS0x6e50__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -28240
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 1, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14ad4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84692
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
define %struct.Memory* @routine_movl__eax__MINUS0x14ad4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84692
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a6c69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14aec__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84716
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
define %struct.Memory* @routine_movl__eax__MINUS0x14aec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84716
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a6be3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a6b86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6e4__MINUS0x14aec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84716
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1764
  %10 = icmp ult i32 %8, 1764
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
define %struct.Memory* @routine_jge_.L_4a6e2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x54___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 84, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x14aec__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84716
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
define %struct.Memory* @routine_movl___rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14b00__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84736
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
define %struct.Memory* @routine_movl_MINUS0x14b00__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84736
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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
define %struct.Memory* @routine_movl__edx__MINUS0x14ae8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84712
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2a__MINUS0x14ae8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84712
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -42
  %10 = icmp ult i32 %8, 42
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
define %struct.Memory* @routine_jl_.L_4a6ce8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x14ae8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84712
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
define %struct.Memory* @routine_subl__0x54___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -84
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 84
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
define %struct.Memory* @routine_movl__eax__MINUS0x14ae8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84712
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffd6__MINUS0x14ae8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84712
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 42
  %10 = icmp ult i32 %8, -42
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
define %struct.Memory* @routine_jge_.L_4a6d04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x54___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 84
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -85
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
define %struct.Memory* @routine_subl_MINUS0x14ae8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84712
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14b04__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84740
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14b04__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84740
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
define %struct.Memory* @routine_movl__eax__MINUS0x14ae4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84708
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x14af0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84720
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x14af0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84720
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_je_.L_4a6e15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a6d56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579b60___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579b60_type* @G__0x579b60 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14af0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84720
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
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl___rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x14ae4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84708
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
  store i64 %15, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x4__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_imull_MINUS0x14ae8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84712
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
  store i64 %15, i64* %RDI, align 8
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
define %struct.Memory* @routine_addl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movl__esi__MINUS0x14adc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84700
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__esi__MINUS0x14ae0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84704
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14af0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84720
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
define %struct.Memory* @routine_movl_MINUS0x14af0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84720
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
define %struct.Memory* @routine_movl__eax__MINUS0x14af0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84720
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a6d44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a6e1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a6c8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x14b10___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 84752
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -84753
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
