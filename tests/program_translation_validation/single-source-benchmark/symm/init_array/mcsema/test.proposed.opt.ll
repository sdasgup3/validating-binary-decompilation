; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x904__rip__4197012__type = type <{ [16 x i8] }>
%G_0x904__rip__4197020__type = type <{ [16 x i8] }>
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
@G_0x904__rip__4197012_ = local_unnamed_addr global %G_0x904__rip__4197012__type zeroinitializer
@G_0x904__rip__4197020_ = local_unnamed_addr global %G_0x904__rip__4197020__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @init_array(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 16
  %12 = add i64 %10, 7
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i253, align 8
  %R10.i251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %15 = add i64 %7, 8
  %16 = add i64 %10, 11
  store i64 %16, i64* %3, align 8
  %17 = inttoptr i64 %15 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %R10.i251, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %20 = load i64, i64* bitcast (%G_0x904__rip__4197012__type* @G_0x904__rip__4197012_ to i64*), align 8
  %21 = bitcast [32 x %union.VectorReg]* %19 to double*
  %22 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %19, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %20, i64* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %24 = bitcast i64* %23 to double*
  store double 0.000000e+00, double* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %26 = load i64, i64* bitcast (%G_0x904__rip__4197020__type* @G_0x904__rip__4197020_ to i64*), align 8
  %27 = bitcast %union.VectorReg* %25 to double*
  %28 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %25, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %26, i64* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %30 = bitcast i64* %29 to double*
  store double 0.000000e+00, double* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %31 to i32*
  %32 = add i64 %7, -12
  %33 = load i32, i32* %EDI.i, align 4
  %34 = add i64 %10, 30
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %32 to i32*
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %36 to i32*
  %37 = load i64, i64* %RBP.i, align 8
  %38 = add i64 %37, -8
  %39 = load i32, i32* %ESI.i, align 4
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 3
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %38 to i32*
  store i32 %39, i32* %42, align 4
  %RDX.i239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RDX.i239, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %RCX.i236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -24
  %51 = load i64, i64* %RCX.i236, align 8
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -32
  %57 = load i64, i64* %R8.i, align 8
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %56 to i64*
  store i64 %57, i64* %60, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -40
  %63 = load i64, i64* %R9.i, align 8
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -16
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %68 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %RCX.i236, align 8
  %73 = add i64 %69, 8
  store i64 %73, i64* %3, align 8
  %74 = load i64, i64* %28, align 1
  %75 = inttoptr i64 %72 to i64*
  store i64 %74, i64* %75, align 8
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -24
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RCX.i236, align 8
  %82 = add i64 %78, 8
  store i64 %82, i64* %3, align 8
  %83 = load i64, i64* %22, align 1
  %84 = inttoptr i64 %81 to i64*
  store i64 %83, i64* %84, align 8
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -44
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 7
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %86 to i32*
  store i32 0, i32* %89, align 4
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -56
  %92 = load i64, i64* %R10.i251, align 8
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %95, align 8
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -64
  %98 = load i64, i64* %RAX.i253, align 8
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 4
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %97 to i64*
  store i64 %98, i64* %101, align 8
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400ad1

block_.L_400ad1:                                  ; preds = %block_.L_400b80, %entry
  %108 = phi i64 [ %426, %block_.L_400b80 ], [ %.pre, %entry ]
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -44
  %111 = add i64 %108, 3
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %RAX.i253, align 8
  %115 = add i64 %109, -4
  %116 = add i64 %108, 6
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = sub i32 %113, %118
  %120 = icmp ult i32 %113, %118
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %102, align 1
  %122 = and i32 %119, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %103, align 1
  %127 = xor i32 %118, %113
  %128 = xor i32 %127, %119
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %104, align 1
  %132 = icmp eq i32 %119, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %105, align 1
  %134 = lshr i32 %119, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %106, align 1
  %136 = lshr i32 %113, 31
  %137 = lshr i32 %118, 31
  %138 = xor i32 %137, %136
  %139 = xor i32 %134, %136
  %140 = add nuw nsw i32 %139, %138
  %141 = icmp eq i32 %140, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %107, align 1
  %143 = icmp ne i8 %135, 0
  %144 = xor i1 %143, %141
  %.v = select i1 %144, i64 12, i64 194
  %145 = add i64 %108, %.v
  store i64 %145, i64* %3, align 8
  br i1 %144, label %block_400add, label %block_.L_400b93

block_400add:                                     ; preds = %block_.L_400ad1
  %146 = add i64 %109, -48
  %147 = add i64 %145, 7
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  store i32 0, i32* %148, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400ae4

block_.L_400ae4:                                  ; preds = %block_400af0, %block_400add
  %149 = phi i64 [ %397, %block_400af0 ], [ %.pre1, %block_400add ]
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -48
  %152 = add i64 %149, 3
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RAX.i253, align 8
  %156 = add i64 %150, -8
  %157 = add i64 %149, 6
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = sub i32 %154, %159
  %161 = icmp ult i32 %154, %159
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %102, align 1
  %163 = and i32 %160, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %103, align 1
  %168 = xor i32 %159, %154
  %169 = xor i32 %168, %160
  %170 = lshr i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %104, align 1
  %173 = icmp eq i32 %160, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %105, align 1
  %175 = lshr i32 %160, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %106, align 1
  %177 = lshr i32 %154, 31
  %178 = lshr i32 %159, 31
  %179 = xor i32 %178, %177
  %180 = xor i32 %175, %177
  %181 = add nuw nsw i32 %180, %179
  %182 = icmp eq i32 %181, 2
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %107, align 1
  %184 = icmp ne i8 %176, 0
  %185 = xor i1 %184, %182
  %.v4 = select i1 %185, i64 12, i64 156
  %186 = add i64 %149, %.v4
  store i64 %186, i64* %3, align 8
  %187 = add i64 %150, -44
  br i1 %185, label %block_400af0, label %block_.L_400b80

block_400af0:                                     ; preds = %block_.L_400ae4
  %188 = add i64 %186, 3
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RAX.i253, align 8
  %192 = sitofp i32 %190 to double
  store double %192, double* %21, align 1
  %193 = add i64 %186, 10
  store i64 %193, i64* %3, align 8
  %194 = load i32, i32* %153, align 4
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX.i253, align 8
  %196 = sitofp i32 %194 to double
  store double %196, double* %27, align 1
  %197 = fmul double %192, %196
  store double %197, double* %21, align 1
  %198 = add i64 %150, -4
  %199 = add i64 %186, 21
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = zext i32 %201 to i64
  store i64 %202, i64* %RAX.i253, align 8
  %203 = sitofp i32 %201 to double
  store double %203, double* %27, align 1
  %204 = fdiv double %197, %203
  store double %204, double* %21, align 1
  %205 = add i64 %150, -32
  %206 = add i64 %186, 33
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i64*
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %RCX.i236, align 8
  %209 = add i64 %186, 37
  store i64 %209, i64* %3, align 8
  %210 = load i32, i32* %189, align 4
  %211 = sext i32 %210 to i64
  %212 = shl nsw i64 %211, 13
  store i64 %212, i64* %RDX.i239, align 8
  %213 = lshr i64 %211, 50
  %214 = and i64 %213, 1
  %215 = add i64 %212, %208
  store i64 %215, i64* %RCX.i236, align 8
  %216 = icmp ult i64 %215, %208
  %217 = icmp ult i64 %215, %212
  %218 = or i1 %216, %217
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %102, align 1
  %220 = trunc i64 %215 to i32
  %221 = and i32 %220, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221)
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %103, align 1
  %226 = xor i64 %208, %215
  %227 = lshr i64 %226, 4
  %228 = trunc i64 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %104, align 1
  %230 = icmp eq i64 %215, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %105, align 1
  %232 = lshr i64 %215, 63
  %233 = trunc i64 %232 to i8
  store i8 %233, i8* %106, align 1
  %234 = lshr i64 %208, 63
  %235 = xor i64 %232, %234
  %236 = xor i64 %232, %214
  %237 = add nuw nsw i64 %235, %236
  %238 = icmp eq i64 %237, 2
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %107, align 1
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -48
  %242 = add i64 %186, 48
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  store i64 %245, i64* %RDX.i239, align 8
  %246 = shl nsw i64 %245, 3
  %247 = add i64 %246, %215
  %248 = add i64 %186, 53
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to double*
  store double %204, double* %249, align 8
  %250 = load i64, i64* %RBP.i, align 8
  %251 = add i64 %250, -40
  %252 = load i64, i64* %3, align 8
  %253 = add i64 %252, 4
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %251 to i64*
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %RCX.i236, align 8
  %256 = add i64 %250, -44
  %257 = add i64 %252, 8
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = shl nsw i64 %260, 13
  store i64 %261, i64* %RDX.i239, align 8
  %262 = lshr i64 %260, 50
  %263 = and i64 %262, 1
  %264 = add i64 %261, %255
  store i64 %264, i64* %RCX.i236, align 8
  %265 = icmp ult i64 %264, %255
  %266 = icmp ult i64 %264, %261
  %267 = or i1 %265, %266
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %102, align 1
  %269 = trunc i64 %264 to i32
  %270 = and i32 %269, 255
  %271 = tail call i32 @llvm.ctpop.i32(i32 %270)
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  store i8 %274, i8* %103, align 1
  %275 = xor i64 %255, %264
  %276 = lshr i64 %275, 4
  %277 = trunc i64 %276 to i8
  %278 = and i8 %277, 1
  store i8 %278, i8* %104, align 1
  %279 = icmp eq i64 %264, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %105, align 1
  %281 = lshr i64 %264, 63
  %282 = trunc i64 %281 to i8
  store i8 %282, i8* %106, align 1
  %283 = lshr i64 %255, 63
  %284 = xor i64 %281, %283
  %285 = xor i64 %281, %263
  %286 = add nuw nsw i64 %284, %285
  %287 = icmp eq i64 %286, 2
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %107, align 1
  %289 = add i64 %250, -48
  %290 = add i64 %252, 19
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  store i64 %293, i64* %RDX.i239, align 8
  %294 = shl nsw i64 %293, 3
  %295 = add i64 %294, %264
  %296 = add i64 %252, 24
  store i64 %296, i64* %3, align 8
  %297 = load i64, i64* %22, align 1
  %298 = inttoptr i64 %295 to i64*
  store i64 %297, i64* %298, align 8
  %299 = load i64, i64* %RBP.i, align 8
  %300 = add i64 %299, -44
  %301 = load i64, i64* %3, align 8
  %302 = add i64 %301, 3
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %300 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RAX.i253, align 8
  %306 = sitofp i32 %304 to double
  store double %306, double* %21, align 1
  %307 = add i64 %299, -48
  %308 = add i64 %301, 10
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RAX.i253, align 8
  %312 = sitofp i32 %310 to double
  store double %312, double* %27, align 1
  %313 = fmul double %306, %312
  store double %313, double* %21, align 1
  %314 = add i64 %299, -4
  %315 = add i64 %301, 21
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RAX.i253, align 8
  %319 = sitofp i32 %317 to double
  store double %319, double* %27, align 1
  %320 = fdiv double %313, %319
  store double %320, double* %21, align 1
  %321 = add i64 %299, 24
  %322 = add i64 %301, 33
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %RCX.i236, align 8
  %325 = add i64 %301, 37
  store i64 %325, i64* %3, align 8
  %326 = load i32, i32* %303, align 4
  %327 = sext i32 %326 to i64
  %328 = shl nsw i64 %327, 13
  store i64 %328, i64* %RDX.i239, align 8
  %329 = lshr i64 %327, 50
  %330 = and i64 %329, 1
  %331 = add i64 %328, %324
  store i64 %331, i64* %RCX.i236, align 8
  %332 = icmp ult i64 %331, %324
  %333 = icmp ult i64 %331, %328
  %334 = or i1 %332, %333
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %102, align 1
  %336 = trunc i64 %331 to i32
  %337 = and i32 %336, 255
  %338 = tail call i32 @llvm.ctpop.i32(i32 %337)
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  store i8 %341, i8* %103, align 1
  %342 = xor i64 %324, %331
  %343 = lshr i64 %342, 4
  %344 = trunc i64 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %104, align 1
  %346 = icmp eq i64 %331, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %105, align 1
  %348 = lshr i64 %331, 63
  %349 = trunc i64 %348 to i8
  store i8 %349, i8* %106, align 1
  %350 = lshr i64 %324, 63
  %351 = xor i64 %348, %350
  %352 = xor i64 %348, %330
  %353 = add nuw nsw i64 %351, %352
  %354 = icmp eq i64 %353, 2
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %107, align 1
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -48
  %358 = add i64 %301, 48
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  store i64 %361, i64* %RDX.i239, align 8
  %362 = shl nsw i64 %361, 3
  %363 = add i64 %362, %331
  %364 = add i64 %301, 53
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to double*
  store double %320, double* %365, align 8
  %366 = load i64, i64* %RBP.i, align 8
  %367 = add i64 %366, -48
  %368 = load i64, i64* %3, align 8
  %369 = add i64 %368, 3
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %367 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = add i32 %371, 1
  %373 = zext i32 %372 to i64
  store i64 %373, i64* %RAX.i253, align 8
  %374 = icmp eq i32 %371, -1
  %375 = icmp eq i32 %372, 0
  %376 = or i1 %374, %375
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %102, align 1
  %378 = and i32 %372, 255
  %379 = tail call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %103, align 1
  %383 = xor i32 %371, %372
  %384 = lshr i32 %383, 4
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  store i8 %386, i8* %104, align 1
  %387 = zext i1 %375 to i8
  store i8 %387, i8* %105, align 1
  %388 = lshr i32 %372, 31
  %389 = trunc i32 %388 to i8
  store i8 %389, i8* %106, align 1
  %390 = lshr i32 %371, 31
  %391 = xor i32 %388, %390
  %392 = add nuw nsw i32 %391, %388
  %393 = icmp eq i32 %392, 2
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %107, align 1
  %395 = add i64 %368, 9
  store i64 %395, i64* %3, align 8
  store i32 %372, i32* %370, align 4
  %396 = load i64, i64* %3, align 8
  %397 = add i64 %396, -151
  store i64 %397, i64* %3, align 8
  br label %block_.L_400ae4

