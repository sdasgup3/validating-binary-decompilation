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

declare %struct.Memory* @sub_400630.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_gramschmidt_StrictFP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %76 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %74, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %77 = bitcast [32 x %union.VectorReg]* %74 to double*
  %78 = bitcast i64* %75 to double*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %80 = bitcast %union.VectorReg* %79 to double*
  %81 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %79, i64 0, i32 0, i32 0, i32 0, i64 0
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %83 = bitcast i64* %82 to double*
  %.pre = load i64, i64* %3, align 8
  %84 = bitcast [32 x %union.VectorReg]* %74 to <4 x i32>*
  %85 = bitcast [32 x %union.VectorReg]* %74 to <4 x i32>*
  br label %block_.L_400ef1

block_.L_400ef1:                                  ; preds = %block_.L_401121, %entry
  %86 = phi i64 [ %.pre, %entry ], [ %1215, %block_.L_401121 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %call2_400f65, %block_.L_401121 ]
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -44
  %89 = add i64 %86, 3
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %RAX.i388, align 8
  %93 = add i64 %87, -8
  %94 = add i64 %86, 6
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = sub i32 %91, %96
  %98 = icmp ult i32 %91, %96
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %14, align 1
  %100 = and i32 %97, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100)
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %21, align 1
  %105 = xor i32 %96, %91
  %106 = xor i32 %105, %97
  %107 = lshr i32 %106, 4
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  store i8 %109, i8* %26, align 1
  %110 = icmp eq i32 %97, 0
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %29, align 1
  %112 = lshr i32 %97, 31
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %32, align 1
  %114 = lshr i32 %91, 31
  %115 = lshr i32 %96, 31
  %116 = xor i32 %115, %114
  %117 = xor i32 %112, %114
  %118 = add nuw nsw i32 %117, %116
  %119 = icmp eq i32 %118, 2
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %38, align 1
  %121 = icmp ne i8 %113, 0
  %122 = xor i1 %121, %119
  %.v41 = select i1 %122, i64 12, i64 579
  %123 = add i64 %86, %.v41
  store i64 %123, i64* %3, align 8
  br i1 %122, label %block_400efd, label %block_.L_401134

block_400efd:                                     ; preds = %block_.L_400ef1
  store <4 x i32> zeroinitializer, <4 x i32>* %84, align 1
  %124 = add i64 %87, -56
  %125 = add i64 %123, 8
  store i64 %125, i64* %3, align 8
  %126 = load i64, i64* %76, align 1
  %127 = inttoptr i64 %124 to i64*
  store i64 %126, i64* %127, align 8
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -36
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, 7
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %129 to i32*
  store i32 0, i32* %132, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_400f0c

block_.L_400f0c:                                  ; preds = %block_400f18, %block_400efd
  %133 = phi i64 [ %300, %block_400f18 ], [ %.pre35, %block_400efd ]
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -36
  %136 = add i64 %133, 3
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RAX.i388, align 8
  %140 = add i64 %134, -4
  %141 = add i64 %133, 6
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = sub i32 %138, %143
  %145 = icmp ult i32 %138, %143
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %14, align 1
  %147 = and i32 %144, 255
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147)
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %21, align 1
  %152 = xor i32 %143, %138
  %153 = xor i32 %152, %144
  %154 = lshr i32 %153, 4
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  store i8 %156, i8* %26, align 1
  %157 = icmp eq i32 %144, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %29, align 1
  %159 = lshr i32 %144, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %32, align 1
  %161 = lshr i32 %138, 31
  %162 = lshr i32 %143, 31
  %163 = xor i32 %162, %161
  %164 = xor i32 %159, %161
  %165 = add nuw nsw i32 %164, %163
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %38, align 1
  %168 = icmp ne i8 %160, 0
  %169 = xor i1 %168, %166
  %.v42 = select i1 %169, i64 12, i64 84
  %170 = add i64 %133, %.v42
  store i64 %170, i64* %3, align 8
  br i1 %169, label %block_400f18, label %block_.L_400f60

block_400f18:                                     ; preds = %block_.L_400f0c
  %171 = add i64 %134, -16
  %172 = add i64 %170, 4
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RAX.i388, align 8
  %175 = add i64 %170, 8
  store i64 %175, i64* %3, align 8
  %176 = load i32, i32* %137, align 4
  %177 = sext i32 %176 to i64
  %178 = shl nsw i64 %177, 12
  store i64 %178, i64* %RCX.i395, align 8
  %179 = add i64 %178, %174
  store i64 %179, i64* %RAX.i388, align 8
  %180 = icmp ult i64 %179, %174
  %181 = icmp ult i64 %179, %178
  %182 = or i1 %180, %181
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %14, align 1
  %184 = trunc i64 %179 to i32
  %185 = and i32 %184, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185)
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %21, align 1
  %190 = xor i64 %174, %179
  %191 = lshr i64 %190, 4
  %192 = trunc i64 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %26, align 1
  %194 = icmp eq i64 %179, 0
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %29, align 1
  %196 = lshr i64 %179, 63
  %197 = trunc i64 %196 to i8
  store i8 %197, i8* %32, align 1
  %198 = lshr i64 %174, 63
  %199 = lshr i64 %177, 51
  %200 = and i64 %199, 1
  %201 = xor i64 %196, %198
  %202 = xor i64 %196, %200
  %203 = add nuw nsw i64 %201, %202
  %204 = icmp eq i64 %203, 2
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %38, align 1
  %206 = add i64 %134, -44
  %207 = add i64 %170, 19
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %RCX.i395, align 8
  %211 = shl nsw i64 %210, 3
  %212 = add i64 %211, %179
  %213 = add i64 %170, 24
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %76, align 1
  store double 0.000000e+00, double* %78, align 1
  %216 = add i64 %170, 28
  store i64 %216, i64* %3, align 8
  %217 = load i64, i64* %173, align 8
  store i64 %217, i64* %RAX.i388, align 8
  %218 = add i64 %170, 32
  store i64 %218, i64* %3, align 8
  %219 = load i32, i32* %137, align 4
  %220 = sext i32 %219 to i64
  %221 = shl nsw i64 %220, 12
  store i64 %221, i64* %RCX.i395, align 8
  %222 = add i64 %221, %217
  store i64 %222, i64* %RAX.i388, align 8
  %223 = icmp ult i64 %222, %217
  %224 = icmp ult i64 %222, %221
  %225 = or i1 %223, %224
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %14, align 1
  %227 = trunc i64 %222 to i32
  %228 = and i32 %227, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %21, align 1
  %233 = xor i64 %217, %222
  %234 = lshr i64 %233, 4
  %235 = trunc i64 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %26, align 1
  %237 = icmp eq i64 %222, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %29, align 1
  %239 = lshr i64 %222, 63
  %240 = trunc i64 %239 to i8
  store i8 %240, i8* %32, align 1
  %241 = lshr i64 %217, 63
  %242 = lshr i64 %220, 51
  %243 = and i64 %242, 1
  %244 = xor i64 %239, %241
  %245 = xor i64 %239, %243
  %246 = add nuw nsw i64 %244, %245
  %247 = icmp eq i64 %246, 2
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %38, align 1
  %249 = load i64, i64* %RBP.i, align 8
  %250 = add i64 %249, -44
  %251 = add i64 %170, 43
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  store i64 %254, i64* %RCX.i395, align 8
  %255 = shl nsw i64 %254, 3
  %256 = add i64 %255, %222
  %257 = add i64 %170, 48
  store i64 %257, i64* %3, align 8
  %258 = bitcast i64 %215 to double
  %259 = inttoptr i64 %256 to double*
  %260 = load double, double* %259, align 8
  %261 = fmul double %258, %260
  store double %261, double* %77, align 1
  store i64 0, i64* %75, align 1
  %262 = add i64 %249, -56
  %263 = add i64 %170, 53
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to double*
  %265 = load double, double* %264, align 8
  %266 = fadd double %261, %265
  store double %266, double* %77, align 1
  store i64 0, i64* %75, align 1
  %267 = add i64 %170, 58
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %262 to double*
  store double %266, double* %268, align 8
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -36
  %271 = load i64, i64* %3, align 8
  %272 = add i64 %271, 3
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %270 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = add i32 %274, 1
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RAX.i388, align 8
  %277 = icmp eq i32 %274, -1
  %278 = icmp eq i32 %275, 0
  %279 = or i1 %277, %278
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %14, align 1
  %281 = and i32 %275, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %21, align 1
  %286 = xor i32 %275, %274
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %26, align 1
  %290 = zext i1 %278 to i8
  store i8 %290, i8* %29, align 1
  %291 = lshr i32 %275, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %32, align 1
  %293 = lshr i32 %274, 31
  %294 = xor i32 %291, %293
  %295 = add nuw nsw i32 %294, %291
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %38, align 1
  %298 = add i64 %271, 9
  store i64 %298, i64* %3, align 8
  store i32 %275, i32* %273, align 4
  %299 = load i64, i64* %3, align 8
  %300 = add i64 %299, -79
  store i64 %300, i64* %3, align 8
  br label %block_.L_400f0c

