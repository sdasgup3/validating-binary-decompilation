; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x722b20_type = type <{ [8 x i8] }>
%G_0x722b28_type = type <{ [8 x i8] }>
%G_0x722b30_type = type <{ [8 x i8] }>
%G_0x722b38_type = type <{ [8 x i8] }>
%G_0x722b40_type = type <{ [8 x i8] }>
%G_0x722b48_type = type <{ [8 x i8] }>
%G_0x7247b0_type = type <{ [4 x i8] }>
%G_0x7247b4_type = type <{ [4 x i8] }>
%G_0x7247b8_type = type <{ [4 x i8] }>
%G_0x7247bc_type = type <{ [4 x i8] }>
%G_0x7247c0_type = type <{ [4 x i8] }>
%G_0x7247c4_type = type <{ [4 x i8] }>
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
@G_0x722b20 = local_unnamed_addr global %G_0x722b20_type zeroinitializer
@G_0x722b28 = local_unnamed_addr global %G_0x722b28_type zeroinitializer
@G_0x722b30 = local_unnamed_addr global %G_0x722b30_type zeroinitializer
@G_0x722b38 = local_unnamed_addr global %G_0x722b38_type zeroinitializer
@G_0x722b40 = local_unnamed_addr global %G_0x722b40_type zeroinitializer
@G_0x722b48 = local_unnamed_addr global %G_0x722b48_type zeroinitializer
@G_0x7247b0 = local_unnamed_addr global %G_0x7247b0_type zeroinitializer
@G_0x7247b4 = local_unnamed_addr global %G_0x7247b4_type zeroinitializer
@G_0x7247b8 = local_unnamed_addr global %G_0x7247b8_type zeroinitializer
@G_0x7247bc = local_unnamed_addr global %G_0x7247bc_type zeroinitializer
@G_0x7247c0 = local_unnamed_addr global %G_0x7247c0_type zeroinitializer
@G_0x7247c4 = local_unnamed_addr global %G_0x7247c4_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @init_mbaff_lists(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -16
  %12 = add i64 %10, 10
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i32*
  store i32 2, i32* %13, align 4
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RAX.i260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_44dd0b

block_.L_44dd0b:                                  ; preds = %block_.L_44dd4d, %entry
  %20 = phi i64 [ %165, %block_.L_44dd4d ], [ %.pre, %entry ]
  %21 = load i64, i64* %RBP.i, align 8
  %22 = add i64 %21, -8
  %23 = add i64 %20, 4
  store i64 %23, i64* %3, align 8
  %24 = inttoptr i64 %22 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = add i32 %25, -6
  %27 = icmp ult i32 %25, 6
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %14, align 1
  %29 = and i32 %26, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %15, align 1
  %34 = xor i32 %26, %25
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  store i8 %37, i8* %16, align 1
  %38 = icmp eq i32 %26, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %17, align 1
  %40 = lshr i32 %26, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %18, align 1
  %42 = lshr i32 %25, 31
  %43 = xor i32 %40, %42
  %44 = add nuw nsw i32 %43, %42
  %45 = icmp eq i32 %44, 2
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %19, align 1
  %47 = icmp ne i8 %41, 0
  %48 = xor i1 %47, %45
  %.v31 = select i1 %48, i64 10, i64 95
  %49 = add i64 %20, %.v31
  store i64 %49, i64* %3, align 8
  br i1 %48, label %block_44dd15, label %block_.L_44dd6a

block_44dd15:                                     ; preds = %block_.L_44dd0b
  %50 = add i64 %21, -4
  %51 = add i64 %49, 7
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %50 to i32*
  store i32 0, i32* %52, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_44dd1c

block_.L_44dd1c:                                  ; preds = %block_44dd26, %block_44dd15
  %53 = phi i64 [ %129, %block_44dd26 ], [ %.pre30, %block_44dd15 ]
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -4
  %56 = add i64 %53, 4
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, -33
  %60 = icmp ult i32 %58, 33
  %61 = zext i1 %60 to i8
  store i8 %61, i8* %14, align 1
  %62 = and i32 %59, 255
  %63 = tail call i32 @llvm.ctpop.i32(i32 %62)
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  store i8 %66, i8* %15, align 1
  %67 = xor i32 %59, %58
  %68 = lshr i32 %67, 4
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  store i8 %70, i8* %16, align 1
  %71 = icmp eq i32 %59, 0
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %17, align 1
  %73 = lshr i32 %59, 31
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %18, align 1
  %75 = lshr i32 %58, 31
  %76 = xor i32 %73, %75
  %77 = add nuw nsw i32 %76, %75
  %78 = icmp eq i32 %77, 2
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %19, align 1
  %.v = select i1 %60, i64 10, i64 49
  %80 = add i64 %53, %.v
  %81 = add i64 %54, -8
  %82 = add i64 %80, 4
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %RAX.i260, align 8
  br i1 %60, label %block_44dd26, label %block_.L_44dd4d

block_44dd26:                                     ; preds = %block_.L_44dd1c
  %86 = shl nsw i64 %85, 3
  %87 = add nsw i64 %86, 7482144
  %88 = add i64 %80, 12
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RAX.i260, align 8
  %91 = add i64 %80, 15
  store i64 %91, i64* %3, align 8
  %92 = load i32, i32* %57, align 4
  %93 = zext i32 %92 to i64
  store i64 %93, i64* %RCX.i277, align 8
  store i64 %93, i64* %RDX.i275, align 8
  %94 = shl nuw nsw i64 %93, 3
  %95 = add i64 %90, %94
  %96 = add i64 %80, 25
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i64*
  store i64 0, i64* %97, align 8
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -4
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 3
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %99 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %103, 1
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RAX.i260, align 8
  %106 = icmp eq i32 %103, -1
  %107 = icmp eq i32 %104, 0
  %108 = or i1 %106, %107
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %14, align 1
  %110 = and i32 %104, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %15, align 1
  %115 = xor i32 %104, %103
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %16, align 1
  %119 = zext i1 %107 to i8
  store i8 %119, i8* %17, align 1
  %120 = lshr i32 %104, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %18, align 1
  %122 = lshr i32 %103, 31
  %123 = xor i32 %120, %122
  %124 = add nuw nsw i32 %123, %120
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %19, align 1
  %127 = add i64 %100, 9
  store i64 %127, i64* %3, align 8
  store i32 %104, i32* %102, align 4
  %128 = load i64, i64* %3, align 8
  %129 = add i64 %128, -44
  store i64 %129, i64* %3, align 8
  br label %block_.L_44dd1c

block_.L_44dd4d:                                  ; preds = %block_.L_44dd1c
  %130 = shl nsw i64 %85, 2
  %131 = add nsw i64 %130, 7489456
  %132 = add i64 %80, 15
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  store i32 0, i32* %133, align 4
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -8
  %136 = load i64, i64* %3, align 8
  %137 = add i64 %136, 3
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %135 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = add i32 %139, 1
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RAX.i260, align 8
  %142 = icmp eq i32 %139, -1
  %143 = icmp eq i32 %140, 0
  %144 = or i1 %142, %143
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %14, align 1
  %146 = and i32 %140, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %15, align 1
  %151 = xor i32 %140, %139
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %16, align 1
  %155 = zext i1 %143 to i8
  store i8 %155, i8* %17, align 1
  %156 = lshr i32 %140, 31
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %18, align 1
  %158 = lshr i32 %139, 31
  %159 = xor i32 %156, %158
  %160 = add nuw nsw i32 %159, %156
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %19, align 1
  %163 = add i64 %136, 9
  store i64 %163, i64* %3, align 8
  store i32 %140, i32* %138, align 4
  %164 = load i64, i64* %3, align 8
  %165 = add i64 %164, -90
  store i64 %165, i64* %3, align 8
  br label %block_.L_44dd0b

block_.L_44dd6a:                                  ; preds = %block_.L_44dd0b
  %166 = add i64 %49, 7
  store i64 %166, i64* %3, align 8
  store i32 0, i32* %24, align 4
  %RCX.i236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_44dd71

block_.L_44dd71:                                  ; preds = %block_44dd81, %block_.L_44dd6a
  %167 = phi i64 [ %397, %block_44dd81 ], [ %.pre28, %block_.L_44dd6a ]
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -8
  %170 = add i64 %167, 3
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX.i260, align 8
  %174 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %175 = sub i32 %172, %174
  %176 = icmp ult i32 %172, %174
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %14, align 1
  %178 = and i32 %175, 255
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178)
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %15, align 1
  %183 = xor i32 %174, %172
  %184 = xor i32 %183, %175
  %185 = lshr i32 %184, 4
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %16, align 1
  %188 = icmp eq i32 %175, 0
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %17, align 1
  %190 = lshr i32 %175, 31
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %18, align 1
  %192 = lshr i32 %172, 31
  %193 = lshr i32 %174, 31
  %194 = xor i32 %193, %192
  %195 = xor i32 %190, %192
  %196 = add nuw nsw i32 %195, %194
  %197 = icmp eq i32 %196, 2
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %19, align 1
  %199 = icmp ne i8 %191, 0
  %200 = xor i1 %199, %197
  %.v32 = select i1 %200, i64 16, i64 212
  %201 = add i64 %167, %.v32
  store i64 %201, i64* %3, align 8
  br i1 %200, label %block_44dd81, label %block_.L_44de45

