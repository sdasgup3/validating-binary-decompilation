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
  %RAX.i567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 16
  %12 = add i64 %10, 7
  store i64 %12, i64* %PC.i, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i567, align 8
  %R10.i565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %15 = add i64 %7, 8
  %16 = add i64 %10, 11
  store i64 %16, i64* %PC.i, align 8
  %17 = inttoptr i64 %15 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %R10.i565, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %19 to i32*
  %20 = add i64 %7, -12
  %21 = load i32, i32* %EDI.i, align 4
  %22 = add i64 %10, 14
  store i64 %22, i64* %PC.i, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %24 to i32*
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, -8
  %27 = load i32, i32* %ESI.i, align 4
  %28 = load i64, i64* %PC.i, align 8
  %29 = add i64 %28, 3
  store i64 %29, i64* %PC.i, align 8
  %30 = inttoptr i64 %26 to i32*
  store i32 %27, i32* %30, align 4
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i557 = bitcast %union.anon* %31 to i32*
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -12
  %34 = load i32, i32* %EDX.i557, align 4
  %35 = load i64, i64* %PC.i, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %PC.i, align 8
  %37 = inttoptr i64 %33 to i32*
  store i32 %34, i32* %37, align 4
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i554 = getelementptr inbounds %union.anon, %union.anon* %38, i64 0, i32 0
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -24
  %41 = load i64, i64* %RCX.i554, align 8
  %42 = load i64, i64* %PC.i, align 8
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC.i, align 8
  %44 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %44, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -32
  %47 = load i64, i64* %R8.i, align 8
  %48 = load i64, i64* %PC.i, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC.i, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -40
  %53 = load i64, i64* %R9.i, align 8
  %54 = load i64, i64* %PC.i, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC.i, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -44
  %59 = load i64, i64* %PC.i, align 8
  %60 = add i64 %59, 7
  store i64 %60, i64* %PC.i, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 0, i32* %61, align 4
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -64
  %64 = load i64, i64* %R10.i565, align 8
  %65 = load i64, i64* %PC.i, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %PC.i, align 8
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -72
  %70 = load i64, i64* %RAX.i567, align 8
  %71 = load i64, i64* %PC.i, align 8
  %72 = add i64 %71, 4
  store i64 %72, i64* %PC.i, align 8
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
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400e90

block_.L_400e90:                                  ; preds = %block_.L_40118d, %entry
  %80 = phi i64 [ %1691, %block_.L_40118d ], [ %.pre, %entry ]
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -44
  %83 = add i64 %80, 3
  store i64 %83, i64* %PC.i, align 8
  %84 = inttoptr i64 %82 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %RAX.i567, align 8
  %87 = add i64 %81, -4
  %88 = add i64 %80, 6
  store i64 %88, i64* %PC.i, align 8
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
  store i64 %119, i64* %PC.i, align 8
  %120 = inttoptr i64 %118 to i32*
  store i32 0, i32* %120, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ea3

block_.L_400ea3:                                  ; preds = %block_.L_400f3e, %block_400e9c
  %121 = phi i64 [ %469, %block_.L_400f3e ], [ %.pre1, %block_400e9c ]
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -52
  %124 = add i64 %121, 3
  store i64 %124, i64* %PC.i, align 8
  %125 = inttoptr i64 %123 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RAX.i567, align 8
  %128 = add i64 %122, -8
  %129 = add i64 %121, 6
  store i64 %129, i64* %PC.i, align 8
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
  store i64 %161, i64* %PC.i, align 8
  %162 = load i32, i32* %125, align 4
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RAX.i567, align 8
  %164 = add i64 %122, -48
  %165 = add i64 %160, 6
  store i64 %165, i64* %PC.i, align 8
  %166 = inttoptr i64 %164 to i32*
  store i32 %162, i32* %166, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400eba

block_.L_400eba:                                  ; preds = %block_.L_400f2b, %block_400eb4
  %167 = phi i64 [ %438, %block_.L_400f2b ], [ %.pre2, %block_400eb4 ]
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -48
  %170 = add i64 %167, 3
  store i64 %170, i64* %PC.i, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX.i567, align 8
  %174 = add i64 %168, -8
  %175 = add i64 %167, 6
  store i64 %175, i64* %PC.i, align 8
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
  store i64 %208, i64* %PC.i, align 8
  %209 = inttoptr i64 %207 to i32*
  store i32 0, i32* %209, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ed2

block_.L_400ed2:                                  ; preds = %block_400ee3, %block_400ecb
  %210 = phi i64 [ %407, %block_400ee3 ], [ %.pre3, %block_400ecb ]
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -56
  %213 = add i64 %210, 3
  store i64 %213, i64* %PC.i, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RAX.i567, align 8
  %217 = add i64 %211, -12
  %218 = add i64 %210, 6
  store i64 %218, i64* %PC.i, align 8
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
  store i64 %251, i64* %PC.i, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RAX.i567, align 8
  %254 = add i64 %211, -52
  %255 = add i64 %249, 8
  store i64 %255, i64* %PC.i, align 8
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
  store i64 %288, i64* %PC.i, align 8
  %289 = inttoptr i64 %287 to i32*
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %RCX.i554, align 8
  %292 = shl nsw i64 %291, 2
  %293 = add i64 %292, %261
  %294 = add i64 %249, 22
  store i64 %294, i64* %PC.i, align 8
  %295 = inttoptr i64 %293 to i32*
  %296 = load i32, i32* %295, align 4
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RDX.i474, align 8
  %298 = add i64 %211, 16
  %299 = add i64 %249, 26
  store i64 %299, i64* %PC.i, align 8
  %300 = inttoptr i64 %298 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %RAX.i567, align 8
  %302 = add i64 %249, 30
  store i64 %302, i64* %PC.i, align 8
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
  store i64 %334, i64* %PC.i, align 8
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
  store i64 %366, i64* %PC.i, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %RCX.i554, align 8
  %370 = shl nsw i64 %369, 2
  %371 = add i64 %370, %341
  %372 = load i32, i32* %EDX.i557, align 4
  %373 = add i64 %249, 58
  store i64 %373, i64* %PC.i, align 8
  %374 = inttoptr i64 %371 to i32*
  store i32 %372, i32* %374, align 4
  %375 = load i64, i64* %RBP.i, align 8
  %376 = add i64 %375, -56
  %377 = load i64, i64* %PC.i, align 8
  %378 = add i64 %377, 3
  store i64 %378, i64* %PC.i, align 8
  %379 = inttoptr i64 %376 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = add i32 %380, 1
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RAX.i567, align 8
  %383 = icmp eq i32 %380, -1
  %384 = icmp eq i32 %381, 0
  %385 = or i1 %383, %384
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %74, align 1
  %387 = and i32 %381, 255
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387)
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  store i8 %391, i8* %75, align 1
  %392 = xor i32 %380, %381
  %393 = lshr i32 %392, 4
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  store i8 %395, i8* %76, align 1
  %396 = icmp eq i32 %381, 0
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %77, align 1
  %398 = lshr i32 %381, 31
  %399 = trunc i32 %398 to i8
  store i8 %399, i8* %78, align 1
  %400 = lshr i32 %380, 31
  %401 = xor i32 %398, %400
  %402 = add nuw nsw i32 %401, %398
  %403 = icmp eq i32 %402, 2
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %79, align 1
  %405 = add i64 %377, 9
  store i64 %405, i64* %PC.i, align 8
  store i32 %381, i32* %379, align 4
  %406 = load i64, i64* %PC.i, align 8
  %407 = add i64 %406, -84
  store i64 %407, i64* %3, align 8
  br label %block_.L_400ed2

block_.L_400f2b:                                  ; preds = %block_.L_400ed2
  %408 = add i64 %211, -48
  %409 = add i64 %249, 8
  store i64 %409, i64* %PC.i, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = add i32 %411, 1
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RAX.i567, align 8
  %414 = icmp eq i32 %411, -1
  %415 = icmp eq i32 %412, 0
  %416 = or i1 %414, %415
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %74, align 1
  %418 = and i32 %412, 255
  %419 = tail call i32 @llvm.ctpop.i32(i32 %418)
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  store i8 %422, i8* %75, align 1
  %423 = xor i32 %411, %412
  %424 = lshr i32 %423, 4
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %76, align 1
  %427 = icmp eq i32 %412, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %77, align 1
  %429 = lshr i32 %412, 31
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %78, align 1
  %431 = lshr i32 %411, 31
  %432 = xor i32 %429, %431
  %433 = add nuw nsw i32 %432, %429
  %434 = icmp eq i32 %433, 2
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %79, align 1
  %436 = add i64 %249, 14
  store i64 %436, i64* %PC.i, align 8
  store i32 %412, i32* %410, align 4
  %437 = load i64, i64* %PC.i, align 8
  %438 = add i64 %437, -127
  store i64 %438, i64* %3, align 8
  br label %block_.L_400eba

