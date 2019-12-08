; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x801__rip__type = type <{ [8 x i8] }>
%G_0x8db__rip__type = type <{ [8 x i8] }>
%G_0x9a3__rip__type = type <{ [8 x i8] }>
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
@G_0x801__rip_ = local_unnamed_addr global %G_0x801__rip__type zeroinitializer
@G_0x8db__rip_ = local_unnamed_addr global %G_0x8db__rip__type zeroinitializer
@G_0x9a3__rip_ = local_unnamed_addr global %G_0x9a3__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_fdtd_2d(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 8
  %12 = add i64 %10, 7
  store i64 %12, i64* %PC.i, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i484, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %15 to i32*
  %16 = add i64 %7, -12
  %17 = load i32, i32* %EDI.i, align 4
  %18 = add i64 %10, 10
  store i64 %18, i64* %PC.i, align 8
  %19 = inttoptr i64 %16 to i32*
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %20 to i32*
  %21 = load i64, i64* %RBP.i, align 8
  %22 = add i64 %21, -8
  %23 = load i32, i32* %ESI.i, align 4
  %24 = load i64, i64* %PC.i, align 8
  %25 = add i64 %24, 3
  store i64 %25, i64* %PC.i, align 8
  %26 = inttoptr i64 %22 to i32*
  store i32 %23, i32* %26, align 4
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i477 = bitcast %union.anon* %27 to i32*
  %28 = load i64, i64* %RBP.i, align 8
  %29 = add i64 %28, -12
  %30 = load i32, i32* %EDX.i477, align 4
  %31 = load i64, i64* %PC.i, align 8
  %32 = add i64 %31, 3
  store i64 %32, i64* %PC.i, align 8
  %33 = inttoptr i64 %29 to i32*
  store i32 %30, i32* %33, align 4
  %RCX.i474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %34 = load i64, i64* %RBP.i, align 8
  %35 = add i64 %34, -24
  %36 = load i64, i64* %RCX.i474, align 8
  %37 = load i64, i64* %PC.i, align 8
  %38 = add i64 %37, 4
  store i64 %38, i64* %PC.i, align 8
  %39 = inttoptr i64 %35 to i64*
  store i64 %36, i64* %39, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %40 = load i64, i64* %RBP.i, align 8
  %41 = add i64 %40, -32
  %42 = load i64, i64* %R8.i, align 8
  %43 = load i64, i64* %PC.i, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC.i, align 8
  %45 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %45, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -40
  %48 = load i64, i64* %R9.i, align 8
  %49 = load i64, i64* %PC.i, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %PC.i, align 8
  %51 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -44
  %54 = load i64, i64* %PC.i, align 8
  %55 = add i64 %54, 7
  store i64 %55, i64* %PC.i, align 8
  %56 = inttoptr i64 %53 to i32*
  store i32 0, i32* %56, align 4
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -64
  %59 = load i64, i64* %RAX.i484, align 8
  %60 = load i64, i64* %PC.i, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC.i, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %70 = bitcast [32 x %union.VectorReg]* %69 to double*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %72 = bitcast i64* %71 to double*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %74 = bitcast %union.VectorReg* %73 to double*
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %76 = bitcast i64* %75 to double*
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %78 = bitcast %union.VectorReg* %77 to double*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %80 = bitcast i64* %79 to double*
  %RDX.i358 = getelementptr inbounds %union.anon, %union.anon* %27, i64 0, i32 0
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400c48

block_.L_400c48:                                  ; preds = %block_.L_400f2c, %entry
  %81 = phi i64 [ %1402, %block_.L_400f2c ], [ %.pre, %entry ]
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -44
  %84 = add i64 %81, 3
  store i64 %84, i64* %PC.i, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %RAX.i484, align 8
  %88 = add i64 %82, -4
  %89 = add i64 %81, 6
  store i64 %89, i64* %PC.i, align 8
  %90 = inttoptr i64 %88 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = sub i32 %86, %91
  %93 = icmp ult i32 %86, %91
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %63, align 1
  %95 = and i32 %92, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95)
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %64, align 1
  %100 = xor i32 %91, %86
  %101 = xor i32 %100, %92
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %65, align 1
  %105 = icmp eq i32 %92, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %66, align 1
  %107 = lshr i32 %92, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %67, align 1
  %109 = lshr i32 %86, 31
  %110 = lshr i32 %91, 31
  %111 = xor i32 %110, %109
  %112 = xor i32 %107, %109
  %113 = add nuw nsw i32 %112, %111
  %114 = icmp eq i32 %113, 2
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %68, align 1
  %116 = icmp ne i8 %108, 0
  %117 = xor i1 %116, %114
  %.v = select i1 %117, i64 12, i64 759
  %118 = add i64 %81, %.v
  store i64 %118, i64* %3, align 8
  br i1 %117, label %block_400c54, label %block_.L_400f3f

block_400c54:                                     ; preds = %block_.L_400c48
  %119 = add i64 %82, -52
  %120 = add i64 %118, 7
  store i64 %120, i64* %PC.i, align 8
  %121 = inttoptr i64 %119 to i32*
  store i32 0, i32* %121, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c5b

block_.L_400c5b:                                  ; preds = %block_400c67, %block_400c54
  %122 = phi i64 [ %218, %block_400c67 ], [ %.pre1, %block_400c54 ]
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -52
  %125 = add i64 %122, 3
  store i64 %125, i64* %PC.i, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RAX.i484, align 8
  %129 = add i64 %123, -12
  %130 = add i64 %122, 6
  store i64 %130, i64* %PC.i, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = sub i32 %127, %132
  %134 = icmp ult i32 %127, %132
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %63, align 1
  %136 = and i32 %133, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136)
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %64, align 1
  %141 = xor i32 %132, %127
  %142 = xor i32 %141, %133
  %143 = lshr i32 %142, 4
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %65, align 1
  %146 = icmp eq i32 %133, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %66, align 1
  %148 = lshr i32 %133, 31
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %67, align 1
  %150 = lshr i32 %127, 31
  %151 = lshr i32 %132, 31
  %152 = xor i32 %151, %150
  %153 = xor i32 %148, %150
  %154 = add nuw nsw i32 %153, %152
  %155 = icmp eq i32 %154, 2
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %68, align 1
  %157 = icmp ne i8 %149, 0
  %158 = xor i1 %157, %155
  %.v8 = select i1 %158, i64 12, i64 52
  %159 = add i64 %122, %.v8
  store i64 %159, i64* %3, align 8
  br i1 %158, label %block_400c67, label %block_.L_400c8f

block_400c67:                                     ; preds = %block_.L_400c5b
  %160 = add i64 %123, 16
  %161 = add i64 %159, 4
  store i64 %161, i64* %PC.i, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %RAX.i484, align 8
  %164 = add i64 %123, -44
  %165 = add i64 %159, 8
  store i64 %165, i64* %PC.i, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RCX.i474, align 8
  %169 = shl nsw i64 %168, 3
  %170 = add i64 %169, %163
  %171 = add i64 %159, 13
  store i64 %171, i64* %PC.i, align 8
  %172 = inttoptr i64 %170 to i64*
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %173, i64* %174, align 1
  store double 0.000000e+00, double* %72, align 1
  %175 = add i64 %123, -32
  %176 = add i64 %159, 17
  store i64 %176, i64* %PC.i, align 8
  %177 = inttoptr i64 %175 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %RAX.i484, align 8
  %179 = add i64 %159, 21
  store i64 %179, i64* %PC.i, align 8
  %180 = load i32, i32* %126, align 4
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %RCX.i474, align 8
  %182 = shl nsw i64 %181, 3
  %183 = add i64 %182, %178
  %184 = add i64 %159, 26
  store i64 %184, i64* %PC.i, align 8
  %185 = inttoptr i64 %183 to i64*
  store i64 %173, i64* %185, align 8
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -52
  %188 = load i64, i64* %PC.i, align 8
  %189 = add i64 %188, 3
  store i64 %189, i64* %PC.i, align 8
  %190 = inttoptr i64 %187 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = add i32 %191, 1
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX.i484, align 8
  %194 = icmp eq i32 %191, -1
  %195 = icmp eq i32 %192, 0
  %196 = or i1 %194, %195
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %63, align 1
  %198 = and i32 %192, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198)
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %64, align 1
  %203 = xor i32 %191, %192
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %65, align 1
  %207 = icmp eq i32 %192, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %66, align 1
  %209 = lshr i32 %192, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %67, align 1
  %211 = lshr i32 %191, 31
  %212 = xor i32 %209, %211
  %213 = add nuw nsw i32 %212, %209
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %68, align 1
  %216 = add i64 %188, 9
  store i64 %216, i64* %PC.i, align 8
  store i32 %192, i32* %190, align 4
  %217 = load i64, i64* %PC.i, align 8
  %218 = add i64 %217, -47
  store i64 %218, i64* %3, align 8
  br label %block_.L_400c5b

