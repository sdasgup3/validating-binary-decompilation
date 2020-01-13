; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x4d1__rip__4198791__type = type <{ [16 x i8] }>
%G_0x5ab__rip__4198581__type = type <{ [16 x i8] }>
%G_0x673__rip__4198381__type = type <{ [16 x i8] }>
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
@G_0x4d1__rip__4198791_ = local_unnamed_addr global %G_0x4d1__rip__4198791__type zeroinitializer
@G_0x5ab__rip__4198581_ = local_unnamed_addr global %G_0x5ab__rip__4198581__type zeroinitializer
@G_0x673__rip__4198381_ = local_unnamed_addr global %G_0x673__rip__4198381__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_fdtd_2d_StrictFP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  br label %block_.L_400f78

block_.L_400f78:                                  ; preds = %block_.L_40125c, %entry
  %81 = phi i64 [ %1393, %block_.L_40125c ], [ %.pre, %entry ]
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
  br i1 %117, label %block_400f84, label %block_.L_40126f

block_400f84:                                     ; preds = %block_.L_400f78
  %119 = add i64 %82, -52
  %120 = add i64 %118, 7
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  store i32 0, i32* %121, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400f8b

block_.L_400f8b:                                  ; preds = %block_400f97, %block_400f84
  %122 = phi i64 [ %217, %block_400f97 ], [ %.pre1, %block_400f84 ]
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
  br i1 %158, label %block_400f97, label %block_.L_400fbf

block_400f97:                                     ; preds = %block_.L_400f8b
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
  br label %block_.L_400f8b

block_.L_400fbf:                                  ; preds = %block_.L_400f8b
  %218 = add i64 %123, -48
  %219 = add i64 %159, 7
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i32*
  store i32 1, i32* %220, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400fc6

block_.L_400fc6:                                  ; preds = %block_.L_401074, %block_.L_400fbf
  %221 = phi i64 [ %555, %block_.L_401074 ], [ %.pre2, %block_.L_400fbf ]
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
  br i1 %257, label %block_400fd2, label %block_.L_401087

block_400fd2:                                     ; preds = %block_.L_400fc6
  %259 = add i64 %222, -52
  %260 = add i64 %258, 7
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  store i32 0, i32* %261, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400fd9

block_.L_400fd9:                                  ; preds = %block_400fe5, %block_400fd2
  %262 = phi i64 [ %525, %block_400fe5 ], [ %.pre3, %block_400fd2 ]
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
  br i1 %298, label %block_400fe5, label %block_.L_401074

block_400fe5:                                     ; preds = %block_.L_400fd9
  %300 = load i64, i64* bitcast (%G_0x673__rip__4198381__type* @G_0x673__rip__4198381_ to i64*), align 8
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
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -52
  %433 = add i64 %299, 89
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = sext i32 %435 to i64
  store i64 %436, i64* %RCX.i474, align 8
  %437 = shl nsw i64 %436, 3
  %438 = add i64 %437, %406
  %439 = add i64 %299, 94
  store i64 %439, i64* %3, align 8
  %440 = load double, double* %78, align 1
  %441 = inttoptr i64 %438 to double*
  %442 = load double, double* %441, align 8
  %443 = fsub double %440, %442
  store double %443, double* %78, align 1
  %444 = load double, double* %70, align 1
  %445 = fmul double %444, %443
  store double %445, double* %70, align 1
  %446 = load double, double* %74, align 1
  %447 = fsub double %446, %445
  store double %447, double* %74, align 1
  %448 = add i64 %431, -32
  %449 = add i64 %299, 106
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i64*
  %451 = load i64, i64* %450, align 8
  store i64 %451, i64* %RAX.i484, align 8
  %452 = add i64 %431, -48
  %453 = add i64 %299, 110
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = sext i32 %455 to i64
  %457 = mul nsw i64 %456, 8000
  store i64 %457, i64* %RCX.i474, align 8
  %458 = lshr i64 %457, 63
  %459 = add i64 %457, %451
  store i64 %459, i64* %RAX.i484, align 8
  %460 = icmp ult i64 %459, %451
  %461 = icmp ult i64 %459, %457
  %462 = or i1 %460, %461
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %63, align 1
  %464 = trunc i64 %459 to i32
  %465 = and i32 %464, 255
  %466 = tail call i32 @llvm.ctpop.i32(i32 %465)
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  %469 = xor i8 %468, 1
  store i8 %469, i8* %64, align 1
  %470 = xor i64 %451, %459
  %471 = lshr i64 %470, 4
  %472 = trunc i64 %471 to i8
  %473 = and i8 %472, 1
  store i8 %473, i8* %65, align 1
  %474 = icmp eq i64 %459, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %66, align 1
  %476 = lshr i64 %459, 63
  %477 = trunc i64 %476 to i8
  store i8 %477, i8* %67, align 1
  %478 = lshr i64 %451, 63
  %479 = xor i64 %476, %478
  %480 = xor i64 %476, %458
  %481 = add nuw nsw i64 %479, %480
  %482 = icmp eq i64 %481, 2
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %68, align 1
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -52
  %486 = add i64 %299, 124
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = sext i32 %488 to i64
  store i64 %489, i64* %RCX.i474, align 8
  %490 = shl nsw i64 %489, 3
  %491 = add i64 %490, %459
  %492 = add i64 %299, 129
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to double*
  store double %447, double* %493, align 8
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -52
  %496 = load i64, i64* %3, align 8
  %497 = add i64 %496, 3
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %495 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = add i32 %499, 1
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RAX.i484, align 8
  %502 = icmp eq i32 %499, -1
  %503 = icmp eq i32 %500, 0
  %504 = or i1 %502, %503
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %63, align 1
  %506 = and i32 %500, 255
  %507 = tail call i32 @llvm.ctpop.i32(i32 %506)
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  store i8 %510, i8* %64, align 1
  %511 = xor i32 %499, %500
  %512 = lshr i32 %511, 4
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  store i8 %514, i8* %65, align 1
  %515 = zext i1 %503 to i8
  store i8 %515, i8* %66, align 1
  %516 = lshr i32 %500, 31
  %517 = trunc i32 %516 to i8
  store i8 %517, i8* %67, align 1
  %518 = lshr i32 %499, 31
  %519 = xor i32 %516, %518
  %520 = add nuw nsw i32 %519, %516
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %68, align 1
  %523 = add i64 %496, 9
  store i64 %523, i64* %3, align 8
  store i32 %500, i32* %498, align 4
  %524 = load i64, i64* %3, align 8
  %525 = add i64 %524, -150
  store i64 %525, i64* %3, align 8
  br label %block_.L_400fd9

