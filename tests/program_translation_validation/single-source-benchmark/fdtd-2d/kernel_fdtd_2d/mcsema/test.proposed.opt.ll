; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x801__rip__4197975__type = type <{ [16 x i8] }>
%G_0x8db__rip__4197765__type = type <{ [16 x i8] }>
%G_0x9a3__rip__4197565__type = type <{ [16 x i8] }>
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
@G_0x801__rip__4197975_ = local_unnamed_addr global %G_0x801__rip__4197975__type zeroinitializer
@G_0x8db__rip__4197765_ = local_unnamed_addr global %G_0x8db__rip__4197765__type zeroinitializer
@G_0x9a3__rip__4197565_ = local_unnamed_addr global %G_0x9a3__rip__4197565__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_fdtd_2d(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 8
  %12 = add i64 %10, 7
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i484, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %15 to i32*
  %16 = add i64 %7, -12
  %17 = load i32, i32* %EDI.i, align 4
  %18 = add i64 %10, 10
  store i64 %18, i64* %3, align 8
  %19 = inttoptr i64 %16 to i32*
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %20 to i32*
  %21 = load i64, i64* %RBP.i, align 8
  %22 = add i64 %21, -8
  %23 = load i32, i32* %ESI.i, align 4
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 3
  store i64 %25, i64* %3, align 8
  %26 = inttoptr i64 %22 to i32*
  store i32 %23, i32* %26, align 4
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i477 = bitcast %union.anon* %27 to i32*
  %28 = load i64, i64* %RBP.i, align 8
  %29 = add i64 %28, -12
  %30 = load i32, i32* %EDX.i477, align 4
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 3
  store i64 %32, i64* %3, align 8
  %33 = inttoptr i64 %29 to i32*
  store i32 %30, i32* %33, align 4
  %RCX.i474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %34 = load i64, i64* %RBP.i, align 8
  %35 = add i64 %34, -24
  %36 = load i64, i64* %RCX.i474, align 8
  %37 = load i64, i64* %3, align 8
  %38 = add i64 %37, 4
  store i64 %38, i64* %3, align 8
  %39 = inttoptr i64 %35 to i64*
  store i64 %36, i64* %39, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %40 = load i64, i64* %RBP.i, align 8
  %41 = add i64 %40, -32
  %42 = load i64, i64* %R8.i, align 8
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %45, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -40
  %48 = load i64, i64* %R9.i, align 8
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -44
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 7
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %53 to i32*
  store i32 0, i32* %56, align 4
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -64
  %59 = load i64, i64* %RAX.i484, align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
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
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400c48

block_.L_400c48:                                  ; preds = %block_.L_400f2c, %entry
  %81 = phi i64 [ %1377, %block_.L_400f2c ], [ %.pre, %entry ]
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -44
  %84 = add i64 %81, 3
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %RAX.i484, align 8
  %88 = add i64 %82, -4
  %89 = add i64 %81, 6
  store i64 %89, i64* %3, align 8
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
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  store i32 0, i32* %121, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400c5b

block_.L_400c5b:                                  ; preds = %block_400c67, %block_400c54
  %122 = phi i64 [ %217, %block_400c67 ], [ %.pre1, %block_400c54 ]
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -52
  %125 = add i64 %122, 3
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RAX.i484, align 8
  %129 = add i64 %123, -12
  %130 = add i64 %122, 6
  store i64 %130, i64* %3, align 8
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
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %RAX.i484, align 8
  %164 = add i64 %123, -44
  %165 = add i64 %159, 8
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RCX.i474, align 8
  %169 = shl nsw i64 %168, 3
  %170 = add i64 %169, %163
  %171 = add i64 %159, 13
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i64*
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %173, i64* %174, align 1
  store double 0.000000e+00, double* %72, align 1
  %175 = add i64 %123, -32
  %176 = add i64 %159, 17
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %RAX.i484, align 8
  %179 = add i64 %159, 21
  store i64 %179, i64* %3, align 8
  %180 = load i32, i32* %126, align 4
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %RCX.i474, align 8
  %182 = shl nsw i64 %181, 3
  %183 = add i64 %182, %178
  %184 = add i64 %159, 26
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i64*
  store i64 %173, i64* %185, align 8
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -52
  %188 = load i64, i64* %3, align 8
  %189 = add i64 %188, 3
  store i64 %189, i64* %3, align 8
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
  %207 = zext i1 %195 to i8
  store i8 %207, i8* %66, align 1
  %208 = lshr i32 %192, 31
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %67, align 1
  %210 = lshr i32 %191, 31
  %211 = xor i32 %208, %210
  %212 = add nuw nsw i32 %211, %208
  %213 = icmp eq i32 %212, 2
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %68, align 1
  %215 = add i64 %188, 9
  store i64 %215, i64* %3, align 8
  store i32 %192, i32* %190, align 4
  %216 = load i64, i64* %3, align 8
  %217 = add i64 %216, -47
  store i64 %217, i64* %3, align 8
  br label %block_.L_400c5b

block_.L_400c8f:                                  ; preds = %block_.L_400c5b
  %218 = add i64 %123, -48
  %219 = add i64 %159, 7
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i32*
  store i32 1, i32* %220, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400c96

block_.L_400c96:                                  ; preds = %block_.L_400d44, %block_.L_400c8f
  %221 = phi i64 [ %550, %block_.L_400d44 ], [ %.pre2, %block_.L_400c8f ]
  %222 = load i64, i64* %RBP.i, align 8
  %223 = add i64 %222, -48
  %224 = add i64 %221, 3
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to i32*
  %226 = load i32, i32* %225, align 4
  %227 = zext i32 %226 to i64
  store i64 %227, i64* %RAX.i484, align 8
  %228 = add i64 %222, -8
  %229 = add i64 %221, 6
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = sub i32 %226, %231
  %233 = icmp ult i32 %226, %231
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %63, align 1
  %235 = and i32 %232, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235)
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %64, align 1
  %240 = xor i32 %231, %226
  %241 = xor i32 %240, %232
  %242 = lshr i32 %241, 4
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %65, align 1
  %245 = icmp eq i32 %232, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %66, align 1
  %247 = lshr i32 %232, 31
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %67, align 1
  %249 = lshr i32 %226, 31
  %250 = lshr i32 %231, 31
  %251 = xor i32 %250, %249
  %252 = xor i32 %247, %249
  %253 = add nuw nsw i32 %252, %251
  %254 = icmp eq i32 %253, 2
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %68, align 1
  %256 = icmp ne i8 %248, 0
  %257 = xor i1 %256, %254
  %.v9 = select i1 %257, i64 12, i64 193
  %258 = add i64 %221, %.v9
  store i64 %258, i64* %3, align 8
  br i1 %257, label %block_400ca2, label %block_.L_400d57

block_400ca2:                                     ; preds = %block_.L_400c96
  %259 = add i64 %222, -52
  %260 = add i64 %258, 7
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  store i32 0, i32* %261, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400ca9

