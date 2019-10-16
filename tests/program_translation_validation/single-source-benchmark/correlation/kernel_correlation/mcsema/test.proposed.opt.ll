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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4006d0.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_correlation(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -88
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 80
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
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %41 = add i64 %10, 2167
  %42 = add i64 %10, 15
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %41 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = bitcast %union.VectorReg* %40 to double*
  %46 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %40, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %44, i64* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %48 = bitcast i64* %47 to double*
  store double 0.000000e+00, double* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %49 to i32*
  %50 = add i64 %7, -12
  %51 = load i32, i32* %EDI.i, align 4
  %52 = add i64 %10, 18
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %54 to i32*
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -8
  %57 = load i32, i32* %ESI.i, align 4
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 3
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %56 to i32*
  store i32 %57, i32* %60, align 4
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -16
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 5
  store i64 %65, i64* %3, align 8
  %66 = bitcast %union.VectorReg* %61 to double*
  %67 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %61, i64 0, i32 0, i32 0, i32 0, i64 0
  %68 = load i64, i64* %67, align 1
  %69 = inttoptr i64 %63 to i64*
  store i64 %68, i64* %69, align 8
  %RDX.i664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -24
  %72 = load i64, i64* %RDX.i664, align 8
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %75, align 8
  %RCX.i661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -32
  %78 = load i64, i64* %RCX.i661, align 8
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -40
  %84 = load i64, i64* %R8.i, align 8
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 4
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %83 to i64*
  store i64 %84, i64* %87, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -48
  %90 = load i64, i64* %R9.i, align 8
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 4
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %89 to i64*
  store i64 %90, i64* %93, align 8
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -72
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 5
  store i64 %97, i64* %3, align 8
  %98 = load i64, i64* %46, align 1
  %99 = inttoptr i64 %95 to i64*
  store i64 %98, i64* %99, align 8
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -56
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 7
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i32*
  store i32 0, i32* %104, align 4
  %RAX.i649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %106 = bitcast i64* %105 to double*
  %.pre = load i64, i64* %3, align 8
  %107 = bitcast %union.VectorReg* %61 to <4 x i32>*
  br label %block_.L_400c07

block_.L_400c07:                                  ; preds = %block_.L_400c71, %entry
  %108 = phi i64 [ %346, %block_.L_400c71 ], [ %.pre, %entry ]
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -56
  %111 = add i64 %108, 3
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %RAX.i649, align 8
  %115 = add i64 %109, -4
  %116 = add i64 %108, 6
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = sub i32 %113, %118
  %120 = icmp ult i32 %113, %118
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %14, align 1
  %122 = and i32 %119, 255
  %123 = tail call i32 @llvm.ctpop.i32(i32 %122)
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %21, align 1
  %127 = xor i32 %118, %113
  %128 = xor i32 %127, %119
  %129 = lshr i32 %128, 4
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  store i8 %131, i8* %27, align 1
  %132 = icmp eq i32 %119, 0
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %30, align 1
  %134 = lshr i32 %119, 31
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %33, align 1
  %136 = lshr i32 %113, 31
  %137 = lshr i32 %118, 31
  %138 = xor i32 %137, %136
  %139 = xor i32 %134, %136
  %140 = add nuw nsw i32 %139, %138
  %141 = icmp eq i32 %140, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %39, align 1
  %143 = icmp ne i8 %135, 0
  %144 = xor i1 %143, %141
  %.v49 = select i1 %144, i64 12, i64 147
  %145 = add i64 %108, %.v49
  store i64 %145, i64* %3, align 8
  br i1 %144, label %block_400c13, label %block_.L_400c9a

block_400c13:                                     ; preds = %block_.L_400c07
  store <4 x i32> zeroinitializer, <4 x i32>* %107, align 1
  %146 = add i64 %109, -40
  %147 = add i64 %145, 7
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %RAX.i649, align 8
  %150 = add i64 %145, 11
  store i64 %150, i64* %3, align 8
  %151 = load i32, i32* %112, align 4
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %RCX.i661, align 8
  %153 = shl nsw i64 %152, 3
  %154 = add i64 %153, %149
  %155 = add i64 %145, 16
  store i64 %155, i64* %3, align 8
  %156 = load i64, i64* %67, align 1
  %157 = inttoptr i64 %154 to i64*
  store i64 %156, i64* %157, align 8
  %158 = load i64, i64* %RBP.i, align 8
  %159 = add i64 %158, -52
  %160 = load i64, i64* %3, align 8
  %161 = add i64 %160, 7
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %159 to i32*
  store i32 0, i32* %162, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_400c2a

block_.L_400c2a:                                  ; preds = %block_400c36, %block_400c13
  %163 = phi i64 [ %292, %block_400c36 ], [ %.pre47, %block_400c13 ]
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -52
  %166 = add i64 %163, 3
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RAX.i649, align 8
  %170 = add i64 %164, -8
  %171 = add i64 %163, 6
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = sub i32 %168, %173
  %175 = icmp ult i32 %168, %173
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %14, align 1
  %177 = and i32 %174, 255
  %178 = tail call i32 @llvm.ctpop.i32(i32 %177)
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  store i8 %181, i8* %21, align 1
  %182 = xor i32 %173, %168
  %183 = xor i32 %182, %174
  %184 = lshr i32 %183, 4
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  store i8 %186, i8* %27, align 1
  %187 = icmp eq i32 %174, 0
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %30, align 1
  %189 = lshr i32 %174, 31
  %190 = trunc i32 %189 to i8
  store i8 %190, i8* %33, align 1
  %191 = lshr i32 %168, 31
  %192 = lshr i32 %173, 31
  %193 = xor i32 %192, %191
  %194 = xor i32 %189, %191
  %195 = add nuw nsw i32 %194, %193
  %196 = icmp eq i32 %195, 2
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %39, align 1
  %198 = icmp ne i8 %190, 0
  %199 = xor i1 %198, %196
  %.v55 = select i1 %199, i64 12, i64 71
  %200 = add i64 %163, %.v55
  store i64 %200, i64* %3, align 8
  br i1 %199, label %block_400c36, label %block_.L_400c71

block_400c36:                                     ; preds = %block_.L_400c2a
  %201 = add i64 %164, -24
  %202 = add i64 %200, 4
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %201 to i64*
  %204 = load i64, i64* %203, align 8
  store i64 %204, i64* %RAX.i649, align 8
  %205 = add i64 %200, 8
  store i64 %205, i64* %3, align 8
  %206 = load i32, i32* %167, align 4
  %207 = sext i32 %206 to i64
  %208 = mul nsw i64 %207, 8000
  store i64 %208, i64* %RCX.i661, align 8
  %209 = lshr i64 %208, 63
  %210 = add i64 %208, %204
  store i64 %210, i64* %RAX.i649, align 8
  %211 = icmp ult i64 %210, %204
  %212 = icmp ult i64 %210, %208
  %213 = or i1 %211, %212
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %14, align 1
  %215 = trunc i64 %210 to i32
  %216 = and i32 %215, 255
  %217 = tail call i32 @llvm.ctpop.i32(i32 %216)
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  store i8 %220, i8* %21, align 1
  %221 = xor i64 %204, %210
  %222 = lshr i64 %221, 4
  %223 = trunc i64 %222 to i8
  %224 = and i8 %223, 1
  store i8 %224, i8* %27, align 1
  %225 = icmp eq i64 %210, 0
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %30, align 1
  %227 = lshr i64 %210, 63
  %228 = trunc i64 %227 to i8
  store i8 %228, i8* %33, align 1
  %229 = lshr i64 %204, 63
  %230 = xor i64 %227, %229
  %231 = xor i64 %227, %209
  %232 = add nuw nsw i64 %230, %231
  %233 = icmp eq i64 %232, 2
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %39, align 1
  %235 = add i64 %164, -56
  %236 = add i64 %200, 22
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  store i64 %239, i64* %RCX.i661, align 8
  %240 = shl nsw i64 %239, 3
  %241 = add i64 %240, %210
  %242 = add i64 %200, 27
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %245 = add i64 %164, -40
  %246 = add i64 %200, 31
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %RAX.i649, align 8
  %249 = add i64 %200, 35
  store i64 %249, i64* %3, align 8
  %250 = load i32, i32* %237, align 4
  %251 = sext i32 %250 to i64
  store i64 %251, i64* %RCX.i661, align 8
  %252 = shl nsw i64 %251, 3
  %253 = add i64 %252, %248
  %254 = add i64 %200, 40
  store i64 %254, i64* %3, align 8
  %255 = bitcast i64 %244 to double
  %256 = inttoptr i64 %253 to double*
  %257 = load double, double* %256, align 8
  %258 = fadd double %255, %257
  store double %258, double* %66, align 1
  store i64 0, i64* %105, align 1
  %259 = add i64 %200, 45
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %253 to double*
  store double %258, double* %260, align 8
  %261 = load i64, i64* %RBP.i, align 8
  %262 = add i64 %261, -52
  %263 = load i64, i64* %3, align 8
  %264 = add i64 %263, 3
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %262 to i32*
  %266 = load i32, i32* %265, align 4
  %267 = add i32 %266, 1
  %268 = zext i32 %267 to i64
  store i64 %268, i64* %RAX.i649, align 8
  %269 = icmp eq i32 %266, -1
  %270 = icmp eq i32 %267, 0
  %271 = or i1 %269, %270
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %14, align 1
  %273 = and i32 %267, 255
  %274 = tail call i32 @llvm.ctpop.i32(i32 %273)
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  store i8 %277, i8* %21, align 1
  %278 = xor i32 %267, %266
  %279 = lshr i32 %278, 4
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  store i8 %281, i8* %27, align 1
  %282 = zext i1 %270 to i8
  store i8 %282, i8* %30, align 1
  %283 = lshr i32 %267, 31
  %284 = trunc i32 %283 to i8
  store i8 %284, i8* %33, align 1
  %285 = lshr i32 %266, 31
  %286 = xor i32 %283, %285
  %287 = add nuw nsw i32 %286, %283
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %39, align 1
  %290 = add i64 %263, 9
  store i64 %290, i64* %3, align 8
  store i32 %267, i32* %265, align 4
  %291 = load i64, i64* %3, align 8
  %292 = add i64 %291, -66
  store i64 %292, i64* %3, align 8
  br label %block_.L_400c2a

block_.L_400c71:                                  ; preds = %block_.L_400c2a
  %293 = add i64 %164, -16
  %294 = add i64 %200, 5
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i64*
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %297 = add i64 %164, -40
  %298 = add i64 %200, 9
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RAX.i649, align 8
  %301 = add i64 %164, -56
  %302 = add i64 %200, 13
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  store i64 %305, i64* %RCX.i661, align 8
  %306 = shl nsw i64 %305, 3
  %307 = add i64 %306, %300
  %308 = add i64 %200, 18
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to double*
  %310 = load double, double* %309, align 8
  %311 = bitcast i64 %296 to double
  %312 = fdiv double %310, %311
  store double %312, double* %45, align 1
  store i64 0, i64* %47, align 1
  %313 = add i64 %200, 27
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %307 to double*
  store double %312, double* %314, align 8
  %315 = load i64, i64* %RBP.i, align 8
  %316 = add i64 %315, -56
  %317 = load i64, i64* %3, align 8
  %318 = add i64 %317, 3
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %316 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = add i32 %320, 1
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RAX.i649, align 8
  %323 = icmp eq i32 %320, -1
  %324 = icmp eq i32 %321, 0
  %325 = or i1 %323, %324
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %14, align 1
  %327 = and i32 %321, 255
  %328 = tail call i32 @llvm.ctpop.i32(i32 %327)
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = xor i8 %330, 1
  store i8 %331, i8* %21, align 1
  %332 = xor i32 %321, %320
  %333 = lshr i32 %332, 4
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  store i8 %335, i8* %27, align 1
  %336 = zext i1 %324 to i8
  store i8 %336, i8* %30, align 1
  %337 = lshr i32 %321, 31
  %338 = trunc i32 %337 to i8
  store i8 %338, i8* %33, align 1
  %339 = lshr i32 %320, 31
  %340 = xor i32 %337, %339
  %341 = add nuw nsw i32 %340, %337
  %342 = icmp eq i32 %341, 2
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %39, align 1
  %344 = add i64 %317, 9
  store i64 %344, i64* %3, align 8
  store i32 %321, i32* %319, align 4
  %345 = load i64, i64* %3, align 8
  %346 = add i64 %345, -142
  store i64 %346, i64* %3, align 8
  br label %block_.L_400c07

block_.L_400c9a:                                  ; preds = %block_.L_400c07
  %347 = add i64 %145, 7
  store i64 %347, i64* %3, align 8
  store i32 0, i32* %112, align 4
  %.pre38 = load i64, i64* %3, align 8
  %348 = bitcast %union.VectorReg* %61 to <4 x i32>*
  br label %block_.L_400ca1

block_.L_400ca1:                                  ; preds = %block_.L_400dbe, %block_.L_400c9a
  %349 = phi i64 [ %.pre38, %block_.L_400c9a ], [ %799, %block_.L_400dbe ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_400c9a ], [ %717, %block_.L_400dbe ]
  %350 = load i64, i64* %RBP.i, align 8
  %351 = add i64 %350, -56
  %352 = add i64 %349, 3
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RAX.i649, align 8
  %356 = add i64 %350, -4
  %357 = add i64 %349, 6
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = sub i32 %354, %359
  %361 = icmp ult i32 %354, %359
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %14, align 1
  %363 = and i32 %360, 255
  %364 = tail call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  store i8 %367, i8* %21, align 1
  %368 = xor i32 %359, %354
  %369 = xor i32 %368, %360
  %370 = lshr i32 %369, 4
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  store i8 %372, i8* %27, align 1
  %373 = icmp eq i32 %360, 0
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %30, align 1
  %375 = lshr i32 %360, 31
  %376 = trunc i32 %375 to i8
  store i8 %376, i8* %33, align 1
  %377 = lshr i32 %354, 31
  %378 = lshr i32 %359, 31
  %379 = xor i32 %378, %377
  %380 = xor i32 %375, %377
  %381 = add nuw nsw i32 %380, %379
  %382 = icmp eq i32 %381, 2
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %39, align 1
  %384 = icmp ne i8 %376, 0
  %385 = xor i1 %384, %382
  %.v50 = select i1 %385, i64 12, i64 317
  %386 = add i64 %349, %.v50
  store i64 %386, i64* %3, align 8
  br i1 %385, label %block_400cad, label %block_.L_400dde

block_400cad:                                     ; preds = %block_.L_400ca1
  store <4 x i32> zeroinitializer, <4 x i32>* %348, align 1
  %387 = add i64 %350, -48
  %388 = add i64 %386, 7
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i64*
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %RAX.i649, align 8
  %391 = add i64 %386, 11
  store i64 %391, i64* %3, align 8
  %392 = load i32, i32* %353, align 4
  %393 = sext i32 %392 to i64
  store i64 %393, i64* %RCX.i661, align 8
  %394 = shl nsw i64 %393, 3
  %395 = add i64 %394, %390
  %396 = add i64 %386, 16
  store i64 %396, i64* %3, align 8
  %397 = load i64, i64* %67, align 1
  %398 = inttoptr i64 %395 to i64*
  store i64 %397, i64* %398, align 8
  %399 = load i64, i64* %RBP.i, align 8
  %400 = add i64 %399, -52
  %401 = load i64, i64* %3, align 8
  %402 = add i64 %401, 7
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %400 to i32*
  store i32 0, i32* %403, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_400cc4

block_.L_400cc4:                                  ; preds = %block_400cd0, %block_400cad
  %404 = phi i64 [ %612, %block_400cd0 ], [ %.pre44, %block_400cad ]
  %405 = load i64, i64* %RBP.i, align 8
  %406 = add i64 %405, -52
  %407 = add i64 %404, 3
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RAX.i649, align 8
  %411 = add i64 %405, -8
  %412 = add i64 %404, 6
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = sub i32 %409, %414
  %416 = icmp ult i32 %409, %414
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %14, align 1
  %418 = and i32 %415, 255
  %419 = tail call i32 @llvm.ctpop.i32(i32 %418)
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  store i8 %422, i8* %21, align 1
  %423 = xor i32 %414, %409
  %424 = xor i32 %423, %415
  %425 = lshr i32 %424, 4
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  store i8 %427, i8* %27, align 1
  %428 = icmp eq i32 %415, 0
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %30, align 1
  %430 = lshr i32 %415, 31
  %431 = trunc i32 %430 to i8
  store i8 %431, i8* %33, align 1
  %432 = lshr i32 %409, 31
  %433 = lshr i32 %414, 31
  %434 = xor i32 %433, %432
  %435 = xor i32 %430, %432
  %436 = add nuw nsw i32 %435, %434
  %437 = icmp eq i32 %436, 2
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %39, align 1
  %439 = icmp ne i8 %431, 0
  %440 = xor i1 %439, %437
  %.v54 = select i1 %440, i64 12, i64 128
  %441 = add i64 %404, %.v54
  store i64 %441, i64* %3, align 8
  br i1 %440, label %block_400cd0, label %block_.L_400d44

block_400cd0:                                     ; preds = %block_.L_400cc4
  %442 = add i64 %405, -24
  %443 = add i64 %441, 4
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RAX.i649, align 8
  %446 = add i64 %441, 8
  store i64 %446, i64* %3, align 8
  %447 = load i32, i32* %408, align 4
  %448 = sext i32 %447 to i64
  %449 = mul nsw i64 %448, 8000
  store i64 %449, i64* %RCX.i661, align 8
  %450 = lshr i64 %449, 63
  %451 = add i64 %449, %445
  store i64 %451, i64* %RAX.i649, align 8
  %452 = icmp ult i64 %451, %445
  %453 = icmp ult i64 %451, %449
  %454 = or i1 %452, %453
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %14, align 1
  %456 = trunc i64 %451 to i32
  %457 = and i32 %456, 255
  %458 = tail call i32 @llvm.ctpop.i32(i32 %457)
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = xor i8 %460, 1
  store i8 %461, i8* %21, align 1
  %462 = xor i64 %445, %451
  %463 = lshr i64 %462, 4
  %464 = trunc i64 %463 to i8
  %465 = and i8 %464, 1
  store i8 %465, i8* %27, align 1
  %466 = icmp eq i64 %451, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %30, align 1
  %468 = lshr i64 %451, 63
  %469 = trunc i64 %468 to i8
  store i8 %469, i8* %33, align 1
  %470 = lshr i64 %445, 63
  %471 = xor i64 %468, %470
  %472 = xor i64 %468, %450
  %473 = add nuw nsw i64 %471, %472
  %474 = icmp eq i64 %473, 2
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %39, align 1
  %476 = add i64 %405, -56
  %477 = add i64 %441, 22
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = sext i32 %479 to i64
  store i64 %480, i64* %RCX.i661, align 8
  %481 = shl nsw i64 %480, 3
  %482 = add i64 %481, %451
  %483 = add i64 %441, 27
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %486 = add i64 %405, -40
  %487 = add i64 %441, 31
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to i64*
  %489 = load i64, i64* %488, align 8
  store i64 %489, i64* %RAX.i649, align 8
  %490 = add i64 %441, 35
  store i64 %490, i64* %3, align 8
  %491 = load i32, i32* %478, align 4
  %492 = sext i32 %491 to i64
  store i64 %492, i64* %RCX.i661, align 8
  %493 = shl nsw i64 %492, 3
  %494 = add i64 %493, %489
  %495 = add i64 %441, 40
  store i64 %495, i64* %3, align 8
  %496 = bitcast i64 %485 to double
  %497 = inttoptr i64 %494 to double*
  %498 = load double, double* %497, align 8
  %499 = fsub double %496, %498
  store double %499, double* %66, align 1
  store i64 0, i64* %105, align 1
  %500 = load i64, i64* %RBP.i, align 8
  %501 = add i64 %500, -24
  %502 = add i64 %441, 44
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i64*
  %504 = load i64, i64* %503, align 8
  store i64 %504, i64* %RAX.i649, align 8
  %505 = add i64 %500, -52
  %506 = add i64 %441, 48
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = sext i32 %508 to i64
  %510 = mul nsw i64 %509, 8000
  store i64 %510, i64* %RCX.i661, align 8
  %511 = lshr i64 %510, 63
  %512 = add i64 %510, %504
  store i64 %512, i64* %RAX.i649, align 8
  %513 = icmp ult i64 %512, %504
  %514 = icmp ult i64 %512, %510
  %515 = or i1 %513, %514
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %14, align 1
  %517 = trunc i64 %512 to i32
  %518 = and i32 %517, 255
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518)
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %21, align 1
  %523 = xor i64 %504, %512
  %524 = lshr i64 %523, 4
  %525 = trunc i64 %524 to i8
  %526 = and i8 %525, 1
  store i8 %526, i8* %27, align 1
  %527 = icmp eq i64 %512, 0
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %30, align 1
  %529 = lshr i64 %512, 63
  %530 = trunc i64 %529 to i8
  store i8 %530, i8* %33, align 1
  %531 = lshr i64 %504, 63
  %532 = xor i64 %529, %531
  %533 = xor i64 %529, %511
  %534 = add nuw nsw i64 %532, %533
  %535 = icmp eq i64 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %39, align 1
  %537 = add i64 %500, -56
  %538 = add i64 %441, 62
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i32*
  %540 = load i32, i32* %539, align 4
  %541 = sext i32 %540 to i64
  store i64 %541, i64* %RCX.i661, align 8
  %542 = shl nsw i64 %541, 3
  %543 = add i64 %542, %512
  %544 = add i64 %441, 67
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to i64*
  %546 = load i64, i64* %545, align 8
  store i64 %546, i64* %46, align 1
  store double 0.000000e+00, double* %48, align 1
  %547 = add i64 %500, -40
  %548 = add i64 %441, 71
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i64*
  %550 = load i64, i64* %549, align 8
  store i64 %550, i64* %RAX.i649, align 8
  %551 = add i64 %441, 75
  store i64 %551, i64* %3, align 8
  %552 = load i32, i32* %539, align 4
  %553 = sext i32 %552 to i64
  store i64 %553, i64* %RCX.i661, align 8
  %554 = shl nsw i64 %553, 3
  %555 = add i64 %554, %550
  %556 = add i64 %441, 80
  store i64 %556, i64* %3, align 8
  %557 = bitcast i64 %546 to double
  %558 = inttoptr i64 %555 to double*
  %559 = load double, double* %558, align 8
  %560 = fsub double %557, %559
  store double %560, double* %45, align 1
  store i64 0, i64* %47, align 1
  %561 = load double, double* %66, align 1
  %562 = fmul double %561, %560
  store double %562, double* %66, align 1
  %563 = load i64, i64* %RBP.i, align 8
  %564 = add i64 %563, -48
  %565 = add i64 %441, 88
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i64*
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %RAX.i649, align 8
  %568 = add i64 %563, -56
  %569 = add i64 %441, 92
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = sext i32 %571 to i64
  store i64 %572, i64* %RCX.i661, align 8
  %573 = shl nsw i64 %572, 3
  %574 = add i64 %573, %567
  %575 = add i64 %441, 97
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to double*
  %577 = load double, double* %576, align 8
  %578 = fadd double %562, %577
  store double %578, double* %66, align 1
  %579 = add i64 %441, 102
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %574 to double*
  store double %578, double* %580, align 8
  %581 = load i64, i64* %RBP.i, align 8
  %582 = add i64 %581, -52
  %583 = load i64, i64* %3, align 8
  %584 = add i64 %583, 3
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %582 to i32*
  %586 = load i32, i32* %585, align 4
  %587 = add i32 %586, 1
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RAX.i649, align 8
  %589 = icmp eq i32 %586, -1
  %590 = icmp eq i32 %587, 0
  %591 = or i1 %589, %590
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %14, align 1
  %593 = and i32 %587, 255
  %594 = tail call i32 @llvm.ctpop.i32(i32 %593)
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  store i8 %597, i8* %21, align 1
  %598 = xor i32 %587, %586
  %599 = lshr i32 %598, 4
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  store i8 %601, i8* %27, align 1
  %602 = zext i1 %590 to i8
  store i8 %602, i8* %30, align 1
  %603 = lshr i32 %587, 31
  %604 = trunc i32 %603 to i8
  store i8 %604, i8* %33, align 1
  %605 = lshr i32 %586, 31
  %606 = xor i32 %603, %605
  %607 = add nuw nsw i32 %606, %603
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %39, align 1
  %610 = add i64 %583, 9
  store i64 %610, i64* %3, align 8
  store i32 %587, i32* %585, align 4
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, -123
  store i64 %612, i64* %3, align 8
  br label %block_.L_400cc4