block_.L_401074:                                  ; preds = %block_.L_400fd9
  %526 = add i64 %263, -48
  %527 = add i64 %299, 8
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = add i32 %529, 1
  %531 = zext i32 %530 to i64
  store i64 %531, i64* %RAX.i484, align 8
  %532 = icmp eq i32 %529, -1
  %533 = icmp eq i32 %530, 0
  %534 = or i1 %532, %533
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %63, align 1
  %536 = and i32 %530, 255
  %537 = tail call i32 @llvm.ctpop.i32(i32 %536)
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  store i8 %540, i8* %64, align 1
  %541 = xor i32 %529, %530
  %542 = lshr i32 %541, 4
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  store i8 %544, i8* %65, align 1
  %545 = zext i1 %533 to i8
  store i8 %545, i8* %66, align 1
  %546 = lshr i32 %530, 31
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %67, align 1
  %548 = lshr i32 %529, 31
  %549 = xor i32 %546, %548
  %550 = add nuw nsw i32 %549, %546
  %551 = icmp eq i32 %550, 2
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %68, align 1
  %553 = add i64 %299, 14
  store i64 %553, i64* %3, align 8
  store i32 %530, i32* %528, align 4
  %554 = load i64, i64* %3, align 8
  %555 = add i64 %554, -188
  store i64 %555, i64* %3, align 8
  br label %block_.L_400fc6

block_.L_401087:                                  ; preds = %block_.L_400fc6
  %556 = add i64 %258, 7
  store i64 %556, i64* %3, align 8
  store i32 0, i32* %225, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_40108e

block_.L_40108e:                                  ; preds = %block_.L_40113c, %block_.L_401087
  %557 = phi i64 [ %908, %block_.L_40113c ], [ %.pre4, %block_.L_401087 ]
  %558 = load i64, i64* %RBP.i, align 8
  %559 = add i64 %558, -48
  %560 = add i64 %557, 3
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %559 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = zext i32 %562 to i64
  store i64 %563, i64* %RAX.i484, align 8
  %564 = add i64 %558, -8
  %565 = add i64 %557, 6
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = sub i32 %562, %567
  %569 = icmp ult i32 %562, %567
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %63, align 1
  %571 = and i32 %568, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571)
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %64, align 1
  %576 = xor i32 %567, %562
  %577 = xor i32 %576, %568
  %578 = lshr i32 %577, 4
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  store i8 %580, i8* %65, align 1
  %581 = icmp eq i32 %568, 0
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %66, align 1
  %583 = lshr i32 %568, 31
  %584 = trunc i32 %583 to i8
  store i8 %584, i8* %67, align 1
  %585 = lshr i32 %562, 31
  %586 = lshr i32 %567, 31
  %587 = xor i32 %586, %585
  %588 = xor i32 %583, %585
  %589 = add nuw nsw i32 %588, %587
  %590 = icmp eq i32 %589, 2
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %68, align 1
  %592 = icmp ne i8 %584, 0
  %593 = xor i1 %592, %590
  %.v11 = select i1 %593, i64 12, i64 193
  %594 = add i64 %557, %.v11
  store i64 %594, i64* %3, align 8
  br i1 %593, label %block_40109a, label %block_.L_40114f

block_40109a:                                     ; preds = %block_.L_40108e
  %595 = add i64 %558, -52
  %596 = add i64 %594, 7
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  store i32 1, i32* %597, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_4010a1

block_.L_4010a1:                                  ; preds = %block_4010ad, %block_40109a
  %598 = phi i64 [ %878, %block_4010ad ], [ %.pre5, %block_40109a ]
  %599 = load i64, i64* %RBP.i, align 8
  %600 = add i64 %599, -52
  %601 = add i64 %598, 3
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = zext i32 %603 to i64
  store i64 %604, i64* %RAX.i484, align 8
  %605 = add i64 %599, -12
  %606 = add i64 %598, 6
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to i32*
  %608 = load i32, i32* %607, align 4
  %609 = sub i32 %603, %608
  %610 = icmp ult i32 %603, %608
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %63, align 1
  %612 = and i32 %609, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %64, align 1
  %617 = xor i32 %608, %603
  %618 = xor i32 %617, %609
  %619 = lshr i32 %618, 4
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  store i8 %621, i8* %65, align 1
  %622 = icmp eq i32 %609, 0
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %66, align 1
  %624 = lshr i32 %609, 31
  %625 = trunc i32 %624 to i8
  store i8 %625, i8* %67, align 1
  %626 = lshr i32 %603, 31
  %627 = lshr i32 %608, 31
  %628 = xor i32 %627, %626
  %629 = xor i32 %624, %626
  %630 = add nuw nsw i32 %629, %628
  %631 = icmp eq i32 %630, 2
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %68, align 1
  %633 = icmp ne i8 %625, 0
  %634 = xor i1 %633, %631
  %.v12 = select i1 %634, i64 12, i64 155
  %635 = add i64 %598, %.v12
  store i64 %635, i64* %3, align 8
  br i1 %634, label %block_4010ad, label %block_.L_40113c