block_.L_400c8f:                                  ; preds = %block_.L_400c5b
  %219 = add i64 %123, -48
  %220 = add i64 %159, 7
  store i64 %220, i64* %PC.i, align 8
  %221 = inttoptr i64 %219 to i32*
  store i32 1, i32* %221, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c96

block_.L_400c96:                                  ; preds = %block_.L_400d44, %block_.L_400c8f
  %222 = phi i64 [ %558, %block_.L_400d44 ], [ %.pre2, %block_.L_400c8f ]
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -48
  %225 = add i64 %222, 3
  store i64 %225, i64* %PC.i, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %RAX.i484, align 8
  %229 = add i64 %223, -8
  %230 = add i64 %222, 6
  store i64 %230, i64* %PC.i, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = sub i32 %227, %232
  %234 = icmp ult i32 %227, %232
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %63, align 1
  %236 = and i32 %233, 255
  %237 = tail call i32 @llvm.ctpop.i32(i32 %236)
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = xor i8 %239, 1
  store i8 %240, i8* %64, align 1
  %241 = xor i32 %232, %227
  %242 = xor i32 %241, %233
  %243 = lshr i32 %242, 4
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  store i8 %245, i8* %65, align 1
  %246 = icmp eq i32 %233, 0
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %66, align 1
  %248 = lshr i32 %233, 31
  %249 = trunc i32 %248 to i8
  store i8 %249, i8* %67, align 1
  %250 = lshr i32 %227, 31
  %251 = lshr i32 %232, 31
  %252 = xor i32 %251, %250
  %253 = xor i32 %248, %250
  %254 = add nuw nsw i32 %253, %252
  %255 = icmp eq i32 %254, 2
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %68, align 1
  %257 = icmp ne i8 %249, 0
  %258 = xor i1 %257, %255
  %.v9 = select i1 %258, i64 12, i64 193
  %259 = add i64 %222, %.v9
  store i64 %259, i64* %3, align 8
  br i1 %258, label %block_400ca2, label %block_.L_400d57

block_400ca2:                                     ; preds = %block_.L_400c96
  %260 = add i64 %223, -52
  %261 = add i64 %259, 7
  store i64 %261, i64* %PC.i, align 8
  %262 = inttoptr i64 %260 to i32*
  store i32 0, i32* %262, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ca9

block_.L_400ca9:                                  ; preds = %block_400cb5, %block_400ca2
  %263 = phi i64 [ %527, %block_400cb5 ], [ %.pre3, %block_400ca2 ]
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -52
  %266 = add i64 %263, 3
  store i64 %266, i64* %PC.i, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %RAX.i484, align 8
  %270 = add i64 %264, -12
  %271 = add i64 %263, 6
  store i64 %271, i64* %PC.i, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = sub i32 %268, %273
  %275 = icmp ult i32 %268, %273
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %63, align 1
  %277 = and i32 %274, 255
  %278 = tail call i32 @llvm.ctpop.i32(i32 %277)
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = xor i8 %280, 1
  store i8 %281, i8* %64, align 1
  %282 = xor i32 %273, %268
  %283 = xor i32 %282, %274
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  store i8 %286, i8* %65, align 1
  %287 = icmp eq i32 %274, 0
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %66, align 1
  %289 = lshr i32 %274, 31
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %67, align 1
  %291 = lshr i32 %268, 31
  %292 = lshr i32 %273, 31
  %293 = xor i32 %292, %291
  %294 = xor i32 %289, %291
  %295 = add nuw nsw i32 %294, %293
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %68, align 1
  %298 = icmp ne i8 %290, 0
  %299 = xor i1 %298, %296
  %.v10 = select i1 %299, i64 12, i64 155
  %300 = add i64 %263, %.v10
  store i64 %300, i64* %3, align 8
  br i1 %299, label %block_400cb5, label %block_.L_400d44

