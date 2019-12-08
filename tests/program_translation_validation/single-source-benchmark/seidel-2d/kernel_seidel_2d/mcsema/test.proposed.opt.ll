; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x5d2__rip__type = type <{ [8 x i8] }>
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
@G_0x5d2__rip_ = local_unnamed_addr global %G_0x5d2__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_seidel_2d(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -12
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %PC.i, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -8
  %19 = load i32, i32* %ESI.i, align 4
  %20 = load i64, i64* %PC.i, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC.i, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %RDX.i312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -16
  %25 = load i64, i64* %RDX.i312, align 8
  %26 = load i64, i64* %PC.i, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %PC.i, align 8
  %28 = inttoptr i64 %24 to i64*
  store i64 %25, i64* %28, align 8
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -20
  %31 = load i64, i64* %PC.i, align 8
  %32 = add i64 %31, 7
  store i64 %32, i64* %PC.i, align 8
  %33 = inttoptr i64 %30 to i32*
  store i32 0, i32* %33, align 4
  %RAX.i307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %42 = bitcast i64* %41 to double*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %44 = bitcast %union.VectorReg* %43 to double*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %46 = bitcast i64* %45 to double*
  %47 = bitcast [32 x %union.VectorReg]* %40 to double*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400ab5

block_.L_400ab5:                                  ; preds = %block_.L_400c6d, %entry
  %48 = phi i64 [ %905, %block_.L_400c6d ], [ %.pre, %entry ]
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -20
  %51 = add i64 %48, 3
  store i64 %51, i64* %PC.i, align 8
  %52 = inttoptr i64 %50 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %RAX.i307, align 8
  %55 = add i64 %49, -4
  %56 = add i64 %48, 6
  store i64 %56, i64* %PC.i, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = add i32 %58, -1
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %RCX.i304, align 8
  %61 = lshr i32 %59, 31
  %62 = sub i32 %53, %59
  %63 = icmp ult i32 %53, %59
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %34, align 1
  %65 = and i32 %62, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65)
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %35, align 1
  %70 = xor i32 %59, %53
  %71 = xor i32 %70, %62
  %72 = lshr i32 %71, 4
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  store i8 %74, i8* %36, align 1
  %75 = icmp eq i32 %62, 0
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %37, align 1
  %77 = lshr i32 %62, 31
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %38, align 1
  %79 = lshr i32 %53, 31
  %80 = xor i32 %61, %79
  %81 = xor i32 %77, %79
  %82 = add nuw nsw i32 %81, %80
  %83 = icmp eq i32 %82, 2
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %39, align 1
  %85 = icmp ne i8 %78, 0
  %86 = xor i1 %85, %83
  %.demorgan = or i1 %75, %86
  %.v = select i1 %.demorgan, i64 17, i64 459
  %87 = add i64 %48, %.v
  store i64 %87, i64* %3, align 8
  br i1 %.demorgan, label %block_400ac6, label %block_.L_400c80

block_400ac6:                                     ; preds = %block_.L_400ab5
  %88 = add i64 %49, -24
  %89 = add i64 %87, 7
  store i64 %89, i64* %PC.i, align 8
  %90 = inttoptr i64 %88 to i32*
  store i32 1, i32* %90, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400acd

block_.L_400acd:                                  ; preds = %block_.L_400c5a, %block_400ac6
  %91 = phi i64 [ %874, %block_.L_400c5a ], [ %.pre1, %block_400ac6 ]
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -24
  %94 = add i64 %91, 3
  store i64 %94, i64* %PC.i, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %RAX.i307, align 8
  %98 = add i64 %92, -8
  %99 = add i64 %91, 6
  store i64 %99, i64* %PC.i, align 8
  %100 = inttoptr i64 %98 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, -2
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %RCX.i304, align 8
  %104 = lshr i32 %102, 31
  %105 = sub i32 %96, %102
  %106 = icmp ult i32 %96, %102
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %34, align 1
  %108 = and i32 %105, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %35, align 1
  %113 = xor i32 %102, %96
  %114 = xor i32 %113, %105
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %36, align 1
  %118 = icmp eq i32 %105, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %37, align 1
  %120 = lshr i32 %105, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %38, align 1
  %122 = lshr i32 %96, 31
  %123 = xor i32 %104, %122
  %124 = xor i32 %120, %122
  %125 = add nuw nsw i32 %124, %123
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %39, align 1
  %128 = icmp ne i8 %121, 0
  %129 = xor i1 %128, %126
  %.demorgan3 = or i1 %118, %129
  %.v4 = select i1 %.demorgan3, i64 17, i64 416
  %130 = add i64 %91, %.v4
  store i64 %130, i64* %3, align 8
  br i1 %.demorgan3, label %block_400ade, label %block_.L_400c6d

