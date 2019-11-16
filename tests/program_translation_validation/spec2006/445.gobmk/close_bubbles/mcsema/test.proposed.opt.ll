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

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @close_bubbles(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1656
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 0, i64* %RSI.i, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %RAX.i643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 1600, i64* %RAX.i643, align 8
  %RDX.i641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 1600, i64* %RDX.i641, align 8
  %RCX.i637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %18 = add i64 %7, -1624
  store i64 %18, i64* %RCX.i637, align 8
  %RDI.i634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %19 = add i64 %7, -16
  %20 = load i64, i64* %RDI.i634, align 8
  %21 = add i64 %10, 30
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %19 to i64*
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -1624
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 10
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %24 to i32*
  store i32 1, i32* %27, align 4
  %28 = load i64, i64* %RCX.i637, align 8
  %29 = load i64, i64* %3, align 8
  store i64 %28, i64* %RDI.i634, align 8
  %30 = add i64 %29, -443817
  %31 = add i64 %29, 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, -8
  %34 = inttoptr i64 %33 to i64*
  store i64 %31, i64* %34, align 8
  store i64 %33, i64* %6, align 8
  store i64 %30, i64* %3, align 8
  %35 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_46d621

block_.L_46d621:                                  ; preds = %block_.L_46db31, %entry
  %36 = phi i64 [ %2035, %block_.L_46db31 ], [ %.pre61, %entry ]
  %37 = phi i64 [ %59, %block_.L_46db31 ], [ %.pre, %entry ]
  %38 = add i64 %37, -1624
  %39 = add i64 %36, 7
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %38 to i32*
  %41 = load i32, i32* %40, align 4
  store i8 0, i8* %12, align 1
  %42 = and i32 %41, 255
  %43 = tail call i32 @llvm.ctpop.i32(i32 %42)
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  store i8 %46, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %47 = icmp eq i32 %41, 0
  %48 = zext i1 %47 to i8
  store i8 %48, i8* %15, align 1
  %49 = lshr i32 %41, 31
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v79 = select i1 %47, i64 1301, i64 13
  %51 = add i64 %36, %.v79
  store i64 %51, i64* %3, align 8
  br i1 %47, label %block_.L_46db36, label %block_46d62e

block_46d62e:                                     ; preds = %block_.L_46d621
  %52 = add i64 %51, 10
  store i64 %52, i64* %3, align 8
  store i32 0, i32* %40, align 4
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -1620
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 10
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %54 to i32*
  store i32 21, i32* %57, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_46d642

block_.L_46d642:                                  ; preds = %block_.L_46db1d, %block_46d62e
  %58 = phi i64 [ %2034, %block_.L_46db1d ], [ %.pre62, %block_46d62e ]
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -1620
  %61 = add i64 %58, 10
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, -400
  %65 = icmp ult i32 %63, 400
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %12, align 1
  %67 = and i32 %64, 255
  %68 = tail call i32 @llvm.ctpop.i32(i32 %67)
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  store i8 %71, i8* %13, align 1
  %72 = xor i32 %63, 16
  %73 = xor i32 %72, %64
  %74 = lshr i32 %73, 4
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  store i8 %76, i8* %14, align 1
  %77 = icmp eq i32 %64, 0
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %15, align 1
  %79 = lshr i32 %64, 31
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %16, align 1
  %81 = lshr i32 %63, 31
  %82 = xor i32 %79, %81
  %83 = add nuw nsw i32 %82, %81
  %84 = icmp eq i32 %83, 2
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %17, align 1
  %86 = icmp ne i8 %80, 0
  %87 = xor i1 %86, %84
  %.v80 = select i1 %87, i64 16, i64 1263
  %88 = add i64 %58, %.v80
  store i64 %88, i64* %3, align 8
  br i1 %87, label %block_46d652, label %block_.L_46db31

block_46d652:                                     ; preds = %block_.L_46d642
  %89 = add i64 %59, -1628
  %90 = add i64 %88, 10
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i32*
  store i32 0, i32* %91, align 4
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -1632
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 10
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %93 to i32*
  store i32 0, i32* %96, align 4
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -1636
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 10
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %98 to i32*
  store i32 0, i32* %101, align 4
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -1620
  %104 = load i64, i64* %3, align 8
  %105 = add i64 %104, 7
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %103 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %RAX.i643, align 8
  %109 = add nsw i64 %108, 12099168
  %110 = add i64 %104, 15
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i8*
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i64
  store i64 %113, i64* %RCX.i637, align 8
  %114 = zext i8 %112 to i32
  %115 = add nsw i32 %114, -3
  %116 = icmp ult i8 %112, 3
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %12, align 1
  %118 = and i32 %115, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118)
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %13, align 1
  %123 = xor i32 %115, %114
  %124 = lshr i32 %123, 4
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  store i8 %126, i8* %14, align 1
  %127 = icmp eq i32 %115, 0
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %15, align 1
  %129 = lshr i32 %115, 31
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v81 = select i1 %127, i64 66, i64 24
  %131 = add i64 %104, %.v81
  store i64 %131, i64* %3, align 8
  br i1 %127, label %block_.L_46d6b2, label %block_46d688

block_46d688:                                     ; preds = %block_46d652
  %132 = add i64 %102, -8
  %133 = add i64 %131, 4
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i64*
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %RAX.i643, align 8
  %136 = add i64 %131, 11
  store i64 %136, i64* %3, align 8
  %137 = load i32, i32* %106, align 4
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %RCX.i637, align 8
  %139 = shl nsw i64 %138, 2
  %140 = add i64 %139, %135
  %141 = add i64 %131, 15
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  store i8 0, i8* %12, align 1
  %144 = and i32 %143, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %149 = icmp eq i32 %143, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %15, align 1
  %151 = lshr i32 %143, 31
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v82 = select i1 %149, i64 21, i64 42
  %153 = add i64 %131, %.v82
  store i64 %153, i64* %3, align 8
  br i1 %149, label %block_46d69d, label %block_.L_46d6b2

block_46d69d:                                     ; preds = %block_46d688
  %154 = add i64 %153, 7
  store i64 %154, i64* %3, align 8
  %155 = load i32, i32* %106, align 4
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %RAX.i643, align 8
  %157 = shl nsw i64 %156, 2
  %158 = add i64 %102, -1616
  %159 = add i64 %158, %157
  %160 = add i64 %153, 15
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = add i32 %162, -3
  %164 = icmp ult i32 %162, 3
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %12, align 1
  %166 = and i32 %163, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166)
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %13, align 1
  %171 = xor i32 %163, %162
  %172 = lshr i32 %171, 4
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  store i8 %174, i8* %14, align 1
  %175 = icmp eq i32 %163, 0
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %15, align 1
  %177 = lshr i32 %163, 31
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %16, align 1
  %179 = lshr i32 %162, 31
  %180 = xor i32 %177, %179
  %181 = add nuw nsw i32 %180, %179
  %182 = icmp eq i32 %181, 2
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %17, align 1
  %.v83 = select i1 %175, i64 21, i64 26
  %184 = add i64 %153, %.v83
  store i64 %184, i64* %3, align 8
  br i1 %175, label %block_.L_46d6b2, label %block_.L_46d6b7

block_.L_46d6b2:                                  ; preds = %block_46d69d, %block_46d688, %block_46d652
  %185 = phi i64 [ %184, %block_46d69d ], [ %153, %block_46d688 ], [ %131, %block_46d652 ]
  %186 = add i64 %185, 1131
  br label %block_.L_46db1d

block_.L_46d6b7:                                  ; preds = %block_46d69d
  %187 = add i64 %184, 6
  store i64 %187, i64* %3, align 8
  %188 = load i32, i32* %106, align 4
  %189 = add i32 %188, 20
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RAX.i643, align 8
  %191 = icmp ugt i32 %188, -21
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %12, align 1
  %193 = and i32 %189, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193)
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %13, align 1
  %198 = xor i32 %188, 16
  %199 = xor i32 %198, %189
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  store i8 %202, i8* %14, align 1
  %203 = icmp eq i32 %189, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %15, align 1
  %205 = lshr i32 %189, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %16, align 1
  %207 = lshr i32 %188, 31
  %208 = xor i32 %205, %207
  %209 = add nuw nsw i32 %208, %205
  %210 = icmp eq i32 %209, 2
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %17, align 1
  %212 = sext i32 %189 to i64
  store i64 %212, i64* %RCX.i637, align 8
  %213 = add nsw i64 %212, 12099168
  %214 = add i64 %184, 20
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i8*
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i64
  store i64 %217, i64* %RAX.i643, align 8
  %218 = zext i8 %216 to i32
  %219 = add nsw i32 %218, -3
  %220 = icmp ult i8 %216, 3
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %12, align 1
  %222 = and i32 %219, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %13, align 1
  %227 = xor i32 %219, %218
  %228 = lshr i32 %227, 4
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %14, align 1
  %231 = icmp eq i32 %219, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %15, align 1
  %233 = lshr i32 %219, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v84 = select i1 %231, i64 55, i64 29
  %235 = add i64 %184, %.v84
  store i64 %235, i64* %3, align 8
  br i1 %231, label %block_.L_46d6ee, label %block_46d6d4

block_46d6d4:                                     ; preds = %block_.L_46d6b7
  %236 = add i64 %235, 6
  store i64 %236, i64* %3, align 8
  %237 = load i32, i32* %106, align 4
  %238 = add i32 %237, 20
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RAX.i643, align 8
  %240 = icmp ugt i32 %237, -21
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %12, align 1
  %242 = and i32 %238, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %13, align 1
  %247 = xor i32 %237, 16
  %248 = xor i32 %247, %238
  %249 = lshr i32 %248, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %14, align 1
  %252 = icmp eq i32 %238, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %15, align 1
  %254 = lshr i32 %238, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %16, align 1
  %256 = lshr i32 %237, 31
  %257 = xor i32 %254, %256
  %258 = add nuw nsw i32 %257, %254
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %17, align 1
  %261 = sext i32 %238 to i64
  store i64 %261, i64* %RCX.i637, align 8
  %262 = shl nsw i64 %261, 2
  %263 = add nsw i64 %262, -1616
  %264 = add i64 %263, %102
  %265 = add i64 %235, 20
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = add i32 %267, -3
  %269 = icmp ult i32 %267, 3
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %12, align 1
  %271 = and i32 %268, 255
  %272 = tail call i32 @llvm.ctpop.i32(i32 %271)
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %13, align 1
  %276 = xor i32 %268, %267
  %277 = lshr i32 %276, 4
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  store i8 %279, i8* %14, align 1
  %280 = icmp eq i32 %268, 0
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %15, align 1
  %282 = lshr i32 %268, 31
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %16, align 1
  %284 = lshr i32 %267, 31
  %285 = xor i32 %282, %284
  %286 = add nuw nsw i32 %285, %284
  %287 = icmp eq i32 %286, 2
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %17, align 1
  %.v85 = select i1 %280, i64 191, i64 26
  %289 = add i64 %235, %.v85
  store i64 %289, i64* %3, align 8
  br i1 %280, label %block_.L_46d793, label %block_.L_46d6ee

block_.L_46d6ee:                                  ; preds = %block_46d6d4, %block_.L_46d6b7
  %290 = phi i64 [ %289, %block_46d6d4 ], [ %235, %block_.L_46d6b7 ]
  %291 = add i64 %290, 6
  store i64 %291, i64* %3, align 8
  %292 = load i32, i32* %106, align 4
  %293 = add i32 %292, -1
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RAX.i643, align 8
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
  %315 = sext i32 %293 to i64
  store i64 %315, i64* %RCX.i637, align 8
  %316 = add nsw i64 %315, 12099168
  %317 = add i64 %290, 20
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i8*
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i64
  store i64 %320, i64* %RAX.i643, align 8
  %321 = zext i8 %319 to i32
  %322 = add nsw i32 %321, -3
  %323 = icmp ult i8 %319, 3
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %12, align 1
  %325 = and i32 %322, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325)
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %13, align 1
  %330 = xor i32 %322, %321
  %331 = lshr i32 %330, 4
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %14, align 1
  %334 = icmp eq i32 %322, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %15, align 1
  %336 = lshr i32 %322, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v86 = select i1 %334, i64 55, i64 29
  %338 = add i64 %290, %.v86
  store i64 %338, i64* %3, align 8
  br i1 %334, label %block_.L_46d725, label %block_46d70b

block_46d70b:                                     ; preds = %block_.L_46d6ee
  %339 = add i64 %338, 6
  store i64 %339, i64* %3, align 8
  %340 = load i32, i32* %106, align 4
  %341 = add i32 %340, -1
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RAX.i643, align 8
  %343 = icmp eq i32 %340, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %12, align 1
  %345 = and i32 %341, 255
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345)
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %13, align 1
  %350 = xor i32 %341, %340
  %351 = lshr i32 %350, 4
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  store i8 %353, i8* %14, align 1
  %354 = icmp eq i32 %341, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %15, align 1
  %356 = lshr i32 %341, 31
  %357 = trunc i32 %356 to i8
  store i8 %357, i8* %16, align 1
  %358 = lshr i32 %340, 31
  %359 = xor i32 %356, %358
  %360 = add nuw nsw i32 %359, %358
  %361 = icmp eq i32 %360, 2
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %17, align 1
  %363 = sext i32 %341 to i64
  store i64 %363, i64* %RCX.i637, align 8
  %364 = shl nsw i64 %363, 2
  %365 = add nsw i64 %364, -1616
  %366 = add i64 %365, %102
  %367 = add i64 %338, 20
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = add i32 %369, -3
  %371 = icmp ult i32 %369, 3
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %12, align 1
  %373 = and i32 %370, 255
  %374 = tail call i32 @llvm.ctpop.i32(i32 %373)
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, i8* %13, align 1
  %378 = xor i32 %370, %369
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %14, align 1
  %382 = icmp eq i32 %370, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %15, align 1
  %384 = lshr i32 %370, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %16, align 1
  %386 = lshr i32 %369, 31
  %387 = xor i32 %384, %386
  %388 = add nuw nsw i32 %387, %386
  %389 = icmp eq i32 %388, 2
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %17, align 1
  %.v87 = select i1 %382, i64 136, i64 26
  %391 = add i64 %338, %.v87
  store i64 %391, i64* %3, align 8
  br i1 %382, label %block_.L_46d793, label %block_.L_46d725

