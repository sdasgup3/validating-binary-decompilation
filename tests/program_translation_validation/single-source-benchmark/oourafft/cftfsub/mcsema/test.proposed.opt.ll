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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_402890.cft1st(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_403320.cftmdl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @cftfsub(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -120
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 112
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
  %43 = add i64 %10, 10
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %RSI.i649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i649, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %RDX.i646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i646, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -44
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 7
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 2, i32* %61, align 4
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -4
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %63 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, -8
  %69 = icmp ult i32 %67, 8
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %14, align 1
  %71 = and i32 %68, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1
  %76 = xor i32 %68, %67
  %77 = lshr i32 %76, 4
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  store i8 %79, i8* %27, align 1
  %80 = icmp eq i32 %68, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %30, align 1
  %82 = lshr i32 %68, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %33, align 1
  %84 = lshr i32 %67, 31
  %85 = xor i32 %82, %84
  %86 = add nuw nsw i32 %85, %84
  %87 = icmp eq i32 %86, 2
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %39, align 1
  %89 = icmp ne i8 %83, 0
  %90 = xor i1 %89, %87
  %91 = or i1 %80, %90
  %.v15 = select i1 %91, i64 86, i64 10
  %92 = add i64 %64, %.v15
  store i64 %92, i64* %3, align 8
  br i1 %91, label %entry.block_.L_4018d0_crit_edge, label %block_401884

entry.block_.L_4018d0_crit_edge:                  ; preds = %entry
  %.pre12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  br label %block_.L_4018d0

block_401884:                                     ; preds = %entry
  %RDI.i638 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %93 = add i64 %92, 3
  store i64 %93, i64* %3, align 8
  %94 = load i32, i32* %66, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RDI.i638, align 8
  %96 = add i64 %62, -16
  %97 = add i64 %92, 7
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RSI.i649, align 8
  %100 = add i64 %62, -24
  %101 = add i64 %92, 11
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %RDX.i646, align 8
  %104 = add i64 %92, 4108
  %105 = add i64 %92, 16
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, -8
  %108 = inttoptr i64 %107 to i64*
  store i64 %105, i64* %108, align 8
  store i64 %107, i64* %6, align 8
  store i64 %104, i64* %3, align 8
  %call2_40188f = tail call %struct.Memory* @sub_402890.cft1st(%struct.State* nonnull %0, i64 %104, %struct.Memory* %2)
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -44
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 7
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i32*
  store i32 8, i32* %113, align 4
  %RAX.i626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40189b

block_.L_40189b:                                  ; preds = %block_4018aa, %block_401884
  %114 = phi i64 [ %.pre, %block_401884 ], [ %209, %block_4018aa ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_40188f, %block_401884 ], [ %call2_4018b8, %block_4018aa ]
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -44
  %117 = add i64 %114, 3
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 2
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RAX.i626, align 8
  %122 = lshr i32 %119, 30
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  store i8 %124, i8* %14, align 1
  %125 = and i32 %120, 252
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125)
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %130 = icmp eq i32 %120, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %30, align 1
  %132 = lshr i32 %119, 29
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %135 = add i64 %115, -4
  %136 = add i64 %114, 9
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = sub i32 %120, %138
  %140 = icmp ult i32 %120, %138
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %14, align 1
  %142 = and i32 %139, 255
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142)
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %21, align 1
  %147 = xor i32 %138, %120
  %148 = xor i32 %147, %139
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %27, align 1
  %152 = icmp eq i32 %139, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %30, align 1
  %154 = lshr i32 %139, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %33, align 1
  %156 = lshr i32 %119, 29
  %157 = and i32 %156, 1
  %158 = lshr i32 %138, 31
  %159 = xor i32 %158, %157
  %160 = xor i32 %154, %157
  %161 = add nuw nsw i32 %160, %159
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %39, align 1
  %164 = icmp ne i8 %155, 0
  %165 = xor i1 %164, %162
  %.v16 = select i1 %165, i64 15, i64 48
  %166 = add i64 %114, %.v16
  store i64 %166, i64* %3, align 8
  br i1 %165, label %block_4018aa, label %block_.L_4018cb

block_4018aa:                                     ; preds = %block_.L_40189b
  %167 = add i64 %166, 3
  store i64 %167, i64* %3, align 8
  %168 = load i32, i32* %137, align 4
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RDI.i638, align 8
  %170 = add i64 %166, 6
  store i64 %170, i64* %3, align 8
  %171 = load i32, i32* %118, align 4
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RSI.i649, align 8
  %173 = add i64 %115, -16
  %174 = add i64 %166, 10
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %RDX.i646, align 8
  %177 = add i64 %115, -24
  %178 = add i64 %166, 14
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i64*
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %RCX.i609, align 8
  %181 = add i64 %166, 6774
  %182 = add i64 %166, 19
  %183 = load i64, i64* %6, align 8
  %184 = add i64 %183, -8
  %185 = inttoptr i64 %184 to i64*
  store i64 %182, i64* %185, align 8
  store i64 %184, i64* %6, align 8
  store i64 %181, i64* %3, align 8
  %call2_4018b8 = tail call %struct.Memory* @sub_403320.cftmdl(%struct.State* nonnull %0, i64 %181, %struct.Memory* %MEMORY.0)
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -44
  %188 = load i64, i64* %3, align 8
  %189 = add i64 %188, 3
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %187 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %191, 2
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RSI.i649, align 8
  %194 = lshr i32 %191, 30
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  store i8 %196, i8* %14, align 1
  %197 = and i32 %192, 252
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197)
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %202 = icmp eq i32 %192, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %30, align 1
  %204 = lshr i32 %191, 29
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %207 = add i64 %188, 9
  store i64 %207, i64* %3, align 8
  store i32 %192, i32* %190, align 4
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, -43
  store i64 %209, i64* %3, align 8
  br label %block_.L_40189b

block_.L_4018cb:                                  ; preds = %block_.L_40189b
  %210 = add i64 %166, 5
  store i64 %210, i64* %3, align 8
  br label %block_.L_4018d0

block_.L_4018d0:                                  ; preds = %entry.block_.L_4018d0_crit_edge, %block_.L_4018cb
  %RCX.i152.pre-phi = phi i64* [ %.pre14, %entry.block_.L_4018d0_crit_edge ], [ %RCX.i609, %block_.L_4018cb ]
  %RAX.i597.pre-phi = phi i64* [ %.pre12, %entry.block_.L_4018d0_crit_edge ], [ %RAX.i626, %block_.L_4018cb ]
  %211 = phi i64 [ %92, %entry.block_.L_4018d0_crit_edge ], [ %210, %block_.L_4018cb ]
  %212 = phi i64 [ %62, %entry.block_.L_4018d0_crit_edge ], [ %115, %block_.L_4018cb ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %entry.block_.L_4018d0_crit_edge ], [ %MEMORY.0, %block_.L_4018cb ]
  %213 = add i64 %212, -44
  %214 = add i64 %211, 3
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = shl i32 %216, 2
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX.i597.pre-phi, align 8
  %219 = lshr i32 %216, 30
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  store i8 %221, i8* %14, align 1
  %222 = and i32 %217, 252
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %227 = icmp eq i32 %217, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %30, align 1
  %229 = lshr i32 %216, 29
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %232 = add i64 %212, -4
  %233 = add i64 %211, 9
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = sub i32 %217, %235
  %237 = icmp ult i32 %217, %235
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %14, align 1
  %239 = and i32 %236, 255
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %21, align 1
  %244 = xor i32 %235, %217
  %245 = xor i32 %244, %236
  %246 = lshr i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %27, align 1
  %249 = icmp eq i32 %236, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %30, align 1
  %251 = lshr i32 %236, 31
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %33, align 1
  %253 = lshr i32 %216, 29
  %254 = and i32 %253, 1
  %255 = lshr i32 %235, 31
  %256 = xor i32 %255, %254
  %257 = xor i32 %251, %254
  %258 = add nuw nsw i32 %257, %256
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %39, align 1
  %.v = select i1 %249, i64 15, i64 572
  %261 = add i64 %211, %.v
  %262 = add i64 %212, -28
  %263 = add i64 %261, 7
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  store i32 0, i32* %264, align 4
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %266 = bitcast %union.VectorReg* %265 to double*
  %267 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %265, i64 0, i32 0, i32 0, i32 0, i64 0
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %269 = bitcast i64* %268 to double*
  %.pre9 = load i64, i64* %3, align 8
  br i1 %249, label %block_.L_4018e6.preheader, label %block_.L_401b13.preheader

block_.L_401b13.preheader:                        ; preds = %block_.L_4018d0
  br label %block_.L_401b13

block_.L_4018e6.preheader:                        ; preds = %block_.L_4018d0
  br label %block_.L_4018e6

