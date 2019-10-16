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
define %struct.Memory* @kernel_syr2k(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 5
  store i64 %27, i64* %3, align 8
  %28 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %23, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %29 = load i64, i64* %28, align 1
  %30 = inttoptr i64 %25 to i64*
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -24
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 5
  store i64 %34, i64* %3, align 8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %36 = load i64, i64* %35, align 1
  %37 = inttoptr i64 %32 to i64*
  store i64 %36, i64* %37, align 8
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %38 = load i64, i64* %RBP.i, align 8
  %39 = add i64 %38, -32
  %40 = load i64, i64* %RDX.i, align 8
  %41 = load i64, i64* %3, align 8
  %42 = add i64 %41, 4
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43, align 8
  %RCX.i242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -40
  %46 = load i64, i64* %RCX.i242, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -48
  %52 = load i64, i64* %R8.i, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -52
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 7
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i32*
  store i32 0, i32* %60, align 4
  %RAX.i235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %67 = bitcast [32 x %union.VectorReg]* %23 to double*
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %69 = bitcast i64* %68 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400c47

block_.L_400c47:                                  ; preds = %block_.L_400c96, %entry
  %70 = phi i64 [ %263, %block_.L_400c96 ], [ %.pre, %entry ]
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -52
  %73 = add i64 %70, 3
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RAX.i235, align 8
  %77 = add i64 %71, -4
  %78 = add i64 %70, 6
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = sub i32 %75, %80
  %82 = icmp ult i32 %75, %80
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %61, align 1
  %84 = and i32 %81, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84)
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %62, align 1
  %89 = xor i32 %80, %75
  %90 = xor i32 %89, %81
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %63, align 1
  %94 = icmp eq i32 %81, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %64, align 1
  %96 = lshr i32 %81, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %65, align 1
  %98 = lshr i32 %75, 31
  %99 = lshr i32 %80, 31
  %100 = xor i32 %99, %98
  %101 = xor i32 %96, %98
  %102 = add nuw nsw i32 %101, %100
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %66, align 1
  %105 = icmp ne i8 %97, 0
  %106 = xor i1 %105, %103
  %.v33 = select i1 %106, i64 12, i64 98
  %107 = add i64 %70, %.v33
  store i64 %107, i64* %3, align 8
  br i1 %106, label %block_400c53, label %block_.L_400ca9

block_400c53:                                     ; preds = %block_.L_400c47
  %108 = add i64 %71, -56
  %109 = add i64 %107, 7
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i32*
  store i32 0, i32* %110, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_400c5a

block_.L_400c5a:                                  ; preds = %block_400c66, %block_400c53
  %111 = phi i64 [ %233, %block_400c66 ], [ %.pre30, %block_400c53 ]
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -56
  %114 = add i64 %111, 3
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RAX.i235, align 8
  %118 = add i64 %112, -4
  %119 = add i64 %111, 6
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = sub i32 %116, %121
  %123 = icmp ult i32 %116, %121
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %61, align 1
  %125 = and i32 %122, 255
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125)
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %62, align 1
  %130 = xor i32 %121, %116
  %131 = xor i32 %130, %122
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %63, align 1
  %135 = icmp eq i32 %122, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %64, align 1
  %137 = lshr i32 %122, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %65, align 1
  %139 = lshr i32 %116, 31
  %140 = lshr i32 %121, 31
  %141 = xor i32 %140, %139
  %142 = xor i32 %137, %139
  %143 = add nuw nsw i32 %142, %141
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %66, align 1
  %146 = icmp ne i8 %138, 0
  %147 = xor i1 %146, %144
  %.v32 = select i1 %147, i64 12, i64 60
  %148 = add i64 %111, %.v32
  store i64 %148, i64* %3, align 8
  br i1 %147, label %block_400c66, label %block_.L_400c96