block_4010ad:                                     ; preds = %block_.L_4010a1
  %636 = load i64, i64* bitcast (%G_0x5ab__rip__4198581__type* @G_0x5ab__rip__4198581_ to i64*), align 8
  %637 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %636, i64* %637, align 1
  store double 0.000000e+00, double* %72, align 1
  %638 = add i64 %599, -24
  %639 = add i64 %635, 12
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %641, i64* %RAX.i484, align 8
  %642 = add i64 %599, -48
  %643 = add i64 %635, 16
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = sext i32 %645 to i64
  %647 = mul nsw i64 %646, 8000
  store i64 %647, i64* %RCX.i474, align 8
  %648 = lshr i64 %647, 63
  %649 = add i64 %647, %641
  store i64 %649, i64* %RAX.i484, align 8
  %650 = icmp ult i64 %649, %641
  %651 = icmp ult i64 %649, %647
  %652 = or i1 %650, %651
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %63, align 1
  %654 = trunc i64 %649 to i32
  %655 = and i32 %654, 255
  %656 = tail call i32 @llvm.ctpop.i32(i32 %655)
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %64, align 1
  %660 = xor i64 %641, %649
  %661 = lshr i64 %660, 4
  %662 = trunc i64 %661 to i8
  %663 = and i8 %662, 1
  store i8 %663, i8* %65, align 1
  %664 = icmp eq i64 %649, 0
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %66, align 1
  %666 = lshr i64 %649, 63
  %667 = trunc i64 %666 to i8
  store i8 %667, i8* %67, align 1
  %668 = lshr i64 %641, 63
  %669 = xor i64 %666, %668
  %670 = xor i64 %666, %648
  %671 = add nuw nsw i64 %669, %670
  %672 = icmp eq i64 %671, 2
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %68, align 1
  %674 = add i64 %635, 30
  store i64 %674, i64* %3, align 8
  %675 = load i32, i32* %602, align 4
  %676 = sext i32 %675 to i64
  store i64 %676, i64* %RCX.i474, align 8
  %677 = shl nsw i64 %676, 3
  %678 = add i64 %677, %649
  %679 = add i64 %635, 35
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i64*
  %681 = load i64, i64* %680, align 8
  %682 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %73, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %681, i64* %682, align 1
  store double 0.000000e+00, double* %76, align 1
  %683 = add i64 %599, -40
  %684 = add i64 %635, 39
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i64*
  %686 = load i64, i64* %685, align 8
  store i64 %686, i64* %RAX.i484, align 8
  %687 = add i64 %635, 43
  store i64 %687, i64* %3, align 8
  %688 = load i32, i32* %644, align 4
  %689 = sext i32 %688 to i64
  %690 = mul nsw i64 %689, 8000
  store i64 %690, i64* %RCX.i474, align 8
  %691 = lshr i64 %690, 63
  %692 = add i64 %690, %686
  store i64 %692, i64* %RAX.i484, align 8
  %693 = icmp ult i64 %692, %686
  %694 = icmp ult i64 %692, %690
  %695 = or i1 %693, %694
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %63, align 1
  %697 = trunc i64 %692 to i32
  %698 = and i32 %697, 255
  %699 = tail call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  store i8 %702, i8* %64, align 1
  %703 = xor i64 %686, %692
  %704 = lshr i64 %703, 4
  %705 = trunc i64 %704 to i8
  %706 = and i8 %705, 1
  store i8 %706, i8* %65, align 1
  %707 = icmp eq i64 %692, 0
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %66, align 1
  %709 = lshr i64 %692, 63
  %710 = trunc i64 %709 to i8
  store i8 %710, i8* %67, align 1
  %711 = lshr i64 %686, 63
  %712 = xor i64 %709, %711
  %713 = xor i64 %709, %691
  %714 = add nuw nsw i64 %712, %713
  %715 = icmp eq i64 %714, 2
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %68, align 1
  %717 = load i64, i64* %RBP.i, align 8
  %718 = add i64 %717, -52
  %719 = add i64 %635, 57
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i32*
  %721 = load i32, i32* %720, align 4
  %722 = sext i32 %721 to i64
  store i64 %722, i64* %RCX.i474, align 8
  %723 = shl nsw i64 %722, 3
  %724 = add i64 %723, %692
  %725 = add i64 %635, 62
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i64*
  %727 = load i64, i64* %726, align 8
  %728 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %77, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %727, i64* %728, align 1
  store double 0.000000e+00, double* %80, align 1
  %729 = add i64 %717, -40
  %730 = add i64 %635, 66
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i64*
  %732 = load i64, i64* %731, align 8
  store i64 %732, i64* %RAX.i484, align 8
  %733 = add i64 %717, -48
  %734 = add i64 %635, 70
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to i32*
  %736 = load i32, i32* %735, align 4
  %737 = sext i32 %736 to i64
  %738 = mul nsw i64 %737, 8000
  store i64 %738, i64* %RCX.i474, align 8
  %739 = lshr i64 %738, 63
  %740 = add i64 %738, %732
  store i64 %740, i64* %RAX.i484, align 8
  %741 = icmp ult i64 %740, %732
  %742 = icmp ult i64 %740, %738
  %743 = or i1 %741, %742
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %63, align 1
  %745 = trunc i64 %740 to i32
  %746 = and i32 %745, 255
  %747 = tail call i32 @llvm.ctpop.i32(i32 %746)
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = xor i8 %749, 1
  store i8 %750, i8* %64, align 1
  %751 = xor i64 %732, %740
  %752 = lshr i64 %751, 4
  %753 = trunc i64 %752 to i8
  %754 = and i8 %753, 1
  store i8 %754, i8* %65, align 1
  %755 = icmp eq i64 %740, 0
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %66, align 1
  %757 = lshr i64 %740, 63
  %758 = trunc i64 %757 to i8
  store i8 %758, i8* %67, align 1
  %759 = lshr i64 %732, 63
  %760 = xor i64 %757, %759
  %761 = xor i64 %757, %739
  %762 = add nuw nsw i64 %760, %761
  %763 = icmp eq i64 %762, 2
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %68, align 1
  %765 = add i64 %635, 83
  store i64 %765, i64* %3, align 8
  %766 = load i32, i32* %720, align 4
  %767 = add i32 %766, -1
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %RDX.i358, align 8
  %769 = icmp eq i32 %766, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %63, align 1
  %771 = and i32 %767, 255
  %772 = tail call i32 @llvm.ctpop.i32(i32 %771)
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = xor i8 %774, 1
  store i8 %775, i8* %64, align 1
  %776 = xor i32 %766, %767
  %777 = lshr i32 %776, 4
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  store i8 %779, i8* %65, align 1
  %780 = icmp eq i32 %767, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %66, align 1
  %782 = lshr i32 %767, 31
  %783 = trunc i32 %782 to i8
  store i8 %783, i8* %67, align 1
  %784 = lshr i32 %766, 31
  %785 = xor i32 %782, %784
  %786 = add nuw nsw i32 %785, %784
  %787 = icmp eq i32 %786, 2
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %68, align 1
  %789 = sext i32 %767 to i64
  store i64 %789, i64* %RCX.i474, align 8
  %790 = shl nsw i64 %789, 3
  %791 = add i64 %790, %740
  %792 = add i64 %635, 94
  store i64 %792, i64* %3, align 8
  %793 = load double, double* %78, align 1
  %794 = inttoptr i64 %791 to double*
  %795 = load double, double* %794, align 8
  %796 = fsub double %793, %795
  store double %796, double* %78, align 1
  %797 = load double, double* %70, align 1
  %798 = fmul double %797, %796
  store double %798, double* %70, align 1
  %799 = load double, double* %74, align 1
  %800 = fsub double %799, %798
  store double %800, double* %74, align 1
  %801 = load i64, i64* %RBP.i, align 8
  %802 = add i64 %801, -24
  %803 = add i64 %635, 106
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i64*
  %805 = load i64, i64* %804, align 8
  store i64 %805, i64* %RAX.i484, align 8
  %806 = add i64 %801, -48
  %807 = add i64 %635, 110
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i32*
  %809 = load i32, i32* %808, align 4
  %810 = sext i32 %809 to i64
  %811 = mul nsw i64 %810, 8000
  store i64 %811, i64* %RCX.i474, align 8
  %812 = lshr i64 %811, 63
  %813 = add i64 %811, %805
  store i64 %813, i64* %RAX.i484, align 8
  %814 = icmp ult i64 %813, %805
  %815 = icmp ult i64 %813, %811
  %816 = or i1 %814, %815
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %63, align 1
  %818 = trunc i64 %813 to i32
  %819 = and i32 %818, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819)
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %64, align 1
  %824 = xor i64 %805, %813
  %825 = lshr i64 %824, 4
  %826 = trunc i64 %825 to i8
  %827 = and i8 %826, 1
  store i8 %827, i8* %65, align 1
  %828 = icmp eq i64 %813, 0
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %66, align 1
  %830 = lshr i64 %813, 63
  %831 = trunc i64 %830 to i8
  store i8 %831, i8* %67, align 1
  %832 = lshr i64 %805, 63
  %833 = xor i64 %830, %832
  %834 = xor i64 %830, %812
  %835 = add nuw nsw i64 %833, %834
  %836 = icmp eq i64 %835, 2
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %68, align 1
  %838 = add i64 %801, -52
  %839 = add i64 %635, 124
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = sext i32 %841 to i64
  store i64 %842, i64* %RCX.i474, align 8
  %843 = shl nsw i64 %842, 3
  %844 = add i64 %843, %813
  %845 = add i64 %635, 129
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to double*
  store double %800, double* %846, align 8
  %847 = load i64, i64* %RBP.i, align 8
  %848 = add i64 %847, -52
  %849 = load i64, i64* %3, align 8
  %850 = add i64 %849, 3
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %848 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = add i32 %852, 1
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RAX.i484, align 8
  %855 = icmp eq i32 %852, -1
  %856 = icmp eq i32 %853, 0
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %63, align 1
  %859 = and i32 %853, 255
  %860 = tail call i32 @llvm.ctpop.i32(i32 %859)
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  store i8 %863, i8* %64, align 1
  %864 = xor i32 %852, %853
  %865 = lshr i32 %864, 4
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  store i8 %867, i8* %65, align 1
  %868 = zext i1 %856 to i8
  store i8 %868, i8* %66, align 1
  %869 = lshr i32 %853, 31
  %870 = trunc i32 %869 to i8
  store i8 %870, i8* %67, align 1
  %871 = lshr i32 %852, 31
  %872 = xor i32 %869, %871
  %873 = add nuw nsw i32 %872, %869
  %874 = icmp eq i32 %873, 2
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %68, align 1
  %876 = add i64 %849, 9
  store i64 %876, i64* %3, align 8
  store i32 %853, i32* %851, align 4
  %877 = load i64, i64* %3, align 8
  %878 = add i64 %877, -150
  store i64 %878, i64* %3, align 8
  br label %block_.L_4010a1