block_.L_400f3e:                                  ; preds = %block_.L_400eba
  %439 = add i64 %168, -52
  %440 = add i64 %206, 8
  store i64 %440, i64* %PC.i, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = add i32 %442, 1
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RAX.i567, align 8
  %445 = icmp eq i32 %442, -1
  %446 = icmp eq i32 %443, 0
  %447 = or i1 %445, %446
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %74, align 1
  %449 = and i32 %443, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449)
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %75, align 1
  %454 = xor i32 %442, %443
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %76, align 1
  %458 = icmp eq i32 %443, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %77, align 1
  %460 = lshr i32 %443, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %78, align 1
  %462 = lshr i32 %442, 31
  %463 = xor i32 %460, %462
  %464 = add nuw nsw i32 %463, %460
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %79, align 1
  %467 = add i64 %206, 14
  store i64 %467, i64* %PC.i, align 8
  store i32 %443, i32* %441, align 4
  %468 = load i64, i64* %PC.i, align 8
  %469 = add i64 %468, -169
  store i64 %469, i64* %3, align 8
  br label %block_.L_400ea3

block_.L_400f51:                                  ; preds = %block_.L_400ea3
  %470 = add i64 %160, 7
  store i64 %470, i64* %PC.i, align 8
  store i32 0, i32* %125, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_400f58

block_.L_400f58:                                  ; preds = %block_.L_4010a2, %block_.L_400f51
  %471 = phi i64 [ %1211, %block_.L_4010a2 ], [ %.pre4, %block_.L_400f51 ]
  %472 = load i64, i64* %RBP.i, align 8
  %473 = add i64 %472, -52
  %474 = add i64 %471, 3
  store i64 %474, i64* %PC.i, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = zext i32 %476 to i64
  store i64 %477, i64* %RAX.i567, align 8
  %478 = add i64 %472, -8
  %479 = add i64 %471, 6
  store i64 %479, i64* %PC.i, align 8
  %480 = inttoptr i64 %478 to i32*
  %481 = load i32, i32* %480, align 4
  %482 = add i32 %481, -1
  %483 = zext i32 %482 to i64
  store i64 %483, i64* %RCX.i554, align 8
  %484 = lshr i32 %482, 31
  %485 = sub i32 %476, %482
  %486 = icmp ult i32 %476, %482
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %74, align 1
  %488 = and i32 %485, 255
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488)
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %75, align 1
  %493 = xor i32 %482, %476
  %494 = xor i32 %493, %485
  %495 = lshr i32 %494, 4
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %76, align 1
  %498 = icmp eq i32 %485, 0
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %77, align 1
  %500 = lshr i32 %485, 31
  %501 = trunc i32 %500 to i8
  store i8 %501, i8* %78, align 1
  %502 = lshr i32 %476, 31
  %503 = xor i32 %484, %502
  %504 = xor i32 %500, %502
  %505 = add nuw nsw i32 %504, %503
  %506 = icmp eq i32 %505, 2
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %79, align 1
  %508 = icmp ne i8 %501, 0
  %509 = xor i1 %508, %506
  %.demorgan15 = or i1 %498, %509
  %.v16 = select i1 %.demorgan15, i64 17, i64 349
  %510 = add i64 %471, %.v16
  store i64 %510, i64* %3, align 8
  br i1 %.demorgan15, label %block_400f69, label %block_.L_4010b5

block_400f69:                                     ; preds = %block_.L_400f58
  %511 = add i64 %510, 3
  store i64 %511, i64* %PC.i, align 8
  %512 = load i32, i32* %475, align 4
  %513 = zext i32 %512 to i64
  store i64 %513, i64* %RAX.i567, align 8
  %514 = add i64 %472, -48
  %515 = add i64 %510, 6
  store i64 %515, i64* %PC.i, align 8
  %516 = inttoptr i64 %514 to i32*
  store i32 %512, i32* %516, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_400f6f

block_.L_400f6f:                                  ; preds = %block_.L_401055, %block_400f69
  %517 = phi i64 [ %1180, %block_.L_401055 ], [ %.pre5, %block_400f69 ]
  %518 = load i64, i64* %RBP.i, align 8
  %519 = add i64 %518, -48
  %520 = add i64 %517, 3
  store i64 %520, i64* %PC.i, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = zext i32 %522 to i64
  store i64 %523, i64* %RAX.i567, align 8
  %524 = add i64 %518, -8
  %525 = add i64 %517, 6
  store i64 %525, i64* %PC.i, align 8
  %526 = inttoptr i64 %524 to i32*
  %527 = load i32, i32* %526, align 4
  %528 = add i32 %527, -1
  %529 = zext i32 %528 to i64
  store i64 %529, i64* %RCX.i554, align 8
  %530 = lshr i32 %528, 31
  %531 = sub i32 %522, %528
  %532 = icmp ult i32 %522, %528
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %74, align 1
  %534 = and i32 %531, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %75, align 1
  %539 = xor i32 %528, %522
  %540 = xor i32 %539, %531
  %541 = lshr i32 %540, 4
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  store i8 %543, i8* %76, align 1
  %544 = icmp eq i32 %531, 0
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %77, align 1
  %546 = lshr i32 %531, 31
  %547 = trunc i32 %546 to i8
  store i8 %547, i8* %78, align 1
  %548 = lshr i32 %522, 31
  %549 = xor i32 %530, %548
  %550 = xor i32 %546, %548
  %551 = add nuw nsw i32 %550, %549
  %552 = icmp eq i32 %551, 2
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %79, align 1
  %554 = icmp ne i8 %547, 0
  %555 = xor i1 %554, %552
  %.demorgan17 = or i1 %544, %555
  %.v18 = select i1 %.demorgan17, i64 17, i64 307
  %556 = add i64 %517, %.v18
  store i64 %556, i64* %3, align 8
  br i1 %.demorgan17, label %block_400f80, label %block_.L_4010a2

block_400f80:                                     ; preds = %block_.L_400f6f
  %557 = add i64 %518, 16
  %558 = add i64 %556, 4
  store i64 %558, i64* %PC.i, align 8
  %559 = inttoptr i64 %557 to i64*
  %560 = load i64, i64* %559, align 8
  store i64 %560, i64* %RAX.i567, align 8
  %561 = add i64 %518, -52
  %562 = add i64 %556, 8
  store i64 %562, i64* %PC.i, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = sext i32 %564 to i64
  %566 = mul nsw i64 %565, 1536
  store i64 %566, i64* %RCX.i554, align 8
  %567 = lshr i64 %566, 63
  %568 = add i64 %566, %560
  store i64 %568, i64* %RAX.i567, align 8
  %569 = icmp ult i64 %568, %560
  %570 = icmp ult i64 %568, %566
  %571 = or i1 %569, %570
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %74, align 1
  %573 = trunc i64 %568 to i32
  %574 = and i32 %573, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %75, align 1
  %579 = xor i64 %560, %568
  %580 = lshr i64 %579, 4
  %581 = trunc i64 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %76, align 1
  %583 = icmp eq i64 %568, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %77, align 1
  %585 = lshr i64 %568, 63
  %586 = trunc i64 %585 to i8
  store i8 %586, i8* %78, align 1
  %587 = lshr i64 %560, 63
  %588 = xor i64 %585, %587
  %589 = xor i64 %585, %567
  %590 = add nuw nsw i64 %588, %589
  %591 = icmp eq i64 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %79, align 1
  %593 = add i64 %556, 22
  store i64 %593, i64* %PC.i, align 8
  %594 = load i32, i32* %521, align 4
  %595 = sext i32 %594 to i64
  %596 = shl nsw i64 %595, 8
  store i64 %596, i64* %RCX.i554, align 8
  %597 = lshr i64 %595, 55
  %598 = and i64 %597, 1
  %599 = add i64 %596, %568
  store i64 %599, i64* %RAX.i567, align 8
  %600 = icmp ult i64 %599, %568
  %601 = icmp ult i64 %599, %596
  %602 = or i1 %600, %601
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %74, align 1
  %604 = trunc i64 %599 to i32
  %605 = and i32 %604, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605)
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %75, align 1
  %610 = xor i64 %568, %599
  %611 = lshr i64 %610, 4
  %612 = trunc i64 %611 to i8
  %613 = and i8 %612, 1
  store i8 %613, i8* %76, align 1
  %614 = icmp eq i64 %599, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %77, align 1
  %616 = lshr i64 %599, 63
  %617 = trunc i64 %616 to i8
  store i8 %617, i8* %78, align 1
  %618 = xor i64 %616, %585
  %619 = xor i64 %616, %598
  %620 = add nuw nsw i64 %618, %619
  %621 = icmp eq i64 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %79, align 1
  %623 = add i64 %556, 31
  store i64 %623, i64* %PC.i, align 8
  %624 = inttoptr i64 %599 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RDX.i474, align 8
  %627 = load i64, i64* %RBP.i, align 8
  %628 = add i64 %627, 24
  %629 = add i64 %556, 35
  store i64 %629, i64* %PC.i, align 8
  %630 = inttoptr i64 %628 to i64*
  %631 = load i64, i64* %630, align 8
  store i64 %631, i64* %RAX.i567, align 8
  %632 = add i64 %627, -52
  %633 = add i64 %556, 39
  store i64 %633, i64* %PC.i, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = sext i32 %635 to i64
  %637 = mul nsw i64 %636, 1536
  store i64 %637, i64* %RCX.i554, align 8
  %638 = lshr i64 %637, 63
  %639 = add i64 %637, %631
  store i64 %639, i64* %RAX.i567, align 8
  %640 = icmp ult i64 %639, %631
  %641 = icmp ult i64 %639, %637
  %642 = or i1 %640, %641
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %74, align 1
  %644 = trunc i64 %639 to i32
  %645 = and i32 %644, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %75, align 1
  %650 = xor i64 %631, %639
  %651 = lshr i64 %650, 4
  %652 = trunc i64 %651 to i8
  %653 = and i8 %652, 1
  store i8 %653, i8* %76, align 1
  %654 = icmp eq i64 %639, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %77, align 1
  %656 = lshr i64 %639, 63
  %657 = trunc i64 %656 to i8
  store i8 %657, i8* %78, align 1
  %658 = lshr i64 %631, 63
  %659 = xor i64 %656, %658
  %660 = xor i64 %656, %638
  %661 = add nuw nsw i64 %659, %660
  %662 = icmp eq i64 %661, 2
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %79, align 1
  %664 = add i64 %627, -48
  %665 = add i64 %556, 53
  store i64 %665, i64* %PC.i, align 8
  %666 = inttoptr i64 %664 to i32*
  %667 = load i32, i32* %666, align 4
  %668 = sext i32 %667 to i64
  %669 = shl nsw i64 %668, 8
  store i64 %669, i64* %RCX.i554, align 8
  %670 = lshr i64 %668, 55
  %671 = and i64 %670, 1
  %672 = add i64 %669, %639
  store i64 %672, i64* %RAX.i567, align 8
  %673 = icmp ult i64 %672, %639
  %674 = icmp ult i64 %672, %669
  %675 = or i1 %673, %674
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %74, align 1
  %677 = trunc i64 %672 to i32
  %678 = and i32 %677, 255
  %679 = tail call i32 @llvm.ctpop.i32(i32 %678)
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  store i8 %682, i8* %75, align 1
  %683 = xor i64 %639, %672
  %684 = lshr i64 %683, 4
  %685 = trunc i64 %684 to i8
  %686 = and i8 %685, 1
  store i8 %686, i8* %76, align 1
  %687 = icmp eq i64 %672, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %77, align 1
  %689 = lshr i64 %672, 63
  %690 = trunc i64 %689 to i8
  store i8 %690, i8* %78, align 1
  %691 = xor i64 %689, %656
  %692 = xor i64 %689, %671
  %693 = add nuw nsw i64 %691, %692
  %694 = icmp eq i64 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %79, align 1
  %696 = load i32, i32* %EDX.i557, align 4
  %697 = add i64 %556, 62
  store i64 %697, i64* %PC.i, align 8
  %698 = inttoptr i64 %672 to i32*
  store i32 %696, i32* %698, align 4
  %699 = load i64, i64* %RBP.i, align 8
  %700 = add i64 %699, -56
  %701 = load i64, i64* %PC.i, align 8
  %702 = add i64 %701, 7
  store i64 %702, i64* %PC.i, align 8
  %703 = inttoptr i64 %700 to i32*
  store i32 1, i32* %703, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_400fc5