block_.L_46d725:                                  ; preds = %block_46d70b, %block_.L_46d6ee
  %392 = phi i64 [ %391, %block_46d70b ], [ %338, %block_.L_46d6ee ]
  %393 = add i64 %392, 6
  store i64 %393, i64* %3, align 8
  %394 = load i32, i32* %106, align 4
  %395 = add i32 %394, -20
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RAX.i643, align 8
  %397 = icmp ult i32 %394, 20
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %12, align 1
  %399 = and i32 %395, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %13, align 1
  %404 = xor i32 %394, 16
  %405 = xor i32 %404, %395
  %406 = lshr i32 %405, 4
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  store i8 %408, i8* %14, align 1
  %409 = icmp eq i32 %395, 0
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %15, align 1
  %411 = lshr i32 %395, 31
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %16, align 1
  %413 = lshr i32 %394, 31
  %414 = xor i32 %411, %413
  %415 = add nuw nsw i32 %414, %413
  %416 = icmp eq i32 %415, 2
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %17, align 1
  %418 = sext i32 %395 to i64
  store i64 %418, i64* %RCX.i637, align 8
  %419 = add nsw i64 %418, 12099168
  %420 = add i64 %392, 20
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i8*
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i64
  store i64 %423, i64* %RAX.i643, align 8
  %424 = zext i8 %422 to i32
  %425 = add nsw i32 %424, -3
  %426 = icmp ult i8 %422, 3
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %12, align 1
  %428 = and i32 %425, 255
  %429 = tail call i32 @llvm.ctpop.i32(i32 %428)
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  %432 = xor i8 %431, 1
  store i8 %432, i8* %13, align 1
  %433 = xor i32 %425, %424
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %14, align 1
  %437 = icmp eq i32 %425, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %15, align 1
  %439 = lshr i32 %425, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v88 = select i1 %437, i64 55, i64 29
  %441 = add i64 %392, %.v88
  store i64 %441, i64* %3, align 8
  br i1 %437, label %block_.L_46d75c, label %block_46d742

block_46d742:                                     ; preds = %block_.L_46d725
  %442 = add i64 %441, 6
  store i64 %442, i64* %3, align 8
  %443 = load i32, i32* %106, align 4
  %444 = add i32 %443, -20
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RAX.i643, align 8
  %446 = icmp ult i32 %443, 20
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %12, align 1
  %448 = and i32 %444, 255
  %449 = tail call i32 @llvm.ctpop.i32(i32 %448)
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %13, align 1
  %453 = xor i32 %443, 16
  %454 = xor i32 %453, %444
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %14, align 1
  %458 = icmp eq i32 %444, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %15, align 1
  %460 = lshr i32 %444, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %16, align 1
  %462 = lshr i32 %443, 31
  %463 = xor i32 %460, %462
  %464 = add nuw nsw i32 %463, %462
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %17, align 1
  %467 = sext i32 %444 to i64
  store i64 %467, i64* %RCX.i637, align 8
  %468 = shl nsw i64 %467, 2
  %469 = add nsw i64 %468, -1616
  %470 = add i64 %469, %102
  %471 = add i64 %441, 20
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = add i32 %473, -3
  %475 = icmp ult i32 %473, 3
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %12, align 1
  %477 = and i32 %474, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %13, align 1
  %482 = xor i32 %474, %473
  %483 = lshr i32 %482, 4
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  store i8 %485, i8* %14, align 1
  %486 = icmp eq i32 %474, 0
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %15, align 1
  %488 = lshr i32 %474, 31
  %489 = trunc i32 %488 to i8
  store i8 %489, i8* %16, align 1
  %490 = lshr i32 %473, 31
  %491 = xor i32 %488, %490
  %492 = add nuw nsw i32 %491, %490
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %17, align 1
  %.v89 = select i1 %486, i64 81, i64 26
  %495 = add i64 %441, %.v89
  store i64 %495, i64* %3, align 8
  br i1 %486, label %block_.L_46d793, label %block_.L_46d75c

block_.L_46d75c:                                  ; preds = %block_46d742, %block_.L_46d725
  %496 = phi i64 [ %495, %block_46d742 ], [ %441, %block_.L_46d725 ]
  %497 = add i64 %496, 6
  store i64 %497, i64* %3, align 8
  %498 = load i32, i32* %106, align 4
  %499 = add i32 %498, 1
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RAX.i643, align 8
  %501 = icmp eq i32 %498, -1
  %502 = icmp eq i32 %499, 0
  %503 = or i1 %501, %502
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %12, align 1
  %505 = and i32 %499, 255
  %506 = tail call i32 @llvm.ctpop.i32(i32 %505)
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  store i8 %509, i8* %13, align 1
  %510 = xor i32 %499, %498
  %511 = lshr i32 %510, 4
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  store i8 %513, i8* %14, align 1
  %514 = zext i1 %502 to i8
  store i8 %514, i8* %15, align 1
  %515 = lshr i32 %499, 31
  %516 = trunc i32 %515 to i8
  store i8 %516, i8* %16, align 1
  %517 = lshr i32 %498, 31
  %518 = xor i32 %515, %517
  %519 = add nuw nsw i32 %518, %515
  %520 = icmp eq i32 %519, 2
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %17, align 1
  %522 = sext i32 %499 to i64
  store i64 %522, i64* %RCX.i637, align 8
  %523 = add nsw i64 %522, 12099168
  %524 = add i64 %496, 20
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to i8*
  %526 = load i8, i8* %525, align 1
  %527 = zext i8 %526 to i64
  store i64 %527, i64* %RAX.i643, align 8
  %528 = zext i8 %526 to i32
  %529 = add nsw i32 %528, -3
  %530 = icmp ult i8 %526, 3
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %12, align 1
  %532 = and i32 %529, 255
  %533 = tail call i32 @llvm.ctpop.i32(i32 %532)
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  store i8 %536, i8* %13, align 1
  %537 = xor i32 %529, %528
  %538 = lshr i32 %537, 4
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  store i8 %540, i8* %14, align 1
  %541 = icmp eq i32 %529, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %15, align 1
  %543 = lshr i32 %529, 31
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v90 = select i1 %541, i64 88, i64 29
  %545 = add i64 %496, %.v90
  store i64 %545, i64* %3, align 8
  br i1 %541, label %block_.L_46d7b4, label %block_46d779

block_46d779:                                     ; preds = %block_.L_46d75c
  %546 = add i64 %545, 6
  store i64 %546, i64* %3, align 8
  %547 = load i32, i32* %106, align 4
  %548 = add i32 %547, 1
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RAX.i643, align 8
  %550 = icmp eq i32 %547, -1
  %551 = icmp eq i32 %548, 0
  %552 = or i1 %550, %551
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %12, align 1
  %554 = and i32 %548, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %13, align 1
  %559 = xor i32 %548, %547
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %14, align 1
  %563 = zext i1 %551 to i8
  store i8 %563, i8* %15, align 1
  %564 = lshr i32 %548, 31
  %565 = trunc i32 %564 to i8
  store i8 %565, i8* %16, align 1
  %566 = lshr i32 %547, 31
  %567 = xor i32 %564, %566
  %568 = add nuw nsw i32 %567, %564
  %569 = icmp eq i32 %568, 2
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %17, align 1
  %571 = sext i32 %548 to i64
  store i64 %571, i64* %RCX.i637, align 8
  %572 = shl nsw i64 %571, 2
  %573 = add nsw i64 %572, -1616
  %574 = add i64 %573, %102
  %575 = add i64 %545, 20
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = add i32 %577, -3
  %579 = icmp ult i32 %577, 3
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %12, align 1
  %581 = and i32 %578, 255
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %13, align 1
  %586 = xor i32 %578, %577
  %587 = lshr i32 %586, 4
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  store i8 %589, i8* %14, align 1
  %590 = icmp eq i32 %578, 0
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %15, align 1
  %592 = lshr i32 %578, 31
  %593 = trunc i32 %592 to i8
  store i8 %593, i8* %16, align 1
  %594 = lshr i32 %577, 31
  %595 = xor i32 %592, %594
  %596 = add nuw nsw i32 %595, %594
  %597 = icmp eq i32 %596, 2
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %17, align 1
  %.v91 = select i1 %590, i64 26, i64 59
  %599 = add i64 %545, %.v91
  store i64 %599, i64* %3, align 8
  br i1 %590, label %block_.L_46d793, label %block_.L_46d7b4

block_.L_46d793:                                  ; preds = %block_46d779, %block_46d742, %block_46d70b, %block_46d6d4
  %600 = phi i64 [ %599, %block_46d779 ], [ %495, %block_46d742 ], [ %391, %block_46d70b ], [ %289, %block_46d6d4 ]
  %601 = add i64 %102, -1624
  %602 = add i64 %600, 10
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  store i32 1, i32* %603, align 4
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -1620
  %606 = load i64, i64* %3, align 8
  %607 = add i64 %606, 7
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %605 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = sext i32 %609 to i64
  store i64 %610, i64* %RAX.i643, align 8
  %611 = shl nsw i64 %610, 2
  %612 = add i64 %604, -1616
  %613 = add i64 %612, %611
  %614 = add i64 %606, 18
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i32*
  store i32 3, i32* %615, align 4
  %616 = load i64, i64* %3, align 8
  %617 = add i64 %616, 873
  br label %block_.L_46db18

block_.L_46d7b4:                                  ; preds = %block_46d779, %block_.L_46d75c
  %618 = phi i64 [ %599, %block_46d779 ], [ %545, %block_.L_46d75c ]
  %619 = add i64 %618, 7
  store i64 %619, i64* %3, align 8
  %620 = load i32, i32* %106, align 4
  %621 = sext i32 %620 to i64
  store i64 %621, i64* %RAX.i643, align 8
  %622 = shl nsw i64 %621, 2
  %623 = add i64 %158, %622
  %624 = add i64 %618, 15
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = add i32 %626, -1
  %628 = icmp eq i32 %626, 0
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %12, align 1
  %630 = and i32 %627, 255
  %631 = tail call i32 @llvm.ctpop.i32(i32 %630)
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  %634 = xor i8 %633, 1
  store i8 %634, i8* %13, align 1
  %635 = xor i32 %627, %626
  %636 = lshr i32 %635, 4
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  store i8 %638, i8* %14, align 1
  %639 = icmp eq i32 %627, 0
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %15, align 1
  %641 = lshr i32 %627, 31
  %642 = trunc i32 %641 to i8
  store i8 %642, i8* %16, align 1
  %643 = lshr i32 %626, 31
  %644 = xor i32 %641, %643
  %645 = add nuw nsw i32 %644, %643
  %646 = icmp eq i32 %645, 2
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %17, align 1
  %.v92 = select i1 %639, i64 345, i64 21
  %648 = add i64 %618, %.v92
  store i64 %648, i64* %3, align 8
  br i1 %639, label %block_.L_46d90d, label %block_46d7c9

block_46d7c9:                                     ; preds = %block_.L_46d7b4
  %649 = add i64 %648, 6
  store i64 %649, i64* %3, align 8
  %650 = load i32, i32* %106, align 4
  %651 = add i32 %650, 20
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %RAX.i643, align 8
  %653 = icmp ugt i32 %650, -21
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %12, align 1
  %655 = and i32 %651, 255
  %656 = tail call i32 @llvm.ctpop.i32(i32 %655)
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %13, align 1
  %660 = xor i32 %650, 16
  %661 = xor i32 %660, %651
  %662 = lshr i32 %661, 4
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  store i8 %664, i8* %14, align 1
  %665 = icmp eq i32 %651, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %15, align 1
  %667 = lshr i32 %651, 31
  %668 = trunc i32 %667 to i8
  store i8 %668, i8* %16, align 1
  %669 = lshr i32 %650, 31
  %670 = xor i32 %667, %669
  %671 = add nuw nsw i32 %670, %667
  %672 = icmp eq i32 %671, 2
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %17, align 1
  %674 = sext i32 %651 to i64
  store i64 %674, i64* %RCX.i637, align 8
  %675 = add nsw i64 %674, 12099168
  %676 = add i64 %648, 20
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i8*
  %678 = load i8, i8* %677, align 1
  %679 = zext i8 %678 to i64
  store i64 %679, i64* %RAX.i643, align 8
  %680 = zext i8 %678 to i32
  %681 = add nsw i32 %680, -3
  %682 = icmp ult i8 %678, 3
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %12, align 1
  %684 = and i32 %681, 255
  %685 = tail call i32 @llvm.ctpop.i32(i32 %684)
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = xor i8 %687, 1
  store i8 %688, i8* %13, align 1
  %689 = xor i32 %681, %680
  %690 = lshr i32 %689, 4
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  store i8 %692, i8* %14, align 1
  %693 = icmp eq i32 %681, 0
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %15, align 1
  %695 = lshr i32 %681, 31
  %696 = trunc i32 %695 to i8
  store i8 %696, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v93 = select i1 %693, i64 81, i64 29
  %697 = add i64 %648, %.v93
  store i64 %697, i64* %3, align 8
  br i1 %693, label %block_.L_46d81a, label %block_46d7e6

block_46d7e6:                                     ; preds = %block_46d7c9
  %698 = add i64 %697, 4
  store i64 %698, i64* %3, align 8
  %699 = load i64, i64* %134, align 8
  store i64 %699, i64* %RAX.i643, align 8
  %700 = add i64 %697, 10
  store i64 %700, i64* %3, align 8
  %701 = load i32, i32* %106, align 4
  %702 = add i32 %701, 20
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %RCX.i637, align 8
  %704 = icmp ugt i32 %701, -21
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %12, align 1
  %706 = and i32 %702, 255
  %707 = tail call i32 @llvm.ctpop.i32(i32 %706)
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  store i8 %710, i8* %13, align 1
  %711 = xor i32 %701, 16
  %712 = xor i32 %711, %702
  %713 = lshr i32 %712, 4
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  store i8 %715, i8* %14, align 1
  %716 = icmp eq i32 %702, 0
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %15, align 1
  %718 = lshr i32 %702, 31
  %719 = trunc i32 %718 to i8
  store i8 %719, i8* %16, align 1
  %720 = lshr i32 %701, 31
  %721 = xor i32 %718, %720
  %722 = add nuw nsw i32 %721, %718
  %723 = icmp eq i32 %722, 2
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %17, align 1
  %725 = sext i32 %702 to i64
  store i64 %725, i64* %RDX.i641, align 8
  %726 = shl nsw i64 %725, 2
  %727 = add i64 %699, %726
  %728 = add i64 %697, 20
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  store i8 0, i8* %12, align 1
  %731 = and i32 %730, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %736 = icmp eq i32 %730, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %15, align 1
  %738 = lshr i32 %730, 31
  %739 = trunc i32 %738 to i8
  store i8 %739, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %740 = xor i1 %736, true
  %741 = icmp eq i8 %739, 0
  %742 = and i1 %741, %740
  %.v94 = select i1 %742, i64 295, i64 26
  %743 = add i64 %697, %.v94
  store i64 %743, i64* %3, align 8
  br i1 %742, label %block_.L_46d90d, label %block_46d800

