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
define %struct.Memory* @kernel_reg_detect_StrictFP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 16
  %12 = add i64 %10, 7
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i567, align 8
  %R10.i565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %15 = add i64 %7, 8
  %16 = add i64 %10, 11
  store i64 %16, i64* %3, align 8
  %17 = inttoptr i64 %15 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %R10.i565, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %19 to i32*
  %20 = add i64 %7, -12
  %21 = load i32, i32* %EDI.i, align 4
  %22 = add i64 %10, 14
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %24 to i32*
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, -8
  %27 = load i32, i32* %ESI.i, align 4
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 3
  store i64 %29, i64* %3, align 8
  %30 = inttoptr i64 %26 to i32*
  store i32 %27, i32* %30, align 4
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i557 = bitcast %union.anon* %31 to i32*
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -12
  %34 = load i32, i32* %EDX.i557, align 4
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %3, align 8
  %37 = inttoptr i64 %33 to i32*
  store i32 %34, i32* %37, align 4
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i554 = getelementptr inbounds %union.anon, %union.anon* %38, i64 0, i32 0
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -24
  %41 = load i64, i64* %RCX.i554, align 8
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 4
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %44, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -32
  %47 = load i64, i64* %R8.i, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -40
  %53 = load i64, i64* %R9.i, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -44
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 7
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 0, i32* %61, align 4
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -64
  %64 = load i64, i64* %R10.i565, align 8
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -72
  %70 = load i64, i64* %RAX.i567, align 8
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 4
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %69 to i64*
  store i64 %70, i64* %73, align 8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %ECX.i524 = bitcast %union.anon* %38 to i32*
  %RDX.i474 = getelementptr inbounds %union.anon, %union.anon* %31, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400e90

block_.L_400e90:                                  ; preds = %block_.L_40118d, %entry
  %80 = phi i64 [ %1658, %block_.L_40118d ], [ %.pre, %entry ]
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -44
  %83 = add i64 %80, 3
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %RAX.i567, align 8
  %87 = add i64 %81, -4
  %88 = add i64 %80, 6
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = sub i32 %85, %90
  %92 = icmp ult i32 %85, %90
  %93 = zext i1 %92 to i8
  store i8 %93, i8* %74, align 1
  %94 = and i32 %91, 255
  %95 = tail call i32 @llvm.ctpop.i32(i32 %94)
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  store i8 %98, i8* %75, align 1
  %99 = xor i32 %90, %85
  %100 = xor i32 %99, %91
  %101 = lshr i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %76, align 1
  %104 = icmp eq i32 %91, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %77, align 1
  %106 = lshr i32 %91, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %78, align 1
  %108 = lshr i32 %85, 31
  %109 = lshr i32 %90, 31
  %110 = xor i32 %109, %108
  %111 = xor i32 %106, %108
  %112 = add nuw nsw i32 %111, %110
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %79, align 1
  %115 = icmp ne i8 %107, 0
  %116 = xor i1 %115, %113
  %.v = select i1 %116, i64 12, i64 784
  %117 = add i64 %80, %.v
  store i64 %117, i64* %3, align 8
  br i1 %116, label %block_400e9c, label %block_.L_4011a0

block_400e9c:                                     ; preds = %block_.L_400e90
  %118 = add i64 %81, -52
  %119 = add i64 %117, 7
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  store i32 0, i32* %120, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400ea3

block_.L_400ea3:                                  ; preds = %block_.L_400f3e, %block_400e9c
  %121 = phi i64 [ %465, %block_.L_400f3e ], [ %.pre1, %block_400e9c ]
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -52
  %124 = add i64 %121, 3
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RAX.i567, align 8
  %128 = add i64 %122, -8
  %129 = add i64 %121, 6
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %131, -1
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RCX.i554, align 8
  %134 = lshr i32 %132, 31
  %135 = sub i32 %126, %132
  %136 = icmp ult i32 %126, %132
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %74, align 1
  %138 = and i32 %135, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138)
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %75, align 1
  %143 = xor i32 %132, %126
  %144 = xor i32 %143, %135
  %145 = lshr i32 %144, 4
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  store i8 %147, i8* %76, align 1
  %148 = icmp eq i32 %135, 0
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %77, align 1
  %150 = lshr i32 %135, 31
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %78, align 1
  %152 = lshr i32 %126, 31
  %153 = xor i32 %134, %152
  %154 = xor i32 %150, %152
  %155 = add nuw nsw i32 %154, %153
  %156 = icmp eq i32 %155, 2
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %79, align 1
  %158 = icmp ne i8 %151, 0
  %159 = xor i1 %158, %156
  %.demorgan = or i1 %148, %159
  %.v10 = select i1 %.demorgan, i64 17, i64 174
  %160 = add i64 %121, %.v10
  store i64 %160, i64* %3, align 8
  br i1 %.demorgan, label %block_400eb4, label %block_.L_400f51

block_400eb4:                                     ; preds = %block_.L_400ea3
  %161 = add i64 %160, 3
  store i64 %161, i64* %3, align 8
  %162 = load i32, i32* %125, align 4
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RAX.i567, align 8
  %164 = add i64 %122, -48
  %165 = add i64 %160, 6
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  store i32 %162, i32* %166, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400eba

block_.L_400eba:                                  ; preds = %block_.L_400f2b, %block_400eb4
  %167 = phi i64 [ %435, %block_.L_400f2b ], [ %.pre2, %block_400eb4 ]
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -48
  %170 = add i64 %167, 3
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX.i567, align 8
  %174 = add i64 %168, -8
  %175 = add i64 %167, 6
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = add i32 %177, -1
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RCX.i554, align 8
  %180 = lshr i32 %178, 31
  %181 = sub i32 %172, %178
  %182 = icmp ult i32 %172, %178
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %74, align 1
  %184 = and i32 %181, 255
  %185 = tail call i32 @llvm.ctpop.i32(i32 %184)
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  store i8 %188, i8* %75, align 1
  %189 = xor i32 %178, %172
  %190 = xor i32 %189, %181
  %191 = lshr i32 %190, 4
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %76, align 1
  %194 = icmp eq i32 %181, 0
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %77, align 1
  %196 = lshr i32 %181, 31
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %78, align 1
  %198 = lshr i32 %172, 31
  %199 = xor i32 %180, %198
  %200 = xor i32 %196, %198
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %79, align 1
  %204 = icmp ne i8 %197, 0
  %205 = xor i1 %204, %202
  %.demorgan11 = or i1 %194, %205
  %.v12 = select i1 %.demorgan11, i64 17, i64 132
  %206 = add i64 %167, %.v12
  store i64 %206, i64* %3, align 8
  br i1 %.demorgan11, label %block_400ecb, label %block_.L_400f3e

block_400ecb:                                     ; preds = %block_.L_400eba
  %207 = add i64 %168, -56
  %208 = add i64 %206, 7
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  store i32 0, i32* %209, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400ed2

block_.L_400ed2:                                  ; preds = %block_400ee3, %block_400ecb
  %210 = phi i64 [ %405, %block_400ee3 ], [ %.pre3, %block_400ecb ]
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -56
  %213 = add i64 %210, 3
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RAX.i567, align 8
  %217 = add i64 %211, -12
  %218 = add i64 %210, 6
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, -1
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RCX.i554, align 8
  %223 = lshr i32 %221, 31
  %224 = sub i32 %215, %221
  %225 = icmp ult i32 %215, %221
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %74, align 1
  %227 = and i32 %224, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227)
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %75, align 1
  %232 = xor i32 %221, %215
  %233 = xor i32 %232, %224
  %234 = lshr i32 %233, 4
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %76, align 1
  %237 = icmp eq i32 %224, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %77, align 1
  %239 = lshr i32 %224, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %78, align 1
  %241 = lshr i32 %215, 31
  %242 = xor i32 %223, %241
  %243 = xor i32 %239, %241
  %244 = add nuw nsw i32 %243, %242
  %245 = icmp eq i32 %244, 2
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %79, align 1
  %247 = icmp ne i8 %240, 0
  %248 = xor i1 %247, %245
  %.demorgan13 = or i1 %237, %248
  %.v14 = select i1 %.demorgan13, i64 17, i64 89
  %249 = add i64 %210, %.v14
  store i64 %249, i64* %3, align 8
  br i1 %.demorgan13, label %block_400ee3, label %block_.L_400f2b

