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
define %struct.Memory* @kernel_adi(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RDX.i1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -16
  %25 = load i64, i64* %RDX.i1021, align 8
  %26 = load i64, i64* %PC.i, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %PC.i, align 8
  %28 = inttoptr i64 %24 to i64*
  store i64 %25, i64* %28, align 8
  %RCX.i1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -24
  %31 = load i64, i64* %RCX.i1018, align 8
  %32 = load i64, i64* %PC.i, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %PC.i, align 8
  %34 = inttoptr i64 %30 to i64*
  store i64 %31, i64* %34, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %35 = load i64, i64* %RBP.i, align 8
  %36 = add i64 %35, -32
  %37 = load i64, i64* %R8.i, align 8
  %38 = load i64, i64* %PC.i, align 8
  %39 = add i64 %38, 4
  store i64 %39, i64* %PC.i, align 8
  %40 = inttoptr i64 %36 to i64*
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* %RBP.i, align 8
  %42 = add i64 %41, -36
  %43 = load i64, i64* %PC.i, align 8
  %44 = add i64 %43, 7
  store i64 %44, i64* %PC.i, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 0, i32* %45, align 4
  %RAX.i1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %53 = bitcast [32 x %union.VectorReg]* %52 to double*
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %55 = bitcast i64* %54 to double*
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %57 = bitcast %union.VectorReg* %56 to double*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %59 = bitcast i64* %58 to double*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400bad

block_.L_400bad:                                  ; preds = %block_.L_401128, %entry
  %60 = phi i64 [ %3065, %block_.L_401128 ], [ %.pre, %entry ]
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -36
  %63 = add i64 %60, 3
  store i64 %63, i64* %PC.i, align 8
  %64 = inttoptr i64 %62 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = zext i32 %65 to i64
  store i64 %66, i64* %RAX.i1011, align 8
  %67 = add i64 %61, -4
  %68 = add i64 %60, 6
  store i64 %68, i64* %PC.i, align 8
  %69 = inttoptr i64 %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %65, %70
  %72 = icmp ult i32 %65, %70
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %46, align 1
  %74 = and i32 %71, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %47, align 1
  %79 = xor i32 %70, %65
  %80 = xor i32 %79, %71
  %81 = lshr i32 %80, 4
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %48, align 1
  %84 = icmp eq i32 %71, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %49, align 1
  %86 = lshr i32 %71, 31
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %50, align 1
  %88 = lshr i32 %65, 31
  %89 = lshr i32 %70, 31
  %90 = xor i32 %89, %88
  %91 = xor i32 %86, %88
  %92 = add nuw nsw i32 %91, %90
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %51, align 1
  %95 = icmp ne i8 %87, 0
  %96 = xor i1 %95, %93
  %.v = select i1 %96, i64 12, i64 1422
  %97 = add i64 %60, %.v
  store i64 %97, i64* %3, align 8
  br i1 %96, label %block_400bb9, label %block_.L_40113b

block_400bb9:                                     ; preds = %block_.L_400bad
  %98 = add i64 %61, -40
  %99 = add i64 %97, 7
  store i64 %99, i64* %PC.i, align 8
  %100 = inttoptr i64 %98 to i32*
  store i32 0, i32* %100, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400bc0

block_.L_400bc0:                                  ; preds = %block_.L_400cf4, %block_400bb9
  %101 = phi i64 [ %785, %block_.L_400cf4 ], [ %.pre1, %block_400bb9 ]
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -40
  %104 = add i64 %101, 3
  store i64 %104, i64* %PC.i, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = zext i32 %106 to i64
  store i64 %107, i64* %RAX.i1011, align 8
  %108 = add i64 %102, -8
  %109 = add i64 %101, 6
  store i64 %109, i64* %PC.i, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = sub i32 %106, %111
  %113 = icmp ult i32 %106, %111
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %46, align 1
  %115 = and i32 %112, 255
  %116 = tail call i32 @llvm.ctpop.i32(i32 %115)
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  store i8 %119, i8* %47, align 1
  %120 = xor i32 %111, %106
  %121 = xor i32 %120, %112
  %122 = lshr i32 %121, 4
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  store i8 %124, i8* %48, align 1
  %125 = icmp eq i32 %112, 0
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %49, align 1
  %127 = lshr i32 %112, 31
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %50, align 1
  %129 = lshr i32 %106, 31
  %130 = lshr i32 %111, 31
  %131 = xor i32 %130, %129
  %132 = xor i32 %127, %129
  %133 = add nuw nsw i32 %132, %131
  %134 = icmp eq i32 %133, 2
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %51, align 1
  %136 = icmp ne i8 %128, 0
  %137 = xor i1 %136, %134
  %.v11 = select i1 %137, i64 12, i64 327
  %138 = add i64 %101, %.v11
  store i64 %138, i64* %3, align 8
  br i1 %137, label %block_400bcc, label %block_.L_400d07

block_400bcc:                                     ; preds = %block_.L_400bc0
  %139 = add i64 %102, -44
  %140 = add i64 %138, 7
  store i64 %140, i64* %PC.i, align 8
  %141 = inttoptr i64 %139 to i32*
  store i32 1, i32* %141, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400bd3

block_.L_400bd3:                                  ; preds = %block_400bdf, %block_400bcc
  %142 = phi i64 [ %754, %block_400bdf ], [ %.pre2, %block_400bcc ]
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -44
  %145 = add i64 %142, 3
  store i64 %145, i64* %PC.i, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RAX.i1011, align 8
  %149 = add i64 %143, -8
  %150 = add i64 %142, 6
  store i64 %150, i64* %PC.i, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = sub i32 %147, %152
  %154 = icmp ult i32 %147, %152
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %46, align 1
  %156 = and i32 %153, 255
  %157 = tail call i32 @llvm.ctpop.i32(i32 %156)
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  store i8 %160, i8* %47, align 1
  %161 = xor i32 %152, %147
  %162 = xor i32 %161, %153
  %163 = lshr i32 %162, 4
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  store i8 %165, i8* %48, align 1
  %166 = icmp eq i32 %153, 0
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %49, align 1
  %168 = lshr i32 %153, 31
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %50, align 1
  %170 = lshr i32 %147, 31
  %171 = lshr i32 %152, 31
  %172 = xor i32 %171, %170
  %173 = xor i32 %168, %170
  %174 = add nuw nsw i32 %173, %172
  %175 = icmp eq i32 %174, 2
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %51, align 1
  %177 = icmp ne i8 %169, 0
  %178 = xor i1 %177, %175
  %.v12 = select i1 %178, i64 12, i64 289
  %179 = add i64 %142, %.v12
  store i64 %179, i64* %3, align 8
  br i1 %178, label %block_400bdf, label %block_.L_400cf4

block_400bdf:                                     ; preds = %block_.L_400bd3
  %180 = add i64 %143, -16
  %181 = add i64 %179, 4
  store i64 %181, i64* %PC.i, align 8
  %182 = inttoptr i64 %180 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RAX.i1011, align 8
  %184 = add i64 %143, -40
  %185 = add i64 %179, 8
  store i64 %185, i64* %PC.i, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = shl nsw i64 %188, 13
  store i64 %189, i64* %RCX.i1018, align 8
  %190 = lshr i64 %188, 50
  %191 = and i64 %190, 1
  %192 = add i64 %189, %183
  store i64 %192, i64* %RAX.i1011, align 8
  %193 = icmp ult i64 %192, %183
  %194 = icmp ult i64 %192, %189
  %195 = or i1 %193, %194
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %46, align 1
  %197 = trunc i64 %192 to i32
  %198 = and i32 %197, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198)
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %47, align 1
  %203 = xor i64 %183, %192
  %204 = lshr i64 %203, 4
  %205 = trunc i64 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %48, align 1
  %207 = icmp eq i64 %192, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %49, align 1
  %209 = lshr i64 %192, 63
  %210 = trunc i64 %209 to i8
  store i8 %210, i8* %50, align 1
  %211 = lshr i64 %183, 63
  %212 = xor i64 %209, %211
  %213 = xor i64 %209, %191
  %214 = add nuw nsw i64 %212, %213
  %215 = icmp eq i64 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %51, align 1
  %217 = add i64 %179, 19
  store i64 %217, i64* %PC.i, align 8
  %218 = load i32, i32* %146, align 4
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %RCX.i1018, align 8
  %220 = shl nsw i64 %219, 3
  %221 = add i64 %220, %192
  %222 = add i64 %179, 24
  store i64 %222, i64* %PC.i, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %224, i64* %225, align 1
  store double 0.000000e+00, double* %55, align 1
  %226 = add i64 %179, 28
  store i64 %226, i64* %PC.i, align 8
  %227 = load i64, i64* %182, align 8
  store i64 %227, i64* %RAX.i1011, align 8
  %228 = add i64 %179, 32
  store i64 %228, i64* %PC.i, align 8
  %229 = load i32, i32* %186, align 4
  %230 = sext i32 %229 to i64
  %231 = shl nsw i64 %230, 13
  store i64 %231, i64* %RCX.i1018, align 8
  %232 = lshr i64 %230, 50
  %233 = and i64 %232, 1
  %234 = add i64 %231, %227
  store i64 %234, i64* %RAX.i1011, align 8
  %235 = icmp ult i64 %234, %227
  %236 = icmp ult i64 %234, %231
  %237 = or i1 %235, %236
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %46, align 1
  %239 = trunc i64 %234 to i32
  %240 = and i32 %239, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240)
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %47, align 1
  %245 = xor i64 %227, %234
  %246 = lshr i64 %245, 4
  %247 = trunc i64 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %48, align 1
  %249 = icmp eq i64 %234, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %49, align 1
  %251 = lshr i64 %234, 63
  %252 = trunc i64 %251 to i8
  store i8 %252, i8* %50, align 1
  %253 = lshr i64 %227, 63
  %254 = xor i64 %251, %253
  %255 = xor i64 %251, %233
  %256 = add nuw nsw i64 %254, %255
  %257 = icmp eq i64 %256, 2
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %51, align 1
  %259 = load i64, i64* %RBP.i, align 8
  %260 = add i64 %259, -44
  %261 = add i64 %179, 42
  store i64 %261, i64* %PC.i, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = add i32 %263, -1
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RDX.i1021, align 8
  %266 = icmp eq i32 %263, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %46, align 1
  %268 = and i32 %264, 255
  %269 = tail call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %47, align 1
  %273 = xor i32 %263, %264
  %274 = lshr i32 %273, 4
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  store i8 %276, i8* %48, align 1
  %277 = icmp eq i32 %264, 0
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %49, align 1
  %279 = lshr i32 %264, 31
  %280 = trunc i32 %279 to i8
  store i8 %280, i8* %50, align 1
  %281 = lshr i32 %263, 31
  %282 = xor i32 %279, %281
  %283 = add nuw nsw i32 %282, %281
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %51, align 1
  %286 = sext i32 %264 to i64
  store i64 %286, i64* %RCX.i1018, align 8
  %287 = shl nsw i64 %286, 3
  %288 = add i64 %287, %234
  %289 = add i64 %179, 53
  store i64 %289, i64* %PC.i, align 8
  %290 = inttoptr i64 %288 to double*
  %291 = load double, double* %290, align 8
  store double %291, double* %57, align 1
  store double 0.000000e+00, double* %59, align 1
  %292 = add i64 %259, -24
  %293 = add i64 %179, 57
  store i64 %293, i64* %PC.i, align 8
  %294 = inttoptr i64 %292 to i64*
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %RAX.i1011, align 8
  %296 = add i64 %259, -40
  %297 = add i64 %179, 61
  store i64 %297, i64* %PC.i, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = shl nsw i64 %300, 13
  store i64 %301, i64* %RCX.i1018, align 8
  %302 = lshr i64 %300, 50
  %303 = and i64 %302, 1
  %304 = add i64 %301, %295
  store i64 %304, i64* %RAX.i1011, align 8
  %305 = icmp ult i64 %304, %295
  %306 = icmp ult i64 %304, %301
  %307 = or i1 %305, %306
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %46, align 1
  %309 = trunc i64 %304 to i32
  %310 = and i32 %309, 255
  %311 = tail call i32 @llvm.ctpop.i32(i32 %310)
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  %314 = xor i8 %313, 1
  store i8 %314, i8* %47, align 1
  %315 = xor i64 %295, %304
  %316 = lshr i64 %315, 4
  %317 = trunc i64 %316 to i8
  %318 = and i8 %317, 1
  store i8 %318, i8* %48, align 1
  %319 = icmp eq i64 %304, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %49, align 1
  %321 = lshr i64 %304, 63
  %322 = trunc i64 %321 to i8
  store i8 %322, i8* %50, align 1
  %323 = lshr i64 %295, 63
  %324 = xor i64 %321, %323
  %325 = xor i64 %321, %303
  %326 = add nuw nsw i64 %324, %325
  %327 = icmp eq i64 %326, 2
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %51, align 1
  %329 = load i64, i64* %RBP.i, align 8
  %330 = add i64 %329, -44
  %331 = add i64 %179, 72
  store i64 %331, i64* %PC.i, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  store i64 %334, i64* %RCX.i1018, align 8
  %335 = shl nsw i64 %334, 3
  %336 = add i64 %335, %304
  %337 = add i64 %179, 77
  store i64 %337, i64* %PC.i, align 8
  %338 = inttoptr i64 %336 to double*
  %339 = load double, double* %338, align 8
  %340 = fmul double %291, %339
  store double %340, double* %57, align 1
  store i64 0, i64* %58, align 1
  %341 = add i64 %329, -32
  %342 = add i64 %179, 81
  store i64 %342, i64* %PC.i, align 8
  %343 = inttoptr i64 %341 to i64*
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %RAX.i1011, align 8
  %345 = add i64 %329, -40
  %346 = add i64 %179, 85
  store i64 %346, i64* %PC.i, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  %350 = shl nsw i64 %349, 13
  store i64 %350, i64* %RCX.i1018, align 8
  %351 = lshr i64 %349, 50
  %352 = and i64 %351, 1
  %353 = add i64 %350, %344
  store i64 %353, i64* %RAX.i1011, align 8
  %354 = icmp ult i64 %353, %344
  %355 = icmp ult i64 %353, %350
  %356 = or i1 %354, %355
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %46, align 1
  %358 = trunc i64 %353 to i32
  %359 = and i32 %358, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %47, align 1
  %364 = xor i64 %344, %353
  %365 = lshr i64 %364, 4
  %366 = trunc i64 %365 to i8
  %367 = and i8 %366, 1
  store i8 %367, i8* %48, align 1
  %368 = icmp eq i64 %353, 0
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %49, align 1
  %370 = lshr i64 %353, 63
  %371 = trunc i64 %370 to i8
  store i8 %371, i8* %50, align 1
  %372 = lshr i64 %344, 63
  %373 = xor i64 %370, %372
  %374 = xor i64 %370, %352
  %375 = add nuw nsw i64 %373, %374
  %376 = icmp eq i64 %375, 2
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %51, align 1
  %378 = add i64 %179, 95
  store i64 %378, i64* %PC.i, align 8
  %379 = load i32, i32* %332, align 4
  %380 = add i32 %379, -1
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RDX.i1021, align 8
  %382 = icmp eq i32 %379, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %46, align 1
  %384 = and i32 %380, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384)
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %47, align 1
  %389 = xor i32 %379, %380
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %48, align 1
  %393 = icmp eq i32 %380, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %49, align 1
  %395 = lshr i32 %380, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %50, align 1
  %397 = lshr i32 %379, 31
  %398 = xor i32 %395, %397
  %399 = add nuw nsw i32 %398, %397
  %400 = icmp eq i32 %399, 2
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %51, align 1
  %402 = sext i32 %380 to i64
  store i64 %402, i64* %RCX.i1018, align 8
  %403 = shl nsw i64 %402, 3
  %404 = add i64 %403, %353
  %405 = add i64 %179, 106
  store i64 %405, i64* %PC.i, align 8
  %406 = load double, double* %57, align 1
  %407 = inttoptr i64 %404 to double*
  %408 = load double, double* %407, align 8
  %409 = fdiv double %406, %408
  store double %409, double* %57, align 1
  %410 = load double, double* %53, align 1
  %411 = fsub double %410, %409
  store double %411, double* %53, align 1
  %412 = load i64, i64* %RBP.i, align 8
  %413 = add i64 %412, -16
  %414 = add i64 %179, 114
  store i64 %414, i64* %PC.i, align 8
  %415 = inttoptr i64 %413 to i64*
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %RAX.i1011, align 8
  %417 = add i64 %412, -40
  %418 = add i64 %179, 118
  store i64 %418, i64* %PC.i, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = sext i32 %420 to i64
  %422 = shl nsw i64 %421, 13
  store i64 %422, i64* %RCX.i1018, align 8
  %423 = lshr i64 %421, 50
  %424 = and i64 %423, 1
  %425 = add i64 %422, %416
  store i64 %425, i64* %RAX.i1011, align 8
  %426 = icmp ult i64 %425, %416
  %427 = icmp ult i64 %425, %422
  %428 = or i1 %426, %427
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %46, align 1
  %430 = trunc i64 %425 to i32
  %431 = and i32 %430, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %47, align 1
  %436 = xor i64 %416, %425
  %437 = lshr i64 %436, 4
  %438 = trunc i64 %437 to i8
  %439 = and i8 %438, 1
  store i8 %439, i8* %48, align 1
  %440 = icmp eq i64 %425, 0
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %49, align 1
  %442 = lshr i64 %425, 63
  %443 = trunc i64 %442 to i8
  store i8 %443, i8* %50, align 1
  %444 = lshr i64 %416, 63
  %445 = xor i64 %442, %444
  %446 = xor i64 %442, %424
  %447 = add nuw nsw i64 %445, %446
  %448 = icmp eq i64 %447, 2
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %51, align 1
  %450 = add i64 %412, -44
  %451 = add i64 %179, 129
  store i64 %451, i64* %PC.i, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = sext i32 %453 to i64
  store i64 %454, i64* %RCX.i1018, align 8
  %455 = shl nsw i64 %454, 3
  %456 = add i64 %455, %425
  %457 = add i64 %179, 134
  store i64 %457, i64* %PC.i, align 8
  %458 = inttoptr i64 %456 to double*
  store double %411, double* %458, align 8
  %459 = load i64, i64* %RBP.i, align 8
  %460 = add i64 %459, -32
  %461 = load i64, i64* %PC.i, align 8
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC.i, align 8
  %463 = inttoptr i64 %460 to i64*
  %464 = load i64, i64* %463, align 8
  store i64 %464, i64* %RAX.i1011, align 8
  %465 = add i64 %459, -40
  %466 = add i64 %461, 8
  store i64 %466, i64* %PC.i, align 8
  %467 = inttoptr i64 %465 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = sext i32 %468 to i64
  %470 = shl nsw i64 %469, 13
  store i64 %470, i64* %RCX.i1018, align 8
  %471 = lshr i64 %469, 50
  %472 = and i64 %471, 1
  %473 = add i64 %470, %464
  store i64 %473, i64* %RAX.i1011, align 8
  %474 = icmp ult i64 %473, %464
  %475 = icmp ult i64 %473, %470
  %476 = or i1 %474, %475
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %46, align 1
  %478 = trunc i64 %473 to i32
  %479 = and i32 %478, 255
  %480 = tail call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  store i8 %483, i8* %47, align 1
  %484 = xor i64 %464, %473
  %485 = lshr i64 %484, 4
  %486 = trunc i64 %485 to i8
  %487 = and i8 %486, 1
  store i8 %487, i8* %48, align 1
  %488 = icmp eq i64 %473, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %49, align 1
  %490 = lshr i64 %473, 63
  %491 = trunc i64 %490 to i8
  store i8 %491, i8* %50, align 1
  %492 = lshr i64 %464, 63
  %493 = xor i64 %490, %492
  %494 = xor i64 %490, %472
  %495 = add nuw nsw i64 %493, %494
  %496 = icmp eq i64 %495, 2
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %51, align 1
  %498 = add i64 %459, -44
  %499 = add i64 %461, 19
  store i64 %499, i64* %PC.i, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = sext i32 %501 to i64
  store i64 %502, i64* %RCX.i1018, align 8
  %503 = shl nsw i64 %502, 3
  %504 = add i64 %503, %473
  %505 = add i64 %461, 24
  store i64 %505, i64* %PC.i, align 8
  %506 = inttoptr i64 %504 to i64*
  %507 = load i64, i64* %506, align 8
  %508 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %507, i64* %508, align 1
  store double 0.000000e+00, double* %55, align 1
  %509 = add i64 %459, -24
  %510 = add i64 %461, 28
  store i64 %510, i64* %PC.i, align 8
  %511 = inttoptr i64 %509 to i64*
  %512 = load i64, i64* %511, align 8
  store i64 %512, i64* %RAX.i1011, align 8
  %513 = add i64 %461, 32
  store i64 %513, i64* %PC.i, align 8
  %514 = load i32, i32* %467, align 4
  %515 = sext i32 %514 to i64
  %516 = shl nsw i64 %515, 13
  store i64 %516, i64* %RCX.i1018, align 8
  %517 = lshr i64 %515, 50
  %518 = and i64 %517, 1
  %519 = add i64 %516, %512
  store i64 %519, i64* %RAX.i1011, align 8
  %520 = icmp ult i64 %519, %512
  %521 = icmp ult i64 %519, %516
  %522 = or i1 %520, %521
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %46, align 1
  %524 = trunc i64 %519 to i32
  %525 = and i32 %524, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %47, align 1
  %530 = xor i64 %512, %519
  %531 = lshr i64 %530, 4
  %532 = trunc i64 %531 to i8
  %533 = and i8 %532, 1
  store i8 %533, i8* %48, align 1
  %534 = icmp eq i64 %519, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %49, align 1
  %536 = lshr i64 %519, 63
  %537 = trunc i64 %536 to i8
  store i8 %537, i8* %50, align 1
  %538 = lshr i64 %512, 63
  %539 = xor i64 %536, %538
  %540 = xor i64 %536, %518
  %541 = add nuw nsw i64 %539, %540
  %542 = icmp eq i64 %541, 2
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %51, align 1
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -44
  %546 = add i64 %461, 43
  store i64 %546, i64* %PC.i, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  store i64 %549, i64* %RCX.i1018, align 8
  %550 = shl nsw i64 %549, 3
  %551 = add i64 %550, %519
  %552 = add i64 %461, 48
  store i64 %552, i64* %PC.i, align 8
  %553 = inttoptr i64 %551 to double*
  %554 = load double, double* %553, align 8
  store double %554, double* %57, align 1
  store double 0.000000e+00, double* %59, align 1
  %555 = add i64 %544, -24
  %556 = add i64 %461, 52
  store i64 %556, i64* %PC.i, align 8
  %557 = inttoptr i64 %555 to i64*
  %558 = load i64, i64* %557, align 8
  store i64 %558, i64* %RAX.i1011, align 8
  %559 = add i64 %544, -40
  %560 = add i64 %461, 56
  store i64 %560, i64* %PC.i, align 8
  %561 = inttoptr i64 %559 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = sext i32 %562 to i64
  %564 = shl nsw i64 %563, 13
  store i64 %564, i64* %RCX.i1018, align 8
  %565 = lshr i64 %563, 50
  %566 = and i64 %565, 1
  %567 = add i64 %564, %558
  store i64 %567, i64* %RAX.i1011, align 8
  %568 = icmp ult i64 %567, %558
  %569 = icmp ult i64 %567, %564
  %570 = or i1 %568, %569
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %46, align 1
  %572 = trunc i64 %567 to i32
  %573 = and i32 %572, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573)
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %47, align 1
  %578 = xor i64 %558, %567
  %579 = lshr i64 %578, 4
  %580 = trunc i64 %579 to i8
  %581 = and i8 %580, 1
  store i8 %581, i8* %48, align 1
  %582 = icmp eq i64 %567, 0
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %49, align 1
  %584 = lshr i64 %567, 63
  %585 = trunc i64 %584 to i8
  store i8 %585, i8* %50, align 1
  %586 = lshr i64 %558, 63
  %587 = xor i64 %584, %586
  %588 = xor i64 %584, %566
  %589 = add nuw nsw i64 %587, %588
  %590 = icmp eq i64 %589, 2
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %51, align 1
  %592 = add i64 %461, 67
  store i64 %592, i64* %PC.i, align 8
  %593 = load i32, i32* %547, align 4
  %594 = sext i32 %593 to i64
  store i64 %594, i64* %RCX.i1018, align 8
  %595 = shl nsw i64 %594, 3
  %596 = add i64 %595, %567
  %597 = add i64 %461, 72
  store i64 %597, i64* %PC.i, align 8
  %598 = inttoptr i64 %596 to double*
  %599 = load double, double* %598, align 8
  %600 = fmul double %554, %599
  store double %600, double* %57, align 1
  store i64 0, i64* %58, align 1
  %601 = add i64 %544, -32
  %602 = add i64 %461, 76
  store i64 %602, i64* %PC.i, align 8
  %603 = inttoptr i64 %601 to i64*
  %604 = load i64, i64* %603, align 8
  store i64 %604, i64* %RAX.i1011, align 8
  %605 = load i64, i64* %RBP.i, align 8
  %606 = add i64 %605, -40
  %607 = add i64 %461, 80
  store i64 %607, i64* %PC.i, align 8
  %608 = inttoptr i64 %606 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = sext i32 %609 to i64
  %611 = shl nsw i64 %610, 13
  store i64 %611, i64* %RCX.i1018, align 8
  %612 = lshr i64 %610, 50
  %613 = and i64 %612, 1
  %614 = add i64 %611, %604
  store i64 %614, i64* %RAX.i1011, align 8
  %615 = icmp ult i64 %614, %604
  %616 = icmp ult i64 %614, %611
  %617 = or i1 %615, %616
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %46, align 1
  %619 = trunc i64 %614 to i32
  %620 = and i32 %619, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %47, align 1
  %625 = xor i64 %604, %614
  %626 = lshr i64 %625, 4
  %627 = trunc i64 %626 to i8
  %628 = and i8 %627, 1
  store i8 %628, i8* %48, align 1
  %629 = icmp eq i64 %614, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %49, align 1
  %631 = lshr i64 %614, 63
  %632 = trunc i64 %631 to i8
  store i8 %632, i8* %50, align 1
  %633 = lshr i64 %604, 63
  %634 = xor i64 %631, %633
  %635 = xor i64 %631, %613
  %636 = add nuw nsw i64 %634, %635
  %637 = icmp eq i64 %636, 2
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %51, align 1
  %639 = add i64 %605, -44
  %640 = add i64 %461, 90
  store i64 %640, i64* %PC.i, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = add i32 %642, -1
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RDX.i1021, align 8
  %645 = icmp eq i32 %642, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %46, align 1
  %647 = and i32 %643, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %47, align 1
  %652 = xor i32 %642, %643
  %653 = lshr i32 %652, 4
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  store i8 %655, i8* %48, align 1
  %656 = icmp eq i32 %643, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %49, align 1
  %658 = lshr i32 %643, 31
  %659 = trunc i32 %658 to i8
  store i8 %659, i8* %50, align 1
  %660 = lshr i32 %642, 31
  %661 = xor i32 %658, %660
  %662 = add nuw nsw i32 %661, %660
  %663 = icmp eq i32 %662, 2
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %51, align 1
  %665 = sext i32 %643 to i64
  store i64 %665, i64* %RCX.i1018, align 8
  %666 = shl nsw i64 %665, 3
  %667 = add i64 %666, %614
  %668 = add i64 %461, 101
  store i64 %668, i64* %PC.i, align 8
  %669 = load double, double* %57, align 1
  %670 = inttoptr i64 %667 to double*
  %671 = load double, double* %670, align 8
  %672 = fdiv double %669, %671
  store double %672, double* %57, align 1
  %673 = load double, double* %53, align 1
  %674 = fsub double %673, %672
  store double %674, double* %53, align 1
  %675 = load i64, i64* %RBP.i, align 8
  %676 = add i64 %675, -32
  %677 = add i64 %461, 109
  store i64 %677, i64* %PC.i, align 8
  %678 = inttoptr i64 %676 to i64*
  %679 = load i64, i64* %678, align 8
  store i64 %679, i64* %RAX.i1011, align 8
  %680 = add i64 %675, -40
  %681 = add i64 %461, 113
  store i64 %681, i64* %PC.i, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = sext i32 %683 to i64
  %685 = shl nsw i64 %684, 13
  store i64 %685, i64* %RCX.i1018, align 8
  %686 = lshr i64 %684, 50
  %687 = and i64 %686, 1
  %688 = add i64 %685, %679
  store i64 %688, i64* %RAX.i1011, align 8
  %689 = icmp ult i64 %688, %679
  %690 = icmp ult i64 %688, %685
  %691 = or i1 %689, %690
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %46, align 1
  %693 = trunc i64 %688 to i32
  %694 = and i32 %693, 255
  %695 = tail call i32 @llvm.ctpop.i32(i32 %694)
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  store i8 %698, i8* %47, align 1
  %699 = xor i64 %679, %688
  %700 = lshr i64 %699, 4
  %701 = trunc i64 %700 to i8
  %702 = and i8 %701, 1
  store i8 %702, i8* %48, align 1
  %703 = icmp eq i64 %688, 0
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %49, align 1
  %705 = lshr i64 %688, 63
  %706 = trunc i64 %705 to i8
  store i8 %706, i8* %50, align 1
  %707 = lshr i64 %679, 63
  %708 = xor i64 %705, %707
  %709 = xor i64 %705, %687
  %710 = add nuw nsw i64 %708, %709
  %711 = icmp eq i64 %710, 2
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %51, align 1
  %713 = add i64 %675, -44
  %714 = add i64 %461, 124
  store i64 %714, i64* %PC.i, align 8
  %715 = inttoptr i64 %713 to i32*
  %716 = load i32, i32* %715, align 4
  %717 = sext i32 %716 to i64
  store i64 %717, i64* %RCX.i1018, align 8
  %718 = shl nsw i64 %717, 3
  %719 = add i64 %718, %688
  %720 = add i64 %461, 129
  store i64 %720, i64* %PC.i, align 8
  %721 = inttoptr i64 %719 to double*
  store double %674, double* %721, align 8
  %722 = load i64, i64* %RBP.i, align 8
  %723 = add i64 %722, -44
  %724 = load i64, i64* %PC.i, align 8
  %725 = add i64 %724, 3
  store i64 %725, i64* %PC.i, align 8
  %726 = inttoptr i64 %723 to i32*
  %727 = load i32, i32* %726, align 4
  %728 = add i32 %727, 1
  %729 = zext i32 %728 to i64
  store i64 %729, i64* %RAX.i1011, align 8
  %730 = icmp eq i32 %727, -1
  %731 = icmp eq i32 %728, 0
  %732 = or i1 %730, %731
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %46, align 1
  %734 = and i32 %728, 255
  %735 = tail call i32 @llvm.ctpop.i32(i32 %734)
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  store i8 %738, i8* %47, align 1
  %739 = xor i32 %727, %728
  %740 = lshr i32 %739, 4
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  store i8 %742, i8* %48, align 1
  %743 = icmp eq i32 %728, 0
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %49, align 1
  %745 = lshr i32 %728, 31
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %50, align 1
  %747 = lshr i32 %727, 31
  %748 = xor i32 %745, %747
  %749 = add nuw nsw i32 %748, %745
  %750 = icmp eq i32 %749, 2
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %51, align 1
  %752 = add i64 %724, 9
  store i64 %752, i64* %PC.i, align 8
  store i32 %728, i32* %726, align 4
  %753 = load i64, i64* %PC.i, align 8
  %754 = add i64 %753, -284
  store i64 %754, i64* %3, align 8
  br label %block_.L_400bd3