block_400ade:                                     ; preds = %block_.L_400acd
  %131 = add i64 %92, -28
  %132 = add i64 %130, 7
  store i64 %132, i64* %PC.i, align 8
  %133 = inttoptr i64 %131 to i32*
  store i32 1, i32* %133, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ae5

block_.L_400ae5:                                  ; preds = %block_400af6, %block_400ade
  %134 = phi i64 [ %843, %block_400af6 ], [ %.pre2, %block_400ade ]
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -28
  %137 = add i64 %134, 3
  store i64 %137, i64* %PC.i, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RAX.i307, align 8
  %141 = add i64 %135, -8
  %142 = add i64 %134, 6
  store i64 %142, i64* %PC.i, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = add i32 %144, -2
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RCX.i304, align 8
  %147 = lshr i32 %145, 31
  %148 = sub i32 %139, %145
  %149 = icmp ult i32 %139, %145
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %34, align 1
  %151 = and i32 %148, 255
  %152 = tail call i32 @llvm.ctpop.i32(i32 %151)
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  store i8 %155, i8* %35, align 1
  %156 = xor i32 %145, %139
  %157 = xor i32 %156, %148
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %36, align 1
  %161 = icmp eq i32 %148, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %37, align 1
  %163 = lshr i32 %148, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %38, align 1
  %165 = lshr i32 %139, 31
  %166 = xor i32 %147, %165
  %167 = xor i32 %163, %165
  %168 = add nuw nsw i32 %167, %166
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %39, align 1
  %171 = icmp ne i8 %164, 0
  %172 = xor i1 %171, %169
  %.demorgan5 = or i1 %161, %172
  %.v6 = select i1 %.demorgan5, i64 17, i64 373
  %173 = add i64 %134, %.v6
  store i64 %173, i64* %3, align 8
  br i1 %.demorgan5, label %block_400af6, label %block_.L_400c5a