block_.L_4018e6:                                  ; preds = %block_.L_4018e6.preheader, %block_4018f2
  %270 = phi i64 [ %1199, %block_4018f2 ], [ %.pre9, %block_.L_4018e6.preheader ]
  %271 = load i64, i64* %RBP.i, align 8
  %272 = add i64 %271, -28
  %273 = add i64 %270, 3
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RAX.i597.pre-phi, align 8
  %277 = add i64 %271, -44
  %278 = add i64 %270, 6
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = sub i32 %275, %280
  %282 = icmp ult i32 %275, %280
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %14, align 1
  %284 = and i32 %281, 255
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284)
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  store i8 %288, i8* %21, align 1
  %289 = xor i32 %280, %275
  %290 = xor i32 %289, %281
  %291 = lshr i32 %290, 4
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  store i8 %293, i8* %27, align 1
  %294 = icmp eq i32 %281, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %30, align 1
  %296 = lshr i32 %281, 31
  %297 = trunc i32 %296 to i8
  store i8 %297, i8* %33, align 1
  %298 = lshr i32 %275, 31
  %299 = lshr i32 %280, 31
  %300 = xor i32 %299, %298
  %301 = xor i32 %296, %298
  %302 = add nuw nsw i32 %301, %300
  %303 = icmp eq i32 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %39, align 1
  %305 = icmp ne i8 %297, 0
  %306 = xor i1 %305, %303
  %.v18 = select i1 %306, i64 12, i64 545
  %307 = add i64 %270, %.v18
  store i64 %307, i64* %3, align 8
  br i1 %306, label %block_4018f2, label %block_.L_401b07

