; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7d8__rip__4197264__type = type <{ [16 x i8] }>
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
@G_0x7d8__rip__4197264_ = local_unnamed_addr global %G_0x7d8__rip__4197264__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_durbin(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 8
  %12 = add i64 %10, 7
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i499, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %16 = load i64, i64* bitcast (%G_0x7d8__rip__4197264__type* @G_0x7d8__rip__4197264_ to i64*), align 8
  %17 = bitcast [32 x %union.VectorReg]* %15 to double*
  %18 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %15, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %16, i64* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %21 to i32*
  %22 = add i64 %7, -12
  %23 = load i32, i32* %EDI.i, align 4
  %24 = add i64 %10, 18
  store i64 %24, i64* %3, align 8
  %25 = inttoptr i64 %22 to i32*
  store i32 %23, i32* %25, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %26 = load i64, i64* %RBP.i, align 8
  %27 = add i64 %26, -16
  %28 = load i64, i64* %RSI.i, align 8
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 4
  store i64 %30, i64* %3, align 8
  %31 = inttoptr i64 %27 to i64*
  store i64 %28, i64* %31, align 8
  %RDX.i490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -24
  %34 = load i64, i64* %RDX.i490, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 4
  store i64 %36, i64* %3, align 8
  %37 = inttoptr i64 %33 to i64*
  store i64 %34, i64* %37, align 8
  %RCX.i487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %38 = load i64, i64* %RBP.i, align 8
  %39 = add i64 %38, -32
  %40 = load i64, i64* %RCX.i487, align 8
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -40
  %46 = load i64, i64* %R8.i, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -48
  %52 = load i64, i64* %R9.i, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -48
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %RCX.i487, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %63 = add i64 %58, 8
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i64*
  %65 = load i64, i64* %64, align 8
  %66 = bitcast %union.VectorReg* %62 to double*
  %67 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %62, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %65, i64* %67, align 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %69 = bitcast i64* %68 to double*
  store double 0.000000e+00, double* %69, align 1
  %70 = add i64 %56, -16
  %71 = add i64 %58, 12
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RCX.i487, align 8
  %74 = add i64 %58, 16
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i64*
  store i64 %65, i64* %75, align 8
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -40
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RCX.i487, align 8
  %82 = add i64 %78, 8
  store i64 %82, i64* %3, align 8
  %83 = load i64, i64* %18, align 1
  %84 = inttoptr i64 %81 to i64*
  store i64 %83, i64* %84, align 8
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -48
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %86 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RCX.i487, align 8
  %91 = add i64 %87, 8
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %18, align 1
  store double 0.000000e+00, double* %20, align 1
  %94 = add i64 %85, -32
  %95 = add i64 %87, 12
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i64*
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %RCX.i487, align 8
  %98 = add i64 %87, 16
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i64*
  store i64 %93, i64* %99, align 8
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -56
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 7
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i32*
  store i32 1, i32* %104, align 4
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -64
  %107 = load i64, i64* %RAX.i499, align 8
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 4
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %106 to i64*
  store i64 %107, i64* %110, align 8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400bda

block_.L_400bda:                                  ; preds = %block_.L_400dd9, %entry
  %117 = phi i64 [ %1042, %block_.L_400dd9 ], [ %.pre, %entry ]
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -56
  %120 = add i64 %117, 3
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RAX.i499, align 8
  %124 = add i64 %118, -4
  %125 = add i64 %117, 6
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = sub i32 %122, %127
  %129 = icmp ult i32 %122, %127
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %111, align 1
  %131 = and i32 %128, 255
  %132 = tail call i32 @llvm.ctpop.i32(i32 %131)
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  store i8 %135, i8* %112, align 1
  %136 = xor i32 %127, %122
  %137 = xor i32 %136, %128
  %138 = lshr i32 %137, 4
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %113, align 1
  %141 = icmp eq i32 %128, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %114, align 1
  %143 = lshr i32 %128, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %115, align 1
  %145 = lshr i32 %122, 31
  %146 = lshr i32 %127, 31
  %147 = xor i32 %146, %145
  %148 = xor i32 %143, %145
  %149 = add nuw nsw i32 %148, %147
  %150 = icmp eq i32 %149, 2
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %116, align 1
  %152 = icmp ne i8 %144, 0
  %153 = xor i1 %152, %150
  %.v = select i1 %153, i64 12, i64 565
  %154 = add i64 %117, %.v
  store i64 %154, i64* %3, align 8
  br i1 %153, label %block_400be6, label %block_.L_400e0f

block_400be6:                                     ; preds = %block_.L_400bda
  %155 = add i64 %118, -40
  %156 = add i64 %154, 4
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to i64*
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %RAX.i499, align 8
  %159 = add i64 %154, 7
  store i64 %159, i64* %3, align 8
  %160 = load i32, i32* %121, align 4
  %161 = add i32 %160, -1
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RCX.i487, align 8
  %163 = icmp eq i32 %160, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %111, align 1
  %165 = and i32 %161, 255
  %166 = tail call i32 @llvm.ctpop.i32(i32 %165)
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %112, align 1
  %170 = xor i32 %160, %161
  %171 = lshr i32 %170, 4
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  store i8 %173, i8* %113, align 1
  %174 = icmp eq i32 %161, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %114, align 1
  %176 = lshr i32 %161, 31
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %115, align 1
  %178 = lshr i32 %160, 31
  %179 = xor i32 %176, %178
  %180 = add nuw nsw i32 %179, %178
  %181 = icmp eq i32 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %116, align 1
  %183 = sext i32 %161 to i64
  store i64 %183, i64* %RDX.i490, align 8
  %184 = shl nsw i64 %183, 3
  %185 = add i64 %184, %158
  %186 = add i64 %154, 18
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i64*
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %18, align 1
  store double 0.000000e+00, double* %20, align 1
  %189 = add i64 %118, -32
  %190 = add i64 %154, 22
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i64*
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %RAX.i499, align 8
  %193 = add i64 %154, 25
  store i64 %193, i64* %3, align 8
  %194 = load i32, i32* %121, align 4
  %195 = add i32 %194, -1
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RCX.i487, align 8
  %197 = icmp eq i32 %194, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %111, align 1
  %199 = and i32 %195, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %112, align 1
  %204 = xor i32 %194, %195
  %205 = lshr i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  store i8 %207, i8* %113, align 1
  %208 = icmp eq i32 %195, 0
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %114, align 1
  %210 = lshr i32 %195, 31
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %115, align 1
  %212 = lshr i32 %194, 31
  %213 = xor i32 %210, %212
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %116, align 1
  %217 = sext i32 %195 to i64
  store i64 %217, i64* %RDX.i490, align 8
  %218 = shl nsw i64 %217, 3
  %219 = add i64 %218, %192
  %220 = add i64 %154, 36
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to double*
  %222 = load double, double* %221, align 8
  store double %222, double* %66, align 1
  store double 0.000000e+00, double* %69, align 1
  %223 = add i64 %154, 40
  store i64 %223, i64* %3, align 8
  %224 = load i64, i64* %191, align 8
  store i64 %224, i64* %RAX.i499, align 8
  %225 = add i64 %154, 43
  store i64 %225, i64* %3, align 8
  %226 = load i32, i32* %121, align 4
  %227 = add i32 %226, -1
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %RCX.i487, align 8
  %229 = icmp eq i32 %226, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %111, align 1
  %231 = and i32 %227, 255
  %232 = tail call i32 @llvm.ctpop.i32(i32 %231)
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = xor i8 %234, 1
  store i8 %235, i8* %112, align 1
  %236 = xor i32 %226, %227
  %237 = lshr i32 %236, 4
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  store i8 %239, i8* %113, align 1
  %240 = icmp eq i32 %227, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %114, align 1
  %242 = lshr i32 %227, 31
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %115, align 1
  %244 = lshr i32 %226, 31
  %245 = xor i32 %242, %244
  %246 = add nuw nsw i32 %245, %244
  %247 = icmp eq i32 %246, 2
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %116, align 1
  %249 = sext i32 %227 to i64
  store i64 %249, i64* %RDX.i490, align 8
  %250 = shl nsw i64 %249, 3
  %251 = add i64 %250, %224
  %252 = add i64 %154, 54
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to double*
  %254 = load double, double* %253, align 8
  %255 = fmul double %222, %254
  store double %255, double* %66, align 1
  store i64 0, i64* %68, align 1
  %256 = add i64 %154, 58
  store i64 %256, i64* %3, align 8
  %257 = load i64, i64* %157, align 8
  store i64 %257, i64* %RAX.i499, align 8
  %258 = add i64 %154, 61
  store i64 %258, i64* %3, align 8
  %259 = load i32, i32* %121, align 4
  %260 = add i32 %259, -1
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RCX.i487, align 8
  %262 = icmp eq i32 %259, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %111, align 1
  %264 = and i32 %260, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264)
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %112, align 1
  %269 = xor i32 %259, %260
  %270 = lshr i32 %269, 4
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  store i8 %272, i8* %113, align 1
  %273 = icmp eq i32 %260, 0
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %114, align 1
  %275 = lshr i32 %260, 31
  %276 = trunc i32 %275 to i8
  store i8 %276, i8* %115, align 1
  %277 = lshr i32 %259, 31
  %278 = xor i32 %275, %277
  %279 = add nuw nsw i32 %278, %277
  %280 = icmp eq i32 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %116, align 1
  %282 = sext i32 %260 to i64
  store i64 %282, i64* %RDX.i490, align 8
  %283 = shl nsw i64 %282, 3
  %284 = add i64 %283, %257
  %285 = add i64 %154, 72
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to double*
  %287 = load double, double* %286, align 8
  %288 = fmul double %255, %287
  store double %288, double* %66, align 1
  store i64 0, i64* %68, align 1
  %289 = load double, double* %17, align 1
  %290 = fsub double %289, %288
  store double %290, double* %17, align 1
  %291 = load i64, i64* %RBP.i, align 8
  %292 = add i64 %291, -40
  %293 = add i64 %154, 80
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i64*
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %RAX.i499, align 8
  %296 = add i64 %291, -56
  %297 = add i64 %154, 84
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  store i64 %300, i64* %RDX.i490, align 8
  %301 = shl nsw i64 %300, 3
  %302 = add i64 %301, %295
  %303 = add i64 %154, 89
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to double*
  store double %290, double* %304, align 8
  %305 = load i64, i64* %RBP.i, align 8
  %306 = add i64 %305, -48
  %307 = load i64, i64* %3, align 8
  %308 = add i64 %307, 4
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %306 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %RAX.i499, align 8
  %311 = add i64 %305, -56
  %312 = add i64 %307, 8
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i32*
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  store i64 %315, i64* %RDX.i490, align 8
  %316 = shl nsw i64 %315, 3
  %317 = add i64 %316, %310
  %318 = add i64 %307, 13
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i64*
  %320 = load i64, i64* %319, align 8
  store i64 %320, i64* %18, align 1
  store double 0.000000e+00, double* %20, align 1
  %321 = add i64 %305, -24
  %322 = add i64 %307, 17
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %RAX.i499, align 8
  %325 = add i64 %307, 21
  store i64 %325, i64* %3, align 8
  %326 = load i32, i32* %313, align 4
  %327 = sext i32 %326 to i64
  store i64 %327, i64* %RDX.i490, align 8
  %328 = shl nsw i64 %327, 3
  %329 = add i64 %328, %324
  %330 = add i64 %307, 26
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i64*
  store i64 %320, i64* %331, align 8
  %332 = load i64, i64* %RBP.i, align 8
  %333 = add i64 %332, -52
  %334 = load i64, i64* %3, align 8
  %335 = add i64 %334, 7
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %333 to i32*
  store i32 0, i32* %336, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400c60