block_400af6:                                     ; preds = %block_.L_400ae5
  %174 = load i64, i64* bitcast (%G_0x5d2__rip__type* @G_0x5d2__rip_ to i64*), align 8
  %175 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %174, i64* %175, align 1
  store double 0.000000e+00, double* %42, align 1
  %176 = add i64 %135, -16
  %177 = add i64 %173, 12
  store i64 %177, i64* %PC.i, align 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RAX.i307, align 8
  %180 = add i64 %135, -24
  %181 = add i64 %173, 15
  store i64 %181, i64* %PC.i, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = add i32 %183, -1
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RCX.i304, align 8
  %186 = sext i32 %184 to i64
  %187 = mul nsw i64 %186, 8000
  store i64 %187, i64* %RDX.i312, align 8
  %188 = lshr i64 %187, 63
  %189 = add i64 %187, %179
  store i64 %189, i64* %RAX.i307, align 8
  %190 = icmp ult i64 %189, %179
  %191 = icmp ult i64 %189, %187
  %192 = or i1 %190, %191
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %34, align 1
  %194 = trunc i64 %189 to i32
  %195 = and i32 %194, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %35, align 1
  %200 = xor i64 %179, %189
  %201 = lshr i64 %200, 4
  %202 = trunc i64 %201 to i8
  %203 = and i8 %202, 1
  store i8 %203, i8* %36, align 1
  %204 = icmp eq i64 %189, 0
  %205 = zext i1 %204 to i8
  store i8 %205, i8* %37, align 1
  %206 = lshr i64 %189, 63
  %207 = trunc i64 %206 to i8
  store i8 %207, i8* %38, align 1
  %208 = lshr i64 %179, 63
  %209 = xor i64 %206, %208
  %210 = xor i64 %206, %188
  %211 = add nuw nsw i64 %209, %210
  %212 = icmp eq i64 %211, 2
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %39, align 1
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -28
  %216 = add i64 %173, 34
  store i64 %216, i64* %PC.i, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = add i32 %218, -1
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RCX.i304, align 8
  %221 = icmp eq i32 %218, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %34, align 1
  %223 = and i32 %219, 255
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223)
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %35, align 1
  %228 = xor i32 %218, %219
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  store i8 %231, i8* %36, align 1
  %232 = icmp eq i32 %219, 0
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %37, align 1
  %234 = lshr i32 %219, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %38, align 1
  %236 = lshr i32 %218, 31
  %237 = xor i32 %234, %236
  %238 = add nuw nsw i32 %237, %236
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %39, align 1
  %241 = sext i32 %219 to i64
  store i64 %241, i64* %RDX.i312, align 8
  %242 = shl nsw i64 %241, 3
  %243 = add i64 %242, %189
  %244 = add i64 %173, 45
  store i64 %244, i64* %PC.i, align 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %43, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %246, i64* %247, align 1
  store double 0.000000e+00, double* %46, align 1
  %248 = add i64 %214, -16
  %249 = add i64 %173, 49
  store i64 %249, i64* %PC.i, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %RAX.i307, align 8
  %252 = add i64 %214, -24
  %253 = add i64 %173, 52
  store i64 %253, i64* %PC.i, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = add i32 %255, -1
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RCX.i304, align 8
  %258 = sext i32 %256 to i64
  %259 = mul nsw i64 %258, 8000
  store i64 %259, i64* %RDX.i312, align 8
  %260 = lshr i64 %259, 63
  %261 = add i64 %259, %251
  store i64 %261, i64* %RAX.i307, align 8
  %262 = icmp ult i64 %261, %251
  %263 = icmp ult i64 %261, %259
  %264 = or i1 %262, %263
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %34, align 1
  %266 = trunc i64 %261 to i32
  %267 = and i32 %266, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %35, align 1
  %272 = xor i64 %251, %261
  %273 = lshr i64 %272, 4
  %274 = trunc i64 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %36, align 1
  %276 = icmp eq i64 %261, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %37, align 1
  %278 = lshr i64 %261, 63
  %279 = trunc i64 %278 to i8
  store i8 %279, i8* %38, align 1
  %280 = lshr i64 %251, 63
  %281 = xor i64 %278, %280
  %282 = xor i64 %278, %260
  %283 = add nuw nsw i64 %281, %282
  %284 = icmp eq i64 %283, 2
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %39, align 1
  %286 = load i64, i64* %RBP.i, align 8
  %287 = add i64 %286, -28
  %288 = add i64 %173, 72
  store i64 %288, i64* %PC.i, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %RDX.i312, align 8
  %292 = shl nsw i64 %291, 3
  %293 = add i64 %292, %261
  %294 = add i64 %173, 77
  store i64 %294, i64* %PC.i, align 8
  %295 = load double, double* %44, align 1
  %296 = inttoptr i64 %293 to double*
  %297 = load double, double* %296, align 8
  %298 = fadd double %295, %297
  store double %298, double* %44, align 1
  %299 = add i64 %286, -16
  %300 = add i64 %173, 81
  store i64 %300, i64* %PC.i, align 8
  %301 = inttoptr i64 %299 to i64*
  %302 = load i64, i64* %301, align 8
  store i64 %302, i64* %RAX.i307, align 8
  %303 = add i64 %286, -24
  %304 = add i64 %173, 84
  store i64 %304, i64* %PC.i, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = add i32 %306, -1
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RCX.i304, align 8
  %309 = sext i32 %307 to i64
  %310 = mul nsw i64 %309, 8000
  store i64 %310, i64* %RDX.i312, align 8
  %311 = lshr i64 %310, 63
  %312 = add i64 %310, %302
  store i64 %312, i64* %RAX.i307, align 8
  %313 = icmp ult i64 %312, %302
  %314 = icmp ult i64 %312, %310
  %315 = or i1 %313, %314
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %34, align 1
  %317 = trunc i64 %312 to i32
  %318 = and i32 %317, 255
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318)
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %35, align 1
  %323 = xor i64 %302, %312
  %324 = lshr i64 %323, 4
  %325 = trunc i64 %324 to i8
  %326 = and i8 %325, 1
  store i8 %326, i8* %36, align 1
  %327 = icmp eq i64 %312, 0
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %37, align 1
  %329 = lshr i64 %312, 63
  %330 = trunc i64 %329 to i8
  store i8 %330, i8* %38, align 1
  %331 = lshr i64 %302, 63
  %332 = xor i64 %329, %331
  %333 = xor i64 %329, %311
  %334 = add nuw nsw i64 %332, %333
  %335 = icmp eq i64 %334, 2
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %39, align 1
  %337 = load i64, i64* %RBP.i, align 8
  %338 = add i64 %337, -28
  %339 = add i64 %173, 103
  store i64 %339, i64* %PC.i, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = add i32 %341, 1
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RCX.i304, align 8
  %344 = icmp eq i32 %341, -1
  %345 = icmp eq i32 %342, 0
  %346 = or i1 %344, %345
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %34, align 1
  %348 = and i32 %342, 255
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348)
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %35, align 1
  %353 = xor i32 %341, %342
  %354 = lshr i32 %353, 4
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  store i8 %356, i8* %36, align 1
  %357 = icmp eq i32 %342, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %37, align 1
  %359 = lshr i32 %342, 31
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %38, align 1
  %361 = lshr i32 %341, 31
  %362 = xor i32 %359, %361
  %363 = add nuw nsw i32 %362, %359
  %364 = icmp eq i32 %363, 2
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %39, align 1
  %366 = sext i32 %342 to i64
  store i64 %366, i64* %RDX.i312, align 8
  %367 = shl nsw i64 %366, 3
  %368 = add i64 %367, %312
  %369 = add i64 %173, 114
  store i64 %369, i64* %PC.i, align 8
  %370 = load double, double* %44, align 1
  %371 = inttoptr i64 %368 to double*
  %372 = load double, double* %371, align 8
  %373 = fadd double %370, %372
  store double %373, double* %44, align 1
  %374 = add i64 %337, -16
  %375 = add i64 %173, 118
  store i64 %375, i64* %PC.i, align 8
  %376 = inttoptr i64 %374 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %RAX.i307, align 8
  %378 = add i64 %337, -24
  %379 = add i64 %173, 122
  store i64 %379, i64* %PC.i, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  %383 = mul nsw i64 %382, 8000
  store i64 %383, i64* %RDX.i312, align 8
  %384 = lshr i64 %383, 63
  %385 = add i64 %383, %377
  store i64 %385, i64* %RAX.i307, align 8
  %386 = icmp ult i64 %385, %377
  %387 = icmp ult i64 %385, %383
  %388 = or i1 %386, %387
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %34, align 1
  %390 = trunc i64 %385 to i32
  %391 = and i32 %390, 255
  %392 = tail call i32 @llvm.ctpop.i32(i32 %391)
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  %395 = xor i8 %394, 1
  store i8 %395, i8* %35, align 1
  %396 = xor i64 %377, %385
  %397 = lshr i64 %396, 4
  %398 = trunc i64 %397 to i8
  %399 = and i8 %398, 1
  store i8 %399, i8* %36, align 1
  %400 = icmp eq i64 %385, 0
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %37, align 1
  %402 = lshr i64 %385, 63
  %403 = trunc i64 %402 to i8
  store i8 %403, i8* %38, align 1
  %404 = lshr i64 %377, 63
  %405 = xor i64 %402, %404
  %406 = xor i64 %402, %384
  %407 = add nuw nsw i64 %405, %406
  %408 = icmp eq i64 %407, 2
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %39, align 1
  %410 = load i64, i64* %RBP.i, align 8
  %411 = add i64 %410, -28
  %412 = add i64 %173, 135
  store i64 %412, i64* %PC.i, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = add i32 %414, -1
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %RCX.i304, align 8
  %417 = icmp eq i32 %414, 0
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %34, align 1
  %419 = and i32 %415, 255
  %420 = tail call i32 @llvm.ctpop.i32(i32 %419)
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  %423 = xor i8 %422, 1
  store i8 %423, i8* %35, align 1
  %424 = xor i32 %414, %415
  %425 = lshr i32 %424, 4
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  store i8 %427, i8* %36, align 1
  %428 = icmp eq i32 %415, 0
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %37, align 1
  %430 = lshr i32 %415, 31
  %431 = trunc i32 %430 to i8
  store i8 %431, i8* %38, align 1
  %432 = lshr i32 %414, 31
  %433 = xor i32 %430, %432
  %434 = add nuw nsw i32 %433, %432
  %435 = icmp eq i32 %434, 2
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %39, align 1
  %437 = sext i32 %415 to i64
  store i64 %437, i64* %RDX.i312, align 8
  %438 = shl nsw i64 %437, 3
  %439 = add i64 %438, %385
  %440 = add i64 %173, 146
  store i64 %440, i64* %PC.i, align 8
  %441 = load double, double* %44, align 1
  %442 = inttoptr i64 %439 to double*
  %443 = load double, double* %442, align 8
  %444 = fadd double %441, %443
  store double %444, double* %44, align 1
  %445 = add i64 %410, -16
  %446 = add i64 %173, 150
  store i64 %446, i64* %PC.i, align 8
  %447 = inttoptr i64 %445 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RAX.i307, align 8
  %449 = add i64 %410, -24
  %450 = add i64 %173, 154
  store i64 %450, i64* %PC.i, align 8
  %451 = inttoptr i64 %449 to i32*
  %452 = load i32, i32* %451, align 4
  %453 = sext i32 %452 to i64
  %454 = mul nsw i64 %453, 8000
  store i64 %454, i64* %RDX.i312, align 8
  %455 = lshr i64 %454, 63
  %456 = add i64 %454, %448
  store i64 %456, i64* %RAX.i307, align 8
  %457 = icmp ult i64 %456, %448
  %458 = icmp ult i64 %456, %454
  %459 = or i1 %457, %458
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %34, align 1
  %461 = trunc i64 %456 to i32
  %462 = and i32 %461, 255
  %463 = tail call i32 @llvm.ctpop.i32(i32 %462)
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %35, align 1
  %467 = xor i64 %448, %456
  %468 = lshr i64 %467, 4
  %469 = trunc i64 %468 to i8
  %470 = and i8 %469, 1
  store i8 %470, i8* %36, align 1
  %471 = icmp eq i64 %456, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %37, align 1
  %473 = lshr i64 %456, 63
  %474 = trunc i64 %473 to i8
  store i8 %474, i8* %38, align 1
  %475 = lshr i64 %448, 63
  %476 = xor i64 %473, %475
  %477 = xor i64 %473, %455
  %478 = add nuw nsw i64 %476, %477
  %479 = icmp eq i64 %478, 2
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %39, align 1
  %481 = load i64, i64* %RBP.i, align 8
  %482 = add i64 %481, -28
  %483 = add i64 %173, 168
  store i64 %483, i64* %PC.i, align 8
  %484 = inttoptr i64 %482 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = sext i32 %485 to i64
  store i64 %486, i64* %RDX.i312, align 8
  %487 = shl nsw i64 %486, 3
  %488 = add i64 %487, %456
  %489 = add i64 %173, 173
  store i64 %489, i64* %PC.i, align 8
  %490 = inttoptr i64 %488 to double*
  %491 = load double, double* %490, align 8
  %492 = fadd double %444, %491
  store double %492, double* %44, align 1
  %493 = add i64 %481, -16
  %494 = add i64 %173, 177
  store i64 %494, i64* %PC.i, align 8
  %495 = inttoptr i64 %493 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %RAX.i307, align 8
  %497 = add i64 %481, -24
  %498 = add i64 %173, 181
  store i64 %498, i64* %PC.i, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = sext i32 %500 to i64
  %502 = mul nsw i64 %501, 8000
  store i64 %502, i64* %RDX.i312, align 8
  %503 = lshr i64 %502, 63
  %504 = add i64 %502, %496
  store i64 %504, i64* %RAX.i307, align 8
  %505 = icmp ult i64 %504, %496
  %506 = icmp ult i64 %504, %502
  %507 = or i1 %505, %506
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %34, align 1
  %509 = trunc i64 %504 to i32
  %510 = and i32 %509, 255
  %511 = tail call i32 @llvm.ctpop.i32(i32 %510)
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = xor i8 %513, 1
  store i8 %514, i8* %35, align 1
  %515 = xor i64 %496, %504
  %516 = lshr i64 %515, 4
  %517 = trunc i64 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %36, align 1
  %519 = icmp eq i64 %504, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %37, align 1
  %521 = lshr i64 %504, 63
  %522 = trunc i64 %521 to i8
  store i8 %522, i8* %38, align 1
  %523 = lshr i64 %496, 63
  %524 = xor i64 %521, %523
  %525 = xor i64 %521, %503
  %526 = add nuw nsw i64 %524, %525
  %527 = icmp eq i64 %526, 2
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %39, align 1
  %529 = add i64 %173, 194
  store i64 %529, i64* %PC.i, align 8
  %530 = load i32, i32* %484, align 4
  %531 = add i32 %530, 1
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RCX.i304, align 8
  %533 = icmp eq i32 %530, -1
  %534 = icmp eq i32 %531, 0
  %535 = or i1 %533, %534
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %34, align 1
  %537 = and i32 %531, 255
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %35, align 1
  %542 = xor i32 %530, %531
  %543 = lshr i32 %542, 4
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  store i8 %545, i8* %36, align 1
  %546 = icmp eq i32 %531, 0
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %37, align 1
  %548 = lshr i32 %531, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %38, align 1
  %550 = lshr i32 %530, 31
  %551 = xor i32 %548, %550
  %552 = add nuw nsw i32 %551, %548
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %39, align 1
  %555 = sext i32 %531 to i64
  store i64 %555, i64* %RDX.i312, align 8
  %556 = shl nsw i64 %555, 3
  %557 = add i64 %556, %504
  %558 = add i64 %173, 205
  store i64 %558, i64* %PC.i, align 8
  %559 = load double, double* %44, align 1
  %560 = inttoptr i64 %557 to double*
  %561 = load double, double* %560, align 8
  %562 = fadd double %559, %561
  store double %562, double* %44, align 1
  %563 = load i64, i64* %RBP.i, align 8
  %564 = add i64 %563, -16
  %565 = add i64 %173, 209
  store i64 %565, i64* %PC.i, align 8
  %566 = inttoptr i64 %564 to i64*
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %RAX.i307, align 8
  %568 = add i64 %563, -24
  %569 = add i64 %173, 212
  store i64 %569, i64* %PC.i, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = add i32 %571, 1
  %573 = zext i32 %572 to i64
  store i64 %573, i64* %RCX.i304, align 8
  %574 = sext i32 %572 to i64
  %575 = mul nsw i64 %574, 8000
  store i64 %575, i64* %RDX.i312, align 8
  %576 = lshr i64 %575, 63
  %577 = add i64 %575, %567
  store i64 %577, i64* %RAX.i307, align 8
  %578 = icmp ult i64 %577, %567
  %579 = icmp ult i64 %577, %575
  %580 = or i1 %578, %579
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %34, align 1
  %582 = trunc i64 %577 to i32
  %583 = and i32 %582, 255
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %35, align 1
  %588 = xor i64 %567, %577
  %589 = lshr i64 %588, 4
  %590 = trunc i64 %589 to i8
  %591 = and i8 %590, 1
  store i8 %591, i8* %36, align 1
  %592 = icmp eq i64 %577, 0
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %37, align 1
  %594 = lshr i64 %577, 63
  %595 = trunc i64 %594 to i8
  store i8 %595, i8* %38, align 1
  %596 = lshr i64 %567, 63
  %597 = xor i64 %594, %596
  %598 = xor i64 %594, %576
  %599 = add nuw nsw i64 %597, %598
  %600 = icmp eq i64 %599, 2
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %39, align 1
  %602 = load i64, i64* %RBP.i, align 8
  %603 = add i64 %602, -28
  %604 = add i64 %173, 231
  store i64 %604, i64* %PC.i, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = add i32 %606, -1
  %608 = zext i32 %607 to i64
  store i64 %608, i64* %RCX.i304, align 8
  %609 = icmp eq i32 %606, 0
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %34, align 1
  %611 = and i32 %607, 255
  %612 = tail call i32 @llvm.ctpop.i32(i32 %611)
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  %615 = xor i8 %614, 1
  store i8 %615, i8* %35, align 1
  %616 = xor i32 %606, %607
  %617 = lshr i32 %616, 4
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  store i8 %619, i8* %36, align 1
  %620 = icmp eq i32 %607, 0
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %37, align 1
  %622 = lshr i32 %607, 31
  %623 = trunc i32 %622 to i8
  store i8 %623, i8* %38, align 1
  %624 = lshr i32 %606, 31
  %625 = xor i32 %622, %624
  %626 = add nuw nsw i32 %625, %624
  %627 = icmp eq i32 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %39, align 1
  %629 = sext i32 %607 to i64
  store i64 %629, i64* %RDX.i312, align 8
  %630 = shl nsw i64 %629, 3
  %631 = add i64 %630, %577
  %632 = add i64 %173, 242
  store i64 %632, i64* %PC.i, align 8
  %633 = load double, double* %44, align 1
  %634 = inttoptr i64 %631 to double*
  %635 = load double, double* %634, align 8
  %636 = fadd double %633, %635
  store double %636, double* %44, align 1
  %637 = add i64 %602, -16
  %638 = add i64 %173, 246
  store i64 %638, i64* %PC.i, align 8
  %639 = inttoptr i64 %637 to i64*
  %640 = load i64, i64* %639, align 8
  store i64 %640, i64* %RAX.i307, align 8
  %641 = add i64 %602, -24
  %642 = add i64 %173, 249
  store i64 %642, i64* %PC.i, align 8
  %643 = inttoptr i64 %641 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = add i32 %644, 1
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RCX.i304, align 8
  %647 = sext i32 %645 to i64
  %648 = mul nsw i64 %647, 8000
  store i64 %648, i64* %RDX.i312, align 8
  %649 = lshr i64 %648, 63
  %650 = add i64 %648, %640
  store i64 %650, i64* %RAX.i307, align 8
  %651 = icmp ult i64 %650, %640
  %652 = icmp ult i64 %650, %648
  %653 = or i1 %651, %652
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %34, align 1
  %655 = trunc i64 %650 to i32
  %656 = and i32 %655, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %35, align 1
  %661 = xor i64 %640, %650
  %662 = lshr i64 %661, 4
  %663 = trunc i64 %662 to i8
  %664 = and i8 %663, 1
  store i8 %664, i8* %36, align 1
  %665 = icmp eq i64 %650, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %37, align 1
  %667 = lshr i64 %650, 63
  %668 = trunc i64 %667 to i8
  store i8 %668, i8* %38, align 1
  %669 = lshr i64 %640, 63
  %670 = xor i64 %667, %669
  %671 = xor i64 %667, %649
  %672 = add nuw nsw i64 %670, %671
  %673 = icmp eq i64 %672, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %39, align 1
  %675 = load i64, i64* %RBP.i, align 8
  %676 = add i64 %675, -28
  %677 = add i64 %173, 269
  store i64 %677, i64* %PC.i, align 8
  %678 = inttoptr i64 %676 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = sext i32 %679 to i64
  store i64 %680, i64* %RDX.i312, align 8
  %681 = shl nsw i64 %680, 3
  %682 = add i64 %681, %650
  %683 = add i64 %173, 274
  store i64 %683, i64* %PC.i, align 8
  %684 = load double, double* %44, align 1
  %685 = inttoptr i64 %682 to double*
  %686 = load double, double* %685, align 8
  %687 = fadd double %684, %686
  store double %687, double* %44, align 1
  %688 = add i64 %675, -16
  %689 = add i64 %173, 278
  store i64 %689, i64* %PC.i, align 8
  %690 = inttoptr i64 %688 to i64*
  %691 = load i64, i64* %690, align 8
  store i64 %691, i64* %RAX.i307, align 8
  %692 = add i64 %675, -24
  %693 = add i64 %173, 281
  store i64 %693, i64* %PC.i, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = add i32 %695, 1
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RCX.i304, align 8
  %698 = sext i32 %696 to i64
  %699 = mul nsw i64 %698, 8000
  store i64 %699, i64* %RDX.i312, align 8
  %700 = lshr i64 %699, 63
  %701 = add i64 %699, %691
  store i64 %701, i64* %RAX.i307, align 8
  %702 = icmp ult i64 %701, %691
  %703 = icmp ult i64 %701, %699
  %704 = or i1 %702, %703
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %34, align 1
  %706 = trunc i64 %701 to i32
  %707 = and i32 %706, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %35, align 1
  %712 = xor i64 %691, %701
  %713 = lshr i64 %712, 4
  %714 = trunc i64 %713 to i8
  %715 = and i8 %714, 1
  store i8 %715, i8* %36, align 1
  %716 = icmp eq i64 %701, 0
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %37, align 1
  %718 = lshr i64 %701, 63
  %719 = trunc i64 %718 to i8
  store i8 %719, i8* %38, align 1
  %720 = lshr i64 %691, 63
  %721 = xor i64 %718, %720
  %722 = xor i64 %718, %700
  %723 = add nuw nsw i64 %721, %722
  %724 = icmp eq i64 %723, 2
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %39, align 1
  %726 = load i64, i64* %RBP.i, align 8
  %727 = add i64 %726, -28
  %728 = add i64 %173, 300
  store i64 %728, i64* %PC.i, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = add i32 %730, 1
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %RCX.i304, align 8
  %733 = icmp eq i32 %730, -1
  %734 = icmp eq i32 %731, 0
  %735 = or i1 %733, %734
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %34, align 1
  %737 = and i32 %731, 255
  %738 = tail call i32 @llvm.ctpop.i32(i32 %737)
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  store i8 %741, i8* %35, align 1
  %742 = xor i32 %730, %731
  %743 = lshr i32 %742, 4
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %36, align 1
  %746 = icmp eq i32 %731, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %37, align 1
  %748 = lshr i32 %731, 31
  %749 = trunc i32 %748 to i8
  store i8 %749, i8* %38, align 1
  %750 = lshr i32 %730, 31
  %751 = xor i32 %748, %750
  %752 = add nuw nsw i32 %751, %748
  %753 = icmp eq i32 %752, 2
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %39, align 1
  %755 = sext i32 %731 to i64
  store i64 %755, i64* %RDX.i312, align 8
  %756 = shl nsw i64 %755, 3
  %757 = add i64 %756, %701
  %758 = add i64 %173, 311
  store i64 %758, i64* %PC.i, align 8
  %759 = load double, double* %44, align 1
  %760 = inttoptr i64 %757 to double*
  %761 = load double, double* %760, align 8
  %762 = fadd double %759, %761
  %763 = load double, double* %47, align 1
  %764 = fdiv double %762, %763
  store double %764, double* %44, align 1
  %765 = add i64 %726, -16
  %766 = add i64 %173, 319
  store i64 %766, i64* %PC.i, align 8
  %767 = inttoptr i64 %765 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %RAX.i307, align 8
  %769 = add i64 %726, -24
  %770 = add i64 %173, 323
  store i64 %770, i64* %PC.i, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = sext i32 %772 to i64
  %774 = mul nsw i64 %773, 8000
  store i64 %774, i64* %RDX.i312, align 8
  %775 = lshr i64 %774, 63
  %776 = add i64 %774, %768
  store i64 %776, i64* %RAX.i307, align 8
  %777 = icmp ult i64 %776, %768
  %778 = icmp ult i64 %776, %774
  %779 = or i1 %777, %778
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %34, align 1
  %781 = trunc i64 %776 to i32
  %782 = and i32 %781, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %35, align 1
  %787 = xor i64 %768, %776
  %788 = lshr i64 %787, 4
  %789 = trunc i64 %788 to i8
  %790 = and i8 %789, 1
  store i8 %790, i8* %36, align 1
  %791 = icmp eq i64 %776, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %37, align 1
  %793 = lshr i64 %776, 63
  %794 = trunc i64 %793 to i8
  store i8 %794, i8* %38, align 1
  %795 = lshr i64 %768, 63
  %796 = xor i64 %793, %795
  %797 = xor i64 %793, %775
  %798 = add nuw nsw i64 %796, %797
  %799 = icmp eq i64 %798, 2
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %39, align 1
  %801 = load i64, i64* %RBP.i, align 8
  %802 = add i64 %801, -28
  %803 = add i64 %173, 337
  store i64 %803, i64* %PC.i, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  %806 = sext i32 %805 to i64
  store i64 %806, i64* %RDX.i312, align 8
  %807 = shl nsw i64 %806, 3
  %808 = add i64 %807, %776
  %809 = add i64 %173, 342
  store i64 %809, i64* %PC.i, align 8
  %810 = inttoptr i64 %808 to double*
  store double %764, double* %810, align 8
  %811 = load i64, i64* %RBP.i, align 8
  %812 = add i64 %811, -28
  %813 = load i64, i64* %PC.i, align 8
  %814 = add i64 %813, 3
  store i64 %814, i64* %PC.i, align 8
  %815 = inttoptr i64 %812 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = add i32 %816, 1
  %818 = zext i32 %817 to i64
  store i64 %818, i64* %RAX.i307, align 8
  %819 = icmp eq i32 %816, -1
  %820 = icmp eq i32 %817, 0
  %821 = or i1 %819, %820
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %34, align 1
  %823 = and i32 %817, 255
  %824 = tail call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  store i8 %827, i8* %35, align 1
  %828 = xor i32 %816, %817
  %829 = lshr i32 %828, 4
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  store i8 %831, i8* %36, align 1
  %832 = icmp eq i32 %817, 0
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %37, align 1
  %834 = lshr i32 %817, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %38, align 1
  %836 = lshr i32 %816, 31
  %837 = xor i32 %834, %836
  %838 = add nuw nsw i32 %837, %834
  %839 = icmp eq i32 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %39, align 1
  %841 = add i64 %813, 9
  store i64 %841, i64* %PC.i, align 8
  store i32 %817, i32* %815, align 4
  %842 = load i64, i64* %PC.i, align 8
  %843 = add i64 %842, -368
  store i64 %843, i64* %3, align 8
  br label %block_.L_400ae5