block_.L_400d44:                                  ; preds = %block_.L_400cc4
  %613 = add i64 %405, -16
  %614 = add i64 %441, 5
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i64*
  %616 = load i64, i64* %615, align 8
  store i64 %616, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %617 = add i64 %405, -48
  %618 = add i64 %441, 9
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i64*
  %620 = load i64, i64* %619, align 8
  store i64 %620, i64* %RAX.i649, align 8
  %621 = add i64 %405, -56
  %622 = add i64 %441, 13
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = sext i32 %624 to i64
  store i64 %625, i64* %RCX.i661, align 8
  %626 = shl nsw i64 %625, 3
  %627 = add i64 %626, %620
  %628 = add i64 %441, 18
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to double*
  %630 = load double, double* %629, align 8
  %631 = bitcast i64 %616 to double
  %632 = fdiv double %630, %631
  store double %632, double* %45, align 1
  store i64 0, i64* %47, align 1
  %633 = add i64 %441, 27
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %627 to double*
  store double %632, double* %634, align 8
  %635 = load i64, i64* %RBP.i, align 8
  %636 = add i64 %635, -48
  %637 = load i64, i64* %3, align 8
  %638 = add i64 %637, 4
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %636 to i64*
  %640 = load i64, i64* %639, align 8
  store i64 %640, i64* %RAX.i649, align 8
  %641 = add i64 %635, -56
  %642 = add i64 %637, 8
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = sext i32 %644 to i64
  store i64 %645, i64* %RCX.i661, align 8
  %646 = shl nsw i64 %645, 3
  %647 = add i64 %646, %640
  %648 = add i64 %637, 13
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i64*
  %650 = load i64, i64* %649, align 8
  store i64 %650, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %651 = add i64 %637, -1679
  %652 = add i64 %637, 18
  %653 = load i64, i64* %6, align 8
  %654 = add i64 %653, -8
  %655 = inttoptr i64 %654 to i64*
  store i64 %652, i64* %655, align 8
  store i64 %654, i64* %6, align 8
  store i64 %651, i64* %3, align 8
  %call2_400d6c = tail call %struct.Memory* @sub_4006d0.sqrt_plt(%struct.State* nonnull %0, i64 %651, %struct.Memory* %MEMORY.2)
  %656 = load i64, i64* %RBP.i, align 8
  %657 = add i64 %656, -48
  %658 = load i64, i64* %3, align 8
  %659 = add i64 %658, 4
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %657 to i64*
  %661 = load i64, i64* %660, align 8
  store i64 %661, i64* %RAX.i649, align 8
  %662 = add i64 %656, -56
  %663 = add i64 %658, 8
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = sext i32 %665 to i64
  store i64 %666, i64* %RCX.i661, align 8
  %667 = shl nsw i64 %666, 3
  %668 = add i64 %667, %661
  %669 = add i64 %658, 13
  store i64 %669, i64* %3, align 8
  %670 = load i64, i64* %67, align 1
  %671 = inttoptr i64 %668 to i64*
  store i64 %670, i64* %671, align 8
  %672 = load i64, i64* %RBP.i, align 8
  %673 = add i64 %672, -48
  %674 = load i64, i64* %3, align 8
  %675 = add i64 %674, 4
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %673 to i64*
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %RAX.i649, align 8
  %678 = add i64 %672, -56
  %679 = add i64 %674, 8
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i32*
  %681 = load i32, i32* %680, align 4
  %682 = sext i32 %681 to i64
  store i64 %682, i64* %RCX.i661, align 8
  %683 = shl nsw i64 %682, 3
  %684 = add i64 %683, %677
  %685 = add i64 %674, 13
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i64*
  %687 = load i64, i64* %686, align 8
  store i64 %687, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %688 = add i64 %672, -72
  %689 = add i64 %674, 18
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i64*
  %691 = load i64, i64* %690, align 8
  store i64 %691, i64* %46, align 1
  store double 0.000000e+00, double* %48, align 1
  %692 = add i64 %674, 22
  store i64 %692, i64* %3, align 8
  %.cast11 = bitcast i64 %691 to double
  %693 = bitcast i64 %687 to double
  %694 = fcmp uno double %.cast11, %693
  br i1 %694, label %695, label %705

