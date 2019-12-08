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

declare %struct.Memory* @sub_4028e0.daxpy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402a50.ddot(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @dgesl(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RSP.i615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -104
  store i64 %11, i64* %RSP.i615, align 8
  %12 = icmp ult i64 %8, 96
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
  %RDI.i610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i610, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %PC.i, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %43 to i32*
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -12
  %46 = load i32, i32* %ESI.i, align 4
  %47 = load i64, i64* %PC.i, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC.i, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i605 = bitcast %union.anon* %50 to i32*
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -16
  %53 = load i32, i32* %EDX.i605, align 4
  %54 = load i64, i64* %PC.i, align 8
  %55 = add i64 %54, 3
  store i64 %55, i64* %PC.i, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i602 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %RCX.i602, align 8
  %61 = load i64, i64* %PC.i, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC.i, align 8
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63, align 8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i600 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -32
  %67 = load i64, i64* %R8.i600, align 8
  %68 = load i64, i64* %PC.i, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC.i, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %71 to i32*
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -36
  %74 = load i32, i32* %R9D.i, align 4
  %75 = load i64, i64* %PC.i, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC.i, align 8
  %77 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %77, align 4
  %RDX.i594 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -16
  %80 = load i64, i64* %PC.i, align 8
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i, align 8
  %82 = inttoptr i64 %79 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %83, -1
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RDX.i594, align 8
  %86 = icmp eq i32 %83, 0
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %14, align 1
  %88 = and i32 %84, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88)
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %21, align 1
  %93 = xor i32 %83, %84
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %26, align 1
  %97 = icmp eq i32 %84, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %29, align 1
  %99 = lshr i32 %84, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %32, align 1
  %101 = lshr i32 %83, 31
  %102 = xor i32 %99, %101
  %103 = add nuw nsw i32 %102, %101
  %104 = icmp eq i32 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %38, align 1
  %106 = add i64 %78, -56
  %107 = add i64 %80, 9
  store i64 %107, i64* %PC.i, align 8
  %108 = inttoptr i64 %106 to i32*
  store i32 %84, i32* %108, align 4
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -36
  %111 = load i64, i64* %PC.i, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC.i, align 8
  %113 = inttoptr i64 %110 to i32*
  %114 = load i32, i32* %113, align 4
  store i8 0, i8* %14, align 1
  %115 = and i32 %114, 255
  %116 = tail call i32 @llvm.ctpop.i32(i32 %115)
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  store i8 %119, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %120 = icmp eq i32 %114, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %29, align 1
  %122 = lshr i32 %114, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %120, i64 10, i64 417
  %124 = add i64 %111, %.v
  store i64 %124, i64* %3, align 8
  br i1 %120, label %block_401cc1, label %block_.L_401e58

block_401cc1:                                     ; preds = %entry
  %125 = add i64 %109, -56
  %126 = add i64 %124, 4
  store i64 %126, i64* %PC.i, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = add i32 %128, -1
  %130 = icmp eq i32 %128, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %14, align 1
  %132 = and i32 %129, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132)
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %21, align 1
  %137 = xor i32 %128, %129
  %138 = lshr i32 %137, 4
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %26, align 1
  %141 = icmp eq i32 %129, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %29, align 1
  %143 = lshr i32 %129, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %32, align 1
  %145 = lshr i32 %128, 31
  %146 = xor i32 %143, %145
  %147 = add nuw nsw i32 %146, %145
  %148 = icmp eq i32 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %38, align 1
  %150 = icmp ne i8 %144, 0
  %151 = xor i1 %150, %148
  %.v45 = select i1 %151, i64 224, i64 10
  %152 = add i64 %124, %.v45
  store i64 %152, i64* %3, align 8
  br i1 %151, label %block_401cc1.block_.L_401da1_crit_edge, label %block_401ccb

block_401cc1.block_.L_401da1_crit_edge:           ; preds = %block_401cc1
  %.pre9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre11 = getelementptr inbounds %union.anon, %union.anon* %.pre9, i64 0, i32 0
  %.pre12 = bitcast %union.anon* %.pre9 to i32*
  %.pre14 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %.pre17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %.pre20 = bitcast %union.VectorReg* %.pre17 to i8*
  %.pre24 = getelementptr inbounds i8, i8* %.pre20, i64 4
  %.pre26 = bitcast i8* %.pre24 to float*
  %.pre28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %.pre30 = bitcast i64* %.pre28 to float*
  %.pre32 = getelementptr inbounds i8, i8* %.pre20, i64 12
  %.pre34 = bitcast i8* %.pre32 to float*
  %.pre39 = bitcast %union.VectorReg* %.pre17 to <2 x float>*
  %.pre42 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  br label %block_.L_401da1

block_401ccb:                                     ; preds = %block_401cc1
  %153 = add i64 %109, -44
  %154 = add i64 %152, 7
  store i64 %154, i64* %PC.i, align 8
  %155 = inttoptr i64 %153 to i32*
  store i32 0, i32* %155, align 4
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i578 = getelementptr inbounds %union.anon, %union.anon* %156, i64 0, i32 0
  %EAX.i575 = bitcast %union.anon* %156 to i32*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %158 = bitcast %union.VectorReg* %157 to i8*
  %159 = getelementptr inbounds i8, i8* %158, i64 4
  %160 = bitcast i8* %159 to float*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %162 = bitcast i64* %161 to float*
  %163 = getelementptr inbounds i8, i8* %158, i64 12
  %164 = bitcast i8* %163 to float*
  %165 = bitcast %union.VectorReg* %157 to <2 x float>*
  %RSI.i489 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %ECX.i448 = bitcast %union.anon* %57 to i32*
  %166 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_401cd2

block_.L_401cd2:                                  ; preds = %block_.L_401d36, %block_401ccb
  %167 = phi i64 [ %.pre, %block_401ccb ], [ %526, %block_.L_401d36 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401ccb ], [ %call2_401d89, %block_.L_401d36 ]
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -44
  %170 = add i64 %167, 3
  store i64 %170, i64* %PC.i, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX.i578, align 8
  %174 = add i64 %168, -56
  %175 = add i64 %167, 6
  store i64 %175, i64* %PC.i, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = sub i32 %172, %177
  %179 = icmp ult i32 %172, %177
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %14, align 1
  %181 = and i32 %178, 255
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181)
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  store i8 %185, i8* %21, align 1
  %186 = xor i32 %177, %172
  %187 = xor i32 %186, %178
  %188 = lshr i32 %187, 4
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %26, align 1
  %191 = icmp eq i32 %178, 0
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %29, align 1
  %193 = lshr i32 %178, 31
  %194 = trunc i32 %193 to i8
  store i8 %194, i8* %32, align 1
  %195 = lshr i32 %172, 31
  %196 = lshr i32 %177, 31
  %197 = xor i32 %196, %195
  %198 = xor i32 %193, %195
  %199 = add nuw nsw i32 %198, %197
  %200 = icmp eq i32 %199, 2
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %38, align 1
  %202 = icmp ne i8 %194, 0
  %203 = xor i1 %202, %200
  %.v46 = select i1 %203, i64 12, i64 202
  %204 = add i64 %167, %.v46
  store i64 %204, i64* %3, align 8
  br i1 %203, label %block_401cde, label %block_.L_401d9c

block_401cde:                                     ; preds = %block_.L_401cd2
  %205 = add i64 %168, -24
  %206 = add i64 %204, 4
  store i64 %206, i64* %PC.i, align 8
  %207 = inttoptr i64 %205 to i64*
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %RAX.i578, align 8
  %209 = add i64 %204, 8
  store i64 %209, i64* %PC.i, align 8
  %210 = load i32, i32* %171, align 4
  %211 = sext i32 %210 to i64
  store i64 %211, i64* %RCX.i602, align 8
  %212 = shl nsw i64 %211, 2
  %213 = add i64 %212, %208
  %214 = add i64 %204, 11
  store i64 %214, i64* %PC.i, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RDX.i594, align 8
  %218 = add i64 %168, -52
  %219 = add i64 %204, 14
  store i64 %219, i64* %PC.i, align 8
  %220 = inttoptr i64 %218 to i32*
  store i32 %216, i32* %220, align 4
  %221 = load i64, i64* %RBP.i, align 8
  %222 = add i64 %221, -32
  %223 = load i64, i64* %PC.i, align 8
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC.i, align 8
  %225 = inttoptr i64 %222 to i64*
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %RAX.i578, align 8
  %227 = add i64 %221, -52
  %228 = add i64 %223, 8
  store i64 %228, i64* %PC.i, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %RCX.i602, align 8
  %232 = shl nsw i64 %231, 2
  %233 = add i64 %232, %226
  %234 = add i64 %223, 13
  store i64 %234, i64* %PC.i, align 8
  %235 = inttoptr i64 %233 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = bitcast %union.VectorReg* %157 to i32*
  store i32 %236, i32* %237, align 1
  store float 0.000000e+00, float* %160, align 1
  store float 0.000000e+00, float* %162, align 1
  store float 0.000000e+00, float* %164, align 1
  %238 = add i64 %221, -40
  %239 = add i64 %223, 18
  store i64 %239, i64* %PC.i, align 8
  %240 = load <2 x float>, <2 x float>* %165, align 1
  %241 = extractelement <2 x float> %240, i32 0
  %242 = inttoptr i64 %238 to float*
  store float %241, float* %242, align 4
  %243 = load i64, i64* %RBP.i, align 8
  %244 = add i64 %243, -52
  %245 = load i64, i64* %PC.i, align 8
  %246 = add i64 %245, 3
  store i64 %246, i64* %PC.i, align 8
  %247 = inttoptr i64 %244 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RDX.i594, align 8
  %250 = add i64 %243, -44
  %251 = add i64 %245, 6
  store i64 %251, i64* %PC.i, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = sub i32 %248, %253
  %255 = icmp ult i32 %248, %253
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %14, align 1
  %257 = and i32 %254, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %21, align 1
  %262 = xor i32 %253, %248
  %263 = xor i32 %262, %254
  %264 = lshr i32 %263, 4
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %26, align 1
  %267 = icmp eq i32 %254, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %29, align 1
  %269 = lshr i32 %254, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %32, align 1
  %271 = lshr i32 %248, 31
  %272 = lshr i32 %253, 31
  %273 = xor i32 %272, %271
  %274 = xor i32 %269, %271
  %275 = add nuw nsw i32 %274, %273
  %276 = icmp eq i32 %275, 2
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %38, align 1
  %.v47 = select i1 %267, i64 56, i64 12
  %278 = add i64 %245, %.v47
  store i64 %278, i64* %3, align 8
  br i1 %267, label %block_.L_401d36, label %block_401d0a