block_44dd81:                                     ; preds = %block_.L_44dd71
  %202 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %202, i64* %RAX.i260, align 8
  %203 = add i64 %201, 12
  store i64 %203, i64* %3, align 8
  %204 = load i32, i32* %171, align 4
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %RCX.i236, align 8
  %206 = shl nsw i64 %205, 3
  %207 = add i64 %206, %202
  %208 = add i64 %201, 16
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i64*
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %RAX.i260, align 8
  %211 = add i64 %210, 6528
  %212 = add i64 %201, 23
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RAX.i260, align 8
  %215 = load i64, i64* bitcast (%G_0x722b30_type* @G_0x722b30 to i64*), align 8
  store i64 %215, i64* %RCX.i236, align 8
  %216 = add i64 %201, 34
  store i64 %216, i64* %3, align 8
  %217 = load i32, i32* %171, align 4
  %218 = shl i32 %217, 1
  %219 = icmp slt i32 %217, 0
  %220 = icmp slt i32 %218, 0
  %221 = xor i1 %219, %220
  %222 = zext i32 %218 to i64
  store i64 %222, i64* %RDX.i226, align 8
  %.lobit = lshr i32 %217, 31
  %223 = trunc i32 %.lobit to i8
  store i8 %223, i8* %14, align 1
  %224 = and i32 %218, 254
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224)
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %229 = icmp eq i32 %218, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %17, align 1
  %231 = lshr i32 %217, 30
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  store i8 %233, i8* %18, align 1
  %234 = zext i1 %221 to i8
  store i8 %234, i8* %19, align 1
  %235 = sext i32 %218 to i64
  store i64 %235, i64* %RSI.i222, align 8
  %236 = shl nsw i64 %235, 3
  %237 = add i64 %215, %236
  %238 = add i64 %201, 43
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i64*
  store i64 %214, i64* %239, align 8
  %240 = load i64, i64* %3, align 8
  %241 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %241, i64* %RAX.i260, align 8
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -8
  %244 = add i64 %240, 12
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %RCX.i236, align 8
  %248 = shl nsw i64 %247, 3
  %249 = add i64 %248, %241
  %250 = add i64 %240, 16
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i64*
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %RAX.i260, align 8
  %253 = add i64 %252, 6536
  %254 = add i64 %240, 23
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %RAX.i260, align 8
  %257 = load i64, i64* bitcast (%G_0x722b30_type* @G_0x722b30 to i64*), align 8
  store i64 %257, i64* %RCX.i236, align 8
  %258 = add i64 %240, 34
  store i64 %258, i64* %3, align 8
  %259 = load i32, i32* %245, align 4
  %260 = shl i32 %259, 1
  %261 = or i32 %260, 1
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RDX.i226, align 8
  store i8 0, i8* %14, align 1
  %263 = and i32 %261, 255
  %264 = tail call i32 @llvm.ctpop.i32(i32 %263)
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  store i8 %267, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %268 = lshr i32 %259, 30
  %269 = and i32 %268, 1
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %18, align 1
  %271 = lshr i32 %259, 30
  %272 = and i32 %271, 1
  %273 = xor i32 %269, %272
  %274 = add nuw nsw i32 %273, %269
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %19, align 1
  %277 = sext i32 %261 to i64
  store i64 %277, i64* %RSI.i222, align 8
  %278 = shl nsw i64 %277, 3
  %279 = add i64 %257, %278
  %280 = add i64 %240, 46
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i64*
  store i64 %256, i64* %281, align 8
  %282 = load i64, i64* %3, align 8
  %283 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %283, i64* %RAX.i260, align 8
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -8
  %286 = add i64 %282, 12
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  store i64 %289, i64* %RCX.i236, align 8
  %290 = shl nsw i64 %289, 3
  %291 = add i64 %290, %283
  %292 = add i64 %282, 16
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i64*
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %RAX.i260, align 8
  %295 = add i64 %294, 6536
  %296 = add i64 %282, 23
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i64*
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %RAX.i260, align 8
  %299 = load i64, i64* bitcast (%G_0x722b40_type* @G_0x722b40 to i64*), align 8
  store i64 %299, i64* %RCX.i236, align 8
  %300 = add i64 %282, 34
  store i64 %300, i64* %3, align 8
  %301 = load i32, i32* %287, align 4
  %302 = shl i32 %301, 1
  %303 = icmp slt i32 %301, 0
  %304 = icmp slt i32 %302, 0
  %305 = xor i1 %303, %304
  %306 = zext i32 %302 to i64
  store i64 %306, i64* %RDX.i226, align 8
  %.lobit5 = lshr i32 %301, 31
  %307 = trunc i32 %.lobit5 to i8
  store i8 %307, i8* %14, align 1
  %308 = and i32 %302, 254
  %309 = tail call i32 @llvm.ctpop.i32(i32 %308)
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  %312 = xor i8 %311, 1
  store i8 %312, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %313 = icmp eq i32 %302, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %17, align 1
  %315 = lshr i32 %301, 30
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  store i8 %317, i8* %18, align 1
  %318 = zext i1 %305 to i8
  store i8 %318, i8* %19, align 1
  %319 = sext i32 %302 to i64
  store i64 %319, i64* %RSI.i222, align 8
  %320 = shl nsw i64 %319, 3
  %321 = add i64 %299, %320
  %322 = add i64 %282, 43
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i64*
  store i64 %298, i64* %323, align 8
  %324 = load i64, i64* %3, align 8
  %325 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %325, i64* %RAX.i260, align 8
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -8
  %328 = add i64 %324, 12
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  store i64 %331, i64* %RCX.i236, align 8
  %332 = shl nsw i64 %331, 3
  %333 = add i64 %332, %325
  %334 = add i64 %324, 16
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i64*
  %336 = load i64, i64* %335, align 8
  store i64 %336, i64* %RAX.i260, align 8
  %337 = add i64 %336, 6528
  %338 = add i64 %324, 23
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i64*
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %RAX.i260, align 8
  %341 = load i64, i64* bitcast (%G_0x722b40_type* @G_0x722b40 to i64*), align 8
  store i64 %341, i64* %RCX.i236, align 8
  %342 = add i64 %324, 34
  store i64 %342, i64* %3, align 8
  %343 = load i32, i32* %329, align 4
  %344 = shl i32 %343, 1
  %345 = or i32 %344, 1
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RDX.i226, align 8
  store i8 0, i8* %14, align 1
  %347 = and i32 %345, 255
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347)
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %352 = lshr i32 %343, 30
  %353 = and i32 %352, 1
  %354 = trunc i32 %353 to i8
  store i8 %354, i8* %18, align 1
  %355 = lshr i32 %343, 30
  %356 = and i32 %355, 1
  %357 = xor i32 %353, %356
  %358 = add nuw nsw i32 %357, %353
  %359 = icmp eq i32 %358, 2
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %19, align 1
  %361 = sext i32 %345 to i64
  store i64 %361, i64* %RSI.i222, align 8
  %362 = shl nsw i64 %361, 3
  %363 = add i64 %341, %362
  %364 = add i64 %324, 46
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i64*
  store i64 %340, i64* %365, align 8
  %366 = load i64, i64* %RBP.i, align 8
  %367 = add i64 %366, -8
  %368 = load i64, i64* %3, align 8
  %369 = add i64 %368, 3
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %367 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = add i32 %371, 1
  %373 = zext i32 %372 to i64
  store i64 %373, i64* %RAX.i260, align 8
  %374 = icmp eq i32 %371, -1
  %375 = icmp eq i32 %372, 0
  %376 = or i1 %374, %375
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %14, align 1
  %378 = and i32 %372, 255
  %379 = tail call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %15, align 1
  %383 = xor i32 %372, %371
  %384 = lshr i32 %383, 4
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  store i8 %386, i8* %16, align 1
  %387 = zext i1 %375 to i8
  store i8 %387, i8* %17, align 1
  %388 = lshr i32 %372, 31
  %389 = trunc i32 %388 to i8
  store i8 %389, i8* %18, align 1
  %390 = lshr i32 %371, 31
  %391 = xor i32 %388, %390
  %392 = add nuw nsw i32 %391, %388
  %393 = icmp eq i32 %392, 2
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %19, align 1
  %395 = add i64 %368, 9
  store i64 %395, i64* %3, align 8
  store i32 %372, i32* %370, align 4
  %396 = load i64, i64* %3, align 8
  %397 = add i64 %396, -207
  store i64 %397, i64* %3, align 8
  br label %block_.L_44dd71