block_400c66:                                     ; preds = %block_.L_400c5a
  %149 = add i64 %112, -24
  %150 = add i64 %148, 5
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %28, align 1
  store double 0.000000e+00, double* %69, align 1
  %153 = add i64 %112, -32
  %154 = add i64 %148, 9
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %153 to i64*
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %RAX.i235, align 8
  %157 = add i64 %112, -52
  %158 = add i64 %148, 13
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = shl nsw i64 %161, 13
  store i64 %162, i64* %RCX.i242, align 8
  %163 = add i64 %162, %156
  store i64 %163, i64* %RAX.i235, align 8
  %164 = icmp ult i64 %163, %156
  %165 = icmp ult i64 %163, %162
  %166 = or i1 %164, %165
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %61, align 1
  %168 = trunc i64 %163 to i32
  %169 = and i32 %168, 255
  %170 = tail call i32 @llvm.ctpop.i32(i32 %169)
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %62, align 1
  %174 = xor i64 %156, %163
  %175 = lshr i64 %174, 4
  %176 = trunc i64 %175 to i8
  %177 = and i8 %176, 1
  store i8 %177, i8* %63, align 1
  %178 = icmp eq i64 %163, 0
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %64, align 1
  %180 = lshr i64 %163, 63
  %181 = trunc i64 %180 to i8
  store i8 %181, i8* %65, align 1
  %182 = lshr i64 %156, 63
  %183 = lshr i64 %161, 50
  %184 = and i64 %183, 1
  %185 = xor i64 %180, %182
  %186 = xor i64 %180, %184
  %187 = add nuw nsw i64 %185, %186
  %188 = icmp eq i64 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %66, align 1
  %190 = add i64 %148, 24
  store i64 %190, i64* %3, align 8
  %191 = load i32, i32* %115, align 4
  %192 = sext i32 %191 to i64
  store i64 %192, i64* %RCX.i242, align 8
  %193 = shl nsw i64 %192, 3
  %194 = add i64 %193, %163
  %195 = add i64 %148, 29
  store i64 %195, i64* %3, align 8
  %196 = bitcast i64 %152 to double
  %197 = inttoptr i64 %194 to double*
  %198 = load double, double* %197, align 8
  %199 = fmul double %196, %198
  store double %199, double* %67, align 1
  store i64 0, i64* %68, align 1
  %200 = add i64 %148, 34
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %194 to double*
  store double %199, double* %201, align 8
  %202 = load i64, i64* %RBP.i, align 8
  %203 = add i64 %202, -56
  %204 = load i64, i64* %3, align 8
  %205 = add i64 %204, 3
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %203 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = add i32 %207, 1
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RAX.i235, align 8
  %210 = icmp eq i32 %207, -1
  %211 = icmp eq i32 %208, 0
  %212 = or i1 %210, %211
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %61, align 1
  %214 = and i32 %208, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214)
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %62, align 1
  %219 = xor i32 %208, %207
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %63, align 1
  %223 = zext i1 %211 to i8
  store i8 %223, i8* %64, align 1
  %224 = lshr i32 %208, 31
  %225 = trunc i32 %224 to i8
  store i8 %225, i8* %65, align 1
  %226 = lshr i32 %207, 31
  %227 = xor i32 %224, %226
  %228 = add nuw nsw i32 %227, %224
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %66, align 1
  %231 = add i64 %204, 9
  store i64 %231, i64* %3, align 8
  store i32 %208, i32* %206, align 4
  %232 = load i64, i64* %3, align 8
  %233 = add i64 %232, -55
  store i64 %233, i64* %3, align 8
  br label %block_.L_400c5a