block_.L_400fc5:                                  ; preds = %block_400fd6, %block_400f80
  %704 = phi i64 [ %1067, %block_400fd6 ], [ %.pre6, %block_400f80 ]
  %705 = load i64, i64* %RBP.i, align 8
  %706 = add i64 %705, -56
  %707 = add i64 %704, 3
  store i64 %707, i64* %PC.i, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RAX.i567, align 8
  %711 = add i64 %705, -12
  %712 = add i64 %704, 6
  store i64 %712, i64* %PC.i, align 8
  %713 = inttoptr i64 %711 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = add i32 %714, -1
  %716 = zext i32 %715 to i64
  store i64 %716, i64* %RCX.i554, align 8
  %717 = lshr i32 %715, 31
  %718 = sub i32 %709, %715
  %719 = icmp ult i32 %709, %715
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %74, align 1
  %721 = and i32 %718, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %75, align 1
  %726 = xor i32 %715, %709
  %727 = xor i32 %726, %718
  %728 = lshr i32 %727, 4
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  store i8 %730, i8* %76, align 1
  %731 = icmp eq i32 %718, 0
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %77, align 1
  %733 = lshr i32 %718, 31
  %734 = trunc i32 %733 to i8
  store i8 %734, i8* %78, align 1
  %735 = lshr i32 %709, 31
  %736 = xor i32 %717, %735
  %737 = xor i32 %733, %735
  %738 = add nuw nsw i32 %737, %736
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %79, align 1
  %741 = icmp ne i8 %734, 0
  %742 = xor i1 %741, %739
  %.demorgan19 = or i1 %731, %742
  %.v20 = select i1 %.demorgan19, i64 17, i64 144
  %743 = add i64 %704, %.v20
  %744 = add i64 %705, 24
  %745 = add i64 %743, 4
  store i64 %745, i64* %PC.i, align 8
  %746 = inttoptr i64 %744 to i64*
  %747 = load i64, i64* %746, align 8
  store i64 %747, i64* %RAX.i567, align 8
  %748 = add i64 %705, -52
  %749 = add i64 %743, 8
  store i64 %749, i64* %PC.i, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = sext i32 %751 to i64
  %753 = mul nsw i64 %752, 1536
  store i64 %753, i64* %RCX.i554, align 8
  %754 = lshr i64 %753, 63
  %755 = add i64 %753, %747
  store i64 %755, i64* %RAX.i567, align 8
  %756 = icmp ult i64 %755, %747
  %757 = icmp ult i64 %755, %753
  %758 = or i1 %756, %757
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %74, align 1
  %760 = trunc i64 %755 to i32
  %761 = and i32 %760, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %75, align 1
  %766 = xor i64 %747, %755
  %767 = lshr i64 %766, 4
  %768 = trunc i64 %767 to i8
  %769 = and i8 %768, 1
  store i8 %769, i8* %76, align 1
  %770 = icmp eq i64 %755, 0
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %77, align 1
  %772 = lshr i64 %755, 63
  %773 = trunc i64 %772 to i8
  store i8 %773, i8* %78, align 1
  %774 = lshr i64 %747, 63
  %775 = xor i64 %772, %774
  %776 = xor i64 %772, %754
  %777 = add nuw nsw i64 %775, %776
  %778 = icmp eq i64 %777, 2
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %79, align 1
  %780 = add i64 %705, -48
  %781 = add i64 %743, 22
  store i64 %781, i64* %PC.i, align 8
  %782 = inttoptr i64 %780 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = sext i32 %783 to i64
  %785 = shl nsw i64 %784, 8
  store i64 %785, i64* %RCX.i554, align 8
  %786 = lshr i64 %784, 55
  %787 = and i64 %786, 1
  %788 = add i64 %743, 29
  store i64 %788, i64* %PC.i, align 8
  %789 = add i64 %785, %755
  store i64 %789, i64* %RAX.i567, align 8
  %790 = icmp ult i64 %789, %755
  %791 = icmp ult i64 %789, %785
  %792 = or i1 %790, %791
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %74, align 1
  %794 = trunc i64 %789 to i32
  %795 = and i32 %794, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %75, align 1
  %800 = xor i64 %755, %789
  %801 = lshr i64 %800, 4
  %802 = trunc i64 %801 to i8
  %803 = and i8 %802, 1
  store i8 %803, i8* %76, align 1
  %804 = icmp eq i64 %789, 0
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %77, align 1
  %806 = lshr i64 %789, 63
  %807 = trunc i64 %806 to i8
  store i8 %807, i8* %78, align 1
  %808 = xor i64 %806, %772
  %809 = xor i64 %806, %787
  %810 = add nuw nsw i64 %808, %809
  %811 = icmp eq i64 %810, 2
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %79, align 1
  %813 = load i64, i64* %RBP.i, align 8
  br i1 %.demorgan19, label %block_400fd6, label %block_.L_401055

