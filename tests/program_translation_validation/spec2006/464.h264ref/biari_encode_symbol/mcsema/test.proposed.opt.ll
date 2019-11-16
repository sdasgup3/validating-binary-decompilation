; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cc02c_type = type <{ [1 x i8] }>
%G__0x4b2120_type = type <{ [8 x i8] }>
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
@G_0x6cc02c = local_unnamed_addr global %G_0x6cc02c_type zeroinitializer
@G__0x4b2120 = global %G__0x4b2120_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @biari_encode_symbol(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX.i728 = bitcast %union.anon* %11 to i16*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI.i = bitcast %union.anon* %12 to i16*
  %13 = load i16, i16* %SI.i, align 2
  store i16 %13, i16* %AX.i728, align 2
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i726 = getelementptr inbounds %union.anon, %union.anon* %14, i64 0, i32 0
  store i64 ptrtoint (%G__0x4b2120_type* @G__0x4b2120 to i64), i64* %RCX.i726, align 8
  %RDI.i723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %15 = add i64 %7, -16
  %16 = load i64, i64* %RDI.i723, align 8
  %17 = add i64 %10, 20
  store i64 %17, i64* %3, align 8
  %18 = inttoptr i64 %15 to i64*
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %RBP.i, align 8
  %20 = add i64 %19, -10
  %21 = load i16, i16* %AX.i728, align 2
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 4
  store i64 %23, i64* %3, align 8
  %24 = inttoptr i64 %20 to i16*
  store i16 %21, i16* %24, align 2
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i718 = getelementptr inbounds %union.anon, %union.anon* %25, i64 0, i32 0
  %26 = load i64, i64* %RBP.i, align 8
  %27 = add i64 %26, -24
  %28 = load i64, i64* %RDX.i718, align 8
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 4
  store i64 %30, i64* %3, align 8
  %31 = inttoptr i64 %27 to i64*
  store i64 %28, i64* %31, align 8
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -8
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 4
  store i64 %35, i64* %3, align 8
  %36 = inttoptr i64 %33 to i64*
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %RDX.i718, align 8
  %RSI.i713 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %38 = add i64 %37, 4
  %39 = add i64 %34, 7
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %38 to i32*
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %RSI.i713, align 8
  %43 = add i64 %32, -28
  %44 = add i64 %34, 10
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %43 to i32*
  store i32 %41, i32* %45, align 4
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %RDX.i718, align 8
  %52 = add i64 %48, 6
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %51 to i32*
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %RSI.i713, align 8
  %56 = add i64 %46, -32
  %57 = add i64 %48, 9
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i32*
  store i32 %54, i32* %58, align 4
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -24
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %60 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %RDX.i718, align 8
  %65 = add i64 %61, 7
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %64 to i16*
  %67 = load i16, i16* %66, align 2
  %68 = zext i16 %67 to i64
  store i64 %68, i64* %RSI.i713, align 8
  %69 = zext i16 %67 to i64
  %70 = shl nuw nsw i64 %69, 2
  store i64 %70, i64* %RDX.i718, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %77 = load i64, i64* %RCX.i726, align 8
  %78 = add i64 %70, %77
  store i64 %78, i64* %RCX.i726, align 8
  %79 = icmp ult i64 %78, %77
  %80 = icmp ult i64 %78, %70
  %81 = or i1 %79, %80
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %71, align 1
  %83 = trunc i64 %78 to i32
  %84 = and i32 %83, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84)
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %72, align 1
  %89 = xor i64 %70, %77
  %90 = xor i64 %89, %78
  %91 = lshr i64 %90, 4
  %92 = trunc i64 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %73, align 1
  %94 = icmp eq i64 %78, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %74, align 1
  %96 = lshr i64 %78, 63
  %97 = trunc i64 %96 to i8
  store i8 %97, i8* %75, align 1
  %98 = lshr i64 %77, 63
  %99 = xor i64 %96, %98
  %100 = add nuw nsw i64 %99, %96
  %101 = icmp eq i64 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %76, align 1
  %103 = add i64 %59, -28
  %104 = add i64 %61, 19
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = lshr i32 %106, 6
  %108 = and i32 %107, 3
  %109 = zext i32 %108 to i64
  store i8 0, i8* %71, align 1
  %110 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %72, align 1
  %114 = icmp eq i32 %108, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %74, align 1
  store i8 0, i8* %75, align 1
  store i8 0, i8* %76, align 1
  store i8 0, i8* %73, align 1
  store i64 %109, i64* %RSI.i713, align 8
  store i64 %109, i64* %RDX.i718, align 8
  %116 = add i64 %78, %109
  %117 = add i64 %61, 33
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i8*
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i64
  store i64 %120, i64* %RSI.i713, align 8
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -36
  %123 = zext i8 %119 to i32
  %124 = add i64 %61, 36
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %122 to i32*
  store i32 %123, i32* %125, align 4
  %126 = load i64, i64* %3, align 8
  %127 = load i32, i32* bitcast (%G_0x6cc02c_type* @G_0x6cc02c to i32*), align 8
  store i8 0, i8* %71, align 1
  %128 = and i32 %127, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128)
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %133 = icmp eq i32 %127, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %74, align 1
  %135 = lshr i32 %127, 31
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %75, align 1
  store i8 0, i8* %76, align 1
  %.v54 = select i1 %133, i64 30, i64 14
  %137 = add i64 %126, %.v54
  store i64 %137, i64* %3, align 8
  %.pre51 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  br i1 %133, label %block_.L_401a12, label %block_401a02

block_401a02:                                     ; preds = %entry
  %138 = load i64, i64* %RBP.i, align 8
  %139 = add i64 %138, -24
  %140 = add i64 %137, 4
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %.pre51, align 8
  %143 = add i64 %142, 8
  %144 = add i64 %137, 8
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i64*
  %146 = load i64, i64* %145, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %RCX.i726, align 8
  %148 = icmp eq i64 %146, -1
  %149 = icmp eq i64 %147, 0
  %150 = or i1 %148, %149
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %71, align 1
  %152 = trunc i64 %147 to i32
  %153 = and i32 %152, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %72, align 1
  %158 = xor i64 %147, %146
  %159 = lshr i64 %158, 4
  %160 = trunc i64 %159 to i8
  %161 = and i8 %160, 1
  store i8 %161, i8* %73, align 1
  %162 = zext i1 %149 to i8
  store i8 %162, i8* %74, align 1
  %163 = lshr i64 %147, 63
  %164 = trunc i64 %163 to i8
  store i8 %164, i8* %75, align 1
  %165 = lshr i64 %146, 63
  %166 = xor i64 %163, %165
  %167 = add nuw nsw i64 %166, %163
  %168 = icmp eq i64 %167, 2
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %76, align 1
  %170 = add i64 %137, 16
  store i64 %170, i64* %3, align 8
  store i64 %147, i64* %145, align 8
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_401a12

block_.L_401a12:                                  ; preds = %entry, %block_401a02
  %171 = phi i64 [ %.pre, %block_401a02 ], [ %137, %entry ]
  %172 = load i64, i64* %RBP.i, align 8
  %173 = add i64 %172, -10
  %174 = add i64 %171, 4
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i16*
  %176 = load i16, i16* %175, align 2
  %177 = sext i16 %176 to i64
  %178 = and i64 %177, 4294967295
  store i64 %178, i64* %.pre51, align 8
  %179 = sext i16 %176 to i32
  store i8 0, i8* %71, align 1
  %180 = and i32 %179, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180)
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %185 = icmp eq i16 %176, 0
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %74, align 1
  %187 = lshr i32 %179, 31
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %75, align 1
  store i8 0, i8* %76, align 1
  %.v55 = select i1 %185, i64 19, i64 13
  %189 = add i64 %171, %.v55
  store i64 %189, i64* %3, align 8
  br i1 %185, label %block_.L_401a25, label %block_401a1f

block_401a1f:                                     ; preds = %block_.L_401a12
  %190 = add i64 %189, 6
  store i64 %190, i64* %3, align 8
  store i16 1, i16* %175, align 2
  %.pre41 = load i64, i64* %RBP.i, align 8
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_401a25

block_.L_401a25:                                  ; preds = %block_401a1f, %block_.L_401a12
  %191 = phi i64 [ %.pre42, %block_401a1f ], [ %189, %block_.L_401a12 ]
  %192 = phi i64 [ %.pre41, %block_401a1f ], [ %172, %block_.L_401a12 ]
  %193 = add i64 %192, -36
  %194 = add i64 %191, 3
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %193 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %.pre51, align 8
  %198 = add i64 %192, -28
  %199 = add i64 %191, 6
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = sub i32 %201, %196
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RCX.i726, align 8
  %204 = icmp ult i32 %201, %196
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %71, align 1
  %206 = and i32 %202, 255
  %207 = tail call i32 @llvm.ctpop.i32(i32 %206)
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  store i8 %210, i8* %72, align 1
  %211 = xor i32 %196, %201
  %212 = xor i32 %211, %202
  %213 = lshr i32 %212, 4
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  store i8 %215, i8* %73, align 1
  %216 = icmp eq i32 %202, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %74, align 1
  %218 = lshr i32 %202, 31
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %75, align 1
  %220 = lshr i32 %201, 31
  %221 = lshr i32 %196, 31
  %222 = xor i32 %221, %220
  %223 = xor i32 %218, %220
  %224 = add nuw nsw i32 %223, %222
  %225 = icmp eq i32 %224, 2
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %76, align 1
  %ECX.i634 = bitcast %union.anon* %14 to i32*
  %227 = add i64 %191, 11
  store i64 %227, i64* %3, align 8
  store i32 %202, i32* %200, align 4
  %228 = load i64, i64* %RBP.i, align 8
  %229 = add i64 %228, -10
  %230 = load i64, i64* %3, align 8
  %231 = add i64 %230, 4
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %229 to i16*
  %233 = load i16, i16* %232, align 2
  %234 = sext i16 %233 to i64
  %235 = and i64 %234, 4294967295
  store i64 %235, i64* %.pre51, align 8
  %236 = add i64 %228, -24
  %237 = add i64 %230, 8
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i64*
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %RDX.i718, align 8
  %240 = add i64 %239, 2
  %241 = add i64 %230, 12
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i8*
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i64
  store i64 %244, i64* %RCX.i726, align 8
  %245 = sext i16 %233 to i32
  %246 = zext i8 %243 to i32
  %247 = sub nsw i32 %245, %246
  %248 = icmp ult i32 %245, %246
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %71, align 1
  %250 = and i32 %247, 255
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250)
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %72, align 1
  %255 = xor i32 %246, %245
  %256 = xor i32 %255, %247
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %73, align 1
  %260 = icmp eq i32 %247, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %74, align 1
  %262 = lshr i32 %247, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %75, align 1
  %264 = lshr i32 %245, 31
  %265 = xor i32 %262, %264
  %266 = add nuw nsw i32 %265, %264
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %76, align 1
  %.v56 = select i1 %260, i64 98, i64 20
  %269 = add i64 %230, %.v56
  store i64 %269, i64* %3, align 8
  br i1 %260, label %block_.L_401a92, label %block_401a44