block_400cb5:                                     ; preds = %block_.L_400ca9
  %301 = load i64, i64* bitcast (%G_0x9a3__rip__type* @G_0x9a3__rip_ to i64*), align 8
  %302 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %301, i64* %302, align 1
  store double 0.000000e+00, double* %72, align 1
  %303 = add i64 %264, -32
  %304 = add i64 %300, 12
  store i64 %304, i64* %PC.i, align 8
  %305 = inttoptr i64 %303 to i64*
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %RAX.i484, align 8
  %307 = add i64 %264, -48
  %308 = add i64 %300, 16
  store i64 %308, i64* %PC.i, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = mul nsw i64 %311, 8000
  store i64 %312, i64* %RCX.i474, align 8
  %313 = lshr i64 %312, 63
  %314 = add i64 %312, %306
  store i64 %314, i64* %RAX.i484, align 8
  %315 = icmp ult i64 %314, %306
  %316 = icmp ult i64 %314, %312
  %317 = or i1 %315, %316
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %63, align 1
  %319 = trunc i64 %314 to i32
  %320 = and i32 %319, 255
  %321 = tail call i32 @llvm.ctpop.i32(i32 %320)
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  store i8 %324, i8* %64, align 1
  %325 = xor i64 %306, %314
  %326 = lshr i64 %325, 4
  %327 = trunc i64 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %65, align 1
  %329 = icmp eq i64 %314, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %66, align 1
  %331 = lshr i64 %314, 63
  %332 = trunc i64 %331 to i8
  store i8 %332, i8* %67, align 1
  %333 = lshr i64 %306, 63
  %334 = xor i64 %331, %333
  %335 = xor i64 %331, %313
  %336 = add nuw nsw i64 %334, %335
  %337 = icmp eq i64 %336, 2
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %68, align 1
  %339 = add i64 %300, 30
  store i64 %339, i64* %PC.i, align 8
  %340 = load i32, i32* %267, align 4
  %341 = sext i32 %340 to i64
  store i64 %341, i64* %RCX.i474, align 8
  %342 = shl nsw i64 %341, 3
  %343 = add i64 %342, %314
  %344 = add i64 %300, 35
  store i64 %344, i64* %PC.i, align 8
  %345 = inttoptr i64 %343 to i64*
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %73, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %346, i64* %347, align 1
  store double 0.000000e+00, double* %76, align 1
  %348 = add i64 %264, -40
  %349 = add i64 %300, 39
  store i64 %349, i64* %PC.i, align 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %RAX.i484, align 8
  %352 = add i64 %300, 43
  store i64 %352, i64* %PC.i, align 8
  %353 = load i32, i32* %309, align 4
  %354 = sext i32 %353 to i64
  %355 = mul nsw i64 %354, 8000
  store i64 %355, i64* %RCX.i474, align 8
  %356 = lshr i64 %355, 63
  %357 = add i64 %355, %351
  store i64 %357, i64* %RAX.i484, align 8
  %358 = icmp ult i64 %357, %351
  %359 = icmp ult i64 %357, %355
  %360 = or i1 %358, %359
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %63, align 1
  %362 = trunc i64 %357 to i32
  %363 = and i32 %362, 255
  %364 = tail call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  store i8 %367, i8* %64, align 1
  %368 = xor i64 %351, %357
  %369 = lshr i64 %368, 4
  %370 = trunc i64 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %65, align 1
  %372 = icmp eq i64 %357, 0
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %66, align 1
  %374 = lshr i64 %357, 63
  %375 = trunc i64 %374 to i8
  store i8 %375, i8* %67, align 1
  %376 = lshr i64 %351, 63
  %377 = xor i64 %374, %376
  %378 = xor i64 %374, %356
  %379 = add nuw nsw i64 %377, %378
  %380 = icmp eq i64 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %68, align 1
  %382 = load i64, i64* %RBP.i, align 8
  %383 = add i64 %382, -52
  %384 = add i64 %300, 57
  store i64 %384, i64* %PC.i, align 8
  %385 = inttoptr i64 %383 to i32*
  %386 = load i32, i32* %385, align 4
  %387 = sext i32 %386 to i64
  store i64 %387, i64* %RCX.i474, align 8
  %388 = shl nsw i64 %387, 3
  %389 = add i64 %388, %357
  %390 = add i64 %300, 62
  store i64 %390, i64* %PC.i, align 8
  %391 = inttoptr i64 %389 to i64*
  %392 = load i64, i64* %391, align 8
  %393 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %77, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %392, i64* %393, align 1
  store double 0.000000e+00, double* %80, align 1
  %394 = add i64 %382, -40
  %395 = add i64 %300, 66
  store i64 %395, i64* %PC.i, align 8
  %396 = inttoptr i64 %394 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %RAX.i484, align 8
  %398 = add i64 %382, -48
  %399 = add i64 %300, 69
  store i64 %399, i64* %PC.i, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = add i32 %401, -1
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RDX.i358, align 8
  %404 = sext i32 %402 to i64
  %405 = mul nsw i64 %404, 8000
  store i64 %405, i64* %RCX.i474, align 8
  %406 = lshr i64 %405, 63
  %407 = add i64 %405, %397
  store i64 %407, i64* %RAX.i484, align 8
  %408 = icmp ult i64 %407, %397
  %409 = icmp ult i64 %407, %405
  %410 = or i1 %408, %409
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %63, align 1
  %412 = trunc i64 %407 to i32
  %413 = and i32 %412, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413)
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %64, align 1
  %418 = xor i64 %397, %407
  %419 = lshr i64 %418, 4
  %420 = trunc i64 %419 to i8
  %421 = and i8 %420, 1
  store i8 %421, i8* %65, align 1
  %422 = icmp eq i64 %407, 0
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %66, align 1
  %424 = lshr i64 %407, 63
  %425 = trunc i64 %424 to i8
  store i8 %425, i8* %67, align 1
  %426 = lshr i64 %397, 63
  %427 = xor i64 %424, %426
  %428 = xor i64 %424, %406
  %429 = add nuw nsw i64 %427, %428
  %430 = icmp eq i64 %429, 2
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %68, align 1
  %432 = load i64, i64* %RBP.i, align 8
  %433 = add i64 %432, -52
  %434 = add i64 %300, 89
  store i64 %434, i64* %PC.i, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = sext i32 %436 to i64
  store i64 %437, i64* %RCX.i474, align 8
  %438 = shl nsw i64 %437, 3
  %439 = add i64 %438, %407
  %440 = add i64 %300, 94
  store i64 %440, i64* %PC.i, align 8
  %441 = load double, double* %78, align 1
  %442 = inttoptr i64 %439 to double*
  %443 = load double, double* %442, align 8
  %444 = fsub double %441, %443
  store double %444, double* %78, align 1
  %445 = load double, double* %70, align 1
  %446 = fmul double %445, %444
  store double %446, double* %70, align 1
  %447 = load double, double* %74, align 1
  %448 = fsub double %447, %446
  store double %448, double* %74, align 1
  %449 = add i64 %432, -32
  %450 = add i64 %300, 106
  store i64 %450, i64* %PC.i, align 8
  %451 = inttoptr i64 %449 to i64*
  %452 = load i64, i64* %451, align 8
  store i64 %452, i64* %RAX.i484, align 8
  %453 = add i64 %432, -48
  %454 = add i64 %300, 110
  store i64 %454, i64* %PC.i, align 8
  %455 = inttoptr i64 %453 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = sext i32 %456 to i64
  %458 = mul nsw i64 %457, 8000
  store i64 %458, i64* %RCX.i474, align 8
  %459 = lshr i64 %458, 63
  %460 = add i64 %458, %452
  store i64 %460, i64* %RAX.i484, align 8
  %461 = icmp ult i64 %460, %452
  %462 = icmp ult i64 %460, %458
  %463 = or i1 %461, %462
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %63, align 1
  %465 = trunc i64 %460 to i32
  %466 = and i32 %465, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %64, align 1
  %471 = xor i64 %452, %460
  %472 = lshr i64 %471, 4
  %473 = trunc i64 %472 to i8
  %474 = and i8 %473, 1
  store i8 %474, i8* %65, align 1
  %475 = icmp eq i64 %460, 0
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %66, align 1
  %477 = lshr i64 %460, 63
  %478 = trunc i64 %477 to i8
  store i8 %478, i8* %67, align 1
  %479 = lshr i64 %452, 63
  %480 = xor i64 %477, %479
  %481 = xor i64 %477, %459
  %482 = add nuw nsw i64 %480, %481
  %483 = icmp eq i64 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %68, align 1
  %485 = load i64, i64* %RBP.i, align 8
  %486 = add i64 %485, -52
  %487 = add i64 %300, 124
  store i64 %487, i64* %PC.i, align 8
  %488 = inttoptr i64 %486 to i32*
  %489 = load i32, i32* %488, align 4
  %490 = sext i32 %489 to i64
  store i64 %490, i64* %RCX.i474, align 8
  %491 = shl nsw i64 %490, 3
  %492 = add i64 %491, %460
  %493 = add i64 %300, 129
  store i64 %493, i64* %PC.i, align 8
  %494 = inttoptr i64 %492 to double*
  store double %448, double* %494, align 8
  %495 = load i64, i64* %RBP.i, align 8
  %496 = add i64 %495, -52
  %497 = load i64, i64* %PC.i, align 8
  %498 = add i64 %497, 3
  store i64 %498, i64* %PC.i, align 8
  %499 = inttoptr i64 %496 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = add i32 %500, 1
  %502 = zext i32 %501 to i64
  store i64 %502, i64* %RAX.i484, align 8
  %503 = icmp eq i32 %500, -1
  %504 = icmp eq i32 %501, 0
  %505 = or i1 %503, %504
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %63, align 1
  %507 = and i32 %501, 255
  %508 = tail call i32 @llvm.ctpop.i32(i32 %507)
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  %511 = xor i8 %510, 1
  store i8 %511, i8* %64, align 1
  %512 = xor i32 %500, %501
  %513 = lshr i32 %512, 4
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  store i8 %515, i8* %65, align 1
  %516 = icmp eq i32 %501, 0
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %66, align 1
  %518 = lshr i32 %501, 31
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %67, align 1
  %520 = lshr i32 %500, 31
  %521 = xor i32 %518, %520
  %522 = add nuw nsw i32 %521, %518
  %523 = icmp eq i32 %522, 2
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %68, align 1
  %525 = add i64 %497, 9
  store i64 %525, i64* %PC.i, align 8
  store i32 %501, i32* %499, align 4
  %526 = load i64, i64* %PC.i, align 8
  %527 = add i64 %526, -150
  store i64 %527, i64* %3, align 8
  br label %block_.L_400ca9

block_.L_400d44:                                  ; preds = %block_.L_400ca9
  %528 = add i64 %264, -48
  %529 = add i64 %300, 8
  store i64 %529, i64* %PC.i, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = add i32 %531, 1
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RAX.i484, align 8
  %534 = icmp eq i32 %531, -1
  %535 = icmp eq i32 %532, 0
  %536 = or i1 %534, %535
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %63, align 1
  %538 = and i32 %532, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %64, align 1
  %543 = xor i32 %531, %532
  %544 = lshr i32 %543, 4
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  store i8 %546, i8* %65, align 1
  %547 = icmp eq i32 %532, 0
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %66, align 1
  %549 = lshr i32 %532, 31
  %550 = trunc i32 %549 to i8
  store i8 %550, i8* %67, align 1
  %551 = lshr i32 %531, 31
  %552 = xor i32 %549, %551
  %553 = add nuw nsw i32 %552, %549
  %554 = icmp eq i32 %553, 2
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %68, align 1
  %556 = add i64 %300, 14
  store i64 %556, i64* %PC.i, align 8
  store i32 %532, i32* %530, align 4
  %557 = load i64, i64* %PC.i, align 8
  %558 = add i64 %557, -188
  store i64 %558, i64* %3, align 8
  br label %block_.L_400c96

block_.L_400d57:                                  ; preds = %block_.L_400c96
  %559 = add i64 %259, 7
  store i64 %559, i64* %PC.i, align 8
  store i32 0, i32* %226, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d5e

block_.L_400d5e:                                  ; preds = %block_.L_400e0c, %block_.L_400d57
  %560 = phi i64 [ %913, %block_.L_400e0c ], [ %.pre4, %block_.L_400d57 ]
  %561 = load i64, i64* %RBP.i, align 8
  %562 = add i64 %561, -48
  %563 = add i64 %560, 3
  store i64 %563, i64* %PC.i, align 8
  %564 = inttoptr i64 %562 to i32*
  %565 = load i32, i32* %564, align 4
  %566 = zext i32 %565 to i64
  store i64 %566, i64* %RAX.i484, align 8
  %567 = add i64 %561, -8
  %568 = add i64 %560, 6
  store i64 %568, i64* %PC.i, align 8
  %569 = inttoptr i64 %567 to i32*
  %570 = load i32, i32* %569, align 4
  %571 = sub i32 %565, %570
  %572 = icmp ult i32 %565, %570
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %63, align 1
  %574 = and i32 %571, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %64, align 1
  %579 = xor i32 %570, %565
  %580 = xor i32 %579, %571
  %581 = lshr i32 %580, 4
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  store i8 %583, i8* %65, align 1
  %584 = icmp eq i32 %571, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %66, align 1
  %586 = lshr i32 %571, 31
  %587 = trunc i32 %586 to i8
  store i8 %587, i8* %67, align 1
  %588 = lshr i32 %565, 31
  %589 = lshr i32 %570, 31
  %590 = xor i32 %589, %588
  %591 = xor i32 %586, %588
  %592 = add nuw nsw i32 %591, %590
  %593 = icmp eq i32 %592, 2
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %68, align 1
  %595 = icmp ne i8 %587, 0
  %596 = xor i1 %595, %593
  %.v11 = select i1 %596, i64 12, i64 193
  %597 = add i64 %560, %.v11
  store i64 %597, i64* %3, align 8
  br i1 %596, label %block_400d6a, label %block_.L_400e1f