block_.L_400ca9:                                  ; preds = %block_400cb5, %block_400ca2
  %262 = phi i64 [ %520, %block_400cb5 ], [ %.pre3, %block_400ca2 ]
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -52
  %265 = add i64 %262, 3
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = zext i32 %267 to i64
  store i64 %268, i64* %RAX.i484, align 8
  %269 = add i64 %263, -12
  %270 = add i64 %262, 6
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = sub i32 %267, %272
  %274 = icmp ult i32 %267, %272
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %63, align 1
  %276 = and i32 %273, 255
  %277 = tail call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  store i8 %280, i8* %64, align 1
  %281 = xor i32 %272, %267
  %282 = xor i32 %281, %273
  %283 = lshr i32 %282, 4
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  store i8 %285, i8* %65, align 1
  %286 = icmp eq i32 %273, 0
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %66, align 1
  %288 = lshr i32 %273, 31
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %67, align 1
  %290 = lshr i32 %267, 31
  %291 = lshr i32 %272, 31
  %292 = xor i32 %291, %290
  %293 = xor i32 %288, %290
  %294 = add nuw nsw i32 %293, %292
  %295 = icmp eq i32 %294, 2
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %68, align 1
  %297 = icmp ne i8 %289, 0
  %298 = xor i1 %297, %295
  %.v10 = select i1 %298, i64 12, i64 155
  %299 = add i64 %262, %.v10
  store i64 %299, i64* %3, align 8
  br i1 %298, label %block_400cb5, label %block_.L_400d44

block_400cb5:                                     ; preds = %block_.L_400ca9
  %300 = load i64, i64* bitcast (%G_0x9a3__rip__4197565__type* @G_0x9a3__rip__4197565_ to i64*), align 8
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %300, i64* %301, align 1
  store double 0.000000e+00, double* %72, align 1
  %302 = add i64 %263, -32
  %303 = add i64 %299, 12
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i64*
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %RAX.i484, align 8
  %306 = add i64 %263, -48
  %307 = add i64 %299, 16
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  %311 = mul nsw i64 %310, 8000
  store i64 %311, i64* %RCX.i474, align 8
  %312 = lshr i64 %311, 63
  %313 = add i64 %311, %305
  store i64 %313, i64* %RAX.i484, align 8
  %314 = icmp ult i64 %313, %305
  %315 = icmp ult i64 %313, %311
  %316 = or i1 %314, %315
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %63, align 1
  %318 = trunc i64 %313 to i32
  %319 = and i32 %318, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %64, align 1
  %324 = xor i64 %305, %313
  %325 = lshr i64 %324, 4
  %326 = trunc i64 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %65, align 1
  %328 = icmp eq i64 %313, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %66, align 1
  %330 = lshr i64 %313, 63
  %331 = trunc i64 %330 to i8
  store i8 %331, i8* %67, align 1
  %332 = lshr i64 %305, 63
  %333 = xor i64 %330, %332
  %334 = xor i64 %330, %312
  %335 = add nuw nsw i64 %333, %334
  %336 = icmp eq i64 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %68, align 1
  %338 = add i64 %299, 30
  store i64 %338, i64* %3, align 8
  %339 = load i32, i32* %266, align 4
  %340 = sext i32 %339 to i64
  store i64 %340, i64* %RCX.i474, align 8
  %341 = shl nsw i64 %340, 3
  %342 = add i64 %341, %313
  %343 = add i64 %299, 35
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to i64*
  %345 = load i64, i64* %344, align 8
  %346 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %73, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %345, i64* %346, align 1
  store double 0.000000e+00, double* %76, align 1
  %347 = add i64 %263, -40
  %348 = add i64 %299, 39
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i64*
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %RAX.i484, align 8
  %351 = add i64 %299, 43
  store i64 %351, i64* %3, align 8
  %352 = load i32, i32* %308, align 4
  %353 = sext i32 %352 to i64
  %354 = mul nsw i64 %353, 8000
  store i64 %354, i64* %RCX.i474, align 8
  %355 = lshr i64 %354, 63
  %356 = add i64 %354, %350
  store i64 %356, i64* %RAX.i484, align 8
  %357 = icmp ult i64 %356, %350
  %358 = icmp ult i64 %356, %354
  %359 = or i1 %357, %358
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %63, align 1
  %361 = trunc i64 %356 to i32
  %362 = and i32 %361, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %64, align 1
  %367 = xor i64 %350, %356
  %368 = lshr i64 %367, 4
  %369 = trunc i64 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %65, align 1
  %371 = icmp eq i64 %356, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %66, align 1
  %373 = lshr i64 %356, 63
  %374 = trunc i64 %373 to i8
  store i8 %374, i8* %67, align 1
  %375 = lshr i64 %350, 63
  %376 = xor i64 %373, %375
  %377 = xor i64 %373, %355
  %378 = add nuw nsw i64 %376, %377
  %379 = icmp eq i64 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %68, align 1
  %381 = load i64, i64* %RBP.i, align 8
  %382 = add i64 %381, -52
  %383 = add i64 %299, 57
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  store i64 %386, i64* %RCX.i474, align 8
  %387 = shl nsw i64 %386, 3
  %388 = add i64 %387, %356
  %389 = add i64 %299, 62
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i64*
  %391 = load i64, i64* %390, align 8
  %392 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %77, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %391, i64* %392, align 1
  store double 0.000000e+00, double* %80, align 1
  %393 = add i64 %381, -40
  %394 = add i64 %299, 66
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %RAX.i484, align 8
  %397 = add i64 %381, -48
  %398 = add i64 %299, 69
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = add i32 %400, -1
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RDX.i358, align 8
  %403 = sext i32 %401 to i64
  %404 = mul nsw i64 %403, 8000
  store i64 %404, i64* %RCX.i474, align 8
  %405 = lshr i64 %404, 63
  %406 = add i64 %404, %396
  store i64 %406, i64* %RAX.i484, align 8
  %407 = icmp ult i64 %406, %396
  %408 = icmp ult i64 %406, %404
  %409 = or i1 %407, %408
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %63, align 1
  %411 = trunc i64 %406 to i32
  %412 = and i32 %411, 255
  %413 = tail call i32 @llvm.ctpop.i32(i32 %412)
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  store i8 %416, i8* %64, align 1
  %417 = xor i64 %396, %406
  %418 = lshr i64 %417, 4
  %419 = trunc i64 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %65, align 1
  %421 = icmp eq i64 %406, 0
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %66, align 1
  %423 = lshr i64 %406, 63
  %424 = trunc i64 %423 to i8
  store i8 %424, i8* %67, align 1
  %425 = lshr i64 %396, 63
  %426 = xor i64 %423, %425
  %427 = xor i64 %423, %405
  %428 = add nuw nsw i64 %426, %427
  %429 = icmp eq i64 %428, 2
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %68, align 1
  %431 = add i64 %299, 89
  store i64 %431, i64* %3, align 8
  %432 = load i32, i32* %384, align 4
  %433 = sext i32 %432 to i64
  store i64 %433, i64* %RCX.i474, align 8
  %434 = shl nsw i64 %433, 3
  %435 = add i64 %434, %406
  %436 = add i64 %299, 94
  store i64 %436, i64* %3, align 8
  %437 = bitcast i64 %391 to double
  %438 = inttoptr i64 %435 to double*
  %439 = load double, double* %438, align 8
  %440 = fsub double %437, %439
  store double %440, double* %78, align 1
  %441 = load double, double* %70, align 1
  %442 = fmul double %441, %440
  store double %442, double* %70, align 1
  %443 = load double, double* %74, align 1
  %444 = fsub double %443, %442
  store double %444, double* %74, align 1
  %445 = add i64 %381, -32
  %446 = add i64 %299, 106
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RAX.i484, align 8
  %449 = add i64 %299, 110
  store i64 %449, i64* %3, align 8
  %450 = load i32, i32* %399, align 4
  %451 = sext i32 %450 to i64
  %452 = mul nsw i64 %451, 8000
  store i64 %452, i64* %RCX.i474, align 8
  %453 = lshr i64 %452, 63
  %454 = add i64 %452, %448
  store i64 %454, i64* %RAX.i484, align 8
  %455 = icmp ult i64 %454, %448
  %456 = icmp ult i64 %454, %452
  %457 = or i1 %455, %456
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %63, align 1
  %459 = trunc i64 %454 to i32
  %460 = and i32 %459, 255
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460)
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %64, align 1
  %465 = xor i64 %448, %454
  %466 = lshr i64 %465, 4
  %467 = trunc i64 %466 to i8
  %468 = and i8 %467, 1
  store i8 %468, i8* %65, align 1
  %469 = icmp eq i64 %454, 0
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %66, align 1
  %471 = lshr i64 %454, 63
  %472 = trunc i64 %471 to i8
  store i8 %472, i8* %67, align 1
  %473 = lshr i64 %448, 63
  %474 = xor i64 %471, %473
  %475 = xor i64 %471, %453
  %476 = add nuw nsw i64 %474, %475
  %477 = icmp eq i64 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %68, align 1
  %479 = load i64, i64* %RBP.i, align 8
  %480 = add i64 %479, -52
  %481 = add i64 %299, 124
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  store i64 %484, i64* %RCX.i474, align 8
  %485 = shl nsw i64 %484, 3
  %486 = add i64 %485, %454
  %487 = add i64 %299, 129
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to double*
  store double %444, double* %488, align 8
  %489 = load i64, i64* %RBP.i, align 8
  %490 = add i64 %489, -52
  %491 = load i64, i64* %3, align 8
  %492 = add i64 %491, 3
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %490 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = add i32 %494, 1
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %RAX.i484, align 8
  %497 = icmp eq i32 %494, -1
  %498 = icmp eq i32 %495, 0
  %499 = or i1 %497, %498
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %63, align 1
  %501 = and i32 %495, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501)
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %64, align 1
  %506 = xor i32 %494, %495
  %507 = lshr i32 %506, 4
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  store i8 %509, i8* %65, align 1
  %510 = zext i1 %498 to i8
  store i8 %510, i8* %66, align 1
  %511 = lshr i32 %495, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %67, align 1
  %513 = lshr i32 %494, 31
  %514 = xor i32 %511, %513
  %515 = add nuw nsw i32 %514, %511
  %516 = icmp eq i32 %515, 2
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %68, align 1
  %518 = add i64 %491, 9
  store i64 %518, i64* %3, align 8
  store i32 %495, i32* %493, align 4
  %519 = load i64, i64* %3, align 8
  %520 = add i64 %519, -150
  store i64 %520, i64* %3, align 8
  br label %block_.L_400ca9