block_401a44:                                     ; preds = %block_.L_401a25
  %270 = add i64 %228, -28
  %271 = add i64 %269, 3
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %.pre51, align 8
  %275 = add i64 %228, -32
  %276 = add i64 %269, 6
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = add i32 %278, %273
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %.pre51, align 8
  %281 = icmp ult i32 %279, %273
  %282 = icmp ult i32 %279, %278
  %283 = or i1 %281, %282
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %71, align 1
  %285 = and i32 %279, 255
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285)
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %72, align 1
  %290 = xor i32 %278, %273
  %291 = xor i32 %290, %279
  %292 = lshr i32 %291, 4
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  store i8 %294, i8* %73, align 1
  %295 = icmp eq i32 %279, 0
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %74, align 1
  %297 = lshr i32 %279, 31
  %298 = trunc i32 %297 to i8
  store i8 %298, i8* %75, align 1
  %299 = lshr i32 %273, 31
  %300 = lshr i32 %278, 31
  %301 = xor i32 %297, %299
  %302 = xor i32 %297, %300
  %303 = add nuw nsw i32 %301, %302
  %304 = icmp eq i32 %303, 2
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %76, align 1
  %306 = add i64 %269, 9
  store i64 %306, i64* %3, align 8
  store i32 %279, i32* %277, align 4
  %307 = load i64, i64* %RBP.i, align 8
  %308 = add i64 %307, -36
  %309 = load i64, i64* %3, align 8
  %310 = add i64 %309, 3
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %308 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %.pre51, align 8
  %314 = add i64 %307, -28
  %315 = add i64 %309, 6
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i32*
  store i32 %312, i32* %316, align 4
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -24
  %319 = load i64, i64* %3, align 8
  %320 = add i64 %319, 4
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %318 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RCX.i726, align 8
  %323 = add i64 %319, 8
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i16*
  %325 = load i16, i16* %324, align 2
  store i8 0, i8* %71, align 1
  %326 = and i16 %325, 255
  %327 = zext i16 %326 to i32
  %328 = tail call i32 @llvm.ctpop.i32(i32 %327)
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  store i8 %331, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %332 = icmp eq i16 %325, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %74, align 1
  %334 = lshr i16 %325, 15
  %335 = trunc i16 %334 to i8
  store i8 %335, i8* %75, align 1
  store i8 0, i8* %76, align 1
  %.v57 = select i1 %332, i64 14, i64 34
  %336 = add i64 %319, %.v57
  store i64 %336, i64* %3, align 8
  br i1 %332, label %block_401a61, label %block_.L_401a75

block_401a61:                                     ; preds = %block_401a44
  %337 = add i64 %336, 4
  store i64 %337, i64* %3, align 8
  %338 = load i64, i64* %321, align 8
  store i64 %338, i64* %.pre51, align 8
  %339 = add i64 %338, 2
  %340 = add i64 %336, 8
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i8*
  %342 = load i8, i8* %341, align 1
  %343 = xor i8 %342, 1
  %344 = zext i8 %343 to i64
  %345 = zext i8 %343 to i32
  store i64 %344, i64* %RCX.i726, align 8
  store i8 0, i8* %71, align 1
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345)
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %72, align 1
  %350 = icmp eq i8 %343, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %74, align 1
  store i8 0, i8* %75, align 1
  store i8 0, i8* %76, align 1
  store i8 0, i8* %73, align 1
  %DL.i591 = bitcast %union.anon* %25 to i8*
  store i8 %343, i8* %DL.i591, align 1
  %352 = add i64 %336, 17
  store i64 %352, i64* %3, align 8
  %353 = load i64, i64* %321, align 8
  store i64 %353, i64* %.pre51, align 8
  %354 = add i64 %353, 2
  %355 = add i64 %336, 20
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i8*
  store i8 %343, i8* %356, align 1
  %.pre43 = load i64, i64* %RBP.i, align 8
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_401a75

block_.L_401a75:                                  ; preds = %block_401a44, %block_401a61
  %357 = phi i64 [ %.pre44, %block_401a61 ], [ %336, %block_401a44 ]
  %358 = phi i64 [ %.pre43, %block_401a61 ], [ %317, %block_401a44 ]
  %359 = add i64 %358, -24
  %360 = add i64 %357, 4
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i64*
  %362 = load i64, i64* %361, align 8
  store i64 %362, i64* %.pre51, align 8
  %363 = add i64 %357, 7
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i16*
  %365 = load i16, i16* %364, align 2
  %366 = zext i16 %365 to i64
  store i64 %366, i64* %RCX.i726, align 8
  %367 = zext i16 %365 to i64
  store i64 %367, i64* %.pre51, align 8
  %DX.i572 = bitcast %union.anon* %25 to i16*
  %368 = shl nuw nsw i64 %367, 1
  %369 = add nuw nsw i64 %368, 4924064
  %370 = add i64 %357, 17
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i16*
  %372 = load i16, i16* %371, align 2
  store i16 %372, i16* %DX.i572, align 2
  %373 = add i64 %357, 21
  store i64 %373, i64* %3, align 8
  %374 = load i64, i64* %361, align 8
  store i64 %374, i64* %.pre51, align 8
  %375 = add i64 %357, 24
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i16*
  store i16 %372, i16* %376, align 2
  %377 = load i64, i64* %3, align 8
  %378 = add i64 %377, 29
  store i64 %378, i64* %3, align 8
  br label %block_.L_401aaa

block_.L_401a92:                                  ; preds = %block_.L_401a25
  %379 = add i64 %269, 4
  store i64 %379, i64* %3, align 8
  %380 = load i64, i64* %238, align 8
  store i64 %380, i64* %.pre51, align 8
  %381 = add i64 %269, 7
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i16*
  %383 = load i16, i16* %382, align 2
  %384 = zext i16 %383 to i64
  store i64 %384, i64* %RCX.i726, align 8
  %385 = zext i16 %383 to i64
  store i64 %385, i64* %.pre51, align 8
  %DX.i553 = bitcast %union.anon* %25 to i16*
  %386 = shl nuw nsw i64 %385, 1
  %387 = add nuw nsw i64 %386, 4923936
  %388 = add i64 %269, 17
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i16*
  %390 = load i16, i16* %389, align 2
  store i16 %390, i16* %DX.i553, align 2
  %391 = add i64 %269, 21
  store i64 %391, i64* %3, align 8
  %392 = load i64, i64* %238, align 8
  store i64 %392, i64* %.pre51, align 8
  %393 = add i64 %269, 24
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i16*
  store i16 %390, i16* %394, align 2
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_401aaa

block_.L_401aaa:                                  ; preds = %block_.L_401a92, %block_.L_401a75
  %395 = phi i64 [ %.pre45, %block_.L_401a92 ], [ %378, %block_.L_401a75 ]
  %396 = add i64 %395, 5
  %DL.i128 = bitcast %union.anon* %25 to i8*
  br label %block_.L_401aaf

block_.L_401aaf:                                  ; preds = %block_.L_401da1, %block_.L_401aaa
  %storemerge = phi i64 [ %396, %block_.L_401aaa ], [ %1669, %block_.L_401da1 ]
  %397 = load i64, i64* %RBP.i, align 8
  %398 = add i64 %397, -28
  %399 = add i64 %storemerge, 7
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = add i32 %401, -256
  %403 = icmp ult i32 %401, 256
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %71, align 1
  %405 = and i32 %402, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405)
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %72, align 1
  %410 = xor i32 %402, %401
  %411 = lshr i32 %410, 4
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  store i8 %413, i8* %73, align 1
  %414 = icmp eq i32 %402, 0
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %74, align 1
  %416 = lshr i32 %402, 31
  %417 = trunc i32 %416 to i8
  store i8 %417, i8* %75, align 1
  %418 = lshr i32 %401, 31
  %419 = xor i32 %416, %418
  %420 = add nuw nsw i32 %419, %418
  %421 = icmp eq i32 %420, 2
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %76, align 1
  %.v53 = select i1 %403, i64 13, i64 777
  %423 = add i64 %storemerge, %.v53
  store i64 %423, i64* %3, align 8
  br i1 %403, label %block_401abc, label %block_.L_401db8

block_401abc:                                     ; preds = %block_.L_401aaf
  %424 = add i64 %397, -32
  %425 = add i64 %423, 7
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = add i32 %427, -512
  %429 = icmp ult i32 %427, 512
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %71, align 1
  %431 = and i32 %428, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %72, align 1
  %436 = xor i32 %428, %427
  %437 = lshr i32 %436, 4
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  store i8 %439, i8* %73, align 1
  %440 = icmp eq i32 %428, 0
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %74, align 1
  %442 = lshr i32 %428, 31
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %75, align 1
  %444 = lshr i32 %427, 31
  %445 = xor i32 %442, %444
  %446 = add nuw nsw i32 %445, %444
  %447 = icmp eq i32 %446, 2
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %76, align 1
  %.v52 = select i1 %429, i64 361, i64 13
  %449 = add i64 %423, %.v52
  store i64 %449, i64* %3, align 8
  br i1 %429, label %block_.L_401c25, label %block_401ac9

block_401ac9:                                     ; preds = %block_401abc
  %450 = add i64 %397, -8
  %451 = add i64 %449, 4
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i64*
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %.pre51, align 8
  %454 = add i64 %453, 8
  %455 = add i64 %449, 7
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = shl i32 %457, 1
  %459 = icmp slt i32 %457, 0
  %460 = icmp slt i32 %458, 0
  %461 = xor i1 %459, %460
  %462 = zext i32 %458 to i64
  store i64 %462, i64* %RCX.i726, align 8
  %.lobit = lshr i32 %457, 31
  %463 = trunc i32 %.lobit to i8
  store i8 %463, i8* %71, align 1
  %464 = and i32 %458, 254
  %465 = tail call i32 @llvm.ctpop.i32(i32 %464)
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %469 = icmp eq i32 %458, 0
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %74, align 1
  %471 = lshr i32 %457, 30
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  store i8 %473, i8* %75, align 1
  %474 = zext i1 %461 to i8
  store i8 %474, i8* %76, align 1
  %475 = add i64 %449, 12
  store i64 %475, i64* %3, align 8
  store i32 %458, i32* %456, align 4
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -8
  %478 = load i64, i64* %3, align 8
  %479 = add i64 %478, 4
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %477 to i64*
  %481 = load i64, i64* %480, align 8
  store i64 %481, i64* %.pre51, align 8
  %482 = add i64 %481, 8
  %483 = add i64 %478, 7
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = or i32 %485, 1
  %487 = zext i32 %486 to i64
  store i64 %487, i64* %RCX.i726, align 8
  store i8 0, i8* %71, align 1
  %488 = and i32 %486, 255
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488)
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %72, align 1
  store i8 0, i8* %74, align 1
  %493 = lshr i32 %485, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %75, align 1
  store i8 0, i8* %76, align 1
  store i8 0, i8* %73, align 1
  %495 = add i64 %478, 13
  store i64 %495, i64* %3, align 8
  store i32 %486, i32* %484, align 4
  %496 = load i64, i64* %RBP.i, align 8
  %497 = add i64 %496, -8
  %498 = load i64, i64* %3, align 8
  %499 = add i64 %498, 4
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %497 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %.pre51, align 8
  %502 = add i64 %501, 12
  %503 = add i64 %498, 7
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = add i32 %505, -1
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RCX.i726, align 8
  %508 = add i64 %498, 13
  store i64 %508, i64* %3, align 8
  store i32 %506, i32* %504, align 4
  %509 = load i32, i32* %ECX.i634, align 4
  %510 = load i64, i64* %3, align 8
  store i8 0, i8* %71, align 1
  %511 = and i32 %509, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511)
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %516 = icmp eq i32 %509, 0
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %74, align 1
  %518 = lshr i32 %509, 31
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %75, align 1
  store i8 0, i8* %76, align 1
  %.v58 = select i1 %516, i64 9, i64 110
  %520 = add i64 %510, %.v58
  store i64 %520, i64* %3, align 8
  br i1 %516, label %block_401af9, label %block_.L_401b5e

