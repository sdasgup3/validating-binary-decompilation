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

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_gramschmidt(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -72
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 64
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i, align 4
  %42 = add i64 %10, 10
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %ESI.i, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -16
  %53 = load i64, i64* %RDX.i, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %RCX.i395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -24
  %59 = load i64, i64* %RCX.i395, align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -32
  %65 = load i64, i64* %R8.i, align 8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -44
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 7
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %70 to i32*
  store i32 0, i32* %73, align 4
  %RAX.i388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %75 = bitcast [32 x %union.VectorReg]* %74 to i8*
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %77 = bitcast [32 x %union.VectorReg]* %74 to i32*
  %78 = getelementptr inbounds i8, i8* %75, i64 4
  %79 = bitcast i8* %78 to i32*
  %80 = bitcast i64* %76 to i32*
  %81 = getelementptr inbounds i8, i8* %75, i64 12
  %82 = bitcast i8* %81 to i32*
  %83 = bitcast [32 x %union.VectorReg]* %74 to double*
  %84 = bitcast i64* %76 to double*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %86 = bitcast %union.VectorReg* %85 to double*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %88 = bitcast i64* %87 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400c61

block_.L_400c61:                                  ; preds = %block_.L_400e91, %entry
  %89 = phi i64 [ %.pre, %entry ], [ %1213, %block_.L_400e91 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %call2_400cd5, %block_.L_400e91 ]
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -44
  %92 = add i64 %89, 3
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RAX.i388, align 8
  %96 = add i64 %90, -8
  %97 = add i64 %89, 6
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = sub i32 %94, %99
  %101 = icmp ult i32 %94, %99
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %14, align 1
  %103 = and i32 %100, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103)
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %21, align 1
  %108 = xor i32 %99, %94
  %109 = xor i32 %108, %100
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %26, align 1
  %113 = icmp eq i32 %100, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %29, align 1
  %115 = lshr i32 %100, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %32, align 1
  %117 = lshr i32 %94, 31
  %118 = lshr i32 %99, 31
  %119 = xor i32 %118, %117
  %120 = xor i32 %115, %117
  %121 = add nuw nsw i32 %120, %119
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %38, align 1
  %124 = icmp ne i8 %116, 0
  %125 = xor i1 %124, %122
  %.v = select i1 %125, i64 12, i64 579
  %126 = add i64 %89, %.v
  store i64 %126, i64* %3, align 8
  br i1 %125, label %block_400c6d, label %block_.L_400ea4

block_400c6d:                                     ; preds = %block_.L_400c61
  store i32 0, i32* %77, align 1
  store i32 0, i32* %79, align 1
  store i32 0, i32* %80, align 1
  store i32 0, i32* %82, align 1
  %127 = add i64 %90, -56
  %128 = add i64 %126, 8
  store i64 %128, i64* %3, align 8
  %129 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %74, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %130 = load i64, i64* %129, align 1
  %131 = inttoptr i64 %127 to i64*
  store i64 %130, i64* %131, align 8
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -36
  %134 = load i64, i64* %3, align 8
  %135 = add i64 %134, 7
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %133 to i32*
  store i32 0, i32* %136, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400c7c

block_.L_400c7c:                                  ; preds = %block_400c88, %block_400c6d
  %137 = phi i64 [ %302, %block_400c88 ], [ %.pre1, %block_400c6d ]
  %138 = load i64, i64* %RBP.i, align 8
  %139 = add i64 %138, -36
  %140 = add i64 %137, 3
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RAX.i388, align 8
  %144 = add i64 %138, -4
  %145 = add i64 %137, 6
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = sub i32 %142, %147
  %149 = icmp ult i32 %142, %147
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %14, align 1
  %151 = and i32 %148, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151)
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %21, align 1
  %156 = xor i32 %147, %142
  %157 = xor i32 %156, %148
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %26, align 1
  %161 = icmp eq i32 %148, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %29, align 1
  %163 = lshr i32 %148, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %32, align 1
  %165 = lshr i32 %142, 31
  %166 = lshr i32 %147, 31
  %167 = xor i32 %166, %165
  %168 = xor i32 %163, %165
  %169 = add nuw nsw i32 %168, %167
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %38, align 1
  %172 = icmp ne i8 %164, 0
  %173 = xor i1 %172, %170
  %.v6 = select i1 %173, i64 12, i64 84
  %174 = add i64 %137, %.v6
  store i64 %174, i64* %3, align 8
  br i1 %173, label %block_400c88, label %block_.L_400cd0

