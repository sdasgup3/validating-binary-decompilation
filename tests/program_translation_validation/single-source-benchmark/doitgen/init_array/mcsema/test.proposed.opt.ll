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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -8
  %19 = load i32, i32* %ESI.i, align 4
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %23 to i32*
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -12
  %26 = load i32, i32* %EDX.i, align 4
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 3
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %29, align 4
  %RCX.i221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -24
  %32 = load i64, i64* %RCX.i221, align 8
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %31 to i64*
  store i64 %32, i64* %35, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -32
  %38 = load i64, i64* %R8.i, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %37 to i64*
  store i64 %38, i64* %41, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -40
  %44 = load i64, i64* %R9.i, align 8
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -44
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 0, i32* %52, align 4
  %RAX.i212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %60 = bitcast [32 x %union.VectorReg]* %59 to double*
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %62 = bitcast %union.VectorReg* %61 to double*
  %RDX.i151 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400a80

block_.L_400a80:                                  ; preds = %block_.L_400b41, %entry
  %63 = phi i64 [ %458, %block_.L_400b41 ], [ %.pre, %entry ]
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -44
  %66 = add i64 %63, 3
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = zext i32 %68 to i64
  store i64 %69, i64* %RAX.i212, align 8
  %70 = add i64 %64, -4
  %71 = add i64 %63, 6
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = sub i32 %68, %73
  %75 = icmp ult i32 %68, %73
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %53, align 1
  %77 = and i32 %74, 255
  %78 = tail call i32 @llvm.ctpop.i32(i32 %77)
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = xor i8 %80, 1
  store i8 %81, i8* %54, align 1
  %82 = xor i32 %73, %68
  %83 = xor i32 %82, %74
  %84 = lshr i32 %83, 4
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  store i8 %86, i8* %55, align 1
  %87 = icmp eq i32 %74, 0
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %56, align 1
  %89 = lshr i32 %74, 31
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %57, align 1
  %91 = lshr i32 %68, 31
  %92 = lshr i32 %73, 31
  %93 = xor i32 %92, %91
  %94 = xor i32 %89, %91
  %95 = add nuw nsw i32 %94, %93
  %96 = icmp eq i32 %95, 2
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %58, align 1
  %98 = icmp ne i8 %90, 0
  %99 = xor i1 %98, %96
  %.v = select i1 %99, i64 12, i64 212
  %100 = add i64 %63, %.v
  store i64 %100, i64* %3, align 8
  br i1 %99, label %block_400a8c, label %block_.L_400b54

block_400a8c:                                     ; preds = %block_.L_400a80
  %101 = add i64 %64, -48
  %102 = add i64 %100, 7
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  store i32 0, i32* %103, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400a93

block_.L_400a93:                                  ; preds = %block_.L_400b2e, %block_400a8c
  %104 = phi i64 [ %428, %block_.L_400b2e ], [ %.pre1, %block_400a8c ]
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -48
  %107 = add i64 %104, 3
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %109 to i64
  store i64 %110, i64* %RAX.i212, align 8
  %111 = add i64 %105, -8
  %112 = add i64 %104, 6
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = sub i32 %109, %114
  %116 = icmp ult i32 %109, %114
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %53, align 1
  %118 = and i32 %115, 255
  %119 = tail call i32 @llvm.ctpop.i32(i32 %118)
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  store i8 %122, i8* %54, align 1
  %123 = xor i32 %114, %109
  %124 = xor i32 %123, %115
  %125 = lshr i32 %124, 4
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  store i8 %127, i8* %55, align 1
  %128 = icmp eq i32 %115, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %56, align 1
  %130 = lshr i32 %115, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %57, align 1
  %132 = lshr i32 %109, 31
  %133 = lshr i32 %114, 31
  %134 = xor i32 %133, %132
  %135 = xor i32 %130, %132
  %136 = add nuw nsw i32 %135, %134
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %58, align 1
  %139 = icmp ne i8 %131, 0
  %140 = xor i1 %139, %137
  %.v5 = select i1 %140, i64 12, i64 174
  %141 = add i64 %104, %.v5
  store i64 %141, i64* %3, align 8
  br i1 %140, label %block_400a9f, label %block_.L_400b41

