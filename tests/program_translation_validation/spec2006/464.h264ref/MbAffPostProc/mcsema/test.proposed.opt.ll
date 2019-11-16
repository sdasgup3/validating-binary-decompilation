; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
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
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_44a390.get_mb_pos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @MbAffPostProc(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1112
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1104
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i583 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %41, i64* %RAX.i583, align 8
  %42 = add i64 %41, 6424
  %43 = add i64 %10, 25
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %42 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %7, -1040
  %47 = add i64 %10, 32
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %46 to i64*
  store i64 %45, i64* %48, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %50, i64* %RAX.i583, align 8
  %51 = add i64 %50, 6464
  %52 = add i64 %49, 15
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %51 to i64*
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -1040
  %57 = add i64 %49, 22
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i64*
  store i64 %54, i64* %58, align 8
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %60, i64* %RAX.i583, align 8
  %61 = add i64 %60, 72700
  %62 = add i64 %59, 15
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i32*
  %64 = load i32, i32* %63, align 4
  store i8 0, i8* %14, align 1
  %65 = and i32 %64, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65)
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %70 = icmp eq i32 %64, 0
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %30, align 1
  %72 = lshr i32 %64, 31
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v98 = select i1 %70, i64 1305, i64 21
  %74 = add i64 %59, %.v98
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -1044
  %77 = add i64 %74, 10
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %76 to i32*
  store i32 0, i32* %78, align 4
  br i1 %70, label %block_.L_4277ea.preheader, label %block_.L_4272e6.preheader

block_.L_4272e6.preheader:                        ; preds = %entry
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i854 = getelementptr inbounds %union.anon, %union.anon* %79, i64 0, i32 0
  %EAX.i851 = bitcast %union.anon* %40 to i32*
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i836 = getelementptr inbounds %union.anon, %union.anon* %80, i64 0, i32 0
  %RDX.i833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i830 = getelementptr inbounds %union.anon, %union.anon* %81, i64 0, i32 0
  %DI.i788 = bitcast %union.anon* %81 to i16*
  %SI.i723 = bitcast %union.anon* %80 to i16*
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i714 = bitcast %union.anon* %82 to i32*
  %83 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %ECX.i589 = bitcast %union.anon* %79 to i32*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i557 = bitcast %union.anon* %85 to i32*
  %86 = getelementptr inbounds %union.anon, %union.anon* %85, i64 0, i32 0
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4272e6

block_.L_4277ea.preheader:                        ; preds = %entry
  %RCX.i245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i227 = getelementptr inbounds %union.anon, %union.anon* %88, i64 0, i32 0
  %RDX.i224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i221 = getelementptr inbounds %union.anon, %union.anon* %89, i64 0, i32 0
  %DI.i181 = bitcast %union.anon* %89 to i16*
  %SI.i117 = bitcast %union.anon* %88 to i16*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_4277ea

block_.L_4272e6:                                  ; preds = %block_.L_4272e6.preheader, %block_.L_4277c2
  %91 = phi i64 [ %1874, %block_.L_4277c2 ], [ %.pre, %block_.L_4272e6.preheader ]
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.10, %block_.L_4277c2 ], [ %2, %block_.L_4272e6.preheader ]
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -1044
  %94 = add i64 %91, 6
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %RAX.i583, align 8
  %98 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %98, i64* %RCX.i854, align 8
  %99 = add i64 %98, 72484
  %100 = add i64 %91, 20
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = sub i32 %96, %102
  %104 = icmp ult i32 %96, %102
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %14, align 1
  %106 = and i32 %103, 255
  %107 = tail call i32 @llvm.ctpop.i32(i32 %106)
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  store i8 %110, i8* %21, align 1
  %111 = xor i32 %102, %96
  %112 = xor i32 %111, %103
  %113 = lshr i32 %112, 4
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  store i8 %115, i8* %27, align 1
  %116 = icmp eq i32 %103, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %30, align 1
  %118 = lshr i32 %103, 31
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %33, align 1
  %120 = lshr i32 %96, 31
  %121 = lshr i32 %102, 31
  %122 = xor i32 %121, %120
  %123 = xor i32 %118, %120
  %124 = add nuw nsw i32 %123, %122
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %39, align 1
  %127 = icmp ne i8 %119, 0
  %128 = xor i1 %127, %125
  %.v99 = select i1 %128, i64 26, i64 1269
  %129 = add i64 %91, %.v99
  store i64 %129, i64* %3, align 8
  br i1 %128, label %block_427300, label %block_.L_4277db

block_427300:                                     ; preds = %block_.L_4272e6
  %130 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %130, i64* %RAX.i583, align 8
  %131 = add i64 %130, 6472
  %132 = add i64 %129, 15
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %RAX.i583, align 8
  %135 = add i64 %129, 22
  store i64 %135, i64* %3, align 8
  %136 = load i32, i32* %95, align 4
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %RCX.i854, align 8
  %138 = add i64 %134, %137
  %139 = add i64 %129, 26
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i8*
  %141 = load i8, i8* %140, align 1
  store i8 0, i8* %14, align 1
  %142 = zext i8 %141 to i32
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142)
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %147 = icmp eq i8 %141, 0
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %30, align 1
  %149 = lshr i8 %141, 7
  store i8 %149, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v100 = select i1 %147, i64 1218, i64 32
  %150 = add i64 %129, %.v100
  store i64 %150, i64* %3, align 8
  br i1 %147, label %block_.L_4277c2, label %block_427320

block_427320:                                     ; preds = %block_427300
  %151 = add i64 %92, -1056
  store i64 %151, i64* %RSI.i836, align 8
  %152 = add i64 %92, -1060
  store i64 %152, i64* %RDX.i833, align 8
  %153 = add i64 %150, 20
  store i64 %153, i64* %3, align 8
  %154 = load i32, i32* %95, align 4
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RDI.i830, align 8
  %156 = add i64 %150, 143472
  %157 = add i64 %150, 25
  %158 = load i64, i64* %6, align 8
  %159 = add i64 %158, -8
  %160 = inttoptr i64 %159 to i64*
  store i64 %157, i64* %160, align 8
  store i64 %159, i64* %6, align 8
  store i64 %156, i64* %3, align 8
  %call2_427334 = tail call %struct.Memory* @sub_44a390.get_mb_pos(%struct.State* nonnull %0, i64 %156, %struct.Memory* %MEMORY.0)
  %161 = load i64, i64* %RBP.i, align 8
  %162 = add i64 %161, -1052
  %163 = load i64, i64* %3, align 8
  %164 = add i64 %163, 10
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %162 to i32*
  store i32 0, i32* %165, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_427343

block_.L_427343:                                  ; preds = %block_.L_4273c8, %block_427320
  %166 = phi i64 [ %422, %block_.L_4273c8 ], [ %.pre67, %block_427320 ]
  %167 = load i64, i64* %RBP.i, align 8
  %168 = add i64 %167, -1052
  %169 = add i64 %166, 7
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %168 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = add i32 %171, -32
  %173 = icmp ult i32 %171, 32
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %14, align 1
  %175 = and i32 %172, 255
  %176 = tail call i32 @llvm.ctpop.i32(i32 %175)
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  store i8 %179, i8* %21, align 1
  %180 = xor i32 %172, %171
  %181 = lshr i32 %180, 4
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %27, align 1
  %184 = icmp eq i32 %172, 0
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %30, align 1
  %186 = lshr i32 %172, 31
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %33, align 1
  %188 = lshr i32 %171, 31
  %189 = xor i32 %186, %188
  %190 = add nuw nsw i32 %189, %188
  %191 = icmp eq i32 %190, 2
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %39, align 1
  %193 = icmp ne i8 %187, 0
  %194 = xor i1 %193, %191
  %.v101 = select i1 %194, i64 13, i64 158
  %195 = add i64 %166, %.v101
  store i64 %195, i64* %3, align 8
  br i1 %194, label %block_427350, label %block_.L_4273e1

block_427350:                                     ; preds = %block_.L_427343
  %196 = add i64 %167, -1048
  %197 = add i64 %195, 10
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  store i32 0, i32* %198, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_42735a

block_.L_42735a:                                  ; preds = %block_427367, %block_427350
  %199 = phi i64 [ %392, %block_427367 ], [ %.pre86, %block_427350 ]
  %200 = load i64, i64* %RBP.i, align 8
  %201 = add i64 %200, -1048
  %202 = add i64 %199, 7
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %201 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = add i32 %204, -16
  %206 = icmp ult i32 %204, 16
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %14, align 1
  %208 = and i32 %205, 255
  %209 = tail call i32 @llvm.ctpop.i32(i32 %208)
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = xor i8 %211, 1
  store i8 %212, i8* %21, align 1
  %213 = xor i32 %204, 16
  %214 = xor i32 %213, %205
  %215 = lshr i32 %214, 4
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  store i8 %217, i8* %27, align 1
  %218 = icmp eq i32 %205, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %30, align 1
  %220 = lshr i32 %205, 31
  %221 = trunc i32 %220 to i8
  store i8 %221, i8* %33, align 1
  %222 = lshr i32 %204, 31
  %223 = xor i32 %220, %222
  %224 = add nuw nsw i32 %223, %222
  %225 = icmp eq i32 %224, 2
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %39, align 1
  %227 = icmp ne i8 %221, 0
  %228 = xor i1 %227, %225
  %.v95 = select i1 %228, i64 13, i64 110
  %229 = add i64 %199, %.v95
  store i64 %229, i64* %3, align 8
  br i1 %228, label %block_427367, label %block_.L_4273c8

block_427367:                                     ; preds = %block_.L_42735a
  %230 = add i64 %200, -1024
  store i64 %230, i64* %RAX.i583, align 8
  %231 = add i64 %200, -1032
  %232 = add i64 %229, 14
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RCX.i854, align 8
  %235 = add i64 %200, -1060
  %236 = add i64 %229, 20
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RDX.i833, align 8
  %240 = add i64 %200, -1052
  %241 = add i64 %229, 26
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = add i32 %243, %238
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %RDX.i833, align 8
  %246 = icmp ult i32 %244, %238
  %247 = icmp ult i32 %244, %243
  %248 = or i1 %246, %247
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %14, align 1
  %250 = and i32 %244, 255
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250)
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %21, align 1
  %255 = xor i32 %243, %238
  %256 = xor i32 %255, %244
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %27, align 1
  %260 = icmp eq i32 %244, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %30, align 1
  %262 = lshr i32 %244, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %33, align 1
  %264 = lshr i32 %238, 31
  %265 = lshr i32 %243, 31
  %266 = xor i32 %262, %264
  %267 = xor i32 %262, %265
  %268 = add nuw nsw i32 %266, %267
  %269 = icmp eq i32 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %39, align 1
  %271 = sext i32 %244 to i64
  store i64 %271, i64* %RSI.i836, align 8
  %272 = shl nsw i64 %271, 3
  %273 = add i64 %234, %272
  %274 = add i64 %229, 33
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %RCX.i854, align 8
  %277 = add i64 %200, -1056
  %278 = add i64 %229, 39
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RDX.i833, align 8
  %282 = add i64 %229, 45
  store i64 %282, i64* %3, align 8
  %283 = load i32, i32* %203, align 4
  %284 = add i32 %283, %280
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RDX.i833, align 8
  %286 = icmp ult i32 %284, %280
  %287 = icmp ult i32 %284, %283
  %288 = or i1 %286, %287
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %14, align 1
  %290 = and i32 %284, 255
  %291 = tail call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %21, align 1
  %295 = xor i32 %283, %280
  %296 = xor i32 %295, %284
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %27, align 1
  %300 = icmp eq i32 %284, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %30, align 1
  %302 = lshr i32 %284, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %33, align 1
  %304 = lshr i32 %280, 31
  %305 = lshr i32 %283, 31
  %306 = xor i32 %302, %304
  %307 = xor i32 %302, %305
  %308 = add nuw nsw i32 %306, %307
  %309 = icmp eq i32 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %39, align 1
  %311 = sext i32 %284 to i64
  store i64 %311, i64* %RSI.i836, align 8
  %312 = shl nsw i64 %311, 1
  %313 = add i64 %276, %312
  %314 = add i64 %229, 52
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i16*
  %316 = load i16, i16* %315, align 2
  store i16 %316, i16* %DI.i788, align 2
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -1048
  %319 = add i64 %229, 59
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = shl nsw i64 %322, 6
  store i64 %323, i64* %RCX.i854, align 8
  %324 = load i64, i64* %RAX.i583, align 8
  %325 = add i64 %323, %324
  store i64 %325, i64* %RAX.i583, align 8
  %326 = icmp ult i64 %325, %324
  %327 = icmp ult i64 %325, %323
  %328 = or i1 %326, %327
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %14, align 1
  %330 = trunc i64 %325 to i32
  %331 = and i32 %330, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331)
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %21, align 1
  %336 = xor i64 %324, %325
  %337 = lshr i64 %336, 4
  %338 = trunc i64 %337 to i8
  %339 = and i8 %338, 1
  store i8 %339, i8* %27, align 1
  %340 = icmp eq i64 %325, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %30, align 1
  %342 = lshr i64 %325, 63
  %343 = trunc i64 %342 to i8
  store i8 %343, i8* %33, align 1
  %344 = lshr i64 %324, 63
  %345 = lshr i64 %322, 57
  %346 = and i64 %345, 1
  %347 = xor i64 %342, %344
  %348 = xor i64 %342, %346
  %349 = add nuw nsw i64 %347, %348
  %350 = icmp eq i64 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %39, align 1
  %352 = add i64 %317, -1052
  %353 = add i64 %229, 73
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  store i64 %356, i64* %RCX.i854, align 8
  %357 = shl nsw i64 %356, 1
  %358 = add i64 %357, %325
  %359 = add i64 %229, 77
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i16*
  store i16 %316, i16* %360, align 2
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -1048
  %363 = load i64, i64* %3, align 8
  %364 = add i64 %363, 6
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %362 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = add i32 %366, 1
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RAX.i583, align 8
  %369 = icmp eq i32 %366, -1
  %370 = icmp eq i32 %367, 0
  %371 = or i1 %369, %370
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %14, align 1
  %373 = and i32 %367, 255
  %374 = tail call i32 @llvm.ctpop.i32(i32 %373)
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, i8* %21, align 1
  %378 = xor i32 %367, %366
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %27, align 1
  %382 = zext i1 %370 to i8
  store i8 %382, i8* %30, align 1
  %383 = lshr i32 %367, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %33, align 1
  %385 = lshr i32 %366, 31
  %386 = xor i32 %383, %385
  %387 = add nuw nsw i32 %386, %383
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %39, align 1
  %390 = add i64 %363, 15
  store i64 %390, i64* %3, align 8
  store i32 %367, i32* %365, align 4
  %391 = load i64, i64* %3, align 8
  %392 = add i64 %391, -105
  store i64 %392, i64* %3, align 8
  br label %block_.L_42735a

block_.L_4273c8:                                  ; preds = %block_.L_42735a
  %393 = add i64 %200, -1052
  %394 = add i64 %229, 11
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = add i32 %396, 1
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RAX.i583, align 8
  %399 = icmp eq i32 %396, -1
  %400 = icmp eq i32 %397, 0
  %401 = or i1 %399, %400
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %14, align 1
  %403 = and i32 %397, 255
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403)
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %21, align 1
  %408 = xor i32 %397, %396
  %409 = lshr i32 %408, 4
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  store i8 %411, i8* %27, align 1
  %412 = zext i1 %400 to i8
  store i8 %412, i8* %30, align 1
  %413 = lshr i32 %397, 31
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %33, align 1
  %415 = lshr i32 %396, 31
  %416 = xor i32 %413, %415
  %417 = add nuw nsw i32 %416, %413
  %418 = icmp eq i32 %417, 2
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %39, align 1
  %420 = add i64 %229, 20
  store i64 %420, i64* %3, align 8
  store i32 %397, i32* %395, align 4
  %421 = load i64, i64* %3, align 8
  %422 = add i64 %421, -153
  store i64 %422, i64* %3, align 8
  br label %block_.L_427343

block_.L_4273e1:                                  ; preds = %block_.L_427343
  %423 = add i64 %195, 10
  store i64 %423, i64* %3, align 8
  store i32 0, i32* %170, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_4273eb

block_.L_4273eb:                                  ; preds = %block_.L_4274d2, %block_.L_4273e1
  %424 = phi i64 [ %846, %block_.L_4274d2 ], [ %.pre68, %block_.L_4273e1 ]
  %425 = load i64, i64* %RBP.i, align 8
  %426 = add i64 %425, -1052
  %427 = add i64 %424, 7
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = add i32 %429, -16
  %431 = icmp ult i32 %429, 16
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %14, align 1
  %433 = and i32 %430, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433)
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %21, align 1
  %438 = xor i32 %429, 16
  %439 = xor i32 %438, %430
  %440 = lshr i32 %439, 4
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, i8* %27, align 1
  %443 = icmp eq i32 %430, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %30, align 1
  %445 = lshr i32 %430, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %33, align 1
  %447 = lshr i32 %429, 31
  %448 = xor i32 %445, %447
  %449 = add nuw nsw i32 %448, %447
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %39, align 1
  %452 = icmp ne i8 %446, 0
  %453 = xor i1 %452, %450
  %.v102 = select i1 %453, i64 13, i64 256
  %454 = add i64 %424, %.v102
  store i64 %454, i64* %3, align 8
  br i1 %453, label %block_4273f8, label %block_.L_4274eb

block_4273f8:                                     ; preds = %block_.L_4273eb
  %455 = add i64 %425, -1048
  %456 = add i64 %454, 10
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  store i32 0, i32* %457, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_427402

