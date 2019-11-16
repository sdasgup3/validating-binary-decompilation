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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @MSAShorterAlignment(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %21 = load i64, i64* %RBP.i, align 8
  %22 = add i64 %21, -20
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 7
  store i64 %24, i64* %3, align 8
  %25 = inttoptr i64 %22 to i32*
  store i32 0, i32* %25, align 4
  %26 = load i64, i64* %RBP.i, align 8
  %27 = add i64 %26, -24
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 7
  store i64 %29, i64* %3, align 8
  %30 = inttoptr i64 %27 to i32*
  store i32 0, i32* %30, align 4
  %RAX.i715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL.i660 = bitcast %union.anon* %37 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_42fa1a

block_.L_42fa1a:                                  ; preds = %block_.L_42fccf, %entry
  %38 = phi i64 [ %944, %block_.L_42fccf ], [ %.pre, %entry ]
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -20
  %41 = add i64 %38, 3
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %40 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %RAX.i715, align 8
  %45 = add i64 %39, -8
  %46 = add i64 %38, 7
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %45 to i64*
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %RCX.i712, align 8
  %49 = add i64 %48, 24
  %50 = add i64 %38, 10
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %43, %52
  %54 = icmp ult i32 %43, %52
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %31, align 1
  %56 = and i32 %53, 255
  %57 = tail call i32 @llvm.ctpop.i32(i32 %56)
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  store i8 %60, i8* %32, align 1
  %61 = xor i32 %52, %43
  %62 = xor i32 %61, %53
  %63 = lshr i32 %62, 4
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  store i8 %65, i8* %33, align 1
  %66 = icmp eq i32 %53, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %34, align 1
  %68 = lshr i32 %53, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %35, align 1
  %70 = lshr i32 %43, 31
  %71 = lshr i32 %52, 31
  %72 = xor i32 %71, %70
  %73 = xor i32 %68, %70
  %74 = add nuw nsw i32 %73, %72
  %75 = icmp eq i32 %74, 2
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %36, align 1
  %77 = icmp ne i8 %69, 0
  %78 = xor i1 %77, %75
  %.v80 = select i1 %78, i64 16, i64 707
  %79 = add i64 %38, %.v80
  store i64 %79, i64* %3, align 8
  br i1 %78, label %block_42fa2a, label %block_.L_42fcdd

block_42fa2a:                                     ; preds = %block_.L_42fa1a
  %80 = add i64 %39, -16
  %81 = add i64 %79, 4
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i64*
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %RAX.i715, align 8
  %84 = add i64 %79, 8
  store i64 %84, i64* %3, align 8
  %85 = load i32, i32* %42, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %RCX.i712, align 8
  %87 = shl nsw i64 %86, 2
  %88 = add i64 %87, %83
  %89 = add i64 %79, 12
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i32*
  %91 = load i32, i32* %90, align 4
  store i8 0, i8* %31, align 1
  %92 = and i32 %91, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92)
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %97 = icmp eq i32 %91, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %34, align 1
  %99 = lshr i32 %91, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v90 = select i1 %97, i64 18, i64 23
  %101 = add i64 %79, %.v90
  store i64 %101, i64* %3, align 8
  br i1 %97, label %block_42fa3c, label %block_.L_42fa41

block_42fa3c:                                     ; preds = %block_42fa2a
  %102 = add i64 %101, 659
  store i64 %102, i64* %3, align 8
  br label %block_.L_42fccf

block_.L_42fa41:                                  ; preds = %block_42fa2a
  %103 = add i64 %39, -24
  %104 = add i64 %101, 3
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = zext i32 %106 to i64
  store i64 %107, i64* %RAX.i715, align 8
  %108 = add i64 %101, 6
  store i64 %108, i64* %3, align 8
  %109 = load i32, i32* %42, align 4
  %110 = sub i32 %106, %109
  %111 = icmp ult i32 %106, %109
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %31, align 1
  %113 = and i32 %110, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113)
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %32, align 1
  %118 = xor i32 %109, %106
  %119 = xor i32 %118, %110
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %33, align 1
  %123 = icmp eq i32 %110, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %34, align 1
  %125 = lshr i32 %110, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %35, align 1
  %127 = lshr i32 %106, 31
  %128 = lshr i32 %109, 31
  %129 = xor i32 %128, %127
  %130 = xor i32 %125, %127
  %131 = add nuw nsw i32 %130, %129
  %132 = icmp eq i32 %131, 2
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %36, align 1
  %.v91 = select i1 %123, i64 645, i64 12
  %134 = add i64 %101, %.v91
  store i64 %134, i64* %3, align 8
  br i1 %123, label %block_.L_42fcc6, label %block_42fa4d

block_42fa4d:                                     ; preds = %block_.L_42fa41
  %135 = add i64 %39, -28
  %136 = add i64 %134, 7
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  store i32 0, i32* %137, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_42fa54

block_.L_42fa54:                                  ; preds = %block_.L_42fbcb, %block_42fa4d
  %138 = phi i64 [ %613, %block_.L_42fbcb ], [ %.pre60, %block_42fa4d ]
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -28
  %141 = add i64 %138, 3
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RAX.i715, align 8
  %145 = add i64 %139, -8
  %146 = add i64 %138, 7
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %RCX.i712, align 8
  %149 = add i64 %148, 28
  %150 = add i64 %138, 10
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = sub i32 %143, %152
  %154 = icmp ult i32 %143, %152
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %31, align 1
  %156 = and i32 %153, 255
  %157 = tail call i32 @llvm.ctpop.i32(i32 %156)
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  store i8 %160, i8* %32, align 1
  %161 = xor i32 %152, %143
  %162 = xor i32 %161, %153
  %163 = lshr i32 %162, 4
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  store i8 %165, i8* %33, align 1
  %166 = icmp eq i32 %153, 0
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %34, align 1
  %168 = lshr i32 %153, 31
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %35, align 1
  %170 = lshr i32 %143, 31
  %171 = lshr i32 %152, 31
  %172 = xor i32 %171, %170
  %173 = xor i32 %168, %170
  %174 = add nuw nsw i32 %173, %172
  %175 = icmp eq i32 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %36, align 1
  %177 = icmp ne i8 %169, 0
  %178 = xor i1 %177, %175
  %.v78 = select i1 %178, i64 16, i64 394
  %179 = add i64 %138, %.v78
  %180 = add i64 %179, 4
  store i64 %180, i64* %3, align 8
  %181 = load i64, i64* %147, align 8
  store i64 %181, i64* %RAX.i715, align 8
  br i1 %178, label %block_42fa64, label %block_.L_42fbde

block_42fa64:                                     ; preds = %block_.L_42fa54
  %182 = add i64 %179, 7
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i64*
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %RAX.i715, align 8
  %185 = add i64 %179, 11
  store i64 %185, i64* %3, align 8
  %186 = load i32, i32* %142, align 4
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %RCX.i712, align 8
  %188 = shl nsw i64 %187, 3
  %189 = add i64 %188, %184
  %190 = add i64 %179, 15
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i64*
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %RAX.i715, align 8
  %193 = add i64 %139, -20
  %194 = add i64 %179, 19
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %RCX.i712, align 8
  %198 = add i64 %192, %197
  %199 = add i64 %179, 22
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i8*
  %201 = load i8, i8* %200, align 1
  store i8 %201, i8* %DL.i660, align 1
  %202 = add i64 %179, 26
  store i64 %202, i64* %3, align 8
  %203 = load i64, i64* %147, align 8
  store i64 %203, i64* %RAX.i715, align 8
  %204 = add i64 %179, 29
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i64*
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %RAX.i715, align 8
  %207 = add i64 %179, 33
  store i64 %207, i64* %3, align 8
  %208 = load i32, i32* %142, align 4
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %RCX.i712, align 8
  %210 = shl nsw i64 %209, 3
  %211 = add i64 %210, %206
  %212 = add i64 %179, 37
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RAX.i715, align 8
  %215 = add i64 %139, -24
  %216 = add i64 %179, 41
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %RCX.i712, align 8
  %220 = add i64 %214, %219
  %221 = add i64 %179, 44
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i8*
  store i8 %201, i8* %222, align 1
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -8
  %225 = load i64, i64* %3, align 8
  %226 = add i64 %225, 4
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %224 to i64*
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %RAX.i715, align 8
  %229 = add i64 %228, 112
  %230 = add i64 %225, 9
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i64*
  %232 = load i64, i64* %231, align 8
  store i8 0, i8* %31, align 1
  %233 = trunc i64 %232 to i32
  %234 = and i32 %233, 255
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234)
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  store i8 %238, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %239 = icmp eq i64 %232, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %34, align 1
  %241 = lshr i64 %232, 63
  %242 = trunc i64 %241 to i8
  store i8 %242, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v96 = select i1 %239, i64 84, i64 15
  %243 = add i64 %225, %.v96
  store i64 %243, i64* %3, align 8
  br i1 %239, label %block_.L_42fae4, label %block_42fa9f

block_42fa9f:                                     ; preds = %block_42fa64
  %244 = add i64 %243, 4
  store i64 %244, i64* %3, align 8
  %245 = load i64, i64* %227, align 8
  store i64 %245, i64* %RAX.i715, align 8
  %246 = add i64 %245, 112
  %247 = add i64 %243, 8
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %246 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %RAX.i715, align 8
  %250 = add i64 %223, -28
  %251 = add i64 %243, 12
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  store i64 %254, i64* %RCX.i712, align 8
  %255 = shl nsw i64 %254, 3
  %256 = add i64 %255, %249
  %257 = add i64 %243, 17
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  store i8 0, i8* %31, align 1
  %260 = trunc i64 %259 to i32
  %261 = and i32 %260, 255
  %262 = tail call i32 @llvm.ctpop.i32(i32 %261)
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %266 = icmp eq i64 %259, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %34, align 1
  %268 = lshr i64 %259, 63
  %269 = trunc i64 %268 to i8
  store i8 %269, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v97 = select i1 %266, i64 69, i64 23
  %270 = add i64 %243, %.v97
  store i64 %270, i64* %3, align 8
  br i1 %266, label %block_.L_42fae4, label %block_42fab6