; <label>:695:                                    ; preds = %block_.L_400d44
  %696 = fadd double %.cast11, %693
  %697 = bitcast double %696 to i64
  %698 = and i64 %697, 9221120237041090560
  %699 = icmp eq i64 %698, 9218868437227405312
  %700 = and i64 %697, 2251799813685247
  %701 = icmp ne i64 %700, 0
  %702 = and i1 %699, %701
  br i1 %702, label %703, label %711

; <label>:703:                                    ; preds = %695
  %704 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %692, %struct.Memory* %call2_400d6c)
  %.pre45 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:705:                                    ; preds = %block_.L_400d44
  %706 = fcmp ogt double %.cast11, %693
  br i1 %706, label %711, label %707

; <label>:707:                                    ; preds = %705
  %708 = fcmp olt double %.cast11, %693
  br i1 %708, label %711, label %709

; <label>:709:                                    ; preds = %707
  %710 = fcmp oeq double %.cast11, %693
  br i1 %710, label %711, label %715

; <label>:711:                                    ; preds = %709, %707, %705, %695
  %712 = phi i8 [ 0, %705 ], [ 0, %707 ], [ 1, %709 ], [ 1, %695 ]
  %713 = phi i8 [ 0, %705 ], [ 0, %707 ], [ 0, %709 ], [ 1, %695 ]
  %714 = phi i8 [ 0, %705 ], [ 1, %707 ], [ 0, %709 ], [ 1, %695 ]
  store i8 %712, i8* %30, align 1
  store i8 %713, i8* %21, align 1
  store i8 %714, i8* %14, align 1
  br label %715

; <label>:715:                                    ; preds = %711, %709
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %715, %703
  %716 = phi i64 [ %.pre45, %703 ], [ %692, %715 ]
  %717 = phi %struct.Memory* [ %704, %703 ], [ %call2_400d6c, %715 ]
  %718 = load i8, i8* %14, align 1
  %719 = icmp ne i8 %718, 0
  %.v74 = select i1 %719, i64 24, i64 6
  %720 = add i64 %716, %.v74
  store i64 %720, i64* %3, align 8
  %cmpBr_400d94 = icmp eq i8 %718, 1
  br i1 %cmpBr_400d94, label %block_.L_400dac, label %block_400d9a