block_.L_427402:                                  ; preds = %block_42740f, %block_4273f8
  %458 = phi i64 [ %816, %block_42740f ], [ %.pre85, %block_4273f8 ]
  %459 = load i64, i64* %RBP.i, align 8
  %460 = add i64 %459, -1048
  %461 = add i64 %458, 7
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = add i32 %463, -16
  %465 = icmp ult i32 %463, 16
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %14, align 1
  %467 = and i32 %464, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %21, align 1
  %472 = xor i32 %463, 16
  %473 = xor i32 %472, %464
  %474 = lshr i32 %473, 4
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  store i8 %476, i8* %27, align 1
  %477 = icmp eq i32 %464, 0
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %30, align 1
  %479 = lshr i32 %464, 31
  %480 = trunc i32 %479 to i8
  store i8 %480, i8* %33, align 1
  %481 = lshr i32 %463, 31
  %482 = xor i32 %479, %481
  %483 = add nuw nsw i32 %482, %481
  %484 = icmp eq i32 %483, 2
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %39, align 1
  %486 = icmp ne i8 %480, 0
  %487 = xor i1 %486, %484
  %.v94 = select i1 %487, i64 13, i64 208
  %488 = add i64 %458, %.v94
  store i64 %488, i64* %3, align 8
  br i1 %487, label %block_42740f, label %block_.L_4274d2

block_42740f:                                     ; preds = %block_.L_427402
  %489 = add i64 %459, -1024
  store i64 %489, i64* %RAX.i583, align 8
  %490 = add i64 %488, 14
  store i64 %490, i64* %3, align 8
  %491 = load i32, i32* %462, align 4
  %492 = sext i32 %491 to i64
  %493 = shl nsw i64 %492, 6
  store i64 %493, i64* %RCX.i854, align 8
  %494 = add i64 %493, %489
  store i64 %494, i64* %RDX.i833, align 8
  %495 = icmp ult i64 %494, %489
  %496 = icmp ult i64 %494, %493
  %497 = or i1 %495, %496
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %14, align 1
  %499 = trunc i64 %494 to i32
  %500 = and i32 %499, 255
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500)
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  store i8 %504, i8* %21, align 1
  %505 = xor i64 %489, %494
  %506 = lshr i64 %505, 4
  %507 = trunc i64 %506 to i8
  %508 = and i8 %507, 1
  store i8 %508, i8* %27, align 1
  %509 = icmp eq i64 %494, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %30, align 1
  %511 = lshr i64 %494, 63
  %512 = trunc i64 %511 to i8
  store i8 %512, i8* %33, align 1
  %513 = lshr i64 %489, 63
  %514 = lshr i64 %492, 57
  %515 = and i64 %514, 1
  %516 = xor i64 %511, %513
  %517 = xor i64 %511, %515
  %518 = add nuw nsw i64 %516, %517
  %519 = icmp eq i64 %518, 2
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %39, align 1
  %521 = add i64 %459, -1052
  %522 = add i64 %488, 31
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = sext i32 %524 to i64
  store i64 %525, i64* %RCX.i854, align 8
  %526 = shl nsw i64 %525, 1
  %527 = add i64 %526, %494
  %528 = add i64 %488, 35
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i16*
  %530 = load i16, i16* %529, align 2
  store i16 %530, i16* %SI.i723, align 2
  %531 = add i64 %459, -1032
  %532 = add i64 %488, 42
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i64*
  %534 = load i64, i64* %533, align 8
  store i64 %534, i64* %RCX.i854, align 8
  %535 = add i64 %459, -1060
  %536 = add i64 %488, 48
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %535 to i32*
  %538 = load i32, i32* %537, align 4
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %RDI.i830, align 8
  %540 = add i64 %488, 55
  store i64 %540, i64* %3, align 8
  %541 = load i32, i32* %523, align 4
  %542 = shl i32 %541, 1
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %83, align 8
  %544 = add i32 %542, %538
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RDI.i830, align 8
  %546 = icmp ult i32 %544, %538
  %547 = icmp ult i32 %544, %542
  %548 = or i1 %546, %547
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %14, align 1
  %550 = and i32 %544, 255
  %551 = tail call i32 @llvm.ctpop.i32(i32 %550)
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  store i8 %554, i8* %21, align 1
  %555 = xor i32 %542, %538
  %556 = xor i32 %555, %544
  %557 = lshr i32 %556, 4
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  store i8 %559, i8* %27, align 1
  %560 = icmp eq i32 %544, 0
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %30, align 1
  %562 = lshr i32 %544, 31
  %563 = trunc i32 %562 to i8
  store i8 %563, i8* %33, align 1
  %564 = lshr i32 %538, 31
  %565 = lshr i32 %541, 30
  %566 = and i32 %565, 1
  %567 = xor i32 %562, %564
  %568 = xor i32 %562, %566
  %569 = add nuw nsw i32 %567, %568
  %570 = icmp eq i32 %569, 2
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %39, align 1
  %572 = sext i32 %544 to i64
  store i64 %572, i64* %RDX.i833, align 8
  %573 = shl nsw i64 %572, 3
  %574 = add i64 %534, %573
  %575 = add i64 %488, 68
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i64*
  %577 = load i64, i64* %576, align 8
  store i64 %577, i64* %RCX.i854, align 8
  %578 = load i64, i64* %RBP.i, align 8
  %579 = add i64 %578, -1056
  %580 = add i64 %488, 74
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i32*
  %582 = load i32, i32* %581, align 4
  %583 = zext i32 %582 to i64
  store i64 %583, i64* %RDI.i830, align 8
  %584 = add i64 %578, -1048
  %585 = add i64 %488, 80
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i32*
  %587 = load i32, i32* %586, align 4
  %588 = add i32 %587, %582
  %589 = zext i32 %588 to i64
  store i64 %589, i64* %RDI.i830, align 8
  %590 = icmp ult i32 %588, %582
  %591 = icmp ult i32 %588, %587
  %592 = or i1 %590, %591
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %14, align 1
  %594 = and i32 %588, 255
  %595 = tail call i32 @llvm.ctpop.i32(i32 %594)
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  %598 = xor i8 %597, 1
  store i8 %598, i8* %21, align 1
  %599 = xor i32 %587, %582
  %600 = xor i32 %599, %588
  %601 = lshr i32 %600, 4
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  store i8 %603, i8* %27, align 1
  %604 = icmp eq i32 %588, 0
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %30, align 1
  %606 = lshr i32 %588, 31
  %607 = trunc i32 %606 to i8
  store i8 %607, i8* %33, align 1
  %608 = lshr i32 %582, 31
  %609 = lshr i32 %587, 31
  %610 = xor i32 %606, %608
  %611 = xor i32 %606, %609
  %612 = add nuw nsw i32 %610, %611
  %613 = icmp eq i32 %612, 2
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %39, align 1
  %615 = sext i32 %588 to i64
  store i64 %615, i64* %RDX.i833, align 8
  %616 = shl nsw i64 %615, 1
  %617 = add i64 %577, %616
  %618 = load i16, i16* %SI.i723, align 2
  %619 = add i64 %488, 87
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %617 to i16*
  store i16 %618, i16* %620, align 2
  %621 = load i64, i64* %RBP.i, align 8
  %622 = add i64 %621, -1048
  %623 = load i64, i64* %3, align 8
  %624 = add i64 %623, 7
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %622 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = sext i32 %626 to i64
  %628 = shl nsw i64 %627, 6
  store i64 %628, i64* %RCX.i854, align 8
  %629 = load i64, i64* %RAX.i583, align 8
  %630 = add i64 %628, %629
  store i64 %630, i64* %RAX.i583, align 8
  %631 = icmp ult i64 %630, %629
  %632 = icmp ult i64 %630, %628
  %633 = or i1 %631, %632
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %14, align 1
  %635 = trunc i64 %630 to i32
  %636 = and i32 %635, 255
  %637 = tail call i32 @llvm.ctpop.i32(i32 %636)
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  %640 = xor i8 %639, 1
  store i8 %640, i8* %21, align 1
  %641 = xor i64 %629, %630
  %642 = lshr i64 %641, 4
  %643 = trunc i64 %642 to i8
  %644 = and i8 %643, 1
  store i8 %644, i8* %27, align 1
  %645 = icmp eq i64 %630, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %30, align 1
  %647 = lshr i64 %630, 63
  %648 = trunc i64 %647 to i8
  store i8 %648, i8* %33, align 1
  %649 = lshr i64 %629, 63
  %650 = lshr i64 %627, 57
  %651 = and i64 %650, 1
  %652 = xor i64 %647, %649
  %653 = xor i64 %647, %651
  %654 = add nuw nsw i64 %652, %653
  %655 = icmp eq i64 %654, 2
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %39, align 1
  %657 = add i64 %621, -1052
  %658 = add i64 %623, 20
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = add i32 %660, 16
  %662 = zext i32 %661 to i64
  store i64 %662, i64* %RDI.i830, align 8
  %663 = icmp ugt i32 %660, -17
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %14, align 1
  %665 = and i32 %661, 255
  %666 = tail call i32 @llvm.ctpop.i32(i32 %665)
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  %669 = xor i8 %668, 1
  store i8 %669, i8* %21, align 1
  %670 = xor i32 %660, 16
  %671 = xor i32 %670, %661
  %672 = lshr i32 %671, 4
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  store i8 %674, i8* %27, align 1
  %675 = icmp eq i32 %661, 0
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %30, align 1
  %677 = lshr i32 %661, 31
  %678 = trunc i32 %677 to i8
  store i8 %678, i8* %33, align 1
  %679 = lshr i32 %660, 31
  %680 = xor i32 %677, %679
  %681 = add nuw nsw i32 %680, %677
  %682 = icmp eq i32 %681, 2
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %39, align 1
  %684 = sext i32 %661 to i64
  store i64 %684, i64* %RCX.i854, align 8
  %685 = shl nsw i64 %684, 1
  %686 = add i64 %630, %685
  %687 = add i64 %623, 30
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %686 to i16*
  %689 = load i16, i16* %688, align 2
  store i16 %689, i16* %SI.i723, align 2
  %690 = load i64, i64* %RBP.i, align 8
  %691 = add i64 %690, -1032
  %692 = add i64 %623, 37
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i64*
  %694 = load i64, i64* %693, align 8
  store i64 %694, i64* %RAX.i583, align 8
  %695 = add i64 %690, -1060
  %696 = add i64 %623, 43
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = zext i32 %698 to i64
  store i64 %699, i64* %RDI.i830, align 8
  %700 = add i64 %690, -1052
  %701 = add i64 %623, 50
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = shl i32 %703, 1
  %705 = or i32 %704, 1
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %83, align 8
  %707 = lshr i32 %703, 30
  %708 = and i32 %707, 1
  %709 = add i32 %705, %698
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RDI.i830, align 8
  %711 = icmp ult i32 %709, %698
  %712 = icmp ult i32 %709, %705
  %713 = or i1 %711, %712
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %14, align 1
  %715 = and i32 %709, 255
  %716 = tail call i32 @llvm.ctpop.i32(i32 %715)
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  %719 = xor i8 %718, 1
  store i8 %719, i8* %21, align 1
  %720 = xor i32 %704, %698
  %721 = xor i32 %720, %709
  %722 = lshr i32 %721, 4
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  store i8 %724, i8* %27, align 1
  %725 = icmp eq i32 %709, 0
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %30, align 1
  %727 = lshr i32 %709, 31
  %728 = trunc i32 %727 to i8
  store i8 %728, i8* %33, align 1
  %729 = lshr i32 %698, 31
  %730 = xor i32 %727, %729
  %731 = xor i32 %727, %708
  %732 = add nuw nsw i32 %730, %731
  %733 = icmp eq i32 %732, 2
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %39, align 1
  %735 = sext i32 %709 to i64
  store i64 %735, i64* %RCX.i854, align 8
  %736 = load i64, i64* %RAX.i583, align 8
  %737 = shl nsw i64 %735, 3
  %738 = add i64 %736, %737
  %739 = add i64 %623, 67
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i64*
  %741 = load i64, i64* %740, align 8
  store i64 %741, i64* %RAX.i583, align 8
  %742 = load i64, i64* %RBP.i, align 8
  %743 = add i64 %742, -1056
  %744 = add i64 %623, 73
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i32*
  %746 = load i32, i32* %745, align 4
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RDI.i830, align 8
  %748 = add i64 %742, -1048
  %749 = add i64 %623, 79
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = add i32 %751, %746
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %RDI.i830, align 8
  %754 = icmp ult i32 %752, %746
  %755 = icmp ult i32 %752, %751
  %756 = or i1 %754, %755
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %14, align 1
  %758 = and i32 %752, 255
  %759 = tail call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  store i8 %762, i8* %21, align 1
  %763 = xor i32 %751, %746
  %764 = xor i32 %763, %752
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %27, align 1
  %768 = icmp eq i32 %752, 0
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %30, align 1
  %770 = lshr i32 %752, 31
  %771 = trunc i32 %770 to i8
  store i8 %771, i8* %33, align 1
  %772 = lshr i32 %746, 31
  %773 = lshr i32 %751, 31
  %774 = xor i32 %770, %772
  %775 = xor i32 %770, %773
  %776 = add nuw nsw i32 %774, %775
  %777 = icmp eq i32 %776, 2
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %39, align 1
  %779 = sext i32 %752 to i64
  store i64 %779, i64* %RCX.i854, align 8
  %780 = shl nsw i64 %779, 1
  %781 = add i64 %741, %780
  %782 = load i16, i16* %SI.i723, align 2
  %783 = add i64 %623, 86
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %781 to i16*
  store i16 %782, i16* %784, align 2
  %785 = load i64, i64* %RBP.i, align 8
  %786 = add i64 %785, -1048
  %787 = load i64, i64* %3, align 8
  %788 = add i64 %787, 6
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %786 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = add i32 %790, 1
  %792 = zext i32 %791 to i64
  store i64 %792, i64* %RAX.i583, align 8
  %793 = icmp eq i32 %790, -1
  %794 = icmp eq i32 %791, 0
  %795 = or i1 %793, %794
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %14, align 1
  %797 = and i32 %791, 255
  %798 = tail call i32 @llvm.ctpop.i32(i32 %797)
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = xor i8 %800, 1
  store i8 %801, i8* %21, align 1
  %802 = xor i32 %791, %790
  %803 = lshr i32 %802, 4
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  store i8 %805, i8* %27, align 1
  %806 = zext i1 %794 to i8
  store i8 %806, i8* %30, align 1
  %807 = lshr i32 %791, 31
  %808 = trunc i32 %807 to i8
  store i8 %808, i8* %33, align 1
  %809 = lshr i32 %790, 31
  %810 = xor i32 %807, %809
  %811 = add nuw nsw i32 %810, %807
  %812 = icmp eq i32 %811, 2
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %39, align 1
  %814 = add i64 %787, 15
  store i64 %814, i64* %3, align 8
  store i32 %791, i32* %789, align 4
  %815 = load i64, i64* %3, align 8
  %816 = add i64 %815, -203
  store i64 %816, i64* %3, align 8
  br label %block_.L_427402

block_.L_4274d2:                                  ; preds = %block_.L_427402
  %817 = add i64 %459, -1052
  %818 = add i64 %488, 11
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i32*
  %820 = load i32, i32* %819, align 4
  %821 = add i32 %820, 1
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RAX.i583, align 8
  %823 = icmp eq i32 %820, -1
  %824 = icmp eq i32 %821, 0
  %825 = or i1 %823, %824
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %14, align 1
  %827 = and i32 %821, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %21, align 1
  %832 = xor i32 %821, %820
  %833 = lshr i32 %832, 4
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  store i8 %835, i8* %27, align 1
  %836 = zext i1 %824 to i8
  store i8 %836, i8* %30, align 1
  %837 = lshr i32 %821, 31
  %838 = trunc i32 %837 to i8
  store i8 %838, i8* %33, align 1
  %839 = lshr i32 %820, 31
  %840 = xor i32 %837, %839
  %841 = add nuw nsw i32 %840, %837
  %842 = icmp eq i32 %841, 2
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %39, align 1
  %844 = add i64 %488, 20
  store i64 %844, i64* %3, align 8
  store i32 %821, i32* %819, align 4
  %845 = load i64, i64* %3, align 8
  %846 = add i64 %845, -251
  store i64 %846, i64* %3, align 8
  br label %block_.L_4273eb

block_.L_4274eb:                                  ; preds = %block_.L_4273eb
  store i64 16, i64* %RAX.i583, align 8
  %847 = add i64 %425, -1056
  %848 = add i64 %454, 11
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RCX.i854, align 8
  %852 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %852, i64* %RDX.i833, align 8
  %853 = add i64 %425, -1068
  %854 = add i64 %454, 25
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  store i32 16, i32* %855, align 4
  %856 = load i64, i64* %RBP.i, align 8
  %857 = add i64 %856, -1080
  %858 = load i64, i64* %RDX.i833, align 8
  %859 = load i64, i64* %3, align 8
  %860 = add i64 %859, 7
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %857 to i64*
  store i64 %858, i64* %861, align 8
  %862 = load i64, i64* %3, align 8
  %863 = load i32, i32* %EAX.i851, align 8
  %864 = sext i32 %863 to i64
  %865 = lshr i64 %864, 32
  store i64 %865, i64* %84, align 8
  %866 = load i64, i64* %RBP.i, align 8
  %867 = add i64 %866, -1080
  %868 = add i64 %862, 8
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i64*
  %870 = load i64, i64* %869, align 8
  store i64 %870, i64* %RSI.i836, align 8
  %871 = add i64 %870, 72708
  %872 = add i64 %862, 14
  store i64 %872, i64* %3, align 8
  %873 = zext i32 %863 to i64
  %874 = inttoptr i64 %871 to i32*
  %875 = load i32, i32* %874, align 4
  %876 = sext i32 %875 to i64
  %877 = shl nuw i64 %865, 32
  %878 = or i64 %877, %873
  %879 = sdiv i64 %878, %876
  %880 = shl i64 %879, 32
  %881 = ashr exact i64 %880, 32
  %882 = icmp eq i64 %879, %881
  br i1 %882, label %885, label %883