block_400a9f:                                     ; preds = %block_.L_400a93
  %142 = add i64 %105, -52
  %143 = add i64 %141, 7
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  store i32 0, i32* %144, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400aa6

block_.L_400aa6:                                  ; preds = %block_400ab2, %block_400a9f
  %145 = phi i64 [ %398, %block_400ab2 ], [ %.pre2, %block_400a9f ]
  %146 = load i64, i64* %RBP.i, align 8
  %147 = add i64 %146, -52
  %148 = add i64 %145, 3
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RAX.i212, align 8
  %152 = add i64 %146, -12
  %153 = add i64 %145, 6
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %152 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = sub i32 %150, %155
  %157 = icmp ult i32 %150, %155
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %53, align 1
  %159 = and i32 %156, 255
  %160 = tail call i32 @llvm.ctpop.i32(i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  store i8 %163, i8* %54, align 1
  %164 = xor i32 %155, %150
  %165 = xor i32 %164, %156
  %166 = lshr i32 %165, 4
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  store i8 %168, i8* %55, align 1
  %169 = icmp eq i32 %156, 0
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %56, align 1
  %171 = lshr i32 %156, 31
  %172 = trunc i32 %171 to i8
  store i8 %172, i8* %57, align 1
  %173 = lshr i32 %150, 31
  %174 = lshr i32 %155, 31
  %175 = xor i32 %174, %173
  %176 = xor i32 %171, %173
  %177 = add nuw nsw i32 %176, %175
  %178 = icmp eq i32 %177, 2
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %58, align 1
  %180 = icmp ne i8 %172, 0
  %181 = xor i1 %180, %178
  %.v6 = select i1 %181, i64 12, i64 136
  %182 = add i64 %145, %.v6
  store i64 %182, i64* %3, align 8
  br i1 %181, label %block_400ab2, label %block_.L_400b2e

block_400ab2:                                     ; preds = %block_.L_400aa6
  %183 = add i64 %146, -44
  %184 = add i64 %182, 3
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RAX.i212, align 8
  %188 = sitofp i32 %186 to double
  store double %188, double* %60, align 1
  %189 = add i64 %146, -48
  %190 = add i64 %182, 10
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX.i212, align 8
  %194 = sitofp i32 %192 to double
  store double %194, double* %62, align 1
  %195 = fmul double %188, %194
  store double %195, double* %60, align 1
  %196 = add i64 %182, 21
  store i64 %196, i64* %3, align 8
  %197 = load i32, i32* %149, align 4
  %198 = zext i32 %197 to i64
  store i64 %198, i64* %RAX.i212, align 8
  %199 = sitofp i32 %197 to double
  store double %199, double* %62, align 1
  %200 = fadd double %195, %199
  store double %200, double* %60, align 1
  %201 = add i64 %182, 32
  store i64 %201, i64* %3, align 8
  %202 = load i32, i32* %154, align 4
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RAX.i212, align 8
  %204 = sitofp i32 %202 to double
  store double %204, double* %62, align 1
  %205 = fdiv double %200, %204
  store double %205, double* %60, align 1
  %206 = add i64 %146, -24
  %207 = add i64 %182, 44
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %RCX.i221, align 8
  %210 = add i64 %182, 48
  store i64 %210, i64* %3, align 8
  %211 = load i32, i32* %185, align 4
  %212 = sext i32 %211 to i64
  %213 = shl nsw i64 %212, 17
  store i64 %213, i64* %RDX.i151, align 8
  %214 = lshr i64 %212, 46
  %215 = and i64 %214, 1
  %216 = add i64 %213, %209
  store i64 %216, i64* %RCX.i221, align 8
  %217 = icmp ult i64 %216, %209
  %218 = icmp ult i64 %216, %213
  %219 = or i1 %217, %218
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %53, align 1
  %221 = trunc i64 %216 to i32
  %222 = and i32 %221, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %54, align 1
  %227 = xor i64 %209, %216
  %228 = lshr i64 %227, 4
  %229 = trunc i64 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %55, align 1
  %231 = icmp eq i64 %216, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %56, align 1
  %233 = lshr i64 %216, 63
  %234 = trunc i64 %233 to i8
  store i8 %234, i8* %57, align 1
  %235 = lshr i64 %209, 63
  %236 = xor i64 %233, %235
  %237 = xor i64 %233, %215
  %238 = add nuw nsw i64 %236, %237
  %239 = icmp eq i64 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %58, align 1
  %241 = load i64, i64* %RBP.i, align 8
  %242 = add i64 %241, -48
  %243 = add i64 %182, 59
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i32*
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = shl nsw i64 %246, 10
  store i64 %247, i64* %RDX.i151, align 8
  %248 = lshr i64 %246, 53
  %249 = and i64 %248, 1
  %250 = add i64 %247, %216
  store i64 %250, i64* %RCX.i221, align 8
  %251 = icmp ult i64 %250, %216
  %252 = icmp ult i64 %250, %247
  %253 = or i1 %251, %252
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %53, align 1
  %255 = trunc i64 %250 to i32
  %256 = and i32 %255, 255
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256)
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %54, align 1
  %261 = xor i64 %216, %250
  %262 = lshr i64 %261, 4
  %263 = trunc i64 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %55, align 1
  %265 = icmp eq i64 %250, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %56, align 1
  %267 = lshr i64 %250, 63
  %268 = trunc i64 %267 to i8
  store i8 %268, i8* %57, align 1
  %269 = xor i64 %267, %233
  %270 = xor i64 %267, %249
  %271 = add nuw nsw i64 %269, %270
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %58, align 1
  %274 = add i64 %241, -52
  %275 = add i64 %182, 70
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  store i64 %278, i64* %RDX.i151, align 8
  %279 = shl nsw i64 %278, 3
  %280 = add i64 %279, %250
  %281 = add i64 %182, 75
  store i64 %281, i64* %3, align 8
  %282 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %59, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %283 = load i64, i64* %282, align 1
  %284 = inttoptr i64 %280 to i64*
  store i64 %283, i64* %284, align 8
  %285 = load i64, i64* %RBP.i, align 8
  %286 = add i64 %285, -32
  %287 = load i64, i64* %3, align 8
  %288 = add i64 %287, 4
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %286 to i64*
  %290 = load i64, i64* %289, align 8
  store i64 %290, i64* %RCX.i221, align 8
  %291 = add i64 %285, -44
  %292 = add i64 %287, 8
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = shl nsw i64 %295, 17
  store i64 %296, i64* %RDX.i151, align 8
  %297 = lshr i64 %295, 46
  %298 = and i64 %297, 1
  %299 = add i64 %296, %290
  store i64 %299, i64* %RCX.i221, align 8
  %300 = icmp ult i64 %299, %290
  %301 = icmp ult i64 %299, %296
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %53, align 1
  %304 = trunc i64 %299 to i32
  %305 = and i32 %304, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %54, align 1
  %310 = xor i64 %290, %299
  %311 = lshr i64 %310, 4
  %312 = trunc i64 %311 to i8
  %313 = and i8 %312, 1
  store i8 %313, i8* %55, align 1
  %314 = icmp eq i64 %299, 0
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %56, align 1
  %316 = lshr i64 %299, 63
  %317 = trunc i64 %316 to i8
  store i8 %317, i8* %57, align 1
  %318 = lshr i64 %290, 63
  %319 = xor i64 %316, %318
  %320 = xor i64 %316, %298
  %321 = add nuw nsw i64 %319, %320
  %322 = icmp eq i64 %321, 2
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %58, align 1
  %324 = add i64 %285, -48
  %325 = add i64 %287, 19
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  %329 = shl nsw i64 %328, 10
  store i64 %329, i64* %RDX.i151, align 8
  %330 = lshr i64 %328, 53
  %331 = and i64 %330, 1
  %332 = add i64 %329, %299
  store i64 %332, i64* %RCX.i221, align 8
  %333 = icmp ult i64 %332, %299
  %334 = icmp ult i64 %332, %329
  %335 = or i1 %333, %334
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %53, align 1
  %337 = trunc i64 %332 to i32
  %338 = and i32 %337, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %54, align 1
  %343 = xor i64 %299, %332
  %344 = lshr i64 %343, 4
  %345 = trunc i64 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %55, align 1
  %347 = icmp eq i64 %332, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %56, align 1
  %349 = lshr i64 %332, 63
  %350 = trunc i64 %349 to i8
  store i8 %350, i8* %57, align 1
  %351 = xor i64 %349, %316
  %352 = xor i64 %349, %331
  %353 = add nuw nsw i64 %351, %352
  %354 = icmp eq i64 %353, 2
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %58, align 1
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -52
  %358 = add i64 %287, 30
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i32*
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  store i64 %361, i64* %RDX.i151, align 8
  %362 = shl nsw i64 %361, 3
  %363 = add i64 %362, %332
  %364 = add i64 %287, 35
  store i64 %364, i64* %3, align 8
  %365 = load i64, i64* %282, align 1
  %366 = inttoptr i64 %363 to i64*
  store i64 %365, i64* %366, align 8
  %367 = load i64, i64* %RBP.i, align 8
  %368 = add i64 %367, -52
  %369 = load i64, i64* %3, align 8
  %370 = add i64 %369, 3
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %368 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = add i32 %372, 1
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RAX.i212, align 8
  %375 = icmp eq i32 %372, -1
  %376 = icmp eq i32 %373, 0
  %377 = or i1 %375, %376
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %53, align 1
  %379 = and i32 %373, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %54, align 1
  %384 = xor i32 %372, %373
  %385 = lshr i32 %384, 4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %55, align 1
  %388 = zext i1 %376 to i8
  store i8 %388, i8* %56, align 1
  %389 = lshr i32 %373, 31
  %390 = trunc i32 %389 to i8
  store i8 %390, i8* %57, align 1
  %391 = lshr i32 %372, 31
  %392 = xor i32 %389, %391
  %393 = add nuw nsw i32 %392, %389
  %394 = icmp eq i32 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %58, align 1
  %396 = add i64 %369, 9
  store i64 %396, i64* %3, align 8
  store i32 %373, i32* %371, align 4
  %397 = load i64, i64* %3, align 8
  %398 = add i64 %397, -131
  store i64 %398, i64* %3, align 8
  br label %block_.L_400aa6