block_400d9a:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %721 = add i64 %720, 1718
  %722 = add i64 %720, 8
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %725 = load i64, i64* %RBP.i, align 8
  %726 = add i64 %725, -80
  %727 = add i64 %720, 13
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i64*
  store i64 %724, i64* %728, align 8
  %729 = load i64, i64* %3, align 8
  %730 = add i64 %729, 23
  store i64 %730, i64* %3, align 8
  br label %block_.L_400dbe

block_.L_400dac:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %731 = load i64, i64* %RBP.i, align 8
  %732 = add i64 %731, -48
  %733 = add i64 %720, 4
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %RAX.i649, align 8
  %736 = add i64 %731, -56
  %737 = add i64 %720, 8
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i32*
  %739 = load i32, i32* %738, align 4
  %740 = sext i32 %739 to i64
  store i64 %740, i64* %RCX.i661, align 8
  %741 = shl nsw i64 %740, 3
  %742 = add i64 %741, %735
  %743 = add i64 %720, 13
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i64*
  %745 = load i64, i64* %744, align 8
  store i64 %745, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %746 = add i64 %731, -80
  %747 = add i64 %720, 18
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i64*
  store i64 %745, i64* %748, align 8
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_400dbe

block_.L_400dbe:                                  ; preds = %block_.L_400dac, %block_400d9a
  %749 = phi i64 [ %.pre46, %block_.L_400dac ], [ %730, %block_400d9a ]
  %750 = load i64, i64* %RBP.i, align 8
  %751 = add i64 %750, -80
  %752 = add i64 %749, 5
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i64*
  %754 = load i64, i64* %753, align 8
  store i64 %754, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %755 = add i64 %750, -48
  %756 = add i64 %749, 9
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i64*
  %758 = load i64, i64* %757, align 8
  store i64 %758, i64* %RAX.i649, align 8
  %759 = add i64 %750, -56
  %760 = add i64 %749, 13
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = sext i32 %762 to i64
  store i64 %763, i64* %RCX.i661, align 8
  %764 = shl nsw i64 %763, 3
  %765 = add i64 %764, %758
  %766 = add i64 %749, 18
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i64*
  store i64 %754, i64* %767, align 8
  %768 = load i64, i64* %RBP.i, align 8
  %769 = add i64 %768, -56
  %770 = load i64, i64* %3, align 8
  %771 = add i64 %770, 3
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %769 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = add i32 %773, 1
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %RAX.i649, align 8
  %776 = icmp eq i32 %773, -1
  %777 = icmp eq i32 %774, 0
  %778 = or i1 %776, %777
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %14, align 1
  %780 = and i32 %774, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780)
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %21, align 1
  %785 = xor i32 %774, %773
  %786 = lshr i32 %785, 4
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  store i8 %788, i8* %27, align 1
  %789 = zext i1 %777 to i8
  store i8 %789, i8* %30, align 1
  %790 = lshr i32 %774, 31
  %791 = trunc i32 %790 to i8
  store i8 %791, i8* %33, align 1
  %792 = lshr i32 %773, 31
  %793 = xor i32 %790, %792
  %794 = add nuw nsw i32 %793, %790
  %795 = icmp eq i32 %794, 2
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %39, align 1
  %797 = add i64 %770, 9
  store i64 %797, i64* %3, align 8
  store i32 %774, i32* %772, align 4
  %798 = load i64, i64* %3, align 8
  %799 = add i64 %798, -312
  store i64 %799, i64* %3, align 8
  br label %block_.L_400ca1

block_.L_400dde:                                  ; preds = %block_.L_400ca1
  %800 = add i64 %350, -52
  %801 = add i64 %386, 7
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i32*
  store i32 0, i32* %802, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_400de5

block_.L_400de5:                                  ; preds = %block_.L_400e7e, %block_.L_400dde
  %803 = phi i64 [ %.pre39, %block_.L_400dde ], [ %1082, %block_.L_400e7e ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.2, %block_.L_400dde ], [ %MEMORY.6, %block_.L_400e7e ]
  %804 = load i64, i64* %RBP.i, align 8
  %805 = add i64 %804, -52
  %806 = add i64 %803, 3
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %RAX.i649, align 8
  %810 = add i64 %804, -8
  %811 = add i64 %803, 6
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = sub i32 %808, %813
  %815 = icmp ult i32 %808, %813
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %14, align 1
  %817 = and i32 %814, 255
  %818 = tail call i32 @llvm.ctpop.i32(i32 %817)
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  store i8 %821, i8* %21, align 1
  %822 = xor i32 %813, %808
  %823 = xor i32 %822, %814
  %824 = lshr i32 %823, 4
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  store i8 %826, i8* %27, align 1
  %827 = icmp eq i32 %814, 0
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %30, align 1
  %829 = lshr i32 %814, 31
  %830 = trunc i32 %829 to i8
  store i8 %830, i8* %33, align 1
  %831 = lshr i32 %808, 31
  %832 = lshr i32 %813, 31
  %833 = xor i32 %832, %831
  %834 = xor i32 %829, %831
  %835 = add nuw nsw i32 %834, %833
  %836 = icmp eq i32 %835, 2
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %39, align 1
  %838 = icmp ne i8 %830, 0
  %839 = xor i1 %838, %836
  %.v51 = select i1 %839, i64 12, i64 172
  %840 = add i64 %803, %.v51
  store i64 %840, i64* %3, align 8
  br i1 %839, label %block_400df1, label %block_.L_400e91

block_400df1:                                     ; preds = %block_.L_400de5
  %841 = add i64 %804, -56
  %842 = add i64 %840, 7
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  store i32 0, i32* %843, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_400df8

block_.L_400df8:                                  ; preds = %block_400e04, %block_400df1
  %844 = phi i64 [ %.pre43, %block_400df1 ], [ %1052, %block_400e04 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_400df1 ], [ %call2_400e3a, %block_400e04 ]
  %845 = load i64, i64* %RBP.i, align 8
  %846 = add i64 %845, -56
  %847 = add i64 %844, 3
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i32*
  %849 = load i32, i32* %848, align 4
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RAX.i649, align 8
  %851 = add i64 %845, -4
  %852 = add i64 %844, 6
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i32*
  %854 = load i32, i32* %853, align 4
  %855 = sub i32 %849, %854
  %856 = icmp ult i32 %849, %854
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %14, align 1
  %858 = and i32 %855, 255
  %859 = tail call i32 @llvm.ctpop.i32(i32 %858)
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  %862 = xor i8 %861, 1
  store i8 %862, i8* %21, align 1
  %863 = xor i32 %854, %849
  %864 = xor i32 %863, %855
  %865 = lshr i32 %864, 4
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  store i8 %867, i8* %27, align 1
  %868 = icmp eq i32 %855, 0
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %30, align 1
  %870 = lshr i32 %855, 31
  %871 = trunc i32 %870 to i8
  store i8 %871, i8* %33, align 1
  %872 = lshr i32 %849, 31
  %873 = lshr i32 %854, 31
  %874 = xor i32 %873, %872
  %875 = xor i32 %870, %872
  %876 = add nuw nsw i32 %875, %874
  %877 = icmp eq i32 %876, 2
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %39, align 1
  %879 = icmp ne i8 %871, 0
  %880 = xor i1 %879, %877
  %.v48 = select i1 %880, i64 12, i64 134
  %881 = add i64 %844, %.v48
  store i64 %881, i64* %3, align 8
  br i1 %880, label %block_400e04, label %block_.L_400e7e