block_42fab6:                                     ; preds = %block_42fa9f
  %271 = add i64 %270, 4
  store i64 %271, i64* %3, align 8
  %272 = load i64, i64* %227, align 8
  store i64 %272, i64* %RAX.i715, align 8
  %273 = add i64 %272, 112
  %274 = add i64 %270, 8
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %RAX.i715, align 8
  %277 = add i64 %270, 12
  store i64 %277, i64* %3, align 8
  %278 = load i32, i32* %252, align 4
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %RCX.i712, align 8
  %280 = shl nsw i64 %279, 3
  %281 = add i64 %280, %276
  %282 = add i64 %270, 16
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i64*
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %RAX.i715, align 8
  %285 = add i64 %223, -20
  %286 = add i64 %270, 20
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  store i64 %289, i64* %RCX.i712, align 8
  %290 = add i64 %284, %289
  %291 = add i64 %270, 23
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i8*
  %293 = load i8, i8* %292, align 1
  store i8 %293, i8* %DL.i660, align 1
  %294 = add i64 %270, 27
  store i64 %294, i64* %3, align 8
  %295 = load i64, i64* %227, align 8
  store i64 %295, i64* %RAX.i715, align 8
  %296 = add i64 %295, 112
  %297 = add i64 %270, 31
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i64*
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %RAX.i715, align 8
  %300 = add i64 %270, 35
  store i64 %300, i64* %3, align 8
  %301 = load i32, i32* %252, align 4
  %302 = sext i32 %301 to i64
  store i64 %302, i64* %RCX.i712, align 8
  %303 = shl nsw i64 %302, 3
  %304 = add i64 %303, %299
  %305 = add i64 %270, 39
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %304 to i64*
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %RAX.i715, align 8
  %308 = add i64 %223, -24
  %309 = add i64 %270, 43
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  store i64 %312, i64* %RCX.i712, align 8
  %313 = add i64 %307, %312
  %314 = add i64 %270, 46
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i8*
  store i8 %293, i8* %315, align 1
  %.pre68 = load i64, i64* %RBP.i, align 8
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_42fae4

block_.L_42fae4:                                  ; preds = %block_42fab6, %block_42fa9f, %block_42fa64
  %316 = phi i64 [ %.pre69, %block_42fab6 ], [ %270, %block_42fa9f ], [ %243, %block_42fa64 ]
  %317 = phi i64 [ %.pre68, %block_42fab6 ], [ %223, %block_42fa9f ], [ %223, %block_42fa64 ]
  %318 = add i64 %317, -8
  %319 = add i64 %316, 4
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i64*
  %321 = load i64, i64* %320, align 8
  store i64 %321, i64* %RAX.i715, align 8
  %322 = add i64 %321, 120
  %323 = add i64 %316, 9
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i64*
  %325 = load i64, i64* %324, align 8
  store i8 0, i8* %31, align 1
  %326 = trunc i64 %325 to i32
  %327 = and i32 %326, 255
  %328 = tail call i32 @llvm.ctpop.i32(i32 %327)
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  store i8 %331, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %332 = icmp eq i64 %325, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %34, align 1
  %334 = lshr i64 %325, 63
  %335 = trunc i64 %334 to i8
  store i8 %335, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v98 = select i1 %332, i64 84, i64 15
  %336 = add i64 %316, %.v98
  store i64 %336, i64* %3, align 8
  br i1 %332, label %block_.L_42fb38, label %block_42faf3

block_42faf3:                                     ; preds = %block_.L_42fae4
  %337 = add i64 %336, 4
  store i64 %337, i64* %3, align 8
  %338 = load i64, i64* %320, align 8
  store i64 %338, i64* %RAX.i715, align 8
  %339 = add i64 %338, 120
  %340 = add i64 %336, 8
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i64*
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %RAX.i715, align 8
  %343 = add i64 %317, -28
  %344 = add i64 %336, 12
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  store i64 %347, i64* %RCX.i712, align 8
  %348 = shl nsw i64 %347, 3
  %349 = add i64 %348, %342
  %350 = add i64 %336, 17
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i64*
  %352 = load i64, i64* %351, align 8
  store i8 0, i8* %31, align 1
  %353 = trunc i64 %352 to i32
  %354 = and i32 %353, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %359 = icmp eq i64 %352, 0
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %34, align 1
  %361 = lshr i64 %352, 63
  %362 = trunc i64 %361 to i8
  store i8 %362, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v99 = select i1 %359, i64 69, i64 23
  %363 = add i64 %336, %.v99
  store i64 %363, i64* %3, align 8
  br i1 %359, label %block_.L_42fb38, label %block_42fb0a

block_42fb0a:                                     ; preds = %block_42faf3
  %364 = add i64 %363, 4
  store i64 %364, i64* %3, align 8
  %365 = load i64, i64* %320, align 8
  store i64 %365, i64* %RAX.i715, align 8
  %366 = add i64 %365, 120
  %367 = add i64 %363, 8
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i64*
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %RAX.i715, align 8
  %370 = add i64 %363, 12
  store i64 %370, i64* %3, align 8
  %371 = load i32, i32* %345, align 4
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %RCX.i712, align 8
  %373 = shl nsw i64 %372, 3
  %374 = add i64 %373, %369
  %375 = add i64 %363, 16
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %RAX.i715, align 8
  %378 = add i64 %317, -20
  %379 = add i64 %363, 20
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  store i64 %382, i64* %RCX.i712, align 8
  %383 = add i64 %377, %382
  %384 = add i64 %363, 23
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i8*
  %386 = load i8, i8* %385, align 1
  store i8 %386, i8* %DL.i660, align 1
  %387 = add i64 %363, 27
  store i64 %387, i64* %3, align 8
  %388 = load i64, i64* %320, align 8
  store i64 %388, i64* %RAX.i715, align 8
  %389 = add i64 %388, 120
  %390 = add i64 %363, 31
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i64*
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %RAX.i715, align 8
  %393 = add i64 %363, 35
  store i64 %393, i64* %3, align 8
  %394 = load i32, i32* %345, align 4
  %395 = sext i32 %394 to i64
  store i64 %395, i64* %RCX.i712, align 8
  %396 = shl nsw i64 %395, 3
  %397 = add i64 %396, %392
  %398 = add i64 %363, 39
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i64*
  %400 = load i64, i64* %399, align 8
  store i64 %400, i64* %RAX.i715, align 8
  %401 = add i64 %317, -24
  %402 = add i64 %363, 43
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = sext i32 %404 to i64
  store i64 %405, i64* %RCX.i712, align 8
  %406 = add i64 %400, %405
  %407 = add i64 %363, 46
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i8*
  store i8 %386, i8* %408, align 1
  %.pre70 = load i64, i64* %RBP.i, align 8
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_42fb38

block_.L_42fb38:                                  ; preds = %block_42fb0a, %block_42faf3, %block_.L_42fae4
  %409 = phi i64 [ %.pre71, %block_42fb0a ], [ %363, %block_42faf3 ], [ %336, %block_.L_42fae4 ]
  %410 = phi i64 [ %.pre70, %block_42fb0a ], [ %317, %block_42faf3 ], [ %317, %block_.L_42fae4 ]
  %411 = add i64 %410, -32
  %412 = add i64 %409, 7
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i32*
  store i32 0, i32* %413, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_42fb3f

block_.L_42fb3f:                                  ; preds = %block_.L_42fbb8, %block_.L_42fb38
  %414 = phi i64 [ %583, %block_.L_42fbb8 ], [ %.pre72, %block_.L_42fb38 ]
  %415 = load i64, i64* %RBP.i, align 8
  %416 = add i64 %415, -32
  %417 = add i64 %414, 3
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RAX.i715, align 8
  %421 = add i64 %415, -8
  %422 = add i64 %414, 7
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %421 to i64*
  %424 = load i64, i64* %423, align 8
  store i64 %424, i64* %RCX.i712, align 8
  %425 = add i64 %424, 304
  %426 = add i64 %414, 13
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = sub i32 %419, %428
  %430 = icmp ult i32 %419, %428
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %31, align 1
  %432 = and i32 %429, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %32, align 1
  %437 = xor i32 %428, %419
  %438 = xor i32 %437, %429
  %439 = lshr i32 %438, 4
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %33, align 1
  %442 = icmp eq i32 %429, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %34, align 1
  %444 = lshr i32 %429, 31
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %35, align 1
  %446 = lshr i32 %419, 31
  %447 = lshr i32 %428, 31
  %448 = xor i32 %447, %446
  %449 = xor i32 %444, %446
  %450 = add nuw nsw i32 %449, %448
  %451 = icmp eq i32 %450, 2
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %36, align 1
  %453 = icmp ne i8 %445, 0
  %454 = xor i1 %453, %451
  %.v79 = select i1 %454, i64 19, i64 140
  %455 = add i64 %414, %.v79
  store i64 %455, i64* %3, align 8
  br i1 %454, label %block_42fb52, label %block_.L_42fbcb

block_42fb52:                                     ; preds = %block_.L_42fb3f
  %456 = add i64 %455, 4
  store i64 %456, i64* %3, align 8
  %457 = load i64, i64* %423, align 8
  store i64 %457, i64* %RAX.i715, align 8
  %458 = add i64 %457, 288
  %459 = add i64 %455, 11
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i64*
  %461 = load i64, i64* %460, align 8
  store i64 %461, i64* %RAX.i715, align 8
  %462 = add i64 %455, 15
  store i64 %462, i64* %3, align 8
  %463 = load i32, i32* %418, align 4
  %464 = sext i32 %463 to i64
  store i64 %464, i64* %RCX.i712, align 8
  %465 = shl nsw i64 %464, 3
  %466 = add i64 %465, %461
  %467 = add i64 %455, 19
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %466 to i64*
  %469 = load i64, i64* %468, align 8
  store i64 %469, i64* %RAX.i715, align 8
  %470 = add i64 %415, -28
  %471 = add i64 %455, 23
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = sext i32 %473 to i64
  store i64 %474, i64* %RCX.i712, align 8
  %475 = shl nsw i64 %474, 3
  %476 = add i64 %475, %469
  %477 = add i64 %455, 28
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i64*
  %479 = load i64, i64* %478, align 8
  store i8 0, i8* %31, align 1
  %480 = trunc i64 %479 to i32
  %481 = and i32 %480, 255
  %482 = tail call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  store i8 %485, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %486 = icmp eq i64 %479, 0
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %34, align 1
  %488 = lshr i64 %479, 63
  %489 = trunc i64 %488 to i8
  store i8 %489, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v100 = select i1 %486, i64 102, i64 34
  %490 = add i64 %455, %.v100
  store i64 %490, i64* %3, align 8
  br i1 %486, label %block_.L_42fbb8, label %block_42fb74