block_.L_40113c:                                  ; preds = %block_.L_4010a1
  %879 = add i64 %599, -48
  %880 = add i64 %635, 8
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to i32*
  %882 = load i32, i32* %881, align 4
  %883 = add i32 %882, 1
  %884 = zext i32 %883 to i64
  store i64 %884, i64* %RAX.i484, align 8
  %885 = icmp eq i32 %882, -1
  %886 = icmp eq i32 %883, 0
  %887 = or i1 %885, %886
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %63, align 1
  %889 = and i32 %883, 255
  %890 = tail call i32 @llvm.ctpop.i32(i32 %889)
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  store i8 %893, i8* %64, align 1
  %894 = xor i32 %882, %883
  %895 = lshr i32 %894, 4
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  store i8 %897, i8* %65, align 1
  %898 = zext i1 %886 to i8
  store i8 %898, i8* %66, align 1
  %899 = lshr i32 %883, 31
  %900 = trunc i32 %899 to i8
  store i8 %900, i8* %67, align 1
  %901 = lshr i32 %882, 31
  %902 = xor i32 %899, %901
  %903 = add nuw nsw i32 %902, %899
  %904 = icmp eq i32 %903, 2
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %68, align 1
  %906 = add i64 %635, 14
  store i64 %906, i64* %3, align 8
  store i32 %883, i32* %881, align 4
  %907 = load i64, i64* %3, align 8
  %908 = add i64 %907, -188
  store i64 %908, i64* %3, align 8
  br label %block_.L_40108e

block_.L_40114f:                                  ; preds = %block_.L_40108e
  %909 = add i64 %594, 7
  store i64 %909, i64* %3, align 8
  store i32 0, i32* %561, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_401156

