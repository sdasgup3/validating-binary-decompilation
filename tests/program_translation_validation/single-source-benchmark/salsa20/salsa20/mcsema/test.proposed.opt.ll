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

; Function Attrs: alwaysinline
define %struct.Memory* @salsa20(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI.i, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %PC.i, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %RSI.i898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %15 = load i64, i64* %RBP.i, align 8
  %16 = add i64 %15, -16
  %17 = load i64, i64* %RSI.i898, align 8
  %18 = load i64, i64* %PC.i, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC.i, align 8
  %20 = inttoptr i64 %16 to i64*
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %RBP.i, align 8
  %22 = add i64 %21, -20
  %23 = load i64, i64* %PC.i, align 8
  %24 = add i64 %23, 7
  store i64 %24, i64* %PC.i, align 8
  %25 = inttoptr i64 %22 to i32*
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RAX.i890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400503

block_.L_400503:                                  ; preds = %block_40050d, %entry
  %32 = phi i64 [ %114, %block_40050d ], [ %.pre, %entry ]
  %33 = load i64, i64* %RBP.i, align 8
  %34 = add i64 %33, -20
  %35 = add i64 %32, 4
  store i64 %35, i64* %PC.i, align 8
  %36 = inttoptr i64 %34 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %37, -16
  %39 = icmp ult i32 %37, 16
  %40 = zext i1 %39 to i8
  store i8 %40, i8* %26, align 1
  %41 = and i32 %38, 255
  %42 = tail call i32 @llvm.ctpop.i32(i32 %41)
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  store i8 %45, i8* %27, align 1
  %46 = xor i32 %37, 16
  %47 = xor i32 %46, %38
  %48 = lshr i32 %47, 4
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 1
  store i8 %50, i8* %28, align 1
  %51 = icmp eq i32 %38, 0
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %29, align 1
  %53 = lshr i32 %38, 31
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %30, align 1
  %55 = lshr i32 %37, 31
  %56 = xor i32 %53, %55
  %57 = add nuw nsw i32 %56, %55
  %58 = icmp eq i32 %57, 2
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %31, align 1
  %.v = select i1 %39, i64 10, i64 45
  %60 = add i64 %32, %.v
  store i64 %60, i64* %3, align 8
  br i1 %39, label %block_40050d, label %block_.L_400530

block_40050d:                                     ; preds = %block_.L_400503
  %61 = add i64 %33, -16
  %62 = add i64 %60, 4
  store i64 %62, i64* %PC.i, align 8
  %63 = inttoptr i64 %61 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %RAX.i890, align 8
  %65 = add i64 %60, 7
  store i64 %65, i64* %PC.i, align 8
  %66 = load i32, i32* %36, align 4
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %RCX.i887, align 8
  store i64 %67, i64* %RDX.i885, align 8
  %68 = shl nuw nsw i64 %67, 2
  %69 = add i64 %68, %64
  %70 = add i64 %60, 12
  store i64 %70, i64* %PC.i, align 8
  %71 = inttoptr i64 %69 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = zext i32 %72 to i64
  store i64 %73, i64* %RCX.i887, align 8
  %74 = add i64 %60, 15
  store i64 %74, i64* %PC.i, align 8
  %75 = load i32, i32* %36, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RSI.i898, align 8
  store i64 %76, i64* %RAX.i890, align 8
  %77 = shl nuw nsw i64 %76, 2
  %78 = add i64 %33, -96
  %79 = add i64 %78, %77
  %80 = add i64 %60, 21
  store i64 %80, i64* %PC.i, align 8
  %81 = inttoptr i64 %79 to i32*
  store i32 %72, i32* %81, align 4
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -20
  %84 = load i64, i64* %PC.i, align 8
  %85 = add i64 %84, 3
  store i64 %85, i64* %PC.i, align 8
  %86 = inttoptr i64 %83 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = add i32 %87, 1
  %89 = zext i32 %88 to i64
  store i64 %89, i64* %RAX.i890, align 8
  %90 = icmp eq i32 %87, -1
  %91 = icmp eq i32 %88, 0
  %92 = or i1 %90, %91
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %26, align 1
  %94 = and i32 %88, 255
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94)
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %27, align 1
  %99 = xor i32 %87, %88
  %100 = lshr i32 %99, 4
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  store i8 %102, i8* %28, align 1
  %103 = icmp eq i32 %88, 0
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %29, align 1
  %105 = lshr i32 %88, 31
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %30, align 1
  %107 = lshr i32 %87, 31
  %108 = xor i32 %105, %107
  %109 = add nuw nsw i32 %108, %105
  %110 = icmp eq i32 %109, 2
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %31, align 1
  %112 = add i64 %84, 9
  store i64 %112, i64* %PC.i, align 8
  store i32 %88, i32* %86, align 4
  %113 = load i64, i64* %PC.i, align 8
  %114 = add i64 %113, -40
  store i64 %114, i64* %3, align 8
  br label %block_.L_400503

block_.L_400530:                                  ; preds = %block_.L_400503
  %115 = add i64 %60, 7
  store i64 %115, i64* %PC.i, align 8
  store i32 20, i32* %36, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400537

block_.L_400537:                                  ; preds = %block_400541, %block_.L_400530
  %116 = phi i64 [ %2080, %block_400541 ], [ %.pre1, %block_.L_400530 ]
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -20
  %119 = add i64 %116, 4
  store i64 %119, i64* %PC.i, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  store i8 0, i8* %26, align 1
  %122 = and i32 %121, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %127 = icmp eq i32 %121, 0
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %29, align 1
  %129 = lshr i32 %121, 31
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %.v3 = select i1 %127, i64 856, i64 10
  %131 = add i64 %116, %.v3
  store i64 %131, i64* %3, align 8
  br i1 %127, label %block_.L_40088f, label %block_400541

