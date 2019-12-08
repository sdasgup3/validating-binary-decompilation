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
define %struct.Memory* @kernel_2mm(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 24
  %12 = add i64 %10, 7
  store i64 %12, i64* %PC.i, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i307, align 8
  %R10.i305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %15 = add i64 %7, 16
  %16 = add i64 %10, 11
  store i64 %16, i64* %PC.i, align 8
  %17 = inttoptr i64 %15 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %R10.i305, align 8
  %R11.i302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %19 = add i64 %7, 8
  %20 = add i64 %10, 15
  store i64 %20, i64* %PC.i, align 8
  %21 = inttoptr i64 %19 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %R11.i302, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %23 to i32*
  %24 = add i64 %7, -12
  %25 = load i32, i32* %EDI.i, align 4
  %26 = add i64 %10, 18
  store i64 %26, i64* %PC.i, align 8
  %27 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %28 to i32*
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -8
  %31 = load i32, i32* %ESI.i, align 4
  %32 = load i64, i64* %PC.i, align 8
  %33 = add i64 %32, 3
  store i64 %33, i64* %PC.i, align 8
  %34 = inttoptr i64 %30 to i32*
  store i32 %31, i32* %34, align 4
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %35 to i32*
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -12
  %38 = load i32, i32* %EDX.i, align 4
  %39 = load i64, i64* %PC.i, align 8
  %40 = add i64 %39, 3
  store i64 %40, i64* %PC.i, align 8
  %41 = inttoptr i64 %37 to i32*
  store i32 %38, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i = bitcast %union.anon* %42 to i32*
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i32, i32* %ECX.i, align 4
  %46 = load i64, i64* %PC.i, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %PC.i, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -24
  %52 = load i64, i64* %PC.i, align 8
  %53 = add i64 %52, 5
  store i64 %53, i64* %PC.i, align 8
  %54 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %49, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %55 = load i64, i64* %54, align 1
  %56 = inttoptr i64 %51 to i64*
  store i64 %55, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -32
  %59 = load i64, i64* %PC.i, align 8
  %60 = add i64 %59, 5
  store i64 %60, i64* %PC.i, align 8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %62 = load i64, i64* %61, align 1
  %63 = inttoptr i64 %58 to i64*
  store i64 %62, i64* %63, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -40
  %66 = load i64, i64* %R8.i, align 8
  %67 = load i64, i64* %PC.i, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC.i, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -48
  %72 = load i64, i64* %R9.i, align 8
  %73 = load i64, i64* %PC.i, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC.i, align 8
  %75 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -52
  %78 = load i64, i64* %PC.i, align 8
  %79 = add i64 %78, 7
  store i64 %79, i64* %PC.i, align 8
  %80 = inttoptr i64 %77 to i32*
  store i32 0, i32* %80, align 4
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -72
  %83 = load i64, i64* %R11.i302, align 8
  %84 = load i64, i64* %PC.i, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC.i, align 8
  %86 = inttoptr i64 %82 to i64*
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -80
  %89 = load i64, i64* %R10.i305, align 8
  %90 = load i64, i64* %PC.i, align 8
  %91 = add i64 %90, 4
  store i64 %91, i64* %PC.i, align 8
  %92 = inttoptr i64 %88 to i64*
  store i64 %89, i64* %92, align 8
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -88
  %95 = load i64, i64* %RAX.i307, align 8
  %96 = load i64, i64* %PC.i, align 8
  %97 = add i64 %96, 4
  store i64 %97, i64* %PC.i, align 8
  %98 = inttoptr i64 %94 to i64*
  store i64 %95, i64* %98, align 8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %105 = bitcast [32 x %union.VectorReg]* %49 to i8*
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %107 = bitcast [32 x %union.VectorReg]* %49 to i32*
  %108 = getelementptr inbounds i8, i8* %105, i64 4
  %109 = bitcast i8* %108 to i32*
  %110 = bitcast i64* %106 to i32*
  %111 = getelementptr inbounds i8, i8* %105, i64 12
  %112 = bitcast i8* %111 to i32*
  %RCX.i250 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %113 = bitcast [32 x %union.VectorReg]* %49 to double*
  %114 = bitcast i64* %106 to double*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400de1

block_.L_400de1:                                  ; preds = %block_.L_400ea1, %entry
  %115 = phi i64 [ %521, %block_.L_400ea1 ], [ %.pre, %entry ]
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -52
  %118 = add i64 %115, 3
  store i64 %118, i64* %PC.i, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RAX.i307, align 8
  %122 = add i64 %116, -4
  %123 = add i64 %115, 6
  store i64 %123, i64* %PC.i, align 8
  %124 = inttoptr i64 %122 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = sub i32 %120, %125
  %127 = icmp ult i32 %120, %125
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %99, align 1
  %129 = and i32 %126, 255
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129)
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  store i8 %133, i8* %100, align 1
  %134 = xor i32 %125, %120
  %135 = xor i32 %134, %126
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %101, align 1
  %139 = icmp eq i32 %126, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %102, align 1
  %141 = lshr i32 %126, 31
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %103, align 1
  %143 = lshr i32 %120, 31
  %144 = lshr i32 %125, 31
  %145 = xor i32 %144, %143
  %146 = xor i32 %141, %143
  %147 = add nuw nsw i32 %146, %145
  %148 = icmp eq i32 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %104, align 1
  %150 = icmp ne i8 %142, 0
  %151 = xor i1 %150, %148
  %.v = select i1 %151, i64 12, i64 211
  %152 = add i64 %115, %.v
  store i64 %152, i64* %3, align 8
  br i1 %151, label %block_400ded, label %block_.L_400eb4