; <label>:883:                                    ; preds = %block_.L_4274eb
  %884 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %872, %struct.Memory* %MEMORY.0)
  %.pre69 = load i64, i64* %RBP.i, align 8
  %.pre70 = load i32, i32* %EAX.i851, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %routine_idivl_0x11c04__rsi_.exit

; <label>:885:                                    ; preds = %block_.L_4274eb
  %886 = srem i64 %878, %876
  %887 = and i64 %879, 4294967295
  store i64 %887, i64* %RAX.i583, align 8
  %888 = and i64 %886, 4294967295
  store i64 %888, i64* %RDX.i833, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %889 = trunc i64 %879 to i32
  br label %routine_idivl_0x11c04__rsi_.exit

routine_idivl_0x11c04__rsi_.exit:                 ; preds = %885, %883
  %890 = phi i64 [ %.pre71, %883 ], [ %872, %885 ]
  %891 = phi i32 [ %.pre70, %883 ], [ %889, %885 ]
  %892 = phi i64 [ %.pre69, %883 ], [ %866, %885 ]
  %893 = phi %struct.Memory* [ %884, %883 ], [ %MEMORY.0, %885 ]
  %894 = add i64 %892, -1084
  %895 = add i64 %890, 6
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i32*
  store i32 %891, i32* %896, align 4
  %897 = load i32, i32* %ECX.i589, align 4
  %898 = zext i32 %897 to i64
  %899 = load i64, i64* %3, align 8
  store i64 %898, i64* %RAX.i583, align 8
  %900 = sext i32 %897 to i64
  %901 = lshr i64 %900, 32
  store i64 %901, i64* %84, align 8
  %902 = load i64, i64* %RBP.i, align 8
  %903 = add i64 %902, -1084
  %904 = add i64 %899, 9
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RCX.i854, align 8
  %908 = add i64 %899, 11
  store i64 %908, i64* %3, align 8
  %909 = sext i32 %906 to i64
  %910 = shl nuw i64 %901, 32
  %911 = or i64 %910, %898
  %912 = sdiv i64 %911, %909
  %913 = shl i64 %912, 32
  %914 = ashr exact i64 %913, 32
  %915 = icmp eq i64 %912, %914
  br i1 %915, label %918, label %916

; <label>:916:                                    ; preds = %routine_idivl_0x11c04__rsi_.exit
  %917 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %908, %struct.Memory* %893)
  %.pre72 = load i64, i64* %RBP.i, align 8
  %.pre73 = load i32, i32* %EAX.i851, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:918:                                    ; preds = %routine_idivl_0x11c04__rsi_.exit
  %919 = srem i64 %911, %909
  %920 = and i64 %912, 4294967295
  store i64 %920, i64* %RAX.i583, align 8
  %921 = and i64 %919, 4294967295
  store i64 %921, i64* %RDX.i833, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %922 = trunc i64 %912 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %918, %916
  %923 = phi i64 [ %.pre74, %916 ], [ %908, %918 ]
  %924 = phi i32 [ %.pre73, %916 ], [ %922, %918 ]
  %925 = phi i64 [ %.pre72, %916 ], [ %902, %918 ]
  %926 = phi %struct.Memory* [ %917, %916 ], [ %893, %918 ]
  %927 = add i64 %925, -1056
  %928 = add i64 %923, 6
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i32*
  store i32 %924, i32* %929, align 4
  %930 = load i64, i64* %RBP.i, align 8
  %931 = add i64 %930, -1060
  %932 = load i64, i64* %3, align 8
  %933 = add i64 %932, 6
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %931 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RAX.i583, align 8
  %937 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %937, i64* %RDI.i830, align 8
  %938 = add i64 %930, -1068
  %939 = add i64 %932, 21
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %83, align 8
  %943 = add i64 %930, -1088
  %944 = add i64 %932, 27
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  store i32 %935, i32* %945, align 4
  %946 = load i32, i32* %R8D.i714, align 4
  %947 = zext i32 %946 to i64
  %948 = load i64, i64* %3, align 8
  store i64 %947, i64* %RAX.i583, align 8
  %949 = sext i32 %946 to i64
  %950 = lshr i64 %949, 32
  store i64 %950, i64* %84, align 8
  %951 = load i64, i64* %RDI.i830, align 8
  %952 = add i64 %951, 72712
  %953 = add i64 %948, 10
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = sext i32 %955 to i64
  %957 = shl nuw i64 %950, 32
  %958 = or i64 %957, %947
  %959 = sdiv i64 %958, %956
  %960 = shl i64 %959, 32
  %961 = ashr exact i64 %960, 32
  %962 = icmp eq i64 %959, %961
  br i1 %962, label %965, label %963

; <label>:963:                                    ; preds = %routine_idivl__ecx.exit
  %964 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %953, %struct.Memory* %926)
  %.pre75 = load i64, i64* %3, align 8
  %.pre76 = load i32, i32* %EAX.i851, align 4
  br label %routine_idivl_0x11c08__rdi_.exit

; <label>:965:                                    ; preds = %routine_idivl__ecx.exit
  %966 = srem i64 %958, %956
  %967 = and i64 %959, 4294967295
  store i64 %967, i64* %RAX.i583, align 8
  %968 = and i64 %966, 4294967295
  store i64 %968, i64* %RDX.i833, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %969 = trunc i64 %959 to i32
  br label %routine_idivl_0x11c08__rdi_.exit

routine_idivl_0x11c08__rdi_.exit:                 ; preds = %965, %963
  %970 = phi i32 [ %.pre76, %963 ], [ %969, %965 ]
  %971 = phi i64 [ %.pre75, %963 ], [ %953, %965 ]
  %972 = phi %struct.Memory* [ %964, %963 ], [ %926, %965 ]
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -1088
  %975 = add i64 %971, 7
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %86, align 8
  %979 = add i64 %973, -1092
  %980 = add i64 %971, 13
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  store i32 %970, i32* %981, align 4
  %982 = load i32, i32* %R9D.i557, align 4
  %983 = zext i32 %982 to i64
  %984 = load i64, i64* %3, align 8
  store i64 %983, i64* %RAX.i583, align 8
  %985 = sext i32 %982 to i64
  %986 = lshr i64 %985, 32
  store i64 %986, i64* %84, align 8
  %987 = load i64, i64* %RBP.i, align 8
  %988 = add i64 %987, -1092
  %989 = add i64 %984, 11
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %988 to i32*
  %991 = load i32, i32* %990, align 4
  %992 = zext i32 %991 to i64
  store i64 %992, i64* %87, align 8
  %993 = add i64 %984, 14
  store i64 %993, i64* %3, align 8
  %994 = sext i32 %991 to i64
  %995 = shl nuw i64 %986, 32
  %996 = or i64 %995, %983
  %997 = sdiv i64 %996, %994
  %998 = shl i64 %997, 32
  %999 = ashr exact i64 %998, 32
  %1000 = icmp eq i64 %997, %999
  br i1 %1000, label %1003, label %1001

; <label>:1001:                                   ; preds = %routine_idivl_0x11c08__rdi_.exit
  %1002 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %993, %struct.Memory* %972)
  %.pre77 = load i64, i64* %RBP.i, align 8
  %.pre78 = load i32, i32* %EAX.i851, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %routine_idivl__r10d.exit

; <label>:1003:                                   ; preds = %routine_idivl_0x11c08__rdi_.exit
  %1004 = srem i64 %996, %994
  %1005 = and i64 %997, 4294967295
  store i64 %1005, i64* %RAX.i583, align 8
  %1006 = and i64 %1004, 4294967295
  store i64 %1006, i64* %RDX.i833, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1007 = trunc i64 %997 to i32
  br label %routine_idivl__r10d.exit

routine_idivl__r10d.exit:                         ; preds = %1003, %1001
  %1008 = phi i64 [ %.pre79, %1001 ], [ %993, %1003 ]
  %1009 = phi i32 [ %.pre78, %1001 ], [ %1007, %1003 ]
  %1010 = phi i64 [ %.pre77, %1001 ], [ %987, %1003 ]
  %1011 = phi %struct.Memory* [ %1002, %1001 ], [ %972, %1003 ]
  %1012 = add i64 %1010, -1060
  %1013 = add i64 %1008, 6
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i32*
  store i32 %1009, i32* %1014, align 4
  %1015 = load i64, i64* %RBP.i, align 8
  %1016 = add i64 %1015, -1064
  %1017 = load i64, i64* %3, align 8
  %1018 = add i64 %1017, 10
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1016 to i32*
  store i32 0, i32* %1019, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_427580

block_.L_427580:                                  ; preds = %block_.L_4277a4, %routine_idivl__r10d.exit
  %1020 = phi i64 [ %1842, %block_.L_4277a4 ], [ %.pre80, %routine_idivl__r10d.exit ]
  %1021 = load i64, i64* %RBP.i, align 8
  %1022 = add i64 %1021, -1064
  %1023 = add i64 %1020, 7
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = add i32 %1025, -2
  %1027 = icmp ult i32 %1025, 2
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %14, align 1
  %1029 = and i32 %1026, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %21, align 1
  %1034 = xor i32 %1026, %1025
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  store i8 %1037, i8* %27, align 1
  %1038 = icmp eq i32 %1026, 0
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %30, align 1
  %1040 = lshr i32 %1026, 31
  %1041 = trunc i32 %1040 to i8
  store i8 %1041, i8* %33, align 1
  %1042 = lshr i32 %1025, 31
  %1043 = xor i32 %1040, %1042
  %1044 = add nuw nsw i32 %1043, %1042
  %1045 = icmp eq i32 %1044, 2
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %39, align 1
  %1047 = icmp ne i8 %1041, 0
  %1048 = xor i1 %1047, %1045
  %.v103 = select i1 %1048, i64 13, i64 573
  %1049 = add i64 %1020, %.v103
  store i64 %1049, i64* %3, align 8
  br i1 %1048, label %block_42758d, label %block_.L_4277bd

block_42758d:                                     ; preds = %block_.L_427580
  %1050 = add i64 %1021, -1052
  %1051 = add i64 %1049, 10
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  store i32 0, i32* %1052, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_427597

block_.L_427597:                                  ; preds = %block_.L_427646, %block_42758d
  %1053 = phi i64 [ %1339, %block_.L_427646 ], [ %.pre81, %block_42758d ]
  %1054 = load i64, i64* %RBP.i, align 8
  %1055 = add i64 %1054, -1052
  %1056 = add i64 %1053, 6
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to i32*
  %1058 = load i32, i32* %1057, align 4
  %1059 = zext i32 %1058 to i64
  store i64 %1059, i64* %RAX.i583, align 8
  %1060 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1060, i64* %RCX.i854, align 8
  %1061 = add i64 %1060, 72712
  %1062 = add i64 %1053, 20
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = shl i32 %1064, 1
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RDX.i833, align 8
  %1067 = sub i32 %1058, %1065
  %1068 = icmp ult i32 %1058, %1065
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %14, align 1
  %1070 = and i32 %1067, 255
  %1071 = tail call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  store i8 %1074, i8* %21, align 1
  %1075 = xor i32 %1065, %1058
  %1076 = xor i32 %1075, %1067
  %1077 = lshr i32 %1076, 4
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  store i8 %1079, i8* %27, align 1
  %1080 = icmp eq i32 %1067, 0
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %30, align 1
  %1082 = lshr i32 %1067, 31
  %1083 = trunc i32 %1082 to i8
  store i8 %1083, i8* %33, align 1
  %1084 = lshr i32 %1058, 31
  %1085 = lshr i32 %1064, 30
  %1086 = and i32 %1085, 1
  %1087 = xor i32 %1086, %1084
  %1088 = xor i32 %1082, %1084
  %1089 = add nuw nsw i32 %1088, %1087
  %1090 = icmp eq i32 %1089, 2
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %39, align 1
  %1092 = icmp ne i8 %1083, 0
  %1093 = xor i1 %1092, %1090
  %.v104 = select i1 %1093, i64 30, i64 199
  %1094 = add i64 %1053, %.v104
  store i64 %1094, i64* %3, align 8
  br i1 %1093, label %block_4275b6, label %block_.L_42765f

block_4275b6:                                     ; preds = %block_.L_427597
  %1095 = add i64 %1054, -1048
  %1096 = add i64 %1094, 10
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  store i32 0, i32* %1097, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_4275c0

block_.L_4275c0:                                  ; preds = %block_4275da, %block_4275b6
  %1098 = phi i64 [ %1309, %block_4275da ], [ %.pre84, %block_4275b6 ]
  %1099 = load i64, i64* %RBP.i, align 8
  %1100 = add i64 %1099, -1048
  %1101 = add i64 %1098, 6
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = zext i32 %1103 to i64
  store i64 %1104, i64* %RAX.i583, align 8
  %1105 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1105, i64* %RCX.i854, align 8
  %1106 = add i64 %1105, 72708
  %1107 = add i64 %1098, 20
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = sub i32 %1103, %1109
  %1111 = icmp ult i32 %1103, %1109
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %14, align 1
  %1113 = and i32 %1110, 255
  %1114 = tail call i32 @llvm.ctpop.i32(i32 %1113)
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  store i8 %1117, i8* %21, align 1
  %1118 = xor i32 %1109, %1103
  %1119 = xor i32 %1118, %1110
  %1120 = lshr i32 %1119, 4
  %1121 = trunc i32 %1120 to i8
  %1122 = and i8 %1121, 1
  store i8 %1122, i8* %27, align 1
  %1123 = icmp eq i32 %1110, 0
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %30, align 1
  %1125 = lshr i32 %1110, 31
  %1126 = trunc i32 %1125 to i8
  store i8 %1126, i8* %33, align 1
  %1127 = lshr i32 %1103, 31
  %1128 = lshr i32 %1109, 31
  %1129 = xor i32 %1128, %1127
  %1130 = xor i32 %1125, %1127
  %1131 = add nuw nsw i32 %1130, %1129
  %1132 = icmp eq i32 %1131, 2
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %39, align 1
  %1134 = icmp ne i8 %1126, 0
  %1135 = xor i1 %1134, %1132
  %.v93 = select i1 %1135, i64 26, i64 134
  %1136 = add i64 %1098, %.v93
  store i64 %1136, i64* %3, align 8
  br i1 %1135, label %block_4275da, label %block_.L_427646

