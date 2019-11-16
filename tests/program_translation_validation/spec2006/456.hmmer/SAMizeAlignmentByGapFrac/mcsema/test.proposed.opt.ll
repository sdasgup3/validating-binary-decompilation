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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4015c0.tolower_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4013f0.toupper_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @SAMizeAlignmentByGapFrac(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 32
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
  %RDI.i494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i494, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %43 to i32*
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -12
  %46 = load i32, i32* %ESI.i, align 4
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i489 = bitcast %union.anon* %50 to i32*
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -16
  %53 = load i32, i32* %EDX.i489, align 4
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 3
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %56, align 4
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -20
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 5
  store i64 %61, i64* %3, align 8
  %62 = bitcast [32 x %union.VectorReg]* %57 to <2 x float>*
  %63 = load <2 x float>, <2 x float>* %62, align 1
  %64 = extractelement <2 x float> %63, i32 0
  %65 = inttoptr i64 %59 to float*
  store float %64, float* %65, align 4
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -24
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 7
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %67 to i32*
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i481 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0
  %RCX.i460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i452 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %72 = bitcast [32 x %union.VectorReg]* %57 to i8*
  %73 = bitcast [32 x %union.VectorReg]* %57 to <2 x i32>*
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %75 = bitcast i64* %74 to <2 x i32>*
  %76 = bitcast [32 x %union.VectorReg]* %57 to float*
  %77 = getelementptr inbounds i8, i8* %72, i64 4
  %78 = bitcast i8* %77 to i32*
  %79 = bitcast i64* %74 to i32*
  %80 = getelementptr inbounds i8, i8* %72, i64 12
  %81 = bitcast i8* %80 to i32*
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %83 = bitcast %union.VectorReg* %82 to i8*
  %84 = bitcast %union.VectorReg* %82 to <2 x i32>*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %86 = bitcast i64* %85 to <2 x i32>*
  %87 = bitcast %union.VectorReg* %82 to float*
  %88 = getelementptr inbounds i8, i8* %83, i64 4
  %89 = bitcast i8* %88 to i32*
  %90 = bitcast i64* %85 to i32*
  %91 = getelementptr inbounds i8, i8* %83, i64 12
  %92 = bitcast i8* %91 to i32*
  %93 = bitcast %union.VectorReg* %82 to <2 x float>*
  %AL.i = bitcast %union.anon* %71 to i8*
  %DL.i38 = bitcast %union.anon* %50 to i8*
  %RSI.i32 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4033ae

block_.L_4033ae:                                  ; preds = %block_.L_40369f, %entry
  %94 = phi i64 [ %.pre, %entry ], [ %1264, %block_.L_40369f ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %517, %block_.L_40369f ]
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -24
  %97 = add i64 %94, 3
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RAX.i481, align 8
  %101 = add i64 %95, -16
  %102 = add i64 %94, 6
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = sub i32 %99, %104
  %106 = icmp ult i32 %99, %104
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %14, align 1
  %108 = and i32 %105, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %21, align 1
  %113 = xor i32 %104, %99
  %114 = xor i32 %113, %105
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %26, align 1
  %118 = icmp eq i32 %105, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %29, align 1
  %120 = lshr i32 %105, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %32, align 1
  %122 = lshr i32 %99, 31
  %123 = lshr i32 %104, 31
  %124 = xor i32 %123, %122
  %125 = xor i32 %120, %122
  %126 = add nuw nsw i32 %125, %124
  %127 = icmp eq i32 %126, 2
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %38, align 1
  %129 = icmp ne i8 %121, 0
  %130 = xor i1 %129, %127
  %.v37 = select i1 %130, i64 12, i64 772
  %131 = add i64 %94, %.v37
  store i64 %131, i64* %3, align 8
  br i1 %130, label %block_4033ba, label %block_.L_4036b2

block_4033ba:                                     ; preds = %block_.L_4033ae
  %132 = add i64 %95, -32
  %133 = add i64 %131, 7
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i32*
  store i32 0, i32* %134, align 4
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -28
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 7
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %136 to i32*
  store i32 0, i32* %139, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_4033c8

block_.L_4033c8:                                  ; preds = %block_.L_40346e, %block_4033ba
  %140 = phi i64 [ %454, %block_.L_40346e ], [ %.pre26, %block_4033ba ]
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -28
  %143 = add i64 %140, 3
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RAX.i481, align 8
  %147 = add i64 %141, -12
  %148 = add i64 %140, 6
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = sub i32 %145, %150
  %152 = icmp ult i32 %145, %150
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %14, align 1
  %154 = and i32 %151, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154)
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %21, align 1
  %159 = xor i32 %150, %145
  %160 = xor i32 %159, %151
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %26, align 1
  %164 = icmp eq i32 %151, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %29, align 1
  %166 = lshr i32 %151, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %32, align 1
  %168 = lshr i32 %145, 31
  %169 = lshr i32 %150, 31
  %170 = xor i32 %169, %168
  %171 = xor i32 %166, %168
  %172 = add nuw nsw i32 %171, %170
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %38, align 1
  %175 = icmp ne i8 %167, 0
  %176 = xor i1 %175, %173
  %.v38 = select i1 %176, i64 12, i64 185
  %177 = add i64 %140, %.v38
  store i64 %177, i64* %3, align 8
  br i1 %176, label %block_4033d4, label %block_.L_403481

block_4033d4:                                     ; preds = %block_.L_4033c8
  %178 = add i64 %141, -8
  %179 = add i64 %177, 4
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %RAX.i481, align 8
  %182 = add i64 %177, 8
  store i64 %182, i64* %3, align 8
  %183 = load i32, i32* %144, align 4
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %RCX.i460, align 8
  %185 = shl nsw i64 %184, 3
  %186 = add i64 %185, %181
  %187 = add i64 %177, 12
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %RAX.i481, align 8
  %190 = add i64 %141, -24
  %191 = add i64 %177, 16
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %RCX.i460, align 8
  %195 = add i64 %189, %194
  %196 = add i64 %177, 20
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i8*
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i64
  %200 = and i64 %199, 4294967295
  store i64 %200, i64* %RDX.i452, align 8
  %201 = sext i8 %198 to i32
  %202 = add nsw i32 %201, -32
  %203 = icmp ult i8 %198, 32
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %14, align 1
  %205 = and i32 %202, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %21, align 1
  %210 = xor i32 %202, %201
  %211 = lshr i32 %210, 4
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %26, align 1
  %214 = icmp eq i32 %202, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %29, align 1
  %216 = lshr i32 %202, 31
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %32, align 1
  %218 = lshr i32 %201, 31
  %219 = xor i32 %216, %218
  %220 = add nuw nsw i32 %219, %218
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %38, align 1
  %.v51 = select i1 %214, i64 145, i64 29
  %223 = add i64 %177, %.v51
  store i64 %223, i64* %3, align 8
  br i1 %214, label %block_.L_403465, label %block_4033f1

block_4033f1:                                     ; preds = %block_4033d4
  %224 = add i64 %223, 4
  store i64 %224, i64* %3, align 8
  %225 = load i64, i64* %180, align 8
  store i64 %225, i64* %RAX.i481, align 8
  %226 = add i64 %223, 8
  store i64 %226, i64* %3, align 8
  %227 = load i32, i32* %144, align 4
  %228 = sext i32 %227 to i64
  store i64 %228, i64* %RCX.i460, align 8
  %229 = shl nsw i64 %228, 3
  %230 = add i64 %229, %225
  %231 = add i64 %223, 12
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %RAX.i481, align 8
  %234 = add i64 %223, 16
  store i64 %234, i64* %3, align 8
  %235 = load i32, i32* %192, align 4
  %236 = sext i32 %235 to i64
  store i64 %236, i64* %RCX.i460, align 8
  %237 = add i64 %233, %236
  %238 = add i64 %223, 20
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i8*
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i64
  %242 = and i64 %241, 4294967295
  store i64 %242, i64* %RDX.i452, align 8
  %243 = sext i8 %240 to i32
  %244 = add nsw i32 %243, -46
  %245 = icmp ult i8 %240, 46
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %14, align 1
  %247 = and i32 %244, 255
  %248 = tail call i32 @llvm.ctpop.i32(i32 %247)
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  store i8 %251, i8* %21, align 1
  %252 = xor i32 %244, %243
  %253 = lshr i32 %252, 4
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  store i8 %255, i8* %26, align 1
  %256 = icmp eq i32 %244, 0
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %29, align 1
  %258 = lshr i32 %244, 31
  %259 = trunc i32 %258 to i8
  store i8 %259, i8* %32, align 1
  %260 = lshr i32 %243, 31
  %261 = xor i32 %258, %260
  %262 = add nuw nsw i32 %261, %260
  %263 = icmp eq i32 %262, 2
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %38, align 1
  %.v52 = select i1 %256, i64 116, i64 29
  %265 = add i64 %223, %.v52
  store i64 %265, i64* %3, align 8
  br i1 %256, label %block_.L_403465, label %block_40340e