block_400fd6:                                     ; preds = %block_.L_400fc5
  %814 = add i64 %813, -56
  %815 = add i64 %743, 32
  store i64 %815, i64* %PC.i, align 8
  %816 = inttoptr i64 %814 to i32*
  %817 = load i32, i32* %816, align 4
  %818 = add i32 %817, -1
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RDX.i474, align 8
  %820 = icmp eq i32 %817, 0
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %74, align 1
  %822 = and i32 %818, 255
  %823 = tail call i32 @llvm.ctpop.i32(i32 %822)
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  %826 = xor i8 %825, 1
  store i8 %826, i8* %75, align 1
  %827 = xor i32 %817, %818
  %828 = lshr i32 %827, 4
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  store i8 %830, i8* %76, align 1
  %831 = icmp eq i32 %818, 0
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %77, align 1
  %833 = lshr i32 %818, 31
  %834 = trunc i32 %833 to i8
  store i8 %834, i8* %78, align 1
  %835 = lshr i32 %817, 31
  %836 = xor i32 %833, %835
  %837 = add nuw nsw i32 %836, %835
  %838 = icmp eq i32 %837, 2
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %79, align 1
  %840 = sext i32 %818 to i64
  store i64 %840, i64* %RCX.i554, align 8
  %841 = shl nsw i64 %840, 2
  %842 = add i64 %841, %789
  %843 = add i64 %743, 41
  store i64 %843, i64* %PC.i, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = zext i32 %845 to i64
  store i64 %846, i64* %RDX.i474, align 8
  %847 = add i64 %813, 16
  %848 = add i64 %743, 45
  store i64 %848, i64* %PC.i, align 8
  %849 = inttoptr i64 %847 to i64*
  %850 = load i64, i64* %849, align 8
  store i64 %850, i64* %RAX.i567, align 8
  %851 = add i64 %813, -52
  %852 = add i64 %743, 49
  store i64 %852, i64* %PC.i, align 8
  %853 = inttoptr i64 %851 to i32*
  %854 = load i32, i32* %853, align 4
  %855 = sext i32 %854 to i64
  %856 = mul nsw i64 %855, 1536
  store i64 %856, i64* %RCX.i554, align 8
  %857 = lshr i64 %856, 63
  %858 = add i64 %856, %850
  store i64 %858, i64* %RAX.i567, align 8
  %859 = icmp ult i64 %858, %850
  %860 = icmp ult i64 %858, %856
  %861 = or i1 %859, %860
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %74, align 1
  %863 = trunc i64 %858 to i32
  %864 = and i32 %863, 255
  %865 = tail call i32 @llvm.ctpop.i32(i32 %864)
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  %868 = xor i8 %867, 1
  store i8 %868, i8* %75, align 1
  %869 = xor i64 %850, %858
  %870 = lshr i64 %869, 4
  %871 = trunc i64 %870 to i8
  %872 = and i8 %871, 1
  store i8 %872, i8* %76, align 1
  %873 = icmp eq i64 %858, 0
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %77, align 1
  %875 = lshr i64 %858, 63
  %876 = trunc i64 %875 to i8
  store i8 %876, i8* %78, align 1
  %877 = lshr i64 %850, 63
  %878 = xor i64 %875, %877
  %879 = xor i64 %875, %857
  %880 = add nuw nsw i64 %878, %879
  %881 = icmp eq i64 %880, 2
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %79, align 1
  %883 = load i64, i64* %RBP.i, align 8
  %884 = add i64 %883, -48
  %885 = add i64 %743, 63
  store i64 %885, i64* %PC.i, align 8
  %886 = inttoptr i64 %884 to i32*
  %887 = load i32, i32* %886, align 4
  %888 = sext i32 %887 to i64
  %889 = shl nsw i64 %888, 8
  store i64 %889, i64* %RCX.i554, align 8
  %890 = lshr i64 %888, 55
  %891 = and i64 %890, 1
  %892 = add i64 %889, %858
  store i64 %892, i64* %RAX.i567, align 8
  %893 = icmp ult i64 %892, %858
  %894 = icmp ult i64 %892, %889
  %895 = or i1 %893, %894
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %74, align 1
  %897 = trunc i64 %892 to i32
  %898 = and i32 %897, 255
  %899 = tail call i32 @llvm.ctpop.i32(i32 %898)
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  store i8 %902, i8* %75, align 1
  %903 = xor i64 %858, %892
  %904 = lshr i64 %903, 4
  %905 = trunc i64 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %76, align 1
  %907 = icmp eq i64 %892, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %77, align 1
  %909 = lshr i64 %892, 63
  %910 = trunc i64 %909 to i8
  store i8 %910, i8* %78, align 1
  %911 = xor i64 %909, %875
  %912 = xor i64 %909, %891
  %913 = add nuw nsw i64 %911, %912
  %914 = icmp eq i64 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %79, align 1
  %916 = add i64 %883, -56
  %917 = add i64 %743, 74
  store i64 %917, i64* %PC.i, align 8
  %918 = inttoptr i64 %916 to i32*
  %919 = load i32, i32* %918, align 4
  %920 = sext i32 %919 to i64
  store i64 %920, i64* %RCX.i554, align 8
  %921 = load i64, i64* %RDX.i474, align 8
  %922 = shl nsw i64 %920, 2
  %923 = add i64 %922, %892
  %924 = add i64 %743, 77
  store i64 %924, i64* %PC.i, align 8
  %925 = trunc i64 %921 to i32
  %926 = inttoptr i64 %923 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = add i32 %927, %925
  %929 = zext i32 %928 to i64
  store i64 %929, i64* %RDX.i474, align 8
  %930 = icmp ult i32 %928, %925
  %931 = icmp ult i32 %928, %927
  %932 = or i1 %930, %931
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %74, align 1
  %934 = and i32 %928, 255
  %935 = tail call i32 @llvm.ctpop.i32(i32 %934)
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  %938 = xor i8 %937, 1
  store i8 %938, i8* %75, align 1
  %939 = xor i32 %927, %925
  %940 = xor i32 %939, %928
  %941 = lshr i32 %940, 4
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  store i8 %943, i8* %76, align 1
  %944 = icmp eq i32 %928, 0
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %77, align 1
  %946 = lshr i32 %928, 31
  %947 = trunc i32 %946 to i8
  store i8 %947, i8* %78, align 1
  %948 = lshr i32 %925, 31
  %949 = lshr i32 %927, 31
  %950 = xor i32 %946, %948
  %951 = xor i32 %946, %949
  %952 = add nuw nsw i32 %950, %951
  %953 = icmp eq i32 %952, 2
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %79, align 1
  %955 = load i64, i64* %RBP.i, align 8
  %956 = add i64 %955, 24
  %957 = add i64 %743, 81
  store i64 %957, i64* %PC.i, align 8
  %958 = inttoptr i64 %956 to i64*
  %959 = load i64, i64* %958, align 8
  store i64 %959, i64* %RAX.i567, align 8
  %960 = add i64 %955, -52
  %961 = add i64 %743, 85
  store i64 %961, i64* %PC.i, align 8
  %962 = inttoptr i64 %960 to i32*
  %963 = load i32, i32* %962, align 4
  %964 = sext i32 %963 to i64
  %965 = mul nsw i64 %964, 1536
  store i64 %965, i64* %RCX.i554, align 8
  %966 = lshr i64 %965, 63
  %967 = add i64 %965, %959
  store i64 %967, i64* %RAX.i567, align 8
  %968 = icmp ult i64 %967, %959
  %969 = icmp ult i64 %967, %965
  %970 = or i1 %968, %969
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %74, align 1
  %972 = trunc i64 %967 to i32
  %973 = and i32 %972, 255
  %974 = tail call i32 @llvm.ctpop.i32(i32 %973)
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  %977 = xor i8 %976, 1
  store i8 %977, i8* %75, align 1
  %978 = xor i64 %959, %967
  %979 = lshr i64 %978, 4
  %980 = trunc i64 %979 to i8
  %981 = and i8 %980, 1
  store i8 %981, i8* %76, align 1
  %982 = icmp eq i64 %967, 0
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %77, align 1
  %984 = lshr i64 %967, 63
  %985 = trunc i64 %984 to i8
  store i8 %985, i8* %78, align 1
  %986 = lshr i64 %959, 63
  %987 = xor i64 %984, %986
  %988 = xor i64 %984, %966
  %989 = add nuw nsw i64 %987, %988
  %990 = icmp eq i64 %989, 2
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %79, align 1
  %992 = add i64 %955, -48
  %993 = add i64 %743, 99
  store i64 %993, i64* %PC.i, align 8
  %994 = inttoptr i64 %992 to i32*
  %995 = load i32, i32* %994, align 4
  %996 = sext i32 %995 to i64
  %997 = shl nsw i64 %996, 8
  store i64 %997, i64* %RCX.i554, align 8
  %998 = lshr i64 %996, 55
  %999 = and i64 %998, 1
  %1000 = add i64 %997, %967
  store i64 %1000, i64* %RAX.i567, align 8
  %1001 = icmp ult i64 %1000, %967
  %1002 = icmp ult i64 %1000, %997
  %1003 = or i1 %1001, %1002
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %74, align 1
  %1005 = trunc i64 %1000 to i32
  %1006 = and i32 %1005, 255
  %1007 = tail call i32 @llvm.ctpop.i32(i32 %1006)
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = xor i8 %1009, 1
  store i8 %1010, i8* %75, align 1
  %1011 = xor i64 %967, %1000
  %1012 = lshr i64 %1011, 4
  %1013 = trunc i64 %1012 to i8
  %1014 = and i8 %1013, 1
  store i8 %1014, i8* %76, align 1
  %1015 = icmp eq i64 %1000, 0
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %77, align 1
  %1017 = lshr i64 %1000, 63
  %1018 = trunc i64 %1017 to i8
  store i8 %1018, i8* %78, align 1
  %1019 = xor i64 %1017, %984
  %1020 = xor i64 %1017, %999
  %1021 = add nuw nsw i64 %1019, %1020
  %1022 = icmp eq i64 %1021, 2
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %79, align 1
  %1024 = load i64, i64* %RBP.i, align 8
  %1025 = add i64 %1024, -56
  %1026 = add i64 %743, 110
  store i64 %1026, i64* %PC.i, align 8
  %1027 = inttoptr i64 %1025 to i32*
  %1028 = load i32, i32* %1027, align 4
  %1029 = sext i32 %1028 to i64
  store i64 %1029, i64* %RCX.i554, align 8
  %1030 = shl nsw i64 %1029, 2
  %1031 = add i64 %1030, %1000
  %1032 = load i32, i32* %EDX.i557, align 4
  %1033 = add i64 %743, 113
  store i64 %1033, i64* %PC.i, align 8
  %1034 = inttoptr i64 %1031 to i32*
  store i32 %1032, i32* %1034, align 4
  %1035 = load i64, i64* %RBP.i, align 8
  %1036 = add i64 %1035, -56
  %1037 = load i64, i64* %PC.i, align 8
  %1038 = add i64 %1037, 3
  store i64 %1038, i64* %PC.i, align 8
  %1039 = inttoptr i64 %1036 to i32*
  %1040 = load i32, i32* %1039, align 4
  %1041 = add i32 %1040, 1
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %RAX.i567, align 8
  %1043 = icmp eq i32 %1040, -1
  %1044 = icmp eq i32 %1041, 0
  %1045 = or i1 %1043, %1044
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %74, align 1
  %1047 = and i32 %1041, 255
  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %75, align 1
  %1052 = xor i32 %1040, %1041
  %1053 = lshr i32 %1052, 4
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  store i8 %1055, i8* %76, align 1
  %1056 = icmp eq i32 %1041, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %77, align 1
  %1058 = lshr i32 %1041, 31
  %1059 = trunc i32 %1058 to i8
  store i8 %1059, i8* %78, align 1
  %1060 = lshr i32 %1040, 31
  %1061 = xor i32 %1058, %1060
  %1062 = add nuw nsw i32 %1061, %1058
  %1063 = icmp eq i32 %1062, 2
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %79, align 1
  %1065 = add i64 %1037, 9
  store i64 %1065, i64* %PC.i, align 8
  store i32 %1041, i32* %1039, align 4
  %1066 = load i64, i64* %PC.i, align 8
  %1067 = add i64 %1066, -139
  store i64 %1067, i64* %3, align 8
  br label %block_.L_400fc5