block_400ee3:                                     ; preds = %block_.L_400ed2
  %250 = add i64 %211, -24
  %251 = add i64 %249, 4
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RAX.i567, align 8
  %254 = add i64 %211, -52
  %255 = add i64 %249, 8
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = mul nsw i64 %258, 24
  store i64 %259, i64* %RCX.i554, align 8
  %260 = lshr i64 %259, 63
  %261 = add i64 %259, %253
  store i64 %261, i64* %RAX.i567, align 8
  %262 = icmp ult i64 %261, %253
  %263 = icmp ult i64 %261, %259
  %264 = or i1 %262, %263
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %74, align 1
  %266 = trunc i64 %261 to i32
  %267 = and i32 %266, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %75, align 1
  %272 = xor i64 %259, %253
  %273 = xor i64 %272, %261
  %274 = lshr i64 %273, 4
  %275 = trunc i64 %274 to i8
  %276 = and i8 %275, 1
  store i8 %276, i8* %76, align 1
  %277 = icmp eq i64 %261, 0
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %77, align 1
  %279 = lshr i64 %261, 63
  %280 = trunc i64 %279 to i8
  store i8 %280, i8* %78, align 1
  %281 = lshr i64 %253, 63
  %282 = xor i64 %279, %281
  %283 = xor i64 %279, %260
  %284 = add nuw nsw i64 %282, %283
  %285 = icmp eq i64 %284, 2
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %79, align 1
  %287 = add i64 %211, -48
  %288 = add i64 %249, 19
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %RCX.i554, align 8
  %292 = shl nsw i64 %291, 2
  %293 = add i64 %292, %261
  %294 = add i64 %249, 22
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RDX.i474, align 8
  %298 = add i64 %211, 16
  %299 = add i64 %249, 26
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %RAX.i567, align 8
  %302 = add i64 %249, 30
  store i64 %302, i64* %3, align 8
  %303 = load i32, i32* %256, align 4
  %304 = sext i32 %303 to i64
  %305 = mul nsw i64 %304, 1536
  store i64 %305, i64* %RCX.i554, align 8
  %306 = lshr i64 %305, 63
  %307 = add i64 %305, %301
  store i64 %307, i64* %RAX.i567, align 8
  %308 = icmp ult i64 %307, %301
  %309 = icmp ult i64 %307, %305
  %310 = or i1 %308, %309
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %74, align 1
  %312 = trunc i64 %307 to i32
  %313 = and i32 %312, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %75, align 1
  %318 = xor i64 %301, %307
  %319 = lshr i64 %318, 4
  %320 = trunc i64 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %76, align 1
  %322 = icmp eq i64 %307, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %77, align 1
  %324 = lshr i64 %307, 63
  %325 = trunc i64 %324 to i8
  store i8 %325, i8* %78, align 1
  %326 = lshr i64 %301, 63
  %327 = xor i64 %324, %326
  %328 = xor i64 %324, %306
  %329 = add nuw nsw i64 %327, %328
  %330 = icmp eq i64 %329, 2
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %79, align 1
  %332 = load i64, i64* %RBP.i, align 8
  %333 = add i64 %332, -48
  %334 = add i64 %249, 44
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = shl nsw i64 %337, 8
  store i64 %338, i64* %RCX.i554, align 8
  %339 = lshr i64 %337, 55
  %340 = and i64 %339, 1
  %341 = add i64 %338, %307
  store i64 %341, i64* %RAX.i567, align 8
  %342 = icmp ult i64 %341, %307
  %343 = icmp ult i64 %341, %338
  %344 = or i1 %342, %343
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %74, align 1
  %346 = trunc i64 %341 to i32
  %347 = and i32 %346, 255
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347)
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %75, align 1
  %352 = xor i64 %307, %341
  %353 = lshr i64 %352, 4
  %354 = trunc i64 %353 to i8
  %355 = and i8 %354, 1
  store i8 %355, i8* %76, align 1
  %356 = icmp eq i64 %341, 0
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %77, align 1
  %358 = lshr i64 %341, 63
  %359 = trunc i64 %358 to i8
  store i8 %359, i8* %78, align 1
  %360 = xor i64 %358, %324
  %361 = xor i64 %358, %340
  %362 = add nuw nsw i64 %360, %361
  %363 = icmp eq i64 %362, 2
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %79, align 1
  %365 = add i64 %332, -56
  %366 = add i64 %249, 55
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %RCX.i554, align 8
  %370 = shl nsw i64 %369, 2
  %371 = add i64 %370, %341
  %372 = add i64 %249, 58
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i32*
  store i32 %296, i32* %373, align 4
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -56
  %376 = load i64, i64* %3, align 8
  %377 = add i64 %376, 3
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %375 to i32*
  %379 = load i32, i32* %378, align 4
  %380 = add i32 %379, 1
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RAX.i567, align 8
  %382 = icmp eq i32 %379, -1
  %383 = icmp eq i32 %380, 0
  %384 = or i1 %382, %383
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %74, align 1
  %386 = and i32 %380, 255
  %387 = tail call i32 @llvm.ctpop.i32(i32 %386)
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = xor i8 %389, 1
  store i8 %390, i8* %75, align 1
  %391 = xor i32 %379, %380
  %392 = lshr i32 %391, 4
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  store i8 %394, i8* %76, align 1
  %395 = zext i1 %383 to i8
  store i8 %395, i8* %77, align 1
  %396 = lshr i32 %380, 31
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %78, align 1
  %398 = lshr i32 %379, 31
  %399 = xor i32 %396, %398
  %400 = add nuw nsw i32 %399, %396
  %401 = icmp eq i32 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %79, align 1
  %403 = add i64 %376, 9
  store i64 %403, i64* %3, align 8
  store i32 %380, i32* %378, align 4
  %404 = load i64, i64* %3, align 8
  %405 = add i64 %404, -84
  store i64 %405, i64* %3, align 8
  br label %block_.L_400ed2

block_.L_400f2b:                                  ; preds = %block_.L_400ed2
  %406 = add i64 %211, -48
  %407 = add i64 %249, 8
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = add i32 %409, 1
  %411 = zext i32 %410 to i64
  store i64 %411, i64* %RAX.i567, align 8
  %412 = icmp eq i32 %409, -1
  %413 = icmp eq i32 %410, 0
  %414 = or i1 %412, %413
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %74, align 1
  %416 = and i32 %410, 255
  %417 = tail call i32 @llvm.ctpop.i32(i32 %416)
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  %420 = xor i8 %419, 1
  store i8 %420, i8* %75, align 1
  %421 = xor i32 %409, %410
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %76, align 1
  %425 = zext i1 %413 to i8
  store i8 %425, i8* %77, align 1
  %426 = lshr i32 %410, 31
  %427 = trunc i32 %426 to i8
  store i8 %427, i8* %78, align 1
  %428 = lshr i32 %409, 31
  %429 = xor i32 %426, %428
  %430 = add nuw nsw i32 %429, %426
  %431 = icmp eq i32 %430, 2
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %79, align 1
  %433 = add i64 %249, 14
  store i64 %433, i64* %3, align 8
  store i32 %410, i32* %408, align 4
  %434 = load i64, i64* %3, align 8
  %435 = add i64 %434, -127
  store i64 %435, i64* %3, align 8
  br label %block_.L_400eba

block_.L_400f3e:                                  ; preds = %block_.L_400eba
  %436 = add i64 %168, -52
  %437 = add i64 %206, 8
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = add i32 %439, 1
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RAX.i567, align 8
  %442 = icmp eq i32 %439, -1
  %443 = icmp eq i32 %440, 0
  %444 = or i1 %442, %443
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %74, align 1
  %446 = and i32 %440, 255
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446)
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  store i8 %450, i8* %75, align 1
  %451 = xor i32 %439, %440
  %452 = lshr i32 %451, 4
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  store i8 %454, i8* %76, align 1
  %455 = zext i1 %443 to i8
  store i8 %455, i8* %77, align 1
  %456 = lshr i32 %440, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %78, align 1
  %458 = lshr i32 %439, 31
  %459 = xor i32 %456, %458
  %460 = add nuw nsw i32 %459, %456
  %461 = icmp eq i32 %460, 2
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %79, align 1
  %463 = add i64 %206, 14
  store i64 %463, i64* %3, align 8
  store i32 %440, i32* %438, align 4
  %464 = load i64, i64* %3, align 8
  %465 = add i64 %464, -169
  store i64 %465, i64* %3, align 8
  br label %block_.L_400ea3

block_.L_400f51:                                  ; preds = %block_.L_400ea3
  %466 = add i64 %160, 7
  store i64 %466, i64* %3, align 8
  store i32 0, i32* %125, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400f58

block_.L_400f58:                                  ; preds = %block_.L_4010a2, %block_.L_400f51
  %467 = phi i64 [ %1191, %block_.L_4010a2 ], [ %.pre4, %block_.L_400f51 ]
  %468 = load i64, i64* %RBP.i, align 8
  %469 = add i64 %468, -52
  %470 = add i64 %467, 3
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RAX.i567, align 8
  %474 = add i64 %468, -8
  %475 = add i64 %467, 6
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = add i32 %477, -1
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RCX.i554, align 8
  %480 = lshr i32 %478, 31
  %481 = sub i32 %472, %478
  %482 = icmp ult i32 %472, %478
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %74, align 1
  %484 = and i32 %481, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %75, align 1
  %489 = xor i32 %478, %472
  %490 = xor i32 %489, %481
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %76, align 1
  %494 = icmp eq i32 %481, 0
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %77, align 1
  %496 = lshr i32 %481, 31
  %497 = trunc i32 %496 to i8
  store i8 %497, i8* %78, align 1
  %498 = lshr i32 %472, 31
  %499 = xor i32 %480, %498
  %500 = xor i32 %496, %498
  %501 = add nuw nsw i32 %500, %499
  %502 = icmp eq i32 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %79, align 1
  %504 = icmp ne i8 %497, 0
  %505 = xor i1 %504, %502
  %.demorgan15 = or i1 %494, %505
  %.v16 = select i1 %.demorgan15, i64 17, i64 349
  %506 = add i64 %467, %.v16
  store i64 %506, i64* %3, align 8
  br i1 %.demorgan15, label %block_400f69, label %block_.L_4010b5

block_400f69:                                     ; preds = %block_.L_400f58
  %507 = add i64 %506, 3
  store i64 %507, i64* %3, align 8
  %508 = load i32, i32* %471, align 4
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RAX.i567, align 8
  %510 = add i64 %468, -48
  %511 = add i64 %506, 6
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %510 to i32*
  store i32 %508, i32* %512, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400f6f