block_400ded:                                     ; preds = %block_.L_400de1
  %153 = add i64 %116, -56
  %154 = add i64 %152, 7
  store i64 %154, i64* %PC.i, align 8
  %155 = inttoptr i64 %153 to i32*
  store i32 0, i32* %155, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400df4

block_.L_400df4:                                  ; preds = %block_.L_400e8e, %block_400ded
  %156 = phi i64 [ %490, %block_.L_400e8e ], [ %.pre1, %block_400ded ]
  %157 = load i64, i64* %RBP.i, align 8
  %158 = add i64 %157, -56
  %159 = add i64 %156, 3
  store i64 %159, i64* %PC.i, align 8
  %160 = inttoptr i64 %158 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RAX.i307, align 8
  %163 = add i64 %157, -8
  %164 = add i64 %156, 6
  store i64 %164, i64* %PC.i, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = sub i32 %161, %166
  %168 = icmp ult i32 %161, %166
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %99, align 1
  %170 = and i32 %167, 255
  %171 = tail call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %100, align 1
  %175 = xor i32 %166, %161
  %176 = xor i32 %175, %167
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %101, align 1
  %180 = icmp eq i32 %167, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %102, align 1
  %182 = lshr i32 %167, 31
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %103, align 1
  %184 = lshr i32 %161, 31
  %185 = lshr i32 %166, 31
  %186 = xor i32 %185, %184
  %187 = xor i32 %182, %184
  %188 = add nuw nsw i32 %187, %186
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %104, align 1
  %191 = icmp ne i8 %183, 0
  %192 = xor i1 %191, %189
  %.v6 = select i1 %192, i64 12, i64 173
  %193 = add i64 %156, %.v6
  store i64 %193, i64* %3, align 8
  br i1 %192, label %block_400e00, label %block_.L_400ea1

block_400e00:                                     ; preds = %block_.L_400df4
  store i32 0, i32* %107, align 1
  store i32 0, i32* %109, align 1
  store i32 0, i32* %110, align 1
  store i32 0, i32* %112, align 1
  %194 = add i64 %157, -40
  %195 = add i64 %193, 7
  store i64 %195, i64* %PC.i, align 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %RAX.i307, align 8
  %198 = add i64 %157, -52
  %199 = add i64 %193, 11
  store i64 %199, i64* %PC.i, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = shl nsw i64 %202, 13
  store i64 %203, i64* %RCX.i250, align 8
  %204 = lshr i64 %202, 50
  %205 = and i64 %204, 1
  %206 = add i64 %203, %197
  store i64 %206, i64* %RAX.i307, align 8
  %207 = icmp ult i64 %206, %197
  %208 = icmp ult i64 %206, %203
  %209 = or i1 %207, %208
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %99, align 1
  %211 = trunc i64 %206 to i32
  %212 = and i32 %211, 255
  %213 = tail call i32 @llvm.ctpop.i32(i32 %212)
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = xor i8 %215, 1
  store i8 %216, i8* %100, align 1
  %217 = xor i64 %197, %206
  %218 = lshr i64 %217, 4
  %219 = trunc i64 %218 to i8
  %220 = and i8 %219, 1
  store i8 %220, i8* %101, align 1
  %221 = icmp eq i64 %206, 0
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %102, align 1
  %223 = lshr i64 %206, 63
  %224 = trunc i64 %223 to i8
  store i8 %224, i8* %103, align 1
  %225 = lshr i64 %197, 63
  %226 = xor i64 %223, %225
  %227 = xor i64 %223, %205
  %228 = add nuw nsw i64 %226, %227
  %229 = icmp eq i64 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %104, align 1
  %231 = add i64 %193, 22
  store i64 %231, i64* %PC.i, align 8
  %232 = load i32, i32* %160, align 4
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %RCX.i250, align 8
  %234 = shl nsw i64 %233, 3
  %235 = add i64 %234, %206
  %236 = add i64 %193, 27
  store i64 %236, i64* %PC.i, align 8
  %237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %49, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %238 = load i64, i64* %237, align 1
  %239 = inttoptr i64 %235 to i64*
  store i64 %238, i64* %239, align 8
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -60
  %242 = load i64, i64* %PC.i, align 8
  %243 = add i64 %242, 7
  store i64 %243, i64* %PC.i, align 8
  %244 = inttoptr i64 %241 to i32*
  store i32 0, i32* %244, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e22

block_.L_400e22:                                  ; preds = %block_400e2e, %block_400e00
  %245 = phi i64 [ %459, %block_400e2e ], [ %.pre2, %block_400e00 ]
  %246 = load i64, i64* %RBP.i, align 8
  %247 = add i64 %246, -60
  %248 = add i64 %245, 3
  store i64 %248, i64* %PC.i, align 8
  %249 = inttoptr i64 %247 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RAX.i307, align 8
  %252 = add i64 %246, -12
  %253 = add i64 %245, 6
  store i64 %253, i64* %PC.i, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = sub i32 %250, %255
  %257 = icmp ult i32 %250, %255
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %99, align 1
  %259 = and i32 %256, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %100, align 1
  %264 = xor i32 %255, %250
  %265 = xor i32 %264, %256
  %266 = lshr i32 %265, 4
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  store i8 %268, i8* %101, align 1
  %269 = icmp eq i32 %256, 0
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %102, align 1
  %271 = lshr i32 %256, 31
  %272 = trunc i32 %271 to i8
  store i8 %272, i8* %103, align 1
  %273 = lshr i32 %250, 31
  %274 = lshr i32 %255, 31
  %275 = xor i32 %274, %273
  %276 = xor i32 %271, %273
  %277 = add nuw nsw i32 %276, %275
  %278 = icmp eq i32 %277, 2
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %104, align 1
  %280 = icmp ne i8 %272, 0
  %281 = xor i1 %280, %278
  %.v7 = select i1 %281, i64 12, i64 108
  %282 = add i64 %245, %.v7
  store i64 %282, i64* %3, align 8
  br i1 %281, label %block_400e2e, label %block_.L_400e8e