block_400541:                                     ; preds = %block_.L_400537
  %132 = add i64 %117, -96
  %133 = add i64 %131, 3
  store i64 %133, i64* %PC.i, align 8
  %134 = inttoptr i64 %132 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RAX.i890, align 8
  %137 = add i64 %117, -48
  %138 = add i64 %131, 6
  store i64 %138, i64* %PC.i, align 8
  %139 = inttoptr i64 %137 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %140, %135
  %142 = shl i32 %141, 7
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RAX.i890, align 8
  %144 = lshr i32 %141, 25
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  store i8 %146, i8* %26, align 1
  %147 = and i32 %142, 128
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147)
  %149 = trunc i32 %148 to i8
  %150 = xor i8 %149, 1
  store i8 %150, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %151 = icmp eq i32 %142, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %29, align 1
  %153 = lshr i32 %141, 24
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  store i8 %155, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %156 = add i64 %131, 12
  store i64 %156, i64* %PC.i, align 8
  %157 = load i32, i32* %134, align 4
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RCX.i887, align 8
  %159 = add i64 %131, 15
  store i64 %159, i64* %PC.i, align 8
  %160 = load i32, i32* %139, align 4
  %161 = add i32 %160, %157
  %162 = lshr i32 %161, 25
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RCX.i887, align 8
  %164 = or i32 %162, %142
  %165 = zext i32 %164 to i64
  store i64 %165, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %166 = and i32 %164, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166)
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %27, align 1
  %171 = icmp eq i32 %164, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %29, align 1
  %173 = lshr i32 %141, 24
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %176 = load i64, i64* %RBP.i, align 8
  %177 = add i64 %176, -80
  %178 = add i64 %131, 23
  store i64 %178, i64* %PC.i, align 8
  %179 = inttoptr i64 %177 to i32*
  %180 = load i32, i32* %179, align 4
  %181 = xor i32 %180, %164
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %183 = and i32 %181, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183)
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %27, align 1
  %188 = icmp eq i32 %181, 0
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %29, align 1
  %190 = lshr i32 %181, 31
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %192 = add i64 %131, 26
  store i64 %192, i64* %PC.i, align 8
  store i32 %181, i32* %179, align 4
  %193 = load i64, i64* %RBP.i, align 8
  %194 = add i64 %193, -80
  %195 = load i64, i64* %PC.i, align 8
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC.i, align 8
  %197 = inttoptr i64 %194 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RAX.i890, align 8
  %200 = add i64 %193, -96
  %201 = add i64 %195, 6
  store i64 %201, i64* %PC.i, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  %204 = add i32 %203, %198
  %205 = shl i32 %204, 9
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RAX.i890, align 8
  %207 = lshr i32 %204, 23
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %210 = icmp eq i32 %205, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %29, align 1
  %212 = lshr i32 %204, 22
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  store i8 %214, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %215 = add i64 %195, 12
  store i64 %215, i64* %PC.i, align 8
  %216 = load i32, i32* %197, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RCX.i887, align 8
  %218 = add i64 %195, 15
  store i64 %218, i64* %PC.i, align 8
  %219 = load i32, i32* %202, align 4
  %220 = add i32 %219, %216
  %221 = lshr i32 %220, 23
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RCX.i887, align 8
  %223 = or i32 %221, %205
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %225 = and i32 %221, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225)
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %27, align 1
  %230 = icmp eq i32 %223, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %29, align 1
  %232 = lshr i32 %204, 22
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  store i8 %234, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %235 = load i64, i64* %RBP.i, align 8
  %236 = add i64 %235, -64
  %237 = add i64 %195, 23
  store i64 %237, i64* %PC.i, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = xor i32 %239, %223
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %242 = and i32 %240, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %27, align 1
  %247 = icmp eq i32 %240, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %29, align 1
  %249 = lshr i32 %240, 31
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %251 = add i64 %195, 26
  store i64 %251, i64* %PC.i, align 8
  store i32 %240, i32* %238, align 4
  %252 = load i64, i64* %RBP.i, align 8
  %253 = add i64 %252, -64
  %254 = load i64, i64* %PC.i, align 8
  %255 = add i64 %254, 3
  store i64 %255, i64* %PC.i, align 8
  %256 = inttoptr i64 %253 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RAX.i890, align 8
  %259 = add i64 %252, -80
  %260 = add i64 %254, 6
  store i64 %260, i64* %PC.i, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = add i32 %262, %257
  %264 = shl i32 %263, 13
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RAX.i890, align 8
  %266 = lshr i32 %263, 19
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  store i8 %268, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %269 = icmp eq i32 %264, 0
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %29, align 1
  %271 = lshr i32 %263, 18
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  store i8 %273, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %274 = add i64 %254, 12
  store i64 %274, i64* %PC.i, align 8
  %275 = load i32, i32* %256, align 4
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RCX.i887, align 8
  %277 = add i64 %254, 15
  store i64 %277, i64* %PC.i, align 8
  %278 = load i32, i32* %261, align 4
  %279 = add i32 %278, %275
  %280 = lshr i32 %279, 19
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %RCX.i887, align 8
  %282 = or i32 %280, %264
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %284 = and i32 %280, 255
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284)
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  store i8 %288, i8* %27, align 1
  %289 = icmp eq i32 %282, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %29, align 1
  %291 = lshr i32 %263, 18
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  store i8 %293, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %294 = load i64, i64* %RBP.i, align 8
  %295 = add i64 %294, -48
  %296 = add i64 %254, 23
  store i64 %296, i64* %PC.i, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = xor i32 %298, %282
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %301 = and i32 %299, 255
  %302 = tail call i32 @llvm.ctpop.i32(i32 %301)
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = xor i8 %304, 1
  store i8 %305, i8* %27, align 1
  %306 = icmp eq i32 %299, 0
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %29, align 1
  %308 = lshr i32 %299, 31
  %309 = trunc i32 %308 to i8
  store i8 %309, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %310 = add i64 %254, 26
  store i64 %310, i64* %PC.i, align 8
  store i32 %299, i32* %297, align 4
  %311 = load i64, i64* %RBP.i, align 8
  %312 = add i64 %311, -48
  %313 = load i64, i64* %PC.i, align 8
  %314 = add i64 %313, 3
  store i64 %314, i64* %PC.i, align 8
  %315 = inttoptr i64 %312 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RAX.i890, align 8
  %318 = add i64 %311, -64
  %319 = add i64 %313, 6
  store i64 %319, i64* %PC.i, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = add i32 %321, %316
  %323 = shl i32 %322, 18
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX.i890, align 8
  %325 = lshr i32 %322, 14
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %328 = icmp eq i32 %323, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %29, align 1
  %330 = lshr i32 %322, 13
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  store i8 %332, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %333 = add i64 %313, 12
  store i64 %333, i64* %PC.i, align 8
  %334 = load i32, i32* %315, align 4
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RCX.i887, align 8
  %336 = add i64 %313, 15
  store i64 %336, i64* %PC.i, align 8
  %337 = load i32, i32* %320, align 4
  %338 = add i32 %337, %334
  %339 = lshr i32 %338, 14
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RCX.i887, align 8
  %341 = or i32 %339, %323
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %343 = and i32 %339, 255
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %27, align 1
  %348 = icmp eq i32 %341, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %29, align 1
  %350 = lshr i32 %322, 13
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %353 = load i64, i64* %RBP.i, align 8
  %354 = add i64 %353, -96
  %355 = add i64 %313, 23
  store i64 %355, i64* %PC.i, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = xor i32 %357, %341
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %360 = and i32 %358, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %27, align 1
  %365 = icmp eq i32 %358, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %29, align 1
  %367 = lshr i32 %358, 31
  %368 = trunc i32 %367 to i8
  store i8 %368, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %369 = add i64 %313, 26
  store i64 %369, i64* %PC.i, align 8
  store i32 %358, i32* %356, align 4
  %370 = load i64, i64* %RBP.i, align 8
  %371 = add i64 %370, -76
  %372 = load i64, i64* %PC.i, align 8
  %373 = add i64 %372, 3
  store i64 %373, i64* %PC.i, align 8
  %374 = inttoptr i64 %371 to i32*
  %375 = load i32, i32* %374, align 4
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX.i890, align 8
  %377 = add i64 %370, -92
  %378 = add i64 %372, 6
  store i64 %378, i64* %PC.i, align 8
  %379 = inttoptr i64 %377 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = add i32 %380, %375
  %382 = shl i32 %381, 7
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RAX.i890, align 8
  %384 = lshr i32 %381, 25
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  store i8 %386, i8* %26, align 1
  %387 = and i32 %382, 128
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387)
  %389 = trunc i32 %388 to i8
  %390 = xor i8 %389, 1
  store i8 %390, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %391 = icmp eq i32 %382, 0
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %29, align 1
  %393 = lshr i32 %381, 24
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  store i8 %395, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %396 = add i64 %372, 12
  store i64 %396, i64* %PC.i, align 8
  %397 = load i32, i32* %374, align 4
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RCX.i887, align 8
  %399 = add i64 %372, 15
  store i64 %399, i64* %PC.i, align 8
  %400 = load i32, i32* %379, align 4
  %401 = add i32 %400, %397
  %402 = lshr i32 %401, 25
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RCX.i887, align 8
  %404 = or i32 %402, %382
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %406 = and i32 %404, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %27, align 1
  %411 = icmp eq i32 %404, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %29, align 1
  %413 = lshr i32 %381, 24
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %416 = load i64, i64* %RBP.i, align 8
  %417 = add i64 %416, -60
  %418 = add i64 %372, 23
  store i64 %418, i64* %PC.i, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = xor i32 %420, %404
  %422 = zext i32 %421 to i64
  store i64 %422, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %423 = and i32 %421, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423)
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %27, align 1
  %428 = icmp eq i32 %421, 0
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %29, align 1
  %430 = lshr i32 %421, 31
  %431 = trunc i32 %430 to i8
  store i8 %431, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %432 = add i64 %372, 26
  store i64 %432, i64* %PC.i, align 8
  store i32 %421, i32* %419, align 4
  %433 = load i64, i64* %RBP.i, align 8
  %434 = add i64 %433, -60
  %435 = load i64, i64* %PC.i, align 8
  %436 = add i64 %435, 3
  store i64 %436, i64* %PC.i, align 8
  %437 = inttoptr i64 %434 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = zext i32 %438 to i64
  store i64 %439, i64* %RAX.i890, align 8
  %440 = add i64 %433, -76
  %441 = add i64 %435, 6
  store i64 %441, i64* %PC.i, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = add i32 %443, %438
  %445 = shl i32 %444, 9
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RAX.i890, align 8
  %447 = lshr i32 %444, 23
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  store i8 %449, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %450 = icmp eq i32 %445, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %29, align 1
  %452 = lshr i32 %444, 22
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  store i8 %454, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %455 = add i64 %435, 12
  store i64 %455, i64* %PC.i, align 8
  %456 = load i32, i32* %437, align 4
  %457 = zext i32 %456 to i64
  store i64 %457, i64* %RCX.i887, align 8
  %458 = add i64 %435, 15
  store i64 %458, i64* %PC.i, align 8
  %459 = load i32, i32* %442, align 4
  %460 = add i32 %459, %456
  %461 = lshr i32 %460, 23
  %462 = zext i32 %461 to i64
  store i64 %462, i64* %RCX.i887, align 8
  %463 = or i32 %461, %445
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %465 = and i32 %461, 255
  %466 = tail call i32 @llvm.ctpop.i32(i32 %465)
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  %469 = xor i8 %468, 1
  store i8 %469, i8* %27, align 1
  %470 = icmp eq i32 %463, 0
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %29, align 1
  %472 = lshr i32 %444, 22
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  store i8 %474, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -44
  %477 = add i64 %435, 23
  store i64 %477, i64* %PC.i, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = xor i32 %479, %463
  %481 = zext i32 %480 to i64
  store i64 %481, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %482 = and i32 %480, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %27, align 1
  %487 = icmp eq i32 %480, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %29, align 1
  %489 = lshr i32 %480, 31
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %491 = add i64 %435, 26
  store i64 %491, i64* %PC.i, align 8
  store i32 %480, i32* %478, align 4
  %492 = load i64, i64* %RBP.i, align 8
  %493 = add i64 %492, -44
  %494 = load i64, i64* %PC.i, align 8
  %495 = add i64 %494, 3
  store i64 %495, i64* %PC.i, align 8
  %496 = inttoptr i64 %493 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = zext i32 %497 to i64
  store i64 %498, i64* %RAX.i890, align 8
  %499 = add i64 %492, -60
  %500 = add i64 %494, 6
  store i64 %500, i64* %PC.i, align 8
  %501 = inttoptr i64 %499 to i32*
  %502 = load i32, i32* %501, align 4
  %503 = add i32 %502, %497
  %504 = shl i32 %503, 13
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RAX.i890, align 8
  %506 = lshr i32 %503, 19
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  store i8 %508, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %509 = icmp eq i32 %504, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %29, align 1
  %511 = lshr i32 %503, 18
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  store i8 %513, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %514 = add i64 %494, 12
  store i64 %514, i64* %PC.i, align 8
  %515 = load i32, i32* %496, align 4
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RCX.i887, align 8
  %517 = add i64 %494, 15
  store i64 %517, i64* %PC.i, align 8
  %518 = load i32, i32* %501, align 4
  %519 = add i32 %518, %515
  %520 = lshr i32 %519, 19
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RCX.i887, align 8
  %522 = or i32 %520, %504
  %523 = zext i32 %522 to i64
  store i64 %523, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %524 = and i32 %520, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %27, align 1
  %529 = icmp eq i32 %522, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %29, align 1
  %531 = lshr i32 %503, 18
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  store i8 %533, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %534 = load i64, i64* %RBP.i, align 8
  %535 = add i64 %534, -92
  %536 = add i64 %494, 23
  store i64 %536, i64* %PC.i, align 8
  %537 = inttoptr i64 %535 to i32*
  %538 = load i32, i32* %537, align 4
  %539 = xor i32 %538, %522
  %540 = zext i32 %539 to i64
  store i64 %540, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %541 = and i32 %539, 255
  %542 = tail call i32 @llvm.ctpop.i32(i32 %541)
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = xor i8 %544, 1
  store i8 %545, i8* %27, align 1
  %546 = icmp eq i32 %539, 0
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %29, align 1
  %548 = lshr i32 %539, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %550 = add i64 %494, 26
  store i64 %550, i64* %PC.i, align 8
  store i32 %539, i32* %537, align 4
  %551 = load i64, i64* %RBP.i, align 8
  %552 = add i64 %551, -92
  %553 = load i64, i64* %PC.i, align 8
  %554 = add i64 %553, 3
  store i64 %554, i64* %PC.i, align 8
  %555 = inttoptr i64 %552 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RAX.i890, align 8
  %558 = add i64 %551, -44
  %559 = add i64 %553, 6
  store i64 %559, i64* %PC.i, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = add i32 %561, %556
  %563 = shl i32 %562, 18
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RAX.i890, align 8
  %565 = lshr i32 %562, 14
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  store i8 %567, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %568 = icmp eq i32 %563, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %29, align 1
  %570 = lshr i32 %562, 13
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %573 = add i64 %553, 12
  store i64 %573, i64* %PC.i, align 8
  %574 = load i32, i32* %555, align 4
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %RCX.i887, align 8
  %576 = add i64 %553, 15
  store i64 %576, i64* %PC.i, align 8
  %577 = load i32, i32* %560, align 4
  %578 = add i32 %577, %574
  %579 = lshr i32 %578, 14
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %RCX.i887, align 8
  %581 = or i32 %579, %563
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %583 = and i32 %579, 255
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %27, align 1
  %588 = icmp eq i32 %581, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %29, align 1
  %590 = lshr i32 %562, 13
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  store i8 %592, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %593 = load i64, i64* %RBP.i, align 8
  %594 = add i64 %593, -76
  %595 = add i64 %553, 23
  store i64 %595, i64* %PC.i, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = xor i32 %597, %581
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %600 = and i32 %598, 255
  %601 = tail call i32 @llvm.ctpop.i32(i32 %600)
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %27, align 1
  %605 = icmp eq i32 %598, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %29, align 1
  %607 = lshr i32 %598, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %609 = add i64 %553, 26
  store i64 %609, i64* %PC.i, align 8
  store i32 %598, i32* %596, align 4
  %610 = load i64, i64* %RBP.i, align 8
  %611 = add i64 %610, -56
  %612 = load i64, i64* %PC.i, align 8
  %613 = add i64 %612, 3
  store i64 %613, i64* %PC.i, align 8
  %614 = inttoptr i64 %611 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RAX.i890, align 8
  %617 = add i64 %610, -72
  %618 = add i64 %612, 6
  store i64 %618, i64* %PC.i, align 8
  %619 = inttoptr i64 %617 to i32*
  %620 = load i32, i32* %619, align 4
  %621 = add i32 %620, %615
  %622 = shl i32 %621, 7
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RAX.i890, align 8
  %624 = lshr i32 %621, 25
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  store i8 %626, i8* %26, align 1
  %627 = and i32 %622, 128
  %628 = tail call i32 @llvm.ctpop.i32(i32 %627)
  %629 = trunc i32 %628 to i8
  %630 = xor i8 %629, 1
  store i8 %630, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %631 = icmp eq i32 %622, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %29, align 1
  %633 = lshr i32 %621, 24
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  store i8 %635, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %636 = add i64 %612, 12
  store i64 %636, i64* %PC.i, align 8
  %637 = load i32, i32* %614, align 4
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RCX.i887, align 8
  %639 = add i64 %612, 15
  store i64 %639, i64* %PC.i, align 8
  %640 = load i32, i32* %619, align 4
  %641 = add i32 %640, %637
  %642 = lshr i32 %641, 25
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RCX.i887, align 8
  %644 = or i32 %642, %622
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %646 = and i32 %644, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646)
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %27, align 1
  %651 = icmp eq i32 %644, 0
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %29, align 1
  %653 = lshr i32 %621, 24
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  store i8 %655, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %656 = load i64, i64* %RBP.i, align 8
  %657 = add i64 %656, -40
  %658 = add i64 %612, 23
  store i64 %658, i64* %PC.i, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = xor i32 %660, %644
  %662 = zext i32 %661 to i64
  store i64 %662, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %663 = and i32 %661, 255
  %664 = tail call i32 @llvm.ctpop.i32(i32 %663)
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = xor i8 %666, 1
  store i8 %667, i8* %27, align 1
  %668 = icmp eq i32 %661, 0
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %29, align 1
  %670 = lshr i32 %661, 31
  %671 = trunc i32 %670 to i8
  store i8 %671, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %672 = add i64 %612, 26
  store i64 %672, i64* %PC.i, align 8
  store i32 %661, i32* %659, align 4
  %673 = load i64, i64* %RBP.i, align 8
  %674 = add i64 %673, -40
  %675 = load i64, i64* %PC.i, align 8
  %676 = add i64 %675, 3
  store i64 %676, i64* %PC.i, align 8
  %677 = inttoptr i64 %674 to i32*
  %678 = load i32, i32* %677, align 4
  %679 = zext i32 %678 to i64
  store i64 %679, i64* %RAX.i890, align 8
  %680 = add i64 %673, -56
  %681 = add i64 %675, 6
  store i64 %681, i64* %PC.i, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = add i32 %683, %678
  %685 = shl i32 %684, 9
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RAX.i890, align 8
  %687 = lshr i32 %684, 23
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %690 = icmp eq i32 %685, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %29, align 1
  %692 = lshr i32 %684, 22
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  store i8 %694, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %695 = add i64 %675, 12
  store i64 %695, i64* %PC.i, align 8
  %696 = load i32, i32* %677, align 4
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RCX.i887, align 8
  %698 = add i64 %675, 15
  store i64 %698, i64* %PC.i, align 8
  %699 = load i32, i32* %682, align 4
  %700 = add i32 %699, %696
  %701 = lshr i32 %700, 23
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RCX.i887, align 8
  %703 = or i32 %701, %685
  %704 = zext i32 %703 to i64
  store i64 %704, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %705 = and i32 %701, 255
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %27, align 1
  %710 = icmp eq i32 %703, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %29, align 1
  %712 = lshr i32 %684, 22
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  store i8 %714, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %715 = load i64, i64* %RBP.i, align 8
  %716 = add i64 %715, -88
  %717 = add i64 %675, 23
  store i64 %717, i64* %PC.i, align 8
  %718 = inttoptr i64 %716 to i32*
  %719 = load i32, i32* %718, align 4
  %720 = xor i32 %719, %703
  %721 = zext i32 %720 to i64
  store i64 %721, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %722 = and i32 %720, 255
  %723 = tail call i32 @llvm.ctpop.i32(i32 %722)
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  %726 = xor i8 %725, 1
  store i8 %726, i8* %27, align 1
  %727 = icmp eq i32 %720, 0
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %29, align 1
  %729 = lshr i32 %720, 31
  %730 = trunc i32 %729 to i8
  store i8 %730, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %731 = add i64 %675, 26
  store i64 %731, i64* %PC.i, align 8
  store i32 %720, i32* %718, align 4
  %732 = load i64, i64* %RBP.i, align 8
  %733 = add i64 %732, -88
  %734 = load i64, i64* %PC.i, align 8
  %735 = add i64 %734, 3
  store i64 %735, i64* %PC.i, align 8
  %736 = inttoptr i64 %733 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RAX.i890, align 8
  %739 = add i64 %732, -40
  %740 = add i64 %734, 6
  store i64 %740, i64* %PC.i, align 8
  %741 = inttoptr i64 %739 to i32*
  %742 = load i32, i32* %741, align 4
  %743 = add i32 %742, %737
  %744 = shl i32 %743, 13
  %745 = zext i32 %744 to i64
  store i64 %745, i64* %RAX.i890, align 8
  %746 = lshr i32 %743, 19
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %749 = icmp eq i32 %744, 0
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %29, align 1
  %751 = lshr i32 %743, 18
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  store i8 %753, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %754 = add i64 %734, 12
  store i64 %754, i64* %PC.i, align 8
  %755 = load i32, i32* %736, align 4
  %756 = zext i32 %755 to i64
  store i64 %756, i64* %RCX.i887, align 8
  %757 = add i64 %734, 15
  store i64 %757, i64* %PC.i, align 8
  %758 = load i32, i32* %741, align 4
  %759 = add i32 %758, %755
  %760 = lshr i32 %759, 19
  %761 = zext i32 %760 to i64
  store i64 %761, i64* %RCX.i887, align 8
  %762 = or i32 %760, %744
  %763 = zext i32 %762 to i64
  store i64 %763, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %764 = and i32 %760, 255
  %765 = tail call i32 @llvm.ctpop.i32(i32 %764)
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  store i8 %768, i8* %27, align 1
  %769 = icmp eq i32 %762, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %29, align 1
  %771 = lshr i32 %743, 18
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %774 = load i64, i64* %RBP.i, align 8
  %775 = add i64 %774, -72
  %776 = add i64 %734, 23
  store i64 %776, i64* %PC.i, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = xor i32 %778, %762
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %781 = and i32 %779, 255
  %782 = tail call i32 @llvm.ctpop.i32(i32 %781)
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = xor i8 %784, 1
  store i8 %785, i8* %27, align 1
  %786 = icmp eq i32 %779, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %29, align 1
  %788 = lshr i32 %779, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %790 = add i64 %734, 26
  store i64 %790, i64* %PC.i, align 8
  store i32 %779, i32* %777, align 4
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -72
  %793 = load i64, i64* %PC.i, align 8
  %794 = add i64 %793, 3
  store i64 %794, i64* %PC.i, align 8
  %795 = inttoptr i64 %792 to i32*
  %796 = load i32, i32* %795, align 4
  %797 = zext i32 %796 to i64
  store i64 %797, i64* %RAX.i890, align 8
  %798 = add i64 %791, -88
  %799 = add i64 %793, 6
  store i64 %799, i64* %PC.i, align 8
  %800 = inttoptr i64 %798 to i32*
  %801 = load i32, i32* %800, align 4
  %802 = add i32 %801, %796
  %803 = shl i32 %802, 18
  %804 = zext i32 %803 to i64
  store i64 %804, i64* %RAX.i890, align 8
  %805 = lshr i32 %802, 14
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  store i8 %807, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %808 = icmp eq i32 %803, 0
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %29, align 1
  %810 = lshr i32 %802, 13
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  store i8 %812, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %813 = add i64 %793, 12
  store i64 %813, i64* %PC.i, align 8
  %814 = load i32, i32* %795, align 4
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %RCX.i887, align 8
  %816 = add i64 %793, 15
  store i64 %816, i64* %PC.i, align 8
  %817 = load i32, i32* %800, align 4
  %818 = add i32 %817, %814
  %819 = lshr i32 %818, 14
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RCX.i887, align 8
  %821 = or i32 %819, %803
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %823 = and i32 %819, 255
  %824 = tail call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  store i8 %827, i8* %27, align 1
  %828 = icmp eq i32 %821, 0
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %29, align 1
  %830 = lshr i32 %802, 13
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  store i8 %832, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %833 = load i64, i64* %RBP.i, align 8
  %834 = add i64 %833, -56
  %835 = add i64 %793, 23
  store i64 %835, i64* %PC.i, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = xor i32 %837, %821
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %840 = and i32 %838, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %27, align 1
  %845 = icmp eq i32 %838, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %29, align 1
  %847 = lshr i32 %838, 31
  %848 = trunc i32 %847 to i8
  store i8 %848, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %849 = add i64 %793, 26
  store i64 %849, i64* %PC.i, align 8
  store i32 %838, i32* %836, align 4
  %850 = load i64, i64* %RBP.i, align 8
  %851 = add i64 %850, -36
  %852 = load i64, i64* %PC.i, align 8
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC.i, align 8
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854, align 4
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RAX.i890, align 8
  %857 = add i64 %850, -52
  %858 = add i64 %852, 6
  store i64 %858, i64* %PC.i, align 8
  %859 = inttoptr i64 %857 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = add i32 %860, %855
  %862 = shl i32 %861, 7
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %RAX.i890, align 8
  %864 = lshr i32 %861, 25
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  store i8 %866, i8* %26, align 1
  %867 = and i32 %862, 128
  %868 = tail call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = xor i8 %869, 1
  store i8 %870, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %871 = icmp eq i32 %862, 0
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %29, align 1
  %873 = lshr i32 %861, 24
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  store i8 %875, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %876 = add i64 %852, 12
  store i64 %876, i64* %PC.i, align 8
  %877 = load i32, i32* %854, align 4
  %878 = zext i32 %877 to i64
  store i64 %878, i64* %RCX.i887, align 8
  %879 = add i64 %852, 15
  store i64 %879, i64* %PC.i, align 8
  %880 = load i32, i32* %859, align 4
  %881 = add i32 %880, %877
  %882 = lshr i32 %881, 25
  %883 = zext i32 %882 to i64
  store i64 %883, i64* %RCX.i887, align 8
  %884 = or i32 %882, %862
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %886 = and i32 %884, 255
  %887 = tail call i32 @llvm.ctpop.i32(i32 %886)
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  %890 = xor i8 %889, 1
  store i8 %890, i8* %27, align 1
  %891 = icmp eq i32 %884, 0
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %29, align 1
  %893 = lshr i32 %861, 24
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  store i8 %895, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %896 = load i64, i64* %RBP.i, align 8
  %897 = add i64 %896, -84
  %898 = add i64 %852, 23
  store i64 %898, i64* %PC.i, align 8
  %899 = inttoptr i64 %897 to i32*
  %900 = load i32, i32* %899, align 4
  %901 = xor i32 %900, %884
  %902 = zext i32 %901 to i64
  store i64 %902, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %903 = and i32 %901, 255
  %904 = tail call i32 @llvm.ctpop.i32(i32 %903)
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = xor i8 %906, 1
  store i8 %907, i8* %27, align 1
  %908 = icmp eq i32 %901, 0
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %29, align 1
  %910 = lshr i32 %901, 31
  %911 = trunc i32 %910 to i8
  store i8 %911, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %912 = add i64 %852, 26
  store i64 %912, i64* %PC.i, align 8
  store i32 %901, i32* %899, align 4
  %913 = load i64, i64* %RBP.i, align 8
  %914 = add i64 %913, -84
  %915 = load i64, i64* %PC.i, align 8
  %916 = add i64 %915, 3
  store i64 %916, i64* %PC.i, align 8
  %917 = inttoptr i64 %914 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RAX.i890, align 8
  %920 = add i64 %913, -36
  %921 = add i64 %915, 6
  store i64 %921, i64* %PC.i, align 8
  %922 = inttoptr i64 %920 to i32*
  %923 = load i32, i32* %922, align 4
  %924 = add i32 %923, %918
  %925 = shl i32 %924, 9
  %926 = zext i32 %925 to i64
  store i64 %926, i64* %RAX.i890, align 8
  %927 = lshr i32 %924, 23
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  store i8 %929, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %930 = icmp eq i32 %925, 0
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %29, align 1
  %932 = lshr i32 %924, 22
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  store i8 %934, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %935 = add i64 %915, 12
  store i64 %935, i64* %PC.i, align 8
  %936 = load i32, i32* %917, align 4
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RCX.i887, align 8
  %938 = add i64 %915, 15
  store i64 %938, i64* %PC.i, align 8
  %939 = load i32, i32* %922, align 4
  %940 = add i32 %939, %936
  %941 = lshr i32 %940, 23
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RCX.i887, align 8
  %943 = or i32 %941, %925
  %944 = zext i32 %943 to i64
  store i64 %944, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %945 = and i32 %941, 255
  %946 = tail call i32 @llvm.ctpop.i32(i32 %945)
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  store i8 %949, i8* %27, align 1
  %950 = icmp eq i32 %943, 0
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %29, align 1
  %952 = lshr i32 %924, 22
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  store i8 %954, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %955 = load i64, i64* %RBP.i, align 8
  %956 = add i64 %955, -68
  %957 = add i64 %915, 23
  store i64 %957, i64* %PC.i, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = xor i32 %959, %943
  %961 = zext i32 %960 to i64
  store i64 %961, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %962 = and i32 %960, 255
  %963 = tail call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  store i8 %966, i8* %27, align 1
  %967 = icmp eq i32 %960, 0
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %29, align 1
  %969 = lshr i32 %960, 31
  %970 = trunc i32 %969 to i8
  store i8 %970, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %971 = add i64 %915, 26
  store i64 %971, i64* %PC.i, align 8
  store i32 %960, i32* %958, align 4
  %972 = load i64, i64* %RBP.i, align 8
  %973 = add i64 %972, -68
  %974 = load i64, i64* %PC.i, align 8
  %975 = add i64 %974, 3
  store i64 %975, i64* %PC.i, align 8
  %976 = inttoptr i64 %973 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %RAX.i890, align 8
  %979 = add i64 %972, -84
  %980 = add i64 %974, 6
  store i64 %980, i64* %PC.i, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = add i32 %982, %977
  %984 = shl i32 %983, 13
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RAX.i890, align 8
  %986 = lshr i32 %983, 19
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  store i8 %988, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %989 = icmp eq i32 %984, 0
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %29, align 1
  %991 = lshr i32 %983, 18
  %992 = trunc i32 %991 to i8
  %993 = and i8 %992, 1
  store i8 %993, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %994 = add i64 %974, 12
  store i64 %994, i64* %PC.i, align 8
  %995 = load i32, i32* %976, align 4
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RCX.i887, align 8
  %997 = add i64 %974, 15
  store i64 %997, i64* %PC.i, align 8
  %998 = load i32, i32* %981, align 4
  %999 = add i32 %998, %995
  %1000 = lshr i32 %999, 19
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RCX.i887, align 8
  %1002 = or i32 %1000, %984
  %1003 = zext i32 %1002 to i64
  store i64 %1003, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1004 = and i32 %1000, 255
  %1005 = tail call i32 @llvm.ctpop.i32(i32 %1004)
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  store i8 %1008, i8* %27, align 1
  %1009 = icmp eq i32 %1002, 0
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %29, align 1
  %1011 = lshr i32 %983, 18
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  store i8 %1013, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1014 = load i64, i64* %RBP.i, align 8
  %1015 = add i64 %1014, -52
  %1016 = add i64 %974, 23
  store i64 %1016, i64* %PC.i, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = xor i32 %1018, %1002
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1021 = and i32 %1019, 255
  %1022 = tail call i32 @llvm.ctpop.i32(i32 %1021)
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = xor i8 %1024, 1
  store i8 %1025, i8* %27, align 1
  %1026 = icmp eq i32 %1019, 0
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %29, align 1
  %1028 = lshr i32 %1019, 31
  %1029 = trunc i32 %1028 to i8
  store i8 %1029, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1030 = add i64 %974, 26
  store i64 %1030, i64* %PC.i, align 8
  store i32 %1019, i32* %1017, align 4
  %1031 = load i64, i64* %RBP.i, align 8
  %1032 = add i64 %1031, -52
  %1033 = load i64, i64* %PC.i, align 8
  %1034 = add i64 %1033, 3
  store i64 %1034, i64* %PC.i, align 8
  %1035 = inttoptr i64 %1032 to i32*
  %1036 = load i32, i32* %1035, align 4
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %RAX.i890, align 8
  %1038 = add i64 %1031, -68
  %1039 = add i64 %1033, 6
  store i64 %1039, i64* %PC.i, align 8
  %1040 = inttoptr i64 %1038 to i32*
  %1041 = load i32, i32* %1040, align 4
  %1042 = add i32 %1041, %1036
  %1043 = shl i32 %1042, 18
  %1044 = zext i32 %1043 to i64
  store i64 %1044, i64* %RAX.i890, align 8
  %1045 = lshr i32 %1042, 14
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  store i8 %1047, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1048 = icmp eq i32 %1043, 0
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %29, align 1
  %1050 = lshr i32 %1042, 13
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  store i8 %1052, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1053 = add i64 %1033, 12
  store i64 %1053, i64* %PC.i, align 8
  %1054 = load i32, i32* %1035, align 4
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RCX.i887, align 8
  %1056 = add i64 %1033, 15
  store i64 %1056, i64* %PC.i, align 8
  %1057 = load i32, i32* %1040, align 4
  %1058 = add i32 %1057, %1054
  %1059 = lshr i32 %1058, 14
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RCX.i887, align 8
  %1061 = or i32 %1059, %1043
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1063 = and i32 %1059, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %27, align 1
  %1068 = icmp eq i32 %1061, 0
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %29, align 1
  %1070 = lshr i32 %1042, 13
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  store i8 %1072, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1073 = load i64, i64* %RBP.i, align 8
  %1074 = add i64 %1073, -36
  %1075 = add i64 %1033, 23
  store i64 %1075, i64* %PC.i, align 8
  %1076 = inttoptr i64 %1074 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = xor i32 %1077, %1061
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1080 = and i32 %1078, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %27, align 1
  %1085 = icmp eq i32 %1078, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %29, align 1
  %1087 = lshr i32 %1078, 31
  %1088 = trunc i32 %1087 to i8
  store i8 %1088, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1089 = add i64 %1033, 26
  store i64 %1089, i64* %PC.i, align 8
  store i32 %1078, i32* %1076, align 4
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -96
  %1092 = load i64, i64* %PC.i, align 8
  %1093 = add i64 %1092, 3
  store i64 %1093, i64* %PC.i, align 8
  %1094 = inttoptr i64 %1091 to i32*
  %1095 = load i32, i32* %1094, align 4
  %1096 = zext i32 %1095 to i64
  store i64 %1096, i64* %RAX.i890, align 8
  %1097 = add i64 %1090, -84
  %1098 = add i64 %1092, 6
  store i64 %1098, i64* %PC.i, align 8
  %1099 = inttoptr i64 %1097 to i32*
  %1100 = load i32, i32* %1099, align 4
  %1101 = add i32 %1100, %1095
  %1102 = shl i32 %1101, 7
  %1103 = zext i32 %1102 to i64
  store i64 %1103, i64* %RAX.i890, align 8
  %1104 = lshr i32 %1101, 25
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %26, align 1
  %1107 = and i32 %1102, 128
  %1108 = tail call i32 @llvm.ctpop.i32(i32 %1107)
  %1109 = trunc i32 %1108 to i8
  %1110 = xor i8 %1109, 1
  store i8 %1110, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1111 = icmp eq i32 %1102, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %29, align 1
  %1113 = lshr i32 %1101, 24
  %1114 = trunc i32 %1113 to i8
  %1115 = and i8 %1114, 1
  store i8 %1115, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1116 = add i64 %1092, 12
  store i64 %1116, i64* %PC.i, align 8
  %1117 = load i32, i32* %1094, align 4
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %RCX.i887, align 8
  %1119 = add i64 %1092, 15
  store i64 %1119, i64* %PC.i, align 8
  %1120 = load i32, i32* %1099, align 4
  %1121 = add i32 %1120, %1117
  %1122 = lshr i32 %1121, 25
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RCX.i887, align 8
  %1124 = or i32 %1122, %1102
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1126 = and i32 %1124, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %27, align 1
  %1131 = icmp eq i32 %1124, 0
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %29, align 1
  %1133 = lshr i32 %1101, 24
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  store i8 %1135, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1136 = load i64, i64* %RBP.i, align 8
  %1137 = add i64 %1136, -92
  %1138 = add i64 %1092, 23
  store i64 %1138, i64* %PC.i, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = xor i32 %1140, %1124
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1143 = and i32 %1141, 255
  %1144 = tail call i32 @llvm.ctpop.i32(i32 %1143)
  %1145 = trunc i32 %1144 to i8
  %1146 = and i8 %1145, 1
  %1147 = xor i8 %1146, 1
  store i8 %1147, i8* %27, align 1
  %1148 = icmp eq i32 %1141, 0
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %29, align 1
  %1150 = lshr i32 %1141, 31
  %1151 = trunc i32 %1150 to i8
  store i8 %1151, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1152 = add i64 %1092, 26
  store i64 %1152, i64* %PC.i, align 8
  store i32 %1141, i32* %1139, align 4
  %1153 = load i64, i64* %RBP.i, align 8
  %1154 = add i64 %1153, -92
  %1155 = load i64, i64* %PC.i, align 8
  %1156 = add i64 %1155, 3
  store i64 %1156, i64* %PC.i, align 8
  %1157 = inttoptr i64 %1154 to i32*
  %1158 = load i32, i32* %1157, align 4
  %1159 = zext i32 %1158 to i64
  store i64 %1159, i64* %RAX.i890, align 8
  %1160 = add i64 %1153, -96
  %1161 = add i64 %1155, 6
  store i64 %1161, i64* %PC.i, align 8
  %1162 = inttoptr i64 %1160 to i32*
  %1163 = load i32, i32* %1162, align 4
  %1164 = add i32 %1163, %1158
  %1165 = shl i32 %1164, 9
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RAX.i890, align 8
  %1167 = lshr i32 %1164, 23
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  store i8 %1169, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1170 = icmp eq i32 %1165, 0
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %29, align 1
  %1172 = lshr i32 %1164, 22
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  store i8 %1174, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1175 = add i64 %1155, 12
  store i64 %1175, i64* %PC.i, align 8
  %1176 = load i32, i32* %1157, align 4
  %1177 = zext i32 %1176 to i64
  store i64 %1177, i64* %RCX.i887, align 8
  %1178 = add i64 %1155, 15
  store i64 %1178, i64* %PC.i, align 8
  %1179 = load i32, i32* %1162, align 4
  %1180 = add i32 %1179, %1176
  %1181 = lshr i32 %1180, 23
  %1182 = zext i32 %1181 to i64
  store i64 %1182, i64* %RCX.i887, align 8
  %1183 = or i32 %1181, %1165
  %1184 = zext i32 %1183 to i64
  store i64 %1184, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1185 = and i32 %1181, 255
  %1186 = tail call i32 @llvm.ctpop.i32(i32 %1185)
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  %1189 = xor i8 %1188, 1
  store i8 %1189, i8* %27, align 1
  %1190 = icmp eq i32 %1183, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %29, align 1
  %1192 = lshr i32 %1164, 22
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  store i8 %1194, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1195 = load i64, i64* %RBP.i, align 8
  %1196 = add i64 %1195, -88
  %1197 = add i64 %1155, 23
  store i64 %1197, i64* %PC.i, align 8
  %1198 = inttoptr i64 %1196 to i32*
  %1199 = load i32, i32* %1198, align 4
  %1200 = xor i32 %1199, %1183
  %1201 = zext i32 %1200 to i64
  store i64 %1201, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1202 = and i32 %1200, 255
  %1203 = tail call i32 @llvm.ctpop.i32(i32 %1202)
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  store i8 %1206, i8* %27, align 1
  %1207 = icmp eq i32 %1200, 0
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %29, align 1
  %1209 = lshr i32 %1200, 31
  %1210 = trunc i32 %1209 to i8
  store i8 %1210, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1211 = add i64 %1155, 26
  store i64 %1211, i64* %PC.i, align 8
  store i32 %1200, i32* %1198, align 4
  %1212 = load i64, i64* %RBP.i, align 8
  %1213 = add i64 %1212, -88
  %1214 = load i64, i64* %PC.i, align 8
  %1215 = add i64 %1214, 3
  store i64 %1215, i64* %PC.i, align 8
  %1216 = inttoptr i64 %1213 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = zext i32 %1217 to i64
  store i64 %1218, i64* %RAX.i890, align 8
  %1219 = add i64 %1212, -92
  %1220 = add i64 %1214, 6
  store i64 %1220, i64* %PC.i, align 8
  %1221 = inttoptr i64 %1219 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = add i32 %1222, %1217
  %1224 = shl i32 %1223, 13
  %1225 = zext i32 %1224 to i64
  store i64 %1225, i64* %RAX.i890, align 8
  %1226 = lshr i32 %1223, 19
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1229 = icmp eq i32 %1224, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %29, align 1
  %1231 = lshr i32 %1223, 18
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  store i8 %1233, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1234 = add i64 %1214, 12
  store i64 %1234, i64* %PC.i, align 8
  %1235 = load i32, i32* %1216, align 4
  %1236 = zext i32 %1235 to i64
  store i64 %1236, i64* %RCX.i887, align 8
  %1237 = add i64 %1214, 15
  store i64 %1237, i64* %PC.i, align 8
  %1238 = load i32, i32* %1221, align 4
  %1239 = add i32 %1238, %1235
  %1240 = lshr i32 %1239, 19
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RCX.i887, align 8
  %1242 = or i32 %1240, %1224
  %1243 = zext i32 %1242 to i64
  store i64 %1243, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1244 = and i32 %1240, 255
  %1245 = tail call i32 @llvm.ctpop.i32(i32 %1244)
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  %1248 = xor i8 %1247, 1
  store i8 %1248, i8* %27, align 1
  %1249 = icmp eq i32 %1242, 0
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %29, align 1
  %1251 = lshr i32 %1223, 18
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  store i8 %1253, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1254 = load i64, i64* %RBP.i, align 8
  %1255 = add i64 %1254, -84
  %1256 = add i64 %1214, 23
  store i64 %1256, i64* %PC.i, align 8
  %1257 = inttoptr i64 %1255 to i32*
  %1258 = load i32, i32* %1257, align 4
  %1259 = xor i32 %1258, %1242
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1261 = and i32 %1259, 255
  %1262 = tail call i32 @llvm.ctpop.i32(i32 %1261)
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  %1265 = xor i8 %1264, 1
  store i8 %1265, i8* %27, align 1
  %1266 = icmp eq i32 %1259, 0
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %29, align 1
  %1268 = lshr i32 %1259, 31
  %1269 = trunc i32 %1268 to i8
  store i8 %1269, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1270 = add i64 %1214, 26
  store i64 %1270, i64* %PC.i, align 8
  store i32 %1259, i32* %1257, align 4
  %1271 = load i64, i64* %RBP.i, align 8
  %1272 = add i64 %1271, -84
  %1273 = load i64, i64* %PC.i, align 8
  %1274 = add i64 %1273, 3
  store i64 %1274, i64* %PC.i, align 8
  %1275 = inttoptr i64 %1272 to i32*
  %1276 = load i32, i32* %1275, align 4
  %1277 = zext i32 %1276 to i64
  store i64 %1277, i64* %RAX.i890, align 8
  %1278 = add i64 %1271, -88
  %1279 = add i64 %1273, 6
  store i64 %1279, i64* %PC.i, align 8
  %1280 = inttoptr i64 %1278 to i32*
  %1281 = load i32, i32* %1280, align 4
  %1282 = add i32 %1281, %1276
  %1283 = shl i32 %1282, 18
  %1284 = zext i32 %1283 to i64
  store i64 %1284, i64* %RAX.i890, align 8
  %1285 = lshr i32 %1282, 14
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  store i8 %1287, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1288 = icmp eq i32 %1283, 0
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %29, align 1
  %1290 = lshr i32 %1282, 13
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  store i8 %1292, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1293 = add i64 %1273, 12
  store i64 %1293, i64* %PC.i, align 8
  %1294 = load i32, i32* %1275, align 4
  %1295 = zext i32 %1294 to i64
  store i64 %1295, i64* %RCX.i887, align 8
  %1296 = add i64 %1273, 15
  store i64 %1296, i64* %PC.i, align 8
  %1297 = load i32, i32* %1280, align 4
  %1298 = add i32 %1297, %1294
  %1299 = lshr i32 %1298, 14
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RCX.i887, align 8
  %1301 = or i32 %1299, %1283
  %1302 = zext i32 %1301 to i64
  store i64 %1302, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1303 = and i32 %1299, 255
  %1304 = tail call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  store i8 %1307, i8* %27, align 1
  %1308 = icmp eq i32 %1301, 0
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %29, align 1
  %1310 = lshr i32 %1282, 13
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  store i8 %1312, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1313 = load i64, i64* %RBP.i, align 8
  %1314 = add i64 %1313, -96
  %1315 = add i64 %1273, 23
  store i64 %1315, i64* %PC.i, align 8
  %1316 = inttoptr i64 %1314 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = xor i32 %1317, %1301
  %1319 = zext i32 %1318 to i64
  store i64 %1319, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1320 = and i32 %1318, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %27, align 1
  %1325 = icmp eq i32 %1318, 0
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %29, align 1
  %1327 = lshr i32 %1318, 31
  %1328 = trunc i32 %1327 to i8
  store i8 %1328, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1329 = add i64 %1273, 26
  store i64 %1329, i64* %PC.i, align 8
  store i32 %1318, i32* %1316, align 4
  %1330 = load i64, i64* %RBP.i, align 8
  %1331 = add i64 %1330, -76
  %1332 = load i64, i64* %PC.i, align 8
  %1333 = add i64 %1332, 3
  store i64 %1333, i64* %PC.i, align 8
  %1334 = inttoptr i64 %1331 to i32*
  %1335 = load i32, i32* %1334, align 4
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RAX.i890, align 8
  %1337 = add i64 %1330, -80
  %1338 = add i64 %1332, 6
  store i64 %1338, i64* %PC.i, align 8
  %1339 = inttoptr i64 %1337 to i32*
  %1340 = load i32, i32* %1339, align 4
  %1341 = add i32 %1340, %1335
  %1342 = shl i32 %1341, 7
  %1343 = zext i32 %1342 to i64
  store i64 %1343, i64* %RAX.i890, align 8
  %1344 = lshr i32 %1341, 25
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  store i8 %1346, i8* %26, align 1
  %1347 = and i32 %1342, 128
  %1348 = tail call i32 @llvm.ctpop.i32(i32 %1347)
  %1349 = trunc i32 %1348 to i8
  %1350 = xor i8 %1349, 1
  store i8 %1350, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1351 = icmp eq i32 %1342, 0
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %29, align 1
  %1353 = lshr i32 %1341, 24
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  store i8 %1355, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1356 = add i64 %1332, 12
  store i64 %1356, i64* %PC.i, align 8
  %1357 = load i32, i32* %1334, align 4
  %1358 = zext i32 %1357 to i64
  store i64 %1358, i64* %RCX.i887, align 8
  %1359 = add i64 %1332, 15
  store i64 %1359, i64* %PC.i, align 8
  %1360 = load i32, i32* %1339, align 4
  %1361 = add i32 %1360, %1357
  %1362 = lshr i32 %1361, 25
  %1363 = zext i32 %1362 to i64
  store i64 %1363, i64* %RCX.i887, align 8
  %1364 = or i32 %1362, %1342
  %1365 = zext i32 %1364 to i64
  store i64 %1365, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1366 = and i32 %1364, 255
  %1367 = tail call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  store i8 %1370, i8* %27, align 1
  %1371 = icmp eq i32 %1364, 0
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %29, align 1
  %1373 = lshr i32 %1341, 24
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  store i8 %1375, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1376 = load i64, i64* %RBP.i, align 8
  %1377 = add i64 %1376, -72
  %1378 = add i64 %1332, 23
  store i64 %1378, i64* %PC.i, align 8
  %1379 = inttoptr i64 %1377 to i32*
  %1380 = load i32, i32* %1379, align 4
  %1381 = xor i32 %1380, %1364
  %1382 = zext i32 %1381 to i64
  store i64 %1382, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1383 = and i32 %1381, 255
  %1384 = tail call i32 @llvm.ctpop.i32(i32 %1383)
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  %1387 = xor i8 %1386, 1
  store i8 %1387, i8* %27, align 1
  %1388 = icmp eq i32 %1381, 0
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %29, align 1
  %1390 = lshr i32 %1381, 31
  %1391 = trunc i32 %1390 to i8
  store i8 %1391, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1392 = add i64 %1332, 26
  store i64 %1392, i64* %PC.i, align 8
  store i32 %1381, i32* %1379, align 4
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -72
  %1395 = load i64, i64* %PC.i, align 8
  %1396 = add i64 %1395, 3
  store i64 %1396, i64* %PC.i, align 8
  %1397 = inttoptr i64 %1394 to i32*
  %1398 = load i32, i32* %1397, align 4
  %1399 = zext i32 %1398 to i64
  store i64 %1399, i64* %RAX.i890, align 8
  %1400 = add i64 %1393, -76
  %1401 = add i64 %1395, 6
  store i64 %1401, i64* %PC.i, align 8
  %1402 = inttoptr i64 %1400 to i32*
  %1403 = load i32, i32* %1402, align 4
  %1404 = add i32 %1403, %1398
  %1405 = shl i32 %1404, 9
  %1406 = zext i32 %1405 to i64
  store i64 %1406, i64* %RAX.i890, align 8
  %1407 = lshr i32 %1404, 23
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  store i8 %1409, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1410 = icmp eq i32 %1405, 0
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %29, align 1
  %1412 = lshr i32 %1404, 22
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  store i8 %1414, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1415 = add i64 %1395, 12
  store i64 %1415, i64* %PC.i, align 8
  %1416 = load i32, i32* %1397, align 4
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RCX.i887, align 8
  %1418 = add i64 %1395, 15
  store i64 %1418, i64* %PC.i, align 8
  %1419 = load i32, i32* %1402, align 4
  %1420 = add i32 %1419, %1416
  %1421 = lshr i32 %1420, 23
  %1422 = zext i32 %1421 to i64
  store i64 %1422, i64* %RCX.i887, align 8
  %1423 = or i32 %1421, %1405
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1425 = and i32 %1421, 255
  %1426 = tail call i32 @llvm.ctpop.i32(i32 %1425)
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  %1429 = xor i8 %1428, 1
  store i8 %1429, i8* %27, align 1
  %1430 = icmp eq i32 %1423, 0
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %29, align 1
  %1432 = lshr i32 %1404, 22
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  store i8 %1434, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1435 = load i64, i64* %RBP.i, align 8
  %1436 = add i64 %1435, -68
  %1437 = add i64 %1395, 23
  store i64 %1437, i64* %PC.i, align 8
  %1438 = inttoptr i64 %1436 to i32*
  %1439 = load i32, i32* %1438, align 4
  %1440 = xor i32 %1439, %1423
  %1441 = zext i32 %1440 to i64
  store i64 %1441, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1442 = and i32 %1440, 255
  %1443 = tail call i32 @llvm.ctpop.i32(i32 %1442)
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %27, align 1
  %1447 = icmp eq i32 %1440, 0
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %29, align 1
  %1449 = lshr i32 %1440, 31
  %1450 = trunc i32 %1449 to i8
  store i8 %1450, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1451 = add i64 %1395, 26
  store i64 %1451, i64* %PC.i, align 8
  store i32 %1440, i32* %1438, align 4
  %1452 = load i64, i64* %RBP.i, align 8
  %1453 = add i64 %1452, -68
  %1454 = load i64, i64* %PC.i, align 8
  %1455 = add i64 %1454, 3
  store i64 %1455, i64* %PC.i, align 8
  %1456 = inttoptr i64 %1453 to i32*
  %1457 = load i32, i32* %1456, align 4
  %1458 = zext i32 %1457 to i64
  store i64 %1458, i64* %RAX.i890, align 8
  %1459 = add i64 %1452, -72
  %1460 = add i64 %1454, 6
  store i64 %1460, i64* %PC.i, align 8
  %1461 = inttoptr i64 %1459 to i32*
  %1462 = load i32, i32* %1461, align 4
  %1463 = add i32 %1462, %1457
  %1464 = shl i32 %1463, 13
  %1465 = zext i32 %1464 to i64
  store i64 %1465, i64* %RAX.i890, align 8
  %1466 = lshr i32 %1463, 19
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  store i8 %1468, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1469 = icmp eq i32 %1464, 0
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %29, align 1
  %1471 = lshr i32 %1463, 18
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  store i8 %1473, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1474 = add i64 %1454, 12
  store i64 %1474, i64* %PC.i, align 8
  %1475 = load i32, i32* %1456, align 4
  %1476 = zext i32 %1475 to i64
  store i64 %1476, i64* %RCX.i887, align 8
  %1477 = add i64 %1454, 15
  store i64 %1477, i64* %PC.i, align 8
  %1478 = load i32, i32* %1461, align 4
  %1479 = add i32 %1478, %1475
  %1480 = lshr i32 %1479, 19
  %1481 = zext i32 %1480 to i64
  store i64 %1481, i64* %RCX.i887, align 8
  %1482 = or i32 %1480, %1464
  %1483 = zext i32 %1482 to i64
  store i64 %1483, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1484 = and i32 %1480, 255
  %1485 = tail call i32 @llvm.ctpop.i32(i32 %1484)
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  %1488 = xor i8 %1487, 1
  store i8 %1488, i8* %27, align 1
  %1489 = icmp eq i32 %1482, 0
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %29, align 1
  %1491 = lshr i32 %1463, 18
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  store i8 %1493, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1494 = load i64, i64* %RBP.i, align 8
  %1495 = add i64 %1494, -80
  %1496 = add i64 %1454, 23
  store i64 %1496, i64* %PC.i, align 8
  %1497 = inttoptr i64 %1495 to i32*
  %1498 = load i32, i32* %1497, align 4
  %1499 = xor i32 %1498, %1482
  %1500 = zext i32 %1499 to i64
  store i64 %1500, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1501 = and i32 %1499, 255
  %1502 = tail call i32 @llvm.ctpop.i32(i32 %1501)
  %1503 = trunc i32 %1502 to i8
  %1504 = and i8 %1503, 1
  %1505 = xor i8 %1504, 1
  store i8 %1505, i8* %27, align 1
  %1506 = icmp eq i32 %1499, 0
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %29, align 1
  %1508 = lshr i32 %1499, 31
  %1509 = trunc i32 %1508 to i8
  store i8 %1509, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1510 = add i64 %1454, 26
  store i64 %1510, i64* %PC.i, align 8
  store i32 %1499, i32* %1497, align 4
  %1511 = load i64, i64* %RBP.i, align 8
  %1512 = add i64 %1511, -80
  %1513 = load i64, i64* %PC.i, align 8
  %1514 = add i64 %1513, 3
  store i64 %1514, i64* %PC.i, align 8
  %1515 = inttoptr i64 %1512 to i32*
  %1516 = load i32, i32* %1515, align 4
  %1517 = zext i32 %1516 to i64
  store i64 %1517, i64* %RAX.i890, align 8
  %1518 = add i64 %1511, -68
  %1519 = add i64 %1513, 6
  store i64 %1519, i64* %PC.i, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = add i32 %1521, %1516
  %1523 = shl i32 %1522, 18
  %1524 = zext i32 %1523 to i64
  store i64 %1524, i64* %RAX.i890, align 8
  %1525 = lshr i32 %1522, 14
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  store i8 %1527, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1528 = icmp eq i32 %1523, 0
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %29, align 1
  %1530 = lshr i32 %1522, 13
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  store i8 %1532, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1533 = add i64 %1513, 12
  store i64 %1533, i64* %PC.i, align 8
  %1534 = load i32, i32* %1515, align 4
  %1535 = zext i32 %1534 to i64
  store i64 %1535, i64* %RCX.i887, align 8
  %1536 = add i64 %1513, 15
  store i64 %1536, i64* %PC.i, align 8
  %1537 = load i32, i32* %1520, align 4
  %1538 = add i32 %1537, %1534
  %1539 = lshr i32 %1538, 14
  %1540 = zext i32 %1539 to i64
  store i64 %1540, i64* %RCX.i887, align 8
  %1541 = or i32 %1539, %1523
  %1542 = zext i32 %1541 to i64
  store i64 %1542, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1543 = and i32 %1539, 255
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %27, align 1
  %1548 = icmp eq i32 %1541, 0
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %29, align 1
  %1550 = lshr i32 %1522, 13
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  store i8 %1552, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1553 = load i64, i64* %RBP.i, align 8
  %1554 = add i64 %1553, -76
  %1555 = add i64 %1513, 23
  store i64 %1555, i64* %PC.i, align 8
  %1556 = inttoptr i64 %1554 to i32*
  %1557 = load i32, i32* %1556, align 4
  %1558 = xor i32 %1557, %1541
  %1559 = zext i32 %1558 to i64
  store i64 %1559, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1560 = and i32 %1558, 255
  %1561 = tail call i32 @llvm.ctpop.i32(i32 %1560)
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = xor i8 %1563, 1
  store i8 %1564, i8* %27, align 1
  %1565 = icmp eq i32 %1558, 0
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %29, align 1
  %1567 = lshr i32 %1558, 31
  %1568 = trunc i32 %1567 to i8
  store i8 %1568, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1569 = add i64 %1513, 26
  store i64 %1569, i64* %PC.i, align 8
  store i32 %1558, i32* %1556, align 4
  %1570 = load i64, i64* %RBP.i, align 8
  %1571 = add i64 %1570, -56
  %1572 = load i64, i64* %PC.i, align 8
  %1573 = add i64 %1572, 3
  store i64 %1573, i64* %PC.i, align 8
  %1574 = inttoptr i64 %1571 to i32*
  %1575 = load i32, i32* %1574, align 4
  %1576 = zext i32 %1575 to i64
  store i64 %1576, i64* %RAX.i890, align 8
  %1577 = add i64 %1570, -60
  %1578 = add i64 %1572, 6
  store i64 %1578, i64* %PC.i, align 8
  %1579 = inttoptr i64 %1577 to i32*
  %1580 = load i32, i32* %1579, align 4
  %1581 = add i32 %1580, %1575
  %1582 = shl i32 %1581, 7
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RAX.i890, align 8
  %1584 = lshr i32 %1581, 25
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  store i8 %1586, i8* %26, align 1
  %1587 = and i32 %1582, 128
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = xor i8 %1589, 1
  store i8 %1590, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1591 = icmp eq i32 %1582, 0
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %29, align 1
  %1593 = lshr i32 %1581, 24
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  store i8 %1595, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1596 = add i64 %1572, 12
  store i64 %1596, i64* %PC.i, align 8
  %1597 = load i32, i32* %1574, align 4
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RCX.i887, align 8
  %1599 = add i64 %1572, 15
  store i64 %1599, i64* %PC.i, align 8
  %1600 = load i32, i32* %1579, align 4
  %1601 = add i32 %1600, %1597
  %1602 = lshr i32 %1601, 25
  %1603 = zext i32 %1602 to i64
  store i64 %1603, i64* %RCX.i887, align 8
  %1604 = or i32 %1602, %1582
  %1605 = zext i32 %1604 to i64
  store i64 %1605, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1606 = and i32 %1604, 255
  %1607 = tail call i32 @llvm.ctpop.i32(i32 %1606)
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  %1610 = xor i8 %1609, 1
  store i8 %1610, i8* %27, align 1
  %1611 = icmp eq i32 %1604, 0
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %29, align 1
  %1613 = lshr i32 %1581, 24
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  store i8 %1615, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1616 = load i64, i64* %RBP.i, align 8
  %1617 = add i64 %1616, -52
  %1618 = add i64 %1572, 23
  store i64 %1618, i64* %PC.i, align 8
  %1619 = inttoptr i64 %1617 to i32*
  %1620 = load i32, i32* %1619, align 4
  %1621 = xor i32 %1620, %1604
  %1622 = zext i32 %1621 to i64
  store i64 %1622, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1623 = and i32 %1621, 255
  %1624 = tail call i32 @llvm.ctpop.i32(i32 %1623)
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  %1627 = xor i8 %1626, 1
  store i8 %1627, i8* %27, align 1
  %1628 = icmp eq i32 %1621, 0
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %29, align 1
  %1630 = lshr i32 %1621, 31
  %1631 = trunc i32 %1630 to i8
  store i8 %1631, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1632 = add i64 %1572, 26
  store i64 %1632, i64* %PC.i, align 8
  store i32 %1621, i32* %1619, align 4
  %1633 = load i64, i64* %RBP.i, align 8
  %1634 = add i64 %1633, -52
  %1635 = load i64, i64* %PC.i, align 8
  %1636 = add i64 %1635, 3
  store i64 %1636, i64* %PC.i, align 8
  %1637 = inttoptr i64 %1634 to i32*
  %1638 = load i32, i32* %1637, align 4
  %1639 = zext i32 %1638 to i64
  store i64 %1639, i64* %RAX.i890, align 8
  %1640 = add i64 %1633, -56
  %1641 = add i64 %1635, 6
  store i64 %1641, i64* %PC.i, align 8
  %1642 = inttoptr i64 %1640 to i32*
  %1643 = load i32, i32* %1642, align 4
  %1644 = add i32 %1643, %1638
  %1645 = shl i32 %1644, 9
  %1646 = zext i32 %1645 to i64
  store i64 %1646, i64* %RAX.i890, align 8
  %1647 = lshr i32 %1644, 23
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  store i8 %1649, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1650 = icmp eq i32 %1645, 0
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %29, align 1
  %1652 = lshr i32 %1644, 22
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  store i8 %1654, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1655 = add i64 %1635, 12
  store i64 %1655, i64* %PC.i, align 8
  %1656 = load i32, i32* %1637, align 4
  %1657 = zext i32 %1656 to i64
  store i64 %1657, i64* %RCX.i887, align 8
  %1658 = add i64 %1635, 15
  store i64 %1658, i64* %PC.i, align 8
  %1659 = load i32, i32* %1642, align 4
  %1660 = add i32 %1659, %1656
  %1661 = lshr i32 %1660, 23
  %1662 = zext i32 %1661 to i64
  store i64 %1662, i64* %RCX.i887, align 8
  %1663 = or i32 %1661, %1645
  %1664 = zext i32 %1663 to i64
  store i64 %1664, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1665 = and i32 %1661, 255
  %1666 = tail call i32 @llvm.ctpop.i32(i32 %1665)
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = xor i8 %1668, 1
  store i8 %1669, i8* %27, align 1
  %1670 = icmp eq i32 %1663, 0
  %1671 = zext i1 %1670 to i8
  store i8 %1671, i8* %29, align 1
  %1672 = lshr i32 %1644, 22
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  store i8 %1674, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1675 = load i64, i64* %RBP.i, align 8
  %1676 = add i64 %1675, -64
  %1677 = add i64 %1635, 23
  store i64 %1677, i64* %PC.i, align 8
  %1678 = inttoptr i64 %1676 to i32*
  %1679 = load i32, i32* %1678, align 4
  %1680 = xor i32 %1679, %1663
  %1681 = zext i32 %1680 to i64
  store i64 %1681, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1682 = and i32 %1680, 255
  %1683 = tail call i32 @llvm.ctpop.i32(i32 %1682)
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = xor i8 %1685, 1
  store i8 %1686, i8* %27, align 1
  %1687 = icmp eq i32 %1680, 0
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %29, align 1
  %1689 = lshr i32 %1680, 31
  %1690 = trunc i32 %1689 to i8
  store i8 %1690, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1691 = add i64 %1635, 26
  store i64 %1691, i64* %PC.i, align 8
  store i32 %1680, i32* %1678, align 4
  %1692 = load i64, i64* %RBP.i, align 8
  %1693 = add i64 %1692, -64
  %1694 = load i64, i64* %PC.i, align 8
  %1695 = add i64 %1694, 3
  store i64 %1695, i64* %PC.i, align 8
  %1696 = inttoptr i64 %1693 to i32*
  %1697 = load i32, i32* %1696, align 4
  %1698 = zext i32 %1697 to i64
  store i64 %1698, i64* %RAX.i890, align 8
  %1699 = add i64 %1692, -52
  %1700 = add i64 %1694, 6
  store i64 %1700, i64* %PC.i, align 8
  %1701 = inttoptr i64 %1699 to i32*
  %1702 = load i32, i32* %1701, align 4
  %1703 = add i32 %1702, %1697
  %1704 = shl i32 %1703, 13
  %1705 = zext i32 %1704 to i64
  store i64 %1705, i64* %RAX.i890, align 8
  %1706 = lshr i32 %1703, 19
  %1707 = trunc i32 %1706 to i8
  %1708 = and i8 %1707, 1
  store i8 %1708, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1709 = icmp eq i32 %1704, 0
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %29, align 1
  %1711 = lshr i32 %1703, 18
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  store i8 %1713, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1714 = add i64 %1694, 12
  store i64 %1714, i64* %PC.i, align 8
  %1715 = load i32, i32* %1696, align 4
  %1716 = zext i32 %1715 to i64
  store i64 %1716, i64* %RCX.i887, align 8
  %1717 = add i64 %1694, 15
  store i64 %1717, i64* %PC.i, align 8
  %1718 = load i32, i32* %1701, align 4
  %1719 = add i32 %1718, %1715
  %1720 = lshr i32 %1719, 19
  %1721 = zext i32 %1720 to i64
  store i64 %1721, i64* %RCX.i887, align 8
  %1722 = or i32 %1720, %1704
  %1723 = zext i32 %1722 to i64
  store i64 %1723, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1724 = and i32 %1720, 255
  %1725 = tail call i32 @llvm.ctpop.i32(i32 %1724)
  %1726 = trunc i32 %1725 to i8
  %1727 = and i8 %1726, 1
  %1728 = xor i8 %1727, 1
  store i8 %1728, i8* %27, align 1
  %1729 = icmp eq i32 %1722, 0
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %29, align 1
  %1731 = lshr i32 %1703, 18
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  store i8 %1733, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1734 = load i64, i64* %RBP.i, align 8
  %1735 = add i64 %1734, -60
  %1736 = add i64 %1694, 23
  store i64 %1736, i64* %PC.i, align 8
  %1737 = inttoptr i64 %1735 to i32*
  %1738 = load i32, i32* %1737, align 4
  %1739 = xor i32 %1738, %1722
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1741 = and i32 %1739, 255
  %1742 = tail call i32 @llvm.ctpop.i32(i32 %1741)
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  %1745 = xor i8 %1744, 1
  store i8 %1745, i8* %27, align 1
  %1746 = icmp eq i32 %1739, 0
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %29, align 1
  %1748 = lshr i32 %1739, 31
  %1749 = trunc i32 %1748 to i8
  store i8 %1749, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1750 = add i64 %1694, 26
  store i64 %1750, i64* %PC.i, align 8
  store i32 %1739, i32* %1737, align 4
  %1751 = load i64, i64* %RBP.i, align 8
  %1752 = add i64 %1751, -60
  %1753 = load i64, i64* %PC.i, align 8
  %1754 = add i64 %1753, 3
  store i64 %1754, i64* %PC.i, align 8
  %1755 = inttoptr i64 %1752 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = zext i32 %1756 to i64
  store i64 %1757, i64* %RAX.i890, align 8
  %1758 = add i64 %1751, -64
  %1759 = add i64 %1753, 6
  store i64 %1759, i64* %PC.i, align 8
  %1760 = inttoptr i64 %1758 to i32*
  %1761 = load i32, i32* %1760, align 4
  %1762 = add i32 %1761, %1756
  %1763 = shl i32 %1762, 18
  %1764 = zext i32 %1763 to i64
  store i64 %1764, i64* %RAX.i890, align 8
  %1765 = lshr i32 %1762, 14
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  store i8 %1767, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1768 = icmp eq i32 %1763, 0
  %1769 = zext i1 %1768 to i8
  store i8 %1769, i8* %29, align 1
  %1770 = lshr i32 %1762, 13
  %1771 = trunc i32 %1770 to i8
  %1772 = and i8 %1771, 1
  store i8 %1772, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1773 = add i64 %1753, 12
  store i64 %1773, i64* %PC.i, align 8
  %1774 = load i32, i32* %1755, align 4
  %1775 = zext i32 %1774 to i64
  store i64 %1775, i64* %RCX.i887, align 8
  %1776 = add i64 %1753, 15
  store i64 %1776, i64* %PC.i, align 8
  %1777 = load i32, i32* %1760, align 4
  %1778 = add i32 %1777, %1774
  %1779 = lshr i32 %1778, 14
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RCX.i887, align 8
  %1781 = or i32 %1779, %1763
  %1782 = zext i32 %1781 to i64
  store i64 %1782, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1783 = and i32 %1779, 255
  %1784 = tail call i32 @llvm.ctpop.i32(i32 %1783)
  %1785 = trunc i32 %1784 to i8
  %1786 = and i8 %1785, 1
  %1787 = xor i8 %1786, 1
  store i8 %1787, i8* %27, align 1
  %1788 = icmp eq i32 %1781, 0
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %29, align 1
  %1790 = lshr i32 %1762, 13
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  store i8 %1792, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1793 = load i64, i64* %RBP.i, align 8
  %1794 = add i64 %1793, -56
  %1795 = add i64 %1753, 23
  store i64 %1795, i64* %PC.i, align 8
  %1796 = inttoptr i64 %1794 to i32*
  %1797 = load i32, i32* %1796, align 4
  %1798 = xor i32 %1797, %1781
  %1799 = zext i32 %1798 to i64
  store i64 %1799, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1800 = and i32 %1798, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800)
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %27, align 1
  %1805 = icmp eq i32 %1798, 0
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %29, align 1
  %1807 = lshr i32 %1798, 31
  %1808 = trunc i32 %1807 to i8
  store i8 %1808, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1809 = add i64 %1753, 26
  store i64 %1809, i64* %PC.i, align 8
  store i32 %1798, i32* %1796, align 4
  %1810 = load i64, i64* %RBP.i, align 8
  %1811 = add i64 %1810, -36
  %1812 = load i64, i64* %PC.i, align 8
  %1813 = add i64 %1812, 3
  store i64 %1813, i64* %PC.i, align 8
  %1814 = inttoptr i64 %1811 to i32*
  %1815 = load i32, i32* %1814, align 4
  %1816 = zext i32 %1815 to i64
  store i64 %1816, i64* %RAX.i890, align 8
  %1817 = add i64 %1810, -40
  %1818 = add i64 %1812, 6
  store i64 %1818, i64* %PC.i, align 8
  %1819 = inttoptr i64 %1817 to i32*
  %1820 = load i32, i32* %1819, align 4
  %1821 = add i32 %1820, %1815
  %1822 = shl i32 %1821, 7
  %1823 = zext i32 %1822 to i64
  store i64 %1823, i64* %RAX.i890, align 8
  %1824 = lshr i32 %1821, 25
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  store i8 %1826, i8* %26, align 1
  %1827 = and i32 %1822, 128
  %1828 = tail call i32 @llvm.ctpop.i32(i32 %1827)
  %1829 = trunc i32 %1828 to i8
  %1830 = xor i8 %1829, 1
  store i8 %1830, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1831 = icmp eq i32 %1822, 0
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %29, align 1
  %1833 = lshr i32 %1821, 24
  %1834 = trunc i32 %1833 to i8
  %1835 = and i8 %1834, 1
  store i8 %1835, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1836 = add i64 %1812, 12
  store i64 %1836, i64* %PC.i, align 8
  %1837 = load i32, i32* %1814, align 4
  %1838 = zext i32 %1837 to i64
  store i64 %1838, i64* %RCX.i887, align 8
  %1839 = add i64 %1812, 15
  store i64 %1839, i64* %PC.i, align 8
  %1840 = load i32, i32* %1819, align 4
  %1841 = add i32 %1840, %1837
  %1842 = lshr i32 %1841, 25
  %1843 = zext i32 %1842 to i64
  store i64 %1843, i64* %RCX.i887, align 8
  %1844 = or i32 %1842, %1822
  %1845 = zext i32 %1844 to i64
  store i64 %1845, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1846 = and i32 %1844, 255
  %1847 = tail call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  store i8 %1850, i8* %27, align 1
  %1851 = icmp eq i32 %1844, 0
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %29, align 1
  %1853 = lshr i32 %1821, 24
  %1854 = trunc i32 %1853 to i8
  %1855 = and i8 %1854, 1
  store i8 %1855, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1856 = load i64, i64* %RBP.i, align 8
  %1857 = add i64 %1856, -48
  %1858 = add i64 %1812, 23
  store i64 %1858, i64* %PC.i, align 8
  %1859 = inttoptr i64 %1857 to i32*
  %1860 = load i32, i32* %1859, align 4
  %1861 = xor i32 %1860, %1844
  %1862 = zext i32 %1861 to i64
  store i64 %1862, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1863 = and i32 %1861, 255
  %1864 = tail call i32 @llvm.ctpop.i32(i32 %1863)
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  %1867 = xor i8 %1866, 1
  store i8 %1867, i8* %27, align 1
  %1868 = icmp eq i32 %1861, 0
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %29, align 1
  %1870 = lshr i32 %1861, 31
  %1871 = trunc i32 %1870 to i8
  store i8 %1871, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1872 = add i64 %1812, 26
  store i64 %1872, i64* %PC.i, align 8
  store i32 %1861, i32* %1859, align 4
  %1873 = load i64, i64* %RBP.i, align 8
  %1874 = add i64 %1873, -48
  %1875 = load i64, i64* %PC.i, align 8
  %1876 = add i64 %1875, 3
  store i64 %1876, i64* %PC.i, align 8
  %1877 = inttoptr i64 %1874 to i32*
  %1878 = load i32, i32* %1877, align 4
  %1879 = zext i32 %1878 to i64
  store i64 %1879, i64* %RAX.i890, align 8
  %1880 = add i64 %1873, -36
  %1881 = add i64 %1875, 6
  store i64 %1881, i64* %PC.i, align 8
  %1882 = inttoptr i64 %1880 to i32*
  %1883 = load i32, i32* %1882, align 4
  %1884 = add i32 %1883, %1878
  %1885 = shl i32 %1884, 9
  %1886 = zext i32 %1885 to i64
  store i64 %1886, i64* %RAX.i890, align 8
  %1887 = lshr i32 %1884, 23
  %1888 = trunc i32 %1887 to i8
  %1889 = and i8 %1888, 1
  store i8 %1889, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1890 = icmp eq i32 %1885, 0
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %29, align 1
  %1892 = lshr i32 %1884, 22
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  store i8 %1894, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1895 = add i64 %1875, 12
  store i64 %1895, i64* %PC.i, align 8
  %1896 = load i32, i32* %1877, align 4
  %1897 = zext i32 %1896 to i64
  store i64 %1897, i64* %RCX.i887, align 8
  %1898 = add i64 %1875, 15
  store i64 %1898, i64* %PC.i, align 8
  %1899 = load i32, i32* %1882, align 4
  %1900 = add i32 %1899, %1896
  %1901 = lshr i32 %1900, 23
  %1902 = zext i32 %1901 to i64
  store i64 %1902, i64* %RCX.i887, align 8
  %1903 = or i32 %1901, %1885
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1905 = and i32 %1901, 255
  %1906 = tail call i32 @llvm.ctpop.i32(i32 %1905)
  %1907 = trunc i32 %1906 to i8
  %1908 = and i8 %1907, 1
  %1909 = xor i8 %1908, 1
  store i8 %1909, i8* %27, align 1
  %1910 = icmp eq i32 %1903, 0
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %29, align 1
  %1912 = lshr i32 %1884, 22
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  store i8 %1914, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1915 = load i64, i64* %RBP.i, align 8
  %1916 = add i64 %1915, -44
  %1917 = add i64 %1875, 23
  store i64 %1917, i64* %PC.i, align 8
  %1918 = inttoptr i64 %1916 to i32*
  %1919 = load i32, i32* %1918, align 4
  %1920 = xor i32 %1919, %1903
  %1921 = zext i32 %1920 to i64
  store i64 %1921, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1922 = and i32 %1920, 255
  %1923 = tail call i32 @llvm.ctpop.i32(i32 %1922)
  %1924 = trunc i32 %1923 to i8
  %1925 = and i8 %1924, 1
  %1926 = xor i8 %1925, 1
  store i8 %1926, i8* %27, align 1
  %1927 = icmp eq i32 %1920, 0
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %29, align 1
  %1929 = lshr i32 %1920, 31
  %1930 = trunc i32 %1929 to i8
  store i8 %1930, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1931 = add i64 %1875, 26
  store i64 %1931, i64* %PC.i, align 8
  store i32 %1920, i32* %1918, align 4
  %1932 = load i64, i64* %RBP.i, align 8
  %1933 = add i64 %1932, -44
  %1934 = load i64, i64* %PC.i, align 8
  %1935 = add i64 %1934, 3
  store i64 %1935, i64* %PC.i, align 8
  %1936 = inttoptr i64 %1933 to i32*
  %1937 = load i32, i32* %1936, align 4
  %1938 = zext i32 %1937 to i64
  store i64 %1938, i64* %RAX.i890, align 8
  %1939 = add i64 %1932, -48
  %1940 = add i64 %1934, 6
  store i64 %1940, i64* %PC.i, align 8
  %1941 = inttoptr i64 %1939 to i32*
  %1942 = load i32, i32* %1941, align 4
  %1943 = add i32 %1942, %1937
  %1944 = shl i32 %1943, 13
  %1945 = zext i32 %1944 to i64
  store i64 %1945, i64* %RAX.i890, align 8
  %1946 = lshr i32 %1943, 19
  %1947 = trunc i32 %1946 to i8
  %1948 = and i8 %1947, 1
  store i8 %1948, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %1949 = icmp eq i32 %1944, 0
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %29, align 1
  %1951 = lshr i32 %1943, 18
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  store i8 %1953, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %1954 = add i64 %1934, 12
  store i64 %1954, i64* %PC.i, align 8
  %1955 = load i32, i32* %1936, align 4
  %1956 = zext i32 %1955 to i64
  store i64 %1956, i64* %RCX.i887, align 8
  %1957 = add i64 %1934, 15
  store i64 %1957, i64* %PC.i, align 8
  %1958 = load i32, i32* %1941, align 4
  %1959 = add i32 %1958, %1955
  %1960 = lshr i32 %1959, 19
  %1961 = zext i32 %1960 to i64
  store i64 %1961, i64* %RCX.i887, align 8
  %1962 = or i32 %1960, %1944
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1964 = and i32 %1960, 255
  %1965 = tail call i32 @llvm.ctpop.i32(i32 %1964)
  %1966 = trunc i32 %1965 to i8
  %1967 = and i8 %1966, 1
  %1968 = xor i8 %1967, 1
  store i8 %1968, i8* %27, align 1
  %1969 = icmp eq i32 %1962, 0
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %29, align 1
  %1971 = lshr i32 %1943, 18
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  store i8 %1973, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1974 = load i64, i64* %RBP.i, align 8
  %1975 = add i64 %1974, -40
  %1976 = add i64 %1934, 23
  store i64 %1976, i64* %PC.i, align 8
  %1977 = inttoptr i64 %1975 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = xor i32 %1978, %1962
  %1980 = zext i32 %1979 to i64
  store i64 %1980, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %1981 = and i32 %1979, 255
  %1982 = tail call i32 @llvm.ctpop.i32(i32 %1981)
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  %1985 = xor i8 %1984, 1
  store i8 %1985, i8* %27, align 1
  %1986 = icmp eq i32 %1979, 0
  %1987 = zext i1 %1986 to i8
  store i8 %1987, i8* %29, align 1
  %1988 = lshr i32 %1979, 31
  %1989 = trunc i32 %1988 to i8
  store i8 %1989, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %1990 = add i64 %1934, 26
  store i64 %1990, i64* %PC.i, align 8
  store i32 %1979, i32* %1977, align 4
  %1991 = load i64, i64* %RBP.i, align 8
  %1992 = add i64 %1991, -40
  %1993 = load i64, i64* %PC.i, align 8
  %1994 = add i64 %1993, 3
  store i64 %1994, i64* %PC.i, align 8
  %1995 = inttoptr i64 %1992 to i32*
  %1996 = load i32, i32* %1995, align 4
  %1997 = zext i32 %1996 to i64
  store i64 %1997, i64* %RAX.i890, align 8
  %1998 = add i64 %1991, -44
  %1999 = add i64 %1993, 6
  store i64 %1999, i64* %PC.i, align 8
  %2000 = inttoptr i64 %1998 to i32*
  %2001 = load i32, i32* %2000, align 4
  %2002 = add i32 %2001, %1996
  %2003 = shl i32 %2002, 18
  %2004 = zext i32 %2003 to i64
  store i64 %2004, i64* %RAX.i890, align 8
  %2005 = lshr i32 %2002, 14
  %2006 = trunc i32 %2005 to i8
  %2007 = and i8 %2006, 1
  store i8 %2007, i8* %26, align 1
  store i8 1, i8* %27, align 1
  store i8 0, i8* %28, align 1
  %2008 = icmp eq i32 %2003, 0
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %29, align 1
  %2010 = lshr i32 %2002, 13
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  store i8 %2012, i8* %30, align 1
  store i8 0, i8* %31, align 1
  %2013 = add i64 %1993, 12
  store i64 %2013, i64* %PC.i, align 8
  %2014 = load i32, i32* %1995, align 4
  %2015 = zext i32 %2014 to i64
  store i64 %2015, i64* %RCX.i887, align 8
  %2016 = add i64 %1993, 15
  store i64 %2016, i64* %PC.i, align 8
  %2017 = load i32, i32* %2000, align 4
  %2018 = add i32 %2017, %2014
  %2019 = lshr i32 %2018, 14
  %2020 = zext i32 %2019 to i64
  store i64 %2020, i64* %RCX.i887, align 8
  %2021 = or i32 %2019, %2003
  %2022 = zext i32 %2021 to i64
  store i64 %2022, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %2023 = and i32 %2019, 255
  %2024 = tail call i32 @llvm.ctpop.i32(i32 %2023)
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  %2027 = xor i8 %2026, 1
  store i8 %2027, i8* %27, align 1
  %2028 = icmp eq i32 %2021, 0
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %29, align 1
  %2030 = lshr i32 %2002, 13
  %2031 = trunc i32 %2030 to i8
  %2032 = and i8 %2031, 1
  store i8 %2032, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %2033 = load i64, i64* %RBP.i, align 8
  %2034 = add i64 %2033, -36
  %2035 = add i64 %1993, 23
  store i64 %2035, i64* %PC.i, align 8
  %2036 = inttoptr i64 %2034 to i32*
  %2037 = load i32, i32* %2036, align 4
  %2038 = xor i32 %2037, %2021
  %2039 = zext i32 %2038 to i64
  store i64 %2039, i64* %RAX.i890, align 8
  store i8 0, i8* %26, align 1
  %2040 = and i32 %2038, 255
  %2041 = tail call i32 @llvm.ctpop.i32(i32 %2040)
  %2042 = trunc i32 %2041 to i8
  %2043 = and i8 %2042, 1
  %2044 = xor i8 %2043, 1
  store i8 %2044, i8* %27, align 1
  %2045 = icmp eq i32 %2038, 0
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %29, align 1
  %2047 = lshr i32 %2038, 31
  %2048 = trunc i32 %2047 to i8
  store i8 %2048, i8* %30, align 1
  store i8 0, i8* %31, align 1
  store i8 0, i8* %28, align 1
  %2049 = add i64 %1993, 26
  store i64 %2049, i64* %PC.i, align 8
  store i32 %2038, i32* %2036, align 4
  %2050 = load i64, i64* %RBP.i, align 8
  %2051 = add i64 %2050, -20
  %2052 = load i64, i64* %PC.i, align 8
  %2053 = add i64 %2052, 3
  store i64 %2053, i64* %PC.i, align 8
  %2054 = inttoptr i64 %2051 to i32*
  %2055 = load i32, i32* %2054, align 4
  %2056 = add i32 %2055, -2
  %2057 = zext i32 %2056 to i64
  store i64 %2057, i64* %RAX.i890, align 8
  %2058 = icmp ult i32 %2055, 2
  %2059 = zext i1 %2058 to i8
  store i8 %2059, i8* %26, align 1
  %2060 = and i32 %2056, 255
  %2061 = tail call i32 @llvm.ctpop.i32(i32 %2060)
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  %2064 = xor i8 %2063, 1
  store i8 %2064, i8* %27, align 1
  %2065 = xor i32 %2055, %2056
  %2066 = lshr i32 %2065, 4
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  store i8 %2068, i8* %28, align 1
  %2069 = icmp eq i32 %2056, 0
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %29, align 1
  %2071 = lshr i32 %2056, 31
  %2072 = trunc i32 %2071 to i8
  store i8 %2072, i8* %30, align 1
  %2073 = lshr i32 %2055, 31
  %2074 = xor i32 %2071, %2073
  %2075 = add nuw nsw i32 %2074, %2073
  %2076 = icmp eq i32 %2075, 2
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %31, align 1
  %2078 = add i64 %2052, 9
  store i64 %2078, i64* %PC.i, align 8
  store i32 %2056, i32* %2054, align 4
  %2079 = load i64, i64* %PC.i, align 8
  %2080 = add i64 %2079, -851
  store i64 %2080, i64* %3, align 8
  br label %block_.L_400537