block_401af9:                                     ; preds = %block_401ac9
  %521 = load i64, i64* %RBP.i, align 8
  %522 = add i64 %521, -8
  %523 = add i64 %520, 4
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i64*
  %525 = load i64, i64* %524, align 8
  store i64 %525, i64* %.pre51, align 8
  %526 = add i64 %525, 8
  %527 = add i64 %520, 7
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RCX.i726, align 8
  %531 = trunc i32 %529 to i8
  store i8 %531, i8* %DL.i128, align 1
  %532 = add i64 %520, 13
  store i64 %532, i64* %3, align 8
  %533 = load i64, i64* %524, align 8
  store i64 %533, i64* %.pre51, align 8
  %534 = add i64 %533, 24
  %535 = add i64 %520, 17
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i64*
  %537 = load i64, i64* %536, align 8
  store i64 %537, i64* %.pre51, align 8
  %538 = add i64 %520, 21
  store i64 %538, i64* %3, align 8
  %539 = load i64, i64* %524, align 8
  store i64 %539, i64* %RSI.i713, align 8
  %540 = add i64 %539, 32
  %541 = add i64 %520, 25
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i64*
  %543 = load i64, i64* %542, align 8
  store i64 %543, i64* %RSI.i713, align 8
  %544 = add i64 %520, 27
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to i32*
  %546 = load i32, i32* %545, align 4
  %547 = zext i32 %546 to i64
  store i64 %547, i64* %RCX.i726, align 8
  %548 = add i32 %546, 1
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RDI.i723, align 8
  %550 = icmp eq i32 %546, -1
  %551 = icmp eq i32 %548, 0
  %552 = or i1 %550, %551
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %71, align 1
  %554 = and i32 %548, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %72, align 1
  %559 = xor i32 %548, %546
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %73, align 1
  %563 = zext i1 %551 to i8
  store i8 %563, i8* %74, align 1
  %564 = lshr i32 %548, 31
  %565 = trunc i32 %564 to i8
  store i8 %565, i8* %75, align 1
  %566 = lshr i32 %546, 31
  %567 = xor i32 %564, %566
  %568 = add nuw nsw i32 %567, %564
  %569 = icmp eq i32 %568, 2
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %76, align 1
  %571 = add i64 %520, 34
  store i64 %571, i64* %3, align 8
  store i32 %548, i32* %545, align 4
  %572 = load i32, i32* %ECX.i634, align 4
  %573 = load i64, i64* %3, align 8
  %574 = sext i32 %572 to i64
  store i64 %574, i64* %RSI.i713, align 8
  %575 = load i64, i64* %.pre51, align 8
  %576 = add i64 %575, %574
  %577 = load i8, i8* %DL.i128, align 1
  %578 = add i64 %573, 6
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %576 to i8*
  store i8 %577, i8* %579, align 1
  %580 = load i64, i64* %RBP.i, align 8
  %581 = add i64 %580, -8
  %582 = load i64, i64* %3, align 8
  %583 = add i64 %582, 4
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %581 to i64*
  %585 = load i64, i64* %584, align 8
  store i64 %585, i64* %.pre51, align 8
  %586 = add i64 %585, 12
  %587 = add i64 %582, 11
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  store i32 8, i32* %588, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_401b2c

block_.L_401b2c:                                  ; preds = %block_401b3a, %block_401af9
  %589 = phi i64 [ %688, %block_401b3a ], [ %.pre46, %block_401af9 ]
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -8
  %592 = add i64 %589, 4
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i64*
  %594 = load i64, i64* %593, align 8
  store i64 %594, i64* %.pre51, align 8
  %595 = add i64 %594, 80
  %596 = add i64 %589, 8
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  %599 = add i32 %598, -7
  %600 = icmp ult i32 %598, 7
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %71, align 1
  %602 = and i32 %599, 255
  %603 = tail call i32 @llvm.ctpop.i32(i32 %602)
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = xor i8 %605, 1
  store i8 %606, i8* %72, align 1
  %607 = xor i32 %599, %598
  %608 = lshr i32 %607, 4
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  store i8 %610, i8* %73, align 1
  %611 = icmp eq i32 %599, 0
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %74, align 1
  %613 = lshr i32 %599, 31
  %614 = trunc i32 %613 to i8
  store i8 %614, i8* %75, align 1
  %615 = lshr i32 %598, 31
  %616 = xor i32 %613, %615
  %617 = add nuw nsw i32 %616, %615
  %618 = icmp eq i32 %617, 2
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %76, align 1
  %620 = icmp ne i8 %614, 0
  %621 = xor i1 %620, %618
  %622 = or i1 %611, %621
  %.v62 = select i1 %622, i64 45, i64 14
  %623 = add i64 %589, %.v62
  store i64 %623, i64* %3, align 8
  br i1 %622, label %block_.L_401b59, label %block_401b3a

block_401b3a:                                     ; preds = %block_.L_401b2c
  %624 = add i64 %623, 4
  store i64 %624, i64* %3, align 8
  %625 = load i64, i64* %593, align 8
  store i64 %625, i64* %.pre51, align 8
  %626 = add i64 %625, 80
  %627 = add i64 %623, 7
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %626 to i32*
  %629 = load i32, i32* %628, align 4
  %630 = add i32 %629, -8
  %631 = zext i32 %630 to i64
  store i64 %631, i64* %RCX.i726, align 8
  %632 = icmp ult i32 %629, 8
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %71, align 1
  %634 = and i32 %630, 255
  %635 = tail call i32 @llvm.ctpop.i32(i32 %634)
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  %638 = xor i8 %637, 1
  store i8 %638, i8* %72, align 1
  %639 = xor i32 %630, %629
  %640 = lshr i32 %639, 4
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  store i8 %642, i8* %73, align 1
  %643 = icmp eq i32 %630, 0
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %74, align 1
  %645 = lshr i32 %630, 31
  %646 = trunc i32 %645 to i8
  store i8 %646, i8* %75, align 1
  %647 = lshr i32 %629, 31
  %648 = xor i32 %645, %647
  %649 = add nuw nsw i32 %648, %647
  %650 = icmp eq i32 %649, 2
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %76, align 1
  %652 = add i64 %623, 13
  store i64 %652, i64* %3, align 8
  store i32 %630, i32* %628, align 4
  %653 = load i64, i64* %RBP.i, align 8
  %654 = add i64 %653, -8
  %655 = load i64, i64* %3, align 8
  %656 = add i64 %655, 4
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %654 to i64*
  %658 = load i64, i64* %657, align 8
  store i64 %658, i64* %.pre51, align 8
  %659 = add i64 %658, 88
  %660 = add i64 %655, 7
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  %662 = load i32, i32* %661, align 4
  %663 = add i32 %662, 1
  %664 = zext i32 %663 to i64
  store i64 %664, i64* %RCX.i726, align 8
  %665 = icmp eq i32 %662, -1
  %666 = icmp eq i32 %663, 0
  %667 = or i1 %665, %666
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %71, align 1
  %669 = and i32 %663, 255
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %72, align 1
  %674 = xor i32 %663, %662
  %675 = lshr i32 %674, 4
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  store i8 %677, i8* %73, align 1
  %678 = zext i1 %666 to i8
  store i8 %678, i8* %74, align 1
  %679 = lshr i32 %663, 31
  %680 = trunc i32 %679 to i8
  store i8 %680, i8* %75, align 1
  %681 = lshr i32 %662, 31
  %682 = xor i32 %679, %681
  %683 = add nuw nsw i32 %682, %679
  %684 = icmp eq i32 %683, 2
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %76, align 1
  %686 = add i64 %655, 13
  store i64 %686, i64* %3, align 8
  store i32 %663, i32* %661, align 4
  %687 = load i64, i64* %3, align 8
  %688 = add i64 %687, -40
  store i64 %688, i64* %3, align 8
  br label %block_.L_401b2c

block_.L_401b59:                                  ; preds = %block_.L_401b2c
  %689 = add i64 %623, 5
  store i64 %689, i64* %3, align 8
  br label %block_.L_401b5e

block_.L_401b5e:                                  ; preds = %block_401ac9, %block_.L_401b59
  %690 = phi i64 [ %689, %block_.L_401b59 ], [ %520, %block_401ac9 ]
  %691 = add i64 %690, 5
  br label %block_.L_401b63

block_.L_401b63:                                  ; preds = %block_.L_401c10, %block_.L_401b5e
  %storemerge17 = phi i64 [ %691, %block_.L_401b5e ], [ %977, %block_.L_401c10 ]
  %692 = load i64, i64* %RBP.i, align 8
  %693 = add i64 %692, -8
  %694 = add i64 %storemerge17, 4
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i64*
  %696 = load i64, i64* %695, align 8
  store i64 %696, i64* %.pre51, align 8
  %697 = add i64 %696, 16
  %698 = add i64 %storemerge17, 8
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i32*
  %700 = load i32, i32* %699, align 4
  store i8 0, i8* %71, align 1
  %701 = and i32 %700, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701)
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %706 = icmp eq i32 %700, 0
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %74, align 1
  %708 = lshr i32 %700, 31
  %709 = trunc i32 %708 to i8
  store i8 %709, i8* %75, align 1
  store i8 0, i8* %76, align 1
  %.v59 = select i1 %706, i64 178, i64 14
  %710 = add i64 %storemerge17, %.v59
  store i64 %710, i64* %3, align 8
  br i1 %706, label %block_.L_401c15, label %block_401b71