block_.L_400b2e:                                  ; preds = %block_.L_400aa6
  %399 = add i64 %146, -48
  %400 = add i64 %182, 8
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = add i32 %402, 1
  %404 = zext i32 %403 to i64
  store i64 %404, i64* %RAX.i212, align 8
  %405 = icmp eq i32 %402, -1
  %406 = icmp eq i32 %403, 0
  %407 = or i1 %405, %406
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %53, align 1
  %409 = and i32 %403, 255
  %410 = tail call i32 @llvm.ctpop.i32(i32 %409)
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %54, align 1
  %414 = xor i32 %402, %403
  %415 = lshr i32 %414, 4
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  store i8 %417, i8* %55, align 1
  %418 = zext i1 %406 to i8
  store i8 %418, i8* %56, align 1
  %419 = lshr i32 %403, 31
  %420 = trunc i32 %419 to i8
  store i8 %420, i8* %57, align 1
  %421 = lshr i32 %402, 31
  %422 = xor i32 %419, %421
  %423 = add nuw nsw i32 %422, %419
  %424 = icmp eq i32 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %58, align 1
  %426 = add i64 %182, 14
  store i64 %426, i64* %3, align 8
  store i32 %403, i32* %401, align 4
  %427 = load i64, i64* %3, align 8
  %428 = add i64 %427, -169
  store i64 %428, i64* %3, align 8
  br label %block_.L_400a93