block_.L_44de45:                                  ; preds = %block_.L_44dd71
  %398 = shl i32 %174, 1
  %399 = icmp slt i32 %174, 0
  %400 = icmp slt i32 %398, 0
  %401 = xor i1 %399, %400
  %402 = zext i32 %398 to i64
  store i64 %402, i64* %RAX.i260, align 8
  %403 = trunc i32 %193 to i8
  store i8 %403, i8* %14, align 1
  %404 = and i32 %398, 254
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %409 = icmp eq i32 %398, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %17, align 1
  %411 = lshr i32 %174, 30
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  store i8 %413, i8* %18, align 1
  %414 = zext i1 %401 to i8
  store i8 %414, i8* %19, align 1
  store i32 %398, i32* bitcast (%G_0x7247c0_type* @G_0x7247c0 to i32*), align 8
  store i32 %398, i32* bitcast (%G_0x7247b8_type* @G_0x7247b8 to i32*), align 8
  %415 = add i64 %201, 30
  store i64 %415, i64* %3, align 8
  store i32 0, i32* %171, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_44de64

block_.L_44de64:                                  ; preds = %block_44de74, %block_.L_44de45
  %416 = phi i64 [ %646, %block_44de74 ], [ %.pre29, %block_.L_44de45 ]
  %417 = load i64, i64* %RBP.i, align 8
  %418 = add i64 %417, -8
  %419 = add i64 %416, 3
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = zext i32 %421 to i64
  store i64 %422, i64* %RAX.i260, align 8
  %423 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %424 = sub i32 %421, %423
  %425 = icmp ult i32 %421, %423
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %14, align 1
  %427 = and i32 %424, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %15, align 1
  %432 = xor i32 %423, %421
  %433 = xor i32 %432, %424
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %16, align 1
  %437 = icmp eq i32 %424, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %17, align 1
  %439 = lshr i32 %424, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %18, align 1
  %441 = lshr i32 %421, 31
  %442 = lshr i32 %423, 31
  %443 = xor i32 %442, %441
  %444 = xor i32 %439, %441
  %445 = add nuw nsw i32 %444, %443
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %19, align 1
  %448 = icmp ne i8 %440, 0
  %449 = xor i1 %448, %446
  %.v33 = select i1 %449, i64 16, i64 212
  %450 = add i64 %416, %.v33
  store i64 %450, i64* %3, align 8
  br i1 %449, label %block_44de74, label %block_.L_44df38