block_4275da:                                     ; preds = %block_.L_4275c0
  %1137 = add i64 %1099, -1024
  store i64 %1137, i64* %RAX.i583, align 8
  %1138 = add i64 %1099, -1040
  %1139 = add i64 %1136, 14
  store i64 %1139, i64* %3, align 8
  %1140 = inttoptr i64 %1138 to i64*
  %1141 = load i64, i64* %1140, align 8
  store i64 %1141, i64* %RCX.i854, align 8
  %1142 = add i64 %1099, -1064
  %1143 = add i64 %1136, 21
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = sext i32 %1145 to i64
  store i64 %1146, i64* %RDX.i833, align 8
  %1147 = shl nsw i64 %1146, 3
  %1148 = add i64 %1147, %1141
  %1149 = add i64 %1136, 25
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i64*
  %1151 = load i64, i64* %1150, align 8
  store i64 %1151, i64* %RCX.i854, align 8
  %1152 = add i64 %1099, -1060
  %1153 = add i64 %1136, 31
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = zext i32 %1155 to i64
  store i64 %1156, i64* %RSI.i836, align 8
  %1157 = add i64 %1099, -1052
  %1158 = add i64 %1136, 37
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = add i32 %1160, %1155
  %1162 = zext i32 %1161 to i64
  store i64 %1162, i64* %RSI.i836, align 8
  %1163 = icmp ult i32 %1161, %1155
  %1164 = icmp ult i32 %1161, %1160
  %1165 = or i1 %1163, %1164
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %14, align 1
  %1167 = and i32 %1161, 255
  %1168 = tail call i32 @llvm.ctpop.i32(i32 %1167)
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = xor i8 %1170, 1
  store i8 %1171, i8* %21, align 1
  %1172 = xor i32 %1160, %1155
  %1173 = xor i32 %1172, %1161
  %1174 = lshr i32 %1173, 4
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  store i8 %1176, i8* %27, align 1
  %1177 = icmp eq i32 %1161, 0
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %30, align 1
  %1179 = lshr i32 %1161, 31
  %1180 = trunc i32 %1179 to i8
  store i8 %1180, i8* %33, align 1
  %1181 = lshr i32 %1155, 31
  %1182 = lshr i32 %1160, 31
  %1183 = xor i32 %1179, %1181
  %1184 = xor i32 %1179, %1182
  %1185 = add nuw nsw i32 %1183, %1184
  %1186 = icmp eq i32 %1185, 2
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %39, align 1
  %1188 = sext i32 %1161 to i64
  store i64 %1188, i64* %RDX.i833, align 8
  %1189 = shl nsw i64 %1188, 3
  %1190 = add i64 %1151, %1189
  %1191 = add i64 %1136, 44
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1190 to i64*
  %1193 = load i64, i64* %1192, align 8
  store i64 %1193, i64* %RCX.i854, align 8
  %1194 = add i64 %1099, -1056
  %1195 = add i64 %1136, 50
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i32*
  %1197 = load i32, i32* %1196, align 4
  %1198 = zext i32 %1197 to i64
  store i64 %1198, i64* %RSI.i836, align 8
  %1199 = add i64 %1136, 56
  store i64 %1199, i64* %3, align 8
  %1200 = load i32, i32* %1102, align 4
  %1201 = add i32 %1200, %1197
  %1202 = zext i32 %1201 to i64
  store i64 %1202, i64* %RSI.i836, align 8
  %1203 = icmp ult i32 %1201, %1197
  %1204 = icmp ult i32 %1201, %1200
  %1205 = or i1 %1203, %1204
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %14, align 1
  %1207 = and i32 %1201, 255
  %1208 = tail call i32 @llvm.ctpop.i32(i32 %1207)
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  store i8 %1211, i8* %21, align 1
  %1212 = xor i32 %1200, %1197
  %1213 = xor i32 %1212, %1201
  %1214 = lshr i32 %1213, 4
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  store i8 %1216, i8* %27, align 1
  %1217 = icmp eq i32 %1201, 0
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %30, align 1
  %1219 = lshr i32 %1201, 31
  %1220 = trunc i32 %1219 to i8
  store i8 %1220, i8* %33, align 1
  %1221 = lshr i32 %1197, 31
  %1222 = lshr i32 %1200, 31
  %1223 = xor i32 %1219, %1221
  %1224 = xor i32 %1219, %1222
  %1225 = add nuw nsw i32 %1223, %1224
  %1226 = icmp eq i32 %1225, 2
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %39, align 1
  %1228 = sext i32 %1201 to i64
  store i64 %1228, i64* %RDX.i833, align 8
  %1229 = shl nsw i64 %1228, 1
  %1230 = add i64 %1193, %1229
  %1231 = add i64 %1136, 63
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i16*
  %1233 = load i16, i16* %1232, align 2
  store i16 %1233, i16* %DI.i788, align 2
  %1234 = load i64, i64* %RBP.i, align 8
  %1235 = add i64 %1234, -1048
  %1236 = add i64 %1136, 70
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i32*
  %1238 = load i32, i32* %1237, align 4
  %1239 = sext i32 %1238 to i64
  %1240 = shl nsw i64 %1239, 6
  store i64 %1240, i64* %RCX.i854, align 8
  %1241 = load i64, i64* %RAX.i583, align 8
  %1242 = add i64 %1240, %1241
  store i64 %1242, i64* %RAX.i583, align 8
  %1243 = icmp ult i64 %1242, %1241
  %1244 = icmp ult i64 %1242, %1240
  %1245 = or i1 %1243, %1244
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %14, align 1
  %1247 = trunc i64 %1242 to i32
  %1248 = and i32 %1247, 255
  %1249 = tail call i32 @llvm.ctpop.i32(i32 %1248)
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  %1252 = xor i8 %1251, 1
  store i8 %1252, i8* %21, align 1
  %1253 = xor i64 %1241, %1242
  %1254 = lshr i64 %1253, 4
  %1255 = trunc i64 %1254 to i8
  %1256 = and i8 %1255, 1
  store i8 %1256, i8* %27, align 1
  %1257 = icmp eq i64 %1242, 0
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %30, align 1
  %1259 = lshr i64 %1242, 63
  %1260 = trunc i64 %1259 to i8
  store i8 %1260, i8* %33, align 1
  %1261 = lshr i64 %1241, 63
  %1262 = lshr i64 %1239, 57
  %1263 = and i64 %1262, 1
  %1264 = xor i64 %1259, %1261
  %1265 = xor i64 %1259, %1263
  %1266 = add nuw nsw i64 %1264, %1265
  %1267 = icmp eq i64 %1266, 2
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %39, align 1
  %1269 = add i64 %1234, -1052
  %1270 = add i64 %1136, 84
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1269 to i32*
  %1272 = load i32, i32* %1271, align 4
  %1273 = sext i32 %1272 to i64
  store i64 %1273, i64* %RCX.i854, align 8
  %1274 = shl nsw i64 %1273, 1
  %1275 = add i64 %1274, %1242
  %1276 = add i64 %1136, 88
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i16*
  store i16 %1233, i16* %1277, align 2
  %1278 = load i64, i64* %RBP.i, align 8
  %1279 = add i64 %1278, -1048
  %1280 = load i64, i64* %3, align 8
  %1281 = add i64 %1280, 6
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1279 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = add i32 %1283, 1
  %1285 = zext i32 %1284 to i64
  store i64 %1285, i64* %RAX.i583, align 8
  %1286 = icmp eq i32 %1283, -1
  %1287 = icmp eq i32 %1284, 0
  %1288 = or i1 %1286, %1287
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %14, align 1
  %1290 = and i32 %1284, 255
  %1291 = tail call i32 @llvm.ctpop.i32(i32 %1290)
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  %1294 = xor i8 %1293, 1
  store i8 %1294, i8* %21, align 1
  %1295 = xor i32 %1284, %1283
  %1296 = lshr i32 %1295, 4
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  store i8 %1298, i8* %27, align 1
  %1299 = zext i1 %1287 to i8
  store i8 %1299, i8* %30, align 1
  %1300 = lshr i32 %1284, 31
  %1301 = trunc i32 %1300 to i8
  store i8 %1301, i8* %33, align 1
  %1302 = lshr i32 %1283, 31
  %1303 = xor i32 %1300, %1302
  %1304 = add nuw nsw i32 %1303, %1300
  %1305 = icmp eq i32 %1304, 2
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %39, align 1
  %1307 = add i64 %1280, 15
  store i64 %1307, i64* %3, align 8
  store i32 %1284, i32* %1282, align 4
  %1308 = load i64, i64* %3, align 8
  %1309 = add i64 %1308, -129
  store i64 %1309, i64* %3, align 8
  br label %block_.L_4275c0

block_.L_427646:                                  ; preds = %block_.L_4275c0
  %1310 = add i64 %1099, -1052
  %1311 = add i64 %1136, 11
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = add i32 %1313, 1
  %1315 = zext i32 %1314 to i64
  store i64 %1315, i64* %RAX.i583, align 8
  %1316 = icmp eq i32 %1313, -1
  %1317 = icmp eq i32 %1314, 0
  %1318 = or i1 %1316, %1317
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %14, align 1
  %1320 = and i32 %1314, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %21, align 1
  %1325 = xor i32 %1314, %1313
  %1326 = lshr i32 %1325, 4
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  store i8 %1328, i8* %27, align 1
  %1329 = zext i1 %1317 to i8
  store i8 %1329, i8* %30, align 1
  %1330 = lshr i32 %1314, 31
  %1331 = trunc i32 %1330 to i8
  store i8 %1331, i8* %33, align 1
  %1332 = lshr i32 %1313, 31
  %1333 = xor i32 %1330, %1332
  %1334 = add nuw nsw i32 %1333, %1330
  %1335 = icmp eq i32 %1334, 2
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %39, align 1
  %1337 = add i64 %1136, 20
  store i64 %1337, i64* %3, align 8
  store i32 %1314, i32* %1312, align 4
  %1338 = load i64, i64* %3, align 8
  %1339 = add i64 %1338, -195
  store i64 %1339, i64* %3, align 8
  br label %block_.L_427597

block_.L_42765f:                                  ; preds = %block_.L_427597
  %1340 = add i64 %1094, 10
  store i64 %1340, i64* %3, align 8
  store i32 0, i32* %1057, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_427669

block_.L_427669:                                  ; preds = %block_.L_42778b, %block_.L_42765f
  %1341 = phi i64 [ %1812, %block_.L_42778b ], [ %.pre82, %block_.L_42765f ]
  %1342 = load i64, i64* %RBP.i, align 8
  %1343 = add i64 %1342, -1052
  %1344 = add i64 %1341, 6
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RAX.i583, align 8
  %1348 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1348, i64* %RCX.i854, align 8
  %1349 = add i64 %1348, 72712
  %1350 = add i64 %1341, 20
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i32*
  %1352 = load i32, i32* %1351, align 4
  %1353 = sub i32 %1346, %1352
  %1354 = icmp ult i32 %1346, %1352
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %14, align 1
  %1356 = and i32 %1353, 255
  %1357 = tail call i32 @llvm.ctpop.i32(i32 %1356)
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = xor i8 %1359, 1
  store i8 %1360, i8* %21, align 1
  %1361 = xor i32 %1352, %1346
  %1362 = xor i32 %1361, %1353
  %1363 = lshr i32 %1362, 4
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  store i8 %1365, i8* %27, align 1
  %1366 = icmp eq i32 %1353, 0
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %30, align 1
  %1368 = lshr i32 %1353, 31
  %1369 = trunc i32 %1368 to i8
  store i8 %1369, i8* %33, align 1
  %1370 = lshr i32 %1346, 31
  %1371 = lshr i32 %1352, 31
  %1372 = xor i32 %1371, %1370
  %1373 = xor i32 %1368, %1370
  %1374 = add nuw nsw i32 %1373, %1372
  %1375 = icmp eq i32 %1374, 2
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %39, align 1
  %1377 = icmp ne i8 %1369, 0
  %1378 = xor i1 %1377, %1375
  %.v = select i1 %1378, i64 26, i64 315
  %1379 = add i64 %1341, %.v
  store i64 %1379, i64* %3, align 8
  br i1 %1378, label %block_427683, label %block_.L_4277a4

block_427683:                                     ; preds = %block_.L_427669
  %1380 = add i64 %1342, -1048
  %1381 = add i64 %1379, 10
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i32*
  store i32 0, i32* %1382, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_42768d

block_.L_42768d:                                  ; preds = %block_4276a7, %block_427683
  %1383 = phi i64 [ %1782, %block_4276a7 ], [ %.pre83, %block_427683 ]
  %1384 = load i64, i64* %RBP.i, align 8
  %1385 = add i64 %1384, -1048
  %1386 = add i64 %1383, 6
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i32*
  %1388 = load i32, i32* %1387, align 4
  %1389 = zext i32 %1388 to i64
  store i64 %1389, i64* %RAX.i583, align 8
  %1390 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1390, i64* %RCX.i854, align 8
  %1391 = add i64 %1390, 72708
  %1392 = add i64 %1383, 20
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  %1394 = load i32, i32* %1393, align 4
  %1395 = sub i32 %1388, %1394
  %1396 = icmp ult i32 %1388, %1394
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %14, align 1
  %1398 = and i32 %1395, 255
  %1399 = tail call i32 @llvm.ctpop.i32(i32 %1398)
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  store i8 %1402, i8* %21, align 1
  %1403 = xor i32 %1394, %1388
  %1404 = xor i32 %1403, %1395
  %1405 = lshr i32 %1404, 4
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  store i8 %1407, i8* %27, align 1
  %1408 = icmp eq i32 %1395, 0
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %30, align 1
  %1410 = lshr i32 %1395, 31
  %1411 = trunc i32 %1410 to i8
  store i8 %1411, i8* %33, align 1
  %1412 = lshr i32 %1388, 31
  %1413 = lshr i32 %1394, 31
  %1414 = xor i32 %1413, %1412
  %1415 = xor i32 %1410, %1412
  %1416 = add nuw nsw i32 %1415, %1414
  %1417 = icmp eq i32 %1416, 2
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %39, align 1
  %1419 = icmp ne i8 %1411, 0
  %1420 = xor i1 %1419, %1417
  %.v92 = select i1 %1420, i64 26, i64 254
  %1421 = add i64 %1383, %.v92
  store i64 %1421, i64* %3, align 8
  br i1 %1420, label %block_4276a7, label %block_.L_42778b