block_.L_400f60:                                  ; preds = %block_.L_400f0c
  %301 = add i64 %134, -56
  %302 = add i64 %170, 5
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %76, align 1
  store double 0.000000e+00, double* %78, align 1
  %305 = add i64 %170, -2352
  %306 = add i64 %170, 10
  %307 = load i64, i64* %6, align 8
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %306, i64* %309, align 8
  store i64 %308, i64* %6, align 8
  store i64 %305, i64* %3, align 8
  %call2_400f65 = tail call %struct.Memory* @sub_400630.sqrt_plt(%struct.State* nonnull %0, i64 %305, %struct.Memory* %MEMORY.0)
  %310 = load i64, i64* %RBP.i, align 8
  %311 = add i64 %310, -24
  %312 = load i64, i64* %3, align 8
  %313 = add i64 %312, 4
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %311 to i64*
  %315 = load i64, i64* %314, align 8
  store i64 %315, i64* %RAX.i388, align 8
  %316 = add i64 %310, -44
  %317 = add i64 %312, 8
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = shl nsw i64 %320, 12
  store i64 %321, i64* %RCX.i395, align 8
  %322 = add i64 %321, %315
  store i64 %322, i64* %RAX.i388, align 8
  %323 = icmp ult i64 %322, %315
  %324 = icmp ult i64 %322, %321
  %325 = or i1 %323, %324
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %14, align 1
  %327 = trunc i64 %322 to i32
  %328 = and i32 %327, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328)
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %21, align 1
  %333 = xor i64 %315, %322
  %334 = lshr i64 %333, 4
  %335 = trunc i64 %334 to i8
  %336 = and i8 %335, 1
  store i8 %336, i8* %26, align 1
  %337 = icmp eq i64 %322, 0
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %29, align 1
  %339 = lshr i64 %322, 63
  %340 = trunc i64 %339 to i8
  store i8 %340, i8* %32, align 1
  %341 = lshr i64 %315, 63
  %342 = lshr i64 %320, 51
  %343 = and i64 %342, 1
  %344 = xor i64 %339, %341
  %345 = xor i64 %339, %343
  %346 = add nuw nsw i64 %344, %345
  %347 = icmp eq i64 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %38, align 1
  %349 = add i64 %312, 19
  store i64 %349, i64* %3, align 8
  %350 = load i32, i32* %318, align 4
  %351 = sext i32 %350 to i64
  store i64 %351, i64* %RCX.i395, align 8
  %352 = shl nsw i64 %351, 3
  %353 = add i64 %352, %322
  %354 = add i64 %312, 24
  store i64 %354, i64* %3, align 8
  %355 = load i64, i64* %76, align 1
  %356 = inttoptr i64 %353 to i64*
  store i64 %355, i64* %356, align 8
  %357 = load i64, i64* %RBP.i, align 8
  %358 = add i64 %357, -36
  %359 = load i64, i64* %3, align 8
  %360 = add i64 %359, 7
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %358 to i32*
  store i32 0, i32* %361, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_400f89

block_.L_400f89:                                  ; preds = %block_400f95, %block_.L_400f60
  %362 = phi i64 [ %568, %block_400f95 ], [ %.pre36, %block_.L_400f60 ]
  %363 = load i64, i64* %RBP.i, align 8
  %364 = add i64 %363, -36
  %365 = add i64 %362, 3
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RAX.i388, align 8
  %369 = add i64 %363, -4
  %370 = add i64 %362, 6
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = sub i32 %367, %372
  %374 = icmp ult i32 %367, %372
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %14, align 1
  %376 = and i32 %373, 255
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376)
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  store i8 %380, i8* %21, align 1
  %381 = xor i32 %372, %367
  %382 = xor i32 %381, %373
  %383 = lshr i32 %382, 4
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  store i8 %385, i8* %26, align 1
  %386 = icmp eq i32 %373, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %29, align 1
  %388 = lshr i32 %373, 31
  %389 = trunc i32 %388 to i8
  store i8 %389, i8* %32, align 1
  %390 = lshr i32 %367, 31
  %391 = lshr i32 %372, 31
  %392 = xor i32 %391, %390
  %393 = xor i32 %388, %390
  %394 = add nuw nsw i32 %393, %392
  %395 = icmp eq i32 %394, 2
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %38, align 1
  %397 = icmp ne i8 %389, 0
  %398 = xor i1 %397, %395
  %.v43 = select i1 %398, i64 12, i64 98
  %399 = add i64 %362, %.v43
  store i64 %399, i64* %3, align 8
  br i1 %398, label %block_400f95, label %block_.L_400feb