block_.L_400d44:                                  ; preds = %block_.L_400ca9
  %521 = add i64 %263, -48
  %522 = add i64 %299, 8
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = add i32 %524, 1
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RAX.i484, align 8
  %527 = icmp eq i32 %524, -1
  %528 = icmp eq i32 %525, 0
  %529 = or i1 %527, %528
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %63, align 1
  %531 = and i32 %525, 255
  %532 = tail call i32 @llvm.ctpop.i32(i32 %531)
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = xor i8 %534, 1
  store i8 %535, i8* %64, align 1
  %536 = xor i32 %524, %525
  %537 = lshr i32 %536, 4
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  store i8 %539, i8* %65, align 1
  %540 = zext i1 %528 to i8
  store i8 %540, i8* %66, align 1
  %541 = lshr i32 %525, 31
  %542 = trunc i32 %541 to i8
  store i8 %542, i8* %67, align 1
  %543 = lshr i32 %524, 31
  %544 = xor i32 %541, %543
  %545 = add nuw nsw i32 %544, %541
  %546 = icmp eq i32 %545, 2
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %68, align 1
  %548 = add i64 %299, 14
  store i64 %548, i64* %3, align 8
  store i32 %525, i32* %523, align 4
  %549 = load i64, i64* %3, align 8
  %550 = add i64 %549, -188
  store i64 %550, i64* %3, align 8
  br label %block_.L_400c96

block_.L_400d57:                                  ; preds = %block_.L_400c96
  %551 = add i64 %258, 7
  store i64 %551, i64* %3, align 8
  store i32 0, i32* %225, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400d5e

block_.L_400d5e:                                  ; preds = %block_.L_400e0c, %block_.L_400d57
  %552 = phi i64 [ %903, %block_.L_400e0c ], [ %.pre4, %block_.L_400d57 ]
  %553 = load i64, i64* %RBP.i, align 8
  %554 = add i64 %553, -48
  %555 = add i64 %552, 3
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RAX.i484, align 8
  %559 = add i64 %553, -8
  %560 = add i64 %552, 6
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %559 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = sub i32 %557, %562
  %564 = icmp ult i32 %557, %562
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %63, align 1
  %566 = and i32 %563, 255
  %567 = tail call i32 @llvm.ctpop.i32(i32 %566)
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  store i8 %570, i8* %64, align 1
  %571 = xor i32 %562, %557
  %572 = xor i32 %571, %563
  %573 = lshr i32 %572, 4
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  store i8 %575, i8* %65, align 1
  %576 = icmp eq i32 %563, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %66, align 1
  %578 = lshr i32 %563, 31
  %579 = trunc i32 %578 to i8
  store i8 %579, i8* %67, align 1
  %580 = lshr i32 %557, 31
  %581 = lshr i32 %562, 31
  %582 = xor i32 %581, %580
  %583 = xor i32 %578, %580
  %584 = add nuw nsw i32 %583, %582
  %585 = icmp eq i32 %584, 2
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %68, align 1
  %587 = icmp ne i8 %579, 0
  %588 = xor i1 %587, %585
  %.v11 = select i1 %588, i64 12, i64 193
  %589 = add i64 %552, %.v11
  store i64 %589, i64* %3, align 8
  br i1 %588, label %block_400d6a, label %block_.L_400e1f

block_400d6a:                                     ; preds = %block_.L_400d5e
  %590 = add i64 %553, -52
  %591 = add i64 %589, 7
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i32*
  store i32 1, i32* %592, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400d71

block_.L_400d71:                                  ; preds = %block_400d7d, %block_400d6a
  %593 = phi i64 [ %873, %block_400d7d ], [ %.pre5, %block_400d6a ]
  %594 = load i64, i64* %RBP.i, align 8
  %595 = add i64 %594, -52
  %596 = add i64 %593, 3
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %RAX.i484, align 8
  %600 = add i64 %594, -12
  %601 = add i64 %593, 6
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = sub i32 %598, %603
  %605 = icmp ult i32 %598, %603
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %63, align 1
  %607 = and i32 %604, 255
  %608 = tail call i32 @llvm.ctpop.i32(i32 %607)
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  %611 = xor i8 %610, 1
  store i8 %611, i8* %64, align 1
  %612 = xor i32 %603, %598
  %613 = xor i32 %612, %604
  %614 = lshr i32 %613, 4
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  store i8 %616, i8* %65, align 1
  %617 = icmp eq i32 %604, 0
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %66, align 1
  %619 = lshr i32 %604, 31
  %620 = trunc i32 %619 to i8
  store i8 %620, i8* %67, align 1
  %621 = lshr i32 %598, 31
  %622 = lshr i32 %603, 31
  %623 = xor i32 %622, %621
  %624 = xor i32 %619, %621
  %625 = add nuw nsw i32 %624, %623
  %626 = icmp eq i32 %625, 2
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %68, align 1
  %628 = icmp ne i8 %620, 0
  %629 = xor i1 %628, %626
  %.v12 = select i1 %629, i64 12, i64 155
  %630 = add i64 %593, %.v12
  store i64 %630, i64* %3, align 8
  br i1 %629, label %block_400d7d, label %block_.L_400e0c