block_.L_400b80:                                  ; preds = %block_.L_400ae4
  %398 = add i64 %186, 8
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %187 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = add i32 %400, 1
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RAX.i253, align 8
  %403 = icmp eq i32 %400, -1
  %404 = icmp eq i32 %401, 0
  %405 = or i1 %403, %404
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %102, align 1
  %407 = and i32 %401, 255
  %408 = tail call i32 @llvm.ctpop.i32(i32 %407)
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  store i8 %411, i8* %103, align 1
  %412 = xor i32 %400, %401
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %104, align 1
  %416 = zext i1 %404 to i8
  store i8 %416, i8* %105, align 1
  %417 = lshr i32 %401, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %106, align 1
  %419 = lshr i32 %400, 31
  %420 = xor i32 %417, %419
  %421 = add nuw nsw i32 %420, %417
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %107, align 1
  %424 = add i64 %186, 14
  store i64 %424, i64* %3, align 8
  store i32 %401, i32* %399, align 4
  %425 = load i64, i64* %3, align 8
  %426 = add i64 %425, -189
  store i64 %426, i64* %3, align 8
  br label %block_.L_400ad1

block_.L_400b93:                                  ; preds = %block_.L_400ad1
  %427 = add i64 %145, 7
  store i64 %427, i64* %3, align 8
  store i32 0, i32* %112, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400b9a