block_4018f2:                                     ; preds = %block_.L_4018e6
  %308 = add i64 %307, 3
  store i64 %308, i64* %3, align 8
  %309 = load i32, i32* %274, align 4
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %RAX.i597.pre-phi, align 8
  %311 = add i64 %307, 6
  store i64 %311, i64* %3, align 8
  %312 = load i32, i32* %279, align 4
  %313 = add i32 %312, %309
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RAX.i597.pre-phi, align 8
  %315 = icmp ult i32 %313, %309
  %316 = icmp ult i32 %313, %312
  %317 = or i1 %315, %316
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %14, align 1
  %319 = and i32 %313, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %21, align 1
  %324 = xor i32 %312, %309
  %325 = xor i32 %324, %313
  %326 = lshr i32 %325, 4
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %27, align 1
  %329 = icmp eq i32 %313, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %30, align 1
  %331 = lshr i32 %313, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %33, align 1
  %333 = lshr i32 %309, 31
  %334 = lshr i32 %312, 31
  %335 = xor i32 %331, %333
  %336 = xor i32 %331, %334
  %337 = add nuw nsw i32 %335, %336
  %338 = icmp eq i32 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %39, align 1
  %340 = add i64 %271, -32
  %341 = add i64 %307, 9
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i32*
  store i32 %313, i32* %342, align 4
  %343 = load i64, i64* %RBP.i, align 8
  %344 = add i64 %343, -32
  %345 = load i64, i64* %3, align 8
  %346 = add i64 %345, 3
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %344 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RAX.i597.pre-phi, align 8
  %350 = add i64 %343, -44
  %351 = add i64 %345, 6
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = add i32 %353, %348
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RAX.i597.pre-phi, align 8
  %356 = icmp ult i32 %354, %348
  %357 = icmp ult i32 %354, %353
  %358 = or i1 %356, %357
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %14, align 1
  %360 = and i32 %354, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %21, align 1
  %365 = xor i32 %353, %348
  %366 = xor i32 %365, %354
  %367 = lshr i32 %366, 4
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  store i8 %369, i8* %27, align 1
  %370 = icmp eq i32 %354, 0
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %30, align 1
  %372 = lshr i32 %354, 31
  %373 = trunc i32 %372 to i8
  store i8 %373, i8* %33, align 1
  %374 = lshr i32 %348, 31
  %375 = lshr i32 %353, 31
  %376 = xor i32 %372, %374
  %377 = xor i32 %372, %375
  %378 = add nuw nsw i32 %376, %377
  %379 = icmp eq i32 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %39, align 1
  %381 = add i64 %343, -36
  %382 = add i64 %345, 9
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i32*
  store i32 %354, i32* %383, align 4
  %384 = load i64, i64* %RBP.i, align 8
  %385 = add i64 %384, -36
  %386 = load i64, i64* %3, align 8
  %387 = add i64 %386, 3
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %385 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RAX.i597.pre-phi, align 8
  %391 = add i64 %384, -44
  %392 = add i64 %386, 6
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = add i32 %394, %389
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RAX.i597.pre-phi, align 8
  %397 = icmp ult i32 %395, %389
  %398 = icmp ult i32 %395, %394
  %399 = or i1 %397, %398
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %14, align 1
  %401 = and i32 %395, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %21, align 1
  %406 = xor i32 %394, %389
  %407 = xor i32 %406, %395
  %408 = lshr i32 %407, 4
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  store i8 %410, i8* %27, align 1
  %411 = icmp eq i32 %395, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %30, align 1
  %413 = lshr i32 %395, 31
  %414 = trunc i32 %413 to i8
  store i8 %414, i8* %33, align 1
  %415 = lshr i32 %389, 31
  %416 = lshr i32 %394, 31
  %417 = xor i32 %413, %415
  %418 = xor i32 %413, %416
  %419 = add nuw nsw i32 %417, %418
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %39, align 1
  %422 = add i64 %384, -40
  %423 = add i64 %386, 9
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  store i32 %395, i32* %424, align 4
  %425 = load i64, i64* %RBP.i, align 8
  %426 = add i64 %425, -16
  %427 = load i64, i64* %3, align 8
  %428 = add i64 %427, 4
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %426 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %RCX.i152.pre-phi, align 8
  %431 = add i64 %425, -28
  %432 = add i64 %427, 8
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = sext i32 %434 to i64
  store i64 %435, i64* %RDX.i646, align 8
  %436 = shl nsw i64 %435, 3
  %437 = add i64 %436, %430
  %438 = add i64 %427, 13
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i64*
  %440 = load i64, i64* %439, align 8
  store i64 %440, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %441 = add i64 %427, 17
  store i64 %441, i64* %3, align 8
  %442 = load i64, i64* %429, align 8
  store i64 %442, i64* %RCX.i152.pre-phi, align 8
  %443 = add i64 %425, -32
  %444 = add i64 %427, 21
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  %447 = sext i32 %446 to i64
  store i64 %447, i64* %RDX.i646, align 8
  %448 = shl nsw i64 %447, 3
  %449 = add i64 %448, %442
  %450 = add i64 %427, 26
  store i64 %450, i64* %3, align 8
  %451 = bitcast i64 %440 to double
  %452 = inttoptr i64 %449 to double*
  %453 = load double, double* %452, align 8
  %454 = fadd double %451, %453
  store double %454, double* %266, align 1
  store i64 0, i64* %268, align 1
  %455 = add i64 %425, -56
  %456 = add i64 %427, 31
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to double*
  store double %454, double* %457, align 8
  %458 = load i64, i64* %RBP.i, align 8
  %459 = add i64 %458, -16
  %460 = load i64, i64* %3, align 8
  %461 = add i64 %460, 4
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %459 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RCX.i152.pre-phi, align 8
  %464 = add i64 %458, -28
  %465 = add i64 %460, 7
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = add i32 %467, 1
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RAX.i597.pre-phi, align 8
  %470 = icmp eq i32 %467, -1
  %471 = icmp eq i32 %468, 0
  %472 = or i1 %470, %471
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %14, align 1
  %474 = and i32 %468, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %21, align 1
  %479 = xor i32 %468, %467
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %27, align 1
  %483 = zext i1 %471 to i8
  store i8 %483, i8* %30, align 1
  %484 = lshr i32 %468, 31
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* %33, align 1
  %486 = lshr i32 %467, 31
  %487 = xor i32 %484, %486
  %488 = add nuw nsw i32 %487, %484
  %489 = icmp eq i32 %488, 2
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %39, align 1
  %491 = sext i32 %468 to i64
  store i64 %491, i64* %RDX.i646, align 8
  %492 = shl nsw i64 %491, 3
  %493 = add i64 %463, %492
  %494 = add i64 %460, 18
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %497 = add i64 %460, 22
  store i64 %497, i64* %3, align 8
  %498 = load i64, i64* %462, align 8
  store i64 %498, i64* %RCX.i152.pre-phi, align 8
  %499 = add i64 %458, -32
  %500 = add i64 %460, 25
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  %502 = load i32, i32* %501, align 4
  %503 = add i32 %502, 1
  %504 = zext i32 %503 to i64
  store i64 %504, i64* %RAX.i597.pre-phi, align 8
  %505 = icmp eq i32 %502, -1
  %506 = icmp eq i32 %503, 0
  %507 = or i1 %505, %506
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %14, align 1
  %509 = and i32 %503, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %21, align 1
  %514 = xor i32 %503, %502
  %515 = lshr i32 %514, 4
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  store i8 %517, i8* %27, align 1
  %518 = zext i1 %506 to i8
  store i8 %518, i8* %30, align 1
  %519 = lshr i32 %503, 31
  %520 = trunc i32 %519 to i8
  store i8 %520, i8* %33, align 1
  %521 = lshr i32 %502, 31
  %522 = xor i32 %519, %521
  %523 = add nuw nsw i32 %522, %519
  %524 = icmp eq i32 %523, 2
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %39, align 1
  %526 = sext i32 %503 to i64
  store i64 %526, i64* %RDX.i646, align 8
  %527 = shl nsw i64 %526, 3
  %528 = add i64 %498, %527
  %529 = add i64 %460, 36
  store i64 %529, i64* %3, align 8
  %530 = bitcast i64 %496 to double
  %531 = inttoptr i64 %528 to double*
  %532 = load double, double* %531, align 8
  %533 = fadd double %530, %532
  store double %533, double* %266, align 1
  store i64 0, i64* %268, align 1
  %534 = load i64, i64* %RBP.i, align 8
  %535 = add i64 %534, -64
  %536 = add i64 %460, 41
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %535 to double*
  store double %533, double* %537, align 8
  %538 = load i64, i64* %RBP.i, align 8
  %539 = add i64 %538, -16
  %540 = load i64, i64* %3, align 8
  %541 = add i64 %540, 4
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %539 to i64*
  %543 = load i64, i64* %542, align 8
  store i64 %543, i64* %RCX.i152.pre-phi, align 8
  %544 = add i64 %538, -28
  %545 = add i64 %540, 8
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = sext i32 %547 to i64
  store i64 %548, i64* %RDX.i646, align 8
  %549 = shl nsw i64 %548, 3
  %550 = add i64 %549, %543
  %551 = add i64 %540, 13
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i64*
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %554 = add i64 %540, 17
  store i64 %554, i64* %3, align 8
  %555 = load i64, i64* %542, align 8
  store i64 %555, i64* %RCX.i152.pre-phi, align 8
  %556 = add i64 %538, -32
  %557 = add i64 %540, 21
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = sext i32 %559 to i64
  store i64 %560, i64* %RDX.i646, align 8
  %561 = shl nsw i64 %560, 3
  %562 = add i64 %561, %555
  %563 = add i64 %540, 26
  store i64 %563, i64* %3, align 8
  %564 = bitcast i64 %553 to double
  %565 = inttoptr i64 %562 to double*
  %566 = load double, double* %565, align 8
  %567 = fsub double %564, %566
  store double %567, double* %266, align 1
  store i64 0, i64* %268, align 1
  %568 = add i64 %538, -72
  %569 = add i64 %540, 31
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to double*
  store double %567, double* %570, align 8
  %571 = load i64, i64* %RBP.i, align 8
  %572 = add i64 %571, -16
  %573 = load i64, i64* %3, align 8
  %574 = add i64 %573, 4
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %572 to i64*
  %576 = load i64, i64* %575, align 8
  store i64 %576, i64* %RCX.i152.pre-phi, align 8
  %577 = add i64 %571, -28
  %578 = add i64 %573, 7
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = add i32 %580, 1
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RAX.i597.pre-phi, align 8
  %583 = icmp eq i32 %580, -1
  %584 = icmp eq i32 %581, 0
  %585 = or i1 %583, %584
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %14, align 1
  %587 = and i32 %581, 255
  %588 = tail call i32 @llvm.ctpop.i32(i32 %587)
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  store i8 %591, i8* %21, align 1
  %592 = xor i32 %581, %580
  %593 = lshr i32 %592, 4
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  store i8 %595, i8* %27, align 1
  %596 = zext i1 %584 to i8
  store i8 %596, i8* %30, align 1
  %597 = lshr i32 %581, 31
  %598 = trunc i32 %597 to i8
  store i8 %598, i8* %33, align 1
  %599 = lshr i32 %580, 31
  %600 = xor i32 %597, %599
  %601 = add nuw nsw i32 %600, %597
  %602 = icmp eq i32 %601, 2
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %39, align 1
  %604 = sext i32 %581 to i64
  store i64 %604, i64* %RDX.i646, align 8
  %605 = shl nsw i64 %604, 3
  %606 = add i64 %576, %605
  %607 = add i64 %573, 18
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i64*
  %609 = load i64, i64* %608, align 8
  store i64 %609, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %610 = add i64 %573, 22
  store i64 %610, i64* %3, align 8
  %611 = load i64, i64* %575, align 8
  store i64 %611, i64* %RCX.i152.pre-phi, align 8
  %612 = add i64 %571, -32
  %613 = add i64 %573, 25
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = add i32 %615, 1
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RAX.i597.pre-phi, align 8
  %618 = icmp eq i32 %615, -1
  %619 = icmp eq i32 %616, 0
  %620 = or i1 %618, %619
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %14, align 1
  %622 = and i32 %616, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622)
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %21, align 1
  %627 = xor i32 %616, %615
  %628 = lshr i32 %627, 4
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %27, align 1
  %631 = zext i1 %619 to i8
  store i8 %631, i8* %30, align 1
  %632 = lshr i32 %616, 31
  %633 = trunc i32 %632 to i8
  store i8 %633, i8* %33, align 1
  %634 = lshr i32 %615, 31
  %635 = xor i32 %632, %634
  %636 = add nuw nsw i32 %635, %632
  %637 = icmp eq i32 %636, 2
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %39, align 1
  %639 = sext i32 %616 to i64
  store i64 %639, i64* %RDX.i646, align 8
  %640 = shl nsw i64 %639, 3
  %641 = add i64 %611, %640
  %642 = add i64 %573, 36
  store i64 %642, i64* %3, align 8
  %643 = bitcast i64 %609 to double
  %644 = inttoptr i64 %641 to double*
  %645 = load double, double* %644, align 8
  %646 = fsub double %643, %645
  store double %646, double* %266, align 1
  store i64 0, i64* %268, align 1
  %647 = load i64, i64* %RBP.i, align 8
  %648 = add i64 %647, -80
  %649 = add i64 %573, 41
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to double*
  store double %646, double* %650, align 8
  %651 = load i64, i64* %RBP.i, align 8
  %652 = add i64 %651, -16
  %653 = load i64, i64* %3, align 8
  %654 = add i64 %653, 4
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %652 to i64*
  %656 = load i64, i64* %655, align 8
  store i64 %656, i64* %RCX.i152.pre-phi, align 8
  %657 = add i64 %651, -36
  %658 = add i64 %653, 8
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = sext i32 %660 to i64
  store i64 %661, i64* %RDX.i646, align 8
  %662 = shl nsw i64 %661, 3
  %663 = add i64 %662, %656
  %664 = add i64 %653, 13
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i64*
  %666 = load i64, i64* %665, align 8
  store i64 %666, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %667 = add i64 %653, 17
  store i64 %667, i64* %3, align 8
  %668 = load i64, i64* %655, align 8
  store i64 %668, i64* %RCX.i152.pre-phi, align 8
  %669 = add i64 %651, -40
  %670 = add i64 %653, 21
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i32*
  %672 = load i32, i32* %671, align 4
  %673 = sext i32 %672 to i64
  store i64 %673, i64* %RDX.i646, align 8
  %674 = shl nsw i64 %673, 3
  %675 = add i64 %674, %668
  %676 = add i64 %653, 26
  store i64 %676, i64* %3, align 8
  %677 = bitcast i64 %666 to double
  %678 = inttoptr i64 %675 to double*
  %679 = load double, double* %678, align 8
  %680 = fadd double %677, %679
  store double %680, double* %266, align 1
  store i64 0, i64* %268, align 1
  %681 = add i64 %651, -88
  %682 = add i64 %653, 31
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to double*
  store double %680, double* %683, align 8
  %684 = load i64, i64* %RBP.i, align 8
  %685 = add i64 %684, -16
  %686 = load i64, i64* %3, align 8
  %687 = add i64 %686, 4
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %685 to i64*
  %689 = load i64, i64* %688, align 8
  store i64 %689, i64* %RCX.i152.pre-phi, align 8
  %690 = add i64 %684, -36
  %691 = add i64 %686, 7
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = add i32 %693, 1
  %695 = zext i32 %694 to i64
  store i64 %695, i64* %RAX.i597.pre-phi, align 8
  %696 = icmp eq i32 %693, -1
  %697 = icmp eq i32 %694, 0
  %698 = or i1 %696, %697
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %14, align 1
  %700 = and i32 %694, 255
  %701 = tail call i32 @llvm.ctpop.i32(i32 %700)
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  store i8 %704, i8* %21, align 1
  %705 = xor i32 %694, %693
  %706 = lshr i32 %705, 4
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %27, align 1
  %709 = zext i1 %697 to i8
  store i8 %709, i8* %30, align 1
  %710 = lshr i32 %694, 31
  %711 = trunc i32 %710 to i8
  store i8 %711, i8* %33, align 1
  %712 = lshr i32 %693, 31
  %713 = xor i32 %710, %712
  %714 = add nuw nsw i32 %713, %710
  %715 = icmp eq i32 %714, 2
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %39, align 1
  %717 = sext i32 %694 to i64
  store i64 %717, i64* %RDX.i646, align 8
  %718 = shl nsw i64 %717, 3
  %719 = add i64 %689, %718
  %720 = add i64 %686, 18
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i64*
  %722 = load i64, i64* %721, align 8
  store i64 %722, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %723 = add i64 %686, 22
  store i64 %723, i64* %3, align 8
  %724 = load i64, i64* %688, align 8
  store i64 %724, i64* %RCX.i152.pre-phi, align 8
  %725 = add i64 %684, -40
  %726 = add i64 %686, 25
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = add i32 %728, 1
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RAX.i597.pre-phi, align 8
  %731 = icmp eq i32 %728, -1
  %732 = icmp eq i32 %729, 0
  %733 = or i1 %731, %732
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %14, align 1
  %735 = and i32 %729, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735)
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %21, align 1
  %740 = xor i32 %729, %728
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  store i8 %743, i8* %27, align 1
  %744 = zext i1 %732 to i8
  store i8 %744, i8* %30, align 1
  %745 = lshr i32 %729, 31
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %33, align 1
  %747 = lshr i32 %728, 31
  %748 = xor i32 %745, %747
  %749 = add nuw nsw i32 %748, %745
  %750 = icmp eq i32 %749, 2
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %39, align 1
  %752 = sext i32 %729 to i64
  store i64 %752, i64* %RDX.i646, align 8
  %753 = shl nsw i64 %752, 3
  %754 = add i64 %724, %753
  %755 = add i64 %686, 36
  store i64 %755, i64* %3, align 8
  %756 = bitcast i64 %722 to double
  %757 = inttoptr i64 %754 to double*
  %758 = load double, double* %757, align 8
  %759 = fadd double %756, %758
  store double %759, double* %266, align 1
  store i64 0, i64* %268, align 1
  %760 = load i64, i64* %RBP.i, align 8
  %761 = add i64 %760, -96
  %762 = add i64 %686, 41
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to double*
  store double %759, double* %763, align 8
  %764 = load i64, i64* %RBP.i, align 8
  %765 = add i64 %764, -16
  %766 = load i64, i64* %3, align 8
  %767 = add i64 %766, 4
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %765 to i64*
  %769 = load i64, i64* %768, align 8
  store i64 %769, i64* %RCX.i152.pre-phi, align 8
  %770 = add i64 %764, -36
  %771 = add i64 %766, 8
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = sext i32 %773 to i64
  store i64 %774, i64* %RDX.i646, align 8
  %775 = shl nsw i64 %774, 3
  %776 = add i64 %775, %769
  %777 = add i64 %766, 13
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i64*
  %779 = load i64, i64* %778, align 8
  store i64 %779, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %780 = add i64 %766, 17
  store i64 %780, i64* %3, align 8
  %781 = load i64, i64* %768, align 8
  store i64 %781, i64* %RCX.i152.pre-phi, align 8
  %782 = add i64 %764, -40
  %783 = add i64 %766, 21
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  %785 = load i32, i32* %784, align 4
  %786 = sext i32 %785 to i64
  store i64 %786, i64* %RDX.i646, align 8
  %787 = shl nsw i64 %786, 3
  %788 = add i64 %787, %781
  %789 = add i64 %766, 26
  store i64 %789, i64* %3, align 8
  %790 = bitcast i64 %779 to double
  %791 = inttoptr i64 %788 to double*
  %792 = load double, double* %791, align 8
  %793 = fsub double %790, %792
  store double %793, double* %266, align 1
  store i64 0, i64* %268, align 1
  %794 = add i64 %764, -104
  %795 = add i64 %766, 31
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to double*
  store double %793, double* %796, align 8
  %797 = load i64, i64* %RBP.i, align 8
  %798 = add i64 %797, -16
  %799 = load i64, i64* %3, align 8
  %800 = add i64 %799, 4
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %798 to i64*
  %802 = load i64, i64* %801, align 8
  store i64 %802, i64* %RCX.i152.pre-phi, align 8
  %803 = add i64 %797, -36
  %804 = add i64 %799, 7
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = add i32 %806, 1
  %808 = zext i32 %807 to i64
  store i64 %808, i64* %RAX.i597.pre-phi, align 8
  %809 = icmp eq i32 %806, -1
  %810 = icmp eq i32 %807, 0
  %811 = or i1 %809, %810
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %14, align 1
  %813 = and i32 %807, 255
  %814 = tail call i32 @llvm.ctpop.i32(i32 %813)
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  store i8 %817, i8* %21, align 1
  %818 = xor i32 %807, %806
  %819 = lshr i32 %818, 4
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  store i8 %821, i8* %27, align 1
  %822 = zext i1 %810 to i8
  store i8 %822, i8* %30, align 1
  %823 = lshr i32 %807, 31
  %824 = trunc i32 %823 to i8
  store i8 %824, i8* %33, align 1
  %825 = lshr i32 %806, 31
  %826 = xor i32 %823, %825
  %827 = add nuw nsw i32 %826, %823
  %828 = icmp eq i32 %827, 2
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %39, align 1
  %830 = sext i32 %807 to i64
  store i64 %830, i64* %RDX.i646, align 8
  %831 = shl nsw i64 %830, 3
  %832 = add i64 %802, %831
  %833 = add i64 %799, 18
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i64*
  %835 = load i64, i64* %834, align 8
  store i64 %835, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %836 = add i64 %799, 22
  store i64 %836, i64* %3, align 8
  %837 = load i64, i64* %801, align 8
  store i64 %837, i64* %RCX.i152.pre-phi, align 8
  %838 = add i64 %797, -40
  %839 = add i64 %799, 25
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = add i32 %841, 1
  %843 = zext i32 %842 to i64
  store i64 %843, i64* %RAX.i597.pre-phi, align 8
  %844 = icmp eq i32 %841, -1
  %845 = icmp eq i32 %842, 0
  %846 = or i1 %844, %845
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %14, align 1
  %848 = and i32 %842, 255
  %849 = tail call i32 @llvm.ctpop.i32(i32 %848)
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  %852 = xor i8 %851, 1
  store i8 %852, i8* %21, align 1
  %853 = xor i32 %842, %841
  %854 = lshr i32 %853, 4
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  store i8 %856, i8* %27, align 1
  %857 = zext i1 %845 to i8
  store i8 %857, i8* %30, align 1
  %858 = lshr i32 %842, 31
  %859 = trunc i32 %858 to i8
  store i8 %859, i8* %33, align 1
  %860 = lshr i32 %841, 31
  %861 = xor i32 %858, %860
  %862 = add nuw nsw i32 %861, %858
  %863 = icmp eq i32 %862, 2
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %39, align 1
  %865 = sext i32 %842 to i64
  store i64 %865, i64* %RDX.i646, align 8
  %866 = shl nsw i64 %865, 3
  %867 = add i64 %837, %866
  %868 = add i64 %799, 36
  store i64 %868, i64* %3, align 8
  %869 = bitcast i64 %835 to double
  %870 = inttoptr i64 %867 to double*
  %871 = load double, double* %870, align 8
  %872 = fsub double %869, %871
  store double %872, double* %266, align 1
  store i64 0, i64* %268, align 1
  %873 = load i64, i64* %RBP.i, align 8
  %874 = add i64 %873, -112
  %875 = add i64 %799, 41
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to double*
  store double %872, double* %876, align 8
  %877 = load i64, i64* %RBP.i, align 8
  %878 = add i64 %877, -56
  %879 = load i64, i64* %3, align 8
  %880 = add i64 %879, 5
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %878 to i64*
  %882 = load i64, i64* %881, align 8
  store i64 %882, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %883 = add i64 %877, -88
  %884 = add i64 %879, 10
  store i64 %884, i64* %3, align 8
  %885 = bitcast i64 %882 to double
  %886 = inttoptr i64 %883 to double*
  %887 = load double, double* %886, align 8
  %888 = fadd double %885, %887
  store double %888, double* %266, align 1
  store i64 0, i64* %268, align 1
  %889 = add i64 %877, -16
  %890 = add i64 %879, 14
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i64*
  %892 = load i64, i64* %891, align 8
  store i64 %892, i64* %RCX.i152.pre-phi, align 8
  %893 = add i64 %877, -28
  %894 = add i64 %879, 18
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i32*
  %896 = load i32, i32* %895, align 4
  %897 = sext i32 %896 to i64
  store i64 %897, i64* %RDX.i646, align 8
  %898 = shl nsw i64 %897, 3
  %899 = add i64 %898, %892
  %900 = add i64 %879, 23
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to double*
  store double %888, double* %901, align 8
  %902 = load i64, i64* %RBP.i, align 8
  %903 = add i64 %902, -64
  %904 = load i64, i64* %3, align 8
  %905 = add i64 %904, 5
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %903 to i64*
  %907 = load i64, i64* %906, align 8
  store i64 %907, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %908 = add i64 %902, -96
  %909 = add i64 %904, 10
  store i64 %909, i64* %3, align 8
  %910 = bitcast i64 %907 to double
  %911 = inttoptr i64 %908 to double*
  %912 = load double, double* %911, align 8
  %913 = fadd double %910, %912
  store double %913, double* %266, align 1
  store i64 0, i64* %268, align 1
  %914 = add i64 %902, -16
  %915 = add i64 %904, 14
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i64*
  %917 = load i64, i64* %916, align 8
  store i64 %917, i64* %RCX.i152.pre-phi, align 8
  %918 = add i64 %902, -28
  %919 = add i64 %904, 17
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %918 to i32*
  %921 = load i32, i32* %920, align 4
  %922 = add i32 %921, 1
  %923 = zext i32 %922 to i64
  store i64 %923, i64* %RAX.i597.pre-phi, align 8
  %924 = icmp eq i32 %921, -1
  %925 = icmp eq i32 %922, 0
  %926 = or i1 %924, %925
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %14, align 1
  %928 = and i32 %922, 255
  %929 = tail call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, i8* %21, align 1
  %933 = xor i32 %922, %921
  %934 = lshr i32 %933, 4
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  store i8 %936, i8* %27, align 1
  %937 = zext i1 %925 to i8
  store i8 %937, i8* %30, align 1
  %938 = lshr i32 %922, 31
  %939 = trunc i32 %938 to i8
  store i8 %939, i8* %33, align 1
  %940 = lshr i32 %921, 31
  %941 = xor i32 %938, %940
  %942 = add nuw nsw i32 %941, %938
  %943 = icmp eq i32 %942, 2
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %39, align 1
  %945 = sext i32 %922 to i64
  store i64 %945, i64* %RDX.i646, align 8
  %946 = shl nsw i64 %945, 3
  %947 = add i64 %917, %946
  %948 = add i64 %904, 28
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to double*
  store double %913, double* %949, align 8
  %950 = load i64, i64* %RBP.i, align 8
  %951 = add i64 %950, -56
  %952 = load i64, i64* %3, align 8
  %953 = add i64 %952, 5
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %951 to i64*
  %955 = load i64, i64* %954, align 8
  store i64 %955, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %956 = add i64 %950, -88
  %957 = add i64 %952, 10
  store i64 %957, i64* %3, align 8
  %958 = bitcast i64 %955 to double
  %959 = inttoptr i64 %956 to double*
  %960 = load double, double* %959, align 8
  %961 = fsub double %958, %960
  store double %961, double* %266, align 1
  store i64 0, i64* %268, align 1
  %962 = add i64 %950, -16
  %963 = add i64 %952, 14
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i64*
  %965 = load i64, i64* %964, align 8
  store i64 %965, i64* %RCX.i152.pre-phi, align 8
  %966 = add i64 %950, -36
  %967 = add i64 %952, 18
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %966 to i32*
  %969 = load i32, i32* %968, align 4
  %970 = sext i32 %969 to i64
  store i64 %970, i64* %RDX.i646, align 8
  %971 = shl nsw i64 %970, 3
  %972 = add i64 %971, %965
  %973 = add i64 %952, 23
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to double*
  store double %961, double* %974, align 8
  %975 = load i64, i64* %RBP.i, align 8
  %976 = add i64 %975, -64
  %977 = load i64, i64* %3, align 8
  %978 = add i64 %977, 5
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %976 to i64*
  %980 = load i64, i64* %979, align 8
  store i64 %980, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %981 = add i64 %975, -96
  %982 = add i64 %977, 10
  store i64 %982, i64* %3, align 8
  %983 = bitcast i64 %980 to double
  %984 = inttoptr i64 %981 to double*
  %985 = load double, double* %984, align 8
  %986 = fsub double %983, %985
  store double %986, double* %266, align 1
  store i64 0, i64* %268, align 1
  %987 = add i64 %975, -16
  %988 = add i64 %977, 14
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i64*
  %990 = load i64, i64* %989, align 8
  store i64 %990, i64* %RCX.i152.pre-phi, align 8
  %991 = add i64 %975, -36
  %992 = add i64 %977, 17
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = add i32 %994, 1
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RAX.i597.pre-phi, align 8
  %997 = icmp eq i32 %994, -1
  %998 = icmp eq i32 %995, 0
  %999 = or i1 %997, %998
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %14, align 1
  %1001 = and i32 %995, 255
  %1002 = tail call i32 @llvm.ctpop.i32(i32 %1001)
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  store i8 %1005, i8* %21, align 1
  %1006 = xor i32 %995, %994
  %1007 = lshr i32 %1006, 4
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  store i8 %1009, i8* %27, align 1
  %1010 = zext i1 %998 to i8
  store i8 %1010, i8* %30, align 1
  %1011 = lshr i32 %995, 31
  %1012 = trunc i32 %1011 to i8
  store i8 %1012, i8* %33, align 1
  %1013 = lshr i32 %994, 31
  %1014 = xor i32 %1011, %1013
  %1015 = add nuw nsw i32 %1014, %1011
  %1016 = icmp eq i32 %1015, 2
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %39, align 1
  %1018 = sext i32 %995 to i64
  store i64 %1018, i64* %RDX.i646, align 8
  %1019 = shl nsw i64 %1018, 3
  %1020 = add i64 %990, %1019
  %1021 = add i64 %977, 28
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to double*
  store double %986, double* %1022, align 8
  %1023 = load i64, i64* %RBP.i, align 8
  %1024 = add i64 %1023, -72
  %1025 = load i64, i64* %3, align 8
  %1026 = add i64 %1025, 5
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1024 to i64*
  %1028 = load i64, i64* %1027, align 8
  store i64 %1028, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1029 = add i64 %1023, -112
  %1030 = add i64 %1025, 10
  store i64 %1030, i64* %3, align 8
  %1031 = bitcast i64 %1028 to double
  %1032 = inttoptr i64 %1029 to double*
  %1033 = load double, double* %1032, align 8
  %1034 = fsub double %1031, %1033
  store double %1034, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1035 = add i64 %1023, -16
  %1036 = add i64 %1025, 14
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i64*
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %RCX.i152.pre-phi, align 8
  %1039 = add i64 %1023, -32
  %1040 = add i64 %1025, 18
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = sext i32 %1042 to i64
  store i64 %1043, i64* %RDX.i646, align 8
  %1044 = shl nsw i64 %1043, 3
  %1045 = add i64 %1044, %1038
  %1046 = add i64 %1025, 23
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to double*
  store double %1034, double* %1047, align 8
  %1048 = load i64, i64* %RBP.i, align 8
  %1049 = add i64 %1048, -80
  %1050 = load i64, i64* %3, align 8
  %1051 = add i64 %1050, 5
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1049 to i64*
  %1053 = load i64, i64* %1052, align 8
  store i64 %1053, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1054 = add i64 %1048, -104
  %1055 = add i64 %1050, 10
  store i64 %1055, i64* %3, align 8
  %1056 = bitcast i64 %1053 to double
  %1057 = inttoptr i64 %1054 to double*
  %1058 = load double, double* %1057, align 8
  %1059 = fadd double %1056, %1058
  store double %1059, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1060 = add i64 %1048, -16
  %1061 = add i64 %1050, 14
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i64*
  %1063 = load i64, i64* %1062, align 8
  store i64 %1063, i64* %RCX.i152.pre-phi, align 8
  %1064 = add i64 %1048, -32
  %1065 = add i64 %1050, 17
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = add i32 %1067, 1
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RAX.i597.pre-phi, align 8
  %1070 = icmp eq i32 %1067, -1
  %1071 = icmp eq i32 %1068, 0
  %1072 = or i1 %1070, %1071
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %14, align 1
  %1074 = and i32 %1068, 255
  %1075 = tail call i32 @llvm.ctpop.i32(i32 %1074)
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  store i8 %1078, i8* %21, align 1
  %1079 = xor i32 %1068, %1067
  %1080 = lshr i32 %1079, 4
  %1081 = trunc i32 %1080 to i8
  %1082 = and i8 %1081, 1
  store i8 %1082, i8* %27, align 1
  %1083 = zext i1 %1071 to i8
  store i8 %1083, i8* %30, align 1
  %1084 = lshr i32 %1068, 31
  %1085 = trunc i32 %1084 to i8
  store i8 %1085, i8* %33, align 1
  %1086 = lshr i32 %1067, 31
  %1087 = xor i32 %1084, %1086
  %1088 = add nuw nsw i32 %1087, %1084
  %1089 = icmp eq i32 %1088, 2
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %39, align 1
  %1091 = sext i32 %1068 to i64
  store i64 %1091, i64* %RDX.i646, align 8
  %1092 = shl nsw i64 %1091, 3
  %1093 = add i64 %1063, %1092
  %1094 = add i64 %1050, 28
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to double*
  store double %1059, double* %1095, align 8
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -72
  %1098 = load i64, i64* %3, align 8
  %1099 = add i64 %1098, 5
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1097 to i64*
  %1101 = load i64, i64* %1100, align 8
  store i64 %1101, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1102 = add i64 %1096, -112
  %1103 = add i64 %1098, 10
  store i64 %1103, i64* %3, align 8
  %1104 = bitcast i64 %1101 to double
  %1105 = inttoptr i64 %1102 to double*
  %1106 = load double, double* %1105, align 8
  %1107 = fadd double %1104, %1106
  store double %1107, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1108 = add i64 %1096, -16
  %1109 = add i64 %1098, 14
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i64*
  %1111 = load i64, i64* %1110, align 8
  store i64 %1111, i64* %RCX.i152.pre-phi, align 8
  %1112 = add i64 %1096, -40
  %1113 = add i64 %1098, 18
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = sext i32 %1115 to i64
  store i64 %1116, i64* %RDX.i646, align 8
  %1117 = shl nsw i64 %1116, 3
  %1118 = add i64 %1117, %1111
  %1119 = add i64 %1098, 23
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to double*
  store double %1107, double* %1120, align 8
  %1121 = load i64, i64* %RBP.i, align 8
  %1122 = add i64 %1121, -80
  %1123 = load i64, i64* %3, align 8
  %1124 = add i64 %1123, 5
  store i64 %1124, i64* %3, align 8
  %1125 = inttoptr i64 %1122 to i64*
  %1126 = load i64, i64* %1125, align 8
  store i64 %1126, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1127 = add i64 %1121, -104
  %1128 = add i64 %1123, 10
  store i64 %1128, i64* %3, align 8
  %1129 = bitcast i64 %1126 to double
  %1130 = inttoptr i64 %1127 to double*
  %1131 = load double, double* %1130, align 8
  %1132 = fsub double %1129, %1131
  store double %1132, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1133 = add i64 %1121, -16
  %1134 = add i64 %1123, 14
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i64*
  %1136 = load i64, i64* %1135, align 8
  store i64 %1136, i64* %RCX.i152.pre-phi, align 8
  %1137 = add i64 %1121, -40
  %1138 = add i64 %1123, 17
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = add i32 %1140, 1
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RAX.i597.pre-phi, align 8
  %1143 = icmp eq i32 %1140, -1
  %1144 = icmp eq i32 %1141, 0
  %1145 = or i1 %1143, %1144
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %14, align 1
  %1147 = and i32 %1141, 255
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147)
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %21, align 1
  %1152 = xor i32 %1141, %1140
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  store i8 %1155, i8* %27, align 1
  %1156 = zext i1 %1144 to i8
  store i8 %1156, i8* %30, align 1
  %1157 = lshr i32 %1141, 31
  %1158 = trunc i32 %1157 to i8
  store i8 %1158, i8* %33, align 1
  %1159 = lshr i32 %1140, 31
  %1160 = xor i32 %1157, %1159
  %1161 = add nuw nsw i32 %1160, %1157
  %1162 = icmp eq i32 %1161, 2
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %39, align 1
  %1164 = sext i32 %1141 to i64
  store i64 %1164, i64* %RDX.i646, align 8
  %1165 = shl nsw i64 %1164, 3
  %1166 = add i64 %1136, %1165
  %1167 = add i64 %1123, 28
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1166 to double*
  store double %1132, double* %1168, align 8
  %1169 = load i64, i64* %RBP.i, align 8
  %1170 = add i64 %1169, -28
  %1171 = load i64, i64* %3, align 8
  %1172 = add i64 %1171, 3
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1170 to i32*
  %1174 = load i32, i32* %1173, align 4
  %1175 = add i32 %1174, 2
  %1176 = zext i32 %1175 to i64
  store i64 %1176, i64* %RAX.i597.pre-phi, align 8
  %1177 = icmp ugt i32 %1174, -3
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %14, align 1
  %1179 = and i32 %1175, 255
  %1180 = tail call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  store i8 %1183, i8* %21, align 1
  %1184 = xor i32 %1175, %1174
  %1185 = lshr i32 %1184, 4
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  store i8 %1187, i8* %27, align 1
  %1188 = icmp eq i32 %1175, 0
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %30, align 1
  %1190 = lshr i32 %1175, 31
  %1191 = trunc i32 %1190 to i8
  store i8 %1191, i8* %33, align 1
  %1192 = lshr i32 %1174, 31
  %1193 = xor i32 %1190, %1192
  %1194 = add nuw nsw i32 %1193, %1190
  %1195 = icmp eq i32 %1194, 2
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %39, align 1
  %1197 = add i64 %1171, 9
  store i64 %1197, i64* %3, align 8
  store i32 %1175, i32* %1173, align 4
  %1198 = load i64, i64* %3, align 8
  %1199 = add i64 %1198, -540
  store i64 %1199, i64* %3, align 8
  br label %block_.L_4018e6