block_40340e:                                     ; preds = %block_4033f1
  %266 = add i64 %265, 4
  store i64 %266, i64* %3, align 8
  %267 = load i64, i64* %180, align 8
  store i64 %267, i64* %RAX.i481, align 8
  %268 = add i64 %265, 8
  store i64 %268, i64* %3, align 8
  %269 = load i32, i32* %144, align 4
  %270 = sext i32 %269 to i64
  store i64 %270, i64* %RCX.i460, align 8
  %271 = shl nsw i64 %270, 3
  %272 = add i64 %271, %267
  %273 = add i64 %265, 12
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i64*
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %RAX.i481, align 8
  %276 = add i64 %265, 16
  store i64 %276, i64* %3, align 8
  %277 = load i32, i32* %192, align 4
  %278 = sext i32 %277 to i64
  store i64 %278, i64* %RCX.i460, align 8
  %279 = add i64 %275, %278
  %280 = add i64 %265, 20
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i8*
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i64
  %284 = and i64 %283, 4294967295
  store i64 %284, i64* %RDX.i452, align 8
  %285 = sext i8 %282 to i32
  %286 = add nsw i32 %285, -95
  %287 = icmp ult i8 %282, 95
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %14, align 1
  %289 = and i32 %286, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %21, align 1
  %294 = xor i32 %285, 16
  %295 = xor i32 %294, %286
  %296 = lshr i32 %295, 4
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  store i8 %298, i8* %26, align 1
  %299 = icmp eq i32 %286, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %29, align 1
  %301 = lshr i32 %286, 31
  %302 = trunc i32 %301 to i8
  store i8 %302, i8* %32, align 1
  %303 = lshr i32 %285, 31
  %304 = xor i32 %301, %303
  %305 = add nuw nsw i32 %304, %303
  %306 = icmp eq i32 %305, 2
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %38, align 1
  %.v53 = select i1 %299, i64 87, i64 29
  %308 = add i64 %265, %.v53
  store i64 %308, i64* %3, align 8
  br i1 %299, label %block_.L_403465, label %block_40342b

block_40342b:                                     ; preds = %block_40340e
  %309 = add i64 %308, 4
  store i64 %309, i64* %3, align 8
  %310 = load i64, i64* %180, align 8
  store i64 %310, i64* %RAX.i481, align 8
  %311 = add i64 %308, 8
  store i64 %311, i64* %3, align 8
  %312 = load i32, i32* %144, align 4
  %313 = sext i32 %312 to i64
  store i64 %313, i64* %RCX.i460, align 8
  %314 = shl nsw i64 %313, 3
  %315 = add i64 %314, %310
  %316 = add i64 %308, 12
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i64*
  %318 = load i64, i64* %317, align 8
  store i64 %318, i64* %RAX.i481, align 8
  %319 = add i64 %308, 16
  store i64 %319, i64* %3, align 8
  %320 = load i32, i32* %192, align 4
  %321 = sext i32 %320 to i64
  store i64 %321, i64* %RCX.i460, align 8
  %322 = add i64 %318, %321
  %323 = add i64 %308, 20
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i8*
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i64
  %327 = and i64 %326, 4294967295
  store i64 %327, i64* %RDX.i452, align 8
  %328 = sext i8 %325 to i32
  %329 = add nsw i32 %328, -45
  %330 = icmp ult i8 %325, 45
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %14, align 1
  %332 = and i32 %329, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %21, align 1
  %337 = xor i32 %329, %328
  %338 = lshr i32 %337, 4
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  store i8 %340, i8* %26, align 1
  %341 = icmp eq i32 %329, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %29, align 1
  %343 = lshr i32 %329, 31
  %344 = trunc i32 %343 to i8
  store i8 %344, i8* %32, align 1
  %345 = lshr i32 %328, 31
  %346 = xor i32 %343, %345
  %347 = add nuw nsw i32 %346, %345
  %348 = icmp eq i32 %347, 2
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %38, align 1
  %.v54 = select i1 %341, i64 58, i64 29
  %350 = add i64 %308, %.v54
  store i64 %350, i64* %3, align 8
  br i1 %341, label %block_.L_403465, label %block_403448

block_403448:                                     ; preds = %block_40342b
  %351 = add i64 %350, 4
  store i64 %351, i64* %3, align 8
  %352 = load i64, i64* %180, align 8
  store i64 %352, i64* %RAX.i481, align 8
  %353 = add i64 %350, 8
  store i64 %353, i64* %3, align 8
  %354 = load i32, i32* %144, align 4
  %355 = sext i32 %354 to i64
  store i64 %355, i64* %RCX.i460, align 8
  %356 = shl nsw i64 %355, 3
  %357 = add i64 %356, %352
  %358 = add i64 %350, 12
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i64*
  %360 = load i64, i64* %359, align 8
  store i64 %360, i64* %RAX.i481, align 8
  %361 = add i64 %350, 16
  store i64 %361, i64* %3, align 8
  %362 = load i32, i32* %192, align 4
  %363 = sext i32 %362 to i64
  store i64 %363, i64* %RCX.i460, align 8
  %364 = add i64 %360, %363
  %365 = add i64 %350, 20
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %364 to i8*
  %367 = load i8, i8* %366, align 1
  %368 = sext i8 %367 to i64
  %369 = and i64 %368, 4294967295
  store i64 %369, i64* %RDX.i452, align 8
  %370 = sext i8 %367 to i32
  %371 = add nsw i32 %370, -126
  %372 = icmp ult i8 %367, 126
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %14, align 1
  %374 = and i32 %371, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374)
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %21, align 1
  %379 = xor i32 %370, 16
  %380 = xor i32 %379, %371
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %26, align 1
  %384 = icmp eq i32 %371, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %29, align 1
  %386 = lshr i32 %371, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %32, align 1
  %388 = lshr i32 %370, 31
  %389 = xor i32 %386, %388
  %390 = add nuw nsw i32 %389, %388
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %38, align 1
  %.v55 = select i1 %384, i64 29, i64 38
  %393 = add i64 %350, %.v55
  store i64 %393, i64* %3, align 8
  br i1 %384, label %block_.L_403465, label %block_.L_40346e

block_.L_403465:                                  ; preds = %block_403448, %block_40342b, %block_40340e, %block_4033f1, %block_4033d4
  %394 = phi i64 [ %393, %block_403448 ], [ %350, %block_40342b ], [ %308, %block_40340e ], [ %265, %block_4033f1 ], [ %223, %block_4033d4 ]
  %395 = add i64 %141, -32
  %396 = add i64 %394, 3
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = add i32 %398, 1
  %400 = zext i32 %399 to i64
  store i64 %400, i64* %RAX.i481, align 8
  %401 = icmp eq i32 %398, -1
  %402 = icmp eq i32 %399, 0
  %403 = or i1 %401, %402
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %14, align 1
  %405 = and i32 %399, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405)
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %21, align 1
  %410 = xor i32 %399, %398
  %411 = lshr i32 %410, 4
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  store i8 %413, i8* %26, align 1
  %414 = zext i1 %402 to i8
  store i8 %414, i8* %29, align 1
  %415 = lshr i32 %399, 31
  %416 = trunc i32 %415 to i8
  store i8 %416, i8* %32, align 1
  %417 = lshr i32 %398, 31
  %418 = xor i32 %415, %417
  %419 = add nuw nsw i32 %418, %415
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %38, align 1
  %422 = add i64 %394, 9
  store i64 %422, i64* %3, align 8
  store i32 %399, i32* %397, align 4
  %.pre35 = load i64, i64* %3, align 8
  %.pre36 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40346e