block_400e2e:                                     ; preds = %block_.L_400e22
  %283 = add i64 %246, -24
  %284 = add i64 %282, 5
  store i64 %284, i64* %PC.i, align 8
  %285 = inttoptr i64 %283 to double*
  %286 = load double, double* %285, align 8
  store double %286, double* %113, align 1
  store double 0.000000e+00, double* %114, align 1
  %287 = add i64 %246, -48
  %288 = add i64 %282, 9
  store i64 %288, i64* %PC.i, align 8
  %289 = inttoptr i64 %287 to i64*
  %290 = load i64, i64* %289, align 8
  store i64 %290, i64* %RAX.i307, align 8
  %291 = add i64 %246, -52
  %292 = add i64 %282, 13
  store i64 %292, i64* %PC.i, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = shl nsw i64 %295, 13
  store i64 %296, i64* %RCX.i250, align 8
  %297 = lshr i64 %295, 50
  %298 = and i64 %297, 1
  %299 = add i64 %296, %290
  store i64 %299, i64* %RAX.i307, align 8
  %300 = icmp ult i64 %299, %290
  %301 = icmp ult i64 %299, %296
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %99, align 1
  %304 = trunc i64 %299 to i32
  %305 = and i32 %304, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %100, align 1
  %310 = xor i64 %290, %299
  %311 = lshr i64 %310, 4
  %312 = trunc i64 %311 to i8
  %313 = and i8 %312, 1
  store i8 %313, i8* %101, align 1
  %314 = icmp eq i64 %299, 0
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %102, align 1
  %316 = lshr i64 %299, 63
  %317 = trunc i64 %316 to i8
  store i8 %317, i8* %103, align 1
  %318 = lshr i64 %290, 63
  %319 = xor i64 %316, %318
  %320 = xor i64 %316, %298
  %321 = add nuw nsw i64 %319, %320
  %322 = icmp eq i64 %321, 2
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %104, align 1
  %324 = add i64 %282, 24
  store i64 %324, i64* %PC.i, align 8
  %325 = load i32, i32* %249, align 4
  %326 = sext i32 %325 to i64
  store i64 %326, i64* %RCX.i250, align 8
  %327 = shl nsw i64 %326, 3
  %328 = add i64 %327, %299
  %329 = add i64 %282, 29
  store i64 %329, i64* %PC.i, align 8
  %330 = inttoptr i64 %328 to double*
  %331 = load double, double* %330, align 8
  %332 = fmul double %286, %331
  store double %332, double* %113, align 1
  store i64 0, i64* %106, align 1
  %333 = add i64 %246, 16
  %334 = add i64 %282, 33
  store i64 %334, i64* %PC.i, align 8
  %335 = inttoptr i64 %333 to i64*
  %336 = load i64, i64* %335, align 8
  store i64 %336, i64* %RAX.i307, align 8
  %337 = add i64 %282, 37
  store i64 %337, i64* %PC.i, align 8
  %338 = load i32, i32* %249, align 4
  %339 = sext i32 %338 to i64
  %340 = shl nsw i64 %339, 13
  store i64 %340, i64* %RCX.i250, align 8
  %341 = lshr i64 %339, 50
  %342 = and i64 %341, 1
  %343 = add i64 %340, %336
  store i64 %343, i64* %RAX.i307, align 8
  %344 = icmp ult i64 %343, %336
  %345 = icmp ult i64 %343, %340
  %346 = or i1 %344, %345
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %99, align 1
  %348 = trunc i64 %343 to i32
  %349 = and i32 %348, 255
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349)
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %100, align 1
  %354 = xor i64 %336, %343
  %355 = lshr i64 %354, 4
  %356 = trunc i64 %355 to i8
  %357 = and i8 %356, 1
  store i8 %357, i8* %101, align 1
  %358 = icmp eq i64 %343, 0
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %102, align 1
  %360 = lshr i64 %343, 63
  %361 = trunc i64 %360 to i8
  store i8 %361, i8* %103, align 1
  %362 = lshr i64 %336, 63
  %363 = xor i64 %360, %362
  %364 = xor i64 %360, %342
  %365 = add nuw nsw i64 %363, %364
  %366 = icmp eq i64 %365, 2
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %104, align 1
  %368 = load i64, i64* %RBP.i, align 8
  %369 = add i64 %368, -56
  %370 = add i64 %282, 48
  store i64 %370, i64* %PC.i, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  store i64 %373, i64* %RCX.i250, align 8
  %374 = shl nsw i64 %373, 3
  %375 = add i64 %374, %343
  %376 = add i64 %282, 53
  store i64 %376, i64* %PC.i, align 8
  %377 = inttoptr i64 %375 to double*
  %378 = load double, double* %377, align 8
  %379 = fmul double %332, %378
  store double %379, double* %113, align 1
  store i64 0, i64* %106, align 1
  %380 = add i64 %368, -40
  %381 = add i64 %282, 57
  store i64 %381, i64* %PC.i, align 8
  %382 = inttoptr i64 %380 to i64*
  %383 = load i64, i64* %382, align 8
  store i64 %383, i64* %RAX.i307, align 8
  %384 = add i64 %368, -52
  %385 = add i64 %282, 61
  store i64 %385, i64* %PC.i, align 8
  %386 = inttoptr i64 %384 to i32*
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = shl nsw i64 %388, 13
  store i64 %389, i64* %RCX.i250, align 8
  %390 = lshr i64 %388, 50
  %391 = and i64 %390, 1
  %392 = add i64 %389, %383
  store i64 %392, i64* %RAX.i307, align 8
  %393 = icmp ult i64 %392, %383
  %394 = icmp ult i64 %392, %389
  %395 = or i1 %393, %394
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %99, align 1
  %397 = trunc i64 %392 to i32
  %398 = and i32 %397, 255
  %399 = tail call i32 @llvm.ctpop.i32(i32 %398)
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  store i8 %402, i8* %100, align 1
  %403 = xor i64 %383, %392
  %404 = lshr i64 %403, 4
  %405 = trunc i64 %404 to i8
  %406 = and i8 %405, 1
  store i8 %406, i8* %101, align 1
  %407 = icmp eq i64 %392, 0
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %102, align 1
  %409 = lshr i64 %392, 63
  %410 = trunc i64 %409 to i8
  store i8 %410, i8* %103, align 1
  %411 = lshr i64 %383, 63
  %412 = xor i64 %409, %411
  %413 = xor i64 %409, %391
  %414 = add nuw nsw i64 %412, %413
  %415 = icmp eq i64 %414, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %104, align 1
  %417 = add i64 %282, 72
  store i64 %417, i64* %PC.i, align 8
  %418 = load i32, i32* %371, align 4
  %419 = sext i32 %418 to i64
  store i64 %419, i64* %RCX.i250, align 8
  %420 = shl nsw i64 %419, 3
  %421 = add i64 %420, %392
  %422 = add i64 %282, 77
  store i64 %422, i64* %PC.i, align 8
  %423 = inttoptr i64 %421 to double*
  %424 = load double, double* %423, align 8
  %425 = fadd double %379, %424
  store double %425, double* %113, align 1
  store i64 0, i64* %106, align 1
  %426 = add i64 %282, 82
  store i64 %426, i64* %PC.i, align 8
  store double %425, double* %423, align 8
  %427 = load i64, i64* %RBP.i, align 8
  %428 = add i64 %427, -60
  %429 = load i64, i64* %PC.i, align 8
  %430 = add i64 %429, 3
  store i64 %430, i64* %PC.i, align 8
  %431 = inttoptr i64 %428 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = add i32 %432, 1
  %434 = zext i32 %433 to i64
  store i64 %434, i64* %RAX.i307, align 8
  %435 = icmp eq i32 %432, -1
  %436 = icmp eq i32 %433, 0
  %437 = or i1 %435, %436
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %99, align 1
  %439 = and i32 %433, 255
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439)
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %100, align 1
  %444 = xor i32 %432, %433
  %445 = lshr i32 %444, 4
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  store i8 %447, i8* %101, align 1
  %448 = icmp eq i32 %433, 0
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %102, align 1
  %450 = lshr i32 %433, 31
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %103, align 1
  %452 = lshr i32 %432, 31
  %453 = xor i32 %450, %452
  %454 = add nuw nsw i32 %453, %450
  %455 = icmp eq i32 %454, 2
  %456 = zext i1 %455 to i8
  store i8 %456, i8* %104, align 1
  %457 = add i64 %429, 9
  store i64 %457, i64* %PC.i, align 8
  store i32 %433, i32* %431, align 4
  %458 = load i64, i64* %PC.i, align 8
  %459 = add i64 %458, -103
  store i64 %459, i64* %3, align 8
  br label %block_.L_400e22