block_400d6a:                                     ; preds = %block_.L_400d5e
  %598 = add i64 %561, -52
  %599 = add i64 %597, 7
  store i64 %599, i64* %PC.i, align 8
  %600 = inttoptr i64 %598 to i32*
  store i32 1, i32* %600, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d71

block_.L_400d71:                                  ; preds = %block_400d7d, %block_400d6a
  %601 = phi i64 [ %882, %block_400d7d ], [ %.pre5, %block_400d6a ]
  %602 = load i64, i64* %RBP.i, align 8
  %603 = add i64 %602, -52
  %604 = add i64 %601, 3
  store i64 %604, i64* %PC.i, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RAX.i484, align 8
  %608 = add i64 %602, -12
  %609 = add i64 %601, 6
  store i64 %609, i64* %PC.i, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = sub i32 %606, %611
  %613 = icmp ult i32 %606, %611
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %63, align 1
  %615 = and i32 %612, 255
  %616 = tail call i32 @llvm.ctpop.i32(i32 %615)
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  %619 = xor i8 %618, 1
  store i8 %619, i8* %64, align 1
  %620 = xor i32 %611, %606
  %621 = xor i32 %620, %612
  %622 = lshr i32 %621, 4
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  store i8 %624, i8* %65, align 1
  %625 = icmp eq i32 %612, 0
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %66, align 1
  %627 = lshr i32 %612, 31
  %628 = trunc i32 %627 to i8
  store i8 %628, i8* %67, align 1
  %629 = lshr i32 %606, 31
  %630 = lshr i32 %611, 31
  %631 = xor i32 %630, %629
  %632 = xor i32 %627, %629
  %633 = add nuw nsw i32 %632, %631
  %634 = icmp eq i32 %633, 2
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %68, align 1
  %636 = icmp ne i8 %628, 0
  %637 = xor i1 %636, %634
  %.v12 = select i1 %637, i64 12, i64 155
  %638 = add i64 %601, %.v12
  store i64 %638, i64* %3, align 8
  br i1 %637, label %block_400d7d, label %block_.L_400e0c

block_400d7d:                                     ; preds = %block_.L_400d71
  %639 = load i64, i64* bitcast (%G_0x8db__rip__type* @G_0x8db__rip_ to i64*), align 8
  %640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %639, i64* %640, align 1
  store double 0.000000e+00, double* %72, align 1
  %641 = add i64 %602, -24
  %642 = add i64 %638, 12
  store i64 %642, i64* %PC.i, align 8
  %643 = inttoptr i64 %641 to i64*
  %644 = load i64, i64* %643, align 8
  store i64 %644, i64* %RAX.i484, align 8
  %645 = add i64 %602, -48
  %646 = add i64 %638, 16
  store i64 %646, i64* %PC.i, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = sext i32 %648 to i64
  %650 = mul nsw i64 %649, 8000
  store i64 %650, i64* %RCX.i474, align 8
  %651 = lshr i64 %650, 63
  %652 = add i64 %650, %644
  store i64 %652, i64* %RAX.i484, align 8
  %653 = icmp ult i64 %652, %644
  %654 = icmp ult i64 %652, %650
  %655 = or i1 %653, %654
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %63, align 1
  %657 = trunc i64 %652 to i32
  %658 = and i32 %657, 255
  %659 = tail call i32 @llvm.ctpop.i32(i32 %658)
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  store i8 %662, i8* %64, align 1
  %663 = xor i64 %644, %652
  %664 = lshr i64 %663, 4
  %665 = trunc i64 %664 to i8
  %666 = and i8 %665, 1
  store i8 %666, i8* %65, align 1
  %667 = icmp eq i64 %652, 0
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %66, align 1
  %669 = lshr i64 %652, 63
  %670 = trunc i64 %669 to i8
  store i8 %670, i8* %67, align 1
  %671 = lshr i64 %644, 63
  %672 = xor i64 %669, %671
  %673 = xor i64 %669, %651
  %674 = add nuw nsw i64 %672, %673
  %675 = icmp eq i64 %674, 2
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %68, align 1
  %677 = add i64 %638, 30
  store i64 %677, i64* %PC.i, align 8
  %678 = load i32, i32* %605, align 4
  %679 = sext i32 %678 to i64
  store i64 %679, i64* %RCX.i474, align 8
  %680 = shl nsw i64 %679, 3
  %681 = add i64 %680, %652
  %682 = add i64 %638, 35
  store i64 %682, i64* %PC.i, align 8
  %683 = inttoptr i64 %681 to i64*
  %684 = load i64, i64* %683, align 8
  %685 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %73, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %684, i64* %685, align 1
  store double 0.000000e+00, double* %76, align 1
  %686 = add i64 %602, -40
  %687 = add i64 %638, 39
  store i64 %687, i64* %PC.i, align 8
  %688 = inttoptr i64 %686 to i64*
  %689 = load i64, i64* %688, align 8
  store i64 %689, i64* %RAX.i484, align 8
  %690 = add i64 %638, 43
  store i64 %690, i64* %PC.i, align 8
  %691 = load i32, i32* %647, align 4
  %692 = sext i32 %691 to i64
  %693 = mul nsw i64 %692, 8000
  store i64 %693, i64* %RCX.i474, align 8
  %694 = lshr i64 %693, 63
  %695 = add i64 %693, %689
  store i64 %695, i64* %RAX.i484, align 8
  %696 = icmp ult i64 %695, %689
  %697 = icmp ult i64 %695, %693
  %698 = or i1 %696, %697
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %63, align 1
  %700 = trunc i64 %695 to i32
  %701 = and i32 %700, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701)
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %64, align 1
  %706 = xor i64 %689, %695
  %707 = lshr i64 %706, 4
  %708 = trunc i64 %707 to i8
  %709 = and i8 %708, 1
  store i8 %709, i8* %65, align 1
  %710 = icmp eq i64 %695, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %66, align 1
  %712 = lshr i64 %695, 63
  %713 = trunc i64 %712 to i8
  store i8 %713, i8* %67, align 1
  %714 = lshr i64 %689, 63
  %715 = xor i64 %712, %714
  %716 = xor i64 %712, %694
  %717 = add nuw nsw i64 %715, %716
  %718 = icmp eq i64 %717, 2
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %68, align 1
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -52
  %722 = add i64 %638, 57
  store i64 %722, i64* %PC.i, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = sext i32 %724 to i64
  store i64 %725, i64* %RCX.i474, align 8
  %726 = shl nsw i64 %725, 3
  %727 = add i64 %726, %695
  %728 = add i64 %638, 62
  store i64 %728, i64* %PC.i, align 8
  %729 = inttoptr i64 %727 to i64*
  %730 = load i64, i64* %729, align 8
  %731 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %77, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %730, i64* %731, align 1
  store double 0.000000e+00, double* %80, align 1
  %732 = add i64 %720, -40
  %733 = add i64 %638, 66
  store i64 %733, i64* %PC.i, align 8
  %734 = inttoptr i64 %732 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %RAX.i484, align 8
  %736 = add i64 %720, -48
  %737 = add i64 %638, 70
  store i64 %737, i64* %PC.i, align 8
  %738 = inttoptr i64 %736 to i32*
  %739 = load i32, i32* %738, align 4
  %740 = sext i32 %739 to i64
  %741 = mul nsw i64 %740, 8000
  store i64 %741, i64* %RCX.i474, align 8
  %742 = lshr i64 %741, 63
  %743 = add i64 %741, %735
  store i64 %743, i64* %RAX.i484, align 8
  %744 = icmp ult i64 %743, %735
  %745 = icmp ult i64 %743, %741
  %746 = or i1 %744, %745
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %63, align 1
  %748 = trunc i64 %743 to i32
  %749 = and i32 %748, 255
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749)
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  store i8 %753, i8* %64, align 1
  %754 = xor i64 %735, %743
  %755 = lshr i64 %754, 4
  %756 = trunc i64 %755 to i8
  %757 = and i8 %756, 1
  store i8 %757, i8* %65, align 1
  %758 = icmp eq i64 %743, 0
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %66, align 1
  %760 = lshr i64 %743, 63
  %761 = trunc i64 %760 to i8
  store i8 %761, i8* %67, align 1
  %762 = lshr i64 %735, 63
  %763 = xor i64 %760, %762
  %764 = xor i64 %760, %742
  %765 = add nuw nsw i64 %763, %764
  %766 = icmp eq i64 %765, 2
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %68, align 1
  %768 = add i64 %638, 83
  store i64 %768, i64* %PC.i, align 8
  %769 = load i32, i32* %723, align 4
  %770 = add i32 %769, -1
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %RDX.i358, align 8
  %772 = icmp eq i32 %769, 0
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %63, align 1
  %774 = and i32 %770, 255
  %775 = tail call i32 @llvm.ctpop.i32(i32 %774)
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  store i8 %778, i8* %64, align 1
  %779 = xor i32 %769, %770
  %780 = lshr i32 %779, 4
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  store i8 %782, i8* %65, align 1
  %783 = icmp eq i32 %770, 0
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %66, align 1
  %785 = lshr i32 %770, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %67, align 1
  %787 = lshr i32 %769, 31
  %788 = xor i32 %785, %787
  %789 = add nuw nsw i32 %788, %787
  %790 = icmp eq i32 %789, 2
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %68, align 1
  %792 = sext i32 %770 to i64
  store i64 %792, i64* %RCX.i474, align 8
  %793 = shl nsw i64 %792, 3
  %794 = add i64 %793, %743
  %795 = add i64 %638, 94
  store i64 %795, i64* %PC.i, align 8
  %796 = load double, double* %78, align 1
  %797 = inttoptr i64 %794 to double*
  %798 = load double, double* %797, align 8
  %799 = fsub double %796, %798
  store double %799, double* %78, align 1
  %800 = load double, double* %70, align 1
  %801 = fmul double %800, %799
  store double %801, double* %70, align 1
  %802 = load double, double* %74, align 1
  %803 = fsub double %802, %801
  store double %803, double* %74, align 1
  %804 = load i64, i64* %RBP.i, align 8
  %805 = add i64 %804, -24
  %806 = add i64 %638, 106
  store i64 %806, i64* %PC.i, align 8
  %807 = inttoptr i64 %805 to i64*
  %808 = load i64, i64* %807, align 8
  store i64 %808, i64* %RAX.i484, align 8
  %809 = add i64 %804, -48
  %810 = add i64 %638, 110
  store i64 %810, i64* %PC.i, align 8
  %811 = inttoptr i64 %809 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = sext i32 %812 to i64
  %814 = mul nsw i64 %813, 8000
  store i64 %814, i64* %RCX.i474, align 8
  %815 = lshr i64 %814, 63
  %816 = add i64 %814, %808
  store i64 %816, i64* %RAX.i484, align 8
  %817 = icmp ult i64 %816, %808
  %818 = icmp ult i64 %816, %814
  %819 = or i1 %817, %818
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %63, align 1
  %821 = trunc i64 %816 to i32
  %822 = and i32 %821, 255
  %823 = tail call i32 @llvm.ctpop.i32(i32 %822)
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  %826 = xor i8 %825, 1
  store i8 %826, i8* %64, align 1
  %827 = xor i64 %808, %816
  %828 = lshr i64 %827, 4
  %829 = trunc i64 %828 to i8
  %830 = and i8 %829, 1
  store i8 %830, i8* %65, align 1
  %831 = icmp eq i64 %816, 0
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %66, align 1
  %833 = lshr i64 %816, 63
  %834 = trunc i64 %833 to i8
  store i8 %834, i8* %67, align 1
  %835 = lshr i64 %808, 63
  %836 = xor i64 %833, %835
  %837 = xor i64 %833, %815
  %838 = add nuw nsw i64 %836, %837
  %839 = icmp eq i64 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %68, align 1
  %841 = add i64 %804, -52
  %842 = add i64 %638, 124
  store i64 %842, i64* %PC.i, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = sext i32 %844 to i64
  store i64 %845, i64* %RCX.i474, align 8
  %846 = shl nsw i64 %845, 3
  %847 = add i64 %846, %816
  %848 = add i64 %638, 129
  store i64 %848, i64* %PC.i, align 8
  %849 = inttoptr i64 %847 to double*
  store double %803, double* %849, align 8
  %850 = load i64, i64* %RBP.i, align 8
  %851 = add i64 %850, -52
  %852 = load i64, i64* %PC.i, align 8
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC.i, align 8
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854, align 4
  %856 = add i32 %855, 1
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %RAX.i484, align 8
  %858 = icmp eq i32 %855, -1
  %859 = icmp eq i32 %856, 0
  %860 = or i1 %858, %859
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %63, align 1
  %862 = and i32 %856, 255
  %863 = tail call i32 @llvm.ctpop.i32(i32 %862)
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  store i8 %866, i8* %64, align 1
  %867 = xor i32 %855, %856
  %868 = lshr i32 %867, 4
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  store i8 %870, i8* %65, align 1
  %871 = icmp eq i32 %856, 0
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %66, align 1
  %873 = lshr i32 %856, 31
  %874 = trunc i32 %873 to i8
  store i8 %874, i8* %67, align 1
  %875 = lshr i32 %855, 31
  %876 = xor i32 %873, %875
  %877 = add nuw nsw i32 %876, %873
  %878 = icmp eq i32 %877, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %68, align 1
  %880 = add i64 %852, 9
  store i64 %880, i64* %PC.i, align 8
  store i32 %856, i32* %854, align 4
  %881 = load i64, i64* %PC.i, align 8
  %882 = add i64 %881, -150
  store i64 %882, i64* %3, align 8
  br label %block_.L_400d71