block_4276a7:                                     ; preds = %block_.L_42768d
  %1422 = add i64 %1384, -1024
  store i64 %1422, i64* %RAX.i583, align 8
  %1423 = add i64 %1421, 14
  store i64 %1423, i64* %3, align 8
  %1424 = load i32, i32* %1387, align 4
  %1425 = sext i32 %1424 to i64
  %1426 = shl nsw i64 %1425, 6
  store i64 %1426, i64* %RCX.i854, align 8
  %1427 = add i64 %1426, %1422
  store i64 %1427, i64* %RDX.i833, align 8
  %1428 = icmp ult i64 %1427, %1422
  %1429 = icmp ult i64 %1427, %1426
  %1430 = or i1 %1428, %1429
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %14, align 1
  %1432 = trunc i64 %1427 to i32
  %1433 = and i32 %1432, 255
  %1434 = tail call i32 @llvm.ctpop.i32(i32 %1433)
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = xor i8 %1436, 1
  store i8 %1437, i8* %21, align 1
  %1438 = xor i64 %1422, %1427
  %1439 = lshr i64 %1438, 4
  %1440 = trunc i64 %1439 to i8
  %1441 = and i8 %1440, 1
  store i8 %1441, i8* %27, align 1
  %1442 = icmp eq i64 %1427, 0
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %30, align 1
  %1444 = lshr i64 %1427, 63
  %1445 = trunc i64 %1444 to i8
  store i8 %1445, i8* %33, align 1
  %1446 = lshr i64 %1422, 63
  %1447 = lshr i64 %1425, 57
  %1448 = and i64 %1447, 1
  %1449 = xor i64 %1444, %1446
  %1450 = xor i64 %1444, %1448
  %1451 = add nuw nsw i64 %1449, %1450
  %1452 = icmp eq i64 %1451, 2
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %39, align 1
  %1454 = add i64 %1384, -1052
  %1455 = add i64 %1421, 31
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i32*
  %1457 = load i32, i32* %1456, align 4
  %1458 = sext i32 %1457 to i64
  store i64 %1458, i64* %RCX.i854, align 8
  %1459 = shl nsw i64 %1458, 1
  %1460 = add i64 %1459, %1427
  %1461 = add i64 %1421, 35
  store i64 %1461, i64* %3, align 8
  %1462 = inttoptr i64 %1460 to i16*
  %1463 = load i16, i16* %1462, align 2
  store i16 %1463, i16* %SI.i723, align 2
  %1464 = add i64 %1384, -1040
  %1465 = add i64 %1421, 42
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i64*
  %1467 = load i64, i64* %1466, align 8
  store i64 %1467, i64* %RCX.i854, align 8
  %1468 = add i64 %1384, -1064
  %1469 = add i64 %1421, 49
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i32*
  %1471 = load i32, i32* %1470, align 4
  %1472 = sext i32 %1471 to i64
  store i64 %1472, i64* %RDX.i833, align 8
  %1473 = shl nsw i64 %1472, 3
  %1474 = add i64 %1473, %1467
  %1475 = add i64 %1421, 53
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i64*
  %1477 = load i64, i64* %1476, align 8
  store i64 %1477, i64* %RCX.i854, align 8
  %1478 = load i64, i64* %RBP.i, align 8
  %1479 = add i64 %1478, -1060
  %1480 = add i64 %1421, 59
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i32*
  %1482 = load i32, i32* %1481, align 4
  %1483 = zext i32 %1482 to i64
  store i64 %1483, i64* %RDI.i830, align 8
  %1484 = add i64 %1478, -1052
  %1485 = add i64 %1421, 66
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = shl i32 %1487, 1
  %1489 = zext i32 %1488 to i64
  store i64 %1489, i64* %83, align 8
  %1490 = add i32 %1488, %1482
  %1491 = zext i32 %1490 to i64
  store i64 %1491, i64* %RDI.i830, align 8
  %1492 = icmp ult i32 %1490, %1482
  %1493 = icmp ult i32 %1490, %1488
  %1494 = or i1 %1492, %1493
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %14, align 1
  %1496 = and i32 %1490, 255
  %1497 = tail call i32 @llvm.ctpop.i32(i32 %1496)
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  %1500 = xor i8 %1499, 1
  store i8 %1500, i8* %21, align 1
  %1501 = xor i32 %1488, %1482
  %1502 = xor i32 %1501, %1490
  %1503 = lshr i32 %1502, 4
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  store i8 %1505, i8* %27, align 1
  %1506 = icmp eq i32 %1490, 0
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %30, align 1
  %1508 = lshr i32 %1490, 31
  %1509 = trunc i32 %1508 to i8
  store i8 %1509, i8* %33, align 1
  %1510 = lshr i32 %1482, 31
  %1511 = lshr i32 %1487, 30
  %1512 = and i32 %1511, 1
  %1513 = xor i32 %1508, %1510
  %1514 = xor i32 %1508, %1512
  %1515 = add nuw nsw i32 %1513, %1514
  %1516 = icmp eq i32 %1515, 2
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %39, align 1
  %1518 = sext i32 %1490 to i64
  store i64 %1518, i64* %RDX.i833, align 8
  %1519 = shl nsw i64 %1518, 3
  %1520 = add i64 %1477, %1519
  %1521 = add i64 %1421, 79
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1520 to i64*
  %1523 = load i64, i64* %1522, align 8
  store i64 %1523, i64* %RCX.i854, align 8
  %1524 = add i64 %1478, -1056
  %1525 = add i64 %1421, 85
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i32*
  %1527 = load i32, i32* %1526, align 4
  %1528 = zext i32 %1527 to i64
  store i64 %1528, i64* %RDI.i830, align 8
  %1529 = load i64, i64* %RBP.i, align 8
  %1530 = add i64 %1529, -1048
  %1531 = add i64 %1421, 91
  store i64 %1531, i64* %3, align 8
  %1532 = inttoptr i64 %1530 to i32*
  %1533 = load i32, i32* %1532, align 4
  %1534 = add i32 %1533, %1527
  %1535 = zext i32 %1534 to i64
  store i64 %1535, i64* %RDI.i830, align 8
  %1536 = icmp ult i32 %1534, %1527
  %1537 = icmp ult i32 %1534, %1533
  %1538 = or i1 %1536, %1537
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %14, align 1
  %1540 = and i32 %1534, 255
  %1541 = tail call i32 @llvm.ctpop.i32(i32 %1540)
  %1542 = trunc i32 %1541 to i8
  %1543 = and i8 %1542, 1
  %1544 = xor i8 %1543, 1
  store i8 %1544, i8* %21, align 1
  %1545 = xor i32 %1533, %1527
  %1546 = xor i32 %1545, %1534
  %1547 = lshr i32 %1546, 4
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  store i8 %1549, i8* %27, align 1
  %1550 = icmp eq i32 %1534, 0
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %30, align 1
  %1552 = lshr i32 %1534, 31
  %1553 = trunc i32 %1552 to i8
  store i8 %1553, i8* %33, align 1
  %1554 = lshr i32 %1527, 31
  %1555 = lshr i32 %1533, 31
  %1556 = xor i32 %1552, %1554
  %1557 = xor i32 %1552, %1555
  %1558 = add nuw nsw i32 %1556, %1557
  %1559 = icmp eq i32 %1558, 2
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %39, align 1
  %1561 = sext i32 %1534 to i64
  store i64 %1561, i64* %RDX.i833, align 8
  %1562 = shl nsw i64 %1561, 1
  %1563 = add i64 %1523, %1562
  %1564 = load i16, i16* %SI.i723, align 2
  %1565 = add i64 %1421, 98
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1563 to i16*
  store i16 %1564, i16* %1566, align 2
  %1567 = load i64, i64* %RBP.i, align 8
  %1568 = add i64 %1567, -1048
  %1569 = load i64, i64* %3, align 8
  %1570 = add i64 %1569, 7
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1568 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = sext i32 %1572 to i64
  %1574 = shl nsw i64 %1573, 6
  store i64 %1574, i64* %RCX.i854, align 8
  %1575 = load i64, i64* %RAX.i583, align 8
  %1576 = add i64 %1574, %1575
  store i64 %1576, i64* %RAX.i583, align 8
  %1577 = icmp ult i64 %1576, %1575
  %1578 = icmp ult i64 %1576, %1574
  %1579 = or i1 %1577, %1578
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %14, align 1
  %1581 = trunc i64 %1576 to i32
  %1582 = and i32 %1581, 255
  %1583 = tail call i32 @llvm.ctpop.i32(i32 %1582)
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  %1586 = xor i8 %1585, 1
  store i8 %1586, i8* %21, align 1
  %1587 = xor i64 %1575, %1576
  %1588 = lshr i64 %1587, 4
  %1589 = trunc i64 %1588 to i8
  %1590 = and i8 %1589, 1
  store i8 %1590, i8* %27, align 1
  %1591 = icmp eq i64 %1576, 0
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %30, align 1
  %1593 = lshr i64 %1576, 63
  %1594 = trunc i64 %1593 to i8
  store i8 %1594, i8* %33, align 1
  %1595 = lshr i64 %1575, 63
  %1596 = lshr i64 %1573, 57
  %1597 = and i64 %1596, 1
  %1598 = xor i64 %1593, %1595
  %1599 = xor i64 %1593, %1597
  %1600 = add nuw nsw i64 %1598, %1599
  %1601 = icmp eq i64 %1600, 2
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %39, align 1
  %1603 = add i64 %1567, -1052
  %1604 = add i64 %1569, 20
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1603 to i32*
  %1606 = load i32, i32* %1605, align 4
  %1607 = zext i32 %1606 to i64
  store i64 %1607, i64* %RDI.i830, align 8
  %1608 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1608, i64* %RCX.i854, align 8
  %1609 = add i64 %1608, 72712
  %1610 = add i64 %1569, 34
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = add i32 %1612, %1606
  %1614 = zext i32 %1613 to i64
  store i64 %1614, i64* %RDI.i830, align 8
  %1615 = icmp ult i32 %1613, %1606
  %1616 = icmp ult i32 %1613, %1612
  %1617 = or i1 %1615, %1616
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %14, align 1
  %1619 = and i32 %1613, 255
  %1620 = tail call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  store i8 %1623, i8* %21, align 1
  %1624 = xor i32 %1612, %1606
  %1625 = xor i32 %1624, %1613
  %1626 = lshr i32 %1625, 4
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  store i8 %1628, i8* %27, align 1
  %1629 = icmp eq i32 %1613, 0
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %30, align 1
  %1631 = lshr i32 %1613, 31
  %1632 = trunc i32 %1631 to i8
  store i8 %1632, i8* %33, align 1
  %1633 = lshr i32 %1606, 31
  %1634 = lshr i32 %1612, 31
  %1635 = xor i32 %1631, %1633
  %1636 = xor i32 %1631, %1634
  %1637 = add nuw nsw i32 %1635, %1636
  %1638 = icmp eq i32 %1637, 2
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %39, align 1
  %1640 = sext i32 %1613 to i64
  store i64 %1640, i64* %RCX.i854, align 8
  %1641 = shl nsw i64 %1640, 1
  %1642 = add i64 %1576, %1641
  %1643 = add i64 %1569, 41
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i16*
  %1645 = load i16, i16* %1644, align 2
  store i16 %1645, i16* %SI.i723, align 2
  %1646 = load i64, i64* %RBP.i, align 8
  %1647 = add i64 %1646, -1040
  %1648 = add i64 %1569, 48
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i64*
  %1650 = load i64, i64* %1649, align 8
  store i64 %1650, i64* %RAX.i583, align 8
  %1651 = add i64 %1646, -1064
  %1652 = add i64 %1569, 55
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i32*
  %1654 = load i32, i32* %1653, align 4
  %1655 = sext i32 %1654 to i64
  store i64 %1655, i64* %RCX.i854, align 8
  %1656 = shl nsw i64 %1655, 3
  %1657 = add i64 %1656, %1650
  %1658 = add i64 %1569, 59
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i64*
  %1660 = load i64, i64* %1659, align 8
  store i64 %1660, i64* %RAX.i583, align 8
  %1661 = add i64 %1646, -1060
  %1662 = add i64 %1569, 65
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i32*
  %1664 = load i32, i32* %1663, align 4
  %1665 = zext i32 %1664 to i64
  store i64 %1665, i64* %RDI.i830, align 8
  %1666 = add i64 %1646, -1052
  %1667 = add i64 %1569, 72
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = shl i32 %1669, 1
  %1671 = or i32 %1670, 1
  %1672 = zext i32 %1671 to i64
  store i64 %1672, i64* %83, align 8
  %1673 = lshr i32 %1669, 30
  %1674 = and i32 %1673, 1
  %1675 = add i32 %1671, %1664
  %1676 = zext i32 %1675 to i64
  store i64 %1676, i64* %RDI.i830, align 8
  %1677 = icmp ult i32 %1675, %1664
  %1678 = icmp ult i32 %1675, %1671
  %1679 = or i1 %1677, %1678
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %14, align 1
  %1681 = and i32 %1675, 255
  %1682 = tail call i32 @llvm.ctpop.i32(i32 %1681)
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  %1685 = xor i8 %1684, 1
  store i8 %1685, i8* %21, align 1
  %1686 = xor i32 %1670, %1664
  %1687 = xor i32 %1686, %1675
  %1688 = lshr i32 %1687, 4
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  store i8 %1690, i8* %27, align 1
  %1691 = icmp eq i32 %1675, 0
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %30, align 1
  %1693 = lshr i32 %1675, 31
  %1694 = trunc i32 %1693 to i8
  store i8 %1694, i8* %33, align 1
  %1695 = lshr i32 %1664, 31
  %1696 = xor i32 %1693, %1695
  %1697 = xor i32 %1693, %1674
  %1698 = add nuw nsw i32 %1696, %1697
  %1699 = icmp eq i32 %1698, 2
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %39, align 1
  %1701 = sext i32 %1675 to i64
  store i64 %1701, i64* %RCX.i854, align 8
  %1702 = load i64, i64* %RAX.i583, align 8
  %1703 = shl nsw i64 %1701, 3
  %1704 = add i64 %1702, %1703
  %1705 = add i64 %1569, 89
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i64*
  %1707 = load i64, i64* %1706, align 8
  store i64 %1707, i64* %RAX.i583, align 8
  %1708 = load i64, i64* %RBP.i, align 8
  %1709 = add i64 %1708, -1056
  %1710 = add i64 %1569, 95
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1709 to i32*
  %1712 = load i32, i32* %1711, align 4
  %1713 = zext i32 %1712 to i64
  store i64 %1713, i64* %RDI.i830, align 8
  %1714 = add i64 %1708, -1048
  %1715 = add i64 %1569, 101
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i32*
  %1717 = load i32, i32* %1716, align 4
  %1718 = add i32 %1717, %1712
  %1719 = zext i32 %1718 to i64
  store i64 %1719, i64* %RDI.i830, align 8
  %1720 = icmp ult i32 %1718, %1712
  %1721 = icmp ult i32 %1718, %1717
  %1722 = or i1 %1720, %1721
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %14, align 1
  %1724 = and i32 %1718, 255
  %1725 = tail call i32 @llvm.ctpop.i32(i32 %1724)
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  %1728 = xor i8 %1727, 1
  store i8 %1728, i8* %21, align 1
  %1729 = xor i32 %1717, %1712
  %1730 = xor i32 %1729, %1718
  %1731 = lshr i32 %1730, 4
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  store i8 %1733, i8* %27, align 1
  %1734 = icmp eq i32 %1718, 0
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %30, align 1
  %1736 = lshr i32 %1718, 31
  %1737 = trunc i32 %1736 to i8
  store i8 %1737, i8* %33, align 1
  %1738 = lshr i32 %1712, 31
  %1739 = lshr i32 %1717, 31
  %1740 = xor i32 %1736, %1738
  %1741 = xor i32 %1736, %1739
  %1742 = add nuw nsw i32 %1740, %1741
  %1743 = icmp eq i32 %1742, 2
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %39, align 1
  %1745 = sext i32 %1718 to i64
  store i64 %1745, i64* %RCX.i854, align 8
  %1746 = shl nsw i64 %1745, 1
  %1747 = add i64 %1707, %1746
  %1748 = load i16, i16* %SI.i723, align 2
  %1749 = add i64 %1569, 108
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1747 to i16*
  store i16 %1748, i16* %1750, align 2
  %1751 = load i64, i64* %RBP.i, align 8
  %1752 = add i64 %1751, -1048
  %1753 = load i64, i64* %3, align 8
  %1754 = add i64 %1753, 6
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1752 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = add i32 %1756, 1
  %1758 = zext i32 %1757 to i64
  store i64 %1758, i64* %RAX.i583, align 8
  %1759 = icmp eq i32 %1756, -1
  %1760 = icmp eq i32 %1757, 0
  %1761 = or i1 %1759, %1760
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %14, align 1
  %1763 = and i32 %1757, 255
  %1764 = tail call i32 @llvm.ctpop.i32(i32 %1763)
  %1765 = trunc i32 %1764 to i8
  %1766 = and i8 %1765, 1
  %1767 = xor i8 %1766, 1
  store i8 %1767, i8* %21, align 1
  %1768 = xor i32 %1757, %1756
  %1769 = lshr i32 %1768, 4
  %1770 = trunc i32 %1769 to i8
  %1771 = and i8 %1770, 1
  store i8 %1771, i8* %27, align 1
  %1772 = zext i1 %1760 to i8
  store i8 %1772, i8* %30, align 1
  %1773 = lshr i32 %1757, 31
  %1774 = trunc i32 %1773 to i8
  store i8 %1774, i8* %33, align 1
  %1775 = lshr i32 %1756, 31
  %1776 = xor i32 %1773, %1775
  %1777 = add nuw nsw i32 %1776, %1773
  %1778 = icmp eq i32 %1777, 2
  %1779 = zext i1 %1778 to i8
  store i8 %1779, i8* %39, align 1
  %1780 = add i64 %1753, 15
  store i64 %1780, i64* %3, align 8
  store i32 %1757, i32* %1755, align 4
  %1781 = load i64, i64* %3, align 8
  %1782 = add i64 %1781, -249
  store i64 %1782, i64* %3, align 8
  br label %block_.L_42768d

block_.L_42778b:                                  ; preds = %block_.L_42768d
  %1783 = add i64 %1384, -1052
  %1784 = add i64 %1421, 11
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1783 to i32*
  %1786 = load i32, i32* %1785, align 4
  %1787 = add i32 %1786, 1
  %1788 = zext i32 %1787 to i64
  store i64 %1788, i64* %RAX.i583, align 8
  %1789 = icmp eq i32 %1786, -1
  %1790 = icmp eq i32 %1787, 0
  %1791 = or i1 %1789, %1790
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %14, align 1
  %1793 = and i32 %1787, 255
  %1794 = tail call i32 @llvm.ctpop.i32(i32 %1793)
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = xor i8 %1796, 1
  store i8 %1797, i8* %21, align 1
  %1798 = xor i32 %1787, %1786
  %1799 = lshr i32 %1798, 4
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  store i8 %1801, i8* %27, align 1
  %1802 = zext i1 %1790 to i8
  store i8 %1802, i8* %30, align 1
  %1803 = lshr i32 %1787, 31
  %1804 = trunc i32 %1803 to i8
  store i8 %1804, i8* %33, align 1
  %1805 = lshr i32 %1786, 31
  %1806 = xor i32 %1803, %1805
  %1807 = add nuw nsw i32 %1806, %1803
  %1808 = icmp eq i32 %1807, 2
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %39, align 1
  %1810 = add i64 %1421, 20
  store i64 %1810, i64* %3, align 8
  store i32 %1787, i32* %1785, align 4
  %1811 = load i64, i64* %3, align 8
  %1812 = add i64 %1811, -310
  store i64 %1812, i64* %3, align 8
  br label %block_.L_427669

block_.L_4277a4:                                  ; preds = %block_.L_427669
  %1813 = add i64 %1342, -1064
  %1814 = add i64 %1379, 11
  store i64 %1814, i64* %3, align 8
  %1815 = inttoptr i64 %1813 to i32*
  %1816 = load i32, i32* %1815, align 4
  %1817 = add i32 %1816, 1
  %1818 = zext i32 %1817 to i64
  store i64 %1818, i64* %RAX.i583, align 8
  %1819 = icmp eq i32 %1816, -1
  %1820 = icmp eq i32 %1817, 0
  %1821 = or i1 %1819, %1820
  %1822 = zext i1 %1821 to i8
  store i8 %1822, i8* %14, align 1
  %1823 = and i32 %1817, 255
  %1824 = tail call i32 @llvm.ctpop.i32(i32 %1823)
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  %1827 = xor i8 %1826, 1
  store i8 %1827, i8* %21, align 1
  %1828 = xor i32 %1817, %1816
  %1829 = lshr i32 %1828, 4
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  store i8 %1831, i8* %27, align 1
  %1832 = zext i1 %1820 to i8
  store i8 %1832, i8* %30, align 1
  %1833 = lshr i32 %1817, 31
  %1834 = trunc i32 %1833 to i8
  store i8 %1834, i8* %33, align 1
  %1835 = lshr i32 %1816, 31
  %1836 = xor i32 %1833, %1835
  %1837 = add nuw nsw i32 %1836, %1833
  %1838 = icmp eq i32 %1837, 2
  %1839 = zext i1 %1838 to i8
  store i8 %1839, i8* %39, align 1
  %1840 = add i64 %1379, 20
  store i64 %1840, i64* %3, align 8
  store i32 %1817, i32* %1815, align 4
  %1841 = load i64, i64* %3, align 8
  %1842 = add i64 %1841, -568
  store i64 %1842, i64* %3, align 8
  br label %block_.L_427580

block_.L_4277bd:                                  ; preds = %block_.L_427580
  %1843 = add i64 %1049, 5
  store i64 %1843, i64* %3, align 8
  br label %block_.L_4277c2

block_.L_4277c2:                                  ; preds = %block_.L_4277bd, %block_427300
  %1844 = phi i64 [ %92, %block_427300 ], [ %1021, %block_.L_4277bd ]
  %1845 = phi i64 [ %150, %block_427300 ], [ %1843, %block_.L_4277bd ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.0, %block_427300 ], [ %1011, %block_.L_4277bd ]
  %1846 = add i64 %1844, -1044
  %1847 = add i64 %1845, 11
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i32*
  %1849 = load i32, i32* %1848, align 4
  %1850 = add i32 %1849, 2
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RAX.i583, align 8
  %1852 = icmp ugt i32 %1849, -3
  %1853 = zext i1 %1852 to i8
  store i8 %1853, i8* %14, align 1
  %1854 = and i32 %1850, 255
  %1855 = tail call i32 @llvm.ctpop.i32(i32 %1854)
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  %1858 = xor i8 %1857, 1
  store i8 %1858, i8* %21, align 1
  %1859 = xor i32 %1850, %1849
  %1860 = lshr i32 %1859, 4
  %1861 = trunc i32 %1860 to i8
  %1862 = and i8 %1861, 1
  store i8 %1862, i8* %27, align 1
  %1863 = icmp eq i32 %1850, 0
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %30, align 1
  %1865 = lshr i32 %1850, 31
  %1866 = trunc i32 %1865 to i8
  store i8 %1866, i8* %33, align 1
  %1867 = lshr i32 %1849, 31
  %1868 = xor i32 %1865, %1867
  %1869 = add nuw nsw i32 %1868, %1865
  %1870 = icmp eq i32 %1869, 2
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %39, align 1
  %1872 = add i64 %1845, 20
  store i64 %1872, i64* %3, align 8
  store i32 %1850, i32* %1848, align 4
  %1873 = load i64, i64* %3, align 8
  %1874 = add i64 %1873, -1264
  store i64 %1874, i64* %3, align 8
  br label %block_.L_4272e6