block_.L_40088f:                                  ; preds = %block_.L_400537
  %2081 = add i64 %131, 7
  store i64 %2081, i64* %PC.i, align 8
  store i32 0, i32* %120, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400896

block_.L_400896:                                  ; preds = %block_4008a0, %block_.L_40088f
  %2082 = phi i64 [ %2203, %block_4008a0 ], [ %.pre2, %block_.L_40088f ]
  %2083 = load i64, i64* %RBP.i, align 8
  %2084 = add i64 %2083, -20
  %2085 = add i64 %2082, 4
  store i64 %2085, i64* %PC.i, align 8
  %2086 = inttoptr i64 %2084 to i32*
  %2087 = load i32, i32* %2086, align 4
  %2088 = add i32 %2087, -16
  %2089 = icmp ult i32 %2087, 16
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %26, align 1
  %2091 = and i32 %2088, 255
  %2092 = tail call i32 @llvm.ctpop.i32(i32 %2091)
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  %2095 = xor i8 %2094, 1
  store i8 %2095, i8* %27, align 1
  %2096 = xor i32 %2087, 16
  %2097 = xor i32 %2096, %2088
  %2098 = lshr i32 %2097, 4
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  store i8 %2100, i8* %28, align 1
  %2101 = icmp eq i32 %2088, 0
  %2102 = zext i1 %2101 to i8
  store i8 %2102, i8* %29, align 1
  %2103 = lshr i32 %2088, 31
  %2104 = trunc i32 %2103 to i8
  store i8 %2104, i8* %30, align 1
  %2105 = lshr i32 %2087, 31
  %2106 = xor i32 %2103, %2105
  %2107 = add nuw nsw i32 %2106, %2105
  %2108 = icmp eq i32 %2107, 2
  %2109 = zext i1 %2108 to i8
  store i8 %2109, i8* %31, align 1
  %.v4 = select i1 %2089, i64 10, i64 57
  %2110 = add i64 %2082, %.v4
  store i64 %2110, i64* %3, align 8
  br i1 %2089, label %block_4008a0, label %block_.L_4008cf