block_.L_40346e:                                  ; preds = %block_403448, %block_.L_403465
  %423 = phi i64 [ %.pre36, %block_.L_403465 ], [ %141, %block_403448 ]
  %424 = phi i64 [ %.pre35, %block_.L_403465 ], [ %393, %block_403448 ]
  %425 = add i64 %423, -28
  %426 = add i64 %424, 8
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = add i32 %428, 1
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RAX.i481, align 8
  %431 = icmp eq i32 %428, -1
  %432 = icmp eq i32 %429, 0
  %433 = or i1 %431, %432
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %14, align 1
  %435 = and i32 %429, 255
  %436 = tail call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  store i8 %439, i8* %21, align 1
  %440 = xor i32 %429, %428
  %441 = lshr i32 %440, 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %26, align 1
  %444 = zext i1 %432 to i8
  store i8 %444, i8* %29, align 1
  %445 = lshr i32 %429, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %32, align 1
  %447 = lshr i32 %428, 31
  %448 = xor i32 %445, %447
  %449 = add nuw nsw i32 %448, %445
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %38, align 1
  %452 = add i64 %424, 14
  store i64 %452, i64* %3, align 8
  store i32 %429, i32* %427, align 4
  %453 = load i64, i64* %3, align 8
  %454 = add i64 %453, -180
  store i64 %454, i64* %3, align 8
  br label %block_.L_4033c8

block_.L_403481:                                  ; preds = %block_.L_4033c8
  %455 = add i64 %141, -32
  %456 = add i64 %177, 5
  store i64 %456, i64* %3, align 8
  %457 = load <2 x i32>, <2 x i32>* %73, align 1
  %458 = load <2 x i32>, <2 x i32>* %75, align 1
  %459 = inttoptr i64 %455 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = sitofp i32 %460 to float
  store float %461, float* %76, align 1
  %462 = extractelement <2 x i32> %457, i32 1
  store i32 %462, i32* %78, align 1
  %463 = extractelement <2 x i32> %458, i32 0
  store i32 %463, i32* %79, align 1
  %464 = extractelement <2 x i32> %458, i32 1
  store i32 %464, i32* %81, align 1
  %465 = add i64 %177, 10
  store i64 %465, i64* %3, align 8
  %466 = load <2 x i32>, <2 x i32>* %84, align 1
  %467 = load <2 x i32>, <2 x i32>* %86, align 1
  %468 = load i32, i32* %149, align 4
  %469 = sitofp i32 %468 to float
  store float %469, float* %87, align 1
  %470 = extractelement <2 x i32> %466, i32 1
  store i32 %470, i32* %89, align 1
  %471 = extractelement <2 x i32> %467, i32 0
  store i32 %471, i32* %90, align 1
  %472 = extractelement <2 x i32> %467, i32 1
  store i32 %472, i32* %92, align 1
  %473 = load <2 x float>, <2 x float>* %62, align 1
  %474 = load <2 x i32>, <2 x i32>* %75, align 1
  %475 = load <2 x float>, <2 x float>* %93, align 1
  %476 = extractelement <2 x float> %473, i32 0
  %477 = extractelement <2 x float> %475, i32 0
  %478 = fdiv float %476, %477
  store float %478, float* %76, align 1
  %479 = bitcast <2 x float> %473 to <2 x i32>
  %480 = extractelement <2 x i32> %479, i32 1
  store i32 %480, i32* %78, align 1
  %481 = extractelement <2 x i32> %474, i32 0
  store i32 %481, i32* %79, align 1
  %482 = extractelement <2 x i32> %474, i32 1
  store i32 %482, i32* %81, align 1
  %483 = add i64 %141, -20
  %484 = add i64 %177, 18
  store i64 %484, i64* %3, align 8
  %485 = load <2 x float>, <2 x float>* %62, align 1
  %486 = extractelement <2 x float> %485, i32 0
  %487 = inttoptr i64 %483 to float*
  %488 = load float, float* %487, align 4
  %489 = fcmp uno float %486, %488
  br i1 %489, label %490, label %500

; <label>:490:                                    ; preds = %block_.L_403481
  %491 = fadd float %486, %488
  %492 = bitcast float %491 to i32
  %493 = and i32 %492, 2143289344
  %494 = icmp eq i32 %493, 2139095040
  %495 = and i32 %492, 4194303
  %496 = icmp ne i32 %495, 0
  %497 = and i1 %494, %496
  br i1 %497, label %498, label %506

; <label>:498:                                    ; preds = %490
  %499 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %484, %struct.Memory* %MEMORY.0)
  %.pre27 = load i64, i64* %3, align 8
  %.pre28 = load i8, i8* %14, align 1
  %.pre29 = load i8, i8* %29, align 1
  %.pre30 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomiss_MINUS0x14__rbp____xmm0.exit

; <label>:500:                                    ; preds = %block_.L_403481
  %501 = fcmp ogt float %486, %488
  br i1 %501, label %506, label %502

; <label>:502:                                    ; preds = %500
  %503 = fcmp olt float %486, %488
  br i1 %503, label %506, label %504

; <label>:504:                                    ; preds = %502
  %505 = fcmp oeq float %486, %488
  br i1 %505, label %506, label %510

; <label>:506:                                    ; preds = %504, %502, %500, %490
  %507 = phi i8 [ 0, %500 ], [ 0, %502 ], [ 1, %504 ], [ 1, %490 ]
  %508 = phi i8 [ 0, %500 ], [ 0, %502 ], [ 0, %504 ], [ 1, %490 ]
  %509 = phi i8 [ 0, %500 ], [ 1, %502 ], [ 0, %504 ], [ 1, %490 ]
  store i8 %507, i8* %29, align 1
  store i8 %508, i8* %21, align 1
  store i8 %509, i8* %14, align 1
  br label %510

; <label>:510:                                    ; preds = %506, %504
  %511 = phi i8 [ %507, %506 ], [ %165, %504 ]
  %512 = phi i8 [ %509, %506 ], [ %153, %504 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss_MINUS0x14__rbp____xmm0.exit

routine_ucomiss_MINUS0x14__rbp____xmm0.exit:      ; preds = %510, %498
  %513 = phi i64 [ %.pre30, %498 ], [ %141, %510 ]
  %514 = phi i8 [ %.pre29, %498 ], [ %511, %510 ]
  %515 = phi i8 [ %.pre28, %498 ], [ %512, %510 ]
  %516 = phi i64 [ %.pre27, %498 ], [ %484, %510 ]
  %517 = phi %struct.Memory* [ %499, %498 ], [ %MEMORY.0, %510 ]
  %518 = or i8 %514, %515
  %519 = icmp ne i8 %518, 0
  %.v = select i1 %519, i64 265, i64 6
  %520 = add i64 %516, %.v
  %521 = add i64 %513, -28
  %522 = add i64 %520, 7
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  store i32 0, i32* %523, align 4
  %.pre33 = load i64, i64* %3, align 8
  br i1 %519, label %block_.L_4035a3.preheader, label %block_.L_4034a0.preheader

block_.L_4034a0.preheader:                        ; preds = %routine_ucomiss_MINUS0x14__rbp____xmm0.exit
  br label %block_.L_4034a0

block_.L_4035a3.preheader:                        ; preds = %routine_ucomiss_MINUS0x14__rbp____xmm0.exit
  br label %block_.L_4035a3

block_.L_4034a0:                                  ; preds = %block_.L_4034a0.preheader, %block_.L_403584
  %524 = phi i64 [ %877, %block_.L_403584 ], [ %.pre33, %block_.L_4034a0.preheader ]
  %525 = load i64, i64* %RBP.i, align 8
  %526 = add i64 %525, -28
  %527 = add i64 %524, 3
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RAX.i481, align 8
  %531 = add i64 %525, -12
  %532 = add i64 %524, 6
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = sub i32 %529, %534
  %536 = icmp ult i32 %529, %534
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %14, align 1
  %538 = and i32 %535, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %21, align 1
  %543 = xor i32 %534, %529
  %544 = xor i32 %543, %535
  %545 = lshr i32 %544, 4
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %26, align 1
  %548 = icmp eq i32 %535, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %29, align 1
  %550 = lshr i32 %535, 31
  %551 = trunc i32 %550 to i8
  store i8 %551, i8* %32, align 1
  %552 = lshr i32 %529, 31
  %553 = lshr i32 %534, 31
  %554 = xor i32 %553, %552
  %555 = xor i32 %550, %552
  %556 = add nuw nsw i32 %555, %554
  %557 = icmp eq i32 %556, 2
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %38, align 1
  %559 = icmp ne i8 %551, 0
  %560 = xor i1 %559, %557
  %.v39 = select i1 %560, i64 12, i64 247
  %561 = add i64 %524, %.v39
  store i64 %561, i64* %3, align 8
  br i1 %560, label %block_4034ac, label %block_.L_403597

block_4034ac:                                     ; preds = %block_.L_4034a0
  %562 = add i64 %525, -8
  %563 = add i64 %561, 4
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i64*
  %565 = load i64, i64* %564, align 8
  store i64 %565, i64* %RAX.i481, align 8
  %566 = add i64 %561, 8
  store i64 %566, i64* %3, align 8
  %567 = load i32, i32* %528, align 4
  %568 = sext i32 %567 to i64
  store i64 %568, i64* %RCX.i460, align 8
  %569 = shl nsw i64 %568, 3
  %570 = add i64 %569, %565
  %571 = add i64 %561, 12
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i64*
  %573 = load i64, i64* %572, align 8
  store i64 %573, i64* %RAX.i481, align 8
  %574 = add i64 %525, -24
  %575 = add i64 %561, 16
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = sext i32 %577 to i64
  store i64 %578, i64* %RCX.i460, align 8
  %579 = add i64 %573, %578
  %580 = add i64 %561, 20
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i8*
  %582 = load i8, i8* %581, align 1
  %583 = sext i8 %582 to i64
  %584 = and i64 %583, 4294967295
  store i64 %584, i64* %RDX.i452, align 8
  %585 = sext i8 %582 to i32
  %586 = add nsw i32 %585, -32
  %587 = icmp ult i8 %582, 32
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %14, align 1
  %589 = and i32 %586, 255
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589)
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %21, align 1
  %594 = xor i32 %586, %585
  %595 = lshr i32 %594, 4
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  store i8 %597, i8* %26, align 1
  %598 = icmp eq i32 %586, 0
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %29, align 1
  %600 = lshr i32 %586, 31
  %601 = trunc i32 %600 to i8
  store i8 %601, i8* %32, align 1
  %602 = lshr i32 %585, 31
  %603 = xor i32 %600, %602
  %604 = add nuw nsw i32 %603, %602
  %605 = icmp eq i32 %604, 2
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %38, align 1
  %.v40 = select i1 %598, i64 145, i64 29
  %607 = add i64 %561, %.v40
  store i64 %607, i64* %3, align 8
  br i1 %598, label %block_.L_40353d, label %block_4034c9