block_.L_4277db:                                  ; preds = %block_.L_4272e6
  %1875 = add i64 %129, 567
  br label %block_.L_427a12

block_.L_4277ea:                                  ; preds = %block_.L_4277ea.preheader, %block_.L_4279f4
  %1876 = phi i64 [ %2663, %block_.L_4279f4 ], [ %.pre87, %block_.L_4277ea.preheader ]
  %1877 = load i64, i64* %RBP.i, align 8
  %1878 = add i64 %1877, -1044
  %1879 = add i64 %1876, 6
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i32*
  %1881 = load i32, i32* %1880, align 4
  %1882 = zext i32 %1881 to i64
  store i64 %1882, i64* %RAX.i583, align 8
  %1883 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1883, i64* %RCX.i245, align 8
  %1884 = add i64 %1883, 72484
  %1885 = add i64 %1876, 20
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i32*
  %1887 = load i32, i32* %1886, align 4
  %1888 = sub i32 %1881, %1887
  %1889 = icmp ult i32 %1881, %1887
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %14, align 1
  %1891 = and i32 %1888, 255
  %1892 = tail call i32 @llvm.ctpop.i32(i32 %1891)
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = xor i8 %1894, 1
  store i8 %1895, i8* %21, align 1
  %1896 = xor i32 %1887, %1881
  %1897 = xor i32 %1896, %1888
  %1898 = lshr i32 %1897, 4
  %1899 = trunc i32 %1898 to i8
  %1900 = and i8 %1899, 1
  store i8 %1900, i8* %27, align 1
  %1901 = icmp eq i32 %1888, 0
  %1902 = zext i1 %1901 to i8
  store i8 %1902, i8* %30, align 1
  %1903 = lshr i32 %1888, 31
  %1904 = trunc i32 %1903 to i8
  store i8 %1904, i8* %33, align 1
  %1905 = lshr i32 %1881, 31
  %1906 = lshr i32 %1887, 31
  %1907 = xor i32 %1906, %1905
  %1908 = xor i32 %1903, %1905
  %1909 = add nuw nsw i32 %1908, %1907
  %1910 = icmp eq i32 %1909, 2
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %39, align 1
  %1912 = icmp ne i8 %1904, 0
  %1913 = xor i1 %1912, %1910
  %.v105 = select i1 %1913, i64 26, i64 547
  %1914 = add i64 %1876, %.v105
  store i64 %1914, i64* %3, align 8
  br i1 %1913, label %block_427804, label %block_.L_427a0d

block_427804:                                     ; preds = %block_.L_4277ea
  %1915 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %1915, i64* %RAX.i583, align 8
  %1916 = add i64 %1915, 6472
  %1917 = add i64 %1914, 15
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i64*
  %1919 = load i64, i64* %1918, align 8
  store i64 %1919, i64* %RAX.i583, align 8
  %1920 = add i64 %1914, 22
  store i64 %1920, i64* %3, align 8
  %1921 = load i32, i32* %1880, align 4
  %1922 = sext i32 %1921 to i64
  store i64 %1922, i64* %RCX.i245, align 8
  %1923 = add i64 %1919, %1922
  %1924 = add i64 %1914, 26
  store i64 %1924, i64* %3, align 8
  %1925 = inttoptr i64 %1923 to i8*
  %1926 = load i8, i8* %1925, align 1
  store i8 0, i8* %14, align 1
  %1927 = zext i8 %1926 to i32
  %1928 = tail call i32 @llvm.ctpop.i32(i32 %1927)
  %1929 = trunc i32 %1928 to i8
  %1930 = and i8 %1929, 1
  %1931 = xor i8 %1930, 1
  store i8 %1931, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1932 = icmp eq i8 %1926, 0
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %30, align 1
  %1934 = lshr i8 %1926, 7
  store i8 %1934, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v106 = select i1 %1932, i64 496, i64 32
  %1935 = add i64 %1914, %.v106
  store i64 %1935, i64* %3, align 8
  br i1 %1932, label %block_.L_4279f4, label %block_427824

block_427824:                                     ; preds = %block_427804
  %1936 = add i64 %1877, -1056
  store i64 %1936, i64* %RSI.i227, align 8
  %1937 = add i64 %1877, -1060
  store i64 %1937, i64* %RDX.i224, align 8
  %1938 = add i64 %1935, 20
  store i64 %1938, i64* %3, align 8
  %1939 = load i32, i32* %1880, align 4
  %1940 = zext i32 %1939 to i64
  store i64 %1940, i64* %RDI.i221, align 8
  %1941 = add i64 %1935, 142188
  %1942 = add i64 %1935, 25
  %1943 = load i64, i64* %6, align 8
  %1944 = add i64 %1943, -8
  %1945 = inttoptr i64 %1944 to i64*
  store i64 %1942, i64* %1945, align 8
  store i64 %1944, i64* %6, align 8
  store i64 %1941, i64* %3, align 8
  %call2_427838 = tail call %struct.Memory* @sub_44a390.get_mb_pos(%struct.State* nonnull %0, i64 %1941, %struct.Memory* %2)
  %1946 = load i64, i64* %RBP.i, align 8
  %1947 = add i64 %1946, -1052
  %1948 = load i64, i64* %3, align 8
  %1949 = add i64 %1948, 10
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1947 to i32*
  store i32 0, i32* %1950, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_427847

block_.L_427847:                                  ; preds = %block_.L_4278cc, %block_427824
  %1951 = phi i64 [ %2207, %block_.L_4278cc ], [ %.pre88, %block_427824 ]
  %1952 = load i64, i64* %RBP.i, align 8
  %1953 = add i64 %1952, -1052
  %1954 = add i64 %1951, 7
  store i64 %1954, i64* %3, align 8
  %1955 = inttoptr i64 %1953 to i32*
  %1956 = load i32, i32* %1955, align 4
  %1957 = add i32 %1956, -32
  %1958 = icmp ult i32 %1956, 32
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %14, align 1
  %1960 = and i32 %1957, 255
  %1961 = tail call i32 @llvm.ctpop.i32(i32 %1960)
  %1962 = trunc i32 %1961 to i8
  %1963 = and i8 %1962, 1
  %1964 = xor i8 %1963, 1
  store i8 %1964, i8* %21, align 1
  %1965 = xor i32 %1957, %1956
  %1966 = lshr i32 %1965, 4
  %1967 = trunc i32 %1966 to i8
  %1968 = and i8 %1967, 1
  store i8 %1968, i8* %27, align 1
  %1969 = icmp eq i32 %1957, 0
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %30, align 1
  %1971 = lshr i32 %1957, 31
  %1972 = trunc i32 %1971 to i8
  store i8 %1972, i8* %33, align 1
  %1973 = lshr i32 %1956, 31
  %1974 = xor i32 %1971, %1973
  %1975 = add nuw nsw i32 %1974, %1973
  %1976 = icmp eq i32 %1975, 2
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %39, align 1
  %1978 = icmp ne i8 %1972, 0
  %1979 = xor i1 %1978, %1976
  %.v107 = select i1 %1979, i64 13, i64 158
  %1980 = add i64 %1951, %.v107
  store i64 %1980, i64* %3, align 8
  br i1 %1979, label %block_427854, label %block_.L_4278e5

block_427854:                                     ; preds = %block_.L_427847
  %1981 = add i64 %1952, -1048
  %1982 = add i64 %1980, 10
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i32*
  store i32 0, i32* %1983, align 4
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_42785e

block_.L_42785e:                                  ; preds = %block_42786b, %block_427854
  %1984 = phi i64 [ %2177, %block_42786b ], [ %.pre91, %block_427854 ]
  %1985 = load i64, i64* %RBP.i, align 8
  %1986 = add i64 %1985, -1048
  %1987 = add i64 %1984, 7
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = add i32 %1989, -16
  %1991 = icmp ult i32 %1989, 16
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %14, align 1
  %1993 = and i32 %1990, 255
  %1994 = tail call i32 @llvm.ctpop.i32(i32 %1993)
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  %1997 = xor i8 %1996, 1
  store i8 %1997, i8* %21, align 1
  %1998 = xor i32 %1989, 16
  %1999 = xor i32 %1998, %1990
  %2000 = lshr i32 %1999, 4
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  store i8 %2002, i8* %27, align 1
  %2003 = icmp eq i32 %1990, 0
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %30, align 1
  %2005 = lshr i32 %1990, 31
  %2006 = trunc i32 %2005 to i8
  store i8 %2006, i8* %33, align 1
  %2007 = lshr i32 %1989, 31
  %2008 = xor i32 %2005, %2007
  %2009 = add nuw nsw i32 %2008, %2007
  %2010 = icmp eq i32 %2009, 2
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %39, align 1
  %2012 = icmp ne i8 %2006, 0
  %2013 = xor i1 %2012, %2010
  %.v97 = select i1 %2013, i64 13, i64 110
  %2014 = add i64 %1984, %.v97
  store i64 %2014, i64* %3, align 8
  br i1 %2013, label %block_42786b, label %block_.L_4278cc

block_42786b:                                     ; preds = %block_.L_42785e
  %2015 = add i64 %1985, -1024
  store i64 %2015, i64* %RAX.i583, align 8
  %2016 = add i64 %1985, -1032
  %2017 = add i64 %2014, 14
  store i64 %2017, i64* %3, align 8
  %2018 = inttoptr i64 %2016 to i64*
  %2019 = load i64, i64* %2018, align 8
  store i64 %2019, i64* %RCX.i245, align 8
  %2020 = add i64 %1985, -1060
  %2021 = add i64 %2014, 20
  store i64 %2021, i64* %3, align 8
  %2022 = inttoptr i64 %2020 to i32*
  %2023 = load i32, i32* %2022, align 4
  %2024 = zext i32 %2023 to i64
  store i64 %2024, i64* %RDX.i224, align 8
  %2025 = add i64 %1985, -1052
  %2026 = add i64 %2014, 26
  store i64 %2026, i64* %3, align 8
  %2027 = inttoptr i64 %2025 to i32*
  %2028 = load i32, i32* %2027, align 4
  %2029 = add i32 %2028, %2023
  %2030 = zext i32 %2029 to i64
  store i64 %2030, i64* %RDX.i224, align 8
  %2031 = icmp ult i32 %2029, %2023
  %2032 = icmp ult i32 %2029, %2028
  %2033 = or i1 %2031, %2032
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %14, align 1
  %2035 = and i32 %2029, 255
  %2036 = tail call i32 @llvm.ctpop.i32(i32 %2035)
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = xor i8 %2038, 1
  store i8 %2039, i8* %21, align 1
  %2040 = xor i32 %2028, %2023
  %2041 = xor i32 %2040, %2029
  %2042 = lshr i32 %2041, 4
  %2043 = trunc i32 %2042 to i8
  %2044 = and i8 %2043, 1
  store i8 %2044, i8* %27, align 1
  %2045 = icmp eq i32 %2029, 0
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %30, align 1
  %2047 = lshr i32 %2029, 31
  %2048 = trunc i32 %2047 to i8
  store i8 %2048, i8* %33, align 1
  %2049 = lshr i32 %2023, 31
  %2050 = lshr i32 %2028, 31
  %2051 = xor i32 %2047, %2049
  %2052 = xor i32 %2047, %2050
  %2053 = add nuw nsw i32 %2051, %2052
  %2054 = icmp eq i32 %2053, 2
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %39, align 1
  %2056 = sext i32 %2029 to i64
  store i64 %2056, i64* %RSI.i227, align 8
  %2057 = shl nsw i64 %2056, 3
  %2058 = add i64 %2019, %2057
  %2059 = add i64 %2014, 33
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to i64*
  %2061 = load i64, i64* %2060, align 8
  store i64 %2061, i64* %RCX.i245, align 8
  %2062 = add i64 %1985, -1056
  %2063 = add i64 %2014, 39
  store i64 %2063, i64* %3, align 8
  %2064 = inttoptr i64 %2062 to i32*
  %2065 = load i32, i32* %2064, align 4
  %2066 = zext i32 %2065 to i64
  store i64 %2066, i64* %RDX.i224, align 8
  %2067 = add i64 %2014, 45
  store i64 %2067, i64* %3, align 8
  %2068 = load i32, i32* %1988, align 4
  %2069 = add i32 %2068, %2065
  %2070 = zext i32 %2069 to i64
  store i64 %2070, i64* %RDX.i224, align 8
  %2071 = icmp ult i32 %2069, %2065
  %2072 = icmp ult i32 %2069, %2068
  %2073 = or i1 %2071, %2072
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %14, align 1
  %2075 = and i32 %2069, 255
  %2076 = tail call i32 @llvm.ctpop.i32(i32 %2075)
  %2077 = trunc i32 %2076 to i8
  %2078 = and i8 %2077, 1
  %2079 = xor i8 %2078, 1
  store i8 %2079, i8* %21, align 1
  %2080 = xor i32 %2068, %2065
  %2081 = xor i32 %2080, %2069
  %2082 = lshr i32 %2081, 4
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  store i8 %2084, i8* %27, align 1
  %2085 = icmp eq i32 %2069, 0
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %30, align 1
  %2087 = lshr i32 %2069, 31
  %2088 = trunc i32 %2087 to i8
  store i8 %2088, i8* %33, align 1
  %2089 = lshr i32 %2065, 31
  %2090 = lshr i32 %2068, 31
  %2091 = xor i32 %2087, %2089
  %2092 = xor i32 %2087, %2090
  %2093 = add nuw nsw i32 %2091, %2092
  %2094 = icmp eq i32 %2093, 2
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %39, align 1
  %2096 = sext i32 %2069 to i64
  store i64 %2096, i64* %RSI.i227, align 8
  %2097 = shl nsw i64 %2096, 1
  %2098 = add i64 %2061, %2097
  %2099 = add i64 %2014, 52
  store i64 %2099, i64* %3, align 8
  %2100 = inttoptr i64 %2098 to i16*
  %2101 = load i16, i16* %2100, align 2
  store i16 %2101, i16* %DI.i181, align 2
  %2102 = load i64, i64* %RBP.i, align 8
  %2103 = add i64 %2102, -1048
  %2104 = add i64 %2014, 59
  store i64 %2104, i64* %3, align 8
  %2105 = inttoptr i64 %2103 to i32*
  %2106 = load i32, i32* %2105, align 4
  %2107 = sext i32 %2106 to i64
  %2108 = shl nsw i64 %2107, 6
  store i64 %2108, i64* %RCX.i245, align 8
  %2109 = load i64, i64* %RAX.i583, align 8
  %2110 = add i64 %2108, %2109
  store i64 %2110, i64* %RAX.i583, align 8
  %2111 = icmp ult i64 %2110, %2109
  %2112 = icmp ult i64 %2110, %2108
  %2113 = or i1 %2111, %2112
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %14, align 1
  %2115 = trunc i64 %2110 to i32
  %2116 = and i32 %2115, 255
  %2117 = tail call i32 @llvm.ctpop.i32(i32 %2116)
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = xor i8 %2119, 1
  store i8 %2120, i8* %21, align 1
  %2121 = xor i64 %2109, %2110
  %2122 = lshr i64 %2121, 4
  %2123 = trunc i64 %2122 to i8
  %2124 = and i8 %2123, 1
  store i8 %2124, i8* %27, align 1
  %2125 = icmp eq i64 %2110, 0
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %30, align 1
  %2127 = lshr i64 %2110, 63
  %2128 = trunc i64 %2127 to i8
  store i8 %2128, i8* %33, align 1
  %2129 = lshr i64 %2109, 63
  %2130 = lshr i64 %2107, 57
  %2131 = and i64 %2130, 1
  %2132 = xor i64 %2127, %2129
  %2133 = xor i64 %2127, %2131
  %2134 = add nuw nsw i64 %2132, %2133
  %2135 = icmp eq i64 %2134, 2
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %39, align 1
  %2137 = add i64 %2102, -1052
  %2138 = add i64 %2014, 73
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i32*
  %2140 = load i32, i32* %2139, align 4
  %2141 = sext i32 %2140 to i64
  store i64 %2141, i64* %RCX.i245, align 8
  %2142 = shl nsw i64 %2141, 1
  %2143 = add i64 %2142, %2110
  %2144 = add i64 %2014, 77
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2143 to i16*
  store i16 %2101, i16* %2145, align 2
  %2146 = load i64, i64* %RBP.i, align 8
  %2147 = add i64 %2146, -1048
  %2148 = load i64, i64* %3, align 8
  %2149 = add i64 %2148, 6
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2147 to i32*
  %2151 = load i32, i32* %2150, align 4
  %2152 = add i32 %2151, 1
  %2153 = zext i32 %2152 to i64
  store i64 %2153, i64* %RAX.i583, align 8
  %2154 = icmp eq i32 %2151, -1
  %2155 = icmp eq i32 %2152, 0
  %2156 = or i1 %2154, %2155
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %14, align 1
  %2158 = and i32 %2152, 255
  %2159 = tail call i32 @llvm.ctpop.i32(i32 %2158)
  %2160 = trunc i32 %2159 to i8
  %2161 = and i8 %2160, 1
  %2162 = xor i8 %2161, 1
  store i8 %2162, i8* %21, align 1
  %2163 = xor i32 %2152, %2151
  %2164 = lshr i32 %2163, 4
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  store i8 %2166, i8* %27, align 1
  %2167 = zext i1 %2155 to i8
  store i8 %2167, i8* %30, align 1
  %2168 = lshr i32 %2152, 31
  %2169 = trunc i32 %2168 to i8
  store i8 %2169, i8* %33, align 1
  %2170 = lshr i32 %2151, 31
  %2171 = xor i32 %2168, %2170
  %2172 = add nuw nsw i32 %2171, %2168
  %2173 = icmp eq i32 %2172, 2
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %39, align 1
  %2175 = add i64 %2148, 15
  store i64 %2175, i64* %3, align 8
  store i32 %2152, i32* %2150, align 4
  %2176 = load i64, i64* %3, align 8
  %2177 = add i64 %2176, -105
  store i64 %2177, i64* %3, align 8
  br label %block_.L_42785e