block_.L_401055:                                  ; preds = %block_.L_400fc5
  %1068 = add i64 %813, -12
  %1069 = add i64 %743, 32
  store i64 %1069, i64* %PC.i, align 8
  %1070 = inttoptr i64 %1068 to i32*
  %1071 = load i32, i32* %1070, align 4
  %1072 = add i32 %1071, -1
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RDX.i474, align 8
  %1074 = icmp eq i32 %1071, 0
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %74, align 1
  %1076 = and i32 %1072, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %75, align 1
  %1081 = xor i32 %1071, %1072
  %1082 = lshr i32 %1081, 4
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %76, align 1
  %1085 = icmp eq i32 %1072, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %77, align 1
  %1087 = lshr i32 %1072, 31
  %1088 = trunc i32 %1087 to i8
  store i8 %1088, i8* %78, align 1
  %1089 = lshr i32 %1071, 31
  %1090 = xor i32 %1087, %1089
  %1091 = add nuw nsw i32 %1090, %1089
  %1092 = icmp eq i32 %1091, 2
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %79, align 1
  %1094 = sext i32 %1072 to i64
  store i64 %1094, i64* %RCX.i554, align 8
  %1095 = shl nsw i64 %1094, 2
  %1096 = add i64 %1095, %789
  %1097 = add i64 %743, 41
  store i64 %1097, i64* %PC.i, align 8
  %1098 = inttoptr i64 %1096 to i32*
  %1099 = load i32, i32* %1098, align 4
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RDX.i474, align 8
  %1101 = add i64 %813, -32
  %1102 = add i64 %743, 45
  store i64 %1102, i64* %PC.i, align 8
  %1103 = inttoptr i64 %1101 to i64*
  %1104 = load i64, i64* %1103, align 8
  store i64 %1104, i64* %RAX.i567, align 8
  %1105 = add i64 %813, -52
  %1106 = add i64 %743, 49
  store i64 %1106, i64* %PC.i, align 8
  %1107 = inttoptr i64 %1105 to i32*
  %1108 = load i32, i32* %1107, align 4
  %1109 = sext i32 %1108 to i64
  %1110 = mul nsw i64 %1109, 24
  store i64 %1110, i64* %RCX.i554, align 8
  %1111 = lshr i64 %1110, 63
  %1112 = add i64 %1110, %1104
  store i64 %1112, i64* %RAX.i567, align 8
  %1113 = icmp ult i64 %1112, %1104
  %1114 = icmp ult i64 %1112, %1110
  %1115 = or i1 %1113, %1114
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %74, align 1
  %1117 = trunc i64 %1112 to i32
  %1118 = and i32 %1117, 255
  %1119 = tail call i32 @llvm.ctpop.i32(i32 %1118)
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  %1122 = xor i8 %1121, 1
  store i8 %1122, i8* %75, align 1
  %1123 = xor i64 %1110, %1104
  %1124 = xor i64 %1123, %1112
  %1125 = lshr i64 %1124, 4
  %1126 = trunc i64 %1125 to i8
  %1127 = and i8 %1126, 1
  store i8 %1127, i8* %76, align 1
  %1128 = icmp eq i64 %1112, 0
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %77, align 1
  %1130 = lshr i64 %1112, 63
  %1131 = trunc i64 %1130 to i8
  store i8 %1131, i8* %78, align 1
  %1132 = lshr i64 %1104, 63
  %1133 = xor i64 %1130, %1132
  %1134 = xor i64 %1130, %1111
  %1135 = add nuw nsw i64 %1133, %1134
  %1136 = icmp eq i64 %1135, 2
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %79, align 1
  %1138 = load i64, i64* %RBP.i, align 8
  %1139 = add i64 %1138, -48
  %1140 = add i64 %743, 60
  store i64 %1140, i64* %PC.i, align 8
  %1141 = inttoptr i64 %1139 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = sext i32 %1142 to i64
  store i64 %1143, i64* %RCX.i554, align 8
  %1144 = shl nsw i64 %1143, 2
  %1145 = add i64 %1144, %1112
  %1146 = add i64 %743, 63
  store i64 %1146, i64* %PC.i, align 8
  %1147 = inttoptr i64 %1145 to i32*
  store i32 %1099, i32* %1147, align 4
  %1148 = load i64, i64* %RBP.i, align 8
  %1149 = add i64 %1148, -48
  %1150 = load i64, i64* %PC.i, align 8
  %1151 = add i64 %1150, 3
  store i64 %1151, i64* %PC.i, align 8
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = add i32 %1153, 1
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RAX.i567, align 8
  %1156 = icmp eq i32 %1153, -1
  %1157 = icmp eq i32 %1154, 0
  %1158 = or i1 %1156, %1157
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %74, align 1
  %1160 = and i32 %1154, 255
  %1161 = tail call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  store i8 %1164, i8* %75, align 1
  %1165 = xor i32 %1153, %1154
  %1166 = lshr i32 %1165, 4
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  store i8 %1168, i8* %76, align 1
  %1169 = icmp eq i32 %1154, 0
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %77, align 1
  %1171 = lshr i32 %1154, 31
  %1172 = trunc i32 %1171 to i8
  store i8 %1172, i8* %78, align 1
  %1173 = lshr i32 %1153, 31
  %1174 = xor i32 %1171, %1173
  %1175 = add nuw nsw i32 %1174, %1171
  %1176 = icmp eq i32 %1175, 2
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %79, align 1
  %1178 = add i64 %1150, 9
  store i64 %1178, i64* %PC.i, align 8
  store i32 %1154, i32* %1152, align 4
  %1179 = load i64, i64* %PC.i, align 8
  %1180 = add i64 %1179, -302
  store i64 %1180, i64* %3, align 8
  br label %block_.L_400f6f

block_.L_4010a2:                                  ; preds = %block_.L_400f6f
  %1181 = add i64 %518, -52
  %1182 = add i64 %556, 8
  store i64 %1182, i64* %PC.i, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = add i32 %1184, 1
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RAX.i567, align 8
  %1187 = icmp eq i32 %1184, -1
  %1188 = icmp eq i32 %1185, 0
  %1189 = or i1 %1187, %1188
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %74, align 1
  %1191 = and i32 %1185, 255
  %1192 = tail call i32 @llvm.ctpop.i32(i32 %1191)
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  store i8 %1195, i8* %75, align 1
  %1196 = xor i32 %1184, %1185
  %1197 = lshr i32 %1196, 4
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  store i8 %1199, i8* %76, align 1
  %1200 = icmp eq i32 %1185, 0
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %77, align 1
  %1202 = lshr i32 %1185, 31
  %1203 = trunc i32 %1202 to i8
  store i8 %1203, i8* %78, align 1
  %1204 = lshr i32 %1184, 31
  %1205 = xor i32 %1202, %1204
  %1206 = add nuw nsw i32 %1205, %1202
  %1207 = icmp eq i32 %1206, 2
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %79, align 1
  %1209 = add i64 %556, 14
  store i64 %1209, i64* %PC.i, align 8
  store i32 %1185, i32* %1183, align 4
  %1210 = load i64, i64* %PC.i, align 8
  %1211 = add i64 %1210, -344
  store i64 %1211, i64* %3, align 8
  br label %block_.L_400f58