block_.L_400b41:                                  ; preds = %block_.L_400a93
  %429 = add i64 %105, -44
  %430 = add i64 %141, 8
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = add i32 %432, 1
  %434 = zext i32 %433 to i64
  store i64 %434, i64* %RAX.i212, align 8
  %435 = icmp eq i32 %432, -1
  %436 = icmp eq i32 %433, 0
  %437 = or i1 %435, %436
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %53, align 1
  %439 = and i32 %433, 255
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439)
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %54, align 1
  %444 = xor i32 %432, %433
  %445 = lshr i32 %444, 4
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  store i8 %447, i8* %55, align 1
  %448 = zext i1 %436 to i8
  store i8 %448, i8* %56, align 1
  %449 = lshr i32 %433, 31
  %450 = trunc i32 %449 to i8
  store i8 %450, i8* %57, align 1
  %451 = lshr i32 %432, 31
  %452 = xor i32 %449, %451
  %453 = add nuw nsw i32 %452, %449
  %454 = icmp eq i32 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %58, align 1
  %456 = add i64 %141, 14
  store i64 %456, i64* %3, align 8
  store i32 %433, i32* %431, align 4
  %457 = load i64, i64* %3, align 8
  %458 = add i64 %457, -207
  store i64 %458, i64* %3, align 8
  br label %block_.L_400a80