block_.L_400c5a:                                  ; preds = %block_.L_400ae5
  %844 = add i64 %135, -24
  %845 = add i64 %173, 8
  store i64 %845, i64* %PC.i, align 8
  %846 = inttoptr i64 %844 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = add i32 %847, 1
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RAX.i307, align 8
  %850 = icmp eq i32 %847, -1
  %851 = icmp eq i32 %848, 0
  %852 = or i1 %850, %851
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %34, align 1
  %854 = and i32 %848, 255
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %35, align 1
  %859 = xor i32 %847, %848
  %860 = lshr i32 %859, 4
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %36, align 1
  %863 = icmp eq i32 %848, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %37, align 1
  %865 = lshr i32 %848, 31
  %866 = trunc i32 %865 to i8
  store i8 %866, i8* %38, align 1
  %867 = lshr i32 %847, 31
  %868 = xor i32 %865, %867
  %869 = add nuw nsw i32 %868, %865
  %870 = icmp eq i32 %869, 2
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %39, align 1
  %872 = add i64 %173, 14
  store i64 %872, i64* %PC.i, align 8
  store i32 %848, i32* %846, align 4
  %873 = load i64, i64* %PC.i, align 8
  %874 = add i64 %873, -411
  store i64 %874, i64* %3, align 8
  br label %block_.L_400acd