block_400c88:                                     ; preds = %block_.L_400c7c
  %175 = add i64 %138, -16
  %176 = add i64 %174, 4
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %RAX.i388, align 8
  %179 = add i64 %174, 8
  store i64 %179, i64* %3, align 8
  %180 = load i32, i32* %141, align 4
  %181 = sext i32 %180 to i64
  %182 = shl nsw i64 %181, 12
  store i64 %182, i64* %RCX.i395, align 8
  %183 = lshr i64 %181, 51
  %184 = and i64 %183, 1
  %185 = add i64 %182, %178
  store i64 %185, i64* %RAX.i388, align 8
  %186 = icmp ult i64 %185, %178
  %187 = icmp ult i64 %185, %182
  %188 = or i1 %186, %187
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %14, align 1
  %190 = trunc i64 %185 to i32
  %191 = and i32 %190, 255
  %192 = tail call i32 @llvm.ctpop.i32(i32 %191)
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  store i8 %195, i8* %21, align 1
  %196 = xor i64 %178, %185
  %197 = lshr i64 %196, 4
  %198 = trunc i64 %197 to i8
  %199 = and i8 %198, 1
  store i8 %199, i8* %26, align 1
  %200 = icmp eq i64 %185, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %29, align 1
  %202 = lshr i64 %185, 63
  %203 = trunc i64 %202 to i8
  store i8 %203, i8* %32, align 1
  %204 = lshr i64 %178, 63
  %205 = xor i64 %202, %204
  %206 = xor i64 %202, %184
  %207 = add nuw nsw i64 %205, %206
  %208 = icmp eq i64 %207, 2
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %38, align 1
  %210 = add i64 %138, -44
  %211 = add i64 %174, 19
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  store i64 %214, i64* %RCX.i395, align 8
  %215 = shl nsw i64 %214, 3
  %216 = add i64 %215, %185
  %217 = add i64 %174, 24
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to double*
  %219 = load double, double* %218, align 8
  store double %219, double* %83, align 1
  store double 0.000000e+00, double* %84, align 1
  %220 = add i64 %174, 28
  store i64 %220, i64* %3, align 8
  %221 = load i64, i64* %177, align 8
  store i64 %221, i64* %RAX.i388, align 8
  %222 = add i64 %174, 32
  store i64 %222, i64* %3, align 8
  %223 = load i32, i32* %141, align 4
  %224 = sext i32 %223 to i64
  %225 = shl nsw i64 %224, 12
  store i64 %225, i64* %RCX.i395, align 8
  %226 = lshr i64 %224, 51
  %227 = and i64 %226, 1
  %228 = add i64 %225, %221
  store i64 %228, i64* %RAX.i388, align 8
  %229 = icmp ult i64 %228, %221
  %230 = icmp ult i64 %228, %225
  %231 = or i1 %229, %230
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %14, align 1
  %233 = trunc i64 %228 to i32
  %234 = and i32 %233, 255
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234)
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  store i8 %238, i8* %21, align 1
  %239 = xor i64 %221, %228
  %240 = lshr i64 %239, 4
  %241 = trunc i64 %240 to i8
  %242 = and i8 %241, 1
  store i8 %242, i8* %26, align 1
  %243 = icmp eq i64 %228, 0
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %29, align 1
  %245 = lshr i64 %228, 63
  %246 = trunc i64 %245 to i8
  store i8 %246, i8* %32, align 1
  %247 = lshr i64 %221, 63
  %248 = xor i64 %245, %247
  %249 = xor i64 %245, %227
  %250 = add nuw nsw i64 %248, %249
  %251 = icmp eq i64 %250, 2
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %38, align 1
  %253 = load i64, i64* %RBP.i, align 8
  %254 = add i64 %253, -44
  %255 = add i64 %174, 43
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  store i64 %258, i64* %RCX.i395, align 8
  %259 = shl nsw i64 %258, 3
  %260 = add i64 %259, %228
  %261 = add i64 %174, 48
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to double*
  %263 = load double, double* %262, align 8
  %264 = fmul double %219, %263
  store double %264, double* %83, align 1
  store i64 0, i64* %76, align 1
  %265 = add i64 %253, -56
  %266 = add i64 %174, 53
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to double*
  %268 = load double, double* %267, align 8
  %269 = fadd double %264, %268
  store double %269, double* %83, align 1
  store i64 0, i64* %76, align 1
  %270 = add i64 %174, 58
  store i64 %270, i64* %3, align 8
  store double %269, double* %267, align 8
  %271 = load i64, i64* %RBP.i, align 8
  %272 = add i64 %271, -36
  %273 = load i64, i64* %3, align 8
  %274 = add i64 %273, 3
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %272 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = add i32 %276, 1
  %278 = zext i32 %277 to i64
  store i64 %278, i64* %RAX.i388, align 8
  %279 = icmp eq i32 %276, -1
  %280 = icmp eq i32 %277, 0
  %281 = or i1 %279, %280
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %14, align 1
  %283 = and i32 %277, 255
  %284 = tail call i32 @llvm.ctpop.i32(i32 %283)
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  store i8 %287, i8* %21, align 1
  %288 = xor i32 %276, %277
  %289 = lshr i32 %288, 4
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  store i8 %291, i8* %26, align 1
  %292 = zext i1 %280 to i8
  store i8 %292, i8* %29, align 1
  %293 = lshr i32 %277, 31
  %294 = trunc i32 %293 to i8
  store i8 %294, i8* %32, align 1
  %295 = lshr i32 %276, 31
  %296 = xor i32 %293, %295
  %297 = add nuw nsw i32 %296, %293
  %298 = icmp eq i32 %297, 2
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %38, align 1
  %300 = add i64 %273, 9
  store i64 %300, i64* %3, align 8
  store i32 %277, i32* %275, align 4
  %301 = load i64, i64* %3, align 8
  %302 = add i64 %301, -79
  store i64 %302, i64* %3, align 8
  br label %block_.L_400c7c

block_.L_400cd0:                                  ; preds = %block_.L_400c7c
  %303 = add i64 %138, -56
  %304 = add i64 %174, 5
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i64*
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %129, align 1
  store double 0.000000e+00, double* %84, align 1
  %307 = add i64 %174, -1744
  %308 = add i64 %174, 10
  %309 = load i64, i64* %6, align 8
  %310 = add i64 %309, -8
  %311 = inttoptr i64 %310 to i64*
  store i64 %308, i64* %311, align 8
  store i64 %310, i64* %6, align 8
  store i64 %307, i64* %3, align 8
  %call2_400cd5 = tail call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %307, %struct.Memory* %MEMORY.0)
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -24
  %314 = load i64, i64* %3, align 8
  %315 = add i64 %314, 4
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %313 to i64*
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %RAX.i388, align 8
  %318 = add i64 %312, -44
  %319 = add i64 %314, 8
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = shl nsw i64 %322, 12
  store i64 %323, i64* %RCX.i395, align 8
  %324 = lshr i64 %322, 51
  %325 = and i64 %324, 1
  %326 = add i64 %323, %317
  store i64 %326, i64* %RAX.i388, align 8
  %327 = icmp ult i64 %326, %317
  %328 = icmp ult i64 %326, %323
  %329 = or i1 %327, %328
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %14, align 1
  %331 = trunc i64 %326 to i32
  %332 = and i32 %331, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %21, align 1
  %337 = xor i64 %317, %326
  %338 = lshr i64 %337, 4
  %339 = trunc i64 %338 to i8
  %340 = and i8 %339, 1
  store i8 %340, i8* %26, align 1
  %341 = icmp eq i64 %326, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %29, align 1
  %343 = lshr i64 %326, 63
  %344 = trunc i64 %343 to i8
  store i8 %344, i8* %32, align 1
  %345 = lshr i64 %317, 63
  %346 = xor i64 %343, %345
  %347 = xor i64 %343, %325
  %348 = add nuw nsw i64 %346, %347
  %349 = icmp eq i64 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %38, align 1
  %351 = add i64 %314, 19
  store i64 %351, i64* %3, align 8
  %352 = load i32, i32* %320, align 4
  %353 = sext i32 %352 to i64
  store i64 %353, i64* %RCX.i395, align 8
  %354 = shl nsw i64 %353, 3
  %355 = add i64 %354, %326
  %356 = add i64 %314, 24
  store i64 %356, i64* %3, align 8
  %357 = load i64, i64* %129, align 1
  %358 = inttoptr i64 %355 to i64*
  store i64 %357, i64* %358, align 8
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -36
  %361 = load i64, i64* %3, align 8
  %362 = add i64 %361, 7
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %360 to i32*
  store i32 0, i32* %363, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400cf9

block_.L_400cf9:                                  ; preds = %block_400d05, %block_.L_400cd0
  %364 = phi i64 [ %569, %block_400d05 ], [ %.pre2, %block_.L_400cd0 ]
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -36
  %367 = add i64 %364, 3
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RAX.i388, align 8
  %371 = add i64 %365, -4
  %372 = add i64 %364, 6
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = sub i32 %369, %374
  %376 = icmp ult i32 %369, %374
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %14, align 1
  %378 = and i32 %375, 255
  %379 = tail call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %21, align 1
  %383 = xor i32 %374, %369
  %384 = xor i32 %383, %375
  %385 = lshr i32 %384, 4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %26, align 1
  %388 = icmp eq i32 %375, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %29, align 1
  %390 = lshr i32 %375, 31
  %391 = trunc i32 %390 to i8
  store i8 %391, i8* %32, align 1
  %392 = lshr i32 %369, 31
  %393 = lshr i32 %374, 31
  %394 = xor i32 %393, %392
  %395 = xor i32 %390, %392
  %396 = add nuw nsw i32 %395, %394
  %397 = icmp eq i32 %396, 2
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %38, align 1
  %399 = icmp ne i8 %391, 0
  %400 = xor i1 %399, %397
  %.v7 = select i1 %400, i64 12, i64 98
  %401 = add i64 %364, %.v7
  store i64 %401, i64* %3, align 8
  br i1 %400, label %block_400d05, label %block_.L_400d5b