block_.L_400b54:                                  ; preds = %block_.L_400a80
  %459 = add i64 %100, 7
  store i64 %459, i64* %3, align 8
  store i32 0, i32* %67, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400b5b

block_.L_400b5b:                                  ; preds = %block_.L_400bbd, %block_.L_400b54
  %460 = phi i64 [ %660, %block_.L_400bbd ], [ %.pre3, %block_.L_400b54 ]
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -44
  %463 = add i64 %460, 3
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RAX.i212, align 8
  %467 = add i64 %461, -12
  %468 = add i64 %460, 6
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = sub i32 %465, %470
  %472 = icmp ult i32 %465, %470
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %53, align 1
  %474 = and i32 %471, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %54, align 1
  %479 = xor i32 %470, %465
  %480 = xor i32 %479, %471
  %481 = lshr i32 %480, 4
  %482 = trunc i32 %481 to i8
  %483 = and i8 %482, 1
  store i8 %483, i8* %55, align 1
  %484 = icmp eq i32 %471, 0
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %56, align 1
  %486 = lshr i32 %471, 31
  %487 = trunc i32 %486 to i8
  store i8 %487, i8* %57, align 1
  %488 = lshr i32 %465, 31
  %489 = lshr i32 %470, 31
  %490 = xor i32 %489, %488
  %491 = xor i32 %486, %488
  %492 = add nuw nsw i32 %491, %490
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %58, align 1
  %495 = icmp ne i8 %487, 0
  %496 = xor i1 %495, %493
  %.v7 = select i1 %496, i64 12, i64 117
  %497 = add i64 %460, %.v7
  store i64 %497, i64* %3, align 8
  br i1 %496, label %block_400b67, label %block_.L_400bd0

block_400b67:                                     ; preds = %block_.L_400b5b
  %498 = add i64 %461, -48
  %499 = add i64 %497, 7
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  store i32 0, i32* %500, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400b6e