block_.L_400e8e:                                  ; preds = %block_.L_400e22
  %460 = add i64 %246, -56
  %461 = add i64 %282, 8
  store i64 %461, i64* %PC.i, align 8
  %462 = inttoptr i64 %460 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = add i32 %463, 1
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RAX.i307, align 8
  %466 = icmp eq i32 %463, -1
  %467 = icmp eq i32 %464, 0
  %468 = or i1 %466, %467
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %99, align 1
  %470 = and i32 %464, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %100, align 1
  %475 = xor i32 %463, %464
  %476 = lshr i32 %475, 4
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  store i8 %478, i8* %101, align 1
  %479 = icmp eq i32 %464, 0
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %102, align 1
  %481 = lshr i32 %464, 31
  %482 = trunc i32 %481 to i8
  store i8 %482, i8* %103, align 1
  %483 = lshr i32 %463, 31
  %484 = xor i32 %481, %483
  %485 = add nuw nsw i32 %484, %481
  %486 = icmp eq i32 %485, 2
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %104, align 1
  %488 = add i64 %282, 14
  store i64 %488, i64* %PC.i, align 8
  store i32 %464, i32* %462, align 4
  %489 = load i64, i64* %PC.i, align 8
  %490 = add i64 %489, -168
  store i64 %490, i64* %3, align 8
  br label %block_.L_400df4