block_400e04:                                     ; preds = %block_.L_400df8
  %882 = add i64 %845, -40
  %883 = add i64 %881, 4
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i64*
  %885 = load i64, i64* %884, align 8
  store i64 %885, i64* %RAX.i649, align 8
  %886 = add i64 %881, 8
  store i64 %886, i64* %3, align 8
  %887 = load i32, i32* %848, align 4
  %888 = sext i32 %887 to i64
  store i64 %888, i64* %RCX.i661, align 8
  %889 = shl nsw i64 %888, 3
  %890 = add i64 %889, %885
  %891 = add i64 %881, 13
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i64*
  %893 = load i64, i64* %892, align 8
  store i64 %893, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %894 = add i64 %845, -24
  %895 = add i64 %881, 17
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i64*
  %897 = load i64, i64* %896, align 8
  store i64 %897, i64* %RAX.i649, align 8
  %898 = add i64 %845, -52
  %899 = add i64 %881, 21
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i32*
  %901 = load i32, i32* %900, align 4
  %902 = sext i32 %901 to i64
  %903 = mul nsw i64 %902, 8000
  store i64 %903, i64* %RCX.i661, align 8
  %904 = lshr i64 %903, 63
  %905 = add i64 %903, %897
  store i64 %905, i64* %RAX.i649, align 8
  %906 = icmp ult i64 %905, %897
  %907 = icmp ult i64 %905, %903
  %908 = or i1 %906, %907
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %14, align 1
  %910 = trunc i64 %905 to i32
  %911 = and i32 %910, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911)
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %21, align 1
  %916 = xor i64 %897, %905
  %917 = lshr i64 %916, 4
  %918 = trunc i64 %917 to i8
  %919 = and i8 %918, 1
  store i8 %919, i8* %27, align 1
  %920 = icmp eq i64 %905, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %30, align 1
  %922 = lshr i64 %905, 63
  %923 = trunc i64 %922 to i8
  store i8 %923, i8* %33, align 1
  %924 = lshr i64 %897, 63
  %925 = xor i64 %922, %924
  %926 = xor i64 %922, %904
  %927 = add nuw nsw i64 %925, %926
  %928 = icmp eq i64 %927, 2
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %39, align 1
  %930 = add i64 %881, 35
  store i64 %930, i64* %3, align 8
  %931 = load i32, i32* %848, align 4
  %932 = sext i32 %931 to i64
  store i64 %932, i64* %RCX.i661, align 8
  %933 = shl nsw i64 %932, 3
  %934 = add i64 %933, %905
  %935 = add i64 %881, 40
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to double*
  %937 = load double, double* %936, align 8
  %938 = bitcast i64 %893 to double
  %939 = fsub double %937, %938
  store double %939, double* %45, align 1
  store i64 0, i64* %47, align 1
  %940 = add i64 %881, 49
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %934 to double*
  store double %939, double* %941, align 8
  %942 = load i64, i64* %RBP.i, align 8
  %943 = add i64 %942, -16
  %944 = load i64, i64* %3, align 8
  %945 = add i64 %944, 5
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %943 to i64*
  %947 = load i64, i64* %946, align 8
  store i64 %947, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %948 = add i64 %944, -1893
  %949 = add i64 %944, 10
  %950 = load i64, i64* %6, align 8
  %951 = add i64 %950, -8
  %952 = inttoptr i64 %951 to i64*
  store i64 %949, i64* %952, align 8
  store i64 %951, i64* %6, align 8
  store i64 %948, i64* %3, align 8
  %call2_400e3a = tail call %struct.Memory* @sub_4006d0.sqrt_plt(%struct.State* nonnull %0, i64 %948, %struct.Memory* %MEMORY.6)
  %953 = load i64, i64* %RBP.i, align 8
  %954 = add i64 %953, -48
  %955 = load i64, i64* %3, align 8
  %956 = add i64 %955, 4
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %954 to i64*
  %958 = load i64, i64* %957, align 8
  store i64 %958, i64* %RAX.i649, align 8
  %959 = add i64 %953, -56
  %960 = add i64 %955, 8
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = sext i32 %962 to i64
  store i64 %963, i64* %RCX.i661, align 8
  %964 = shl nsw i64 %963, 3
  %965 = add i64 %964, %958
  %966 = add i64 %955, 13
  store i64 %966, i64* %3, align 8
  %967 = load double, double* %66, align 1
  %968 = inttoptr i64 %965 to double*
  %969 = load double, double* %968, align 8
  %970 = fmul double %967, %969
  store double %970, double* %66, align 1
  %971 = add i64 %953, -24
  %972 = add i64 %955, 17
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i64*
  %974 = load i64, i64* %973, align 8
  store i64 %974, i64* %RAX.i649, align 8
  %975 = add i64 %953, -52
  %976 = add i64 %955, 21
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i32*
  %978 = load i32, i32* %977, align 4
  %979 = sext i32 %978 to i64
  %980 = mul nsw i64 %979, 8000
  store i64 %980, i64* %RCX.i661, align 8
  %981 = lshr i64 %980, 63
  %982 = add i64 %980, %974
  store i64 %982, i64* %RAX.i649, align 8
  %983 = icmp ult i64 %982, %974
  %984 = icmp ult i64 %982, %980
  %985 = or i1 %983, %984
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %14, align 1
  %987 = trunc i64 %982 to i32
  %988 = and i32 %987, 255
  %989 = tail call i32 @llvm.ctpop.i32(i32 %988)
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = xor i8 %991, 1
  store i8 %992, i8* %21, align 1
  %993 = xor i64 %974, %982
  %994 = lshr i64 %993, 4
  %995 = trunc i64 %994 to i8
  %996 = and i8 %995, 1
  store i8 %996, i8* %27, align 1
  %997 = icmp eq i64 %982, 0
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %30, align 1
  %999 = lshr i64 %982, 63
  %1000 = trunc i64 %999 to i8
  store i8 %1000, i8* %33, align 1
  %1001 = lshr i64 %974, 63
  %1002 = xor i64 %999, %1001
  %1003 = xor i64 %999, %981
  %1004 = add nuw nsw i64 %1002, %1003
  %1005 = icmp eq i64 %1004, 2
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %39, align 1
  %1007 = load i64, i64* %RBP.i, align 8
  %1008 = add i64 %1007, -56
  %1009 = add i64 %955, 35
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i32*
  %1011 = load i32, i32* %1010, align 4
  %1012 = sext i32 %1011 to i64
  store i64 %1012, i64* %RCX.i661, align 8
  %1013 = shl nsw i64 %1012, 3
  %1014 = add i64 %1013, %982
  %1015 = add i64 %955, 40
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1014 to double*
  %1017 = load double, double* %1016, align 8
  %1018 = fdiv double %1017, %970
  store double %1018, double* %45, align 1
  store i64 0, i64* %47, align 1
  %1019 = add i64 %955, 49
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1014 to double*
  store double %1018, double* %1020, align 8
  %1021 = load i64, i64* %RBP.i, align 8
  %1022 = add i64 %1021, -56
  %1023 = load i64, i64* %3, align 8
  %1024 = add i64 %1023, 3
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1022 to i32*
  %1026 = load i32, i32* %1025, align 4
  %1027 = add i32 %1026, 1
  %1028 = zext i32 %1027 to i64
  store i64 %1028, i64* %RAX.i649, align 8
  %1029 = icmp eq i32 %1026, -1
  %1030 = icmp eq i32 %1027, 0
  %1031 = or i1 %1029, %1030
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %14, align 1
  %1033 = and i32 %1027, 255
  %1034 = tail call i32 @llvm.ctpop.i32(i32 %1033)
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = xor i8 %1036, 1
  store i8 %1037, i8* %21, align 1
  %1038 = xor i32 %1027, %1026
  %1039 = lshr i32 %1038, 4
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %27, align 1
  %1042 = zext i1 %1030 to i8
  store i8 %1042, i8* %30, align 1
  %1043 = lshr i32 %1027, 31
  %1044 = trunc i32 %1043 to i8
  store i8 %1044, i8* %33, align 1
  %1045 = lshr i32 %1026, 31
  %1046 = xor i32 %1043, %1045
  %1047 = add nuw nsw i32 %1046, %1043
  %1048 = icmp eq i32 %1047, 2
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %39, align 1
  %1050 = add i64 %1023, 9
  store i64 %1050, i64* %3, align 8
  store i32 %1027, i32* %1025, align 4
  %1051 = load i64, i64* %3, align 8
  %1052 = add i64 %1051, -129
  store i64 %1052, i64* %3, align 8
  br label %block_.L_400df8

block_.L_400e7e:                                  ; preds = %block_.L_400df8
  %1053 = add i64 %845, -52
  %1054 = add i64 %881, 8
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  %1056 = load i32, i32* %1055, align 4
  %1057 = add i32 %1056, 1
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RAX.i649, align 8
  %1059 = icmp eq i32 %1056, -1
  %1060 = icmp eq i32 %1057, 0
  %1061 = or i1 %1059, %1060
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %14, align 1
  %1063 = and i32 %1057, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %21, align 1
  %1068 = xor i32 %1057, %1056
  %1069 = lshr i32 %1068, 4
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %27, align 1
  %1072 = zext i1 %1060 to i8
  store i8 %1072, i8* %30, align 1
  %1073 = lshr i32 %1057, 31
  %1074 = trunc i32 %1073 to i8
  store i8 %1074, i8* %33, align 1
  %1075 = lshr i32 %1056, 31
  %1076 = xor i32 %1073, %1075
  %1077 = add nuw nsw i32 %1076, %1073
  %1078 = icmp eq i32 %1077, 2
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %39, align 1
  %1080 = add i64 %881, 14
  store i64 %1080, i64* %3, align 8
  store i32 %1057, i32* %1055, align 4
  %1081 = load i64, i64* %3, align 8
  %1082 = add i64 %1081, -167
  store i64 %1082, i64* %3, align 8
  br label %block_.L_400de5

block_.L_400e91:                                  ; preds = %block_.L_400de5
  %1083 = add i64 %804, -60
  %1084 = add i64 %840, 7
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to i32*
  store i32 0, i32* %1085, align 4
  %.pre40 = load i64, i64* %3, align 8
  %1086 = bitcast %union.VectorReg* %61 to <4 x i32>*
  br label %block_.L_400e98

block_.L_400e98:                                  ; preds = %block_.L_400fba, %block_.L_400e91
  %1087 = phi i64 [ %1646, %block_.L_400fba ], [ %.pre40, %block_.L_400e91 ]
  %1088 = load i64, i64* %RBP.i, align 8
  %1089 = add i64 %1088, -60
  %1090 = add i64 %1087, 3
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RAX.i649, align 8
  %1094 = add i64 %1088, -4
  %1095 = add i64 %1087, 6
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = add i32 %1097, -1
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RCX.i661, align 8
  %1100 = lshr i32 %1098, 31
  %1101 = sub i32 %1092, %1098
  %1102 = icmp ult i32 %1092, %1098
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %14, align 1
  %1104 = and i32 %1101, 255
  %1105 = tail call i32 @llvm.ctpop.i32(i32 %1104)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  store i8 %1108, i8* %21, align 1
  %1109 = xor i32 %1098, %1092
  %1110 = xor i32 %1109, %1101
  %1111 = lshr i32 %1110, 4
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  store i8 %1113, i8* %27, align 1
  %1114 = icmp eq i32 %1101, 0
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %30, align 1
  %1116 = lshr i32 %1101, 31
  %1117 = trunc i32 %1116 to i8
  store i8 %1117, i8* %33, align 1
  %1118 = lshr i32 %1092, 31
  %1119 = xor i32 %1100, %1118
  %1120 = xor i32 %1116, %1118
  %1121 = add nuw nsw i32 %1120, %1119
  %1122 = icmp eq i32 %1121, 2
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %39, align 1
  %1124 = icmp ne i8 %1117, 0
  %1125 = xor i1 %1124, %1122
  %.v52 = select i1 %1125, i64 17, i64 309
  %1126 = add i64 %1087, %.v52
  store i64 %1126, i64* %3, align 8
  br i1 %1125, label %block_400ea9, label %block_.L_400fcd