block_.L_400b9a:                                  ; preds = %block_.L_400bfc, %block_.L_400b93
  %428 = phi i64 [ %630, %block_.L_400bfc ], [ %.pre2, %block_.L_400b93 ]
  %429 = load i64, i64* %RBP.i, align 8
  %430 = add i64 %429, -44
  %431 = add i64 %428, 3
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i32*
  %433 = load i32, i32* %432, align 4
  %434 = zext i32 %433 to i64
  store i64 %434, i64* %RAX.i253, align 8
  %435 = add i64 %429, -8
  %436 = add i64 %428, 6
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = sub i32 %433, %438
  %440 = icmp ult i32 %433, %438
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %102, align 1
  %442 = and i32 %439, 255
  %443 = tail call i32 @llvm.ctpop.i32(i32 %442)
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = xor i8 %445, 1
  store i8 %446, i8* %103, align 1
  %447 = xor i32 %438, %433
  %448 = xor i32 %447, %439
  %449 = lshr i32 %448, 4
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  store i8 %451, i8* %104, align 1
  %452 = icmp eq i32 %439, 0
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %105, align 1
  %454 = lshr i32 %439, 31
  %455 = trunc i32 %454 to i8
  store i8 %455, i8* %106, align 1
  %456 = lshr i32 %433, 31
  %457 = lshr i32 %438, 31
  %458 = xor i32 %457, %456
  %459 = xor i32 %454, %456
  %460 = add nuw nsw i32 %459, %458
  %461 = icmp eq i32 %460, 2
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %107, align 1
  %463 = icmp ne i8 %455, 0
  %464 = xor i1 %463, %461
  %.v5 = select i1 %464, i64 12, i64 117
  %465 = add i64 %428, %.v5
  store i64 %465, i64* %3, align 8
  br i1 %464, label %block_400ba6, label %block_.L_400c0f