block_.L_400e0c:                                  ; preds = %block_.L_400d71
  %883 = add i64 %602, -48
  %884 = add i64 %638, 8
  store i64 %884, i64* %PC.i, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = add i32 %886, 1
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RAX.i484, align 8
  %889 = icmp eq i32 %886, -1
  %890 = icmp eq i32 %887, 0
  %891 = or i1 %889, %890
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %63, align 1
  %893 = and i32 %887, 255
  %894 = tail call i32 @llvm.ctpop.i32(i32 %893)
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  %897 = xor i8 %896, 1
  store i8 %897, i8* %64, align 1
  %898 = xor i32 %886, %887
  %899 = lshr i32 %898, 4
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  store i8 %901, i8* %65, align 1
  %902 = icmp eq i32 %887, 0
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %66, align 1
  %904 = lshr i32 %887, 31
  %905 = trunc i32 %904 to i8
  store i8 %905, i8* %67, align 1
  %906 = lshr i32 %886, 31
  %907 = xor i32 %904, %906
  %908 = add nuw nsw i32 %907, %904
  %909 = icmp eq i32 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %68, align 1
  %911 = add i64 %638, 14
  store i64 %911, i64* %PC.i, align 8
  store i32 %887, i32* %885, align 4
  %912 = load i64, i64* %PC.i, align 8
  %913 = add i64 %912, -188
  store i64 %913, i64* %3, align 8
  br label %block_.L_400d5e

block_.L_400e1f:                                  ; preds = %block_.L_400d5e
  %914 = add i64 %597, 7
  store i64 %914, i64* %PC.i, align 8
  store i32 0, i32* %564, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e26

block_.L_400e26:                                  ; preds = %block_.L_400f19, %block_.L_400e1f
  %915 = phi i64 [ %1371, %block_.L_400f19 ], [ %.pre6, %block_.L_400e1f ]
  %916 = load i64, i64* %RBP.i, align 8
  %917 = add i64 %916, -48
  %918 = add i64 %915, 3
  store i64 %918, i64* %PC.i, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  %921 = zext i32 %920 to i64
  store i64 %921, i64* %RAX.i484, align 8
  %922 = add i64 %916, -8
  %923 = add i64 %915, 6
  store i64 %923, i64* %PC.i, align 8
  %924 = inttoptr i64 %922 to i32*
  %925 = load i32, i32* %924, align 4
  %926 = add i32 %925, -1
  %927 = zext i32 %926 to i64
  store i64 %927, i64* %RCX.i474, align 8
  %928 = lshr i32 %926, 31
  %929 = sub i32 %920, %926
  %930 = icmp ult i32 %920, %926
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %63, align 1
  %932 = and i32 %929, 255
  %933 = tail call i32 @llvm.ctpop.i32(i32 %932)
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  %936 = xor i8 %935, 1
  store i8 %936, i8* %64, align 1
  %937 = xor i32 %926, %920
  %938 = xor i32 %937, %929
  %939 = lshr i32 %938, 4
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  store i8 %941, i8* %65, align 1
  %942 = icmp eq i32 %929, 0
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %66, align 1
  %944 = lshr i32 %929, 31
  %945 = trunc i32 %944 to i8
  store i8 %945, i8* %67, align 1
  %946 = lshr i32 %920, 31
  %947 = xor i32 %928, %946
  %948 = xor i32 %944, %946
  %949 = add nuw nsw i32 %948, %947
  %950 = icmp eq i32 %949, 2
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %68, align 1
  %952 = icmp ne i8 %945, 0
  %953 = xor i1 %952, %950
  %.v13 = select i1 %953, i64 17, i64 262
  %954 = add i64 %915, %.v13
  store i64 %954, i64* %3, align 8
  br i1 %953, label %block_400e37, label %block_.L_400f2c