block_4034c9:                                     ; preds = %block_4034ac
  %608 = add i64 %607, 4
  store i64 %608, i64* %3, align 8
  %609 = load i64, i64* %564, align 8
  store i64 %609, i64* %RAX.i481, align 8
  %610 = add i64 %607, 8
  store i64 %610, i64* %3, align 8
  %611 = load i32, i32* %528, align 4
  %612 = sext i32 %611 to i64
  store i64 %612, i64* %RCX.i460, align 8
  %613 = shl nsw i64 %612, 3
  %614 = add i64 %613, %609
  %615 = add i64 %607, 12
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i64*
  %617 = load i64, i64* %616, align 8
  store i64 %617, i64* %RAX.i481, align 8
  %618 = add i64 %607, 16
  store i64 %618, i64* %3, align 8
  %619 = load i32, i32* %576, align 4
  %620 = sext i32 %619 to i64
  store i64 %620, i64* %RCX.i460, align 8
  %621 = add i64 %617, %620
  %622 = add i64 %607, 20
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i8*
  %624 = load i8, i8* %623, align 1
  %625 = sext i8 %624 to i64
  %626 = and i64 %625, 4294967295
  store i64 %626, i64* %RDX.i452, align 8
  %627 = sext i8 %624 to i32
  %628 = add nsw i32 %627, -46
  %629 = icmp ult i8 %624, 46
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %14, align 1
  %631 = and i32 %628, 255
  %632 = tail call i32 @llvm.ctpop.i32(i32 %631)
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  store i8 %635, i8* %21, align 1
  %636 = xor i32 %628, %627
  %637 = lshr i32 %636, 4
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  store i8 %639, i8* %26, align 1
  %640 = icmp eq i32 %628, 0
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %29, align 1
  %642 = lshr i32 %628, 31
  %643 = trunc i32 %642 to i8
  store i8 %643, i8* %32, align 1
  %644 = lshr i32 %627, 31
  %645 = xor i32 %642, %644
  %646 = add nuw nsw i32 %645, %644
  %647 = icmp eq i32 %646, 2
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %38, align 1
  %.v41 = select i1 %640, i64 116, i64 29
  %649 = add i64 %607, %.v41
  store i64 %649, i64* %3, align 8
  br i1 %640, label %block_.L_40353d, label %block_4034e6

block_4034e6:                                     ; preds = %block_4034c9
  %650 = add i64 %649, 4
  store i64 %650, i64* %3, align 8
  %651 = load i64, i64* %564, align 8
  store i64 %651, i64* %RAX.i481, align 8
  %652 = add i64 %649, 8
  store i64 %652, i64* %3, align 8
  %653 = load i32, i32* %528, align 4
  %654 = sext i32 %653 to i64
  store i64 %654, i64* %RCX.i460, align 8
  %655 = shl nsw i64 %654, 3
  %656 = add i64 %655, %651
  %657 = add i64 %649, 12
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i64*
  %659 = load i64, i64* %658, align 8
  store i64 %659, i64* %RAX.i481, align 8
  %660 = add i64 %649, 16
  store i64 %660, i64* %3, align 8
  %661 = load i32, i32* %576, align 4
  %662 = sext i32 %661 to i64
  store i64 %662, i64* %RCX.i460, align 8
  %663 = add i64 %659, %662
  %664 = add i64 %649, 20
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i8*
  %666 = load i8, i8* %665, align 1
  %667 = sext i8 %666 to i64
  %668 = and i64 %667, 4294967295
  store i64 %668, i64* %RDX.i452, align 8
  %669 = sext i8 %666 to i32
  %670 = add nsw i32 %669, -95
  %671 = icmp ult i8 %666, 95
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %14, align 1
  %673 = and i32 %670, 255
  %674 = tail call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  store i8 %677, i8* %21, align 1
  %678 = xor i32 %669, 16
  %679 = xor i32 %678, %670
  %680 = lshr i32 %679, 4
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  store i8 %682, i8* %26, align 1
  %683 = icmp eq i32 %670, 0
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %29, align 1
  %685 = lshr i32 %670, 31
  %686 = trunc i32 %685 to i8
  store i8 %686, i8* %32, align 1
  %687 = lshr i32 %669, 31
  %688 = xor i32 %685, %687
  %689 = add nuw nsw i32 %688, %687
  %690 = icmp eq i32 %689, 2
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %38, align 1
  %.v42 = select i1 %683, i64 87, i64 29
  %692 = add i64 %649, %.v42
  store i64 %692, i64* %3, align 8
  br i1 %683, label %block_.L_40353d, label %block_403503

block_403503:                                     ; preds = %block_4034e6
  %693 = add i64 %692, 4
  store i64 %693, i64* %3, align 8
  %694 = load i64, i64* %564, align 8
  store i64 %694, i64* %RAX.i481, align 8
  %695 = add i64 %692, 8
  store i64 %695, i64* %3, align 8
  %696 = load i32, i32* %528, align 4
  %697 = sext i32 %696 to i64
  store i64 %697, i64* %RCX.i460, align 8
  %698 = shl nsw i64 %697, 3
  %699 = add i64 %698, %694
  %700 = add i64 %692, 12
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %699 to i64*
  %702 = load i64, i64* %701, align 8
  store i64 %702, i64* %RAX.i481, align 8
  %703 = add i64 %692, 16
  store i64 %703, i64* %3, align 8
  %704 = load i32, i32* %576, align 4
  %705 = sext i32 %704 to i64
  store i64 %705, i64* %RCX.i460, align 8
  %706 = add i64 %702, %705
  %707 = add i64 %692, 20
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i8*
  %709 = load i8, i8* %708, align 1
  %710 = sext i8 %709 to i64
  %711 = and i64 %710, 4294967295
  store i64 %711, i64* %RDX.i452, align 8
  %712 = sext i8 %709 to i32
  %713 = add nsw i32 %712, -45
  %714 = icmp ult i8 %709, 45
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %14, align 1
  %716 = and i32 %713, 255
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716)
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  store i8 %720, i8* %21, align 1
  %721 = xor i32 %713, %712
  %722 = lshr i32 %721, 4
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  store i8 %724, i8* %26, align 1
  %725 = icmp eq i32 %713, 0
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %29, align 1
  %727 = lshr i32 %713, 31
  %728 = trunc i32 %727 to i8
  store i8 %728, i8* %32, align 1
  %729 = lshr i32 %712, 31
  %730 = xor i32 %727, %729
  %731 = add nuw nsw i32 %730, %729
  %732 = icmp eq i32 %731, 2
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %38, align 1
  %.v43 = select i1 %725, i64 58, i64 29
  %734 = add i64 %692, %.v43
  store i64 %734, i64* %3, align 8
  br i1 %725, label %block_.L_40353d, label %block_403520