block_46d800:                                     ; preds = %block_46d7e6
  %744 = add i64 %743, 6
  store i64 %744, i64* %3, align 8
  %745 = load i32, i32* %106, align 4
  %746 = add i32 %745, 20
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RAX.i643, align 8
  %748 = icmp ugt i32 %745, -21
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %12, align 1
  %750 = and i32 %746, 255
  %751 = tail call i32 @llvm.ctpop.i32(i32 %750)
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  store i8 %754, i8* %13, align 1
  %755 = xor i32 %745, 16
  %756 = xor i32 %755, %746
  %757 = lshr i32 %756, 4
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  store i8 %759, i8* %14, align 1
  %760 = icmp eq i32 %746, 0
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %15, align 1
  %762 = lshr i32 %746, 31
  %763 = trunc i32 %762 to i8
  store i8 %763, i8* %16, align 1
  %764 = lshr i32 %745, 31
  %765 = xor i32 %762, %764
  %766 = add nuw nsw i32 %765, %762
  %767 = icmp eq i32 %766, 2
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %17, align 1
  %769 = sext i32 %746 to i64
  store i64 %769, i64* %RCX.i637, align 8
  %770 = shl nsw i64 %769, 2
  %771 = add nsw i64 %770, -1616
  %772 = add i64 %771, %102
  %773 = add i64 %743, 20
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = add i32 %775, -1
  %777 = icmp eq i32 %775, 0
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
  %.v95 = select i1 %788, i64 269, i64 26
  %797 = add i64 %743, %.v95
  store i64 %797, i64* %3, align 8
  br i1 %788, label %block_.L_46d90d, label %block_.L_46d81a

block_.L_46d81a:                                  ; preds = %block_46d800, %block_46d7c9
  %798 = phi i64 [ %797, %block_46d800 ], [ %697, %block_46d7c9 ]
  %799 = add i64 %798, 6
  store i64 %799, i64* %3, align 8
  %800 = load i32, i32* %106, align 4
  %801 = add i32 %800, -1
  %802 = zext i32 %801 to i64
  store i64 %802, i64* %RAX.i643, align 8
  %803 = icmp eq i32 %800, 0
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %12, align 1
  %805 = and i32 %801, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805)
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %13, align 1
  %810 = xor i32 %801, %800
  %811 = lshr i32 %810, 4
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %14, align 1
  %814 = icmp eq i32 %801, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %15, align 1
  %816 = lshr i32 %801, 31
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %16, align 1
  %818 = lshr i32 %800, 31
  %819 = xor i32 %816, %818
  %820 = add nuw nsw i32 %819, %818
  %821 = icmp eq i32 %820, 2
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %17, align 1
  %823 = sext i32 %801 to i64
  store i64 %823, i64* %RCX.i637, align 8
  %824 = add nsw i64 %823, 12099168
  %825 = add i64 %798, 20
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i8*
  %827 = load i8, i8* %826, align 1
  %828 = zext i8 %827 to i64
  store i64 %828, i64* %RAX.i643, align 8
  %829 = zext i8 %827 to i32
  %830 = add nsw i32 %829, -3
  %831 = icmp ult i8 %827, 3
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %12, align 1
  %833 = and i32 %830, 255
  %834 = tail call i32 @llvm.ctpop.i32(i32 %833)
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = xor i8 %836, 1
  store i8 %837, i8* %13, align 1
  %838 = xor i32 %830, %829
  %839 = lshr i32 %838, 4
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  store i8 %841, i8* %14, align 1
  %842 = icmp eq i32 %830, 0
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %15, align 1
  %844 = lshr i32 %830, 31
  %845 = trunc i32 %844 to i8
  store i8 %845, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v96 = select i1 %842, i64 81, i64 29
  %846 = add i64 %798, %.v96
  store i64 %846, i64* %3, align 8
  br i1 %842, label %block_.L_46d86b, label %block_46d837

block_46d837:                                     ; preds = %block_.L_46d81a
  %847 = add i64 %846, 4
  store i64 %847, i64* %3, align 8
  %848 = load i64, i64* %134, align 8
  store i64 %848, i64* %RAX.i643, align 8
  %849 = add i64 %846, 10
  store i64 %849, i64* %3, align 8
  %850 = load i32, i32* %106, align 4
  %851 = add i32 %850, -1
  %852 = zext i32 %851 to i64
  store i64 %852, i64* %RCX.i637, align 8
  %853 = icmp eq i32 %850, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %12, align 1
  %855 = and i32 %851, 255
  %856 = tail call i32 @llvm.ctpop.i32(i32 %855)
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %13, align 1
  %860 = xor i32 %851, %850
  %861 = lshr i32 %860, 4
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  store i8 %863, i8* %14, align 1
  %864 = icmp eq i32 %851, 0
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %15, align 1
  %866 = lshr i32 %851, 31
  %867 = trunc i32 %866 to i8
  store i8 %867, i8* %16, align 1
  %868 = lshr i32 %850, 31
  %869 = xor i32 %866, %868
  %870 = add nuw nsw i32 %869, %868
  %871 = icmp eq i32 %870, 2
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %17, align 1
  %873 = sext i32 %851 to i64
  store i64 %873, i64* %RDX.i641, align 8
  %874 = shl nsw i64 %873, 2
  %875 = add i64 %848, %874
  %876 = add i64 %846, 20
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  store i8 0, i8* %12, align 1
  %879 = and i32 %878, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879)
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %884 = icmp eq i32 %878, 0
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %15, align 1
  %886 = lshr i32 %878, 31
  %887 = trunc i32 %886 to i8
  store i8 %887, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %888 = xor i1 %884, true
  %889 = icmp eq i8 %887, 0
  %890 = and i1 %889, %888
  %.v97 = select i1 %890, i64 214, i64 26
  %891 = add i64 %846, %.v97
  store i64 %891, i64* %3, align 8
  br i1 %890, label %block_.L_46d90d, label %block_46d851

block_46d851:                                     ; preds = %block_46d837
  %892 = add i64 %891, 6
  store i64 %892, i64* %3, align 8
  %893 = load i32, i32* %106, align 4
  %894 = add i32 %893, -1
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RAX.i643, align 8
  %896 = icmp eq i32 %893, 0
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %12, align 1
  %898 = and i32 %894, 255
  %899 = tail call i32 @llvm.ctpop.i32(i32 %898)
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  store i8 %902, i8* %13, align 1
  %903 = xor i32 %894, %893
  %904 = lshr i32 %903, 4
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %14, align 1
  %907 = icmp eq i32 %894, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %15, align 1
  %909 = lshr i32 %894, 31
  %910 = trunc i32 %909 to i8
  store i8 %910, i8* %16, align 1
  %911 = lshr i32 %893, 31
  %912 = xor i32 %909, %911
  %913 = add nuw nsw i32 %912, %911
  %914 = icmp eq i32 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %17, align 1
  %916 = sext i32 %894 to i64
  store i64 %916, i64* %RCX.i637, align 8
  %917 = shl nsw i64 %916, 2
  %918 = add nsw i64 %917, -1616
  %919 = add i64 %918, %102
  %920 = add i64 %891, 20
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = add i32 %922, -1
  %924 = icmp eq i32 %922, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %12, align 1
  %926 = and i32 %923, 255
  %927 = tail call i32 @llvm.ctpop.i32(i32 %926)
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = xor i8 %929, 1
  store i8 %930, i8* %13, align 1
  %931 = xor i32 %923, %922
  %932 = lshr i32 %931, 4
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  store i8 %934, i8* %14, align 1
  %935 = icmp eq i32 %923, 0
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %15, align 1
  %937 = lshr i32 %923, 31
  %938 = trunc i32 %937 to i8
  store i8 %938, i8* %16, align 1
  %939 = lshr i32 %922, 31
  %940 = xor i32 %937, %939
  %941 = add nuw nsw i32 %940, %939
  %942 = icmp eq i32 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %17, align 1
  %.v98 = select i1 %935, i64 188, i64 26
  %944 = add i64 %891, %.v98
  store i64 %944, i64* %3, align 8
  br i1 %935, label %block_.L_46d90d, label %block_.L_46d86b

block_.L_46d86b:                                  ; preds = %block_46d851, %block_.L_46d81a
  %945 = phi i64 [ %944, %block_46d851 ], [ %846, %block_.L_46d81a ]
  %946 = add i64 %945, 6
  store i64 %946, i64* %3, align 8
  %947 = load i32, i32* %106, align 4
  %948 = add i32 %947, -20
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RAX.i643, align 8
  %950 = icmp ult i32 %947, 20
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %12, align 1
  %952 = and i32 %948, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %13, align 1
  %957 = xor i32 %947, 16
  %958 = xor i32 %957, %948
  %959 = lshr i32 %958, 4
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  store i8 %961, i8* %14, align 1
  %962 = icmp eq i32 %948, 0
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %15, align 1
  %964 = lshr i32 %948, 31
  %965 = trunc i32 %964 to i8
  store i8 %965, i8* %16, align 1
  %966 = lshr i32 %947, 31
  %967 = xor i32 %964, %966
  %968 = add nuw nsw i32 %967, %966
  %969 = icmp eq i32 %968, 2
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %17, align 1
  %971 = sext i32 %948 to i64
  store i64 %971, i64* %RCX.i637, align 8
  %972 = add nsw i64 %971, 12099168
  %973 = add i64 %945, 20
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i8*
  %975 = load i8, i8* %974, align 1
  %976 = zext i8 %975 to i64
  store i64 %976, i64* %RAX.i643, align 8
  %977 = zext i8 %975 to i32
  %978 = add nsw i32 %977, -3
  %979 = icmp ult i8 %975, 3
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %12, align 1
  %981 = and i32 %978, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981)
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %13, align 1
  %986 = xor i32 %978, %977
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %14, align 1
  %990 = icmp eq i32 %978, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %15, align 1
  %992 = lshr i32 %978, 31
  %993 = trunc i32 %992 to i8
  store i8 %993, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v99 = select i1 %990, i64 81, i64 29
  %994 = add i64 %945, %.v99
  store i64 %994, i64* %3, align 8
  br i1 %990, label %block_.L_46d8bc, label %block_46d888

block_46d888:                                     ; preds = %block_.L_46d86b
  %995 = add i64 %994, 4
  store i64 %995, i64* %3, align 8
  %996 = load i64, i64* %134, align 8
  store i64 %996, i64* %RAX.i643, align 8
  %997 = add i64 %994, 10
  store i64 %997, i64* %3, align 8
  %998 = load i32, i32* %106, align 4
  %999 = add i32 %998, -20
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %RCX.i637, align 8
  %1001 = icmp ult i32 %998, 20
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %12, align 1
  %1003 = and i32 %999, 255
  %1004 = tail call i32 @llvm.ctpop.i32(i32 %1003)
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  store i8 %1007, i8* %13, align 1
  %1008 = xor i32 %998, 16
  %1009 = xor i32 %1008, %999
  %1010 = lshr i32 %1009, 4
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  store i8 %1012, i8* %14, align 1
  %1013 = icmp eq i32 %999, 0
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %15, align 1
  %1015 = lshr i32 %999, 31
  %1016 = trunc i32 %1015 to i8
  store i8 %1016, i8* %16, align 1
  %1017 = lshr i32 %998, 31
  %1018 = xor i32 %1015, %1017
  %1019 = add nuw nsw i32 %1018, %1017
  %1020 = icmp eq i32 %1019, 2
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %17, align 1
  %1022 = sext i32 %999 to i64
  store i64 %1022, i64* %RDX.i641, align 8
  %1023 = shl nsw i64 %1022, 2
  %1024 = add i64 %996, %1023
  %1025 = add i64 %994, 20
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  %1027 = load i32, i32* %1026, align 4
  store i8 0, i8* %12, align 1
  %1028 = and i32 %1027, 255
  %1029 = tail call i32 @llvm.ctpop.i32(i32 %1028)
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = xor i8 %1031, 1
  store i8 %1032, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1033 = icmp eq i32 %1027, 0
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %15, align 1
  %1035 = lshr i32 %1027, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1037 = xor i1 %1033, true
  %1038 = icmp eq i8 %1036, 0
  %1039 = and i1 %1038, %1037
  %.v100 = select i1 %1039, i64 133, i64 26
  %1040 = add i64 %994, %.v100
  store i64 %1040, i64* %3, align 8
  br i1 %1039, label %block_.L_46d90d, label %block_46d8a2

block_46d8a2:                                     ; preds = %block_46d888
  %1041 = add i64 %1040, 6
  store i64 %1041, i64* %3, align 8
  %1042 = load i32, i32* %106, align 4
  %1043 = add i32 %1042, -20
  %1044 = zext i32 %1043 to i64
  store i64 %1044, i64* %RAX.i643, align 8
  %1045 = icmp ult i32 %1042, 20
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %12, align 1
  %1047 = and i32 %1043, 255
  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %13, align 1
  %1052 = xor i32 %1042, 16
  %1053 = xor i32 %1052, %1043
  %1054 = lshr i32 %1053, 4
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  store i8 %1056, i8* %14, align 1
  %1057 = icmp eq i32 %1043, 0
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %15, align 1
  %1059 = lshr i32 %1043, 31
  %1060 = trunc i32 %1059 to i8
  store i8 %1060, i8* %16, align 1
  %1061 = lshr i32 %1042, 31
  %1062 = xor i32 %1059, %1061
  %1063 = add nuw nsw i32 %1062, %1061
  %1064 = icmp eq i32 %1063, 2
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %17, align 1
  %1066 = sext i32 %1043 to i64
  store i64 %1066, i64* %RCX.i637, align 8
  %1067 = shl nsw i64 %1066, 2
  %1068 = add nsw i64 %1067, -1616
  %1069 = add i64 %1068, %102
  %1070 = add i64 %1040, 20
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = add i32 %1072, -1
  %1074 = icmp eq i32 %1072, 0
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %12, align 1
  %1076 = and i32 %1073, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %13, align 1
  %1081 = xor i32 %1073, %1072
  %1082 = lshr i32 %1081, 4
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %14, align 1
  %1085 = icmp eq i32 %1073, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %15, align 1
  %1087 = lshr i32 %1073, 31
  %1088 = trunc i32 %1087 to i8
  store i8 %1088, i8* %16, align 1
  %1089 = lshr i32 %1072, 31
  %1090 = xor i32 %1087, %1089
  %1091 = add nuw nsw i32 %1090, %1089
  %1092 = icmp eq i32 %1091, 2
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %17, align 1
  %.v101 = select i1 %1085, i64 107, i64 26
  %1094 = add i64 %1040, %.v101
  store i64 %1094, i64* %3, align 8
  br i1 %1085, label %block_.L_46d90d, label %block_.L_46d8bc