block_400d7d:                                     ; preds = %block_.L_400d71
  %631 = load i64, i64* bitcast (%G_0x8db__rip__4197765__type* @G_0x8db__rip__4197765_ to i64*), align 8
  %632 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %631, i64* %632, align 1
  store double 0.000000e+00, double* %72, align 1
  %633 = add i64 %594, -24
  %634 = add i64 %630, 12
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i64*
  %636 = load i64, i64* %635, align 8
  store i64 %636, i64* %RAX.i484, align 8
  %637 = add i64 %594, -48
  %638 = add i64 %630, 16
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i32*
  %640 = load i32, i32* %639, align 4
  %641 = sext i32 %640 to i64
  %642 = mul nsw i64 %641, 8000
  store i64 %642, i64* %RCX.i474, align 8
  %643 = lshr i64 %642, 63
  %644 = add i64 %642, %636
  store i64 %644, i64* %RAX.i484, align 8
  %645 = icmp ult i64 %644, %636
  %646 = icmp ult i64 %644, %642
  %647 = or i1 %645, %646
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %63, align 1
  %649 = trunc i64 %644 to i32
  %650 = and i32 %649, 255
  %651 = tail call i32 @llvm.ctpop.i32(i32 %650)
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  store i8 %654, i8* %64, align 1
  %655 = xor i64 %636, %644
  %656 = lshr i64 %655, 4
  %657 = trunc i64 %656 to i8
  %658 = and i8 %657, 1
  store i8 %658, i8* %65, align 1
  %659 = icmp eq i64 %644, 0
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %66, align 1
  %661 = lshr i64 %644, 63
  %662 = trunc i64 %661 to i8
  store i8 %662, i8* %67, align 1
  %663 = lshr i64 %636, 63
  %664 = xor i64 %661, %663
  %665 = xor i64 %661, %643
  %666 = add nuw nsw i64 %664, %665
  %667 = icmp eq i64 %666, 2
  %668 = zext i1 %667 to i8
  store i8 %668, i8* %68, align 1
  %669 = add i64 %630, 30
  store i64 %669, i64* %3, align 8
  %670 = load i32, i32* %597, align 4
  %671 = sext i32 %670 to i64
  store i64 %671, i64* %RCX.i474, align 8
  %672 = shl nsw i64 %671, 3
  %673 = add i64 %672, %644
  %674 = add i64 %630, 35
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i64*
  %676 = load i64, i64* %675, align 8
  %677 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %73, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %676, i64* %677, align 1
  store double 0.000000e+00, double* %76, align 1
  %678 = add i64 %594, -40
  %679 = add i64 %630, 39
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i64*
  %681 = load i64, i64* %680, align 8
  store i64 %681, i64* %RAX.i484, align 8
  %682 = add i64 %630, 43
  store i64 %682, i64* %3, align 8
  %683 = load i32, i32* %639, align 4
  %684 = sext i32 %683 to i64
  %685 = mul nsw i64 %684, 8000
  store i64 %685, i64* %RCX.i474, align 8
  %686 = lshr i64 %685, 63
  %687 = add i64 %685, %681
  store i64 %687, i64* %RAX.i484, align 8
  %688 = icmp ult i64 %687, %681
  %689 = icmp ult i64 %687, %685
  %690 = or i1 %688, %689
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %63, align 1
  %692 = trunc i64 %687 to i32
  %693 = and i32 %692, 255
  %694 = tail call i32 @llvm.ctpop.i32(i32 %693)
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  %697 = xor i8 %696, 1
  store i8 %697, i8* %64, align 1
  %698 = xor i64 %681, %687
  %699 = lshr i64 %698, 4
  %700 = trunc i64 %699 to i8
  %701 = and i8 %700, 1
  store i8 %701, i8* %65, align 1
  %702 = icmp eq i64 %687, 0
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %66, align 1
  %704 = lshr i64 %687, 63
  %705 = trunc i64 %704 to i8
  store i8 %705, i8* %67, align 1
  %706 = lshr i64 %681, 63
  %707 = xor i64 %704, %706
  %708 = xor i64 %704, %686
  %709 = add nuw nsw i64 %707, %708
  %710 = icmp eq i64 %709, 2
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %68, align 1
  %712 = load i64, i64* %RBP.i, align 8
  %713 = add i64 %712, -52
  %714 = add i64 %630, 57
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i32*
  %716 = load i32, i32* %715, align 4
  %717 = sext i32 %716 to i64
  store i64 %717, i64* %RCX.i474, align 8
  %718 = shl nsw i64 %717, 3
  %719 = add i64 %718, %687
  %720 = add i64 %630, 62
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i64*
  %722 = load i64, i64* %721, align 8
  %723 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %77, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %722, i64* %723, align 1
  store double 0.000000e+00, double* %80, align 1
  %724 = add i64 %712, -40
  %725 = add i64 %630, 66
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i64*
  %727 = load i64, i64* %726, align 8
  store i64 %727, i64* %RAX.i484, align 8
  %728 = add i64 %712, -48
  %729 = add i64 %630, 70
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = sext i32 %731 to i64
  %733 = mul nsw i64 %732, 8000
  store i64 %733, i64* %RCX.i474, align 8
  %734 = lshr i64 %733, 63
  %735 = add i64 %733, %727
  store i64 %735, i64* %RAX.i484, align 8
  %736 = icmp ult i64 %735, %727
  %737 = icmp ult i64 %735, %733
  %738 = or i1 %736, %737
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %63, align 1
  %740 = trunc i64 %735 to i32
  %741 = and i32 %740, 255
  %742 = tail call i32 @llvm.ctpop.i32(i32 %741)
  %743 = trunc i32 %742 to i8
  %744 = and i8 %743, 1
  %745 = xor i8 %744, 1
  store i8 %745, i8* %64, align 1
  %746 = xor i64 %727, %735
  %747 = lshr i64 %746, 4
  %748 = trunc i64 %747 to i8
  %749 = and i8 %748, 1
  store i8 %749, i8* %65, align 1
  %750 = icmp eq i64 %735, 0
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %66, align 1
  %752 = lshr i64 %735, 63
  %753 = trunc i64 %752 to i8
  store i8 %753, i8* %67, align 1
  %754 = lshr i64 %727, 63
  %755 = xor i64 %752, %754
  %756 = xor i64 %752, %734
  %757 = add nuw nsw i64 %755, %756
  %758 = icmp eq i64 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %68, align 1
  %760 = add i64 %630, 83
  store i64 %760, i64* %3, align 8
  %761 = load i32, i32* %715, align 4
  %762 = add i32 %761, -1
  %763 = zext i32 %762 to i64
  store i64 %763, i64* %RDX.i358, align 8
  %764 = icmp eq i32 %761, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %63, align 1
  %766 = and i32 %762, 255
  %767 = tail call i32 @llvm.ctpop.i32(i32 %766)
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  %770 = xor i8 %769, 1
  store i8 %770, i8* %64, align 1
  %771 = xor i32 %761, %762
  %772 = lshr i32 %771, 4
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  store i8 %774, i8* %65, align 1
  %775 = icmp eq i32 %762, 0
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %66, align 1
  %777 = lshr i32 %762, 31
  %778 = trunc i32 %777 to i8
  store i8 %778, i8* %67, align 1
  %779 = lshr i32 %761, 31
  %780 = xor i32 %777, %779
  %781 = add nuw nsw i32 %780, %779
  %782 = icmp eq i32 %781, 2
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %68, align 1
  %784 = sext i32 %762 to i64
  store i64 %784, i64* %RCX.i474, align 8
  %785 = shl nsw i64 %784, 3
  %786 = add i64 %785, %735
  %787 = add i64 %630, 94
  store i64 %787, i64* %3, align 8
  %788 = bitcast i64 %722 to double
  %789 = inttoptr i64 %786 to double*
  %790 = load double, double* %789, align 8
  %791 = fsub double %788, %790
  store double %791, double* %78, align 1
  %792 = load double, double* %70, align 1
  %793 = fmul double %792, %791
  store double %793, double* %70, align 1
  %794 = load double, double* %74, align 1
  %795 = fsub double %794, %793
  store double %795, double* %74, align 1
  %796 = load i64, i64* %RBP.i, align 8
  %797 = add i64 %796, -24
  %798 = add i64 %630, 106
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i64*
  %800 = load i64, i64* %799, align 8
  store i64 %800, i64* %RAX.i484, align 8
  %801 = add i64 %796, -48
  %802 = add i64 %630, 110
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i32*
  %804 = load i32, i32* %803, align 4
  %805 = sext i32 %804 to i64
  %806 = mul nsw i64 %805, 8000
  store i64 %806, i64* %RCX.i474, align 8
  %807 = lshr i64 %806, 63
  %808 = add i64 %806, %800
  store i64 %808, i64* %RAX.i484, align 8
  %809 = icmp ult i64 %808, %800
  %810 = icmp ult i64 %808, %806
  %811 = or i1 %809, %810
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %63, align 1
  %813 = trunc i64 %808 to i32
  %814 = and i32 %813, 255
  %815 = tail call i32 @llvm.ctpop.i32(i32 %814)
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  %818 = xor i8 %817, 1
  store i8 %818, i8* %64, align 1
  %819 = xor i64 %800, %808
  %820 = lshr i64 %819, 4
  %821 = trunc i64 %820 to i8
  %822 = and i8 %821, 1
  store i8 %822, i8* %65, align 1
  %823 = icmp eq i64 %808, 0
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %66, align 1
  %825 = lshr i64 %808, 63
  %826 = trunc i64 %825 to i8
  store i8 %826, i8* %67, align 1
  %827 = lshr i64 %800, 63
  %828 = xor i64 %825, %827
  %829 = xor i64 %825, %807
  %830 = add nuw nsw i64 %828, %829
  %831 = icmp eq i64 %830, 2
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %68, align 1
  %833 = add i64 %796, -52
  %834 = add i64 %630, 124
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  %836 = load i32, i32* %835, align 4
  %837 = sext i32 %836 to i64
  store i64 %837, i64* %RCX.i474, align 8
  %838 = shl nsw i64 %837, 3
  %839 = add i64 %838, %808
  %840 = add i64 %630, 129
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to double*
  store double %795, double* %841, align 8
  %842 = load i64, i64* %RBP.i, align 8
  %843 = add i64 %842, -52
  %844 = load i64, i64* %3, align 8
  %845 = add i64 %844, 3
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %843 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = add i32 %847, 1
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RAX.i484, align 8
  %850 = icmp eq i32 %847, -1
  %851 = icmp eq i32 %848, 0
  %852 = or i1 %850, %851
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %63, align 1
  %854 = and i32 %848, 255
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %64, align 1
  %859 = xor i32 %847, %848
  %860 = lshr i32 %859, 4
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %65, align 1
  %863 = zext i1 %851 to i8
  store i8 %863, i8* %66, align 1
  %864 = lshr i32 %848, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %67, align 1
  %866 = lshr i32 %847, 31
  %867 = xor i32 %864, %866
  %868 = add nuw nsw i32 %867, %864
  %869 = icmp eq i32 %868, 2
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %68, align 1
  %871 = add i64 %844, 9
  store i64 %871, i64* %3, align 8
  store i32 %848, i32* %846, align 4
  %872 = load i64, i64* %3, align 8
  %873 = add i64 %872, -150
  store i64 %873, i64* %3, align 8
  br label %block_.L_400d71

