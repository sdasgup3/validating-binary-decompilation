; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x5d2__rip__4197118__type = type <{ [16 x i8] }>
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
@G_0x5d2__rip__4197118_ = local_unnamed_addr global %G_0x5d2__rip__4197118__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_seidel_2d(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RDX.i312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -16
  %25 = load i64, i64* %RDX.i312, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %24 to i64*
  store i64 %25, i64* %28, align 8
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -20
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 7
  store i64 %32, i64* %3, align 8
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
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400ab5

block_.L_400ab5:                                  ; preds = %block_.L_400c6d, %entry
  %48 = phi i64 [ %899, %block_.L_400c6d ], [ %.pre, %entry ]
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -20
  %51 = add i64 %48, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %50 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %RAX.i307, align 8
  %55 = add i64 %49, -4
  %56 = add i64 %48, 6
  store i64 %56, i64* %3, align 8
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
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i32*
  store i32 1, i32* %90, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400acd

block_.L_400acd:                                  ; preds = %block_.L_400c5a, %block_400ac6
  %91 = phi i64 [ %869, %block_.L_400c5a ], [ %.pre1, %block_400ac6 ]
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -24
  %94 = add i64 %91, 3
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %RAX.i307, align 8
  %98 = add i64 %92, -8
  %99 = add i64 %91, 6
  store i64 %99, i64* %3, align 8
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
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  store i32 1, i32* %133, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400ae5

block_.L_400ae5:                                  ; preds = %block_400af6, %block_400ade
  %134 = phi i64 [ %839, %block_400af6 ], [ %.pre2, %block_400ade ]
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -28
  %137 = add i64 %134, 3
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RAX.i307, align 8
  %141 = add i64 %135, -8
  %142 = add i64 %134, 6
  store i64 %142, i64* %3, align 8
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
  %174 = load i64, i64* bitcast (%G_0x5d2__rip__4197118__type* @G_0x5d2__rip__4197118_ to i64*), align 8
  %175 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %174, i64* %175, align 1
  store double 0.000000e+00, double* %42, align 1
  %176 = add i64 %135, -16
  %177 = add i64 %173, 12
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %RAX.i307, align 8
  %180 = add i64 %135, -24
  %181 = add i64 %173, 15
  store i64 %181, i64* %3, align 8
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
  store i64 %216, i64* %3, align 8
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
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %43, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %246, i64* %247, align 1
  store double 0.000000e+00, double* %46, align 1
  %248 = add i64 %214, -16
  %249 = add i64 %173, 49
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %RAX.i307, align 8
  %252 = add i64 %214, -24
  %253 = add i64 %173, 52
  store i64 %253, i64* %3, align 8
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
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %RDX.i312, align 8
  %292 = shl nsw i64 %291, 3
  %293 = add i64 %292, %261
  %294 = add i64 %173, 77
  store i64 %294, i64* %3, align 8
  %295 = load double, double* %44, align 1
  %296 = inttoptr i64 %293 to double*
  %297 = load double, double* %296, align 8
  %298 = fadd double %295, %297
  store double %298, double* %44, align 1
  %299 = add i64 %286, -16
  %300 = add i64 %173, 81
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i64*
  %302 = load i64, i64* %301, align 8
  store i64 %302, i64* %RAX.i307, align 8
  %303 = add i64 %286, -24
  %304 = add i64 %173, 84
  store i64 %304, i64* %3, align 8
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
  store i64 %339, i64* %3, align 8
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
  %357 = zext i1 %345 to i8
  store i8 %357, i8* %37, align 1
  %358 = lshr i32 %342, 31
  %359 = trunc i32 %358 to i8
  store i8 %359, i8* %38, align 1
  %360 = lshr i32 %341, 31
  %361 = xor i32 %358, %360
  %362 = add nuw nsw i32 %361, %358
  %363 = icmp eq i32 %362, 2
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %39, align 1
  %365 = sext i32 %342 to i64
  store i64 %365, i64* %RDX.i312, align 8
  %366 = shl nsw i64 %365, 3
  %367 = add i64 %366, %312
  %368 = add i64 %173, 114
  store i64 %368, i64* %3, align 8
  %369 = load double, double* %44, align 1
  %370 = inttoptr i64 %367 to double*
  %371 = load double, double* %370, align 8
  %372 = fadd double %369, %371
  store double %372, double* %44, align 1
  %373 = add i64 %337, -16
  %374 = add i64 %173, 118
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i64*
  %376 = load i64, i64* %375, align 8
  store i64 %376, i64* %RAX.i307, align 8
  %377 = add i64 %337, -24
  %378 = add i64 %173, 122
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = sext i32 %380 to i64
  %382 = mul nsw i64 %381, 8000
  store i64 %382, i64* %RDX.i312, align 8
  %383 = lshr i64 %382, 63
  %384 = add i64 %382, %376
  store i64 %384, i64* %RAX.i307, align 8
  %385 = icmp ult i64 %384, %376
  %386 = icmp ult i64 %384, %382
  %387 = or i1 %385, %386
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %34, align 1
  %389 = trunc i64 %384 to i32
  %390 = and i32 %389, 255
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390)
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  store i8 %394, i8* %35, align 1
  %395 = xor i64 %376, %384
  %396 = lshr i64 %395, 4
  %397 = trunc i64 %396 to i8
  %398 = and i8 %397, 1
  store i8 %398, i8* %36, align 1
  %399 = icmp eq i64 %384, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %37, align 1
  %401 = lshr i64 %384, 63
  %402 = trunc i64 %401 to i8
  store i8 %402, i8* %38, align 1
  %403 = lshr i64 %376, 63
  %404 = xor i64 %401, %403
  %405 = xor i64 %401, %383
  %406 = add nuw nsw i64 %404, %405
  %407 = icmp eq i64 %406, 2
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %39, align 1
  %409 = load i64, i64* %RBP.i, align 8
  %410 = add i64 %409, -28
  %411 = add i64 %173, 135
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = add i32 %413, -1
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RCX.i304, align 8
  %416 = icmp eq i32 %413, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %34, align 1
  %418 = and i32 %414, 255
  %419 = tail call i32 @llvm.ctpop.i32(i32 %418)
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  store i8 %422, i8* %35, align 1
  %423 = xor i32 %413, %414
  %424 = lshr i32 %423, 4
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %36, align 1
  %427 = icmp eq i32 %414, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %37, align 1
  %429 = lshr i32 %414, 31
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %38, align 1
  %431 = lshr i32 %413, 31
  %432 = xor i32 %429, %431
  %433 = add nuw nsw i32 %432, %431
  %434 = icmp eq i32 %433, 2
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %39, align 1
  %436 = sext i32 %414 to i64
  store i64 %436, i64* %RDX.i312, align 8
  %437 = shl nsw i64 %436, 3
  %438 = add i64 %437, %384
  %439 = add i64 %173, 146
  store i64 %439, i64* %3, align 8
  %440 = load double, double* %44, align 1
  %441 = inttoptr i64 %438 to double*
  %442 = load double, double* %441, align 8
  %443 = fadd double %440, %442
  store double %443, double* %44, align 1
  %444 = add i64 %409, -16
  %445 = add i64 %173, 150
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i64*
  %447 = load i64, i64* %446, align 8
  store i64 %447, i64* %RAX.i307, align 8
  %448 = add i64 %409, -24
  %449 = add i64 %173, 154
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = sext i32 %451 to i64
  %453 = mul nsw i64 %452, 8000
  store i64 %453, i64* %RDX.i312, align 8
  %454 = lshr i64 %453, 63
  %455 = add i64 %453, %447
  store i64 %455, i64* %RAX.i307, align 8
  %456 = icmp ult i64 %455, %447
  %457 = icmp ult i64 %455, %453
  %458 = or i1 %456, %457
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %34, align 1
  %460 = trunc i64 %455 to i32
  %461 = and i32 %460, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %35, align 1
  %466 = xor i64 %447, %455
  %467 = lshr i64 %466, 4
  %468 = trunc i64 %467 to i8
  %469 = and i8 %468, 1
  store i8 %469, i8* %36, align 1
  %470 = icmp eq i64 %455, 0
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %37, align 1
  %472 = lshr i64 %455, 63
  %473 = trunc i64 %472 to i8
  store i8 %473, i8* %38, align 1
  %474 = lshr i64 %447, 63
  %475 = xor i64 %472, %474
  %476 = xor i64 %472, %454
  %477 = add nuw nsw i64 %475, %476
  %478 = icmp eq i64 %477, 2
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %39, align 1
  %480 = load i64, i64* %RBP.i, align 8
  %481 = add i64 %480, -28
  %482 = add i64 %173, 168
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i32*
  %484 = load i32, i32* %483, align 4
  %485 = sext i32 %484 to i64
  store i64 %485, i64* %RDX.i312, align 8
  %486 = shl nsw i64 %485, 3
  %487 = add i64 %486, %455
  %488 = add i64 %173, 173
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to double*
  %490 = load double, double* %489, align 8
  %491 = fadd double %443, %490
  store double %491, double* %44, align 1
  %492 = add i64 %480, -16
  %493 = add i64 %173, 177
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i64*
  %495 = load i64, i64* %494, align 8
  store i64 %495, i64* %RAX.i307, align 8
  %496 = add i64 %480, -24
  %497 = add i64 %173, 181
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  %501 = mul nsw i64 %500, 8000
  store i64 %501, i64* %RDX.i312, align 8
  %502 = lshr i64 %501, 63
  %503 = add i64 %501, %495
  store i64 %503, i64* %RAX.i307, align 8
  %504 = icmp ult i64 %503, %495
  %505 = icmp ult i64 %503, %501
  %506 = or i1 %504, %505
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %34, align 1
  %508 = trunc i64 %503 to i32
  %509 = and i32 %508, 255
  %510 = tail call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  store i8 %513, i8* %35, align 1
  %514 = xor i64 %495, %503
  %515 = lshr i64 %514, 4
  %516 = trunc i64 %515 to i8
  %517 = and i8 %516, 1
  store i8 %517, i8* %36, align 1
  %518 = icmp eq i64 %503, 0
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %37, align 1
  %520 = lshr i64 %503, 63
  %521 = trunc i64 %520 to i8
  store i8 %521, i8* %38, align 1
  %522 = lshr i64 %495, 63
  %523 = xor i64 %520, %522
  %524 = xor i64 %520, %502
  %525 = add nuw nsw i64 %523, %524
  %526 = icmp eq i64 %525, 2
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %39, align 1
  %528 = add i64 %173, 194
  store i64 %528, i64* %3, align 8
  %529 = load i32, i32* %483, align 4
  %530 = add i32 %529, 1
  %531 = zext i32 %530 to i64
  store i64 %531, i64* %RCX.i304, align 8
  %532 = icmp eq i32 %529, -1
  %533 = icmp eq i32 %530, 0
  %534 = or i1 %532, %533
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %34, align 1
  %536 = and i32 %530, 255
  %537 = tail call i32 @llvm.ctpop.i32(i32 %536)
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  store i8 %540, i8* %35, align 1
  %541 = xor i32 %529, %530
  %542 = lshr i32 %541, 4
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  store i8 %544, i8* %36, align 1
  %545 = zext i1 %533 to i8
  store i8 %545, i8* %37, align 1
  %546 = lshr i32 %530, 31
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %38, align 1
  %548 = lshr i32 %529, 31
  %549 = xor i32 %546, %548
  %550 = add nuw nsw i32 %549, %546
  %551 = icmp eq i32 %550, 2
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %39, align 1
  %553 = sext i32 %530 to i64
  store i64 %553, i64* %RDX.i312, align 8
  %554 = shl nsw i64 %553, 3
  %555 = add i64 %554, %503
  %556 = add i64 %173, 205
  store i64 %556, i64* %3, align 8
  %557 = load double, double* %44, align 1
  %558 = inttoptr i64 %555 to double*
  %559 = load double, double* %558, align 8
  %560 = fadd double %557, %559
  store double %560, double* %44, align 1
  %561 = load i64, i64* %RBP.i, align 8
  %562 = add i64 %561, -16
  %563 = add i64 %173, 209
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i64*
  %565 = load i64, i64* %564, align 8
  store i64 %565, i64* %RAX.i307, align 8
  %566 = add i64 %561, -24
  %567 = add i64 %173, 212
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = add i32 %569, 1
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %RCX.i304, align 8
  %572 = sext i32 %570 to i64
  %573 = mul nsw i64 %572, 8000
  store i64 %573, i64* %RDX.i312, align 8
  %574 = lshr i64 %573, 63
  %575 = add i64 %573, %565
  store i64 %575, i64* %RAX.i307, align 8
  %576 = icmp ult i64 %575, %565
  %577 = icmp ult i64 %575, %573
  %578 = or i1 %576, %577
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %34, align 1
  %580 = trunc i64 %575 to i32
  %581 = and i32 %580, 255
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %35, align 1
  %586 = xor i64 %565, %575
  %587 = lshr i64 %586, 4
  %588 = trunc i64 %587 to i8
  %589 = and i8 %588, 1
  store i8 %589, i8* %36, align 1
  %590 = icmp eq i64 %575, 0
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %37, align 1
  %592 = lshr i64 %575, 63
  %593 = trunc i64 %592 to i8
  store i8 %593, i8* %38, align 1
  %594 = lshr i64 %565, 63
  %595 = xor i64 %592, %594
  %596 = xor i64 %592, %574
  %597 = add nuw nsw i64 %595, %596
  %598 = icmp eq i64 %597, 2
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %39, align 1
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -28
  %602 = add i64 %173, 231
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = add i32 %604, -1
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RCX.i304, align 8
  %607 = icmp eq i32 %604, 0
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %34, align 1
  %609 = and i32 %605, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609)
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %35, align 1
  %614 = xor i32 %604, %605
  %615 = lshr i32 %614, 4
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  store i8 %617, i8* %36, align 1
  %618 = icmp eq i32 %605, 0
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %37, align 1
  %620 = lshr i32 %605, 31
  %621 = trunc i32 %620 to i8
  store i8 %621, i8* %38, align 1
  %622 = lshr i32 %604, 31
  %623 = xor i32 %620, %622
  %624 = add nuw nsw i32 %623, %622
  %625 = icmp eq i32 %624, 2
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %39, align 1
  %627 = sext i32 %605 to i64
  store i64 %627, i64* %RDX.i312, align 8
  %628 = shl nsw i64 %627, 3
  %629 = add i64 %628, %575
  %630 = add i64 %173, 242
  store i64 %630, i64* %3, align 8
  %631 = load double, double* %44, align 1
  %632 = inttoptr i64 %629 to double*
  %633 = load double, double* %632, align 8
  %634 = fadd double %631, %633
  store double %634, double* %44, align 1
  %635 = add i64 %600, -16
  %636 = add i64 %173, 246
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i64*
  %638 = load i64, i64* %637, align 8
  store i64 %638, i64* %RAX.i307, align 8
  %639 = add i64 %600, -24
  %640 = add i64 %173, 249
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = add i32 %642, 1
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RCX.i304, align 8
  %645 = sext i32 %643 to i64
  %646 = mul nsw i64 %645, 8000
  store i64 %646, i64* %RDX.i312, align 8
  %647 = lshr i64 %646, 63
  %648 = add i64 %646, %638
  store i64 %648, i64* %RAX.i307, align 8
  %649 = icmp ult i64 %648, %638
  %650 = icmp ult i64 %648, %646
  %651 = or i1 %649, %650
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %34, align 1
  %653 = trunc i64 %648 to i32
  %654 = and i32 %653, 255
  %655 = tail call i32 @llvm.ctpop.i32(i32 %654)
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  store i8 %658, i8* %35, align 1
  %659 = xor i64 %638, %648
  %660 = lshr i64 %659, 4
  %661 = trunc i64 %660 to i8
  %662 = and i8 %661, 1
  store i8 %662, i8* %36, align 1
  %663 = icmp eq i64 %648, 0
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %37, align 1
  %665 = lshr i64 %648, 63
  %666 = trunc i64 %665 to i8
  store i8 %666, i8* %38, align 1
  %667 = lshr i64 %638, 63
  %668 = xor i64 %665, %667
  %669 = xor i64 %665, %647
  %670 = add nuw nsw i64 %668, %669
  %671 = icmp eq i64 %670, 2
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %39, align 1
  %673 = load i64, i64* %RBP.i, align 8
  %674 = add i64 %673, -28
  %675 = add i64 %173, 269
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i32*
  %677 = load i32, i32* %676, align 4
  %678 = sext i32 %677 to i64
  store i64 %678, i64* %RDX.i312, align 8
  %679 = shl nsw i64 %678, 3
  %680 = add i64 %679, %648
  %681 = add i64 %173, 274
  store i64 %681, i64* %3, align 8
  %682 = load double, double* %44, align 1
  %683 = inttoptr i64 %680 to double*
  %684 = load double, double* %683, align 8
  %685 = fadd double %682, %684
  store double %685, double* %44, align 1
  %686 = add i64 %673, -16
  %687 = add i64 %173, 278
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %686 to i64*
  %689 = load i64, i64* %688, align 8
  store i64 %689, i64* %RAX.i307, align 8
  %690 = add i64 %673, -24
  %691 = add i64 %173, 281
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = add i32 %693, 1
  %695 = zext i32 %694 to i64
  store i64 %695, i64* %RCX.i304, align 8
  %696 = sext i32 %694 to i64
  %697 = mul nsw i64 %696, 8000
  store i64 %697, i64* %RDX.i312, align 8
  %698 = lshr i64 %697, 63
  %699 = add i64 %697, %689
  store i64 %699, i64* %RAX.i307, align 8
  %700 = icmp ult i64 %699, %689
  %701 = icmp ult i64 %699, %697
  %702 = or i1 %700, %701
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %34, align 1
  %704 = trunc i64 %699 to i32
  %705 = and i32 %704, 255
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %35, align 1
  %710 = xor i64 %689, %699
  %711 = lshr i64 %710, 4
  %712 = trunc i64 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %36, align 1
  %714 = icmp eq i64 %699, 0
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %37, align 1
  %716 = lshr i64 %699, 63
  %717 = trunc i64 %716 to i8
  store i8 %717, i8* %38, align 1
  %718 = lshr i64 %689, 63
  %719 = xor i64 %716, %718
  %720 = xor i64 %716, %698
  %721 = add nuw nsw i64 %719, %720
  %722 = icmp eq i64 %721, 2
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %39, align 1
  %724 = load i64, i64* %RBP.i, align 8
  %725 = add i64 %724, -28
  %726 = add i64 %173, 300
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = add i32 %728, 1
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RCX.i304, align 8
  %731 = icmp eq i32 %728, -1
  %732 = icmp eq i32 %729, 0
  %733 = or i1 %731, %732
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %34, align 1
  %735 = and i32 %729, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735)
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %35, align 1
  %740 = xor i32 %728, %729
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  store i8 %743, i8* %36, align 1
  %744 = zext i1 %732 to i8
  store i8 %744, i8* %37, align 1
  %745 = lshr i32 %729, 31
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %38, align 1
  %747 = lshr i32 %728, 31
  %748 = xor i32 %745, %747
  %749 = add nuw nsw i32 %748, %745
  %750 = icmp eq i32 %749, 2
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %39, align 1
  %752 = sext i32 %729 to i64
  store i64 %752, i64* %RDX.i312, align 8
  %753 = shl nsw i64 %752, 3
  %754 = add i64 %753, %699
  %755 = add i64 %173, 311
  store i64 %755, i64* %3, align 8
  %756 = load double, double* %44, align 1
  %757 = inttoptr i64 %754 to double*
  %758 = load double, double* %757, align 8
  %759 = fadd double %756, %758
  %760 = load double, double* %47, align 1
  %761 = fdiv double %759, %760
  store double %761, double* %44, align 1
  %762 = add i64 %724, -16
  %763 = add i64 %173, 319
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i64*
  %765 = load i64, i64* %764, align 8
  store i64 %765, i64* %RAX.i307, align 8
  %766 = add i64 %724, -24
  %767 = add i64 %173, 323
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %766 to i32*
  %769 = load i32, i32* %768, align 4
  %770 = sext i32 %769 to i64
  %771 = mul nsw i64 %770, 8000
  store i64 %771, i64* %RDX.i312, align 8
  %772 = lshr i64 %771, 63
  %773 = add i64 %771, %765
  store i64 %773, i64* %RAX.i307, align 8
  %774 = icmp ult i64 %773, %765
  %775 = icmp ult i64 %773, %771
  %776 = or i1 %774, %775
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %34, align 1
  %778 = trunc i64 %773 to i32
  %779 = and i32 %778, 255
  %780 = tail call i32 @llvm.ctpop.i32(i32 %779)
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  store i8 %783, i8* %35, align 1
  %784 = xor i64 %765, %773
  %785 = lshr i64 %784, 4
  %786 = trunc i64 %785 to i8
  %787 = and i8 %786, 1
  store i8 %787, i8* %36, align 1
  %788 = icmp eq i64 %773, 0
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %37, align 1
  %790 = lshr i64 %773, 63
  %791 = trunc i64 %790 to i8
  store i8 %791, i8* %38, align 1
  %792 = lshr i64 %765, 63
  %793 = xor i64 %790, %792
  %794 = xor i64 %790, %772
  %795 = add nuw nsw i64 %793, %794
  %796 = icmp eq i64 %795, 2
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %39, align 1
  %798 = load i64, i64* %RBP.i, align 8
  %799 = add i64 %798, -28
  %800 = add i64 %173, 337
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = sext i32 %802 to i64
  store i64 %803, i64* %RDX.i312, align 8
  %804 = shl nsw i64 %803, 3
  %805 = add i64 %804, %773
  %806 = add i64 %173, 342
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to double*
  store double %761, double* %807, align 8
  %808 = load i64, i64* %RBP.i, align 8
  %809 = add i64 %808, -28
  %810 = load i64, i64* %3, align 8
  %811 = add i64 %810, 3
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %809 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = add i32 %813, 1
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %RAX.i307, align 8
  %816 = icmp eq i32 %813, -1
  %817 = icmp eq i32 %814, 0
  %818 = or i1 %816, %817
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %34, align 1
  %820 = and i32 %814, 255
  %821 = tail call i32 @llvm.ctpop.i32(i32 %820)
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %35, align 1
  %825 = xor i32 %813, %814
  %826 = lshr i32 %825, 4
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  store i8 %828, i8* %36, align 1
  %829 = zext i1 %817 to i8
  store i8 %829, i8* %37, align 1
  %830 = lshr i32 %814, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %38, align 1
  %832 = lshr i32 %813, 31
  %833 = xor i32 %830, %832
  %834 = add nuw nsw i32 %833, %830
  %835 = icmp eq i32 %834, 2
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %39, align 1
  %837 = add i64 %810, 9
  store i64 %837, i64* %3, align 8
  store i32 %814, i32* %812, align 4
  %838 = load i64, i64* %3, align 8
  %839 = add i64 %838, -368
  store i64 %839, i64* %3, align 8
  br label %block_.L_400ae5