block_.L_46d8bc:                                  ; preds = %block_46d8a2, %block_.L_46d86b
  %1095 = phi i64 [ %1094, %block_46d8a2 ], [ %994, %block_.L_46d86b ]
  %1096 = add i64 %1095, 6
  store i64 %1096, i64* %3, align 8
  %1097 = load i32, i32* %106, align 4
  %1098 = add i32 %1097, 1
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RAX.i643, align 8
  %1100 = icmp eq i32 %1097, -1
  %1101 = icmp eq i32 %1098, 0
  %1102 = or i1 %1100, %1101
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %12, align 1
  %1104 = and i32 %1098, 255
  %1105 = tail call i32 @llvm.ctpop.i32(i32 %1104)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  store i8 %1108, i8* %13, align 1
  %1109 = xor i32 %1098, %1097
  %1110 = lshr i32 %1109, 4
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  store i8 %1112, i8* %14, align 1
  %1113 = zext i1 %1101 to i8
  store i8 %1113, i8* %15, align 1
  %1114 = lshr i32 %1098, 31
  %1115 = trunc i32 %1114 to i8
  store i8 %1115, i8* %16, align 1
  %1116 = lshr i32 %1097, 31
  %1117 = xor i32 %1114, %1116
  %1118 = add nuw nsw i32 %1117, %1114
  %1119 = icmp eq i32 %1118, 2
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %17, align 1
  %1121 = sext i32 %1098 to i64
  store i64 %1121, i64* %RCX.i637, align 8
  %1122 = add nsw i64 %1121, 12099168
  %1123 = add i64 %1095, 20
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i8*
  %1125 = load i8, i8* %1124, align 1
  %1126 = zext i8 %1125 to i64
  store i64 %1126, i64* %RAX.i643, align 8
  %1127 = zext i8 %1125 to i32
  %1128 = add nsw i32 %1127, -3
  %1129 = icmp ult i8 %1125, 3
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %12, align 1
  %1131 = and i32 %1128, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %13, align 1
  %1136 = xor i32 %1128, %1127
  %1137 = lshr i32 %1136, 4
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  store i8 %1139, i8* %14, align 1
  %1140 = icmp eq i32 %1128, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %15, align 1
  %1142 = lshr i32 %1128, 31
  %1143 = trunc i32 %1142 to i8
  store i8 %1143, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v102 = select i1 %1140, i64 91, i64 29
  %1144 = add i64 %1095, %.v102
  store i64 %1144, i64* %3, align 8
  br i1 %1140, label %block_.L_46d917, label %block_46d8d9

block_46d8d9:                                     ; preds = %block_.L_46d8bc
  %1145 = add i64 %1144, 4
  store i64 %1145, i64* %3, align 8
  %1146 = load i64, i64* %134, align 8
  store i64 %1146, i64* %RAX.i643, align 8
  %1147 = add i64 %1144, 10
  store i64 %1147, i64* %3, align 8
  %1148 = load i32, i32* %106, align 4
  %1149 = add i32 %1148, 1
  %1150 = zext i32 %1149 to i64
  store i64 %1150, i64* %RCX.i637, align 8
  %1151 = icmp eq i32 %1148, -1
  %1152 = icmp eq i32 %1149, 0
  %1153 = or i1 %1151, %1152
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %12, align 1
  %1155 = and i32 %1149, 255
  %1156 = tail call i32 @llvm.ctpop.i32(i32 %1155)
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = xor i8 %1158, 1
  store i8 %1159, i8* %13, align 1
  %1160 = xor i32 %1149, %1148
  %1161 = lshr i32 %1160, 4
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  store i8 %1163, i8* %14, align 1
  %1164 = zext i1 %1152 to i8
  store i8 %1164, i8* %15, align 1
  %1165 = lshr i32 %1149, 31
  %1166 = trunc i32 %1165 to i8
  store i8 %1166, i8* %16, align 1
  %1167 = lshr i32 %1148, 31
  %1168 = xor i32 %1165, %1167
  %1169 = add nuw nsw i32 %1168, %1165
  %1170 = icmp eq i32 %1169, 2
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %17, align 1
  %1172 = sext i32 %1149 to i64
  store i64 %1172, i64* %RDX.i641, align 8
  %1173 = shl nsw i64 %1172, 2
  %1174 = add i64 %1146, %1173
  %1175 = add i64 %1144, 20
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i32*
  %1177 = load i32, i32* %1176, align 4
  store i8 0, i8* %12, align 1
  %1178 = and i32 %1177, 255
  %1179 = tail call i32 @llvm.ctpop.i32(i32 %1178)
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = xor i8 %1181, 1
  store i8 %1182, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1183 = icmp eq i32 %1177, 0
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %15, align 1
  %1185 = lshr i32 %1177, 31
  %1186 = trunc i32 %1185 to i8
  store i8 %1186, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1187 = xor i1 %1183, true
  %1188 = icmp eq i8 %1186, 0
  %1189 = and i1 %1188, %1187
  %.v103 = select i1 %1189, i64 52, i64 26
  %1190 = add i64 %1144, %.v103
  store i64 %1190, i64* %3, align 8
  br i1 %1189, label %block_.L_46d90d, label %block_46d8f3

block_46d8f3:                                     ; preds = %block_46d8d9
  %1191 = add i64 %1190, 6
  store i64 %1191, i64* %3, align 8
  %1192 = load i32, i32* %106, align 4
  %1193 = add i32 %1192, 1
  %1194 = zext i32 %1193 to i64
  store i64 %1194, i64* %RAX.i643, align 8
  %1195 = icmp eq i32 %1192, -1
  %1196 = icmp eq i32 %1193, 0
  %1197 = or i1 %1195, %1196
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %12, align 1
  %1199 = and i32 %1193, 255
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  store i8 %1203, i8* %13, align 1
  %1204 = xor i32 %1193, %1192
  %1205 = lshr i32 %1204, 4
  %1206 = trunc i32 %1205 to i8
  %1207 = and i8 %1206, 1
  store i8 %1207, i8* %14, align 1
  %1208 = zext i1 %1196 to i8
  store i8 %1208, i8* %15, align 1
  %1209 = lshr i32 %1193, 31
  %1210 = trunc i32 %1209 to i8
  store i8 %1210, i8* %16, align 1
  %1211 = lshr i32 %1192, 31
  %1212 = xor i32 %1209, %1211
  %1213 = add nuw nsw i32 %1212, %1209
  %1214 = icmp eq i32 %1213, 2
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %17, align 1
  %1216 = sext i32 %1193 to i64
  store i64 %1216, i64* %RCX.i637, align 8
  %1217 = shl nsw i64 %1216, 2
  %1218 = add nsw i64 %1217, -1616
  %1219 = add i64 %1218, %102
  %1220 = add i64 %1190, 20
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = add i32 %1222, -1
  %1224 = icmp eq i32 %1222, 0
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %12, align 1
  %1226 = and i32 %1223, 255
  %1227 = tail call i32 @llvm.ctpop.i32(i32 %1226)
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  %1230 = xor i8 %1229, 1
  store i8 %1230, i8* %13, align 1
  %1231 = xor i32 %1223, %1222
  %1232 = lshr i32 %1231, 4
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  store i8 %1234, i8* %14, align 1
  %1235 = icmp eq i32 %1223, 0
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %15, align 1
  %1237 = lshr i32 %1223, 31
  %1238 = trunc i32 %1237 to i8
  store i8 %1238, i8* %16, align 1
  %1239 = lshr i32 %1222, 31
  %1240 = xor i32 %1237, %1239
  %1241 = add nuw nsw i32 %1240, %1239
  %1242 = icmp eq i32 %1241, 2
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %17, align 1
  %.v104 = select i1 %1235, i64 26, i64 36
  %1244 = add i64 %1190, %.v104
  store i64 %1244, i64* %3, align 8
  br i1 %1235, label %block_.L_46d90d, label %block_.L_46d917

block_.L_46d90d:                                  ; preds = %block_46d8f3, %block_46d8d9, %block_46d8a2, %block_46d888, %block_46d851, %block_46d837, %block_46d800, %block_46d7e6, %block_.L_46d7b4
  %1245 = phi i64 [ %1244, %block_46d8f3 ], [ %1190, %block_46d8d9 ], [ %1094, %block_46d8a2 ], [ %1040, %block_46d888 ], [ %944, %block_46d851 ], [ %891, %block_46d837 ], [ %797, %block_46d800 ], [ %743, %block_46d7e6 ], [ %648, %block_.L_46d7b4 ]
  %1246 = add i64 %102, -1628
  %1247 = add i64 %1245, 10
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  store i32 1, i32* %1248, align 4
  %.pre63 = load i64, i64* %RBP.i, align 8
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_46d917

block_.L_46d917:                                  ; preds = %block_46d8f3, %block_.L_46d90d, %block_.L_46d8bc
  %1249 = phi i64 [ %.pre64, %block_.L_46d90d ], [ %1244, %block_46d8f3 ], [ %1144, %block_.L_46d8bc ]
  %1250 = phi i64 [ %.pre63, %block_.L_46d90d ], [ %102, %block_46d8f3 ], [ %102, %block_.L_46d8bc ]
  %1251 = add i64 %1250, -1620
  %1252 = add i64 %1249, 7
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i32*
  %1254 = load i32, i32* %1253, align 4
  %1255 = sext i32 %1254 to i64
  store i64 %1255, i64* %RAX.i643, align 8
  %1256 = shl nsw i64 %1255, 2
  %1257 = add i64 %1250, -1616
  %1258 = add i64 %1257, %1256
  %1259 = add i64 %1249, 15
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = add i32 %1261, -2
  %1263 = icmp ult i32 %1261, 2
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %12, align 1
  %1265 = and i32 %1262, 255
  %1266 = tail call i32 @llvm.ctpop.i32(i32 %1265)
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  store i8 %1269, i8* %13, align 1
  %1270 = xor i32 %1262, %1261
  %1271 = lshr i32 %1270, 4
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  store i8 %1273, i8* %14, align 1
  %1274 = icmp eq i32 %1262, 0
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %15, align 1
  %1276 = lshr i32 %1262, 31
  %1277 = trunc i32 %1276 to i8
  store i8 %1277, i8* %16, align 1
  %1278 = lshr i32 %1261, 31
  %1279 = xor i32 %1276, %1278
  %1280 = add nuw nsw i32 %1279, %1278
  %1281 = icmp eq i32 %1280, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %17, align 1
  %.v105 = select i1 %1274, i64 345, i64 21
  %1283 = add i64 %1249, %.v105
  store i64 %1283, i64* %3, align 8
  br i1 %1274, label %block_.L_46da70, label %block_46d92c

block_46d92c:                                     ; preds = %block_.L_46d917
  %1284 = add i64 %1283, 6
  store i64 %1284, i64* %3, align 8
  %1285 = load i32, i32* %1253, align 4
  %1286 = add i32 %1285, 20
  %1287 = zext i32 %1286 to i64
  store i64 %1287, i64* %RAX.i643, align 8
  %1288 = icmp ugt i32 %1285, -21
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %12, align 1
  %1290 = and i32 %1286, 255
  %1291 = tail call i32 @llvm.ctpop.i32(i32 %1290)
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  %1294 = xor i8 %1293, 1
  store i8 %1294, i8* %13, align 1
  %1295 = xor i32 %1285, 16
  %1296 = xor i32 %1295, %1286
  %1297 = lshr i32 %1296, 4
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  store i8 %1299, i8* %14, align 1
  %1300 = icmp eq i32 %1286, 0
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %15, align 1
  %1302 = lshr i32 %1286, 31
  %1303 = trunc i32 %1302 to i8
  store i8 %1303, i8* %16, align 1
  %1304 = lshr i32 %1285, 31
  %1305 = xor i32 %1302, %1304
  %1306 = add nuw nsw i32 %1305, %1302
  %1307 = icmp eq i32 %1306, 2
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %17, align 1
  %1309 = sext i32 %1286 to i64
  store i64 %1309, i64* %RCX.i637, align 8
  %1310 = add nsw i64 %1309, 12099168
  %1311 = add i64 %1283, 20
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i8*
  %1313 = load i8, i8* %1312, align 1
  %1314 = zext i8 %1313 to i64
  store i64 %1314, i64* %RAX.i643, align 8
  %1315 = zext i8 %1313 to i32
  %1316 = add nsw i32 %1315, -3
  %1317 = icmp ult i8 %1313, 3
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %12, align 1
  %1319 = and i32 %1316, 255
  %1320 = tail call i32 @llvm.ctpop.i32(i32 %1319)
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  %1323 = xor i8 %1322, 1
  store i8 %1323, i8* %13, align 1
  %1324 = xor i32 %1316, %1315
  %1325 = lshr i32 %1324, 4
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  store i8 %1327, i8* %14, align 1
  %1328 = icmp eq i32 %1316, 0
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %15, align 1
  %1330 = lshr i32 %1316, 31
  %1331 = trunc i32 %1330 to i8
  store i8 %1331, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v106 = select i1 %1328, i64 81, i64 29
  %1332 = add i64 %1283, %.v106
  store i64 %1332, i64* %3, align 8
  br i1 %1328, label %block_.L_46d97d, label %block_46d949