block_400f95:                                     ; preds = %block_.L_400f89
  %400 = add i64 %363, -16
  %401 = add i64 %399, 4
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i64*
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %RAX.i388, align 8
  %404 = add i64 %399, 8
  store i64 %404, i64* %3, align 8
  %405 = load i32, i32* %366, align 4
  %406 = sext i32 %405 to i64
  %407 = shl nsw i64 %406, 12
  store i64 %407, i64* %RCX.i395, align 8
  %408 = add i64 %407, %403
  store i64 %408, i64* %RAX.i388, align 8
  %409 = icmp ult i64 %408, %403
  %410 = icmp ult i64 %408, %407
  %411 = or i1 %409, %410
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %14, align 1
  %413 = trunc i64 %408 to i32
  %414 = and i32 %413, 255
  %415 = tail call i32 @llvm.ctpop.i32(i32 %414)
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  store i8 %418, i8* %21, align 1
  %419 = xor i64 %403, %408
  %420 = lshr i64 %419, 4
  %421 = trunc i64 %420 to i8
  %422 = and i8 %421, 1
  store i8 %422, i8* %26, align 1
  %423 = icmp eq i64 %408, 0
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %29, align 1
  %425 = lshr i64 %408, 63
  %426 = trunc i64 %425 to i8
  store i8 %426, i8* %32, align 1
  %427 = lshr i64 %403, 63
  %428 = lshr i64 %406, 51
  %429 = and i64 %428, 1
  %430 = xor i64 %425, %427
  %431 = xor i64 %425, %429
  %432 = add nuw nsw i64 %430, %431
  %433 = icmp eq i64 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %38, align 1
  %435 = add i64 %363, -44
  %436 = add i64 %399, 19
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = sext i32 %438 to i64
  store i64 %439, i64* %RCX.i395, align 8
  %440 = shl nsw i64 %439, 3
  %441 = add i64 %440, %408
  %442 = add i64 %399, 24
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i64*
  %444 = load i64, i64* %443, align 8
  store i64 %444, i64* %76, align 1
  store double 0.000000e+00, double* %78, align 1
  %445 = add i64 %363, -24
  %446 = add i64 %399, 28
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RAX.i388, align 8
  %449 = add i64 %399, 32
  store i64 %449, i64* %3, align 8
  %450 = load i32, i32* %437, align 4
  %451 = sext i32 %450 to i64
  %452 = shl nsw i64 %451, 12
  store i64 %452, i64* %RCX.i395, align 8
  %453 = add i64 %452, %448
  store i64 %453, i64* %RAX.i388, align 8
  %454 = icmp ult i64 %453, %448
  %455 = icmp ult i64 %453, %452
  %456 = or i1 %454, %455
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %14, align 1
  %458 = trunc i64 %453 to i32
  %459 = and i32 %458, 255
  %460 = tail call i32 @llvm.ctpop.i32(i32 %459)
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  store i8 %463, i8* %21, align 1
  %464 = xor i64 %448, %453
  %465 = lshr i64 %464, 4
  %466 = trunc i64 %465 to i8
  %467 = and i8 %466, 1
  store i8 %467, i8* %26, align 1
  %468 = icmp eq i64 %453, 0
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %29, align 1
  %470 = lshr i64 %453, 63
  %471 = trunc i64 %470 to i8
  store i8 %471, i8* %32, align 1
  %472 = lshr i64 %448, 63
  %473 = lshr i64 %451, 51
  %474 = and i64 %473, 1
  %475 = xor i64 %470, %472
  %476 = xor i64 %470, %474
  %477 = add nuw nsw i64 %475, %476
  %478 = icmp eq i64 %477, 2
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %38, align 1
  %480 = load i64, i64* %RBP.i, align 8
  %481 = add i64 %480, -44
  %482 = add i64 %399, 43
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i32*
  %484 = load i32, i32* %483, align 4
  %485 = sext i32 %484 to i64
  store i64 %485, i64* %RCX.i395, align 8
  %486 = shl nsw i64 %485, 3
  %487 = add i64 %486, %453
  %488 = add i64 %399, 48
  store i64 %488, i64* %3, align 8
  %489 = bitcast i64 %444 to double
  %490 = inttoptr i64 %487 to double*
  %491 = load double, double* %490, align 8
  %492 = fdiv double %489, %491
  store double %492, double* %77, align 1
  store i64 0, i64* %75, align 1
  %493 = add i64 %480, -32
  %494 = add i64 %399, 52
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %RAX.i388, align 8
  %497 = add i64 %480, -36
  %498 = add i64 %399, 56
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = sext i32 %500 to i64
  %502 = shl nsw i64 %501, 12
  store i64 %502, i64* %RCX.i395, align 8
  %503 = add i64 %502, %496
  store i64 %503, i64* %RAX.i388, align 8
  %504 = icmp ult i64 %503, %496
  %505 = icmp ult i64 %503, %502
  %506 = or i1 %504, %505
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %14, align 1
  %508 = trunc i64 %503 to i32
  %509 = and i32 %508, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %21, align 1
  %514 = xor i64 %496, %503
  %515 = lshr i64 %514, 4
  %516 = trunc i64 %515 to i8
  %517 = and i8 %516, 1
  store i8 %517, i8* %26, align 1
  %518 = icmp eq i64 %503, 0
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %29, align 1
  %520 = lshr i64 %503, 63
  %521 = trunc i64 %520 to i8
  store i8 %521, i8* %32, align 1
  %522 = lshr i64 %496, 63
  %523 = lshr i64 %501, 51
  %524 = and i64 %523, 1
  %525 = xor i64 %520, %522
  %526 = xor i64 %520, %524
  %527 = add nuw nsw i64 %525, %526
  %528 = icmp eq i64 %527, 2
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %38, align 1
  %530 = add i64 %399, 67
  store i64 %530, i64* %3, align 8
  %531 = load i32, i32* %483, align 4
  %532 = sext i32 %531 to i64
  store i64 %532, i64* %RCX.i395, align 8
  %533 = shl nsw i64 %532, 3
  %534 = add i64 %533, %503
  %535 = add i64 %399, 72
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to double*
  store double %492, double* %536, align 8
  %537 = load i64, i64* %RBP.i, align 8
  %538 = add i64 %537, -36
  %539 = load i64, i64* %3, align 8
  %540 = add i64 %539, 3
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %538 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = add i32 %542, 1
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %RAX.i388, align 8
  %545 = icmp eq i32 %542, -1
  %546 = icmp eq i32 %543, 0
  %547 = or i1 %545, %546
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %14, align 1
  %549 = and i32 %543, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %21, align 1
  %554 = xor i32 %543, %542
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  store i8 %557, i8* %26, align 1
  %558 = zext i1 %546 to i8
  store i8 %558, i8* %29, align 1
  %559 = lshr i32 %543, 31
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %32, align 1
  %561 = lshr i32 %542, 31
  %562 = xor i32 %559, %561
  %563 = add nuw nsw i32 %562, %559
  %564 = icmp eq i32 %563, 2
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %38, align 1
  %566 = add i64 %539, 9
  store i64 %566, i64* %3, align 8
  store i32 %543, i32* %541, align 4
  %567 = load i64, i64* %3, align 8
  %568 = add i64 %567, -93
  store i64 %568, i64* %3, align 8
  br label %block_.L_400f89