block_.L_401b07:                                  ; preds = %block_.L_4018e6
  %1200 = add i64 %307, 237
  br label %block_.L_401bf4

block_.L_401b13:                                  ; preds = %block_.L_401b13.preheader, %block_401b1f
  %1201 = phi i64 [ %1588, %block_401b1f ], [ %.pre9, %block_.L_401b13.preheader ]
  %1202 = load i64, i64* %RBP.i, align 8
  %1203 = add i64 %1202, -28
  %1204 = add i64 %1201, 3
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i32*
  %1206 = load i32, i32* %1205, align 4
  %1207 = zext i32 %1206 to i64
  store i64 %1207, i64* %RAX.i597.pre-phi, align 8
  %1208 = add i64 %1202, -44
  %1209 = add i64 %1201, 6
  store i64 %1209, i64* %3, align 8
  %1210 = inttoptr i64 %1208 to i32*
  %1211 = load i32, i32* %1210, align 4
  %1212 = sub i32 %1206, %1211
  %1213 = icmp ult i32 %1206, %1211
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %14, align 1
  %1215 = and i32 %1212, 255
  %1216 = tail call i32 @llvm.ctpop.i32(i32 %1215)
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = xor i8 %1218, 1
  store i8 %1219, i8* %21, align 1
  %1220 = xor i32 %1211, %1206
  %1221 = xor i32 %1220, %1212
  %1222 = lshr i32 %1221, 4
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  store i8 %1224, i8* %27, align 1
  %1225 = icmp eq i32 %1212, 0
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %30, align 1
  %1227 = lshr i32 %1212, 31
  %1228 = trunc i32 %1227 to i8
  store i8 %1228, i8* %33, align 1
  %1229 = lshr i32 %1206, 31
  %1230 = lshr i32 %1211, 31
  %1231 = xor i32 %1230, %1229
  %1232 = xor i32 %1227, %1229
  %1233 = add nuw nsw i32 %1232, %1231
  %1234 = icmp eq i32 %1233, 2
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %39, align 1
  %1236 = icmp ne i8 %1228, 0
  %1237 = xor i1 %1236, %1234
  %.v17 = select i1 %1237, i64 12, i64 220
  %1238 = add i64 %1201, %.v17
  store i64 %1238, i64* %3, align 8
  br i1 %1237, label %block_401b1f, label %block_.L_401bef