block_.L_400cf4:                                  ; preds = %block_.L_400bd3
  %755 = add i64 %143, -40
  %756 = add i64 %179, 8
  store i64 %756, i64* %PC.i, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  %759 = add i32 %758, 1
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RAX.i1011, align 8
  %761 = icmp eq i32 %758, -1
  %762 = icmp eq i32 %759, 0
  %763 = or i1 %761, %762
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %46, align 1
  %765 = and i32 %759, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %47, align 1
  %770 = xor i32 %758, %759
  %771 = lshr i32 %770, 4
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %48, align 1
  %774 = icmp eq i32 %759, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %49, align 1
  %776 = lshr i32 %759, 31
  %777 = trunc i32 %776 to i8
  store i8 %777, i8* %50, align 1
  %778 = lshr i32 %758, 31
  %779 = xor i32 %776, %778
  %780 = add nuw nsw i32 %779, %776
  %781 = icmp eq i32 %780, 2
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %51, align 1
  %783 = add i64 %179, 14
  store i64 %783, i64* %PC.i, align 8
  store i32 %759, i32* %757, align 4
  %784 = load i64, i64* %PC.i, align 8
  %785 = add i64 %784, -322
  store i64 %785, i64* %3, align 8
  br label %block_.L_400bc0

block_.L_400d07:                                  ; preds = %block_.L_400bc0
  %786 = add i64 %138, 7
  store i64 %786, i64* %PC.i, align 8
  store i32 0, i32* %105, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d0e

block_.L_400d0e:                                  ; preds = %block_400d1a, %block_.L_400d07
  %787 = phi i64 [ %1066, %block_400d1a ], [ %.pre3, %block_.L_400d07 ]
  %788 = load i64, i64* %RBP.i, align 8
  %789 = add i64 %788, -40
  %790 = add i64 %787, 3
  store i64 %790, i64* %PC.i, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RAX.i1011, align 8
  %794 = add i64 %788, -8
  %795 = add i64 %787, 6
  store i64 %795, i64* %PC.i, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = sub i32 %792, %797
  %799 = icmp ult i32 %792, %797
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %46, align 1
  %801 = and i32 %798, 255
  %802 = tail call i32 @llvm.ctpop.i32(i32 %801)
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  %805 = xor i8 %804, 1
  store i8 %805, i8* %47, align 1
  %806 = xor i32 %797, %792
  %807 = xor i32 %806, %798
  %808 = lshr i32 %807, 4
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  store i8 %810, i8* %48, align 1
  %811 = icmp eq i32 %798, 0
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %49, align 1
  %813 = lshr i32 %798, 31
  %814 = trunc i32 %813 to i8
  store i8 %814, i8* %50, align 1
  %815 = lshr i32 %792, 31
  %816 = lshr i32 %797, 31
  %817 = xor i32 %816, %815
  %818 = xor i32 %813, %815
  %819 = add nuw nsw i32 %818, %817
  %820 = icmp eq i32 %819, 2
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %51, align 1
  %822 = icmp ne i8 %814, 0
  %823 = xor i1 %822, %820
  %.v13 = select i1 %823, i64 12, i64 113
  %824 = add i64 %787, %.v13
  store i64 %824, i64* %3, align 8
  br i1 %823, label %block_400d1a, label %block_.L_400d7f

block_400d1a:                                     ; preds = %block_.L_400d0e
  %825 = add i64 %788, -16
  %826 = add i64 %824, 4
  store i64 %826, i64* %PC.i, align 8
  %827 = inttoptr i64 %825 to i64*
  %828 = load i64, i64* %827, align 8
  store i64 %828, i64* %RAX.i1011, align 8
  %829 = add i64 %824, 8
  store i64 %829, i64* %PC.i, align 8
  %830 = load i32, i32* %791, align 4
  %831 = sext i32 %830 to i64
  %832 = shl nsw i64 %831, 13
  store i64 %832, i64* %RCX.i1018, align 8
  %833 = lshr i64 %831, 50
  %834 = and i64 %833, 1
  %835 = add i64 %832, %828
  store i64 %835, i64* %RAX.i1011, align 8
  %836 = icmp ult i64 %835, %828
  %837 = icmp ult i64 %835, %832
  %838 = or i1 %836, %837
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %46, align 1
  %840 = trunc i64 %835 to i32
  %841 = and i32 %840, 255
  %842 = tail call i32 @llvm.ctpop.i32(i32 %841)
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  %845 = xor i8 %844, 1
  store i8 %845, i8* %47, align 1
  %846 = xor i64 %828, %835
  %847 = lshr i64 %846, 4
  %848 = trunc i64 %847 to i8
  %849 = and i8 %848, 1
  store i8 %849, i8* %48, align 1
  %850 = icmp eq i64 %835, 0
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %49, align 1
  %852 = lshr i64 %835, 63
  %853 = trunc i64 %852 to i8
  store i8 %853, i8* %50, align 1
  %854 = lshr i64 %828, 63
  %855 = xor i64 %852, %854
  %856 = xor i64 %852, %834
  %857 = add nuw nsw i64 %855, %856
  %858 = icmp eq i64 %857, 2
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %51, align 1
  %860 = add i64 %824, 18
  store i64 %860, i64* %PC.i, align 8
  %861 = load i32, i32* %796, align 4
  %862 = add i32 %861, -1
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %RDX.i1021, align 8
  %864 = icmp eq i32 %861, 0
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %46, align 1
  %866 = and i32 %862, 255
  %867 = tail call i32 @llvm.ctpop.i32(i32 %866)
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  %870 = xor i8 %869, 1
  store i8 %870, i8* %47, align 1
  %871 = xor i32 %861, %862
  %872 = lshr i32 %871, 4
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  store i8 %874, i8* %48, align 1
  %875 = icmp eq i32 %862, 0
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %49, align 1
  %877 = lshr i32 %862, 31
  %878 = trunc i32 %877 to i8
  store i8 %878, i8* %50, align 1
  %879 = lshr i32 %861, 31
  %880 = xor i32 %877, %879
  %881 = add nuw nsw i32 %880, %879
  %882 = icmp eq i32 %881, 2
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %51, align 1
  %884 = sext i32 %862 to i64
  store i64 %884, i64* %RCX.i1018, align 8
  %885 = shl nsw i64 %884, 3
  %886 = add i64 %885, %835
  %887 = add i64 %824, 29
  store i64 %887, i64* %PC.i, align 8
  %888 = inttoptr i64 %886 to i64*
  %889 = load i64, i64* %888, align 8
  %890 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %889, i64* %890, align 1
  store double 0.000000e+00, double* %55, align 1
  %891 = load i64, i64* %RBP.i, align 8
  %892 = add i64 %891, -32
  %893 = add i64 %824, 33
  store i64 %893, i64* %PC.i, align 8
  %894 = inttoptr i64 %892 to i64*
  %895 = load i64, i64* %894, align 8
  store i64 %895, i64* %RAX.i1011, align 8
  %896 = add i64 %891, -40
  %897 = add i64 %824, 37
  store i64 %897, i64* %PC.i, align 8
  %898 = inttoptr i64 %896 to i32*
  %899 = load i32, i32* %898, align 4
  %900 = sext i32 %899 to i64
  %901 = shl nsw i64 %900, 13
  store i64 %901, i64* %RCX.i1018, align 8
  %902 = lshr i64 %900, 50
  %903 = and i64 %902, 1
  %904 = add i64 %901, %895
  store i64 %904, i64* %RAX.i1011, align 8
  %905 = icmp ult i64 %904, %895
  %906 = icmp ult i64 %904, %901
  %907 = or i1 %905, %906
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %46, align 1
  %909 = trunc i64 %904 to i32
  %910 = and i32 %909, 255
  %911 = tail call i32 @llvm.ctpop.i32(i32 %910)
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  %914 = xor i8 %913, 1
  store i8 %914, i8* %47, align 1
  %915 = xor i64 %895, %904
  %916 = lshr i64 %915, 4
  %917 = trunc i64 %916 to i8
  %918 = and i8 %917, 1
  store i8 %918, i8* %48, align 1
  %919 = icmp eq i64 %904, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %49, align 1
  %921 = lshr i64 %904, 63
  %922 = trunc i64 %921 to i8
  store i8 %922, i8* %50, align 1
  %923 = lshr i64 %895, 63
  %924 = xor i64 %921, %923
  %925 = xor i64 %921, %903
  %926 = add nuw nsw i64 %924, %925
  %927 = icmp eq i64 %926, 2
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %51, align 1
  %929 = add i64 %891, -8
  %930 = add i64 %824, 47
  store i64 %930, i64* %PC.i, align 8
  %931 = inttoptr i64 %929 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = add i32 %932, -1
  %934 = zext i32 %933 to i64
  store i64 %934, i64* %RDX.i1021, align 8
  %935 = icmp eq i32 %932, 0
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %46, align 1
  %937 = and i32 %933, 255
  %938 = tail call i32 @llvm.ctpop.i32(i32 %937)
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  store i8 %941, i8* %47, align 1
  %942 = xor i32 %932, %933
  %943 = lshr i32 %942, 4
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  store i8 %945, i8* %48, align 1
  %946 = icmp eq i32 %933, 0
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %49, align 1
  %948 = lshr i32 %933, 31
  %949 = trunc i32 %948 to i8
  store i8 %949, i8* %50, align 1
  %950 = lshr i32 %932, 31
  %951 = xor i32 %948, %950
  %952 = add nuw nsw i32 %951, %950
  %953 = icmp eq i32 %952, 2
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %51, align 1
  %955 = sext i32 %933 to i64
  store i64 %955, i64* %RCX.i1018, align 8
  %956 = shl nsw i64 %955, 3
  %957 = add i64 %956, %904
  %958 = add i64 %824, 58
  store i64 %958, i64* %PC.i, align 8
  %959 = load double, double* %53, align 1
  %960 = inttoptr i64 %957 to double*
  %961 = load double, double* %960, align 8
  %962 = fdiv double %959, %961
  store double %962, double* %53, align 1
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -16
  %965 = add i64 %824, 62
  store i64 %965, i64* %PC.i, align 8
  %966 = inttoptr i64 %964 to i64*
  %967 = load i64, i64* %966, align 8
  store i64 %967, i64* %RAX.i1011, align 8
  %968 = add i64 %963, -40
  %969 = add i64 %824, 66
  store i64 %969, i64* %PC.i, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = sext i32 %971 to i64
  %973 = shl nsw i64 %972, 13
  store i64 %973, i64* %RCX.i1018, align 8
  %974 = lshr i64 %972, 50
  %975 = and i64 %974, 1
  %976 = add i64 %973, %967
  store i64 %976, i64* %RAX.i1011, align 8
  %977 = icmp ult i64 %976, %967
  %978 = icmp ult i64 %976, %973
  %979 = or i1 %977, %978
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %46, align 1
  %981 = trunc i64 %976 to i32
  %982 = and i32 %981, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982)
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %47, align 1
  %987 = xor i64 %967, %976
  %988 = lshr i64 %987, 4
  %989 = trunc i64 %988 to i8
  %990 = and i8 %989, 1
  store i8 %990, i8* %48, align 1
  %991 = icmp eq i64 %976, 0
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %49, align 1
  %993 = lshr i64 %976, 63
  %994 = trunc i64 %993 to i8
  store i8 %994, i8* %50, align 1
  %995 = lshr i64 %967, 63
  %996 = xor i64 %993, %995
  %997 = xor i64 %993, %975
  %998 = add nuw nsw i64 %996, %997
  %999 = icmp eq i64 %998, 2
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %51, align 1
  %1001 = add i64 %963, -8
  %1002 = add i64 %824, 76
  store i64 %1002, i64* %PC.i, align 8
  %1003 = inttoptr i64 %1001 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = add i32 %1004, -1
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RDX.i1021, align 8
  %1007 = icmp eq i32 %1004, 0
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %46, align 1
  %1009 = and i32 %1005, 255
  %1010 = tail call i32 @llvm.ctpop.i32(i32 %1009)
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = xor i8 %1012, 1
  store i8 %1013, i8* %47, align 1
  %1014 = xor i32 %1004, %1005
  %1015 = lshr i32 %1014, 4
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  store i8 %1017, i8* %48, align 1
  %1018 = icmp eq i32 %1005, 0
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %49, align 1
  %1020 = lshr i32 %1005, 31
  %1021 = trunc i32 %1020 to i8
  store i8 %1021, i8* %50, align 1
  %1022 = lshr i32 %1004, 31
  %1023 = xor i32 %1020, %1022
  %1024 = add nuw nsw i32 %1023, %1022
  %1025 = icmp eq i32 %1024, 2
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %51, align 1
  %1027 = sext i32 %1005 to i64
  store i64 %1027, i64* %RCX.i1018, align 8
  %1028 = shl nsw i64 %1027, 3
  %1029 = add i64 %1028, %976
  %1030 = add i64 %824, 87
  store i64 %1030, i64* %PC.i, align 8
  %1031 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1032 = load i64, i64* %1031, align 1
  %1033 = inttoptr i64 %1029 to i64*
  store i64 %1032, i64* %1033, align 8
  %1034 = load i64, i64* %RBP.i, align 8
  %1035 = add i64 %1034, -40
  %1036 = load i64, i64* %PC.i, align 8
  %1037 = add i64 %1036, 3
  store i64 %1037, i64* %PC.i, align 8
  %1038 = inttoptr i64 %1035 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = add i32 %1039, 1
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RAX.i1011, align 8
  %1042 = icmp eq i32 %1039, -1
  %1043 = icmp eq i32 %1040, 0
  %1044 = or i1 %1042, %1043
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %46, align 1
  %1046 = and i32 %1040, 255
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046)
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %47, align 1
  %1051 = xor i32 %1039, %1040
  %1052 = lshr i32 %1051, 4
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  store i8 %1054, i8* %48, align 1
  %1055 = icmp eq i32 %1040, 0
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %49, align 1
  %1057 = lshr i32 %1040, 31
  %1058 = trunc i32 %1057 to i8
  store i8 %1058, i8* %50, align 1
  %1059 = lshr i32 %1039, 31
  %1060 = xor i32 %1057, %1059
  %1061 = add nuw nsw i32 %1060, %1057
  %1062 = icmp eq i32 %1061, 2
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %51, align 1
  %1064 = add i64 %1036, 9
  store i64 %1064, i64* %PC.i, align 8
  store i32 %1040, i32* %1038, align 4
  %1065 = load i64, i64* %PC.i, align 8
  %1066 = add i64 %1065, -108
  store i64 %1066, i64* %3, align 8
  br label %block_.L_400d0e