block_401b71:                                     ; preds = %block_.L_401b63
  %711 = add i64 %710, 4
  store i64 %711, i64* %3, align 8
  %712 = load i64, i64* %695, align 8
  store i64 %712, i64* %.pre51, align 8
  %713 = add i64 %712, 16
  %714 = add i64 %710, 7
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i32*
  %716 = load i32, i32* %715, align 4
  %717 = add i32 %716, -1
  %718 = zext i32 %717 to i64
  store i64 %718, i64* %RCX.i726, align 8
  %719 = icmp ne i32 %716, 0
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %71, align 1
  %721 = and i32 %717, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %72, align 1
  %726 = xor i32 %716, 16
  %727 = xor i32 %726, %717
  %728 = lshr i32 %727, 4
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  store i8 %730, i8* %73, align 1
  %731 = icmp eq i32 %717, 0
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %74, align 1
  %733 = lshr i32 %717, 31
  %734 = trunc i32 %733 to i8
  store i8 %734, i8* %75, align 1
  %735 = lshr i32 %716, 31
  %736 = xor i32 %733, %735
  %737 = xor i32 %733, 1
  %738 = add nuw nsw i32 %736, %737
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %76, align 1
  %741 = add i64 %710, 13
  store i64 %741, i64* %3, align 8
  store i32 %717, i32* %715, align 4
  %742 = load i64, i64* %RBP.i, align 8
  %743 = add i64 %742, -8
  %744 = load i64, i64* %3, align 8
  %745 = add i64 %744, 4
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %743 to i64*
  %747 = load i64, i64* %746, align 8
  store i64 %747, i64* %.pre51, align 8
  %748 = add i64 %747, 8
  %749 = add i64 %744, 7
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = shl i32 %751, 1
  %753 = icmp slt i32 %751, 0
  %754 = icmp slt i32 %752, 0
  %755 = xor i1 %753, %754
  %756 = zext i32 %752 to i64
  store i64 %756, i64* %RCX.i726, align 8
  %.lobit18 = lshr i32 %751, 31
  %757 = trunc i32 %.lobit18 to i8
  store i8 %757, i8* %71, align 1
  %758 = and i32 %752, 254
  %759 = tail call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  store i8 %762, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %763 = icmp eq i32 %752, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %74, align 1
  %765 = lshr i32 %751, 30
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %75, align 1
  %768 = zext i1 %755 to i8
  store i8 %768, i8* %76, align 1
  %769 = add i64 %744, 12
  store i64 %769, i64* %3, align 8
  store i32 %752, i32* %750, align 4
  %770 = load i64, i64* %RBP.i, align 8
  %771 = add i64 %770, -8
  %772 = load i64, i64* %3, align 8
  %773 = add i64 %772, 4
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %771 to i64*
  %775 = load i64, i64* %774, align 8
  store i64 %775, i64* %.pre51, align 8
  %776 = add i64 %775, 8
  %777 = add i64 %772, 7
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RCX.i726, align 8
  %781 = add i64 %772, 10
  store i64 %781, i64* %3, align 8
  store i32 %779, i32* %778, align 4
  %782 = load i64, i64* %RBP.i, align 8
  %783 = add i64 %782, -8
  %784 = load i64, i64* %3, align 8
  %785 = add i64 %784, 4
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %783 to i64*
  %787 = load i64, i64* %786, align 8
  store i64 %787, i64* %.pre51, align 8
  %788 = add i64 %787, 12
  %789 = add i64 %784, 7
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i32*
  %791 = load i32, i32* %790, align 4
  %792 = add i32 %791, -1
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RCX.i726, align 8
  %794 = add i64 %784, 13
  store i64 %794, i64* %3, align 8
  store i32 %792, i32* %790, align 4
  %795 = load i32, i32* %ECX.i634, align 4
  %796 = load i64, i64* %3, align 8
  store i8 0, i8* %71, align 1
  %797 = and i32 %795, 255
  %798 = tail call i32 @llvm.ctpop.i32(i32 %797)
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = xor i8 %800, 1
  store i8 %801, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %802 = icmp eq i32 %795, 0
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %74, align 1
  %804 = lshr i32 %795, 31
  %805 = trunc i32 %804 to i8
  store i8 %805, i8* %75, align 1
  store i8 0, i8* %76, align 1
  %.v60 = select i1 %802, i64 9, i64 110
  %806 = add i64 %796, %.v60
  store i64 %806, i64* %3, align 8
  br i1 %802, label %block_401bab, label %block_.L_401c10

block_401bab:                                     ; preds = %block_401b71
  %807 = load i64, i64* %RBP.i, align 8
  %808 = add i64 %807, -8
  %809 = add i64 %806, 4
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i64*
  %811 = load i64, i64* %810, align 8
  store i64 %811, i64* %.pre51, align 8
  %812 = add i64 %811, 8
  %813 = add i64 %806, 7
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i32*
  %815 = load i32, i32* %814, align 4
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %RCX.i726, align 8
  %817 = trunc i32 %815 to i8
  store i8 %817, i8* %DL.i128, align 1
  %818 = add i64 %806, 13
  store i64 %818, i64* %3, align 8
  %819 = load i64, i64* %810, align 8
  store i64 %819, i64* %.pre51, align 8
  %820 = add i64 %819, 24
  %821 = add i64 %806, 17
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i64*
  %823 = load i64, i64* %822, align 8
  store i64 %823, i64* %.pre51, align 8
  %824 = add i64 %806, 21
  store i64 %824, i64* %3, align 8
  %825 = load i64, i64* %810, align 8
  store i64 %825, i64* %RSI.i713, align 8
  %826 = add i64 %825, 32
  %827 = add i64 %806, 25
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i64*
  %829 = load i64, i64* %828, align 8
  store i64 %829, i64* %RSI.i713, align 8
  %830 = add i64 %806, 27
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RCX.i726, align 8
  %834 = add i32 %832, 1
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RDI.i723, align 8
  %836 = icmp eq i32 %832, -1
  %837 = icmp eq i32 %834, 0
  %838 = or i1 %836, %837
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %71, align 1
  %840 = and i32 %834, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %72, align 1
  %845 = xor i32 %834, %832
  %846 = lshr i32 %845, 4
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  store i8 %848, i8* %73, align 1
  %849 = zext i1 %837 to i8
  store i8 %849, i8* %74, align 1
  %850 = lshr i32 %834, 31
  %851 = trunc i32 %850 to i8
  store i8 %851, i8* %75, align 1
  %852 = lshr i32 %832, 31
  %853 = xor i32 %850, %852
  %854 = add nuw nsw i32 %853, %850
  %855 = icmp eq i32 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %76, align 1
  %857 = add i64 %806, 34
  store i64 %857, i64* %3, align 8
  store i32 %834, i32* %831, align 4
  %858 = load i32, i32* %ECX.i634, align 4
  %859 = load i64, i64* %3, align 8
  %860 = sext i32 %858 to i64
  store i64 %860, i64* %RSI.i713, align 8
  %861 = load i64, i64* %.pre51, align 8
  %862 = add i64 %861, %860
  %863 = load i8, i8* %DL.i128, align 1
  %864 = add i64 %859, 6
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %862 to i8*
  store i8 %863, i8* %865, align 1
  %866 = load i64, i64* %RBP.i, align 8
  %867 = add i64 %866, -8
  %868 = load i64, i64* %3, align 8
  %869 = add i64 %868, 4
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %867 to i64*
  %871 = load i64, i64* %870, align 8
  store i64 %871, i64* %.pre51, align 8
  %872 = add i64 %871, 12
  %873 = add i64 %868, 11
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i32*
  store i32 8, i32* %874, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_401bde

block_.L_401bde:                                  ; preds = %block_401bec, %block_401bab
  %875 = phi i64 [ %974, %block_401bec ], [ %.pre47, %block_401bab ]
  %876 = load i64, i64* %RBP.i, align 8
  %877 = add i64 %876, -8
  %878 = add i64 %875, 4
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i64*
  %880 = load i64, i64* %879, align 8
  store i64 %880, i64* %.pre51, align 8
  %881 = add i64 %880, 80
  %882 = add i64 %875, 8
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = add i32 %884, -7
  %886 = icmp ult i32 %884, 7
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %71, align 1
  %888 = and i32 %885, 255
  %889 = tail call i32 @llvm.ctpop.i32(i32 %888)
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  %892 = xor i8 %891, 1
  store i8 %892, i8* %72, align 1
  %893 = xor i32 %885, %884
  %894 = lshr i32 %893, 4
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  store i8 %896, i8* %73, align 1
  %897 = icmp eq i32 %885, 0
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %74, align 1
  %899 = lshr i32 %885, 31
  %900 = trunc i32 %899 to i8
  store i8 %900, i8* %75, align 1
  %901 = lshr i32 %884, 31
  %902 = xor i32 %899, %901
  %903 = add nuw nsw i32 %902, %901
  %904 = icmp eq i32 %903, 2
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %76, align 1
  %906 = icmp ne i8 %900, 0
  %907 = xor i1 %906, %904
  %908 = or i1 %897, %907
  %.v61 = select i1 %908, i64 45, i64 14
  %909 = add i64 %875, %.v61
  store i64 %909, i64* %3, align 8
  br i1 %908, label %block_.L_401c0b, label %block_401bec

block_401bec:                                     ; preds = %block_.L_401bde
  %910 = add i64 %909, 4
  store i64 %910, i64* %3, align 8
  %911 = load i64, i64* %879, align 8
  store i64 %911, i64* %.pre51, align 8
  %912 = add i64 %911, 80
  %913 = add i64 %909, 7
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = add i32 %915, -8
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RCX.i726, align 8
  %918 = icmp ult i32 %915, 8
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %71, align 1
  %920 = and i32 %916, 255
  %921 = tail call i32 @llvm.ctpop.i32(i32 %920)
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  %924 = xor i8 %923, 1
  store i8 %924, i8* %72, align 1
  %925 = xor i32 %916, %915
  %926 = lshr i32 %925, 4
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  store i8 %928, i8* %73, align 1
  %929 = icmp eq i32 %916, 0
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %74, align 1
  %931 = lshr i32 %916, 31
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %75, align 1
  %933 = lshr i32 %915, 31
  %934 = xor i32 %931, %933
  %935 = add nuw nsw i32 %934, %933
  %936 = icmp eq i32 %935, 2
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %76, align 1
  %938 = add i64 %909, 13
  store i64 %938, i64* %3, align 8
  store i32 %916, i32* %914, align 4
  %939 = load i64, i64* %RBP.i, align 8
  %940 = add i64 %939, -8
  %941 = load i64, i64* %3, align 8
  %942 = add i64 %941, 4
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %940 to i64*
  %944 = load i64, i64* %943, align 8
  store i64 %944, i64* %.pre51, align 8
  %945 = add i64 %944, 88
  %946 = add i64 %941, 7
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  %948 = load i32, i32* %947, align 4
  %949 = add i32 %948, 1
  %950 = zext i32 %949 to i64
  store i64 %950, i64* %RCX.i726, align 8
  %951 = icmp eq i32 %948, -1
  %952 = icmp eq i32 %949, 0
  %953 = or i1 %951, %952
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %71, align 1
  %955 = and i32 %949, 255
  %956 = tail call i32 @llvm.ctpop.i32(i32 %955)
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  %959 = xor i8 %958, 1
  store i8 %959, i8* %72, align 1
  %960 = xor i32 %949, %948
  %961 = lshr i32 %960, 4
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  store i8 %963, i8* %73, align 1
  %964 = zext i1 %952 to i8
  store i8 %964, i8* %74, align 1
  %965 = lshr i32 %949, 31
  %966 = trunc i32 %965 to i8
  store i8 %966, i8* %75, align 1
  %967 = lshr i32 %948, 31
  %968 = xor i32 %965, %967
  %969 = add nuw nsw i32 %968, %965
  %970 = icmp eq i32 %969, 2
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %76, align 1
  %972 = add i64 %941, 13
  store i64 %972, i64* %3, align 8
  store i32 %949, i32* %947, align 4
  %973 = load i64, i64* %3, align 8
  %974 = add i64 %973, -40
  store i64 %974, i64* %3, align 8
  br label %block_.L_401bde