block_46d949:                                     ; preds = %block_46d92c
  %1333 = add i64 %1250, -8
  %1334 = add i64 %1332, 4
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i64*
  %1336 = load i64, i64* %1335, align 8
  store i64 %1336, i64* %RAX.i643, align 8
  %1337 = add i64 %1332, 10
  store i64 %1337, i64* %3, align 8
  %1338 = load i32, i32* %1253, align 4
  %1339 = add i32 %1338, 20
  %1340 = zext i32 %1339 to i64
  store i64 %1340, i64* %RCX.i637, align 8
  %1341 = icmp ugt i32 %1338, -21
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %12, align 1
  %1343 = and i32 %1339, 255
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1343)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %13, align 1
  %1348 = xor i32 %1338, 16
  %1349 = xor i32 %1348, %1339
  %1350 = lshr i32 %1349, 4
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  store i8 %1352, i8* %14, align 1
  %1353 = icmp eq i32 %1339, 0
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %15, align 1
  %1355 = lshr i32 %1339, 31
  %1356 = trunc i32 %1355 to i8
  store i8 %1356, i8* %16, align 1
  %1357 = lshr i32 %1338, 31
  %1358 = xor i32 %1355, %1357
  %1359 = add nuw nsw i32 %1358, %1355
  %1360 = icmp eq i32 %1359, 2
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %17, align 1
  %1362 = sext i32 %1339 to i64
  store i64 %1362, i64* %RDX.i641, align 8
  %1363 = shl nsw i64 %1362, 2
  %1364 = add i64 %1336, %1363
  %1365 = add i64 %1332, 20
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  store i8 0, i8* %12, align 1
  %1368 = and i32 %1367, 255
  %1369 = tail call i32 @llvm.ctpop.i32(i32 %1368)
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = xor i8 %1371, 1
  store i8 %1372, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1373 = icmp eq i32 %1367, 0
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %15, align 1
  %1375 = lshr i32 %1367, 31
  %1376 = trunc i32 %1375 to i8
  store i8 %1376, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1377 = icmp ne i8 %1376, 0
  %.v = select i1 %1377, i64 275, i64 6
  %1378 = add i64 %1365, %.v
  store i64 %1378, i64* %3, align 8
  br i1 %1377, label %block_.L_46da70, label %block_46d963

block_46d963:                                     ; preds = %block_46d949
  %1379 = add i64 %1378, 6
  store i64 %1379, i64* %3, align 8
  %1380 = load i32, i32* %1253, align 4
  %1381 = add i32 %1380, 20
  %1382 = zext i32 %1381 to i64
  store i64 %1382, i64* %RAX.i643, align 8
  %1383 = icmp ugt i32 %1380, -21
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %12, align 1
  %1385 = and i32 %1381, 255
  %1386 = tail call i32 @llvm.ctpop.i32(i32 %1385)
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  %1389 = xor i8 %1388, 1
  store i8 %1389, i8* %13, align 1
  %1390 = xor i32 %1380, 16
  %1391 = xor i32 %1390, %1381
  %1392 = lshr i32 %1391, 4
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  store i8 %1394, i8* %14, align 1
  %1395 = icmp eq i32 %1381, 0
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %15, align 1
  %1397 = lshr i32 %1381, 31
  %1398 = trunc i32 %1397 to i8
  store i8 %1398, i8* %16, align 1
  %1399 = lshr i32 %1380, 31
  %1400 = xor i32 %1397, %1399
  %1401 = add nuw nsw i32 %1400, %1397
  %1402 = icmp eq i32 %1401, 2
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %17, align 1
  %1404 = sext i32 %1381 to i64
  store i64 %1404, i64* %RCX.i637, align 8
  %1405 = shl nsw i64 %1404, 2
  %1406 = add nsw i64 %1405, -1616
  %1407 = add i64 %1406, %1250
  %1408 = add i64 %1378, 20
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = add i32 %1410, -2
  %1412 = icmp ult i32 %1410, 2
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %12, align 1
  %1414 = and i32 %1411, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414)
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %13, align 1
  %1419 = xor i32 %1411, %1410
  %1420 = lshr i32 %1419, 4
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  store i8 %1422, i8* %14, align 1
  %1423 = icmp eq i32 %1411, 0
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %15, align 1
  %1425 = lshr i32 %1411, 31
  %1426 = trunc i32 %1425 to i8
  store i8 %1426, i8* %16, align 1
  %1427 = lshr i32 %1410, 31
  %1428 = xor i32 %1425, %1427
  %1429 = add nuw nsw i32 %1428, %1427
  %1430 = icmp eq i32 %1429, 2
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %17, align 1
  %.v107 = select i1 %1423, i64 269, i64 26
  %1432 = add i64 %1378, %.v107
  store i64 %1432, i64* %3, align 8
  br i1 %1423, label %block_.L_46da70, label %block_.L_46d97d

block_.L_46d97d:                                  ; preds = %block_46d963, %block_46d92c
  %1433 = phi i64 [ %1432, %block_46d963 ], [ %1332, %block_46d92c ]
  %1434 = add i64 %1433, 6
  store i64 %1434, i64* %3, align 8
  %1435 = load i32, i32* %1253, align 4
  %1436 = add i32 %1435, -1
  %1437 = zext i32 %1436 to i64
  store i64 %1437, i64* %RAX.i643, align 8
  %1438 = icmp eq i32 %1435, 0
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %12, align 1
  %1440 = and i32 %1436, 255
  %1441 = tail call i32 @llvm.ctpop.i32(i32 %1440)
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  %1444 = xor i8 %1443, 1
  store i8 %1444, i8* %13, align 1
  %1445 = xor i32 %1436, %1435
  %1446 = lshr i32 %1445, 4
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  store i8 %1448, i8* %14, align 1
  %1449 = icmp eq i32 %1436, 0
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %15, align 1
  %1451 = lshr i32 %1436, 31
  %1452 = trunc i32 %1451 to i8
  store i8 %1452, i8* %16, align 1
  %1453 = lshr i32 %1435, 31
  %1454 = xor i32 %1451, %1453
  %1455 = add nuw nsw i32 %1454, %1453
  %1456 = icmp eq i32 %1455, 2
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %17, align 1
  %1458 = sext i32 %1436 to i64
  store i64 %1458, i64* %RCX.i637, align 8
  %1459 = add nsw i64 %1458, 12099168
  %1460 = add i64 %1433, 20
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i8*
  %1462 = load i8, i8* %1461, align 1
  %1463 = zext i8 %1462 to i64
  store i64 %1463, i64* %RAX.i643, align 8
  %1464 = zext i8 %1462 to i32
  %1465 = add nsw i32 %1464, -3
  %1466 = icmp ult i8 %1462, 3
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %12, align 1
  %1468 = and i32 %1465, 255
  %1469 = tail call i32 @llvm.ctpop.i32(i32 %1468)
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = xor i8 %1471, 1
  store i8 %1472, i8* %13, align 1
  %1473 = xor i32 %1465, %1464
  %1474 = lshr i32 %1473, 4
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  store i8 %1476, i8* %14, align 1
  %1477 = icmp eq i32 %1465, 0
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %15, align 1
  %1479 = lshr i32 %1465, 31
  %1480 = trunc i32 %1479 to i8
  store i8 %1480, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v108 = select i1 %1477, i64 81, i64 29
  %1481 = add i64 %1433, %.v108
  store i64 %1481, i64* %3, align 8
  br i1 %1477, label %block_.L_46d9ce, label %block_46d99a

block_46d99a:                                     ; preds = %block_.L_46d97d
  %1482 = add i64 %1250, -8
  %1483 = add i64 %1481, 4
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i64*
  %1485 = load i64, i64* %1484, align 8
  store i64 %1485, i64* %RAX.i643, align 8
  %1486 = add i64 %1481, 10
  store i64 %1486, i64* %3, align 8
  %1487 = load i32, i32* %1253, align 4
  %1488 = add i32 %1487, -1
  %1489 = zext i32 %1488 to i64
  store i64 %1489, i64* %RCX.i637, align 8
  %1490 = icmp eq i32 %1487, 0
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %12, align 1
  %1492 = and i32 %1488, 255
  %1493 = tail call i32 @llvm.ctpop.i32(i32 %1492)
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  %1496 = xor i8 %1495, 1
  store i8 %1496, i8* %13, align 1
  %1497 = xor i32 %1488, %1487
  %1498 = lshr i32 %1497, 4
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  store i8 %1500, i8* %14, align 1
  %1501 = icmp eq i32 %1488, 0
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %15, align 1
  %1503 = lshr i32 %1488, 31
  %1504 = trunc i32 %1503 to i8
  store i8 %1504, i8* %16, align 1
  %1505 = lshr i32 %1487, 31
  %1506 = xor i32 %1503, %1505
  %1507 = add nuw nsw i32 %1506, %1505
  %1508 = icmp eq i32 %1507, 2
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %17, align 1
  %1510 = sext i32 %1488 to i64
  store i64 %1510, i64* %RDX.i641, align 8
  %1511 = shl nsw i64 %1510, 2
  %1512 = add i64 %1485, %1511
  %1513 = add i64 %1481, 20
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1512 to i32*
  %1515 = load i32, i32* %1514, align 4
  store i8 0, i8* %12, align 1
  %1516 = and i32 %1515, 255
  %1517 = tail call i32 @llvm.ctpop.i32(i32 %1516)
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  store i8 %1520, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1521 = icmp eq i32 %1515, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %15, align 1
  %1523 = lshr i32 %1515, 31
  %1524 = trunc i32 %1523 to i8
  store i8 %1524, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1525 = icmp ne i8 %1524, 0
  %.v52 = select i1 %1525, i64 194, i64 6
  %1526 = add i64 %1513, %.v52
  store i64 %1526, i64* %3, align 8
  br i1 %1525, label %block_.L_46da70, label %block_46d9b4

block_46d9b4:                                     ; preds = %block_46d99a
  %1527 = add i64 %1526, 6
  store i64 %1527, i64* %3, align 8
  %1528 = load i32, i32* %1253, align 4
  %1529 = add i32 %1528, -1
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RAX.i643, align 8
  %1531 = icmp eq i32 %1528, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %12, align 1
  %1533 = and i32 %1529, 255
  %1534 = tail call i32 @llvm.ctpop.i32(i32 %1533)
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  %1537 = xor i8 %1536, 1
  store i8 %1537, i8* %13, align 1
  %1538 = xor i32 %1529, %1528
  %1539 = lshr i32 %1538, 4
  %1540 = trunc i32 %1539 to i8
  %1541 = and i8 %1540, 1
  store i8 %1541, i8* %14, align 1
  %1542 = icmp eq i32 %1529, 0
  %1543 = zext i1 %1542 to i8
  store i8 %1543, i8* %15, align 1
  %1544 = lshr i32 %1529, 31
  %1545 = trunc i32 %1544 to i8
  store i8 %1545, i8* %16, align 1
  %1546 = lshr i32 %1528, 31
  %1547 = xor i32 %1544, %1546
  %1548 = add nuw nsw i32 %1547, %1546
  %1549 = icmp eq i32 %1548, 2
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %17, align 1
  %1551 = sext i32 %1529 to i64
  store i64 %1551, i64* %RCX.i637, align 8
  %1552 = shl nsw i64 %1551, 2
  %1553 = add nsw i64 %1552, -1616
  %1554 = add i64 %1553, %1250
  %1555 = add i64 %1526, 20
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1554 to i32*
  %1557 = load i32, i32* %1556, align 4
  %1558 = add i32 %1557, -2
  %1559 = icmp ult i32 %1557, 2
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %12, align 1
  %1561 = and i32 %1558, 255
  %1562 = tail call i32 @llvm.ctpop.i32(i32 %1561)
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  %1565 = xor i8 %1564, 1
  store i8 %1565, i8* %13, align 1
  %1566 = xor i32 %1558, %1557
  %1567 = lshr i32 %1566, 4
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  store i8 %1569, i8* %14, align 1
  %1570 = icmp eq i32 %1558, 0
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %15, align 1
  %1572 = lshr i32 %1558, 31
  %1573 = trunc i32 %1572 to i8
  store i8 %1573, i8* %16, align 1
  %1574 = lshr i32 %1557, 31
  %1575 = xor i32 %1572, %1574
  %1576 = add nuw nsw i32 %1575, %1574
  %1577 = icmp eq i32 %1576, 2
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %17, align 1
  %.v109 = select i1 %1570, i64 188, i64 26
  %1579 = add i64 %1526, %.v109
  store i64 %1579, i64* %3, align 8
  br i1 %1570, label %block_.L_46da70, label %block_.L_46d9ce

block_.L_46d9ce:                                  ; preds = %block_46d9b4, %block_.L_46d97d
  %1580 = phi i64 [ %1579, %block_46d9b4 ], [ %1481, %block_.L_46d97d ]
  %1581 = add i64 %1580, 6
  store i64 %1581, i64* %3, align 8
  %1582 = load i32, i32* %1253, align 4
  %1583 = add i32 %1582, -20
  %1584 = zext i32 %1583 to i64
  store i64 %1584, i64* %RAX.i643, align 8
  %1585 = icmp ult i32 %1582, 20
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %12, align 1
  %1587 = and i32 %1583, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %13, align 1
  %1592 = xor i32 %1582, 16
  %1593 = xor i32 %1592, %1583
  %1594 = lshr i32 %1593, 4
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %14, align 1
  %1597 = icmp eq i32 %1583, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %15, align 1
  %1599 = lshr i32 %1583, 31
  %1600 = trunc i32 %1599 to i8
  store i8 %1600, i8* %16, align 1
  %1601 = lshr i32 %1582, 31
  %1602 = xor i32 %1599, %1601
  %1603 = add nuw nsw i32 %1602, %1601
  %1604 = icmp eq i32 %1603, 2
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %17, align 1
  %1606 = sext i32 %1583 to i64
  store i64 %1606, i64* %RCX.i637, align 8
  %1607 = add nsw i64 %1606, 12099168
  %1608 = add i64 %1580, 20
  store i64 %1608, i64* %3, align 8
  %1609 = inttoptr i64 %1607 to i8*
  %1610 = load i8, i8* %1609, align 1
  %1611 = zext i8 %1610 to i64
  store i64 %1611, i64* %RAX.i643, align 8
  %1612 = zext i8 %1610 to i32
  %1613 = add nsw i32 %1612, -3
  %1614 = icmp ult i8 %1610, 3
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %12, align 1
  %1616 = and i32 %1613, 255
  %1617 = tail call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %13, align 1
  %1621 = xor i32 %1613, %1612
  %1622 = lshr i32 %1621, 4
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  store i8 %1624, i8* %14, align 1
  %1625 = icmp eq i32 %1613, 0
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %15, align 1
  %1627 = lshr i32 %1613, 31
  %1628 = trunc i32 %1627 to i8
  store i8 %1628, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v110 = select i1 %1625, i64 81, i64 29
  %1629 = add i64 %1580, %.v110
  store i64 %1629, i64* %3, align 8
  br i1 %1625, label %block_.L_46da1f, label %block_46d9eb