block_.L_400d7f:                                  ; preds = %block_.L_400d0e
  %1067 = add i64 %824, 7
  store i64 %1067, i64* %PC.i, align 8
  store i32 0, i32* %791, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d86

block_.L_400d86:                                  ; preds = %block_.L_400e5f, %block_.L_400d7f
  %1068 = phi i64 [ %1670, %block_.L_400e5f ], [ %.pre4, %block_.L_400d7f ]
  %1069 = load i64, i64* %RBP.i, align 8
  %1070 = add i64 %1069, -40
  %1071 = add i64 %1068, 3
  store i64 %1071, i64* %PC.i, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = zext i32 %1073 to i64
  store i64 %1074, i64* %RAX.i1011, align 8
  %1075 = add i64 %1069, -8
  %1076 = add i64 %1068, 6
  store i64 %1076, i64* %PC.i, align 8
  %1077 = inttoptr i64 %1075 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = sub i32 %1073, %1078
  %1080 = icmp ult i32 %1073, %1078
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %46, align 1
  %1082 = and i32 %1079, 255
  %1083 = tail call i32 @llvm.ctpop.i32(i32 %1082)
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = xor i8 %1085, 1
  store i8 %1086, i8* %47, align 1
  %1087 = xor i32 %1078, %1073
  %1088 = xor i32 %1087, %1079
  %1089 = lshr i32 %1088, 4
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  store i8 %1091, i8* %48, align 1
  %1092 = icmp eq i32 %1079, 0
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %49, align 1
  %1094 = lshr i32 %1079, 31
  %1095 = trunc i32 %1094 to i8
  store i8 %1095, i8* %50, align 1
  %1096 = lshr i32 %1073, 31
  %1097 = lshr i32 %1078, 31
  %1098 = xor i32 %1097, %1096
  %1099 = xor i32 %1094, %1096
  %1100 = add nuw nsw i32 %1099, %1098
  %1101 = icmp eq i32 %1100, 2
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %51, align 1
  %1103 = icmp ne i8 %1095, 0
  %1104 = xor i1 %1103, %1101
  %.v14 = select i1 %1104, i64 12, i64 236
  %1105 = add i64 %1068, %.v14
  store i64 %1105, i64* %3, align 8
  br i1 %1104, label %block_400d92, label %block_.L_400e72

block_400d92:                                     ; preds = %block_.L_400d86
  %1106 = add i64 %1069, -44
  %1107 = add i64 %1105, 7
  store i64 %1107, i64* %PC.i, align 8
  %1108 = inttoptr i64 %1106 to i32*
  store i32 0, i32* %1108, align 4
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d99

block_.L_400d99:                                  ; preds = %block_400daa, %block_400d92
  %1109 = phi i64 [ %1639, %block_400daa ], [ %.pre5, %block_400d92 ]
  %1110 = load i64, i64* %RBP.i, align 8
  %1111 = add i64 %1110, -44
  %1112 = add i64 %1109, 3
  store i64 %1112, i64* %PC.i, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = zext i32 %1114 to i64
  store i64 %1115, i64* %RAX.i1011, align 8
  %1116 = add i64 %1110, -8
  %1117 = add i64 %1109, 6
  store i64 %1117, i64* %PC.i, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = add i32 %1119, -2
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RCX.i1018, align 8
  %1122 = lshr i32 %1120, 31
  %1123 = sub i32 %1114, %1120
  %1124 = icmp ult i32 %1114, %1120
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %46, align 1
  %1126 = and i32 %1123, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %47, align 1
  %1131 = xor i32 %1120, %1114
  %1132 = xor i32 %1131, %1123
  %1133 = lshr i32 %1132, 4
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  store i8 %1135, i8* %48, align 1
  %1136 = icmp eq i32 %1123, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %49, align 1
  %1138 = lshr i32 %1123, 31
  %1139 = trunc i32 %1138 to i8
  store i8 %1139, i8* %50, align 1
  %1140 = lshr i32 %1114, 31
  %1141 = xor i32 %1122, %1140
  %1142 = xor i32 %1138, %1140
  %1143 = add nuw nsw i32 %1142, %1141
  %1144 = icmp eq i32 %1143, 2
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %51, align 1
  %1146 = icmp ne i8 %1139, 0
  %1147 = xor i1 %1146, %1144
  %.v15 = select i1 %1147, i64 17, i64 198
  %1148 = add i64 %1109, %.v15
  store i64 %1148, i64* %3, align 8
  br i1 %1147, label %block_400daa, label %block_.L_400e5f