block_.L_400e0c:                                  ; preds = %block_.L_400d71
  %874 = add i64 %594, -48
  %875 = add i64 %630, 8
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i32*
  %877 = load i32, i32* %876, align 4
  %878 = add i32 %877, 1
  %879 = zext i32 %878 to i64
  store i64 %879, i64* %RAX.i484, align 8
  %880 = icmp eq i32 %877, -1
  %881 = icmp eq i32 %878, 0
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %63, align 1
  %884 = and i32 %878, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %64, align 1
  %889 = xor i32 %877, %878
  %890 = lshr i32 %889, 4
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  store i8 %892, i8* %65, align 1
  %893 = zext i1 %881 to i8
  store i8 %893, i8* %66, align 1
  %894 = lshr i32 %878, 31
  %895 = trunc i32 %894 to i8
  store i8 %895, i8* %67, align 1
  %896 = lshr i32 %877, 31
  %897 = xor i32 %894, %896
  %898 = add nuw nsw i32 %897, %894
  %899 = icmp eq i32 %898, 2
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %68, align 1
  %901 = add i64 %630, 14
  store i64 %901, i64* %3, align 8
  store i32 %878, i32* %876, align 4
  %902 = load i64, i64* %3, align 8
  %903 = add i64 %902, -188
  store i64 %903, i64* %3, align 8
  br label %block_.L_400d5e

block_.L_400e1f:                                  ; preds = %block_.L_400d5e
  %904 = add i64 %589, 7
  store i64 %904, i64* %3, align 8
  store i32 0, i32* %556, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400e26

block_.L_400e26:                                  ; preds = %block_.L_400f19, %block_.L_400e1f
  %905 = phi i64 [ %1347, %block_.L_400f19 ], [ %.pre6, %block_.L_400e1f ]
  %906 = load i64, i64* %RBP.i, align 8
  %907 = add i64 %906, -48
  %908 = add i64 %905, 3
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = zext i32 %910 to i64
  store i64 %911, i64* %RAX.i484, align 8
  %912 = add i64 %906, -8
  %913 = add i64 %905, 6
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = add i32 %915, -1
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RCX.i474, align 8
  %918 = lshr i32 %916, 31
  %919 = sub i32 %910, %916
  %920 = icmp ult i32 %910, %916
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %63, align 1
  %922 = and i32 %919, 255
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %64, align 1
  %927 = xor i32 %916, %910
  %928 = xor i32 %927, %919
  %929 = lshr i32 %928, 4
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %65, align 1
  %932 = icmp eq i32 %919, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %66, align 1
  %934 = lshr i32 %919, 31
  %935 = trunc i32 %934 to i8
  store i8 %935, i8* %67, align 1
  %936 = lshr i32 %910, 31
  %937 = xor i32 %918, %936
  %938 = xor i32 %934, %936
  %939 = add nuw nsw i32 %938, %937
  %940 = icmp eq i32 %939, 2
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %68, align 1
  %942 = icmp ne i8 %935, 0
  %943 = xor i1 %942, %940
  %.v13 = select i1 %943, i64 17, i64 262
  %944 = add i64 %905, %.v13
  store i64 %944, i64* %3, align 8
  br i1 %943, label %block_400e37, label %block_.L_400f2c

block_400e37:                                     ; preds = %block_.L_400e26
  %945 = add i64 %906, -52
  %946 = add i64 %944, 7
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  store i32 0, i32* %947, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_400e3e