block_.L_400c60:                                  ; preds = %block_400c71, %block_400be6
  %337 = phi i64 [ %608, %block_400c71 ], [ %.pre1, %block_400be6 ]
  %338 = load i64, i64* %RBP.i, align 8
  %339 = add i64 %338, -52
  %340 = add i64 %337, 3
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RAX.i499, align 8
  %344 = add i64 %338, -56
  %345 = add i64 %337, 6
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = add i32 %347, -1
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RCX.i487, align 8
  %350 = lshr i32 %348, 31
  %351 = sub i32 %342, %348
  %352 = icmp ult i32 %342, %348
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %111, align 1
  %354 = and i32 %351, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %112, align 1
  %359 = xor i32 %348, %342
  %360 = xor i32 %359, %351
  %361 = lshr i32 %360, 4
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  store i8 %363, i8* %113, align 1
  %364 = icmp eq i32 %351, 0
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %114, align 1
  %366 = lshr i32 %351, 31
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %115, align 1
  %368 = lshr i32 %342, 31
  %369 = xor i32 %350, %368
  %370 = xor i32 %366, %368
  %371 = add nuw nsw i32 %370, %369
  %372 = icmp eq i32 %371, 2
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %116, align 1
  %374 = icmp ne i8 %367, 0
  %375 = xor i1 %374, %372
  %.demorgan = or i1 %364, %375
  %.v4 = select i1 %.demorgan, i64 17, i64 147
  %376 = add i64 %337, %.v4
  store i64 %376, i64* %3, align 8
  br i1 %.demorgan, label %block_400c71, label %block_.L_400cf3