block_400d05:                                     ; preds = %block_.L_400cf9
  %402 = add i64 %365, -16
  %403 = add i64 %401, 4
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i64*
  %405 = load i64, i64* %404, align 8
  store i64 %405, i64* %RAX.i388, align 8
  %406 = add i64 %401, 8
  store i64 %406, i64* %3, align 8
  %407 = load i32, i32* %368, align 4
  %408 = sext i32 %407 to i64
  %409 = shl nsw i64 %408, 12
  store i64 %409, i64* %RCX.i395, align 8
  %410 = lshr i64 %408, 51
  %411 = and i64 %410, 1
  %412 = add i64 %409, %405
  store i64 %412, i64* %RAX.i388, align 8
  %413 = icmp ult i64 %412, %405
  %414 = icmp ult i64 %412, %409
  %415 = or i1 %413, %414
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %14, align 1
  %417 = trunc i64 %412 to i32
  %418 = and i32 %417, 255
  %419 = tail call i32 @llvm.ctpop.i32(i32 %418)
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  store i8 %422, i8* %21, align 1
  %423 = xor i64 %405, %412
  %424 = lshr i64 %423, 4
  %425 = trunc i64 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %26, align 1
  %427 = icmp eq i64 %412, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %29, align 1
  %429 = lshr i64 %412, 63
  %430 = trunc i64 %429 to i8
  store i8 %430, i8* %32, align 1
  %431 = lshr i64 %405, 63
  %432 = xor i64 %429, %431
  %433 = xor i64 %429, %411
  %434 = add nuw nsw i64 %432, %433
  %435 = icmp eq i64 %434, 2
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %38, align 1
  %437 = add i64 %365, -44
  %438 = add i64 %401, 19
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = sext i32 %440 to i64
  store i64 %441, i64* %RCX.i395, align 8
  %442 = shl nsw i64 %441, 3
  %443 = add i64 %442, %412
  %444 = add i64 %401, 24
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to double*
  %446 = load double, double* %445, align 8
  store double %446, double* %83, align 1
  store double 0.000000e+00, double* %84, align 1
  %447 = add i64 %365, -24
  %448 = add i64 %401, 28
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i64*
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %RAX.i388, align 8
  %451 = add i64 %401, 32
  store i64 %451, i64* %3, align 8
  %452 = load i32, i32* %439, align 4
  %453 = sext i32 %452 to i64
  %454 = shl nsw i64 %453, 12
  store i64 %454, i64* %RCX.i395, align 8
  %455 = lshr i64 %453, 51
  %456 = and i64 %455, 1
  %457 = add i64 %454, %450
  store i64 %457, i64* %RAX.i388, align 8
  %458 = icmp ult i64 %457, %450
  %459 = icmp ult i64 %457, %454
  %460 = or i1 %458, %459
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %14, align 1
  %462 = trunc i64 %457 to i32
  %463 = and i32 %462, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463)
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %21, align 1
  %468 = xor i64 %450, %457
  %469 = lshr i64 %468, 4
  %470 = trunc i64 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %26, align 1
  %472 = icmp eq i64 %457, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %29, align 1
  %474 = lshr i64 %457, 63
  %475 = trunc i64 %474 to i8
  store i8 %475, i8* %32, align 1
  %476 = lshr i64 %450, 63
  %477 = xor i64 %474, %476
  %478 = xor i64 %474, %456
  %479 = add nuw nsw i64 %477, %478
  %480 = icmp eq i64 %479, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %38, align 1
  %482 = load i64, i64* %RBP.i, align 8
  %483 = add i64 %482, -44
  %484 = add i64 %401, 43
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i32*
  %486 = load i32, i32* %485, align 4
  %487 = sext i32 %486 to i64
  store i64 %487, i64* %RCX.i395, align 8
  %488 = shl nsw i64 %487, 3
  %489 = add i64 %488, %457
  %490 = add i64 %401, 48
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to double*
  %492 = load double, double* %491, align 8
  %493 = fdiv double %446, %492
  store double %493, double* %83, align 1
  store i64 0, i64* %76, align 1
  %494 = add i64 %482, -32
  %495 = add i64 %401, 52
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i64*
  %497 = load i64, i64* %496, align 8
  store i64 %497, i64* %RAX.i388, align 8
  %498 = add i64 %482, -36
  %499 = add i64 %401, 56
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = sext i32 %501 to i64
  %503 = shl nsw i64 %502, 12
  store i64 %503, i64* %RCX.i395, align 8
  %504 = lshr i64 %502, 51
  %505 = and i64 %504, 1
  %506 = add i64 %503, %497
  store i64 %506, i64* %RAX.i388, align 8
  %507 = icmp ult i64 %506, %497
  %508 = icmp ult i64 %506, %503
  %509 = or i1 %507, %508
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %14, align 1
  %511 = trunc i64 %506 to i32
  %512 = and i32 %511, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %21, align 1
  %517 = xor i64 %497, %506
  %518 = lshr i64 %517, 4
  %519 = trunc i64 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %26, align 1
  %521 = icmp eq i64 %506, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %29, align 1
  %523 = lshr i64 %506, 63
  %524 = trunc i64 %523 to i8
  store i8 %524, i8* %32, align 1
  %525 = lshr i64 %497, 63
  %526 = xor i64 %523, %525
  %527 = xor i64 %523, %505
  %528 = add nuw nsw i64 %526, %527
  %529 = icmp eq i64 %528, 2
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %38, align 1
  %531 = add i64 %401, 67
  store i64 %531, i64* %3, align 8
  %532 = load i32, i32* %485, align 4
  %533 = sext i32 %532 to i64
  store i64 %533, i64* %RCX.i395, align 8
  %534 = shl nsw i64 %533, 3
  %535 = add i64 %534, %506
  %536 = add i64 %401, 72
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %535 to double*
  store double %493, double* %537, align 8
  %538 = load i64, i64* %RBP.i, align 8
  %539 = add i64 %538, -36
  %540 = load i64, i64* %3, align 8
  %541 = add i64 %540, 3
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %539 to i32*
  %543 = load i32, i32* %542, align 4
  %544 = add i32 %543, 1
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RAX.i388, align 8
  %546 = icmp eq i32 %543, -1
  %547 = icmp eq i32 %544, 0
  %548 = or i1 %546, %547
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %14, align 1
  %550 = and i32 %544, 255
  %551 = tail call i32 @llvm.ctpop.i32(i32 %550)
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  store i8 %554, i8* %21, align 1
  %555 = xor i32 %543, %544
  %556 = lshr i32 %555, 4
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  store i8 %558, i8* %26, align 1
  %559 = zext i1 %547 to i8
  store i8 %559, i8* %29, align 1
  %560 = lshr i32 %544, 31
  %561 = trunc i32 %560 to i8
  store i8 %561, i8* %32, align 1
  %562 = lshr i32 %543, 31
  %563 = xor i32 %560, %562
  %564 = add nuw nsw i32 %563, %560
  %565 = icmp eq i32 %564, 2
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %38, align 1
  %567 = add i64 %540, 9
  store i64 %567, i64* %3, align 8
  store i32 %544, i32* %542, align 4
  %568 = load i64, i64* %3, align 8
  %569 = add i64 %568, -93
  store i64 %569, i64* %3, align 8
  br label %block_.L_400cf9