block_400e37:                                     ; preds = %block_.L_400e26
  %955 = add i64 %916, -52
  %956 = add i64 %954, 7
  store i64 %956, i64* %PC.i, align 8
  %957 = inttoptr i64 %955 to i32*
  store i32 0, i32* %957, align 4
  %.pre7 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e3e

block_.L_400e3e:                                  ; preds = %block_400e4f, %block_400e37
  %958 = phi i64 [ %1340, %block_400e4f ], [ %.pre7, %block_400e37 ]
  %959 = load i64, i64* %RBP.i, align 8
  %960 = add i64 %959, -52
  %961 = add i64 %958, 3
  store i64 %961, i64* %PC.i, align 8
  %962 = inttoptr i64 %960 to i32*
  %963 = load i32, i32* %962, align 4
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RAX.i484, align 8
  %965 = add i64 %959, -12
  %966 = add i64 %958, 6
  store i64 %966, i64* %PC.i, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = add i32 %968, -1
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RCX.i474, align 8
  %971 = lshr i32 %969, 31
  %972 = sub i32 %963, %969
  %973 = icmp ult i32 %963, %969
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %63, align 1
  %975 = and i32 %972, 255
  %976 = tail call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %64, align 1
  %980 = xor i32 %969, %963
  %981 = xor i32 %980, %972
  %982 = lshr i32 %981, 4
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  store i8 %984, i8* %65, align 1
  %985 = icmp eq i32 %972, 0
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %66, align 1
  %987 = lshr i32 %972, 31
  %988 = trunc i32 %987 to i8
  store i8 %988, i8* %67, align 1
  %989 = lshr i32 %963, 31
  %990 = xor i32 %971, %989
  %991 = xor i32 %987, %989
  %992 = add nuw nsw i32 %991, %990
  %993 = icmp eq i32 %992, 2
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %68, align 1
  %995 = icmp ne i8 %988, 0
  %996 = xor i1 %995, %993
  %.v14 = select i1 %996, i64 17, i64 219
  %997 = add i64 %958, %.v14
  store i64 %997, i64* %3, align 8
  br i1 %996, label %block_400e4f, label %block_.L_400f19