block_400daa:                                     ; preds = %block_.L_400d99
  %1149 = add i64 %1110, -16
  %1150 = add i64 %1148, 4
  store i64 %1150, i64* %PC.i, align 8
  %1151 = inttoptr i64 %1149 to i64*
  %1152 = load i64, i64* %1151, align 8
  store i64 %1152, i64* %RAX.i1011, align 8
  %1153 = add i64 %1110, -40
  %1154 = add i64 %1148, 8
  store i64 %1154, i64* %PC.i, align 8
  %1155 = inttoptr i64 %1153 to i32*
  %1156 = load i32, i32* %1155, align 4
  %1157 = sext i32 %1156 to i64
  %1158 = shl nsw i64 %1157, 13
  store i64 %1158, i64* %RCX.i1018, align 8
  %1159 = lshr i64 %1157, 50
  %1160 = and i64 %1159, 1
  %1161 = add i64 %1158, %1152
  store i64 %1161, i64* %RAX.i1011, align 8
  %1162 = icmp ult i64 %1161, %1152
  %1163 = icmp ult i64 %1161, %1158
  %1164 = or i1 %1162, %1163
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %46, align 1
  %1166 = trunc i64 %1161 to i32
  %1167 = and i32 %1166, 255
  %1168 = tail call i32 @llvm.ctpop.i32(i32 %1167)
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = xor i8 %1170, 1
  store i8 %1171, i8* %47, align 1
  %1172 = xor i64 %1152, %1161
  %1173 = lshr i64 %1172, 4
  %1174 = trunc i64 %1173 to i8
  %1175 = and i8 %1174, 1
  store i8 %1175, i8* %48, align 1
  %1176 = icmp eq i64 %1161, 0
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %49, align 1
  %1178 = lshr i64 %1161, 63
  %1179 = trunc i64 %1178 to i8
  store i8 %1179, i8* %50, align 1
  %1180 = lshr i64 %1152, 63
  %1181 = xor i64 %1178, %1180
  %1182 = xor i64 %1178, %1160
  %1183 = add nuw nsw i64 %1181, %1182
  %1184 = icmp eq i64 %1183, 2
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %51, align 1
  %1186 = add i64 %1148, 18
  store i64 %1186, i64* %PC.i, align 8
  %1187 = load i32, i32* %1118, align 4
  %1188 = add i32 %1187, -2
  %1189 = zext i32 %1188 to i64
  store i64 %1189, i64* %RDX.i1021, align 8
  %1190 = icmp ult i32 %1187, 2
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %46, align 1
  %1192 = and i32 %1188, 255
  %1193 = tail call i32 @llvm.ctpop.i32(i32 %1192)
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  %1196 = xor i8 %1195, 1
  store i8 %1196, i8* %47, align 1
  %1197 = xor i32 %1187, %1188
  %1198 = lshr i32 %1197, 4
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  store i8 %1200, i8* %48, align 1
  %1201 = icmp eq i32 %1188, 0
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %49, align 1
  %1203 = lshr i32 %1188, 31
  %1204 = trunc i32 %1203 to i8
  store i8 %1204, i8* %50, align 1
  %1205 = lshr i32 %1187, 31
  %1206 = xor i32 %1203, %1205
  %1207 = add nuw nsw i32 %1206, %1205
  %1208 = icmp eq i32 %1207, 2
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %51, align 1
  %1210 = load i64, i64* %RBP.i, align 8
  %1211 = add i64 %1210, -44
  %1212 = add i64 %1148, 24
  store i64 %1212, i64* %PC.i, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = sub i32 %1188, %1214
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RDX.i1021, align 8
  %1217 = icmp ult i32 %1188, %1214
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %46, align 1
  %1219 = and i32 %1215, 255
  %1220 = tail call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %47, align 1
  %1224 = xor i32 %1214, %1188
  %1225 = xor i32 %1224, %1215
  %1226 = lshr i32 %1225, 4
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %48, align 1
  %1229 = icmp eq i32 %1215, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %49, align 1
  %1231 = lshr i32 %1215, 31
  %1232 = trunc i32 %1231 to i8
  store i8 %1232, i8* %50, align 1
  %1233 = lshr i32 %1214, 31
  %1234 = xor i32 %1233, %1203
  %1235 = xor i32 %1231, %1203
  %1236 = add nuw nsw i32 %1235, %1234
  %1237 = icmp eq i32 %1236, 2
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %51, align 1
  %1239 = sext i32 %1215 to i64
  store i64 %1239, i64* %RCX.i1018, align 8
  %1240 = load i64, i64* %RAX.i1011, align 8
  %1241 = shl nsw i64 %1239, 3
  %1242 = add i64 %1241, %1240
  %1243 = add i64 %1148, 32
  store i64 %1243, i64* %PC.i, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  %1246 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1245, i64* %1246, align 1
  store double 0.000000e+00, double* %55, align 1
  %1247 = add i64 %1210, -16
  %1248 = add i64 %1148, 36
  store i64 %1248, i64* %PC.i, align 8
  %1249 = inttoptr i64 %1247 to i64*
  %1250 = load i64, i64* %1249, align 8
  store i64 %1250, i64* %RAX.i1011, align 8
  %1251 = add i64 %1210, -40
  %1252 = add i64 %1148, 40
  store i64 %1252, i64* %PC.i, align 8
  %1253 = inttoptr i64 %1251 to i32*
  %1254 = load i32, i32* %1253, align 4
  %1255 = sext i32 %1254 to i64
  %1256 = shl nsw i64 %1255, 13
  store i64 %1256, i64* %RCX.i1018, align 8
  %1257 = lshr i64 %1255, 50
  %1258 = and i64 %1257, 1
  %1259 = add i64 %1256, %1250
  store i64 %1259, i64* %RAX.i1011, align 8
  %1260 = icmp ult i64 %1259, %1250
  %1261 = icmp ult i64 %1259, %1256
  %1262 = or i1 %1260, %1261
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %46, align 1
  %1264 = trunc i64 %1259 to i32
  %1265 = and i32 %1264, 255
  %1266 = tail call i32 @llvm.ctpop.i32(i32 %1265)
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  store i8 %1269, i8* %47, align 1
  %1270 = xor i64 %1250, %1259
  %1271 = lshr i64 %1270, 4
  %1272 = trunc i64 %1271 to i8
  %1273 = and i8 %1272, 1
  store i8 %1273, i8* %48, align 1
  %1274 = icmp eq i64 %1259, 0
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %49, align 1
  %1276 = lshr i64 %1259, 63
  %1277 = trunc i64 %1276 to i8
  store i8 %1277, i8* %50, align 1
  %1278 = lshr i64 %1250, 63
  %1279 = xor i64 %1276, %1278
  %1280 = xor i64 %1276, %1258
  %1281 = add nuw nsw i64 %1279, %1280
  %1282 = icmp eq i64 %1281, 2
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %51, align 1
  %1284 = load i64, i64* %RBP.i, align 8
  %1285 = add i64 %1284, -8
  %1286 = add i64 %1148, 50
  store i64 %1286, i64* %PC.i, align 8
  %1287 = inttoptr i64 %1285 to i32*
  %1288 = load i32, i32* %1287, align 4
  %1289 = add i32 %1288, -2
  %1290 = zext i32 %1289 to i64
  store i64 %1290, i64* %RDX.i1021, align 8
  %1291 = icmp ult i32 %1288, 2
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %46, align 1
  %1293 = and i32 %1289, 255
  %1294 = tail call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %47, align 1
  %1298 = xor i32 %1288, %1289
  %1299 = lshr i32 %1298, 4
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  store i8 %1301, i8* %48, align 1
  %1302 = icmp eq i32 %1289, 0
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %49, align 1
  %1304 = lshr i32 %1289, 31
  %1305 = trunc i32 %1304 to i8
  store i8 %1305, i8* %50, align 1
  %1306 = lshr i32 %1288, 31
  %1307 = xor i32 %1304, %1306
  %1308 = add nuw nsw i32 %1307, %1306
  %1309 = icmp eq i32 %1308, 2
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %51, align 1
  %1311 = add i64 %1284, -44
  %1312 = add i64 %1148, 56
  store i64 %1312, i64* %PC.i, align 8
  %1313 = inttoptr i64 %1311 to i32*
  %1314 = load i32, i32* %1313, align 4
  %1315 = sub i32 %1289, %1314
  %1316 = lshr i32 %1315, 31
  %1317 = add i32 %1315, -1
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RDX.i1021, align 8
  %1319 = icmp eq i32 %1315, 0
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %46, align 1
  %1321 = and i32 %1317, 255
  %1322 = tail call i32 @llvm.ctpop.i32(i32 %1321)
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  store i8 %1325, i8* %47, align 1
  %1326 = xor i32 %1315, %1317
  %1327 = lshr i32 %1326, 4
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  store i8 %1329, i8* %48, align 1
  %1330 = icmp eq i32 %1317, 0
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %49, align 1
  %1332 = lshr i32 %1317, 31
  %1333 = trunc i32 %1332 to i8
  store i8 %1333, i8* %50, align 1
  %1334 = xor i32 %1332, %1316
  %1335 = add nuw nsw i32 %1334, %1316
  %1336 = icmp eq i32 %1335, 2
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %51, align 1
  %1338 = sext i32 %1317 to i64
  store i64 %1338, i64* %RCX.i1018, align 8
  %1339 = load i64, i64* %RAX.i1011, align 8
  %1340 = shl nsw i64 %1338, 3
  %1341 = add i64 %1340, %1339
  %1342 = add i64 %1148, 67
  store i64 %1342, i64* %PC.i, align 8
  %1343 = inttoptr i64 %1341 to i64*
  %1344 = load i64, i64* %1343, align 8
  %1345 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1344, i64* %1345, align 1
  store double 0.000000e+00, double* %59, align 1
  %1346 = load i64, i64* %RBP.i, align 8
  %1347 = add i64 %1346, -24
  %1348 = add i64 %1148, 71
  store i64 %1348, i64* %PC.i, align 8
  %1349 = inttoptr i64 %1347 to i64*
  %1350 = load i64, i64* %1349, align 8
  store i64 %1350, i64* %RAX.i1011, align 8
  %1351 = add i64 %1346, -40
  %1352 = add i64 %1148, 75
  store i64 %1352, i64* %PC.i, align 8
  %1353 = inttoptr i64 %1351 to i32*
  %1354 = load i32, i32* %1353, align 4
  %1355 = sext i32 %1354 to i64
  %1356 = shl nsw i64 %1355, 13
  store i64 %1356, i64* %RCX.i1018, align 8
  %1357 = lshr i64 %1355, 50
  %1358 = and i64 %1357, 1
  %1359 = add i64 %1356, %1350
  store i64 %1359, i64* %RAX.i1011, align 8
  %1360 = icmp ult i64 %1359, %1350
  %1361 = icmp ult i64 %1359, %1356
  %1362 = or i1 %1360, %1361
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %46, align 1
  %1364 = trunc i64 %1359 to i32
  %1365 = and i32 %1364, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365)
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %47, align 1
  %1370 = xor i64 %1350, %1359
  %1371 = lshr i64 %1370, 4
  %1372 = trunc i64 %1371 to i8
  %1373 = and i8 %1372, 1
  store i8 %1373, i8* %48, align 1
  %1374 = icmp eq i64 %1359, 0
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %49, align 1
  %1376 = lshr i64 %1359, 63
  %1377 = trunc i64 %1376 to i8
  store i8 %1377, i8* %50, align 1
  %1378 = lshr i64 %1350, 63
  %1379 = xor i64 %1376, %1378
  %1380 = xor i64 %1376, %1358
  %1381 = add nuw nsw i64 %1379, %1380
  %1382 = icmp eq i64 %1381, 2
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %51, align 1
  %1384 = add i64 %1346, -8
  %1385 = add i64 %1148, 85
  store i64 %1385, i64* %PC.i, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = zext i32 %1387 to i64
  store i64 %1388, i64* %RDX.i1021, align 8
  %1389 = add i64 %1346, -44
  %1390 = add i64 %1148, 88
  store i64 %1390, i64* %PC.i, align 8
  %1391 = inttoptr i64 %1389 to i32*
  %1392 = load i32, i32* %1391, align 4
  %1393 = sub i32 %1387, %1392
  %1394 = lshr i32 %1393, 31
  %1395 = add i32 %1393, -3
  %1396 = zext i32 %1395 to i64
  store i64 %1396, i64* %RDX.i1021, align 8
  %1397 = icmp ult i32 %1393, 3
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %46, align 1
  %1399 = and i32 %1395, 255
  %1400 = tail call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %47, align 1
  %1404 = xor i32 %1393, %1395
  %1405 = lshr i32 %1404, 4
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  store i8 %1407, i8* %48, align 1
  %1408 = icmp eq i32 %1395, 0
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %49, align 1
  %1410 = lshr i32 %1395, 31
  %1411 = trunc i32 %1410 to i8
  store i8 %1411, i8* %50, align 1
  %1412 = xor i32 %1410, %1394
  %1413 = add nuw nsw i32 %1412, %1394
  %1414 = icmp eq i32 %1413, 2
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %51, align 1
  %1416 = sext i32 %1395 to i64
  store i64 %1416, i64* %RCX.i1018, align 8
  %1417 = load i64, i64* %RAX.i1011, align 8
  %1418 = shl nsw i64 %1416, 3
  %1419 = add i64 %1418, %1417
  %1420 = add i64 %1148, 99
  store i64 %1420, i64* %PC.i, align 8
  %1421 = load double, double* %57, align 1
  %1422 = inttoptr i64 %1419 to double*
  %1423 = load double, double* %1422, align 8
  %1424 = fmul double %1421, %1423
  store double %1424, double* %57, align 1
  %1425 = load double, double* %53, align 1
  %1426 = fsub double %1425, %1424
  store double %1426, double* %53, align 1
  %1427 = load i64, i64* %RBP.i, align 8
  %1428 = add i64 %1427, -32
  %1429 = add i64 %1148, 107
  store i64 %1429, i64* %PC.i, align 8
  %1430 = inttoptr i64 %1428 to i64*
  %1431 = load i64, i64* %1430, align 8
  store i64 %1431, i64* %RAX.i1011, align 8
  %1432 = add i64 %1427, -40
  %1433 = add i64 %1148, 111
  store i64 %1433, i64* %PC.i, align 8
  %1434 = inttoptr i64 %1432 to i32*
  %1435 = load i32, i32* %1434, align 4
  %1436 = sext i32 %1435 to i64
  %1437 = shl nsw i64 %1436, 13
  store i64 %1437, i64* %RCX.i1018, align 8
  %1438 = lshr i64 %1436, 50
  %1439 = and i64 %1438, 1
  %1440 = add i64 %1437, %1431
  store i64 %1440, i64* %RAX.i1011, align 8
  %1441 = icmp ult i64 %1440, %1431
  %1442 = icmp ult i64 %1440, %1437
  %1443 = or i1 %1441, %1442
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %46, align 1
  %1445 = trunc i64 %1440 to i32
  %1446 = and i32 %1445, 255
  %1447 = tail call i32 @llvm.ctpop.i32(i32 %1446)
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = xor i8 %1449, 1
  store i8 %1450, i8* %47, align 1
  %1451 = xor i64 %1431, %1440
  %1452 = lshr i64 %1451, 4
  %1453 = trunc i64 %1452 to i8
  %1454 = and i8 %1453, 1
  store i8 %1454, i8* %48, align 1
  %1455 = icmp eq i64 %1440, 0
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %49, align 1
  %1457 = lshr i64 %1440, 63
  %1458 = trunc i64 %1457 to i8
  store i8 %1458, i8* %50, align 1
  %1459 = lshr i64 %1431, 63
  %1460 = xor i64 %1457, %1459
  %1461 = xor i64 %1457, %1439
  %1462 = add nuw nsw i64 %1460, %1461
  %1463 = icmp eq i64 %1462, 2
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %51, align 1
  %1465 = add i64 %1427, -8
  %1466 = add i64 %1148, 121
  store i64 %1466, i64* %PC.i, align 8
  %1467 = inttoptr i64 %1465 to i32*
  %1468 = load i32, i32* %1467, align 4
  %1469 = add i32 %1468, -3
  %1470 = zext i32 %1469 to i64
  store i64 %1470, i64* %RDX.i1021, align 8
  %1471 = icmp ult i32 %1468, 3
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %46, align 1
  %1473 = and i32 %1469, 255
  %1474 = tail call i32 @llvm.ctpop.i32(i32 %1473)
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = xor i8 %1476, 1
  store i8 %1477, i8* %47, align 1
  %1478 = xor i32 %1468, %1469
  %1479 = lshr i32 %1478, 4
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  store i8 %1481, i8* %48, align 1
  %1482 = icmp eq i32 %1469, 0
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %49, align 1
  %1484 = lshr i32 %1469, 31
  %1485 = trunc i32 %1484 to i8
  store i8 %1485, i8* %50, align 1
  %1486 = lshr i32 %1468, 31
  %1487 = xor i32 %1484, %1486
  %1488 = add nuw nsw i32 %1487, %1486
  %1489 = icmp eq i32 %1488, 2
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %51, align 1
  %1491 = load i64, i64* %RBP.i, align 8
  %1492 = add i64 %1491, -44
  %1493 = add i64 %1148, 127
  store i64 %1493, i64* %PC.i, align 8
  %1494 = inttoptr i64 %1492 to i32*
  %1495 = load i32, i32* %1494, align 4
  %1496 = sub i32 %1469, %1495
  %1497 = zext i32 %1496 to i64
  store i64 %1497, i64* %RDX.i1021, align 8
  %1498 = icmp ult i32 %1469, %1495
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %46, align 1
  %1500 = and i32 %1496, 255
  %1501 = tail call i32 @llvm.ctpop.i32(i32 %1500)
  %1502 = trunc i32 %1501 to i8
  %1503 = and i8 %1502, 1
  %1504 = xor i8 %1503, 1
  store i8 %1504, i8* %47, align 1
  %1505 = xor i32 %1495, %1469
  %1506 = xor i32 %1505, %1496
  %1507 = lshr i32 %1506, 4
  %1508 = trunc i32 %1507 to i8
  %1509 = and i8 %1508, 1
  store i8 %1509, i8* %48, align 1
  %1510 = icmp eq i32 %1496, 0
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %49, align 1
  %1512 = lshr i32 %1496, 31
  %1513 = trunc i32 %1512 to i8
  store i8 %1513, i8* %50, align 1
  %1514 = lshr i32 %1495, 31
  %1515 = xor i32 %1514, %1484
  %1516 = xor i32 %1512, %1484
  %1517 = add nuw nsw i32 %1516, %1515
  %1518 = icmp eq i32 %1517, 2
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %51, align 1
  %1520 = sext i32 %1496 to i64
  store i64 %1520, i64* %RCX.i1018, align 8
  %1521 = load i64, i64* %RAX.i1011, align 8
  %1522 = shl nsw i64 %1520, 3
  %1523 = add i64 %1522, %1521
  %1524 = add i64 %1148, 135
  store i64 %1524, i64* %PC.i, align 8
  %1525 = load double, double* %53, align 1
  %1526 = inttoptr i64 %1523 to double*
  %1527 = load double, double* %1526, align 8
  %1528 = fdiv double %1525, %1527
  store double %1528, double* %53, align 1
  %1529 = add i64 %1491, -16
  %1530 = add i64 %1148, 139
  store i64 %1530, i64* %PC.i, align 8
  %1531 = inttoptr i64 %1529 to i64*
  %1532 = load i64, i64* %1531, align 8
  store i64 %1532, i64* %RAX.i1011, align 8
  %1533 = add i64 %1491, -40
  %1534 = add i64 %1148, 143
  store i64 %1534, i64* %PC.i, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = sext i32 %1536 to i64
  %1538 = shl nsw i64 %1537, 13
  store i64 %1538, i64* %RCX.i1018, align 8
  %1539 = lshr i64 %1537, 50
  %1540 = and i64 %1539, 1
  %1541 = add i64 %1538, %1532
  store i64 %1541, i64* %RAX.i1011, align 8
  %1542 = icmp ult i64 %1541, %1532
  %1543 = icmp ult i64 %1541, %1538
  %1544 = or i1 %1542, %1543
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %46, align 1
  %1546 = trunc i64 %1541 to i32
  %1547 = and i32 %1546, 255
  %1548 = tail call i32 @llvm.ctpop.i32(i32 %1547)
  %1549 = trunc i32 %1548 to i8
  %1550 = and i8 %1549, 1
  %1551 = xor i8 %1550, 1
  store i8 %1551, i8* %47, align 1
  %1552 = xor i64 %1532, %1541
  %1553 = lshr i64 %1552, 4
  %1554 = trunc i64 %1553 to i8
  %1555 = and i8 %1554, 1
  store i8 %1555, i8* %48, align 1
  %1556 = icmp eq i64 %1541, 0
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %49, align 1
  %1558 = lshr i64 %1541, 63
  %1559 = trunc i64 %1558 to i8
  store i8 %1559, i8* %50, align 1
  %1560 = lshr i64 %1532, 63
  %1561 = xor i64 %1558, %1560
  %1562 = xor i64 %1558, %1540
  %1563 = add nuw nsw i64 %1561, %1562
  %1564 = icmp eq i64 %1563, 2
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %51, align 1
  %1566 = load i64, i64* %RBP.i, align 8
  %1567 = add i64 %1566, -8
  %1568 = add i64 %1148, 153
  store i64 %1568, i64* %PC.i, align 8
  %1569 = inttoptr i64 %1567 to i32*
  %1570 = load i32, i32* %1569, align 4
  %1571 = zext i32 %1570 to i64
  store i64 %1571, i64* %RDX.i1021, align 8
  %1572 = add i64 %1566, -44
  %1573 = add i64 %1148, 156
  store i64 %1573, i64* %PC.i, align 8
  %1574 = inttoptr i64 %1572 to i32*
  %1575 = load i32, i32* %1574, align 4
  %1576 = sub i32 %1570, %1575
  %1577 = lshr i32 %1576, 31
  %1578 = add i32 %1576, -2
  %1579 = zext i32 %1578 to i64
  store i64 %1579, i64* %RDX.i1021, align 8
  %1580 = icmp ult i32 %1576, 2
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %46, align 1
  %1582 = and i32 %1578, 255
  %1583 = tail call i32 @llvm.ctpop.i32(i32 %1582)
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  %1586 = xor i8 %1585, 1
  store i8 %1586, i8* %47, align 1
  %1587 = xor i32 %1576, %1578
  %1588 = lshr i32 %1587, 4
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  store i8 %1590, i8* %48, align 1
  %1591 = icmp eq i32 %1578, 0
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %49, align 1
  %1593 = lshr i32 %1578, 31
  %1594 = trunc i32 %1593 to i8
  store i8 %1594, i8* %50, align 1
  %1595 = xor i32 %1593, %1577
  %1596 = add nuw nsw i32 %1595, %1577
  %1597 = icmp eq i32 %1596, 2
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %51, align 1
  %1599 = sext i32 %1578 to i64
  store i64 %1599, i64* %RCX.i1018, align 8
  %1600 = load i64, i64* %RAX.i1011, align 8
  %1601 = shl nsw i64 %1599, 3
  %1602 = add i64 %1601, %1600
  %1603 = add i64 %1148, 167
  store i64 %1603, i64* %PC.i, align 8
  %1604 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1605 = load i64, i64* %1604, align 1
  %1606 = inttoptr i64 %1602 to i64*
  store i64 %1605, i64* %1606, align 8
  %1607 = load i64, i64* %RBP.i, align 8
  %1608 = add i64 %1607, -44
  %1609 = load i64, i64* %PC.i, align 8
  %1610 = add i64 %1609, 3
  store i64 %1610, i64* %PC.i, align 8
  %1611 = inttoptr i64 %1608 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = add i32 %1612, 1
  %1614 = zext i32 %1613 to i64
  store i64 %1614, i64* %RAX.i1011, align 8
  %1615 = icmp eq i32 %1612, -1
  %1616 = icmp eq i32 %1613, 0
  %1617 = or i1 %1615, %1616
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %46, align 1
  %1619 = and i32 %1613, 255
  %1620 = tail call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  store i8 %1623, i8* %47, align 1
  %1624 = xor i32 %1612, %1613
  %1625 = lshr i32 %1624, 4
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  store i8 %1627, i8* %48, align 1
  %1628 = icmp eq i32 %1613, 0
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %49, align 1
  %1630 = lshr i32 %1613, 31
  %1631 = trunc i32 %1630 to i8
  store i8 %1631, i8* %50, align 1
  %1632 = lshr i32 %1612, 31
  %1633 = xor i32 %1630, %1632
  %1634 = add nuw nsw i32 %1633, %1630
  %1635 = icmp eq i32 %1634, 2
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %51, align 1
  %1637 = add i64 %1609, 9
  store i64 %1637, i64* %PC.i, align 8
  store i32 %1613, i32* %1611, align 4
  %1638 = load i64, i64* %PC.i, align 8
  %1639 = add i64 %1638, -193
  store i64 %1639, i64* %3, align 8
  br label %block_.L_400d99

block_.L_400e5f:                                  ; preds = %block_.L_400d99
  %1640 = add i64 %1110, -40
  %1641 = add i64 %1148, 8
  store i64 %1641, i64* %PC.i, align 8
  %1642 = inttoptr i64 %1640 to i32*
  %1643 = load i32, i32* %1642, align 4
  %1644 = add i32 %1643, 1
  %1645 = zext i32 %1644 to i64
  store i64 %1645, i64* %RAX.i1011, align 8
  %1646 = icmp eq i32 %1643, -1
  %1647 = icmp eq i32 %1644, 0
  %1648 = or i1 %1646, %1647
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %46, align 1
  %1650 = and i32 %1644, 255
  %1651 = tail call i32 @llvm.ctpop.i32(i32 %1650)
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = xor i8 %1653, 1
  store i8 %1654, i8* %47, align 1
  %1655 = xor i32 %1643, %1644
  %1656 = lshr i32 %1655, 4
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  store i8 %1658, i8* %48, align 1
  %1659 = icmp eq i32 %1644, 0
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %49, align 1
  %1661 = lshr i32 %1644, 31
  %1662 = trunc i32 %1661 to i8
  store i8 %1662, i8* %50, align 1
  %1663 = lshr i32 %1643, 31
  %1664 = xor i32 %1661, %1663
  %1665 = add nuw nsw i32 %1664, %1661
  %1666 = icmp eq i32 %1665, 2
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %51, align 1
  %1668 = add i64 %1148, 14
  store i64 %1668, i64* %PC.i, align 8
  store i32 %1644, i32* %1642, align 4
  %1669 = load i64, i64* %PC.i, align 8
  %1670 = add i64 %1669, -231
  store i64 %1670, i64* %3, align 8
  br label %block_.L_400d86

block_.L_400e72:                                  ; preds = %block_.L_400d86
  %1671 = add i64 %1105, 7
  store i64 %1671, i64* %PC.i, align 8
  store i32 1, i32* %1072, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e79

block_.L_400e79:                                  ; preds = %block_.L_400fad, %block_.L_400e72
  %1672 = phi i64 [ %2292, %block_.L_400fad ], [ %.pre6, %block_.L_400e72 ]
  %1673 = load i64, i64* %RBP.i, align 8
  %1674 = add i64 %1673, -40
  %1675 = add i64 %1672, 3
  store i64 %1675, i64* %PC.i, align 8
  %1676 = inttoptr i64 %1674 to i32*
  %1677 = load i32, i32* %1676, align 4
  %1678 = zext i32 %1677 to i64
  store i64 %1678, i64* %RAX.i1011, align 8
  %1679 = add i64 %1673, -8
  %1680 = add i64 %1672, 6
  store i64 %1680, i64* %PC.i, align 8
  %1681 = inttoptr i64 %1679 to i32*
  %1682 = load i32, i32* %1681, align 4
  %1683 = sub i32 %1677, %1682
  %1684 = icmp ult i32 %1677, %1682
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %46, align 1
  %1686 = and i32 %1683, 255
  %1687 = tail call i32 @llvm.ctpop.i32(i32 %1686)
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  %1690 = xor i8 %1689, 1
  store i8 %1690, i8* %47, align 1
  %1691 = xor i32 %1682, %1677
  %1692 = xor i32 %1691, %1683
  %1693 = lshr i32 %1692, 4
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  store i8 %1695, i8* %48, align 1
  %1696 = icmp eq i32 %1683, 0
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %49, align 1
  %1698 = lshr i32 %1683, 31
  %1699 = trunc i32 %1698 to i8
  store i8 %1699, i8* %50, align 1
  %1700 = lshr i32 %1677, 31
  %1701 = lshr i32 %1682, 31
  %1702 = xor i32 %1701, %1700
  %1703 = xor i32 %1698, %1700
  %1704 = add nuw nsw i32 %1703, %1702
  %1705 = icmp eq i32 %1704, 2
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %51, align 1
  %1707 = icmp ne i8 %1699, 0
  %1708 = xor i1 %1707, %1705
  %.v16 = select i1 %1708, i64 12, i64 327
  %1709 = add i64 %1672, %.v16
  %1710 = add i64 %1673, -44
  %1711 = add i64 %1709, 7
  store i64 %1711, i64* %PC.i, align 8
  %1712 = inttoptr i64 %1710 to i32*
  store i32 0, i32* %1712, align 4
  %.pre8 = load i64, i64* %PC.i, align 8
  br i1 %1708, label %block_.L_400e8c, label %block_.L_400fc7

block_.L_400e8c:                                  ; preds = %block_.L_400e79, %block_400e98
  %1713 = phi i64 [ %2261, %block_400e98 ], [ %.pre8, %block_.L_400e79 ]
  %1714 = load i64, i64* %RBP.i, align 8
  %1715 = add i64 %1714, -44
  %1716 = add i64 %1713, 3
  store i64 %1716, i64* %PC.i, align 8
  %1717 = inttoptr i64 %1715 to i32*
  %1718 = load i32, i32* %1717, align 4
  %1719 = zext i32 %1718 to i64
  store i64 %1719, i64* %RAX.i1011, align 8
  %1720 = add i64 %1714, -8
  %1721 = add i64 %1713, 6
  store i64 %1721, i64* %PC.i, align 8
  %1722 = inttoptr i64 %1720 to i32*
  %1723 = load i32, i32* %1722, align 4
  %1724 = sub i32 %1718, %1723
  %1725 = icmp ult i32 %1718, %1723
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %46, align 1
  %1727 = and i32 %1724, 255
  %1728 = tail call i32 @llvm.ctpop.i32(i32 %1727)
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = xor i8 %1730, 1
  store i8 %1731, i8* %47, align 1
  %1732 = xor i32 %1723, %1718
  %1733 = xor i32 %1732, %1724
  %1734 = lshr i32 %1733, 4
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  store i8 %1736, i8* %48, align 1
  %1737 = icmp eq i32 %1724, 0
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %49, align 1
  %1739 = lshr i32 %1724, 31
  %1740 = trunc i32 %1739 to i8
  store i8 %1740, i8* %50, align 1
  %1741 = lshr i32 %1718, 31
  %1742 = lshr i32 %1723, 31
  %1743 = xor i32 %1742, %1741
  %1744 = xor i32 %1739, %1741
  %1745 = add nuw nsw i32 %1744, %1743
  %1746 = icmp eq i32 %1745, 2
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %51, align 1
  %1748 = icmp ne i8 %1740, 0
  %1749 = xor i1 %1748, %1746
  %.v17 = select i1 %1749, i64 12, i64 289
  %1750 = add i64 %1713, %.v17
  store i64 %1750, i64* %3, align 8
  br i1 %1749, label %block_400e98, label %block_.L_400fad