block_.L_400c96:                                  ; preds = %block_.L_400c5a
  %234 = add i64 %112, -52
  %235 = add i64 %148, 8
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i32*
  %237 = load i32, i32* %236, align 4
  %238 = add i32 %237, 1
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RAX.i235, align 8
  %240 = icmp eq i32 %237, -1
  %241 = icmp eq i32 %238, 0
  %242 = or i1 %240, %241
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %61, align 1
  %244 = and i32 %238, 255
  %245 = tail call i32 @llvm.ctpop.i32(i32 %244)
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  store i8 %248, i8* %62, align 1
  %249 = xor i32 %238, %237
  %250 = lshr i32 %249, 4
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  store i8 %252, i8* %63, align 1
  %253 = zext i1 %241 to i8
  store i8 %253, i8* %64, align 1
  %254 = lshr i32 %238, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %65, align 1
  %256 = lshr i32 %237, 31
  %257 = xor i32 %254, %256
  %258 = add nuw nsw i32 %257, %254
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %66, align 1
  %261 = add i64 %148, 14
  store i64 %261, i64* %3, align 8
  store i32 %238, i32* %236, align 4
  %262 = load i64, i64* %3, align 8
  %263 = add i64 %262, -93
  store i64 %263, i64* %3, align 8
  br label %block_.L_400c47

block_.L_400ca9:                                  ; preds = %block_.L_400c47
  %264 = add i64 %107, 7
  store i64 %264, i64* %3, align 8
  store i32 0, i32* %74, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_400cb0

block_.L_400cb0:                                  ; preds = %block_.L_400da7, %block_.L_400ca9
  %265 = phi i64 [ %780, %block_.L_400da7 ], [ %.pre27, %block_.L_400ca9 ]
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -52
  %268 = add i64 %265, 3
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX.i235, align 8
  %272 = add i64 %266, -4
  %273 = add i64 %265, 6
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i32*
  %275 = load i32, i32* %274, align 4
  %276 = sub i32 %270, %275
  %277 = icmp ult i32 %270, %275
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %61, align 1
  %279 = and i32 %276, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279)
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %62, align 1
  %284 = xor i32 %275, %270
  %285 = xor i32 %284, %276
  %286 = lshr i32 %285, 4
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  store i8 %288, i8* %63, align 1
  %289 = icmp eq i32 %276, 0
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %64, align 1
  %291 = lshr i32 %276, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %65, align 1
  %293 = lshr i32 %270, 31
  %294 = lshr i32 %275, 31
  %295 = xor i32 %294, %293
  %296 = xor i32 %291, %293
  %297 = add nuw nsw i32 %296, %295
  %298 = icmp eq i32 %297, 2
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %66, align 1
  %300 = icmp ne i8 %292, 0
  %301 = xor i1 %300, %298
  %.v34 = select i1 %301, i64 12, i64 266
  %302 = add i64 %265, %.v34
  store i64 %302, i64* %3, align 8
  br i1 %301, label %block_400cbc, label %block_.L_400dba

block_400cbc:                                     ; preds = %block_.L_400cb0
  %303 = add i64 %266, -56
  %304 = add i64 %302, 7
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i32*
  store i32 0, i32* %305, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_400cc3

block_.L_400cc3:                                  ; preds = %block_.L_400d94, %block_400cbc
  %306 = phi i64 [ %750, %block_.L_400d94 ], [ %.pre28, %block_400cbc ]
  %307 = load i64, i64* %RBP.i, align 8
  %308 = add i64 %307, -56
  %309 = add i64 %306, 3
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RAX.i235, align 8
  %313 = add i64 %307, -4
  %314 = add i64 %306, 6
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = sub i32 %311, %316
  %318 = icmp ult i32 %311, %316
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %61, align 1
  %320 = and i32 %317, 255
  %321 = tail call i32 @llvm.ctpop.i32(i32 %320)
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  store i8 %324, i8* %62, align 1
  %325 = xor i32 %316, %311
  %326 = xor i32 %325, %317
  %327 = lshr i32 %326, 4
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  store i8 %329, i8* %63, align 1
  %330 = icmp eq i32 %317, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %64, align 1
  %332 = lshr i32 %317, 31
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %65, align 1
  %334 = lshr i32 %311, 31
  %335 = lshr i32 %316, 31
  %336 = xor i32 %335, %334
  %337 = xor i32 %332, %334
  %338 = add nuw nsw i32 %337, %336
  %339 = icmp eq i32 %338, 2
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %66, align 1
  %341 = icmp ne i8 %333, 0
  %342 = xor i1 %341, %339
  %.v = select i1 %342, i64 12, i64 228
  %343 = add i64 %306, %.v
  store i64 %343, i64* %3, align 8
  br i1 %342, label %block_400ccf, label %block_.L_400da7