block_401d0a:                                     ; preds = %block_401cde
  %279 = add i64 %243, -32
  %280 = add i64 %278, 4
  store i64 %280, i64* %PC.i, align 8
  %281 = inttoptr i64 %279 to i64*
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %RAX.i578, align 8
  %283 = add i64 %278, 8
  store i64 %283, i64* %PC.i, align 8
  %284 = load i32, i32* %252, align 4
  %285 = sext i32 %284 to i64
  store i64 %285, i64* %RCX.i602, align 8
  %286 = shl nsw i64 %285, 2
  %287 = add i64 %286, %282
  %288 = add i64 %278, 13
  store i64 %288, i64* %PC.i, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = bitcast %union.VectorReg* %157 to i32*
  store i32 %290, i32* %291, align 1
  store float 0.000000e+00, float* %160, align 1
  store float 0.000000e+00, float* %162, align 1
  store float 0.000000e+00, float* %164, align 1
  %292 = add i64 %278, 17
  store i64 %292, i64* %PC.i, align 8
  %293 = load i64, i64* %281, align 8
  store i64 %293, i64* %RAX.i578, align 8
  %294 = add i64 %278, 21
  store i64 %294, i64* %PC.i, align 8
  %295 = load i32, i32* %247, align 4
  %296 = sext i32 %295 to i64
  store i64 %296, i64* %RCX.i602, align 8
  %297 = shl nsw i64 %296, 2
  %298 = add i64 %297, %293
  %299 = add i64 %278, 26
  store i64 %299, i64* %PC.i, align 8
  %300 = load <2 x float>, <2 x float>* %165, align 1
  %301 = extractelement <2 x float> %300, i32 0
  %302 = inttoptr i64 %298 to float*
  store float %301, float* %302, align 4
  %303 = load i64, i64* %RBP.i, align 8
  %304 = add i64 %303, -40
  %305 = load i64, i64* %PC.i, align 8
  %306 = add i64 %305, 5
  store i64 %306, i64* %PC.i, align 8
  %307 = inttoptr i64 %304 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = bitcast %union.VectorReg* %157 to i32*
  store i32 %308, i32* %309, align 1
  store float 0.000000e+00, float* %160, align 1
  store float 0.000000e+00, float* %162, align 1
  store float 0.000000e+00, float* %164, align 1
  %310 = add i64 %303, -32
  %311 = add i64 %305, 9
  store i64 %311, i64* %PC.i, align 8
  %312 = inttoptr i64 %310 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %RAX.i578, align 8
  %314 = add i64 %303, -44
  %315 = add i64 %305, 13
  store i64 %315, i64* %PC.i, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  store i64 %318, i64* %RCX.i602, align 8
  %319 = shl nsw i64 %318, 2
  %320 = add i64 %319, %313
  %321 = add i64 %305, 18
  store i64 %321, i64* %PC.i, align 8
  %322 = load <2 x float>, <2 x float>* %165, align 1
  %323 = extractelement <2 x float> %322, i32 0
  %324 = inttoptr i64 %320 to float*
  store float %323, float* %324, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  %.pre2 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401d36

block_.L_401d36:                                  ; preds = %block_401d0a, %block_401cde
  %325 = phi i64 [ %.pre2, %block_401d0a ], [ %243, %block_401cde ]
  %326 = phi i64 [ %.pre1, %block_401d0a ], [ %278, %block_401cde ]
  store i64 1, i64* %RAX.i578, align 8
  %327 = add i64 %325, -16
  %328 = add i64 %326, 8
  store i64 %328, i64* %PC.i, align 8
  %329 = inttoptr i64 %327 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RCX.i602, align 8
  %332 = add i64 %325, -44
  %333 = add i64 %326, 11
  store i64 %333, i64* %PC.i, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = add i32 %335, 1
  %337 = zext i32 %336 to i64
  store i64 %337, i64* %RDX.i594, align 8
  %338 = lshr i32 %336, 31
  %339 = sub i32 %330, %336
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RCX.i602, align 8
  %341 = icmp ult i32 %330, %336
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %14, align 1
  %343 = and i32 %339, 255
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %21, align 1
  %348 = xor i32 %336, %330
  %349 = xor i32 %348, %339
  %350 = lshr i32 %349, 4
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %26, align 1
  %353 = icmp eq i32 %339, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %29, align 1
  %355 = lshr i32 %339, 31
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %32, align 1
  %357 = lshr i32 %330, 31
  %358 = xor i32 %338, %357
  %359 = xor i32 %355, %357
  %360 = add nuw nsw i32 %359, %358
  %361 = icmp eq i32 %360, 2
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %38, align 1
  %363 = add i64 %325, -40
  %364 = add i64 %326, 21
  store i64 %364, i64* %PC.i, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = bitcast %union.VectorReg* %157 to i32*
  store i32 %366, i32* %367, align 1
  store float 0.000000e+00, float* %160, align 1
  store float 0.000000e+00, float* %162, align 1
  store float 0.000000e+00, float* %164, align 1
  %368 = load i64, i64* %RBP.i, align 8
  %369 = add i64 %368, -8
  %370 = add i64 %326, 25
  store i64 %370, i64* %PC.i, align 8
  %371 = inttoptr i64 %369 to i64*
  %372 = load i64, i64* %371, align 8
  store i64 %372, i64* %RSI.i489, align 8
  %373 = add i64 %368, -12
  %374 = add i64 %326, 28
  store i64 %374, i64* %PC.i, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RDX.i594, align 8
  %378 = add i64 %368, -44
  %379 = add i64 %326, 32
  store i64 %379, i64* %PC.i, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %376 to i64
  %383 = sext i32 %381 to i64
  %384 = mul nsw i64 %383, %382
  %385 = trunc i64 %384 to i32
  %386 = and i64 %384, 4294967295
  store i64 %386, i64* %RDX.i594, align 8
  %387 = shl i64 %384, 32
  %388 = ashr exact i64 %387, 32
  %389 = icmp ne i64 %388, %384
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %14, align 1
  %391 = and i32 %385, 255
  %392 = tail call i32 @llvm.ctpop.i32(i32 %391)
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  %395 = xor i8 %394, 1
  store i8 %395, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %396 = lshr i32 %385, 31
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %32, align 1
  store i8 %390, i8* %38, align 1
  %398 = add i64 %326, 35
  store i64 %398, i64* %PC.i, align 8
  %399 = trunc i64 %384 to i32
  %400 = load i32, i32* %380, align 4
  %401 = add i32 %400, %399
  %402 = add i32 %401, 1
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RDX.i594, align 8
  %404 = sext i32 %402 to i64
  %405 = shl nsw i64 %404, 2
  store i64 %405, i64* %RDI.i610, align 8
  %406 = lshr i64 %404, 61
  %407 = and i64 %406, 1
  %408 = load i64, i64* %RSI.i489, align 8
  %409 = add i64 %405, %408
  store i64 %409, i64* %RSI.i489, align 8
  %410 = icmp ult i64 %409, %408
  %411 = icmp ult i64 %409, %405
  %412 = or i1 %410, %411
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %14, align 1
  %414 = trunc i64 %409 to i32
  %415 = and i32 %414, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %21, align 1
  %420 = xor i64 %405, %408
  %421 = xor i64 %420, %409
  %422 = lshr i64 %421, 4
  %423 = trunc i64 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %26, align 1
  %425 = icmp eq i64 %409, 0
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %29, align 1
  %427 = lshr i64 %409, 63
  %428 = trunc i64 %427 to i8
  store i8 %428, i8* %32, align 1
  %429 = lshr i64 %408, 63
  %430 = xor i64 %427, %429
  %431 = xor i64 %427, %407
  %432 = add nuw nsw i64 %430, %431
  %433 = icmp eq i64 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %38, align 1
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -32
  %437 = add i64 %326, 52
  store i64 %437, i64* %PC.i, align 8
  %438 = inttoptr i64 %436 to i64*
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %RDI.i610, align 8
  %440 = add i64 %435, -44
  %441 = add i64 %326, 55
  store i64 %441, i64* %PC.i, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = add i32 %443, 1
  %445 = sext i32 %444 to i64
  %446 = shl nsw i64 %445, 2
  store i64 %446, i64* %R8.i600, align 8
  %447 = lshr i64 %445, 61
  %448 = and i64 %447, 1
  %449 = add i64 %446, %439
  %450 = icmp ult i64 %449, %439
  %451 = icmp ult i64 %449, %446
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %14, align 1
  %454 = trunc i64 %449 to i32
  %455 = and i32 %454, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %21, align 1
  %460 = xor i64 %446, %439
  %461 = xor i64 %460, %449
  %462 = lshr i64 %461, 4
  %463 = trunc i64 %462 to i8
  %464 = and i8 %463, 1
  store i8 %464, i8* %26, align 1
  %465 = icmp eq i64 %449, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %29, align 1
  %467 = lshr i64 %449, 63
  %468 = trunc i64 %467 to i8
  store i8 %468, i8* %32, align 1
  %469 = lshr i64 %439, 63
  %470 = xor i64 %467, %469
  %471 = xor i64 %467, %448
  %472 = add nuw nsw i64 %470, %471
  %473 = icmp eq i64 %472, 2
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %38, align 1
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -64
  %477 = add i64 %326, 72
  store i64 %477, i64* %PC.i, align 8
  %478 = inttoptr i64 %476 to i64*
  store i64 %449, i64* %478, align 8
  %479 = load i32, i32* %ECX.i448, align 4
  %480 = zext i32 %479 to i64
  %481 = load i64, i64* %PC.i, align 8
  store i64 %480, i64* %RDI.i610, align 8
  %482 = load i32, i32* %EAX.i575, align 4
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RDX.i594, align 8
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -64
  %486 = add i64 %481, 8
  store i64 %486, i64* %PC.i, align 8
  %487 = inttoptr i64 %485 to i64*
  %488 = load i64, i64* %487, align 8
  store i64 %488, i64* %RCX.i602, align 8
  store i64 %483, i64* %166, align 8
  %489 = add i64 %481, 2914
  %490 = add i64 %481, 16
  %491 = load i64, i64* %6, align 8
  %492 = add i64 %491, -8
  %493 = inttoptr i64 %492 to i64*
  store i64 %490, i64* %493, align 8
  store i64 %492, i64* %6, align 8
  store i64 %489, i64* %3, align 8
  %call2_401d89 = tail call %struct.Memory* @sub_4028e0.daxpy(%struct.State* %0, i64 %489, %struct.Memory* %MEMORY.0)
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -44
  %496 = load i64, i64* %PC.i, align 8
  %497 = add i64 %496, 3
  store i64 %497, i64* %PC.i, align 8
  %498 = inttoptr i64 %495 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = add i32 %499, 1
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RAX.i578, align 8
  %502 = icmp eq i32 %499, -1
  %503 = icmp eq i32 %500, 0
  %504 = or i1 %502, %503
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %14, align 1
  %506 = and i32 %500, 255
  %507 = tail call i32 @llvm.ctpop.i32(i32 %506)
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  store i8 %510, i8* %21, align 1
  %511 = xor i32 %499, %500
  %512 = lshr i32 %511, 4
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  store i8 %514, i8* %26, align 1
  %515 = icmp eq i32 %500, 0
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %29, align 1
  %517 = lshr i32 %500, 31
  %518 = trunc i32 %517 to i8
  store i8 %518, i8* %32, align 1
  %519 = lshr i32 %499, 31
  %520 = xor i32 %517, %519
  %521 = add nuw nsw i32 %520, %517
  %522 = icmp eq i32 %521, 2
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %38, align 1
  %524 = add i64 %496, 9
  store i64 %524, i64* %PC.i, align 8
  store i32 %500, i32* %498, align 4
  %525 = load i64, i64* %PC.i, align 8
  %526 = add i64 %525, -197
  store i64 %526, i64* %3, align 8
  br label %block_.L_401cd2

block_.L_401d9c:                                  ; preds = %block_.L_401cd2
  %527 = add i64 %204, 5
  store i64 %527, i64* %3, align 8
  br label %block_.L_401da1