block_400ba6:                                     ; preds = %block_.L_400b9a
  %466 = add i64 %429, -48
  %467 = add i64 %465, 7
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %466 to i32*
  store i32 0, i32* %468, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400bad

block_.L_400bad:                                  ; preds = %block_400bb9, %block_400ba6
  %469 = phi i64 [ %601, %block_400bb9 ], [ %.pre3, %block_400ba6 ]
  %470 = load i64, i64* %RBP.i, align 8
  %471 = add i64 %470, -48
  %472 = add i64 %469, 3
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i32*
  %474 = load i32, i32* %473, align 4
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RAX.i253, align 8
  %476 = add i64 %470, -8
  %477 = add i64 %469, 6
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = sub i32 %474, %479
  %481 = icmp ult i32 %474, %479
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %102, align 1
  %483 = and i32 %480, 255
  %484 = tail call i32 @llvm.ctpop.i32(i32 %483)
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  store i8 %487, i8* %103, align 1
  %488 = xor i32 %479, %474
  %489 = xor i32 %488, %480
  %490 = lshr i32 %489, 4
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %104, align 1
  %493 = icmp eq i32 %480, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %105, align 1
  %495 = lshr i32 %480, 31
  %496 = trunc i32 %495 to i8
  store i8 %496, i8* %106, align 1
  %497 = lshr i32 %474, 31
  %498 = lshr i32 %479, 31
  %499 = xor i32 %498, %497
  %500 = xor i32 %495, %497
  %501 = add nuw nsw i32 %500, %499
  %502 = icmp eq i32 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %107, align 1
  %504 = icmp ne i8 %496, 0
  %505 = xor i1 %504, %502
  %.v6 = select i1 %505, i64 12, i64 79
  %506 = add i64 %469, %.v6
  store i64 %506, i64* %3, align 8
  %507 = add i64 %470, -44
  br i1 %505, label %block_400bb9, label %block_.L_400bfc