block_400ccf:                                     ; preds = %block_.L_400cc3
  %344 = add i64 %307, -60
  %345 = add i64 %343, 7
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i32*
  store i32 0, i32* %346, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_400cd6

block_.L_400cd6:                                  ; preds = %block_400ce2, %block_400ccf
  %347 = phi i64 [ %720, %block_400ce2 ], [ %.pre29, %block_400ccf ]
  %348 = load i64, i64* %RBP.i, align 8
  %349 = add i64 %348, -60
  %350 = add i64 %347, 3
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %RAX.i235, align 8
  %354 = add i64 %348, -8
  %355 = add i64 %347, 6
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = sub i32 %352, %357
  %359 = icmp ult i32 %352, %357
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %61, align 1
  %361 = and i32 %358, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361)
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %62, align 1
  %366 = xor i32 %357, %352
  %367 = xor i32 %366, %358
  %368 = lshr i32 %367, 4
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %63, align 1
  %371 = icmp eq i32 %358, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %64, align 1
  %373 = lshr i32 %358, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %65, align 1
  %375 = lshr i32 %352, 31
  %376 = lshr i32 %357, 31
  %377 = xor i32 %376, %375
  %378 = xor i32 %373, %375
  %379 = add nuw nsw i32 %378, %377
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %66, align 1
  %382 = icmp ne i8 %374, 0
  %383 = xor i1 %382, %380
  %.v31 = select i1 %383, i64 12, i64 190
  %384 = add i64 %347, %.v31
  store i64 %384, i64* %3, align 8
  br i1 %383, label %block_400ce2, label %block_.L_400d94