block_.L_400f6f:                                  ; preds = %block_.L_401055, %block_400f69
  %513 = phi i64 [ %1161, %block_.L_401055 ], [ %.pre5, %block_400f69 ]
  %514 = load i64, i64* %RBP.i, align 8
  %515 = add i64 %514, -48
  %516 = add i64 %513, 3
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i32*
  %518 = load i32, i32* %517, align 4
  %519 = zext i32 %518 to i64
  store i64 %519, i64* %RAX.i567, align 8
  %520 = add i64 %514, -8
  %521 = add i64 %513, 6
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i32*
  %523 = load i32, i32* %522, align 4
  %524 = add i32 %523, -1
  %525 = zext i32 %524 to i64
  store i64 %525, i64* %RCX.i554, align 8
  %526 = lshr i32 %524, 31
  %527 = sub i32 %518, %524
  %528 = icmp ult i32 %518, %524
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %74, align 1
  %530 = and i32 %527, 255
  %531 = tail call i32 @llvm.ctpop.i32(i32 %530)
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, i8* %75, align 1
  %535 = xor i32 %524, %518
  %536 = xor i32 %535, %527
  %537 = lshr i32 %536, 4
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  store i8 %539, i8* %76, align 1
  %540 = icmp eq i32 %527, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %77, align 1
  %542 = lshr i32 %527, 31
  %543 = trunc i32 %542 to i8
  store i8 %543, i8* %78, align 1
  %544 = lshr i32 %518, 31
  %545 = xor i32 %526, %544
  %546 = xor i32 %542, %544
  %547 = add nuw nsw i32 %546, %545
  %548 = icmp eq i32 %547, 2
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %79, align 1
  %550 = icmp ne i8 %543, 0
  %551 = xor i1 %550, %548
  %.demorgan17 = or i1 %540, %551
  %.v18 = select i1 %.demorgan17, i64 17, i64 307
  %552 = add i64 %513, %.v18
  store i64 %552, i64* %3, align 8
  br i1 %.demorgan17, label %block_400f80, label %block_.L_4010a2

block_400f80:                                     ; preds = %block_.L_400f6f
  %553 = add i64 %514, 16
  %554 = add i64 %552, 4
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i64*
  %556 = load i64, i64* %555, align 8
  store i64 %556, i64* %RAX.i567, align 8
  %557 = add i64 %514, -52
  %558 = add i64 %552, 8
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = sext i32 %560 to i64
  %562 = mul nsw i64 %561, 1536
  store i64 %562, i64* %RCX.i554, align 8
  %563 = lshr i64 %562, 63
  %564 = add i64 %562, %556
  store i64 %564, i64* %RAX.i567, align 8
  %565 = icmp ult i64 %564, %556
  %566 = icmp ult i64 %564, %562
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %74, align 1
  %569 = trunc i64 %564 to i32
  %570 = and i32 %569, 255
  %571 = tail call i32 @llvm.ctpop.i32(i32 %570)
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  store i8 %574, i8* %75, align 1
  %575 = xor i64 %556, %564
  %576 = lshr i64 %575, 4
  %577 = trunc i64 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %76, align 1
  %579 = icmp eq i64 %564, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %77, align 1
  %581 = lshr i64 %564, 63
  %582 = trunc i64 %581 to i8
  store i8 %582, i8* %78, align 1
  %583 = lshr i64 %556, 63
  %584 = xor i64 %581, %583
  %585 = xor i64 %581, %563
  %586 = add nuw nsw i64 %584, %585
  %587 = icmp eq i64 %586, 2
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %79, align 1
  %589 = add i64 %552, 22
  store i64 %589, i64* %3, align 8
  %590 = load i32, i32* %517, align 4
  %591 = sext i32 %590 to i64
  %592 = shl nsw i64 %591, 8
  store i64 %592, i64* %RCX.i554, align 8
  %593 = lshr i64 %591, 55
  %594 = and i64 %593, 1
  %595 = add i64 %592, %564
  store i64 %595, i64* %RAX.i567, align 8
  %596 = icmp ult i64 %595, %564
  %597 = icmp ult i64 %595, %592
  %598 = or i1 %596, %597
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %74, align 1
  %600 = trunc i64 %595 to i32
  %601 = and i32 %600, 255
  %602 = tail call i32 @llvm.ctpop.i32(i32 %601)
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = xor i8 %604, 1
  store i8 %605, i8* %75, align 1
  %606 = xor i64 %564, %595
  %607 = lshr i64 %606, 4
  %608 = trunc i64 %607 to i8
  %609 = and i8 %608, 1
  store i8 %609, i8* %76, align 1
  %610 = icmp eq i64 %595, 0
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %77, align 1
  %612 = lshr i64 %595, 63
  %613 = trunc i64 %612 to i8
  store i8 %613, i8* %78, align 1
  %614 = xor i64 %612, %581
  %615 = xor i64 %612, %594
  %616 = add nuw nsw i64 %614, %615
  %617 = icmp eq i64 %616, 2
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %79, align 1
  %619 = add i64 %552, 31
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %595 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RDX.i474, align 8
  %623 = add i64 %514, 24
  %624 = add i64 %552, 35
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i64*
  %626 = load i64, i64* %625, align 8
  store i64 %626, i64* %RAX.i567, align 8
  %627 = add i64 %552, 39
  store i64 %627, i64* %3, align 8
  %628 = load i32, i32* %559, align 4
  %629 = sext i32 %628 to i64
  %630 = mul nsw i64 %629, 1536
  store i64 %630, i64* %RCX.i554, align 8
  %631 = lshr i64 %630, 63
  %632 = add i64 %630, %626
  store i64 %632, i64* %RAX.i567, align 8
  %633 = icmp ult i64 %632, %626
  %634 = icmp ult i64 %632, %630
  %635 = or i1 %633, %634
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %74, align 1
  %637 = trunc i64 %632 to i32
  %638 = and i32 %637, 255
  %639 = tail call i32 @llvm.ctpop.i32(i32 %638)
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  store i8 %642, i8* %75, align 1
  %643 = xor i64 %626, %632
  %644 = lshr i64 %643, 4
  %645 = trunc i64 %644 to i8
  %646 = and i8 %645, 1
  store i8 %646, i8* %76, align 1
  %647 = icmp eq i64 %632, 0
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %77, align 1
  %649 = lshr i64 %632, 63
  %650 = trunc i64 %649 to i8
  store i8 %650, i8* %78, align 1
  %651 = lshr i64 %626, 63
  %652 = xor i64 %649, %651
  %653 = xor i64 %649, %631
  %654 = add nuw nsw i64 %652, %653
  %655 = icmp eq i64 %654, 2
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %79, align 1
  %657 = add i64 %552, 53
  store i64 %657, i64* %3, align 8
  %658 = load i32, i32* %517, align 4
  %659 = sext i32 %658 to i64
  %660 = shl nsw i64 %659, 8
  store i64 %660, i64* %RCX.i554, align 8
  %661 = lshr i64 %659, 55
  %662 = and i64 %661, 1
  %663 = add i64 %660, %632
  store i64 %663, i64* %RAX.i567, align 8
  %664 = icmp ult i64 %663, %632
  %665 = icmp ult i64 %663, %660
  %666 = or i1 %664, %665
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %74, align 1
  %668 = trunc i64 %663 to i32
  %669 = and i32 %668, 255
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %75, align 1
  %674 = xor i64 %632, %663
  %675 = lshr i64 %674, 4
  %676 = trunc i64 %675 to i8
  %677 = and i8 %676, 1
  store i8 %677, i8* %76, align 1
  %678 = icmp eq i64 %663, 0
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %77, align 1
  %680 = lshr i64 %663, 63
  %681 = trunc i64 %680 to i8
  store i8 %681, i8* %78, align 1
  %682 = xor i64 %680, %649
  %683 = xor i64 %680, %662
  %684 = add nuw nsw i64 %682, %683
  %685 = icmp eq i64 %684, 2
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %79, align 1
  %687 = add i64 %552, 62
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %663 to i32*
  store i32 %621, i32* %688, align 4
  %689 = load i64, i64* %RBP.i, align 8
  %690 = add i64 %689, -56
  %691 = load i64, i64* %3, align 8
  %692 = add i64 %691, 7
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %690 to i32*
  store i32 1, i32* %693, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400fc5