block_400c71:                                     ; preds = %block_.L_400c60
  %377 = add i64 %338, -24
  %378 = add i64 %376, 4
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i64*
  %380 = load i64, i64* %379, align 8
  store i64 %380, i64* %RAX.i499, align 8
  %381 = add i64 %376, 8
  store i64 %381, i64* %3, align 8
  %382 = load i32, i32* %341, align 4
  %383 = sext i32 %382 to i64
  %384 = mul nsw i64 %383, 32000
  store i64 %384, i64* %RCX.i487, align 8
  %385 = lshr i64 %384, 63
  %386 = add i64 %384, %380
  store i64 %386, i64* %RAX.i499, align 8
  %387 = icmp ult i64 %386, %380
  %388 = icmp ult i64 %386, %384
  %389 = or i1 %387, %388
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %111, align 1
  %391 = trunc i64 %386 to i32
  %392 = and i32 %391, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %112, align 1
  %397 = xor i64 %380, %386
  %398 = lshr i64 %397, 4
  %399 = trunc i64 %398 to i8
  %400 = and i8 %399, 1
  store i8 %400, i8* %113, align 1
  %401 = icmp eq i64 %386, 0
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %114, align 1
  %403 = lshr i64 %386, 63
  %404 = trunc i64 %403 to i8
  store i8 %404, i8* %115, align 1
  %405 = lshr i64 %380, 63
  %406 = xor i64 %403, %405
  %407 = xor i64 %403, %385
  %408 = add nuw nsw i64 %406, %407
  %409 = icmp eq i64 %408, 2
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %116, align 1
  %411 = add i64 %376, 22
  store i64 %411, i64* %3, align 8
  %412 = load i32, i32* %346, align 4
  %413 = sext i32 %412 to i64
  store i64 %413, i64* %RCX.i487, align 8
  %414 = shl nsw i64 %413, 3
  %415 = add i64 %414, %386
  %416 = add i64 %376, 27
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i64*
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %18, align 1
  store double 0.000000e+00, double* %20, align 1
  %419 = add i64 %338, -48
  %420 = add i64 %376, 31
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i64*
  %422 = load i64, i64* %421, align 8
  store i64 %422, i64* %RAX.i499, align 8
  %423 = add i64 %376, 34
  store i64 %423, i64* %3, align 8
  %424 = load i32, i32* %346, align 4
  %425 = zext i32 %424 to i64
  store i64 %425, i64* %RDX.i490, align 8
  %426 = add i64 %376, 37
  store i64 %426, i64* %3, align 8
  %427 = load i32, i32* %341, align 4
  %428 = sub i32 %424, %427
  %429 = lshr i32 %428, 31
  %430 = add i32 %428, -1
  %431 = zext i32 %430 to i64
  store i64 %431, i64* %RDX.i490, align 8
  %432 = icmp eq i32 %428, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %111, align 1
  %434 = and i32 %430, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %112, align 1
  %439 = xor i32 %428, %430
  %440 = lshr i32 %439, 4
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, i8* %113, align 1
  %443 = icmp eq i32 %430, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %114, align 1
  %445 = lshr i32 %430, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %115, align 1
  %447 = xor i32 %445, %429
  %448 = add nuw nsw i32 %447, %429
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %116, align 1
  %451 = sext i32 %430 to i64
  store i64 %451, i64* %RCX.i487, align 8
  %452 = shl nsw i64 %451, 3
  %453 = add i64 %452, %422
  %454 = add i64 %376, 48
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i64*
  %456 = load i64, i64* %455, align 8
  store i64 %456, i64* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %457 = load i64, i64* %RBP.i, align 8
  %458 = add i64 %457, -16
  %459 = add i64 %376, 52
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i64*
  %461 = load i64, i64* %460, align 8
  store i64 %461, i64* %RAX.i499, align 8
  %462 = add i64 %457, -52
  %463 = add i64 %376, 56
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = sext i32 %465 to i64
  %467 = mul nsw i64 %466, 32000
  store i64 %467, i64* %RCX.i487, align 8
  %468 = lshr i64 %467, 63
  %469 = add i64 %467, %461
  store i64 %469, i64* %RAX.i499, align 8
  %470 = icmp ult i64 %469, %461
  %471 = icmp ult i64 %469, %467
  %472 = or i1 %470, %471
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %111, align 1
  %474 = trunc i64 %469 to i32
  %475 = and i32 %474, 255
  %476 = tail call i32 @llvm.ctpop.i32(i32 %475)
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  %479 = xor i8 %478, 1
  store i8 %479, i8* %112, align 1
  %480 = xor i64 %461, %469
  %481 = lshr i64 %480, 4
  %482 = trunc i64 %481 to i8
  %483 = and i8 %482, 1
  store i8 %483, i8* %113, align 1
  %484 = icmp eq i64 %469, 0
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %114, align 1
  %486 = lshr i64 %469, 63
  %487 = trunc i64 %486 to i8
  store i8 %487, i8* %115, align 1
  %488 = lshr i64 %461, 63
  %489 = xor i64 %486, %488
  %490 = xor i64 %486, %468
  %491 = add nuw nsw i64 %489, %490
  %492 = icmp eq i64 %491, 2
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %116, align 1
  %494 = add i64 %457, -56
  %495 = add i64 %376, 69
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = add i32 %497, -1
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RDX.i490, align 8
  %500 = icmp eq i32 %497, 0
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %111, align 1
  %502 = and i32 %498, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %112, align 1
  %507 = xor i32 %497, %498
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  store i8 %510, i8* %113, align 1
  %511 = icmp eq i32 %498, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %114, align 1
  %513 = lshr i32 %498, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %115, align 1
  %515 = lshr i32 %497, 31
  %516 = xor i32 %513, %515
  %517 = add nuw nsw i32 %516, %515
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %116, align 1
  %520 = sext i32 %498 to i64
  store i64 %520, i64* %RCX.i487, align 8
  %521 = shl nsw i64 %520, 3
  %522 = add i64 %521, %469
  %523 = add i64 %376, 80
  store i64 %523, i64* %3, align 8
  %524 = bitcast i64 %456 to double
  %525 = inttoptr i64 %522 to double*
  %526 = load double, double* %525, align 8
  %527 = fmul double %524, %526
  store double %527, double* %66, align 1
  %528 = load double, double* %17, align 1
  %529 = fadd double %528, %527
  store double %529, double* %17, align 1
  %530 = add i64 %457, -24
  %531 = add i64 %376, 88
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %RAX.i499, align 8
  %534 = add i64 %376, 91
  store i64 %534, i64* %3, align 8
  %535 = load i32, i32* %464, align 4
  %536 = add i32 %535, 1
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %RDX.i490, align 8
  %538 = sext i32 %536 to i64
  %539 = mul nsw i64 %538, 32000
  store i64 %539, i64* %RCX.i487, align 8
  %540 = lshr i64 %539, 63
  %541 = add i64 %539, %533
  store i64 %541, i64* %RAX.i499, align 8
  %542 = icmp ult i64 %541, %533
  %543 = icmp ult i64 %541, %539
  %544 = or i1 %542, %543
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %111, align 1
  %546 = trunc i64 %541 to i32
  %547 = and i32 %546, 255
  %548 = tail call i32 @llvm.ctpop.i32(i32 %547)
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = xor i8 %550, 1
  store i8 %551, i8* %112, align 1
  %552 = xor i64 %533, %541
  %553 = lshr i64 %552, 4
  %554 = trunc i64 %553 to i8
  %555 = and i8 %554, 1
  store i8 %555, i8* %113, align 1
  %556 = icmp eq i64 %541, 0
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %114, align 1
  %558 = lshr i64 %541, 63
  %559 = trunc i64 %558 to i8
  store i8 %559, i8* %115, align 1
  %560 = lshr i64 %533, 63
  %561 = xor i64 %558, %560
  %562 = xor i64 %558, %540
  %563 = add nuw nsw i64 %561, %562
  %564 = icmp eq i64 %563, 2
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %116, align 1
  %566 = load i64, i64* %RBP.i, align 8
  %567 = add i64 %566, -56
  %568 = add i64 %376, 111
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i32*
  %570 = load i32, i32* %569, align 4
  %571 = sext i32 %570 to i64
  store i64 %571, i64* %RCX.i487, align 8
  %572 = shl nsw i64 %571, 3
  %573 = add i64 %572, %541
  %574 = add i64 %376, 116
  store i64 %574, i64* %3, align 8
  %575 = bitcast double %529 to i64
  %576 = inttoptr i64 %573 to i64*
  store i64 %575, i64* %576, align 8
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -52
  %579 = load i64, i64* %3, align 8
  %580 = add i64 %579, 3
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %578 to i32*
  %582 = load i32, i32* %581, align 4
  %583 = add i32 %582, 1
  %584 = zext i32 %583 to i64
  store i64 %584, i64* %RAX.i499, align 8
  %585 = icmp eq i32 %582, -1
  %586 = icmp eq i32 %583, 0
  %587 = or i1 %585, %586
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %111, align 1
  %589 = and i32 %583, 255
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589)
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %112, align 1
  %594 = xor i32 %582, %583
  %595 = lshr i32 %594, 4
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  store i8 %597, i8* %113, align 1
  %598 = zext i1 %586 to i8
  store i8 %598, i8* %114, align 1
  %599 = lshr i32 %583, 31
  %600 = trunc i32 %599 to i8
  store i8 %600, i8* %115, align 1
  %601 = lshr i32 %582, 31
  %602 = xor i32 %599, %601
  %603 = add nuw nsw i32 %602, %599
  %604 = icmp eq i32 %603, 2
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %116, align 1
  %606 = add i64 %579, 9
  store i64 %606, i64* %3, align 8
  store i32 %583, i32* %581, align 4
  %607 = load i64, i64* %3, align 8
  %608 = add i64 %607, -142
  store i64 %608, i64* %3, align 8
  br label %block_.L_400c60