block_.L_401156:                                  ; preds = %block_.L_401249, %block_.L_40114f
  %910 = phi i64 [ %1363, %block_.L_401249 ], [ %.pre6, %block_.L_40114f ]
  %911 = load i64, i64* %RBP.i, align 8
  %912 = add i64 %911, -48
  %913 = add i64 %910, 3
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = zext i32 %915 to i64
  store i64 %916, i64* %RAX.i484, align 8
  %917 = add i64 %911, -8
  %918 = add i64 %910, 6
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  %921 = add i32 %920, -1
  %922 = zext i32 %921 to i64
  store i64 %922, i64* %RCX.i474, align 8
  %923 = lshr i32 %921, 31
  %924 = sub i32 %915, %921
  %925 = icmp ult i32 %915, %921
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %63, align 1
  %927 = and i32 %924, 255
  %928 = tail call i32 @llvm.ctpop.i32(i32 %927)
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = xor i8 %930, 1
  store i8 %931, i8* %64, align 1
  %932 = xor i32 %921, %915
  %933 = xor i32 %932, %924
  %934 = lshr i32 %933, 4
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  store i8 %936, i8* %65, align 1
  %937 = icmp eq i32 %924, 0
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %66, align 1
  %939 = lshr i32 %924, 31
  %940 = trunc i32 %939 to i8
  store i8 %940, i8* %67, align 1
  %941 = lshr i32 %915, 31
  %942 = xor i32 %923, %941
  %943 = xor i32 %939, %941
  %944 = add nuw nsw i32 %943, %942
  %945 = icmp eq i32 %944, 2
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %68, align 1
  %947 = icmp ne i8 %940, 0
  %948 = xor i1 %947, %945
  %.v13 = select i1 %948, i64 17, i64 262
  %949 = add i64 %910, %.v13
  store i64 %949, i64* %3, align 8
  br i1 %948, label %block_401167, label %block_.L_40125c

block_401167:                                     ; preds = %block_.L_401156
  %950 = add i64 %911, -52
  %951 = add i64 %949, 7
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  store i32 0, i32* %952, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_40116e

block_.L_40116e:                                  ; preds = %block_40117f, %block_401167
  %953 = phi i64 [ %1333, %block_40117f ], [ %.pre7, %block_401167 ]
  %954 = load i64, i64* %RBP.i, align 8
  %955 = add i64 %954, -52
  %956 = add i64 %953, 3
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = zext i32 %958 to i64
  store i64 %959, i64* %RAX.i484, align 8
  %960 = add i64 %954, -12
  %961 = add i64 %953, 6
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %960 to i32*
  %963 = load i32, i32* %962, align 4
  %964 = add i32 %963, -1
  %965 = zext i32 %964 to i64
  store i64 %965, i64* %RCX.i474, align 8
  %966 = lshr i32 %964, 31
  %967 = sub i32 %958, %964
  %968 = icmp ult i32 %958, %964
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %63, align 1
  %970 = and i32 %967, 255
  %971 = tail call i32 @llvm.ctpop.i32(i32 %970)
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  store i8 %974, i8* %64, align 1
  %975 = xor i32 %964, %958
  %976 = xor i32 %975, %967
  %977 = lshr i32 %976, 4
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  store i8 %979, i8* %65, align 1
  %980 = icmp eq i32 %967, 0
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %66, align 1
  %982 = lshr i32 %967, 31
  %983 = trunc i32 %982 to i8
  store i8 %983, i8* %67, align 1
  %984 = lshr i32 %958, 31
  %985 = xor i32 %966, %984
  %986 = xor i32 %982, %984
  %987 = add nuw nsw i32 %986, %985
  %988 = icmp eq i32 %987, 2
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %68, align 1
  %990 = icmp ne i8 %983, 0
  %991 = xor i1 %990, %988
  %.v14 = select i1 %991, i64 17, i64 219
  %992 = add i64 %953, %.v14
  store i64 %992, i64* %3, align 8
  br i1 %991, label %block_40117f, label %block_.L_401249