block_.L_400c5a:                                  ; preds = %block_.L_400ae5
  %840 = add i64 %135, -24
  %841 = add i64 %173, 8
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %840 to i32*
  %843 = load i32, i32* %842, align 4
  %844 = add i32 %843, 1
  %845 = zext i32 %844 to i64
  store i64 %845, i64* %RAX.i307, align 8
  %846 = icmp eq i32 %843, -1
  %847 = icmp eq i32 %844, 0
  %848 = or i1 %846, %847
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %34, align 1
  %850 = and i32 %844, 255
  %851 = tail call i32 @llvm.ctpop.i32(i32 %850)
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = xor i8 %853, 1
  store i8 %854, i8* %35, align 1
  %855 = xor i32 %843, %844
  %856 = lshr i32 %855, 4
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  store i8 %858, i8* %36, align 1
  %859 = zext i1 %847 to i8
  store i8 %859, i8* %37, align 1
  %860 = lshr i32 %844, 31
  %861 = trunc i32 %860 to i8
  store i8 %861, i8* %38, align 1
  %862 = lshr i32 %843, 31
  %863 = xor i32 %860, %862
  %864 = add nuw nsw i32 %863, %860
  %865 = icmp eq i32 %864, 2
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %39, align 1
  %867 = add i64 %173, 14
  store i64 %867, i64* %3, align 8
  store i32 %844, i32* %842, align 4
  %868 = load i64, i64* %3, align 8
  %869 = add i64 %868, -411
  store i64 %869, i64* %3, align 8
  br label %block_.L_400acd