block_400e4f:                                     ; preds = %block_.L_400e3e
  %998 = load i64, i64* bitcast (%G_0x801__rip__type* @G_0x801__rip_ to i64*), align 8
  %999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %998, i64* %999, align 1
  store double 0.000000e+00, double* %72, align 1
  %1000 = add i64 %959, -40
  %1001 = add i64 %997, 12
  store i64 %1001, i64* %PC.i, align 8
  %1002 = inttoptr i64 %1000 to i64*
  %1003 = load i64, i64* %1002, align 8
  store i64 %1003, i64* %RAX.i484, align 8
  %1004 = add i64 %959, -48
  %1005 = add i64 %997, 16
  store i64 %1005, i64* %PC.i, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = sext i32 %1007 to i64
  %1009 = mul nsw i64 %1008, 8000
  store i64 %1009, i64* %RCX.i474, align 8
  %1010 = lshr i64 %1009, 63
  %1011 = add i64 %1009, %1003
  store i64 %1011, i64* %RAX.i484, align 8
  %1012 = icmp ult i64 %1011, %1003
  %1013 = icmp ult i64 %1011, %1009
  %1014 = or i1 %1012, %1013
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %63, align 1
  %1016 = trunc i64 %1011 to i32
  %1017 = and i32 %1016, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %64, align 1
  %1022 = xor i64 %1003, %1011
  %1023 = lshr i64 %1022, 4
  %1024 = trunc i64 %1023 to i8
  %1025 = and i8 %1024, 1
  store i8 %1025, i8* %65, align 1
  %1026 = icmp eq i64 %1011, 0
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %66, align 1
  %1028 = lshr i64 %1011, 63
  %1029 = trunc i64 %1028 to i8
  store i8 %1029, i8* %67, align 1
  %1030 = lshr i64 %1003, 63
  %1031 = xor i64 %1028, %1030
  %1032 = xor i64 %1028, %1010
  %1033 = add nuw nsw i64 %1031, %1032
  %1034 = icmp eq i64 %1033, 2
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %68, align 1
  %1036 = add i64 %997, 30
  store i64 %1036, i64* %PC.i, align 8
  %1037 = load i32, i32* %962, align 4
  %1038 = sext i32 %1037 to i64
  store i64 %1038, i64* %RCX.i474, align 8
  %1039 = shl nsw i64 %1038, 3
  %1040 = add i64 %1039, %1011
  %1041 = add i64 %997, 35
  store i64 %1041, i64* %PC.i, align 8
  %1042 = inttoptr i64 %1040 to i64*
  %1043 = load i64, i64* %1042, align 8
  %1044 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %73, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1043, i64* %1044, align 1
  store double 0.000000e+00, double* %76, align 1
  %1045 = add i64 %959, -24
  %1046 = add i64 %997, 39
  store i64 %1046, i64* %PC.i, align 8
  %1047 = inttoptr i64 %1045 to i64*
  %1048 = load i64, i64* %1047, align 8
  store i64 %1048, i64* %RAX.i484, align 8
  %1049 = add i64 %997, 43
  store i64 %1049, i64* %PC.i, align 8
  %1050 = load i32, i32* %1006, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = mul nsw i64 %1051, 8000
  store i64 %1052, i64* %RCX.i474, align 8
  %1053 = lshr i64 %1052, 63
  %1054 = add i64 %1052, %1048
  store i64 %1054, i64* %RAX.i484, align 8
  %1055 = icmp ult i64 %1054, %1048
  %1056 = icmp ult i64 %1054, %1052
  %1057 = or i1 %1055, %1056
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %63, align 1
  %1059 = trunc i64 %1054 to i32
  %1060 = and i32 %1059, 255
  %1061 = tail call i32 @llvm.ctpop.i32(i32 %1060)
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = xor i8 %1063, 1
  store i8 %1064, i8* %64, align 1
  %1065 = xor i64 %1048, %1054
  %1066 = lshr i64 %1065, 4
  %1067 = trunc i64 %1066 to i8
  %1068 = and i8 %1067, 1
  store i8 %1068, i8* %65, align 1
  %1069 = icmp eq i64 %1054, 0
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %66, align 1
  %1071 = lshr i64 %1054, 63
  %1072 = trunc i64 %1071 to i8
  store i8 %1072, i8* %67, align 1
  %1073 = lshr i64 %1048, 63
  %1074 = xor i64 %1071, %1073
  %1075 = xor i64 %1071, %1053
  %1076 = add nuw nsw i64 %1074, %1075
  %1077 = icmp eq i64 %1076, 2
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %68, align 1
  %1079 = load i64, i64* %RBP.i, align 8
  %1080 = add i64 %1079, -52
  %1081 = add i64 %997, 56
  store i64 %1081, i64* %PC.i, align 8
  %1082 = inttoptr i64 %1080 to i32*
  %1083 = load i32, i32* %1082, align 4
  %1084 = add i32 %1083, 1
  %1085 = zext i32 %1084 to i64
  store i64 %1085, i64* %RDX.i358, align 8
  %1086 = icmp eq i32 %1083, -1
  %1087 = icmp eq i32 %1084, 0
  %1088 = or i1 %1086, %1087
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %63, align 1
  %1090 = and i32 %1084, 255
  %1091 = tail call i32 @llvm.ctpop.i32(i32 %1090)
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = xor i8 %1093, 1
  store i8 %1094, i8* %64, align 1
  %1095 = xor i32 %1083, %1084
  %1096 = lshr i32 %1095, 4
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  store i8 %1098, i8* %65, align 1
  %1099 = icmp eq i32 %1084, 0
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %66, align 1
  %1101 = lshr i32 %1084, 31
  %1102 = trunc i32 %1101 to i8
  store i8 %1102, i8* %67, align 1
  %1103 = lshr i32 %1083, 31
  %1104 = xor i32 %1101, %1103
  %1105 = add nuw nsw i32 %1104, %1101
  %1106 = icmp eq i32 %1105, 2
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %68, align 1
  %1108 = sext i32 %1084 to i64
  store i64 %1108, i64* %RCX.i474, align 8
  %1109 = shl nsw i64 %1108, 3
  %1110 = add i64 %1109, %1054
  %1111 = add i64 %997, 67
  store i64 %1111, i64* %PC.i, align 8
  %1112 = inttoptr i64 %1110 to double*
  %1113 = load double, double* %1112, align 8
  store double %1113, double* %78, align 1
  store double 0.000000e+00, double* %80, align 1
  %1114 = add i64 %1079, -24
  %1115 = add i64 %997, 71
  store i64 %1115, i64* %PC.i, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %RAX.i484, align 8
  %1118 = add i64 %1079, -48
  %1119 = add i64 %997, 75
  store i64 %1119, i64* %PC.i, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = sext i32 %1121 to i64
  %1123 = mul nsw i64 %1122, 8000
  store i64 %1123, i64* %RCX.i474, align 8
  %1124 = lshr i64 %1123, 63
  %1125 = add i64 %1123, %1117
  store i64 %1125, i64* %RAX.i484, align 8
  %1126 = icmp ult i64 %1125, %1117
  %1127 = icmp ult i64 %1125, %1123
  %1128 = or i1 %1126, %1127
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %63, align 1
  %1130 = trunc i64 %1125 to i32
  %1131 = and i32 %1130, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %64, align 1
  %1136 = xor i64 %1117, %1125
  %1137 = lshr i64 %1136, 4
  %1138 = trunc i64 %1137 to i8
  %1139 = and i8 %1138, 1
  store i8 %1139, i8* %65, align 1
  %1140 = icmp eq i64 %1125, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %66, align 1
  %1142 = lshr i64 %1125, 63
  %1143 = trunc i64 %1142 to i8
  store i8 %1143, i8* %67, align 1
  %1144 = lshr i64 %1117, 63
  %1145 = xor i64 %1142, %1144
  %1146 = xor i64 %1142, %1124
  %1147 = add nuw nsw i64 %1145, %1146
  %1148 = icmp eq i64 %1147, 2
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %68, align 1
  %1150 = load i64, i64* %RBP.i, align 8
  %1151 = add i64 %1150, -52
  %1152 = add i64 %997, 89
  store i64 %1152, i64* %PC.i, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = sext i32 %1154 to i64
  store i64 %1155, i64* %RCX.i474, align 8
  %1156 = shl nsw i64 %1155, 3
  %1157 = add i64 %1156, %1125
  %1158 = add i64 %997, 94
  store i64 %1158, i64* %PC.i, align 8
  %1159 = inttoptr i64 %1157 to double*
  %1160 = load double, double* %1159, align 8
  %1161 = fsub double %1113, %1160
  store double %1161, double* %78, align 1
  store i64 0, i64* %79, align 1
  %1162 = add i64 %1150, -32
  %1163 = add i64 %997, 98
  store i64 %1163, i64* %PC.i, align 8
  %1164 = inttoptr i64 %1162 to i64*
  %1165 = load i64, i64* %1164, align 8
  store i64 %1165, i64* %RAX.i484, align 8
  %1166 = add i64 %1150, -48
  %1167 = add i64 %997, 101
  store i64 %1167, i64* %PC.i, align 8
  %1168 = inttoptr i64 %1166 to i32*
  %1169 = load i32, i32* %1168, align 4
  %1170 = add i32 %1169, 1
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RDX.i358, align 8
  %1172 = sext i32 %1170 to i64
  %1173 = mul nsw i64 %1172, 8000
  store i64 %1173, i64* %RCX.i474, align 8
  %1174 = lshr i64 %1173, 63
  %1175 = add i64 %1173, %1165
  store i64 %1175, i64* %RAX.i484, align 8
  %1176 = icmp ult i64 %1175, %1165
  %1177 = icmp ult i64 %1175, %1173
  %1178 = or i1 %1176, %1177
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %63, align 1
  %1180 = trunc i64 %1175 to i32
  %1181 = and i32 %1180, 255
  %1182 = tail call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  store i8 %1185, i8* %64, align 1
  %1186 = xor i64 %1165, %1175
  %1187 = lshr i64 %1186, 4
  %1188 = trunc i64 %1187 to i8
  %1189 = and i8 %1188, 1
  store i8 %1189, i8* %65, align 1
  %1190 = icmp eq i64 %1175, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %66, align 1
  %1192 = lshr i64 %1175, 63
  %1193 = trunc i64 %1192 to i8
  store i8 %1193, i8* %67, align 1
  %1194 = lshr i64 %1165, 63
  %1195 = xor i64 %1192, %1194
  %1196 = xor i64 %1192, %1174
  %1197 = add nuw nsw i64 %1195, %1196
  %1198 = icmp eq i64 %1197, 2
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %68, align 1
  %1200 = load i64, i64* %RBP.i, align 8
  %1201 = add i64 %1200, -52
  %1202 = add i64 %997, 121
  store i64 %1202, i64* %PC.i, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = sext i32 %1204 to i64
  store i64 %1205, i64* %RCX.i474, align 8
  %1206 = shl nsw i64 %1205, 3
  %1207 = add i64 %1206, %1175
  %1208 = add i64 %997, 126
  store i64 %1208, i64* %PC.i, align 8
  %1209 = load double, double* %78, align 1
  %1210 = inttoptr i64 %1207 to double*
  %1211 = load double, double* %1210, align 8
  %1212 = fadd double %1209, %1211
  store double %1212, double* %78, align 1
  %1213 = add i64 %1200, -32
  %1214 = add i64 %997, 130
  store i64 %1214, i64* %PC.i, align 8
  %1215 = inttoptr i64 %1213 to i64*
  %1216 = load i64, i64* %1215, align 8
  store i64 %1216, i64* %RAX.i484, align 8
  %1217 = add i64 %1200, -48
  %1218 = add i64 %997, 134
  store i64 %1218, i64* %PC.i, align 8
  %1219 = inttoptr i64 %1217 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = sext i32 %1220 to i64
  %1222 = mul nsw i64 %1221, 8000
  store i64 %1222, i64* %RCX.i474, align 8
  %1223 = lshr i64 %1222, 63
  %1224 = add i64 %1222, %1216
  store i64 %1224, i64* %RAX.i484, align 8
  %1225 = icmp ult i64 %1224, %1216
  %1226 = icmp ult i64 %1224, %1222
  %1227 = or i1 %1225, %1226
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %63, align 1
  %1229 = trunc i64 %1224 to i32
  %1230 = and i32 %1229, 255
  %1231 = tail call i32 @llvm.ctpop.i32(i32 %1230)
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = xor i8 %1233, 1
  store i8 %1234, i8* %64, align 1
  %1235 = xor i64 %1216, %1224
  %1236 = lshr i64 %1235, 4
  %1237 = trunc i64 %1236 to i8
  %1238 = and i8 %1237, 1
  store i8 %1238, i8* %65, align 1
  %1239 = icmp eq i64 %1224, 0
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %66, align 1
  %1241 = lshr i64 %1224, 63
  %1242 = trunc i64 %1241 to i8
  store i8 %1242, i8* %67, align 1
  %1243 = lshr i64 %1216, 63
  %1244 = xor i64 %1241, %1243
  %1245 = xor i64 %1241, %1223
  %1246 = add nuw nsw i64 %1244, %1245
  %1247 = icmp eq i64 %1246, 2
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %68, align 1
  %1249 = add i64 %997, 148
  store i64 %1249, i64* %PC.i, align 8
  %1250 = load i32, i32* %1203, align 4
  %1251 = sext i32 %1250 to i64
  store i64 %1251, i64* %RCX.i474, align 8
  %1252 = shl nsw i64 %1251, 3
  %1253 = add i64 %1252, %1224
  %1254 = add i64 %997, 153
  store i64 %1254, i64* %PC.i, align 8
  %1255 = inttoptr i64 %1253 to double*
  %1256 = load double, double* %1255, align 8
  %1257 = fsub double %1212, %1256
  store double %1257, double* %78, align 1
  %1258 = load double, double* %70, align 1
  %1259 = fmul double %1258, %1257
  store double %1259, double* %70, align 1
  %1260 = load double, double* %74, align 1
  %1261 = fsub double %1260, %1259
  store double %1261, double* %74, align 1
  %1262 = load i64, i64* %RBP.i, align 8
  %1263 = add i64 %1262, -40
  %1264 = add i64 %997, 165
  store i64 %1264, i64* %PC.i, align 8
  %1265 = inttoptr i64 %1263 to i64*
  %1266 = load i64, i64* %1265, align 8
  store i64 %1266, i64* %RAX.i484, align 8
  %1267 = add i64 %1262, -48
  %1268 = add i64 %997, 169
  store i64 %1268, i64* %PC.i, align 8
  %1269 = inttoptr i64 %1267 to i32*
  %1270 = load i32, i32* %1269, align 4
  %1271 = sext i32 %1270 to i64
  %1272 = mul nsw i64 %1271, 8000
  store i64 %1272, i64* %RCX.i474, align 8
  %1273 = lshr i64 %1272, 63
  %1274 = add i64 %1272, %1266
  store i64 %1274, i64* %RAX.i484, align 8
  %1275 = icmp ult i64 %1274, %1266
  %1276 = icmp ult i64 %1274, %1272
  %1277 = or i1 %1275, %1276
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %63, align 1
  %1279 = trunc i64 %1274 to i32
  %1280 = and i32 %1279, 255
  %1281 = tail call i32 @llvm.ctpop.i32(i32 %1280)
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  store i8 %1284, i8* %64, align 1
  %1285 = xor i64 %1266, %1274
  %1286 = lshr i64 %1285, 4
  %1287 = trunc i64 %1286 to i8
  %1288 = and i8 %1287, 1
  store i8 %1288, i8* %65, align 1
  %1289 = icmp eq i64 %1274, 0
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %66, align 1
  %1291 = lshr i64 %1274, 63
  %1292 = trunc i64 %1291 to i8
  store i8 %1292, i8* %67, align 1
  %1293 = lshr i64 %1266, 63
  %1294 = xor i64 %1291, %1293
  %1295 = xor i64 %1291, %1273
  %1296 = add nuw nsw i64 %1294, %1295
  %1297 = icmp eq i64 %1296, 2
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %68, align 1
  %1299 = add i64 %1262, -52
  %1300 = add i64 %997, 183
  store i64 %1300, i64* %PC.i, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = sext i32 %1302 to i64
  store i64 %1303, i64* %RCX.i474, align 8
  %1304 = shl nsw i64 %1303, 3
  %1305 = add i64 %1304, %1274
  %1306 = add i64 %997, 188
  store i64 %1306, i64* %PC.i, align 8
  %1307 = inttoptr i64 %1305 to double*
  store double %1261, double* %1307, align 8
  %1308 = load i64, i64* %RBP.i, align 8
  %1309 = add i64 %1308, -52
  %1310 = load i64, i64* %PC.i, align 8
  %1311 = add i64 %1310, 3
  store i64 %1311, i64* %PC.i, align 8
  %1312 = inttoptr i64 %1309 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = add i32 %1313, 1
  %1315 = zext i32 %1314 to i64
  store i64 %1315, i64* %RAX.i484, align 8
  %1316 = icmp eq i32 %1313, -1
  %1317 = icmp eq i32 %1314, 0
  %1318 = or i1 %1316, %1317
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %63, align 1
  %1320 = and i32 %1314, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %64, align 1
  %1325 = xor i32 %1313, %1314
  %1326 = lshr i32 %1325, 4
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  store i8 %1328, i8* %65, align 1
  %1329 = icmp eq i32 %1314, 0
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %66, align 1
  %1331 = lshr i32 %1314, 31
  %1332 = trunc i32 %1331 to i8
  store i8 %1332, i8* %67, align 1
  %1333 = lshr i32 %1313, 31
  %1334 = xor i32 %1331, %1333
  %1335 = add nuw nsw i32 %1334, %1331
  %1336 = icmp eq i32 %1335, 2
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %68, align 1
  %1338 = add i64 %1310, 9
  store i64 %1338, i64* %PC.i, align 8
  store i32 %1314, i32* %1312, align 4
  %1339 = load i64, i64* %PC.i, align 8
  %1340 = add i64 %1339, -214
  store i64 %1340, i64* %3, align 8
  br label %block_.L_400e3e