block_.L_4010b5:                                  ; preds = %block_.L_400f58
  %1212 = add i64 %472, -48
  %1213 = add i64 %510, 7
  store i64 %1213, i64* %PC.i, align 8
  %1214 = inttoptr i64 %1212 to i32*
  store i32 0, i32* %1214, align 4
  %.pre7 = load i64, i64* %PC.i, align 8
  br label %block_.L_4010bc

block_.L_4010bc:                                  ; preds = %block_4010cd, %block_.L_4010b5
  %1215 = phi i64 [ %1311, %block_4010cd ], [ %.pre7, %block_.L_4010b5 ]
  %1216 = load i64, i64* %RBP.i, align 8
  %1217 = add i64 %1216, -48
  %1218 = add i64 %1215, 3
  store i64 %1218, i64* %PC.i, align 8
  %1219 = inttoptr i64 %1217 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = zext i32 %1220 to i64
  store i64 %1221, i64* %RAX.i567, align 8
  %1222 = add i64 %1216, -8
  %1223 = add i64 %1215, 6
  store i64 %1223, i64* %PC.i, align 8
  %1224 = inttoptr i64 %1222 to i32*
  %1225 = load i32, i32* %1224, align 4
  %1226 = add i32 %1225, -1
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %RCX.i554, align 8
  %1228 = lshr i32 %1226, 31
  %1229 = sub i32 %1220, %1226
  %1230 = icmp ult i32 %1220, %1226
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %74, align 1
  %1232 = and i32 %1229, 255
  %1233 = tail call i32 @llvm.ctpop.i32(i32 %1232)
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = xor i8 %1235, 1
  store i8 %1236, i8* %75, align 1
  %1237 = xor i32 %1226, %1220
  %1238 = xor i32 %1237, %1229
  %1239 = lshr i32 %1238, 4
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  store i8 %1241, i8* %76, align 1
  %1242 = icmp eq i32 %1229, 0
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %77, align 1
  %1244 = lshr i32 %1229, 31
  %1245 = trunc i32 %1244 to i8
  store i8 %1245, i8* %78, align 1
  %1246 = lshr i32 %1220, 31
  %1247 = xor i32 %1228, %1246
  %1248 = xor i32 %1244, %1246
  %1249 = add nuw nsw i32 %1248, %1247
  %1250 = icmp eq i32 %1249, 2
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %79, align 1
  %1252 = icmp ne i8 %1245, 0
  %1253 = xor i1 %1252, %1250
  %.demorgan21 = or i1 %1242, %1253
  %.v22 = select i1 %.demorgan21, i64 17, i64 53
  %1254 = add i64 %1215, %.v22
  store i64 %1254, i64* %3, align 8
  br i1 %.demorgan21, label %block_4010cd, label %block_.L_4010f1

block_4010cd:                                     ; preds = %block_.L_4010bc
  %1255 = add i64 %1216, -32
  %1256 = add i64 %1254, 4
  store i64 %1256, i64* %PC.i, align 8
  %1257 = inttoptr i64 %1255 to i64*
  %1258 = load i64, i64* %1257, align 8
  store i64 %1258, i64* %RAX.i567, align 8
  %1259 = add i64 %1254, 8
  store i64 %1259, i64* %PC.i, align 8
  %1260 = load i32, i32* %1219, align 4
  %1261 = sext i32 %1260 to i64
  store i64 %1261, i64* %RCX.i554, align 8
  %1262 = shl nsw i64 %1261, 2
  %1263 = add i64 %1262, %1258
  %1264 = add i64 %1254, 11
  store i64 %1264, i64* %PC.i, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RDX.i474, align 8
  %1268 = add i64 %1216, -40
  %1269 = add i64 %1254, 15
  store i64 %1269, i64* %PC.i, align 8
  %1270 = inttoptr i64 %1268 to i64*
  %1271 = load i64, i64* %1270, align 8
  store i64 %1271, i64* %RAX.i567, align 8
  %1272 = add i64 %1254, 19
  store i64 %1272, i64* %PC.i, align 8
  %1273 = load i32, i32* %1219, align 4
  %1274 = sext i32 %1273 to i64
  store i64 %1274, i64* %RCX.i554, align 8
  %1275 = shl nsw i64 %1274, 2
  %1276 = add i64 %1275, %1271
  %1277 = add i64 %1254, 22
  store i64 %1277, i64* %PC.i, align 8
  %1278 = inttoptr i64 %1276 to i32*
  store i32 %1266, i32* %1278, align 4
  %1279 = load i64, i64* %RBP.i, align 8
  %1280 = add i64 %1279, -48
  %1281 = load i64, i64* %PC.i, align 8
  %1282 = add i64 %1281, 3
  store i64 %1282, i64* %PC.i, align 8
  %1283 = inttoptr i64 %1280 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = add i32 %1284, 1
  %1286 = zext i32 %1285 to i64
  store i64 %1286, i64* %RAX.i567, align 8
  %1287 = icmp eq i32 %1284, -1
  %1288 = icmp eq i32 %1285, 0
  %1289 = or i1 %1287, %1288
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %74, align 1
  %1291 = and i32 %1285, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %75, align 1
  %1296 = xor i32 %1284, %1285
  %1297 = lshr i32 %1296, 4
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  store i8 %1299, i8* %76, align 1
  %1300 = icmp eq i32 %1285, 0
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %77, align 1
  %1302 = lshr i32 %1285, 31
  %1303 = trunc i32 %1302 to i8
  store i8 %1303, i8* %78, align 1
  %1304 = lshr i32 %1284, 31
  %1305 = xor i32 %1302, %1304
  %1306 = add nuw nsw i32 %1305, %1302
  %1307 = icmp eq i32 %1306, 2
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %79, align 1
  %1309 = add i64 %1281, 9
  store i64 %1309, i64* %PC.i, align 8
  store i32 %1285, i32* %1283, align 4
  %1310 = load i64, i64* %PC.i, align 8
  %1311 = add i64 %1310, -48
  store i64 %1311, i64* %3, align 8
  br label %block_.L_4010bc

block_.L_4010f1:                                  ; preds = %block_.L_4010bc
  %1312 = add i64 %1216, -52
  %1313 = add i64 %1254, 7
  store i64 %1313, i64* %PC.i, align 8
  %1314 = inttoptr i64 %1312 to i32*
  store i32 1, i32* %1314, align 4
  %.pre8 = load i64, i64* %PC.i, align 8
  br label %block_.L_4010f8

block_.L_4010f8:                                  ; preds = %block_.L_40117a, %block_.L_4010f1
  %1315 = phi i64 [ %1660, %block_.L_40117a ], [ %.pre8, %block_.L_4010f1 ]
  %1316 = load i64, i64* %RBP.i, align 8
  %1317 = add i64 %1316, -52
  %1318 = add i64 %1315, 3
  store i64 %1318, i64* %PC.i, align 8
  %1319 = inttoptr i64 %1317 to i32*
  %1320 = load i32, i32* %1319, align 4
  %1321 = zext i32 %1320 to i64
  store i64 %1321, i64* %RAX.i567, align 8
  %1322 = add i64 %1316, -8
  %1323 = add i64 %1315, 6
  store i64 %1323, i64* %PC.i, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  %1326 = add i32 %1325, -1
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RCX.i554, align 8
  %1328 = lshr i32 %1326, 31
  %1329 = sub i32 %1320, %1326
  %1330 = icmp ult i32 %1320, %1326
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %74, align 1
  %1332 = and i32 %1329, 255
  %1333 = tail call i32 @llvm.ctpop.i32(i32 %1332)
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  store i8 %1336, i8* %75, align 1
  %1337 = xor i32 %1326, %1320
  %1338 = xor i32 %1337, %1329
  %1339 = lshr i32 %1338, 4
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  store i8 %1341, i8* %76, align 1
  %1342 = icmp eq i32 %1329, 0
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %77, align 1
  %1344 = lshr i32 %1329, 31
  %1345 = trunc i32 %1344 to i8
  store i8 %1345, i8* %78, align 1
  %1346 = lshr i32 %1320, 31
  %1347 = xor i32 %1328, %1346
  %1348 = xor i32 %1344, %1346
  %1349 = add nuw nsw i32 %1348, %1347
  %1350 = icmp eq i32 %1349, 2
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %79, align 1
  %1352 = icmp ne i8 %1345, 0
  %1353 = xor i1 %1352, %1350
  %.demorgan23 = or i1 %1342, %1353
  %.v24 = select i1 %.demorgan23, i64 17, i64 149
  %1354 = add i64 %1315, %.v24
  store i64 %1354, i64* %3, align 8
  br i1 %.demorgan23, label %block_401109, label %block_.L_40118d

block_401109:                                     ; preds = %block_.L_4010f8
  %1355 = add i64 %1354, 3
  store i64 %1355, i64* %PC.i, align 8
  %1356 = load i32, i32* %1319, align 4
  %1357 = zext i32 %1356 to i64
  store i64 %1357, i64* %RAX.i567, align 8
  %1358 = add i64 %1316, -48
  %1359 = add i64 %1354, 6
  store i64 %1359, i64* %PC.i, align 8
  %1360 = inttoptr i64 %1358 to i32*
  store i32 %1356, i32* %1360, align 4
  %.pre9 = load i64, i64* %PC.i, align 8
  br label %block_.L_40110f