block_.L_400feb:                                  ; preds = %block_.L_400f89
  %569 = add i64 %363, -44
  %570 = add i64 %399, 3
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = add i32 %572, 1
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RAX.i388, align 8
  %575 = icmp eq i32 %572, -1
  %576 = icmp eq i32 %573, 0
  %577 = or i1 %575, %576
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %14, align 1
  %579 = and i32 %573, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %21, align 1
  %584 = xor i32 %573, %572
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %26, align 1
  %588 = zext i1 %576 to i8
  store i8 %588, i8* %29, align 1
  %589 = lshr i32 %573, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %32, align 1
  %591 = lshr i32 %572, 31
  %592 = xor i32 %589, %591
  %593 = add nuw nsw i32 %592, %589
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %38, align 1
  %596 = add i64 %363, -40
  %597 = add i64 %399, 9
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  store i32 %573, i32* %598, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_400ff4

block_.L_400ff4:                                  ; preds = %block_.L_40110e, %block_.L_400feb
  %599 = phi i64 [ %1185, %block_.L_40110e ], [ %.pre37, %block_.L_400feb ]
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -40
  %602 = add i64 %599, 3
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RAX.i388, align 8
  %606 = add i64 %600, -8
  %607 = add i64 %599, 6
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = sub i32 %604, %609
  %611 = icmp ult i32 %604, %609
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %14, align 1
  %613 = and i32 %610, 255
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %21, align 1
  %618 = xor i32 %609, %604
  %619 = xor i32 %618, %610
  %620 = lshr i32 %619, 4
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  store i8 %622, i8* %26, align 1
  %623 = icmp eq i32 %610, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %29, align 1
  %625 = lshr i32 %610, 31
  %626 = trunc i32 %625 to i8
  store i8 %626, i8* %32, align 1
  %627 = lshr i32 %604, 31
  %628 = lshr i32 %609, 31
  %629 = xor i32 %628, %627
  %630 = xor i32 %625, %627
  %631 = add nuw nsw i32 %630, %629
  %632 = icmp eq i32 %631, 2
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %38, align 1
  %634 = icmp ne i8 %626, 0
  %635 = xor i1 %634, %632
  %.v = select i1 %635, i64 12, i64 301
  %636 = add i64 %599, %.v
  store i64 %636, i64* %3, align 8
  br i1 %635, label %block_401000, label %block_.L_401121

block_401000:                                     ; preds = %block_.L_400ff4
  store <4 x i32> zeroinitializer, <4 x i32>* %85, align 1
  %637 = add i64 %600, -24
  %638 = add i64 %636, 7
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i64*
  %640 = load i64, i64* %639, align 8
  store i64 %640, i64* %RAX.i388, align 8
  %641 = add i64 %600, -44
  %642 = add i64 %636, 11
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = sext i32 %644 to i64
  %646 = shl nsw i64 %645, 12
  store i64 %646, i64* %RCX.i395, align 8
  %647 = add i64 %646, %640
  store i64 %647, i64* %RAX.i388, align 8
  %648 = icmp ult i64 %647, %640
  %649 = icmp ult i64 %647, %646
  %650 = or i1 %648, %649
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %14, align 1
  %652 = trunc i64 %647 to i32
  %653 = and i32 %652, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %21, align 1
  %658 = xor i64 %640, %647
  %659 = lshr i64 %658, 4
  %660 = trunc i64 %659 to i8
  %661 = and i8 %660, 1
  store i8 %661, i8* %26, align 1
  %662 = icmp eq i64 %647, 0
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %29, align 1
  %664 = lshr i64 %647, 63
  %665 = trunc i64 %664 to i8
  store i8 %665, i8* %32, align 1
  %666 = lshr i64 %640, 63
  %667 = lshr i64 %645, 51
  %668 = and i64 %667, 1
  %669 = xor i64 %664, %666
  %670 = xor i64 %664, %668
  %671 = add nuw nsw i64 %669, %670
  %672 = icmp eq i64 %671, 2
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %38, align 1
  %674 = add i64 %636, 22
  store i64 %674, i64* %3, align 8
  %675 = load i32, i32* %603, align 4
  %676 = sext i32 %675 to i64
  store i64 %676, i64* %RCX.i395, align 8
  %677 = shl nsw i64 %676, 3
  %678 = add i64 %677, %647
  %679 = add i64 %636, 27
  store i64 %679, i64* %3, align 8
  %680 = load i64, i64* %76, align 1
  %681 = inttoptr i64 %678 to i64*
  store i64 %680, i64* %681, align 8
  %682 = load i64, i64* %RBP.i, align 8
  %683 = add i64 %682, -36
  %684 = load i64, i64* %3, align 8
  %685 = add i64 %684, 7
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %683 to i32*
  store i32 0, i32* %686, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_401022

block_.L_401022:                                  ; preds = %block_40102e, %block_401000
  %687 = phi i64 [ %897, %block_40102e ], [ %.pre38, %block_401000 ]
  %688 = load i64, i64* %RBP.i, align 8
  %689 = add i64 %688, -36
  %690 = add i64 %687, 3
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RAX.i388, align 8
  %694 = add i64 %688, -4
  %695 = add i64 %687, 6
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i32*
  %697 = load i32, i32* %696, align 4
  %698 = sub i32 %692, %697
  %699 = icmp ult i32 %692, %697
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %14, align 1
  %701 = and i32 %698, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701)
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %21, align 1
  %706 = xor i32 %697, %692
  %707 = xor i32 %706, %698
  %708 = lshr i32 %707, 4
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  store i8 %710, i8* %26, align 1
  %711 = icmp eq i32 %698, 0
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %29, align 1
  %713 = lshr i32 %698, 31
  %714 = trunc i32 %713 to i8
  store i8 %714, i8* %32, align 1
  %715 = lshr i32 %692, 31
  %716 = lshr i32 %697, 31
  %717 = xor i32 %716, %715
  %718 = xor i32 %713, %715
  %719 = add nuw nsw i32 %718, %717
  %720 = icmp eq i32 %719, 2
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %38, align 1
  %722 = icmp ne i8 %714, 0
  %723 = xor i1 %722, %720
  %.v44 = select i1 %723, i64 12, i64 103
  %724 = add i64 %687, %.v44
  store i64 %724, i64* %3, align 8
  br i1 %723, label %block_40102e, label %block_.L_401089