block_401b1f:                                     ; preds = %block_.L_401b13
  %1239 = add i64 %1238, 3
  store i64 %1239, i64* %3, align 8
  %1240 = load i32, i32* %1205, align 4
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RAX.i597.pre-phi, align 8
  %1242 = add i64 %1238, 6
  store i64 %1242, i64* %3, align 8
  %1243 = load i32, i32* %1210, align 4
  %1244 = add i32 %1243, %1240
  %1245 = zext i32 %1244 to i64
  store i64 %1245, i64* %RAX.i597.pre-phi, align 8
  %1246 = icmp ult i32 %1244, %1240
  %1247 = icmp ult i32 %1244, %1243
  %1248 = or i1 %1246, %1247
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %14, align 1
  %1250 = and i32 %1244, 255
  %1251 = tail call i32 @llvm.ctpop.i32(i32 %1250)
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = xor i8 %1253, 1
  store i8 %1254, i8* %21, align 1
  %1255 = xor i32 %1243, %1240
  %1256 = xor i32 %1255, %1244
  %1257 = lshr i32 %1256, 4
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  store i8 %1259, i8* %27, align 1
  %1260 = icmp eq i32 %1244, 0
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %30, align 1
  %1262 = lshr i32 %1244, 31
  %1263 = trunc i32 %1262 to i8
  store i8 %1263, i8* %33, align 1
  %1264 = lshr i32 %1240, 31
  %1265 = lshr i32 %1243, 31
  %1266 = xor i32 %1262, %1264
  %1267 = xor i32 %1262, %1265
  %1268 = add nuw nsw i32 %1266, %1267
  %1269 = icmp eq i32 %1268, 2
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %39, align 1
  %1271 = add i64 %1202, -32
  %1272 = add i64 %1238, 9
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i32*
  store i32 %1244, i32* %1273, align 4
  %1274 = load i64, i64* %RBP.i, align 8
  %1275 = add i64 %1274, -16
  %1276 = load i64, i64* %3, align 8
  %1277 = add i64 %1276, 4
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1275 to i64*
  %1279 = load i64, i64* %1278, align 8
  store i64 %1279, i64* %RCX.i152.pre-phi, align 8
  %1280 = add i64 %1274, -28
  %1281 = add i64 %1276, 8
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = sext i32 %1283 to i64
  store i64 %1284, i64* %RDX.i646, align 8
  %1285 = shl nsw i64 %1284, 3
  %1286 = add i64 %1285, %1279
  %1287 = add i64 %1276, 13
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1286 to i64*
  %1289 = load i64, i64* %1288, align 8
  store i64 %1289, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1290 = add i64 %1276, 17
  store i64 %1290, i64* %3, align 8
  %1291 = load i64, i64* %1278, align 8
  store i64 %1291, i64* %RCX.i152.pre-phi, align 8
  %1292 = add i64 %1274, -32
  %1293 = add i64 %1276, 21
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  %1295 = load i32, i32* %1294, align 4
  %1296 = sext i32 %1295 to i64
  store i64 %1296, i64* %RDX.i646, align 8
  %1297 = shl nsw i64 %1296, 3
  %1298 = add i64 %1297, %1291
  %1299 = add i64 %1276, 26
  store i64 %1299, i64* %3, align 8
  %1300 = bitcast i64 %1289 to double
  %1301 = inttoptr i64 %1298 to double*
  %1302 = load double, double* %1301, align 8
  %1303 = fsub double %1300, %1302
  store double %1303, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1304 = add i64 %1274, -56
  %1305 = add i64 %1276, 31
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to double*
  store double %1303, double* %1306, align 8
  %1307 = load i64, i64* %RBP.i, align 8
  %1308 = add i64 %1307, -16
  %1309 = load i64, i64* %3, align 8
  %1310 = add i64 %1309, 4
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1308 to i64*
  %1312 = load i64, i64* %1311, align 8
  store i64 %1312, i64* %RCX.i152.pre-phi, align 8
  %1313 = add i64 %1307, -28
  %1314 = add i64 %1309, 7
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = add i32 %1316, 1
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RAX.i597.pre-phi, align 8
  %1319 = icmp eq i32 %1316, -1
  %1320 = icmp eq i32 %1317, 0
  %1321 = or i1 %1319, %1320
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %14, align 1
  %1323 = and i32 %1317, 255
  %1324 = tail call i32 @llvm.ctpop.i32(i32 %1323)
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = xor i8 %1326, 1
  store i8 %1327, i8* %21, align 1
  %1328 = xor i32 %1317, %1316
  %1329 = lshr i32 %1328, 4
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  store i8 %1331, i8* %27, align 1
  %1332 = zext i1 %1320 to i8
  store i8 %1332, i8* %30, align 1
  %1333 = lshr i32 %1317, 31
  %1334 = trunc i32 %1333 to i8
  store i8 %1334, i8* %33, align 1
  %1335 = lshr i32 %1316, 31
  %1336 = xor i32 %1333, %1335
  %1337 = add nuw nsw i32 %1336, %1333
  %1338 = icmp eq i32 %1337, 2
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %39, align 1
  %1340 = sext i32 %1317 to i64
  store i64 %1340, i64* %RDX.i646, align 8
  %1341 = shl nsw i64 %1340, 3
  %1342 = add i64 %1312, %1341
  %1343 = add i64 %1309, 18
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1342 to i64*
  %1345 = load i64, i64* %1344, align 8
  store i64 %1345, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1346 = add i64 %1309, 22
  store i64 %1346, i64* %3, align 8
  %1347 = load i64, i64* %1311, align 8
  store i64 %1347, i64* %RCX.i152.pre-phi, align 8
  %1348 = add i64 %1307, -32
  %1349 = add i64 %1309, 25
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i32*
  %1351 = load i32, i32* %1350, align 4
  %1352 = add i32 %1351, 1
  %1353 = zext i32 %1352 to i64
  store i64 %1353, i64* %RAX.i597.pre-phi, align 8
  %1354 = icmp eq i32 %1351, -1
  %1355 = icmp eq i32 %1352, 0
  %1356 = or i1 %1354, %1355
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %14, align 1
  %1358 = and i32 %1352, 255
  %1359 = tail call i32 @llvm.ctpop.i32(i32 %1358)
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  %1362 = xor i8 %1361, 1
  store i8 %1362, i8* %21, align 1
  %1363 = xor i32 %1352, %1351
  %1364 = lshr i32 %1363, 4
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  store i8 %1366, i8* %27, align 1
  %1367 = zext i1 %1355 to i8
  store i8 %1367, i8* %30, align 1
  %1368 = lshr i32 %1352, 31
  %1369 = trunc i32 %1368 to i8
  store i8 %1369, i8* %33, align 1
  %1370 = lshr i32 %1351, 31
  %1371 = xor i32 %1368, %1370
  %1372 = add nuw nsw i32 %1371, %1368
  %1373 = icmp eq i32 %1372, 2
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %39, align 1
  %1375 = sext i32 %1352 to i64
  store i64 %1375, i64* %RDX.i646, align 8
  %1376 = shl nsw i64 %1375, 3
  %1377 = add i64 %1347, %1376
  %1378 = add i64 %1309, 36
  store i64 %1378, i64* %3, align 8
  %1379 = bitcast i64 %1345 to double
  %1380 = inttoptr i64 %1377 to double*
  %1381 = load double, double* %1380, align 8
  %1382 = fsub double %1379, %1381
  store double %1382, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1383 = load i64, i64* %RBP.i, align 8
  %1384 = add i64 %1383, -64
  %1385 = add i64 %1309, 41
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to double*
  store double %1382, double* %1386, align 8
  %1387 = load i64, i64* %RBP.i, align 8
  %1388 = add i64 %1387, -16
  %1389 = load i64, i64* %3, align 8
  %1390 = add i64 %1389, 4
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1388 to i64*
  %1392 = load i64, i64* %1391, align 8
  store i64 %1392, i64* %RCX.i152.pre-phi, align 8
  %1393 = add i64 %1387, -32
  %1394 = add i64 %1389, 8
  store i64 %1394, i64* %3, align 8
  %1395 = inttoptr i64 %1393 to i32*
  %1396 = load i32, i32* %1395, align 4
  %1397 = sext i32 %1396 to i64
  store i64 %1397, i64* %RDX.i646, align 8
  %1398 = shl nsw i64 %1397, 3
  %1399 = add i64 %1398, %1392
  %1400 = add i64 %1389, 13
  store i64 %1400, i64* %3, align 8
  %1401 = inttoptr i64 %1399 to i64*
  %1402 = load i64, i64* %1401, align 8
  store i64 %1402, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1403 = add i64 %1389, 17
  store i64 %1403, i64* %3, align 8
  %1404 = load i64, i64* %1391, align 8
  store i64 %1404, i64* %RCX.i152.pre-phi, align 8
  %1405 = add i64 %1387, -28
  %1406 = add i64 %1389, 21
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1405 to i32*
  %1408 = load i32, i32* %1407, align 4
  %1409 = sext i32 %1408 to i64
  store i64 %1409, i64* %RDX.i646, align 8
  %1410 = shl nsw i64 %1409, 3
  %1411 = add i64 %1410, %1404
  %1412 = add i64 %1389, 26
  store i64 %1412, i64* %3, align 8
  %1413 = bitcast i64 %1402 to double
  %1414 = inttoptr i64 %1411 to double*
  %1415 = load double, double* %1414, align 8
  %1416 = fadd double %1413, %1415
  store double %1416, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1417 = add i64 %1389, 31
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1411 to double*
  store double %1416, double* %1418, align 8
  %1419 = load i64, i64* %RBP.i, align 8
  %1420 = add i64 %1419, -16
  %1421 = load i64, i64* %3, align 8
  %1422 = add i64 %1421, 4
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1420 to i64*
  %1424 = load i64, i64* %1423, align 8
  store i64 %1424, i64* %RCX.i152.pre-phi, align 8
  %1425 = add i64 %1419, -32
  %1426 = add i64 %1421, 7
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  %1428 = load i32, i32* %1427, align 4
  %1429 = add i32 %1428, 1
  %1430 = zext i32 %1429 to i64
  store i64 %1430, i64* %RAX.i597.pre-phi, align 8
  %1431 = icmp eq i32 %1428, -1
  %1432 = icmp eq i32 %1429, 0
  %1433 = or i1 %1431, %1432
  %1434 = zext i1 %1433 to i8
  store i8 %1434, i8* %14, align 1
  %1435 = and i32 %1429, 255
  %1436 = tail call i32 @llvm.ctpop.i32(i32 %1435)
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  %1439 = xor i8 %1438, 1
  store i8 %1439, i8* %21, align 1
  %1440 = xor i32 %1429, %1428
  %1441 = lshr i32 %1440, 4
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  store i8 %1443, i8* %27, align 1
  %1444 = zext i1 %1432 to i8
  store i8 %1444, i8* %30, align 1
  %1445 = lshr i32 %1429, 31
  %1446 = trunc i32 %1445 to i8
  store i8 %1446, i8* %33, align 1
  %1447 = lshr i32 %1428, 31
  %1448 = xor i32 %1445, %1447
  %1449 = add nuw nsw i32 %1448, %1445
  %1450 = icmp eq i32 %1449, 2
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %39, align 1
  %1452 = sext i32 %1429 to i64
  store i64 %1452, i64* %RDX.i646, align 8
  %1453 = shl nsw i64 %1452, 3
  %1454 = add i64 %1424, %1453
  %1455 = add i64 %1421, 18
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i64*
  %1457 = load i64, i64* %1456, align 8
  store i64 %1457, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1458 = add i64 %1421, 22
  store i64 %1458, i64* %3, align 8
  %1459 = load i64, i64* %1423, align 8
  store i64 %1459, i64* %RCX.i152.pre-phi, align 8
  %1460 = add i64 %1419, -28
  %1461 = add i64 %1421, 25
  store i64 %1461, i64* %3, align 8
  %1462 = inttoptr i64 %1460 to i32*
  %1463 = load i32, i32* %1462, align 4
  %1464 = add i32 %1463, 1
  %1465 = zext i32 %1464 to i64
  store i64 %1465, i64* %RAX.i597.pre-phi, align 8
  %1466 = icmp eq i32 %1463, -1
  %1467 = icmp eq i32 %1464, 0
  %1468 = or i1 %1466, %1467
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %14, align 1
  %1470 = and i32 %1464, 255
  %1471 = tail call i32 @llvm.ctpop.i32(i32 %1470)
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  %1474 = xor i8 %1473, 1
  store i8 %1474, i8* %21, align 1
  %1475 = xor i32 %1464, %1463
  %1476 = lshr i32 %1475, 4
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  store i8 %1478, i8* %27, align 1
  %1479 = zext i1 %1467 to i8
  store i8 %1479, i8* %30, align 1
  %1480 = lshr i32 %1464, 31
  %1481 = trunc i32 %1480 to i8
  store i8 %1481, i8* %33, align 1
  %1482 = lshr i32 %1463, 31
  %1483 = xor i32 %1480, %1482
  %1484 = add nuw nsw i32 %1483, %1480
  %1485 = icmp eq i32 %1484, 2
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %39, align 1
  %1487 = sext i32 %1464 to i64
  store i64 %1487, i64* %RDX.i646, align 8
  %1488 = shl nsw i64 %1487, 3
  %1489 = add i64 %1459, %1488
  %1490 = add i64 %1421, 36
  store i64 %1490, i64* %3, align 8
  %1491 = bitcast i64 %1457 to double
  %1492 = inttoptr i64 %1489 to double*
  %1493 = load double, double* %1492, align 8
  %1494 = fadd double %1491, %1493
  store double %1494, double* %266, align 1
  store i64 0, i64* %268, align 1
  %1495 = add i64 %1421, 41
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1489 to double*
  store double %1494, double* %1496, align 8
  %1497 = load i64, i64* %RBP.i, align 8
  %1498 = add i64 %1497, -56
  %1499 = load i64, i64* %3, align 8
  %1500 = add i64 %1499, 5
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1498 to i64*
  %1502 = load i64, i64* %1501, align 8
  store i64 %1502, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1503 = add i64 %1497, -16
  %1504 = add i64 %1499, 9
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i64*
  %1506 = load i64, i64* %1505, align 8
  store i64 %1506, i64* %RCX.i152.pre-phi, align 8
  %1507 = add i64 %1497, -32
  %1508 = add i64 %1499, 13
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i32*
  %1510 = load i32, i32* %1509, align 4
  %1511 = sext i32 %1510 to i64
  store i64 %1511, i64* %RDX.i646, align 8
  %1512 = shl nsw i64 %1511, 3
  %1513 = add i64 %1512, %1506
  %1514 = add i64 %1499, 18
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i64*
  store i64 %1502, i64* %1515, align 8
  %1516 = load i64, i64* %RBP.i, align 8
  %1517 = add i64 %1516, -64
  %1518 = load i64, i64* %3, align 8
  %1519 = add i64 %1518, 5
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1517 to i64*
  %1521 = load i64, i64* %1520, align 8
  store i64 %1521, i64* %267, align 1
  store double 0.000000e+00, double* %269, align 1
  %1522 = add i64 %1516, -16
  %1523 = add i64 %1518, 9
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i64*
  %1525 = load i64, i64* %1524, align 8
  store i64 %1525, i64* %RCX.i152.pre-phi, align 8
  %1526 = add i64 %1516, -32
  %1527 = add i64 %1518, 12
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i32*
  %1529 = load i32, i32* %1528, align 4
  %1530 = add i32 %1529, 1
  %1531 = zext i32 %1530 to i64
  store i64 %1531, i64* %RAX.i597.pre-phi, align 8
  %1532 = icmp eq i32 %1529, -1
  %1533 = icmp eq i32 %1530, 0
  %1534 = or i1 %1532, %1533
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %14, align 1
  %1536 = and i32 %1530, 255
  %1537 = tail call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %21, align 1
  %1541 = xor i32 %1530, %1529
  %1542 = lshr i32 %1541, 4
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  store i8 %1544, i8* %27, align 1
  %1545 = zext i1 %1533 to i8
  store i8 %1545, i8* %30, align 1
  %1546 = lshr i32 %1530, 31
  %1547 = trunc i32 %1546 to i8
  store i8 %1547, i8* %33, align 1
  %1548 = lshr i32 %1529, 31
  %1549 = xor i32 %1546, %1548
  %1550 = add nuw nsw i32 %1549, %1546
  %1551 = icmp eq i32 %1550, 2
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %39, align 1
  %1553 = sext i32 %1530 to i64
  store i64 %1553, i64* %RDX.i646, align 8
  %1554 = shl nsw i64 %1553, 3
  %1555 = add i64 %1525, %1554
  %1556 = add i64 %1518, 23
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i64*
  store i64 %1521, i64* %1557, align 8
  %1558 = load i64, i64* %RBP.i, align 8
  %1559 = add i64 %1558, -28
  %1560 = load i64, i64* %3, align 8
  %1561 = add i64 %1560, 3
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1559 to i32*
  %1563 = load i32, i32* %1562, align 4
  %1564 = add i32 %1563, 2
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RAX.i597.pre-phi, align 8
  %1566 = icmp ugt i32 %1563, -3
  %1567 = zext i1 %1566 to i8
  store i8 %1567, i8* %14, align 1
  %1568 = and i32 %1564, 255
  %1569 = tail call i32 @llvm.ctpop.i32(i32 %1568)
  %1570 = trunc i32 %1569 to i8
  %1571 = and i8 %1570, 1
  %1572 = xor i8 %1571, 1
  store i8 %1572, i8* %21, align 1
  %1573 = xor i32 %1564, %1563
  %1574 = lshr i32 %1573, 4
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  store i8 %1576, i8* %27, align 1
  %1577 = icmp eq i32 %1564, 0
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %30, align 1
  %1579 = lshr i32 %1564, 31
  %1580 = trunc i32 %1579 to i8
  store i8 %1580, i8* %33, align 1
  %1581 = lshr i32 %1563, 31
  %1582 = xor i32 %1579, %1581
  %1583 = add nuw nsw i32 %1582, %1579
  %1584 = icmp eq i32 %1583, 2
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %39, align 1
  %1586 = add i64 %1560, 9
  store i64 %1586, i64* %3, align 8
  store i32 %1564, i32* %1562, align 4
  %1587 = load i64, i64* %3, align 8
  %1588 = add i64 %1587, -215
  store i64 %1588, i64* %3, align 8
  br label %block_.L_401b13