block_.L_400c6d:                                  ; preds = %block_.L_400acd
  %870 = add i64 %92, -20
  %871 = add i64 %130, 8
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = add i32 %873, 1
  %875 = zext i32 %874 to i64
  store i64 %875, i64* %RAX.i307, align 8
  %876 = icmp eq i32 %873, -1
  %877 = icmp eq i32 %874, 0
  %878 = or i1 %876, %877
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %34, align 1
  %880 = and i32 %874, 255
  %881 = tail call i32 @llvm.ctpop.i32(i32 %880)
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  store i8 %884, i8* %35, align 1
  %885 = xor i32 %873, %874
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %36, align 1
  %889 = zext i1 %877 to i8
  store i8 %889, i8* %37, align 1
  %890 = lshr i32 %874, 31
  %891 = trunc i32 %890 to i8
  store i8 %891, i8* %38, align 1
  %892 = lshr i32 %873, 31
  %893 = xor i32 %890, %892
  %894 = add nuw nsw i32 %893, %890
  %895 = icmp eq i32 %894, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %39, align 1
  %897 = add i64 %130, 14
  store i64 %897, i64* %3, align 8
  store i32 %874, i32* %872, align 4
  %898 = load i64, i64* %3, align 8
  %899 = add i64 %898, -454
  store i64 %899, i64* %3, align 8
  br label %block_.L_400ab5

block_.L_400c80:                                  ; preds = %block_.L_400ab5
  %900 = add i64 %87, 1
  store i64 %900, i64* %3, align 8
  %901 = load i64, i64* %6, align 8
  %902 = add i64 %901, 8
  %903 = inttoptr i64 %901 to i64*
  %904 = load i64, i64* %903, align 8
  store i64 %904, i64* %RBP.i, align 8
  store i64 %902, i64* %6, align 8
  %905 = add i64 %87, 2
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %902 to i64*
  %907 = load i64, i64* %906, align 8
  store i64 %907, i64* %3, align 8
  %908 = add i64 %901, 16
  store i64 %908, i64* %6, align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
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
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x5d2__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x5d2__rip__4197118__type* @G_0x5d2__rip__4197118_ to i64*), align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