block_40102e:                                     ; preds = %block_.L_401022
  %725 = add i64 %688, -32
  %726 = add i64 %724, 4
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i64*
  %728 = load i64, i64* %727, align 8
  store i64 %728, i64* %RAX.i388, align 8
  %729 = add i64 %724, 8
  store i64 %729, i64* %3, align 8
  %730 = load i32, i32* %691, align 4
  %731 = sext i32 %730 to i64
  %732 = shl nsw i64 %731, 12
  store i64 %732, i64* %RCX.i395, align 8
  %733 = add i64 %732, %728
  store i64 %733, i64* %RAX.i388, align 8
  %734 = icmp ult i64 %733, %728
  %735 = icmp ult i64 %733, %732
  %736 = or i1 %734, %735
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %14, align 1
  %738 = trunc i64 %733 to i32
  %739 = and i32 %738, 255
  %740 = tail call i32 @llvm.ctpop.i32(i32 %739)
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  store i8 %743, i8* %21, align 1
  %744 = xor i64 %728, %733
  %745 = lshr i64 %744, 4
  %746 = trunc i64 %745 to i8
  %747 = and i8 %746, 1
  store i8 %747, i8* %26, align 1
  %748 = icmp eq i64 %733, 0
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %29, align 1
  %750 = lshr i64 %733, 63
  %751 = trunc i64 %750 to i8
  store i8 %751, i8* %32, align 1
  %752 = lshr i64 %728, 63
  %753 = lshr i64 %731, 51
  %754 = and i64 %753, 1
  %755 = xor i64 %750, %752
  %756 = xor i64 %750, %754
  %757 = add nuw nsw i64 %755, %756
  %758 = icmp eq i64 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %38, align 1
  %760 = add i64 %688, -44
  %761 = add i64 %724, 19
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i32*
  %763 = load i32, i32* %762, align 4
  %764 = sext i32 %763 to i64
  store i64 %764, i64* %RCX.i395, align 8
  %765 = shl nsw i64 %764, 3
  %766 = add i64 %765, %733
  %767 = add i64 %724, 24
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %766 to i64*
  %769 = load i64, i64* %768, align 8
  store i64 %769, i64* %76, align 1
  store double 0.000000e+00, double* %78, align 1
  %770 = add i64 %688, -16
  %771 = add i64 %724, 28
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i64*
  %773 = load i64, i64* %772, align 8
  store i64 %773, i64* %RAX.i388, align 8
  %774 = add i64 %724, 32
  store i64 %774, i64* %3, align 8
  %775 = load i32, i32* %691, align 4
  %776 = sext i32 %775 to i64
  %777 = shl nsw i64 %776, 12
  store i64 %777, i64* %RCX.i395, align 8
  %778 = add i64 %777, %773
  store i64 %778, i64* %RAX.i388, align 8
  %779 = icmp ult i64 %778, %773
  %780 = icmp ult i64 %778, %777
  %781 = or i1 %779, %780
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %14, align 1
  %783 = trunc i64 %778 to i32
  %784 = and i32 %783, 255
  %785 = tail call i32 @llvm.ctpop.i32(i32 %784)
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = xor i8 %787, 1
  store i8 %788, i8* %21, align 1
  %789 = xor i64 %773, %778
  %790 = lshr i64 %789, 4
  %791 = trunc i64 %790 to i8
  %792 = and i8 %791, 1
  store i8 %792, i8* %26, align 1
  %793 = icmp eq i64 %778, 0
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %29, align 1
  %795 = lshr i64 %778, 63
  %796 = trunc i64 %795 to i8
  store i8 %796, i8* %32, align 1
  %797 = lshr i64 %773, 63
  %798 = lshr i64 %776, 51
  %799 = and i64 %798, 1
  %800 = xor i64 %795, %797
  %801 = xor i64 %795, %799
  %802 = add nuw nsw i64 %800, %801
  %803 = icmp eq i64 %802, 2
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %38, align 1
  %805 = load i64, i64* %RBP.i, align 8
  %806 = add i64 %805, -40
  %807 = add i64 %724, 43
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i32*
  %809 = load i32, i32* %808, align 4
  %810 = sext i32 %809 to i64
  store i64 %810, i64* %RCX.i395, align 8
  %811 = shl nsw i64 %810, 3
  %812 = add i64 %811, %778
  %813 = add i64 %724, 48
  store i64 %813, i64* %3, align 8
  %814 = bitcast i64 %769 to double
  %815 = inttoptr i64 %812 to double*
  %816 = load double, double* %815, align 8
  %817 = fmul double %814, %816
  store double %817, double* %77, align 1
  store i64 0, i64* %75, align 1
  %818 = add i64 %805, -24
  %819 = add i64 %724, 52
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i64*
  %821 = load i64, i64* %820, align 8
  store i64 %821, i64* %RAX.i388, align 8
  %822 = add i64 %805, -44
  %823 = add i64 %724, 56
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = sext i32 %825 to i64
  %827 = shl nsw i64 %826, 12
  store i64 %827, i64* %RCX.i395, align 8
  %828 = add i64 %827, %821
  store i64 %828, i64* %RAX.i388, align 8
  %829 = icmp ult i64 %828, %821
  %830 = icmp ult i64 %828, %827
  %831 = or i1 %829, %830
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %14, align 1
  %833 = trunc i64 %828 to i32
  %834 = and i32 %833, 255
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  store i8 %838, i8* %21, align 1
  %839 = xor i64 %821, %828
  %840 = lshr i64 %839, 4
  %841 = trunc i64 %840 to i8
  %842 = and i8 %841, 1
  store i8 %842, i8* %26, align 1
  %843 = icmp eq i64 %828, 0
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %29, align 1
  %845 = lshr i64 %828, 63
  %846 = trunc i64 %845 to i8
  store i8 %846, i8* %32, align 1
  %847 = lshr i64 %821, 63
  %848 = lshr i64 %826, 51
  %849 = and i64 %848, 1
  %850 = xor i64 %845, %847
  %851 = xor i64 %845, %849
  %852 = add nuw nsw i64 %850, %851
  %853 = icmp eq i64 %852, 2
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %38, align 1
  %855 = add i64 %724, 67
  store i64 %855, i64* %3, align 8
  %856 = load i32, i32* %808, align 4
  %857 = sext i32 %856 to i64
  store i64 %857, i64* %RCX.i395, align 8
  %858 = shl nsw i64 %857, 3
  %859 = add i64 %858, %828
  %860 = add i64 %724, 72
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to double*
  %862 = load double, double* %861, align 8
  %863 = fadd double %817, %862
  store double %863, double* %77, align 1
  store i64 0, i64* %75, align 1
  %864 = add i64 %724, 77
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %859 to double*
  store double %863, double* %865, align 8
  %866 = load i64, i64* %RBP.i, align 8
  %867 = add i64 %866, -36
  %868 = load i64, i64* %3, align 8
  %869 = add i64 %868, 3
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %867 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = add i32 %871, 1
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RAX.i388, align 8
  %874 = icmp eq i32 %871, -1
  %875 = icmp eq i32 %872, 0
  %876 = or i1 %874, %875
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %14, align 1
  %878 = and i32 %872, 255
  %879 = tail call i32 @llvm.ctpop.i32(i32 %878)
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  store i8 %882, i8* %21, align 1
  %883 = xor i32 %872, %871
  %884 = lshr i32 %883, 4
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %26, align 1
  %887 = zext i1 %875 to i8
  store i8 %887, i8* %29, align 1
  %888 = lshr i32 %872, 31
  %889 = trunc i32 %888 to i8
  store i8 %889, i8* %32, align 1
  %890 = lshr i32 %871, 31
  %891 = xor i32 %888, %890
  %892 = add nuw nsw i32 %891, %888
  %893 = icmp eq i32 %892, 2
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %38, align 1
  %895 = add i64 %868, 9
  store i64 %895, i64* %3, align 8
  store i32 %872, i32* %870, align 4
  %896 = load i64, i64* %3, align 8
  %897 = add i64 %896, -98
  store i64 %897, i64* %3, align 8
  br label %block_.L_401022