block_.L_400e3e:                                  ; preds = %block_400e4f, %block_400e37
  %948 = phi i64 [ %1317, %block_400e4f ], [ %.pre7, %block_400e37 ]
  %949 = load i64, i64* %RBP.i, align 8
  %950 = add i64 %949, -52
  %951 = add i64 %948, 3
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  %953 = load i32, i32* %952, align 4
  %954 = zext i32 %953 to i64
  store i64 %954, i64* %RAX.i484, align 8
  %955 = add i64 %949, -12
  %956 = add i64 %948, 6
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = add i32 %958, -1
  %960 = zext i32 %959 to i64
  store i64 %960, i64* %RCX.i474, align 8
  %961 = lshr i32 %959, 31
  %962 = sub i32 %953, %959
  %963 = icmp ult i32 %953, %959
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %63, align 1
  %965 = and i32 %962, 255
  %966 = tail call i32 @llvm.ctpop.i32(i32 %965)
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  %969 = xor i8 %968, 1
  store i8 %969, i8* %64, align 1
  %970 = xor i32 %959, %953
  %971 = xor i32 %970, %962
  %972 = lshr i32 %971, 4
  %973 = trunc i32 %972 to i8
  %974 = and i8 %973, 1
  store i8 %974, i8* %65, align 1
  %975 = icmp eq i32 %962, 0
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %66, align 1
  %977 = lshr i32 %962, 31
  %978 = trunc i32 %977 to i8
  store i8 %978, i8* %67, align 1
  %979 = lshr i32 %953, 31
  %980 = xor i32 %961, %979
  %981 = xor i32 %977, %979
  %982 = add nuw nsw i32 %981, %980
  %983 = icmp eq i32 %982, 2
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %68, align 1
  %985 = icmp ne i8 %978, 0
  %986 = xor i1 %985, %983
  %.v14 = select i1 %986, i64 17, i64 219
  %987 = add i64 %948, %.v14
  store i64 %987, i64* %3, align 8
  br i1 %986, label %block_400e4f, label %block_.L_400f19