block_44de74:                                     ; preds = %block_.L_44de64
  %451 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %451, i64* %RAX.i260, align 8
  %452 = add i64 %450, 12
  store i64 %452, i64* %3, align 8
  %453 = load i32, i32* %420, align 4
  %454 = sext i32 %453 to i64
  store i64 %454, i64* %RCX.i236, align 8
  %455 = shl nsw i64 %454, 3
  %456 = add i64 %455, %451
  %457 = add i64 %450, 16
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i64*
  %459 = load i64, i64* %458, align 8
  store i64 %459, i64* %RAX.i260, align 8
  %460 = add i64 %459, 6528
  %461 = add i64 %450, 23
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RAX.i260, align 8
  %464 = load i64, i64* bitcast (%G_0x722b38_type* @G_0x722b38 to i64*), align 8
  store i64 %464, i64* %RCX.i236, align 8
  %465 = add i64 %450, 34
  store i64 %465, i64* %3, align 8
  %466 = load i32, i32* %420, align 4
  %467 = shl i32 %466, 1
  %468 = icmp slt i32 %466, 0
  %469 = icmp slt i32 %467, 0
  %470 = xor i1 %468, %469
  %471 = zext i32 %467 to i64
  store i64 %471, i64* %RDX.i226, align 8
  %.lobit8 = lshr i32 %466, 31
  %472 = trunc i32 %.lobit8 to i8
  store i8 %472, i8* %14, align 1
  %473 = and i32 %467, 254
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473)
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %478 = icmp eq i32 %467, 0
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %17, align 1
  %480 = lshr i32 %466, 30
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %18, align 1
  %483 = zext i1 %470 to i8
  store i8 %483, i8* %19, align 1
  %484 = sext i32 %467 to i64
  store i64 %484, i64* %RSI.i222, align 8
  %485 = shl nsw i64 %484, 3
  %486 = add i64 %464, %485
  %487 = add i64 %450, 43
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to i64*
  store i64 %463, i64* %488, align 8
  %489 = load i64, i64* %3, align 8
  %490 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %490, i64* %RAX.i260, align 8
  %491 = load i64, i64* %RBP.i, align 8
  %492 = add i64 %491, -8
  %493 = add i64 %489, 12
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = sext i32 %495 to i64
  store i64 %496, i64* %RCX.i236, align 8
  %497 = shl nsw i64 %496, 3
  %498 = add i64 %497, %490
  %499 = add i64 %489, 16
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %RAX.i260, align 8
  %502 = add i64 %501, 6536
  %503 = add i64 %489, 23
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i64*
  %505 = load i64, i64* %504, align 8
  store i64 %505, i64* %RAX.i260, align 8
  %506 = load i64, i64* bitcast (%G_0x722b38_type* @G_0x722b38 to i64*), align 8
  store i64 %506, i64* %RCX.i236, align 8
  %507 = add i64 %489, 34
  store i64 %507, i64* %3, align 8
  %508 = load i32, i32* %494, align 4
  %509 = shl i32 %508, 1
  %510 = or i32 %509, 1
  %511 = zext i32 %510 to i64
  store i64 %511, i64* %RDX.i226, align 8
  store i8 0, i8* %14, align 1
  %512 = and i32 %510, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %517 = lshr i32 %508, 30
  %518 = and i32 %517, 1
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %18, align 1
  %520 = lshr i32 %508, 30
  %521 = and i32 %520, 1
  %522 = xor i32 %518, %521
  %523 = add nuw nsw i32 %522, %518
  %524 = icmp eq i32 %523, 2
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %19, align 1
  %526 = sext i32 %510 to i64
  store i64 %526, i64* %RSI.i222, align 8
  %527 = shl nsw i64 %526, 3
  %528 = add i64 %506, %527
  %529 = add i64 %489, 46
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i64*
  store i64 %505, i64* %530, align 8
  %531 = load i64, i64* %3, align 8
  %532 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %532, i64* %RAX.i260, align 8
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -8
  %535 = add i64 %531, 12
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = sext i32 %537 to i64
  store i64 %538, i64* %RCX.i236, align 8
  %539 = shl nsw i64 %538, 3
  %540 = add i64 %539, %532
  %541 = add i64 %531, 16
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i64*
  %543 = load i64, i64* %542, align 8
  store i64 %543, i64* %RAX.i260, align 8
  %544 = add i64 %543, 6536
  %545 = add i64 %531, 23
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i64*
  %547 = load i64, i64* %546, align 8
  store i64 %547, i64* %RAX.i260, align 8
  %548 = load i64, i64* bitcast (%G_0x722b48_type* @G_0x722b48 to i64*), align 8
  store i64 %548, i64* %RCX.i236, align 8
  %549 = add i64 %531, 34
  store i64 %549, i64* %3, align 8
  %550 = load i32, i32* %536, align 4
  %551 = shl i32 %550, 1
  %552 = icmp slt i32 %550, 0
  %553 = icmp slt i32 %551, 0
  %554 = xor i1 %552, %553
  %555 = zext i32 %551 to i64
  store i64 %555, i64* %RDX.i226, align 8
  %.lobit10 = lshr i32 %550, 31
  %556 = trunc i32 %.lobit10 to i8
  store i8 %556, i8* %14, align 1
  %557 = and i32 %551, 254
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557)
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %562 = icmp eq i32 %551, 0
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %17, align 1
  %564 = lshr i32 %550, 30
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  store i8 %566, i8* %18, align 1
  %567 = zext i1 %554 to i8
  store i8 %567, i8* %19, align 1
  %568 = sext i32 %551 to i64
  store i64 %568, i64* %RSI.i222, align 8
  %569 = shl nsw i64 %568, 3
  %570 = add i64 %548, %569
  %571 = add i64 %531, 43
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i64*
  store i64 %547, i64* %572, align 8
  %573 = load i64, i64* %3, align 8
  %574 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %574, i64* %RAX.i260, align 8
  %575 = load i64, i64* %RBP.i, align 8
  %576 = add i64 %575, -8
  %577 = add i64 %573, 12
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = sext i32 %579 to i64
  store i64 %580, i64* %RCX.i236, align 8
  %581 = shl nsw i64 %580, 3
  %582 = add i64 %581, %574
  %583 = add i64 %573, 16
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i64*
  %585 = load i64, i64* %584, align 8
  store i64 %585, i64* %RAX.i260, align 8
  %586 = add i64 %585, 6528
  %587 = add i64 %573, 23
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i64*
  %589 = load i64, i64* %588, align 8
  store i64 %589, i64* %RAX.i260, align 8
  %590 = load i64, i64* bitcast (%G_0x722b48_type* @G_0x722b48 to i64*), align 8
  store i64 %590, i64* %RCX.i236, align 8
  %591 = add i64 %573, 34
  store i64 %591, i64* %3, align 8
  %592 = load i32, i32* %578, align 4
  %593 = shl i32 %592, 1
  %594 = or i32 %593, 1
  %595 = zext i32 %594 to i64
  store i64 %595, i64* %RDX.i226, align 8
  store i8 0, i8* %14, align 1
  %596 = and i32 %594, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %601 = lshr i32 %592, 30
  %602 = and i32 %601, 1
  %603 = trunc i32 %602 to i8
  store i8 %603, i8* %18, align 1
  %604 = lshr i32 %592, 30
  %605 = and i32 %604, 1
  %606 = xor i32 %602, %605
  %607 = add nuw nsw i32 %606, %602
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %19, align 1
  %610 = sext i32 %594 to i64
  store i64 %610, i64* %RSI.i222, align 8
  %611 = shl nsw i64 %610, 3
  %612 = add i64 %590, %611
  %613 = add i64 %573, 46
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i64*
  store i64 %589, i64* %614, align 8
  %615 = load i64, i64* %RBP.i, align 8
  %616 = add i64 %615, -8
  %617 = load i64, i64* %3, align 8
  %618 = add i64 %617, 3
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %616 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = add i32 %620, 1
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RAX.i260, align 8
  %623 = icmp eq i32 %620, -1
  %624 = icmp eq i32 %621, 0
  %625 = or i1 %623, %624
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %14, align 1
  %627 = and i32 %621, 255
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  store i8 %631, i8* %15, align 1
  %632 = xor i32 %621, %620
  %633 = lshr i32 %632, 4
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  store i8 %635, i8* %16, align 1
  %636 = zext i1 %624 to i8
  store i8 %636, i8* %17, align 1
  %637 = lshr i32 %621, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %18, align 1
  %639 = lshr i32 %620, 31
  %640 = xor i32 %637, %639
  %641 = add nuw nsw i32 %640, %637
  %642 = icmp eq i32 %641, 2
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %19, align 1
  %644 = add i64 %617, 9
  store i64 %644, i64* %3, align 8
  store i32 %621, i32* %619, align 4
  %645 = load i64, i64* %3, align 8
  %646 = add i64 %645, -207
  store i64 %646, i64* %3, align 8
  br label %block_.L_44de64