block_.L_401da1:                                  ; preds = %block_401cc1.block_.L_401da1_crit_edge, %block_.L_401d9c
  %.pre-phi43 = phi i64* [ %.pre42, %block_401cc1.block_.L_401da1_crit_edge ], [ %166, %block_.L_401d9c ]
  %.pre-phi40 = phi <2 x float>* [ %.pre39, %block_401cc1.block_.L_401da1_crit_edge ], [ %165, %block_.L_401d9c ]
  %.pre-phi35 = phi float* [ %.pre34, %block_401cc1.block_.L_401da1_crit_edge ], [ %164, %block_.L_401d9c ]
  %.pre-phi33 = phi i8* [ %.pre32, %block_401cc1.block_.L_401da1_crit_edge ], [ %163, %block_.L_401d9c ]
  %.pre-phi31 = phi float* [ %.pre30, %block_401cc1.block_.L_401da1_crit_edge ], [ %162, %block_.L_401d9c ]
  %.pre-phi29.in = phi i64* [ %.pre28, %block_401cc1.block_.L_401da1_crit_edge ], [ %161, %block_.L_401d9c ]
  %.pre-phi27 = phi float* [ %.pre26, %block_401cc1.block_.L_401da1_crit_edge ], [ %160, %block_.L_401d9c ]
  %.pre-phi25 = phi i8* [ %.pre24, %block_401cc1.block_.L_401da1_crit_edge ], [ %159, %block_.L_401d9c ]
  %.pre-phi23.in = phi %union.VectorReg* [ %.pre17, %block_401cc1.block_.L_401da1_crit_edge ], [ %157, %block_.L_401d9c ]
  %.pre-phi21 = phi i8* [ %.pre20, %block_401cc1.block_.L_401da1_crit_edge ], [ %158, %block_.L_401d9c ]
  %RSI.i400.pre-phi = phi i64* [ %.pre14, %block_401cc1.block_.L_401da1_crit_edge ], [ %RSI.i489, %block_.L_401d9c ]
  %EAX.i420.pre-phi = phi i32* [ %.pre12, %block_401cc1.block_.L_401da1_crit_edge ], [ %EAX.i575, %block_.L_401d9c ]
  %RAX.i423.pre-phi = phi i64* [ %.pre11, %block_401cc1.block_.L_401da1_crit_edge ], [ %RAX.i578, %block_.L_401d9c ]
  %528 = phi i64 [ %152, %block_401cc1.block_.L_401da1_crit_edge ], [ %527, %block_.L_401d9c ]
  %529 = phi i64 [ %109, %block_401cc1.block_.L_401da1_crit_edge ], [ %168, %block_.L_401d9c ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_401cc1.block_.L_401da1_crit_edge ], [ %MEMORY.0, %block_.L_401d9c ]
  %.pre-phi23 = bitcast %union.VectorReg* %.pre-phi23.in to float*
  %530 = add i64 %529, -48
  %531 = add i64 %528, 7
  store i64 %531, i64* %PC.i, align 8
  %532 = inttoptr i64 %530 to i32*
  store i32 0, i32* %532, align 4
  %533 = bitcast i8* %.pre-phi21 to <2 x float>*
  %534 = bitcast i64* %.pre-phi29.in to <2 x i32>*
  %535 = bitcast i8* %.pre-phi25 to i32*
  %536 = bitcast i64* %.pre-phi29.in to i32*
  %537 = bitcast i8* %.pre-phi33 to i32*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %539 = bitcast %union.anon* %57 to [2 x i32]*
  %540 = bitcast %union.anon* %57 to i32*
  %541 = getelementptr inbounds [2 x i32], [2 x i32]* %539, i64 0, i64 1
  %542 = bitcast i8* %.pre-phi21 to i32*
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_401da8

block_.L_401da8:                                  ; preds = %block_401db4, %block_.L_401da1
  %543 = phi i64 [ %.pre3, %block_.L_401da1 ], [ %860, %block_401db4 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_401da1 ], [ %call2_401e40, %block_401db4 ]
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -48
  %546 = add i64 %543, 3
  store i64 %546, i64* %PC.i, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RAX.i423.pre-phi, align 8
  %550 = add i64 %544, -16
  %551 = add i64 %543, 6
  store i64 %551, i64* %PC.i, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = sub i32 %548, %553
  %555 = icmp ult i32 %548, %553
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %14, align 1
  %557 = and i32 %554, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557)
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %21, align 1
  %562 = xor i32 %553, %548
  %563 = xor i32 %562, %554
  %564 = lshr i32 %563, 4
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  store i8 %566, i8* %26, align 1
  %567 = icmp eq i32 %554, 0
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %29, align 1
  %569 = lshr i32 %554, 31
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %32, align 1
  %571 = lshr i32 %548, 31
  %572 = lshr i32 %553, 31
  %573 = xor i32 %572, %571
  %574 = xor i32 %569, %571
  %575 = add nuw nsw i32 %574, %573
  %576 = icmp eq i32 %575, 2
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %38, align 1
  %578 = icmp ne i8 %570, 0
  %579 = xor i1 %578, %576
  %.v48 = select i1 %579, i64 12, i64 171
  %580 = add i64 %543, %.v48
  store i64 %580, i64* %3, align 8
  br i1 %579, label %block_401db4, label %block_.L_401e53