block_403520:                                     ; preds = %block_403503
  %735 = add i64 %734, 4
  store i64 %735, i64* %3, align 8
  %736 = load i64, i64* %564, align 8
  store i64 %736, i64* %RAX.i481, align 8
  %737 = add i64 %734, 8
  store i64 %737, i64* %3, align 8
  %738 = load i32, i32* %528, align 4
  %739 = sext i32 %738 to i64
  store i64 %739, i64* %RCX.i460, align 8
  %740 = shl nsw i64 %739, 3
  %741 = add i64 %740, %736
  %742 = add i64 %734, 12
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %RAX.i481, align 8
  %745 = add i64 %734, 16
  store i64 %745, i64* %3, align 8
  %746 = load i32, i32* %576, align 4
  %747 = sext i32 %746 to i64
  store i64 %747, i64* %RCX.i460, align 8
  %748 = add i64 %744, %747
  %749 = add i64 %734, 20
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i8*
  %751 = load i8, i8* %750, align 1
  %752 = sext i8 %751 to i64
  %753 = and i64 %752, 4294967295
  store i64 %753, i64* %RDX.i452, align 8
  %754 = sext i8 %751 to i32
  %755 = add nsw i32 %754, -126
  %756 = icmp ult i8 %751, 126
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %14, align 1
  %758 = and i32 %755, 255
  %759 = tail call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  store i8 %762, i8* %21, align 1
  %763 = xor i32 %754, 16
  %764 = xor i32 %763, %755
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %26, align 1
  %768 = icmp eq i32 %755, 0
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %29, align 1
  %770 = lshr i32 %755, 31
  %771 = trunc i32 %770 to i8
  store i8 %771, i8* %32, align 1
  %772 = lshr i32 %754, 31
  %773 = xor i32 %770, %772
  %774 = add nuw nsw i32 %773, %772
  %775 = icmp eq i32 %774, 2
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %38, align 1
  %.v44 = select i1 %768, i64 29, i64 54
  %777 = add i64 %734, %.v44
  store i64 %777, i64* %3, align 8
  br i1 %768, label %block_.L_40353d, label %block_.L_403556

block_.L_40353d:                                  ; preds = %block_403520, %block_403503, %block_4034e6, %block_4034c9, %block_4034ac
  %778 = phi i64 [ %777, %block_403520 ], [ %734, %block_403503 ], [ %692, %block_4034e6 ], [ %649, %block_4034c9 ], [ %607, %block_4034ac ]
  %779 = add i64 %778, 4
  store i64 %779, i64* %3, align 8
  %780 = load i64, i64* %564, align 8
  store i64 %780, i64* %RAX.i481, align 8
  %781 = add i64 %778, 8
  store i64 %781, i64* %3, align 8
  %782 = load i32, i32* %528, align 4
  %783 = sext i32 %782 to i64
  store i64 %783, i64* %RCX.i460, align 8
  %784 = shl nsw i64 %783, 3
  %785 = add i64 %784, %780
  %786 = add i64 %778, 12
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i64*
  %788 = load i64, i64* %787, align 8
  store i64 %788, i64* %RAX.i481, align 8
  %789 = add i64 %778, 16
  store i64 %789, i64* %3, align 8
  %790 = load i32, i32* %576, align 4
  %791 = sext i32 %790 to i64
  store i64 %791, i64* %RCX.i460, align 8
  %792 = add i64 %788, %791
  %793 = add i64 %778, 20
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i8*
  store i8 46, i8* %794, align 1
  %795 = load i64, i64* %3, align 8
  %796 = add i64 %795, 51
  store i64 %796, i64* %3, align 8
  br label %block_.L_403584

block_.L_403556:                                  ; preds = %block_403520
  %797 = add i64 %777, 4
  store i64 %797, i64* %3, align 8
  %798 = load i64, i64* %564, align 8
  store i64 %798, i64* %RAX.i481, align 8
  %799 = add i64 %777, 8
  store i64 %799, i64* %3, align 8
  %800 = load i32, i32* %528, align 4
  %801 = sext i32 %800 to i64
  store i64 %801, i64* %RCX.i460, align 8
  %802 = shl nsw i64 %801, 3
  %803 = add i64 %802, %798
  %804 = add i64 %777, 12
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RAX.i481, align 8
  %807 = add i64 %777, 16
  store i64 %807, i64* %3, align 8
  %808 = load i32, i32* %576, align 4
  %809 = sext i32 %808 to i64
  store i64 %809, i64* %RCX.i460, align 8
  %810 = add i64 %806, %809
  %811 = add i64 %777, 20
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i8*
  %813 = load i8, i8* %812, align 1
  %814 = sext i8 %813 to i64
  %815 = and i64 %814, 4294967295
  store i64 %815, i64* %RDI.i494, align 8
  %816 = add i64 %777, -8086
  %817 = add i64 %777, 25
  %818 = load i64, i64* %6, align 8
  %819 = add i64 %818, -8
  %820 = inttoptr i64 %819 to i64*
  store i64 %817, i64* %820, align 8
  store i64 %819, i64* %6, align 8
  store i64 %816, i64* %3, align 8
  %call2_40356a = tail call %struct.Memory* @sub_4015c0.tolower_plt(%struct.State* nonnull %0, i64 %816, %struct.Memory* %517)
  %821 = load i8, i8* %AL.i, align 1
  %822 = load i64, i64* %3, align 8
  store i8 %821, i8* %DL.i38, align 1
  %823 = load i64, i64* %RBP.i, align 8
  %824 = add i64 %823, -8
  %825 = add i64 %822, 6
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i64*
  %827 = load i64, i64* %826, align 8
  store i64 %827, i64* %RCX.i460, align 8
  %828 = add i64 %823, -28
  %829 = add i64 %822, 10
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i32*
  %831 = load i32, i32* %830, align 4
  %832 = sext i32 %831 to i64
  store i64 %832, i64* %RSI.i32, align 8
  %833 = shl nsw i64 %832, 3
  %834 = add i64 %833, %827
  %835 = add i64 %822, 14
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i64*
  %837 = load i64, i64* %836, align 8
  store i64 %837, i64* %RCX.i460, align 8
  %838 = add i64 %823, -24
  %839 = add i64 %822, 18
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = sext i32 %841 to i64
  store i64 %842, i64* %RSI.i32, align 8
  %843 = add i64 %837, %842
  %844 = add i64 %822, 21
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i8*
  store i8 %821, i8* %845, align 1
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_403584

block_.L_403584:                                  ; preds = %block_.L_403556, %block_.L_40353d
  %846 = phi i64 [ %.pre32, %block_.L_403556 ], [ %796, %block_.L_40353d ]
  %847 = load i64, i64* %RBP.i, align 8
  %848 = add i64 %847, -28
  %849 = add i64 %846, 8
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = add i32 %851, 1
  %853 = zext i32 %852 to i64
  store i64 %853, i64* %RAX.i481, align 8
  %854 = icmp eq i32 %851, -1
  %855 = icmp eq i32 %852, 0
  %856 = or i1 %854, %855
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %14, align 1
  %858 = and i32 %852, 255
  %859 = tail call i32 @llvm.ctpop.i32(i32 %858)
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  %862 = xor i8 %861, 1
  store i8 %862, i8* %21, align 1
  %863 = xor i32 %852, %851
  %864 = lshr i32 %863, 4
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  store i8 %866, i8* %26, align 1
  %867 = zext i1 %855 to i8
  store i8 %867, i8* %29, align 1
  %868 = lshr i32 %852, 31
  %869 = trunc i32 %868 to i8
  store i8 %869, i8* %32, align 1
  %870 = lshr i32 %851, 31
  %871 = xor i32 %868, %870
  %872 = add nuw nsw i32 %871, %868
  %873 = icmp eq i32 %872, 2
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %38, align 1
  %875 = add i64 %846, 14
  store i64 %875, i64* %3, align 8
  store i32 %852, i32* %850, align 4
  %876 = load i64, i64* %3, align 8
  %877 = add i64 %876, -242
  store i64 %877, i64* %3, align 8
  br label %block_.L_4034a0