block_.L_401c0b:                                  ; preds = %block_.L_401bde
  %975 = add i64 %909, 5
  store i64 %975, i64* %3, align 8
  br label %block_.L_401c10

block_.L_401c10:                                  ; preds = %block_401b71, %block_.L_401c0b
  %976 = phi i64 [ %975, %block_.L_401c0b ], [ %806, %block_401b71 ]
  %977 = add i64 %976, -173
  %978 = add i64 %976, 5
  store i64 %978, i64* %3, align 8
  br label %block_.L_401b63

block_.L_401c15:                                  ; preds = %block_.L_401b63
  %979 = add i64 %692, -32
  %980 = add i64 %710, 3
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = add i32 %982, -512
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %.pre51, align 8
  %985 = icmp ult i32 %982, 512
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %71, align 1
  %987 = and i32 %983, 255
  %988 = tail call i32 @llvm.ctpop.i32(i32 %987)
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  store i8 %991, i8* %72, align 1
  %992 = xor i32 %983, %982
  %993 = lshr i32 %992, 4
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  store i8 %995, i8* %73, align 1
  %996 = icmp eq i32 %983, 0
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %74, align 1
  %998 = lshr i32 %983, 31
  %999 = trunc i32 %998 to i8
  store i8 %999, i8* %75, align 1
  %1000 = lshr i32 %982, 31
  %1001 = xor i32 %998, %1000
  %1002 = add nuw nsw i32 %1001, %1000
  %1003 = icmp eq i32 %1002, 2
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %76, align 1
  %1005 = add i64 %710, 11
  store i64 %1005, i64* %3, align 8
  store i32 %983, i32* %981, align 4
  %1006 = load i64, i64* %3, align 8
  %1007 = add i64 %1006, 385
  br label %block_.L_401da1

block_.L_401c25:                                  ; preds = %block_401abc
  %1008 = add i64 %449, 7
  store i64 %1008, i64* %3, align 8
  %1009 = load i32, i32* %426, align 4
  %1010 = add i32 %1009, -256
  %1011 = icmp ult i32 %1009, 256
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %71, align 1
  %1013 = and i32 %1010, 255
  %1014 = tail call i32 @llvm.ctpop.i32(i32 %1013)
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  %1017 = xor i8 %1016, 1
  store i8 %1017, i8* %72, align 1
  %1018 = xor i32 %1010, %1009
  %1019 = lshr i32 %1018, 4
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  store i8 %1021, i8* %73, align 1
  %1022 = icmp eq i32 %1010, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %74, align 1
  %1024 = lshr i32 %1010, 31
  %1025 = trunc i32 %1024 to i8
  store i8 %1025, i8* %75, align 1
  %1026 = lshr i32 %1009, 31
  %1027 = xor i32 %1024, %1026
  %1028 = add nuw nsw i32 %1027, %1026
  %1029 = icmp eq i32 %1028, 2
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %76, align 1
  %.v = select i1 %1011, i64 13, i64 350
  %1031 = add i64 %449, %.v
  %1032 = add i64 %397, -8
  %1033 = add i64 %1031, 4
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i64*
  %1035 = load i64, i64* %1034, align 8
  store i64 %1035, i64* %.pre51, align 8
  br i1 %1011, label %block_401c32, label %block_.L_401d83

block_401c32:                                     ; preds = %block_.L_401c25
  %1036 = add i64 %1035, 8
  %1037 = add i64 %1031, 7
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = shl i32 %1039, 1
  %1041 = icmp slt i32 %1039, 0
  %1042 = icmp slt i32 %1040, 0
  %1043 = xor i1 %1041, %1042
  %1044 = zext i32 %1040 to i64
  store i64 %1044, i64* %RCX.i726, align 8
  %.lobit22 = lshr i32 %1039, 31
  %1045 = trunc i32 %.lobit22 to i8
  store i8 %1045, i8* %71, align 1
  %1046 = and i32 %1040, 254
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046)
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %1051 = icmp eq i32 %1040, 0
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %74, align 1
  %1053 = lshr i32 %1039, 30
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  store i8 %1055, i8* %75, align 1
  %1056 = zext i1 %1043 to i8
  store i8 %1056, i8* %76, align 1
  %1057 = add i64 %1031, 12
  store i64 %1057, i64* %3, align 8
  store i32 %1040, i32* %1038, align 4
  %1058 = load i64, i64* %RBP.i, align 8
  %1059 = add i64 %1058, -8
  %1060 = load i64, i64* %3, align 8
  %1061 = add i64 %1060, 4
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1059 to i64*
  %1063 = load i64, i64* %1062, align 8
  store i64 %1063, i64* %.pre51, align 8
  %1064 = add i64 %1063, 8
  %1065 = add i64 %1060, 7
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = zext i32 %1067 to i64
  store i64 %1068, i64* %RCX.i726, align 8
  %1069 = add i64 %1060, 10
  store i64 %1069, i64* %3, align 8
  store i32 %1067, i32* %1066, align 4
  %1070 = load i64, i64* %RBP.i, align 8
  %1071 = add i64 %1070, -8
  %1072 = load i64, i64* %3, align 8
  %1073 = add i64 %1072, 4
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1071 to i64*
  %1075 = load i64, i64* %1074, align 8
  store i64 %1075, i64* %.pre51, align 8
  %1076 = add i64 %1075, 12
  %1077 = add i64 %1072, 7
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i32*
  %1079 = load i32, i32* %1078, align 4
  %1080 = add i32 %1079, -1
  %1081 = zext i32 %1080 to i64
  store i64 %1081, i64* %RCX.i726, align 8
  %1082 = add i64 %1072, 13
  store i64 %1082, i64* %3, align 8
  store i32 %1080, i32* %1078, align 4
  %1083 = load i32, i32* %ECX.i634, align 4
  %1084 = load i64, i64* %3, align 8
  store i8 0, i8* %71, align 1
  %1085 = and i32 %1083, 255
  %1086 = tail call i32 @llvm.ctpop.i32(i32 %1085)
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  store i8 %1089, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %1090 = icmp eq i32 %1083, 0
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %74, align 1
  %1092 = lshr i32 %1083, 31
  %1093 = trunc i32 %1092 to i8
  store i8 %1093, i8* %75, align 1
  store i8 0, i8* %76, align 1
  %.v63 = select i1 %1090, i64 9, i64 110
  %1094 = add i64 %1084, %.v63
  store i64 %1094, i64* %3, align 8
  br i1 %1090, label %block_401c5f, label %block_.L_401cc4

block_401c5f:                                     ; preds = %block_401c32
  %1095 = load i64, i64* %RBP.i, align 8
  %1096 = add i64 %1095, -8
  %1097 = add i64 %1094, 4
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to i64*
  %1099 = load i64, i64* %1098, align 8
  store i64 %1099, i64* %.pre51, align 8
  %1100 = add i64 %1099, 8
  %1101 = add i64 %1094, 7
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = zext i32 %1103 to i64
  store i64 %1104, i64* %RCX.i726, align 8
  %1105 = trunc i32 %1103 to i8
  store i8 %1105, i8* %DL.i128, align 1
  %1106 = add i64 %1094, 13
  store i64 %1106, i64* %3, align 8
  %1107 = load i64, i64* %1098, align 8
  store i64 %1107, i64* %.pre51, align 8
  %1108 = add i64 %1107, 24
  %1109 = add i64 %1094, 17
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i64*
  %1111 = load i64, i64* %1110, align 8
  store i64 %1111, i64* %.pre51, align 8
  %1112 = add i64 %1094, 21
  store i64 %1112, i64* %3, align 8
  %1113 = load i64, i64* %1098, align 8
  store i64 %1113, i64* %RSI.i713, align 8
  %1114 = add i64 %1113, 32
  %1115 = add i64 %1094, 25
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %RSI.i713, align 8
  %1118 = add i64 %1094, 27
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i32*
  %1120 = load i32, i32* %1119, align 4
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RCX.i726, align 8
  %1122 = add i32 %1120, 1
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RDI.i723, align 8
  %1124 = icmp eq i32 %1120, -1
  %1125 = icmp eq i32 %1122, 0
  %1126 = or i1 %1124, %1125
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %71, align 1
  %1128 = and i32 %1122, 255
  %1129 = tail call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  store i8 %1132, i8* %72, align 1
  %1133 = xor i32 %1122, %1120
  %1134 = lshr i32 %1133, 4
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  store i8 %1136, i8* %73, align 1
  %1137 = zext i1 %1125 to i8
  store i8 %1137, i8* %74, align 1
  %1138 = lshr i32 %1122, 31
  %1139 = trunc i32 %1138 to i8
  store i8 %1139, i8* %75, align 1
  %1140 = lshr i32 %1120, 31
  %1141 = xor i32 %1138, %1140
  %1142 = add nuw nsw i32 %1141, %1138
  %1143 = icmp eq i32 %1142, 2
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %76, align 1
  %1145 = add i64 %1094, 34
  store i64 %1145, i64* %3, align 8
  store i32 %1122, i32* %1119, align 4
  %1146 = load i32, i32* %ECX.i634, align 4
  %1147 = load i64, i64* %3, align 8
  %1148 = sext i32 %1146 to i64
  store i64 %1148, i64* %RSI.i713, align 8
  %1149 = load i64, i64* %.pre51, align 8
  %1150 = add i64 %1149, %1148
  %1151 = load i8, i8* %DL.i128, align 1
  %1152 = add i64 %1147, 6
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1150 to i8*
  store i8 %1151, i8* %1153, align 1
  %1154 = load i64, i64* %RBP.i, align 8
  %1155 = add i64 %1154, -8
  %1156 = load i64, i64* %3, align 8
  %1157 = add i64 %1156, 4
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1155 to i64*
  %1159 = load i64, i64* %1158, align 8
  store i64 %1159, i64* %.pre51, align 8
  %1160 = add i64 %1159, 12
  %1161 = add i64 %1156, 11
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i32*
  store i32 8, i32* %1162, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_401c92

block_.L_401c92:                                  ; preds = %block_401ca0, %block_401c5f
  %1163 = phi i64 [ %1262, %block_401ca0 ], [ %.pre48, %block_401c5f ]
  %1164 = load i64, i64* %RBP.i, align 8
  %1165 = add i64 %1164, -8
  %1166 = add i64 %1163, 4
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i64*
  %1168 = load i64, i64* %1167, align 8
  store i64 %1168, i64* %.pre51, align 8
  %1169 = add i64 %1168, 80
  %1170 = add i64 %1163, 8
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i32*
  %1172 = load i32, i32* %1171, align 4
  %1173 = add i32 %1172, -7
  %1174 = icmp ult i32 %1172, 7
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %71, align 1
  %1176 = and i32 %1173, 255
  %1177 = tail call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  store i8 %1180, i8* %72, align 1
  %1181 = xor i32 %1173, %1172
  %1182 = lshr i32 %1181, 4
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  store i8 %1184, i8* %73, align 1
  %1185 = icmp eq i32 %1173, 0
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %74, align 1
  %1187 = lshr i32 %1173, 31
  %1188 = trunc i32 %1187 to i8
  store i8 %1188, i8* %75, align 1
  %1189 = lshr i32 %1172, 31
  %1190 = xor i32 %1187, %1189
  %1191 = add nuw nsw i32 %1190, %1189
  %1192 = icmp eq i32 %1191, 2
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %76, align 1
  %1194 = icmp ne i8 %1188, 0
  %1195 = xor i1 %1194, %1192
  %1196 = or i1 %1185, %1195
  %.v67 = select i1 %1196, i64 45, i64 14
  %1197 = add i64 %1163, %.v67
  store i64 %1197, i64* %3, align 8
  br i1 %1196, label %block_.L_401cbf, label %block_401ca0