block_4008a0:                                     ; preds = %block_.L_400896
  %2111 = add i64 %2110, 3
  store i64 %2111, i64* %PC.i, align 8
  %2112 = load i32, i32* %2086, align 4
  %2113 = zext i32 %2112 to i64
  store i64 %2113, i64* %RAX.i890, align 8
  store i64 %2113, i64* %RCX.i887, align 8
  %2114 = shl nuw nsw i64 %2113, 2
  %2115 = add i64 %2083, -96
  %2116 = add i64 %2115, %2114
  %2117 = add i64 %2110, 9
  store i64 %2117, i64* %PC.i, align 8
  %2118 = inttoptr i64 %2116 to i32*
  %2119 = load i32, i32* %2118, align 4
  %2120 = zext i32 %2119 to i64
  store i64 %2120, i64* %RAX.i890, align 8
  %2121 = add i64 %2083, -16
  %2122 = add i64 %2110, 13
  store i64 %2122, i64* %PC.i, align 8
  %2123 = inttoptr i64 %2121 to i64*
  %2124 = load i64, i64* %2123, align 8
  store i64 %2124, i64* %RCX.i887, align 8
  %2125 = add i64 %2110, 16
  store i64 %2125, i64* %PC.i, align 8
  %2126 = load i32, i32* %2086, align 4
  %2127 = zext i32 %2126 to i64
  store i64 %2127, i64* %RDX.i885, align 8
  store i64 %2127, i64* %RSI.i898, align 8
  %2128 = shl nuw nsw i64 %2127, 2
  %2129 = add i64 %2128, %2124
  %2130 = add i64 %2110, 21
  store i64 %2130, i64* %PC.i, align 8
  %2131 = inttoptr i64 %2129 to i32*
  %2132 = load i32, i32* %2131, align 4
  %2133 = add i32 %2132, %2119
  %2134 = zext i32 %2133 to i64
  store i64 %2134, i64* %RAX.i890, align 8
  %2135 = icmp ult i32 %2133, %2119
  %2136 = icmp ult i32 %2133, %2132
  %2137 = or i1 %2135, %2136
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %26, align 1
  %2139 = and i32 %2133, 255
  %2140 = tail call i32 @llvm.ctpop.i32(i32 %2139)
  %2141 = trunc i32 %2140 to i8
  %2142 = and i8 %2141, 1
  %2143 = xor i8 %2142, 1
  store i8 %2143, i8* %27, align 1
  %2144 = xor i32 %2132, %2119
  %2145 = xor i32 %2144, %2133
  %2146 = lshr i32 %2145, 4
  %2147 = trunc i32 %2146 to i8
  %2148 = and i8 %2147, 1
  store i8 %2148, i8* %28, align 1
  %2149 = icmp eq i32 %2133, 0
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %29, align 1
  %2151 = lshr i32 %2133, 31
  %2152 = trunc i32 %2151 to i8
  store i8 %2152, i8* %30, align 1
  %2153 = lshr i32 %2119, 31
  %2154 = lshr i32 %2132, 31
  %2155 = xor i32 %2151, %2153
  %2156 = xor i32 %2151, %2154
  %2157 = add nuw nsw i32 %2155, %2156
  %2158 = icmp eq i32 %2157, 2
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %31, align 1
  %2160 = add i64 %2083, -8
  %2161 = add i64 %2110, 25
  store i64 %2161, i64* %PC.i, align 8
  %2162 = inttoptr i64 %2160 to i64*
  %2163 = load i64, i64* %2162, align 8
  store i64 %2163, i64* %RCX.i887, align 8
  %2164 = add i64 %2110, 28
  store i64 %2164, i64* %PC.i, align 8
  %2165 = load i32, i32* %2086, align 4
  %2166 = zext i32 %2165 to i64
  store i64 %2166, i64* %RDX.i885, align 8
  store i64 %2166, i64* %RSI.i898, align 8
  %2167 = shl nuw nsw i64 %2166, 2
  %2168 = add i64 %2167, %2163
  %2169 = add i64 %2110, 33
  store i64 %2169, i64* %PC.i, align 8
  %2170 = inttoptr i64 %2168 to i32*
  store i32 %2133, i32* %2170, align 4
  %2171 = load i64, i64* %RBP.i, align 8
  %2172 = add i64 %2171, -20
  %2173 = load i64, i64* %PC.i, align 8
  %2174 = add i64 %2173, 3
  store i64 %2174, i64* %PC.i, align 8
  %2175 = inttoptr i64 %2172 to i32*
  %2176 = load i32, i32* %2175, align 4
  %2177 = add i32 %2176, 1
  %2178 = zext i32 %2177 to i64
  store i64 %2178, i64* %RAX.i890, align 8
  %2179 = icmp eq i32 %2176, -1
  %2180 = icmp eq i32 %2177, 0
  %2181 = or i1 %2179, %2180
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %26, align 1
  %2183 = and i32 %2177, 255
  %2184 = tail call i32 @llvm.ctpop.i32(i32 %2183)
  %2185 = trunc i32 %2184 to i8
  %2186 = and i8 %2185, 1
  %2187 = xor i8 %2186, 1
  store i8 %2187, i8* %27, align 1
  %2188 = xor i32 %2176, %2177
  %2189 = lshr i32 %2188, 4
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  store i8 %2191, i8* %28, align 1
  %2192 = icmp eq i32 %2177, 0
  %2193 = zext i1 %2192 to i8
  store i8 %2193, i8* %29, align 1
  %2194 = lshr i32 %2177, 31
  %2195 = trunc i32 %2194 to i8
  store i8 %2195, i8* %30, align 1
  %2196 = lshr i32 %2176, 31
  %2197 = xor i32 %2194, %2196
  %2198 = add nuw nsw i32 %2197, %2194
  %2199 = icmp eq i32 %2198, 2
  %2200 = zext i1 %2199 to i8
  store i8 %2200, i8* %31, align 1
  %2201 = add i64 %2173, 9
  store i64 %2201, i64* %PC.i, align 8
  store i32 %2177, i32* %2175, align 4
  %2202 = load i64, i64* %PC.i, align 8
  %2203 = add i64 %2202, -52
  store i64 %2203, i64* %3, align 8
  br label %block_.L_400896