block_.L_401089:                                  ; preds = %block_.L_401022
  %898 = add i64 %724, 7
  store i64 %898, i64* %3, align 8
  store i32 0, i32* %691, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_401090

block_.L_401090:                                  ; preds = %block_40109c, %block_.L_401089
  %899 = phi i64 [ %1155, %block_40109c ], [ %.pre39, %block_.L_401089 ]
  %900 = load i64, i64* %RBP.i, align 8
  %901 = add i64 %900, -36
  %902 = add i64 %899, 3
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  %904 = load i32, i32* %903, align 4
  %905 = zext i32 %904 to i64
  store i64 %905, i64* %RAX.i388, align 8
  %906 = add i64 %900, -4
  %907 = add i64 %899, 6
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i32*
  %909 = load i32, i32* %908, align 4
  %910 = sub i32 %904, %909
  %911 = icmp ult i32 %904, %909
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %14, align 1
  %913 = and i32 %910, 255
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  store i8 %917, i8* %21, align 1
  %918 = xor i32 %909, %904
  %919 = xor i32 %918, %910
  %920 = lshr i32 %919, 4
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  store i8 %922, i8* %26, align 1
  %923 = icmp eq i32 %910, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %29, align 1
  %925 = lshr i32 %910, 31
  %926 = trunc i32 %925 to i8
  store i8 %926, i8* %32, align 1
  %927 = lshr i32 %904, 31
  %928 = lshr i32 %909, 31
  %929 = xor i32 %928, %927
  %930 = xor i32 %925, %927
  %931 = add nuw nsw i32 %930, %929
  %932 = icmp eq i32 %931, 2
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %38, align 1
  %934 = icmp ne i8 %926, 0
  %935 = xor i1 %934, %932
  %.v40 = select i1 %935, i64 12, i64 126
  %936 = add i64 %899, %.v40
  store i64 %936, i64* %3, align 8
  br i1 %935, label %block_40109c, label %block_.L_40110e