block_400ea9:                                     ; preds = %block_.L_400e98
  %1127 = add i64 %1126, 1447
  %1128 = add i64 %1126, 8
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i64*
  %1130 = load i64, i64* %1129, align 8
  store i64 %1130, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %1131 = add i64 %1088, -32
  %1132 = add i64 %1126, 12
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i64*
  %1134 = load i64, i64* %1133, align 8
  store i64 %1134, i64* %RAX.i649, align 8
  %1135 = add i64 %1126, 16
  store i64 %1135, i64* %3, align 8
  %1136 = load i32, i32* %1091, align 4
  %1137 = sext i32 %1136 to i64
  %1138 = mul nsw i64 %1137, 8000
  store i64 %1138, i64* %RCX.i661, align 8
  %1139 = lshr i64 %1138, 63
  %1140 = add i64 %1138, %1134
  store i64 %1140, i64* %RAX.i649, align 8
  %1141 = icmp ult i64 %1140, %1134
  %1142 = icmp ult i64 %1140, %1138
  %1143 = or i1 %1141, %1142
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %14, align 1
  %1145 = trunc i64 %1140 to i32
  %1146 = and i32 %1145, 255
  %1147 = tail call i32 @llvm.ctpop.i32(i32 %1146)
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  store i8 %1150, i8* %21, align 1
  %1151 = xor i64 %1134, %1140
  %1152 = lshr i64 %1151, 4
  %1153 = trunc i64 %1152 to i8
  %1154 = and i8 %1153, 1
  store i8 %1154, i8* %27, align 1
  %1155 = icmp eq i64 %1140, 0
  %1156 = zext i1 %1155 to i8
  store i8 %1156, i8* %30, align 1
  %1157 = lshr i64 %1140, 63
  %1158 = trunc i64 %1157 to i8
  store i8 %1158, i8* %33, align 1
  %1159 = lshr i64 %1134, 63
  %1160 = xor i64 %1157, %1159
  %1161 = xor i64 %1157, %1139
  %1162 = add nuw nsw i64 %1160, %1161
  %1163 = icmp eq i64 %1162, 2
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %39, align 1
  %1165 = add i64 %1126, 30
  store i64 %1165, i64* %3, align 8
  %1166 = load i32, i32* %1091, align 4
  %1167 = sext i32 %1166 to i64
  store i64 %1167, i64* %RCX.i661, align 8
  %1168 = shl nsw i64 %1167, 3
  %1169 = add i64 %1168, %1140
  %1170 = add i64 %1126, 35
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i64*
  store i64 %1130, i64* %1171, align 8
  %1172 = load i64, i64* %RBP.i, align 8
  %1173 = add i64 %1172, -60
  %1174 = load i64, i64* %3, align 8
  %1175 = add i64 %1174, 3
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1173 to i32*
  %1177 = load i32, i32* %1176, align 4
  %1178 = add i32 %1177, 1
  %1179 = zext i32 %1178 to i64
  store i64 %1179, i64* %RDX.i664, align 8
  %1180 = icmp eq i32 %1177, -1
  %1181 = icmp eq i32 %1178, 0
  %1182 = or i1 %1180, %1181
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %14, align 1
  %1184 = and i32 %1178, 255
  %1185 = tail call i32 @llvm.ctpop.i32(i32 %1184)
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = xor i8 %1187, 1
  store i8 %1188, i8* %21, align 1
  %1189 = xor i32 %1178, %1177
  %1190 = lshr i32 %1189, 4
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  store i8 %1192, i8* %27, align 1
  %1193 = zext i1 %1181 to i8
  store i8 %1193, i8* %30, align 1
  %1194 = lshr i32 %1178, 31
  %1195 = trunc i32 %1194 to i8
  store i8 %1195, i8* %33, align 1
  %1196 = lshr i32 %1177, 31
  %1197 = xor i32 %1194, %1196
  %1198 = add nuw nsw i32 %1197, %1194
  %1199 = icmp eq i32 %1198, 2
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %39, align 1
  %1201 = add i64 %1172, -64
  %1202 = add i64 %1174, 9
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  store i32 %1178, i32* %1203, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_400ed5

block_.L_400ed5:                                  ; preds = %block_.L_400f76, %block_400ea9
  %1204 = phi i64 [ %1616, %block_.L_400f76 ], [ %.pre41, %block_400ea9 ]
  %1205 = load i64, i64* %RBP.i, align 8
  %1206 = add i64 %1205, -64
  %1207 = add i64 %1204, 3
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RAX.i649, align 8
  %1211 = add i64 %1205, -4
  %1212 = add i64 %1204, 6
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = sub i32 %1209, %1214
  %1216 = icmp ult i32 %1209, %1214
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %14, align 1
  %1218 = and i32 %1215, 255
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  store i8 %1222, i8* %21, align 1
  %1223 = xor i32 %1214, %1209
  %1224 = xor i32 %1223, %1215
  %1225 = lshr i32 %1224, 4
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  store i8 %1227, i8* %27, align 1
  %1228 = icmp eq i32 %1215, 0
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %30, align 1
  %1230 = lshr i32 %1215, 31
  %1231 = trunc i32 %1230 to i8
  store i8 %1231, i8* %33, align 1
  %1232 = lshr i32 %1209, 31
  %1233 = lshr i32 %1214, 31
  %1234 = xor i32 %1233, %1232
  %1235 = xor i32 %1230, %1232
  %1236 = add nuw nsw i32 %1235, %1234
  %1237 = icmp eq i32 %1236, 2
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %39, align 1
  %1239 = icmp ne i8 %1231, 0
  %1240 = xor i1 %1239, %1237
  %.v = select i1 %1240, i64 12, i64 229
  %1241 = add i64 %1204, %.v
  store i64 %1241, i64* %3, align 8
  br i1 %1240, label %block_400ee1, label %block_.L_400fba

block_400ee1:                                     ; preds = %block_.L_400ed5
  store <4 x i32> zeroinitializer, <4 x i32>* %1086, align 1
  %1242 = add i64 %1205, -32
  %1243 = add i64 %1241, 7
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RAX.i649, align 8
  %1246 = add i64 %1205, -60
  %1247 = add i64 %1241, 11
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = sext i32 %1249 to i64
  %1251 = mul nsw i64 %1250, 8000
  store i64 %1251, i64* %RCX.i661, align 8
  %1252 = lshr i64 %1251, 63
  %1253 = add i64 %1251, %1245
  store i64 %1253, i64* %RAX.i649, align 8
  %1254 = icmp ult i64 %1253, %1245
  %1255 = icmp ult i64 %1253, %1251
  %1256 = or i1 %1254, %1255
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %14, align 1
  %1258 = trunc i64 %1253 to i32
  %1259 = and i32 %1258, 255
  %1260 = tail call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  store i8 %1263, i8* %21, align 1
  %1264 = xor i64 %1245, %1253
  %1265 = lshr i64 %1264, 4
  %1266 = trunc i64 %1265 to i8
  %1267 = and i8 %1266, 1
  store i8 %1267, i8* %27, align 1
  %1268 = icmp eq i64 %1253, 0
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %30, align 1
  %1270 = lshr i64 %1253, 63
  %1271 = trunc i64 %1270 to i8
  store i8 %1271, i8* %33, align 1
  %1272 = lshr i64 %1245, 63
  %1273 = xor i64 %1270, %1272
  %1274 = xor i64 %1270, %1252
  %1275 = add nuw nsw i64 %1273, %1274
  %1276 = icmp eq i64 %1275, 2
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %39, align 1
  %1278 = add i64 %1241, 25
  store i64 %1278, i64* %3, align 8
  %1279 = load i32, i32* %1208, align 4
  %1280 = sext i32 %1279 to i64
  store i64 %1280, i64* %RCX.i661, align 8
  %1281 = shl nsw i64 %1280, 3
  %1282 = add i64 %1281, %1253
  %1283 = add i64 %1241, 30
  store i64 %1283, i64* %3, align 8
  %1284 = load i64, i64* %67, align 1
  %1285 = inttoptr i64 %1282 to i64*
  store i64 %1284, i64* %1285, align 8
  %1286 = load i64, i64* %RBP.i, align 8
  %1287 = add i64 %1286, -52
  %1288 = load i64, i64* %3, align 8
  %1289 = add i64 %1288, 7
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1287 to i32*
  store i32 0, i32* %1290, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_400f06

block_.L_400f06:                                  ; preds = %block_400f12, %block_400ee1
  %1291 = phi i64 [ %1496, %block_400f12 ], [ %.pre42, %block_400ee1 ]
  %1292 = load i64, i64* %RBP.i, align 8
  %1293 = add i64 %1292, -52
  %1294 = add i64 %1291, 3
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = zext i32 %1296 to i64
  store i64 %1297, i64* %RAX.i649, align 8
  %1298 = add i64 %1292, -8
  %1299 = add i64 %1291, 6
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1298 to i32*
  %1301 = load i32, i32* %1300, align 4
  %1302 = sub i32 %1296, %1301
  %1303 = icmp ult i32 %1296, %1301
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %14, align 1
  %1305 = and i32 %1302, 255
  %1306 = tail call i32 @llvm.ctpop.i32(i32 %1305)
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = xor i8 %1308, 1
  store i8 %1309, i8* %21, align 1
  %1310 = xor i32 %1301, %1296
  %1311 = xor i32 %1310, %1302
  %1312 = lshr i32 %1311, 4
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  store i8 %1314, i8* %27, align 1
  %1315 = icmp eq i32 %1302, 0
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %30, align 1
  %1317 = lshr i32 %1302, 31
  %1318 = trunc i32 %1317 to i8
  store i8 %1318, i8* %33, align 1
  %1319 = lshr i32 %1296, 31
  %1320 = lshr i32 %1301, 31
  %1321 = xor i32 %1320, %1319
  %1322 = xor i32 %1317, %1319
  %1323 = add nuw nsw i32 %1322, %1321
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %39, align 1
  %1326 = icmp ne i8 %1318, 0
  %1327 = xor i1 %1326, %1324
  %.v53 = select i1 %1327, i64 12, i64 112
  %1328 = add i64 %1291, %.v53
  store i64 %1328, i64* %3, align 8
  br i1 %1327, label %block_400f12, label %block_.L_400f76