block_.L_400fc5:                                  ; preds = %block_400fd6, %block_400f80
  %694 = phi i64 [ %1050, %block_400fd6 ], [ %.pre6, %block_400f80 ]
  %695 = load i64, i64* %RBP.i, align 8
  %696 = add i64 %695, -56
  %697 = add i64 %694, 3
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RAX.i567, align 8
  %701 = add i64 %695, -12
  %702 = add i64 %694, 6
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = add i32 %704, -1
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %RCX.i554, align 8
  %707 = lshr i32 %705, 31
  %708 = sub i32 %699, %705
  %709 = icmp ult i32 %699, %705
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %74, align 1
  %711 = and i32 %708, 255
  %712 = tail call i32 @llvm.ctpop.i32(i32 %711)
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  %715 = xor i8 %714, 1
  store i8 %715, i8* %75, align 1
  %716 = xor i32 %705, %699
  %717 = xor i32 %716, %708
  %718 = lshr i32 %717, 4
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  store i8 %720, i8* %76, align 1
  %721 = icmp eq i32 %708, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %77, align 1
  %723 = lshr i32 %708, 31
  %724 = trunc i32 %723 to i8
  store i8 %724, i8* %78, align 1
  %725 = lshr i32 %699, 31
  %726 = xor i32 %707, %725
  %727 = xor i32 %723, %725
  %728 = add nuw nsw i32 %727, %726
  %729 = icmp eq i32 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %79, align 1
  %731 = icmp ne i8 %724, 0
  %732 = xor i1 %731, %729
  %.demorgan19 = or i1 %721, %732
  %.v20 = select i1 %.demorgan19, i64 17, i64 144
  %733 = add i64 %694, %.v20
  %734 = add i64 %695, 24
  %735 = add i64 %733, 4
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %734 to i64*
  %737 = load i64, i64* %736, align 8
  store i64 %737, i64* %RAX.i567, align 8
  %738 = add i64 %695, -52
  %739 = add i64 %733, 8
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i32*
  %741 = load i32, i32* %740, align 4
  %742 = sext i32 %741 to i64
  %743 = mul nsw i64 %742, 1536
  store i64 %743, i64* %RCX.i554, align 8
  %744 = lshr i64 %743, 63
  %745 = add i64 %743, %737
  store i64 %745, i64* %RAX.i567, align 8
  %746 = icmp ult i64 %745, %737
  %747 = icmp ult i64 %745, %743
  %748 = or i1 %746, %747
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %74, align 1
  %750 = trunc i64 %745 to i32
  %751 = and i32 %750, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751)
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %75, align 1
  %756 = xor i64 %737, %745
  %757 = lshr i64 %756, 4
  %758 = trunc i64 %757 to i8
  %759 = and i8 %758, 1
  store i8 %759, i8* %76, align 1
  %760 = icmp eq i64 %745, 0
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %77, align 1
  %762 = lshr i64 %745, 63
  %763 = trunc i64 %762 to i8
  store i8 %763, i8* %78, align 1
  %764 = lshr i64 %737, 63
  %765 = xor i64 %762, %764
  %766 = xor i64 %762, %744
  %767 = add nuw nsw i64 %765, %766
  %768 = icmp eq i64 %767, 2
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %79, align 1
  %770 = add i64 %695, -48
  %771 = add i64 %733, 22
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = sext i32 %773 to i64
  %775 = shl nsw i64 %774, 8
  store i64 %775, i64* %RCX.i554, align 8
  %776 = lshr i64 %774, 55
  %777 = and i64 %776, 1
  %778 = add i64 %733, 29
  store i64 %778, i64* %3, align 8
  %779 = add i64 %775, %745
  store i64 %779, i64* %RAX.i567, align 8
  %780 = icmp ult i64 %779, %745
  %781 = icmp ult i64 %779, %775
  %782 = or i1 %780, %781
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %74, align 1
  %784 = trunc i64 %779 to i32
  %785 = and i32 %784, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %75, align 1
  %790 = xor i64 %745, %779
  %791 = lshr i64 %790, 4
  %792 = trunc i64 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %76, align 1
  %794 = icmp eq i64 %779, 0
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %77, align 1
  %796 = lshr i64 %779, 63
  %797 = trunc i64 %796 to i8
  store i8 %797, i8* %78, align 1
  %798 = xor i64 %796, %762
  %799 = xor i64 %796, %777
  %800 = add nuw nsw i64 %798, %799
  %801 = icmp eq i64 %800, 2
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %79, align 1
  %803 = load i64, i64* %RBP.i, align 8
  br i1 %.demorgan19, label %block_400fd6, label %block_.L_401055

block_400fd6:                                     ; preds = %block_.L_400fc5
  %804 = add i64 %803, -56
  %805 = add i64 %733, 32
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i32*
  %807 = load i32, i32* %806, align 4
  %808 = add i32 %807, -1
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %RDX.i474, align 8
  %810 = icmp eq i32 %807, 0
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %74, align 1
  %812 = and i32 %808, 255
  %813 = tail call i32 @llvm.ctpop.i32(i32 %812)
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  store i8 %816, i8* %75, align 1
  %817 = xor i32 %807, %808
  %818 = lshr i32 %817, 4
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  store i8 %820, i8* %76, align 1
  %821 = icmp eq i32 %808, 0
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %77, align 1
  %823 = lshr i32 %808, 31
  %824 = trunc i32 %823 to i8
  store i8 %824, i8* %78, align 1
  %825 = lshr i32 %807, 31
  %826 = xor i32 %823, %825
  %827 = add nuw nsw i32 %826, %825
  %828 = icmp eq i32 %827, 2
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %79, align 1
  %830 = sext i32 %808 to i64
  store i64 %830, i64* %RCX.i554, align 8
  %831 = shl nsw i64 %830, 2
  %832 = add i64 %831, %779
  %833 = add i64 %733, 41
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i32*
  %835 = load i32, i32* %834, align 4
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RDX.i474, align 8
  %837 = add i64 %803, 16
  %838 = add i64 %733, 45
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i64*
  %840 = load i64, i64* %839, align 8
  store i64 %840, i64* %RAX.i567, align 8
  %841 = add i64 %803, -52
  %842 = add i64 %733, 49
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = sext i32 %844 to i64
  %846 = mul nsw i64 %845, 1536
  store i64 %846, i64* %RCX.i554, align 8
  %847 = lshr i64 %846, 63
  %848 = add i64 %846, %840
  store i64 %848, i64* %RAX.i567, align 8
  %849 = icmp ult i64 %848, %840
  %850 = icmp ult i64 %848, %846
  %851 = or i1 %849, %850
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %74, align 1
  %853 = trunc i64 %848 to i32
  %854 = and i32 %853, 255
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %75, align 1
  %859 = xor i64 %840, %848
  %860 = lshr i64 %859, 4
  %861 = trunc i64 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %76, align 1
  %863 = icmp eq i64 %848, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %77, align 1
  %865 = lshr i64 %848, 63
  %866 = trunc i64 %865 to i8
  store i8 %866, i8* %78, align 1
  %867 = lshr i64 %840, 63
  %868 = xor i64 %865, %867
  %869 = xor i64 %865, %847
  %870 = add nuw nsw i64 %868, %869
  %871 = icmp eq i64 %870, 2
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %79, align 1
  %873 = add i64 %803, -48
  %874 = add i64 %733, 63
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = sext i32 %876 to i64
  %878 = shl nsw i64 %877, 8
  store i64 %878, i64* %RCX.i554, align 8
  %879 = lshr i64 %877, 55
  %880 = and i64 %879, 1
  %881 = add i64 %878, %848
  store i64 %881, i64* %RAX.i567, align 8
  %882 = icmp ult i64 %881, %848
  %883 = icmp ult i64 %881, %878
  %884 = or i1 %882, %883
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %74, align 1
  %886 = trunc i64 %881 to i32
  %887 = and i32 %886, 255
  %888 = tail call i32 @llvm.ctpop.i32(i32 %887)
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  store i8 %891, i8* %75, align 1
  %892 = xor i64 %848, %881
  %893 = lshr i64 %892, 4
  %894 = trunc i64 %893 to i8
  %895 = and i8 %894, 1
  store i8 %895, i8* %76, align 1
  %896 = icmp eq i64 %881, 0
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %77, align 1
  %898 = lshr i64 %881, 63
  %899 = trunc i64 %898 to i8
  store i8 %899, i8* %78, align 1
  %900 = xor i64 %898, %865
  %901 = xor i64 %898, %880
  %902 = add nuw nsw i64 %900, %901
  %903 = icmp eq i64 %902, 2
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %79, align 1
  %905 = add i64 %733, 74
  store i64 %905, i64* %3, align 8
  %906 = load i32, i32* %806, align 4
  %907 = sext i32 %906 to i64
  store i64 %907, i64* %RCX.i554, align 8
  %908 = shl nsw i64 %907, 2
  %909 = add i64 %908, %881
  %910 = add i64 %733, 77
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i32*
  %912 = load i32, i32* %911, align 4
  %913 = add i32 %912, %835
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RDX.i474, align 8
  %915 = icmp ult i32 %913, %835
  %916 = icmp ult i32 %913, %912
  %917 = or i1 %915, %916
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %74, align 1
  %919 = and i32 %913, 255
  %920 = tail call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  store i8 %923, i8* %75, align 1
  %924 = xor i32 %912, %835
  %925 = xor i32 %924, %913
  %926 = lshr i32 %925, 4
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  store i8 %928, i8* %76, align 1
  %929 = icmp eq i32 %913, 0
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %77, align 1
  %931 = lshr i32 %913, 31
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %78, align 1
  %933 = lshr i32 %835, 31
  %934 = lshr i32 %912, 31
  %935 = xor i32 %931, %933
  %936 = xor i32 %931, %934
  %937 = add nuw nsw i32 %935, %936
  %938 = icmp eq i32 %937, 2
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %79, align 1
  %940 = load i64, i64* %RBP.i, align 8
  %941 = add i64 %940, 24
  %942 = add i64 %733, 81
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i64*
  %944 = load i64, i64* %943, align 8
  store i64 %944, i64* %RAX.i567, align 8
  %945 = add i64 %940, -52
  %946 = add i64 %733, 85
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  %948 = load i32, i32* %947, align 4
  %949 = sext i32 %948 to i64
  %950 = mul nsw i64 %949, 1536
  store i64 %950, i64* %RCX.i554, align 8
  %951 = lshr i64 %950, 63
  %952 = add i64 %950, %944
  store i64 %952, i64* %RAX.i567, align 8
  %953 = icmp ult i64 %952, %944
  %954 = icmp ult i64 %952, %950
  %955 = or i1 %953, %954
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %74, align 1
  %957 = trunc i64 %952 to i32
  %958 = and i32 %957, 255
  %959 = tail call i32 @llvm.ctpop.i32(i32 %958)
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = xor i8 %961, 1
  store i8 %962, i8* %75, align 1
  %963 = xor i64 %944, %952
  %964 = lshr i64 %963, 4
  %965 = trunc i64 %964 to i8
  %966 = and i8 %965, 1
  store i8 %966, i8* %76, align 1
  %967 = icmp eq i64 %952, 0
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %77, align 1
  %969 = lshr i64 %952, 63
  %970 = trunc i64 %969 to i8
  store i8 %970, i8* %78, align 1
  %971 = lshr i64 %944, 63
  %972 = xor i64 %969, %971
  %973 = xor i64 %969, %951
  %974 = add nuw nsw i64 %972, %973
  %975 = icmp eq i64 %974, 2
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %79, align 1
  %977 = add i64 %940, -48
  %978 = add i64 %733, 99
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  %981 = sext i32 %980 to i64
  %982 = shl nsw i64 %981, 8
  store i64 %982, i64* %RCX.i554, align 8
  %983 = lshr i64 %981, 55
  %984 = and i64 %983, 1
  %985 = add i64 %982, %952
  store i64 %985, i64* %RAX.i567, align 8
  %986 = icmp ult i64 %985, %952
  %987 = icmp ult i64 %985, %982
  %988 = or i1 %986, %987
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %74, align 1
  %990 = trunc i64 %985 to i32
  %991 = and i32 %990, 255
  %992 = tail call i32 @llvm.ctpop.i32(i32 %991)
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = xor i8 %994, 1
  store i8 %995, i8* %75, align 1
  %996 = xor i64 %952, %985
  %997 = lshr i64 %996, 4
  %998 = trunc i64 %997 to i8
  %999 = and i8 %998, 1
  store i8 %999, i8* %76, align 1
  %1000 = icmp eq i64 %985, 0
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %77, align 1
  %1002 = lshr i64 %985, 63
  %1003 = trunc i64 %1002 to i8
  store i8 %1003, i8* %78, align 1
  %1004 = xor i64 %1002, %969
  %1005 = xor i64 %1002, %984
  %1006 = add nuw nsw i64 %1004, %1005
  %1007 = icmp eq i64 %1006, 2
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %79, align 1
  %1009 = add i64 %940, -56
  %1010 = add i64 %733, 110
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i32*
  %1012 = load i32, i32* %1011, align 4
  %1013 = sext i32 %1012 to i64
  store i64 %1013, i64* %RCX.i554, align 8
  %1014 = shl nsw i64 %1013, 2
  %1015 = add i64 %1014, %985
  %1016 = load i32, i32* %EDX.i557, align 4
  %1017 = add i64 %733, 113
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1015 to i32*
  store i32 %1016, i32* %1018, align 4
  %1019 = load i64, i64* %RBP.i, align 8
  %1020 = add i64 %1019, -56
  %1021 = load i64, i64* %3, align 8
  %1022 = add i64 %1021, 3
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1020 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = add i32 %1024, 1
  %1026 = zext i32 %1025 to i64
  store i64 %1026, i64* %RAX.i567, align 8
  %1027 = icmp eq i32 %1024, -1
  %1028 = icmp eq i32 %1025, 0
  %1029 = or i1 %1027, %1028
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %74, align 1
  %1031 = and i32 %1025, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %75, align 1
  %1036 = xor i32 %1024, %1025
  %1037 = lshr i32 %1036, 4
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  store i8 %1039, i8* %76, align 1
  %1040 = zext i1 %1028 to i8
  store i8 %1040, i8* %77, align 1
  %1041 = lshr i32 %1025, 31
  %1042 = trunc i32 %1041 to i8
  store i8 %1042, i8* %78, align 1
  %1043 = lshr i32 %1024, 31
  %1044 = xor i32 %1041, %1043
  %1045 = add nuw nsw i32 %1044, %1041
  %1046 = icmp eq i32 %1045, 2
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %79, align 1
  %1048 = add i64 %1021, 9
  store i64 %1048, i64* %3, align 8
  store i32 %1025, i32* %1023, align 4
  %1049 = load i64, i64* %3, align 8
  %1050 = add i64 %1049, -139
  store i64 %1050, i64* %3, align 8
  br label %block_.L_400fc5