block_46d9eb:                                     ; preds = %block_.L_46d9ce
  %1630 = add i64 %1250, -8
  %1631 = add i64 %1629, 4
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1630 to i64*
  %1633 = load i64, i64* %1632, align 8
  store i64 %1633, i64* %RAX.i643, align 8
  %1634 = add i64 %1629, 10
  store i64 %1634, i64* %3, align 8
  %1635 = load i32, i32* %1253, align 4
  %1636 = add i32 %1635, -20
  %1637 = zext i32 %1636 to i64
  store i64 %1637, i64* %RCX.i637, align 8
  %1638 = icmp ult i32 %1635, 20
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %12, align 1
  %1640 = and i32 %1636, 255
  %1641 = tail call i32 @llvm.ctpop.i32(i32 %1640)
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = xor i8 %1643, 1
  store i8 %1644, i8* %13, align 1
  %1645 = xor i32 %1635, 16
  %1646 = xor i32 %1645, %1636
  %1647 = lshr i32 %1646, 4
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  store i8 %1649, i8* %14, align 1
  %1650 = icmp eq i32 %1636, 0
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %15, align 1
  %1652 = lshr i32 %1636, 31
  %1653 = trunc i32 %1652 to i8
  store i8 %1653, i8* %16, align 1
  %1654 = lshr i32 %1635, 31
  %1655 = xor i32 %1652, %1654
  %1656 = add nuw nsw i32 %1655, %1654
  %1657 = icmp eq i32 %1656, 2
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %17, align 1
  %1659 = sext i32 %1636 to i64
  store i64 %1659, i64* %RDX.i641, align 8
  %1660 = shl nsw i64 %1659, 2
  %1661 = add i64 %1633, %1660
  %1662 = add i64 %1629, 20
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i32*
  %1664 = load i32, i32* %1663, align 4
  store i8 0, i8* %12, align 1
  %1665 = and i32 %1664, 255
  %1666 = tail call i32 @llvm.ctpop.i32(i32 %1665)
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = xor i8 %1668, 1
  store i8 %1669, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1670 = icmp eq i32 %1664, 0
  %1671 = zext i1 %1670 to i8
  store i8 %1671, i8* %15, align 1
  %1672 = lshr i32 %1664, 31
  %1673 = trunc i32 %1672 to i8
  store i8 %1673, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1674 = icmp ne i8 %1673, 0
  %.v53 = select i1 %1674, i64 113, i64 6
  %1675 = add i64 %1662, %.v53
  store i64 %1675, i64* %3, align 8
  br i1 %1674, label %block_.L_46da70, label %block_46da05

block_46da05:                                     ; preds = %block_46d9eb
  %1676 = add i64 %1675, 6
  store i64 %1676, i64* %3, align 8
  %1677 = load i32, i32* %1253, align 4
  %1678 = add i32 %1677, -20
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RAX.i643, align 8
  %1680 = icmp ult i32 %1677, 20
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %12, align 1
  %1682 = and i32 %1678, 255
  %1683 = tail call i32 @llvm.ctpop.i32(i32 %1682)
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = xor i8 %1685, 1
  store i8 %1686, i8* %13, align 1
  %1687 = xor i32 %1677, 16
  %1688 = xor i32 %1687, %1678
  %1689 = lshr i32 %1688, 4
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  store i8 %1691, i8* %14, align 1
  %1692 = icmp eq i32 %1678, 0
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %15, align 1
  %1694 = lshr i32 %1678, 31
  %1695 = trunc i32 %1694 to i8
  store i8 %1695, i8* %16, align 1
  %1696 = lshr i32 %1677, 31
  %1697 = xor i32 %1694, %1696
  %1698 = add nuw nsw i32 %1697, %1696
  %1699 = icmp eq i32 %1698, 2
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %17, align 1
  %1701 = sext i32 %1678 to i64
  store i64 %1701, i64* %RCX.i637, align 8
  %1702 = shl nsw i64 %1701, 2
  %1703 = add nsw i64 %1702, -1616
  %1704 = add i64 %1703, %1250
  %1705 = add i64 %1675, 20
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i32*
  %1707 = load i32, i32* %1706, align 4
  %1708 = add i32 %1707, -2
  %1709 = icmp ult i32 %1707, 2
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %12, align 1
  %1711 = and i32 %1708, 255
  %1712 = tail call i32 @llvm.ctpop.i32(i32 %1711)
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  %1715 = xor i8 %1714, 1
  store i8 %1715, i8* %13, align 1
  %1716 = xor i32 %1708, %1707
  %1717 = lshr i32 %1716, 4
  %1718 = trunc i32 %1717 to i8
  %1719 = and i8 %1718, 1
  store i8 %1719, i8* %14, align 1
  %1720 = icmp eq i32 %1708, 0
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %15, align 1
  %1722 = lshr i32 %1708, 31
  %1723 = trunc i32 %1722 to i8
  store i8 %1723, i8* %16, align 1
  %1724 = lshr i32 %1707, 31
  %1725 = xor i32 %1722, %1724
  %1726 = add nuw nsw i32 %1725, %1724
  %1727 = icmp eq i32 %1726, 2
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %17, align 1
  %.v111 = select i1 %1720, i64 107, i64 26
  %1729 = add i64 %1675, %.v111
  store i64 %1729, i64* %3, align 8
  br i1 %1720, label %block_.L_46da70, label %block_.L_46da1f

block_.L_46da1f:                                  ; preds = %block_46da05, %block_.L_46d9ce
  %1730 = phi i64 [ %1729, %block_46da05 ], [ %1629, %block_.L_46d9ce ]
  %1731 = add i64 %1730, 6
  store i64 %1731, i64* %3, align 8
  %1732 = load i32, i32* %1253, align 4
  %1733 = add i32 %1732, 1
  %1734 = zext i32 %1733 to i64
  store i64 %1734, i64* %RAX.i643, align 8
  %1735 = icmp eq i32 %1732, -1
  %1736 = icmp eq i32 %1733, 0
  %1737 = or i1 %1735, %1736
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %12, align 1
  %1739 = and i32 %1733, 255
  %1740 = tail call i32 @llvm.ctpop.i32(i32 %1739)
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  %1743 = xor i8 %1742, 1
  store i8 %1743, i8* %13, align 1
  %1744 = xor i32 %1733, %1732
  %1745 = lshr i32 %1744, 4
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  store i8 %1747, i8* %14, align 1
  %1748 = zext i1 %1736 to i8
  store i8 %1748, i8* %15, align 1
  %1749 = lshr i32 %1733, 31
  %1750 = trunc i32 %1749 to i8
  store i8 %1750, i8* %16, align 1
  %1751 = lshr i32 %1732, 31
  %1752 = xor i32 %1749, %1751
  %1753 = add nuw nsw i32 %1752, %1749
  %1754 = icmp eq i32 %1753, 2
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %17, align 1
  %1756 = sext i32 %1733 to i64
  store i64 %1756, i64* %RCX.i637, align 8
  %1757 = add nsw i64 %1756, 12099168
  %1758 = add i64 %1730, 20
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i8*
  %1760 = load i8, i8* %1759, align 1
  %1761 = zext i8 %1760 to i64
  store i64 %1761, i64* %RAX.i643, align 8
  %1762 = zext i8 %1760 to i32
  %1763 = add nsw i32 %1762, -3
  %1764 = icmp ult i8 %1760, 3
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %12, align 1
  %1766 = and i32 %1763, 255
  %1767 = tail call i32 @llvm.ctpop.i32(i32 %1766)
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = xor i8 %1769, 1
  store i8 %1770, i8* %13, align 1
  %1771 = xor i32 %1763, %1762
  %1772 = lshr i32 %1771, 4
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  store i8 %1774, i8* %14, align 1
  %1775 = icmp eq i32 %1763, 0
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %15, align 1
  %1777 = lshr i32 %1763, 31
  %1778 = trunc i32 %1777 to i8
  store i8 %1778, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v112 = select i1 %1775, i64 91, i64 29
  %1779 = add i64 %1730, %.v112
  store i64 %1779, i64* %3, align 8
  br i1 %1775, label %block_.L_46da7a, label %block_46da3c

block_46da3c:                                     ; preds = %block_.L_46da1f
  %1780 = add i64 %1250, -8
  %1781 = add i64 %1779, 4
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i64*
  %1783 = load i64, i64* %1782, align 8
  store i64 %1783, i64* %RAX.i643, align 8
  %1784 = add i64 %1779, 10
  store i64 %1784, i64* %3, align 8
  %1785 = load i32, i32* %1253, align 4
  %1786 = add i32 %1785, 1
  %1787 = zext i32 %1786 to i64
  store i64 %1787, i64* %RCX.i637, align 8
  %1788 = icmp eq i32 %1785, -1
  %1789 = icmp eq i32 %1786, 0
  %1790 = or i1 %1788, %1789
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %12, align 1
  %1792 = and i32 %1786, 255
  %1793 = tail call i32 @llvm.ctpop.i32(i32 %1792)
  %1794 = trunc i32 %1793 to i8
  %1795 = and i8 %1794, 1
  %1796 = xor i8 %1795, 1
  store i8 %1796, i8* %13, align 1
  %1797 = xor i32 %1786, %1785
  %1798 = lshr i32 %1797, 4
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  store i8 %1800, i8* %14, align 1
  %1801 = zext i1 %1789 to i8
  store i8 %1801, i8* %15, align 1
  %1802 = lshr i32 %1786, 31
  %1803 = trunc i32 %1802 to i8
  store i8 %1803, i8* %16, align 1
  %1804 = lshr i32 %1785, 31
  %1805 = xor i32 %1802, %1804
  %1806 = add nuw nsw i32 %1805, %1802
  %1807 = icmp eq i32 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %17, align 1
  %1809 = sext i32 %1786 to i64
  store i64 %1809, i64* %RDX.i641, align 8
  %1810 = shl nsw i64 %1809, 2
  %1811 = add i64 %1783, %1810
  %1812 = add i64 %1779, 20
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1811 to i32*
  %1814 = load i32, i32* %1813, align 4
  store i8 0, i8* %12, align 1
  %1815 = and i32 %1814, 255
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1820 = icmp eq i32 %1814, 0
  %1821 = zext i1 %1820 to i8
  store i8 %1821, i8* %15, align 1
  %1822 = lshr i32 %1814, 31
  %1823 = trunc i32 %1822 to i8
  store i8 %1823, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1824 = icmp ne i8 %1823, 0
  %.v54 = select i1 %1824, i64 32, i64 6
  %1825 = add i64 %1812, %.v54
  store i64 %1825, i64* %3, align 8
  br i1 %1824, label %block_.L_46da70, label %block_46da56

block_46da56:                                     ; preds = %block_46da3c
  %1826 = add i64 %1825, 6
  store i64 %1826, i64* %3, align 8
  %1827 = load i32, i32* %1253, align 4
  %1828 = add i32 %1827, 1
  %1829 = zext i32 %1828 to i64
  store i64 %1829, i64* %RAX.i643, align 8
  %1830 = icmp eq i32 %1827, -1
  %1831 = icmp eq i32 %1828, 0
  %1832 = or i1 %1830, %1831
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %12, align 1
  %1834 = and i32 %1828, 255
  %1835 = tail call i32 @llvm.ctpop.i32(i32 %1834)
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = xor i8 %1837, 1
  store i8 %1838, i8* %13, align 1
  %1839 = xor i32 %1828, %1827
  %1840 = lshr i32 %1839, 4
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  store i8 %1842, i8* %14, align 1
  %1843 = zext i1 %1831 to i8
  store i8 %1843, i8* %15, align 1
  %1844 = lshr i32 %1828, 31
  %1845 = trunc i32 %1844 to i8
  store i8 %1845, i8* %16, align 1
  %1846 = lshr i32 %1827, 31
  %1847 = xor i32 %1844, %1846
  %1848 = add nuw nsw i32 %1847, %1844
  %1849 = icmp eq i32 %1848, 2
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %17, align 1
  %1851 = sext i32 %1828 to i64
  store i64 %1851, i64* %RCX.i637, align 8
  %1852 = shl nsw i64 %1851, 2
  %1853 = add nsw i64 %1852, -1616
  %1854 = add i64 %1853, %1250
  %1855 = add i64 %1825, 20
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i32*
  %1857 = load i32, i32* %1856, align 4
  %1858 = add i32 %1857, -2
  %1859 = icmp ult i32 %1857, 2
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %12, align 1
  %1861 = and i32 %1858, 255
  %1862 = tail call i32 @llvm.ctpop.i32(i32 %1861)
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  %1865 = xor i8 %1864, 1
  store i8 %1865, i8* %13, align 1
  %1866 = xor i32 %1858, %1857
  %1867 = lshr i32 %1866, 4
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  store i8 %1869, i8* %14, align 1
  %1870 = icmp eq i32 %1858, 0
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %15, align 1
  %1872 = lshr i32 %1858, 31
  %1873 = trunc i32 %1872 to i8
  store i8 %1873, i8* %16, align 1
  %1874 = lshr i32 %1857, 31
  %1875 = xor i32 %1872, %1874
  %1876 = add nuw nsw i32 %1875, %1874
  %1877 = icmp eq i32 %1876, 2
  %1878 = zext i1 %1877 to i8
  store i8 %1878, i8* %17, align 1
  %.v113 = select i1 %1870, i64 26, i64 36
  %1879 = add i64 %1825, %.v113
  store i64 %1879, i64* %3, align 8
  br i1 %1870, label %block_.L_46da70, label %block_.L_46da7a

block_.L_46da70:                                  ; preds = %block_46da56, %block_46da3c, %block_46da05, %block_46d9eb, %block_46d9b4, %block_46d99a, %block_46d963, %block_46d949, %block_.L_46d917
  %1880 = phi i64 [ %1879, %block_46da56 ], [ %1825, %block_46da3c ], [ %1729, %block_46da05 ], [ %1675, %block_46d9eb ], [ %1579, %block_46d9b4 ], [ %1526, %block_46d99a ], [ %1432, %block_46d963 ], [ %1378, %block_46d949 ], [ %1283, %block_.L_46d917 ]
  %1881 = add i64 %1250, -1632
  %1882 = add i64 %1880, 10
  store i64 %1882, i64* %3, align 8
  %1883 = inttoptr i64 %1881 to i32*
  store i32 1, i32* %1883, align 4
  %.pre65 = load i64, i64* %RBP.i, align 8
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_46da7a