block_.L_400c6d:                                  ; preds = %block_.L_400acd
  %875 = add i64 %92, -20
  %876 = add i64 %130, 8
  store i64 %876, i64* %PC.i, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = add i32 %878, 1
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %RAX.i307, align 8
  %881 = icmp eq i32 %878, -1
  %882 = icmp eq i32 %879, 0
  %883 = or i1 %881, %882
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %34, align 1
  %885 = and i32 %879, 255
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885)
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %35, align 1
  %890 = xor i32 %878, %879
  %891 = lshr i32 %890, 4
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %36, align 1
  %894 = icmp eq i32 %879, 0
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %37, align 1
  %896 = lshr i32 %879, 31
  %897 = trunc i32 %896 to i8
  store i8 %897, i8* %38, align 1
  %898 = lshr i32 %878, 31
  %899 = xor i32 %896, %898
  %900 = add nuw nsw i32 %899, %896
  %901 = icmp eq i32 %900, 2
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %39, align 1
  %903 = add i64 %130, 14
  store i64 %903, i64* %PC.i, align 8
  store i32 %879, i32* %877, align 4
  %904 = load i64, i64* %PC.i, align 8
  %905 = add i64 %904, -454
  store i64 %905, i64* %3, align 8
  br label %block_.L_400ab5

block_.L_400c80:                                  ; preds = %block_.L_400ab5
  %906 = add i64 %87, 1
  store i64 %906, i64* %PC.i, align 8
  %907 = load i64, i64* %6, align 8
  %908 = add i64 %907, 8
  %909 = inttoptr i64 %907 to i64*
  %910 = load i64, i64* %909, align 8
  store i64 %910, i64* %RBP.i, align 8
  store i64 %908, i64* %6, align 8
  %911 = add i64 %87, 2
  store i64 %911, i64* %PC.i, align 8
  %912 = inttoptr i64 %908 to i64*
  %913 = load i64, i64* %912, align 8
  store i64 %913, i64* %3, align 8
  %914 = add i64 %907, 16
  store i64 %914, i64* %6, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_400c80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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

define %struct.Memory* @routine_subl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 2
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

define %struct.Memory* @routine_jg_.L_400c6d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400c5a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x5d2__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x5d2__rip__type* @G_0x5d2__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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

define %struct.Memory* @routine_imulq__0x1f40___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd___rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
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

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ae5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400acd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ab5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