block_401db4:                                     ; preds = %block_.L_401da8
  store i64 1, i64* %RAX.i423.pre-phi, align 8
  %581 = add i64 %580, 8
  store i64 %581, i64* %PC.i, align 8
  %582 = load i32, i32* %552, align 4
  %583 = zext i32 %582 to i64
  store i64 %583, i64* %RCX.i602, align 8
  %584 = add i64 %580, 11
  store i64 %584, i64* %PC.i, align 8
  %585 = load i32, i32* %547, align 4
  %586 = add i32 %585, 1
  %587 = zext i32 %586 to i64
  store i64 %587, i64* %RDX.i594, align 8
  %588 = lshr i32 %586, 31
  %589 = sub i32 %582, %586
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RCX.i602, align 8
  %591 = icmp ult i32 %582, %586
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %14, align 1
  %593 = and i32 %589, 255
  %594 = tail call i32 @llvm.ctpop.i32(i32 %593)
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  store i8 %597, i8* %21, align 1
  %598 = xor i32 %586, %582
  %599 = xor i32 %598, %589
  %600 = lshr i32 %599, 4
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  store i8 %602, i8* %26, align 1
  %603 = icmp eq i32 %589, 0
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %29, align 1
  %605 = lshr i32 %589, 31
  %606 = trunc i32 %605 to i8
  store i8 %606, i8* %32, align 1
  %607 = lshr i32 %582, 31
  %608 = xor i32 %588, %607
  %609 = xor i32 %605, %607
  %610 = add nuw nsw i32 %609, %608
  %611 = icmp eq i32 %610, 2
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %38, align 1
  %613 = add i64 %544, -44
  %614 = add i64 %580, 19
  store i64 %614, i64* %PC.i, align 8
  %615 = inttoptr i64 %613 to i32*
  store i32 %589, i32* %615, align 4
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -32
  %618 = load i64, i64* %PC.i, align 8
  %619 = add i64 %618, 4
  store i64 %619, i64* %PC.i, align 8
  %620 = inttoptr i64 %617 to i64*
  %621 = load i64, i64* %620, align 8
  store i64 %621, i64* %RSI.i400.pre-phi, align 8
  %622 = add i64 %616, -44
  %623 = add i64 %618, 8
  store i64 %623, i64* %PC.i, align 8
  %624 = inttoptr i64 %622 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = sext i32 %625 to i64
  store i64 %626, i64* %RDI.i610, align 8
  %627 = shl nsw i64 %626, 2
  %628 = add i64 %627, %621
  %629 = add i64 %618, 13
  store i64 %629, i64* %PC.i, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = bitcast %union.VectorReg* %.pre-phi23.in to i32*
  store i32 %631, i32* %632, align 1
  store float 0.000000e+00, float* %.pre-phi27, align 1
  store float 0.000000e+00, float* %.pre-phi31, align 1
  store float 0.000000e+00, float* %.pre-phi35, align 1
  %633 = add i64 %616, -8
  %634 = add i64 %618, 17
  store i64 %634, i64* %PC.i, align 8
  %635 = inttoptr i64 %633 to i64*
  %636 = load i64, i64* %635, align 8
  store i64 %636, i64* %RSI.i400.pre-phi, align 8
  %637 = add i64 %616, -12
  %638 = add i64 %618, 20
  store i64 %638, i64* %PC.i, align 8
  %639 = inttoptr i64 %637 to i32*
  %640 = load i32, i32* %639, align 4
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RCX.i602, align 8
  %642 = add i64 %618, 24
  store i64 %642, i64* %PC.i, align 8
  %643 = load i32, i32* %624, align 4
  %644 = sext i32 %640 to i64
  %645 = sext i32 %643 to i64
  %646 = mul nsw i64 %645, %644
  %647 = trunc i64 %646 to i32
  %648 = and i64 %646, 4294967295
  store i64 %648, i64* %RCX.i602, align 8
  %649 = shl i64 %646, 32
  %650 = ashr exact i64 %649, 32
  %651 = icmp ne i64 %650, %646
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %14, align 1
  %653 = and i32 %647, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %658 = lshr i32 %647, 31
  %659 = trunc i32 %658 to i8
  store i8 %659, i8* %32, align 1
  store i8 %652, i8* %38, align 1
  %660 = add i64 %618, 27
  store i64 %660, i64* %PC.i, align 8
  %661 = trunc i64 %646 to i32
  %662 = load i32, i32* %624, align 4
  %663 = add i32 %662, %661
  %664 = zext i32 %663 to i64
  store i64 %664, i64* %RCX.i602, align 8
  %665 = icmp ult i32 %663, %661
  %666 = icmp ult i32 %663, %662
  %667 = or i1 %665, %666
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %14, align 1
  %669 = and i32 %663, 255
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %21, align 1
  %674 = xor i32 %662, %661
  %675 = xor i32 %674, %663
  %676 = lshr i32 %675, 4
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  store i8 %678, i8* %26, align 1
  %679 = icmp eq i32 %663, 0
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %29, align 1
  %681 = lshr i32 %663, 31
  %682 = trunc i32 %681 to i8
  store i8 %682, i8* %32, align 1
  %683 = lshr i32 %661, 31
  %684 = lshr i32 %662, 31
  %685 = xor i32 %681, %683
  %686 = xor i32 %681, %684
  %687 = add nuw nsw i32 %685, %686
  %688 = icmp eq i32 %687, 2
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %38, align 1
  %690 = sext i32 %663 to i64
  store i64 %690, i64* %RDI.i610, align 8
  %691 = shl nsw i64 %690, 2
  %692 = add i64 %691, %636
  %693 = add i64 %618, 35
  store i64 %693, i64* %PC.i, align 8
  %694 = load <2 x float>, <2 x float>* %533, align 1
  %695 = load <2 x i32>, <2 x i32>* %534, align 1
  %696 = inttoptr i64 %692 to float*
  %697 = load float, float* %696, align 4
  %698 = extractelement <2 x float> %694, i32 0
  %699 = fdiv float %698, %697
  store float %699, float* %.pre-phi23, align 1
  %700 = bitcast <2 x float> %694 to <2 x i32>
  %701 = extractelement <2 x i32> %700, i32 1
  store i32 %701, i32* %535, align 1
  %702 = extractelement <2 x i32> %695, i32 0
  store i32 %702, i32* %536, align 1
  %703 = extractelement <2 x i32> %695, i32 1
  store i32 %703, i32* %537, align 1
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -32
  %706 = add i64 %618, 39
  store i64 %706, i64* %PC.i, align 8
  %707 = inttoptr i64 %705 to i64*
  %708 = load i64, i64* %707, align 8
  store i64 %708, i64* %RSI.i400.pre-phi, align 8
  %709 = add i64 %704, -44
  %710 = add i64 %618, 43
  store i64 %710, i64* %PC.i, align 8
  %711 = inttoptr i64 %709 to i32*
  %712 = load i32, i32* %711, align 4
  %713 = sext i32 %712 to i64
  store i64 %713, i64* %RDI.i610, align 8
  %714 = shl nsw i64 %713, 2
  %715 = add i64 %714, %708
  %716 = add i64 %618, 48
  store i64 %716, i64* %PC.i, align 8
  %717 = load <2 x float>, <2 x float>* %.pre-phi40, align 1
  %718 = extractelement <2 x float> %717, i32 0
  %719 = inttoptr i64 %715 to float*
  store float %718, float* %719, align 4
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -32
  %722 = load i64, i64* %PC.i, align 8
  %723 = add i64 %722, 4
  store i64 %723, i64* %PC.i, align 8
  %724 = inttoptr i64 %721 to i64*
  %725 = load i64, i64* %724, align 8
  store i64 %725, i64* %RSI.i400.pre-phi, align 8
  %726 = add i64 %720, -44
  %727 = add i64 %722, 8
  store i64 %727, i64* %PC.i, align 8
  %728 = inttoptr i64 %726 to i32*
  %729 = load i32, i32* %728, align 4
  %730 = sext i32 %729 to i64
  store i64 %730, i64* %RDI.i610, align 8
  %731 = shl nsw i64 %730, 2
  %732 = add i64 %731, %725
  %733 = add i64 %722, 13
  store i64 %733, i64* %PC.i, align 8
  %734 = inttoptr i64 %732 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = bitcast %union.VectorReg* %.pre-phi23.in to i32*
  store i32 %735, i32* %736, align 1
  store float 0.000000e+00, float* %.pre-phi27, align 1
  store float 0.000000e+00, float* %.pre-phi31, align 1
  store float 0.000000e+00, float* %.pre-phi35, align 1
  %737 = add i64 %722, 17
  store i64 %737, i64* %PC.i, align 8
  %738 = load i64, i64* %538, align 1
  %739 = trunc i64 %738 to i32
  store i32 %739, i32* %540, align 1
  store i32 0, i32* %541, align 1
  %740 = load i64, i64* %RCX.i602, align 8
  %741 = xor i64 %740, -2147483648
  %742 = trunc i64 %741 to i32
  %743 = and i64 %741, 4294967295
  store i64 %743, i64* %RCX.i602, align 8
  store i8 0, i8* %14, align 1
  %744 = and i32 %742, 255
  %745 = tail call i32 @llvm.ctpop.i32(i32 %744)
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  store i8 %748, i8* %21, align 1
  %749 = icmp eq i32 %742, 0
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %29, align 1
  %751 = lshr i32 %742, 31
  %752 = trunc i32 %751 to i8
  store i8 %752, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %753 = trunc i64 %741 to i32
  store i32 %753, i32* %542, align 1
  store i32 0, i32* %535, align 1
  store i32 0, i32* %536, align 1
  store i32 0, i32* %537, align 1
  %754 = load i64, i64* %RBP.i, align 8
  %755 = add i64 %754, -40
  %756 = add i64 %722, 32
  store i64 %756, i64* %PC.i, align 8
  %757 = load <2 x float>, <2 x float>* %.pre-phi40, align 1
  %758 = extractelement <2 x float> %757, i32 0
  %759 = inttoptr i64 %755 to float*
  store float %758, float* %759, align 4
  %760 = load i64, i64* %RBP.i, align 8
  %761 = add i64 %760, -44
  %762 = load i64, i64* %PC.i, align 8
  %763 = add i64 %762, 3
  store i64 %763, i64* %PC.i, align 8
  %764 = inttoptr i64 %761 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %RDI.i610, align 8
  %767 = add i64 %760, -40
  %768 = add i64 %762, 8
  store i64 %768, i64* %PC.i, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = bitcast %union.VectorReg* %.pre-phi23.in to i32*
  store i32 %770, i32* %771, align 1
  store float 0.000000e+00, float* %.pre-phi27, align 1
  store float 0.000000e+00, float* %.pre-phi31, align 1
  store float 0.000000e+00, float* %.pre-phi35, align 1
  %772 = add i64 %760, -8
  %773 = add i64 %762, 12
  store i64 %773, i64* %PC.i, align 8
  %774 = inttoptr i64 %772 to i64*
  %775 = load i64, i64* %774, align 8
  store i64 %775, i64* %RSI.i400.pre-phi, align 8
  %776 = add i64 %760, -12
  %777 = add i64 %762, 15
  store i64 %777, i64* %PC.i, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RCX.i602, align 8
  %781 = add i64 %762, 19
  store i64 %781, i64* %PC.i, align 8
  %782 = load i32, i32* %764, align 4
  %783 = sext i32 %779 to i64
  %784 = sext i32 %782 to i64
  %785 = mul nsw i64 %784, %783
  %786 = and i64 %785, 4294967295
  store i64 %786, i64* %RCX.i602, align 8
  %787 = shl i64 %785, 32
  %788 = ashr exact i64 %787, 30
  store i64 %788, i64* %R8.i600, align 8
  %789 = lshr i64 %788, 63
  %790 = add i64 %788, %775
  store i64 %790, i64* %RSI.i400.pre-phi, align 8
  %791 = icmp ult i64 %790, %775
  %792 = icmp ult i64 %790, %788
  %793 = or i1 %791, %792
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %14, align 1
  %795 = trunc i64 %790 to i32
  %796 = and i32 %795, 255
  %797 = tail call i32 @llvm.ctpop.i32(i32 %796)
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  store i8 %800, i8* %21, align 1
  %801 = xor i64 %788, %775
  %802 = xor i64 %801, %790
  %803 = lshr i64 %802, 4
  %804 = trunc i64 %803 to i8
  %805 = and i8 %804, 1
  store i8 %805, i8* %26, align 1
  %806 = icmp eq i64 %790, 0
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %29, align 1
  %808 = lshr i64 %790, 63
  %809 = trunc i64 %808 to i8
  store i8 %809, i8* %32, align 1
  %810 = lshr i64 %775, 63
  %811 = xor i64 %808, %810
  %812 = xor i64 %808, %789
  %813 = add nuw nsw i64 %811, %812
  %814 = icmp eq i64 %813, 2
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %38, align 1
  %816 = load i64, i64* %RBP.i, align 8
  %817 = add i64 %816, -32
  %818 = add i64 %762, 36
  store i64 %818, i64* %PC.i, align 8
  %819 = inttoptr i64 %817 to i64*
  %820 = load i64, i64* %819, align 8
  store i64 %820, i64* %RCX.i602, align 8
  %821 = load i32, i32* %EAX.i420.pre-phi, align 4
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RDX.i594, align 8
  store i64 %822, i64* %.pre-phi43, align 8
  %823 = add i64 %762, 2761
  %824 = add i64 %762, 46
  %825 = load i64, i64* %6, align 8
  %826 = add i64 %825, -8
  %827 = inttoptr i64 %826 to i64*
  store i64 %824, i64* %827, align 8
  store i64 %826, i64* %6, align 8
  store i64 %823, i64* %3, align 8
  %call2_401e40 = tail call %struct.Memory* @sub_4028e0.daxpy(%struct.State* %0, i64 %823, %struct.Memory* %MEMORY.3)
  %828 = load i64, i64* %RBP.i, align 8
  %829 = add i64 %828, -48
  %830 = load i64, i64* %PC.i, align 8
  %831 = add i64 %830, 3
  store i64 %831, i64* %PC.i, align 8
  %832 = inttoptr i64 %829 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = add i32 %833, 1
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RAX.i423.pre-phi, align 8
  %836 = icmp eq i32 %833, -1
  %837 = icmp eq i32 %834, 0
  %838 = or i1 %836, %837
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %14, align 1
  %840 = and i32 %834, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %21, align 1
  %845 = xor i32 %833, %834
  %846 = lshr i32 %845, 4
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  store i8 %848, i8* %26, align 1
  %849 = icmp eq i32 %834, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %29, align 1
  %851 = lshr i32 %834, 31
  %852 = trunc i32 %851 to i8
  store i8 %852, i8* %32, align 1
  %853 = lshr i32 %833, 31
  %854 = xor i32 %851, %853
  %855 = add nuw nsw i32 %854, %851
  %856 = icmp eq i32 %855, 2
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %38, align 1
  %858 = add i64 %830, 9
  store i64 %858, i64* %PC.i, align 8
  store i32 %834, i32* %832, align 4
  %859 = load i64, i64* %PC.i, align 8
  %860 = add i64 %859, -166
  store i64 %860, i64* %3, align 8
  br label %block_.L_401da8

block_.L_401e53:                                  ; preds = %block_.L_401da8
  %861 = add i64 %580, 436
  br label %block_.L_402007

block_.L_401e58:                                  ; preds = %entry
  %862 = add i64 %109, -44
  %863 = add i64 %124, 7
  store i64 %863, i64* %PC.i, align 8
  %864 = inttoptr i64 %862 to i32*
  store i32 0, i32* %864, align 4
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i293 = getelementptr inbounds %union.anon, %union.anon* %865, i64 0, i32 0
  %EAX.i290 = bitcast %union.anon* %865 to i32*
  %RSI.i271 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %866 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %868 = bitcast [32 x %union.VectorReg]* %867 to <2 x float>*
  %869 = bitcast [32 x %union.VectorReg]* %867 to i8*
  %870 = bitcast [32 x %union.VectorReg]* %867 to float*
  %871 = getelementptr inbounds i8, i8* %869, i64 4
  %872 = bitcast i8* %871 to float*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %874 = bitcast i64* %873 to float*
  %875 = getelementptr inbounds i8, i8* %869, i64 12
  %876 = bitcast i8* %875 to float*
  %877 = bitcast [32 x %union.VectorReg]* %867 to <2 x float>*
  %878 = bitcast i64* %873 to <2 x i32>*
  %879 = bitcast i8* %871 to i32*
  %880 = bitcast i64* %873 to i32*
  %881 = bitcast i8* %875 to i32*
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_401e5f

block_.L_401e5f:                                  ; preds = %block_401e6b, %block_.L_401e58
  %882 = phi i64 [ %.pre4, %block_.L_401e58 ], [ %1144, %block_401e6b ]
  %MEMORY.4 = phi %struct.Memory* [ %2, %block_.L_401e58 ], [ %call2_401e9f, %block_401e6b ]
  %883 = load i64, i64* %RBP.i, align 8
  %884 = add i64 %883, -44
  %885 = add i64 %882, 3
  store i64 %885, i64* %PC.i, align 8
  %886 = inttoptr i64 %884 to i32*
  %887 = load i32, i32* %886, align 4
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RAX.i293, align 8
  %889 = add i64 %883, -16
  %890 = add i64 %882, 6
  store i64 %890, i64* %PC.i, align 8
  %891 = inttoptr i64 %889 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = sub i32 %887, %892
  %894 = icmp ult i32 %887, %892
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %14, align 1
  %896 = and i32 %893, 255
  %897 = tail call i32 @llvm.ctpop.i32(i32 %896)
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  %900 = xor i8 %899, 1
  store i8 %900, i8* %21, align 1
  %901 = xor i32 %892, %887
  %902 = xor i32 %901, %893
  %903 = lshr i32 %902, 4
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  store i8 %905, i8* %26, align 1
  %906 = icmp eq i32 %893, 0
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %29, align 1
  %908 = lshr i32 %893, 31
  %909 = trunc i32 %908 to i8
  store i8 %909, i8* %32, align 1
  %910 = lshr i32 %887, 31
  %911 = lshr i32 %892, 31
  %912 = xor i32 %911, %910
  %913 = xor i32 %908, %910
  %914 = add nuw nsw i32 %913, %912
  %915 = icmp eq i32 %914, 2
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %38, align 1
  %917 = icmp ne i8 %909, 0
  %918 = xor i1 %917, %915
  %.v49 = select i1 %918, i64 12, i64 141
  %919 = add i64 %882, %.v49
  store i64 %919, i64* %3, align 8
  br i1 %918, label %block_401e6b, label %block_.L_401eec