block_400bb9:                                     ; preds = %block_.L_400bad
  %508 = add i64 %506, 3
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = zext i32 %510 to i64
  store i64 %511, i64* %RAX.i253, align 8
  %512 = sitofp i32 %510 to double
  store double %512, double* %21, align 1
  %513 = add i64 %506, 10
  store i64 %513, i64* %3, align 8
  %514 = load i32, i32* %473, align 4
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RAX.i253, align 8
  %516 = sitofp i32 %514 to double
  store double %516, double* %27, align 1
  %517 = fmul double %512, %516
  store double %517, double* %21, align 1
  %518 = add i64 %470, -4
  %519 = add i64 %506, 21
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RAX.i253, align 8
  %523 = sitofp i32 %521 to double
  store double %523, double* %27, align 1
  %524 = fdiv double %517, %523
  store double %524, double* %21, align 1
  %525 = add i64 %470, 16
  %526 = add i64 %506, 33
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i64*
  %528 = load i64, i64* %527, align 8
  store i64 %528, i64* %RCX.i236, align 8
  %529 = add i64 %506, 37
  store i64 %529, i64* %3, align 8
  %530 = load i32, i32* %509, align 4
  %531 = sext i32 %530 to i64
  %532 = shl nsw i64 %531, 13
  store i64 %532, i64* %RDX.i239, align 8
  %533 = lshr i64 %531, 50
  %534 = and i64 %533, 1
  %535 = add i64 %532, %528
  store i64 %535, i64* %RCX.i236, align 8
  %536 = icmp ult i64 %535, %528
  %537 = icmp ult i64 %535, %532
  %538 = or i1 %536, %537
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %102, align 1
  %540 = trunc i64 %535 to i32
  %541 = and i32 %540, 255
  %542 = tail call i32 @llvm.ctpop.i32(i32 %541)
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = xor i8 %544, 1
  store i8 %545, i8* %103, align 1
  %546 = xor i64 %528, %535
  %547 = lshr i64 %546, 4
  %548 = trunc i64 %547 to i8
  %549 = and i8 %548, 1
  store i8 %549, i8* %104, align 1
  %550 = icmp eq i64 %535, 0
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %105, align 1
  %552 = lshr i64 %535, 63
  %553 = trunc i64 %552 to i8
  store i8 %553, i8* %106, align 1
  %554 = lshr i64 %528, 63
  %555 = xor i64 %552, %554
  %556 = xor i64 %552, %534
  %557 = add nuw nsw i64 %555, %556
  %558 = icmp eq i64 %557, 2
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %107, align 1
  %560 = load i64, i64* %RBP.i, align 8
  %561 = add i64 %560, -48
  %562 = add i64 %506, 48
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = sext i32 %564 to i64
  store i64 %565, i64* %RDX.i239, align 8
  %566 = shl nsw i64 %565, 3
  %567 = add i64 %566, %535
  %568 = add i64 %506, 53
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to double*
  store double %524, double* %569, align 8
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -48
  %572 = load i64, i64* %3, align 8
  %573 = add i64 %572, 3
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %571 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = add i32 %575, 1
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RAX.i253, align 8
  %578 = icmp eq i32 %575, -1
  %579 = icmp eq i32 %576, 0
  %580 = or i1 %578, %579
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %102, align 1
  %582 = and i32 %576, 255
  %583 = tail call i32 @llvm.ctpop.i32(i32 %582)
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = xor i8 %585, 1
  store i8 %586, i8* %103, align 1
  %587 = xor i32 %575, %576
  %588 = lshr i32 %587, 4
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  store i8 %590, i8* %104, align 1
  %591 = zext i1 %579 to i8
  store i8 %591, i8* %105, align 1
  %592 = lshr i32 %576, 31
  %593 = trunc i32 %592 to i8
  store i8 %593, i8* %106, align 1
  %594 = lshr i32 %575, 31
  %595 = xor i32 %592, %594
  %596 = add nuw nsw i32 %595, %592
  %597 = icmp eq i32 %596, 2
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %107, align 1
  %599 = add i64 %572, 9
  store i64 %599, i64* %3, align 8
  store i32 %576, i32* %574, align 4
  %600 = load i64, i64* %3, align 8
  %601 = add i64 %600, -74
  store i64 %601, i64* %3, align 8
  br label %block_.L_400bad