block_401ca0:                                     ; preds = %block_.L_401c92
  %1198 = add i64 %1197, 4
  store i64 %1198, i64* %3, align 8
  %1199 = load i64, i64* %1167, align 8
  store i64 %1199, i64* %.pre51, align 8
  %1200 = add i64 %1199, 80
  %1201 = add i64 %1197, 7
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i32*
  %1203 = load i32, i32* %1202, align 4
  %1204 = add i32 %1203, -8
  %1205 = zext i32 %1204 to i64
  store i64 %1205, i64* %RCX.i726, align 8
  %1206 = icmp ult i32 %1203, 8
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %71, align 1
  %1208 = and i32 %1204, 255
  %1209 = tail call i32 @llvm.ctpop.i32(i32 %1208)
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  %1212 = xor i8 %1211, 1
  store i8 %1212, i8* %72, align 1
  %1213 = xor i32 %1204, %1203
  %1214 = lshr i32 %1213, 4
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  store i8 %1216, i8* %73, align 1
  %1217 = icmp eq i32 %1204, 0
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %74, align 1
  %1219 = lshr i32 %1204, 31
  %1220 = trunc i32 %1219 to i8
  store i8 %1220, i8* %75, align 1
  %1221 = lshr i32 %1203, 31
  %1222 = xor i32 %1219, %1221
  %1223 = add nuw nsw i32 %1222, %1221
  %1224 = icmp eq i32 %1223, 2
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %76, align 1
  %1226 = add i64 %1197, 13
  store i64 %1226, i64* %3, align 8
  store i32 %1204, i32* %1202, align 4
  %1227 = load i64, i64* %RBP.i, align 8
  %1228 = add i64 %1227, -8
  %1229 = load i64, i64* %3, align 8
  %1230 = add i64 %1229, 4
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1228 to i64*
  %1232 = load i64, i64* %1231, align 8
  store i64 %1232, i64* %.pre51, align 8
  %1233 = add i64 %1232, 88
  %1234 = add i64 %1229, 7
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  %1236 = load i32, i32* %1235, align 4
  %1237 = add i32 %1236, 1
  %1238 = zext i32 %1237 to i64
  store i64 %1238, i64* %RCX.i726, align 8
  %1239 = icmp eq i32 %1236, -1
  %1240 = icmp eq i32 %1237, 0
  %1241 = or i1 %1239, %1240
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %71, align 1
  %1243 = and i32 %1237, 255
  %1244 = tail call i32 @llvm.ctpop.i32(i32 %1243)
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = xor i8 %1246, 1
  store i8 %1247, i8* %72, align 1
  %1248 = xor i32 %1237, %1236
  %1249 = lshr i32 %1248, 4
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  store i8 %1251, i8* %73, align 1
  %1252 = zext i1 %1240 to i8
  store i8 %1252, i8* %74, align 1
  %1253 = lshr i32 %1237, 31
  %1254 = trunc i32 %1253 to i8
  store i8 %1254, i8* %75, align 1
  %1255 = lshr i32 %1236, 31
  %1256 = xor i32 %1253, %1255
  %1257 = add nuw nsw i32 %1256, %1253
  %1258 = icmp eq i32 %1257, 2
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %76, align 1
  %1260 = add i64 %1229, 13
  store i64 %1260, i64* %3, align 8
  store i32 %1237, i32* %1235, align 4
  %1261 = load i64, i64* %3, align 8
  %1262 = add i64 %1261, -40
  store i64 %1262, i64* %3, align 8
  br label %block_.L_401c92

block_.L_401cbf:                                  ; preds = %block_.L_401c92
  %1263 = add i64 %1197, 5
  store i64 %1263, i64* %3, align 8
  br label %block_.L_401cc4

block_.L_401cc4:                                  ; preds = %block_401c32, %block_.L_401cbf
  %1264 = phi i64 [ %1263, %block_.L_401cbf ], [ %1094, %block_401c32 ]
  %1265 = add i64 %1264, 5
  br label %block_.L_401cc9

block_.L_401cc9:                                  ; preds = %block_.L_401d79, %block_.L_401cc4
  %storemerge23 = phi i64 [ %1265, %block_.L_401cc4 ], [ %1559, %block_.L_401d79 ]
  %1266 = load i64, i64* %RBP.i, align 8
  %1267 = add i64 %1266, -8
  %1268 = add i64 %storemerge23, 4
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i64*
  %1270 = load i64, i64* %1269, align 8
  store i64 %1270, i64* %.pre51, align 8
  %1271 = add i64 %1270, 16
  %1272 = add i64 %storemerge23, 8
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i32*
  %1274 = load i32, i32* %1273, align 4
  store i8 0, i8* %71, align 1
  %1275 = and i32 %1274, 255
  %1276 = tail call i32 @llvm.ctpop.i32(i32 %1275)
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = xor i8 %1278, 1
  store i8 %1279, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %1280 = icmp eq i32 %1274, 0
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %74, align 1
  %1282 = lshr i32 %1274, 31
  %1283 = trunc i32 %1282 to i8
  store i8 %1283, i8* %75, align 1
  store i8 0, i8* %76, align 1
  %.v64 = select i1 %1280, i64 181, i64 14
  %1284 = add i64 %storemerge23, %.v64
  store i64 %1284, i64* %3, align 8
  br i1 %1280, label %block_.L_401d7e, label %block_401cd7

block_401cd7:                                     ; preds = %block_.L_401cc9
  %1285 = add i64 %1284, 4
  store i64 %1285, i64* %3, align 8
  %1286 = load i64, i64* %1269, align 8
  store i64 %1286, i64* %.pre51, align 8
  %1287 = add i64 %1286, 16
  %1288 = add i64 %1284, 7
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1287 to i32*
  %1290 = load i32, i32* %1289, align 4
  %1291 = add i32 %1290, -1
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RCX.i726, align 8
  %1293 = icmp ne i32 %1290, 0
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %71, align 1
  %1295 = and i32 %1291, 255
  %1296 = tail call i32 @llvm.ctpop.i32(i32 %1295)
  %1297 = trunc i32 %1296 to i8
  %1298 = and i8 %1297, 1
  %1299 = xor i8 %1298, 1
  store i8 %1299, i8* %72, align 1
  %1300 = xor i32 %1290, 16
  %1301 = xor i32 %1300, %1291
  %1302 = lshr i32 %1301, 4
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  store i8 %1304, i8* %73, align 1
  %1305 = icmp eq i32 %1291, 0
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %74, align 1
  %1307 = lshr i32 %1291, 31
  %1308 = trunc i32 %1307 to i8
  store i8 %1308, i8* %75, align 1
  %1309 = lshr i32 %1290, 31
  %1310 = xor i32 %1307, %1309
  %1311 = xor i32 %1307, 1
  %1312 = add nuw nsw i32 %1310, %1311
  %1313 = icmp eq i32 %1312, 2
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %76, align 1
  %1315 = add i64 %1284, 13
  store i64 %1315, i64* %3, align 8
  store i32 %1291, i32* %1289, align 4
  %1316 = load i64, i64* %RBP.i, align 8
  %1317 = add i64 %1316, -8
  %1318 = load i64, i64* %3, align 8
  %1319 = add i64 %1318, 4
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1317 to i64*
  %1321 = load i64, i64* %1320, align 8
  store i64 %1321, i64* %.pre51, align 8
  %1322 = add i64 %1321, 8
  %1323 = add i64 %1318, 7
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  %1326 = shl i32 %1325, 1
  %1327 = icmp slt i32 %1325, 0
  %1328 = icmp slt i32 %1326, 0
  %1329 = xor i1 %1327, %1328
  %1330 = zext i32 %1326 to i64
  store i64 %1330, i64* %RCX.i726, align 8
  %.lobit24 = lshr i32 %1325, 31
  %1331 = trunc i32 %.lobit24 to i8
  store i8 %1331, i8* %71, align 1
  %1332 = and i32 %1326, 254
  %1333 = tail call i32 @llvm.ctpop.i32(i32 %1332)
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  store i8 %1336, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %1337 = icmp eq i32 %1326, 0
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %74, align 1
  %1339 = lshr i32 %1325, 30
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  store i8 %1341, i8* %75, align 1
  %1342 = zext i1 %1329 to i8
  store i8 %1342, i8* %76, align 1
  %1343 = add i64 %1318, 12
  store i64 %1343, i64* %3, align 8
  store i32 %1326, i32* %1324, align 4
  %1344 = load i64, i64* %RBP.i, align 8
  %1345 = add i64 %1344, -8
  %1346 = load i64, i64* %3, align 8
  %1347 = add i64 %1346, 4
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1345 to i64*
  %1349 = load i64, i64* %1348, align 8
  store i64 %1349, i64* %.pre51, align 8
  %1350 = add i64 %1349, 8
  %1351 = add i64 %1346, 7
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = or i32 %1353, 1
  %1355 = zext i32 %1354 to i64
  store i64 %1355, i64* %RCX.i726, align 8
  store i8 0, i8* %71, align 1
  %1356 = and i32 %1354, 255
  %1357 = tail call i32 @llvm.ctpop.i32(i32 %1356)
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = xor i8 %1359, 1
  store i8 %1360, i8* %72, align 1
  store i8 0, i8* %74, align 1
  %1361 = lshr i32 %1353, 31
  %1362 = trunc i32 %1361 to i8
  store i8 %1362, i8* %75, align 1
  store i8 0, i8* %76, align 1
  store i8 0, i8* %73, align 1
  %1363 = add i64 %1346, 13
  store i64 %1363, i64* %3, align 8
  store i32 %1354, i32* %1352, align 4
  %1364 = load i64, i64* %RBP.i, align 8
  %1365 = add i64 %1364, -8
  %1366 = load i64, i64* %3, align 8
  %1367 = add i64 %1366, 4
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1365 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %.pre51, align 8
  %1370 = add i64 %1369, 12
  %1371 = add i64 %1366, 7
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i32*
  %1373 = load i32, i32* %1372, align 4
  %1374 = add i32 %1373, -1
  %1375 = zext i32 %1374 to i64
  store i64 %1375, i64* %RCX.i726, align 8
  %1376 = add i64 %1366, 13
  store i64 %1376, i64* %3, align 8
  store i32 %1374, i32* %1372, align 4
  %1377 = load i32, i32* %ECX.i634, align 4
  %1378 = load i64, i64* %3, align 8
  store i8 0, i8* %71, align 1
  %1379 = and i32 %1377, 255
  %1380 = tail call i32 @llvm.ctpop.i32(i32 %1379)
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = xor i8 %1382, 1
  store i8 %1383, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %1384 = icmp eq i32 %1377, 0
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %74, align 1
  %1386 = lshr i32 %1377, 31
  %1387 = trunc i32 %1386 to i8
  store i8 %1387, i8* %75, align 1
  store i8 0, i8* %76, align 1
  %.v65 = select i1 %1384, i64 9, i64 110
  %1388 = add i64 %1378, %.v65
  store i64 %1388, i64* %3, align 8
  br i1 %1384, label %block_401d14, label %block_.L_401d79