block_.L_46da7a:                                  ; preds = %block_46da56, %block_.L_46da70, %block_.L_46da1f
  %1884 = phi i64 [ %.pre66, %block_.L_46da70 ], [ %1879, %block_46da56 ], [ %1779, %block_.L_46da1f ]
  %1885 = phi i64 [ %.pre65, %block_.L_46da70 ], [ %1250, %block_46da56 ], [ %1250, %block_.L_46da1f ]
  %1886 = add i64 %1885, -1628
  %1887 = add i64 %1884, 7
  store i64 %1887, i64* %3, align 8
  %1888 = inttoptr i64 %1886 to i32*
  %1889 = load i32, i32* %1888, align 4
  store i8 0, i8* %12, align 1
  %1890 = and i32 %1889, 255
  %1891 = tail call i32 @llvm.ctpop.i32(i32 %1890)
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = xor i8 %1893, 1
  store i8 %1894, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1895 = icmp eq i32 %1889, 0
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %15, align 1
  %1897 = lshr i32 %1889, 31
  %1898 = trunc i32 %1897 to i8
  store i8 %1898, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v77 = select i1 %1895, i64 56, i64 13
  %1899 = add i64 %1884, %.v77
  %1900 = add i64 %1885, -1632
  %1901 = add i64 %1899, 7
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to i32*
  %1903 = load i32, i32* %1902, align 4
  store i8 0, i8* %12, align 1
  %1904 = and i32 %1903, 255
  %1905 = tail call i32 @llvm.ctpop.i32(i32 %1904)
  %1906 = trunc i32 %1905 to i8
  %1907 = and i8 %1906, 1
  %1908 = xor i8 %1907, 1
  store i8 %1908, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1909 = icmp eq i32 %1903, 0
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %15, align 1
  %1911 = lshr i32 %1903, 31
  %1912 = trunc i32 %1911 to i8
  store i8 %1912, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br i1 %1895, label %block_.L_46dab2, label %block_46da87

block_46da87:                                     ; preds = %block_.L_46da7a
  %.v78 = select i1 %1909, i64 28, i64 13
  %1913 = add i64 %1899, %.v78
  %1914 = add i64 %1885, -1636
  %1915 = add i64 %1913, 10
  store i64 %1915, i64* %3, align 8
  %1916 = inttoptr i64 %1914 to i32*
  br i1 %1909, label %block_.L_46daa3, label %block_46da94

block_46da94:                                     ; preds = %block_46da87
  store i32 3, i32* %1916, align 4
  %1917 = load i64, i64* %3, align 8
  %1918 = add i64 %1917, 15
  store i64 %1918, i64* %3, align 8
  br label %block_.L_46daad

block_.L_46daa3:                                  ; preds = %block_46da87
  store i32 1, i32* %1916, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_46daad

block_.L_46daad:                                  ; preds = %block_.L_46daa3, %block_46da94
  %1919 = phi i64 [ %.pre67, %block_.L_46daa3 ], [ %1918, %block_46da94 ]
  %1920 = add i64 %1919, 33
  br label %block_.L_46dace

block_.L_46dab2:                                  ; preds = %block_.L_46da7a
  %.v116 = select i1 %1909, i64 23, i64 13
  %1921 = add i64 %1899, %.v116
  store i64 %1921, i64* %3, align 8
  br i1 %1909, label %block_.L_46dac9, label %block_46dabf

block_46dabf:                                     ; preds = %block_.L_46dab2
  %1922 = add i64 %1885, -1636
  %1923 = add i64 %1921, 10
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1922 to i32*
  store i32 2, i32* %1924, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_46dac9

block_.L_46dac9:                                  ; preds = %block_46dabf, %block_.L_46dab2
  %1925 = phi i64 [ %.pre68, %block_46dabf ], [ %1921, %block_.L_46dab2 ]
  %1926 = add i64 %1925, 5
  store i64 %1926, i64* %3, align 8
  br label %block_.L_46dace

block_.L_46dace:                                  ; preds = %block_.L_46dac9, %block_.L_46daad
  %storemerge50 = phi i64 [ %1920, %block_.L_46daad ], [ %1926, %block_.L_46dac9 ]
  %1927 = load i64, i64* %RBP.i, align 8
  %1928 = add i64 %1927, -1636
  %1929 = add i64 %storemerge50, 7
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  store i8 0, i8* %12, align 1
  %1932 = and i32 %1931, 255
  %1933 = tail call i32 @llvm.ctpop.i32(i32 %1932)
  %1934 = trunc i32 %1933 to i8
  %1935 = and i8 %1934, 1
  %1936 = xor i8 %1935, 1
  store i8 %1936, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1937 = icmp eq i32 %1931, 0
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %15, align 1
  %1939 = lshr i32 %1931, 31
  %1940 = trunc i32 %1939 to i8
  store i8 %1940, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v114 = select i1 %1937, i64 69, i64 13
  %1941 = add i64 %storemerge50, %.v114
  store i64 %1941, i64* %3, align 8
  br i1 %1937, label %block_.L_46db13, label %block_46dadb

block_46dadb:                                     ; preds = %block_.L_46dace
  %1942 = add i64 %1941, 6
  store i64 %1942, i64* %3, align 8
  %1943 = load i32, i32* %1930, align 4
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RAX.i643, align 8
  %1945 = add i64 %1927, -1620
  %1946 = add i64 %1941, 13
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = sext i32 %1948 to i64
  store i64 %1949, i64* %RCX.i637, align 8
  %1950 = shl nsw i64 %1949, 2
  %1951 = add nsw i64 %1950, -1616
  %1952 = add i64 %1951, %1927
  %1953 = add i64 %1941, 20
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1952 to i32*
  %1955 = load i32, i32* %1954, align 4
  %1956 = sub i32 %1943, %1955
  %1957 = icmp ult i32 %1943, %1955
  %1958 = zext i1 %1957 to i8
  store i8 %1958, i8* %12, align 1
  %1959 = and i32 %1956, 255
  %1960 = tail call i32 @llvm.ctpop.i32(i32 %1959)
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  %1963 = xor i8 %1962, 1
  store i8 %1963, i8* %13, align 1
  %1964 = xor i32 %1955, %1943
  %1965 = xor i32 %1964, %1956
  %1966 = lshr i32 %1965, 4
  %1967 = trunc i32 %1966 to i8
  %1968 = and i8 %1967, 1
  store i8 %1968, i8* %14, align 1
  %1969 = icmp eq i32 %1956, 0
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %15, align 1
  %1971 = lshr i32 %1956, 31
  %1972 = trunc i32 %1971 to i8
  store i8 %1972, i8* %16, align 1
  %1973 = lshr i32 %1943, 31
  %1974 = lshr i32 %1955, 31
  %1975 = xor i32 %1974, %1973
  %1976 = xor i32 %1971, %1973
  %1977 = add nuw nsw i32 %1976, %1975
  %1978 = icmp eq i32 %1977, 2
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %17, align 1
  %.v115 = select i1 %1969, i64 56, i64 26
  %1980 = add i64 %1941, %.v115
  store i64 %1980, i64* %3, align 8
  br i1 %1969, label %block_.L_46db13, label %block_46daf5

block_46daf5:                                     ; preds = %block_46dadb
  %1981 = add i64 %1927, -1624
  %1982 = add i64 %1980, 10
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i32*
  store i32 1, i32* %1983, align 4
  %1984 = load i64, i64* %RBP.i, align 8
  %1985 = add i64 %1984, -1636
  %1986 = load i64, i64* %3, align 8
  %1987 = add i64 %1986, 6
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1985 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = zext i32 %1989 to i64
  store i64 %1990, i64* %RAX.i643, align 8
  %1991 = add i64 %1984, -1620
  %1992 = add i64 %1986, 13
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i32*
  %1994 = load i32, i32* %1993, align 4
  %1995 = sext i32 %1994 to i64
  store i64 %1995, i64* %RCX.i637, align 8
  %1996 = shl nsw i64 %1995, 2
  %1997 = add i64 %1984, -1616
  %1998 = add i64 %1997, %1996
  %1999 = add i64 %1986, 20
  store i64 %1999, i64* %3, align 8
  %2000 = inttoptr i64 %1998 to i32*
  store i32 %1989, i32* %2000, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_46db13

block_.L_46db13:                                  ; preds = %block_46daf5, %block_46dadb, %block_.L_46dace
  %2001 = phi i64 [ %.pre69, %block_46daf5 ], [ %1980, %block_46dadb ], [ %1941, %block_.L_46dace ]
  %2002 = add i64 %2001, 5
  store i64 %2002, i64* %3, align 8
  br label %block_.L_46db18

block_.L_46db18:                                  ; preds = %block_.L_46db13, %block_.L_46d793
  %storemerge49 = phi i64 [ %617, %block_.L_46d793 ], [ %2002, %block_.L_46db13 ]
  %2003 = add i64 %storemerge49, 5
  store i64 %2003, i64* %3, align 8
  %.pre70 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46db1d

block_.L_46db1d:                                  ; preds = %block_.L_46db18, %block_.L_46d6b2
  %2004 = phi i64 [ %102, %block_.L_46d6b2 ], [ %.pre70, %block_.L_46db18 ]
  %storemerge = phi i64 [ %186, %block_.L_46d6b2 ], [ %2003, %block_.L_46db18 ]
  %2005 = add i64 %2004, -1620
  %2006 = add i64 %storemerge, 6
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = add i32 %2008, 1
  %2010 = zext i32 %2009 to i64
  store i64 %2010, i64* %RAX.i643, align 8
  %2011 = icmp eq i32 %2008, -1
  %2012 = icmp eq i32 %2009, 0
  %2013 = or i1 %2011, %2012
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %12, align 1
  %2015 = and i32 %2009, 255
  %2016 = tail call i32 @llvm.ctpop.i32(i32 %2015)
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  %2019 = xor i8 %2018, 1
  store i8 %2019, i8* %13, align 1
  %2020 = xor i32 %2009, %2008
  %2021 = lshr i32 %2020, 4
  %2022 = trunc i32 %2021 to i8
  %2023 = and i8 %2022, 1
  store i8 %2023, i8* %14, align 1
  %2024 = zext i1 %2012 to i8
  store i8 %2024, i8* %15, align 1
  %2025 = lshr i32 %2009, 31
  %2026 = trunc i32 %2025 to i8
  store i8 %2026, i8* %16, align 1
  %2027 = lshr i32 %2008, 31
  %2028 = xor i32 %2025, %2027
  %2029 = add nuw nsw i32 %2028, %2025
  %2030 = icmp eq i32 %2029, 2
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %17, align 1
  %2032 = add i64 %storemerge, 15
  store i64 %2032, i64* %3, align 8
  store i32 %2009, i32* %2007, align 4
  %2033 = load i64, i64* %3, align 8
  %2034 = add i64 %2033, -1258
  store i64 %2034, i64* %3, align 8
  br label %block_.L_46d642

block_.L_46db31:                                  ; preds = %block_.L_46d642
  %2035 = add i64 %88, -1296
  store i64 %2035, i64* %3, align 8
  br label %block_.L_46d621

block_.L_46db36:                                  ; preds = %block_.L_46d621
  %2036 = add i64 %37, -1620
  %2037 = add i64 %51, 10
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i32*
  store i32 21, i32* %2038, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_46db40

block_.L_46db40:                                  ; preds = %block_.L_46dbd5, %block_.L_46db36
  %2039 = phi i64 [ %2238, %block_.L_46dbd5 ], [ %.pre71, %block_.L_46db36 ]
  %2040 = load i64, i64* %RBP.i, align 8
  %2041 = add i64 %2040, -1620
  %2042 = add i64 %2039, 10
  store i64 %2042, i64* %3, align 8
  %2043 = inttoptr i64 %2041 to i32*
  %2044 = load i32, i32* %2043, align 4
  %2045 = add i32 %2044, -400
  %2046 = icmp ult i32 %2044, 400
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %12, align 1
  %2048 = and i32 %2045, 255
  %2049 = tail call i32 @llvm.ctpop.i32(i32 %2048)
  %2050 = trunc i32 %2049 to i8
  %2051 = and i8 %2050, 1
  %2052 = xor i8 %2051, 1
  store i8 %2052, i8* %13, align 1
  %2053 = xor i32 %2044, 16
  %2054 = xor i32 %2053, %2045
  %2055 = lshr i32 %2054, 4
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  store i8 %2057, i8* %14, align 1
  %2058 = icmp eq i32 %2045, 0
  %2059 = zext i1 %2058 to i8
  store i8 %2059, i8* %15, align 1
  %2060 = lshr i32 %2045, 31
  %2061 = trunc i32 %2060 to i8
  store i8 %2061, i8* %16, align 1
  %2062 = lshr i32 %2044, 31
  %2063 = xor i32 %2060, %2062
  %2064 = add nuw nsw i32 %2063, %2062
  %2065 = icmp eq i32 %2064, 2
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %17, align 1
  %2067 = icmp ne i8 %2061, 0
  %2068 = xor i1 %2067, %2065
  %.v117 = select i1 %2068, i64 16, i64 169
  %2069 = add i64 %2039, %.v117
  store i64 %2069, i64* %3, align 8
  br i1 %2068, label %block_46db50, label %block_.L_46dbe9

block_46db50:                                     ; preds = %block_.L_46db40
  %2070 = add i64 %2069, 7
  store i64 %2070, i64* %3, align 8
  %2071 = load i32, i32* %2043, align 4
  %2072 = sext i32 %2071 to i64
  store i64 %2072, i64* %RAX.i643, align 8
  %2073 = add nsw i64 %2072, 12099168
  %2074 = add i64 %2069, 15
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2073 to i8*
  %2076 = load i8, i8* %2075, align 1
  %2077 = zext i8 %2076 to i64
  store i64 %2077, i64* %RCX.i637, align 8
  %2078 = zext i8 %2076 to i32
  %2079 = add nsw i32 %2078, -3
  %2080 = icmp ult i8 %2076, 3
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %12, align 1
  %2082 = and i32 %2079, 255
  %2083 = tail call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  store i8 %2086, i8* %13, align 1
  %2087 = xor i32 %2079, %2078
  %2088 = lshr i32 %2087, 4
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  store i8 %2090, i8* %14, align 1
  %2091 = icmp eq i32 %2079, 0
  %2092 = zext i1 %2091 to i8
  store i8 %2092, i8* %15, align 1
  %2093 = lshr i32 %2079, 31
  %2094 = trunc i32 %2093 to i8
  store i8 %2094, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v118 = select i1 %2091, i64 45, i64 24
  %2095 = add i64 %2069, %.v118
  store i64 %2095, i64* %3, align 8
  br i1 %2091, label %block_.L_46db7d, label %block_46db68