block_.L_400cf3:                                  ; preds = %block_.L_400c60
  store i64 -9223372036854775808, i64* %RAX.i499, align 8
  %609 = add i64 %338, -24
  %610 = add i64 %376, 14
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i64*
  %612 = load i64, i64* %611, align 8
  store i64 %612, i64* %RCX.i487, align 8
  %613 = add i64 %376, 18
  store i64 %613, i64* %3, align 8
  %614 = load i32, i32* %346, align 4
  %615 = sext i32 %614 to i64
  %616 = mul nsw i64 %615, 32000
  store i64 %616, i64* %RDX.i490, align 8
  %617 = lshr i64 %616, 63
  %618 = add i64 %616, %612
  store i64 %618, i64* %RCX.i487, align 8
  %619 = icmp ult i64 %618, %612
  %620 = icmp ult i64 %618, %616
  %621 = or i1 %619, %620
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %111, align 1
  %623 = trunc i64 %618 to i32
  %624 = and i32 %623, 255
  %625 = tail call i32 @llvm.ctpop.i32(i32 %624)
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  store i8 %628, i8* %112, align 1
  %629 = xor i64 %612, %618
  %630 = lshr i64 %629, 4
  %631 = trunc i64 %630 to i8
  %632 = and i8 %631, 1
  store i8 %632, i8* %113, align 1
  %633 = icmp eq i64 %618, 0
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %114, align 1
  %635 = lshr i64 %618, 63
  %636 = trunc i64 %635 to i8
  store i8 %636, i8* %115, align 1
  %637 = lshr i64 %612, 63
  %638 = xor i64 %635, %637
  %639 = xor i64 %635, %617
  %640 = add nuw nsw i64 %638, %639
  %641 = icmp eq i64 %640, 2
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %116, align 1
  %643 = add i64 %376, 32
  store i64 %643, i64* %3, align 8
  %644 = load i32, i32* %346, align 4
  %645 = sext i32 %644 to i64
  store i64 %645, i64* %RDX.i490, align 8
  %646 = shl nsw i64 %645, 3
  %647 = add i64 %646, %618
  %648 = add i64 %376, 37
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i64*
  %650 = load i64, i64* %649, align 8
  %651 = xor i64 %650, -9223372036854775808
  store i64 %651, i64* %RCX.i487, align 8
  store i8 0, i8* %111, align 1
  %652 = trunc i64 %650 to i32
  %653 = and i32 %652, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %112, align 1
  %658 = icmp eq i64 %651, 0
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %114, align 1
  %660 = lshr i64 %651, 63
  %661 = trunc i64 %660 to i8
  store i8 %661, i8* %115, align 1
  store i8 0, i8* %116, align 1
  store i8 0, i8* %113, align 1
  store i64 %651, i64* %18, align 1
  store i64 0, i64* %19, align 1
  %662 = add i64 %338, -40
  %663 = add i64 %376, 54
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i64*
  %665 = load i64, i64* %664, align 8
  store i64 %665, i64* %RAX.i499, align 8
  %666 = add i64 %376, 58
  store i64 %666, i64* %3, align 8
  %667 = load i32, i32* %346, align 4
  %668 = sext i32 %667 to i64
  store i64 %668, i64* %RCX.i487, align 8
  %669 = shl nsw i64 %668, 3
  %670 = add i64 %669, %665
  %671 = add i64 %376, 63
  store i64 %671, i64* %3, align 8
  %672 = bitcast i64 %651 to double
  %673 = inttoptr i64 %670 to double*
  %674 = load double, double* %673, align 8
  %675 = fmul double %672, %674
  store double %675, double* %17, align 1
  store i64 0, i64* %19, align 1
  %676 = add i64 %338, -32
  %677 = add i64 %376, 67
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i64*
  %679 = load i64, i64* %678, align 8
  store i64 %679, i64* %RAX.i499, align 8
  %680 = add i64 %376, 71
  store i64 %680, i64* %3, align 8
  %681 = load i32, i32* %346, align 4
  %682 = sext i32 %681 to i64
  store i64 %682, i64* %RCX.i487, align 8
  %683 = shl nsw i64 %682, 3
  %684 = add i64 %683, %679
  %685 = add i64 %376, 76
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to double*
  store double %675, double* %686, align 8
  %687 = load i64, i64* %RBP.i, align 8
  %688 = add i64 %687, -52
  %689 = load i64, i64* %3, align 8
  %690 = add i64 %689, 7
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %688 to i32*
  store i32 0, i32* %691, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400d46