block_.L_400ea1:                                  ; preds = %block_.L_400df4
  %491 = add i64 %157, -52
  %492 = add i64 %193, 8
  store i64 %492, i64* %PC.i, align 8
  %493 = inttoptr i64 %491 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = add i32 %494, 1
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %RAX.i307, align 8
  %497 = icmp eq i32 %494, -1
  %498 = icmp eq i32 %495, 0
  %499 = or i1 %497, %498
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %99, align 1
  %501 = and i32 %495, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501)
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %100, align 1
  %506 = xor i32 %494, %495
  %507 = lshr i32 %506, 4
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  store i8 %509, i8* %101, align 1
  %510 = icmp eq i32 %495, 0
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %102, align 1
  %512 = lshr i32 %495, 31
  %513 = trunc i32 %512 to i8
  store i8 %513, i8* %103, align 1
  %514 = lshr i32 %494, 31
  %515 = xor i32 %512, %514
  %516 = add nuw nsw i32 %515, %512
  %517 = icmp eq i32 %516, 2
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %104, align 1
  %519 = add i64 %193, 14
  store i64 %519, i64* %PC.i, align 8
  store i32 %495, i32* %493, align 4
  %520 = load i64, i64* %PC.i, align 8
  %521 = add i64 %520, -206
  store i64 %521, i64* %3, align 8
  br label %block_.L_400de1

block_.L_400eb4:                                  ; preds = %block_.L_400de1
  %522 = add i64 %152, 7
  store i64 %522, i64* %PC.i, align 8
  store i32 0, i32* %119, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ebb

block_.L_400ebb:                                  ; preds = %block_.L_400f7d, %block_.L_400eb4
  %523 = phi i64 [ %929, %block_.L_400f7d ], [ %.pre3, %block_.L_400eb4 ]
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -52
  %526 = add i64 %523, 3
  store i64 %526, i64* %PC.i, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = zext i32 %528 to i64
  store i64 %529, i64* %RAX.i307, align 8
  %530 = add i64 %524, -4
  %531 = add i64 %523, 6
  store i64 %531, i64* %PC.i, align 8
  %532 = inttoptr i64 %530 to i32*
  %533 = load i32, i32* %532, align 4
  %534 = sub i32 %528, %533
  %535 = icmp ult i32 %528, %533
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %99, align 1
  %537 = and i32 %534, 255
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %100, align 1
  %542 = xor i32 %533, %528
  %543 = xor i32 %542, %534
  %544 = lshr i32 %543, 4
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  store i8 %546, i8* %101, align 1
  %547 = icmp eq i32 %534, 0
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %102, align 1
  %549 = lshr i32 %534, 31
  %550 = trunc i32 %549 to i8
  store i8 %550, i8* %103, align 1
  %551 = lshr i32 %528, 31
  %552 = lshr i32 %533, 31
  %553 = xor i32 %552, %551
  %554 = xor i32 %549, %551
  %555 = add nuw nsw i32 %554, %553
  %556 = icmp eq i32 %555, 2
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %104, align 1
  %558 = icmp ne i8 %550, 0
  %559 = xor i1 %558, %556
  %.v8 = select i1 %559, i64 12, i64 213
  %560 = add i64 %523, %.v8
  store i64 %560, i64* %3, align 8
  br i1 %559, label %block_400ec7, label %block_.L_400f90

block_400ec7:                                     ; preds = %block_.L_400ebb
  %561 = add i64 %524, -56
  %562 = add i64 %560, 7
  store i64 %562, i64* %PC.i, align 8
  %563 = inttoptr i64 %561 to i32*
  store i32 0, i32* %563, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ece

block_.L_400ece:                                  ; preds = %block_.L_400f6a, %block_400ec7
  %564 = phi i64 [ %898, %block_.L_400f6a ], [ %.pre4, %block_400ec7 ]
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -56
  %567 = add i64 %564, 3
  store i64 %567, i64* %PC.i, align 8
  %568 = inttoptr i64 %566 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RAX.i307, align 8
  %571 = add i64 %565, -16
  %572 = add i64 %564, 6
  store i64 %572, i64* %PC.i, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = sub i32 %569, %574
  %576 = icmp ult i32 %569, %574
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %99, align 1
  %578 = and i32 %575, 255
  %579 = tail call i32 @llvm.ctpop.i32(i32 %578)
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  %582 = xor i8 %581, 1
  store i8 %582, i8* %100, align 1
  %583 = xor i32 %574, %569
  %584 = xor i32 %583, %575
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %101, align 1
  %588 = icmp eq i32 %575, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %102, align 1
  %590 = lshr i32 %575, 31
  %591 = trunc i32 %590 to i8
  store i8 %591, i8* %103, align 1
  %592 = lshr i32 %569, 31
  %593 = lshr i32 %574, 31
  %594 = xor i32 %593, %592
  %595 = xor i32 %590, %592
  %596 = add nuw nsw i32 %595, %594
  %597 = icmp eq i32 %596, 2
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %104, align 1
  %599 = icmp ne i8 %591, 0
  %600 = xor i1 %599, %597
  %.v9 = select i1 %600, i64 12, i64 175
  %601 = add i64 %564, %.v9
  store i64 %601, i64* %3, align 8
  br i1 %600, label %block_400eda, label %block_.L_400f7d