block_.L_400f19:                                  ; preds = %block_.L_400e3e
  %1341 = add i64 %959, -48
  %1342 = add i64 %997, 8
  store i64 %1342, i64* %PC.i, align 8
  %1343 = inttoptr i64 %1341 to i32*
  %1344 = load i32, i32* %1343, align 4
  %1345 = add i32 %1344, 1
  %1346 = zext i32 %1345 to i64
  store i64 %1346, i64* %RAX.i484, align 8
  %1347 = icmp eq i32 %1344, -1
  %1348 = icmp eq i32 %1345, 0
  %1349 = or i1 %1347, %1348
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %63, align 1
  %1351 = and i32 %1345, 255
  %1352 = tail call i32 @llvm.ctpop.i32(i32 %1351)
  %1353 = trunc i32 %1352 to i8
  %1354 = and i8 %1353, 1
  %1355 = xor i8 %1354, 1
  store i8 %1355, i8* %64, align 1
  %1356 = xor i32 %1344, %1345
  %1357 = lshr i32 %1356, 4
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  store i8 %1359, i8* %65, align 1
  %1360 = icmp eq i32 %1345, 0
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %66, align 1
  %1362 = lshr i32 %1345, 31
  %1363 = trunc i32 %1362 to i8
  store i8 %1363, i8* %67, align 1
  %1364 = lshr i32 %1344, 31
  %1365 = xor i32 %1362, %1364
  %1366 = add nuw nsw i32 %1365, %1362
  %1367 = icmp eq i32 %1366, 2
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %68, align 1
  %1369 = add i64 %997, 14
  store i64 %1369, i64* %PC.i, align 8
  store i32 %1345, i32* %1343, align 4
  %1370 = load i64, i64* %PC.i, align 8
  %1371 = add i64 %1370, -257
  store i64 %1371, i64* %3, align 8
  br label %block_.L_400e26

block_.L_400f2c:                                  ; preds = %block_.L_400e26
  %1372 = add i64 %916, -44
  %1373 = add i64 %954, 8
  store i64 %1373, i64* %PC.i, align 8
  %1374 = inttoptr i64 %1372 to i32*
  %1375 = load i32, i32* %1374, align 4
  %1376 = add i32 %1375, 1
  %1377 = zext i32 %1376 to i64
  store i64 %1377, i64* %RAX.i484, align 8
  %1378 = icmp eq i32 %1375, -1
  %1379 = icmp eq i32 %1376, 0
  %1380 = or i1 %1378, %1379
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %63, align 1
  %1382 = and i32 %1376, 255
  %1383 = tail call i32 @llvm.ctpop.i32(i32 %1382)
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = xor i8 %1385, 1
  store i8 %1386, i8* %64, align 1
  %1387 = xor i32 %1375, %1376
  %1388 = lshr i32 %1387, 4
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  store i8 %1390, i8* %65, align 1
  %1391 = icmp eq i32 %1376, 0
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %66, align 1
  %1393 = lshr i32 %1376, 31
  %1394 = trunc i32 %1393 to i8
  store i8 %1394, i8* %67, align 1
  %1395 = lshr i32 %1375, 31
  %1396 = xor i32 %1393, %1395
  %1397 = add nuw nsw i32 %1396, %1393
  %1398 = icmp eq i32 %1397, 2
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %68, align 1
  %1400 = add i64 %954, 14
  store i64 %1400, i64* %PC.i, align 8
  store i32 %1376, i32* %1374, align 4
  %1401 = load i64, i64* %PC.i, align 8
  %1402 = add i64 %1401, -754
  store i64 %1402, i64* %3, align 8
  br label %block_.L_400c48

block_.L_400f3f:                                  ; preds = %block_.L_400c48
  %1403 = add i64 %118, 1
  store i64 %1403, i64* %PC.i, align 8
  %1404 = load i64, i64* %6, align 8
  %1405 = add i64 %1404, 8
  %1406 = inttoptr i64 %1404 to i64*
  %1407 = load i64, i64* %1406, align 8
  store i64 %1407, i64* %RBP.i, align 8
  store i64 %1405, i64* %6, align 8
  %1408 = add i64 %118, 2
  store i64 %1408, i64* %PC.i, align 8
  %1409 = inttoptr i64 %1405 to i64*
  %1410 = load i64, i64* %1409, align 8
  store i64 %1410, i64* %3, align 8
  %1411 = add i64 %1404, 16
  store i64 %1411, i64* %6, align 8
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

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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

define %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400f3f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400c8f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
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

define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
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

define %struct.Memory* @routine_jmpq_.L_400c5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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

define %struct.Memory* @routine_jge_.L_400d57(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400d44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_0x9a3__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x9a3__rip__type* @G_0x9a3__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x1f40___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 8000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
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

define %struct.Memory* @routine_addq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
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

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_mulsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ca9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d49(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_jmpq_.L_400c96(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400e1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400e0c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_0x8db__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x8db__rip__type* @G_0x8db__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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

define %struct.Memory* @routine_jmpq_.L_400d71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e11(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d5e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400f2c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400f19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_0x801__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x801__rip__type* @G_0x801__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_400e3e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f31(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_jmpq_.L_400c48(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