block_.L_400d46:                                  ; preds = %block_400d57, %block_.L_400cf3
  %692 = phi i64 [ %957, %block_400d57 ], [ %.pre2, %block_.L_400cf3 ]
  %693 = load i64, i64* %RBP.i, align 8
  %694 = add i64 %693, -52
  %695 = add i64 %692, 3
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i32*
  %697 = load i32, i32* %696, align 4
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RAX.i499, align 8
  %699 = add i64 %693, -56
  %700 = add i64 %692, 6
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %699 to i32*
  %702 = load i32, i32* %701, align 4
  %703 = add i32 %702, -1
  %704 = zext i32 %703 to i64
  store i64 %704, i64* %RCX.i487, align 8
  %705 = lshr i32 %703, 31
  %706 = sub i32 %697, %703
  %707 = icmp ult i32 %697, %703
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %111, align 1
  %709 = and i32 %706, 255
  %710 = tail call i32 @llvm.ctpop.i32(i32 %709)
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  store i8 %713, i8* %112, align 1
  %714 = xor i32 %703, %697
  %715 = xor i32 %714, %706
  %716 = lshr i32 %715, 4
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  store i8 %718, i8* %113, align 1
  %719 = icmp eq i32 %706, 0
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %114, align 1
  %721 = lshr i32 %706, 31
  %722 = trunc i32 %721 to i8
  store i8 %722, i8* %115, align 1
  %723 = lshr i32 %697, 31
  %724 = xor i32 %705, %723
  %725 = xor i32 %721, %723
  %726 = add nuw nsw i32 %725, %724
  %727 = icmp eq i32 %726, 2
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %116, align 1
  %729 = icmp ne i8 %722, 0
  %730 = xor i1 %729, %727
  %.demorgan5 = or i1 %719, %730
  %.v6 = select i1 %.demorgan5, i64 17, i64 147
  %731 = add i64 %692, %.v6
  store i64 %731, i64* %3, align 8
  br i1 %.demorgan5, label %block_400d57, label %block_.L_400dd9