block_401e6b:                                     ; preds = %block_.L_401e5f
  store i64 1, i64* %RAX.i293, align 8
  %920 = add i64 %919, 8
  store i64 %920, i64* %PC.i, align 8
  %921 = load i32, i32* %886, align 4
  %922 = zext i32 %921 to i64
  store i64 %922, i64* %RDI.i610, align 8
  %923 = add i64 %883, -8
  %924 = add i64 %919, 12
  store i64 %924, i64* %PC.i, align 8
  %925 = inttoptr i64 %923 to i64*
  %926 = load i64, i64* %925, align 8
  store i64 %926, i64* %RCX.i602, align 8
  %927 = add i64 %883, -12
  %928 = add i64 %919, 15
  store i64 %928, i64* %PC.i, align 8
  %929 = inttoptr i64 %927 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RDX.i594, align 8
  %932 = add i64 %919, 19
  store i64 %932, i64* %PC.i, align 8
  %933 = load i32, i32* %886, align 4
  %934 = sext i32 %930 to i64
  %935 = sext i32 %933 to i64
  %936 = mul nsw i64 %935, %934
  %937 = and i64 %936, 4294967295
  store i64 %937, i64* %RDX.i594, align 8
  %938 = shl i64 %936, 32
  %939 = ashr exact i64 %938, 30
  store i64 %939, i64* %RSI.i271, align 8
  %940 = lshr i64 %939, 63
  %941 = add i64 %939, %926
  store i64 %941, i64* %RCX.i602, align 8
  %942 = icmp ult i64 %941, %926
  %943 = icmp ult i64 %941, %939
  %944 = or i1 %942, %943
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %14, align 1
  %946 = trunc i64 %941 to i32
  %947 = and i32 %946, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %21, align 1
  %952 = xor i64 %939, %926
  %953 = xor i64 %952, %941
  %954 = lshr i64 %953, 4
  %955 = trunc i64 %954 to i8
  %956 = and i8 %955, 1
  store i8 %956, i8* %26, align 1
  %957 = icmp eq i64 %941, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %29, align 1
  %959 = lshr i64 %941, 63
  %960 = trunc i64 %959 to i8
  store i8 %960, i8* %32, align 1
  %961 = lshr i64 %926, 63
  %962 = xor i64 %959, %961
  %963 = xor i64 %959, %940
  %964 = add nuw nsw i64 %962, %963
  %965 = icmp eq i64 %964, 2
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %38, align 1
  %967 = load i64, i64* %RBP.i, align 8
  %968 = add i64 %967, -32
  %969 = add i64 %919, 36
  store i64 %969, i64* %PC.i, align 8
  %970 = inttoptr i64 %968 to i64*
  %971 = load i64, i64* %970, align 8
  %972 = add i64 %967, -72
  %973 = add i64 %919, 40
  store i64 %973, i64* %PC.i, align 8
  %974 = inttoptr i64 %972 to i64*
  store i64 %971, i64* %974, align 8
  %975 = load i64, i64* %RCX.i602, align 8
  %976 = load i64, i64* %PC.i, align 8
  store i64 %975, i64* %RSI.i271, align 8
  %977 = load i32, i32* %EAX.i290, align 4
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %RDX.i594, align 8
  %979 = load i64, i64* %RBP.i, align 8
  %980 = add i64 %979, -72
  %981 = add i64 %976, 9
  store i64 %981, i64* %PC.i, align 8
  %982 = inttoptr i64 %980 to i64*
  %983 = load i64, i64* %982, align 8
  store i64 %983, i64* %RCX.i602, align 8
  store i64 %978, i64* %866, align 8
  %984 = add i64 %976, 3005
  %985 = add i64 %976, 17
  %986 = load i64, i64* %6, align 8
  %987 = add i64 %986, -8
  %988 = inttoptr i64 %987 to i64*
  store i64 %985, i64* %988, align 8
  store i64 %987, i64* %6, align 8
  store i64 %984, i64* %3, align 8
  %call2_401e9f = tail call %struct.Memory* @sub_402a50.ddot(%struct.State* %0, i64 %984, %struct.Memory* %MEMORY.4)
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -40
  %991 = load i64, i64* %PC.i, align 8
  %992 = add i64 %991, 5
  store i64 %992, i64* %PC.i, align 8
  %993 = load <2 x float>, <2 x float>* %868, align 1
  %994 = extractelement <2 x float> %993, i32 0
  %995 = inttoptr i64 %990 to float*
  store float %994, float* %995, align 4
  %996 = load i64, i64* %RBP.i, align 8
  %997 = add i64 %996, -32
  %998 = load i64, i64* %PC.i, align 8
  %999 = add i64 %998, 4
  store i64 %999, i64* %PC.i, align 8
  %1000 = inttoptr i64 %997 to i64*
  %1001 = load i64, i64* %1000, align 8
  store i64 %1001, i64* %RCX.i602, align 8
  %1002 = add i64 %996, -44
  %1003 = add i64 %998, 8
  store i64 %1003, i64* %PC.i, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = sext i32 %1005 to i64
  store i64 %1006, i64* %RSI.i271, align 8
  %1007 = shl nsw i64 %1006, 2
  %1008 = add i64 %1007, %1001
  %1009 = add i64 %998, 13
  store i64 %1009, i64* %PC.i, align 8
  %1010 = inttoptr i64 %1008 to i32*
  %1011 = load i32, i32* %1010, align 4
  %1012 = bitcast [32 x %union.VectorReg]* %867 to i32*
  store i32 %1011, i32* %1012, align 1
  store float 0.000000e+00, float* %872, align 1
  store float 0.000000e+00, float* %874, align 1
  store float 0.000000e+00, float* %876, align 1
  %1013 = add i64 %996, -40
  %1014 = add i64 %998, 18
  store i64 %1014, i64* %PC.i, align 8
  %1015 = load <2 x float>, <2 x float>* %877, align 1
  %1016 = load <2 x i32>, <2 x i32>* %878, align 1
  %1017 = inttoptr i64 %1013 to float*
  %1018 = load float, float* %1017, align 4
  %1019 = extractelement <2 x float> %1015, i32 0
  %1020 = fsub float %1019, %1018
  store float %1020, float* %870, align 1
  %1021 = bitcast <2 x float> %1015 to <2 x i32>
  %1022 = extractelement <2 x i32> %1021, i32 1
  store i32 %1022, i32* %879, align 1
  %1023 = extractelement <2 x i32> %1016, i32 0
  store i32 %1023, i32* %880, align 1
  %1024 = extractelement <2 x i32> %1016, i32 1
  store i32 %1024, i32* %881, align 1
  %1025 = add i64 %996, -8
  %1026 = add i64 %998, 22
  store i64 %1026, i64* %PC.i, align 8
  %1027 = inttoptr i64 %1025 to i64*
  %1028 = load i64, i64* %1027, align 8
  store i64 %1028, i64* %RCX.i602, align 8
  %1029 = add i64 %996, -12
  %1030 = add i64 %998, 25
  store i64 %1030, i64* %PC.i, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = zext i32 %1032 to i64
  store i64 %1033, i64* %RAX.i293, align 8
  %1034 = add i64 %998, 29
  store i64 %1034, i64* %PC.i, align 8
  %1035 = load i32, i32* %1004, align 4
  %1036 = sext i32 %1032 to i64
  %1037 = sext i32 %1035 to i64
  %1038 = mul nsw i64 %1037, %1036
  %1039 = trunc i64 %1038 to i32
  %1040 = and i64 %1038, 4294967295
  store i64 %1040, i64* %RAX.i293, align 8
  %1041 = shl i64 %1038, 32
  %1042 = ashr exact i64 %1041, 32
  %1043 = icmp ne i64 %1042, %1038
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %14, align 1
  %1045 = and i32 %1039, 255
  %1046 = tail call i32 @llvm.ctpop.i32(i32 %1045)
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  %1049 = xor i8 %1048, 1
  store i8 %1049, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1050 = lshr i32 %1039, 31
  %1051 = trunc i32 %1050 to i8
  store i8 %1051, i8* %32, align 1
  store i8 %1044, i8* %38, align 1
  %1052 = add i64 %998, 32
  store i64 %1052, i64* %PC.i, align 8
  %1053 = trunc i64 %1038 to i32
  %1054 = load i32, i32* %1004, align 4
  %1055 = add i32 %1054, %1053
  %1056 = zext i32 %1055 to i64
  store i64 %1056, i64* %RAX.i293, align 8
  %1057 = icmp ult i32 %1055, %1053
  %1058 = icmp ult i32 %1055, %1054
  %1059 = or i1 %1057, %1058
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %14, align 1
  %1061 = and i32 %1055, 255
  %1062 = tail call i32 @llvm.ctpop.i32(i32 %1061)
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %21, align 1
  %1066 = xor i32 %1054, %1053
  %1067 = xor i32 %1066, %1055
  %1068 = lshr i32 %1067, 4
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  store i8 %1070, i8* %26, align 1
  %1071 = icmp eq i32 %1055, 0
  %1072 = zext i1 %1071 to i8
  store i8 %1072, i8* %29, align 1
  %1073 = lshr i32 %1055, 31
  %1074 = trunc i32 %1073 to i8
  store i8 %1074, i8* %32, align 1
  %1075 = lshr i32 %1053, 31
  %1076 = lshr i32 %1054, 31
  %1077 = xor i32 %1073, %1075
  %1078 = xor i32 %1073, %1076
  %1079 = add nuw nsw i32 %1077, %1078
  %1080 = icmp eq i32 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %38, align 1
  %1082 = sext i32 %1055 to i64
  store i64 %1082, i64* %RSI.i271, align 8
  %1083 = shl nsw i64 %1082, 2
  %1084 = add i64 %1083, %1028
  %1085 = add i64 %998, 40
  store i64 %1085, i64* %PC.i, align 8
  %1086 = load <2 x float>, <2 x float>* %877, align 1
  %1087 = load <2 x i32>, <2 x i32>* %878, align 1
  %1088 = inttoptr i64 %1084 to float*
  %1089 = load float, float* %1088, align 4
  %1090 = extractelement <2 x float> %1086, i32 0
  %1091 = fdiv float %1090, %1089
  store float %1091, float* %870, align 1
  %1092 = bitcast <2 x float> %1086 to <2 x i32>
  %1093 = extractelement <2 x i32> %1092, i32 1
  store i32 %1093, i32* %879, align 1
  %1094 = extractelement <2 x i32> %1087, i32 0
  store i32 %1094, i32* %880, align 1
  %1095 = extractelement <2 x i32> %1087, i32 1
  store i32 %1095, i32* %881, align 1
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -32
  %1098 = add i64 %998, 44
  store i64 %1098, i64* %PC.i, align 8
  %1099 = inttoptr i64 %1097 to i64*
  %1100 = load i64, i64* %1099, align 8
  store i64 %1100, i64* %RCX.i602, align 8
  %1101 = add i64 %1096, -44
  %1102 = add i64 %998, 48
  store i64 %1102, i64* %PC.i, align 8
  %1103 = inttoptr i64 %1101 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = sext i32 %1104 to i64
  store i64 %1105, i64* %RSI.i271, align 8
  %1106 = shl nsw i64 %1105, 2
  %1107 = add i64 %1106, %1100
  %1108 = add i64 %998, 53
  store i64 %1108, i64* %PC.i, align 8
  %1109 = load <2 x float>, <2 x float>* %868, align 1
  %1110 = extractelement <2 x float> %1109, i32 0
  %1111 = inttoptr i64 %1107 to float*
  store float %1110, float* %1111, align 4
  %1112 = load i64, i64* %RBP.i, align 8
  %1113 = add i64 %1112, -44
  %1114 = load i64, i64* %PC.i, align 8
  %1115 = add i64 %1114, 3
  store i64 %1115, i64* %PC.i, align 8
  %1116 = inttoptr i64 %1113 to i32*
  %1117 = load i32, i32* %1116, align 4
  %1118 = add i32 %1117, 1
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RAX.i293, align 8
  %1120 = icmp eq i32 %1117, -1
  %1121 = icmp eq i32 %1118, 0
  %1122 = or i1 %1120, %1121
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %14, align 1
  %1124 = and i32 %1118, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %21, align 1
  %1129 = xor i32 %1117, %1118
  %1130 = lshr i32 %1129, 4
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  store i8 %1132, i8* %26, align 1
  %1133 = icmp eq i32 %1118, 0
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %29, align 1
  %1135 = lshr i32 %1118, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %32, align 1
  %1137 = lshr i32 %1117, 31
  %1138 = xor i32 %1135, %1137
  %1139 = add nuw nsw i32 %1138, %1135
  %1140 = icmp eq i32 %1139, 2
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %38, align 1
  %1142 = add i64 %1114, 9
  store i64 %1142, i64* %PC.i, align 8
  store i32 %1118, i32* %1116, align 4
  %1143 = load i64, i64* %PC.i, align 8
  %1144 = add i64 %1143, -136
  store i64 %1144, i64* %3, align 8
  br label %block_.L_401e5f

