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
define %struct.Memory* @kernel_gemver(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R14.i411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %11 = load i64, i64* %R14.i411, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %RBX.i409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %15 = load i64, i64* %RBX.i409, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  store i64 %18, i64* %6, align 8
  %RAX.i406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %20 = load i64, i64* %RBP.i, align 8
  %21 = add i64 %20, 48
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 4
  store i64 %23, i64* %3, align 8
  %24 = inttoptr i64 %21 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %RAX.i406, align 8
  %R10.i404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %26 = add i64 %20, 40
  %27 = add i64 %22, 8
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %26 to i64*
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %R10.i404, align 8
  %R11.i401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %30 = add i64 %20, 32
  %31 = add i64 %22, 12
  store i64 %31, i64* %3, align 8
  %32 = inttoptr i64 %30 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %R11.i401, align 8
  %34 = add i64 %20, 24
  %35 = add i64 %22, 16
  store i64 %35, i64* %3, align 8
  %36 = inttoptr i64 %34 to i64*
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %RBX.i409, align 8
  %38 = add i64 %20, 16
  %39 = add i64 %22, 20
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %38 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %R14.i411, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %42 to i32*
  %43 = add i64 %20, -20
  %44 = load i32, i32* %EDI.i, align 4
  %45 = add i64 %22, 23
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -32
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 5
  store i64 %51, i64* %3, align 8
  %52 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %47, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %53 = load i64, i64* %52, align 1
  %54 = inttoptr i64 %49 to i64*
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -40
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 5
  store i64 %59, i64* %3, align 8
  %60 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %55, i64 0, i32 0, i32 0, i32 0, i64 0
  %61 = load i64, i64* %60, align 1
  %62 = inttoptr i64 %57 to i64*
  store i64 %61, i64* %62, align 8
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -48
  %65 = load i64, i64* %RSI.i, align 8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -56
  %71 = load i64, i64* %RDX.i, align 8
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %70 to i64*
  store i64 %71, i64* %74, align 8
  %RCX.i379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -64
  %77 = load i64, i64* %RCX.i379, align 8
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %76 to i64*
  store i64 %77, i64* %80, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -72
  %83 = load i64, i64* %R8.i, align 8
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %82 to i64*
  store i64 %83, i64* %86, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -80
  %89 = load i64, i64* %R9.i, align 8
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, 4
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %88 to i64*
  store i64 %89, i64* %92, align 8
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -84
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 7
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %94 to i32*
  store i32 0, i32* %97, align 4
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -96
  %100 = load i64, i64* %R14.i411, align 8
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 4
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %103, align 8
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -104
  %106 = load i64, i64* %R10.i404, align 8
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 4
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %105 to i64*
  store i64 %106, i64* %109, align 8
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, -112
  %112 = load i64, i64* %R11.i401, align 8
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 4
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %111 to i64*
  store i64 %112, i64* %115, align 8
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -120
  %118 = load i64, i64* %RBX.i409, align 8
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %117 to i64*
  store i64 %118, i64* %121, align 8
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -128
  %124 = load i64, i64* %RAX.i406, align 8
  %125 = load i64, i64* %3, align 8
  %126 = add i64 %125, 4
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %123 to i64*
  store i64 %124, i64* %127, align 8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %134 = bitcast [32 x %union.VectorReg]* %47 to i8*
  %135 = bitcast [32 x %union.VectorReg]* %47 to double*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %137 = bitcast i64* %136 to double*
  %138 = bitcast %union.VectorReg* %55 to double*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %140 = bitcast i64* %139 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400dc7

block_.L_400dc7:                                  ; preds = %block_.L_400e66, %entry
  %141 = phi i64 [ %426, %block_.L_400e66 ], [ %.pre, %entry ]
  %142 = load i64, i64* %RBP.i, align 8
  %143 = add i64 %142, -84
  %144 = add i64 %141, 3
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RAX.i406, align 8
  %148 = add i64 %142, -20
  %149 = add i64 %141, 6
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = sub i32 %146, %151
  %153 = icmp ult i32 %146, %151
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %128, align 1
  %155 = and i32 %152, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %129, align 1
  %160 = xor i32 %151, %146
  %161 = xor i32 %160, %152
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %130, align 1
  %165 = icmp eq i32 %152, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %131, align 1
  %167 = lshr i32 %152, 31
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %132, align 1
  %169 = lshr i32 %146, 31
  %170 = lshr i32 %151, 31
  %171 = xor i32 %170, %169
  %172 = xor i32 %167, %169
  %173 = add nuw nsw i32 %172, %171
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %133, align 1
  %176 = icmp ne i8 %168, 0
  %177 = xor i1 %176, %174
  %.v = select i1 %177, i64 12, i64 178
  %178 = add i64 %141, %.v
  store i64 %178, i64* %3, align 8
  br i1 %177, label %block_400dd3, label %block_.L_400e79

block_400dd3:                                     ; preds = %block_.L_400dc7
  %179 = add i64 %142, -88
  %180 = add i64 %178, 7
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i32*
  store i32 0, i32* %181, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400dda

block_.L_400dda:                                  ; preds = %block_400de6, %block_400dd3
  %182 = phi i64 [ %396, %block_400de6 ], [ %.pre1, %block_400dd3 ]
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -88
  %185 = add i64 %182, 3
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX.i406, align 8
  %189 = add i64 %183, -20
  %190 = add i64 %182, 6
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = sub i32 %187, %192
  %194 = icmp ult i32 %187, %192
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %128, align 1
  %196 = and i32 %193, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %129, align 1
  %201 = xor i32 %192, %187
  %202 = xor i32 %201, %193
  %203 = lshr i32 %202, 4
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  store i8 %205, i8* %130, align 1
  %206 = icmp eq i32 %193, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %131, align 1
  %208 = lshr i32 %193, 31
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %132, align 1
  %210 = lshr i32 %187, 31
  %211 = lshr i32 %192, 31
  %212 = xor i32 %211, %210
  %213 = xor i32 %208, %210
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %133, align 1
  %217 = icmp ne i8 %209, 0
  %218 = xor i1 %217, %215
  %.v7 = select i1 %218, i64 12, i64 140
  %219 = add i64 %182, %.v7
  store i64 %219, i64* %3, align 8
  br i1 %218, label %block_400de6, label %block_.L_400e66

block_400de6:                                     ; preds = %block_.L_400dda
  %220 = add i64 %183, -48
  %221 = add i64 %219, 4
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i64*
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %RAX.i406, align 8
  %224 = add i64 %183, -84
  %225 = add i64 %219, 8
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = mul nsw i64 %228, 32000
  store i64 %229, i64* %RCX.i379, align 8
  %230 = lshr i64 %229, 63
  %231 = add i64 %229, %223
  store i64 %231, i64* %RAX.i406, align 8
  %232 = icmp ult i64 %231, %223
  %233 = icmp ult i64 %231, %229
  %234 = or i1 %232, %233
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %128, align 1
  %236 = trunc i64 %231 to i32
  %237 = and i32 %236, 255
  %238 = tail call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  store i8 %241, i8* %129, align 1
  %242 = xor i64 %223, %231
  %243 = lshr i64 %242, 4
  %244 = trunc i64 %243 to i8
  %245 = and i8 %244, 1
  store i8 %245, i8* %130, align 1
  %246 = icmp eq i64 %231, 0
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %131, align 1
  %248 = lshr i64 %231, 63
  %249 = trunc i64 %248 to i8
  store i8 %249, i8* %132, align 1
  %250 = lshr i64 %223, 63
  %251 = xor i64 %248, %250
  %252 = xor i64 %248, %230
  %253 = add nuw nsw i64 %251, %252
  %254 = icmp eq i64 %253, 2
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %133, align 1
  %256 = add i64 %219, 22
  store i64 %256, i64* %3, align 8
  %257 = load i32, i32* %186, align 4
  %258 = sext i32 %257 to i64
  store i64 %258, i64* %RCX.i379, align 8
  %259 = shl nsw i64 %258, 3
  %260 = add i64 %259, %231
  %261 = add i64 %219, 27
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to double*
  %263 = load double, double* %262, align 8
  store double %263, double* %135, align 1
  store double 0.000000e+00, double* %137, align 1
  %264 = add i64 %183, -64
  %265 = add i64 %219, 31
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %RAX.i406, align 8
  %268 = add i64 %219, 35
  store i64 %268, i64* %3, align 8
  %269 = load i32, i32* %226, align 4
  %270 = sext i32 %269 to i64
  store i64 %270, i64* %RCX.i379, align 8
  %271 = shl nsw i64 %270, 3
  %272 = add i64 %271, %267
  %273 = add i64 %219, 40
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to double*
  %275 = load double, double* %274, align 8
  store double %275, double* %138, align 1
  store double 0.000000e+00, double* %140, align 1
  %276 = load i64, i64* %RBP.i, align 8
  %277 = add i64 %276, -72
  %278 = add i64 %219, 44
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RAX.i406, align 8
  %281 = add i64 %276, -88
  %282 = add i64 %219, 48
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  store i64 %285, i64* %RCX.i379, align 8
  %286 = shl nsw i64 %285, 3
  %287 = add i64 %286, %280
  %288 = add i64 %219, 53
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to double*
  %290 = load double, double* %289, align 8
  %291 = fmul double %275, %290
  store double %291, double* %138, align 1
  store i64 0, i64* %139, align 1
  %292 = fadd double %263, %291
  store double %292, double* %135, align 1
  store i64 0, i64* %136, align 1
  %293 = add i64 %276, -80
  %294 = add i64 %219, 61
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i64*
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %RAX.i406, align 8
  %297 = add i64 %276, -84
  %298 = add i64 %219, 65
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  store i64 %301, i64* %RCX.i379, align 8
  %302 = shl nsw i64 %301, 3
  %303 = add i64 %302, %296
  %304 = add i64 %219, 70
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to double*
  %306 = load double, double* %305, align 8
  store double %306, double* %138, align 1
  store double 0.000000e+00, double* %140, align 1
  %307 = add i64 %276, 16
  %308 = add i64 %219, 74
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i64*
  %310 = load i64, i64* %309, align 8
  store i64 %310, i64* %RAX.i406, align 8
  %311 = add i64 %219, 78
  store i64 %311, i64* %3, align 8
  %312 = load i32, i32* %283, align 4
  %313 = sext i32 %312 to i64
  store i64 %313, i64* %RCX.i379, align 8
  %314 = shl nsw i64 %313, 3
  %315 = add i64 %314, %310
  %316 = add i64 %219, 83
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to double*
  %318 = load double, double* %317, align 8
  %319 = fmul double %306, %318
  store double %319, double* %138, align 1
  store i64 0, i64* %139, align 1
  %320 = fadd double %292, %319
  store double %320, double* %135, align 1
  store i64 0, i64* %136, align 1
  %321 = add i64 %276, -56
  %322 = add i64 %219, 91
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %RAX.i406, align 8
  %325 = add i64 %219, 95
  store i64 %325, i64* %3, align 8
  %326 = load i32, i32* %299, align 4
  %327 = sext i32 %326 to i64
  %328 = mul nsw i64 %327, 32000
  store i64 %328, i64* %RCX.i379, align 8
  %329 = lshr i64 %328, 63
  %330 = add i64 %328, %324
  store i64 %330, i64* %RAX.i406, align 8
  %331 = icmp ult i64 %330, %324
  %332 = icmp ult i64 %330, %328
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %128, align 1
  %335 = trunc i64 %330 to i32
  %336 = and i32 %335, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %129, align 1
  %341 = xor i64 %324, %330
  %342 = lshr i64 %341, 4
  %343 = trunc i64 %342 to i8
  %344 = and i8 %343, 1
  store i8 %344, i8* %130, align 1
  %345 = icmp eq i64 %330, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %131, align 1
  %347 = lshr i64 %330, 63
  %348 = trunc i64 %347 to i8
  store i8 %348, i8* %132, align 1
  %349 = lshr i64 %324, 63
  %350 = xor i64 %347, %349
  %351 = xor i64 %347, %329
  %352 = add nuw nsw i64 %350, %351
  %353 = icmp eq i64 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %133, align 1
  %355 = load i64, i64* %RBP.i, align 8
  %356 = add i64 %355, -88
  %357 = add i64 %219, 109
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %RCX.i379, align 8
  %361 = shl nsw i64 %360, 3
  %362 = add i64 %361, %330
  %363 = add i64 %219, 114
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to double*
  store double %320, double* %364, align 8
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -88
  %367 = load i64, i64* %3, align 8
  %368 = add i64 %367, 3
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %366 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = add i32 %370, 1
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RAX.i406, align 8
  %373 = icmp eq i32 %370, -1
  %374 = icmp eq i32 %371, 0
  %375 = or i1 %373, %374
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %128, align 1
  %377 = and i32 %371, 255
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %129, align 1
  %382 = xor i32 %370, %371
  %383 = lshr i32 %382, 4
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  store i8 %385, i8* %130, align 1
  %386 = zext i1 %374 to i8
  store i8 %386, i8* %131, align 1
  %387 = lshr i32 %371, 31
  %388 = trunc i32 %387 to i8
  store i8 %388, i8* %132, align 1
  %389 = lshr i32 %370, 31
  %390 = xor i32 %387, %389
  %391 = add nuw nsw i32 %390, %387
  %392 = icmp eq i32 %391, 2
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %133, align 1
  %394 = add i64 %367, 9
  store i64 %394, i64* %3, align 8
  store i32 %371, i32* %369, align 4
  %395 = load i64, i64* %3, align 8
  %396 = add i64 %395, -135
  store i64 %396, i64* %3, align 8
  br label %block_.L_400dda

block_.L_400e66:                                  ; preds = %block_.L_400dda
  %397 = add i64 %183, -84
  %398 = add i64 %219, 8
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = add i32 %400, 1
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RAX.i406, align 8
  %403 = icmp eq i32 %400, -1
  %404 = icmp eq i32 %401, 0
  %405 = or i1 %403, %404
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %128, align 1
  %407 = and i32 %401, 255
  %408 = tail call i32 @llvm.ctpop.i32(i32 %407)
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  store i8 %411, i8* %129, align 1
  %412 = xor i32 %400, %401
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %130, align 1
  %416 = zext i1 %404 to i8
  store i8 %416, i8* %131, align 1
  %417 = lshr i32 %401, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %132, align 1
  %419 = lshr i32 %400, 31
  %420 = xor i32 %417, %419
  %421 = add nuw nsw i32 %420, %417
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %133, align 1
  %424 = add i64 %219, 14
  store i64 %424, i64* %3, align 8
  store i32 %401, i32* %399, align 4
  %425 = load i64, i64* %3, align 8
  %426 = add i64 %425, -173
  store i64 %426, i64* %3, align 8
  br label %block_.L_400dc7

block_.L_400e79:                                  ; preds = %block_.L_400dc7
  %427 = add i64 %178, 7
  store i64 %427, i64* %3, align 8
  store i32 0, i32* %145, align 4
  %428 = bitcast [32 x %union.VectorReg]* %47 to i32*
  %429 = getelementptr inbounds i8, i8* %134, i64 4
  %430 = bitcast i8* %429 to i32*
  %431 = bitcast i64* %136 to i32*
  %432 = getelementptr inbounds i8, i8* %134, i64 12
  %433 = bitcast i8* %432 to i32*
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400e80

block_.L_400e80:                                  ; preds = %block_.L_400f08, %block_.L_400e79
  %434 = phi i64 [ %680, %block_.L_400f08 ], [ %.pre2, %block_.L_400e79 ]
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -84
  %437 = add i64 %434, 3
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = zext i32 %439 to i64
  store i64 %440, i64* %RAX.i406, align 8
  %441 = add i64 %435, -20
  %442 = add i64 %434, 6
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = sub i32 %439, %444
  %446 = icmp ult i32 %439, %444
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %128, align 1
  %448 = and i32 %445, 255
  %449 = tail call i32 @llvm.ctpop.i32(i32 %448)
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %129, align 1
  %453 = xor i32 %444, %439
  %454 = xor i32 %453, %445
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %130, align 1
  %458 = icmp eq i32 %445, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %131, align 1
  %460 = lshr i32 %445, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %132, align 1
  %462 = lshr i32 %439, 31
  %463 = lshr i32 %444, 31
  %464 = xor i32 %463, %462
  %465 = xor i32 %460, %462
  %466 = add nuw nsw i32 %465, %464
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %133, align 1
  %469 = icmp ne i8 %461, 0
  %470 = xor i1 %469, %467
  %.v8 = select i1 %470, i64 12, i64 155
  %471 = add i64 %434, %.v8
  store i64 %471, i64* %3, align 8
  br i1 %470, label %block_400e8c, label %block_.L_400f1b

block_400e8c:                                     ; preds = %block_.L_400e80
  store i32 0, i32* %428, align 1
  store i32 0, i32* %430, align 1
  store i32 0, i32* %431, align 1
  store i32 0, i32* %433, align 1
  %472 = add i64 %435, 32
  %473 = add i64 %471, 7
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i64*
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %RAX.i406, align 8
  %476 = add i64 %471, 11
  store i64 %476, i64* %3, align 8
  %477 = load i32, i32* %438, align 4
  %478 = sext i32 %477 to i64
  store i64 %478, i64* %RCX.i379, align 8
  %479 = shl nsw i64 %478, 3
  %480 = add i64 %479, %475
  %481 = add i64 %471, 16
  store i64 %481, i64* %3, align 8
  %482 = load i64, i64* %52, align 1
  %483 = inttoptr i64 %480 to i64*
  store i64 %482, i64* %483, align 8
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -88
  %486 = load i64, i64* %3, align 8
  %487 = add i64 %486, 7
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %485 to i32*
  store i32 0, i32* %488, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400ea3

block_.L_400ea3:                                  ; preds = %block_400eaf, %block_400e8c
  %489 = phi i64 [ %650, %block_400eaf ], [ %.pre3, %block_400e8c ]
  %490 = load i64, i64* %RBP.i, align 8
  %491 = add i64 %490, -88
  %492 = add i64 %489, 3
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = zext i32 %494 to i64
  store i64 %495, i64* %RAX.i406, align 8
  %496 = add i64 %490, -20
  %497 = add i64 %489, 6
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = sub i32 %494, %499
  %501 = icmp ult i32 %494, %499
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %128, align 1
  %503 = and i32 %500, 255
  %504 = tail call i32 @llvm.ctpop.i32(i32 %503)
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  store i8 %507, i8* %129, align 1
  %508 = xor i32 %499, %494
  %509 = xor i32 %508, %500
  %510 = lshr i32 %509, 4
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  store i8 %512, i8* %130, align 1
  %513 = icmp eq i32 %500, 0
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %131, align 1
  %515 = lshr i32 %500, 31
  %516 = trunc i32 %515 to i8
  store i8 %516, i8* %132, align 1
  %517 = lshr i32 %494, 31
  %518 = lshr i32 %499, 31
  %519 = xor i32 %518, %517
  %520 = xor i32 %515, %517
  %521 = add nuw nsw i32 %520, %519
  %522 = icmp eq i32 %521, 2
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %133, align 1
  %524 = icmp ne i8 %516, 0
  %525 = xor i1 %524, %522
  %.v9 = select i1 %525, i64 12, i64 101
  %526 = add i64 %489, %.v9
  store i64 %526, i64* %3, align 8
  br i1 %525, label %block_400eaf, label %block_.L_400f08

block_400eaf:                                     ; preds = %block_.L_400ea3
  %527 = add i64 %490, 32
  %528 = add i64 %526, 4
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i64*
  %530 = load i64, i64* %529, align 8
  store i64 %530, i64* %RAX.i406, align 8
  %531 = add i64 %490, -84
  %532 = add i64 %526, 8
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = sext i32 %534 to i64
  store i64 %535, i64* %RCX.i379, align 8
  %536 = shl nsw i64 %535, 3
  %537 = add i64 %536, %530
  %538 = add i64 %526, 13
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %52, align 1
  store double 0.000000e+00, double* %137, align 1
  %541 = add i64 %490, -40
  %542 = add i64 %526, 18
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to double*
  %544 = load double, double* %543, align 8
  store double %544, double* %138, align 1
  store double 0.000000e+00, double* %140, align 1
  %545 = add i64 %490, -56
  %546 = add i64 %526, 22
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RAX.i406, align 8
  %549 = add i64 %526, 26
  store i64 %549, i64* %3, align 8
  %550 = load i32, i32* %493, align 4
  %551 = sext i32 %550 to i64
  %552 = mul nsw i64 %551, 32000
  store i64 %552, i64* %RCX.i379, align 8
  %553 = lshr i64 %552, 63
  %554 = add i64 %552, %548
  store i64 %554, i64* %RAX.i406, align 8
  %555 = icmp ult i64 %554, %548
  %556 = icmp ult i64 %554, %552
  %557 = or i1 %555, %556
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %128, align 1
  %559 = trunc i64 %554 to i32
  %560 = and i32 %559, 255
  %561 = tail call i32 @llvm.ctpop.i32(i32 %560)
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = xor i8 %563, 1
  store i8 %564, i8* %129, align 1
  %565 = xor i64 %548, %554
  %566 = lshr i64 %565, 4
  %567 = trunc i64 %566 to i8
  %568 = and i8 %567, 1
  store i8 %568, i8* %130, align 1
  %569 = icmp eq i64 %554, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %131, align 1
  %571 = lshr i64 %554, 63
  %572 = trunc i64 %571 to i8
  store i8 %572, i8* %132, align 1
  %573 = lshr i64 %548, 63
  %574 = xor i64 %571, %573
  %575 = xor i64 %571, %553
  %576 = add nuw nsw i64 %574, %575
  %577 = icmp eq i64 %576, 2
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %133, align 1
  %579 = add i64 %526, 40
  store i64 %579, i64* %3, align 8
  %580 = load i32, i32* %533, align 4
  %581 = sext i32 %580 to i64
  store i64 %581, i64* %RCX.i379, align 8
  %582 = shl nsw i64 %581, 3
  %583 = add i64 %582, %554
  %584 = add i64 %526, 45
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to double*
  %586 = load double, double* %585, align 8
  %587 = fmul double %544, %586
  store double %587, double* %138, align 1
  store i64 0, i64* %139, align 1
  %588 = load i64, i64* %RBP.i, align 8
  %589 = add i64 %588, 40
  %590 = add i64 %526, 49
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to i64*
  %592 = load i64, i64* %591, align 8
  store i64 %592, i64* %RAX.i406, align 8
  %593 = add i64 %588, -88
  %594 = add i64 %526, 53
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = sext i32 %596 to i64
  store i64 %597, i64* %RCX.i379, align 8
  %598 = shl nsw i64 %597, 3
  %599 = add i64 %598, %592
  %600 = add i64 %526, 58
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to double*
  %602 = load double, double* %601, align 8
  %603 = fmul double %587, %602
  store double %603, double* %138, align 1
  store i64 0, i64* %139, align 1
  %604 = load double, double* %135, align 1
  %605 = fadd double %604, %603
  store double %605, double* %135, align 1
  %606 = add i64 %588, 32
  %607 = add i64 %526, 66
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i64*
  %609 = load i64, i64* %608, align 8
  store i64 %609, i64* %RAX.i406, align 8
  %610 = add i64 %588, -84
  %611 = add i64 %526, 70
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i32*
  %613 = load i32, i32* %612, align 4
  %614 = sext i32 %613 to i64
  store i64 %614, i64* %RCX.i379, align 8
  %615 = shl nsw i64 %614, 3
  %616 = add i64 %615, %609
  %617 = add i64 %526, 75
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to double*
  store double %605, double* %618, align 8
  %619 = load i64, i64* %RBP.i, align 8
  %620 = add i64 %619, -88
  %621 = load i64, i64* %3, align 8
  %622 = add i64 %621, 3
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %620 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = add i32 %624, 1
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RAX.i406, align 8
  %627 = icmp eq i32 %624, -1
  %628 = icmp eq i32 %625, 0
  %629 = or i1 %627, %628
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %128, align 1
  %631 = and i32 %625, 255
  %632 = tail call i32 @llvm.ctpop.i32(i32 %631)
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  store i8 %635, i8* %129, align 1
  %636 = xor i32 %624, %625
  %637 = lshr i32 %636, 4
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  store i8 %639, i8* %130, align 1
  %640 = zext i1 %628 to i8
  store i8 %640, i8* %131, align 1
  %641 = lshr i32 %625, 31
  %642 = trunc i32 %641 to i8
  store i8 %642, i8* %132, align 1
  %643 = lshr i32 %624, 31
  %644 = xor i32 %641, %643
  %645 = add nuw nsw i32 %644, %641
  %646 = icmp eq i32 %645, 2
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %133, align 1
  %648 = add i64 %621, 9
  store i64 %648, i64* %3, align 8
  store i32 %625, i32* %623, align 4
  %649 = load i64, i64* %3, align 8
  %650 = add i64 %649, -96
  store i64 %650, i64* %3, align 8
  br label %block_.L_400ea3

block_.L_400f08:                                  ; preds = %block_.L_400ea3
  %651 = add i64 %490, -84
  %652 = add i64 %526, 8
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i32*
  %654 = load i32, i32* %653, align 4
  %655 = add i32 %654, 1
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %RAX.i406, align 8
  %657 = icmp eq i32 %654, -1
  %658 = icmp eq i32 %655, 0
  %659 = or i1 %657, %658
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %128, align 1
  %661 = and i32 %655, 255
  %662 = tail call i32 @llvm.ctpop.i32(i32 %661)
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  store i8 %665, i8* %129, align 1
  %666 = xor i32 %654, %655
  %667 = lshr i32 %666, 4
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  store i8 %669, i8* %130, align 1
  %670 = zext i1 %658 to i8
  store i8 %670, i8* %131, align 1
  %671 = lshr i32 %655, 31
  %672 = trunc i32 %671 to i8
  store i8 %672, i8* %132, align 1
  %673 = lshr i32 %654, 31
  %674 = xor i32 %671, %673
  %675 = add nuw nsw i32 %674, %671
  %676 = icmp eq i32 %675, 2
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %133, align 1
  %678 = add i64 %526, 14
  store i64 %678, i64* %3, align 8
  store i32 %655, i32* %653, align 4
  %679 = load i64, i64* %3, align 8
  %680 = add i64 %679, -150
  store i64 %680, i64* %3, align 8
  br label %block_.L_400e80

block_.L_400f1b:                                  ; preds = %block_.L_400e80
  %681 = add i64 %471, 7
  store i64 %681, i64* %3, align 8
  store i32 0, i32* %438, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400f22

block_.L_400f22:                                  ; preds = %block_400f2e, %block_.L_400f1b
  %682 = phi i64 [ %785, %block_400f2e ], [ %.pre4, %block_.L_400f1b ]
  %683 = load i64, i64* %RBP.i, align 8
  %684 = add i64 %683, -84
  %685 = add i64 %682, 3
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i32*
  %687 = load i32, i32* %686, align 4
  %688 = zext i32 %687 to i64
  store i64 %688, i64* %RAX.i406, align 8
  %689 = add i64 %683, -20
  %690 = add i64 %682, 6
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = sub i32 %687, %692
  %694 = icmp ult i32 %687, %692
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %128, align 1
  %696 = and i32 %693, 255
  %697 = tail call i32 @llvm.ctpop.i32(i32 %696)
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  %700 = xor i8 %699, 1
  store i8 %700, i8* %129, align 1
  %701 = xor i32 %692, %687
  %702 = xor i32 %701, %693
  %703 = lshr i32 %702, 4
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  store i8 %705, i8* %130, align 1
  %706 = icmp eq i32 %693, 0
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %131, align 1
  %708 = lshr i32 %693, 31
  %709 = trunc i32 %708 to i8
  store i8 %709, i8* %132, align 1
  %710 = lshr i32 %687, 31
  %711 = lshr i32 %692, 31
  %712 = xor i32 %711, %710
  %713 = xor i32 %708, %710
  %714 = add nuw nsw i32 %713, %712
  %715 = icmp eq i32 %714, 2
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %133, align 1
  %717 = icmp ne i8 %709, 0
  %718 = xor i1 %717, %715
  %.v10 = select i1 %718, i64 12, i64 65
  %719 = add i64 %682, %.v10
  store i64 %719, i64* %3, align 8
  br i1 %718, label %block_400f2e, label %block_.L_400f63

block_400f2e:                                     ; preds = %block_.L_400f22
  %720 = add i64 %683, 32
  %721 = add i64 %719, 4
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i64*
  %723 = load i64, i64* %722, align 8
  store i64 %723, i64* %RAX.i406, align 8
  %724 = add i64 %719, 8
  store i64 %724, i64* %3, align 8
  %725 = load i32, i32* %686, align 4
  %726 = sext i32 %725 to i64
  store i64 %726, i64* %RCX.i379, align 8
  %727 = shl nsw i64 %726, 3
  %728 = add i64 %727, %723
  %729 = add i64 %719, 13
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to double*
  %731 = load double, double* %730, align 8
  store double %731, double* %135, align 1
  store double 0.000000e+00, double* %137, align 1
  %732 = add i64 %683, 48
  %733 = add i64 %719, 17
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %RAX.i406, align 8
  %736 = add i64 %719, 21
  store i64 %736, i64* %3, align 8
  %737 = load i32, i32* %686, align 4
  %738 = sext i32 %737 to i64
  store i64 %738, i64* %RCX.i379, align 8
  %739 = shl nsw i64 %738, 3
  %740 = add i64 %739, %735
  %741 = add i64 %719, 26
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to double*
  %743 = load double, double* %742, align 8
  %744 = fadd double %731, %743
  store double %744, double* %135, align 1
  store i64 0, i64* %136, align 1
  %745 = add i64 %719, 30
  store i64 %745, i64* %3, align 8
  %746 = load i64, i64* %722, align 8
  store i64 %746, i64* %RAX.i406, align 8
  %747 = add i64 %719, 34
  store i64 %747, i64* %3, align 8
  %748 = load i32, i32* %686, align 4
  %749 = sext i32 %748 to i64
  store i64 %749, i64* %RCX.i379, align 8
  %750 = shl nsw i64 %749, 3
  %751 = add i64 %750, %746
  %752 = add i64 %719, 39
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to double*
  store double %744, double* %753, align 8
  %754 = load i64, i64* %RBP.i, align 8
  %755 = add i64 %754, -84
  %756 = load i64, i64* %3, align 8
  %757 = add i64 %756, 3
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %755 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = add i32 %759, 1
  %761 = zext i32 %760 to i64
  store i64 %761, i64* %RAX.i406, align 8
  %762 = icmp eq i32 %759, -1
  %763 = icmp eq i32 %760, 0
  %764 = or i1 %762, %763
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %128, align 1
  %766 = and i32 %760, 255
  %767 = tail call i32 @llvm.ctpop.i32(i32 %766)
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  %770 = xor i8 %769, 1
  store i8 %770, i8* %129, align 1
  %771 = xor i32 %759, %760
  %772 = lshr i32 %771, 4
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  store i8 %774, i8* %130, align 1
  %775 = zext i1 %763 to i8
  store i8 %775, i8* %131, align 1
  %776 = lshr i32 %760, 31
  %777 = trunc i32 %776 to i8
  store i8 %777, i8* %132, align 1
  %778 = lshr i32 %759, 31
  %779 = xor i32 %776, %778
  %780 = add nuw nsw i32 %779, %776
  %781 = icmp eq i32 %780, 2
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %133, align 1
  %783 = add i64 %756, 9
  store i64 %783, i64* %3, align 8
  store i32 %760, i32* %758, align 4
  %784 = load i64, i64* %3, align 8
  %785 = add i64 %784, -60
  store i64 %785, i64* %3, align 8
  br label %block_.L_400f22

block_.L_400f63:                                  ; preds = %block_.L_400f22
  %786 = add i64 %719, 7
  store i64 %786, i64* %3, align 8
  store i32 0, i32* %686, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400f6a

block_.L_400f6a:                                  ; preds = %block_.L_400fe2, %block_.L_400f63
  %787 = phi i64 [ %1019, %block_.L_400fe2 ], [ %.pre5, %block_.L_400f63 ]
  %788 = load i64, i64* %RBP.i, align 8
  %789 = add i64 %788, -84
  %790 = add i64 %787, 3
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RAX.i406, align 8
  %794 = add i64 %788, -20
  %795 = add i64 %787, 6
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = sub i32 %792, %797
  %799 = icmp ult i32 %792, %797
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %128, align 1
  %801 = and i32 %798, 255
  %802 = tail call i32 @llvm.ctpop.i32(i32 %801)
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  %805 = xor i8 %804, 1
  store i8 %805, i8* %129, align 1
  %806 = xor i32 %797, %792
  %807 = xor i32 %806, %798
  %808 = lshr i32 %807, 4
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  store i8 %810, i8* %130, align 1
  %811 = icmp eq i32 %798, 0
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %131, align 1
  %813 = lshr i32 %798, 31
  %814 = trunc i32 %813 to i8
  store i8 %814, i8* %132, align 1
  %815 = lshr i32 %792, 31
  %816 = lshr i32 %797, 31
  %817 = xor i32 %816, %815
  %818 = xor i32 %813, %815
  %819 = add nuw nsw i32 %818, %817
  %820 = icmp eq i32 %819, 2
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %133, align 1
  %822 = icmp ne i8 %814, 0
  %823 = xor i1 %822, %820
  %.v11 = select i1 %823, i64 12, i64 139
  %824 = add i64 %787, %.v11
  store i64 %824, i64* %3, align 8
  br i1 %823, label %block_400f76, label %block_.L_400ff5

block_400f76:                                     ; preds = %block_.L_400f6a
  %825 = add i64 %788, -88
  %826 = add i64 %824, 7
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i32*
  store i32 0, i32* %827, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400f7d

block_.L_400f7d:                                  ; preds = %block_400f89, %block_400f76
  %828 = phi i64 [ %989, %block_400f89 ], [ %.pre6, %block_400f76 ]
  %829 = load i64, i64* %RBP.i, align 8
  %830 = add i64 %829, -88
  %831 = add i64 %828, 3
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RAX.i406, align 8
  %835 = add i64 %829, -20
  %836 = add i64 %828, 6
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = sub i32 %833, %838
  %840 = icmp ult i32 %833, %838
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %128, align 1
  %842 = and i32 %839, 255
  %843 = tail call i32 @llvm.ctpop.i32(i32 %842)
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  %846 = xor i8 %845, 1
  store i8 %846, i8* %129, align 1
  %847 = xor i32 %838, %833
  %848 = xor i32 %847, %839
  %849 = lshr i32 %848, 4
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  store i8 %851, i8* %130, align 1
  %852 = icmp eq i32 %839, 0
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %131, align 1
  %854 = lshr i32 %839, 31
  %855 = trunc i32 %854 to i8
  store i8 %855, i8* %132, align 1
  %856 = lshr i32 %833, 31
  %857 = lshr i32 %838, 31
  %858 = xor i32 %857, %856
  %859 = xor i32 %854, %856
  %860 = add nuw nsw i32 %859, %858
  %861 = icmp eq i32 %860, 2
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %133, align 1
  %863 = icmp ne i8 %855, 0
  %864 = xor i1 %863, %861
  %.v12 = select i1 %864, i64 12, i64 101
  %865 = add i64 %828, %.v12
  store i64 %865, i64* %3, align 8
  br i1 %864, label %block_400f89, label %block_.L_400fe2

block_400f89:                                     ; preds = %block_.L_400f7d
  %866 = add i64 %829, 24
  %867 = add i64 %865, 4
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i64*
  %869 = load i64, i64* %868, align 8
  store i64 %869, i64* %RAX.i406, align 8
  %870 = add i64 %829, -84
  %871 = add i64 %865, 8
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = sext i32 %873 to i64
  store i64 %874, i64* %RCX.i379, align 8
  %875 = shl nsw i64 %874, 3
  %876 = add i64 %875, %869
  %877 = add i64 %865, 13
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i64*
  %879 = load i64, i64* %878, align 8
  store i64 %879, i64* %52, align 1
  store double 0.000000e+00, double* %137, align 1
  %880 = add i64 %829, -32
  %881 = add i64 %865, 18
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to double*
  %883 = load double, double* %882, align 8
  store double %883, double* %138, align 1
  store double 0.000000e+00, double* %140, align 1
  %884 = add i64 %829, -56
  %885 = add i64 %865, 22
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i64*
  %887 = load i64, i64* %886, align 8
  store i64 %887, i64* %RAX.i406, align 8
  %888 = add i64 %865, 26
  store i64 %888, i64* %3, align 8
  %889 = load i32, i32* %872, align 4
  %890 = sext i32 %889 to i64
  %891 = mul nsw i64 %890, 32000
  store i64 %891, i64* %RCX.i379, align 8
  %892 = lshr i64 %891, 63
  %893 = add i64 %891, %887
  store i64 %893, i64* %RAX.i406, align 8
  %894 = icmp ult i64 %893, %887
  %895 = icmp ult i64 %893, %891
  %896 = or i1 %894, %895
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %128, align 1
  %898 = trunc i64 %893 to i32
  %899 = and i32 %898, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899)
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %129, align 1
  %904 = xor i64 %887, %893
  %905 = lshr i64 %904, 4
  %906 = trunc i64 %905 to i8
  %907 = and i8 %906, 1
  store i8 %907, i8* %130, align 1
  %908 = icmp eq i64 %893, 0
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %131, align 1
  %910 = lshr i64 %893, 63
  %911 = trunc i64 %910 to i8
  store i8 %911, i8* %132, align 1
  %912 = lshr i64 %887, 63
  %913 = xor i64 %910, %912
  %914 = xor i64 %910, %892
  %915 = add nuw nsw i64 %913, %914
  %916 = icmp eq i64 %915, 2
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %133, align 1
  %918 = add i64 %865, 40
  store i64 %918, i64* %3, align 8
  %919 = load i32, i32* %832, align 4
  %920 = sext i32 %919 to i64
  store i64 %920, i64* %RCX.i379, align 8
  %921 = shl nsw i64 %920, 3
  %922 = add i64 %921, %893
  %923 = add i64 %865, 45
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to double*
  %925 = load double, double* %924, align 8
  %926 = fmul double %883, %925
  store double %926, double* %138, align 1
  store i64 0, i64* %139, align 1
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, 32
  %929 = add i64 %865, 49
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %928 to i64*
  %931 = load i64, i64* %930, align 8
  store i64 %931, i64* %RAX.i406, align 8
  %932 = add i64 %927, -88
  %933 = add i64 %865, 53
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = sext i32 %935 to i64
  store i64 %936, i64* %RCX.i379, align 8
  %937 = shl nsw i64 %936, 3
  %938 = add i64 %937, %931
  %939 = add i64 %865, 58
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to double*
  %941 = load double, double* %940, align 8
  %942 = fmul double %926, %941
  store double %942, double* %138, align 1
  store i64 0, i64* %139, align 1
  %943 = load double, double* %135, align 1
  %944 = fadd double %943, %942
  store double %944, double* %135, align 1
  %945 = add i64 %927, 24
  %946 = add i64 %865, 66
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i64*
  %948 = load i64, i64* %947, align 8
  store i64 %948, i64* %RAX.i406, align 8
  %949 = add i64 %927, -84
  %950 = add i64 %865, 70
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = sext i32 %952 to i64
  store i64 %953, i64* %RCX.i379, align 8
  %954 = shl nsw i64 %953, 3
  %955 = add i64 %954, %948
  %956 = add i64 %865, 75
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to double*
  store double %944, double* %957, align 8
  %958 = load i64, i64* %RBP.i, align 8
  %959 = add i64 %958, -88
  %960 = load i64, i64* %3, align 8
  %961 = add i64 %960, 3
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %959 to i32*
  %963 = load i32, i32* %962, align 4
  %964 = add i32 %963, 1
  %965 = zext i32 %964 to i64
  store i64 %965, i64* %RAX.i406, align 8
  %966 = icmp eq i32 %963, -1
  %967 = icmp eq i32 %964, 0
  %968 = or i1 %966, %967
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %128, align 1
  %970 = and i32 %964, 255
  %971 = tail call i32 @llvm.ctpop.i32(i32 %970)
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  store i8 %974, i8* %129, align 1
  %975 = xor i32 %963, %964
  %976 = lshr i32 %975, 4
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  store i8 %978, i8* %130, align 1
  %979 = zext i1 %967 to i8
  store i8 %979, i8* %131, align 1
  %980 = lshr i32 %964, 31
  %981 = trunc i32 %980 to i8
  store i8 %981, i8* %132, align 1
  %982 = lshr i32 %963, 31
  %983 = xor i32 %980, %982
  %984 = add nuw nsw i32 %983, %980
  %985 = icmp eq i32 %984, 2
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %133, align 1
  %987 = add i64 %960, 9
  store i64 %987, i64* %3, align 8
  store i32 %964, i32* %962, align 4
  %988 = load i64, i64* %3, align 8
  %989 = add i64 %988, -96
  store i64 %989, i64* %3, align 8
  br label %block_.L_400f7d