block_401d14:                                     ; preds = %block_401cd7
  %1389 = load i64, i64* %RBP.i, align 8
  %1390 = add i64 %1389, -8
  %1391 = add i64 %1388, 4
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i64*
  %1393 = load i64, i64* %1392, align 8
  store i64 %1393, i64* %.pre51, align 8
  %1394 = add i64 %1393, 8
  %1395 = add i64 %1388, 7
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = zext i32 %1397 to i64
  store i64 %1398, i64* %RCX.i726, align 8
  %1399 = trunc i32 %1397 to i8
  store i8 %1399, i8* %DL.i128, align 1
  %1400 = add i64 %1388, 13
  store i64 %1400, i64* %3, align 8
  %1401 = load i64, i64* %1392, align 8
  store i64 %1401, i64* %.pre51, align 8
  %1402 = add i64 %1401, 24
  %1403 = add i64 %1388, 17
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1402 to i64*
  %1405 = load i64, i64* %1404, align 8
  store i64 %1405, i64* %.pre51, align 8
  %1406 = add i64 %1388, 21
  store i64 %1406, i64* %3, align 8
  %1407 = load i64, i64* %1392, align 8
  store i64 %1407, i64* %RSI.i713, align 8
  %1408 = add i64 %1407, 32
  %1409 = add i64 %1388, 25
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i64*
  %1411 = load i64, i64* %1410, align 8
  store i64 %1411, i64* %RSI.i713, align 8
  %1412 = add i64 %1388, 27
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i32*
  %1414 = load i32, i32* %1413, align 4
  %1415 = zext i32 %1414 to i64
  store i64 %1415, i64* %RCX.i726, align 8
  %1416 = add i32 %1414, 1
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RDI.i723, align 8
  %1418 = icmp eq i32 %1414, -1
  %1419 = icmp eq i32 %1416, 0
  %1420 = or i1 %1418, %1419
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %71, align 1
  %1422 = and i32 %1416, 255
  %1423 = tail call i32 @llvm.ctpop.i32(i32 %1422)
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  %1426 = xor i8 %1425, 1
  store i8 %1426, i8* %72, align 1
  %1427 = xor i32 %1416, %1414
  %1428 = lshr i32 %1427, 4
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  store i8 %1430, i8* %73, align 1
  %1431 = zext i1 %1419 to i8
  store i8 %1431, i8* %74, align 1
  %1432 = lshr i32 %1416, 31
  %1433 = trunc i32 %1432 to i8
  store i8 %1433, i8* %75, align 1
  %1434 = lshr i32 %1414, 31
  %1435 = xor i32 %1432, %1434
  %1436 = add nuw nsw i32 %1435, %1432
  %1437 = icmp eq i32 %1436, 2
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %76, align 1
  %1439 = add i64 %1388, 34
  store i64 %1439, i64* %3, align 8
  store i32 %1416, i32* %1413, align 4
  %1440 = load i32, i32* %ECX.i634, align 4
  %1441 = load i64, i64* %3, align 8
  %1442 = sext i32 %1440 to i64
  store i64 %1442, i64* %RSI.i713, align 8
  %1443 = load i64, i64* %.pre51, align 8
  %1444 = add i64 %1443, %1442
  %1445 = load i8, i8* %DL.i128, align 1
  %1446 = add i64 %1441, 6
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1444 to i8*
  store i8 %1445, i8* %1447, align 1
  %1448 = load i64, i64* %RBP.i, align 8
  %1449 = add i64 %1448, -8
  %1450 = load i64, i64* %3, align 8
  %1451 = add i64 %1450, 4
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1449 to i64*
  %1453 = load i64, i64* %1452, align 8
  store i64 %1453, i64* %.pre51, align 8
  %1454 = add i64 %1453, 12
  %1455 = add i64 %1450, 11
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i32*
  store i32 8, i32* %1456, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_401d47

block_.L_401d47:                                  ; preds = %block_401d55, %block_401d14
  %1457 = phi i64 [ %1556, %block_401d55 ], [ %.pre49, %block_401d14 ]
  %1458 = load i64, i64* %RBP.i, align 8
  %1459 = add i64 %1458, -8
  %1460 = add i64 %1457, 4
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i64*
  %1462 = load i64, i64* %1461, align 8
  store i64 %1462, i64* %.pre51, align 8
  %1463 = add i64 %1462, 80
  %1464 = add i64 %1457, 8
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1463 to i32*
  %1466 = load i32, i32* %1465, align 4
  %1467 = add i32 %1466, -7
  %1468 = icmp ult i32 %1466, 7
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %71, align 1
  %1470 = and i32 %1467, 255
  %1471 = tail call i32 @llvm.ctpop.i32(i32 %1470)
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  %1474 = xor i8 %1473, 1
  store i8 %1474, i8* %72, align 1
  %1475 = xor i32 %1467, %1466
  %1476 = lshr i32 %1475, 4
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  store i8 %1478, i8* %73, align 1
  %1479 = icmp eq i32 %1467, 0
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %74, align 1
  %1481 = lshr i32 %1467, 31
  %1482 = trunc i32 %1481 to i8
  store i8 %1482, i8* %75, align 1
  %1483 = lshr i32 %1466, 31
  %1484 = xor i32 %1481, %1483
  %1485 = add nuw nsw i32 %1484, %1483
  %1486 = icmp eq i32 %1485, 2
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %76, align 1
  %1488 = icmp ne i8 %1482, 0
  %1489 = xor i1 %1488, %1486
  %1490 = or i1 %1479, %1489
  %.v66 = select i1 %1490, i64 45, i64 14
  %1491 = add i64 %1457, %.v66
  store i64 %1491, i64* %3, align 8
  br i1 %1490, label %block_.L_401d74, label %block_401d55

block_401d55:                                     ; preds = %block_.L_401d47
  %1492 = add i64 %1491, 4
  store i64 %1492, i64* %3, align 8
  %1493 = load i64, i64* %1461, align 8
  store i64 %1493, i64* %.pre51, align 8
  %1494 = add i64 %1493, 80
  %1495 = add i64 %1491, 7
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = add i32 %1497, -8
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RCX.i726, align 8
  %1500 = icmp ult i32 %1497, 8
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %71, align 1
  %1502 = and i32 %1498, 255
  %1503 = tail call i32 @llvm.ctpop.i32(i32 %1502)
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %72, align 1
  %1507 = xor i32 %1498, %1497
  %1508 = lshr i32 %1507, 4
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  store i8 %1510, i8* %73, align 1
  %1511 = icmp eq i32 %1498, 0
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %74, align 1
  %1513 = lshr i32 %1498, 31
  %1514 = trunc i32 %1513 to i8
  store i8 %1514, i8* %75, align 1
  %1515 = lshr i32 %1497, 31
  %1516 = xor i32 %1513, %1515
  %1517 = add nuw nsw i32 %1516, %1515
  %1518 = icmp eq i32 %1517, 2
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %76, align 1
  %1520 = add i64 %1491, 13
  store i64 %1520, i64* %3, align 8
  store i32 %1498, i32* %1496, align 4
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -8
  %1523 = load i64, i64* %3, align 8
  %1524 = add i64 %1523, 4
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1522 to i64*
  %1526 = load i64, i64* %1525, align 8
  store i64 %1526, i64* %.pre51, align 8
  %1527 = add i64 %1526, 88
  %1528 = add i64 %1523, 7
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = add i32 %1530, 1
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RCX.i726, align 8
  %1533 = icmp eq i32 %1530, -1
  %1534 = icmp eq i32 %1531, 0
  %1535 = or i1 %1533, %1534
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %71, align 1
  %1537 = and i32 %1531, 255
  %1538 = tail call i32 @llvm.ctpop.i32(i32 %1537)
  %1539 = trunc i32 %1538 to i8
  %1540 = and i8 %1539, 1
  %1541 = xor i8 %1540, 1
  store i8 %1541, i8* %72, align 1
  %1542 = xor i32 %1531, %1530
  %1543 = lshr i32 %1542, 4
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  store i8 %1545, i8* %73, align 1
  %1546 = zext i1 %1534 to i8
  store i8 %1546, i8* %74, align 1
  %1547 = lshr i32 %1531, 31
  %1548 = trunc i32 %1547 to i8
  store i8 %1548, i8* %75, align 1
  %1549 = lshr i32 %1530, 31
  %1550 = xor i32 %1547, %1549
  %1551 = add nuw nsw i32 %1550, %1547
  %1552 = icmp eq i32 %1551, 2
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %76, align 1
  %1554 = add i64 %1523, 13
  store i64 %1554, i64* %3, align 8
  store i32 %1531, i32* %1529, align 4
  %1555 = load i64, i64* %3, align 8
  %1556 = add i64 %1555, -40
  store i64 %1556, i64* %3, align 8
  br label %block_.L_401d47

block_.L_401d74:                                  ; preds = %block_.L_401d47
  %1557 = add i64 %1491, 5
  store i64 %1557, i64* %3, align 8
  br label %block_.L_401d79

block_.L_401d79:                                  ; preds = %block_401cd7, %block_.L_401d74
  %1558 = phi i64 [ %1557, %block_.L_401d74 ], [ %1388, %block_401cd7 ]
  %1559 = add i64 %1558, -176
  %1560 = add i64 %1558, 5
  store i64 %1560, i64* %3, align 8
  br label %block_.L_401cc9

block_.L_401d7e:                                  ; preds = %block_.L_401cc9
  %1561 = add i64 %1284, 30
  store i64 %1561, i64* %3, align 8
  br label %block_.L_401d9c