block_.L_401055:                                  ; preds = %block_.L_400fc5
  %1051 = add i64 %803, -12
  %1052 = add i64 %733, 32
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = add i32 %1054, -1
  %1056 = zext i32 %1055 to i64
  store i64 %1056, i64* %RDX.i474, align 8
  %1057 = icmp eq i32 %1054, 0
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %74, align 1
  %1059 = and i32 %1055, 255
  %1060 = tail call i32 @llvm.ctpop.i32(i32 %1059)
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  %1063 = xor i8 %1062, 1
  store i8 %1063, i8* %75, align 1
  %1064 = xor i32 %1054, %1055
  %1065 = lshr i32 %1064, 4
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  store i8 %1067, i8* %76, align 1
  %1068 = icmp eq i32 %1055, 0
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %77, align 1
  %1070 = lshr i32 %1055, 31
  %1071 = trunc i32 %1070 to i8
  store i8 %1071, i8* %78, align 1
  %1072 = lshr i32 %1054, 31
  %1073 = xor i32 %1070, %1072
  %1074 = add nuw nsw i32 %1073, %1072
  %1075 = icmp eq i32 %1074, 2
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %79, align 1
  %1077 = sext i32 %1055 to i64
  store i64 %1077, i64* %RCX.i554, align 8
  %1078 = shl nsw i64 %1077, 2
  %1079 = add i64 %1078, %779
  %1080 = add i64 %733, 41
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RDX.i474, align 8
  %1084 = add i64 %803, -32
  %1085 = add i64 %733, 45
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i64*
  %1087 = load i64, i64* %1086, align 8
  store i64 %1087, i64* %RAX.i567, align 8
  %1088 = add i64 %803, -52
  %1089 = add i64 %733, 49
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i32*
  %1091 = load i32, i32* %1090, align 4
  %1092 = sext i32 %1091 to i64
  %1093 = mul nsw i64 %1092, 24
  store i64 %1093, i64* %RCX.i554, align 8
  %1094 = lshr i64 %1093, 63
  %1095 = add i64 %1093, %1087
  store i64 %1095, i64* %RAX.i567, align 8
  %1096 = icmp ult i64 %1095, %1087
  %1097 = icmp ult i64 %1095, %1093
  %1098 = or i1 %1096, %1097
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %74, align 1
  %1100 = trunc i64 %1095 to i32
  %1101 = and i32 %1100, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %75, align 1
  %1106 = xor i64 %1093, %1087
  %1107 = xor i64 %1106, %1095
  %1108 = lshr i64 %1107, 4
  %1109 = trunc i64 %1108 to i8
  %1110 = and i8 %1109, 1
  store i8 %1110, i8* %76, align 1
  %1111 = icmp eq i64 %1095, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %77, align 1
  %1113 = lshr i64 %1095, 63
  %1114 = trunc i64 %1113 to i8
  store i8 %1114, i8* %78, align 1
  %1115 = lshr i64 %1087, 63
  %1116 = xor i64 %1113, %1115
  %1117 = xor i64 %1113, %1094
  %1118 = add nuw nsw i64 %1116, %1117
  %1119 = icmp eq i64 %1118, 2
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %79, align 1
  %1121 = add i64 %803, -48
  %1122 = add i64 %733, 60
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i32*
  %1124 = load i32, i32* %1123, align 4
  %1125 = sext i32 %1124 to i64
  store i64 %1125, i64* %RCX.i554, align 8
  %1126 = shl nsw i64 %1125, 2
  %1127 = add i64 %1126, %1095
  %1128 = add i64 %733, 63
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i32*
  store i32 %1082, i32* %1129, align 4
  %1130 = load i64, i64* %RBP.i, align 8
  %1131 = add i64 %1130, -48
  %1132 = load i64, i64* %3, align 8
  %1133 = add i64 %1132, 3
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1131 to i32*
  %1135 = load i32, i32* %1134, align 4
  %1136 = add i32 %1135, 1
  %1137 = zext i32 %1136 to i64
  store i64 %1137, i64* %RAX.i567, align 8
  %1138 = icmp eq i32 %1135, -1
  %1139 = icmp eq i32 %1136, 0
  %1140 = or i1 %1138, %1139
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %74, align 1
  %1142 = and i32 %1136, 255
  %1143 = tail call i32 @llvm.ctpop.i32(i32 %1142)
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = xor i8 %1145, 1
  store i8 %1146, i8* %75, align 1
  %1147 = xor i32 %1135, %1136
  %1148 = lshr i32 %1147, 4
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  store i8 %1150, i8* %76, align 1
  %1151 = zext i1 %1139 to i8
  store i8 %1151, i8* %77, align 1
  %1152 = lshr i32 %1136, 31
  %1153 = trunc i32 %1152 to i8
  store i8 %1153, i8* %78, align 1
  %1154 = lshr i32 %1135, 31
  %1155 = xor i32 %1152, %1154
  %1156 = add nuw nsw i32 %1155, %1152
  %1157 = icmp eq i32 %1156, 2
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %79, align 1
  %1159 = add i64 %1132, 9
  store i64 %1159, i64* %3, align 8
  store i32 %1136, i32* %1134, align 4
  %1160 = load i64, i64* %3, align 8
  %1161 = add i64 %1160, -302
  store i64 %1161, i64* %3, align 8
  br label %block_.L_400f6f