block_.L_4008cf:                                  ; preds = %block_.L_400896
  %2204 = add i64 %2110, 1
  store i64 %2204, i64* %PC.i, align 8
  %2205 = load i64, i64* %6, align 8
  %2206 = add i64 %2205, 8
  %2207 = inttoptr i64 %2205 to i64*
  %2208 = load i64, i64* %2207, align 8
  store i64 %2208, i64* %RBP.i, align 8
  store i64 %2206, i64* %6, align 8
  %2209 = add i64 %2110, 2
  store i64 %2209, i64* %PC.i, align 8
  %2210 = inttoptr i64 %2206 to i64*
  %2211 = load i64, i64* %2210, align 8
  store i64 %2211, i64* %3, align 8
  %2212 = add i64 %2205, 16
  store i64 %2212, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x10__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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

define %struct.Memory* @routine_jae_.L_400530(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -96
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400503(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x14__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 20, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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

define %struct.Memory* @routine_jbe_.L_40088f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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

define %struct.Memory* @routine_shll__0x7___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 7
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 25
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 128
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = xor i8 %15, 1
  store i8 %16, i8* %12, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %19 = icmp eq i32 %6, 0
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %18, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %22 = lshr i32 %.tr, 24
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  store i8 %24, i8* %21, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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

define %struct.Memory* @routine_shrl__0x19___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 24
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 25
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 127
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %10, 127
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = or i64 %6, %4
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
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
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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

define %struct.Memory* @routine_shll__0x9___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 9
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 23
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = icmp eq i32 %6, 0
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %18 = lshr i32 %.tr, 22
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  store i8 %20, i8* %17, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x60__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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

define %struct.Memory* @routine_shrl__0x17___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 22
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 23
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 511
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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

define %struct.Memory* @routine_shll__0xd___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 13
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 19
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = icmp eq i32 %6, 0
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %18 = lshr i32 %.tr, 18
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  store i8 %20, i8* %17, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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

define %struct.Memory* @routine_shrl__0x13___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 18
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 19
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 8191
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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

define %struct.Memory* @routine_shll__0x12___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 18
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 14
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = icmp eq i32 %6, 0
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %18 = lshr i32 %.tr, 13
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  store i8 %20, i8* %17, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x40__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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

define %struct.Memory* @routine_shrl__0xe___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 13
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 14
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 262143
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x5c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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

define %struct.Memory* @routine_xorl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x4c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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

define %struct.Memory* @routine_xorl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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

define %struct.Memory* @routine_xorl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_xorl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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

define %struct.Memory* @routine_xorl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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

define %struct.Memory* @routine_xorl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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

define %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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

define %struct.Memory* @routine_xorl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x58__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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

define %struct.Memory* @routine_xorl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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

define %struct.Memory* @routine_xorl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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

define %struct.Memory* @routine_xorl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x54__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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

define %struct.Memory* @routine_xorl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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

define %struct.Memory* @routine_xorl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = trunc i64 %3 to i32
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

define %struct.Memory* @routine_jmpq_.L_400537(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jae_.L_4008cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x60__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -96
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl___rcx__rsi_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_400896(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