block_.L_4278cc:                                  ; preds = %block_.L_42785e
  %2178 = add i64 %1985, -1052
  %2179 = add i64 %2014, 11
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i32*
  %2181 = load i32, i32* %2180, align 4
  %2182 = add i32 %2181, 1
  %2183 = zext i32 %2182 to i64
  store i64 %2183, i64* %RAX.i583, align 8
  %2184 = icmp eq i32 %2181, -1
  %2185 = icmp eq i32 %2182, 0
  %2186 = or i1 %2184, %2185
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %14, align 1
  %2188 = and i32 %2182, 255
  %2189 = tail call i32 @llvm.ctpop.i32(i32 %2188)
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  %2192 = xor i8 %2191, 1
  store i8 %2192, i8* %21, align 1
  %2193 = xor i32 %2182, %2181
  %2194 = lshr i32 %2193, 4
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  store i8 %2196, i8* %27, align 1
  %2197 = zext i1 %2185 to i8
  store i8 %2197, i8* %30, align 1
  %2198 = lshr i32 %2182, 31
  %2199 = trunc i32 %2198 to i8
  store i8 %2199, i8* %33, align 1
  %2200 = lshr i32 %2181, 31
  %2201 = xor i32 %2198, %2200
  %2202 = add nuw nsw i32 %2201, %2198
  %2203 = icmp eq i32 %2202, 2
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %39, align 1
  %2205 = add i64 %2014, 20
  store i64 %2205, i64* %3, align 8
  store i32 %2182, i32* %2180, align 4
  %2206 = load i64, i64* %3, align 8
  %2207 = add i64 %2206, -153
  store i64 %2207, i64* %3, align 8
  br label %block_.L_427847

block_.L_4278e5:                                  ; preds = %block_.L_427847
  %2208 = add i64 %1980, 10
  store i64 %2208, i64* %3, align 8
  store i32 0, i32* %1955, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_4278ef

block_.L_4278ef:                                  ; preds = %block_.L_4279d6, %block_.L_4278e5
  %2209 = phi i64 [ %2631, %block_.L_4279d6 ], [ %.pre89, %block_.L_4278e5 ]
  %2210 = load i64, i64* %RBP.i, align 8
  %2211 = add i64 %2210, -1052
  %2212 = add i64 %2209, 7
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2211 to i32*
  %2214 = load i32, i32* %2213, align 4
  %2215 = add i32 %2214, -16
  %2216 = icmp ult i32 %2214, 16
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %14, align 1
  %2218 = and i32 %2215, 255
  %2219 = tail call i32 @llvm.ctpop.i32(i32 %2218)
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  %2222 = xor i8 %2221, 1
  store i8 %2222, i8* %21, align 1
  %2223 = xor i32 %2214, 16
  %2224 = xor i32 %2223, %2215
  %2225 = lshr i32 %2224, 4
  %2226 = trunc i32 %2225 to i8
  %2227 = and i8 %2226, 1
  store i8 %2227, i8* %27, align 1
  %2228 = icmp eq i32 %2215, 0
  %2229 = zext i1 %2228 to i8
  store i8 %2229, i8* %30, align 1
  %2230 = lshr i32 %2215, 31
  %2231 = trunc i32 %2230 to i8
  store i8 %2231, i8* %33, align 1
  %2232 = lshr i32 %2214, 31
  %2233 = xor i32 %2230, %2232
  %2234 = add nuw nsw i32 %2233, %2232
  %2235 = icmp eq i32 %2234, 2
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %39, align 1
  %2237 = icmp ne i8 %2231, 0
  %2238 = xor i1 %2237, %2235
  %.v108 = select i1 %2238, i64 13, i64 256
  %2239 = add i64 %2209, %.v108
  store i64 %2239, i64* %3, align 8
  br i1 %2238, label %block_4278fc, label %block_.L_4279ef

block_4278fc:                                     ; preds = %block_.L_4278ef
  %2240 = add i64 %2210, -1048
  %2241 = add i64 %2239, 10
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i32*
  store i32 0, i32* %2242, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_427906

block_.L_427906:                                  ; preds = %block_427913, %block_4278fc
  %2243 = phi i64 [ %2601, %block_427913 ], [ %.pre90, %block_4278fc ]
  %2244 = load i64, i64* %RBP.i, align 8
  %2245 = add i64 %2244, -1048
  %2246 = add i64 %2243, 7
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2245 to i32*
  %2248 = load i32, i32* %2247, align 4
  %2249 = add i32 %2248, -16
  %2250 = icmp ult i32 %2248, 16
  %2251 = zext i1 %2250 to i8
  store i8 %2251, i8* %14, align 1
  %2252 = and i32 %2249, 255
  %2253 = tail call i32 @llvm.ctpop.i32(i32 %2252)
  %2254 = trunc i32 %2253 to i8
  %2255 = and i8 %2254, 1
  %2256 = xor i8 %2255, 1
  store i8 %2256, i8* %21, align 1
  %2257 = xor i32 %2248, 16
  %2258 = xor i32 %2257, %2249
  %2259 = lshr i32 %2258, 4
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  store i8 %2261, i8* %27, align 1
  %2262 = icmp eq i32 %2249, 0
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %30, align 1
  %2264 = lshr i32 %2249, 31
  %2265 = trunc i32 %2264 to i8
  store i8 %2265, i8* %33, align 1
  %2266 = lshr i32 %2248, 31
  %2267 = xor i32 %2264, %2266
  %2268 = add nuw nsw i32 %2267, %2266
  %2269 = icmp eq i32 %2268, 2
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %39, align 1
  %2271 = icmp ne i8 %2265, 0
  %2272 = xor i1 %2271, %2269
  %.v96 = select i1 %2272, i64 13, i64 208
  %2273 = add i64 %2243, %.v96
  store i64 %2273, i64* %3, align 8
  br i1 %2272, label %block_427913, label %block_.L_4279d6

block_427913:                                     ; preds = %block_.L_427906
  %2274 = add i64 %2244, -1024
  store i64 %2274, i64* %RAX.i583, align 8
  %2275 = add i64 %2273, 14
  store i64 %2275, i64* %3, align 8
  %2276 = load i32, i32* %2247, align 4
  %2277 = sext i32 %2276 to i64
  %2278 = shl nsw i64 %2277, 6
  store i64 %2278, i64* %RCX.i245, align 8
  %2279 = add i64 %2278, %2274
  store i64 %2279, i64* %RDX.i224, align 8
  %2280 = icmp ult i64 %2279, %2274
  %2281 = icmp ult i64 %2279, %2278
  %2282 = or i1 %2280, %2281
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %14, align 1
  %2284 = trunc i64 %2279 to i32
  %2285 = and i32 %2284, 255
  %2286 = tail call i32 @llvm.ctpop.i32(i32 %2285)
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  %2289 = xor i8 %2288, 1
  store i8 %2289, i8* %21, align 1
  %2290 = xor i64 %2274, %2279
  %2291 = lshr i64 %2290, 4
  %2292 = trunc i64 %2291 to i8
  %2293 = and i8 %2292, 1
  store i8 %2293, i8* %27, align 1
  %2294 = icmp eq i64 %2279, 0
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %30, align 1
  %2296 = lshr i64 %2279, 63
  %2297 = trunc i64 %2296 to i8
  store i8 %2297, i8* %33, align 1
  %2298 = lshr i64 %2274, 63
  %2299 = lshr i64 %2277, 57
  %2300 = and i64 %2299, 1
  %2301 = xor i64 %2296, %2298
  %2302 = xor i64 %2296, %2300
  %2303 = add nuw nsw i64 %2301, %2302
  %2304 = icmp eq i64 %2303, 2
  %2305 = zext i1 %2304 to i8
  store i8 %2305, i8* %39, align 1
  %2306 = add i64 %2244, -1052
  %2307 = add i64 %2273, 31
  store i64 %2307, i64* %3, align 8
  %2308 = inttoptr i64 %2306 to i32*
  %2309 = load i32, i32* %2308, align 4
  %2310 = sext i32 %2309 to i64
  store i64 %2310, i64* %RCX.i245, align 8
  %2311 = shl nsw i64 %2310, 1
  %2312 = add i64 %2311, %2279
  %2313 = add i64 %2273, 35
  store i64 %2313, i64* %3, align 8
  %2314 = inttoptr i64 %2312 to i16*
  %2315 = load i16, i16* %2314, align 2
  store i16 %2315, i16* %SI.i117, align 2
  %2316 = add i64 %2244, -1032
  %2317 = add i64 %2273, 42
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i64*
  %2319 = load i64, i64* %2318, align 8
  store i64 %2319, i64* %RCX.i245, align 8
  %2320 = add i64 %2244, -1060
  %2321 = add i64 %2273, 48
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i32*
  %2323 = load i32, i32* %2322, align 4
  %2324 = zext i32 %2323 to i64
  store i64 %2324, i64* %RDI.i221, align 8
  %2325 = add i64 %2273, 55
  store i64 %2325, i64* %3, align 8
  %2326 = load i32, i32* %2308, align 4
  %2327 = shl i32 %2326, 1
  %2328 = zext i32 %2327 to i64
  store i64 %2328, i64* %90, align 8
  %2329 = add i32 %2327, %2323
  %2330 = zext i32 %2329 to i64
  store i64 %2330, i64* %RDI.i221, align 8
  %2331 = icmp ult i32 %2329, %2323
  %2332 = icmp ult i32 %2329, %2327
  %2333 = or i1 %2331, %2332
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %14, align 1
  %2335 = and i32 %2329, 255
  %2336 = tail call i32 @llvm.ctpop.i32(i32 %2335)
  %2337 = trunc i32 %2336 to i8
  %2338 = and i8 %2337, 1
  %2339 = xor i8 %2338, 1
  store i8 %2339, i8* %21, align 1
  %2340 = xor i32 %2327, %2323
  %2341 = xor i32 %2340, %2329
  %2342 = lshr i32 %2341, 4
  %2343 = trunc i32 %2342 to i8
  %2344 = and i8 %2343, 1
  store i8 %2344, i8* %27, align 1
  %2345 = icmp eq i32 %2329, 0
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %30, align 1
  %2347 = lshr i32 %2329, 31
  %2348 = trunc i32 %2347 to i8
  store i8 %2348, i8* %33, align 1
  %2349 = lshr i32 %2323, 31
  %2350 = lshr i32 %2326, 30
  %2351 = and i32 %2350, 1
  %2352 = xor i32 %2347, %2349
  %2353 = xor i32 %2347, %2351
  %2354 = add nuw nsw i32 %2352, %2353
  %2355 = icmp eq i32 %2354, 2
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %39, align 1
  %2357 = sext i32 %2329 to i64
  store i64 %2357, i64* %RDX.i224, align 8
  %2358 = shl nsw i64 %2357, 3
  %2359 = add i64 %2319, %2358
  %2360 = add i64 %2273, 68
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2359 to i64*
  %2362 = load i64, i64* %2361, align 8
  store i64 %2362, i64* %RCX.i245, align 8
  %2363 = load i64, i64* %RBP.i, align 8
  %2364 = add i64 %2363, -1056
  %2365 = add i64 %2273, 74
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i32*
  %2367 = load i32, i32* %2366, align 4
  %2368 = zext i32 %2367 to i64
  store i64 %2368, i64* %RDI.i221, align 8
  %2369 = add i64 %2363, -1048
  %2370 = add i64 %2273, 80
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2369 to i32*
  %2372 = load i32, i32* %2371, align 4
  %2373 = add i32 %2372, %2367
  %2374 = zext i32 %2373 to i64
  store i64 %2374, i64* %RDI.i221, align 8
  %2375 = icmp ult i32 %2373, %2367
  %2376 = icmp ult i32 %2373, %2372
  %2377 = or i1 %2375, %2376
  %2378 = zext i1 %2377 to i8
  store i8 %2378, i8* %14, align 1
  %2379 = and i32 %2373, 255
  %2380 = tail call i32 @llvm.ctpop.i32(i32 %2379)
  %2381 = trunc i32 %2380 to i8
  %2382 = and i8 %2381, 1
  %2383 = xor i8 %2382, 1
  store i8 %2383, i8* %21, align 1
  %2384 = xor i32 %2372, %2367
  %2385 = xor i32 %2384, %2373
  %2386 = lshr i32 %2385, 4
  %2387 = trunc i32 %2386 to i8
  %2388 = and i8 %2387, 1
  store i8 %2388, i8* %27, align 1
  %2389 = icmp eq i32 %2373, 0
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %30, align 1
  %2391 = lshr i32 %2373, 31
  %2392 = trunc i32 %2391 to i8
  store i8 %2392, i8* %33, align 1
  %2393 = lshr i32 %2367, 31
  %2394 = lshr i32 %2372, 31
  %2395 = xor i32 %2391, %2393
  %2396 = xor i32 %2391, %2394
  %2397 = add nuw nsw i32 %2395, %2396
  %2398 = icmp eq i32 %2397, 2
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %39, align 1
  %2400 = sext i32 %2373 to i64
  store i64 %2400, i64* %RDX.i224, align 8
  %2401 = shl nsw i64 %2400, 1
  %2402 = add i64 %2362, %2401
  %2403 = load i16, i16* %SI.i117, align 2
  %2404 = add i64 %2273, 87
  store i64 %2404, i64* %3, align 8
  %2405 = inttoptr i64 %2402 to i16*
  store i16 %2403, i16* %2405, align 2
  %2406 = load i64, i64* %RBP.i, align 8
  %2407 = add i64 %2406, -1048
  %2408 = load i64, i64* %3, align 8
  %2409 = add i64 %2408, 7
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2407 to i32*
  %2411 = load i32, i32* %2410, align 4
  %2412 = sext i32 %2411 to i64
  %2413 = shl nsw i64 %2412, 6
  store i64 %2413, i64* %RCX.i245, align 8
  %2414 = load i64, i64* %RAX.i583, align 8
  %2415 = add i64 %2413, %2414
  store i64 %2415, i64* %RAX.i583, align 8
  %2416 = icmp ult i64 %2415, %2414
  %2417 = icmp ult i64 %2415, %2413
  %2418 = or i1 %2416, %2417
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %14, align 1
  %2420 = trunc i64 %2415 to i32
  %2421 = and i32 %2420, 255
  %2422 = tail call i32 @llvm.ctpop.i32(i32 %2421)
  %2423 = trunc i32 %2422 to i8
  %2424 = and i8 %2423, 1
  %2425 = xor i8 %2424, 1
  store i8 %2425, i8* %21, align 1
  %2426 = xor i64 %2414, %2415
  %2427 = lshr i64 %2426, 4
  %2428 = trunc i64 %2427 to i8
  %2429 = and i8 %2428, 1
  store i8 %2429, i8* %27, align 1
  %2430 = icmp eq i64 %2415, 0
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %30, align 1
  %2432 = lshr i64 %2415, 63
  %2433 = trunc i64 %2432 to i8
  store i8 %2433, i8* %33, align 1
  %2434 = lshr i64 %2414, 63
  %2435 = lshr i64 %2412, 57
  %2436 = and i64 %2435, 1
  %2437 = xor i64 %2432, %2434
  %2438 = xor i64 %2432, %2436
  %2439 = add nuw nsw i64 %2437, %2438
  %2440 = icmp eq i64 %2439, 2
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %39, align 1
  %2442 = add i64 %2406, -1052
  %2443 = add i64 %2408, 20
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to i32*
  %2445 = load i32, i32* %2444, align 4
  %2446 = add i32 %2445, 16
  %2447 = zext i32 %2446 to i64
  store i64 %2447, i64* %RDI.i221, align 8
  %2448 = icmp ugt i32 %2445, -17
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %14, align 1
  %2450 = and i32 %2446, 255
  %2451 = tail call i32 @llvm.ctpop.i32(i32 %2450)
  %2452 = trunc i32 %2451 to i8
  %2453 = and i8 %2452, 1
  %2454 = xor i8 %2453, 1
  store i8 %2454, i8* %21, align 1
  %2455 = xor i32 %2445, 16
  %2456 = xor i32 %2455, %2446
  %2457 = lshr i32 %2456, 4
  %2458 = trunc i32 %2457 to i8
  %2459 = and i8 %2458, 1
  store i8 %2459, i8* %27, align 1
  %2460 = icmp eq i32 %2446, 0
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %30, align 1
  %2462 = lshr i32 %2446, 31
  %2463 = trunc i32 %2462 to i8
  store i8 %2463, i8* %33, align 1
  %2464 = lshr i32 %2445, 31
  %2465 = xor i32 %2462, %2464
  %2466 = add nuw nsw i32 %2465, %2462
  %2467 = icmp eq i32 %2466, 2
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %39, align 1
  %2469 = sext i32 %2446 to i64
  store i64 %2469, i64* %RCX.i245, align 8
  %2470 = shl nsw i64 %2469, 1
  %2471 = add i64 %2415, %2470
  %2472 = add i64 %2408, 30
  store i64 %2472, i64* %3, align 8
  %2473 = inttoptr i64 %2471 to i16*
  %2474 = load i16, i16* %2473, align 2
  store i16 %2474, i16* %SI.i117, align 2
  %2475 = load i64, i64* %RBP.i, align 8
  %2476 = add i64 %2475, -1032
  %2477 = add i64 %2408, 37
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2476 to i64*
  %2479 = load i64, i64* %2478, align 8
  store i64 %2479, i64* %RAX.i583, align 8
  %2480 = add i64 %2475, -1060
  %2481 = add i64 %2408, 43
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = zext i32 %2483 to i64
  store i64 %2484, i64* %RDI.i221, align 8
  %2485 = add i64 %2475, -1052
  %2486 = add i64 %2408, 50
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i32*
  %2488 = load i32, i32* %2487, align 4
  %2489 = shl i32 %2488, 1
  %2490 = or i32 %2489, 1
  %2491 = zext i32 %2490 to i64
  store i64 %2491, i64* %90, align 8
  %2492 = lshr i32 %2488, 30
  %2493 = and i32 %2492, 1
  %2494 = add i32 %2490, %2483
  %2495 = zext i32 %2494 to i64
  store i64 %2495, i64* %RDI.i221, align 8
  %2496 = icmp ult i32 %2494, %2483
  %2497 = icmp ult i32 %2494, %2490
  %2498 = or i1 %2496, %2497
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %14, align 1
  %2500 = and i32 %2494, 255
  %2501 = tail call i32 @llvm.ctpop.i32(i32 %2500)
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  %2504 = xor i8 %2503, 1
  store i8 %2504, i8* %21, align 1
  %2505 = xor i32 %2489, %2483
  %2506 = xor i32 %2505, %2494
  %2507 = lshr i32 %2506, 4
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  store i8 %2509, i8* %27, align 1
  %2510 = icmp eq i32 %2494, 0
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %30, align 1
  %2512 = lshr i32 %2494, 31
  %2513 = trunc i32 %2512 to i8
  store i8 %2513, i8* %33, align 1
  %2514 = lshr i32 %2483, 31
  %2515 = xor i32 %2512, %2514
  %2516 = xor i32 %2512, %2493
  %2517 = add nuw nsw i32 %2515, %2516
  %2518 = icmp eq i32 %2517, 2
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %39, align 1
  %2520 = sext i32 %2494 to i64
  store i64 %2520, i64* %RCX.i245, align 8
  %2521 = load i64, i64* %RAX.i583, align 8
  %2522 = shl nsw i64 %2520, 3
  %2523 = add i64 %2521, %2522
  %2524 = add i64 %2408, 67
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2523 to i64*
  %2526 = load i64, i64* %2525, align 8
  store i64 %2526, i64* %RAX.i583, align 8
  %2527 = load i64, i64* %RBP.i, align 8
  %2528 = add i64 %2527, -1056
  %2529 = add i64 %2408, 73
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i32*
  %2531 = load i32, i32* %2530, align 4
  %2532 = zext i32 %2531 to i64
  store i64 %2532, i64* %RDI.i221, align 8
  %2533 = add i64 %2527, -1048
  %2534 = add i64 %2408, 79
  store i64 %2534, i64* %3, align 8
  %2535 = inttoptr i64 %2533 to i32*
  %2536 = load i32, i32* %2535, align 4
  %2537 = add i32 %2536, %2531
  %2538 = zext i32 %2537 to i64
  store i64 %2538, i64* %RDI.i221, align 8
  %2539 = icmp ult i32 %2537, %2531
  %2540 = icmp ult i32 %2537, %2536
  %2541 = or i1 %2539, %2540
  %2542 = zext i1 %2541 to i8
  store i8 %2542, i8* %14, align 1
  %2543 = and i32 %2537, 255
  %2544 = tail call i32 @llvm.ctpop.i32(i32 %2543)
  %2545 = trunc i32 %2544 to i8
  %2546 = and i8 %2545, 1
  %2547 = xor i8 %2546, 1
  store i8 %2547, i8* %21, align 1
  %2548 = xor i32 %2536, %2531
  %2549 = xor i32 %2548, %2537
  %2550 = lshr i32 %2549, 4
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  store i8 %2552, i8* %27, align 1
  %2553 = icmp eq i32 %2537, 0
  %2554 = zext i1 %2553 to i8
  store i8 %2554, i8* %30, align 1
  %2555 = lshr i32 %2537, 31
  %2556 = trunc i32 %2555 to i8
  store i8 %2556, i8* %33, align 1
  %2557 = lshr i32 %2531, 31
  %2558 = lshr i32 %2536, 31
  %2559 = xor i32 %2555, %2557
  %2560 = xor i32 %2555, %2558
  %2561 = add nuw nsw i32 %2559, %2560
  %2562 = icmp eq i32 %2561, 2
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %39, align 1
  %2564 = sext i32 %2537 to i64
  store i64 %2564, i64* %RCX.i245, align 8
  %2565 = shl nsw i64 %2564, 1
  %2566 = add i64 %2526, %2565
  %2567 = load i16, i16* %SI.i117, align 2
  %2568 = add i64 %2408, 86
  store i64 %2568, i64* %3, align 8
  %2569 = inttoptr i64 %2566 to i16*
  store i16 %2567, i16* %2569, align 2
  %2570 = load i64, i64* %RBP.i, align 8
  %2571 = add i64 %2570, -1048
  %2572 = load i64, i64* %3, align 8
  %2573 = add i64 %2572, 6
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2571 to i32*
  %2575 = load i32, i32* %2574, align 4
  %2576 = add i32 %2575, 1
  %2577 = zext i32 %2576 to i64
  store i64 %2577, i64* %RAX.i583, align 8
  %2578 = icmp eq i32 %2575, -1
  %2579 = icmp eq i32 %2576, 0
  %2580 = or i1 %2578, %2579
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %14, align 1
  %2582 = and i32 %2576, 255
  %2583 = tail call i32 @llvm.ctpop.i32(i32 %2582)
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  %2586 = xor i8 %2585, 1
  store i8 %2586, i8* %21, align 1
  %2587 = xor i32 %2576, %2575
  %2588 = lshr i32 %2587, 4
  %2589 = trunc i32 %2588 to i8
  %2590 = and i8 %2589, 1
  store i8 %2590, i8* %27, align 1
  %2591 = zext i1 %2579 to i8
  store i8 %2591, i8* %30, align 1
  %2592 = lshr i32 %2576, 31
  %2593 = trunc i32 %2592 to i8
  store i8 %2593, i8* %33, align 1
  %2594 = lshr i32 %2575, 31
  %2595 = xor i32 %2592, %2594
  %2596 = add nuw nsw i32 %2595, %2592
  %2597 = icmp eq i32 %2596, 2
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %39, align 1
  %2599 = add i64 %2572, 15
  store i64 %2599, i64* %3, align 8
  store i32 %2576, i32* %2574, align 4
  %2600 = load i64, i64* %3, align 8
  %2601 = add i64 %2600, -203
  store i64 %2601, i64* %3, align 8
  br label %block_.L_427906