block_.L_400d5b:                                  ; preds = %block_.L_400cf9
  %570 = add i64 %365, -44
  %571 = add i64 %401, 3
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i32*
  %573 = load i32, i32* %572, align 4
  %574 = add i32 %573, 1
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %RAX.i388, align 8
  %576 = icmp eq i32 %573, -1
  %577 = icmp eq i32 %574, 0
  %578 = or i1 %576, %577
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %14, align 1
  %580 = and i32 %574, 255
  %581 = tail call i32 @llvm.ctpop.i32(i32 %580)
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = xor i8 %583, 1
  store i8 %584, i8* %21, align 1
  %585 = xor i32 %573, %574
  %586 = lshr i32 %585, 4
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  store i8 %588, i8* %26, align 1
  %589 = zext i1 %577 to i8
  store i8 %589, i8* %29, align 1
  %590 = lshr i32 %574, 31
  %591 = trunc i32 %590 to i8
  store i8 %591, i8* %32, align 1
  %592 = lshr i32 %573, 31
  %593 = xor i32 %590, %592
  %594 = add nuw nsw i32 %593, %590
  %595 = icmp eq i32 %594, 2
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %38, align 1
  %597 = add i64 %365, -40
  %598 = add i64 %401, 9
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i32*
  store i32 %574, i32* %599, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400d64

block_.L_400d64:                                  ; preds = %block_.L_400e7e, %block_.L_400d5b
  %600 = phi i64 [ %1183, %block_.L_400e7e ], [ %.pre3, %block_.L_400d5b ]
  %601 = load i64, i64* %RBP.i, align 8
  %602 = add i64 %601, -40
  %603 = add i64 %600, 3
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RAX.i388, align 8
  %607 = add i64 %601, -8
  %608 = add i64 %600, 6
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = sub i32 %605, %610
  %612 = icmp ult i32 %605, %610
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %14, align 1
  %614 = and i32 %611, 255
  %615 = tail call i32 @llvm.ctpop.i32(i32 %614)
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = xor i8 %617, 1
  store i8 %618, i8* %21, align 1
  %619 = xor i32 %610, %605
  %620 = xor i32 %619, %611
  %621 = lshr i32 %620, 4
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  store i8 %623, i8* %26, align 1
  %624 = icmp eq i32 %611, 0
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %29, align 1
  %626 = lshr i32 %611, 31
  %627 = trunc i32 %626 to i8
  store i8 %627, i8* %32, align 1
  %628 = lshr i32 %605, 31
  %629 = lshr i32 %610, 31
  %630 = xor i32 %629, %628
  %631 = xor i32 %626, %628
  %632 = add nuw nsw i32 %631, %630
  %633 = icmp eq i32 %632, 2
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %38, align 1
  %635 = icmp ne i8 %627, 0
  %636 = xor i1 %635, %633
  %.v8 = select i1 %636, i64 12, i64 301
  %637 = add i64 %600, %.v8
  store i64 %637, i64* %3, align 8
  br i1 %636, label %block_400d70, label %block_.L_400e91

block_400d70:                                     ; preds = %block_.L_400d64
  store i32 0, i32* %77, align 1
  store i32 0, i32* %79, align 1
  store i32 0, i32* %80, align 1
  store i32 0, i32* %82, align 1
  %638 = add i64 %601, -24
  %639 = add i64 %637, 7
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %641, i64* %RAX.i388, align 8
  %642 = add i64 %601, -44
  %643 = add i64 %637, 11
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = sext i32 %645 to i64
  %647 = shl nsw i64 %646, 12
  store i64 %647, i64* %RCX.i395, align 8
  %648 = lshr i64 %646, 51
  %649 = and i64 %648, 1
  %650 = add i64 %647, %641
  store i64 %650, i64* %RAX.i388, align 8
  %651 = icmp ult i64 %650, %641
  %652 = icmp ult i64 %650, %647
  %653 = or i1 %651, %652
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %14, align 1
  %655 = trunc i64 %650 to i32
  %656 = and i32 %655, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %21, align 1
  %661 = xor i64 %641, %650
  %662 = lshr i64 %661, 4
  %663 = trunc i64 %662 to i8
  %664 = and i8 %663, 1
  store i8 %664, i8* %26, align 1
  %665 = icmp eq i64 %650, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %29, align 1
  %667 = lshr i64 %650, 63
  %668 = trunc i64 %667 to i8
  store i8 %668, i8* %32, align 1
  %669 = lshr i64 %641, 63
  %670 = xor i64 %667, %669
  %671 = xor i64 %667, %649
  %672 = add nuw nsw i64 %670, %671
  %673 = icmp eq i64 %672, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %38, align 1
  %675 = add i64 %637, 22
  store i64 %675, i64* %3, align 8
  %676 = load i32, i32* %604, align 4
  %677 = sext i32 %676 to i64
  store i64 %677, i64* %RCX.i395, align 8
  %678 = shl nsw i64 %677, 3
  %679 = add i64 %678, %650
  %680 = add i64 %637, 27
  store i64 %680, i64* %3, align 8
  %681 = load i64, i64* %129, align 1
  %682 = inttoptr i64 %679 to i64*
  store i64 %681, i64* %682, align 8
  %683 = load i64, i64* %RBP.i, align 8
  %684 = add i64 %683, -36
  %685 = load i64, i64* %3, align 8
  %686 = add i64 %685, 7
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %684 to i32*
  store i32 0, i32* %687, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400d92