block_.L_400fe2:                                  ; preds = %block_.L_400f7d
  %990 = add i64 %829, -84
  %991 = add i64 %865, 8
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = add i32 %993, 1
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RAX.i406, align 8
  %996 = icmp eq i32 %993, -1
  %997 = icmp eq i32 %994, 0
  %998 = or i1 %996, %997
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %128, align 1
  %1000 = and i32 %994, 255
  %1001 = tail call i32 @llvm.ctpop.i32(i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  %1004 = xor i8 %1003, 1
  store i8 %1004, i8* %129, align 1
  %1005 = xor i32 %993, %994
  %1006 = lshr i32 %1005, 4
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  store i8 %1008, i8* %130, align 1
  %1009 = zext i1 %997 to i8
  store i8 %1009, i8* %131, align 1
  %1010 = lshr i32 %994, 31
  %1011 = trunc i32 %1010 to i8
  store i8 %1011, i8* %132, align 1
  %1012 = lshr i32 %993, 31
  %1013 = xor i32 %1010, %1012
  %1014 = add nuw nsw i32 %1013, %1010
  %1015 = icmp eq i32 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %133, align 1
  %1017 = add i64 %865, 14
  store i64 %1017, i64* %3, align 8
  store i32 %994, i32* %992, align 4
  %1018 = load i64, i64* %3, align 8
  %1019 = add i64 %1018, -134
  store i64 %1019, i64* %3, align 8
  br label %block_.L_400f6a

block_.L_400ff5:                                  ; preds = %block_.L_400f6a
  %1020 = add i64 %824, 1
  store i64 %1020, i64* %3, align 8
  %1021 = load i64, i64* %6, align 8
  %1022 = add i64 %1021, 8
  %1023 = inttoptr i64 %1021 to i64*
  %1024 = load i64, i64* %1023, align 8
  store i64 %1024, i64* %RBX.i409, align 8
  store i64 %1022, i64* %6, align 8
  %1025 = add i64 %824, 3
  store i64 %1025, i64* %3, align 8
  %1026 = add i64 %1021, 16
  %1027 = inttoptr i64 %1022 to i64*
  %1028 = load i64, i64* %1027, align 8
  store i64 %1028, i64* %R14.i411, align 8
  store i64 %1026, i64* %6, align 8
  %1029 = add i64 %824, 4
  store i64 %1029, i64* %3, align 8
  %1030 = add i64 %1021, 24
  %1031 = inttoptr i64 %1026 to i64*
  %1032 = load i64, i64* %1031, align 8
  store i64 %1032, i64* %RBP.i, align 8
  store i64 %1030, i64* %6, align 8
  %1033 = add i64 %824, 5
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1030 to i64*
  %1035 = load i64, i64* %1034, align 8
  store i64 %1035, i64* %3, align 8
  %1036 = add i64 %1021, 32
  store i64 %1036, i64* %6, align 8
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

define %struct.Memory* @routine_pushq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %3, i64* %9, align 8
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

define %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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

define %struct.Memory* @routine_jge_.L_400e79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400e66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x7d00___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %10 = mul nsw i128 %9, 32000
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

define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dda(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dc7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400f1b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400f08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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

define %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_400f0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400f63(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400f22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400ff5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400fe2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f7d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fe7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
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