block_.L_4279d6:                                  ; preds = %block_.L_427906
  %2602 = add i64 %2244, -1052
  %2603 = add i64 %2273, 11
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i32*
  %2605 = load i32, i32* %2604, align 4
  %2606 = add i32 %2605, 1
  %2607 = zext i32 %2606 to i64
  store i64 %2607, i64* %RAX.i583, align 8
  %2608 = icmp eq i32 %2605, -1
  %2609 = icmp eq i32 %2606, 0
  %2610 = or i1 %2608, %2609
  %2611 = zext i1 %2610 to i8
  store i8 %2611, i8* %14, align 1
  %2612 = and i32 %2606, 255
  %2613 = tail call i32 @llvm.ctpop.i32(i32 %2612)
  %2614 = trunc i32 %2613 to i8
  %2615 = and i8 %2614, 1
  %2616 = xor i8 %2615, 1
  store i8 %2616, i8* %21, align 1
  %2617 = xor i32 %2606, %2605
  %2618 = lshr i32 %2617, 4
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  store i8 %2620, i8* %27, align 1
  %2621 = zext i1 %2609 to i8
  store i8 %2621, i8* %30, align 1
  %2622 = lshr i32 %2606, 31
  %2623 = trunc i32 %2622 to i8
  store i8 %2623, i8* %33, align 1
  %2624 = lshr i32 %2605, 31
  %2625 = xor i32 %2622, %2624
  %2626 = add nuw nsw i32 %2625, %2622
  %2627 = icmp eq i32 %2626, 2
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %39, align 1
  %2629 = add i64 %2273, 20
  store i64 %2629, i64* %3, align 8
  store i32 %2606, i32* %2604, align 4
  %2630 = load i64, i64* %3, align 8
  %2631 = add i64 %2630, -251
  store i64 %2631, i64* %3, align 8
  br label %block_.L_4278ef

block_.L_4279ef:                                  ; preds = %block_.L_4278ef
  %2632 = add i64 %2239, 5
  store i64 %2632, i64* %3, align 8
  br label %block_.L_4279f4

block_.L_4279f4:                                  ; preds = %block_.L_4279ef, %block_427804
  %2633 = phi i64 [ %2210, %block_.L_4279ef ], [ %1877, %block_427804 ]
  %2634 = phi i64 [ %2632, %block_.L_4279ef ], [ %1935, %block_427804 ]
  %2635 = add i64 %2633, -1044
  %2636 = add i64 %2634, 11
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i32*
  %2638 = load i32, i32* %2637, align 4
  %2639 = add i32 %2638, 2
  %2640 = zext i32 %2639 to i64
  store i64 %2640, i64* %RAX.i583, align 8
  %2641 = icmp ugt i32 %2638, -3
  %2642 = zext i1 %2641 to i8
  store i8 %2642, i8* %14, align 1
  %2643 = and i32 %2639, 255
  %2644 = tail call i32 @llvm.ctpop.i32(i32 %2643)
  %2645 = trunc i32 %2644 to i8
  %2646 = and i8 %2645, 1
  %2647 = xor i8 %2646, 1
  store i8 %2647, i8* %21, align 1
  %2648 = xor i32 %2639, %2638
  %2649 = lshr i32 %2648, 4
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  store i8 %2651, i8* %27, align 1
  %2652 = icmp eq i32 %2639, 0
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %30, align 1
  %2654 = lshr i32 %2639, 31
  %2655 = trunc i32 %2654 to i8
  store i8 %2655, i8* %33, align 1
  %2656 = lshr i32 %2638, 31
  %2657 = xor i32 %2654, %2656
  %2658 = add nuw nsw i32 %2657, %2654
  %2659 = icmp eq i32 %2658, 2
  %2660 = zext i1 %2659 to i8
  store i8 %2660, i8* %39, align 1
  %2661 = add i64 %2634, 20
  store i64 %2661, i64* %3, align 8
  store i32 %2639, i32* %2637, align 4
  %2662 = load i64, i64* %3, align 8
  %2663 = add i64 %2662, -542
  store i64 %2663, i64* %3, align 8
  br label %block_.L_4277ea

block_.L_427a0d:                                  ; preds = %block_.L_4277ea
  %2664 = add i64 %1914, 5
  store i64 %2664, i64* %3, align 8
  br label %block_.L_427a12

block_.L_427a12:                                  ; preds = %block_.L_427a0d, %block_.L_4277db
  %storemerge = phi i64 [ %1875, %block_.L_4277db ], [ %2664, %block_.L_427a0d ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.0, %block_.L_4277db ], [ %2, %block_.L_427a0d ]
  %2665 = load i64, i64* %6, align 8
  %2666 = add i64 %2665, 1104
  store i64 %2666, i64* %6, align 8
  %2667 = icmp ugt i64 %2665, -1105
  %2668 = zext i1 %2667 to i8
  store i8 %2668, i8* %14, align 1
  %2669 = trunc i64 %2666 to i32
  %2670 = and i32 %2669, 255
  %2671 = tail call i32 @llvm.ctpop.i32(i32 %2670)
  %2672 = trunc i32 %2671 to i8
  %2673 = and i8 %2672, 1
  %2674 = xor i8 %2673, 1
  store i8 %2674, i8* %21, align 1
  %2675 = xor i64 %2665, 16
  %2676 = xor i64 %2675, %2666
  %2677 = lshr i64 %2676, 4
  %2678 = trunc i64 %2677 to i8
  %2679 = and i8 %2678, 1
  store i8 %2679, i8* %27, align 1
  %2680 = icmp eq i64 %2666, 0
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %30, align 1
  %2682 = lshr i64 %2666, 63
  %2683 = trunc i64 %2682 to i8
  store i8 %2683, i8* %33, align 1
  %2684 = lshr i64 %2665, 63
  %2685 = xor i64 %2682, %2684
  %2686 = add nuw nsw i64 %2685, %2682
  %2687 = icmp eq i64 %2686, 2
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %39, align 1
  %2689 = add i64 %storemerge, 8
  store i64 %2689, i64* %3, align 8
  %2690 = add i64 %2665, 1112
  %2691 = inttoptr i64 %2666 to i64*
  %2692 = load i64, i64* %2691, align 8
  store i64 %2692, i64* %RBP.i, align 8
  store i64 %2690, i64* %6, align 8
  %2693 = add i64 %storemerge, 9
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2690 to i64*
  %2695 = load i64, i64* %2694, align 8
  store i64 %2695, i64* %3, align 8
  %2696 = add i64 %2665, 1120
  store i64 %2696, i64* %6, align 8
  ret %struct.Memory* %MEMORY.17
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
define %struct.Memory* @routine_subq__0x450___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1104
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1104
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
define %struct.Memory* @routine_movq__rax__MINUS0x408__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1032
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x410__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1040
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72700
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
define %struct.Memory* @routine_je_.L_4277e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x414__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1044
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x414__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1044
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
define %struct.Memory* @routine_cmpl_0x11b24__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72484
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
define %struct.Memory* @routine_jge_.L_4277db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x1948__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6472
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x414__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1044
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
define %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = load i8, i8* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = zext i8 %9 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i8 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i8 %9, 7
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4277c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x420__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1056
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x424__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1060
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x414__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1044
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
define %struct.Memory* @routine_callq_.get_mb_pos(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x41c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1052
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x20__MINUS0x41c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1052
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -32
  %10 = icmp ult i32 %8, 32
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
define %struct.Memory* @routine_jge_.L_4273e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x418__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1048
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x418__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1048
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_4273c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x400__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1024
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x408__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1032
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x424__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1060
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
define %struct.Memory* @routine_addl_MINUS0x41c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1052
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
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x420__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1056
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
define %struct.Memory* @routine_addl_MINUS0x418__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1048
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
define %struct.Memory* @routine_movw___rcx__rsi_2____di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %DI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x418__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1048
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
define %struct.Memory* @routine_movslq_MINUS0x41c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1052
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
define %struct.Memory* @routine_movl_MINUS0x418__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1048
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
define %struct.Memory* @routine_movl__eax__MINUS0x418__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1048
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42735a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4273cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x41c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1052
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
define %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1052
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_427343(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x41c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1052
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_4274eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4274d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movw___rdx__rcx_2____si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %SI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x424__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1060
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
define %struct.Memory* @routine_movl_MINUS0x41c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1052
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__r8d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %R8D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x420__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1056
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
define %struct.Memory* @routine_addl_MINUS0x418__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1048
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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
define %struct.Memory* @routine_movw__si____rcx__rdx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x41c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1052
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
define %struct.Memory* @routine_addl__0x10___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  %9 = icmp ugt i32 %6, -17
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
define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw___rax__rcx_2____si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %SI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x408__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1032
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %8, %5
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
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
define %struct.Memory* @routine_jmpq_.L_427402(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4274d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4273eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x420__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1056
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
define %struct.Memory* @routine_movl__eax__MINUS0x42c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1068
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x438__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1080
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
define %struct.Memory* @routine_movq_MINUS0x438__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1080
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_0x11c04__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72708
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x43c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1084
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
define %struct.Memory* @routine_movl_MINUS0x43c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1084
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x420__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1056
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x424__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1060
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x42c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1068
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
define %struct.Memory* @routine_movl__eax__MINUS0x440__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1088
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

define %struct.Memory* @routine_idivl_0x11c08__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 72712
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x440__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1088
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
define %struct.Memory* @routine_movl__eax__MINUS0x444__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1092
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x444__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1092
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R10D, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1060
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x428__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1064
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x428__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1064
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_4277bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11c08__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72712
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jge_.L_42765f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72708
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
define %struct.Memory* @routine_jge_.L_427646(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x410__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1040
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x428__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1064
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
define %struct.Memory* @routine_movl_MINUS0x424__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1060
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
define %struct.Memory* @routine_addl_MINUS0x41c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1052
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x420__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1056
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
define %struct.Memory* @routine_addl_MINUS0x418__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1048
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movw___rcx__rdx_2____di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %DI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4275c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42764b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_427597(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 72712
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
define %struct.Memory* @routine_jge_.L_4277a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_42778b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x11c08__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72712
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x410__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1040
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x428__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1064
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
define %struct.Memory* @routine_jmpq_.L_42768d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_427790(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_427669(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4277a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x428__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1064
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
define %struct.Memory* @routine_movl__eax__MINUS0x428__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1064
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_427580(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4277c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4277c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1044
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4272e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_427a12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_427a0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4279f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4278e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4278cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42785e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4278d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_427847(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4279ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4279d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_427906(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4279db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4278ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4279f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4279f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4277ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x450___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1104
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1105
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