block_400d57:                                     ; preds = %block_.L_400d46
  %732 = add i64 %693, -16
  %733 = add i64 %731, 4
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %RAX.i499, align 8
  %736 = add i64 %731, 8
  store i64 %736, i64* %3, align 8
  %737 = load i32, i32* %696, align 4
  %738 = sext i32 %737 to i64
  %739 = mul nsw i64 %738, 32000
  store i64 %739, i64* %RCX.i487, align 8
  %740 = lshr i64 %739, 63
  %741 = add i64 %739, %735
  store i64 %741, i64* %RAX.i499, align 8
  %742 = icmp ult i64 %741, %735
  %743 = icmp ult i64 %741, %739
  %744 = or i1 %742, %743
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %111, align 1
  %746 = trunc i64 %741 to i32
  %747 = and i32 %746, 255
  %748 = tail call i32 @llvm.ctpop.i32(i32 %747)
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  %751 = xor i8 %750, 1
  store i8 %751, i8* %112, align 1
  %752 = xor i64 %735, %741
  %753 = lshr i64 %752, 4
  %754 = trunc i64 %753 to i8
  %755 = and i8 %754, 1
  store i8 %755, i8* %113, align 1
  %756 = icmp eq i64 %741, 0
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %114, align 1
  %758 = lshr i64 %741, 63
  %759 = trunc i64 %758 to i8
  store i8 %759, i8* %115, align 1
  %760 = lshr i64 %735, 63
  %761 = xor i64 %758, %760
  %762 = xor i64 %758, %740
  %763 = add nuw nsw i64 %761, %762
  %764 = icmp eq i64 %763, 2
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %116, align 1
  %766 = add i64 %731, 21
  store i64 %766, i64* %3, align 8
  %767 = load i32, i32* %701, align 4
  %768 = add i32 %767, -1
  %769 = zext i32 %768 to i64
  store i64 %769, i64* %RDX.i490, align 8
  %770 = icmp eq i32 %767, 0
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %111, align 1
  %772 = and i32 %768, 255
  %773 = tail call i32 @llvm.ctpop.i32(i32 %772)
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  %776 = xor i8 %775, 1
  store i8 %776, i8* %112, align 1
  %777 = xor i32 %767, %768
  %778 = lshr i32 %777, 4
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  store i8 %780, i8* %113, align 1
  %781 = icmp eq i32 %768, 0
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %114, align 1
  %783 = lshr i32 %768, 31
  %784 = trunc i32 %783 to i8
  store i8 %784, i8* %115, align 1
  %785 = lshr i32 %767, 31
  %786 = xor i32 %783, %785
  %787 = add nuw nsw i32 %786, %785
  %788 = icmp eq i32 %787, 2
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %116, align 1
  %790 = sext i32 %768 to i64
  store i64 %790, i64* %RCX.i487, align 8
  %791 = shl nsw i64 %790, 3
  %792 = add i64 %791, %741
  %793 = add i64 %731, 32
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i64*
  %795 = load i64, i64* %794, align 8
  store i64 %795, i64* %18, align 1
  store double 0.000000e+00, double* %20, align 1
  %796 = add i64 %693, -32
  %797 = add i64 %731, 36
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i64*
  %799 = load i64, i64* %798, align 8
  store i64 %799, i64* %RAX.i499, align 8
  %800 = add i64 %731, 40
  store i64 %800, i64* %3, align 8
  %801 = load i32, i32* %701, align 4
  %802 = sext i32 %801 to i64
  store i64 %802, i64* %RCX.i487, align 8
  %803 = shl nsw i64 %802, 3
  %804 = add i64 %803, %799
  %805 = add i64 %731, 45
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i64*
  %807 = load i64, i64* %806, align 8
  store i64 %807, i64* %67, align 1
  store double 0.000000e+00, double* %69, align 1
  %808 = add i64 %731, 49
  store i64 %808, i64* %3, align 8
  %809 = load i64, i64* %734, align 8
  store i64 %809, i64* %RAX.i499, align 8
  %810 = add i64 %731, 52
  store i64 %810, i64* %3, align 8
  %811 = load i32, i32* %701, align 4
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %RDX.i490, align 8
  %813 = add i64 %731, 55
  store i64 %813, i64* %3, align 8
  %814 = load i32, i32* %696, align 4
  %815 = sub i32 %811, %814
  %816 = add i32 %815, -1
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RDX.i490, align 8
  %818 = sext i32 %816 to i64
  %819 = mul nsw i64 %818, 32000
  store i64 %819, i64* %RCX.i487, align 8
  %820 = lshr i64 %819, 63
  %821 = add i64 %819, %809
  store i64 %821, i64* %RAX.i499, align 8
  %822 = icmp ult i64 %821, %809
  %823 = icmp ult i64 %821, %819
  %824 = or i1 %822, %823
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %111, align 1
  %826 = trunc i64 %821 to i32
  %827 = and i32 %826, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %112, align 1
  %832 = xor i64 %809, %821
  %833 = lshr i64 %832, 4
  %834 = trunc i64 %833 to i8
  %835 = and i8 %834, 1
  store i8 %835, i8* %113, align 1
  %836 = icmp eq i64 %821, 0
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %114, align 1
  %838 = lshr i64 %821, 63
  %839 = trunc i64 %838 to i8
  store i8 %839, i8* %115, align 1
  %840 = lshr i64 %809, 63
  %841 = xor i64 %838, %840
  %842 = xor i64 %838, %820
  %843 = add nuw nsw i64 %841, %842
  %844 = icmp eq i64 %843, 2
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %116, align 1
  %846 = load i64, i64* %RBP.i, align 8
  %847 = add i64 %846, -56
  %848 = add i64 %731, 74
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = add i32 %850, -1
  %852 = zext i32 %851 to i64
  store i64 %852, i64* %RDX.i490, align 8
  %853 = icmp eq i32 %850, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %111, align 1
  %855 = and i32 %851, 255
  %856 = tail call i32 @llvm.ctpop.i32(i32 %855)
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %112, align 1
  %860 = xor i32 %850, %851
  %861 = lshr i32 %860, 4
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  store i8 %863, i8* %113, align 1
  %864 = icmp eq i32 %851, 0
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %114, align 1
  %866 = lshr i32 %851, 31
  %867 = trunc i32 %866 to i8
  store i8 %867, i8* %115, align 1
  %868 = lshr i32 %850, 31
  %869 = xor i32 %866, %868
  %870 = add nuw nsw i32 %869, %868
  %871 = icmp eq i32 %870, 2
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %116, align 1
  %873 = sext i32 %851 to i64
  store i64 %873, i64* %RCX.i487, align 8
  %874 = shl nsw i64 %873, 3
  %875 = add i64 %874, %821
  %876 = add i64 %731, 85
  store i64 %876, i64* %3, align 8
  %877 = bitcast i64 %807 to double
  %878 = inttoptr i64 %875 to double*
  %879 = load double, double* %878, align 8
  %880 = fmul double %877, %879
  store double %880, double* %66, align 1
  %881 = load double, double* %17, align 1
  %882 = fadd double %881, %880
  store double %882, double* %17, align 1
  %883 = add i64 %846, -16
  %884 = add i64 %731, 93
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  store i64 %886, i64* %RAX.i499, align 8
  %887 = add i64 %846, -52
  %888 = add i64 %731, 97
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = sext i32 %890 to i64
  %892 = mul nsw i64 %891, 32000
  store i64 %892, i64* %RCX.i487, align 8
  %893 = lshr i64 %892, 63
  %894 = add i64 %892, %886
  store i64 %894, i64* %RAX.i499, align 8
  %895 = icmp ult i64 %894, %886
  %896 = icmp ult i64 %894, %892
  %897 = or i1 %895, %896
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %111, align 1
  %899 = trunc i64 %894 to i32
  %900 = and i32 %899, 255
  %901 = tail call i32 @llvm.ctpop.i32(i32 %900)
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  %904 = xor i8 %903, 1
  store i8 %904, i8* %112, align 1
  %905 = xor i64 %886, %894
  %906 = lshr i64 %905, 4
  %907 = trunc i64 %906 to i8
  %908 = and i8 %907, 1
  store i8 %908, i8* %113, align 1
  %909 = icmp eq i64 %894, 0
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %114, align 1
  %911 = lshr i64 %894, 63
  %912 = trunc i64 %911 to i8
  store i8 %912, i8* %115, align 1
  %913 = lshr i64 %886, 63
  %914 = xor i64 %911, %913
  %915 = xor i64 %911, %893
  %916 = add nuw nsw i64 %914, %915
  %917 = icmp eq i64 %916, 2
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %116, align 1
  %919 = add i64 %731, 111
  store i64 %919, i64* %3, align 8
  %920 = load i32, i32* %849, align 4
  %921 = sext i32 %920 to i64
  store i64 %921, i64* %RCX.i487, align 8
  %922 = shl nsw i64 %921, 3
  %923 = add i64 %922, %894
  %924 = add i64 %731, 116
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to double*
  store double %882, double* %925, align 8
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -52
  %928 = load i64, i64* %3, align 8
  %929 = add i64 %928, 3
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %927 to i32*
  %931 = load i32, i32* %930, align 4
  %932 = add i32 %931, 1
  %933 = zext i32 %932 to i64
  store i64 %933, i64* %RAX.i499, align 8
  %934 = icmp eq i32 %931, -1
  %935 = icmp eq i32 %932, 0
  %936 = or i1 %934, %935
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %111, align 1
  %938 = and i32 %932, 255
  %939 = tail call i32 @llvm.ctpop.i32(i32 %938)
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  store i8 %942, i8* %112, align 1
  %943 = xor i32 %931, %932
  %944 = lshr i32 %943, 4
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  store i8 %946, i8* %113, align 1
  %947 = zext i1 %935 to i8
  store i8 %947, i8* %114, align 1
  %948 = lshr i32 %932, 31
  %949 = trunc i32 %948 to i8
  store i8 %949, i8* %115, align 1
  %950 = lshr i32 %931, 31
  %951 = xor i32 %948, %950
  %952 = add nuw nsw i32 %951, %948
  %953 = icmp eq i32 %952, 2
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %116, align 1
  %955 = add i64 %928, 9
  store i64 %955, i64* %3, align 8
  store i32 %932, i32* %930, align 4
  %956 = load i64, i64* %3, align 8
  %957 = add i64 %956, -142
  store i64 %957, i64* %3, align 8
  br label %block_.L_400d46