block_400ce2:                                     ; preds = %block_.L_400cd6
  %385 = add i64 %348, -16
  %386 = add i64 %384, 5
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %28, align 1
  store double 0.000000e+00, double* %69, align 1
  %389 = add i64 %348, -40
  %390 = add i64 %384, 9
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i64*
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %RAX.i235, align 8
  %393 = add i64 %348, -52
  %394 = add i64 %384, 13
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = shl nsw i64 %397, 13
  store i64 %398, i64* %RCX.i242, align 8
  %399 = add i64 %398, %392
  store i64 %399, i64* %RAX.i235, align 8
  %400 = icmp ult i64 %399, %392
  %401 = icmp ult i64 %399, %398
  %402 = or i1 %400, %401
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %61, align 1
  %404 = trunc i64 %399 to i32
  %405 = and i32 %404, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405)
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %62, align 1
  %410 = xor i64 %392, %399
  %411 = lshr i64 %410, 4
  %412 = trunc i64 %411 to i8
  %413 = and i8 %412, 1
  store i8 %413, i8* %63, align 1
  %414 = icmp eq i64 %399, 0
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %64, align 1
  %416 = lshr i64 %399, 63
  %417 = trunc i64 %416 to i8
  store i8 %417, i8* %65, align 1
  %418 = lshr i64 %392, 63
  %419 = lshr i64 %397, 50
  %420 = and i64 %419, 1
  %421 = xor i64 %416, %418
  %422 = xor i64 %416, %420
  %423 = add nuw nsw i64 %421, %422
  %424 = icmp eq i64 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %66, align 1
  %426 = add i64 %384, 24
  store i64 %426, i64* %3, align 8
  %427 = load i32, i32* %351, align 4
  %428 = sext i32 %427 to i64
  store i64 %428, i64* %RCX.i242, align 8
  %429 = shl nsw i64 %428, 3
  %430 = add i64 %429, %399
  %431 = add i64 %384, 29
  store i64 %431, i64* %3, align 8
  %432 = bitcast i64 %388 to double
  %433 = inttoptr i64 %430 to double*
  %434 = load double, double* %433, align 8
  %435 = fmul double %432, %434
  store double %435, double* %67, align 1
  store i64 0, i64* %68, align 1
  %436 = add i64 %348, -48
  %437 = add i64 %384, 33
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i64*
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %RAX.i235, align 8
  %440 = add i64 %348, -56
  %441 = add i64 %384, 37
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  %443 = load i32, i32* %442, align 4
  %444 = sext i32 %443 to i64
  %445 = shl nsw i64 %444, 13
  store i64 %445, i64* %RCX.i242, align 8
  %446 = add i64 %445, %439
  store i64 %446, i64* %RAX.i235, align 8
  %447 = icmp ult i64 %446, %439
  %448 = icmp ult i64 %446, %445
  %449 = or i1 %447, %448
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %61, align 1
  %451 = trunc i64 %446 to i32
  %452 = and i32 %451, 255
  %453 = tail call i32 @llvm.ctpop.i32(i32 %452)
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  %456 = xor i8 %455, 1
  store i8 %456, i8* %62, align 1
  %457 = xor i64 %439, %446
  %458 = lshr i64 %457, 4
  %459 = trunc i64 %458 to i8
  %460 = and i8 %459, 1
  store i8 %460, i8* %63, align 1
  %461 = icmp eq i64 %446, 0
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %64, align 1
  %463 = lshr i64 %446, 63
  %464 = trunc i64 %463 to i8
  store i8 %464, i8* %65, align 1
  %465 = lshr i64 %439, 63
  %466 = lshr i64 %444, 50
  %467 = and i64 %466, 1
  %468 = xor i64 %463, %465
  %469 = xor i64 %463, %467
  %470 = add nuw nsw i64 %468, %469
  %471 = icmp eq i64 %470, 2
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %66, align 1
  %473 = load i64, i64* %RBP.i, align 8
  %474 = add i64 %473, -60
  %475 = add i64 %384, 48
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = sext i32 %477 to i64
  store i64 %478, i64* %RCX.i242, align 8
  %479 = shl nsw i64 %478, 3
  %480 = add i64 %479, %446
  %481 = add i64 %384, 53
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to double*
  %483 = load double, double* %482, align 8
  %484 = fmul double %435, %483
  store double %484, double* %67, align 1
  store i64 0, i64* %68, align 1
  %485 = add i64 %473, -32
  %486 = add i64 %384, 57
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i64*
  %488 = load i64, i64* %487, align 8
  store i64 %488, i64* %RAX.i235, align 8
  %489 = add i64 %473, -52
  %490 = add i64 %384, 61
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i32*
  %492 = load i32, i32* %491, align 4
  %493 = sext i32 %492 to i64
  %494 = shl nsw i64 %493, 13
  store i64 %494, i64* %RCX.i242, align 8
  %495 = add i64 %494, %488
  store i64 %495, i64* %RAX.i235, align 8
  %496 = icmp ult i64 %495, %488
  %497 = icmp ult i64 %495, %494
  %498 = or i1 %496, %497
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %61, align 1
  %500 = trunc i64 %495 to i32
  %501 = and i32 %500, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501)
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %62, align 1
  %506 = xor i64 %488, %495
  %507 = lshr i64 %506, 4
  %508 = trunc i64 %507 to i8
  %509 = and i8 %508, 1
  store i8 %509, i8* %63, align 1
  %510 = icmp eq i64 %495, 0
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %64, align 1
  %512 = lshr i64 %495, 63
  %513 = trunc i64 %512 to i8
  store i8 %513, i8* %65, align 1
  %514 = lshr i64 %488, 63
  %515 = lshr i64 %493, 50
  %516 = and i64 %515, 1
  %517 = xor i64 %512, %514
  %518 = xor i64 %512, %516
  %519 = add nuw nsw i64 %517, %518
  %520 = icmp eq i64 %519, 2
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %66, align 1
  %522 = add i64 %473, -56
  %523 = add i64 %384, 72
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = sext i32 %525 to i64
  store i64 %526, i64* %RCX.i242, align 8
  %527 = shl nsw i64 %526, 3
  %528 = add i64 %527, %495
  %529 = add i64 %384, 77
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to double*
  %531 = load double, double* %530, align 8
  %532 = fadd double %484, %531
  store double %532, double* %67, align 1
  store i64 0, i64* %68, align 1
  %533 = add i64 %384, 82
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %528 to double*
  store double %532, double* %534, align 8
  %535 = load i64, i64* %RBP.i, align 8
  %536 = add i64 %535, -16
  %537 = load i64, i64* %3, align 8
  %538 = add i64 %537, 5
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %536 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %28, align 1
  store double 0.000000e+00, double* %69, align 1
  %541 = add i64 %535, -48
  %542 = add i64 %537, 9
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %RAX.i235, align 8
  %545 = add i64 %535, -52
  %546 = add i64 %537, 13
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  %550 = shl nsw i64 %549, 13
  store i64 %550, i64* %RCX.i242, align 8
  %551 = add i64 %550, %544
  store i64 %551, i64* %RAX.i235, align 8
  %552 = icmp ult i64 %551, %544
  %553 = icmp ult i64 %551, %550
  %554 = or i1 %552, %553
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %61, align 1
  %556 = trunc i64 %551 to i32
  %557 = and i32 %556, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557)
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %62, align 1
  %562 = xor i64 %544, %551
  %563 = lshr i64 %562, 4
  %564 = trunc i64 %563 to i8
  %565 = and i8 %564, 1
  store i8 %565, i8* %63, align 1
  %566 = icmp eq i64 %551, 0
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %64, align 1
  %568 = lshr i64 %551, 63
  %569 = trunc i64 %568 to i8
  store i8 %569, i8* %65, align 1
  %570 = lshr i64 %544, 63
  %571 = lshr i64 %549, 50
  %572 = and i64 %571, 1
  %573 = xor i64 %568, %570
  %574 = xor i64 %568, %572
  %575 = add nuw nsw i64 %573, %574
  %576 = icmp eq i64 %575, 2
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %66, align 1
  %578 = add i64 %535, -60
  %579 = add i64 %537, 24
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = sext i32 %581 to i64
  store i64 %582, i64* %RCX.i242, align 8
  %583 = shl nsw i64 %582, 3
  %584 = add i64 %583, %551
  %585 = add i64 %537, 29
  store i64 %585, i64* %3, align 8
  %586 = bitcast i64 %540 to double
  %587 = inttoptr i64 %584 to double*
  %588 = load double, double* %587, align 8
  %589 = fmul double %586, %588
  store double %589, double* %67, align 1
  store i64 0, i64* %68, align 1
  %590 = add i64 %535, -40
  %591 = add i64 %537, 33
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i64*
  %593 = load i64, i64* %592, align 8
  store i64 %593, i64* %RAX.i235, align 8
  %594 = add i64 %535, -56
  %595 = add i64 %537, 37
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = sext i32 %597 to i64
  %599 = shl nsw i64 %598, 13
  store i64 %599, i64* %RCX.i242, align 8
  %600 = add i64 %599, %593
  store i64 %600, i64* %RAX.i235, align 8
  %601 = icmp ult i64 %600, %593
  %602 = icmp ult i64 %600, %599
  %603 = or i1 %601, %602
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %61, align 1
  %605 = trunc i64 %600 to i32
  %606 = and i32 %605, 255
  %607 = tail call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  store i8 %610, i8* %62, align 1
  %611 = xor i64 %593, %600
  %612 = lshr i64 %611, 4
  %613 = trunc i64 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %63, align 1
  %615 = icmp eq i64 %600, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %64, align 1
  %617 = lshr i64 %600, 63
  %618 = trunc i64 %617 to i8
  store i8 %618, i8* %65, align 1
  %619 = lshr i64 %593, 63
  %620 = lshr i64 %598, 50
  %621 = and i64 %620, 1
  %622 = xor i64 %617, %619
  %623 = xor i64 %617, %621
  %624 = add nuw nsw i64 %622, %623
  %625 = icmp eq i64 %624, 2
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %66, align 1
  %627 = load i64, i64* %RBP.i, align 8
  %628 = add i64 %627, -60
  %629 = add i64 %537, 48
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = sext i32 %631 to i64
  store i64 %632, i64* %RCX.i242, align 8
  %633 = shl nsw i64 %632, 3
  %634 = add i64 %633, %600
  %635 = add i64 %537, 53
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to double*
  %637 = load double, double* %636, align 8
  %638 = fmul double %589, %637
  store double %638, double* %67, align 1
  store i64 0, i64* %68, align 1
  %639 = add i64 %627, -32
  %640 = add i64 %537, 57
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i64*
  %642 = load i64, i64* %641, align 8
  store i64 %642, i64* %RAX.i235, align 8
  %643 = add i64 %627, -52
  %644 = add i64 %537, 61
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = sext i32 %646 to i64
  %648 = shl nsw i64 %647, 13
  store i64 %648, i64* %RCX.i242, align 8
  %649 = add i64 %648, %642
  store i64 %649, i64* %RAX.i235, align 8
  %650 = icmp ult i64 %649, %642
  %651 = icmp ult i64 %649, %648
  %652 = or i1 %650, %651
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %61, align 1
  %654 = trunc i64 %649 to i32
  %655 = and i32 %654, 255
  %656 = tail call i32 @llvm.ctpop.i32(i32 %655)
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  store i8 %659, i8* %62, align 1
  %660 = xor i64 %642, %649
  %661 = lshr i64 %660, 4
  %662 = trunc i64 %661 to i8
  %663 = and i8 %662, 1
  store i8 %663, i8* %63, align 1
  %664 = icmp eq i64 %649, 0
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %64, align 1
  %666 = lshr i64 %649, 63
  %667 = trunc i64 %666 to i8
  store i8 %667, i8* %65, align 1
  %668 = lshr i64 %642, 63
  %669 = lshr i64 %647, 50
  %670 = and i64 %669, 1
  %671 = xor i64 %666, %668
  %672 = xor i64 %666, %670
  %673 = add nuw nsw i64 %671, %672
  %674 = icmp eq i64 %673, 2
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %66, align 1
  %676 = add i64 %627, -56
  %677 = add i64 %537, 72
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = sext i32 %679 to i64
  store i64 %680, i64* %RCX.i242, align 8
  %681 = shl nsw i64 %680, 3
  %682 = add i64 %681, %649
  %683 = add i64 %537, 77
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %682 to double*
  %685 = load double, double* %684, align 8
  %686 = fadd double %638, %685
  store double %686, double* %67, align 1
  store i64 0, i64* %68, align 1
  %687 = add i64 %537, 82
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %682 to double*
  store double %686, double* %688, align 8
  %689 = load i64, i64* %RBP.i, align 8
  %690 = add i64 %689, -60
  %691 = load i64, i64* %3, align 8
  %692 = add i64 %691, 3
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %690 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = add i32 %694, 1
  %696 = zext i32 %695 to i64
  store i64 %696, i64* %RAX.i235, align 8
  %697 = icmp eq i32 %694, -1
  %698 = icmp eq i32 %695, 0
  %699 = or i1 %697, %698
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %61, align 1
  %701 = and i32 %695, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701)
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %62, align 1
  %706 = xor i32 %695, %694
  %707 = lshr i32 %706, 4
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  store i8 %709, i8* %63, align 1
  %710 = zext i1 %698 to i8
  store i8 %710, i8* %64, align 1
  %711 = lshr i32 %695, 31
  %712 = trunc i32 %711 to i8
  store i8 %712, i8* %65, align 1
  %713 = lshr i32 %694, 31
  %714 = xor i32 %711, %713
  %715 = add nuw nsw i32 %714, %711
  %716 = icmp eq i32 %715, 2
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %66, align 1
  %718 = add i64 %691, 9
  store i64 %718, i64* %3, align 8
  store i32 %695, i32* %693, align 4
  %719 = load i64, i64* %3, align 8
  %720 = add i64 %719, -185
  store i64 %720, i64* %3, align 8
  br label %block_.L_400cd6