block_40109c:                                     ; preds = %block_.L_401090
  %937 = add i64 %900, -16
  %938 = add i64 %936, 4
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i64*
  %940 = load i64, i64* %939, align 8
  store i64 %940, i64* %RAX.i388, align 8
  %941 = add i64 %936, 8
  store i64 %941, i64* %3, align 8
  %942 = load i32, i32* %903, align 4
  %943 = sext i32 %942 to i64
  %944 = shl nsw i64 %943, 12
  store i64 %944, i64* %RCX.i395, align 8
  %945 = add i64 %944, %940
  store i64 %945, i64* %RAX.i388, align 8
  %946 = icmp ult i64 %945, %940
  %947 = icmp ult i64 %945, %944
  %948 = or i1 %946, %947
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %14, align 1
  %950 = trunc i64 %945 to i32
  %951 = and i32 %950, 255
  %952 = tail call i32 @llvm.ctpop.i32(i32 %951)
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = xor i8 %954, 1
  store i8 %955, i8* %21, align 1
  %956 = xor i64 %940, %945
  %957 = lshr i64 %956, 4
  %958 = trunc i64 %957 to i8
  %959 = and i8 %958, 1
  store i8 %959, i8* %26, align 1
  %960 = icmp eq i64 %945, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %29, align 1
  %962 = lshr i64 %945, 63
  %963 = trunc i64 %962 to i8
  store i8 %963, i8* %32, align 1
  %964 = lshr i64 %940, 63
  %965 = lshr i64 %943, 51
  %966 = and i64 %965, 1
  %967 = xor i64 %962, %964
  %968 = xor i64 %962, %966
  %969 = add nuw nsw i64 %967, %968
  %970 = icmp eq i64 %969, 2
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %38, align 1
  %972 = add i64 %900, -40
  %973 = add i64 %936, 19
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i32*
  %975 = load i32, i32* %974, align 4
  %976 = sext i32 %975 to i64
  store i64 %976, i64* %RCX.i395, align 8
  %977 = shl nsw i64 %976, 3
  %978 = add i64 %977, %945
  %979 = add i64 %936, 24
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i64*
  %981 = load i64, i64* %980, align 8
  store i64 %981, i64* %76, align 1
  store double 0.000000e+00, double* %78, align 1
  %982 = add i64 %900, -32
  %983 = add i64 %936, 28
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i64*
  %985 = load i64, i64* %984, align 8
  store i64 %985, i64* %RAX.i388, align 8
  %986 = add i64 %936, 32
  store i64 %986, i64* %3, align 8
  %987 = load i32, i32* %903, align 4
  %988 = sext i32 %987 to i64
  %989 = shl nsw i64 %988, 12
  store i64 %989, i64* %RCX.i395, align 8
  %990 = add i64 %989, %985
  store i64 %990, i64* %RAX.i388, align 8
  %991 = icmp ult i64 %990, %985
  %992 = icmp ult i64 %990, %989
  %993 = or i1 %991, %992
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %14, align 1
  %995 = trunc i64 %990 to i32
  %996 = and i32 %995, 255
  %997 = tail call i32 @llvm.ctpop.i32(i32 %996)
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = xor i8 %999, 1
  store i8 %1000, i8* %21, align 1
  %1001 = xor i64 %985, %990
  %1002 = lshr i64 %1001, 4
  %1003 = trunc i64 %1002 to i8
  %1004 = and i8 %1003, 1
  store i8 %1004, i8* %26, align 1
  %1005 = icmp eq i64 %990, 0
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %29, align 1
  %1007 = lshr i64 %990, 63
  %1008 = trunc i64 %1007 to i8
  store i8 %1008, i8* %32, align 1
  %1009 = lshr i64 %985, 63
  %1010 = lshr i64 %988, 51
  %1011 = and i64 %1010, 1
  %1012 = xor i64 %1007, %1009
  %1013 = xor i64 %1007, %1011
  %1014 = add nuw nsw i64 %1012, %1013
  %1015 = icmp eq i64 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %38, align 1
  %1017 = load i64, i64* %RBP.i, align 8
  %1018 = add i64 %1017, -44
  %1019 = add i64 %936, 43
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i32*
  %1021 = load i32, i32* %1020, align 4
  %1022 = sext i32 %1021 to i64
  store i64 %1022, i64* %RCX.i395, align 8
  %1023 = shl nsw i64 %1022, 3
  %1024 = add i64 %1023, %990
  %1025 = add i64 %936, 48
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i64*
  %1027 = load i64, i64* %1026, align 8
  store i64 %1027, i64* %81, align 1
  store double 0.000000e+00, double* %83, align 1
  %1028 = add i64 %1017, -24
  %1029 = add i64 %936, 52
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i64*
  %1031 = load i64, i64* %1030, align 8
  store i64 %1031, i64* %RAX.i388, align 8
  %1032 = add i64 %936, 56
  store i64 %1032, i64* %3, align 8
  %1033 = load i32, i32* %1020, align 4
  %1034 = sext i32 %1033 to i64
  %1035 = shl nsw i64 %1034, 12
  store i64 %1035, i64* %RCX.i395, align 8
  %1036 = add i64 %1035, %1031
  store i64 %1036, i64* %RAX.i388, align 8
  %1037 = icmp ult i64 %1036, %1031
  %1038 = icmp ult i64 %1036, %1035
  %1039 = or i1 %1037, %1038
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %14, align 1
  %1041 = trunc i64 %1036 to i32
  %1042 = and i32 %1041, 255
  %1043 = tail call i32 @llvm.ctpop.i32(i32 %1042)
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = xor i8 %1045, 1
  store i8 %1046, i8* %21, align 1
  %1047 = xor i64 %1031, %1036
  %1048 = lshr i64 %1047, 4
  %1049 = trunc i64 %1048 to i8
  %1050 = and i8 %1049, 1
  store i8 %1050, i8* %26, align 1
  %1051 = icmp eq i64 %1036, 0
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %29, align 1
  %1053 = lshr i64 %1036, 63
  %1054 = trunc i64 %1053 to i8
  store i8 %1054, i8* %32, align 1
  %1055 = lshr i64 %1031, 63
  %1056 = lshr i64 %1034, 51
  %1057 = and i64 %1056, 1
  %1058 = xor i64 %1053, %1055
  %1059 = xor i64 %1053, %1057
  %1060 = add nuw nsw i64 %1058, %1059
  %1061 = icmp eq i64 %1060, 2
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %38, align 1
  %1063 = add i64 %1017, -40
  %1064 = add i64 %936, 67
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1063 to i32*
  %1066 = load i32, i32* %1065, align 4
  %1067 = sext i32 %1066 to i64
  store i64 %1067, i64* %RCX.i395, align 8
  %1068 = shl nsw i64 %1067, 3
  %1069 = add i64 %1068, %1036
  %1070 = add i64 %936, 72
  store i64 %1070, i64* %3, align 8
  %1071 = bitcast i64 %1027 to double
  %1072 = inttoptr i64 %1069 to double*
  %1073 = load double, double* %1072, align 8
  %1074 = fmul double %1071, %1073
  store double %1074, double* %80, align 1
  store i64 0, i64* %82, align 1
  %1075 = load double, double* %77, align 1
  %1076 = fsub double %1075, %1074
  store double %1076, double* %77, align 1
  %1077 = load i64, i64* %RBP.i, align 8
  %1078 = add i64 %1077, -16
  %1079 = add i64 %936, 80
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i64*
  %1081 = load i64, i64* %1080, align 8
  store i64 %1081, i64* %RAX.i388, align 8
  %1082 = add i64 %1077, -36
  %1083 = add i64 %936, 84
  store i64 %1083, i64* %3, align 8
  %1084 = inttoptr i64 %1082 to i32*
  %1085 = load i32, i32* %1084, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = shl nsw i64 %1086, 12
  store i64 %1087, i64* %RCX.i395, align 8
  %1088 = add i64 %1087, %1081
  store i64 %1088, i64* %RAX.i388, align 8
  %1089 = icmp ult i64 %1088, %1081
  %1090 = icmp ult i64 %1088, %1087
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
  %1099 = xor i64 %1081, %1088
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
  %1107 = lshr i64 %1081, 63
  %1108 = lshr i64 %1086, 51
  %1109 = and i64 %1108, 1
  %1110 = xor i64 %1105, %1107
  %1111 = xor i64 %1105, %1109
  %1112 = add nuw nsw i64 %1110, %1111
  %1113 = icmp eq i64 %1112, 2
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %38, align 1
  %1115 = add i64 %1077, -40
  %1116 = add i64 %936, 95
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i32*
  %1118 = load i32, i32* %1117, align 4
  %1119 = sext i32 %1118 to i64
  store i64 %1119, i64* %RCX.i395, align 8
  %1120 = shl nsw i64 %1119, 3
  %1121 = add i64 %1120, %1088
  %1122 = add i64 %936, 100
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to double*
  store double %1076, double* %1123, align 8
  %1124 = load i64, i64* %RBP.i, align 8
  %1125 = add i64 %1124, -36
  %1126 = load i64, i64* %3, align 8
  %1127 = add i64 %1126, 3
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1125 to i32*
  %1129 = load i32, i32* %1128, align 4
  %1130 = add i32 %1129, 1
  %1131 = zext i32 %1130 to i64
  store i64 %1131, i64* %RAX.i388, align 8
  %1132 = icmp eq i32 %1129, -1
  %1133 = icmp eq i32 %1130, 0
  %1134 = or i1 %1132, %1133
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %14, align 1
  %1136 = and i32 %1130, 255
  %1137 = tail call i32 @llvm.ctpop.i32(i32 %1136)
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  %1140 = xor i8 %1139, 1
  store i8 %1140, i8* %21, align 1
  %1141 = xor i32 %1130, %1129
  %1142 = lshr i32 %1141, 4
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  store i8 %1144, i8* %26, align 1
  %1145 = zext i1 %1133 to i8
  store i8 %1145, i8* %29, align 1
  %1146 = lshr i32 %1130, 31
  %1147 = trunc i32 %1146 to i8
  store i8 %1147, i8* %32, align 1
  %1148 = lshr i32 %1129, 31
  %1149 = xor i32 %1146, %1148
  %1150 = add nuw nsw i32 %1149, %1146
  %1151 = icmp eq i32 %1150, 2
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %38, align 1
  %1153 = add i64 %1126, 9
  store i64 %1153, i64* %3, align 8
  store i32 %1130, i32* %1128, align 4
  %1154 = load i64, i64* %3, align 8
  %1155 = add i64 %1154, -121
  store i64 %1155, i64* %3, align 8
  br label %block_.L_401090