block_400e98:                                     ; preds = %block_.L_400e8c
  %1751 = add i64 %1714, -16
  %1752 = add i64 %1750, 4
  store i64 %1752, i64* %PC.i, align 8
  %1753 = inttoptr i64 %1751 to i64*
  %1754 = load i64, i64* %1753, align 8
  store i64 %1754, i64* %RAX.i1011, align 8
  %1755 = add i64 %1714, -40
  %1756 = add i64 %1750, 8
  store i64 %1756, i64* %PC.i, align 8
  %1757 = inttoptr i64 %1755 to i32*
  %1758 = load i32, i32* %1757, align 4
  %1759 = sext i32 %1758 to i64
  %1760 = shl nsw i64 %1759, 13
  store i64 %1760, i64* %RCX.i1018, align 8
  %1761 = lshr i64 %1759, 50
  %1762 = and i64 %1761, 1
  %1763 = add i64 %1760, %1754
  store i64 %1763, i64* %RAX.i1011, align 8
  %1764 = icmp ult i64 %1763, %1754
  %1765 = icmp ult i64 %1763, %1760
  %1766 = or i1 %1764, %1765
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %46, align 1
  %1768 = trunc i64 %1763 to i32
  %1769 = and i32 %1768, 255
  %1770 = tail call i32 @llvm.ctpop.i32(i32 %1769)
  %1771 = trunc i32 %1770 to i8
  %1772 = and i8 %1771, 1
  %1773 = xor i8 %1772, 1
  store i8 %1773, i8* %47, align 1
  %1774 = xor i64 %1754, %1763
  %1775 = lshr i64 %1774, 4
  %1776 = trunc i64 %1775 to i8
  %1777 = and i8 %1776, 1
  store i8 %1777, i8* %48, align 1
  %1778 = icmp eq i64 %1763, 0
  %1779 = zext i1 %1778 to i8
  store i8 %1779, i8* %49, align 1
  %1780 = lshr i64 %1763, 63
  %1781 = trunc i64 %1780 to i8
  store i8 %1781, i8* %50, align 1
  %1782 = lshr i64 %1754, 63
  %1783 = xor i64 %1780, %1782
  %1784 = xor i64 %1780, %1762
  %1785 = add nuw nsw i64 %1783, %1784
  %1786 = icmp eq i64 %1785, 2
  %1787 = zext i1 %1786 to i8
  store i8 %1787, i8* %51, align 1
  %1788 = add i64 %1750, 19
  store i64 %1788, i64* %PC.i, align 8
  %1789 = load i32, i32* %1717, align 4
  %1790 = sext i32 %1789 to i64
  store i64 %1790, i64* %RCX.i1018, align 8
  %1791 = shl nsw i64 %1790, 3
  %1792 = add i64 %1791, %1763
  %1793 = add i64 %1750, 24
  store i64 %1793, i64* %PC.i, align 8
  %1794 = inttoptr i64 %1792 to i64*
  %1795 = load i64, i64* %1794, align 8
  %1796 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1795, i64* %1796, align 1
  store double 0.000000e+00, double* %55, align 1
  %1797 = add i64 %1750, 28
  store i64 %1797, i64* %PC.i, align 8
  %1798 = load i64, i64* %1753, align 8
  store i64 %1798, i64* %RAX.i1011, align 8
  %1799 = add i64 %1750, 31
  store i64 %1799, i64* %PC.i, align 8
  %1800 = load i32, i32* %1757, align 4
  %1801 = add i32 %1800, -1
  %1802 = zext i32 %1801 to i64
  store i64 %1802, i64* %RDX.i1021, align 8
  %1803 = sext i32 %1801 to i64
  %1804 = shl nsw i64 %1803, 13
  store i64 %1804, i64* %RCX.i1018, align 8
  %1805 = lshr i64 %1803, 50
  %1806 = and i64 %1805, 1
  %1807 = add i64 %1804, %1798
  store i64 %1807, i64* %RAX.i1011, align 8
  %1808 = icmp ult i64 %1807, %1798
  %1809 = icmp ult i64 %1807, %1804
  %1810 = or i1 %1808, %1809
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %46, align 1
  %1812 = trunc i64 %1807 to i32
  %1813 = and i32 %1812, 255
  %1814 = tail call i32 @llvm.ctpop.i32(i32 %1813)
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  store i8 %1817, i8* %47, align 1
  %1818 = xor i64 %1798, %1807
  %1819 = lshr i64 %1818, 4
  %1820 = trunc i64 %1819 to i8
  %1821 = and i8 %1820, 1
  store i8 %1821, i8* %48, align 1
  %1822 = icmp eq i64 %1807, 0
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %49, align 1
  %1824 = lshr i64 %1807, 63
  %1825 = trunc i64 %1824 to i8
  store i8 %1825, i8* %50, align 1
  %1826 = lshr i64 %1798, 63
  %1827 = xor i64 %1824, %1826
  %1828 = xor i64 %1824, %1806
  %1829 = add nuw nsw i64 %1827, %1828
  %1830 = icmp eq i64 %1829, 2
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %51, align 1
  %1832 = load i64, i64* %RBP.i, align 8
  %1833 = add i64 %1832, -44
  %1834 = add i64 %1750, 48
  store i64 %1834, i64* %PC.i, align 8
  %1835 = inttoptr i64 %1833 to i32*
  %1836 = load i32, i32* %1835, align 4
  %1837 = sext i32 %1836 to i64
  store i64 %1837, i64* %RCX.i1018, align 8
  %1838 = shl nsw i64 %1837, 3
  %1839 = add i64 %1838, %1807
  %1840 = add i64 %1750, 53
  store i64 %1840, i64* %PC.i, align 8
  %1841 = inttoptr i64 %1839 to double*
  %1842 = load double, double* %1841, align 8
  store double %1842, double* %57, align 1
  store double 0.000000e+00, double* %59, align 1
  %1843 = add i64 %1832, -24
  %1844 = add i64 %1750, 57
  store i64 %1844, i64* %PC.i, align 8
  %1845 = inttoptr i64 %1843 to i64*
  %1846 = load i64, i64* %1845, align 8
  store i64 %1846, i64* %RAX.i1011, align 8
  %1847 = add i64 %1832, -40
  %1848 = add i64 %1750, 61
  store i64 %1848, i64* %PC.i, align 8
  %1849 = inttoptr i64 %1847 to i32*
  %1850 = load i32, i32* %1849, align 4
  %1851 = sext i32 %1850 to i64
  %1852 = shl nsw i64 %1851, 13
  store i64 %1852, i64* %RCX.i1018, align 8
  %1853 = lshr i64 %1851, 50
  %1854 = and i64 %1853, 1
  %1855 = add i64 %1852, %1846
  store i64 %1855, i64* %RAX.i1011, align 8
  %1856 = icmp ult i64 %1855, %1846
  %1857 = icmp ult i64 %1855, %1852
  %1858 = or i1 %1856, %1857
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %46, align 1
  %1860 = trunc i64 %1855 to i32
  %1861 = and i32 %1860, 255
  %1862 = tail call i32 @llvm.ctpop.i32(i32 %1861)
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  %1865 = xor i8 %1864, 1
  store i8 %1865, i8* %47, align 1
  %1866 = xor i64 %1846, %1855
  %1867 = lshr i64 %1866, 4
  %1868 = trunc i64 %1867 to i8
  %1869 = and i8 %1868, 1
  store i8 %1869, i8* %48, align 1
  %1870 = icmp eq i64 %1855, 0
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %49, align 1
  %1872 = lshr i64 %1855, 63
  %1873 = trunc i64 %1872 to i8
  store i8 %1873, i8* %50, align 1
  %1874 = lshr i64 %1846, 63
  %1875 = xor i64 %1872, %1874
  %1876 = xor i64 %1872, %1854
  %1877 = add nuw nsw i64 %1875, %1876
  %1878 = icmp eq i64 %1877, 2
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %51, align 1
  %1880 = add i64 %1750, 72
  store i64 %1880, i64* %PC.i, align 8
  %1881 = load i32, i32* %1835, align 4
  %1882 = sext i32 %1881 to i64
  store i64 %1882, i64* %RCX.i1018, align 8
  %1883 = shl nsw i64 %1882, 3
  %1884 = add i64 %1883, %1855
  %1885 = add i64 %1750, 77
  store i64 %1885, i64* %PC.i, align 8
  %1886 = inttoptr i64 %1884 to double*
  %1887 = load double, double* %1886, align 8
  %1888 = fmul double %1842, %1887
  store double %1888, double* %57, align 1
  store i64 0, i64* %58, align 1
  %1889 = add i64 %1832, -32
  %1890 = add i64 %1750, 81
  store i64 %1890, i64* %PC.i, align 8
  %1891 = inttoptr i64 %1889 to i64*
  %1892 = load i64, i64* %1891, align 8
  store i64 %1892, i64* %RAX.i1011, align 8
  %1893 = load i64, i64* %RBP.i, align 8
  %1894 = add i64 %1893, -40
  %1895 = add i64 %1750, 84
  store i64 %1895, i64* %PC.i, align 8
  %1896 = inttoptr i64 %1894 to i32*
  %1897 = load i32, i32* %1896, align 4
  %1898 = add i32 %1897, -1
  %1899 = zext i32 %1898 to i64
  store i64 %1899, i64* %RDX.i1021, align 8
  %1900 = sext i32 %1898 to i64
  %1901 = shl nsw i64 %1900, 13
  store i64 %1901, i64* %RCX.i1018, align 8
  %1902 = lshr i64 %1900, 50
  %1903 = and i64 %1902, 1
  %1904 = add i64 %1901, %1892
  store i64 %1904, i64* %RAX.i1011, align 8
  %1905 = icmp ult i64 %1904, %1892
  %1906 = icmp ult i64 %1904, %1901
  %1907 = or i1 %1905, %1906
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %46, align 1
  %1909 = trunc i64 %1904 to i32
  %1910 = and i32 %1909, 255
  %1911 = tail call i32 @llvm.ctpop.i32(i32 %1910)
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  store i8 %1914, i8* %47, align 1
  %1915 = xor i64 %1892, %1904
  %1916 = lshr i64 %1915, 4
  %1917 = trunc i64 %1916 to i8
  %1918 = and i8 %1917, 1
  store i8 %1918, i8* %48, align 1
  %1919 = icmp eq i64 %1904, 0
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %49, align 1
  %1921 = lshr i64 %1904, 63
  %1922 = trunc i64 %1921 to i8
  store i8 %1922, i8* %50, align 1
  %1923 = lshr i64 %1892, 63
  %1924 = xor i64 %1921, %1923
  %1925 = xor i64 %1921, %1903
  %1926 = add nuw nsw i64 %1924, %1925
  %1927 = icmp eq i64 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %51, align 1
  %1929 = load i64, i64* %RBP.i, align 8
  %1930 = add i64 %1929, -44
  %1931 = add i64 %1750, 101
  store i64 %1931, i64* %PC.i, align 8
  %1932 = inttoptr i64 %1930 to i32*
  %1933 = load i32, i32* %1932, align 4
  %1934 = sext i32 %1933 to i64
  store i64 %1934, i64* %RCX.i1018, align 8
  %1935 = shl nsw i64 %1934, 3
  %1936 = add i64 %1935, %1904
  %1937 = add i64 %1750, 106
  store i64 %1937, i64* %PC.i, align 8
  %1938 = load double, double* %57, align 1
  %1939 = inttoptr i64 %1936 to double*
  %1940 = load double, double* %1939, align 8
  %1941 = fdiv double %1938, %1940
  store double %1941, double* %57, align 1
  %1942 = load double, double* %53, align 1
  %1943 = fsub double %1942, %1941
  store double %1943, double* %53, align 1
  %1944 = add i64 %1929, -16
  %1945 = add i64 %1750, 114
  store i64 %1945, i64* %PC.i, align 8
  %1946 = inttoptr i64 %1944 to i64*
  %1947 = load i64, i64* %1946, align 8
  store i64 %1947, i64* %RAX.i1011, align 8
  %1948 = add i64 %1929, -40
  %1949 = add i64 %1750, 118
  store i64 %1949, i64* %PC.i, align 8
  %1950 = inttoptr i64 %1948 to i32*
  %1951 = load i32, i32* %1950, align 4
  %1952 = sext i32 %1951 to i64
  %1953 = shl nsw i64 %1952, 13
  store i64 %1953, i64* %RCX.i1018, align 8
  %1954 = lshr i64 %1952, 50
  %1955 = and i64 %1954, 1
  %1956 = add i64 %1953, %1947
  store i64 %1956, i64* %RAX.i1011, align 8
  %1957 = icmp ult i64 %1956, %1947
  %1958 = icmp ult i64 %1956, %1953
  %1959 = or i1 %1957, %1958
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %46, align 1
  %1961 = trunc i64 %1956 to i32
  %1962 = and i32 %1961, 255
  %1963 = tail call i32 @llvm.ctpop.i32(i32 %1962)
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  %1966 = xor i8 %1965, 1
  store i8 %1966, i8* %47, align 1
  %1967 = xor i64 %1947, %1956
  %1968 = lshr i64 %1967, 4
  %1969 = trunc i64 %1968 to i8
  %1970 = and i8 %1969, 1
  store i8 %1970, i8* %48, align 1
  %1971 = icmp eq i64 %1956, 0
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %49, align 1
  %1973 = lshr i64 %1956, 63
  %1974 = trunc i64 %1973 to i8
  store i8 %1974, i8* %50, align 1
  %1975 = lshr i64 %1947, 63
  %1976 = xor i64 %1973, %1975
  %1977 = xor i64 %1973, %1955
  %1978 = add nuw nsw i64 %1976, %1977
  %1979 = icmp eq i64 %1978, 2
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %51, align 1
  %1981 = add i64 %1750, 129
  store i64 %1981, i64* %PC.i, align 8
  %1982 = load i32, i32* %1932, align 4
  %1983 = sext i32 %1982 to i64
  store i64 %1983, i64* %RCX.i1018, align 8
  %1984 = shl nsw i64 %1983, 3
  %1985 = add i64 %1984, %1956
  %1986 = add i64 %1750, 134
  store i64 %1986, i64* %PC.i, align 8
  %1987 = inttoptr i64 %1985 to double*
  store double %1943, double* %1987, align 8
  %1988 = load i64, i64* %RBP.i, align 8
  %1989 = add i64 %1988, -32
  %1990 = load i64, i64* %PC.i, align 8
  %1991 = add i64 %1990, 4
  store i64 %1991, i64* %PC.i, align 8
  %1992 = inttoptr i64 %1989 to i64*
  %1993 = load i64, i64* %1992, align 8
  store i64 %1993, i64* %RAX.i1011, align 8
  %1994 = add i64 %1988, -40
  %1995 = add i64 %1990, 8
  store i64 %1995, i64* %PC.i, align 8
  %1996 = inttoptr i64 %1994 to i32*
  %1997 = load i32, i32* %1996, align 4
  %1998 = sext i32 %1997 to i64
  %1999 = shl nsw i64 %1998, 13
  store i64 %1999, i64* %RCX.i1018, align 8
  %2000 = lshr i64 %1998, 50
  %2001 = and i64 %2000, 1
  %2002 = add i64 %1999, %1993
  store i64 %2002, i64* %RAX.i1011, align 8
  %2003 = icmp ult i64 %2002, %1993
  %2004 = icmp ult i64 %2002, %1999
  %2005 = or i1 %2003, %2004
  %2006 = zext i1 %2005 to i8
  store i8 %2006, i8* %46, align 1
  %2007 = trunc i64 %2002 to i32
  %2008 = and i32 %2007, 255
  %2009 = tail call i32 @llvm.ctpop.i32(i32 %2008)
  %2010 = trunc i32 %2009 to i8
  %2011 = and i8 %2010, 1
  %2012 = xor i8 %2011, 1
  store i8 %2012, i8* %47, align 1
  %2013 = xor i64 %1993, %2002
  %2014 = lshr i64 %2013, 4
  %2015 = trunc i64 %2014 to i8
  %2016 = and i8 %2015, 1
  store i8 %2016, i8* %48, align 1
  %2017 = icmp eq i64 %2002, 0
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %49, align 1
  %2019 = lshr i64 %2002, 63
  %2020 = trunc i64 %2019 to i8
  store i8 %2020, i8* %50, align 1
  %2021 = lshr i64 %1993, 63
  %2022 = xor i64 %2019, %2021
  %2023 = xor i64 %2019, %2001
  %2024 = add nuw nsw i64 %2022, %2023
  %2025 = icmp eq i64 %2024, 2
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %51, align 1
  %2027 = add i64 %1988, -44
  %2028 = add i64 %1990, 19
  store i64 %2028, i64* %PC.i, align 8
  %2029 = inttoptr i64 %2027 to i32*
  %2030 = load i32, i32* %2029, align 4
  %2031 = sext i32 %2030 to i64
  store i64 %2031, i64* %RCX.i1018, align 8
  %2032 = shl nsw i64 %2031, 3
  %2033 = add i64 %2032, %2002
  %2034 = add i64 %1990, 24
  store i64 %2034, i64* %PC.i, align 8
  %2035 = inttoptr i64 %2033 to i64*
  %2036 = load i64, i64* %2035, align 8
  %2037 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2036, i64* %2037, align 1
  store double 0.000000e+00, double* %55, align 1
  %2038 = add i64 %1988, -24
  %2039 = add i64 %1990, 28
  store i64 %2039, i64* %PC.i, align 8
  %2040 = inttoptr i64 %2038 to i64*
  %2041 = load i64, i64* %2040, align 8
  store i64 %2041, i64* %RAX.i1011, align 8
  %2042 = add i64 %1990, 32
  store i64 %2042, i64* %PC.i, align 8
  %2043 = load i32, i32* %1996, align 4
  %2044 = sext i32 %2043 to i64
  %2045 = shl nsw i64 %2044, 13
  store i64 %2045, i64* %RCX.i1018, align 8
  %2046 = lshr i64 %2044, 50
  %2047 = and i64 %2046, 1
  %2048 = add i64 %2045, %2041
  store i64 %2048, i64* %RAX.i1011, align 8
  %2049 = icmp ult i64 %2048, %2041
  %2050 = icmp ult i64 %2048, %2045
  %2051 = or i1 %2049, %2050
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %46, align 1
  %2053 = trunc i64 %2048 to i32
  %2054 = and i32 %2053, 255
  %2055 = tail call i32 @llvm.ctpop.i32(i32 %2054)
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  %2058 = xor i8 %2057, 1
  store i8 %2058, i8* %47, align 1
  %2059 = xor i64 %2041, %2048
  %2060 = lshr i64 %2059, 4
  %2061 = trunc i64 %2060 to i8
  %2062 = and i8 %2061, 1
  store i8 %2062, i8* %48, align 1
  %2063 = icmp eq i64 %2048, 0
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %49, align 1
  %2065 = lshr i64 %2048, 63
  %2066 = trunc i64 %2065 to i8
  store i8 %2066, i8* %50, align 1
  %2067 = lshr i64 %2041, 63
  %2068 = xor i64 %2065, %2067
  %2069 = xor i64 %2065, %2047
  %2070 = add nuw nsw i64 %2068, %2069
  %2071 = icmp eq i64 %2070, 2
  %2072 = zext i1 %2071 to i8
  store i8 %2072, i8* %51, align 1
  %2073 = load i64, i64* %RBP.i, align 8
  %2074 = add i64 %2073, -44
  %2075 = add i64 %1990, 43
  store i64 %2075, i64* %PC.i, align 8
  %2076 = inttoptr i64 %2074 to i32*
  %2077 = load i32, i32* %2076, align 4
  %2078 = sext i32 %2077 to i64
  store i64 %2078, i64* %RCX.i1018, align 8
  %2079 = shl nsw i64 %2078, 3
  %2080 = add i64 %2079, %2048
  %2081 = add i64 %1990, 48
  store i64 %2081, i64* %PC.i, align 8
  %2082 = inttoptr i64 %2080 to double*
  %2083 = load double, double* %2082, align 8
  store double %2083, double* %57, align 1
  store double 0.000000e+00, double* %59, align 1
  %2084 = add i64 %2073, -24
  %2085 = add i64 %1990, 52
  store i64 %2085, i64* %PC.i, align 8
  %2086 = inttoptr i64 %2084 to i64*
  %2087 = load i64, i64* %2086, align 8
  store i64 %2087, i64* %RAX.i1011, align 8
  %2088 = add i64 %2073, -40
  %2089 = add i64 %1990, 56
  store i64 %2089, i64* %PC.i, align 8
  %2090 = inttoptr i64 %2088 to i32*
  %2091 = load i32, i32* %2090, align 4
  %2092 = sext i32 %2091 to i64
  %2093 = shl nsw i64 %2092, 13
  store i64 %2093, i64* %RCX.i1018, align 8
  %2094 = lshr i64 %2092, 50
  %2095 = and i64 %2094, 1
  %2096 = add i64 %2093, %2087
  store i64 %2096, i64* %RAX.i1011, align 8
  %2097 = icmp ult i64 %2096, %2087
  %2098 = icmp ult i64 %2096, %2093
  %2099 = or i1 %2097, %2098
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %46, align 1
  %2101 = trunc i64 %2096 to i32
  %2102 = and i32 %2101, 255
  %2103 = tail call i32 @llvm.ctpop.i32(i32 %2102)
  %2104 = trunc i32 %2103 to i8
  %2105 = and i8 %2104, 1
  %2106 = xor i8 %2105, 1
  store i8 %2106, i8* %47, align 1
  %2107 = xor i64 %2087, %2096
  %2108 = lshr i64 %2107, 4
  %2109 = trunc i64 %2108 to i8
  %2110 = and i8 %2109, 1
  store i8 %2110, i8* %48, align 1
  %2111 = icmp eq i64 %2096, 0
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %49, align 1
  %2113 = lshr i64 %2096, 63
  %2114 = trunc i64 %2113 to i8
  store i8 %2114, i8* %50, align 1
  %2115 = lshr i64 %2087, 63
  %2116 = xor i64 %2113, %2115
  %2117 = xor i64 %2113, %2095
  %2118 = add nuw nsw i64 %2116, %2117
  %2119 = icmp eq i64 %2118, 2
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %51, align 1
  %2121 = add i64 %1990, 67
  store i64 %2121, i64* %PC.i, align 8
  %2122 = load i32, i32* %2076, align 4
  %2123 = sext i32 %2122 to i64
  store i64 %2123, i64* %RCX.i1018, align 8
  %2124 = shl nsw i64 %2123, 3
  %2125 = add i64 %2124, %2096
  %2126 = add i64 %1990, 72
  store i64 %2126, i64* %PC.i, align 8
  %2127 = inttoptr i64 %2125 to double*
  %2128 = load double, double* %2127, align 8
  %2129 = fmul double %2083, %2128
  store double %2129, double* %57, align 1
  store i64 0, i64* %58, align 1
  %2130 = add i64 %2073, -32
  %2131 = add i64 %1990, 76
  store i64 %2131, i64* %PC.i, align 8
  %2132 = inttoptr i64 %2130 to i64*
  %2133 = load i64, i64* %2132, align 8
  store i64 %2133, i64* %RAX.i1011, align 8
  %2134 = load i64, i64* %RBP.i, align 8
  %2135 = add i64 %2134, -40
  %2136 = add i64 %1990, 79
  store i64 %2136, i64* %PC.i, align 8
  %2137 = inttoptr i64 %2135 to i32*
  %2138 = load i32, i32* %2137, align 4
  %2139 = add i32 %2138, -1
  %2140 = zext i32 %2139 to i64
  store i64 %2140, i64* %RDX.i1021, align 8
  %2141 = sext i32 %2139 to i64
  %2142 = shl nsw i64 %2141, 13
  store i64 %2142, i64* %RCX.i1018, align 8
  %2143 = lshr i64 %2141, 50
  %2144 = and i64 %2143, 1
  %2145 = add i64 %2142, %2133
  store i64 %2145, i64* %RAX.i1011, align 8
  %2146 = icmp ult i64 %2145, %2133
  %2147 = icmp ult i64 %2145, %2142
  %2148 = or i1 %2146, %2147
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %46, align 1
  %2150 = trunc i64 %2145 to i32
  %2151 = and i32 %2150, 255
  %2152 = tail call i32 @llvm.ctpop.i32(i32 %2151)
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = xor i8 %2154, 1
  store i8 %2155, i8* %47, align 1
  %2156 = xor i64 %2133, %2145
  %2157 = lshr i64 %2156, 4
  %2158 = trunc i64 %2157 to i8
  %2159 = and i8 %2158, 1
  store i8 %2159, i8* %48, align 1
  %2160 = icmp eq i64 %2145, 0
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %49, align 1
  %2162 = lshr i64 %2145, 63
  %2163 = trunc i64 %2162 to i8
  store i8 %2163, i8* %50, align 1
  %2164 = lshr i64 %2133, 63
  %2165 = xor i64 %2162, %2164
  %2166 = xor i64 %2162, %2144
  %2167 = add nuw nsw i64 %2165, %2166
  %2168 = icmp eq i64 %2167, 2
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %51, align 1
  %2170 = load i64, i64* %RBP.i, align 8
  %2171 = add i64 %2170, -44
  %2172 = add i64 %1990, 96
  store i64 %2172, i64* %PC.i, align 8
  %2173 = inttoptr i64 %2171 to i32*
  %2174 = load i32, i32* %2173, align 4
  %2175 = sext i32 %2174 to i64
  store i64 %2175, i64* %RCX.i1018, align 8
  %2176 = shl nsw i64 %2175, 3
  %2177 = add i64 %2176, %2145
  %2178 = add i64 %1990, 101
  store i64 %2178, i64* %PC.i, align 8
  %2179 = load double, double* %57, align 1
  %2180 = inttoptr i64 %2177 to double*
  %2181 = load double, double* %2180, align 8
  %2182 = fdiv double %2179, %2181
  store double %2182, double* %57, align 1
  %2183 = load double, double* %53, align 1
  %2184 = fsub double %2183, %2182
  store double %2184, double* %53, align 1
  %2185 = add i64 %2170, -32
  %2186 = add i64 %1990, 109
  store i64 %2186, i64* %PC.i, align 8
  %2187 = inttoptr i64 %2185 to i64*
  %2188 = load i64, i64* %2187, align 8
  store i64 %2188, i64* %RAX.i1011, align 8
  %2189 = add i64 %2170, -40
  %2190 = add i64 %1990, 113
  store i64 %2190, i64* %PC.i, align 8
  %2191 = inttoptr i64 %2189 to i32*
  %2192 = load i32, i32* %2191, align 4
  %2193 = sext i32 %2192 to i64
  %2194 = shl nsw i64 %2193, 13
  store i64 %2194, i64* %RCX.i1018, align 8
  %2195 = lshr i64 %2193, 50
  %2196 = and i64 %2195, 1
  %2197 = add i64 %2194, %2188
  store i64 %2197, i64* %RAX.i1011, align 8
  %2198 = icmp ult i64 %2197, %2188
  %2199 = icmp ult i64 %2197, %2194
  %2200 = or i1 %2198, %2199
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %46, align 1
  %2202 = trunc i64 %2197 to i32
  %2203 = and i32 %2202, 255
  %2204 = tail call i32 @llvm.ctpop.i32(i32 %2203)
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  %2207 = xor i8 %2206, 1
  store i8 %2207, i8* %47, align 1
  %2208 = xor i64 %2188, %2197
  %2209 = lshr i64 %2208, 4
  %2210 = trunc i64 %2209 to i8
  %2211 = and i8 %2210, 1
  store i8 %2211, i8* %48, align 1
  %2212 = icmp eq i64 %2197, 0
  %2213 = zext i1 %2212 to i8
  store i8 %2213, i8* %49, align 1
  %2214 = lshr i64 %2197, 63
  %2215 = trunc i64 %2214 to i8
  store i8 %2215, i8* %50, align 1
  %2216 = lshr i64 %2188, 63
  %2217 = xor i64 %2214, %2216
  %2218 = xor i64 %2214, %2196
  %2219 = add nuw nsw i64 %2217, %2218
  %2220 = icmp eq i64 %2219, 2
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %51, align 1
  %2222 = add i64 %1990, 124
  store i64 %2222, i64* %PC.i, align 8
  %2223 = load i32, i32* %2173, align 4
  %2224 = sext i32 %2223 to i64
  store i64 %2224, i64* %RCX.i1018, align 8
  %2225 = shl nsw i64 %2224, 3
  %2226 = add i64 %2225, %2197
  %2227 = add i64 %1990, 129
  store i64 %2227, i64* %PC.i, align 8
  %2228 = inttoptr i64 %2226 to double*
  store double %2184, double* %2228, align 8
  %2229 = load i64, i64* %RBP.i, align 8
  %2230 = add i64 %2229, -44
  %2231 = load i64, i64* %PC.i, align 8
  %2232 = add i64 %2231, 3
  store i64 %2232, i64* %PC.i, align 8
  %2233 = inttoptr i64 %2230 to i32*
  %2234 = load i32, i32* %2233, align 4
  %2235 = add i32 %2234, 1
  %2236 = zext i32 %2235 to i64
  store i64 %2236, i64* %RAX.i1011, align 8
  %2237 = icmp eq i32 %2234, -1
  %2238 = icmp eq i32 %2235, 0
  %2239 = or i1 %2237, %2238
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %46, align 1
  %2241 = and i32 %2235, 255
  %2242 = tail call i32 @llvm.ctpop.i32(i32 %2241)
  %2243 = trunc i32 %2242 to i8
  %2244 = and i8 %2243, 1
  %2245 = xor i8 %2244, 1
  store i8 %2245, i8* %47, align 1
  %2246 = xor i32 %2234, %2235
  %2247 = lshr i32 %2246, 4
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  store i8 %2249, i8* %48, align 1
  %2250 = icmp eq i32 %2235, 0
  %2251 = zext i1 %2250 to i8
  store i8 %2251, i8* %49, align 1
  %2252 = lshr i32 %2235, 31
  %2253 = trunc i32 %2252 to i8
  store i8 %2253, i8* %50, align 1
  %2254 = lshr i32 %2234, 31
  %2255 = xor i32 %2252, %2254
  %2256 = add nuw nsw i32 %2255, %2252
  %2257 = icmp eq i32 %2256, 2
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %51, align 1
  %2259 = add i64 %2231, 9
  store i64 %2259, i64* %PC.i, align 8
  store i32 %2235, i32* %2233, align 4
  %2260 = load i64, i64* %PC.i, align 8
  %2261 = add i64 %2260, -284
  store i64 %2261, i64* %3, align 8
  br label %block_.L_400e8c