block_.L_401eec:                                  ; preds = %block_.L_401e5f
  %1145 = add i64 %883, -56
  %1146 = add i64 %919, 4
  store i64 %1146, i64* %PC.i, align 8
  %1147 = inttoptr i64 %1145 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = add i32 %1148, -1
  %1150 = icmp eq i32 %1148, 0
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %14, align 1
  %1152 = and i32 %1149, 255
  %1153 = tail call i32 @llvm.ctpop.i32(i32 %1152)
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = xor i8 %1155, 1
  store i8 %1156, i8* %21, align 1
  %1157 = xor i32 %1148, %1149
  %1158 = lshr i32 %1157, 4
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  store i8 %1160, i8* %26, align 1
  %1161 = icmp eq i32 %1149, 0
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %29, align 1
  %1163 = lshr i32 %1149, 31
  %1164 = trunc i32 %1163 to i8
  store i8 %1164, i8* %32, align 1
  %1165 = lshr i32 %1148, 31
  %1166 = xor i32 %1163, %1165
  %1167 = add nuw nsw i32 %1166, %1165
  %1168 = icmp eq i32 %1167, 2
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %38, align 1
  %1170 = icmp ne i8 %1164, 0
  %1171 = xor i1 %1170, %1168
  %.v50 = select i1 %1171, i64 278, i64 10
  %1172 = add i64 %919, %.v50
  store i64 %1172, i64* %3, align 8
  br i1 %1171, label %block_.L_402002, label %block_401ef6

block_401ef6:                                     ; preds = %block_.L_401eec
  %1173 = add i64 %883, -48
  %1174 = add i64 %1172, 7
  store i64 %1174, i64* %PC.i, align 8
  %1175 = inttoptr i64 %1173 to i32*
  store i32 1, i32* %1175, align 4
  %ECX.i164 = bitcast %union.anon* %57 to i32*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1177 = bitcast %union.VectorReg* %1176 to i8*
  %1178 = bitcast %union.VectorReg* %1176 to float*
  %1179 = getelementptr inbounds i8, i8* %1177, i64 4
  %1180 = bitcast i8* %1179 to float*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1182 = bitcast i64* %1181 to float*
  %1183 = getelementptr inbounds i8, i8* %1177, i64 12
  %1184 = bitcast i8* %1183 to float*
  %1185 = bitcast %union.VectorReg* %1176 to <2 x float>*
  %1186 = bitcast i64* %1181 to <2 x i32>*
  %1187 = bitcast i8* %1179 to i32*
  %1188 = bitcast i64* %1181 to i32*
  %1189 = bitcast i8* %1183 to i32*
  %1190 = bitcast %union.VectorReg* %1176 to <2 x float>*
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_401efd

block_.L_401efd:                                  ; preds = %block_.L_401fea, %block_401ef6
  %1191 = phi i64 [ %.pre5, %block_401ef6 ], [ %1640, %block_.L_401fea ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_401ef6 ], [ %call2_401f77, %block_.L_401fea ]
  %1192 = load i64, i64* %RBP.i, align 8
  %1193 = add i64 %1192, -48
  %1194 = add i64 %1191, 3
  store i64 %1194, i64* %PC.i, align 8
  %1195 = inttoptr i64 %1193 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %RAX.i293, align 8
  %1198 = add i64 %1192, -56
  %1199 = add i64 %1191, 6
  store i64 %1199, i64* %PC.i, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = sub i32 %1196, %1201
  %1203 = icmp ult i32 %1196, %1201
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %14, align 1
  %1205 = and i32 %1202, 255
  %1206 = tail call i32 @llvm.ctpop.i32(i32 %1205)
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  store i8 %1209, i8* %21, align 1
  %1210 = xor i32 %1201, %1196
  %1211 = xor i32 %1210, %1202
  %1212 = lshr i32 %1211, 4
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  store i8 %1214, i8* %26, align 1
  %1215 = icmp eq i32 %1202, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %29, align 1
  %1217 = lshr i32 %1202, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %32, align 1
  %1219 = lshr i32 %1196, 31
  %1220 = lshr i32 %1201, 31
  %1221 = xor i32 %1220, %1219
  %1222 = xor i32 %1217, %1219
  %1223 = add nuw nsw i32 %1222, %1221
  %1224 = icmp eq i32 %1223, 2
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %38, align 1
  %1226 = icmp ne i8 %1218, 0
  %1227 = xor i1 %1226, %1224
  %.v51 = select i1 %1227, i64 12, i64 256
  %1228 = add i64 %1191, %.v51
  %1229 = add i64 %1228, 5
  store i64 %1229, i64* %PC.i, align 8
  br i1 %1227, label %block_401f09, label %block_.L_401ffd