block_.L_403597:                                  ; preds = %block_.L_4034a0
  %878 = add i64 %561, 264
  br label %block_.L_40369f

block_.L_4035a3:                                  ; preds = %block_.L_4035a3.preheader, %block_.L_403687
  %879 = phi i64 [ %1232, %block_.L_403687 ], [ %.pre33, %block_.L_4035a3.preheader ]
  %880 = load i64, i64* %RBP.i, align 8
  %881 = add i64 %880, -28
  %882 = add i64 %879, 3
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RAX.i481, align 8
  %886 = add i64 %880, -12
  %887 = add i64 %879, 6
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i32*
  %889 = load i32, i32* %888, align 4
  %890 = sub i32 %884, %889
  %891 = icmp ult i32 %884, %889
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %14, align 1
  %893 = and i32 %890, 255
  %894 = tail call i32 @llvm.ctpop.i32(i32 %893)
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  %897 = xor i8 %896, 1
  store i8 %897, i8* %21, align 1
  %898 = xor i32 %889, %884
  %899 = xor i32 %898, %890
  %900 = lshr i32 %899, 4
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  store i8 %902, i8* %26, align 1
  %903 = icmp eq i32 %890, 0
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %29, align 1
  %905 = lshr i32 %890, 31
  %906 = trunc i32 %905 to i8
  store i8 %906, i8* %32, align 1
  %907 = lshr i32 %884, 31
  %908 = lshr i32 %889, 31
  %909 = xor i32 %908, %907
  %910 = xor i32 %905, %907
  %911 = add nuw nsw i32 %910, %909
  %912 = icmp eq i32 %911, 2
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %38, align 1
  %914 = icmp ne i8 %906, 0
  %915 = xor i1 %914, %912
  %.v45 = select i1 %915, i64 12, i64 247
  %916 = add i64 %879, %.v45
  store i64 %916, i64* %3, align 8
  br i1 %915, label %block_4035af, label %block_.L_40369a

block_4035af:                                     ; preds = %block_.L_4035a3
  %917 = add i64 %880, -8
  %918 = add i64 %916, 4
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i64*
  %920 = load i64, i64* %919, align 8
  store i64 %920, i64* %RAX.i481, align 8
  %921 = add i64 %916, 8
  store i64 %921, i64* %3, align 8
  %922 = load i32, i32* %883, align 4
  %923 = sext i32 %922 to i64
  store i64 %923, i64* %RCX.i460, align 8
  %924 = shl nsw i64 %923, 3
  %925 = add i64 %924, %920
  %926 = add i64 %916, 12
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i64*
  %928 = load i64, i64* %927, align 8
  store i64 %928, i64* %RAX.i481, align 8
  %929 = add i64 %880, -24
  %930 = add i64 %916, 16
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = sext i32 %932 to i64
  store i64 %933, i64* %RCX.i460, align 8
  %934 = add i64 %928, %933
  %935 = add i64 %916, 20
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i8*
  %937 = load i8, i8* %936, align 1
  %938 = sext i8 %937 to i64
  %939 = and i64 %938, 4294967295
  store i64 %939, i64* %RDX.i452, align 8
  %940 = sext i8 %937 to i32
  %941 = add nsw i32 %940, -32
  %942 = icmp ult i8 %937, 32
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %14, align 1
  %944 = and i32 %941, 255
  %945 = tail call i32 @llvm.ctpop.i32(i32 %944)
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  %948 = xor i8 %947, 1
  store i8 %948, i8* %21, align 1
  %949 = xor i32 %941, %940
  %950 = lshr i32 %949, 4
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  store i8 %952, i8* %26, align 1
  %953 = icmp eq i32 %941, 0
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %29, align 1
  %955 = lshr i32 %941, 31
  %956 = trunc i32 %955 to i8
  store i8 %956, i8* %32, align 1
  %957 = lshr i32 %940, 31
  %958 = xor i32 %955, %957
  %959 = add nuw nsw i32 %958, %957
  %960 = icmp eq i32 %959, 2
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %38, align 1
  %.v46 = select i1 %953, i64 145, i64 29
  %962 = add i64 %916, %.v46
  store i64 %962, i64* %3, align 8
  br i1 %953, label %block_.L_403640, label %block_4035cc

block_4035cc:                                     ; preds = %block_4035af
  %963 = add i64 %962, 4
  store i64 %963, i64* %3, align 8
  %964 = load i64, i64* %919, align 8
  store i64 %964, i64* %RAX.i481, align 8
  %965 = add i64 %962, 8
  store i64 %965, i64* %3, align 8
  %966 = load i32, i32* %883, align 4
  %967 = sext i32 %966 to i64
  store i64 %967, i64* %RCX.i460, align 8
  %968 = shl nsw i64 %967, 3
  %969 = add i64 %968, %964
  %970 = add i64 %962, 12
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i64*
  %972 = load i64, i64* %971, align 8
  store i64 %972, i64* %RAX.i481, align 8
  %973 = add i64 %962, 16
  store i64 %973, i64* %3, align 8
  %974 = load i32, i32* %931, align 4
  %975 = sext i32 %974 to i64
  store i64 %975, i64* %RCX.i460, align 8
  %976 = add i64 %972, %975
  %977 = add i64 %962, 20
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i8*
  %979 = load i8, i8* %978, align 1
  %980 = sext i8 %979 to i64
  %981 = and i64 %980, 4294967295
  store i64 %981, i64* %RDX.i452, align 8
  %982 = sext i8 %979 to i32
  %983 = add nsw i32 %982, -46
  %984 = icmp ult i8 %979, 46
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %14, align 1
  %986 = and i32 %983, 255
  %987 = tail call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = xor i8 %989, 1
  store i8 %990, i8* %21, align 1
  %991 = xor i32 %983, %982
  %992 = lshr i32 %991, 4
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  store i8 %994, i8* %26, align 1
  %995 = icmp eq i32 %983, 0
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %29, align 1
  %997 = lshr i32 %983, 31
  %998 = trunc i32 %997 to i8
  store i8 %998, i8* %32, align 1
  %999 = lshr i32 %982, 31
  %1000 = xor i32 %997, %999
  %1001 = add nuw nsw i32 %1000, %999
  %1002 = icmp eq i32 %1001, 2
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %38, align 1
  %.v47 = select i1 %995, i64 116, i64 29
  %1004 = add i64 %962, %.v47
  store i64 %1004, i64* %3, align 8
  br i1 %995, label %block_.L_403640, label %block_4035e9

block_4035e9:                                     ; preds = %block_4035cc
  %1005 = add i64 %1004, 4
  store i64 %1005, i64* %3, align 8
  %1006 = load i64, i64* %919, align 8
  store i64 %1006, i64* %RAX.i481, align 8
  %1007 = add i64 %1004, 8
  store i64 %1007, i64* %3, align 8
  %1008 = load i32, i32* %883, align 4
  %1009 = sext i32 %1008 to i64
  store i64 %1009, i64* %RCX.i460, align 8
  %1010 = shl nsw i64 %1009, 3
  %1011 = add i64 %1010, %1006
  %1012 = add i64 %1004, 12
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i64*
  %1014 = load i64, i64* %1013, align 8
  store i64 %1014, i64* %RAX.i481, align 8
  %1015 = add i64 %1004, 16
  store i64 %1015, i64* %3, align 8
  %1016 = load i32, i32* %931, align 4
  %1017 = sext i32 %1016 to i64
  store i64 %1017, i64* %RCX.i460, align 8
  %1018 = add i64 %1014, %1017
  %1019 = add i64 %1004, 20
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i8*
  %1021 = load i8, i8* %1020, align 1
  %1022 = sext i8 %1021 to i64
  %1023 = and i64 %1022, 4294967295
  store i64 %1023, i64* %RDX.i452, align 8
  %1024 = sext i8 %1021 to i32
  %1025 = add nsw i32 %1024, -95
  %1026 = icmp ult i8 %1021, 95
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %14, align 1
  %1028 = and i32 %1025, 255
  %1029 = tail call i32 @llvm.ctpop.i32(i32 %1028)
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = xor i8 %1031, 1
  store i8 %1032, i8* %21, align 1
  %1033 = xor i32 %1024, 16
  %1034 = xor i32 %1033, %1025
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  store i8 %1037, i8* %26, align 1
  %1038 = icmp eq i32 %1025, 0
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %29, align 1
  %1040 = lshr i32 %1025, 31
  %1041 = trunc i32 %1040 to i8
  store i8 %1041, i8* %32, align 1
  %1042 = lshr i32 %1024, 31
  %1043 = xor i32 %1040, %1042
  %1044 = add nuw nsw i32 %1043, %1042
  %1045 = icmp eq i32 %1044, 2
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %38, align 1
  %.v48 = select i1 %1038, i64 87, i64 29
  %1047 = add i64 %1004, %.v48
  store i64 %1047, i64* %3, align 8
  br i1 %1038, label %block_.L_403640, label %block_403606