block_46db68:                                     ; preds = %block_46db50
  %2096 = add i64 %2040, -8
  %2097 = add i64 %2095, 4
  store i64 %2097, i64* %3, align 8
  %2098 = inttoptr i64 %2096 to i64*
  %2099 = load i64, i64* %2098, align 8
  store i64 %2099, i64* %RAX.i643, align 8
  %2100 = add i64 %2095, 11
  store i64 %2100, i64* %3, align 8
  %2101 = load i32, i32* %2043, align 4
  %2102 = sext i32 %2101 to i64
  store i64 %2102, i64* %RCX.i637, align 8
  %2103 = shl nsw i64 %2102, 2
  %2104 = add i64 %2103, %2099
  %2105 = add i64 %2095, 15
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to i32*
  %2107 = load i32, i32* %2106, align 4
  store i8 0, i8* %12, align 1
  %2108 = and i32 %2107, 255
  %2109 = tail call i32 @llvm.ctpop.i32(i32 %2108)
  %2110 = trunc i32 %2109 to i8
  %2111 = and i8 %2110, 1
  %2112 = xor i8 %2111, 1
  store i8 %2112, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2113 = icmp eq i32 %2107, 0
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %15, align 1
  %2115 = lshr i32 %2107, 31
  %2116 = trunc i32 %2115 to i8
  store i8 %2116, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v119 = select i1 %2113, i64 26, i64 21
  %2117 = add i64 %2095, %.v119
  store i64 %2117, i64* %3, align 8
  br i1 %2113, label %block_.L_46db82, label %block_.L_46db7d

block_.L_46db7d:                                  ; preds = %block_46db68, %block_46db50
  %2118 = phi i64 [ %2117, %block_46db68 ], [ %2095, %block_46db50 ]
  %2119 = add i64 %2118, 88
  br label %block_.L_46dbd5

block_.L_46db82:                                  ; preds = %block_46db68
  %2120 = add i64 %2117, 7
  store i64 %2120, i64* %3, align 8
  %2121 = load i32, i32* %2043, align 4
  %2122 = sext i32 %2121 to i64
  store i64 %2122, i64* %RAX.i643, align 8
  %2123 = shl nsw i64 %2122, 2
  %2124 = add i64 %2040, -1616
  %2125 = add i64 %2124, %2123
  %2126 = add i64 %2117, 15
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2125 to i32*
  %2128 = load i32, i32* %2127, align 4
  %2129 = add i32 %2128, -1
  %2130 = icmp eq i32 %2128, 0
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %12, align 1
  %2132 = and i32 %2129, 255
  %2133 = tail call i32 @llvm.ctpop.i32(i32 %2132)
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  %2136 = xor i8 %2135, 1
  store i8 %2136, i8* %13, align 1
  %2137 = xor i32 %2129, %2128
  %2138 = lshr i32 %2137, 4
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  store i8 %2140, i8* %14, align 1
  %2141 = icmp eq i32 %2129, 0
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %15, align 1
  %2143 = lshr i32 %2129, 31
  %2144 = trunc i32 %2143 to i8
  store i8 %2144, i8* %16, align 1
  %2145 = lshr i32 %2128, 31
  %2146 = xor i32 %2143, %2145
  %2147 = add nuw nsw i32 %2146, %2145
  %2148 = icmp eq i32 %2147, 2
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %17, align 1
  %.v120 = select i1 %2141, i64 21, i64 39
  %2150 = add i64 %2117, %.v120
  store i64 %2150, i64* %3, align 8
  br i1 %2141, label %block_46db97, label %block_.L_46dba9

block_46db97:                                     ; preds = %block_.L_46db82
  %2151 = add i64 %2150, 4
  store i64 %2151, i64* %3, align 8
  %2152 = load i64, i64* %2098, align 8
  store i64 %2152, i64* %RAX.i643, align 8
  %2153 = add i64 %2150, 11
  store i64 %2153, i64* %3, align 8
  %2154 = load i32, i32* %2043, align 4
  %2155 = sext i32 %2154 to i64
  store i64 %2155, i64* %RCX.i637, align 8
  %2156 = shl nsw i64 %2155, 2
  %2157 = add i64 %2156, %2152
  %2158 = add i64 %2150, 18
  store i64 %2158, i64* %3, align 8
  %2159 = inttoptr i64 %2157 to i32*
  store i32 1, i32* %2159, align 4
  %.pre72 = load i64, i64* %RBP.i, align 8
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_46dba9

block_.L_46dba9:                                  ; preds = %block_.L_46db82, %block_46db97
  %2160 = phi i64 [ %.pre73, %block_46db97 ], [ %2150, %block_.L_46db82 ]
  %2161 = phi i64 [ %.pre72, %block_46db97 ], [ %2040, %block_.L_46db82 ]
  %2162 = add i64 %2161, -1620
  %2163 = add i64 %2160, 7
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2162 to i32*
  %2165 = load i32, i32* %2164, align 4
  %2166 = sext i32 %2165 to i64
  store i64 %2166, i64* %RAX.i643, align 8
  %2167 = shl nsw i64 %2166, 2
  %2168 = add i64 %2161, -1616
  %2169 = add i64 %2168, %2167
  %2170 = add i64 %2160, 15
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i32*
  %2172 = load i32, i32* %2171, align 4
  %2173 = add i32 %2172, -2
  %2174 = icmp ult i32 %2172, 2
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %12, align 1
  %2176 = and i32 %2173, 255
  %2177 = tail call i32 @llvm.ctpop.i32(i32 %2176)
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  %2180 = xor i8 %2179, 1
  store i8 %2180, i8* %13, align 1
  %2181 = xor i32 %2173, %2172
  %2182 = lshr i32 %2181, 4
  %2183 = trunc i32 %2182 to i8
  %2184 = and i8 %2183, 1
  store i8 %2184, i8* %14, align 1
  %2185 = icmp eq i32 %2173, 0
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %15, align 1
  %2187 = lshr i32 %2173, 31
  %2188 = trunc i32 %2187 to i8
  store i8 %2188, i8* %16, align 1
  %2189 = lshr i32 %2172, 31
  %2190 = xor i32 %2187, %2189
  %2191 = add nuw nsw i32 %2190, %2189
  %2192 = icmp eq i32 %2191, 2
  %2193 = zext i1 %2192 to i8
  store i8 %2193, i8* %17, align 1
  %.v121 = select i1 %2185, i64 21, i64 39
  %2194 = add i64 %2160, %.v121
  store i64 %2194, i64* %3, align 8
  br i1 %2185, label %block_46dbbe, label %block_.L_46dbd0

block_46dbbe:                                     ; preds = %block_.L_46dba9
  %2195 = add i64 %2161, -8
  %2196 = add i64 %2194, 4
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i64*
  %2198 = load i64, i64* %2197, align 8
  store i64 %2198, i64* %RAX.i643, align 8
  %2199 = add i64 %2194, 11
  store i64 %2199, i64* %3, align 8
  %2200 = load i32, i32* %2164, align 4
  %2201 = sext i32 %2200 to i64
  store i64 %2201, i64* %RCX.i637, align 8
  %2202 = shl nsw i64 %2201, 2
  %2203 = add i64 %2202, %2198
  %2204 = add i64 %2194, 18
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i32*
  store i32 -1, i32* %2205, align 4
  %.pre74 = load i64, i64* %3, align 8
  %.pre75.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_46dbd0

block_.L_46dbd0:                                  ; preds = %block_.L_46dba9, %block_46dbbe
  %.pre75 = phi i64 [ %.pre75.pre, %block_46dbbe ], [ %2161, %block_.L_46dba9 ]
  %2206 = phi i64 [ %.pre74, %block_46dbbe ], [ %2194, %block_.L_46dba9 ]
  %2207 = add i64 %2206, 5
  store i64 %2207, i64* %3, align 8
  br label %block_.L_46dbd5

block_.L_46dbd5:                                  ; preds = %block_.L_46dbd0, %block_.L_46db7d
  %2208 = phi i64 [ %2040, %block_.L_46db7d ], [ %.pre75, %block_.L_46dbd0 ]
  %storemerge51 = phi i64 [ %2119, %block_.L_46db7d ], [ %2207, %block_.L_46dbd0 ]
  %2209 = add i64 %2208, -1620
  %2210 = add i64 %storemerge51, 6
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2209 to i32*
  %2212 = load i32, i32* %2211, align 4
  %2213 = add i32 %2212, 1
  %2214 = zext i32 %2213 to i64
  store i64 %2214, i64* %RAX.i643, align 8
  %2215 = icmp eq i32 %2212, -1
  %2216 = icmp eq i32 %2213, 0
  %2217 = or i1 %2215, %2216
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %12, align 1
  %2219 = and i32 %2213, 255
  %2220 = tail call i32 @llvm.ctpop.i32(i32 %2219)
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  %2223 = xor i8 %2222, 1
  store i8 %2223, i8* %13, align 1
  %2224 = xor i32 %2213, %2212
  %2225 = lshr i32 %2224, 4
  %2226 = trunc i32 %2225 to i8
  %2227 = and i8 %2226, 1
  store i8 %2227, i8* %14, align 1
  %2228 = zext i1 %2216 to i8
  store i8 %2228, i8* %15, align 1
  %2229 = lshr i32 %2213, 31
  %2230 = trunc i32 %2229 to i8
  store i8 %2230, i8* %16, align 1
  %2231 = lshr i32 %2212, 31
  %2232 = xor i32 %2229, %2231
  %2233 = add nuw nsw i32 %2232, %2229
  %2234 = icmp eq i32 %2233, 2
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %17, align 1
  %2236 = add i64 %storemerge51, 15
  store i64 %2236, i64* %3, align 8
  store i32 %2213, i32* %2211, align 4
  %2237 = load i64, i64* %3, align 8
  %2238 = add i64 %2237, -164
  store i64 %2238, i64* %3, align 8
  br label %block_.L_46db40

block_.L_46dbe9:                                  ; preds = %block_.L_46db40
  %2239 = load i64, i64* %6, align 8
  %2240 = add i64 %2239, 1648
  store i64 %2240, i64* %6, align 8
  %2241 = icmp ugt i64 %2239, -1649
  %2242 = zext i1 %2241 to i8
  store i8 %2242, i8* %12, align 1
  %2243 = trunc i64 %2240 to i32
  %2244 = and i32 %2243, 255
  %2245 = tail call i32 @llvm.ctpop.i32(i32 %2244)
  %2246 = trunc i32 %2245 to i8
  %2247 = and i8 %2246, 1
  %2248 = xor i8 %2247, 1
  store i8 %2248, i8* %13, align 1
  %2249 = xor i64 %2239, 16
  %2250 = xor i64 %2249, %2240
  %2251 = lshr i64 %2250, 4
  %2252 = trunc i64 %2251 to i8
  %2253 = and i8 %2252, 1
  store i8 %2253, i8* %14, align 1
  %2254 = icmp eq i64 %2240, 0
  %2255 = zext i1 %2254 to i8
  store i8 %2255, i8* %15, align 1
  %2256 = lshr i64 %2240, 63
  %2257 = trunc i64 %2256 to i8
  store i8 %2257, i8* %16, align 1
  %2258 = lshr i64 %2239, 63
  %2259 = xor i64 %2256, %2258
  %2260 = add nuw nsw i64 %2259, %2256
  %2261 = icmp eq i64 %2260, 2
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %17, align 1
  %2263 = add i64 %2069, 8
  store i64 %2263, i64* %3, align 8
  %2264 = add i64 %2239, 1656
  %2265 = inttoptr i64 %2240 to i64*
  %2266 = load i64, i64* %2265, align 8
  store i64 %2266, i64* %RBP.i, align 8
  store i64 %2264, i64* %6, align 8
  %2267 = add i64 %2069, 9
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2264 to i64*
  %2269 = load i64, i64* %2268, align 8
  store i64 %2269, i64* %3, align 8
  %2270 = add i64 %2239, 1664
  store i64 %2270, i64* %6, align 8
  ret %struct.Memory* %35
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
define %struct.Memory* @routine_subq__0x670___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1648
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1648
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
define %struct.Memory* @routine_movl__0x640___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1600, i64* %RAX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x650__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1616
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__0x1__MINUS0x658__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1624
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x658__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1624
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
define %struct.Memory* @routine_je_.L_46db36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x658__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1624
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x654__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1620
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x654__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1620
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
define %struct.Memory* @routine_jge_.L_46db31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x65c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1628
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x660__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1632
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x654__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1620
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
define %struct.Memory* @routine_je_.L_46d6b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x654__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1620
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
define %struct.Memory* @routine_jne_.L_46d6b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x650__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -3
  %13 = icmp ult i32 %11, 3
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46d6b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46db1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1620
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
define %struct.Memory* @routine_je_.L_46d6ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x650__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -3
  %13 = icmp ult i32 %11, 3
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46d793(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d725(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d75c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d7b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46d7b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x650__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 3, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46db18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x650__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp eq i32 %11, 0
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46d90d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d81a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1620
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
define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_jg_.L_46d90d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x650__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp eq i32 %11, 0
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46d86b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46d8bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_46d917(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46d917(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x65c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1628
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x650__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -2
  %13 = icmp ult i32 %11, 2
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46da70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46d97d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_46da70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x650__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1616
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -2
  %13 = icmp ult i32 %11, 2
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46d9ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46da1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46da7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46da7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x660__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1632
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x65c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1628
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
define %struct.Memory* @routine_je_.L_46dab2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1632
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
define %struct.Memory* @routine_je_.L_46daa3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46daad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46dace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46dac9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
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
define %struct.Memory* @routine_je_.L_46db13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
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
define %struct.Memory* @routine_cmpl_MINUS0x650__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -1616
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x650__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1616
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
define %struct.Memory* @routine_movl__eax__MINUS0x654__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1620
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46d642(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46d621(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46dbe9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46db7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46db82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46dbd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46dba9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46dbd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 -1, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46db40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x670___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1648
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1649
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