block_40117f:                                     ; preds = %block_.L_40116e
  %993 = load i64, i64* bitcast (%G_0x4d1__rip__4198791__type* @G_0x4d1__rip__4198791_ to i64*), align 8
  %994 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %993, i64* %994, align 1
  store double 0.000000e+00, double* %72, align 1
  %995 = add i64 %954, -40
  %996 = add i64 %992, 12
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i64*
  %998 = load i64, i64* %997, align 8
  store i64 %998, i64* %RAX.i484, align 8
  %999 = add i64 %954, -48
  %1000 = add i64 %992, 16
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i32*
  %1002 = load i32, i32* %1001, align 4
  %1003 = sext i32 %1002 to i64
  %1004 = mul nsw i64 %1003, 8000
  store i64 %1004, i64* %RCX.i474, align 8
  %1005 = lshr i64 %1004, 63
  %1006 = add i64 %1004, %998
  store i64 %1006, i64* %RAX.i484, align 8
  %1007 = icmp ult i64 %1006, %998
  %1008 = icmp ult i64 %1006, %1004
  %1009 = or i1 %1007, %1008
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %63, align 1
  %1011 = trunc i64 %1006 to i32
  %1012 = and i32 %1011, 255
  %1013 = tail call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  store i8 %1016, i8* %64, align 1
  %1017 = xor i64 %998, %1006
  %1018 = lshr i64 %1017, 4
  %1019 = trunc i64 %1018 to i8
  %1020 = and i8 %1019, 1
  store i8 %1020, i8* %65, align 1
  %1021 = icmp eq i64 %1006, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %66, align 1
  %1023 = lshr i64 %1006, 63
  %1024 = trunc i64 %1023 to i8
  store i8 %1024, i8* %67, align 1
  %1025 = lshr i64 %998, 63
  %1026 = xor i64 %1023, %1025
  %1027 = xor i64 %1023, %1005
  %1028 = add nuw nsw i64 %1026, %1027
  %1029 = icmp eq i64 %1028, 2
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %68, align 1
  %1031 = add i64 %992, 30
  store i64 %1031, i64* %3, align 8
  %1032 = load i32, i32* %957, align 4
  %1033 = sext i32 %1032 to i64
  store i64 %1033, i64* %RCX.i474, align 8
  %1034 = shl nsw i64 %1033, 3
  %1035 = add i64 %1034, %1006
  %1036 = add i64 %992, 35
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i64*
  %1038 = load i64, i64* %1037, align 8
  %1039 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %73, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1038, i64* %1039, align 1
  store double 0.000000e+00, double* %76, align 1
  %1040 = add i64 %954, -24
  %1041 = add i64 %992, 39
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i64*
  %1043 = load i64, i64* %1042, align 8
  store i64 %1043, i64* %RAX.i484, align 8
  %1044 = add i64 %992, 43
  store i64 %1044, i64* %3, align 8
  %1045 = load i32, i32* %1001, align 4
  %1046 = sext i32 %1045 to i64
  %1047 = mul nsw i64 %1046, 8000
  store i64 %1047, i64* %RCX.i474, align 8
  %1048 = lshr i64 %1047, 63
  %1049 = add i64 %1047, %1043
  store i64 %1049, i64* %RAX.i484, align 8
  %1050 = icmp ult i64 %1049, %1043
  %1051 = icmp ult i64 %1049, %1047
  %1052 = or i1 %1050, %1051
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %63, align 1
  %1054 = trunc i64 %1049 to i32
  %1055 = and i32 %1054, 255
  %1056 = tail call i32 @llvm.ctpop.i32(i32 %1055)
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  store i8 %1059, i8* %64, align 1
  %1060 = xor i64 %1043, %1049
  %1061 = lshr i64 %1060, 4
  %1062 = trunc i64 %1061 to i8
  %1063 = and i8 %1062, 1
  store i8 %1063, i8* %65, align 1
  %1064 = icmp eq i64 %1049, 0
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %66, align 1
  %1066 = lshr i64 %1049, 63
  %1067 = trunc i64 %1066 to i8
  store i8 %1067, i8* %67, align 1
  %1068 = lshr i64 %1043, 63
  %1069 = xor i64 %1066, %1068
  %1070 = xor i64 %1066, %1048
  %1071 = add nuw nsw i64 %1069, %1070
  %1072 = icmp eq i64 %1071, 2
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %68, align 1
  %1074 = load i64, i64* %RBP.i, align 8
  %1075 = add i64 %1074, -52
  %1076 = add i64 %992, 56
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = add i32 %1078, 1
  %1080 = zext i32 %1079 to i64
  store i64 %1080, i64* %RDX.i358, align 8
  %1081 = icmp eq i32 %1078, -1
  %1082 = icmp eq i32 %1079, 0
  %1083 = or i1 %1081, %1082
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %63, align 1
  %1085 = and i32 %1079, 255
  %1086 = tail call i32 @llvm.ctpop.i32(i32 %1085)
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  store i8 %1089, i8* %64, align 1
  %1090 = xor i32 %1078, %1079
  %1091 = lshr i32 %1090, 4
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  store i8 %1093, i8* %65, align 1
  %1094 = zext i1 %1082 to i8
  store i8 %1094, i8* %66, align 1
  %1095 = lshr i32 %1079, 31
  %1096 = trunc i32 %1095 to i8
  store i8 %1096, i8* %67, align 1
  %1097 = lshr i32 %1078, 31
  %1098 = xor i32 %1095, %1097
  %1099 = add nuw nsw i32 %1098, %1095
  %1100 = icmp eq i32 %1099, 2
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %68, align 1
  %1102 = sext i32 %1079 to i64
  store i64 %1102, i64* %RCX.i474, align 8
  %1103 = shl nsw i64 %1102, 3
  %1104 = add i64 %1103, %1049
  %1105 = add i64 %992, 67
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to double*
  %1107 = load double, double* %1106, align 8
  store double %1107, double* %78, align 1
  store double 0.000000e+00, double* %80, align 1
  %1108 = add i64 %1074, -24
  %1109 = add i64 %992, 71
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i64*
  %1111 = load i64, i64* %1110, align 8
  store i64 %1111, i64* %RAX.i484, align 8
  %1112 = add i64 %1074, -48
  %1113 = add i64 %992, 75
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = sext i32 %1115 to i64
  %1117 = mul nsw i64 %1116, 8000
  store i64 %1117, i64* %RCX.i474, align 8
  %1118 = lshr i64 %1117, 63
  %1119 = add i64 %1117, %1111
  store i64 %1119, i64* %RAX.i484, align 8
  %1120 = icmp ult i64 %1119, %1111
  %1121 = icmp ult i64 %1119, %1117
  %1122 = or i1 %1120, %1121
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %63, align 1
  %1124 = trunc i64 %1119 to i32
  %1125 = and i32 %1124, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %64, align 1
  %1130 = xor i64 %1111, %1119
  %1131 = lshr i64 %1130, 4
  %1132 = trunc i64 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %65, align 1
  %1134 = icmp eq i64 %1119, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %66, align 1
  %1136 = lshr i64 %1119, 63
  %1137 = trunc i64 %1136 to i8
  store i8 %1137, i8* %67, align 1
  %1138 = lshr i64 %1111, 63
  %1139 = xor i64 %1136, %1138
  %1140 = xor i64 %1136, %1118
  %1141 = add nuw nsw i64 %1139, %1140
  %1142 = icmp eq i64 %1141, 2
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %68, align 1
  %1144 = load i64, i64* %RBP.i, align 8
  %1145 = add i64 %1144, -52
  %1146 = add i64 %992, 89
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = sext i32 %1148 to i64
  store i64 %1149, i64* %RCX.i474, align 8
  %1150 = shl nsw i64 %1149, 3
  %1151 = add i64 %1150, %1119
  %1152 = add i64 %992, 94
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to double*
  %1154 = load double, double* %1153, align 8
  %1155 = fsub double %1107, %1154
  store double %1155, double* %78, align 1
  store i64 0, i64* %79, align 1
  %1156 = add i64 %1144, -32
  %1157 = add i64 %992, 98
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i64*
  %1159 = load i64, i64* %1158, align 8
  store i64 %1159, i64* %RAX.i484, align 8
  %1160 = add i64 %1144, -48
  %1161 = add i64 %992, 101
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i32*
  %1163 = load i32, i32* %1162, align 4
  %1164 = add i32 %1163, 1
  %1165 = zext i32 %1164 to i64
  store i64 %1165, i64* %RDX.i358, align 8
  %1166 = sext i32 %1164 to i64
  %1167 = mul nsw i64 %1166, 8000
  store i64 %1167, i64* %RCX.i474, align 8
  %1168 = lshr i64 %1167, 63
  %1169 = add i64 %1167, %1159
  store i64 %1169, i64* %RAX.i484, align 8
  %1170 = icmp ult i64 %1169, %1159
  %1171 = icmp ult i64 %1169, %1167
  %1172 = or i1 %1170, %1171
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %63, align 1
  %1174 = trunc i64 %1169 to i32
  %1175 = and i32 %1174, 255
  %1176 = tail call i32 @llvm.ctpop.i32(i32 %1175)
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  %1179 = xor i8 %1178, 1
  store i8 %1179, i8* %64, align 1
  %1180 = xor i64 %1159, %1169
  %1181 = lshr i64 %1180, 4
  %1182 = trunc i64 %1181 to i8
  %1183 = and i8 %1182, 1
  store i8 %1183, i8* %65, align 1
  %1184 = icmp eq i64 %1169, 0
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %66, align 1
  %1186 = lshr i64 %1169, 63
  %1187 = trunc i64 %1186 to i8
  store i8 %1187, i8* %67, align 1
  %1188 = lshr i64 %1159, 63
  %1189 = xor i64 %1186, %1188
  %1190 = xor i64 %1186, %1168
  %1191 = add nuw nsw i64 %1189, %1190
  %1192 = icmp eq i64 %1191, 2
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %68, align 1
  %1194 = load i64, i64* %RBP.i, align 8
  %1195 = add i64 %1194, -52
  %1196 = add i64 %992, 121
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i32*
  %1198 = load i32, i32* %1197, align 4
  %1199 = sext i32 %1198 to i64
  store i64 %1199, i64* %RCX.i474, align 8
  %1200 = shl nsw i64 %1199, 3
  %1201 = add i64 %1200, %1169
  %1202 = add i64 %992, 126
  store i64 %1202, i64* %3, align 8
  %1203 = load double, double* %78, align 1
  %1204 = inttoptr i64 %1201 to double*
  %1205 = load double, double* %1204, align 8
  %1206 = fadd double %1203, %1205
  store double %1206, double* %78, align 1
  %1207 = add i64 %1194, -32
  %1208 = add i64 %992, 130
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i64*
  %1210 = load i64, i64* %1209, align 8
  store i64 %1210, i64* %RAX.i484, align 8
  %1211 = add i64 %1194, -48
  %1212 = add i64 %992, 134
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = sext i32 %1214 to i64
  %1216 = mul nsw i64 %1215, 8000
  store i64 %1216, i64* %RCX.i474, align 8
  %1217 = lshr i64 %1216, 63
  %1218 = add i64 %1216, %1210
  store i64 %1218, i64* %RAX.i484, align 8
  %1219 = icmp ult i64 %1218, %1210
  %1220 = icmp ult i64 %1218, %1216
  %1221 = or i1 %1219, %1220
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %63, align 1
  %1223 = trunc i64 %1218 to i32
  %1224 = and i32 %1223, 255
  %1225 = tail call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  store i8 %1228, i8* %64, align 1
  %1229 = xor i64 %1210, %1218
  %1230 = lshr i64 %1229, 4
  %1231 = trunc i64 %1230 to i8
  %1232 = and i8 %1231, 1
  store i8 %1232, i8* %65, align 1
  %1233 = icmp eq i64 %1218, 0
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %66, align 1
  %1235 = lshr i64 %1218, 63
  %1236 = trunc i64 %1235 to i8
  store i8 %1236, i8* %67, align 1
  %1237 = lshr i64 %1210, 63
  %1238 = xor i64 %1235, %1237
  %1239 = xor i64 %1235, %1217
  %1240 = add nuw nsw i64 %1238, %1239
  %1241 = icmp eq i64 %1240, 2
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %68, align 1
  %1243 = add i64 %992, 148
  store i64 %1243, i64* %3, align 8
  %1244 = load i32, i32* %1197, align 4
  %1245 = sext i32 %1244 to i64
  store i64 %1245, i64* %RCX.i474, align 8
  %1246 = shl nsw i64 %1245, 3
  %1247 = add i64 %1246, %1218
  %1248 = add i64 %992, 153
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to double*
  %1250 = load double, double* %1249, align 8
  %1251 = fsub double %1206, %1250
  store double %1251, double* %78, align 1
  %1252 = load double, double* %70, align 1
  %1253 = fmul double %1252, %1251
  store double %1253, double* %70, align 1
  %1254 = load double, double* %74, align 1
  %1255 = fsub double %1254, %1253
  store double %1255, double* %74, align 1
  %1256 = load i64, i64* %RBP.i, align 8
  %1257 = add i64 %1256, -40
  %1258 = add i64 %992, 165
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i64*
  %1260 = load i64, i64* %1259, align 8
  store i64 %1260, i64* %RAX.i484, align 8
  %1261 = add i64 %1256, -48
  %1262 = add i64 %992, 169
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1261 to i32*
  %1264 = load i32, i32* %1263, align 4
  %1265 = sext i32 %1264 to i64
  %1266 = mul nsw i64 %1265, 8000
  store i64 %1266, i64* %RCX.i474, align 8
  %1267 = lshr i64 %1266, 63
  %1268 = add i64 %1266, %1260
  store i64 %1268, i64* %RAX.i484, align 8
  %1269 = icmp ult i64 %1268, %1260
  %1270 = icmp ult i64 %1268, %1266
  %1271 = or i1 %1269, %1270
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %63, align 1
  %1273 = trunc i64 %1268 to i32
  %1274 = and i32 %1273, 255
  %1275 = tail call i32 @llvm.ctpop.i32(i32 %1274)
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  %1278 = xor i8 %1277, 1
  store i8 %1278, i8* %64, align 1
  %1279 = xor i64 %1260, %1268
  %1280 = lshr i64 %1279, 4
  %1281 = trunc i64 %1280 to i8
  %1282 = and i8 %1281, 1
  store i8 %1282, i8* %65, align 1
  %1283 = icmp eq i64 %1268, 0
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %66, align 1
  %1285 = lshr i64 %1268, 63
  %1286 = trunc i64 %1285 to i8
  store i8 %1286, i8* %67, align 1
  %1287 = lshr i64 %1260, 63
  %1288 = xor i64 %1285, %1287
  %1289 = xor i64 %1285, %1267
  %1290 = add nuw nsw i64 %1288, %1289
  %1291 = icmp eq i64 %1290, 2
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %68, align 1
  %1293 = add i64 %1256, -52
  %1294 = add i64 %992, 183
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = sext i32 %1296 to i64
  store i64 %1297, i64* %RCX.i474, align 8
  %1298 = shl nsw i64 %1297, 3
  %1299 = add i64 %1298, %1268
  %1300 = add i64 %992, 188
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to double*
  store double %1255, double* %1301, align 8
  %1302 = load i64, i64* %RBP.i, align 8
  %1303 = add i64 %1302, -52
  %1304 = load i64, i64* %3, align 8
  %1305 = add i64 %1304, 3
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1303 to i32*
  %1307 = load i32, i32* %1306, align 4
  %1308 = add i32 %1307, 1
  %1309 = zext i32 %1308 to i64
  store i64 %1309, i64* %RAX.i484, align 8
  %1310 = icmp eq i32 %1307, -1
  %1311 = icmp eq i32 %1308, 0
  %1312 = or i1 %1310, %1311
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %63, align 1
  %1314 = and i32 %1308, 255
  %1315 = tail call i32 @llvm.ctpop.i32(i32 %1314)
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  %1318 = xor i8 %1317, 1
  store i8 %1318, i8* %64, align 1
  %1319 = xor i32 %1307, %1308
  %1320 = lshr i32 %1319, 4
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  store i8 %1322, i8* %65, align 1
  %1323 = zext i1 %1311 to i8
  store i8 %1323, i8* %66, align 1
  %1324 = lshr i32 %1308, 31
  %1325 = trunc i32 %1324 to i8
  store i8 %1325, i8* %67, align 1
  %1326 = lshr i32 %1307, 31
  %1327 = xor i32 %1324, %1326
  %1328 = add nuw nsw i32 %1327, %1324
  %1329 = icmp eq i32 %1328, 2
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %68, align 1
  %1331 = add i64 %1304, 9
  store i64 %1331, i64* %3, align 8
  store i32 %1308, i32* %1306, align 4
  %1332 = load i64, i64* %3, align 8
  %1333 = add i64 %1332, -214
  store i64 %1333, i64* %3, align 8
  br label %block_.L_40116e