block_.L_401bef:                                  ; preds = %block_.L_401b13
  %1589 = add i64 %1238, 5
  store i64 %1589, i64* %3, align 8
  br label %block_.L_401bf4

block_.L_401bf4:                                  ; preds = %block_.L_401bef, %block_.L_401b07
  %storemerge = phi i64 [ %1200, %block_.L_401b07 ], [ %1589, %block_.L_401bef ]
  %1590 = load i64, i64* %6, align 8
  %1591 = add i64 %1590, 112
  store i64 %1591, i64* %6, align 8
  %1592 = icmp ugt i64 %1590, -113
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %14, align 1
  %1594 = trunc i64 %1591 to i32
  %1595 = and i32 %1594, 255
  %1596 = tail call i32 @llvm.ctpop.i32(i32 %1595)
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = xor i8 %1598, 1
  store i8 %1599, i8* %21, align 1
  %1600 = xor i64 %1590, 16
  %1601 = xor i64 %1600, %1591
  %1602 = lshr i64 %1601, 4
  %1603 = trunc i64 %1602 to i8
  %1604 = and i8 %1603, 1
  store i8 %1604, i8* %27, align 1
  %1605 = icmp eq i64 %1591, 0
  %1606 = zext i1 %1605 to i8
  store i8 %1606, i8* %30, align 1
  %1607 = lshr i64 %1591, 63
  %1608 = trunc i64 %1607 to i8
  store i8 %1608, i8* %33, align 1
  %1609 = lshr i64 %1590, 63
  %1610 = xor i64 %1607, %1609
  %1611 = add nuw nsw i64 %1610, %1607
  %1612 = icmp eq i64 %1611, 2
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %39, align 1
  %1614 = add i64 %storemerge, 5
  store i64 %1614, i64* %3, align 8
  %1615 = add i64 %1590, 120
  %1616 = inttoptr i64 %1591 to i64*
  %1617 = load i64, i64* %1616, align 8
  store i64 %1617, i64* %RBP.i, align 8
  store i64 %1615, i64* %6, align 8
  %1618 = add i64 %storemerge, 6
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1615 to i64*
  %1620 = load i64, i64* %1619, align 8
  store i64 %1620, i64* %3, align 8
  %1621 = add i64 %1590, 128
  store i64 %1621, i64* %6, align 8
  ret %struct.Memory* %MEMORY.1
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
define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 112
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
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jle_.L_4018d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.cft1st(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x8__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 8, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_shll__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_4018cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.cftmdl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_shll__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40189b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4018d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401b0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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
define %struct.Memory* @routine_jge_.L_401b07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd___rcx__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x58__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x58__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
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
define %struct.Memory* @routine_jmpq_.L_4018e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401bf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401bef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401b13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -113
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