block_.L_44df38:                                  ; preds = %block_.L_44de64
  %647 = shl i32 %423, 1
  %648 = icmp slt i32 %423, 0
  %649 = icmp slt i32 %647, 0
  %650 = xor i1 %648, %649
  %651 = zext i32 %647 to i64
  store i64 %651, i64* %RAX.i260, align 8
  %652 = trunc i32 %442 to i8
  store i8 %652, i8* %14, align 1
  %653 = and i32 %647, 254
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %15, align 1
  store i8 0, i8* %16, align 1
  %658 = icmp eq i32 %647, 0
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %17, align 1
  %660 = lshr i32 %423, 30
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  store i8 %662, i8* %18, align 1
  %663 = zext i1 %650 to i8
  store i8 %663, i8* %19, align 1
  store i32 %647, i32* bitcast (%G_0x7247c4_type* @G_0x7247c4 to i32*), align 8
  store i32 %647, i32* bitcast (%G_0x7247bc_type* @G_0x7247bc to i32*), align 8
  %664 = add i64 %450, 24
  store i64 %664, i64* %3, align 8
  %665 = load i64, i64* %6, align 8
  %666 = add i64 %665, 8
  %667 = inttoptr i64 %665 to i64*
  %668 = load i64, i64* %667, align 8
  store i64 %668, i64* %RBP.i, align 8
  store i64 %666, i64* %6, align 8
  %669 = add i64 %450, 25
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %666 to i64*
  %671 = load i64, i64* %670, align 8
  store i64 %671, i64* %3, align 8
  %672 = add i64 %665, 16
  store i64 %672, i64* %6, align 8
  ret %struct.Memory* %2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -6
  %10 = icmp ult i32 %8, 6
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
define %struct.Memory* @routine_jge_.L_44dd6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x21__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -33
  %10 = icmp ult i32 %8, 33
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
define %struct.Memory* @routine_jae_.L_44dd4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movq_0x722b20___rax_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 3
  %5 = add i64 %4, 7482144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__0x0____rax__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  store i64 0, i64* %9, align 8
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
define %struct.Memory* @routine_jmpq_.L_44dd1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x7247b0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 7489456
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
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
define %struct.Memory* @routine_jmpq_.L_44dd0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_44de45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b20_type* @G_0x722b20 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movq_0x1980__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6528
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722b30___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b30_type* @G_0x722b30 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rax____rcx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1988__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0x722b40___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b40_type* @G_0x722b40 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44dd71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7247b0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7247b0_type* @G_0x7247b0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__0x7247c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x7247c0_type* @G_0x7247c0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x7247b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x7247b8_type* @G_0x7247b8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_44df38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b28_type* @G_0x722b28 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722b38___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b38_type* @G_0x722b38 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722b48___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722b48_type* @G_0x722b48 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44de64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7247b4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7247b4_type* @G_0x7247b4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x7247c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x7247c4_type* @G_0x7247c4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x7247bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x7247bc_type* @G_0x7247bc to i32*), align 8
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