block_.L_401249:                                  ; preds = %block_.L_40116e
  %1334 = add i64 %954, -48
  %1335 = add i64 %992, 8
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i32*
  %1337 = load i32, i32* %1336, align 4
  %1338 = add i32 %1337, 1
  %1339 = zext i32 %1338 to i64
  store i64 %1339, i64* %RAX.i484, align 8
  %1340 = icmp eq i32 %1337, -1
  %1341 = icmp eq i32 %1338, 0
  %1342 = or i1 %1340, %1341
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %63, align 1
  %1344 = and i32 %1338, 255
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %64, align 1
  %1349 = xor i32 %1337, %1338
  %1350 = lshr i32 %1349, 4
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  store i8 %1352, i8* %65, align 1
  %1353 = zext i1 %1341 to i8
  store i8 %1353, i8* %66, align 1
  %1354 = lshr i32 %1338, 31
  %1355 = trunc i32 %1354 to i8
  store i8 %1355, i8* %67, align 1
  %1356 = lshr i32 %1337, 31
  %1357 = xor i32 %1354, %1356
  %1358 = add nuw nsw i32 %1357, %1354
  %1359 = icmp eq i32 %1358, 2
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %68, align 1
  %1361 = add i64 %992, 14
  store i64 %1361, i64* %3, align 8
  store i32 %1338, i32* %1336, align 4
  %1362 = load i64, i64* %3, align 8
  %1363 = add i64 %1362, -257
  store i64 %1363, i64* %3, align 8
  br label %block_.L_401156