block_.L_40110e:                                  ; preds = %block_.L_401090
  %1156 = add i64 %900, -40
  %1157 = add i64 %936, 8
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = add i32 %1159, 1
  %1161 = zext i32 %1160 to i64
  store i64 %1161, i64* %RAX.i388, align 8
  %1162 = icmp eq i32 %1159, -1
  %1163 = icmp eq i32 %1160, 0
  %1164 = or i1 %1162, %1163
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %14, align 1
  %1166 = and i32 %1160, 255
  %1167 = tail call i32 @llvm.ctpop.i32(i32 %1166)
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  %1170 = xor i8 %1169, 1
  store i8 %1170, i8* %21, align 1
  %1171 = xor i32 %1160, %1159
  %1172 = lshr i32 %1171, 4
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  store i8 %1174, i8* %26, align 1
  %1175 = zext i1 %1163 to i8
  store i8 %1175, i8* %29, align 1
  %1176 = lshr i32 %1160, 31
  %1177 = trunc i32 %1176 to i8
  store i8 %1177, i8* %32, align 1
  %1178 = lshr i32 %1159, 31
  %1179 = xor i32 %1176, %1178
  %1180 = add nuw nsw i32 %1179, %1176
  %1181 = icmp eq i32 %1180, 2
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %38, align 1
  %1183 = add i64 %936, 14
  store i64 %1183, i64* %3, align 8
  store i32 %1160, i32* %1158, align 4
  %1184 = load i64, i64* %3, align 8
  %1185 = add i64 %1184, -296
  store i64 %1185, i64* %3, align 8
  br label %block_.L_400ff4

block_.L_401121:                                  ; preds = %block_.L_400ff4
  %1186 = add i64 %600, -44
  %1187 = add i64 %636, 8
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i32*
  %1189 = load i32, i32* %1188, align 4
  %1190 = add i32 %1189, 1
  %1191 = zext i32 %1190 to i64
  store i64 %1191, i64* %RAX.i388, align 8
  %1192 = icmp eq i32 %1189, -1
  %1193 = icmp eq i32 %1190, 0
  %1194 = or i1 %1192, %1193
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %14, align 1
  %1196 = and i32 %1190, 255
  %1197 = tail call i32 @llvm.ctpop.i32(i32 %1196)
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  %1200 = xor i8 %1199, 1
  store i8 %1200, i8* %21, align 1
  %1201 = xor i32 %1190, %1189
  %1202 = lshr i32 %1201, 4
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  store i8 %1204, i8* %26, align 1
  %1205 = zext i1 %1193 to i8
  store i8 %1205, i8* %29, align 1
  %1206 = lshr i32 %1190, 31
  %1207 = trunc i32 %1206 to i8
  store i8 %1207, i8* %32, align 1
  %1208 = lshr i32 %1189, 31
  %1209 = xor i32 %1206, %1208
  %1210 = add nuw nsw i32 %1209, %1206
  %1211 = icmp eq i32 %1210, 2
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %38, align 1
  %1213 = add i64 %636, 14
  store i64 %1213, i64* %3, align 8
  store i32 %1190, i32* %1188, align 4
  %1214 = load i64, i64* %3, align 8
  %1215 = add i64 %1214, -574
  store i64 %1215, i64* %3, align 8
  br label %block_.L_400ef1

block_.L_401134:                                  ; preds = %block_.L_400ef1
  %1216 = load i64, i64* %6, align 8
  %1217 = add i64 %1216, 64
  store i64 %1217, i64* %6, align 8
  %1218 = icmp ugt i64 %1216, -65
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %14, align 1
  %1220 = trunc i64 %1217 to i32
  %1221 = and i32 %1220, 255
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %21, align 1
  %1226 = xor i64 %1217, %1216
  %1227 = lshr i64 %1226, 4
  %1228 = trunc i64 %1227 to i8
  %1229 = and i8 %1228, 1
  store i8 %1229, i8* %26, align 1
  %1230 = icmp eq i64 %1217, 0
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %29, align 1
  %1232 = lshr i64 %1217, 63
  %1233 = trunc i64 %1232 to i8
  store i8 %1233, i8* %32, align 1
  %1234 = lshr i64 %1216, 63
  %1235 = xor i64 %1232, %1234
  %1236 = add nuw nsw i64 %1235, %1232
  %1237 = icmp eq i64 %1236, 2
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %38, align 1
  %1239 = add i64 %123, 5
  store i64 %1239, i64* %3, align 8
  %1240 = add i64 %1216, 72
  %1241 = inttoptr i64 %1217 to i64*
  %1242 = load i64, i64* %1241, align 8
  store i64 %1242, i64* %RBP.i, align 8
  store i64 %1240, i64* %6, align 8
  %1243 = add i64 %123, 6
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1240 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %3, align 8
  %1246 = add i64 %1216, 80
  store i64 %1246, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
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
define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %17 = xor i64 %6, %3
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
define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jge_.L_401134(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jge_.L_400f60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0xc___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_addsd_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jge_.L_400feb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %14 = fdiv double %11, %13
  store double %14, double* %10, align 1
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
define %struct.Memory* @routine_jmpq_.L_400f89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401121(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401089(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401022(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40110e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401113(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ff4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401126(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ef1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %17 = xor i64 %6, %3
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