block_400eda:                                     ; preds = %block_.L_400ece
  %602 = add i64 %565, -32
  %603 = add i64 %601, 5
  store i64 %603, i64* %PC.i, align 8
  %604 = inttoptr i64 %602 to double*
  %605 = load double, double* %604, align 8
  store double %605, double* %113, align 1
  store double 0.000000e+00, double* %114, align 1
  %606 = add i64 %565, 32
  %607 = add i64 %601, 9
  store i64 %607, i64* %PC.i, align 8
  %608 = inttoptr i64 %606 to i64*
  %609 = load i64, i64* %608, align 8
  store i64 %609, i64* %RAX.i307, align 8
  %610 = add i64 %565, -52
  %611 = add i64 %601, 13
  store i64 %611, i64* %PC.i, align 8
  %612 = inttoptr i64 %610 to i32*
  %613 = load i32, i32* %612, align 4
  %614 = sext i32 %613 to i64
  %615 = shl nsw i64 %614, 13
  store i64 %615, i64* %RCX.i250, align 8
  %616 = lshr i64 %614, 50
  %617 = and i64 %616, 1
  %618 = add i64 %615, %609
  store i64 %618, i64* %RAX.i307, align 8
  %619 = icmp ult i64 %618, %609
  %620 = icmp ult i64 %618, %615
  %621 = or i1 %619, %620
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %99, align 1
  %623 = trunc i64 %618 to i32
  %624 = and i32 %623, 255
  %625 = tail call i32 @llvm.ctpop.i32(i32 %624)
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  store i8 %628, i8* %100, align 1
  %629 = xor i64 %609, %618
  %630 = lshr i64 %629, 4
  %631 = trunc i64 %630 to i8
  %632 = and i8 %631, 1
  store i8 %632, i8* %101, align 1
  %633 = icmp eq i64 %618, 0
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %102, align 1
  %635 = lshr i64 %618, 63
  %636 = trunc i64 %635 to i8
  store i8 %636, i8* %103, align 1
  %637 = lshr i64 %609, 63
  %638 = xor i64 %635, %637
  %639 = xor i64 %635, %617
  %640 = add nuw nsw i64 %638, %639
  %641 = icmp eq i64 %640, 2
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %104, align 1
  %643 = add i64 %601, 24
  store i64 %643, i64* %PC.i, align 8
  %644 = load i32, i32* %568, align 4
  %645 = sext i32 %644 to i64
  store i64 %645, i64* %RCX.i250, align 8
  %646 = shl nsw i64 %645, 3
  %647 = add i64 %646, %618
  %648 = add i64 %601, 29
  store i64 %648, i64* %PC.i, align 8
  %649 = inttoptr i64 %647 to double*
  %650 = load double, double* %649, align 8
  %651 = fmul double %605, %650
  store double %651, double* %113, align 1
  store i64 0, i64* %106, align 1
  %652 = add i64 %601, 34
  store i64 %652, i64* %PC.i, align 8
  store double %651, double* %649, align 8
  %653 = load i64, i64* %RBP.i, align 8
  %654 = add i64 %653, -60
  %655 = load i64, i64* %PC.i, align 8
  %656 = add i64 %655, 7
  store i64 %656, i64* %PC.i, align 8
  %657 = inttoptr i64 %654 to i32*
  store i32 0, i32* %657, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_400f03

block_.L_400f03:                                  ; preds = %block_400f0f, %block_400eda
  %658 = phi i64 [ %867, %block_400f0f ], [ %.pre5, %block_400eda ]
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -60
  %661 = add i64 %658, 3
  store i64 %661, i64* %PC.i, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = zext i32 %663 to i64
  store i64 %664, i64* %RAX.i307, align 8
  %665 = add i64 %659, -8
  %666 = add i64 %658, 6
  store i64 %666, i64* %PC.i, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = sub i32 %663, %668
  %670 = icmp ult i32 %663, %668
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %99, align 1
  %672 = and i32 %669, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %100, align 1
  %677 = xor i32 %668, %663
  %678 = xor i32 %677, %669
  %679 = lshr i32 %678, 4
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %101, align 1
  %682 = icmp eq i32 %669, 0
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %102, align 1
  %684 = lshr i32 %669, 31
  %685 = trunc i32 %684 to i8
  store i8 %685, i8* %103, align 1
  %686 = lshr i32 %663, 31
  %687 = lshr i32 %668, 31
  %688 = xor i32 %687, %686
  %689 = xor i32 %684, %686
  %690 = add nuw nsw i32 %689, %688
  %691 = icmp eq i32 %690, 2
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %104, align 1
  %693 = icmp ne i8 %685, 0
  %694 = xor i1 %693, %691
  %.v10 = select i1 %694, i64 12, i64 103
  %695 = add i64 %658, %.v10
  store i64 %695, i64* %3, align 8
  br i1 %694, label %block_400f0f, label %block_.L_400f6a