block_.L_400b6e:                                  ; preds = %block_400b7a, %block_400b67
  %501 = phi i64 [ %631, %block_400b7a ], [ %.pre4, %block_400b67 ]
  %502 = load i64, i64* %RBP.i, align 8
  %503 = add i64 %502, -48
  %504 = add i64 %501, 3
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i32*
  %506 = load i32, i32* %505, align 4
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RAX.i212, align 8
  %508 = add i64 %502, -12
  %509 = add i64 %501, 6
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = sub i32 %506, %511
  %513 = icmp ult i32 %506, %511
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %53, align 1
  %515 = and i32 %512, 255
  %516 = tail call i32 @llvm.ctpop.i32(i32 %515)
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  %519 = xor i8 %518, 1
  store i8 %519, i8* %54, align 1
  %520 = xor i32 %511, %506
  %521 = xor i32 %520, %512
  %522 = lshr i32 %521, 4
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  store i8 %524, i8* %55, align 1
  %525 = icmp eq i32 %512, 0
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %56, align 1
  %527 = lshr i32 %512, 31
  %528 = trunc i32 %527 to i8
  store i8 %528, i8* %57, align 1
  %529 = lshr i32 %506, 31
  %530 = lshr i32 %511, 31
  %531 = xor i32 %530, %529
  %532 = xor i32 %527, %529
  %533 = add nuw nsw i32 %532, %531
  %534 = icmp eq i32 %533, 2
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %58, align 1
  %536 = icmp ne i8 %528, 0
  %537 = xor i1 %536, %534
  %.v8 = select i1 %537, i64 12, i64 79
  %538 = add i64 %501, %.v8
  store i64 %538, i64* %3, align 8
  %539 = add i64 %502, -44
  br i1 %537, label %block_400b7a, label %block_.L_400bbd

block_400b7a:                                     ; preds = %block_.L_400b6e
  %540 = add i64 %538, 3
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RAX.i212, align 8
  %544 = sitofp i32 %542 to double
  store double %544, double* %60, align 1
  %545 = add i64 %538, 10
  store i64 %545, i64* %3, align 8
  %546 = load i32, i32* %505, align 4
  %547 = zext i32 %546 to i64
  store i64 %547, i64* %RAX.i212, align 8
  %548 = sitofp i32 %546 to double
  store double %548, double* %62, align 1
  %549 = fmul double %544, %548
  store double %549, double* %60, align 1
  %550 = add i64 %538, 21
  store i64 %550, i64* %3, align 8
  %551 = load i32, i32* %510, align 4
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RAX.i212, align 8
  %553 = sitofp i32 %551 to double
  store double %553, double* %62, align 1
  %554 = fdiv double %549, %553
  store double %554, double* %60, align 1
  %555 = add i64 %502, -40
  %556 = add i64 %538, 33
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i64*
  %558 = load i64, i64* %557, align 8
  store i64 %558, i64* %RCX.i221, align 8
  %559 = add i64 %538, 37
  store i64 %559, i64* %3, align 8
  %560 = load i32, i32* %541, align 4
  %561 = sext i32 %560 to i64
  %562 = shl nsw i64 %561, 10
  store i64 %562, i64* %RDX.i151, align 8
  %563 = lshr i64 %561, 53
  %564 = and i64 %563, 1
  %565 = add i64 %562, %558
  store i64 %565, i64* %RCX.i221, align 8
  %566 = icmp ult i64 %565, %558
  %567 = icmp ult i64 %565, %562
  %568 = or i1 %566, %567
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %53, align 1
  %570 = trunc i64 %565 to i32
  %571 = and i32 %570, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571)
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %54, align 1
  %576 = xor i64 %558, %565
  %577 = lshr i64 %576, 4
  %578 = trunc i64 %577 to i8
  %579 = and i8 %578, 1
  store i8 %579, i8* %55, align 1
  %580 = icmp eq i64 %565, 0
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %56, align 1
  %582 = lshr i64 %565, 63
  %583 = trunc i64 %582 to i8
  store i8 %583, i8* %57, align 1
  %584 = lshr i64 %558, 63
  %585 = xor i64 %582, %584
  %586 = xor i64 %582, %564
  %587 = add nuw nsw i64 %585, %586
  %588 = icmp eq i64 %587, 2
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %58, align 1
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -48
  %592 = add i64 %538, 48
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = sext i32 %594 to i64
  store i64 %595, i64* %RDX.i151, align 8
  %596 = shl nsw i64 %595, 3
  %597 = add i64 %596, %565
  %598 = add i64 %538, 53
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to double*
  store double %554, double* %599, align 8
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -48
  %602 = load i64, i64* %3, align 8
  %603 = add i64 %602, 3
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %601 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = add i32 %605, 1
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RAX.i212, align 8
  %608 = icmp eq i32 %605, -1
  %609 = icmp eq i32 %606, 0
  %610 = or i1 %608, %609
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %53, align 1
  %612 = and i32 %606, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %54, align 1
  %617 = xor i32 %605, %606
  %618 = lshr i32 %617, 4
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  store i8 %620, i8* %55, align 1
  %621 = zext i1 %609 to i8
  store i8 %621, i8* %56, align 1
  %622 = lshr i32 %606, 31
  %623 = trunc i32 %622 to i8
  store i8 %623, i8* %57, align 1
  %624 = lshr i32 %605, 31
  %625 = xor i32 %622, %624
  %626 = add nuw nsw i32 %625, %622
  %627 = icmp eq i32 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %58, align 1
  %629 = add i64 %602, 9
  store i64 %629, i64* %3, align 8
  store i32 %606, i32* %604, align 4
  %630 = load i64, i64* %3, align 8
  %631 = add i64 %630, -74
  store i64 %631, i64* %3, align 8
  br label %block_.L_400b6e