block_.L_4010a2:                                  ; preds = %block_.L_400f6f
  %1162 = add i64 %514, -52
  %1163 = add i64 %552, 8
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i32*
  %1165 = load i32, i32* %1164, align 4
  %1166 = add i32 %1165, 1
  %1167 = zext i32 %1166 to i64
  store i64 %1167, i64* %RAX.i567, align 8
  %1168 = icmp eq i32 %1165, -1
  %1169 = icmp eq i32 %1166, 0
  %1170 = or i1 %1168, %1169
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %74, align 1
  %1172 = and i32 %1166, 255
  %1173 = tail call i32 @llvm.ctpop.i32(i32 %1172)
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  %1176 = xor i8 %1175, 1
  store i8 %1176, i8* %75, align 1
  %1177 = xor i32 %1165, %1166
  %1178 = lshr i32 %1177, 4
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  store i8 %1180, i8* %76, align 1
  %1181 = zext i1 %1169 to i8
  store i8 %1181, i8* %77, align 1
  %1182 = lshr i32 %1166, 31
  %1183 = trunc i32 %1182 to i8
  store i8 %1183, i8* %78, align 1
  %1184 = lshr i32 %1165, 31
  %1185 = xor i32 %1182, %1184
  %1186 = add nuw nsw i32 %1185, %1182
  %1187 = icmp eq i32 %1186, 2
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %79, align 1
  %1189 = add i64 %552, 14
  store i64 %1189, i64* %3, align 8
  store i32 %1166, i32* %1164, align 4
  %1190 = load i64, i64* %3, align 8
  %1191 = add i64 %1190, -344
  store i64 %1191, i64* %3, align 8
  br label %block_.L_400f58

block_.L_4010b5:                                  ; preds = %block_.L_400f58
  %1192 = add i64 %468, -48
  %1193 = add i64 %506, 7
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i32*
  store i32 0, i32* %1194, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_4010bc

block_.L_4010bc:                                  ; preds = %block_4010cd, %block_.L_4010b5
  %1195 = phi i64 [ %1290, %block_4010cd ], [ %.pre7, %block_.L_4010b5 ]
  %1196 = load i64, i64* %RBP.i, align 8
  %1197 = add i64 %1196, -48
  %1198 = add i64 %1195, 3
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i32*
  %1200 = load i32, i32* %1199, align 4
  %1201 = zext i32 %1200 to i64
  store i64 %1201, i64* %RAX.i567, align 8
  %1202 = add i64 %1196, -8
  %1203 = add i64 %1195, 6
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = add i32 %1205, -1
  %1207 = zext i32 %1206 to i64
  store i64 %1207, i64* %RCX.i554, align 8
  %1208 = lshr i32 %1206, 31
  %1209 = sub i32 %1200, %1206
  %1210 = icmp ult i32 %1200, %1206
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %74, align 1
  %1212 = and i32 %1209, 255
  %1213 = tail call i32 @llvm.ctpop.i32(i32 %1212)
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  store i8 %1216, i8* %75, align 1
  %1217 = xor i32 %1206, %1200
  %1218 = xor i32 %1217, %1209
  %1219 = lshr i32 %1218, 4
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  store i8 %1221, i8* %76, align 1
  %1222 = icmp eq i32 %1209, 0
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %77, align 1
  %1224 = lshr i32 %1209, 31
  %1225 = trunc i32 %1224 to i8
  store i8 %1225, i8* %78, align 1
  %1226 = lshr i32 %1200, 31
  %1227 = xor i32 %1208, %1226
  %1228 = xor i32 %1224, %1226
  %1229 = add nuw nsw i32 %1228, %1227
  %1230 = icmp eq i32 %1229, 2
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %79, align 1
  %1232 = icmp ne i8 %1225, 0
  %1233 = xor i1 %1232, %1230
  %.demorgan21 = or i1 %1222, %1233
  %.v22 = select i1 %.demorgan21, i64 17, i64 53
  %1234 = add i64 %1195, %.v22
  store i64 %1234, i64* %3, align 8
  br i1 %.demorgan21, label %block_4010cd, label %block_.L_4010f1

block_4010cd:                                     ; preds = %block_.L_4010bc
  %1235 = add i64 %1196, -32
  %1236 = add i64 %1234, 4
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i64*
  %1238 = load i64, i64* %1237, align 8
  store i64 %1238, i64* %RAX.i567, align 8
  %1239 = add i64 %1234, 8
  store i64 %1239, i64* %3, align 8
  %1240 = load i32, i32* %1199, align 4
  %1241 = sext i32 %1240 to i64
  store i64 %1241, i64* %RCX.i554, align 8
  %1242 = shl nsw i64 %1241, 2
  %1243 = add i64 %1242, %1238
  %1244 = add i64 %1234, 11
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1243 to i32*
  %1246 = load i32, i32* %1245, align 4
  %1247 = zext i32 %1246 to i64
  store i64 %1247, i64* %RDX.i474, align 8
  %1248 = add i64 %1196, -40
  %1249 = add i64 %1234, 15
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i64*
  %1251 = load i64, i64* %1250, align 8
  store i64 %1251, i64* %RAX.i567, align 8
  %1252 = add i64 %1234, 19
  store i64 %1252, i64* %3, align 8
  %1253 = load i32, i32* %1199, align 4
  %1254 = sext i32 %1253 to i64
  store i64 %1254, i64* %RCX.i554, align 8
  %1255 = shl nsw i64 %1254, 2
  %1256 = add i64 %1255, %1251
  %1257 = add i64 %1234, 22
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i32*
  store i32 %1246, i32* %1258, align 4
  %1259 = load i64, i64* %RBP.i, align 8
  %1260 = add i64 %1259, -48
  %1261 = load i64, i64* %3, align 8
  %1262 = add i64 %1261, 3
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1260 to i32*
  %1264 = load i32, i32* %1263, align 4
  %1265 = add i32 %1264, 1
  %1266 = zext i32 %1265 to i64
  store i64 %1266, i64* %RAX.i567, align 8
  %1267 = icmp eq i32 %1264, -1
  %1268 = icmp eq i32 %1265, 0
  %1269 = or i1 %1267, %1268
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %74, align 1
  %1271 = and i32 %1265, 255
  %1272 = tail call i32 @llvm.ctpop.i32(i32 %1271)
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  %1275 = xor i8 %1274, 1
  store i8 %1275, i8* %75, align 1
  %1276 = xor i32 %1264, %1265
  %1277 = lshr i32 %1276, 4
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  store i8 %1279, i8* %76, align 1
  %1280 = zext i1 %1268 to i8
  store i8 %1280, i8* %77, align 1
  %1281 = lshr i32 %1265, 31
  %1282 = trunc i32 %1281 to i8
  store i8 %1282, i8* %78, align 1
  %1283 = lshr i32 %1264, 31
  %1284 = xor i32 %1281, %1283
  %1285 = add nuw nsw i32 %1284, %1281
  %1286 = icmp eq i32 %1285, 2
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %79, align 1
  %1288 = add i64 %1261, 9
  store i64 %1288, i64* %3, align 8
  store i32 %1265, i32* %1263, align 4
  %1289 = load i64, i64* %3, align 8
  %1290 = add i64 %1289, -48
  store i64 %1290, i64* %3, align 8
  br label %block_.L_4010bc

block_.L_4010f1:                                  ; preds = %block_.L_4010bc
  %1291 = add i64 %1196, -52
  %1292 = add i64 %1234, 7
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1291 to i32*
  store i32 1, i32* %1293, align 4
  %.pre8 = load i64, i64* %3, align 8
  br label %block_.L_4010f8

block_.L_4010f8:                                  ; preds = %block_.L_40117a, %block_.L_4010f1
  %1294 = phi i64 [ %1628, %block_.L_40117a ], [ %.pre8, %block_.L_4010f1 ]
  %1295 = load i64, i64* %RBP.i, align 8
  %1296 = add i64 %1295, -52
  %1297 = add i64 %1294, 3
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1296 to i32*
  %1299 = load i32, i32* %1298, align 4
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RAX.i567, align 8
  %1301 = add i64 %1295, -8
  %1302 = add i64 %1294, 6
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = add i32 %1304, -1
  %1306 = zext i32 %1305 to i64
  store i64 %1306, i64* %RCX.i554, align 8
  %1307 = lshr i32 %1305, 31
  %1308 = sub i32 %1299, %1305
  %1309 = icmp ult i32 %1299, %1305
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %74, align 1
  %1311 = and i32 %1308, 255
  %1312 = tail call i32 @llvm.ctpop.i32(i32 %1311)
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = xor i8 %1314, 1
  store i8 %1315, i8* %75, align 1
  %1316 = xor i32 %1305, %1299
  %1317 = xor i32 %1316, %1308
  %1318 = lshr i32 %1317, 4
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  store i8 %1320, i8* %76, align 1
  %1321 = icmp eq i32 %1308, 0
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %77, align 1
  %1323 = lshr i32 %1308, 31
  %1324 = trunc i32 %1323 to i8
  store i8 %1324, i8* %78, align 1
  %1325 = lshr i32 %1299, 31
  %1326 = xor i32 %1307, %1325
  %1327 = xor i32 %1323, %1325
  %1328 = add nuw nsw i32 %1327, %1326
  %1329 = icmp eq i32 %1328, 2
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %79, align 1
  %1331 = icmp ne i8 %1324, 0
  %1332 = xor i1 %1331, %1329
  %.demorgan23 = or i1 %1321, %1332
  %.v24 = select i1 %.demorgan23, i64 17, i64 149
  %1333 = add i64 %1294, %.v24
  store i64 %1333, i64* %3, align 8
  br i1 %.demorgan23, label %block_401109, label %block_.L_40118d