block_.L_400bfc:                                  ; preds = %block_.L_400bad
  %602 = add i64 %506, 8
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %507 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = add i32 %604, 1
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RAX.i253, align 8
  %607 = icmp eq i32 %604, -1
  %608 = icmp eq i32 %605, 0
  %609 = or i1 %607, %608
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %102, align 1
  %611 = and i32 %605, 255
  %612 = tail call i32 @llvm.ctpop.i32(i32 %611)
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  %615 = xor i8 %614, 1
  store i8 %615, i8* %103, align 1
  %616 = xor i32 %604, %605
  %617 = lshr i32 %616, 4
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  store i8 %619, i8* %104, align 1
  %620 = zext i1 %608 to i8
  store i8 %620, i8* %105, align 1
  %621 = lshr i32 %605, 31
  %622 = trunc i32 %621 to i8
  store i8 %622, i8* %106, align 1
  %623 = lshr i32 %604, 31
  %624 = xor i32 %621, %623
  %625 = add nuw nsw i32 %624, %621
  %626 = icmp eq i32 %625, 2
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %107, align 1
  %628 = add i64 %506, 14
  store i64 %628, i64* %3, align 8
  store i32 %605, i32* %603, align 4
  %629 = load i64, i64* %3, align 8
  %630 = add i64 %629, -112
  store i64 %630, i64* %3, align 8
  br label %block_.L_400b9a

block_.L_400c0f:                                  ; preds = %block_.L_400b9a
  %631 = add i64 %465, 1
  store i64 %631, i64* %3, align 8
  %632 = load i64, i64* %6, align 8
  %633 = add i64 %632, 8
  %634 = inttoptr i64 %632 to i64*
  %635 = load i64, i64* %634, align 8
  store i64 %635, i64* %RBP.i, align 8
  store i64 %633, i64* %6, align 8
  %636 = add i64 %465, 2
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %633 to i64*
  %638 = load i64, i64* %637, align 8
  store i64 %638, i64* %3, align 8
  %639 = add i64 %632, 16
  store i64 %639, i64* %6, align 8
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

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x904__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x904__rip__4197012__type* @G_0x904__rip__4197012_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x904__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x904__rip__4197020__type* @G_0x904__rip__4197020_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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

define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_movsd__xmm1____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
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

define %struct.Memory* @routine_movsd__xmm0____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
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

define %struct.Memory* @routine_movq__r10__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_jge_.L_400b93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400b80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0xd___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 13
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 51
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 50
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_400ae4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400ad1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400c0f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400bfc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c01(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