block_.L_401d83:                                  ; preds = %block_.L_401c25
  %1562 = add i64 %1035, 16
  %1563 = add i64 %1031, 7
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i32*
  %1565 = load i32, i32* %1564, align 4
  %1566 = add i32 %1565, 1
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RCX.i726, align 8
  %1568 = icmp eq i32 %1565, -1
  %1569 = icmp eq i32 %1566, 0
  %1570 = or i1 %1568, %1569
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %71, align 1
  %1572 = and i32 %1566, 255
  %1573 = tail call i32 @llvm.ctpop.i32(i32 %1572)
  %1574 = trunc i32 %1573 to i8
  %1575 = and i8 %1574, 1
  %1576 = xor i8 %1575, 1
  store i8 %1576, i8* %72, align 1
  %1577 = xor i32 %1566, %1565
  %1578 = lshr i32 %1577, 4
  %1579 = trunc i32 %1578 to i8
  %1580 = and i8 %1579, 1
  store i8 %1580, i8* %73, align 1
  %1581 = zext i1 %1569 to i8
  store i8 %1581, i8* %74, align 1
  %1582 = lshr i32 %1566, 31
  %1583 = trunc i32 %1582 to i8
  store i8 %1583, i8* %75, align 1
  %1584 = lshr i32 %1565, 31
  %1585 = xor i32 %1582, %1584
  %1586 = add nuw nsw i32 %1585, %1582
  %1587 = icmp eq i32 %1586, 2
  %1588 = zext i1 %1587 to i8
  store i8 %1588, i8* %76, align 1
  %1589 = add i64 %1031, 13
  store i64 %1589, i64* %3, align 8
  store i32 %1566, i32* %1564, align 4
  %1590 = load i64, i64* %RBP.i, align 8
  %1591 = add i64 %1590, -32
  %1592 = load i64, i64* %3, align 8
  %1593 = add i64 %1592, 3
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1591 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = add i32 %1595, -256
  %1597 = zext i32 %1596 to i64
  store i64 %1597, i64* %RCX.i726, align 8
  %1598 = icmp ult i32 %1595, 256
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %71, align 1
  %1600 = and i32 %1596, 255
  %1601 = tail call i32 @llvm.ctpop.i32(i32 %1600)
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = xor i8 %1603, 1
  store i8 %1604, i8* %72, align 1
  %1605 = xor i32 %1596, %1595
  %1606 = lshr i32 %1605, 4
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  store i8 %1608, i8* %73, align 1
  %1609 = icmp eq i32 %1596, 0
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %74, align 1
  %1611 = lshr i32 %1596, 31
  %1612 = trunc i32 %1611 to i8
  store i8 %1612, i8* %75, align 1
  %1613 = lshr i32 %1595, 31
  %1614 = xor i32 %1611, %1613
  %1615 = add nuw nsw i32 %1614, %1613
  %1616 = icmp eq i32 %1615, 2
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %76, align 1
  %1618 = add i64 %1592, 12
  store i64 %1618, i64* %3, align 8
  store i32 %1596, i32* %1594, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_401d9c

block_.L_401d9c:                                  ; preds = %block_.L_401d83, %block_.L_401d7e
  %1619 = phi i64 [ %.pre50, %block_.L_401d83 ], [ %1561, %block_.L_401d7e ]
  %1620 = add i64 %1619, 5
  store i64 %1620, i64* %3, align 8
  br label %block_.L_401da1

block_.L_401da1:                                  ; preds = %block_.L_401d9c, %block_.L_401c15
  %storemerge19 = phi i64 [ %1007, %block_.L_401c15 ], [ %1620, %block_.L_401d9c ]
  %1621 = load i64, i64* %RBP.i, align 8
  %1622 = add i64 %1621, -32
  %1623 = add i64 %storemerge19, 3
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  %1626 = shl i32 %1625, 1
  %1627 = icmp slt i32 %1625, 0
  %1628 = icmp slt i32 %1626, 0
  %1629 = xor i1 %1627, %1628
  %1630 = zext i32 %1626 to i64
  store i64 %1630, i64* %.pre51, align 8
  %.lobit20 = lshr i32 %1625, 31
  %1631 = trunc i32 %.lobit20 to i8
  store i8 %1631, i8* %71, align 1
  %1632 = and i32 %1626, 254
  %1633 = tail call i32 @llvm.ctpop.i32(i32 %1632)
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  %1636 = xor i8 %1635, 1
  store i8 %1636, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %1637 = icmp eq i32 %1626, 0
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %74, align 1
  %1639 = lshr i32 %1625, 30
  %1640 = trunc i32 %1639 to i8
  %1641 = and i8 %1640, 1
  store i8 %1641, i8* %75, align 1
  %1642 = zext i1 %1629 to i8
  store i8 %1642, i8* %76, align 1
  %1643 = add i64 %storemerge19, 8
  store i64 %1643, i64* %3, align 8
  store i32 %1626, i32* %1624, align 4
  %1644 = load i64, i64* %RBP.i, align 8
  %1645 = add i64 %1644, -28
  %1646 = load i64, i64* %3, align 8
  %1647 = add i64 %1646, 3
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1645 to i32*
  %1649 = load i32, i32* %1648, align 4
  %1650 = shl i32 %1649, 1
  %1651 = icmp slt i32 %1649, 0
  %1652 = icmp slt i32 %1650, 0
  %1653 = xor i1 %1651, %1652
  %1654 = zext i32 %1650 to i64
  store i64 %1654, i64* %.pre51, align 8
  %.lobit21 = lshr i32 %1649, 31
  %1655 = trunc i32 %.lobit21 to i8
  store i8 %1655, i8* %71, align 1
  %1656 = and i32 %1650, 254
  %1657 = tail call i32 @llvm.ctpop.i32(i32 %1656)
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = xor i8 %1659, 1
  store i8 %1660, i8* %72, align 1
  store i8 0, i8* %73, align 1
  %1661 = icmp eq i32 %1650, 0
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %74, align 1
  %1663 = lshr i32 %1649, 30
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  store i8 %1665, i8* %75, align 1
  %1666 = zext i1 %1653 to i8
  store i8 %1666, i8* %76, align 1
  %1667 = add i64 %1646, 8
  store i64 %1667, i64* %3, align 8
  store i32 %1650, i32* %1648, align 4
  %1668 = load i64, i64* %3, align 8
  %1669 = add i64 %1668, -772
  %1670 = add i64 %1668, 5
  store i64 %1670, i64* %3, align 8
  br label %block_.L_401aaf

block_.L_401db8:                                  ; preds = %block_.L_401aaf
  %1671 = add i64 %423, 3
  store i64 %1671, i64* %3, align 8
  %1672 = load i32, i32* %400, align 4
  %1673 = zext i32 %1672 to i64
  store i64 %1673, i64* %.pre51, align 8
  %1674 = add i64 %397, -8
  %1675 = add i64 %423, 7
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i64*
  %1677 = load i64, i64* %1676, align 8
  store i64 %1677, i64* %RCX.i726, align 8
  %1678 = add i64 %1677, 4
  %1679 = add i64 %423, 10
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  store i32 %1672, i32* %1680, align 4
  %1681 = load i64, i64* %RBP.i, align 8
  %1682 = add i64 %1681, -32
  %1683 = load i64, i64* %3, align 8
  %1684 = add i64 %1683, 3
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1682 to i32*
  %1686 = load i32, i32* %1685, align 4
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %.pre51, align 8
  %1688 = add i64 %1681, -8
  %1689 = add i64 %1683, 7
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1688 to i64*
  %1691 = load i64, i64* %1690, align 8
  store i64 %1691, i64* %RCX.i726, align 8
  %1692 = add i64 %1683, 9
  store i64 %1692, i64* %3, align 8
  %1693 = inttoptr i64 %1691 to i32*
  store i32 %1686, i32* %1693, align 4
  %1694 = load i64, i64* %RBP.i, align 8
  %1695 = add i64 %1694, -8
  %1696 = load i64, i64* %3, align 8
  %1697 = add i64 %1696, 4
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1695 to i64*
  %1699 = load i64, i64* %1698, align 8
  store i64 %1699, i64* %RCX.i726, align 8
  %1700 = add i64 %1699, 80
  %1701 = add i64 %1696, 7
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to i32*
  %1703 = load i32, i32* %1702, align 4
  %1704 = add i32 %1703, 1
  %1705 = zext i32 %1704 to i64
  store i64 %1705, i64* %.pre51, align 8
  %1706 = icmp eq i32 %1703, -1
  %1707 = icmp eq i32 %1704, 0
  %1708 = or i1 %1706, %1707
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %71, align 1
  %1710 = and i32 %1704, 255
  %1711 = tail call i32 @llvm.ctpop.i32(i32 %1710)
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  %1714 = xor i8 %1713, 1
  store i8 %1714, i8* %72, align 1
  %1715 = xor i32 %1704, %1703
  %1716 = lshr i32 %1715, 4
  %1717 = trunc i32 %1716 to i8
  %1718 = and i8 %1717, 1
  store i8 %1718, i8* %73, align 1
  %1719 = zext i1 %1707 to i8
  store i8 %1719, i8* %74, align 1
  %1720 = lshr i32 %1704, 31
  %1721 = trunc i32 %1720 to i8
  store i8 %1721, i8* %75, align 1
  %1722 = lshr i32 %1703, 31
  %1723 = xor i32 %1720, %1722
  %1724 = add nuw nsw i32 %1723, %1720
  %1725 = icmp eq i32 %1724, 2
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %76, align 1
  %1727 = add i64 %1696, 13
  store i64 %1727, i64* %3, align 8
  store i32 %1704, i32* %1702, align 4
  %1728 = load i64, i64* %3, align 8
  %1729 = add i64 %1728, 1
  store i64 %1729, i64* %3, align 8
  %1730 = load i64, i64* %6, align 8
  %1731 = add i64 %1730, 8
  %1732 = inttoptr i64 %1730 to i64*
  %1733 = load i64, i64* %1732, align 8
  store i64 %1733, i64* %RBP.i, align 8
  store i64 %1731, i64* %6, align 8
  %1734 = add i64 %1728, 2
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1731 to i64*
  %1736 = load i64, i64* %1735, align 8
  store i64 %1736, i64* %3, align 8
  %1737 = add i64 %1730, 16
  store i64 %1737, i64* %6, align 8
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
define %struct.Memory* @routine_movw__si___ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %SI, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b2120___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b2120_type* @G__0x4b2120 to i64), i64* %RCX, align 8
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
define %struct.Memory* @routine_movw__ax__MINUS0xa__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -10
  %6 = load i16, i16* %AX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movzwl___rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RDX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = zext i16 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shrl__0x6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 5
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 6
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 67108863
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 3
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rcx__rdx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x6cc02c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x6cc02c_type* @G_0x6cc02c to i32*), align 8
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
define %struct.Memory* @routine_je_.L_401a12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RCX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_movq__rcx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0xa__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -10
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_401a25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movw__0x1__MINUS0xa__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -10
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  store i16 1, i16* %7, align 2
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_movzbl_0x2__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_401a92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpw__0x0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i16 %7, 255
  %10 = zext i16 %9 to i32
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i16 %7, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i16 %7, 15
  %21 = trunc i16 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401a75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0x2__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__0x2__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i16**
  %4 = load i16*, i16** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i16, i16* %4, align 2
  %8 = zext i16 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movw_0x4b22a0___rax_2____dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 4924064
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  store i16 %10, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i16, i16* %DX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i16 %6, i16* %5, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401aaa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x4b2220___rax_2____dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, 4923936
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  store i16 %10, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401aaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x100__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -256
  %10 = icmp ult i32 %8, 256
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
define %struct.Memory* @routine_jae_.L_401db8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x200__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -512
  %10 = icmp ult i32 %8, 512
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
define %struct.Memory* @routine_jb_.L_401c25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ne i32 %6, 0
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_401b5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_movb__dl____rax__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %DL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 8, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__0x50__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_jle_.L_401b59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x50__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 8
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
define %struct.Memory* @routine_movl__ecx__0x50__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 80
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x58__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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
define %struct.Memory* @routine_movl__ecx__0x58__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 88
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401b2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401b5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401b63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_jbe_.L_401c15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401c10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_401c0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401bde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401c10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x200___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -512
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 512
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
define %struct.Memory* @routine_jmpq_.L_401da1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x100__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -256
  %10 = icmp ult i32 %8, 256
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
define %struct.Memory* @routine_jae_.L_401d83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_401cc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_401cbf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401c92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401cc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401cc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_401d7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401d79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_401d74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401d47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401d79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401d9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x100___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -256
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 256
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
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x50__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_movl__eax__0x50__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