block_.L_400d92:                                  ; preds = %block_400d9e, %block_400d70
  %688 = phi i64 [ %896, %block_400d9e ], [ %.pre4, %block_400d70 ]
  %689 = load i64, i64* %RBP.i, align 8
  %690 = add i64 %689, -36
  %691 = add i64 %688, 3
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RAX.i388, align 8
  %695 = add i64 %689, -4
  %696 = add i64 %688, 6
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = sub i32 %693, %698
  %700 = icmp ult i32 %693, %698
  %701 = zext i1 %700 to i8
  store i8 %701, i8* %14, align 1
  %702 = and i32 %699, 255
  %703 = tail call i32 @llvm.ctpop.i32(i32 %702)
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = xor i8 %705, 1
  store i8 %706, i8* %21, align 1
  %707 = xor i32 %698, %693
  %708 = xor i32 %707, %699
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  store i8 %711, i8* %26, align 1
  %712 = icmp eq i32 %699, 0
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %29, align 1
  %714 = lshr i32 %699, 31
  %715 = trunc i32 %714 to i8
  store i8 %715, i8* %32, align 1
  %716 = lshr i32 %693, 31
  %717 = lshr i32 %698, 31
  %718 = xor i32 %717, %716
  %719 = xor i32 %714, %716
  %720 = add nuw nsw i32 %719, %718
  %721 = icmp eq i32 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %38, align 1
  %723 = icmp ne i8 %715, 0
  %724 = xor i1 %723, %721
  %.v9 = select i1 %724, i64 12, i64 103
  %725 = add i64 %688, %.v9
  store i64 %725, i64* %3, align 8
  br i1 %724, label %block_400d9e, label %block_.L_400df9

block_400d9e:                                     ; preds = %block_.L_400d92
  %726 = add i64 %689, -32
  %727 = add i64 %725, 4
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i64*
  %729 = load i64, i64* %728, align 8
  store i64 %729, i64* %RAX.i388, align 8
  %730 = add i64 %725, 8
  store i64 %730, i64* %3, align 8
  %731 = load i32, i32* %692, align 4
  %732 = sext i32 %731 to i64
  %733 = shl nsw i64 %732, 12
  store i64 %733, i64* %RCX.i395, align 8
  %734 = lshr i64 %732, 51
  %735 = and i64 %734, 1
  %736 = add i64 %733, %729
  store i64 %736, i64* %RAX.i388, align 8
  %737 = icmp ult i64 %736, %729
  %738 = icmp ult i64 %736, %733
  %739 = or i1 %737, %738
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %14, align 1
  %741 = trunc i64 %736 to i32
  %742 = and i32 %741, 255
  %743 = tail call i32 @llvm.ctpop.i32(i32 %742)
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = xor i8 %745, 1
  store i8 %746, i8* %21, align 1
  %747 = xor i64 %729, %736
  %748 = lshr i64 %747, 4
  %749 = trunc i64 %748 to i8
  %750 = and i8 %749, 1
  store i8 %750, i8* %26, align 1
  %751 = icmp eq i64 %736, 0
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %29, align 1
  %753 = lshr i64 %736, 63
  %754 = trunc i64 %753 to i8
  store i8 %754, i8* %32, align 1
  %755 = lshr i64 %729, 63
  %756 = xor i64 %753, %755
  %757 = xor i64 %753, %735
  %758 = add nuw nsw i64 %756, %757
  %759 = icmp eq i64 %758, 2
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %38, align 1
  %761 = add i64 %689, -44
  %762 = add i64 %725, 19
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = sext i32 %764 to i64
  store i64 %765, i64* %RCX.i395, align 8
  %766 = shl nsw i64 %765, 3
  %767 = add i64 %766, %736
  %768 = add i64 %725, 24
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to double*
  %770 = load double, double* %769, align 8
  store double %770, double* %83, align 1
  store double 0.000000e+00, double* %84, align 1
  %771 = add i64 %689, -16
  %772 = add i64 %725, 28
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i64*
  %774 = load i64, i64* %773, align 8
  store i64 %774, i64* %RAX.i388, align 8
  %775 = add i64 %725, 32
  store i64 %775, i64* %3, align 8
  %776 = load i32, i32* %692, align 4
  %777 = sext i32 %776 to i64
  %778 = shl nsw i64 %777, 12
  store i64 %778, i64* %RCX.i395, align 8
  %779 = lshr i64 %777, 51
  %780 = and i64 %779, 1
  %781 = add i64 %778, %774
  store i64 %781, i64* %RAX.i388, align 8
  %782 = icmp ult i64 %781, %774
  %783 = icmp ult i64 %781, %778
  %784 = or i1 %782, %783
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %14, align 1
  %786 = trunc i64 %781 to i32
  %787 = and i32 %786, 255
  %788 = tail call i32 @llvm.ctpop.i32(i32 %787)
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = xor i8 %790, 1
  store i8 %791, i8* %21, align 1
  %792 = xor i64 %774, %781
  %793 = lshr i64 %792, 4
  %794 = trunc i64 %793 to i8
  %795 = and i8 %794, 1
  store i8 %795, i8* %26, align 1
  %796 = icmp eq i64 %781, 0
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %29, align 1
  %798 = lshr i64 %781, 63
  %799 = trunc i64 %798 to i8
  store i8 %799, i8* %32, align 1
  %800 = lshr i64 %774, 63
  %801 = xor i64 %798, %800
  %802 = xor i64 %798, %780
  %803 = add nuw nsw i64 %801, %802
  %804 = icmp eq i64 %803, 2
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %38, align 1
  %806 = load i64, i64* %RBP.i, align 8
  %807 = add i64 %806, -40
  %808 = add i64 %725, 43
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = sext i32 %810 to i64
  store i64 %811, i64* %RCX.i395, align 8
  %812 = shl nsw i64 %811, 3
  %813 = add i64 %812, %781
  %814 = add i64 %725, 48
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to double*
  %816 = load double, double* %815, align 8
  %817 = fmul double %770, %816
  store double %817, double* %83, align 1
  store i64 0, i64* %76, align 1
  %818 = add i64 %806, -24
  %819 = add i64 %725, 52
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i64*
  %821 = load i64, i64* %820, align 8
  store i64 %821, i64* %RAX.i388, align 8
  %822 = add i64 %806, -44
  %823 = add i64 %725, 56
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = sext i32 %825 to i64
  %827 = shl nsw i64 %826, 12
  store i64 %827, i64* %RCX.i395, align 8
  %828 = lshr i64 %826, 51
  %829 = and i64 %828, 1
  %830 = add i64 %827, %821
  store i64 %830, i64* %RAX.i388, align 8
  %831 = icmp ult i64 %830, %821
  %832 = icmp ult i64 %830, %827
  %833 = or i1 %831, %832
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %14, align 1
  %835 = trunc i64 %830 to i32
  %836 = and i32 %835, 255
  %837 = tail call i32 @llvm.ctpop.i32(i32 %836)
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  store i8 %840, i8* %21, align 1
  %841 = xor i64 %821, %830
  %842 = lshr i64 %841, 4
  %843 = trunc i64 %842 to i8
  %844 = and i8 %843, 1
  store i8 %844, i8* %26, align 1
  %845 = icmp eq i64 %830, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %29, align 1
  %847 = lshr i64 %830, 63
  %848 = trunc i64 %847 to i8
  store i8 %848, i8* %32, align 1
  %849 = lshr i64 %821, 63
  %850 = xor i64 %847, %849
  %851 = xor i64 %847, %829
  %852 = add nuw nsw i64 %850, %851
  %853 = icmp eq i64 %852, 2
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %38, align 1
  %855 = add i64 %725, 67
  store i64 %855, i64* %3, align 8
  %856 = load i32, i32* %809, align 4
  %857 = sext i32 %856 to i64
  store i64 %857, i64* %RCX.i395, align 8
  %858 = shl nsw i64 %857, 3
  %859 = add i64 %858, %830
  %860 = add i64 %725, 72
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to double*
  %862 = load double, double* %861, align 8
  %863 = fadd double %817, %862
  store double %863, double* %83, align 1
  store i64 0, i64* %76, align 1
  %864 = add i64 %725, 77
  store i64 %864, i64* %3, align 8
  store double %863, double* %861, align 8
  %865 = load i64, i64* %RBP.i, align 8
  %866 = add i64 %865, -36
  %867 = load i64, i64* %3, align 8
  %868 = add i64 %867, 3
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %866 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = add i32 %870, 1
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RAX.i388, align 8
  %873 = icmp eq i32 %870, -1
  %874 = icmp eq i32 %871, 0
  %875 = or i1 %873, %874
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %14, align 1
  %877 = and i32 %871, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  %882 = xor i32 %870, %871
  %883 = lshr i32 %882, 4
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  store i8 %885, i8* %26, align 1
  %886 = zext i1 %874 to i8
  store i8 %886, i8* %29, align 1
  %887 = lshr i32 %871, 31
  %888 = trunc i32 %887 to i8
  store i8 %888, i8* %32, align 1
  %889 = lshr i32 %870, 31
  %890 = xor i32 %887, %889
  %891 = add nuw nsw i32 %890, %887
  %892 = icmp eq i32 %891, 2
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %38, align 1
  %894 = add i64 %867, 9
  store i64 %894, i64* %3, align 8
  store i32 %871, i32* %869, align 4
  %895 = load i64, i64* %3, align 8
  %896 = add i64 %895, -98
  store i64 %896, i64* %3, align 8
  br label %block_.L_400d92