block_400e4f:                                     ; preds = %block_.L_400e3e
  %988 = load i64, i64* bitcast (%G_0x801__rip__4197975__type* @G_0x801__rip__4197975_ to i64*), align 8
  %989 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %988, i64* %989, align 1
  store double 0.000000e+00, double* %72, align 1
  %990 = add i64 %949, -40
  %991 = add i64 %987, 12
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i64*
  %993 = load i64, i64* %992, align 8
  store i64 %993, i64* %RAX.i484, align 8
  %994 = add i64 %949, -48
  %995 = add i64 %987, 16
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = sext i32 %997 to i64
  %999 = mul nsw i64 %998, 8000
  store i64 %999, i64* %RCX.i474, align 8
  %1000 = lshr i64 %999, 63
  %1001 = add i64 %999, %993
  store i64 %1001, i64* %RAX.i484, align 8
  %1002 = icmp ult i64 %1001, %993
  %1003 = icmp ult i64 %1001, %999
  %1004 = or i1 %1002, %1003
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %63, align 1
  %1006 = trunc i64 %1001 to i32
  %1007 = and i32 %1006, 255
  %1008 = tail call i32 @llvm.ctpop.i32(i32 %1007)
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  store i8 %1011, i8* %64, align 1
  %1012 = xor i64 %993, %1001
  %1013 = lshr i64 %1012, 4
  %1014 = trunc i64 %1013 to i8
  %1015 = and i8 %1014, 1
  store i8 %1015, i8* %65, align 1
  %1016 = icmp eq i64 %1001, 0
  %1017 = zext i1 %1016 to i8
  store i8 %1017, i8* %66, align 1
  %1018 = lshr i64 %1001, 63
  %1019 = trunc i64 %1018 to i8
  store i8 %1019, i8* %67, align 1
  %1020 = lshr i64 %993, 63
  %1021 = xor i64 %1018, %1020
  %1022 = xor i64 %1018, %1000
  %1023 = add nuw nsw i64 %1021, %1022
  %1024 = icmp eq i64 %1023, 2
  %1025 = zext i1 %1024 to i8
  store i8 %1025, i8* %68, align 1
  %1026 = add i64 %987, 30
  store i64 %1026, i64* %3, align 8
  %1027 = load i32, i32* %952, align 4
  %1028 = sext i32 %1027 to i64
  store i64 %1028, i64* %RCX.i474, align 8
  %1029 = shl nsw i64 %1028, 3
  %1030 = add i64 %1029, %1001
  %1031 = add i64 %987, 35
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i64*
  %1033 = load i64, i64* %1032, align 8
  %1034 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %73, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1033, i64* %1034, align 1
  store double 0.000000e+00, double* %76, align 1
  %1035 = add i64 %949, -24
  %1036 = add i64 %987, 39
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i64*
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %RAX.i484, align 8
  %1039 = add i64 %987, 43
  store i64 %1039, i64* %3, align 8
  %1040 = load i32, i32* %996, align 4
  %1041 = sext i32 %1040 to i64
  %1042 = mul nsw i64 %1041, 8000
  store i64 %1042, i64* %RCX.i474, align 8
  %1043 = lshr i64 %1042, 63
  %1044 = add i64 %1042, %1038
  store i64 %1044, i64* %RAX.i484, align 8
  %1045 = icmp ult i64 %1044, %1038
  %1046 = icmp ult i64 %1044, %1042
  %1047 = or i1 %1045, %1046
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %63, align 1
  %1049 = trunc i64 %1044 to i32
  %1050 = and i32 %1049, 255
  %1051 = tail call i32 @llvm.ctpop.i32(i32 %1050)
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  %1054 = xor i8 %1053, 1
  store i8 %1054, i8* %64, align 1
  %1055 = xor i64 %1038, %1044
  %1056 = lshr i64 %1055, 4
  %1057 = trunc i64 %1056 to i8
  %1058 = and i8 %1057, 1
  store i8 %1058, i8* %65, align 1
  %1059 = icmp eq i64 %1044, 0
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %66, align 1
  %1061 = lshr i64 %1044, 63
  %1062 = trunc i64 %1061 to i8
  store i8 %1062, i8* %67, align 1
  %1063 = lshr i64 %1038, 63
  %1064 = xor i64 %1061, %1063
  %1065 = xor i64 %1061, %1043
  %1066 = add nuw nsw i64 %1064, %1065
  %1067 = icmp eq i64 %1066, 2
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %68, align 1
  %1069 = load i64, i64* %RBP.i, align 8
  %1070 = add i64 %1069, -52
  %1071 = add i64 %987, 56
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = add i32 %1073, 1
  %1075 = zext i32 %1074 to i64
  store i64 %1075, i64* %RDX.i358, align 8
  %1076 = icmp eq i32 %1073, -1
  %1077 = icmp eq i32 %1074, 0
  %1078 = or i1 %1076, %1077
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %63, align 1
  %1080 = and i32 %1074, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %64, align 1
  %1085 = xor i32 %1073, %1074
  %1086 = lshr i32 %1085, 4
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  store i8 %1088, i8* %65, align 1
  %1089 = zext i1 %1077 to i8
  store i8 %1089, i8* %66, align 1
  %1090 = lshr i32 %1074, 31
  %1091 = trunc i32 %1090 to i8
  store i8 %1091, i8* %67, align 1
  %1092 = lshr i32 %1073, 31
  %1093 = xor i32 %1090, %1092
  %1094 = add nuw nsw i32 %1093, %1090
  %1095 = icmp eq i32 %1094, 2
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %68, align 1
  %1097 = sext i32 %1074 to i64
  store i64 %1097, i64* %RCX.i474, align 8
  %1098 = shl nsw i64 %1097, 3
  %1099 = add i64 %1098, %1044
  %1100 = add i64 %987, 67
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to double*
  %1102 = load double, double* %1101, align 8
  store double %1102, double* %78, align 1
  store double 0.000000e+00, double* %80, align 1
  %1103 = add i64 %1069, -24
  %1104 = add i64 %987, 71
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i64*
  %1106 = load i64, i64* %1105, align 8
  store i64 %1106, i64* %RAX.i484, align 8
  %1107 = add i64 %1069, -48
  %1108 = add i64 %987, 75
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i32*
  %1110 = load i32, i32* %1109, align 4
  %1111 = sext i32 %1110 to i64
  %1112 = mul nsw i64 %1111, 8000
  store i64 %1112, i64* %RCX.i474, align 8
  %1113 = lshr i64 %1112, 63
  %1114 = add i64 %1112, %1106
  store i64 %1114, i64* %RAX.i484, align 8
  %1115 = icmp ult i64 %1114, %1106
  %1116 = icmp ult i64 %1114, %1112
  %1117 = or i1 %1115, %1116
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %63, align 1
  %1119 = trunc i64 %1114 to i32
  %1120 = and i32 %1119, 255
  %1121 = tail call i32 @llvm.ctpop.i32(i32 %1120)
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = xor i8 %1123, 1
  store i8 %1124, i8* %64, align 1
  %1125 = xor i64 %1106, %1114
  %1126 = lshr i64 %1125, 4
  %1127 = trunc i64 %1126 to i8
  %1128 = and i8 %1127, 1
  store i8 %1128, i8* %65, align 1
  %1129 = icmp eq i64 %1114, 0
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %66, align 1
  %1131 = lshr i64 %1114, 63
  %1132 = trunc i64 %1131 to i8
  store i8 %1132, i8* %67, align 1
  %1133 = lshr i64 %1106, 63
  %1134 = xor i64 %1131, %1133
  %1135 = xor i64 %1131, %1113
  %1136 = add nuw nsw i64 %1134, %1135
  %1137 = icmp eq i64 %1136, 2
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %68, align 1
  %1139 = add i64 %987, 89
  store i64 %1139, i64* %3, align 8
  %1140 = load i32, i32* %1072, align 4
  %1141 = sext i32 %1140 to i64
  store i64 %1141, i64* %RCX.i474, align 8
  %1142 = shl nsw i64 %1141, 3
  %1143 = add i64 %1142, %1114
  %1144 = add i64 %987, 94
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to double*
  %1146 = load double, double* %1145, align 8
  %1147 = fsub double %1102, %1146
  store double %1147, double* %78, align 1
  store i64 0, i64* %79, align 1
  %1148 = add i64 %1069, -32
  %1149 = add i64 %987, 98
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i64*
  %1151 = load i64, i64* %1150, align 8
  store i64 %1151, i64* %RAX.i484, align 8
  %1152 = add i64 %987, 101
  store i64 %1152, i64* %3, align 8
  %1153 = load i32, i32* %1109, align 4
  %1154 = add i32 %1153, 1
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RDX.i358, align 8
  %1156 = sext i32 %1154 to i64
  %1157 = mul nsw i64 %1156, 8000
  store i64 %1157, i64* %RCX.i474, align 8
  %1158 = lshr i64 %1157, 63
  %1159 = add i64 %1157, %1151
  store i64 %1159, i64* %RAX.i484, align 8
  %1160 = icmp ult i64 %1159, %1151
  %1161 = icmp ult i64 %1159, %1157
  %1162 = or i1 %1160, %1161
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %63, align 1
  %1164 = trunc i64 %1159 to i32
  %1165 = and i32 %1164, 255
  %1166 = tail call i32 @llvm.ctpop.i32(i32 %1165)
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = xor i8 %1168, 1
  store i8 %1169, i8* %64, align 1
  %1170 = xor i64 %1151, %1159
  %1171 = lshr i64 %1170, 4
  %1172 = trunc i64 %1171 to i8
  %1173 = and i8 %1172, 1
  store i8 %1173, i8* %65, align 1
  %1174 = icmp eq i64 %1159, 0
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %66, align 1
  %1176 = lshr i64 %1159, 63
  %1177 = trunc i64 %1176 to i8
  store i8 %1177, i8* %67, align 1
  %1178 = lshr i64 %1151, 63
  %1179 = xor i64 %1176, %1178
  %1180 = xor i64 %1176, %1158
  %1181 = add nuw nsw i64 %1179, %1180
  %1182 = icmp eq i64 %1181, 2
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %68, align 1
  %1184 = load i64, i64* %RBP.i, align 8
  %1185 = add i64 %1184, -52
  %1186 = add i64 %987, 121
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i32*
  %1188 = load i32, i32* %1187, align 4
  %1189 = sext i32 %1188 to i64
  store i64 %1189, i64* %RCX.i474, align 8
  %1190 = shl nsw i64 %1189, 3
  %1191 = add i64 %1190, %1159
  %1192 = add i64 %987, 126
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1191 to double*
  %1194 = load double, double* %1193, align 8
  %1195 = fadd double %1147, %1194
  store double %1195, double* %78, align 1
  %1196 = add i64 %1184, -32
  %1197 = add i64 %987, 130
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i64*
  %1199 = load i64, i64* %1198, align 8
  store i64 %1199, i64* %RAX.i484, align 8
  %1200 = add i64 %1184, -48
  %1201 = add i64 %987, 134
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i32*
  %1203 = load i32, i32* %1202, align 4
  %1204 = sext i32 %1203 to i64
  %1205 = mul nsw i64 %1204, 8000
  store i64 %1205, i64* %RCX.i474, align 8
  %1206 = lshr i64 %1205, 63
  %1207 = add i64 %1205, %1199
  store i64 %1207, i64* %RAX.i484, align 8
  %1208 = icmp ult i64 %1207, %1199
  %1209 = icmp ult i64 %1207, %1205
  %1210 = or i1 %1208, %1209
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %63, align 1
  %1212 = trunc i64 %1207 to i32
  %1213 = and i32 %1212, 255
  %1214 = tail call i32 @llvm.ctpop.i32(i32 %1213)
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = xor i8 %1216, 1
  store i8 %1217, i8* %64, align 1
  %1218 = xor i64 %1199, %1207
  %1219 = lshr i64 %1218, 4
  %1220 = trunc i64 %1219 to i8
  %1221 = and i8 %1220, 1
  store i8 %1221, i8* %65, align 1
  %1222 = icmp eq i64 %1207, 0
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %66, align 1
  %1224 = lshr i64 %1207, 63
  %1225 = trunc i64 %1224 to i8
  store i8 %1225, i8* %67, align 1
  %1226 = lshr i64 %1199, 63
  %1227 = xor i64 %1224, %1226
  %1228 = xor i64 %1224, %1206
  %1229 = add nuw nsw i64 %1227, %1228
  %1230 = icmp eq i64 %1229, 2
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %68, align 1
  %1232 = add i64 %987, 148
  store i64 %1232, i64* %3, align 8
  %1233 = load i32, i32* %1187, align 4
  %1234 = sext i32 %1233 to i64
  store i64 %1234, i64* %RCX.i474, align 8
  %1235 = shl nsw i64 %1234, 3
  %1236 = add i64 %1235, %1207
  %1237 = add i64 %987, 153
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to double*
  %1239 = load double, double* %1238, align 8
  %1240 = fsub double %1195, %1239
  store double %1240, double* %78, align 1
  %1241 = load double, double* %70, align 1
  %1242 = fmul double %1241, %1240
  store double %1242, double* %70, align 1
  %1243 = load double, double* %74, align 1
  %1244 = fsub double %1243, %1242
  store double %1244, double* %74, align 1
  %1245 = add i64 %1184, -40
  %1246 = add i64 %987, 165
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i64*
  %1248 = load i64, i64* %1247, align 8
  store i64 %1248, i64* %RAX.i484, align 8
  %1249 = add i64 %987, 169
  store i64 %1249, i64* %3, align 8
  %1250 = load i32, i32* %1202, align 4
  %1251 = sext i32 %1250 to i64
  %1252 = mul nsw i64 %1251, 8000
  store i64 %1252, i64* %RCX.i474, align 8
  %1253 = lshr i64 %1252, 63
  %1254 = add i64 %1252, %1248
  store i64 %1254, i64* %RAX.i484, align 8
  %1255 = icmp ult i64 %1254, %1248
  %1256 = icmp ult i64 %1254, %1252
  %1257 = or i1 %1255, %1256
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %63, align 1
  %1259 = trunc i64 %1254 to i32
  %1260 = and i32 %1259, 255
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %64, align 1
  %1265 = xor i64 %1248, %1254
  %1266 = lshr i64 %1265, 4
  %1267 = trunc i64 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %65, align 1
  %1269 = icmp eq i64 %1254, 0
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %66, align 1
  %1271 = lshr i64 %1254, 63
  %1272 = trunc i64 %1271 to i8
  store i8 %1272, i8* %67, align 1
  %1273 = lshr i64 %1248, 63
  %1274 = xor i64 %1271, %1273
  %1275 = xor i64 %1271, %1253
  %1276 = add nuw nsw i64 %1274, %1275
  %1277 = icmp eq i64 %1276, 2
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %68, align 1
  %1279 = add i64 %987, 183
  store i64 %1279, i64* %3, align 8
  %1280 = load i32, i32* %1187, align 4
  %1281 = sext i32 %1280 to i64
  store i64 %1281, i64* %RCX.i474, align 8
  %1282 = shl nsw i64 %1281, 3
  %1283 = add i64 %1282, %1254
  %1284 = add i64 %987, 188
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to double*
  store double %1244, double* %1285, align 8
  %1286 = load i64, i64* %RBP.i, align 8
  %1287 = add i64 %1286, -52
  %1288 = load i64, i64* %3, align 8
  %1289 = add i64 %1288, 3
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1287 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = add i32 %1291, 1
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RAX.i484, align 8
  %1294 = icmp eq i32 %1291, -1
  %1295 = icmp eq i32 %1292, 0
  %1296 = or i1 %1294, %1295
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %63, align 1
  %1298 = and i32 %1292, 255
  %1299 = tail call i32 @llvm.ctpop.i32(i32 %1298)
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  store i8 %1302, i8* %64, align 1
  %1303 = xor i32 %1291, %1292
  %1304 = lshr i32 %1303, 4
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  store i8 %1306, i8* %65, align 1
  %1307 = zext i1 %1295 to i8
  store i8 %1307, i8* %66, align 1
  %1308 = lshr i32 %1292, 31
  %1309 = trunc i32 %1308 to i8
  store i8 %1309, i8* %67, align 1
  %1310 = lshr i32 %1291, 31
  %1311 = xor i32 %1308, %1310
  %1312 = add nuw nsw i32 %1311, %1308
  %1313 = icmp eq i32 %1312, 2
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %68, align 1
  %1315 = add i64 %1288, 9
  store i64 %1315, i64* %3, align 8
  store i32 %1292, i32* %1290, align 4
  %1316 = load i64, i64* %3, align 8
  %1317 = add i64 %1316, -214
  store i64 %1317, i64* %3, align 8
  br label %block_.L_400e3e