block_.L_40110f:                                  ; preds = %block_401120, %block_401109
  %1361 = phi i64 [ %1629, %block_401120 ], [ %.pre9, %block_401109 ]
  %1362 = load i64, i64* %RBP.i, align 8
  %1363 = add i64 %1362, -48
  %1364 = add i64 %1361, 3
  store i64 %1364, i64* %PC.i, align 8
  %1365 = inttoptr i64 %1363 to i32*
  %1366 = load i32, i32* %1365, align 4
  %1367 = zext i32 %1366 to i64
  store i64 %1367, i64* %RAX.i567, align 8
  %1368 = add i64 %1362, -8
  %1369 = add i64 %1361, 6
  store i64 %1369, i64* %PC.i, align 8
  %1370 = inttoptr i64 %1368 to i32*
  %1371 = load i32, i32* %1370, align 4
  %1372 = add i32 %1371, -1
  %1373 = zext i32 %1372 to i64
  store i64 %1373, i64* %RCX.i554, align 8
  %1374 = lshr i32 %1372, 31
  %1375 = sub i32 %1366, %1372
  %1376 = icmp ult i32 %1366, %1372
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %74, align 1
  %1378 = and i32 %1375, 255
  %1379 = tail call i32 @llvm.ctpop.i32(i32 %1378)
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  %1382 = xor i8 %1381, 1
  store i8 %1382, i8* %75, align 1
  %1383 = xor i32 %1372, %1366
  %1384 = xor i32 %1383, %1375
  %1385 = lshr i32 %1384, 4
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  store i8 %1387, i8* %76, align 1
  %1388 = icmp eq i32 %1375, 0
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %77, align 1
  %1390 = lshr i32 %1375, 31
  %1391 = trunc i32 %1390 to i8
  store i8 %1391, i8* %78, align 1
  %1392 = lshr i32 %1366, 31
  %1393 = xor i32 %1374, %1392
  %1394 = xor i32 %1390, %1392
  %1395 = add nuw nsw i32 %1394, %1393
  %1396 = icmp eq i32 %1395, 2
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %79, align 1
  %1398 = icmp ne i8 %1391, 0
  %1399 = xor i1 %1398, %1396
  %.demorgan25 = or i1 %1388, %1399
  %.v26 = select i1 %.demorgan25, i64 17, i64 107
  %1400 = add i64 %1361, %.v26
  store i64 %1400, i64* %3, align 8
  br i1 %.demorgan25, label %block_401120, label %block_.L_40117a

block_401120:                                     ; preds = %block_.L_40110f
  %1401 = add i64 %1362, -40
  %1402 = add i64 %1400, 4
  store i64 %1402, i64* %PC.i, align 8
  %1403 = inttoptr i64 %1401 to i64*
  %1404 = load i64, i64* %1403, align 8
  store i64 %1404, i64* %RAX.i567, align 8
  %1405 = add i64 %1362, -52
  %1406 = add i64 %1400, 7
  store i64 %1406, i64* %PC.i, align 8
  %1407 = inttoptr i64 %1405 to i32*
  %1408 = load i32, i32* %1407, align 4
  %1409 = add i32 %1408, -1
  %1410 = zext i32 %1409 to i64
  store i64 %1410, i64* %RCX.i554, align 8
  %1411 = sext i32 %1409 to i64
  %1412 = mul nsw i64 %1411, 24
  store i64 %1412, i64* %RDX.i474, align 8
  %1413 = lshr i64 %1412, 63
  %1414 = add i64 %1412, %1404
  store i64 %1414, i64* %RAX.i567, align 8
  %1415 = icmp ult i64 %1414, %1404
  %1416 = icmp ult i64 %1414, %1412
  %1417 = or i1 %1415, %1416
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %74, align 1
  %1419 = trunc i64 %1414 to i32
  %1420 = and i32 %1419, 255
  %1421 = tail call i32 @llvm.ctpop.i32(i32 %1420)
  %1422 = trunc i32 %1421 to i8
  %1423 = and i8 %1422, 1
  %1424 = xor i8 %1423, 1
  store i8 %1424, i8* %75, align 1
  %1425 = xor i64 %1412, %1404
  %1426 = xor i64 %1425, %1414
  %1427 = lshr i64 %1426, 4
  %1428 = trunc i64 %1427 to i8
  %1429 = and i8 %1428, 1
  store i8 %1429, i8* %76, align 1
  %1430 = icmp eq i64 %1414, 0
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %77, align 1
  %1432 = lshr i64 %1414, 63
  %1433 = trunc i64 %1432 to i8
  store i8 %1433, i8* %78, align 1
  %1434 = lshr i64 %1404, 63
  %1435 = xor i64 %1432, %1434
  %1436 = xor i64 %1432, %1413
  %1437 = add nuw nsw i64 %1435, %1436
  %1438 = icmp eq i64 %1437, 2
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %79, align 1
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -48
  %1442 = add i64 %1400, 23
  store i64 %1442, i64* %PC.i, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = add i32 %1444, -1
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RCX.i554, align 8
  %1447 = icmp eq i32 %1444, 0
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %74, align 1
  %1449 = and i32 %1445, 255
  %1450 = tail call i32 @llvm.ctpop.i32(i32 %1449)
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = xor i8 %1452, 1
  store i8 %1453, i8* %75, align 1
  %1454 = xor i32 %1444, %1445
  %1455 = lshr i32 %1454, 4
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  store i8 %1457, i8* %76, align 1
  %1458 = icmp eq i32 %1445, 0
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %77, align 1
  %1460 = lshr i32 %1445, 31
  %1461 = trunc i32 %1460 to i8
  store i8 %1461, i8* %78, align 1
  %1462 = lshr i32 %1444, 31
  %1463 = xor i32 %1460, %1462
  %1464 = add nuw nsw i32 %1463, %1462
  %1465 = icmp eq i32 %1464, 2
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %79, align 1
  %1467 = sext i32 %1445 to i64
  store i64 %1467, i64* %RDX.i474, align 8
  %1468 = shl nsw i64 %1467, 2
  %1469 = add i64 %1468, %1414
  %1470 = add i64 %1400, 32
  store i64 %1470, i64* %PC.i, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = zext i32 %1472 to i64
  store i64 %1473, i64* %RCX.i554, align 8
  %1474 = add i64 %1440, -32
  %1475 = add i64 %1400, 36
  store i64 %1475, i64* %PC.i, align 8
  %1476 = inttoptr i64 %1474 to i64*
  %1477 = load i64, i64* %1476, align 8
  store i64 %1477, i64* %RAX.i567, align 8
  %1478 = add i64 %1440, -52
  %1479 = add i64 %1400, 40
  store i64 %1479, i64* %PC.i, align 8
  %1480 = inttoptr i64 %1478 to i32*
  %1481 = load i32, i32* %1480, align 4
  %1482 = sext i32 %1481 to i64
  %1483 = mul nsw i64 %1482, 24
  store i64 %1483, i64* %RDX.i474, align 8
  %1484 = lshr i64 %1483, 63
  %1485 = add i64 %1483, %1477
  store i64 %1485, i64* %RAX.i567, align 8
  %1486 = icmp ult i64 %1485, %1477
  %1487 = icmp ult i64 %1485, %1483
  %1488 = or i1 %1486, %1487
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %74, align 1
  %1490 = trunc i64 %1485 to i32
  %1491 = and i32 %1490, 255
  %1492 = tail call i32 @llvm.ctpop.i32(i32 %1491)
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  store i8 %1495, i8* %75, align 1
  %1496 = xor i64 %1483, %1477
  %1497 = xor i64 %1496, %1485
  %1498 = lshr i64 %1497, 4
  %1499 = trunc i64 %1498 to i8
  %1500 = and i8 %1499, 1
  store i8 %1500, i8* %76, align 1
  %1501 = icmp eq i64 %1485, 0
  %1502 = zext i1 %1501 to i8
  store i8 %1502, i8* %77, align 1
  %1503 = lshr i64 %1485, 63
  %1504 = trunc i64 %1503 to i8
  store i8 %1504, i8* %78, align 1
  %1505 = lshr i64 %1477, 63
  %1506 = xor i64 %1503, %1505
  %1507 = xor i64 %1503, %1484
  %1508 = add nuw nsw i64 %1506, %1507
  %1509 = icmp eq i64 %1508, 2
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %79, align 1
  %1511 = load i64, i64* %RBP.i, align 8
  %1512 = add i64 %1511, -48
  %1513 = add i64 %1400, 51
  store i64 %1513, i64* %PC.i, align 8
  %1514 = inttoptr i64 %1512 to i32*
  %1515 = load i32, i32* %1514, align 4
  %1516 = sext i32 %1515 to i64
  store i64 %1516, i64* %RDX.i474, align 8
  %1517 = shl nsw i64 %1516, 2
  %1518 = add i64 %1517, %1485
  %1519 = add i64 %1400, 54
  store i64 %1519, i64* %PC.i, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = add i32 %1521, %1472
  %1523 = zext i32 %1522 to i64
  store i64 %1523, i64* %RCX.i554, align 8
  %1524 = icmp ult i32 %1522, %1472
  %1525 = icmp ult i32 %1522, %1521
  %1526 = or i1 %1524, %1525
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %74, align 1
  %1528 = and i32 %1522, 255
  %1529 = tail call i32 @llvm.ctpop.i32(i32 %1528)
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = xor i8 %1531, 1
  store i8 %1532, i8* %75, align 1
  %1533 = xor i32 %1521, %1472
  %1534 = xor i32 %1533, %1522
  %1535 = lshr i32 %1534, 4
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  store i8 %1537, i8* %76, align 1
  %1538 = icmp eq i32 %1522, 0
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %77, align 1
  %1540 = lshr i32 %1522, 31
  %1541 = trunc i32 %1540 to i8
  store i8 %1541, i8* %78, align 1
  %1542 = lshr i32 %1472, 31
  %1543 = lshr i32 %1521, 31
  %1544 = xor i32 %1540, %1542
  %1545 = xor i32 %1540, %1543
  %1546 = add nuw nsw i32 %1544, %1545
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %79, align 1
  %1549 = add i64 %1511, -40
  %1550 = add i64 %1400, 58
  store i64 %1550, i64* %PC.i, align 8
  %1551 = inttoptr i64 %1549 to i64*
  %1552 = load i64, i64* %1551, align 8
  store i64 %1552, i64* %RAX.i567, align 8
  %1553 = add i64 %1511, -52
  %1554 = add i64 %1400, 62
  store i64 %1554, i64* %PC.i, align 8
  %1555 = inttoptr i64 %1553 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = sext i32 %1556 to i64
  %1558 = mul nsw i64 %1557, 24
  store i64 %1558, i64* %RDX.i474, align 8
  %1559 = lshr i64 %1558, 63
  %1560 = add i64 %1558, %1552
  store i64 %1560, i64* %RAX.i567, align 8
  %1561 = icmp ult i64 %1560, %1552
  %1562 = icmp ult i64 %1560, %1558
  %1563 = or i1 %1561, %1562
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %74, align 1
  %1565 = trunc i64 %1560 to i32
  %1566 = and i32 %1565, 255
  %1567 = tail call i32 @llvm.ctpop.i32(i32 %1566)
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  %1570 = xor i8 %1569, 1
  store i8 %1570, i8* %75, align 1
  %1571 = xor i64 %1558, %1552
  %1572 = xor i64 %1571, %1560
  %1573 = lshr i64 %1572, 4
  %1574 = trunc i64 %1573 to i8
  %1575 = and i8 %1574, 1
  store i8 %1575, i8* %76, align 1
  %1576 = icmp eq i64 %1560, 0
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %77, align 1
  %1578 = lshr i64 %1560, 63
  %1579 = trunc i64 %1578 to i8
  store i8 %1579, i8* %78, align 1
  %1580 = lshr i64 %1552, 63
  %1581 = xor i64 %1578, %1580
  %1582 = xor i64 %1578, %1559
  %1583 = add nuw nsw i64 %1581, %1582
  %1584 = icmp eq i64 %1583, 2
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %79, align 1
  %1586 = load i64, i64* %RBP.i, align 8
  %1587 = add i64 %1586, -48
  %1588 = add i64 %1400, 73
  store i64 %1588, i64* %PC.i, align 8
  %1589 = inttoptr i64 %1587 to i32*
  %1590 = load i32, i32* %1589, align 4
  %1591 = sext i32 %1590 to i64
  store i64 %1591, i64* %RDX.i474, align 8
  %1592 = shl nsw i64 %1591, 2
  %1593 = add i64 %1592, %1560
  %1594 = load i32, i32* %ECX.i524, align 4
  %1595 = add i64 %1400, 76
  store i64 %1595, i64* %PC.i, align 8
  %1596 = inttoptr i64 %1593 to i32*
  store i32 %1594, i32* %1596, align 4
  %1597 = load i64, i64* %RBP.i, align 8
  %1598 = add i64 %1597, -48
  %1599 = load i64, i64* %PC.i, align 8
  %1600 = add i64 %1599, 3
  store i64 %1600, i64* %PC.i, align 8
  %1601 = inttoptr i64 %1598 to i32*
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
  %1618 = icmp eq i32 %1603, 0
  %1619 = zext i1 %1618 to i8
  store i8 %1619, i8* %77, align 1
  %1620 = lshr i32 %1603, 31
  %1621 = trunc i32 %1620 to i8
  store i8 %1621, i8* %78, align 1
  %1622 = lshr i32 %1602, 31
  %1623 = xor i32 %1620, %1622
  %1624 = add nuw nsw i32 %1623, %1620
  %1625 = icmp eq i32 %1624, 2
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %79, align 1
  %1627 = add i64 %1599, 9
  store i64 %1627, i64* %PC.i, align 8
  store i32 %1603, i32* %1601, align 4
  %1628 = load i64, i64* %PC.i, align 8
  %1629 = add i64 %1628, -102
  store i64 %1629, i64* %3, align 8
  br label %block_.L_40110f