block_42fb74:                                     ; preds = %block_42fb52
  %491 = add i64 %490, 4
  store i64 %491, i64* %3, align 8
  %492 = load i64, i64* %423, align 8
  store i64 %492, i64* %RAX.i715, align 8
  %493 = add i64 %492, 288
  %494 = add i64 %490, 11
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %RAX.i715, align 8
  %497 = add i64 %490, 15
  store i64 %497, i64* %3, align 8
  %498 = load i32, i32* %418, align 4
  %499 = sext i32 %498 to i64
  store i64 %499, i64* %RCX.i712, align 8
  %500 = shl nsw i64 %499, 3
  %501 = add i64 %500, %496
  %502 = add i64 %490, 19
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i64*
  %504 = load i64, i64* %503, align 8
  store i64 %504, i64* %RAX.i715, align 8
  %505 = add i64 %490, 23
  store i64 %505, i64* %3, align 8
  %506 = load i32, i32* %472, align 4
  %507 = sext i32 %506 to i64
  store i64 %507, i64* %RCX.i712, align 8
  %508 = shl nsw i64 %507, 3
  %509 = add i64 %508, %504
  %510 = add i64 %490, 27
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i64*
  %512 = load i64, i64* %511, align 8
  store i64 %512, i64* %RAX.i715, align 8
  %513 = add i64 %415, -20
  %514 = add i64 %490, 31
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = sext i32 %516 to i64
  store i64 %517, i64* %RCX.i712, align 8
  %518 = add i64 %512, %517
  %519 = add i64 %490, 34
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i8*
  %521 = load i8, i8* %520, align 1
  store i8 %521, i8* %DL.i660, align 1
  %522 = add i64 %490, 38
  store i64 %522, i64* %3, align 8
  %523 = load i64, i64* %423, align 8
  store i64 %523, i64* %RAX.i715, align 8
  %524 = add i64 %523, 288
  %525 = add i64 %490, 45
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i64*
  %527 = load i64, i64* %526, align 8
  store i64 %527, i64* %RAX.i715, align 8
  %528 = add i64 %490, 49
  store i64 %528, i64* %3, align 8
  %529 = load i32, i32* %418, align 4
  %530 = sext i32 %529 to i64
  store i64 %530, i64* %RCX.i712, align 8
  %531 = shl nsw i64 %530, 3
  %532 = add i64 %531, %527
  %533 = add i64 %490, 53
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i64*
  %535 = load i64, i64* %534, align 8
  store i64 %535, i64* %RAX.i715, align 8
  %536 = add i64 %490, 57
  store i64 %536, i64* %3, align 8
  %537 = load i32, i32* %472, align 4
  %538 = sext i32 %537 to i64
  store i64 %538, i64* %RCX.i712, align 8
  %539 = shl nsw i64 %538, 3
  %540 = add i64 %539, %535
  %541 = add i64 %490, 61
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i64*
  %543 = load i64, i64* %542, align 8
  store i64 %543, i64* %RAX.i715, align 8
  %544 = add i64 %415, -24
  %545 = add i64 %490, 65
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = sext i32 %547 to i64
  store i64 %548, i64* %RCX.i712, align 8
  %549 = add i64 %543, %548
  %550 = add i64 %490, 68
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i8*
  store i8 %521, i8* %551, align 1
  %.pre73 = load i64, i64* %3, align 8
  %.pre74 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42fbb8

block_.L_42fbb8:                                  ; preds = %block_42fb74, %block_42fb52
  %552 = phi i64 [ %.pre74, %block_42fb74 ], [ %415, %block_42fb52 ]
  %553 = phi i64 [ %.pre73, %block_42fb74 ], [ %490, %block_42fb52 ]
  %554 = add i64 %552, -32
  %555 = add i64 %553, 8
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = add i32 %557, 1
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RAX.i715, align 8
  %560 = icmp eq i32 %557, -1
  %561 = icmp eq i32 %558, 0
  %562 = or i1 %560, %561
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %31, align 1
  %564 = and i32 %558, 255
  %565 = tail call i32 @llvm.ctpop.i32(i32 %564)
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  store i8 %568, i8* %32, align 1
  %569 = xor i32 %558, %557
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  store i8 %572, i8* %33, align 1
  %573 = zext i1 %561 to i8
  store i8 %573, i8* %34, align 1
  %574 = lshr i32 %558, 31
  %575 = trunc i32 %574 to i8
  store i8 %575, i8* %35, align 1
  %576 = lshr i32 %557, 31
  %577 = xor i32 %574, %576
  %578 = add nuw nsw i32 %577, %574
  %579 = icmp eq i32 %578, 2
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %36, align 1
  %581 = add i64 %553, 14
  store i64 %581, i64* %3, align 8
  store i32 %558, i32* %556, align 4
  %582 = load i64, i64* %3, align 8
  %583 = add i64 %582, -135
  store i64 %583, i64* %3, align 8
  br label %block_.L_42fb3f

block_.L_42fbcb:                                  ; preds = %block_.L_42fb3f
  %584 = add i64 %415, -28
  %585 = add i64 %455, 8
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %584 to i32*
  %587 = load i32, i32* %586, align 4
  %588 = add i32 %587, 1
  %589 = zext i32 %588 to i64
  store i64 %589, i64* %RAX.i715, align 8
  %590 = icmp eq i32 %587, -1
  %591 = icmp eq i32 %588, 0
  %592 = or i1 %590, %591
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %31, align 1
  %594 = and i32 %588, 255
  %595 = tail call i32 @llvm.ctpop.i32(i32 %594)
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  %598 = xor i8 %597, 1
  store i8 %598, i8* %32, align 1
  %599 = xor i32 %588, %587
  %600 = lshr i32 %599, 4
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  store i8 %602, i8* %33, align 1
  %603 = zext i1 %591 to i8
  store i8 %603, i8* %34, align 1
  %604 = lshr i32 %588, 31
  %605 = trunc i32 %604 to i8
  store i8 %605, i8* %35, align 1
  %606 = lshr i32 %587, 31
  %607 = xor i32 %604, %606
  %608 = add nuw nsw i32 %607, %604
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %36, align 1
  %611 = add i64 %455, 14
  store i64 %611, i64* %3, align 8
  store i32 %588, i32* %586, align 4
  %612 = load i64, i64* %3, align 8
  %613 = add i64 %612, -389
  store i64 %613, i64* %3, align 8
  br label %block_.L_42fa54

block_.L_42fbde:                                  ; preds = %block_.L_42fa54
  %614 = add i64 %181, 72
  %615 = add i64 %179, 9
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i64*
  %617 = load i64, i64* %616, align 8
  store i8 0, i8* %31, align 1
  %618 = trunc i64 %617 to i32
  %619 = and i32 %618, 255
  %620 = tail call i32 @llvm.ctpop.i32(i32 %619)
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = xor i8 %622, 1
  store i8 %623, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %624 = icmp eq i64 %617, 0
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %34, align 1
  %626 = lshr i64 %617, 63
  %627 = trunc i64 %626 to i8
  store i8 %627, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v92 = select i1 %624, i64 45, i64 15
  %628 = add i64 %179, %.v92
  store i64 %628, i64* %3, align 8
  br i1 %624, label %block_.L_42fc0b, label %block_42fbed

block_42fbed:                                     ; preds = %block_.L_42fbde
  %629 = add i64 %628, 4
  store i64 %629, i64* %3, align 8
  %630 = load i64, i64* %147, align 8
  store i64 %630, i64* %RAX.i715, align 8
  %631 = add i64 %630, 72
  %632 = add i64 %628, 8
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i64*
  %634 = load i64, i64* %633, align 8
  store i64 %634, i64* %RAX.i715, align 8
  %635 = add i64 %139, -20
  %636 = add i64 %628, 12
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i32*
  %638 = load i32, i32* %637, align 4
  %639 = sext i32 %638 to i64
  store i64 %639, i64* %RCX.i712, align 8
  %640 = add i64 %634, %639
  %641 = add i64 %628, 15
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i8*
  %643 = load i8, i8* %642, align 1
  store i8 %643, i8* %DL.i660, align 1
  %644 = add i64 %628, 19
  store i64 %644, i64* %3, align 8
  %645 = load i64, i64* %147, align 8
  store i64 %645, i64* %RAX.i715, align 8
  %646 = add i64 %645, 72
  %647 = add i64 %628, 23
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i64*
  %649 = load i64, i64* %648, align 8
  store i64 %649, i64* %RAX.i715, align 8
  %650 = add i64 %139, -24
  %651 = add i64 %628, 27
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = sext i32 %653 to i64
  store i64 %654, i64* %RCX.i712, align 8
  %655 = add i64 %649, %654
  %656 = add i64 %628, 30
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i8*
  store i8 %643, i8* %657, align 1
  %.pre61 = load i64, i64* %RBP.i, align 8
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_42fc0b

block_.L_42fc0b:                                  ; preds = %block_42fbed, %block_.L_42fbde
  %658 = phi i64 [ %.pre62, %block_42fbed ], [ %628, %block_.L_42fbde ]
  %659 = phi i64 [ %.pre61, %block_42fbed ], [ %139, %block_.L_42fbde ]
  %660 = add i64 %659, -8
  %661 = add i64 %658, 4
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i64*
  %663 = load i64, i64* %662, align 8
  store i64 %663, i64* %RAX.i715, align 8
  %664 = add i64 %663, 80
  %665 = add i64 %658, 9
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i64*
  %667 = load i64, i64* %666, align 8
  store i8 0, i8* %31, align 1
  %668 = trunc i64 %667 to i32
  %669 = and i32 %668, 255
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %674 = icmp eq i64 %667, 0
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %34, align 1
  %676 = lshr i64 %667, 63
  %677 = trunc i64 %676 to i8
  store i8 %677, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v93 = select i1 %674, i64 45, i64 15
  %678 = add i64 %658, %.v93
  store i64 %678, i64* %3, align 8
  br i1 %674, label %block_.L_42fc38, label %block_42fc1a