block_.L_400fad:                                  ; preds = %block_.L_400e8c
  %2262 = add i64 %1714, -40
  %2263 = add i64 %1750, 8
  store i64 %2263, i64* %PC.i, align 8
  %2264 = inttoptr i64 %2262 to i32*
  %2265 = load i32, i32* %2264, align 4
  %2266 = add i32 %2265, 1
  %2267 = zext i32 %2266 to i64
  store i64 %2267, i64* %RAX.i1011, align 8
  %2268 = icmp eq i32 %2265, -1
  %2269 = icmp eq i32 %2266, 0
  %2270 = or i1 %2268, %2269
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %46, align 1
  %2272 = and i32 %2266, 255
  %2273 = tail call i32 @llvm.ctpop.i32(i32 %2272)
  %2274 = trunc i32 %2273 to i8
  %2275 = and i8 %2274, 1
  %2276 = xor i8 %2275, 1
  store i8 %2276, i8* %47, align 1
  %2277 = xor i32 %2265, %2266
  %2278 = lshr i32 %2277, 4
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  store i8 %2280, i8* %48, align 1
  %2281 = icmp eq i32 %2266, 0
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %49, align 1
  %2283 = lshr i32 %2266, 31
  %2284 = trunc i32 %2283 to i8
  store i8 %2284, i8* %50, align 1
  %2285 = lshr i32 %2265, 31
  %2286 = xor i32 %2283, %2285
  %2287 = add nuw nsw i32 %2286, %2283
  %2288 = icmp eq i32 %2287, 2
  %2289 = zext i1 %2288 to i8
  store i8 %2289, i8* %51, align 1
  %2290 = add i64 %1750, 14
  store i64 %2290, i64* %PC.i, align 8
  store i32 %2266, i32* %2264, align 4
  %2291 = load i64, i64* %PC.i, align 8
  %2292 = add i64 %2291, -322
  store i64 %2292, i64* %3, align 8
  br label %block_.L_400e79

block_.L_400fc7:                                  ; preds = %block_.L_400e79, %block_400fd3
  %2293 = phi i64 [ %2515, %block_400fd3 ], [ %.pre8, %block_.L_400e79 ]
  %2294 = load i64, i64* %RBP.i, align 8
  %2295 = add i64 %2294, -44
  %2296 = add i64 %2293, 3
  store i64 %2296, i64* %PC.i, align 8
  %2297 = inttoptr i64 %2295 to i32*
  %2298 = load i32, i32* %2297, align 4
  %2299 = zext i32 %2298 to i64
  store i64 %2299, i64* %RAX.i1011, align 8
  %2300 = add i64 %2294, -8
  %2301 = add i64 %2293, 6
  store i64 %2301, i64* %PC.i, align 8
  %2302 = inttoptr i64 %2300 to i32*
  %2303 = load i32, i32* %2302, align 4
  %2304 = sub i32 %2298, %2303
  %2305 = icmp ult i32 %2298, %2303
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %46, align 1
  %2307 = and i32 %2304, 255
  %2308 = tail call i32 @llvm.ctpop.i32(i32 %2307)
  %2309 = trunc i32 %2308 to i8
  %2310 = and i8 %2309, 1
  %2311 = xor i8 %2310, 1
  store i8 %2311, i8* %47, align 1
  %2312 = xor i32 %2303, %2298
  %2313 = xor i32 %2312, %2304
  %2314 = lshr i32 %2313, 4
  %2315 = trunc i32 %2314 to i8
  %2316 = and i8 %2315, 1
  store i8 %2316, i8* %48, align 1
  %2317 = icmp eq i32 %2304, 0
  %2318 = zext i1 %2317 to i8
  store i8 %2318, i8* %49, align 1
  %2319 = lshr i32 %2304, 31
  %2320 = trunc i32 %2319 to i8
  store i8 %2320, i8* %50, align 1
  %2321 = lshr i32 %2298, 31
  %2322 = lshr i32 %2303, 31
  %2323 = xor i32 %2322, %2321
  %2324 = xor i32 %2319, %2321
  %2325 = add nuw nsw i32 %2324, %2323
  %2326 = icmp eq i32 %2325, 2
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %51, align 1
  %2328 = icmp ne i8 %2320, 0
  %2329 = xor i1 %2328, %2326
  %.v18 = select i1 %2329, i64 12, i64 113
  %2330 = add i64 %2293, %.v18
  store i64 %2330, i64* %3, align 8
  br i1 %2329, label %block_400fd3, label %block_.L_401038

block_400fd3:                                     ; preds = %block_.L_400fc7
  %2331 = add i64 %2294, -16
  %2332 = add i64 %2330, 4
  store i64 %2332, i64* %PC.i, align 8
  %2333 = inttoptr i64 %2331 to i64*
  %2334 = load i64, i64* %2333, align 8
  store i64 %2334, i64* %RAX.i1011, align 8
  %2335 = add i64 %2330, 7
  store i64 %2335, i64* %PC.i, align 8
  %2336 = load i32, i32* %2302, align 4
  %2337 = add i32 %2336, -1
  %2338 = zext i32 %2337 to i64
  store i64 %2338, i64* %RCX.i1018, align 8
  %2339 = sext i32 %2337 to i64
  %2340 = shl nsw i64 %2339, 13
  store i64 %2340, i64* %RDX.i1021, align 8
  %2341 = lshr i64 %2339, 50
  %2342 = and i64 %2341, 1
  %2343 = add i64 %2340, %2334
  store i64 %2343, i64* %RAX.i1011, align 8
  %2344 = icmp ult i64 %2343, %2334
  %2345 = icmp ult i64 %2343, %2340
  %2346 = or i1 %2344, %2345
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %46, align 1
  %2348 = trunc i64 %2343 to i32
  %2349 = and i32 %2348, 255
  %2350 = tail call i32 @llvm.ctpop.i32(i32 %2349)
  %2351 = trunc i32 %2350 to i8
  %2352 = and i8 %2351, 1
  %2353 = xor i8 %2352, 1
  store i8 %2353, i8* %47, align 1
  %2354 = xor i64 %2334, %2343
  %2355 = lshr i64 %2354, 4
  %2356 = trunc i64 %2355 to i8
  %2357 = and i8 %2356, 1
  store i8 %2357, i8* %48, align 1
  %2358 = icmp eq i64 %2343, 0
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %49, align 1
  %2360 = lshr i64 %2343, 63
  %2361 = trunc i64 %2360 to i8
  store i8 %2361, i8* %50, align 1
  %2362 = lshr i64 %2334, 63
  %2363 = xor i64 %2360, %2362
  %2364 = xor i64 %2360, %2342
  %2365 = add nuw nsw i64 %2363, %2364
  %2366 = icmp eq i64 %2365, 2
  %2367 = zext i1 %2366 to i8
  store i8 %2367, i8* %51, align 1
  %2368 = load i64, i64* %RBP.i, align 8
  %2369 = add i64 %2368, -44
  %2370 = add i64 %2330, 24
  store i64 %2370, i64* %PC.i, align 8
  %2371 = inttoptr i64 %2369 to i32*
  %2372 = load i32, i32* %2371, align 4
  %2373 = sext i32 %2372 to i64
  store i64 %2373, i64* %RDX.i1021, align 8
  %2374 = shl nsw i64 %2373, 3
  %2375 = add i64 %2374, %2343
  %2376 = add i64 %2330, 29
  store i64 %2376, i64* %PC.i, align 8
  %2377 = inttoptr i64 %2375 to i64*
  %2378 = load i64, i64* %2377, align 8
  %2379 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2378, i64* %2379, align 1
  store double 0.000000e+00, double* %55, align 1
  %2380 = add i64 %2368, -32
  %2381 = add i64 %2330, 33
  store i64 %2381, i64* %PC.i, align 8
  %2382 = inttoptr i64 %2380 to i64*
  %2383 = load i64, i64* %2382, align 8
  store i64 %2383, i64* %RAX.i1011, align 8
  %2384 = add i64 %2368, -8
  %2385 = add i64 %2330, 36
  store i64 %2385, i64* %PC.i, align 8
  %2386 = inttoptr i64 %2384 to i32*
  %2387 = load i32, i32* %2386, align 4
  %2388 = add i32 %2387, -1
  %2389 = zext i32 %2388 to i64
  store i64 %2389, i64* %RCX.i1018, align 8
  %2390 = sext i32 %2388 to i64
  %2391 = shl nsw i64 %2390, 13
  store i64 %2391, i64* %RDX.i1021, align 8
  %2392 = lshr i64 %2390, 50
  %2393 = and i64 %2392, 1
  %2394 = add i64 %2391, %2383
  store i64 %2394, i64* %RAX.i1011, align 8
  %2395 = icmp ult i64 %2394, %2383
  %2396 = icmp ult i64 %2394, %2391
  %2397 = or i1 %2395, %2396
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %46, align 1
  %2399 = trunc i64 %2394 to i32
  %2400 = and i32 %2399, 255
  %2401 = tail call i32 @llvm.ctpop.i32(i32 %2400)
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  %2404 = xor i8 %2403, 1
  store i8 %2404, i8* %47, align 1
  %2405 = xor i64 %2383, %2394
  %2406 = lshr i64 %2405, 4
  %2407 = trunc i64 %2406 to i8
  %2408 = and i8 %2407, 1
  store i8 %2408, i8* %48, align 1
  %2409 = icmp eq i64 %2394, 0
  %2410 = zext i1 %2409 to i8
  store i8 %2410, i8* %49, align 1
  %2411 = lshr i64 %2394, 63
  %2412 = trunc i64 %2411 to i8
  store i8 %2412, i8* %50, align 1
  %2413 = lshr i64 %2383, 63
  %2414 = xor i64 %2411, %2413
  %2415 = xor i64 %2411, %2393
  %2416 = add nuw nsw i64 %2414, %2415
  %2417 = icmp eq i64 %2416, 2
  %2418 = zext i1 %2417 to i8
  store i8 %2418, i8* %51, align 1
  %2419 = load i64, i64* %RBP.i, align 8
  %2420 = add i64 %2419, -44
  %2421 = add i64 %2330, 53
  store i64 %2421, i64* %PC.i, align 8
  %2422 = inttoptr i64 %2420 to i32*
  %2423 = load i32, i32* %2422, align 4
  %2424 = sext i32 %2423 to i64
  store i64 %2424, i64* %RDX.i1021, align 8
  %2425 = shl nsw i64 %2424, 3
  %2426 = add i64 %2425, %2394
  %2427 = add i64 %2330, 58
  store i64 %2427, i64* %PC.i, align 8
  %2428 = load double, double* %53, align 1
  %2429 = inttoptr i64 %2426 to double*
  %2430 = load double, double* %2429, align 8
  %2431 = fdiv double %2428, %2430
  store double %2431, double* %53, align 1
  %2432 = add i64 %2419, -16
  %2433 = add i64 %2330, 62
  store i64 %2433, i64* %PC.i, align 8
  %2434 = inttoptr i64 %2432 to i64*
  %2435 = load i64, i64* %2434, align 8
  store i64 %2435, i64* %RAX.i1011, align 8
  %2436 = add i64 %2419, -8
  %2437 = add i64 %2330, 65
  store i64 %2437, i64* %PC.i, align 8
  %2438 = inttoptr i64 %2436 to i32*
  %2439 = load i32, i32* %2438, align 4
  %2440 = add i32 %2439, -1
  %2441 = zext i32 %2440 to i64
  store i64 %2441, i64* %RCX.i1018, align 8
  %2442 = sext i32 %2440 to i64
  %2443 = shl nsw i64 %2442, 13
  store i64 %2443, i64* %RDX.i1021, align 8
  %2444 = lshr i64 %2442, 50
  %2445 = and i64 %2444, 1
  %2446 = add i64 %2443, %2435
  store i64 %2446, i64* %RAX.i1011, align 8
  %2447 = icmp ult i64 %2446, %2435
  %2448 = icmp ult i64 %2446, %2443
  %2449 = or i1 %2447, %2448
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %46, align 1
  %2451 = trunc i64 %2446 to i32
  %2452 = and i32 %2451, 255
  %2453 = tail call i32 @llvm.ctpop.i32(i32 %2452)
  %2454 = trunc i32 %2453 to i8
  %2455 = and i8 %2454, 1
  %2456 = xor i8 %2455, 1
  store i8 %2456, i8* %47, align 1
  %2457 = xor i64 %2435, %2446
  %2458 = lshr i64 %2457, 4
  %2459 = trunc i64 %2458 to i8
  %2460 = and i8 %2459, 1
  store i8 %2460, i8* %48, align 1
  %2461 = icmp eq i64 %2446, 0
  %2462 = zext i1 %2461 to i8
  store i8 %2462, i8* %49, align 1
  %2463 = lshr i64 %2446, 63
  %2464 = trunc i64 %2463 to i8
  store i8 %2464, i8* %50, align 1
  %2465 = lshr i64 %2435, 63
  %2466 = xor i64 %2463, %2465
  %2467 = xor i64 %2463, %2445
  %2468 = add nuw nsw i64 %2466, %2467
  %2469 = icmp eq i64 %2468, 2
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %51, align 1
  %2471 = load i64, i64* %RBP.i, align 8
  %2472 = add i64 %2471, -44
  %2473 = add i64 %2330, 82
  store i64 %2473, i64* %PC.i, align 8
  %2474 = inttoptr i64 %2472 to i32*
  %2475 = load i32, i32* %2474, align 4
  %2476 = sext i32 %2475 to i64
  store i64 %2476, i64* %RDX.i1021, align 8
  %2477 = shl nsw i64 %2476, 3
  %2478 = add i64 %2477, %2446
  %2479 = add i64 %2330, 87
  store i64 %2479, i64* %PC.i, align 8
  %2480 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %2481 = load i64, i64* %2480, align 1
  %2482 = inttoptr i64 %2478 to i64*
  store i64 %2481, i64* %2482, align 8
  %2483 = load i64, i64* %RBP.i, align 8
  %2484 = add i64 %2483, -44
  %2485 = load i64, i64* %PC.i, align 8
  %2486 = add i64 %2485, 3
  store i64 %2486, i64* %PC.i, align 8
  %2487 = inttoptr i64 %2484 to i32*
  %2488 = load i32, i32* %2487, align 4
  %2489 = add i32 %2488, 1
  %2490 = zext i32 %2489 to i64
  store i64 %2490, i64* %RAX.i1011, align 8
  %2491 = icmp eq i32 %2488, -1
  %2492 = icmp eq i32 %2489, 0
  %2493 = or i1 %2491, %2492
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %46, align 1
  %2495 = and i32 %2489, 255
  %2496 = tail call i32 @llvm.ctpop.i32(i32 %2495)
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  %2499 = xor i8 %2498, 1
  store i8 %2499, i8* %47, align 1
  %2500 = xor i32 %2488, %2489
  %2501 = lshr i32 %2500, 4
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  store i8 %2503, i8* %48, align 1
  %2504 = icmp eq i32 %2489, 0
  %2505 = zext i1 %2504 to i8
  store i8 %2505, i8* %49, align 1
  %2506 = lshr i32 %2489, 31
  %2507 = trunc i32 %2506 to i8
  store i8 %2507, i8* %50, align 1
  %2508 = lshr i32 %2488, 31
  %2509 = xor i32 %2506, %2508
  %2510 = add nuw nsw i32 %2509, %2506
  %2511 = icmp eq i32 %2510, 2
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %51, align 1
  %2513 = add i64 %2485, 9
  store i64 %2513, i64* %PC.i, align 8
  store i32 %2489, i32* %2487, align 4
  %2514 = load i64, i64* %PC.i, align 8
  %2515 = add i64 %2514, -108
  store i64 %2515, i64* %3, align 8
  br label %block_.L_400fc7