block_.L_400dd9:                                  ; preds = %block_.L_400d46
  %958 = add i64 %693, -32
  %959 = add i64 %731, 4
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %RAX.i499, align 8
  %962 = add i64 %731, 8
  store i64 %962, i64* %3, align 8
  %963 = load i32, i32* %701, align 4
  %964 = sext i32 %963 to i64
  store i64 %964, i64* %RCX.i487, align 8
  %965 = shl nsw i64 %964, 3
  %966 = add i64 %965, %961
  %967 = add i64 %731, 13
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %966 to i64*
  %969 = load i64, i64* %968, align 8
  store i64 %969, i64* %18, align 1
  store double 0.000000e+00, double* %20, align 1
  %970 = add i64 %693, -16
  %971 = add i64 %731, 17
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i64*
  %973 = load i64, i64* %972, align 8
  store i64 %973, i64* %RAX.i499, align 8
  %974 = add i64 %731, 21
  store i64 %974, i64* %3, align 8
  %975 = load i32, i32* %701, align 4
  %976 = sext i32 %975 to i64
  %977 = mul nsw i64 %976, 32000
  store i64 %977, i64* %RCX.i487, align 8
  %978 = lshr i64 %977, 63
  %979 = add i64 %977, %973
  store i64 %979, i64* %RAX.i499, align 8
  %980 = icmp ult i64 %979, %973
  %981 = icmp ult i64 %979, %977
  %982 = or i1 %980, %981
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %111, align 1
  %984 = trunc i64 %979 to i32
  %985 = and i32 %984, 255
  %986 = tail call i32 @llvm.ctpop.i32(i32 %985)
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = xor i8 %988, 1
  store i8 %989, i8* %112, align 1
  %990 = xor i64 %973, %979
  %991 = lshr i64 %990, 4
  %992 = trunc i64 %991 to i8
  %993 = and i8 %992, 1
  store i8 %993, i8* %113, align 1
  %994 = icmp eq i64 %979, 0
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %114, align 1
  %996 = lshr i64 %979, 63
  %997 = trunc i64 %996 to i8
  store i8 %997, i8* %115, align 1
  %998 = lshr i64 %973, 63
  %999 = xor i64 %996, %998
  %1000 = xor i64 %996, %978
  %1001 = add nuw nsw i64 %999, %1000
  %1002 = icmp eq i64 %1001, 2
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %116, align 1
  %1004 = add i64 %731, 35
  store i64 %1004, i64* %3, align 8
  %1005 = load i32, i32* %701, align 4
  %1006 = sext i32 %1005 to i64
  store i64 %1006, i64* %RCX.i487, align 8
  %1007 = shl nsw i64 %1006, 3
  %1008 = add i64 %1007, %979
  %1009 = add i64 %731, 40
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i64*
  store i64 %969, i64* %1010, align 8
  %1011 = load i64, i64* %RBP.i, align 8
  %1012 = add i64 %1011, -56
  %1013 = load i64, i64* %3, align 8
  %1014 = add i64 %1013, 3
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1012 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = add i32 %1016, 1
  %1018 = zext i32 %1017 to i64
  store i64 %1018, i64* %RAX.i499, align 8
  %1019 = icmp eq i32 %1016, -1
  %1020 = icmp eq i32 %1017, 0
  %1021 = or i1 %1019, %1020
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %111, align 1
  %1023 = and i32 %1017, 255
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = and i8 %1025, 1
  %1027 = xor i8 %1026, 1
  store i8 %1027, i8* %112, align 1
  %1028 = xor i32 %1016, %1017
  %1029 = lshr i32 %1028, 4
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  store i8 %1031, i8* %113, align 1
  %1032 = zext i1 %1020 to i8
  store i8 %1032, i8* %114, align 1
  %1033 = lshr i32 %1017, 31
  %1034 = trunc i32 %1033 to i8
  store i8 %1034, i8* %115, align 1
  %1035 = lshr i32 %1016, 31
  %1036 = xor i32 %1033, %1035
  %1037 = add nuw nsw i32 %1036, %1033
  %1038 = icmp eq i32 %1037, 2
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %116, align 1
  %1040 = add i64 %1013, 9
  store i64 %1040, i64* %3, align 8
  store i32 %1017, i32* %1015, align 4
  %1041 = load i64, i64* %3, align 8
  %1042 = add i64 %1041, -560
  store i64 %1042, i64* %3, align 8
  br label %block_.L_400bda

block_.L_400e0f:                                  ; preds = %block_.L_400bda
  %1043 = add i64 %118, -52
  %1044 = add i64 %154, 7
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i32*
  store i32 0, i32* %1045, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400e16

block_.L_400e16:                                  ; preds = %block_400e22, %block_.L_400e0f
  %1046 = phi i64 [ %1190, %block_400e22 ], [ %.pre3, %block_.L_400e0f ]
  %1047 = load i64, i64* %RBP.i, align 8
  %1048 = add i64 %1047, -52
  %1049 = add i64 %1046, 3
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i32*
  %1051 = load i32, i32* %1050, align 4
  %1052 = zext i32 %1051 to i64
  store i64 %1052, i64* %RAX.i499, align 8
  %1053 = add i64 %1047, -4
  %1054 = add i64 %1046, 6
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  %1056 = load i32, i32* %1055, align 4
  %1057 = sub i32 %1051, %1056
  %1058 = icmp ult i32 %1051, %1056
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %111, align 1
  %1060 = and i32 %1057, 255
  %1061 = tail call i32 @llvm.ctpop.i32(i32 %1060)
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = xor i8 %1063, 1
  store i8 %1064, i8* %112, align 1
  %1065 = xor i32 %1056, %1051
  %1066 = xor i32 %1065, %1057
  %1067 = lshr i32 %1066, 4
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  store i8 %1069, i8* %113, align 1
  %1070 = icmp eq i32 %1057, 0
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %114, align 1
  %1072 = lshr i32 %1057, 31
  %1073 = trunc i32 %1072 to i8
  store i8 %1073, i8* %115, align 1
  %1074 = lshr i32 %1051, 31
  %1075 = lshr i32 %1056, 31
  %1076 = xor i32 %1075, %1074
  %1077 = xor i32 %1072, %1074
  %1078 = add nuw nsw i32 %1077, %1076
  %1079 = icmp eq i32 %1078, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %116, align 1
  %1081 = icmp ne i8 %1073, 0
  %1082 = xor i1 %1081, %1079
  %.v7 = select i1 %1082, i64 12, i64 71
  %1083 = add i64 %1046, %.v7
  store i64 %1083, i64* %3, align 8
  br i1 %1082, label %block_400e22, label %block_.L_400e5d