block_.L_400d94:                                  ; preds = %block_.L_400cd6
  %721 = add i64 %348, -56
  %722 = add i64 %384, 8
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = add i32 %724, 1
  %726 = zext i32 %725 to i64
  store i64 %726, i64* %RAX.i235, align 8
  %727 = icmp eq i32 %724, -1
  %728 = icmp eq i32 %725, 0
  %729 = or i1 %727, %728
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %61, align 1
  %731 = and i32 %725, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %62, align 1
  %736 = xor i32 %725, %724
  %737 = lshr i32 %736, 4
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  store i8 %739, i8* %63, align 1
  %740 = zext i1 %728 to i8
  store i8 %740, i8* %64, align 1
  %741 = lshr i32 %725, 31
  %742 = trunc i32 %741 to i8
  store i8 %742, i8* %65, align 1
  %743 = lshr i32 %724, 31
  %744 = xor i32 %741, %743
  %745 = add nuw nsw i32 %744, %741
  %746 = icmp eq i32 %745, 2
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %66, align 1
  %748 = add i64 %384, 14
  store i64 %748, i64* %3, align 8
  store i32 %725, i32* %723, align 4
  %749 = load i64, i64* %3, align 8
  %750 = add i64 %749, -223
  store i64 %750, i64* %3, align 8
  br label %block_.L_400cc3