block_.L_401038:                                  ; preds = %block_.L_400fc7
  %2516 = add i64 %2294, -40
  %2517 = add i64 %2330, 7
  store i64 %2517, i64* %PC.i, align 8
  %2518 = inttoptr i64 %2516 to i32*
  store i32 0, i32* %2518, align 4
  %.pre9 = load i64, i64* %PC.i, align 8
  br label %block_.L_40103f

block_.L_40103f:                                  ; preds = %block_.L_401115, %block_.L_401038
  %2519 = phi i64 [ %3034, %block_.L_401115 ], [ %.pre9, %block_.L_401038 ]
  %2520 = load i64, i64* %RBP.i, align 8
  %2521 = add i64 %2520, -40
  %2522 = add i64 %2519, 3
  store i64 %2522, i64* %PC.i, align 8
  %2523 = inttoptr i64 %2521 to i32*
  %2524 = load i32, i32* %2523, align 4
  %2525 = zext i32 %2524 to i64
  store i64 %2525, i64* %RAX.i1011, align 8
  %2526 = add i64 %2520, -8
  %2527 = add i64 %2519, 6
  store i64 %2527, i64* %PC.i, align 8
  %2528 = inttoptr i64 %2526 to i32*
  %2529 = load i32, i32* %2528, align 4
  %2530 = add i32 %2529, -2
  %2531 = zext i32 %2530 to i64
  store i64 %2531, i64* %RCX.i1018, align 8
  %2532 = lshr i32 %2530, 31
  %2533 = sub i32 %2524, %2530
  %2534 = icmp ult i32 %2524, %2530
  %2535 = zext i1 %2534 to i8
  store i8 %2535, i8* %46, align 1
  %2536 = and i32 %2533, 255
  %2537 = tail call i32 @llvm.ctpop.i32(i32 %2536)
  %2538 = trunc i32 %2537 to i8
  %2539 = and i8 %2538, 1
  %2540 = xor i8 %2539, 1
  store i8 %2540, i8* %47, align 1
  %2541 = xor i32 %2530, %2524
  %2542 = xor i32 %2541, %2533
  %2543 = lshr i32 %2542, 4
  %2544 = trunc i32 %2543 to i8
  %2545 = and i8 %2544, 1
  store i8 %2545, i8* %48, align 1
  %2546 = icmp eq i32 %2533, 0
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %49, align 1
  %2548 = lshr i32 %2533, 31
  %2549 = trunc i32 %2548 to i8
  store i8 %2549, i8* %50, align 1
  %2550 = lshr i32 %2524, 31
  %2551 = xor i32 %2532, %2550
  %2552 = xor i32 %2548, %2550
  %2553 = add nuw nsw i32 %2552, %2551
  %2554 = icmp eq i32 %2553, 2
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %51, align 1
  %2556 = icmp ne i8 %2549, 0
  %2557 = xor i1 %2556, %2554
  %.v19 = select i1 %2557, i64 17, i64 233
  %2558 = add i64 %2519, %.v19
  store i64 %2558, i64* %3, align 8
  br i1 %2557, label %block_401050, label %block_.L_401128

block_401050:                                     ; preds = %block_.L_40103f
  %2559 = add i64 %2520, -44
  %2560 = add i64 %2558, 7
  store i64 %2560, i64* %PC.i, align 8
  %2561 = inttoptr i64 %2559 to i32*
  store i32 0, i32* %2561, align 4
  %.pre10 = load i64, i64* %PC.i, align 8
  br label %block_.L_401057

block_.L_401057:                                  ; preds = %block_401063, %block_401050
  %2562 = phi i64 [ %3003, %block_401063 ], [ %.pre10, %block_401050 ]
  %2563 = load i64, i64* %RBP.i, align 8
  %2564 = add i64 %2563, -44
  %2565 = add i64 %2562, 3
  store i64 %2565, i64* %PC.i, align 8
  %2566 = inttoptr i64 %2564 to i32*
  %2567 = load i32, i32* %2566, align 4
  %2568 = zext i32 %2567 to i64
  store i64 %2568, i64* %RAX.i1011, align 8
  %2569 = add i64 %2563, -8
  %2570 = add i64 %2562, 6
  store i64 %2570, i64* %PC.i, align 8
  %2571 = inttoptr i64 %2569 to i32*
  %2572 = load i32, i32* %2571, align 4
  %2573 = sub i32 %2567, %2572
  %2574 = icmp ult i32 %2567, %2572
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %46, align 1
  %2576 = and i32 %2573, 255
  %2577 = tail call i32 @llvm.ctpop.i32(i32 %2576)
  %2578 = trunc i32 %2577 to i8
  %2579 = and i8 %2578, 1
  %2580 = xor i8 %2579, 1
  store i8 %2580, i8* %47, align 1
  %2581 = xor i32 %2572, %2567
  %2582 = xor i32 %2581, %2573
  %2583 = lshr i32 %2582, 4
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  store i8 %2585, i8* %48, align 1
  %2586 = icmp eq i32 %2573, 0
  %2587 = zext i1 %2586 to i8
  store i8 %2587, i8* %49, align 1
  %2588 = lshr i32 %2573, 31
  %2589 = trunc i32 %2588 to i8
  store i8 %2589, i8* %50, align 1
  %2590 = lshr i32 %2567, 31
  %2591 = lshr i32 %2572, 31
  %2592 = xor i32 %2591, %2590
  %2593 = xor i32 %2588, %2590
  %2594 = add nuw nsw i32 %2593, %2592
  %2595 = icmp eq i32 %2594, 2
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %51, align 1
  %2597 = icmp ne i8 %2589, 0
  %2598 = xor i1 %2597, %2595
  %.v20 = select i1 %2598, i64 12, i64 190
  %2599 = add i64 %2562, %.v20
  store i64 %2599, i64* %3, align 8
  br i1 %2598, label %block_401063, label %block_.L_401115