block_403606:                                     ; preds = %block_4035e9
  %1048 = add i64 %1047, 4
  store i64 %1048, i64* %3, align 8
  %1049 = load i64, i64* %919, align 8
  store i64 %1049, i64* %RAX.i481, align 8
  %1050 = add i64 %1047, 8
  store i64 %1050, i64* %3, align 8
  %1051 = load i32, i32* %883, align 4
  %1052 = sext i32 %1051 to i64
  store i64 %1052, i64* %RCX.i460, align 8
  %1053 = shl nsw i64 %1052, 3
  %1054 = add i64 %1053, %1049
  %1055 = add i64 %1047, 12
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i64*
  %1057 = load i64, i64* %1056, align 8
  store i64 %1057, i64* %RAX.i481, align 8
  %1058 = add i64 %1047, 16
  store i64 %1058, i64* %3, align 8
  %1059 = load i32, i32* %931, align 4
  %1060 = sext i32 %1059 to i64
  store i64 %1060, i64* %RCX.i460, align 8
  %1061 = add i64 %1057, %1060
  %1062 = add i64 %1047, 20
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i8*
  %1064 = load i8, i8* %1063, align 1
  %1065 = sext i8 %1064 to i64
  %1066 = and i64 %1065, 4294967295
  store i64 %1066, i64* %RDX.i452, align 8
  %1067 = sext i8 %1064 to i32
  %1068 = add nsw i32 %1067, -45
  %1069 = icmp ult i8 %1064, 45
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %14, align 1
  %1071 = and i32 %1068, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071)
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %21, align 1
  %1076 = xor i32 %1068, %1067
  %1077 = lshr i32 %1076, 4
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  store i8 %1079, i8* %26, align 1
  %1080 = icmp eq i32 %1068, 0
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %29, align 1
  %1082 = lshr i32 %1068, 31
  %1083 = trunc i32 %1082 to i8
  store i8 %1083, i8* %32, align 1
  %1084 = lshr i32 %1067, 31
  %1085 = xor i32 %1082, %1084
  %1086 = add nuw nsw i32 %1085, %1084
  %1087 = icmp eq i32 %1086, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %38, align 1
  %.v49 = select i1 %1080, i64 58, i64 29
  %1089 = add i64 %1047, %.v49
  store i64 %1089, i64* %3, align 8
  br i1 %1080, label %block_.L_403640, label %block_403623

block_403623:                                     ; preds = %block_403606
  %1090 = add i64 %1089, 4
  store i64 %1090, i64* %3, align 8
  %1091 = load i64, i64* %919, align 8
  store i64 %1091, i64* %RAX.i481, align 8
  %1092 = add i64 %1089, 8
  store i64 %1092, i64* %3, align 8
  %1093 = load i32, i32* %883, align 4
  %1094 = sext i32 %1093 to i64
  store i64 %1094, i64* %RCX.i460, align 8
  %1095 = shl nsw i64 %1094, 3
  %1096 = add i64 %1095, %1091
  %1097 = add i64 %1089, 12
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to i64*
  %1099 = load i64, i64* %1098, align 8
  store i64 %1099, i64* %RAX.i481, align 8
  %1100 = add i64 %1089, 16
  store i64 %1100, i64* %3, align 8
  %1101 = load i32, i32* %931, align 4
  %1102 = sext i32 %1101 to i64
  store i64 %1102, i64* %RCX.i460, align 8
  %1103 = add i64 %1099, %1102
  %1104 = add i64 %1089, 20
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i8*
  %1106 = load i8, i8* %1105, align 1
  %1107 = sext i8 %1106 to i64
  %1108 = and i64 %1107, 4294967295
  store i64 %1108, i64* %RDX.i452, align 8
  %1109 = sext i8 %1106 to i32
  %1110 = add nsw i32 %1109, -126
  %1111 = icmp ult i8 %1106, 126
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %14, align 1
  %1113 = and i32 %1110, 255
  %1114 = tail call i32 @llvm.ctpop.i32(i32 %1113)
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  store i8 %1117, i8* %21, align 1
  %1118 = xor i32 %1109, 16
  %1119 = xor i32 %1118, %1110
  %1120 = lshr i32 %1119, 4
  %1121 = trunc i32 %1120 to i8
  %1122 = and i8 %1121, 1
  store i8 %1122, i8* %26, align 1
  %1123 = icmp eq i32 %1110, 0
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %29, align 1
  %1125 = lshr i32 %1110, 31
  %1126 = trunc i32 %1125 to i8
  store i8 %1126, i8* %32, align 1
  %1127 = lshr i32 %1109, 31
  %1128 = xor i32 %1125, %1127
  %1129 = add nuw nsw i32 %1128, %1127
  %1130 = icmp eq i32 %1129, 2
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %38, align 1
  %.v50 = select i1 %1123, i64 29, i64 54
  %1132 = add i64 %1089, %.v50
  store i64 %1132, i64* %3, align 8
  br i1 %1123, label %block_.L_403640, label %block_.L_403659

block_.L_403640:                                  ; preds = %block_403623, %block_403606, %block_4035e9, %block_4035cc, %block_4035af
  %1133 = phi i64 [ %1132, %block_403623 ], [ %1089, %block_403606 ], [ %1047, %block_4035e9 ], [ %1004, %block_4035cc ], [ %962, %block_4035af ]
  %1134 = add i64 %1133, 4
  store i64 %1134, i64* %3, align 8
  %1135 = load i64, i64* %919, align 8
  store i64 %1135, i64* %RAX.i481, align 8
  %1136 = add i64 %1133, 8
  store i64 %1136, i64* %3, align 8
  %1137 = load i32, i32* %883, align 4
  %1138 = sext i32 %1137 to i64
  store i64 %1138, i64* %RCX.i460, align 8
  %1139 = shl nsw i64 %1138, 3
  %1140 = add i64 %1139, %1135
  %1141 = add i64 %1133, 12
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i64*
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %RAX.i481, align 8
  %1144 = add i64 %1133, 16
  store i64 %1144, i64* %3, align 8
  %1145 = load i32, i32* %931, align 4
  %1146 = sext i32 %1145 to i64
  store i64 %1146, i64* %RCX.i460, align 8
  %1147 = add i64 %1143, %1146
  %1148 = add i64 %1133, 20
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i8*
  store i8 45, i8* %1149, align 1
  %1150 = load i64, i64* %3, align 8
  %1151 = add i64 %1150, 51
  store i64 %1151, i64* %3, align 8
  br label %block_.L_403687