block_42fc1a:                                     ; preds = %block_.L_42fc0b
  %679 = add i64 %678, 4
  store i64 %679, i64* %3, align 8
  %680 = load i64, i64* %662, align 8
  store i64 %680, i64* %RAX.i715, align 8
  %681 = add i64 %680, 80
  %682 = add i64 %678, 8
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i64*
  %684 = load i64, i64* %683, align 8
  store i64 %684, i64* %RAX.i715, align 8
  %685 = add i64 %659, -20
  %686 = add i64 %678, 12
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  %688 = load i32, i32* %687, align 4
  %689 = sext i32 %688 to i64
  store i64 %689, i64* %RCX.i712, align 8
  %690 = add i64 %684, %689
  %691 = add i64 %678, 15
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i8*
  %693 = load i8, i8* %692, align 1
  store i8 %693, i8* %DL.i660, align 1
  %694 = add i64 %678, 19
  store i64 %694, i64* %3, align 8
  %695 = load i64, i64* %662, align 8
  store i64 %695, i64* %RAX.i715, align 8
  %696 = add i64 %695, 80
  %697 = add i64 %678, 23
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %RAX.i715, align 8
  %700 = add i64 %659, -24
  %701 = add i64 %678, 27
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %703 to i64
  store i64 %704, i64* %RCX.i712, align 8
  %705 = add i64 %699, %704
  %706 = add i64 %678, 30
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i8*
  store i8 %693, i8* %707, align 1
  %.pre63 = load i64, i64* %RBP.i, align 8
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_42fc38

block_.L_42fc38:                                  ; preds = %block_42fc1a, %block_.L_42fc0b
  %708 = phi i64 [ %.pre64, %block_42fc1a ], [ %678, %block_.L_42fc0b ]
  %709 = phi i64 [ %.pre63, %block_42fc1a ], [ %659, %block_.L_42fc0b ]
  %710 = add i64 %709, -8
  %711 = add i64 %708, 4
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i64*
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %RAX.i715, align 8
  %714 = add i64 %713, 88
  %715 = add i64 %708, 9
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i64*
  %717 = load i64, i64* %716, align 8
  store i8 0, i8* %31, align 1
  %718 = trunc i64 %717 to i32
  %719 = and i32 %718, 255
  %720 = tail call i32 @llvm.ctpop.i32(i32 %719)
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = xor i8 %722, 1
  store i8 %723, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %724 = icmp eq i64 %717, 0
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %34, align 1
  %726 = lshr i64 %717, 63
  %727 = trunc i64 %726 to i8
  store i8 %727, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v94 = select i1 %724, i64 45, i64 15
  %728 = add i64 %708, %.v94
  store i64 %728, i64* %3, align 8
  br i1 %724, label %block_.L_42fc65, label %block_42fc47

block_42fc47:                                     ; preds = %block_.L_42fc38
  %729 = add i64 %728, 4
  store i64 %729, i64* %3, align 8
  %730 = load i64, i64* %712, align 8
  store i64 %730, i64* %RAX.i715, align 8
  %731 = add i64 %730, 88
  %732 = add i64 %728, 8
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i64*
  %734 = load i64, i64* %733, align 8
  store i64 %734, i64* %RAX.i715, align 8
  %735 = add i64 %709, -20
  %736 = add i64 %728, 12
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  %739 = sext i32 %738 to i64
  store i64 %739, i64* %RCX.i712, align 8
  %740 = add i64 %734, %739
  %741 = add i64 %728, 15
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i8*
  %743 = load i8, i8* %742, align 1
  store i8 %743, i8* %DL.i660, align 1
  %744 = add i64 %728, 19
  store i64 %744, i64* %3, align 8
  %745 = load i64, i64* %712, align 8
  store i64 %745, i64* %RAX.i715, align 8
  %746 = add i64 %745, 88
  %747 = add i64 %728, 23
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i64*
  %749 = load i64, i64* %748, align 8
  store i64 %749, i64* %RAX.i715, align 8
  %750 = add i64 %709, -24
  %751 = add i64 %728, 27
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RCX.i712, align 8
  %755 = add i64 %749, %754
  %756 = add i64 %728, 30
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i8*
  store i8 %743, i8* %757, align 1
  %.pre65 = load i64, i64* %RBP.i, align 8
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_42fc65

block_.L_42fc65:                                  ; preds = %block_42fc47, %block_.L_42fc38
  %758 = phi i64 [ %.pre66, %block_42fc47 ], [ %728, %block_.L_42fc38 ]
  %759 = phi i64 [ %.pre65, %block_42fc47 ], [ %709, %block_.L_42fc38 ]
  %760 = add i64 %759, -32
  %761 = add i64 %758, 7
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i32*
  store i32 0, i32* %762, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_42fc6c

block_.L_42fc6c:                                  ; preds = %block_42fc7f, %block_.L_42fc65
  %763 = phi i64 [ %881, %block_42fc7f ], [ %.pre67, %block_.L_42fc65 ]
  %764 = load i64, i64* %RBP.i, align 8
  %765 = add i64 %764, -32
  %766 = add i64 %763, 3
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i32*
  %768 = load i32, i32* %767, align 4
  %769 = zext i32 %768 to i64
  store i64 %769, i64* %RAX.i715, align 8
  %770 = add i64 %764, -8
  %771 = add i64 %763, 7
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i64*
  %773 = load i64, i64* %772, align 8
  store i64 %773, i64* %RCX.i712, align 8
  %774 = add i64 %773, 272
  %775 = add i64 %763, 13
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = sub i32 %768, %777
  %779 = icmp ult i32 %768, %777
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %31, align 1
  %781 = and i32 %778, 255
  %782 = tail call i32 @llvm.ctpop.i32(i32 %781)
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = xor i8 %784, 1
  store i8 %785, i8* %32, align 1
  %786 = xor i32 %777, %768
  %787 = xor i32 %786, %778
  %788 = lshr i32 %787, 4
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  store i8 %790, i8* %33, align 1
  %791 = icmp eq i32 %778, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %34, align 1
  %793 = lshr i32 %778, 31
  %794 = trunc i32 %793 to i8
  store i8 %794, i8* %35, align 1
  %795 = lshr i32 %768, 31
  %796 = lshr i32 %777, 31
  %797 = xor i32 %796, %795
  %798 = xor i32 %793, %795
  %799 = add nuw nsw i32 %798, %797
  %800 = icmp eq i32 %799, 2
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %36, align 1
  %802 = icmp ne i8 %794, 0
  %803 = xor i1 %802, %800
  %.v95 = select i1 %803, i64 19, i64 85
  %804 = add i64 %763, %.v95
  store i64 %804, i64* %3, align 8
  br i1 %803, label %block_42fc7f, label %block_.L_42fcc1

block_42fc7f:                                     ; preds = %block_.L_42fc6c
  %805 = add i64 %804, 4
  store i64 %805, i64* %3, align 8
  %806 = load i64, i64* %772, align 8
  store i64 %806, i64* %RAX.i715, align 8
  %807 = add i64 %806, 256
  %808 = add i64 %804, 11
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i64*
  %810 = load i64, i64* %809, align 8
  store i64 %810, i64* %RAX.i715, align 8
  %811 = add i64 %804, 15
  store i64 %811, i64* %3, align 8
  %812 = load i32, i32* %767, align 4
  %813 = sext i32 %812 to i64
  store i64 %813, i64* %RCX.i712, align 8
  %814 = shl nsw i64 %813, 3
  %815 = add i64 %814, %810
  %816 = add i64 %804, 19
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i64*
  %818 = load i64, i64* %817, align 8
  store i64 %818, i64* %RAX.i715, align 8
  %819 = add i64 %764, -20
  %820 = add i64 %804, 23
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i32*
  %822 = load i32, i32* %821, align 4
  %823 = sext i32 %822 to i64
  store i64 %823, i64* %RCX.i712, align 8
  %824 = add i64 %818, %823
  %825 = add i64 %804, 26
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i8*
  %827 = load i8, i8* %826, align 1
  store i8 %827, i8* %DL.i660, align 1
  %828 = add i64 %804, 30
  store i64 %828, i64* %3, align 8
  %829 = load i64, i64* %772, align 8
  store i64 %829, i64* %RAX.i715, align 8
  %830 = add i64 %829, 256
  %831 = add i64 %804, 37
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i64*
  %833 = load i64, i64* %832, align 8
  store i64 %833, i64* %RAX.i715, align 8
  %834 = add i64 %804, 41
  store i64 %834, i64* %3, align 8
  %835 = load i32, i32* %767, align 4
  %836 = sext i32 %835 to i64
  store i64 %836, i64* %RCX.i712, align 8
  %837 = shl nsw i64 %836, 3
  %838 = add i64 %837, %833
  %839 = add i64 %804, 45
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840, align 8
  store i64 %841, i64* %RAX.i715, align 8
  %842 = add i64 %764, -24
  %843 = add i64 %804, 49
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = sext i32 %845 to i64
  store i64 %846, i64* %RCX.i712, align 8
  %847 = add i64 %841, %846
  %848 = add i64 %804, 52
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i8*
  store i8 %827, i8* %849, align 1
  %850 = load i64, i64* %RBP.i, align 8
  %851 = add i64 %850, -32
  %852 = load i64, i64* %3, align 8
  %853 = add i64 %852, 3
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854, align 4
  %856 = add i32 %855, 1
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %RAX.i715, align 8
  %858 = icmp eq i32 %855, -1
  %859 = icmp eq i32 %856, 0
  %860 = or i1 %858, %859
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %31, align 1
  %862 = and i32 %856, 255
  %863 = tail call i32 @llvm.ctpop.i32(i32 %862)
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  store i8 %866, i8* %32, align 1
  %867 = xor i32 %856, %855
  %868 = lshr i32 %867, 4
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  store i8 %870, i8* %33, align 1
  %871 = zext i1 %859 to i8
  store i8 %871, i8* %34, align 1
  %872 = lshr i32 %856, 31
  %873 = trunc i32 %872 to i8
  store i8 %873, i8* %35, align 1
  %874 = lshr i32 %855, 31
  %875 = xor i32 %872, %874
  %876 = add nuw nsw i32 %875, %872
  %877 = icmp eq i32 %876, 2
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %36, align 1
  %879 = add i64 %852, 9
  store i64 %879, i64* %3, align 8
  store i32 %856, i32* %854, align 4
  %880 = load i64, i64* %3, align 8
  %881 = add i64 %880, -80
  store i64 %881, i64* %3, align 8
  br label %block_.L_42fc6c