block_400f12:                                     ; preds = %block_.L_400f06
  %1329 = add i64 %1292, -24
  %1330 = add i64 %1328, 4
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i64*
  %1332 = load i64, i64* %1331, align 8
  store i64 %1332, i64* %RAX.i649, align 8
  %1333 = add i64 %1328, 8
  store i64 %1333, i64* %3, align 8
  %1334 = load i32, i32* %1295, align 4
  %1335 = sext i32 %1334 to i64
  %1336 = mul nsw i64 %1335, 8000
  store i64 %1336, i64* %RCX.i661, align 8
  %1337 = lshr i64 %1336, 63
  %1338 = add i64 %1336, %1332
  store i64 %1338, i64* %RAX.i649, align 8
  %1339 = icmp ult i64 %1338, %1332
  %1340 = icmp ult i64 %1338, %1336
  %1341 = or i1 %1339, %1340
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %14, align 1
  %1343 = trunc i64 %1338 to i32
  %1344 = and i32 %1343, 255
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %21, align 1
  %1349 = xor i64 %1332, %1338
  %1350 = lshr i64 %1349, 4
  %1351 = trunc i64 %1350 to i8
  %1352 = and i8 %1351, 1
  store i8 %1352, i8* %27, align 1
  %1353 = icmp eq i64 %1338, 0
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %30, align 1
  %1355 = lshr i64 %1338, 63
  %1356 = trunc i64 %1355 to i8
  store i8 %1356, i8* %33, align 1
  %1357 = lshr i64 %1332, 63
  %1358 = xor i64 %1355, %1357
  %1359 = xor i64 %1355, %1337
  %1360 = add nuw nsw i64 %1358, %1359
  %1361 = icmp eq i64 %1360, 2
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %39, align 1
  %1363 = add i64 %1292, -60
  %1364 = add i64 %1328, 22
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i32*
  %1366 = load i32, i32* %1365, align 4
  %1367 = sext i32 %1366 to i64
  store i64 %1367, i64* %RCX.i661, align 8
  %1368 = shl nsw i64 %1367, 3
  %1369 = add i64 %1368, %1338
  %1370 = add i64 %1328, 27
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to i64*
  %1372 = load i64, i64* %1371, align 8
  store i64 %1372, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %1373 = add i64 %1328, 31
  store i64 %1373, i64* %3, align 8
  %1374 = load i64, i64* %1331, align 8
  store i64 %1374, i64* %RAX.i649, align 8
  %1375 = add i64 %1328, 35
  store i64 %1375, i64* %3, align 8
  %1376 = load i32, i32* %1295, align 4
  %1377 = sext i32 %1376 to i64
  %1378 = mul nsw i64 %1377, 8000
  store i64 %1378, i64* %RCX.i661, align 8
  %1379 = lshr i64 %1378, 63
  %1380 = add i64 %1378, %1374
  store i64 %1380, i64* %RAX.i649, align 8
  %1381 = icmp ult i64 %1380, %1374
  %1382 = icmp ult i64 %1380, %1378
  %1383 = or i1 %1381, %1382
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %14, align 1
  %1385 = trunc i64 %1380 to i32
  %1386 = and i32 %1385, 255
  %1387 = tail call i32 @llvm.ctpop.i32(i32 %1386)
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  %1390 = xor i8 %1389, 1
  store i8 %1390, i8* %21, align 1
  %1391 = xor i64 %1374, %1380
  %1392 = lshr i64 %1391, 4
  %1393 = trunc i64 %1392 to i8
  %1394 = and i8 %1393, 1
  store i8 %1394, i8* %27, align 1
  %1395 = icmp eq i64 %1380, 0
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %30, align 1
  %1397 = lshr i64 %1380, 63
  %1398 = trunc i64 %1397 to i8
  store i8 %1398, i8* %33, align 1
  %1399 = lshr i64 %1374, 63
  %1400 = xor i64 %1397, %1399
  %1401 = xor i64 %1397, %1379
  %1402 = add nuw nsw i64 %1400, %1401
  %1403 = icmp eq i64 %1402, 2
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %39, align 1
  %1405 = load i64, i64* %RBP.i, align 8
  %1406 = add i64 %1405, -64
  %1407 = add i64 %1328, 49
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = sext i32 %1409 to i64
  store i64 %1410, i64* %RCX.i661, align 8
  %1411 = shl nsw i64 %1410, 3
  %1412 = add i64 %1411, %1380
  %1413 = add i64 %1328, 54
  store i64 %1413, i64* %3, align 8
  %1414 = bitcast i64 %1372 to double
  %1415 = inttoptr i64 %1412 to double*
  %1416 = load double, double* %1415, align 8
  %1417 = fmul double %1414, %1416
  store double %1417, double* %66, align 1
  store i64 0, i64* %105, align 1
  %1418 = add i64 %1405, -32
  %1419 = add i64 %1328, 58
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i64*
  %1421 = load i64, i64* %1420, align 8
  store i64 %1421, i64* %RAX.i649, align 8
  %1422 = add i64 %1405, -60
  %1423 = add i64 %1328, 62
  store i64 %1423, i64* %3, align 8
  %1424 = inttoptr i64 %1422 to i32*
  %1425 = load i32, i32* %1424, align 4
  %1426 = sext i32 %1425 to i64
  %1427 = mul nsw i64 %1426, 8000
  store i64 %1427, i64* %RCX.i661, align 8
  %1428 = lshr i64 %1427, 63
  %1429 = add i64 %1427, %1421
  store i64 %1429, i64* %RAX.i649, align 8
  %1430 = icmp ult i64 %1429, %1421
  %1431 = icmp ult i64 %1429, %1427
  %1432 = or i1 %1430, %1431
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %14, align 1
  %1434 = trunc i64 %1429 to i32
  %1435 = and i32 %1434, 255
  %1436 = tail call i32 @llvm.ctpop.i32(i32 %1435)
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  %1439 = xor i8 %1438, 1
  store i8 %1439, i8* %21, align 1
  %1440 = xor i64 %1421, %1429
  %1441 = lshr i64 %1440, 4
  %1442 = trunc i64 %1441 to i8
  %1443 = and i8 %1442, 1
  store i8 %1443, i8* %27, align 1
  %1444 = icmp eq i64 %1429, 0
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %30, align 1
  %1446 = lshr i64 %1429, 63
  %1447 = trunc i64 %1446 to i8
  store i8 %1447, i8* %33, align 1
  %1448 = lshr i64 %1421, 63
  %1449 = xor i64 %1446, %1448
  %1450 = xor i64 %1446, %1428
  %1451 = add nuw nsw i64 %1449, %1450
  %1452 = icmp eq i64 %1451, 2
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %39, align 1
  %1454 = add i64 %1328, 76
  store i64 %1454, i64* %3, align 8
  %1455 = load i32, i32* %1408, align 4
  %1456 = sext i32 %1455 to i64
  store i64 %1456, i64* %RCX.i661, align 8
  %1457 = shl nsw i64 %1456, 3
  %1458 = add i64 %1457, %1429
  %1459 = add i64 %1328, 81
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to double*
  %1461 = load double, double* %1460, align 8
  %1462 = fadd double %1417, %1461
  store double %1462, double* %66, align 1
  store i64 0, i64* %105, align 1
  %1463 = add i64 %1328, 86
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1458 to double*
  store double %1462, double* %1464, align 8
  %1465 = load i64, i64* %RBP.i, align 8
  %1466 = add i64 %1465, -52
  %1467 = load i64, i64* %3, align 8
  %1468 = add i64 %1467, 3
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1466 to i32*
  %1470 = load i32, i32* %1469, align 4
  %1471 = add i32 %1470, 1
  %1472 = zext i32 %1471 to i64
  store i64 %1472, i64* %RAX.i649, align 8
  %1473 = icmp eq i32 %1470, -1
  %1474 = icmp eq i32 %1471, 0
  %1475 = or i1 %1473, %1474
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %14, align 1
  %1477 = and i32 %1471, 255
  %1478 = tail call i32 @llvm.ctpop.i32(i32 %1477)
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = xor i8 %1480, 1
  store i8 %1481, i8* %21, align 1
  %1482 = xor i32 %1471, %1470
  %1483 = lshr i32 %1482, 4
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  store i8 %1485, i8* %27, align 1
  %1486 = zext i1 %1474 to i8
  store i8 %1486, i8* %30, align 1
  %1487 = lshr i32 %1471, 31
  %1488 = trunc i32 %1487 to i8
  store i8 %1488, i8* %33, align 1
  %1489 = lshr i32 %1470, 31
  %1490 = xor i32 %1487, %1489
  %1491 = add nuw nsw i32 %1490, %1487
  %1492 = icmp eq i32 %1491, 2
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %39, align 1
  %1494 = add i64 %1467, 9
  store i64 %1494, i64* %3, align 8
  store i32 %1471, i32* %1469, align 4
  %1495 = load i64, i64* %3, align 8
  %1496 = add i64 %1495, -107
  store i64 %1496, i64* %3, align 8
  br label %block_.L_400f06