block_401f09:                                     ; preds = %block_.L_401efd
  store i64 1, i64* %RAX.i293, align 8
  %1230 = add i64 %1192, -16
  %1231 = add i64 %1228, 8
  store i64 %1231, i64* %PC.i, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = zext i32 %1233 to i64
  store i64 %1234, i64* %RCX.i602, align 8
  %1235 = add i64 %1228, 11
  store i64 %1235, i64* %PC.i, align 8
  %1236 = load i32, i32* %1195, align 4
  %1237 = add i32 %1236, 1
  %1238 = zext i32 %1237 to i64
  store i64 %1238, i64* %RDX.i594, align 8
  %1239 = lshr i32 %1237, 31
  %1240 = sub i32 %1233, %1237
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RCX.i602, align 8
  %1242 = icmp ult i32 %1233, %1237
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %14, align 1
  %1244 = and i32 %1240, 255
  %1245 = tail call i32 @llvm.ctpop.i32(i32 %1244)
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  %1248 = xor i8 %1247, 1
  store i8 %1248, i8* %21, align 1
  %1249 = xor i32 %1237, %1233
  %1250 = xor i32 %1249, %1240
  %1251 = lshr i32 %1250, 4
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  store i8 %1253, i8* %26, align 1
  %1254 = icmp eq i32 %1240, 0
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %29, align 1
  %1256 = lshr i32 %1240, 31
  %1257 = trunc i32 %1256 to i8
  store i8 %1257, i8* %32, align 1
  %1258 = lshr i32 %1233, 31
  %1259 = xor i32 %1239, %1258
  %1260 = xor i32 %1256, %1258
  %1261 = add nuw nsw i32 %1260, %1259
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %38, align 1
  %1264 = add i64 %1192, -44
  %1265 = add i64 %1228, 19
  store i64 %1265, i64* %PC.i, align 8
  %1266 = inttoptr i64 %1264 to i32*
  store i32 %1240, i32* %1266, align 4
  %1267 = load i64, i64* %RBP.i, align 8
  %1268 = add i64 %1267, -32
  %1269 = load i64, i64* %PC.i, align 8
  %1270 = add i64 %1269, 4
  store i64 %1270, i64* %PC.i, align 8
  %1271 = inttoptr i64 %1268 to i64*
  %1272 = load i64, i64* %1271, align 8
  store i64 %1272, i64* %RSI.i271, align 8
  %1273 = add i64 %1267, -44
  %1274 = add i64 %1269, 8
  store i64 %1274, i64* %PC.i, align 8
  %1275 = inttoptr i64 %1273 to i32*
  %1276 = load i32, i32* %1275, align 4
  %1277 = sext i32 %1276 to i64
  store i64 %1277, i64* %RDI.i610, align 8
  %1278 = shl nsw i64 %1277, 2
  %1279 = add i64 %1278, %1272
  %1280 = add i64 %1269, 13
  store i64 %1280, i64* %PC.i, align 8
  %1281 = inttoptr i64 %1279 to i32*
  %1282 = load i32, i32* %1281, align 4
  %1283 = bitcast [32 x %union.VectorReg]* %867 to i32*
  store i32 %1282, i32* %1283, align 1
  store float 0.000000e+00, float* %872, align 1
  store float 0.000000e+00, float* %874, align 1
  store float 0.000000e+00, float* %876, align 1
  %1284 = add i64 %1267, -16
  %1285 = add i64 %1269, 16
  store i64 %1285, i64* %PC.i, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  %1288 = zext i32 %1287 to i64
  store i64 %1288, i64* %RCX.i602, align 8
  %1289 = add i64 %1269, 19
  store i64 %1289, i64* %PC.i, align 8
  %1290 = load i32, i32* %1275, align 4
  %1291 = add i32 %1290, 1
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RDX.i594, align 8
  %1293 = lshr i32 %1291, 31
  %1294 = sub i32 %1287, %1291
  %1295 = zext i32 %1294 to i64
  store i64 %1295, i64* %RCX.i602, align 8
  %1296 = icmp ult i32 %1287, %1291
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %14, align 1
  %1298 = and i32 %1294, 255
  %1299 = tail call i32 @llvm.ctpop.i32(i32 %1298)
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  store i8 %1302, i8* %21, align 1
  %1303 = xor i32 %1291, %1287
  %1304 = xor i32 %1303, %1294
  %1305 = lshr i32 %1304, 4
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  store i8 %1307, i8* %26, align 1
  %1308 = icmp eq i32 %1294, 0
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %29, align 1
  %1310 = lshr i32 %1294, 31
  %1311 = trunc i32 %1310 to i8
  store i8 %1311, i8* %32, align 1
  %1312 = lshr i32 %1287, 31
  %1313 = xor i32 %1293, %1312
  %1314 = xor i32 %1310, %1312
  %1315 = add nuw nsw i32 %1314, %1313
  %1316 = icmp eq i32 %1315, 2
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %38, align 1
  %1318 = load i64, i64* %RBP.i, align 8
  %1319 = add i64 %1318, -8
  %1320 = add i64 %1269, 28
  store i64 %1320, i64* %PC.i, align 8
  %1321 = inttoptr i64 %1319 to i64*
  %1322 = load i64, i64* %1321, align 8
  store i64 %1322, i64* %RSI.i271, align 8
  %1323 = add i64 %1318, -12
  %1324 = add i64 %1269, 31
  store i64 %1324, i64* %PC.i, align 8
  %1325 = inttoptr i64 %1323 to i32*
  %1326 = load i32, i32* %1325, align 4
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RDX.i594, align 8
  %1328 = add i64 %1318, -44
  %1329 = add i64 %1269, 35
  store i64 %1329, i64* %PC.i, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = sext i32 %1326 to i64
  %1333 = sext i32 %1331 to i64
  %1334 = mul nsw i64 %1333, %1332
  %1335 = trunc i64 %1334 to i32
  %1336 = and i64 %1334, 4294967295
  store i64 %1336, i64* %RDX.i594, align 8
  %1337 = shl i64 %1334, 32
  %1338 = ashr exact i64 %1337, 32
  %1339 = icmp ne i64 %1338, %1334
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %14, align 1
  %1341 = and i32 %1335, 255
  %1342 = tail call i32 @llvm.ctpop.i32(i32 %1341)
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = xor i8 %1344, 1
  store i8 %1345, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1346 = lshr i32 %1335, 31
  %1347 = trunc i32 %1346 to i8
  store i8 %1347, i8* %32, align 1
  store i8 %1340, i8* %38, align 1
  %1348 = add i64 %1269, 38
  store i64 %1348, i64* %PC.i, align 8
  %1349 = trunc i64 %1334 to i32
  %1350 = load i32, i32* %1330, align 4
  %1351 = add i32 %1350, %1349
  %1352 = add i32 %1351, 1
  %1353 = zext i32 %1352 to i64
  store i64 %1353, i64* %RDX.i594, align 8
  %1354 = sext i32 %1352 to i64
  %1355 = shl nsw i64 %1354, 2
  store i64 %1355, i64* %RDI.i610, align 8
  %1356 = lshr i64 %1354, 61
  %1357 = and i64 %1356, 1
  %1358 = load i64, i64* %RSI.i271, align 8
  %1359 = add i64 %1355, %1358
  store i64 %1359, i64* %RSI.i271, align 8
  %1360 = icmp ult i64 %1359, %1358
  %1361 = icmp ult i64 %1359, %1355
  %1362 = or i1 %1360, %1361
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %14, align 1
  %1364 = trunc i64 %1359 to i32
  %1365 = and i32 %1364, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365)
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %21, align 1
  %1370 = xor i64 %1355, %1358
  %1371 = xor i64 %1370, %1359
  %1372 = lshr i64 %1371, 4
  %1373 = trunc i64 %1372 to i8
  %1374 = and i8 %1373, 1
  store i8 %1374, i8* %26, align 1
  %1375 = icmp eq i64 %1359, 0
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %29, align 1
  %1377 = lshr i64 %1359, 63
  %1378 = trunc i64 %1377 to i8
  store i8 %1378, i8* %32, align 1
  %1379 = lshr i64 %1358, 63
  %1380 = xor i64 %1377, %1379
  %1381 = xor i64 %1377, %1357
  %1382 = add nuw nsw i64 %1380, %1381
  %1383 = icmp eq i64 %1382, 2
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %38, align 1
  %1385 = load i64, i64* %RBP.i, align 8
  %1386 = add i64 %1385, -32
  %1387 = add i64 %1269, 55
  store i64 %1387, i64* %PC.i, align 8
  %1388 = inttoptr i64 %1386 to i64*
  %1389 = load i64, i64* %1388, align 8
  store i64 %1389, i64* %RDI.i610, align 8
  %1390 = add i64 %1385, -44
  %1391 = add i64 %1269, 58
  store i64 %1391, i64* %PC.i, align 8
  %1392 = inttoptr i64 %1390 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = add i32 %1393, 1
  %1395 = sext i32 %1394 to i64
  %1396 = shl nsw i64 %1395, 2
  store i64 %1396, i64* %R8.i600, align 8
  %1397 = lshr i64 %1395, 61
  %1398 = and i64 %1397, 1
  %1399 = add i64 %1396, %1389
  %1400 = icmp ult i64 %1399, %1389
  %1401 = icmp ult i64 %1399, %1396
  %1402 = or i1 %1400, %1401
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %14, align 1
  %1404 = trunc i64 %1399 to i32
  %1405 = and i32 %1404, 255
  %1406 = tail call i32 @llvm.ctpop.i32(i32 %1405)
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  %1409 = xor i8 %1408, 1
  store i8 %1409, i8* %21, align 1
  %1410 = xor i64 %1396, %1389
  %1411 = xor i64 %1410, %1399
  %1412 = lshr i64 %1411, 4
  %1413 = trunc i64 %1412 to i8
  %1414 = and i8 %1413, 1
  store i8 %1414, i8* %26, align 1
  %1415 = icmp eq i64 %1399, 0
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %29, align 1
  %1417 = lshr i64 %1399, 63
  %1418 = trunc i64 %1417 to i8
  store i8 %1418, i8* %32, align 1
  %1419 = lshr i64 %1389, 63
  %1420 = xor i64 %1417, %1419
  %1421 = xor i64 %1417, %1398
  %1422 = add nuw nsw i64 %1420, %1421
  %1423 = icmp eq i64 %1422, 2
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %38, align 1
  %1425 = load i64, i64* %RBP.i, align 8
  %1426 = add i64 %1425, -80
  %1427 = add i64 %1269, 75
  store i64 %1427, i64* %PC.i, align 8
  %1428 = inttoptr i64 %1426 to i64*
  store i64 %1399, i64* %1428, align 8
  %1429 = load i32, i32* %ECX.i164, align 4
  %1430 = zext i32 %1429 to i64
  %1431 = load i64, i64* %PC.i, align 8
  store i64 %1430, i64* %RDI.i610, align 8
  %1432 = load i32, i32* %EAX.i290, align 4
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RDX.i594, align 8
  %1434 = load i64, i64* %RBP.i, align 8
  %1435 = add i64 %1434, -80
  %1436 = add i64 %1431, 8
  store i64 %1436, i64* %PC.i, align 8
  %1437 = inttoptr i64 %1435 to i64*
  %1438 = load i64, i64* %1437, align 8
  store i64 %1438, i64* %RCX.i602, align 8
  store i64 %1433, i64* %866, align 8
  %1439 = add i64 %1434, -84
  %1440 = add i64 %1431, 16
  store i64 %1440, i64* %PC.i, align 8
  %1441 = load <2 x float>, <2 x float>* %868, align 1
  %1442 = extractelement <2 x float> %1441, i32 0
  %1443 = inttoptr i64 %1439 to float*
  store float %1442, float* %1443, align 4
  %1444 = load i64, i64* %PC.i, align 8
  %1445 = add i64 %1444, 2777
  %1446 = add i64 %1444, 5
  %1447 = load i64, i64* %6, align 8
  %1448 = add i64 %1447, -8
  %1449 = inttoptr i64 %1448 to i64*
  store i64 %1446, i64* %1449, align 8
  store i64 %1448, i64* %6, align 8
  store i64 %1445, i64* %3, align 8
  %call2_401f77 = tail call %struct.Memory* @sub_402a50.ddot(%struct.State* %0, i64 %1445, %struct.Memory* %MEMORY.5)
  %1450 = load i64, i64* %RBP.i, align 8
  %1451 = add i64 %1450, -84
  %1452 = load i64, i64* %PC.i, align 8
  %1453 = add i64 %1452, 5
  store i64 %1453, i64* %PC.i, align 8
  %1454 = inttoptr i64 %1451 to i32*
  %1455 = load i32, i32* %1454, align 4
  %1456 = bitcast %union.VectorReg* %1176 to i32*
  store i32 %1455, i32* %1456, align 1
  store float 0.000000e+00, float* %1180, align 1
  store float 0.000000e+00, float* %1182, align 1
  store float 0.000000e+00, float* %1184, align 1
  %1457 = load <2 x float>, <2 x float>* %1185, align 1
  %1458 = load <2 x i32>, <2 x i32>* %1186, align 1
  %1459 = load <2 x float>, <2 x float>* %868, align 1
  %1460 = extractelement <2 x float> %1457, i32 0
  %1461 = extractelement <2 x float> %1459, i32 0
  %1462 = fadd float %1460, %1461
  store float %1462, float* %1178, align 1
  %1463 = bitcast <2 x float> %1457 to <2 x i32>
  %1464 = extractelement <2 x i32> %1463, i32 1
  store i32 %1464, i32* %1187, align 1
  %1465 = extractelement <2 x i32> %1458, i32 0
  store i32 %1465, i32* %1188, align 1
  %1466 = extractelement <2 x i32> %1458, i32 1
  store i32 %1466, i32* %1189, align 1
  %1467 = add i64 %1450, -32
  %1468 = add i64 %1452, 13
  store i64 %1468, i64* %PC.i, align 8
  %1469 = inttoptr i64 %1467 to i64*
  %1470 = load i64, i64* %1469, align 8
  store i64 %1470, i64* %RCX.i602, align 8
  %1471 = add i64 %1450, -44
  %1472 = add i64 %1452, 17
  store i64 %1472, i64* %PC.i, align 8
  %1473 = inttoptr i64 %1471 to i32*
  %1474 = load i32, i32* %1473, align 4
  %1475 = sext i32 %1474 to i64
  store i64 %1475, i64* %RSI.i271, align 8
  %1476 = shl nsw i64 %1475, 2
  %1477 = add i64 %1476, %1470
  %1478 = add i64 %1452, 22
  store i64 %1478, i64* %PC.i, align 8
  %1479 = load <2 x float>, <2 x float>* %1190, align 1
  %1480 = extractelement <2 x float> %1479, i32 0
  %1481 = inttoptr i64 %1477 to float*
  store float %1480, float* %1481, align 4
  %1482 = load i64, i64* %RBP.i, align 8
  %1483 = add i64 %1482, -24
  %1484 = load i64, i64* %PC.i, align 8
  %1485 = add i64 %1484, 4
  store i64 %1485, i64* %PC.i, align 8
  %1486 = inttoptr i64 %1483 to i64*
  %1487 = load i64, i64* %1486, align 8
  store i64 %1487, i64* %RCX.i602, align 8
  %1488 = add i64 %1482, -44
  %1489 = add i64 %1484, 8
  store i64 %1489, i64* %PC.i, align 8
  %1490 = inttoptr i64 %1488 to i32*
  %1491 = load i32, i32* %1490, align 4
  %1492 = sext i32 %1491 to i64
  store i64 %1492, i64* %RSI.i271, align 8
  %1493 = shl nsw i64 %1492, 2
  %1494 = add i64 %1493, %1487
  %1495 = add i64 %1484, 11
  store i64 %1495, i64* %PC.i, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = zext i32 %1497 to i64
  store i64 %1498, i64* %RAX.i293, align 8
  %1499 = add i64 %1482, -52
  %1500 = add i64 %1484, 14
  store i64 %1500, i64* %PC.i, align 8
  %1501 = inttoptr i64 %1499 to i32*
  store i32 %1497, i32* %1501, align 4
  %1502 = load i64, i64* %RBP.i, align 8
  %1503 = add i64 %1502, -52
  %1504 = load i64, i64* %PC.i, align 8
  %1505 = add i64 %1504, 3
  store i64 %1505, i64* %PC.i, align 8
  %1506 = inttoptr i64 %1503 to i32*
  %1507 = load i32, i32* %1506, align 4
  %1508 = zext i32 %1507 to i64
  store i64 %1508, i64* %RAX.i293, align 8
  %1509 = add i64 %1502, -44
  %1510 = add i64 %1504, 6
  store i64 %1510, i64* %PC.i, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = sub i32 %1507, %1512
  %1514 = icmp ult i32 %1507, %1512
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %14, align 1
  %1516 = and i32 %1513, 255
  %1517 = tail call i32 @llvm.ctpop.i32(i32 %1516)
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  store i8 %1520, i8* %21, align 1
  %1521 = xor i32 %1512, %1507
  %1522 = xor i32 %1521, %1513
  %1523 = lshr i32 %1522, 4
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  store i8 %1525, i8* %26, align 1
  %1526 = icmp eq i32 %1513, 0
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %29, align 1
  %1528 = lshr i32 %1513, 31
  %1529 = trunc i32 %1528 to i8
  store i8 %1529, i8* %32, align 1
  %1530 = lshr i32 %1507, 31
  %1531 = lshr i32 %1512, 31
  %1532 = xor i32 %1531, %1530
  %1533 = xor i32 %1528, %1530
  %1534 = add nuw nsw i32 %1533, %1532
  %1535 = icmp eq i32 %1534, 2
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %38, align 1
  %.v52 = select i1 %1526, i64 74, i64 12
  %1537 = add i64 %1504, %.v52
  store i64 %1537, i64* %3, align 8
  br i1 %1526, label %block_.L_401fea, label %block_401fac