block_.L_400da7:                                  ; preds = %block_.L_400cc3
  %751 = add i64 %307, -52
  %752 = add i64 %343, 8
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i32*
  %754 = load i32, i32* %753, align 4
  %755 = add i32 %754, 1
  %756 = zext i32 %755 to i64
  store i64 %756, i64* %RAX.i235, align 8
  %757 = icmp eq i32 %754, -1
  %758 = icmp eq i32 %755, 0
  %759 = or i1 %757, %758
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %61, align 1
  %761 = and i32 %755, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %62, align 1
  %766 = xor i32 %755, %754
  %767 = lshr i32 %766, 4
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  store i8 %769, i8* %63, align 1
  %770 = zext i1 %758 to i8
  store i8 %770, i8* %64, align 1
  %771 = lshr i32 %755, 31
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* %65, align 1
  %773 = lshr i32 %754, 31
  %774 = xor i32 %771, %773
  %775 = add nuw nsw i32 %774, %771
  %776 = icmp eq i32 %775, 2
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %66, align 1
  %778 = add i64 %343, 14
  store i64 %778, i64* %3, align 8
  store i32 %755, i32* %753, align 4
  %779 = load i64, i64* %3, align 8
  %780 = add i64 %779, -261
  store i64 %780, i64* %3, align 8
  br label %block_.L_400cb0

block_.L_400dba:                                  ; preds = %block_.L_400cb0
  %781 = add i64 %302, 1
  store i64 %781, i64* %3, align 8
  %782 = load i64, i64* %6, align 8
  %783 = add i64 %782, 8
  %784 = inttoptr i64 %782 to i64*
  %785 = load i64, i64* %784, align 8
  store i64 %785, i64* %RBP.i, align 8
  store i64 %783, i64* %6, align 8
  %786 = add i64 %302, 2
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %783 to i64*
  %788 = load i64, i64* %787, align 8
  store i64 %788, i64* %3, align 8
  %789 = add i64 %782, 16
  store i64 %789, i64* %6, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400ca9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400c96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 13
  store i64 %6, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400dba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_400da7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cd6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400dac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