block_.L_40125c:                                  ; preds = %block_.L_401156
  %1364 = add i64 %911, -44
  %1365 = add i64 %949, 8
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  %1368 = add i32 %1367, 1
  %1369 = zext i32 %1368 to i64
  store i64 %1369, i64* %RAX.i484, align 8
  %1370 = icmp eq i32 %1367, -1
  %1371 = icmp eq i32 %1368, 0
  %1372 = or i1 %1370, %1371
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %63, align 1
  %1374 = and i32 %1368, 255
  %1375 = tail call i32 @llvm.ctpop.i32(i32 %1374)
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  %1378 = xor i8 %1377, 1
  store i8 %1378, i8* %64, align 1
  %1379 = xor i32 %1367, %1368
  %1380 = lshr i32 %1379, 4
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  store i8 %1382, i8* %65, align 1
  %1383 = zext i1 %1371 to i8
  store i8 %1383, i8* %66, align 1
  %1384 = lshr i32 %1368, 31
  %1385 = trunc i32 %1384 to i8
  store i8 %1385, i8* %67, align 1
  %1386 = lshr i32 %1367, 31
  %1387 = xor i32 %1384, %1386
  %1388 = add nuw nsw i32 %1387, %1384
  %1389 = icmp eq i32 %1388, 2
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %68, align 1
  %1391 = add i64 %949, 14
  store i64 %1391, i64* %3, align 8
  store i32 %1368, i32* %1366, align 4
  %1392 = load i64, i64* %3, align 8
  %1393 = add i64 %1392, -754
  store i64 %1393, i64* %3, align 8
  br label %block_.L_400f78

block_.L_40126f:                                  ; preds = %block_.L_400f78
  %1394 = add i64 %118, 1
  store i64 %1394, i64* %3, align 8
  %1395 = load i64, i64* %6, align 8
  %1396 = add i64 %1395, 8
  %1397 = inttoptr i64 %1395 to i64*
  %1398 = load i64, i64* %1397, align 8
  store i64 %1398, i64* %RBP.i, align 8
  store i64 %1396, i64* %6, align 8
  %1399 = add i64 %118, 2
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1396 to i64*
  %1401 = load i64, i64* %1400, align 8
  store i64 %1401, i64* %3, align 8
  %1402 = add i64 %1395, 16
  store i64 %1402, i64* %6, align 8
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

define %struct.Memory* @routine_jge_.L_40126f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400fbf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400f8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401087(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401074(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_0x673__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x673__rip__4198381__type* @G_0x673__rip__4198381_ to i64*), align 8
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

define %struct.Memory* @routine_jmpq_.L_400fd9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401079(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400fc6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_40114f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_40113c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_0x5ab__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x5ab__rip__4198581__type* @G_0x5ab__rip__4198581_ to i64*), align 8
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

define %struct.Memory* @routine_jmpq_.L_4010a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401141(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40108e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_40125c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401249(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_0x4d1__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4d1__rip__4198791__type* @G_0x4d1__rip__4198791_ to i64*), align 8
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

define %struct.Memory* @routine_jmpq_.L_40116e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40124e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401156(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401261(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400f78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