block_401fac:                                     ; preds = %block_401f09
  %1538 = add i64 %1502, -32
  %1539 = add i64 %1537, 4
  store i64 %1539, i64* %PC.i, align 8
  %1540 = inttoptr i64 %1538 to i64*
  %1541 = load i64, i64* %1540, align 8
  store i64 %1541, i64* %RAX.i293, align 8
  %1542 = add i64 %1537, 8
  store i64 %1542, i64* %PC.i, align 8
  %1543 = load i32, i32* %1506, align 4
  %1544 = sext i32 %1543 to i64
  store i64 %1544, i64* %RCX.i602, align 8
  %1545 = shl nsw i64 %1544, 2
  %1546 = add i64 %1545, %1541
  %1547 = add i64 %1537, 13
  store i64 %1547, i64* %PC.i, align 8
  %1548 = inttoptr i64 %1546 to i32*
  %1549 = load i32, i32* %1548, align 4
  %1550 = bitcast [32 x %union.VectorReg]* %867 to i32*
  store i32 %1549, i32* %1550, align 1
  store float 0.000000e+00, float* %872, align 1
  store float 0.000000e+00, float* %874, align 1
  store float 0.000000e+00, float* %876, align 1
  %1551 = add i64 %1502, -40
  %1552 = add i64 %1537, 18
  store i64 %1552, i64* %PC.i, align 8
  %1553 = load <2 x float>, <2 x float>* %868, align 1
  %1554 = extractelement <2 x float> %1553, i32 0
  %1555 = inttoptr i64 %1551 to float*
  store float %1554, float* %1555, align 4
  %1556 = load i64, i64* %RBP.i, align 8
  %1557 = add i64 %1556, -32
  %1558 = load i64, i64* %PC.i, align 8
  %1559 = add i64 %1558, 4
  store i64 %1559, i64* %PC.i, align 8
  %1560 = inttoptr i64 %1557 to i64*
  %1561 = load i64, i64* %1560, align 8
  store i64 %1561, i64* %RAX.i293, align 8
  %1562 = add i64 %1556, -44
  %1563 = add i64 %1558, 8
  store i64 %1563, i64* %PC.i, align 8
  %1564 = inttoptr i64 %1562 to i32*
  %1565 = load i32, i32* %1564, align 4
  %1566 = sext i32 %1565 to i64
  store i64 %1566, i64* %RCX.i602, align 8
  %1567 = shl nsw i64 %1566, 2
  %1568 = add i64 %1567, %1561
  %1569 = add i64 %1558, 13
  store i64 %1569, i64* %PC.i, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = bitcast [32 x %union.VectorReg]* %867 to i32*
  store i32 %1571, i32* %1572, align 1
  store float 0.000000e+00, float* %872, align 1
  store float 0.000000e+00, float* %874, align 1
  store float 0.000000e+00, float* %876, align 1
  %1573 = add i64 %1558, 17
  store i64 %1573, i64* %PC.i, align 8
  %1574 = load i64, i64* %1560, align 8
  store i64 %1574, i64* %RAX.i293, align 8
  %1575 = add i64 %1556, -52
  %1576 = add i64 %1558, 21
  store i64 %1576, i64* %PC.i, align 8
  %1577 = inttoptr i64 %1575 to i32*
  %1578 = load i32, i32* %1577, align 4
  %1579 = sext i32 %1578 to i64
  store i64 %1579, i64* %RCX.i602, align 8
  %1580 = shl nsw i64 %1579, 2
  %1581 = add i64 %1580, %1574
  %1582 = add i64 %1558, 26
  store i64 %1582, i64* %PC.i, align 8
  %1583 = load <2 x float>, <2 x float>* %868, align 1
  %1584 = extractelement <2 x float> %1583, i32 0
  %1585 = inttoptr i64 %1581 to float*
  store float %1584, float* %1585, align 4
  %1586 = load i64, i64* %RBP.i, align 8
  %1587 = add i64 %1586, -40
  %1588 = load i64, i64* %PC.i, align 8
  %1589 = add i64 %1588, 5
  store i64 %1589, i64* %PC.i, align 8
  %1590 = inttoptr i64 %1587 to i32*
  %1591 = load i32, i32* %1590, align 4
  %1592 = bitcast [32 x %union.VectorReg]* %867 to i32*
  store i32 %1591, i32* %1592, align 1
  store float 0.000000e+00, float* %872, align 1
  store float 0.000000e+00, float* %874, align 1
  store float 0.000000e+00, float* %876, align 1
  %1593 = add i64 %1586, -32
  %1594 = add i64 %1588, 9
  store i64 %1594, i64* %PC.i, align 8
  %1595 = inttoptr i64 %1593 to i64*
  %1596 = load i64, i64* %1595, align 8
  store i64 %1596, i64* %RAX.i293, align 8
  %1597 = add i64 %1586, -44
  %1598 = add i64 %1588, 13
  store i64 %1598, i64* %PC.i, align 8
  %1599 = inttoptr i64 %1597 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = sext i32 %1600 to i64
  store i64 %1601, i64* %RCX.i602, align 8
  %1602 = shl nsw i64 %1601, 2
  %1603 = add i64 %1602, %1596
  %1604 = add i64 %1588, 18
  store i64 %1604, i64* %PC.i, align 8
  %1605 = load <2 x float>, <2 x float>* %868, align 1
  %1606 = extractelement <2 x float> %1605, i32 0
  %1607 = inttoptr i64 %1603 to float*
  store float %1606, float* %1607, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  %.pre7 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401fea

block_.L_401fea:                                  ; preds = %block_401fac, %block_401f09
  %1608 = phi i64 [ %.pre7, %block_401fac ], [ %1502, %block_401f09 ]
  %1609 = phi i64 [ %.pre6, %block_401fac ], [ %1537, %block_401f09 ]
  %1610 = add i64 %1608, -48
  %1611 = add i64 %1609, 8
  store i64 %1611, i64* %PC.i, align 8
  %1612 = inttoptr i64 %1610 to i32*
  %1613 = load i32, i32* %1612, align 4
  %1614 = add i32 %1613, 1
  %1615 = zext i32 %1614 to i64
  store i64 %1615, i64* %RAX.i293, align 8
  %1616 = icmp eq i32 %1613, -1
  %1617 = icmp eq i32 %1614, 0
  %1618 = or i1 %1616, %1617
  %1619 = zext i1 %1618 to i8
  store i8 %1619, i8* %14, align 1
  %1620 = and i32 %1614, 255
  %1621 = tail call i32 @llvm.ctpop.i32(i32 %1620)
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  %1624 = xor i8 %1623, 1
  store i8 %1624, i8* %21, align 1
  %1625 = xor i32 %1613, %1614
  %1626 = lshr i32 %1625, 4
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  store i8 %1628, i8* %26, align 1
  %1629 = icmp eq i32 %1614, 0
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %29, align 1
  %1631 = lshr i32 %1614, 31
  %1632 = trunc i32 %1631 to i8
  store i8 %1632, i8* %32, align 1
  %1633 = lshr i32 %1613, 31
  %1634 = xor i32 %1631, %1633
  %1635 = add nuw nsw i32 %1634, %1631
  %1636 = icmp eq i32 %1635, 2
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %38, align 1
  %1638 = add i64 %1609, 14
  store i64 %1638, i64* %PC.i, align 8
  store i32 %1614, i32* %1612, align 4
  %1639 = load i64, i64* %PC.i, align 8
  %1640 = add i64 %1639, -251
  store i64 %1640, i64* %3, align 8
  br label %block_.L_401efd

block_.L_401ffd:                                  ; preds = %block_.L_401efd
  store i64 %1229, i64* %3, align 8
  br label %block_.L_402002

block_.L_402002:                                  ; preds = %block_.L_401ffd, %block_.L_401eec
  %1641 = phi i64 [ %1172, %block_.L_401eec ], [ %1229, %block_.L_401ffd ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.4, %block_.L_401eec ], [ %MEMORY.5, %block_.L_401ffd ]
  %1642 = add i64 %1641, 5
  br label %block_.L_402007

block_.L_402007:                                  ; preds = %block_.L_402002, %block_.L_401e53
  %.sink = phi i64 [ %1642, %block_.L_402002 ], [ %861, %block_.L_401e53 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_.L_402002 ], [ %MEMORY.3, %block_.L_401e53 ]
  %1643 = load i64, i64* %RSP.i615, align 8
  %1644 = add i64 %1643, 96
  store i64 %1644, i64* %RSP.i615, align 8
  %1645 = icmp ugt i64 %1643, -97
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %14, align 1
  %1647 = trunc i64 %1644 to i32
  %1648 = and i32 %1647, 255
  %1649 = tail call i32 @llvm.ctpop.i32(i32 %1648)
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  %1652 = xor i8 %1651, 1
  store i8 %1652, i8* %21, align 1
  %1653 = xor i64 %1643, %1644
  %1654 = lshr i64 %1653, 4
  %1655 = trunc i64 %1654 to i8
  %1656 = and i8 %1655, 1
  store i8 %1656, i8* %26, align 1
  %1657 = icmp eq i64 %1644, 0
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %29, align 1
  %1659 = lshr i64 %1644, 63
  %1660 = trunc i64 %1659 to i8
  store i8 %1660, i8* %32, align 1
  %1661 = lshr i64 %1643, 63
  %1662 = xor i64 %1659, %1661
  %1663 = add nuw nsw i64 %1662, %1659
  %1664 = icmp eq i64 %1663, 2
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %38, align 1
  %1666 = add i64 %.sink, 5
  store i64 %1666, i64* %PC.i, align 8
  %1667 = add i64 %1643, 104
  %1668 = inttoptr i64 %1644 to i64*
  %1669 = load i64, i64* %1668, align 8
  store i64 %1669, i64* %RBP.i, align 8
  store i64 %1667, i64* %6, align 8
  %1670 = add i64 %.sink, 6
  store i64 %1670, i64* %PC.i, align 8
  %1671 = inttoptr i64 %1667 to i64*
  %1672 = load i64, i64* %1671, align 8
  store i64 %1672, i64* %3, align 8
  %1673 = add i64 %1643, 112
  store i64 %1673, i64* %6, align 8
  ret %struct.Memory* %MEMORY.8
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jne_.L_401e58(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jl_.L_401da1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %13 = add i64 %3, %.v
  store i64 %13, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
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

define %struct.Memory* @routine_jge_.L_401d9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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

define %struct.Memory* @routine_je_.L_401d36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subl__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x2___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edx___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x2___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %R8, align 8
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

define %struct.Memory* @routine_addq__r8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.daxpy(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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

define %struct.Memory* @routine_jmpq_.L_401cd2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401da1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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

define %struct.Memory* @routine_jge_.L_401e53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rsi__rdi_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %RDI, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss___rsi__rdi_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %RDI, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fdiv float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0____rsi__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movd__xmm0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  %7 = trunc i64 %6 to i32
  %8 = bitcast i64* %RCX to [2 x i32]*
  %9 = bitcast i64* %RCX to i32*
  store i32 %7, i32* %9, align 1
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__0x80000000___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -2147483648
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

define %struct.Memory* @routine_movd__ecx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to i32*
  store i32 %6, i32* %9, align 1
  %10 = getelementptr inbounds i8, i8* %5, i64 4
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to i32*
  store i32 0, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %5, i64 12
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0x0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %6, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__ecx___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_401da8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402007(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401eec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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

define %struct.Memory* @routine_addl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %6, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shlq__0x2___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.ddot(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rcx__rsi_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RSI, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subss_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fsub float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_divss___rcx__rsi_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RSI, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fdiv float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0____rcx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401e5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_402002(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %13 = add i64 %3, %.v
  store i64 %13, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401ffd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -84
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1____rcx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl___rcx__rsi_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_je_.L_401fea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401fef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401efd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402002(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -97
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
  %17 = xor i64 %3, %6
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