block_.L_42fcc1:                                  ; preds = %block_.L_42fc6c
  %882 = add i64 %804, 5
  store i64 %882, i64* %3, align 8
  br label %block_.L_42fcc6

block_.L_42fcc6:                                  ; preds = %block_.L_42fcc1, %block_.L_42fa41
  %883 = phi i64 [ %882, %block_.L_42fcc1 ], [ %134, %block_.L_42fa41 ]
  %884 = phi i64 [ %764, %block_.L_42fcc1 ], [ %39, %block_.L_42fa41 ]
  %885 = add i64 %884, -24
  %886 = add i64 %883, 3
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to i32*
  %888 = load i32, i32* %887, align 4
  %889 = add i32 %888, 1
  %890 = zext i32 %889 to i64
  store i64 %890, i64* %RAX.i715, align 8
  %891 = icmp eq i32 %888, -1
  %892 = icmp eq i32 %889, 0
  %893 = or i1 %891, %892
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %31, align 1
  %895 = and i32 %889, 255
  %896 = tail call i32 @llvm.ctpop.i32(i32 %895)
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  %899 = xor i8 %898, 1
  store i8 %899, i8* %32, align 1
  %900 = xor i32 %889, %888
  %901 = lshr i32 %900, 4
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  store i8 %903, i8* %33, align 1
  %904 = zext i1 %892 to i8
  store i8 %904, i8* %34, align 1
  %905 = lshr i32 %889, 31
  %906 = trunc i32 %905 to i8
  store i8 %906, i8* %35, align 1
  %907 = lshr i32 %888, 31
  %908 = xor i32 %905, %907
  %909 = add nuw nsw i32 %908, %905
  %910 = icmp eq i32 %909, 2
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %36, align 1
  %912 = add i64 %883, 9
  store i64 %912, i64* %3, align 8
  store i32 %889, i32* %887, align 4
  %.pre75 = load i64, i64* %RBP.i, align 8
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_42fccf

block_.L_42fccf:                                  ; preds = %block_.L_42fcc6, %block_42fa3c
  %913 = phi i64 [ %.pre76, %block_.L_42fcc6 ], [ %102, %block_42fa3c ]
  %914 = phi i64 [ %.pre75, %block_.L_42fcc6 ], [ %39, %block_42fa3c ]
  %915 = add i64 %914, -20
  %916 = add i64 %913, 3
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = add i32 %918, 1
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RAX.i715, align 8
  %921 = icmp eq i32 %918, -1
  %922 = icmp eq i32 %919, 0
  %923 = or i1 %921, %922
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %31, align 1
  %925 = and i32 %919, 255
  %926 = tail call i32 @llvm.ctpop.i32(i32 %925)
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  store i8 %929, i8* %32, align 1
  %930 = xor i32 %919, %918
  %931 = lshr i32 %930, 4
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  store i8 %933, i8* %33, align 1
  %934 = zext i1 %922 to i8
  store i8 %934, i8* %34, align 1
  %935 = lshr i32 %919, 31
  %936 = trunc i32 %935 to i8
  store i8 %936, i8* %35, align 1
  %937 = lshr i32 %918, 31
  %938 = xor i32 %935, %937
  %939 = add nuw nsw i32 %938, %935
  %940 = icmp eq i32 %939, 2
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %36, align 1
  %942 = add i64 %913, 9
  store i64 %942, i64* %3, align 8
  store i32 %919, i32* %917, align 4
  %943 = load i64, i64* %3, align 8
  %944 = add i64 %943, -702
  store i64 %944, i64* %3, align 8
  br label %block_.L_42fa1a

block_.L_42fcdd:                                  ; preds = %block_.L_42fa1a
  %945 = add i64 %39, -24
  %946 = add i64 %79, 3
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  %948 = load i32, i32* %947, align 4
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RAX.i715, align 8
  %950 = add i64 %79, 7
  store i64 %950, i64* %3, align 8
  %951 = load i64, i64* %47, align 8
  store i64 %951, i64* %RCX.i712, align 8
  %952 = add i64 %951, 24
  %953 = add i64 %79, 10
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  store i32 %948, i32* %954, align 4
  %955 = load i64, i64* %RBP.i, align 8
  %956 = add i64 %955, -28
  %957 = load i64, i64* %3, align 8
  %958 = add i64 %957, 7
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %956 to i32*
  store i32 0, i32* %959, align 4
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_42fcee

block_.L_42fcee:                                  ; preds = %block_.L_42fe03, %block_.L_42fcdd
  %960 = phi i64 [ %1336, %block_.L_42fe03 ], [ %.pre45, %block_.L_42fcdd ]
  %961 = load i64, i64* %RBP.i, align 8
  %962 = add i64 %961, -28
  %963 = add i64 %960, 3
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = zext i32 %965 to i64
  store i64 %966, i64* %RAX.i715, align 8
  %967 = add i64 %961, -8
  %968 = add i64 %960, 7
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i64*
  %970 = load i64, i64* %969, align 8
  store i64 %970, i64* %RCX.i712, align 8
  %971 = add i64 %970, 28
  %972 = add i64 %960, 10
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = sub i32 %965, %974
  %976 = icmp ult i32 %965, %974
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %31, align 1
  %978 = and i32 %975, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %32, align 1
  %983 = xor i32 %974, %965
  %984 = xor i32 %983, %975
  %985 = lshr i32 %984, 4
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  store i8 %987, i8* %33, align 1
  %988 = icmp eq i32 %975, 0
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %34, align 1
  %990 = lshr i32 %975, 31
  %991 = trunc i32 %990 to i8
  store i8 %991, i8* %35, align 1
  %992 = lshr i32 %965, 31
  %993 = lshr i32 %974, 31
  %994 = xor i32 %993, %992
  %995 = xor i32 %990, %992
  %996 = add nuw nsw i32 %995, %994
  %997 = icmp eq i32 %996, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %36, align 1
  %999 = icmp ne i8 %991, 0
  %1000 = xor i1 %999, %997
  %.v = select i1 %1000, i64 16, i64 296
  %1001 = add i64 %960, %.v
  %1002 = add i64 %1001, 4
  store i64 %1002, i64* %3, align 8
  %1003 = load i64, i64* %969, align 8
  store i64 %1003, i64* %RAX.i715, align 8
  br i1 %1000, label %block_42fcfe, label %block_.L_42fe16

block_42fcfe:                                     ; preds = %block_.L_42fcee
  %1004 = add i64 %1001, 7
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i64*
  %1006 = load i64, i64* %1005, align 8
  store i64 %1006, i64* %RAX.i715, align 8
  %1007 = add i64 %1001, 11
  store i64 %1007, i64* %3, align 8
  %1008 = load i32, i32* %964, align 4
  %1009 = sext i32 %1008 to i64
  store i64 %1009, i64* %RCX.i712, align 8
  %1010 = shl nsw i64 %1009, 3
  %1011 = add i64 %1010, %1006
  %1012 = add i64 %1001, 15
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i64*
  %1014 = load i64, i64* %1013, align 8
  store i64 %1014, i64* %RAX.i715, align 8
  %1015 = add i64 %961, -24
  %1016 = add i64 %1001, 19
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = sext i32 %1018 to i64
  store i64 %1019, i64* %RCX.i712, align 8
  %1020 = add i64 %1014, %1019
  %1021 = add i64 %1001, 23
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i8*
  store i8 0, i8* %1022, align 1
  %1023 = load i64, i64* %RBP.i, align 8
  %1024 = add i64 %1023, -8
  %1025 = load i64, i64* %3, align 8
  %1026 = add i64 %1025, 4
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1024 to i64*
  %1028 = load i64, i64* %1027, align 8
  store i64 %1028, i64* %RAX.i715, align 8
  %1029 = add i64 %1028, 112
  %1030 = add i64 %1025, 9
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i64*
  %1032 = load i64, i64* %1031, align 8
  store i8 0, i8* %31, align 1
  %1033 = trunc i64 %1032 to i32
  %1034 = and i32 %1033, 255
  %1035 = tail call i32 @llvm.ctpop.i32(i32 %1034)
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = xor i8 %1037, 1
  store i8 %1038, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %1039 = icmp eq i64 %1032, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %34, align 1
  %1041 = lshr i64 %1032, 63
  %1042 = trunc i64 %1041 to i8
  store i8 %1042, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v85 = select i1 %1039, i64 62, i64 15
  %1043 = add i64 %1025, %.v85
  store i64 %1043, i64* %3, align 8
  br i1 %1039, label %block_.L_42fd53, label %block_42fd24

block_42fd24:                                     ; preds = %block_42fcfe
  %1044 = add i64 %1043, 4
  store i64 %1044, i64* %3, align 8
  %1045 = load i64, i64* %1027, align 8
  store i64 %1045, i64* %RAX.i715, align 8
  %1046 = add i64 %1045, 112
  %1047 = add i64 %1043, 8
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i64*
  %1049 = load i64, i64* %1048, align 8
  store i64 %1049, i64* %RAX.i715, align 8
  %1050 = add i64 %1023, -28
  %1051 = add i64 %1043, 12
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  %1053 = load i32, i32* %1052, align 4
  %1054 = sext i32 %1053 to i64
  store i64 %1054, i64* %RCX.i712, align 8
  %1055 = shl nsw i64 %1054, 3
  %1056 = add i64 %1055, %1049
  %1057 = add i64 %1043, 17
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i64*
  %1059 = load i64, i64* %1058, align 8
  store i8 0, i8* %31, align 1
  %1060 = trunc i64 %1059 to i32
  %1061 = and i32 %1060, 255
  %1062 = tail call i32 @llvm.ctpop.i32(i32 %1061)
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %1066 = icmp eq i64 %1059, 0
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %34, align 1
  %1068 = lshr i64 %1059, 63
  %1069 = trunc i64 %1068 to i8
  store i8 %1069, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v86 = select i1 %1066, i64 47, i64 23
  %1070 = add i64 %1043, %.v86
  store i64 %1070, i64* %3, align 8
  br i1 %1066, label %block_.L_42fd53, label %block_42fd3b