block_.L_400f76:                                  ; preds = %block_.L_400f06
  %1497 = add i64 %1292, -32
  %1498 = add i64 %1328, 4
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i64*
  %1500 = load i64, i64* %1499, align 8
  store i64 %1500, i64* %RAX.i649, align 8
  %1501 = add i64 %1292, -60
  %1502 = add i64 %1328, 8
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i32*
  %1504 = load i32, i32* %1503, align 4
  %1505 = sext i32 %1504 to i64
  %1506 = mul nsw i64 %1505, 8000
  store i64 %1506, i64* %RCX.i661, align 8
  %1507 = lshr i64 %1506, 63
  %1508 = add i64 %1506, %1500
  store i64 %1508, i64* %RAX.i649, align 8
  %1509 = icmp ult i64 %1508, %1500
  %1510 = icmp ult i64 %1508, %1506
  %1511 = or i1 %1509, %1510
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %14, align 1
  %1513 = trunc i64 %1508 to i32
  %1514 = and i32 %1513, 255
  %1515 = tail call i32 @llvm.ctpop.i32(i32 %1514)
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  %1518 = xor i8 %1517, 1
  store i8 %1518, i8* %21, align 1
  %1519 = xor i64 %1500, %1508
  %1520 = lshr i64 %1519, 4
  %1521 = trunc i64 %1520 to i8
  %1522 = and i8 %1521, 1
  store i8 %1522, i8* %27, align 1
  %1523 = icmp eq i64 %1508, 0
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %30, align 1
  %1525 = lshr i64 %1508, 63
  %1526 = trunc i64 %1525 to i8
  store i8 %1526, i8* %33, align 1
  %1527 = lshr i64 %1500, 63
  %1528 = xor i64 %1525, %1527
  %1529 = xor i64 %1525, %1507
  %1530 = add nuw nsw i64 %1528, %1529
  %1531 = icmp eq i64 %1530, 2
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %39, align 1
  %1533 = add i64 %1292, -64
  %1534 = add i64 %1328, 22
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = sext i32 %1536 to i64
  store i64 %1537, i64* %RCX.i661, align 8
  %1538 = shl nsw i64 %1537, 3
  %1539 = add i64 %1538, %1508
  %1540 = add i64 %1328, 27
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i64*
  %1542 = load i64, i64* %1541, align 8
  store i64 %1542, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %1543 = add i64 %1328, 31
  store i64 %1543, i64* %3, align 8
  %1544 = load i64, i64* %1499, align 8
  store i64 %1544, i64* %RAX.i649, align 8
  %1545 = add i64 %1328, 35
  store i64 %1545, i64* %3, align 8
  %1546 = load i32, i32* %1535, align 4
  %1547 = sext i32 %1546 to i64
  %1548 = mul nsw i64 %1547, 8000
  store i64 %1548, i64* %RCX.i661, align 8
  %1549 = lshr i64 %1548, 63
  %1550 = add i64 %1548, %1544
  store i64 %1550, i64* %RAX.i649, align 8
  %1551 = icmp ult i64 %1550, %1544
  %1552 = icmp ult i64 %1550, %1548
  %1553 = or i1 %1551, %1552
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %14, align 1
  %1555 = trunc i64 %1550 to i32
  %1556 = and i32 %1555, 255
  %1557 = tail call i32 @llvm.ctpop.i32(i32 %1556)
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  store i8 %1560, i8* %21, align 1
  %1561 = xor i64 %1544, %1550
  %1562 = lshr i64 %1561, 4
  %1563 = trunc i64 %1562 to i8
  %1564 = and i8 %1563, 1
  store i8 %1564, i8* %27, align 1
  %1565 = icmp eq i64 %1550, 0
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %30, align 1
  %1567 = lshr i64 %1550, 63
  %1568 = trunc i64 %1567 to i8
  store i8 %1568, i8* %33, align 1
  %1569 = lshr i64 %1544, 63
  %1570 = xor i64 %1567, %1569
  %1571 = xor i64 %1567, %1549
  %1572 = add nuw nsw i64 %1570, %1571
  %1573 = icmp eq i64 %1572, 2
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %39, align 1
  %1575 = load i64, i64* %RBP.i, align 8
  %1576 = add i64 %1575, -60
  %1577 = add i64 %1328, 49
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i32*
  %1579 = load i32, i32* %1578, align 4
  %1580 = sext i32 %1579 to i64
  store i64 %1580, i64* %RCX.i661, align 8
  %1581 = shl nsw i64 %1580, 3
  %1582 = add i64 %1581, %1550
  %1583 = add i64 %1328, 54
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i64*
  store i64 %1542, i64* %1584, align 8
  %1585 = load i64, i64* %RBP.i, align 8
  %1586 = add i64 %1585, -64
  %1587 = load i64, i64* %3, align 8
  %1588 = add i64 %1587, 3
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1586 to i32*
  %1590 = load i32, i32* %1589, align 4
  %1591 = add i32 %1590, 1
  %1592 = zext i32 %1591 to i64
  store i64 %1592, i64* %RAX.i649, align 8
  %1593 = icmp eq i32 %1590, -1
  %1594 = icmp eq i32 %1591, 0
  %1595 = or i1 %1593, %1594
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %14, align 1
  %1597 = and i32 %1591, 255
  %1598 = tail call i32 @llvm.ctpop.i32(i32 %1597)
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  %1601 = xor i8 %1600, 1
  store i8 %1601, i8* %21, align 1
  %1602 = xor i32 %1591, %1590
  %1603 = lshr i32 %1602, 4
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  store i8 %1605, i8* %27, align 1
  %1606 = zext i1 %1594 to i8
  store i8 %1606, i8* %30, align 1
  %1607 = lshr i32 %1591, 31
  %1608 = trunc i32 %1607 to i8
  store i8 %1608, i8* %33, align 1
  %1609 = lshr i32 %1590, 31
  %1610 = xor i32 %1607, %1609
  %1611 = add nuw nsw i32 %1610, %1607
  %1612 = icmp eq i32 %1611, 2
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %39, align 1
  %1614 = add i64 %1587, 9
  store i64 %1614, i64* %3, align 8
  store i32 %1591, i32* %1589, align 4
  %1615 = load i64, i64* %3, align 8
  %1616 = add i64 %1615, -224
  store i64 %1616, i64* %3, align 8
  br label %block_.L_400ed5

block_.L_400fba:                                  ; preds = %block_.L_400ed5
  %1617 = add i64 %1205, -60
  %1618 = add i64 %1241, 8
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1617 to i32*
  %1620 = load i32, i32* %1619, align 4
  %1621 = add i32 %1620, 1
  %1622 = zext i32 %1621 to i64
  store i64 %1622, i64* %RAX.i649, align 8
  %1623 = icmp eq i32 %1620, -1
  %1624 = icmp eq i32 %1621, 0
  %1625 = or i1 %1623, %1624
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %14, align 1
  %1627 = and i32 %1621, 255
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627)
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %21, align 1
  %1632 = xor i32 %1621, %1620
  %1633 = lshr i32 %1632, 4
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  store i8 %1635, i8* %27, align 1
  %1636 = zext i1 %1624 to i8
  store i8 %1636, i8* %30, align 1
  %1637 = lshr i32 %1621, 31
  %1638 = trunc i32 %1637 to i8
  store i8 %1638, i8* %33, align 1
  %1639 = lshr i32 %1620, 31
  %1640 = xor i32 %1637, %1639
  %1641 = add nuw nsw i32 %1640, %1637
  %1642 = icmp eq i32 %1641, 2
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %39, align 1
  %1644 = add i64 %1241, 14
  store i64 %1644, i64* %3, align 8
  store i32 %1621, i32* %1619, align 4
  %1645 = load i64, i64* %3, align 8
  %1646 = add i64 %1645, -304
  store i64 %1646, i64* %3, align 8
  br label %block_.L_400e98

block_.L_400fcd:                                  ; preds = %block_.L_400e98
  %1647 = add i64 %1126, 1155
  %1648 = add i64 %1126, 8
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i64*
  %1650 = load i64, i64* %1649, align 8
  store i64 %1650, i64* %67, align 1
  store double 0.000000e+00, double* %106, align 1
  %1651 = add i64 %1088, -32
  %1652 = add i64 %1126, 12
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i64*
  %1654 = load i64, i64* %1653, align 8
  store i64 %1654, i64* %RAX.i649, align 8
  %1655 = add i64 %1126, 15
  store i64 %1655, i64* %3, align 8
  %1656 = load i32, i32* %1096, align 4
  %1657 = add i32 %1656, -1
  %1658 = zext i32 %1657 to i64
  store i64 %1658, i64* %RCX.i661, align 8
  %1659 = sext i32 %1657 to i64
  %1660 = mul nsw i64 %1659, 8000
  store i64 %1660, i64* %RDX.i664, align 8
  %1661 = lshr i64 %1660, 63
  %1662 = add i64 %1660, %1654
  store i64 %1662, i64* %RAX.i649, align 8
  %1663 = icmp ult i64 %1662, %1654
  %1664 = icmp ult i64 %1662, %1660
  %1665 = or i1 %1663, %1664
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %14, align 1
  %1667 = trunc i64 %1662 to i32
  %1668 = and i32 %1667, 255
  %1669 = tail call i32 @llvm.ctpop.i32(i32 %1668)
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  %1672 = xor i8 %1671, 1
  store i8 %1672, i8* %21, align 1
  %1673 = xor i64 %1654, %1662
  %1674 = lshr i64 %1673, 4
  %1675 = trunc i64 %1674 to i8
  %1676 = and i8 %1675, 1
  store i8 %1676, i8* %27, align 1
  %1677 = icmp eq i64 %1662, 0
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %30, align 1
  %1679 = lshr i64 %1662, 63
  %1680 = trunc i64 %1679 to i8
  store i8 %1680, i8* %33, align 1
  %1681 = lshr i64 %1654, 63
  %1682 = xor i64 %1679, %1681
  %1683 = xor i64 %1679, %1661
  %1684 = add nuw nsw i64 %1682, %1683
  %1685 = icmp eq i64 %1684, 2
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %39, align 1
  %1687 = load i64, i64* %RBP.i, align 8
  %1688 = add i64 %1687, -4
  %1689 = add i64 %1126, 34
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1688 to i32*
  %1691 = load i32, i32* %1690, align 4
  %1692 = add i32 %1691, -1
  %1693 = zext i32 %1692 to i64
  store i64 %1693, i64* %RCX.i661, align 8
  %1694 = sext i32 %1692 to i64
  store i64 %1694, i64* %RDX.i664, align 8
  %1695 = shl nsw i64 %1694, 3
  %1696 = add i64 %1662, %1695
  %1697 = add i64 %1126, 45
  store i64 %1697, i64* %3, align 8
  %1698 = load i64, i64* %67, align 1
  %1699 = inttoptr i64 %1696 to i64*
  store i64 %1698, i64* %1699, align 8
  %1700 = load i64, i64* %6, align 8
  %1701 = load i64, i64* %3, align 8
  %1702 = add i64 %1700, 80
  store i64 %1702, i64* %6, align 8
  %1703 = icmp ugt i64 %1700, -81
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %14, align 1
  %1705 = trunc i64 %1702 to i32
  %1706 = and i32 %1705, 255
  %1707 = tail call i32 @llvm.ctpop.i32(i32 %1706)
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  %1710 = xor i8 %1709, 1
  store i8 %1710, i8* %21, align 1
  %1711 = xor i64 %1700, 16
  %1712 = xor i64 %1711, %1702
  %1713 = lshr i64 %1712, 4
  %1714 = trunc i64 %1713 to i8
  %1715 = and i8 %1714, 1
  store i8 %1715, i8* %27, align 1
  %1716 = icmp eq i64 %1702, 0
  %1717 = zext i1 %1716 to i8
  store i8 %1717, i8* %30, align 1
  %1718 = lshr i64 %1702, 63
  %1719 = trunc i64 %1718 to i8
  store i8 %1719, i8* %33, align 1
  %1720 = lshr i64 %1700, 63
  %1721 = xor i64 %1718, %1720
  %1722 = add nuw nsw i64 %1721, %1718
  %1723 = icmp eq i64 %1722, 2
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %39, align 1
  %1725 = add i64 %1701, 5
  store i64 %1725, i64* %3, align 8
  %1726 = add i64 %1700, 88
  %1727 = inttoptr i64 %1702 to i64*
  %1728 = load i64, i64* %1727, align 8
  store i64 %1728, i64* %RBP.i, align 8
  store i64 %1726, i64* %6, align 8
  %1729 = add i64 %1701, 6
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1726 to i64*
  %1731 = load i64, i64* %1730, align 8
  store i64 %1731, i64* %3, align 8
  %1732 = add i64 %1700, 96
  store i64 %1732, i64* %6, align 8
  ret %struct.Memory* %MEMORY.5
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 80
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x868__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2160
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jge_.L_400c9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
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
define %struct.Memory* @routine_jge_.L_400c71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x1f40___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
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
define %struct.Memory* @routine_jmpq_.L_400c2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
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
define %struct.Memory* @routine_jmpq_.L_400c07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400dde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_400d44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_400dac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x6ae__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1718
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jmpq_.L_400dbe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jmpq_.L_400ca1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400e91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_400e7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_400df8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400de5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_400fcd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x59f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1447
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jge_.L_400fba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jge_.L_400f76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400f06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ed5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fbf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_400e98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x47b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1155
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x1f40___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %10 = mul nsw i128 %9, 8000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -81
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
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
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