block_.L_400f19:                                  ; preds = %block_.L_400e3e
  %1318 = add i64 %949, -48
  %1319 = add i64 %987, 8
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i32*
  %1321 = load i32, i32* %1320, align 4
  %1322 = add i32 %1321, 1
  %1323 = zext i32 %1322 to i64
  store i64 %1323, i64* %RAX.i484, align 8
  %1324 = icmp eq i32 %1321, -1
  %1325 = icmp eq i32 %1322, 0
  %1326 = or i1 %1324, %1325
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %63, align 1
  %1328 = and i32 %1322, 255
  %1329 = tail call i32 @llvm.ctpop.i32(i32 %1328)
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = xor i8 %1331, 1
  store i8 %1332, i8* %64, align 1
  %1333 = xor i32 %1321, %1322
  %1334 = lshr i32 %1333, 4
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  store i8 %1336, i8* %65, align 1
  %1337 = zext i1 %1325 to i8
  store i8 %1337, i8* %66, align 1
  %1338 = lshr i32 %1322, 31
  %1339 = trunc i32 %1338 to i8
  store i8 %1339, i8* %67, align 1
  %1340 = lshr i32 %1321, 31
  %1341 = xor i32 %1338, %1340
  %1342 = add nuw nsw i32 %1341, %1338
  %1343 = icmp eq i32 %1342, 2
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %68, align 1
  %1345 = add i64 %987, 14
  store i64 %1345, i64* %3, align 8
  store i32 %1322, i32* %1320, align 4
  %1346 = load i64, i64* %3, align 8
  %1347 = add i64 %1346, -257
  store i64 %1347, i64* %3, align 8
  br label %block_.L_400e26

block_.L_400f2c:                                  ; preds = %block_.L_400e26
  %1348 = add i64 %906, -44
  %1349 = add i64 %944, 8
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i32*
  %1351 = load i32, i32* %1350, align 4
  %1352 = add i32 %1351, 1
  %1353 = zext i32 %1352 to i64
  store i64 %1353, i64* %RAX.i484, align 8
  %1354 = icmp eq i32 %1351, -1
  %1355 = icmp eq i32 %1352, 0
  %1356 = or i1 %1354, %1355
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %63, align 1
  %1358 = and i32 %1352, 255
  %1359 = tail call i32 @llvm.ctpop.i32(i32 %1358)
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  %1362 = xor i8 %1361, 1
  store i8 %1362, i8* %64, align 1
  %1363 = xor i32 %1351, %1352
  %1364 = lshr i32 %1363, 4
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  store i8 %1366, i8* %65, align 1
  %1367 = zext i1 %1355 to i8
  store i8 %1367, i8* %66, align 1
  %1368 = lshr i32 %1352, 31
  %1369 = trunc i32 %1368 to i8
  store i8 %1369, i8* %67, align 1
  %1370 = lshr i32 %1351, 31
  %1371 = xor i32 %1368, %1370
  %1372 = add nuw nsw i32 %1371, %1368
  %1373 = icmp eq i32 %1372, 2
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %68, align 1
  %1375 = add i64 %944, 14
  store i64 %1375, i64* %3, align 8
  store i32 %1352, i32* %1350, align 4
  %1376 = load i64, i64* %3, align 8
  %1377 = add i64 %1376, -754
  store i64 %1377, i64* %3, align 8
  br label %block_.L_400c48

block_.L_400f3f:                                  ; preds = %block_.L_400c48
  %1378 = add i64 %118, 1
  store i64 %1378, i64* %3, align 8
  %1379 = load i64, i64* %6, align 8
  %1380 = add i64 %1379, 8
  %1381 = inttoptr i64 %1379 to i64*
  %1382 = load i64, i64* %1381, align 8
  store i64 %1382, i64* %RBP.i, align 8
  store i64 %1380, i64* %6, align 8
  %1383 = add i64 %118, 2
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1380 to i64*
  %1385 = load i64, i64* %1384, align 8
  store i64 %1385, i64* %3, align 8
  %1386 = add i64 %1379, 16
  store i64 %1386, i64* %6, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %20 = xor i32 %6, %7
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x9a3__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x9a3__rip__4197565__type* @G_0x9a3__rip__4197565_ to i64*), align 8
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
  %18 = xor i32 %6, %7
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d49(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x8db__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x8db__rip__4197765__type* @G_0x8db__rip__4197765_ to i64*), align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e11(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d5e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %18 = xor i32 %6, %7
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x801__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x801__rip__4197975__type* @G_0x801__rip__4197975_ to i64*), align 8
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
  %20 = xor i32 %6, %7
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f31(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