block_.L_403659:                                  ; preds = %block_403623
  %1152 = add i64 %1132, 4
  store i64 %1152, i64* %3, align 8
  %1153 = load i64, i64* %919, align 8
  store i64 %1153, i64* %RAX.i481, align 8
  %1154 = add i64 %1132, 8
  store i64 %1154, i64* %3, align 8
  %1155 = load i32, i32* %883, align 4
  %1156 = sext i32 %1155 to i64
  store i64 %1156, i64* %RCX.i460, align 8
  %1157 = shl nsw i64 %1156, 3
  %1158 = add i64 %1157, %1153
  %1159 = add i64 %1132, 12
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i64*
  %1161 = load i64, i64* %1160, align 8
  store i64 %1161, i64* %RAX.i481, align 8
  %1162 = add i64 %1132, 16
  store i64 %1162, i64* %3, align 8
  %1163 = load i32, i32* %931, align 4
  %1164 = sext i32 %1163 to i64
  store i64 %1164, i64* %RCX.i460, align 8
  %1165 = add i64 %1161, %1164
  %1166 = add i64 %1132, 20
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i8*
  %1168 = load i8, i8* %1167, align 1
  %1169 = sext i8 %1168 to i64
  %1170 = and i64 %1169, 4294967295
  store i64 %1170, i64* %RDI.i494, align 8
  %1171 = add i64 %1132, -8809
  %1172 = add i64 %1132, 25
  %1173 = load i64, i64* %6, align 8
  %1174 = add i64 %1173, -8
  %1175 = inttoptr i64 %1174 to i64*
  store i64 %1172, i64* %1175, align 8
  store i64 %1174, i64* %6, align 8
  store i64 %1171, i64* %3, align 8
  %call2_40366d = tail call %struct.Memory* @sub_4013f0.toupper_plt(%struct.State* nonnull %0, i64 %1171, %struct.Memory* %517)
  %1176 = load i8, i8* %AL.i, align 1
  %1177 = load i64, i64* %3, align 8
  store i8 %1176, i8* %DL.i38, align 1
  %1178 = load i64, i64* %RBP.i, align 8
  %1179 = add i64 %1178, -8
  %1180 = add i64 %1177, 6
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i64*
  %1182 = load i64, i64* %1181, align 8
  store i64 %1182, i64* %RCX.i460, align 8
  %1183 = add i64 %1178, -28
  %1184 = add i64 %1177, 10
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = sext i32 %1186 to i64
  store i64 %1187, i64* %RSI.i32, align 8
  %1188 = shl nsw i64 %1187, 3
  %1189 = add i64 %1188, %1182
  %1190 = add i64 %1177, 14
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i64*
  %1192 = load i64, i64* %1191, align 8
  store i64 %1192, i64* %RCX.i460, align 8
  %1193 = add i64 %1178, -24
  %1194 = add i64 %1177, 18
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1193 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = sext i32 %1196 to i64
  store i64 %1197, i64* %RSI.i32, align 8
  %1198 = add i64 %1192, %1197
  %1199 = add i64 %1177, 21
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i8*
  store i8 %1176, i8* %1200, align 1
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_403687

block_.L_403687:                                  ; preds = %block_.L_403659, %block_.L_403640
  %1201 = phi i64 [ %.pre34, %block_.L_403659 ], [ %1151, %block_.L_403640 ]
  %1202 = load i64, i64* %RBP.i, align 8
  %1203 = add i64 %1202, -28
  %1204 = add i64 %1201, 8
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i32*
  %1206 = load i32, i32* %1205, align 4
  %1207 = add i32 %1206, 1
  %1208 = zext i32 %1207 to i64
  store i64 %1208, i64* %RAX.i481, align 8
  %1209 = icmp eq i32 %1206, -1
  %1210 = icmp eq i32 %1207, 0
  %1211 = or i1 %1209, %1210
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %14, align 1
  %1213 = and i32 %1207, 255
  %1214 = tail call i32 @llvm.ctpop.i32(i32 %1213)
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = xor i8 %1216, 1
  store i8 %1217, i8* %21, align 1
  %1218 = xor i32 %1207, %1206
  %1219 = lshr i32 %1218, 4
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  store i8 %1221, i8* %26, align 1
  %1222 = zext i1 %1210 to i8
  store i8 %1222, i8* %29, align 1
  %1223 = lshr i32 %1207, 31
  %1224 = trunc i32 %1223 to i8
  store i8 %1224, i8* %32, align 1
  %1225 = lshr i32 %1206, 31
  %1226 = xor i32 %1223, %1225
  %1227 = add nuw nsw i32 %1226, %1223
  %1228 = icmp eq i32 %1227, 2
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %38, align 1
  %1230 = add i64 %1201, 14
  store i64 %1230, i64* %3, align 8
  store i32 %1207, i32* %1205, align 4
  %1231 = load i64, i64* %3, align 8
  %1232 = add i64 %1231, -242
  store i64 %1232, i64* %3, align 8
  br label %block_.L_4035a3

block_.L_40369a:                                  ; preds = %block_.L_4035a3
  %1233 = add i64 %916, 5
  store i64 %1233, i64* %3, align 8
  br label %block_.L_40369f

block_.L_40369f:                                  ; preds = %block_.L_40369a, %block_.L_403597
  %1234 = phi i64 [ %525, %block_.L_403597 ], [ %880, %block_.L_40369a ]
  %storemerge = phi i64 [ %878, %block_.L_403597 ], [ %1233, %block_.L_40369a ]
  %1235 = add i64 %1234, -24
  %1236 = add i64 %storemerge, 8
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i32*
  %1238 = load i32, i32* %1237, align 4
  %1239 = add i32 %1238, 1
  %1240 = zext i32 %1239 to i64
  store i64 %1240, i64* %RAX.i481, align 8
  %1241 = icmp eq i32 %1238, -1
  %1242 = icmp eq i32 %1239, 0
  %1243 = or i1 %1241, %1242
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %14, align 1
  %1245 = and i32 %1239, 255
  %1246 = tail call i32 @llvm.ctpop.i32(i32 %1245)
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = xor i8 %1248, 1
  store i8 %1249, i8* %21, align 1
  %1250 = xor i32 %1239, %1238
  %1251 = lshr i32 %1250, 4
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  store i8 %1253, i8* %26, align 1
  %1254 = zext i1 %1242 to i8
  store i8 %1254, i8* %29, align 1
  %1255 = lshr i32 %1239, 31
  %1256 = trunc i32 %1255 to i8
  store i8 %1256, i8* %32, align 1
  %1257 = lshr i32 %1238, 31
  %1258 = xor i32 %1255, %1257
  %1259 = add nuw nsw i32 %1258, %1255
  %1260 = icmp eq i32 %1259, 2
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %38, align 1
  %1262 = add i64 %storemerge, 14
  store i64 %1262, i64* %3, align 8
  store i32 %1239, i32* %1237, align 4
  %1263 = load i64, i64* %3, align 8
  %1264 = add i64 %1263, -767
  store i64 %1264, i64* %3, align 8
  br label %block_.L_4033ae

block_.L_4036b2:                                  ; preds = %block_.L_4033ae
  %1265 = load i64, i64* %6, align 8
  %1266 = add i64 %1265, 32
  store i64 %1266, i64* %6, align 8
  %1267 = icmp ugt i64 %1265, -33
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %14, align 1
  %1269 = trunc i64 %1266 to i32
  %1270 = and i32 %1269, 255
  %1271 = tail call i32 @llvm.ctpop.i32(i32 %1270)
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  %1274 = xor i8 %1273, 1
  store i8 %1274, i8* %21, align 1
  %1275 = xor i64 %1266, %1265
  %1276 = lshr i64 %1275, 4
  %1277 = trunc i64 %1276 to i8
  %1278 = and i8 %1277, 1
  store i8 %1278, i8* %26, align 1
  %1279 = icmp eq i64 %1266, 0
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %29, align 1
  %1281 = lshr i64 %1266, 63
  %1282 = trunc i64 %1281 to i8
  store i8 %1282, i8* %32, align 1
  %1283 = lshr i64 %1265, 63
  %1284 = xor i64 %1281, %1283
  %1285 = add nuw nsw i64 %1284, %1281
  %1286 = icmp eq i64 %1285, 2
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %38, align 1
  %1288 = add i64 %131, 5
  store i64 %1288, i64* %3, align 8
  %1289 = add i64 %1265, 40
  %1290 = inttoptr i64 %1266 to i64*
  %1291 = load i64, i64* %1290, align 8
  store i64 %1291, i64* %RBP.i, align 8
  store i64 %1289, i64* %6, align 8
  %1292 = add i64 %131, 6
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1289 to i64*
  %1294 = load i64, i64* %1293, align 8
  store i64 %1294, i64* %3, align 8
  %1295 = add i64 %1265, 48
  store i64 %1295, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 32
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
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4036b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_403481(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -32
  %8 = icmp ult i32 %4, 32
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_403465(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -46
  %8 = icmp ult i32 %4, 46
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -95
  %8 = icmp ult i32 %4, 95
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -45
  %8 = icmp ult i32 %4, 45
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -126
  %8 = icmp ult i32 %4, 126
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40346e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403473(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4033c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0xc__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_MINUS0x14__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  %12 = load float, float* %11, align 4
  %13 = fcmp uno float %10, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %10, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %10, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %10, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %10, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_40359c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_403597(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40353d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_403556(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2e____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 46, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403584(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax__rcx_1____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.tolower_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl____rcx__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %DL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403589(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4034a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40369f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40369a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_403640(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_403659(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %.v, %3
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2d____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 45, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403687(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.toupper_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40368c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4035a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4036a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4033ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -33
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