block_.L_400df9:                                  ; preds = %block_.L_400d92
  %897 = add i64 %725, 7
  store i64 %897, i64* %3, align 8
  store i32 0, i32* %692, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400e00

block_.L_400e00:                                  ; preds = %block_400e0c, %block_.L_400df9
  %898 = phi i64 [ %1153, %block_400e0c ], [ %.pre5, %block_.L_400df9 ]
  %899 = load i64, i64* %RBP.i, align 8
  %900 = add i64 %899, -36
  %901 = add i64 %898, 3
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  %903 = load i32, i32* %902, align 4
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RAX.i388, align 8
  %905 = add i64 %899, -4
  %906 = add i64 %898, 6
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = sub i32 %903, %908
  %910 = icmp ult i32 %903, %908
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %14, align 1
  %912 = and i32 %909, 255
  %913 = tail call i32 @llvm.ctpop.i32(i32 %912)
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = xor i8 %915, 1
  store i8 %916, i8* %21, align 1
  %917 = xor i32 %908, %903
  %918 = xor i32 %917, %909
  %919 = lshr i32 %918, 4
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  store i8 %921, i8* %26, align 1
  %922 = icmp eq i32 %909, 0
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %29, align 1
  %924 = lshr i32 %909, 31
  %925 = trunc i32 %924 to i8
  store i8 %925, i8* %32, align 1
  %926 = lshr i32 %903, 31
  %927 = lshr i32 %908, 31
  %928 = xor i32 %927, %926
  %929 = xor i32 %924, %926
  %930 = add nuw nsw i32 %929, %928
  %931 = icmp eq i32 %930, 2
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %38, align 1
  %933 = icmp ne i8 %925, 0
  %934 = xor i1 %933, %931
  %.v10 = select i1 %934, i64 12, i64 126
  %935 = add i64 %898, %.v10
  store i64 %935, i64* %3, align 8
  br i1 %934, label %block_400e0c, label %block_.L_400e7e