block_.L_400bbd:                                  ; preds = %block_.L_400b6e
  %632 = add i64 %538, 8
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %539 to i32*
  %634 = load i32, i32* %633, align 4
  %635 = add i32 %634, 1
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RAX.i212, align 8
  %637 = icmp eq i32 %634, -1
  %638 = icmp eq i32 %635, 0
  %639 = or i1 %637, %638
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %53, align 1
  %641 = and i32 %635, 255
  %642 = tail call i32 @llvm.ctpop.i32(i32 %641)
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  %645 = xor i8 %644, 1
  store i8 %645, i8* %54, align 1
  %646 = xor i32 %634, %635
  %647 = lshr i32 %646, 4
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  store i8 %649, i8* %55, align 1
  %650 = zext i1 %638 to i8
  store i8 %650, i8* %56, align 1
  %651 = lshr i32 %635, 31
  %652 = trunc i32 %651 to i8
  store i8 %652, i8* %57, align 1
  %653 = lshr i32 %634, 31
  %654 = xor i32 %651, %653
  %655 = add nuw nsw i32 %654, %651
  %656 = icmp eq i32 %655, 2
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %58, align 1
  %658 = add i64 %538, 14
  store i64 %658, i64* %3, align 8
  store i32 %635, i32* %633, align 4
  %659 = load i64, i64* %3, align 8
  %660 = add i64 %659, -112
  store i64 %660, i64* %3, align 8
  br label %block_.L_400b5b

block_.L_400bd0:                                  ; preds = %block_.L_400b5b
  %661 = add i64 %497, 1
  store i64 %661, i64* %3, align 8
  %662 = load i64, i64* %6, align 8
  %663 = add i64 %662, 8
  %664 = inttoptr i64 %662 to i64*
  %665 = load i64, i64* %664, align 8
  store i64 %665, i64* %RBP.i, align 8
  store i64 %663, i64* %6, align 8
  %666 = add i64 %497, 2
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %663 to i64*
  %668 = load i64, i64* %667, align 8
  store i64 %668, i64* %3, align 8
  %669 = add i64 %662, 16
  store i64 %669, i64* %6, align 8
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

define %struct.Memory* @routine_jge_.L_400b54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400b41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400b2e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_shlq__0x11___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 17
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 47
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
  %17 = lshr i64 %3, 46
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

define %struct.Memory* @routine_shlq__0xa___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 10
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 54
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
  %17 = lshr i64 %3, 53
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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

define %struct.Memory* @routine_jmpq_.L_400aa6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400a93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400a80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400bd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400bbd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400b6e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bc2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