block_401109:                                     ; preds = %block_.L_4010f8
  %1334 = add i64 %1333, 3
  store i64 %1334, i64* %3, align 8
  %1335 = load i32, i32* %1298, align 4
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RAX.i567, align 8
  %1337 = add i64 %1295, -48
  %1338 = add i64 %1333, 6
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i32*
  store i32 %1335, i32* %1339, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_40110f

block_.L_40110f:                                  ; preds = %block_401120, %block_401109
  %1340 = phi i64 [ %1598, %block_401120 ], [ %.pre9, %block_401109 ]
  %1341 = load i64, i64* %RBP.i, align 8
  %1342 = add i64 %1341, -48
  %1343 = add i64 %1340, 3
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1342 to i32*
  %1345 = load i32, i32* %1344, align 4
  %1346 = zext i32 %1345 to i64
  store i64 %1346, i64* %RAX.i567, align 8
  %1347 = add i64 %1341, -8
  %1348 = add i64 %1340, 6
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1347 to i32*
  %1350 = load i32, i32* %1349, align 4
  %1351 = add i32 %1350, -1
  %1352 = zext i32 %1351 to i64
  store i64 %1352, i64* %RCX.i554, align 8
  %1353 = lshr i32 %1351, 31
  %1354 = sub i32 %1345, %1351
  %1355 = icmp ult i32 %1345, %1351
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %74, align 1
  %1357 = and i32 %1354, 255
  %1358 = tail call i32 @llvm.ctpop.i32(i32 %1357)
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = xor i8 %1360, 1
  store i8 %1361, i8* %75, align 1
  %1362 = xor i32 %1351, %1345
  %1363 = xor i32 %1362, %1354
  %1364 = lshr i32 %1363, 4
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  store i8 %1366, i8* %76, align 1
  %1367 = icmp eq i32 %1354, 0
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %77, align 1
  %1369 = lshr i32 %1354, 31
  %1370 = trunc i32 %1369 to i8
  store i8 %1370, i8* %78, align 1
  %1371 = lshr i32 %1345, 31
  %1372 = xor i32 %1353, %1371
  %1373 = xor i32 %1369, %1371
  %1374 = add nuw nsw i32 %1373, %1372
  %1375 = icmp eq i32 %1374, 2
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %79, align 1
  %1377 = icmp ne i8 %1370, 0
  %1378 = xor i1 %1377, %1375
  %.demorgan25 = or i1 %1367, %1378
  %.v26 = select i1 %.demorgan25, i64 17, i64 107
  %1379 = add i64 %1340, %.v26
  store i64 %1379, i64* %3, align 8
  br i1 %.demorgan25, label %block_401120, label %block_.L_40117a

block_401120:                                     ; preds = %block_.L_40110f
  %1380 = add i64 %1341, -40
  %1381 = add i64 %1379, 4
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i64*
  %1383 = load i64, i64* %1382, align 8
  store i64 %1383, i64* %RAX.i567, align 8
  %1384 = add i64 %1341, -52
  %1385 = add i64 %1379, 7
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = add i32 %1387, -1
  %1389 = zext i32 %1388 to i64
  store i64 %1389, i64* %RCX.i554, align 8
  %1390 = sext i32 %1388 to i64
  %1391 = mul nsw i64 %1390, 24
  store i64 %1391, i64* %RDX.i474, align 8
  %1392 = lshr i64 %1391, 63
  %1393 = add i64 %1391, %1383
  store i64 %1393, i64* %RAX.i567, align 8
  %1394 = icmp ult i64 %1393, %1383
  %1395 = icmp ult i64 %1393, %1391
  %1396 = or i1 %1394, %1395
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %74, align 1
  %1398 = trunc i64 %1393 to i32
  %1399 = and i32 %1398, 255
  %1400 = tail call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %75, align 1
  %1404 = xor i64 %1391, %1383
  %1405 = xor i64 %1404, %1393
  %1406 = lshr i64 %1405, 4
  %1407 = trunc i64 %1406 to i8
  %1408 = and i8 %1407, 1
  store i8 %1408, i8* %76, align 1
  %1409 = icmp eq i64 %1393, 0
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %77, align 1
  %1411 = lshr i64 %1393, 63
  %1412 = trunc i64 %1411 to i8
  store i8 %1412, i8* %78, align 1
  %1413 = lshr i64 %1383, 63
  %1414 = xor i64 %1411, %1413
  %1415 = xor i64 %1411, %1392
  %1416 = add nuw nsw i64 %1414, %1415
  %1417 = icmp eq i64 %1416, 2
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %79, align 1
  %1419 = add i64 %1379, 23
  store i64 %1419, i64* %3, align 8
  %1420 = load i32, i32* %1344, align 4
  %1421 = add i32 %1420, -1
  %1422 = zext i32 %1421 to i64
  store i64 %1422, i64* %RCX.i554, align 8
  %1423 = icmp eq i32 %1420, 0
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %74, align 1
  %1425 = and i32 %1421, 255
  %1426 = tail call i32 @llvm.ctpop.i32(i32 %1425)
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  %1429 = xor i8 %1428, 1
  store i8 %1429, i8* %75, align 1
  %1430 = xor i32 %1420, %1421
  %1431 = lshr i32 %1430, 4
  %1432 = trunc i32 %1431 to i8
  %1433 = and i8 %1432, 1
  store i8 %1433, i8* %76, align 1
  %1434 = icmp eq i32 %1421, 0
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %77, align 1
  %1436 = lshr i32 %1421, 31
  %1437 = trunc i32 %1436 to i8
  store i8 %1437, i8* %78, align 1
  %1438 = lshr i32 %1420, 31
  %1439 = xor i32 %1436, %1438
  %1440 = add nuw nsw i32 %1439, %1438
  %1441 = icmp eq i32 %1440, 2
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %79, align 1
  %1443 = sext i32 %1421 to i64
  store i64 %1443, i64* %RDX.i474, align 8
  %1444 = shl nsw i64 %1443, 2
  %1445 = add i64 %1444, %1393
  %1446 = add i64 %1379, 32
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to i32*
  %1448 = load i32, i32* %1447, align 4
  %1449 = zext i32 %1448 to i64
  store i64 %1449, i64* %RCX.i554, align 8
  %1450 = add i64 %1341, -32
  %1451 = add i64 %1379, 36
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i64*
  %1453 = load i64, i64* %1452, align 8
  store i64 %1453, i64* %RAX.i567, align 8
  %1454 = add i64 %1379, 40
  store i64 %1454, i64* %3, align 8
  %1455 = load i32, i32* %1386, align 4
  %1456 = sext i32 %1455 to i64
  %1457 = mul nsw i64 %1456, 24
  store i64 %1457, i64* %RDX.i474, align 8
  %1458 = lshr i64 %1457, 63
  %1459 = add i64 %1457, %1453
  store i64 %1459, i64* %RAX.i567, align 8
  %1460 = icmp ult i64 %1459, %1453
  %1461 = icmp ult i64 %1459, %1457
  %1462 = or i1 %1460, %1461
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %74, align 1
  %1464 = trunc i64 %1459 to i32
  %1465 = and i32 %1464, 255
  %1466 = tail call i32 @llvm.ctpop.i32(i32 %1465)
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  %1469 = xor i8 %1468, 1
  store i8 %1469, i8* %75, align 1
  %1470 = xor i64 %1457, %1453
  %1471 = xor i64 %1470, %1459
  %1472 = lshr i64 %1471, 4
  %1473 = trunc i64 %1472 to i8
  %1474 = and i8 %1473, 1
  store i8 %1474, i8* %76, align 1
  %1475 = icmp eq i64 %1459, 0
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %77, align 1
  %1477 = lshr i64 %1459, 63
  %1478 = trunc i64 %1477 to i8
  store i8 %1478, i8* %78, align 1
  %1479 = lshr i64 %1453, 63
  %1480 = xor i64 %1477, %1479
  %1481 = xor i64 %1477, %1458
  %1482 = add nuw nsw i64 %1480, %1481
  %1483 = icmp eq i64 %1482, 2
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %79, align 1
  %1485 = load i64, i64* %RBP.i, align 8
  %1486 = add i64 %1485, -48
  %1487 = add i64 %1379, 51
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i32*
  %1489 = load i32, i32* %1488, align 4
  %1490 = sext i32 %1489 to i64
  store i64 %1490, i64* %RDX.i474, align 8
  %1491 = shl nsw i64 %1490, 2
  %1492 = add i64 %1491, %1459
  %1493 = add i64 %1379, 54
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1492 to i32*
  %1495 = load i32, i32* %1494, align 4
  %1496 = add i32 %1495, %1448
  %1497 = zext i32 %1496 to i64
  store i64 %1497, i64* %RCX.i554, align 8
  %1498 = icmp ult i32 %1496, %1448
  %1499 = icmp ult i32 %1496, %1495
  %1500 = or i1 %1498, %1499
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %74, align 1
  %1502 = and i32 %1496, 255
  %1503 = tail call i32 @llvm.ctpop.i32(i32 %1502)
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %75, align 1
  %1507 = xor i32 %1495, %1448
  %1508 = xor i32 %1507, %1496
  %1509 = lshr i32 %1508, 4
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  store i8 %1511, i8* %76, align 1
  %1512 = icmp eq i32 %1496, 0
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %77, align 1
  %1514 = lshr i32 %1496, 31
  %1515 = trunc i32 %1514 to i8
  store i8 %1515, i8* %78, align 1
  %1516 = lshr i32 %1448, 31
  %1517 = lshr i32 %1495, 31
  %1518 = xor i32 %1514, %1516
  %1519 = xor i32 %1514, %1517
  %1520 = add nuw nsw i32 %1518, %1519
  %1521 = icmp eq i32 %1520, 2
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %79, align 1
  %1523 = add i64 %1485, -40
  %1524 = add i64 %1379, 58
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i64*
  %1526 = load i64, i64* %1525, align 8
  store i64 %1526, i64* %RAX.i567, align 8
  %1527 = add i64 %1485, -52
  %1528 = add i64 %1379, 62
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = sext i32 %1530 to i64
  %1532 = mul nsw i64 %1531, 24
  store i64 %1532, i64* %RDX.i474, align 8
  %1533 = lshr i64 %1532, 63
  %1534 = add i64 %1532, %1526
  store i64 %1534, i64* %RAX.i567, align 8
  %1535 = icmp ult i64 %1534, %1526
  %1536 = icmp ult i64 %1534, %1532
  %1537 = or i1 %1535, %1536
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %74, align 1
  %1539 = trunc i64 %1534 to i32
  %1540 = and i32 %1539, 255
  %1541 = tail call i32 @llvm.ctpop.i32(i32 %1540)
  %1542 = trunc i32 %1541 to i8
  %1543 = and i8 %1542, 1
  %1544 = xor i8 %1543, 1
  store i8 %1544, i8* %75, align 1
  %1545 = xor i64 %1532, %1526
  %1546 = xor i64 %1545, %1534
  %1547 = lshr i64 %1546, 4
  %1548 = trunc i64 %1547 to i8
  %1549 = and i8 %1548, 1
  store i8 %1549, i8* %76, align 1
  %1550 = icmp eq i64 %1534, 0
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %77, align 1
  %1552 = lshr i64 %1534, 63
  %1553 = trunc i64 %1552 to i8
  store i8 %1553, i8* %78, align 1
  %1554 = lshr i64 %1526, 63
  %1555 = xor i64 %1552, %1554
  %1556 = xor i64 %1552, %1533
  %1557 = add nuw nsw i64 %1555, %1556
  %1558 = icmp eq i64 %1557, 2
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %79, align 1
  %1560 = add i64 %1379, 73
  store i64 %1560, i64* %3, align 8
  %1561 = load i32, i32* %1488, align 4
  %1562 = sext i32 %1561 to i64
  store i64 %1562, i64* %RDX.i474, align 8
  %1563 = shl nsw i64 %1562, 2
  %1564 = add i64 %1563, %1534
  %1565 = add i64 %1379, 76
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i32*
  store i32 %1496, i32* %1566, align 4
  %1567 = load i64, i64* %RBP.i, align 8
  %1568 = add i64 %1567, -48
  %1569 = load i64, i64* %3, align 8
  %1570 = add i64 %1569, 3
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1568 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = add i32 %1572, 1
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RAX.i567, align 8
  %1575 = icmp eq i32 %1572, -1
  %1576 = icmp eq i32 %1573, 0
  %1577 = or i1 %1575, %1576
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %74, align 1
  %1579 = and i32 %1573, 255
  %1580 = tail call i32 @llvm.ctpop.i32(i32 %1579)
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  %1583 = xor i8 %1582, 1
  store i8 %1583, i8* %75, align 1
  %1584 = xor i32 %1572, %1573
  %1585 = lshr i32 %1584, 4
  %1586 = trunc i32 %1585 to i8
  %1587 = and i8 %1586, 1
  store i8 %1587, i8* %76, align 1
  %1588 = zext i1 %1576 to i8
  store i8 %1588, i8* %77, align 1
  %1589 = lshr i32 %1573, 31
  %1590 = trunc i32 %1589 to i8
  store i8 %1590, i8* %78, align 1
  %1591 = lshr i32 %1572, 31
  %1592 = xor i32 %1589, %1591
  %1593 = add nuw nsw i32 %1592, %1589
  %1594 = icmp eq i32 %1593, 2
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %79, align 1
  %1596 = add i64 %1569, 9
  store i64 %1596, i64* %3, align 8
  store i32 %1573, i32* %1571, align 4
  %1597 = load i64, i64* %3, align 8
  %1598 = add i64 %1597, -102
  store i64 %1598, i64* %3, align 8
  br label %block_.L_40110f