block_.L_40117a:                                  ; preds = %block_.L_40110f
  %1630 = add i64 %1362, -52
  %1631 = add i64 %1400, 8
  store i64 %1631, i64* %PC.i, align 8
  %1632 = inttoptr i64 %1630 to i32*
  %1633 = load i32, i32* %1632, align 4
  %1634 = add i32 %1633, 1
  %1635 = zext i32 %1634 to i64
  store i64 %1635, i64* %RAX.i567, align 8
  %1636 = icmp eq i32 %1633, -1
  %1637 = icmp eq i32 %1634, 0
  %1638 = or i1 %1636, %1637
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %74, align 1
  %1640 = and i32 %1634, 255
  %1641 = tail call i32 @llvm.ctpop.i32(i32 %1640)
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = xor i8 %1643, 1
  store i8 %1644, i8* %75, align 1
  %1645 = xor i32 %1633, %1634
  %1646 = lshr i32 %1645, 4
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  store i8 %1648, i8* %76, align 1
  %1649 = icmp eq i32 %1634, 0
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %77, align 1
  %1651 = lshr i32 %1634, 31
  %1652 = trunc i32 %1651 to i8
  store i8 %1652, i8* %78, align 1
  %1653 = lshr i32 %1633, 31
  %1654 = xor i32 %1651, %1653
  %1655 = add nuw nsw i32 %1654, %1651
  %1656 = icmp eq i32 %1655, 2
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %79, align 1
  %1658 = add i64 %1400, 14
  store i64 %1658, i64* %PC.i, align 8
  store i32 %1634, i32* %1632, align 4
  %1659 = load i64, i64* %PC.i, align 8
  %1660 = add i64 %1659, -144
  store i64 %1660, i64* %3, align 8
  br label %block_.L_4010f8

block_.L_40118d:                                  ; preds = %block_.L_4010f8
  %1661 = add i64 %1316, -44
  %1662 = add i64 %1354, 8
  store i64 %1662, i64* %PC.i, align 8
  %1663 = inttoptr i64 %1661 to i32*
  %1664 = load i32, i32* %1663, align 4
  %1665 = add i32 %1664, 1
  %1666 = zext i32 %1665 to i64
  store i64 %1666, i64* %RAX.i567, align 8
  %1667 = icmp eq i32 %1664, -1
  %1668 = icmp eq i32 %1665, 0
  %1669 = or i1 %1667, %1668
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %74, align 1
  %1671 = and i32 %1665, 255
  %1672 = tail call i32 @llvm.ctpop.i32(i32 %1671)
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = xor i8 %1674, 1
  store i8 %1675, i8* %75, align 1
  %1676 = xor i32 %1664, %1665
  %1677 = lshr i32 %1676, 4
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  store i8 %1679, i8* %76, align 1
  %1680 = icmp eq i32 %1665, 0
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %77, align 1
  %1682 = lshr i32 %1665, 31
  %1683 = trunc i32 %1682 to i8
  store i8 %1683, i8* %78, align 1
  %1684 = lshr i32 %1664, 31
  %1685 = xor i32 %1682, %1684
  %1686 = add nuw nsw i32 %1685, %1682
  %1687 = icmp eq i32 %1686, 2
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %79, align 1
  %1689 = add i64 %1354, 14
  store i64 %1689, i64* %PC.i, align 8
  store i32 %1665, i32* %1663, align 4
  %1690 = load i64, i64* %PC.i, align 8
  %1691 = add i64 %1690, -779
  store i64 %1691, i64* %3, align 8
  br label %block_.L_400e90

block_.L_4011a0:                                  ; preds = %block_.L_400e90
  %1692 = add i64 %117, 1
  store i64 %1692, i64* %PC.i, align 8
  %1693 = load i64, i64* %6, align 8
  %1694 = add i64 %1693, 8
  %1695 = inttoptr i64 %1693 to i64*
  %1696 = load i64, i64* %1695, align 8
  store i64 %1696, i64* %RBP.i, align 8
  store i64 %1694, i64* %6, align 8
  %1697 = add i64 %117, 2
  store i64 %1697, i64* %PC.i, align 8
  %1698 = inttoptr i64 %1694 to i64*
  %1699 = load i64, i64* %1698, align 8
  store i64 %1699, i64* %3, align 8
  %1700 = add i64 %1693, 16
  store i64 %1700, i64* %6, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f30(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400eba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f43(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010a7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f58(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %18 = add i64 %3, %.v
  store i64 %18, i64* %17, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40117f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401192(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