block_400e0c:                                     ; preds = %block_.L_400e00
  %936 = add i64 %899, -16
  %937 = add i64 %935, 4
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i64*
  %939 = load i64, i64* %938, align 8
  store i64 %939, i64* %RAX.i388, align 8
  %940 = add i64 %935, 8
  store i64 %940, i64* %3, align 8
  %941 = load i32, i32* %902, align 4
  %942 = sext i32 %941 to i64
  %943 = shl nsw i64 %942, 12
  store i64 %943, i64* %RCX.i395, align 8
  %944 = lshr i64 %942, 51
  %945 = and i64 %944, 1
  %946 = add i64 %943, %939
  store i64 %946, i64* %RAX.i388, align 8
  %947 = icmp ult i64 %946, %939
  %948 = icmp ult i64 %946, %943
  %949 = or i1 %947, %948
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %14, align 1
  %951 = trunc i64 %946 to i32
  %952 = and i32 %951, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %21, align 1
  %957 = xor i64 %939, %946
  %958 = lshr i64 %957, 4
  %959 = trunc i64 %958 to i8
  %960 = and i8 %959, 1
  store i8 %960, i8* %26, align 1
  %961 = icmp eq i64 %946, 0
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %29, align 1
  %963 = lshr i64 %946, 63
  %964 = trunc i64 %963 to i8
  store i8 %964, i8* %32, align 1
  %965 = lshr i64 %939, 63
  %966 = xor i64 %963, %965
  %967 = xor i64 %963, %945
  %968 = add nuw nsw i64 %966, %967
  %969 = icmp eq i64 %968, 2
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %38, align 1
  %971 = add i64 %899, -40
  %972 = add i64 %935, 19
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = sext i32 %974 to i64
  store i64 %975, i64* %RCX.i395, align 8
  %976 = shl nsw i64 %975, 3
  %977 = add i64 %976, %946
  %978 = add i64 %935, 24
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i64*
  %980 = load i64, i64* %979, align 8
  store i64 %980, i64* %129, align 1
  store double 0.000000e+00, double* %84, align 1
  %981 = add i64 %899, -32
  %982 = add i64 %935, 28
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i64*
  %984 = load i64, i64* %983, align 8
  store i64 %984, i64* %RAX.i388, align 8
  %985 = add i64 %935, 32
  store i64 %985, i64* %3, align 8
  %986 = load i32, i32* %902, align 4
  %987 = sext i32 %986 to i64
  %988 = shl nsw i64 %987, 12
  store i64 %988, i64* %RCX.i395, align 8
  %989 = lshr i64 %987, 51
  %990 = and i64 %989, 1
  %991 = add i64 %988, %984
  store i64 %991, i64* %RAX.i388, align 8
  %992 = icmp ult i64 %991, %984
  %993 = icmp ult i64 %991, %988
  %994 = or i1 %992, %993
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %14, align 1
  %996 = trunc i64 %991 to i32
  %997 = and i32 %996, 255
  %998 = tail call i32 @llvm.ctpop.i32(i32 %997)
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = xor i8 %1000, 1
  store i8 %1001, i8* %21, align 1
  %1002 = xor i64 %984, %991
  %1003 = lshr i64 %1002, 4
  %1004 = trunc i64 %1003 to i8
  %1005 = and i8 %1004, 1
  store i8 %1005, i8* %26, align 1
  %1006 = icmp eq i64 %991, 0
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %29, align 1
  %1008 = lshr i64 %991, 63
  %1009 = trunc i64 %1008 to i8
  store i8 %1009, i8* %32, align 1
  %1010 = lshr i64 %984, 63
  %1011 = xor i64 %1008, %1010
  %1012 = xor i64 %1008, %990
  %1013 = add nuw nsw i64 %1011, %1012
  %1014 = icmp eq i64 %1013, 2
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %38, align 1
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -44
  %1018 = add i64 %935, 43
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  %1020 = load i32, i32* %1019, align 4
  %1021 = sext i32 %1020 to i64
  store i64 %1021, i64* %RCX.i395, align 8
  %1022 = shl nsw i64 %1021, 3
  %1023 = add i64 %1022, %991
  %1024 = add i64 %935, 48
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to double*
  %1026 = load double, double* %1025, align 8
  store double %1026, double* %86, align 1
  store double 0.000000e+00, double* %88, align 1
  %1027 = add i64 %1016, -24
  %1028 = add i64 %935, 52
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i64*
  %1030 = load i64, i64* %1029, align 8
  store i64 %1030, i64* %RAX.i388, align 8
  %1031 = add i64 %935, 56
  store i64 %1031, i64* %3, align 8
  %1032 = load i32, i32* %1019, align 4
  %1033 = sext i32 %1032 to i64
  %1034 = shl nsw i64 %1033, 12
  store i64 %1034, i64* %RCX.i395, align 8
  %1035 = lshr i64 %1033, 51
  %1036 = and i64 %1035, 1
  %1037 = add i64 %1034, %1030
  store i64 %1037, i64* %RAX.i388, align 8
  %1038 = icmp ult i64 %1037, %1030
  %1039 = icmp ult i64 %1037, %1034
  %1040 = or i1 %1038, %1039
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %14, align 1
  %1042 = trunc i64 %1037 to i32
  %1043 = and i32 %1042, 255
  %1044 = tail call i32 @llvm.ctpop.i32(i32 %1043)
  %1045 = trunc i32 %1044 to i8
  %1046 = and i8 %1045, 1
  %1047 = xor i8 %1046, 1
  store i8 %1047, i8* %21, align 1
  %1048 = xor i64 %1030, %1037
  %1049 = lshr i64 %1048, 4
  %1050 = trunc i64 %1049 to i8
  %1051 = and i8 %1050, 1
  store i8 %1051, i8* %26, align 1
  %1052 = icmp eq i64 %1037, 0
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %29, align 1
  %1054 = lshr i64 %1037, 63
  %1055 = trunc i64 %1054 to i8
  store i8 %1055, i8* %32, align 1
  %1056 = lshr i64 %1030, 63
  %1057 = xor i64 %1054, %1056
  %1058 = xor i64 %1054, %1036
  %1059 = add nuw nsw i64 %1057, %1058
  %1060 = icmp eq i64 %1059, 2
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %38, align 1
  %1062 = add i64 %1016, -40
  %1063 = add i64 %935, 67
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = sext i32 %1065 to i64
  store i64 %1066, i64* %RCX.i395, align 8
  %1067 = shl nsw i64 %1066, 3
  %1068 = add i64 %1067, %1037
  %1069 = add i64 %935, 72
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to double*
  %1071 = load double, double* %1070, align 8
  %1072 = fmul double %1026, %1071
  store double %1072, double* %86, align 1
  store i64 0, i64* %87, align 1
  %1073 = load double, double* %83, align 1
  %1074 = fsub double %1073, %1072
  store double %1074, double* %83, align 1
  %1075 = load i64, i64* %RBP.i, align 8
  %1076 = add i64 %1075, -16
  %1077 = add i64 %935, 80
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i64*
  %1079 = load i64, i64* %1078, align 8
  store i64 %1079, i64* %RAX.i388, align 8
  %1080 = add i64 %1075, -36
  %1081 = add i64 %935, 84
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  %1083 = load i32, i32* %1082, align 4
  %1084 = sext i32 %1083 to i64
  %1085 = shl nsw i64 %1084, 12
  store i64 %1085, i64* %RCX.i395, align 8
  %1086 = lshr i64 %1084, 51
  %1087 = and i64 %1086, 1
  %1088 = add i64 %1085, %1079
  store i64 %1088, i64* %RAX.i388, align 8
  %1089 = icmp ult i64 %1088, %1079
  %1090 = icmp ult i64 %1088, %1085
  %1091 = or i1 %1089, %1090
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %14, align 1
  %1093 = trunc i64 %1088 to i32
  %1094 = and i32 %1093, 255
  %1095 = tail call i32 @llvm.ctpop.i32(i32 %1094)
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  store i8 %1098, i8* %21, align 1
  %1099 = xor i64 %1079, %1088
  %1100 = lshr i64 %1099, 4
  %1101 = trunc i64 %1100 to i8
  %1102 = and i8 %1101, 1
  store i8 %1102, i8* %26, align 1
  %1103 = icmp eq i64 %1088, 0
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %29, align 1
  %1105 = lshr i64 %1088, 63
  %1106 = trunc i64 %1105 to i8
  store i8 %1106, i8* %32, align 1
  %1107 = lshr i64 %1079, 63
  %1108 = xor i64 %1105, %1107
  %1109 = xor i64 %1105, %1087
  %1110 = add nuw nsw i64 %1108, %1109
  %1111 = icmp eq i64 %1110, 2
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %38, align 1
  %1113 = add i64 %1075, -40
  %1114 = add i64 %935, 95
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i32*
  %1116 = load i32, i32* %1115, align 4
  %1117 = sext i32 %1116 to i64
  store i64 %1117, i64* %RCX.i395, align 8
  %1118 = shl nsw i64 %1117, 3
  %1119 = add i64 %1118, %1088
  %1120 = add i64 %935, 100
  store i64 %1120, i64* %3, align 8
  %1121 = inttoptr i64 %1119 to double*
  store double %1074, double* %1121, align 8
  %1122 = load i64, i64* %RBP.i, align 8
  %1123 = add i64 %1122, -36
  %1124 = load i64, i64* %3, align 8
  %1125 = add i64 %1124, 3
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1123 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = add i32 %1127, 1
  %1129 = zext i32 %1128 to i64
  store i64 %1129, i64* %RAX.i388, align 8
  %1130 = icmp eq i32 %1127, -1
  %1131 = icmp eq i32 %1128, 0
  %1132 = or i1 %1130, %1131
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %14, align 1
  %1134 = and i32 %1128, 255
  %1135 = tail call i32 @llvm.ctpop.i32(i32 %1134)
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  %1138 = xor i8 %1137, 1
  store i8 %1138, i8* %21, align 1
  %1139 = xor i32 %1127, %1128
  %1140 = lshr i32 %1139, 4
  %1141 = trunc i32 %1140 to i8
  %1142 = and i8 %1141, 1
  store i8 %1142, i8* %26, align 1
  %1143 = zext i1 %1131 to i8
  store i8 %1143, i8* %29, align 1
  %1144 = lshr i32 %1128, 31
  %1145 = trunc i32 %1144 to i8
  store i8 %1145, i8* %32, align 1
  %1146 = lshr i32 %1127, 31
  %1147 = xor i32 %1144, %1146
  %1148 = add nuw nsw i32 %1147, %1144
  %1149 = icmp eq i32 %1148, 2
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %38, align 1
  %1151 = add i64 %1124, 9
  store i64 %1151, i64* %3, align 8
  store i32 %1128, i32* %1126, align 4
  %1152 = load i64, i64* %3, align 8
  %1153 = add i64 %1152, -121
  store i64 %1153, i64* %3, align 8
  br label %block_.L_400e00