block_42fd3b:                                     ; preds = %block_42fd24
  %1071 = add i64 %1070, 4
  store i64 %1071, i64* %3, align 8
  %1072 = load i64, i64* %1027, align 8
  store i64 %1072, i64* %RAX.i715, align 8
  %1073 = add i64 %1072, 112
  %1074 = add i64 %1070, 8
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i64*
  %1076 = load i64, i64* %1075, align 8
  store i64 %1076, i64* %RAX.i715, align 8
  %1077 = add i64 %1070, 12
  store i64 %1077, i64* %3, align 8
  %1078 = load i32, i32* %1052, align 4
  %1079 = sext i32 %1078 to i64
  store i64 %1079, i64* %RCX.i712, align 8
  %1080 = shl nsw i64 %1079, 3
  %1081 = add i64 %1080, %1076
  %1082 = add i64 %1070, 16
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i64*
  %1084 = load i64, i64* %1083, align 8
  store i64 %1084, i64* %RAX.i715, align 8
  %1085 = add i64 %1023, -24
  %1086 = add i64 %1070, 20
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = sext i32 %1088 to i64
  store i64 %1089, i64* %RCX.i712, align 8
  %1090 = add i64 %1084, %1089
  %1091 = add i64 %1070, 24
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i8*
  store i8 0, i8* %1092, align 1
  %.pre53 = load i64, i64* %RBP.i, align 8
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_42fd53

block_.L_42fd53:                                  ; preds = %block_42fd3b, %block_42fd24, %block_42fcfe
  %1093 = phi i64 [ %.pre54, %block_42fd3b ], [ %1070, %block_42fd24 ], [ %1043, %block_42fcfe ]
  %1094 = phi i64 [ %.pre53, %block_42fd3b ], [ %1023, %block_42fd24 ], [ %1023, %block_42fcfe ]
  %1095 = add i64 %1094, -8
  %1096 = add i64 %1093, 4
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i64*
  %1098 = load i64, i64* %1097, align 8
  store i64 %1098, i64* %RAX.i715, align 8
  %1099 = add i64 %1098, 120
  %1100 = add i64 %1093, 9
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to i64*
  %1102 = load i64, i64* %1101, align 8
  store i8 0, i8* %31, align 1
  %1103 = trunc i64 %1102 to i32
  %1104 = and i32 %1103, 255
  %1105 = tail call i32 @llvm.ctpop.i32(i32 %1104)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  store i8 %1108, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %1109 = icmp eq i64 %1102, 0
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %34, align 1
  %1111 = lshr i64 %1102, 63
  %1112 = trunc i64 %1111 to i8
  store i8 %1112, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v87 = select i1 %1109, i64 62, i64 15
  %1113 = add i64 %1093, %.v87
  store i64 %1113, i64* %3, align 8
  br i1 %1109, label %block_.L_42fd91, label %block_42fd62

block_42fd62:                                     ; preds = %block_.L_42fd53
  %1114 = add i64 %1113, 4
  store i64 %1114, i64* %3, align 8
  %1115 = load i64, i64* %1097, align 8
  store i64 %1115, i64* %RAX.i715, align 8
  %1116 = add i64 %1115, 120
  %1117 = add i64 %1113, 8
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %RAX.i715, align 8
  %1120 = add i64 %1094, -28
  %1121 = add i64 %1113, 12
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = sext i32 %1123 to i64
  store i64 %1124, i64* %RCX.i712, align 8
  %1125 = shl nsw i64 %1124, 3
  %1126 = add i64 %1125, %1119
  %1127 = add i64 %1113, 17
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i8 0, i8* %31, align 1
  %1130 = trunc i64 %1129 to i32
  %1131 = and i32 %1130, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %1136 = icmp eq i64 %1129, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %34, align 1
  %1138 = lshr i64 %1129, 63
  %1139 = trunc i64 %1138 to i8
  store i8 %1139, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v88 = select i1 %1136, i64 47, i64 23
  %1140 = add i64 %1113, %.v88
  store i64 %1140, i64* %3, align 8
  br i1 %1136, label %block_.L_42fd91, label %block_42fd79

block_42fd79:                                     ; preds = %block_42fd62
  %1141 = add i64 %1140, 4
  store i64 %1141, i64* %3, align 8
  %1142 = load i64, i64* %1097, align 8
  store i64 %1142, i64* %RAX.i715, align 8
  %1143 = add i64 %1142, 120
  %1144 = add i64 %1140, 8
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to i64*
  %1146 = load i64, i64* %1145, align 8
  store i64 %1146, i64* %RAX.i715, align 8
  %1147 = add i64 %1140, 12
  store i64 %1147, i64* %3, align 8
  %1148 = load i32, i32* %1122, align 4
  %1149 = sext i32 %1148 to i64
  store i64 %1149, i64* %RCX.i712, align 8
  %1150 = shl nsw i64 %1149, 3
  %1151 = add i64 %1150, %1146
  %1152 = add i64 %1140, 16
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i64*
  %1154 = load i64, i64* %1153, align 8
  store i64 %1154, i64* %RAX.i715, align 8
  %1155 = add i64 %1094, -24
  %1156 = add i64 %1140, 20
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i32*
  %1158 = load i32, i32* %1157, align 4
  %1159 = sext i32 %1158 to i64
  store i64 %1159, i64* %RCX.i712, align 8
  %1160 = add i64 %1154, %1159
  %1161 = add i64 %1140, 24
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i8*
  store i8 0, i8* %1162, align 1
  %.pre55 = load i64, i64* %RBP.i, align 8
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_42fd91

block_.L_42fd91:                                  ; preds = %block_42fd79, %block_42fd62, %block_.L_42fd53
  %1163 = phi i64 [ %.pre56, %block_42fd79 ], [ %1140, %block_42fd62 ], [ %1113, %block_.L_42fd53 ]
  %1164 = phi i64 [ %.pre55, %block_42fd79 ], [ %1094, %block_42fd62 ], [ %1094, %block_.L_42fd53 ]
  %1165 = add i64 %1164, -32
  %1166 = add i64 %1163, 7
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i32*
  store i32 0, i32* %1167, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_42fd98

block_.L_42fd98:                                  ; preds = %block_.L_42fdf0, %block_.L_42fd91
  %1168 = phi i64 [ %1306, %block_.L_42fdf0 ], [ %.pre57, %block_.L_42fd91 ]
  %1169 = load i64, i64* %RBP.i, align 8
  %1170 = add i64 %1169, -32
  %1171 = add i64 %1168, 3
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to i32*
  %1173 = load i32, i32* %1172, align 4
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RAX.i715, align 8
  %1175 = add i64 %1169, -8
  %1176 = add i64 %1168, 7
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i64*
  %1178 = load i64, i64* %1177, align 8
  store i64 %1178, i64* %RCX.i712, align 8
  %1179 = add i64 %1178, 304
  %1180 = add i64 %1168, 13
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i32*
  %1182 = load i32, i32* %1181, align 4
  %1183 = sub i32 %1173, %1182
  %1184 = icmp ult i32 %1173, %1182
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %31, align 1
  %1186 = and i32 %1183, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %32, align 1
  %1191 = xor i32 %1182, %1173
  %1192 = xor i32 %1191, %1183
  %1193 = lshr i32 %1192, 4
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  store i8 %1195, i8* %33, align 1
  %1196 = icmp eq i32 %1183, 0
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %34, align 1
  %1198 = lshr i32 %1183, 31
  %1199 = trunc i32 %1198 to i8
  store i8 %1199, i8* %35, align 1
  %1200 = lshr i32 %1173, 31
  %1201 = lshr i32 %1182, 31
  %1202 = xor i32 %1201, %1200
  %1203 = xor i32 %1198, %1200
  %1204 = add nuw nsw i32 %1203, %1202
  %1205 = icmp eq i32 %1204, 2
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %36, align 1
  %1207 = icmp ne i8 %1199, 0
  %1208 = xor i1 %1207, %1205
  %.v77 = select i1 %1208, i64 19, i64 107
  %1209 = add i64 %1168, %.v77
  store i64 %1209, i64* %3, align 8
  br i1 %1208, label %block_42fdab, label %block_.L_42fe03

block_42fdab:                                     ; preds = %block_.L_42fd98
  %1210 = add i64 %1209, 4
  store i64 %1210, i64* %3, align 8
  %1211 = load i64, i64* %1177, align 8
  store i64 %1211, i64* %RAX.i715, align 8
  %1212 = add i64 %1211, 288
  %1213 = add i64 %1209, 11
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i64*
  %1215 = load i64, i64* %1214, align 8
  store i64 %1215, i64* %RAX.i715, align 8
  %1216 = add i64 %1209, 15
  store i64 %1216, i64* %3, align 8
  %1217 = load i32, i32* %1172, align 4
  %1218 = sext i32 %1217 to i64
  store i64 %1218, i64* %RCX.i712, align 8
  %1219 = shl nsw i64 %1218, 3
  %1220 = add i64 %1219, %1215
  %1221 = add i64 %1209, 19
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i64*
  %1223 = load i64, i64* %1222, align 8
  store i64 %1223, i64* %RAX.i715, align 8
  %1224 = add i64 %1169, -28
  %1225 = add i64 %1209, 23
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i32*
  %1227 = load i32, i32* %1226, align 4
  %1228 = sext i32 %1227 to i64
  store i64 %1228, i64* %RCX.i712, align 8
  %1229 = shl nsw i64 %1228, 3
  %1230 = add i64 %1229, %1223
  %1231 = add i64 %1209, 28
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i64*
  %1233 = load i64, i64* %1232, align 8
  store i8 0, i8* %31, align 1
  %1234 = trunc i64 %1233 to i32
  %1235 = and i32 %1234, 255
  %1236 = tail call i32 @llvm.ctpop.i32(i32 %1235)
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  %1239 = xor i8 %1238, 1
  store i8 %1239, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %1240 = icmp eq i64 %1233, 0
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %34, align 1
  %1242 = lshr i64 %1233, 63
  %1243 = trunc i64 %1242 to i8
  store i8 %1243, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v89 = select i1 %1240, i64 69, i64 34
  %1244 = add i64 %1209, %.v89
  store i64 %1244, i64* %3, align 8
  br i1 %1240, label %block_.L_42fdf0, label %block_42fdcd