block_400f0f:                                     ; preds = %block_.L_400f03
  %696 = add i64 %659, -40
  %697 = add i64 %695, 4
  store i64 %697, i64* %PC.i, align 8
  %698 = inttoptr i64 %696 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %RAX.i307, align 8
  %700 = add i64 %659, -52
  %701 = add i64 %695, 8
  store i64 %701, i64* %PC.i, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %703 to i64
  %705 = shl nsw i64 %704, 13
  store i64 %705, i64* %RCX.i250, align 8
  %706 = lshr i64 %704, 50
  %707 = and i64 %706, 1
  %708 = add i64 %705, %699
  store i64 %708, i64* %RAX.i307, align 8
  %709 = icmp ult i64 %708, %699
  %710 = icmp ult i64 %708, %705
  %711 = or i1 %709, %710
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %99, align 1
  %713 = trunc i64 %708 to i32
  %714 = and i32 %713, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %100, align 1
  %719 = xor i64 %699, %708
  %720 = lshr i64 %719, 4
  %721 = trunc i64 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %101, align 1
  %723 = icmp eq i64 %708, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %102, align 1
  %725 = lshr i64 %708, 63
  %726 = trunc i64 %725 to i8
  store i8 %726, i8* %103, align 1
  %727 = lshr i64 %699, 63
  %728 = xor i64 %725, %727
  %729 = xor i64 %725, %707
  %730 = add nuw nsw i64 %728, %729
  %731 = icmp eq i64 %730, 2
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %104, align 1
  %733 = add i64 %695, 19
  store i64 %733, i64* %PC.i, align 8
  %734 = load i32, i32* %662, align 4
  %735 = sext i32 %734 to i64
  store i64 %735, i64* %RCX.i250, align 8
  %736 = shl nsw i64 %735, 3
  %737 = add i64 %736, %708
  %738 = add i64 %695, 24
  store i64 %738, i64* %PC.i, align 8
  %739 = inttoptr i64 %737 to double*
  %740 = load double, double* %739, align 8
  store double %740, double* %113, align 1
  store double 0.000000e+00, double* %114, align 1
  %741 = add i64 %659, 24
  %742 = add i64 %695, 28
  store i64 %742, i64* %PC.i, align 8
  %743 = inttoptr i64 %741 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %RAX.i307, align 8
  %745 = add i64 %695, 32
  store i64 %745, i64* %PC.i, align 8
  %746 = load i32, i32* %662, align 4
  %747 = sext i32 %746 to i64
  %748 = shl nsw i64 %747, 13
  store i64 %748, i64* %RCX.i250, align 8
  %749 = lshr i64 %747, 50
  %750 = and i64 %749, 1
  %751 = add i64 %748, %744
  store i64 %751, i64* %RAX.i307, align 8
  %752 = icmp ult i64 %751, %744
  %753 = icmp ult i64 %751, %748
  %754 = or i1 %752, %753
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %99, align 1
  %756 = trunc i64 %751 to i32
  %757 = and i32 %756, 255
  %758 = tail call i32 @llvm.ctpop.i32(i32 %757)
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  %761 = xor i8 %760, 1
  store i8 %761, i8* %100, align 1
  %762 = xor i64 %744, %751
  %763 = lshr i64 %762, 4
  %764 = trunc i64 %763 to i8
  %765 = and i8 %764, 1
  store i8 %765, i8* %101, align 1
  %766 = icmp eq i64 %751, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %102, align 1
  %768 = lshr i64 %751, 63
  %769 = trunc i64 %768 to i8
  store i8 %769, i8* %103, align 1
  %770 = lshr i64 %744, 63
  %771 = xor i64 %768, %770
  %772 = xor i64 %768, %750
  %773 = add nuw nsw i64 %771, %772
  %774 = icmp eq i64 %773, 2
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %104, align 1
  %776 = load i64, i64* %RBP.i, align 8
  %777 = add i64 %776, -56
  %778 = add i64 %695, 43
  store i64 %778, i64* %PC.i, align 8
  %779 = inttoptr i64 %777 to i32*
  %780 = load i32, i32* %779, align 4
  %781 = sext i32 %780 to i64
  store i64 %781, i64* %RCX.i250, align 8
  %782 = shl nsw i64 %781, 3
  %783 = add i64 %782, %751
  %784 = add i64 %695, 48
  store i64 %784, i64* %PC.i, align 8
  %785 = inttoptr i64 %783 to double*
  %786 = load double, double* %785, align 8
  %787 = fmul double %740, %786
  store double %787, double* %113, align 1
  store i64 0, i64* %106, align 1
  %788 = add i64 %776, 32
  %789 = add i64 %695, 52
  store i64 %789, i64* %PC.i, align 8
  %790 = inttoptr i64 %788 to i64*
  %791 = load i64, i64* %790, align 8
  store i64 %791, i64* %RAX.i307, align 8
  %792 = add i64 %776, -52
  %793 = add i64 %695, 56
  store i64 %793, i64* %PC.i, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = sext i32 %795 to i64
  %797 = shl nsw i64 %796, 13
  store i64 %797, i64* %RCX.i250, align 8
  %798 = lshr i64 %796, 50
  %799 = and i64 %798, 1
  %800 = add i64 %797, %791
  store i64 %800, i64* %RAX.i307, align 8
  %801 = icmp ult i64 %800, %791
  %802 = icmp ult i64 %800, %797
  %803 = or i1 %801, %802
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %99, align 1
  %805 = trunc i64 %800 to i32
  %806 = and i32 %805, 255
  %807 = tail call i32 @llvm.ctpop.i32(i32 %806)
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  store i8 %810, i8* %100, align 1
  %811 = xor i64 %791, %800
  %812 = lshr i64 %811, 4
  %813 = trunc i64 %812 to i8
  %814 = and i8 %813, 1
  store i8 %814, i8* %101, align 1
  %815 = icmp eq i64 %800, 0
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %102, align 1
  %817 = lshr i64 %800, 63
  %818 = trunc i64 %817 to i8
  store i8 %818, i8* %103, align 1
  %819 = lshr i64 %791, 63
  %820 = xor i64 %817, %819
  %821 = xor i64 %817, %799
  %822 = add nuw nsw i64 %820, %821
  %823 = icmp eq i64 %822, 2
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %104, align 1
  %825 = add i64 %695, 67
  store i64 %825, i64* %PC.i, align 8
  %826 = load i32, i32* %779, align 4
  %827 = sext i32 %826 to i64
  store i64 %827, i64* %RCX.i250, align 8
  %828 = shl nsw i64 %827, 3
  %829 = add i64 %828, %800
  %830 = add i64 %695, 72
  store i64 %830, i64* %PC.i, align 8
  %831 = inttoptr i64 %829 to double*
  %832 = load double, double* %831, align 8
  %833 = fadd double %787, %832
  store double %833, double* %113, align 1
  store i64 0, i64* %106, align 1
  %834 = add i64 %695, 77
  store i64 %834, i64* %PC.i, align 8
  store double %833, double* %831, align 8
  %835 = load i64, i64* %RBP.i, align 8
  %836 = add i64 %835, -60
  %837 = load i64, i64* %PC.i, align 8
  %838 = add i64 %837, 3
  store i64 %838, i64* %PC.i, align 8
  %839 = inttoptr i64 %836 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = add i32 %840, 1
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RAX.i307, align 8
  %843 = icmp eq i32 %840, -1
  %844 = icmp eq i32 %841, 0
  %845 = or i1 %843, %844
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %99, align 1
  %847 = and i32 %841, 255
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847)
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %100, align 1
  %852 = xor i32 %840, %841
  %853 = lshr i32 %852, 4
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  store i8 %855, i8* %101, align 1
  %856 = icmp eq i32 %841, 0
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %102, align 1
  %858 = lshr i32 %841, 31
  %859 = trunc i32 %858 to i8
  store i8 %859, i8* %103, align 1
  %860 = lshr i32 %840, 31
  %861 = xor i32 %858, %860
  %862 = add nuw nsw i32 %861, %858
  %863 = icmp eq i32 %862, 2
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %104, align 1
  %865 = add i64 %837, 9
  store i64 %865, i64* %PC.i, align 8
  store i32 %841, i32* %839, align 4
  %866 = load i64, i64* %PC.i, align 8
  %867 = add i64 %866, -98
  store i64 %867, i64* %3, align 8
  br label %block_.L_400f03