block_.L_400e7e:                                  ; preds = %block_.L_400e00
  %1154 = add i64 %899, -40
  %1155 = add i64 %935, 8
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = add i32 %1157, 1
  %1159 = zext i32 %1158 to i64
  store i64 %1159, i64* %RAX.i388, align 8
  %1160 = icmp eq i32 %1157, -1
  %1161 = icmp eq i32 %1158, 0
  %1162 = or i1 %1160, %1161
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %14, align 1
  %1164 = and i32 %1158, 255
  %1165 = tail call i32 @llvm.ctpop.i32(i32 %1164)
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  %1168 = xor i8 %1167, 1
  store i8 %1168, i8* %21, align 1
  %1169 = xor i32 %1157, %1158
  %1170 = lshr i32 %1169, 4
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %26, align 1
  %1173 = zext i1 %1161 to i8
  store i8 %1173, i8* %29, align 1
  %1174 = lshr i32 %1158, 31
  %1175 = trunc i32 %1174 to i8
  store i8 %1175, i8* %32, align 1
  %1176 = lshr i32 %1157, 31
  %1177 = xor i32 %1174, %1176
  %1178 = add nuw nsw i32 %1177, %1174
  %1179 = icmp eq i32 %1178, 2
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %38, align 1
  %1181 = add i64 %935, 14
  store i64 %1181, i64* %3, align 8
  store i32 %1158, i32* %1156, align 4
  %1182 = load i64, i64* %3, align 8
  %1183 = add i64 %1182, -296
  store i64 %1183, i64* %3, align 8
  br label %block_.L_400d64

block_.L_400e91:                                  ; preds = %block_.L_400d64
  %1184 = add i64 %601, -44
  %1185 = add i64 %637, 8
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  %1187 = load i32, i32* %1186, align 4
  %1188 = add i32 %1187, 1
  %1189 = zext i32 %1188 to i64
  store i64 %1189, i64* %RAX.i388, align 8
  %1190 = icmp eq i32 %1187, -1
  %1191 = icmp eq i32 %1188, 0
  %1192 = or i1 %1190, %1191
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %14, align 1
  %1194 = and i32 %1188, 255
  %1195 = tail call i32 @llvm.ctpop.i32(i32 %1194)
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = xor i8 %1197, 1
  store i8 %1198, i8* %21, align 1
  %1199 = xor i32 %1187, %1188
  %1200 = lshr i32 %1199, 4
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  store i8 %1202, i8* %26, align 1
  %1203 = zext i1 %1191 to i8
  store i8 %1203, i8* %29, align 1
  %1204 = lshr i32 %1188, 31
  %1205 = trunc i32 %1204 to i8
  store i8 %1205, i8* %32, align 1
  %1206 = lshr i32 %1187, 31
  %1207 = xor i32 %1204, %1206
  %1208 = add nuw nsw i32 %1207, %1204
  %1209 = icmp eq i32 %1208, 2
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %38, align 1
  %1211 = add i64 %637, 14
  store i64 %1211, i64* %3, align 8
  store i32 %1188, i32* %1186, align 4
  %1212 = load i64, i64* %3, align 8
  %1213 = add i64 %1212, -574
  store i64 %1213, i64* %3, align 8
  br label %block_.L_400c61

block_.L_400ea4:                                  ; preds = %block_.L_400c61
  %1214 = load i64, i64* %6, align 8
  %1215 = add i64 %1214, 64
  store i64 %1215, i64* %6, align 8
  %1216 = icmp ugt i64 %1214, -65
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %14, align 1
  %1218 = trunc i64 %1215 to i32
  %1219 = and i32 %1218, 255
  %1220 = tail call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %21, align 1
  %1224 = xor i64 %1214, %1215
  %1225 = lshr i64 %1224, 4
  %1226 = trunc i64 %1225 to i8
  %1227 = and i8 %1226, 1
  store i8 %1227, i8* %26, align 1
  %1228 = icmp eq i64 %1215, 0
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %29, align 1
  %1230 = lshr i64 %1215, 63
  %1231 = trunc i64 %1230 to i8
  store i8 %1231, i8* %32, align 1
  %1232 = lshr i64 %1214, 63
  %1233 = xor i64 %1230, %1232
  %1234 = add nuw nsw i64 %1233, %1230
  %1235 = icmp eq i64 %1234, 2
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %38, align 1
  %1237 = add i64 %126, 5
  store i64 %1237, i64* %3, align 8
  %1238 = add i64 %1214, 72
  %1239 = inttoptr i64 %1215 to i64*
  %1240 = load i64, i64* %1239, align 8
  store i64 %1240, i64* %RBP.i, align 8
  store i64 %1238, i64* %6, align 8
  %1241 = add i64 %126, 6
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1238 to i64*
  %1243 = load i64, i64* %1242, align 8
  store i64 %1243, i64* %3, align 8
  %1244 = add i64 %1214, 80
  store i64 %1244, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 64
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

define %struct.Memory* @routine_jge_.L_400ea4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

define %struct.Memory* @routine_jge_.L_400cd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0xc___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 12
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 52
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
  %17 = lshr i64 %3, 51
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
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

define %struct.Memory* @routine_addsd_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
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

define %struct.Memory* @routine_jmpq_.L_400c7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  store i64 %4, i64* %PC, align 8
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

define %struct.Memory* @routine_jge_.L_400d5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %14 = fdiv double %11, %13
  store double %14, double* %10, align 1
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

define %struct.Memory* @routine_jmpq_.L_400cf9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

define %struct.Memory* @routine_jge_.L_400e91(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400df9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d92(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400e7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400e00(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d64(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e96(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400c61(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -65
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