block_400e22:                                     ; preds = %block_.L_400e16
  %1084 = add i64 %1047, -16
  %1085 = add i64 %1083, 4
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i64*
  %1087 = load i64, i64* %1086, align 8
  store i64 %1087, i64* %RAX.i499, align 8
  %1088 = add i64 %1083, 8
  store i64 %1088, i64* %3, align 8
  %1089 = load i32, i32* %1050, align 4
  %1090 = sext i32 %1089 to i64
  %1091 = mul nsw i64 %1090, 32000
  store i64 %1091, i64* %RCX.i487, align 8
  %1092 = lshr i64 %1091, 63
  %1093 = add i64 %1091, %1087
  store i64 %1093, i64* %RAX.i499, align 8
  %1094 = icmp ult i64 %1093, %1087
  %1095 = icmp ult i64 %1093, %1091
  %1096 = or i1 %1094, %1095
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %111, align 1
  %1098 = trunc i64 %1093 to i32
  %1099 = and i32 %1098, 255
  %1100 = tail call i32 @llvm.ctpop.i32(i32 %1099)
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  store i8 %1103, i8* %112, align 1
  %1104 = xor i64 %1087, %1093
  %1105 = lshr i64 %1104, 4
  %1106 = trunc i64 %1105 to i8
  %1107 = and i8 %1106, 1
  store i8 %1107, i8* %113, align 1
  %1108 = icmp eq i64 %1093, 0
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %114, align 1
  %1110 = lshr i64 %1093, 63
  %1111 = trunc i64 %1110 to i8
  store i8 %1111, i8* %115, align 1
  %1112 = lshr i64 %1087, 63
  %1113 = xor i64 %1110, %1112
  %1114 = xor i64 %1110, %1092
  %1115 = add nuw nsw i64 %1113, %1114
  %1116 = icmp eq i64 %1115, 2
  %1117 = zext i1 %1116 to i8
  store i8 %1117, i8* %116, align 1
  %1118 = add i64 %1083, 21
  store i64 %1118, i64* %3, align 8
  %1119 = load i32, i32* %1055, align 4
  %1120 = add i32 %1119, -1
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RDX.i490, align 8
  %1122 = icmp eq i32 %1119, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %111, align 1
  %1124 = and i32 %1120, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %112, align 1
  %1129 = xor i32 %1119, %1120
  %1130 = lshr i32 %1129, 4
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  store i8 %1132, i8* %113, align 1
  %1133 = icmp eq i32 %1120, 0
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %114, align 1
  %1135 = lshr i32 %1120, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %115, align 1
  %1137 = lshr i32 %1119, 31
  %1138 = xor i32 %1135, %1137
  %1139 = add nuw nsw i32 %1138, %1137
  %1140 = icmp eq i32 %1139, 2
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %116, align 1
  %1142 = sext i32 %1120 to i64
  store i64 %1142, i64* %RCX.i487, align 8
  %1143 = shl nsw i64 %1142, 3
  %1144 = add i64 %1143, %1093
  %1145 = add i64 %1083, 32
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i64*
  %1147 = load i64, i64* %1146, align 8
  store i64 %1147, i64* %18, align 1
  store double 0.000000e+00, double* %20, align 1
  %1148 = add i64 %1047, 16
  %1149 = add i64 %1083, 36
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i64*
  %1151 = load i64, i64* %1150, align 8
  store i64 %1151, i64* %RAX.i499, align 8
  %1152 = add i64 %1083, 40
  store i64 %1152, i64* %3, align 8
  %1153 = load i32, i32* %1050, align 4
  %1154 = sext i32 %1153 to i64
  store i64 %1154, i64* %RCX.i487, align 8
  %1155 = shl nsw i64 %1154, 3
  %1156 = add i64 %1155, %1151
  %1157 = add i64 %1083, 45
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i64*
  store i64 %1147, i64* %1158, align 8
  %1159 = load i64, i64* %RBP.i, align 8
  %1160 = add i64 %1159, -52
  %1161 = load i64, i64* %3, align 8
  %1162 = add i64 %1161, 3
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1160 to i32*
  %1164 = load i32, i32* %1163, align 4
  %1165 = add i32 %1164, 1
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RAX.i499, align 8
  %1167 = icmp eq i32 %1164, -1
  %1168 = icmp eq i32 %1165, 0
  %1169 = or i1 %1167, %1168
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %111, align 1
  %1171 = and i32 %1165, 255
  %1172 = tail call i32 @llvm.ctpop.i32(i32 %1171)
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  store i8 %1175, i8* %112, align 1
  %1176 = xor i32 %1164, %1165
  %1177 = lshr i32 %1176, 4
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  store i8 %1179, i8* %113, align 1
  %1180 = zext i1 %1168 to i8
  store i8 %1180, i8* %114, align 1
  %1181 = lshr i32 %1165, 31
  %1182 = trunc i32 %1181 to i8
  store i8 %1182, i8* %115, align 1
  %1183 = lshr i32 %1164, 31
  %1184 = xor i32 %1181, %1183
  %1185 = add nuw nsw i32 %1184, %1181
  %1186 = icmp eq i32 %1185, 2
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %116, align 1
  %1188 = add i64 %1161, 9
  store i64 %1188, i64* %3, align 8
  store i32 %1165, i32* %1163, align 4
  %1189 = load i64, i64* %3, align 8
  %1190 = add i64 %1189, -66
  store i64 %1190, i64* %3, align 8
  br label %block_.L_400e16

block_.L_400e5d:                                  ; preds = %block_.L_400e16
  %1191 = add i64 %1083, 1
  store i64 %1191, i64* %3, align 8
  %1192 = load i64, i64* %6, align 8
  %1193 = add i64 %1192, 8
  %1194 = inttoptr i64 %1192 to i64*
  %1195 = load i64, i64* %1194, align 8
  store i64 %1195, i64* %RBP.i, align 8
  store i64 %1193, i64* %6, align 8
  %1196 = add i64 %1083, 2
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1193 to i64*
  %1198 = load i64, i64* %1197, align 8
  store i64 %1198, i64* %3, align 8
  %1199 = add i64 %1192, 16
  store i64 %1199, i64* %6, align 8
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

define %struct.Memory* @routine_movsd_0x7d8__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x7d8__rip__4197264__type* @G_0x7d8__rip__4197264_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rcx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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

define %struct.Memory* @routine_movsd___rcx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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

define %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

define %struct.Memory* @routine_jge_.L_400e0f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

define %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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

define %struct.Memory* @routine_mulsd___rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
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
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

define %struct.Memory* @routine_jg_.L_400cf3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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

define %struct.Memory* @routine_imulq__0x7d00___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %10 = mul nsw i128 %9, 32000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %18, align 1
  %19 = lshr i64 %11, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %22, align 1
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x34__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
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

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
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

define %struct.Memory* @routine_jmpq_.L_400c60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 -9223372036854775808, i64* %RAX, align 8
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

define %struct.Memory* @routine_imulq__0x7d00___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 32000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %18, align 1
  %19 = lshr i64 %11, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %22, align 1
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

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %RCX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i64 %4, %3
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i64 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i64 %7, 63
  %20 = trunc i64 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400dd9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

define %struct.Memory* @routine_jmpq_.L_400bda(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400e5d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e16(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