block_.L_400f6a:                                  ; preds = %block_.L_400f03
  %868 = add i64 %659, -56
  %869 = add i64 %695, 8
  store i64 %869, i64* %PC.i, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = add i32 %871, 1
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RAX.i307, align 8
  %874 = icmp eq i32 %871, -1
  %875 = icmp eq i32 %872, 0
  %876 = or i1 %874, %875
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %99, align 1
  %878 = and i32 %872, 255
  %879 = tail call i32 @llvm.ctpop.i32(i32 %878)
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  store i8 %882, i8* %100, align 1
  %883 = xor i32 %871, %872
  %884 = lshr i32 %883, 4
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %101, align 1
  %887 = icmp eq i32 %872, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %102, align 1
  %889 = lshr i32 %872, 31
  %890 = trunc i32 %889 to i8
  store i8 %890, i8* %103, align 1
  %891 = lshr i32 %871, 31
  %892 = xor i32 %889, %891
  %893 = add nuw nsw i32 %892, %889
  %894 = icmp eq i32 %893, 2
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %104, align 1
  %896 = add i64 %695, 14
  store i64 %896, i64* %PC.i, align 8
  store i32 %872, i32* %870, align 4
  %897 = load i64, i64* %PC.i, align 8
  %898 = add i64 %897, -170
  store i64 %898, i64* %3, align 8
  br label %block_.L_400ece

block_.L_400f7d:                                  ; preds = %block_.L_400ece
  %899 = add i64 %565, -52
  %900 = add i64 %601, 8
  store i64 %900, i64* %PC.i, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = add i32 %902, 1
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RAX.i307, align 8
  %905 = icmp eq i32 %902, -1
  %906 = icmp eq i32 %903, 0
  %907 = or i1 %905, %906
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %99, align 1
  %909 = and i32 %903, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909)
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %100, align 1
  %914 = xor i32 %902, %903
  %915 = lshr i32 %914, 4
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %101, align 1
  %918 = icmp eq i32 %903, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %102, align 1
  %920 = lshr i32 %903, 31
  %921 = trunc i32 %920 to i8
  store i8 %921, i8* %103, align 1
  %922 = lshr i32 %902, 31
  %923 = xor i32 %920, %922
  %924 = add nuw nsw i32 %923, %920
  %925 = icmp eq i32 %924, 2
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %104, align 1
  %927 = add i64 %601, 14
  store i64 %927, i64* %PC.i, align 8
  store i32 %903, i32* %901, align 4
  %928 = load i64, i64* %PC.i, align 8
  %929 = add i64 %928, -208
  store i64 %929, i64* %3, align 8
  br label %block_.L_400ebb

block_.L_400f90:                                  ; preds = %block_.L_400ebb
  %930 = add i64 %560, 1
  store i64 %930, i64* %PC.i, align 8
  %931 = load i64, i64* %6, align 8
  %932 = add i64 %931, 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %RBP.i, align 8
  store i64 %932, i64* %6, align 8
  %935 = add i64 %560, 2
  store i64 %935, i64* %PC.i, align 8
  %936 = inttoptr i64 %932 to i64*
  %937 = load i64, i64* %936, align 8
  store i64 %937, i64* %3, align 8
  %938 = add i64 %931, 16
  store i64 %938, i64* %6, align 8
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

define %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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

define %struct.Memory* @routine_movq__r11__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_jge_.L_400eb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400ea1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400e8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400e22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_jmpq_.L_400df4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ea6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400de1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400f90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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

define %struct.Memory* @routine_jge_.L_400f7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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

define %struct.Memory* @routine_jge_.L_400f6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400f03(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_jmpq_.L_400ece(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f82(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ebb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