block_42fdcd:                                     ; preds = %block_42fdab
  %1245 = add i64 %1244, 4
  store i64 %1245, i64* %3, align 8
  %1246 = load i64, i64* %1177, align 8
  store i64 %1246, i64* %RAX.i715, align 8
  %1247 = add i64 %1246, 288
  %1248 = add i64 %1244, 11
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i64*
  %1250 = load i64, i64* %1249, align 8
  store i64 %1250, i64* %RAX.i715, align 8
  %1251 = add i64 %1244, 15
  store i64 %1251, i64* %3, align 8
  %1252 = load i32, i32* %1172, align 4
  %1253 = sext i32 %1252 to i64
  store i64 %1253, i64* %RCX.i712, align 8
  %1254 = shl nsw i64 %1253, 3
  %1255 = add i64 %1254, %1250
  %1256 = add i64 %1244, 19
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i64*
  %1258 = load i64, i64* %1257, align 8
  store i64 %1258, i64* %RAX.i715, align 8
  %1259 = add i64 %1244, 23
  store i64 %1259, i64* %3, align 8
  %1260 = load i32, i32* %1226, align 4
  %1261 = sext i32 %1260 to i64
  store i64 %1261, i64* %RCX.i712, align 8
  %1262 = shl nsw i64 %1261, 3
  %1263 = add i64 %1262, %1258
  %1264 = add i64 %1244, 27
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i64*
  %1266 = load i64, i64* %1265, align 8
  store i64 %1266, i64* %RAX.i715, align 8
  %1267 = add i64 %1169, -24
  %1268 = add i64 %1244, 31
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i32*
  %1270 = load i32, i32* %1269, align 4
  %1271 = sext i32 %1270 to i64
  store i64 %1271, i64* %RCX.i712, align 8
  %1272 = add i64 %1266, %1271
  %1273 = add i64 %1244, 35
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i8*
  store i8 0, i8* %1274, align 1
  %.pre58 = load i64, i64* %3, align 8
  %.pre59 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42fdf0

block_.L_42fdf0:                                  ; preds = %block_42fdcd, %block_42fdab
  %1275 = phi i64 [ %.pre59, %block_42fdcd ], [ %1169, %block_42fdab ]
  %1276 = phi i64 [ %.pre58, %block_42fdcd ], [ %1244, %block_42fdab ]
  %1277 = add i64 %1275, -32
  %1278 = add i64 %1276, 8
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1277 to i32*
  %1280 = load i32, i32* %1279, align 4
  %1281 = add i32 %1280, 1
  %1282 = zext i32 %1281 to i64
  store i64 %1282, i64* %RAX.i715, align 8
  %1283 = icmp eq i32 %1280, -1
  %1284 = icmp eq i32 %1281, 0
  %1285 = or i1 %1283, %1284
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %31, align 1
  %1287 = and i32 %1281, 255
  %1288 = tail call i32 @llvm.ctpop.i32(i32 %1287)
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  %1291 = xor i8 %1290, 1
  store i8 %1291, i8* %32, align 1
  %1292 = xor i32 %1281, %1280
  %1293 = lshr i32 %1292, 4
  %1294 = trunc i32 %1293 to i8
  %1295 = and i8 %1294, 1
  store i8 %1295, i8* %33, align 1
  %1296 = zext i1 %1284 to i8
  store i8 %1296, i8* %34, align 1
  %1297 = lshr i32 %1281, 31
  %1298 = trunc i32 %1297 to i8
  store i8 %1298, i8* %35, align 1
  %1299 = lshr i32 %1280, 31
  %1300 = xor i32 %1297, %1299
  %1301 = add nuw nsw i32 %1300, %1297
  %1302 = icmp eq i32 %1301, 2
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %36, align 1
  %1304 = add i64 %1276, 14
  store i64 %1304, i64* %3, align 8
  store i32 %1281, i32* %1279, align 4
  %1305 = load i64, i64* %3, align 8
  %1306 = add i64 %1305, -102
  store i64 %1306, i64* %3, align 8
  br label %block_.L_42fd98

block_.L_42fe03:                                  ; preds = %block_.L_42fd98
  %1307 = add i64 %1169, -28
  %1308 = add i64 %1209, 8
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to i32*
  %1310 = load i32, i32* %1309, align 4
  %1311 = add i32 %1310, 1
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %RAX.i715, align 8
  %1313 = icmp eq i32 %1310, -1
  %1314 = icmp eq i32 %1311, 0
  %1315 = or i1 %1313, %1314
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %31, align 1
  %1317 = and i32 %1311, 255
  %1318 = tail call i32 @llvm.ctpop.i32(i32 %1317)
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  %1321 = xor i8 %1320, 1
  store i8 %1321, i8* %32, align 1
  %1322 = xor i32 %1311, %1310
  %1323 = lshr i32 %1322, 4
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  store i8 %1325, i8* %33, align 1
  %1326 = zext i1 %1314 to i8
  store i8 %1326, i8* %34, align 1
  %1327 = lshr i32 %1311, 31
  %1328 = trunc i32 %1327 to i8
  store i8 %1328, i8* %35, align 1
  %1329 = lshr i32 %1310, 31
  %1330 = xor i32 %1327, %1329
  %1331 = add nuw nsw i32 %1330, %1327
  %1332 = icmp eq i32 %1331, 2
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %36, align 1
  %1334 = add i64 %1209, 14
  store i64 %1334, i64* %3, align 8
  store i32 %1311, i32* %1309, align 4
  %1335 = load i64, i64* %3, align 8
  %1336 = add i64 %1335, -291
  store i64 %1336, i64* %3, align 8
  br label %block_.L_42fcee

block_.L_42fe16:                                  ; preds = %block_.L_42fcee
  %1337 = add i64 %1003, 72
  %1338 = add i64 %1001, 9
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i64*
  %1340 = load i64, i64* %1339, align 8
  store i8 0, i8* %31, align 1
  %1341 = trunc i64 %1340 to i32
  %1342 = and i32 %1341, 255
  %1343 = tail call i32 @llvm.ctpop.i32(i32 %1342)
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = xor i8 %1345, 1
  store i8 %1346, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %1347 = icmp eq i64 %1340, 0
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %34, align 1
  %1349 = lshr i64 %1340, 63
  %1350 = trunc i64 %1349 to i8
  store i8 %1350, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v81 = select i1 %1347, i64 31, i64 15
  %1351 = add i64 %1001, %.v81
  store i64 %1351, i64* %3, align 8
  br i1 %1347, label %block_.L_42fe35, label %block_42fe25

block_42fe25:                                     ; preds = %block_.L_42fe16
  %1352 = add i64 %1351, 4
  store i64 %1352, i64* %3, align 8
  %1353 = load i64, i64* %969, align 8
  store i64 %1353, i64* %RAX.i715, align 8
  %1354 = add i64 %1353, 72
  %1355 = add i64 %1351, 8
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i64*
  %1357 = load i64, i64* %1356, align 8
  store i64 %1357, i64* %RAX.i715, align 8
  %1358 = add i64 %961, -24
  %1359 = add i64 %1351, 12
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i32*
  %1361 = load i32, i32* %1360, align 4
  %1362 = sext i32 %1361 to i64
  store i64 %1362, i64* %RCX.i712, align 8
  %1363 = add i64 %1357, %1362
  %1364 = add i64 %1351, 16
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i8*
  store i8 0, i8* %1365, align 1
  %.pre46 = load i64, i64* %RBP.i, align 8
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_42fe35

block_.L_42fe35:                                  ; preds = %block_42fe25, %block_.L_42fe16
  %1366 = phi i64 [ %.pre47, %block_42fe25 ], [ %1351, %block_.L_42fe16 ]
  %1367 = phi i64 [ %.pre46, %block_42fe25 ], [ %961, %block_.L_42fe16 ]
  %1368 = add i64 %1367, -8
  %1369 = add i64 %1366, 4
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i64*
  %1371 = load i64, i64* %1370, align 8
  store i64 %1371, i64* %RAX.i715, align 8
  %1372 = add i64 %1371, 80
  %1373 = add i64 %1366, 9
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i64*
  %1375 = load i64, i64* %1374, align 8
  store i8 0, i8* %31, align 1
  %1376 = trunc i64 %1375 to i32
  %1377 = and i32 %1376, 255
  %1378 = tail call i32 @llvm.ctpop.i32(i32 %1377)
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = xor i8 %1380, 1
  store i8 %1381, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %1382 = icmp eq i64 %1375, 0
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %34, align 1
  %1384 = lshr i64 %1375, 63
  %1385 = trunc i64 %1384 to i8
  store i8 %1385, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v82 = select i1 %1382, i64 31, i64 15
  %1386 = add i64 %1366, %.v82
  store i64 %1386, i64* %3, align 8
  br i1 %1382, label %block_.L_42fe54, label %block_42fe44

block_42fe44:                                     ; preds = %block_.L_42fe35
  %1387 = add i64 %1386, 4
  store i64 %1387, i64* %3, align 8
  %1388 = load i64, i64* %1370, align 8
  store i64 %1388, i64* %RAX.i715, align 8
  %1389 = add i64 %1388, 80
  %1390 = add i64 %1386, 8
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i64*
  %1392 = load i64, i64* %1391, align 8
  store i64 %1392, i64* %RAX.i715, align 8
  %1393 = add i64 %1367, -24
  %1394 = add i64 %1386, 12
  store i64 %1394, i64* %3, align 8
  %1395 = inttoptr i64 %1393 to i32*
  %1396 = load i32, i32* %1395, align 4
  %1397 = sext i32 %1396 to i64
  store i64 %1397, i64* %RCX.i712, align 8
  %1398 = add i64 %1392, %1397
  %1399 = add i64 %1386, 16
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i8*
  store i8 0, i8* %1400, align 1
  %.pre48 = load i64, i64* %RBP.i, align 8
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_42fe54