block_401063:                                     ; preds = %block_.L_401057
  %2600 = add i64 %2563, -16
  %2601 = add i64 %2599, 4
  store i64 %2601, i64* %PC.i, align 8
  %2602 = inttoptr i64 %2600 to i64*
  %2603 = load i64, i64* %2602, align 8
  store i64 %2603, i64* %RAX.i1011, align 8
  %2604 = add i64 %2599, 7
  store i64 %2604, i64* %PC.i, align 8
  %2605 = load i32, i32* %2571, align 4
  %2606 = add i32 %2605, -2
  %2607 = zext i32 %2606 to i64
  store i64 %2607, i64* %RCX.i1018, align 8
  %2608 = icmp ult i32 %2605, 2
  %2609 = zext i1 %2608 to i8
  store i8 %2609, i8* %46, align 1
  %2610 = and i32 %2606, 255
  %2611 = tail call i32 @llvm.ctpop.i32(i32 %2610)
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  %2614 = xor i8 %2613, 1
  store i8 %2614, i8* %47, align 1
  %2615 = xor i32 %2605, %2606
  %2616 = lshr i32 %2615, 4
  %2617 = trunc i32 %2616 to i8
  %2618 = and i8 %2617, 1
  store i8 %2618, i8* %48, align 1
  %2619 = icmp eq i32 %2606, 0
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %49, align 1
  %2621 = lshr i32 %2606, 31
  %2622 = trunc i32 %2621 to i8
  store i8 %2622, i8* %50, align 1
  %2623 = lshr i32 %2605, 31
  %2624 = xor i32 %2621, %2623
  %2625 = add nuw nsw i32 %2624, %2623
  %2626 = icmp eq i32 %2625, 2
  %2627 = zext i1 %2626 to i8
  store i8 %2627, i8* %51, align 1
  %2628 = add i64 %2563, -40
  %2629 = add i64 %2599, 13
  store i64 %2629, i64* %PC.i, align 8
  %2630 = inttoptr i64 %2628 to i32*
  %2631 = load i32, i32* %2630, align 4
  %2632 = sub i32 %2606, %2631
  %2633 = zext i32 %2632 to i64
  store i64 %2633, i64* %RCX.i1018, align 8
  %2634 = sext i32 %2632 to i64
  %2635 = shl nsw i64 %2634, 13
  store i64 %2635, i64* %RDX.i1021, align 8
  %2636 = lshr i64 %2634, 50
  %2637 = and i64 %2636, 1
  %2638 = add i64 %2635, %2603
  store i64 %2638, i64* %RAX.i1011, align 8
  %2639 = icmp ult i64 %2638, %2603
  %2640 = icmp ult i64 %2638, %2635
  %2641 = or i1 %2639, %2640
  %2642 = zext i1 %2641 to i8
  store i8 %2642, i8* %46, align 1
  %2643 = trunc i64 %2638 to i32
  %2644 = and i32 %2643, 255
  %2645 = tail call i32 @llvm.ctpop.i32(i32 %2644)
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  %2648 = xor i8 %2647, 1
  store i8 %2648, i8* %47, align 1
  %2649 = xor i64 %2603, %2638
  %2650 = lshr i64 %2649, 4
  %2651 = trunc i64 %2650 to i8
  %2652 = and i8 %2651, 1
  store i8 %2652, i8* %48, align 1
  %2653 = icmp eq i64 %2638, 0
  %2654 = zext i1 %2653 to i8
  store i8 %2654, i8* %49, align 1
  %2655 = lshr i64 %2638, 63
  %2656 = trunc i64 %2655 to i8
  store i8 %2656, i8* %50, align 1
  %2657 = lshr i64 %2603, 63
  %2658 = xor i64 %2655, %2657
  %2659 = xor i64 %2655, %2637
  %2660 = add nuw nsw i64 %2658, %2659
  %2661 = icmp eq i64 %2660, 2
  %2662 = zext i1 %2661 to i8
  store i8 %2662, i8* %51, align 1
  %2663 = load i64, i64* %RBP.i, align 8
  %2664 = add i64 %2663, -44
  %2665 = add i64 %2599, 27
  store i64 %2665, i64* %PC.i, align 8
  %2666 = inttoptr i64 %2664 to i32*
  %2667 = load i32, i32* %2666, align 4
  %2668 = sext i32 %2667 to i64
  store i64 %2668, i64* %RDX.i1021, align 8
  %2669 = shl nsw i64 %2668, 3
  %2670 = add i64 %2669, %2638
  %2671 = add i64 %2599, 32
  store i64 %2671, i64* %PC.i, align 8
  %2672 = inttoptr i64 %2670 to i64*
  %2673 = load i64, i64* %2672, align 8
  %2674 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2673, i64* %2674, align 1
  store double 0.000000e+00, double* %55, align 1
  %2675 = add i64 %2663, -16
  %2676 = add i64 %2599, 36
  store i64 %2676, i64* %PC.i, align 8
  %2677 = inttoptr i64 %2675 to i64*
  %2678 = load i64, i64* %2677, align 8
  store i64 %2678, i64* %RAX.i1011, align 8
  %2679 = add i64 %2663, -8
  %2680 = add i64 %2599, 39
  store i64 %2680, i64* %PC.i, align 8
  %2681 = inttoptr i64 %2679 to i32*
  %2682 = load i32, i32* %2681, align 4
  %2683 = zext i32 %2682 to i64
  store i64 %2683, i64* %RCX.i1018, align 8
  %2684 = add i64 %2663, -40
  %2685 = add i64 %2599, 42
  store i64 %2685, i64* %PC.i, align 8
  %2686 = inttoptr i64 %2684 to i32*
  %2687 = load i32, i32* %2686, align 4
  %2688 = sub i32 %2682, %2687
  %2689 = add i32 %2688, -3
  %2690 = zext i32 %2689 to i64
  store i64 %2690, i64* %RCX.i1018, align 8
  %2691 = sext i32 %2689 to i64
  %2692 = shl nsw i64 %2691, 13
  store i64 %2692, i64* %RDX.i1021, align 8
  %2693 = lshr i64 %2691, 50
  %2694 = and i64 %2693, 1
  %2695 = load i64, i64* %RAX.i1011, align 8
  %2696 = add i64 %2692, %2695
  store i64 %2696, i64* %RAX.i1011, align 8
  %2697 = icmp ult i64 %2696, %2695
  %2698 = icmp ult i64 %2696, %2692
  %2699 = or i1 %2697, %2698
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %46, align 1
  %2701 = trunc i64 %2696 to i32
  %2702 = and i32 %2701, 255
  %2703 = tail call i32 @llvm.ctpop.i32(i32 %2702)
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  %2706 = xor i8 %2705, 1
  store i8 %2706, i8* %47, align 1
  %2707 = xor i64 %2695, %2696
  %2708 = lshr i64 %2707, 4
  %2709 = trunc i64 %2708 to i8
  %2710 = and i8 %2709, 1
  store i8 %2710, i8* %48, align 1
  %2711 = icmp eq i64 %2696, 0
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %49, align 1
  %2713 = lshr i64 %2696, 63
  %2714 = trunc i64 %2713 to i8
  store i8 %2714, i8* %50, align 1
  %2715 = lshr i64 %2695, 63
  %2716 = xor i64 %2713, %2715
  %2717 = xor i64 %2713, %2694
  %2718 = add nuw nsw i64 %2716, %2717
  %2719 = icmp eq i64 %2718, 2
  %2720 = zext i1 %2719 to i8
  store i8 %2720, i8* %51, align 1
  %2721 = load i64, i64* %RBP.i, align 8
  %2722 = add i64 %2721, -44
  %2723 = add i64 %2599, 59
  store i64 %2723, i64* %PC.i, align 8
  %2724 = inttoptr i64 %2722 to i32*
  %2725 = load i32, i32* %2724, align 4
  %2726 = sext i32 %2725 to i64
  store i64 %2726, i64* %RDX.i1021, align 8
  %2727 = shl nsw i64 %2726, 3
  %2728 = add i64 %2727, %2696
  %2729 = add i64 %2599, 64
  store i64 %2729, i64* %PC.i, align 8
  %2730 = inttoptr i64 %2728 to i64*
  %2731 = load i64, i64* %2730, align 8
  %2732 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2731, i64* %2732, align 1
  store double 0.000000e+00, double* %59, align 1
  %2733 = add i64 %2721, -24
  %2734 = add i64 %2599, 68
  store i64 %2734, i64* %PC.i, align 8
  %2735 = inttoptr i64 %2733 to i64*
  %2736 = load i64, i64* %2735, align 8
  store i64 %2736, i64* %RAX.i1011, align 8
  %2737 = add i64 %2721, -8
  %2738 = add i64 %2599, 71
  store i64 %2738, i64* %PC.i, align 8
  %2739 = inttoptr i64 %2737 to i32*
  %2740 = load i32, i32* %2739, align 4
  %2741 = add i32 %2740, -3
  %2742 = zext i32 %2741 to i64
  store i64 %2742, i64* %RCX.i1018, align 8
  %2743 = icmp ult i32 %2740, 3
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %46, align 1
  %2745 = and i32 %2741, 255
  %2746 = tail call i32 @llvm.ctpop.i32(i32 %2745)
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  %2749 = xor i8 %2748, 1
  store i8 %2749, i8* %47, align 1
  %2750 = xor i32 %2740, %2741
  %2751 = lshr i32 %2750, 4
  %2752 = trunc i32 %2751 to i8
  %2753 = and i8 %2752, 1
  store i8 %2753, i8* %48, align 1
  %2754 = icmp eq i32 %2741, 0
  %2755 = zext i1 %2754 to i8
  store i8 %2755, i8* %49, align 1
  %2756 = lshr i32 %2741, 31
  %2757 = trunc i32 %2756 to i8
  store i8 %2757, i8* %50, align 1
  %2758 = lshr i32 %2740, 31
  %2759 = xor i32 %2756, %2758
  %2760 = add nuw nsw i32 %2759, %2758
  %2761 = icmp eq i32 %2760, 2
  %2762 = zext i1 %2761 to i8
  store i8 %2762, i8* %51, align 1
  %2763 = add i64 %2721, -40
  %2764 = add i64 %2599, 77
  store i64 %2764, i64* %PC.i, align 8
  %2765 = inttoptr i64 %2763 to i32*
  %2766 = load i32, i32* %2765, align 4
  %2767 = sub i32 %2741, %2766
  %2768 = zext i32 %2767 to i64
  store i64 %2768, i64* %RCX.i1018, align 8
  %2769 = sext i32 %2767 to i64
  %2770 = shl nsw i64 %2769, 13
  store i64 %2770, i64* %RDX.i1021, align 8
  %2771 = lshr i64 %2769, 50
  %2772 = and i64 %2771, 1
  %2773 = load i64, i64* %RAX.i1011, align 8
  %2774 = add i64 %2770, %2773
  store i64 %2774, i64* %RAX.i1011, align 8
  %2775 = icmp ult i64 %2774, %2773
  %2776 = icmp ult i64 %2774, %2770
  %2777 = or i1 %2775, %2776
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %46, align 1
  %2779 = trunc i64 %2774 to i32
  %2780 = and i32 %2779, 255
  %2781 = tail call i32 @llvm.ctpop.i32(i32 %2780)
  %2782 = trunc i32 %2781 to i8
  %2783 = and i8 %2782, 1
  %2784 = xor i8 %2783, 1
  store i8 %2784, i8* %47, align 1
  %2785 = xor i64 %2773, %2774
  %2786 = lshr i64 %2785, 4
  %2787 = trunc i64 %2786 to i8
  %2788 = and i8 %2787, 1
  store i8 %2788, i8* %48, align 1
  %2789 = icmp eq i64 %2774, 0
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %49, align 1
  %2791 = lshr i64 %2774, 63
  %2792 = trunc i64 %2791 to i8
  store i8 %2792, i8* %50, align 1
  %2793 = lshr i64 %2773, 63
  %2794 = xor i64 %2791, %2793
  %2795 = xor i64 %2791, %2772
  %2796 = add nuw nsw i64 %2794, %2795
  %2797 = icmp eq i64 %2796, 2
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %51, align 1
  %2799 = load i64, i64* %RBP.i, align 8
  %2800 = add i64 %2799, -44
  %2801 = add i64 %2599, 91
  store i64 %2801, i64* %PC.i, align 8
  %2802 = inttoptr i64 %2800 to i32*
  %2803 = load i32, i32* %2802, align 4
  %2804 = sext i32 %2803 to i64
  store i64 %2804, i64* %RDX.i1021, align 8
  %2805 = shl nsw i64 %2804, 3
  %2806 = add i64 %2805, %2774
  %2807 = add i64 %2599, 96
  store i64 %2807, i64* %PC.i, align 8
  %2808 = load double, double* %57, align 1
  %2809 = inttoptr i64 %2806 to double*
  %2810 = load double, double* %2809, align 8
  %2811 = fmul double %2808, %2810
  store double %2811, double* %57, align 1
  %2812 = load double, double* %53, align 1
  %2813 = fsub double %2812, %2811
  store double %2813, double* %53, align 1
  %2814 = add i64 %2799, -32
  %2815 = add i64 %2599, 104
  store i64 %2815, i64* %PC.i, align 8
  %2816 = inttoptr i64 %2814 to i64*
  %2817 = load i64, i64* %2816, align 8
  store i64 %2817, i64* %RAX.i1011, align 8
  %2818 = add i64 %2799, -8
  %2819 = add i64 %2599, 107
  store i64 %2819, i64* %PC.i, align 8
  %2820 = inttoptr i64 %2818 to i32*
  %2821 = load i32, i32* %2820, align 4
  %2822 = add i32 %2821, -2
  %2823 = zext i32 %2822 to i64
  store i64 %2823, i64* %RCX.i1018, align 8
  %2824 = icmp ult i32 %2821, 2
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %46, align 1
  %2826 = and i32 %2822, 255
  %2827 = tail call i32 @llvm.ctpop.i32(i32 %2826)
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = xor i8 %2829, 1
  store i8 %2830, i8* %47, align 1
  %2831 = xor i32 %2821, %2822
  %2832 = lshr i32 %2831, 4
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  store i8 %2834, i8* %48, align 1
  %2835 = icmp eq i32 %2822, 0
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %49, align 1
  %2837 = lshr i32 %2822, 31
  %2838 = trunc i32 %2837 to i8
  store i8 %2838, i8* %50, align 1
  %2839 = lshr i32 %2821, 31
  %2840 = xor i32 %2837, %2839
  %2841 = add nuw nsw i32 %2840, %2839
  %2842 = icmp eq i32 %2841, 2
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %51, align 1
  %2844 = add i64 %2799, -40
  %2845 = add i64 %2599, 113
  store i64 %2845, i64* %PC.i, align 8
  %2846 = inttoptr i64 %2844 to i32*
  %2847 = load i32, i32* %2846, align 4
  %2848 = sub i32 %2822, %2847
  %2849 = zext i32 %2848 to i64
  store i64 %2849, i64* %RCX.i1018, align 8
  %2850 = sext i32 %2848 to i64
  %2851 = shl nsw i64 %2850, 13
  store i64 %2851, i64* %RDX.i1021, align 8
  %2852 = lshr i64 %2850, 50
  %2853 = and i64 %2852, 1
  %2854 = load i64, i64* %RAX.i1011, align 8
  %2855 = add i64 %2851, %2854
  store i64 %2855, i64* %RAX.i1011, align 8
  %2856 = icmp ult i64 %2855, %2854
  %2857 = icmp ult i64 %2855, %2851
  %2858 = or i1 %2856, %2857
  %2859 = zext i1 %2858 to i8
  store i8 %2859, i8* %46, align 1
  %2860 = trunc i64 %2855 to i32
  %2861 = and i32 %2860, 255
  %2862 = tail call i32 @llvm.ctpop.i32(i32 %2861)
  %2863 = trunc i32 %2862 to i8
  %2864 = and i8 %2863, 1
  %2865 = xor i8 %2864, 1
  store i8 %2865, i8* %47, align 1
  %2866 = xor i64 %2854, %2855
  %2867 = lshr i64 %2866, 4
  %2868 = trunc i64 %2867 to i8
  %2869 = and i8 %2868, 1
  store i8 %2869, i8* %48, align 1
  %2870 = icmp eq i64 %2855, 0
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %49, align 1
  %2872 = lshr i64 %2855, 63
  %2873 = trunc i64 %2872 to i8
  store i8 %2873, i8* %50, align 1
  %2874 = lshr i64 %2854, 63
  %2875 = xor i64 %2872, %2874
  %2876 = xor i64 %2872, %2853
  %2877 = add nuw nsw i64 %2875, %2876
  %2878 = icmp eq i64 %2877, 2
  %2879 = zext i1 %2878 to i8
  store i8 %2879, i8* %51, align 1
  %2880 = load i64, i64* %RBP.i, align 8
  %2881 = add i64 %2880, -44
  %2882 = add i64 %2599, 127
  store i64 %2882, i64* %PC.i, align 8
  %2883 = inttoptr i64 %2881 to i32*
  %2884 = load i32, i32* %2883, align 4
  %2885 = sext i32 %2884 to i64
  store i64 %2885, i64* %RDX.i1021, align 8
  %2886 = shl nsw i64 %2885, 3
  %2887 = add i64 %2886, %2855
  %2888 = add i64 %2599, 132
  store i64 %2888, i64* %PC.i, align 8
  %2889 = load double, double* %53, align 1
  %2890 = inttoptr i64 %2887 to double*
  %2891 = load double, double* %2890, align 8
  %2892 = fdiv double %2889, %2891
  store double %2892, double* %53, align 1
  %2893 = add i64 %2880, -16
  %2894 = add i64 %2599, 136
  store i64 %2894, i64* %PC.i, align 8
  %2895 = inttoptr i64 %2893 to i64*
  %2896 = load i64, i64* %2895, align 8
  store i64 %2896, i64* %RAX.i1011, align 8
  %2897 = add i64 %2880, -8
  %2898 = add i64 %2599, 139
  store i64 %2898, i64* %PC.i, align 8
  %2899 = inttoptr i64 %2897 to i32*
  %2900 = load i32, i32* %2899, align 4
  %2901 = add i32 %2900, -2
  %2902 = zext i32 %2901 to i64
  store i64 %2902, i64* %RCX.i1018, align 8
  %2903 = icmp ult i32 %2900, 2
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %46, align 1
  %2905 = and i32 %2901, 255
  %2906 = tail call i32 @llvm.ctpop.i32(i32 %2905)
  %2907 = trunc i32 %2906 to i8
  %2908 = and i8 %2907, 1
  %2909 = xor i8 %2908, 1
  store i8 %2909, i8* %47, align 1
  %2910 = xor i32 %2900, %2901
  %2911 = lshr i32 %2910, 4
  %2912 = trunc i32 %2911 to i8
  %2913 = and i8 %2912, 1
  store i8 %2913, i8* %48, align 1
  %2914 = icmp eq i32 %2901, 0
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %49, align 1
  %2916 = lshr i32 %2901, 31
  %2917 = trunc i32 %2916 to i8
  store i8 %2917, i8* %50, align 1
  %2918 = lshr i32 %2900, 31
  %2919 = xor i32 %2916, %2918
  %2920 = add nuw nsw i32 %2919, %2918
  %2921 = icmp eq i32 %2920, 2
  %2922 = zext i1 %2921 to i8
  store i8 %2922, i8* %51, align 1
  %2923 = add i64 %2880, -40
  %2924 = add i64 %2599, 145
  store i64 %2924, i64* %PC.i, align 8
  %2925 = inttoptr i64 %2923 to i32*
  %2926 = load i32, i32* %2925, align 4
  %2927 = sub i32 %2901, %2926
  %2928 = zext i32 %2927 to i64
  store i64 %2928, i64* %RCX.i1018, align 8
  %2929 = sext i32 %2927 to i64
  %2930 = shl nsw i64 %2929, 13
  store i64 %2930, i64* %RDX.i1021, align 8
  %2931 = lshr i64 %2929, 50
  %2932 = and i64 %2931, 1
  %2933 = load i64, i64* %RAX.i1011, align 8
  %2934 = add i64 %2930, %2933
  store i64 %2934, i64* %RAX.i1011, align 8
  %2935 = icmp ult i64 %2934, %2933
  %2936 = icmp ult i64 %2934, %2930
  %2937 = or i1 %2935, %2936
  %2938 = zext i1 %2937 to i8
  store i8 %2938, i8* %46, align 1
  %2939 = trunc i64 %2934 to i32
  %2940 = and i32 %2939, 255
  %2941 = tail call i32 @llvm.ctpop.i32(i32 %2940)
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  %2944 = xor i8 %2943, 1
  store i8 %2944, i8* %47, align 1
  %2945 = xor i64 %2933, %2934
  %2946 = lshr i64 %2945, 4
  %2947 = trunc i64 %2946 to i8
  %2948 = and i8 %2947, 1
  store i8 %2948, i8* %48, align 1
  %2949 = icmp eq i64 %2934, 0
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %49, align 1
  %2951 = lshr i64 %2934, 63
  %2952 = trunc i64 %2951 to i8
  store i8 %2952, i8* %50, align 1
  %2953 = lshr i64 %2933, 63
  %2954 = xor i64 %2951, %2953
  %2955 = xor i64 %2951, %2932
  %2956 = add nuw nsw i64 %2954, %2955
  %2957 = icmp eq i64 %2956, 2
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %51, align 1
  %2959 = load i64, i64* %RBP.i, align 8
  %2960 = add i64 %2959, -44
  %2961 = add i64 %2599, 159
  store i64 %2961, i64* %PC.i, align 8
  %2962 = inttoptr i64 %2960 to i32*
  %2963 = load i32, i32* %2962, align 4
  %2964 = sext i32 %2963 to i64
  store i64 %2964, i64* %RDX.i1021, align 8
  %2965 = shl nsw i64 %2964, 3
  %2966 = add i64 %2965, %2934
  %2967 = add i64 %2599, 164
  store i64 %2967, i64* %PC.i, align 8
  %2968 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %2969 = load i64, i64* %2968, align 1
  %2970 = inttoptr i64 %2966 to i64*
  store i64 %2969, i64* %2970, align 8
  %2971 = load i64, i64* %RBP.i, align 8
  %2972 = add i64 %2971, -44
  %2973 = load i64, i64* %PC.i, align 8
  %2974 = add i64 %2973, 3
  store i64 %2974, i64* %PC.i, align 8
  %2975 = inttoptr i64 %2972 to i32*
  %2976 = load i32, i32* %2975, align 4
  %2977 = add i32 %2976, 1
  %2978 = zext i32 %2977 to i64
  store i64 %2978, i64* %RAX.i1011, align 8
  %2979 = icmp eq i32 %2976, -1
  %2980 = icmp eq i32 %2977, 0
  %2981 = or i1 %2979, %2980
  %2982 = zext i1 %2981 to i8
  store i8 %2982, i8* %46, align 1
  %2983 = and i32 %2977, 255
  %2984 = tail call i32 @llvm.ctpop.i32(i32 %2983)
  %2985 = trunc i32 %2984 to i8
  %2986 = and i8 %2985, 1
  %2987 = xor i8 %2986, 1
  store i8 %2987, i8* %47, align 1
  %2988 = xor i32 %2976, %2977
  %2989 = lshr i32 %2988, 4
  %2990 = trunc i32 %2989 to i8
  %2991 = and i8 %2990, 1
  store i8 %2991, i8* %48, align 1
  %2992 = icmp eq i32 %2977, 0
  %2993 = zext i1 %2992 to i8
  store i8 %2993, i8* %49, align 1
  %2994 = lshr i32 %2977, 31
  %2995 = trunc i32 %2994 to i8
  store i8 %2995, i8* %50, align 1
  %2996 = lshr i32 %2976, 31
  %2997 = xor i32 %2994, %2996
  %2998 = add nuw nsw i32 %2997, %2994
  %2999 = icmp eq i32 %2998, 2
  %3000 = zext i1 %2999 to i8
  store i8 %3000, i8* %51, align 1
  %3001 = add i64 %2973, 9
  store i64 %3001, i64* %PC.i, align 8
  store i32 %2977, i32* %2975, align 4
  %3002 = load i64, i64* %PC.i, align 8
  %3003 = add i64 %3002, -185
  store i64 %3003, i64* %3, align 8
  br label %block_.L_401057

block_.L_401115:                                  ; preds = %block_.L_401057
  %3004 = add i64 %2563, -40
  %3005 = add i64 %2599, 8
  store i64 %3005, i64* %PC.i, align 8
  %3006 = inttoptr i64 %3004 to i32*
  %3007 = load i32, i32* %3006, align 4
  %3008 = add i32 %3007, 1
  %3009 = zext i32 %3008 to i64
  store i64 %3009, i64* %RAX.i1011, align 8
  %3010 = icmp eq i32 %3007, -1
  %3011 = icmp eq i32 %3008, 0
  %3012 = or i1 %3010, %3011
  %3013 = zext i1 %3012 to i8
  store i8 %3013, i8* %46, align 1
  %3014 = and i32 %3008, 255
  %3015 = tail call i32 @llvm.ctpop.i32(i32 %3014)
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = xor i8 %3017, 1
  store i8 %3018, i8* %47, align 1
  %3019 = xor i32 %3007, %3008
  %3020 = lshr i32 %3019, 4
  %3021 = trunc i32 %3020 to i8
  %3022 = and i8 %3021, 1
  store i8 %3022, i8* %48, align 1
  %3023 = icmp eq i32 %3008, 0
  %3024 = zext i1 %3023 to i8
  store i8 %3024, i8* %49, align 1
  %3025 = lshr i32 %3008, 31
  %3026 = trunc i32 %3025 to i8
  store i8 %3026, i8* %50, align 1
  %3027 = lshr i32 %3007, 31
  %3028 = xor i32 %3025, %3027
  %3029 = add nuw nsw i32 %3028, %3025
  %3030 = icmp eq i32 %3029, 2
  %3031 = zext i1 %3030 to i8
  store i8 %3031, i8* %51, align 1
  %3032 = add i64 %2599, 14
  store i64 %3032, i64* %PC.i, align 8
  store i32 %3008, i32* %3006, align 4
  %3033 = load i64, i64* %PC.i, align 8
  %3034 = add i64 %3033, -228
  store i64 %3034, i64* %3, align 8
  br label %block_.L_40103f

block_.L_401128:                                  ; preds = %block_.L_40103f
  %3035 = add i64 %2520, -36
  %3036 = add i64 %2558, 8
  store i64 %3036, i64* %PC.i, align 8
  %3037 = inttoptr i64 %3035 to i32*
  %3038 = load i32, i32* %3037, align 4
  %3039 = add i32 %3038, 1
  %3040 = zext i32 %3039 to i64
  store i64 %3040, i64* %RAX.i1011, align 8
  %3041 = icmp eq i32 %3038, -1
  %3042 = icmp eq i32 %3039, 0
  %3043 = or i1 %3041, %3042
  %3044 = zext i1 %3043 to i8
  store i8 %3044, i8* %46, align 1
  %3045 = and i32 %3039, 255
  %3046 = tail call i32 @llvm.ctpop.i32(i32 %3045)
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  %3049 = xor i8 %3048, 1
  store i8 %3049, i8* %47, align 1
  %3050 = xor i32 %3038, %3039
  %3051 = lshr i32 %3050, 4
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  store i8 %3053, i8* %48, align 1
  %3054 = icmp eq i32 %3039, 0
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %49, align 1
  %3056 = lshr i32 %3039, 31
  %3057 = trunc i32 %3056 to i8
  store i8 %3057, i8* %50, align 1
  %3058 = lshr i32 %3038, 31
  %3059 = xor i32 %3056, %3058
  %3060 = add nuw nsw i32 %3059, %3056
  %3061 = icmp eq i32 %3060, 2
  %3062 = zext i1 %3061 to i8
  store i8 %3062, i8* %51, align 1
  %3063 = add i64 %2558, 14
  store i64 %3063, i64* %PC.i, align 8
  store i32 %3039, i32* %3037, align 4
  %3064 = load i64, i64* %PC.i, align 8
  %3065 = add i64 %3064, -1417
  store i64 %3065, i64* %3, align 8
  br label %block_.L_400bad

block_.L_40113b:                                  ; preds = %block_.L_400bad
  %3066 = add i64 %97, 1
  store i64 %3066, i64* %PC.i, align 8
  %3067 = load i64, i64* %6, align 8
  %3068 = add i64 %3067, 8
  %3069 = inttoptr i64 %3067 to i64*
  %3070 = load i64, i64* %3069, align 8
  store i64 %3070, i64* %RBP.i, align 8
  store i64 %3068, i64* %6, align 8
  %3071 = add i64 %97, 2
  store i64 %3071, i64* %PC.i, align 8
  %3072 = inttoptr i64 %3068 to i64*
  %3073 = load i64, i64* %3072, align 8
  store i64 %3073, i64* %3, align 8
  %3074 = add i64 %3067, 16
  store i64 %3074, i64* %6, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_40113b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400d07(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

define %struct.Memory* @routine_jge_.L_400cf4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %14 = fdiv double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
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

define %struct.Memory* @routine_jmpq_.L_400bd3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cf9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400bc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400d7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %14 = fdiv double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d0e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400e72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400e5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_subl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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

define %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x3___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 3
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

define %struct.Memory* @routine_jmpq_.L_400d99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e64(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d86(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400fc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400fad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e8c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fb2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401038(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_shlq__0xd___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 13
  store i64 %6, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd___rax__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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
  %14 = fdiv double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fc7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401128(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401115(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %8, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %11, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %10, %8
  %23 = xor i32 %22, %11
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %11, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %8, 31
  %35 = lshr i32 %10, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 3
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

define %struct.Memory* @routine_mulsd___rax__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401057(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40111a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40103f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40112d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400bad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