block_.L_40117a:                                  ; preds = %block_.L_40110f
  %1599 = add i64 %1341, -52
  %1600 = add i64 %1379, 8
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = add i32 %1602, 1
  %1604 = zext i32 %1603 to i64
  store i64 %1604, i64* %RAX.i567, align 8
  %1605 = icmp eq i32 %1602, -1
  %1606 = icmp eq i32 %1603, 0
  %1607 = or i1 %1605, %1606
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %74, align 1
  %1609 = and i32 %1603, 255
  %1610 = tail call i32 @llvm.ctpop.i32(i32 %1609)
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  store i8 %1613, i8* %75, align 1
  %1614 = xor i32 %1602, %1603
  %1615 = lshr i32 %1614, 4
  %1616 = trunc i32 %1615 to i8
  %1617 = and i8 %1616, 1
  store i8 %1617, i8* %76, align 1
  %1618 = zext i1 %1606 to i8
  store i8 %1618, i8* %77, align 1
  %1619 = lshr i32 %1603, 31
  %1620 = trunc i32 %1619 to i8
  store i8 %1620, i8* %78, align 1
  %1621 = lshr i32 %1602, 31
  %1622 = xor i32 %1619, %1621
  %1623 = add nuw nsw i32 %1622, %1619
  %1624 = icmp eq i32 %1623, 2
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %79, align 1
  %1626 = add i64 %1379, 14
  store i64 %1626, i64* %3, align 8
  store i32 %1603, i32* %1601, align 4
  %1627 = load i64, i64* %3, align 8
  %1628 = add i64 %1627, -144
  store i64 %1628, i64* %3, align 8
  br label %block_.L_4010f8

block_.L_40118d:                                  ; preds = %block_.L_4010f8
  %1629 = add i64 %1295, -44
  %1630 = add i64 %1333, 8
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i32*
  %1632 = load i32, i32* %1631, align 4
  %1633 = add i32 %1632, 1
  %1634 = zext i32 %1633 to i64
  store i64 %1634, i64* %RAX.i567, align 8
  %1635 = icmp eq i32 %1632, -1
  %1636 = icmp eq i32 %1633, 0
  %1637 = or i1 %1635, %1636
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %74, align 1
  %1639 = and i32 %1633, 255
  %1640 = tail call i32 @llvm.ctpop.i32(i32 %1639)
  %1641 = trunc i32 %1640 to i8
  %1642 = and i8 %1641, 1
  %1643 = xor i8 %1642, 1
  store i8 %1643, i8* %75, align 1
  %1644 = xor i32 %1632, %1633
  %1645 = lshr i32 %1644, 4
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  store i8 %1647, i8* %76, align 1
  %1648 = zext i1 %1636 to i8
  store i8 %1648, i8* %77, align 1
  %1649 = lshr i32 %1633, 31
  %1650 = trunc i32 %1649 to i8
  store i8 %1650, i8* %78, align 1
  %1651 = lshr i32 %1632, 31
  %1652 = xor i32 %1649, %1651
  %1653 = add nuw nsw i32 %1652, %1649
  %1654 = icmp eq i32 %1653, 2
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %79, align 1
  %1656 = add i64 %1333, 14
  store i64 %1656, i64* %3, align 8
  store i32 %1633, i32* %1631, align 4
  %1657 = load i64, i64* %3, align 8
  %1658 = add i64 %1657, -779
  store i64 %1658, i64* %3, align 8
  br label %block_.L_400e90

block_.L_4011a0:                                  ; preds = %block_.L_400e90
  %1659 = add i64 %117, 1
  store i64 %1659, i64* %3, align 8
  %1660 = load i64, i64* %6, align 8
  %1661 = add i64 %1660, 8
  %1662 = inttoptr i64 %1660 to i64*
  %1663 = load i64, i64* %1662, align 8
  store i64 %1663, i64* %RBP.i, align 8
  store i64 %1661, i64* %6, align 8
  %1664 = add i64 %117, 2
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1661 to i64*
  %1666 = load i64, i64* %1665, align 8
  store i64 %1666, i64* %3, align 8
  %1667 = add i64 %1660, 16
  store i64 %1667, i64* %6, align 8
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

define %struct.Memory* @routine_movq__r10__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

define %struct.Memory* @routine_jge_.L_4011a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jg_.L_400f51(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jg_.L_400f3e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_400f2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
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

define %struct.Memory* @routine_imulq__0x600___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %10 = mul nsw i128 %9, 1536
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

define %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 8
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 56
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
  %17 = lshr i64 %3, 55
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
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

define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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

define %struct.Memory* @routine_jmpq_.L_400ed2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f30(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400eba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f43(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

define %struct.Memory* @routine_jmpq_.L_400ea3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4010b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jg_.L_4010a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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

define %struct.Memory* @routine_jg_.L_401055(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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

define %struct.Memory* @routine_jmpq_.L_400f6f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010a7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f58(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jg_.L_4010f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4010bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

define %struct.Memory* @routine_jg_.L_40118d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jg_.L_40117a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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

define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40110f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40117f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401192(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400e90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