block_.L_42fe54:                                  ; preds = %block_42fe44, %block_.L_42fe35
  %1401 = phi i64 [ %.pre49, %block_42fe44 ], [ %1386, %block_.L_42fe35 ]
  %1402 = phi i64 [ %.pre48, %block_42fe44 ], [ %1367, %block_.L_42fe35 ]
  %1403 = add i64 %1402, -8
  %1404 = add i64 %1401, 4
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1403 to i64*
  %1406 = load i64, i64* %1405, align 8
  store i64 %1406, i64* %RAX.i715, align 8
  %1407 = add i64 %1406, 88
  %1408 = add i64 %1401, 9
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i64*
  %1410 = load i64, i64* %1409, align 8
  store i8 0, i8* %31, align 1
  %1411 = trunc i64 %1410 to i32
  %1412 = and i32 %1411, 255
  %1413 = tail call i32 @llvm.ctpop.i32(i32 %1412)
  %1414 = trunc i32 %1413 to i8
  %1415 = and i8 %1414, 1
  %1416 = xor i8 %1415, 1
  store i8 %1416, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %1417 = icmp eq i64 %1410, 0
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %34, align 1
  %1419 = lshr i64 %1410, 63
  %1420 = trunc i64 %1419 to i8
  store i8 %1420, i8* %35, align 1
  store i8 0, i8* %36, align 1
  %.v83 = select i1 %1417, i64 31, i64 15
  %1421 = add i64 %1401, %.v83
  store i64 %1421, i64* %3, align 8
  br i1 %1417, label %block_.L_42fe73, label %block_42fe63

block_42fe63:                                     ; preds = %block_.L_42fe54
  %1422 = add i64 %1421, 4
  store i64 %1422, i64* %3, align 8
  %1423 = load i64, i64* %1405, align 8
  store i64 %1423, i64* %RAX.i715, align 8
  %1424 = add i64 %1423, 88
  %1425 = add i64 %1421, 8
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1424 to i64*
  %1427 = load i64, i64* %1426, align 8
  store i64 %1427, i64* %RAX.i715, align 8
  %1428 = add i64 %1402, -24
  %1429 = add i64 %1421, 12
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1428 to i32*
  %1431 = load i32, i32* %1430, align 4
  %1432 = sext i32 %1431 to i64
  store i64 %1432, i64* %RCX.i712, align 8
  %1433 = add i64 %1427, %1432
  %1434 = add i64 %1421, 16
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i8*
  store i8 0, i8* %1435, align 1
  %.pre50 = load i64, i64* %RBP.i, align 8
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_42fe73

block_.L_42fe73:                                  ; preds = %block_42fe63, %block_.L_42fe54
  %1436 = phi i64 [ %.pre51, %block_42fe63 ], [ %1421, %block_.L_42fe54 ]
  %1437 = phi i64 [ %.pre50, %block_42fe63 ], [ %1402, %block_.L_42fe54 ]
  %1438 = add i64 %1437, -32
  %1439 = add i64 %1436, 7
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1438 to i32*
  store i32 0, i32* %1440, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_42fe7a

block_.L_42fe7a:                                  ; preds = %block_42fe8d, %block_.L_42fe73
  %1441 = phi i64 [ %1536, %block_42fe8d ], [ %.pre52, %block_.L_42fe73 ]
  %1442 = load i64, i64* %RBP.i, align 8
  %1443 = add i64 %1442, -32
  %1444 = add i64 %1441, 3
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RAX.i715, align 8
  %1448 = add i64 %1442, -8
  %1449 = add i64 %1441, 7
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i64*
  %1451 = load i64, i64* %1450, align 8
  store i64 %1451, i64* %RCX.i712, align 8
  %1452 = add i64 %1451, 272
  %1453 = add i64 %1441, 13
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1452 to i32*
  %1455 = load i32, i32* %1454, align 4
  %1456 = sub i32 %1446, %1455
  %1457 = icmp ult i32 %1446, %1455
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %31, align 1
  %1459 = and i32 %1456, 255
  %1460 = tail call i32 @llvm.ctpop.i32(i32 %1459)
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  %1463 = xor i8 %1462, 1
  store i8 %1463, i8* %32, align 1
  %1464 = xor i32 %1455, %1446
  %1465 = xor i32 %1464, %1456
  %1466 = lshr i32 %1465, 4
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  store i8 %1468, i8* %33, align 1
  %1469 = icmp eq i32 %1456, 0
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %34, align 1
  %1471 = lshr i32 %1456, 31
  %1472 = trunc i32 %1471 to i8
  store i8 %1472, i8* %35, align 1
  %1473 = lshr i32 %1446, 31
  %1474 = lshr i32 %1455, 31
  %1475 = xor i32 %1474, %1473
  %1476 = xor i32 %1471, %1473
  %1477 = add nuw nsw i32 %1476, %1475
  %1478 = icmp eq i32 %1477, 2
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %36, align 1
  %1480 = icmp ne i8 %1472, 0
  %1481 = xor i1 %1480, %1478
  %.v84 = select i1 %1481, i64 19, i64 60
  %1482 = add i64 %1441, %.v84
  store i64 %1482, i64* %3, align 8
  br i1 %1481, label %block_42fe8d, label %block_.L_42feb6

block_42fe8d:                                     ; preds = %block_.L_42fe7a
  %1483 = add i64 %1482, 4
  store i64 %1483, i64* %3, align 8
  %1484 = load i64, i64* %1450, align 8
  store i64 %1484, i64* %RAX.i715, align 8
  %1485 = add i64 %1484, 256
  %1486 = add i64 %1482, 11
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1485 to i64*
  %1488 = load i64, i64* %1487, align 8
  store i64 %1488, i64* %RAX.i715, align 8
  %1489 = add i64 %1482, 15
  store i64 %1489, i64* %3, align 8
  %1490 = load i32, i32* %1445, align 4
  %1491 = sext i32 %1490 to i64
  store i64 %1491, i64* %RCX.i712, align 8
  %1492 = shl nsw i64 %1491, 3
  %1493 = add i64 %1492, %1488
  %1494 = add i64 %1482, 19
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i64*
  %1496 = load i64, i64* %1495, align 8
  store i64 %1496, i64* %RAX.i715, align 8
  %1497 = add i64 %1442, -24
  %1498 = add i64 %1482, 23
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = sext i32 %1500 to i64
  store i64 %1501, i64* %RCX.i712, align 8
  %1502 = add i64 %1496, %1501
  %1503 = add i64 %1482, 27
  store i64 %1503, i64* %3, align 8
  %1504 = inttoptr i64 %1502 to i8*
  store i8 0, i8* %1504, align 1
  %1505 = load i64, i64* %RBP.i, align 8
  %1506 = add i64 %1505, -32
  %1507 = load i64, i64* %3, align 8
  %1508 = add i64 %1507, 3
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1506 to i32*
  %1510 = load i32, i32* %1509, align 4
  %1511 = add i32 %1510, 1
  %1512 = zext i32 %1511 to i64
  store i64 %1512, i64* %RAX.i715, align 8
  %1513 = icmp eq i32 %1510, -1
  %1514 = icmp eq i32 %1511, 0
  %1515 = or i1 %1513, %1514
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %31, align 1
  %1517 = and i32 %1511, 255
  %1518 = tail call i32 @llvm.ctpop.i32(i32 %1517)
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  store i8 %1521, i8* %32, align 1
  %1522 = xor i32 %1511, %1510
  %1523 = lshr i32 %1522, 4
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  store i8 %1525, i8* %33, align 1
  %1526 = zext i1 %1514 to i8
  store i8 %1526, i8* %34, align 1
  %1527 = lshr i32 %1511, 31
  %1528 = trunc i32 %1527 to i8
  store i8 %1528, i8* %35, align 1
  %1529 = lshr i32 %1510, 31
  %1530 = xor i32 %1527, %1529
  %1531 = add nuw nsw i32 %1530, %1527
  %1532 = icmp eq i32 %1531, 2
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %36, align 1
  %1534 = add i64 %1507, 9
  store i64 %1534, i64* %3, align 8
  store i32 %1511, i32* %1509, align 4
  %1535 = load i64, i64* %3, align 8
  %1536 = add i64 %1535, -55
  store i64 %1536, i64* %3, align 8
  br label %block_.L_42fe7a

block_.L_42feb6:                                  ; preds = %block_.L_42fe7a
  %1537 = add i64 %1482, 1
  store i64 %1537, i64* %3, align 8
  %1538 = load i64, i64* %6, align 8
  %1539 = add i64 %1538, 8
  %1540 = inttoptr i64 %1538 to i64*
  %1541 = load i64, i64* %1540, align 8
  store i64 %1541, i64* %RBP.i, align 8
  store i64 %1539, i64* %6, align 8
  %1542 = add i64 %1482, 2
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1539 to i64*
  %1544 = load i64, i64* %1543, align 8
  store i64 %1544, i64* %3, align 8
  %1545 = add i64 %1538, 16
  store i64 %1545, i64* %6, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 24
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
define %struct.Memory* @routine_jge_.L_42fcdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jne_.L_42fa41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42fccf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_je_.L_42fcc6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 28
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
define %struct.Memory* @routine_jge_.L_42fbde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %DL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42fae4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = trunc i64 %10 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i64 %10, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i64 %10, 63
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42fb38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_cmpl_0x130__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 304
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
define %struct.Memory* @routine_jge_.L_42fbcb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_42fbb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42fbbd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42fb3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42fbd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_42fa54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42fc0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42fc38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42fc65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x110__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 272
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
define %struct.Memory* @routine_jge_.L_42fcc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x100__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42fc6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42fcc6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42fa1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x18__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42fe16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i8 0, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42fd53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42fd91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_42fe03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42fdf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42fdf5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42fd98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42fe08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42fcee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42fe35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42fe54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42fe73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_42feb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42fe7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
