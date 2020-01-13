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
  %RDX.i1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -16
  %25 = load i64, i64* %RDX.i1021, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %24 to i64*
  store i64 %25, i64* %28, align 8
  %RCX.i1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -24
  %31 = load i64, i64* %RCX.i1018, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 4
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %30 to i64*
  store i64 %31, i64* %34, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %35 = load i64, i64* %RBP.i, align 8
  %36 = add i64 %35, -32
  %37 = load i64, i64* %R8.i, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 4
  store i64 %39, i64* %3, align 8
  %40 = inttoptr i64 %36 to i64*
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* %RBP.i, align 8
  %42 = add i64 %41, -36
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 7
  store i64 %44, i64* %3, align 8
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
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400bad

block_.L_400bad:                                  ; preds = %block_.L_401128, %entry
  %60 = phi i64 [ %3048, %block_.L_401128 ], [ %.pre, %entry ]
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -36
  %63 = add i64 %60, 3
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = zext i32 %65 to i64
  store i64 %66, i64* %RAX.i1011, align 8
  %67 = add i64 %61, -4
  %68 = add i64 %60, 6
  store i64 %68, i64* %3, align 8
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
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i32*
  store i32 0, i32* %100, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400bc0

block_.L_400bc0:                                  ; preds = %block_.L_400cf4, %block_400bb9
  %101 = phi i64 [ %782, %block_.L_400cf4 ], [ %.pre1, %block_400bb9 ]
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -40
  %104 = add i64 %101, 3
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = zext i32 %106 to i64
  store i64 %107, i64* %RAX.i1011, align 8
  %108 = add i64 %102, -8
  %109 = add i64 %101, 6
  store i64 %109, i64* %3, align 8
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
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i32*
  store i32 1, i32* %141, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400bd3

block_.L_400bd3:                                  ; preds = %block_400bdf, %block_400bcc
  %142 = phi i64 [ %752, %block_400bdf ], [ %.pre2, %block_400bcc ]
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -44
  %145 = add i64 %142, 3
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RAX.i1011, align 8
  %149 = add i64 %143, -8
  %150 = add i64 %142, 6
  store i64 %150, i64* %3, align 8
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
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RAX.i1011, align 8
  %184 = add i64 %143, -40
  %185 = add i64 %179, 8
  store i64 %185, i64* %3, align 8
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
  store i64 %217, i64* %3, align 8
  %218 = load i32, i32* %146, align 4
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %RCX.i1018, align 8
  %220 = shl nsw i64 %219, 3
  %221 = add i64 %220, %192
  %222 = add i64 %179, 24
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %224, i64* %225, align 1
  store double 0.000000e+00, double* %55, align 1
  %226 = add i64 %179, 28
  store i64 %226, i64* %3, align 8
  %227 = load i64, i64* %182, align 8
  store i64 %227, i64* %RAX.i1011, align 8
  %228 = add i64 %179, 32
  store i64 %228, i64* %3, align 8
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
  store i64 %261, i64* %3, align 8
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
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to double*
  %291 = load double, double* %290, align 8
  store double %291, double* %57, align 1
  store double 0.000000e+00, double* %59, align 1
  %292 = add i64 %259, -24
  %293 = add i64 %179, 57
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i64*
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %RAX.i1011, align 8
  %296 = add i64 %259, -40
  %297 = add i64 %179, 61
  store i64 %297, i64* %3, align 8
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
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  store i64 %334, i64* %RCX.i1018, align 8
  %335 = shl nsw i64 %334, 3
  %336 = add i64 %335, %304
  %337 = add i64 %179, 77
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to double*
  %339 = load double, double* %338, align 8
  %340 = fmul double %291, %339
  store double %340, double* %57, align 1
  store i64 0, i64* %58, align 1
  %341 = add i64 %329, -32
  %342 = add i64 %179, 81
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i64*
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %RAX.i1011, align 8
  %345 = add i64 %329, -40
  %346 = add i64 %179, 85
  store i64 %346, i64* %3, align 8
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
  store i64 %378, i64* %3, align 8
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
  store i64 %405, i64* %3, align 8
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
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i64*
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %RAX.i1011, align 8
  %417 = add i64 %412, -40
  %418 = add i64 %179, 118
  store i64 %418, i64* %3, align 8
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
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = sext i32 %453 to i64
  store i64 %454, i64* %RCX.i1018, align 8
  %455 = shl nsw i64 %454, 3
  %456 = add i64 %455, %425
  %457 = add i64 %179, 134
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to double*
  store double %411, double* %458, align 8
  %459 = load i64, i64* %RBP.i, align 8
  %460 = add i64 %459, -32
  %461 = load i64, i64* %3, align 8
  %462 = add i64 %461, 4
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %460 to i64*
  %464 = load i64, i64* %463, align 8
  store i64 %464, i64* %RAX.i1011, align 8
  %465 = add i64 %459, -40
  %466 = add i64 %461, 8
  store i64 %466, i64* %3, align 8
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
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = sext i32 %501 to i64
  store i64 %502, i64* %RCX.i1018, align 8
  %503 = shl nsw i64 %502, 3
  %504 = add i64 %503, %473
  %505 = add i64 %461, 24
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i64*
  %507 = load i64, i64* %506, align 8
  store i64 %507, i64* %225, align 1
  store double 0.000000e+00, double* %55, align 1
  %508 = add i64 %459, -24
  %509 = add i64 %461, 28
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i64*
  %511 = load i64, i64* %510, align 8
  store i64 %511, i64* %RAX.i1011, align 8
  %512 = add i64 %461, 32
  store i64 %512, i64* %3, align 8
  %513 = load i32, i32* %467, align 4
  %514 = sext i32 %513 to i64
  %515 = shl nsw i64 %514, 13
  store i64 %515, i64* %RCX.i1018, align 8
  %516 = lshr i64 %514, 50
  %517 = and i64 %516, 1
  %518 = add i64 %515, %511
  store i64 %518, i64* %RAX.i1011, align 8
  %519 = icmp ult i64 %518, %511
  %520 = icmp ult i64 %518, %515
  %521 = or i1 %519, %520
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %46, align 1
  %523 = trunc i64 %518 to i32
  %524 = and i32 %523, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %47, align 1
  %529 = xor i64 %511, %518
  %530 = lshr i64 %529, 4
  %531 = trunc i64 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %48, align 1
  %533 = icmp eq i64 %518, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %49, align 1
  %535 = lshr i64 %518, 63
  %536 = trunc i64 %535 to i8
  store i8 %536, i8* %50, align 1
  %537 = lshr i64 %511, 63
  %538 = xor i64 %535, %537
  %539 = xor i64 %535, %517
  %540 = add nuw nsw i64 %538, %539
  %541 = icmp eq i64 %540, 2
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %51, align 1
  %543 = load i64, i64* %RBP.i, align 8
  %544 = add i64 %543, -44
  %545 = add i64 %461, 43
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = sext i32 %547 to i64
  store i64 %548, i64* %RCX.i1018, align 8
  %549 = shl nsw i64 %548, 3
  %550 = add i64 %549, %518
  %551 = add i64 %461, 48
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to double*
  %553 = load double, double* %552, align 8
  store double %553, double* %57, align 1
  store double 0.000000e+00, double* %59, align 1
  %554 = add i64 %543, -24
  %555 = add i64 %461, 52
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i64*
  %557 = load i64, i64* %556, align 8
  store i64 %557, i64* %RAX.i1011, align 8
  %558 = add i64 %543, -40
  %559 = add i64 %461, 56
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = sext i32 %561 to i64
  %563 = shl nsw i64 %562, 13
  store i64 %563, i64* %RCX.i1018, align 8
  %564 = lshr i64 %562, 50
  %565 = and i64 %564, 1
  %566 = add i64 %563, %557
  store i64 %566, i64* %RAX.i1011, align 8
  %567 = icmp ult i64 %566, %557
  %568 = icmp ult i64 %566, %563
  %569 = or i1 %567, %568
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %46, align 1
  %571 = trunc i64 %566 to i32
  %572 = and i32 %571, 255
  %573 = tail call i32 @llvm.ctpop.i32(i32 %572)
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  %576 = xor i8 %575, 1
  store i8 %576, i8* %47, align 1
  %577 = xor i64 %557, %566
  %578 = lshr i64 %577, 4
  %579 = trunc i64 %578 to i8
  %580 = and i8 %579, 1
  store i8 %580, i8* %48, align 1
  %581 = icmp eq i64 %566, 0
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %49, align 1
  %583 = lshr i64 %566, 63
  %584 = trunc i64 %583 to i8
  store i8 %584, i8* %50, align 1
  %585 = lshr i64 %557, 63
  %586 = xor i64 %583, %585
  %587 = xor i64 %583, %565
  %588 = add nuw nsw i64 %586, %587
  %589 = icmp eq i64 %588, 2
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %51, align 1
  %591 = add i64 %461, 67
  store i64 %591, i64* %3, align 8
  %592 = load i32, i32* %546, align 4
  %593 = sext i32 %592 to i64
  store i64 %593, i64* %RCX.i1018, align 8
  %594 = shl nsw i64 %593, 3
  %595 = add i64 %594, %566
  %596 = add i64 %461, 72
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to double*
  %598 = load double, double* %597, align 8
  %599 = fmul double %553, %598
  store double %599, double* %57, align 1
  store i64 0, i64* %58, align 1
  %600 = add i64 %543, -32
  %601 = add i64 %461, 76
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i64*
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %RAX.i1011, align 8
  %604 = load i64, i64* %RBP.i, align 8
  %605 = add i64 %604, -40
  %606 = add i64 %461, 80
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %605 to i32*
  %608 = load i32, i32* %607, align 4
  %609 = sext i32 %608 to i64
  %610 = shl nsw i64 %609, 13
  store i64 %610, i64* %RCX.i1018, align 8
  %611 = lshr i64 %609, 50
  %612 = and i64 %611, 1
  %613 = add i64 %610, %603
  store i64 %613, i64* %RAX.i1011, align 8
  %614 = icmp ult i64 %613, %603
  %615 = icmp ult i64 %613, %610
  %616 = or i1 %614, %615
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %46, align 1
  %618 = trunc i64 %613 to i32
  %619 = and i32 %618, 255
  %620 = tail call i32 @llvm.ctpop.i32(i32 %619)
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = xor i8 %622, 1
  store i8 %623, i8* %47, align 1
  %624 = xor i64 %603, %613
  %625 = lshr i64 %624, 4
  %626 = trunc i64 %625 to i8
  %627 = and i8 %626, 1
  store i8 %627, i8* %48, align 1
  %628 = icmp eq i64 %613, 0
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %49, align 1
  %630 = lshr i64 %613, 63
  %631 = trunc i64 %630 to i8
  store i8 %631, i8* %50, align 1
  %632 = lshr i64 %603, 63
  %633 = xor i64 %630, %632
  %634 = xor i64 %630, %612
  %635 = add nuw nsw i64 %633, %634
  %636 = icmp eq i64 %635, 2
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %51, align 1
  %638 = add i64 %604, -44
  %639 = add i64 %461, 90
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = add i32 %641, -1
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RDX.i1021, align 8
  %644 = icmp eq i32 %641, 0
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %46, align 1
  %646 = and i32 %642, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646)
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %47, align 1
  %651 = xor i32 %641, %642
  %652 = lshr i32 %651, 4
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  store i8 %654, i8* %48, align 1
  %655 = icmp eq i32 %642, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %49, align 1
  %657 = lshr i32 %642, 31
  %658 = trunc i32 %657 to i8
  store i8 %658, i8* %50, align 1
  %659 = lshr i32 %641, 31
  %660 = xor i32 %657, %659
  %661 = add nuw nsw i32 %660, %659
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %51, align 1
  %664 = sext i32 %642 to i64
  store i64 %664, i64* %RCX.i1018, align 8
  %665 = shl nsw i64 %664, 3
  %666 = add i64 %665, %613
  %667 = add i64 %461, 101
  store i64 %667, i64* %3, align 8
  %668 = load double, double* %57, align 1
  %669 = inttoptr i64 %666 to double*
  %670 = load double, double* %669, align 8
  %671 = fdiv double %668, %670
  store double %671, double* %57, align 1
  %672 = load double, double* %53, align 1
  %673 = fsub double %672, %671
  store double %673, double* %53, align 1
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -32
  %676 = add i64 %461, 109
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i64*
  %678 = load i64, i64* %677, align 8
  store i64 %678, i64* %RAX.i1011, align 8
  %679 = add i64 %674, -40
  %680 = add i64 %461, 113
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = sext i32 %682 to i64
  %684 = shl nsw i64 %683, 13
  store i64 %684, i64* %RCX.i1018, align 8
  %685 = lshr i64 %683, 50
  %686 = and i64 %685, 1
  %687 = add i64 %684, %678
  store i64 %687, i64* %RAX.i1011, align 8
  %688 = icmp ult i64 %687, %678
  %689 = icmp ult i64 %687, %684
  %690 = or i1 %688, %689
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %46, align 1
  %692 = trunc i64 %687 to i32
  %693 = and i32 %692, 255
  %694 = tail call i32 @llvm.ctpop.i32(i32 %693)
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  %697 = xor i8 %696, 1
  store i8 %697, i8* %47, align 1
  %698 = xor i64 %678, %687
  %699 = lshr i64 %698, 4
  %700 = trunc i64 %699 to i8
  %701 = and i8 %700, 1
  store i8 %701, i8* %48, align 1
  %702 = icmp eq i64 %687, 0
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %49, align 1
  %704 = lshr i64 %687, 63
  %705 = trunc i64 %704 to i8
  store i8 %705, i8* %50, align 1
  %706 = lshr i64 %678, 63
  %707 = xor i64 %704, %706
  %708 = xor i64 %704, %686
  %709 = add nuw nsw i64 %707, %708
  %710 = icmp eq i64 %709, 2
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %51, align 1
  %712 = add i64 %674, -44
  %713 = add i64 %461, 124
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i32*
  %715 = load i32, i32* %714, align 4
  %716 = sext i32 %715 to i64
  store i64 %716, i64* %RCX.i1018, align 8
  %717 = shl nsw i64 %716, 3
  %718 = add i64 %717, %687
  %719 = add i64 %461, 129
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to double*
  store double %673, double* %720, align 8
  %721 = load i64, i64* %RBP.i, align 8
  %722 = add i64 %721, -44
  %723 = load i64, i64* %3, align 8
  %724 = add i64 %723, 3
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %722 to i32*
  %726 = load i32, i32* %725, align 4
  %727 = add i32 %726, 1
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RAX.i1011, align 8
  %729 = icmp eq i32 %726, -1
  %730 = icmp eq i32 %727, 0
  %731 = or i1 %729, %730
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %46, align 1
  %733 = and i32 %727, 255
  %734 = tail call i32 @llvm.ctpop.i32(i32 %733)
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  store i8 %737, i8* %47, align 1
  %738 = xor i32 %726, %727
  %739 = lshr i32 %738, 4
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  store i8 %741, i8* %48, align 1
  %742 = zext i1 %730 to i8
  store i8 %742, i8* %49, align 1
  %743 = lshr i32 %727, 31
  %744 = trunc i32 %743 to i8
  store i8 %744, i8* %50, align 1
  %745 = lshr i32 %726, 31
  %746 = xor i32 %743, %745
  %747 = add nuw nsw i32 %746, %743
  %748 = icmp eq i32 %747, 2
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %51, align 1
  %750 = add i64 %723, 9
  store i64 %750, i64* %3, align 8
  store i32 %727, i32* %725, align 4
  %751 = load i64, i64* %3, align 8
  %752 = add i64 %751, -284
  store i64 %752, i64* %3, align 8
  br label %block_.L_400bd3

block_.L_400cf4:                                  ; preds = %block_.L_400bd3
  %753 = add i64 %143, -40
  %754 = add i64 %179, 8
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = add i32 %756, 1
  %758 = zext i32 %757 to i64
  store i64 %758, i64* %RAX.i1011, align 8
  %759 = icmp eq i32 %756, -1
  %760 = icmp eq i32 %757, 0
  %761 = or i1 %759, %760
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %46, align 1
  %763 = and i32 %757, 255
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %47, align 1
  %768 = xor i32 %756, %757
  %769 = lshr i32 %768, 4
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  store i8 %771, i8* %48, align 1
  %772 = zext i1 %760 to i8
  store i8 %772, i8* %49, align 1
  %773 = lshr i32 %757, 31
  %774 = trunc i32 %773 to i8
  store i8 %774, i8* %50, align 1
  %775 = lshr i32 %756, 31
  %776 = xor i32 %773, %775
  %777 = add nuw nsw i32 %776, %773
  %778 = icmp eq i32 %777, 2
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %51, align 1
  %780 = add i64 %179, 14
  store i64 %780, i64* %3, align 8
  store i32 %757, i32* %755, align 4
  %781 = load i64, i64* %3, align 8
  %782 = add i64 %781, -322
  store i64 %782, i64* %3, align 8
  br label %block_.L_400bc0

block_.L_400d07:                                  ; preds = %block_.L_400bc0
  %783 = add i64 %138, 7
  store i64 %783, i64* %3, align 8
  store i32 0, i32* %105, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400d0e

block_.L_400d0e:                                  ; preds = %block_400d1a, %block_.L_400d07
  %784 = phi i64 [ %1061, %block_400d1a ], [ %.pre3, %block_.L_400d07 ]
  %785 = load i64, i64* %RBP.i, align 8
  %786 = add i64 %785, -40
  %787 = add i64 %784, 3
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %RAX.i1011, align 8
  %791 = add i64 %785, -8
  %792 = add i64 %784, 6
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = sub i32 %789, %794
  %796 = icmp ult i32 %789, %794
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %46, align 1
  %798 = and i32 %795, 255
  %799 = tail call i32 @llvm.ctpop.i32(i32 %798)
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = xor i8 %801, 1
  store i8 %802, i8* %47, align 1
  %803 = xor i32 %794, %789
  %804 = xor i32 %803, %795
  %805 = lshr i32 %804, 4
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  store i8 %807, i8* %48, align 1
  %808 = icmp eq i32 %795, 0
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %49, align 1
  %810 = lshr i32 %795, 31
  %811 = trunc i32 %810 to i8
  store i8 %811, i8* %50, align 1
  %812 = lshr i32 %789, 31
  %813 = lshr i32 %794, 31
  %814 = xor i32 %813, %812
  %815 = xor i32 %810, %812
  %816 = add nuw nsw i32 %815, %814
  %817 = icmp eq i32 %816, 2
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %51, align 1
  %819 = icmp ne i8 %811, 0
  %820 = xor i1 %819, %817
  %.v13 = select i1 %820, i64 12, i64 113
  %821 = add i64 %784, %.v13
  store i64 %821, i64* %3, align 8
  br i1 %820, label %block_400d1a, label %block_.L_400d7f

block_400d1a:                                     ; preds = %block_.L_400d0e
  %822 = add i64 %785, -16
  %823 = add i64 %821, 4
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i64*
  %825 = load i64, i64* %824, align 8
  store i64 %825, i64* %RAX.i1011, align 8
  %826 = add i64 %821, 8
  store i64 %826, i64* %3, align 8
  %827 = load i32, i32* %788, align 4
  %828 = sext i32 %827 to i64
  %829 = shl nsw i64 %828, 13
  store i64 %829, i64* %RCX.i1018, align 8
  %830 = lshr i64 %828, 50
  %831 = and i64 %830, 1
  %832 = add i64 %829, %825
  store i64 %832, i64* %RAX.i1011, align 8
  %833 = icmp ult i64 %832, %825
  %834 = icmp ult i64 %832, %829
  %835 = or i1 %833, %834
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %46, align 1
  %837 = trunc i64 %832 to i32
  %838 = and i32 %837, 255
  %839 = tail call i32 @llvm.ctpop.i32(i32 %838)
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  store i8 %842, i8* %47, align 1
  %843 = xor i64 %825, %832
  %844 = lshr i64 %843, 4
  %845 = trunc i64 %844 to i8
  %846 = and i8 %845, 1
  store i8 %846, i8* %48, align 1
  %847 = icmp eq i64 %832, 0
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %49, align 1
  %849 = lshr i64 %832, 63
  %850 = trunc i64 %849 to i8
  store i8 %850, i8* %50, align 1
  %851 = lshr i64 %825, 63
  %852 = xor i64 %849, %851
  %853 = xor i64 %849, %831
  %854 = add nuw nsw i64 %852, %853
  %855 = icmp eq i64 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %51, align 1
  %857 = add i64 %821, 18
  store i64 %857, i64* %3, align 8
  %858 = load i32, i32* %793, align 4
  %859 = add i32 %858, -1
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RDX.i1021, align 8
  %861 = icmp eq i32 %858, 0
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %46, align 1
  %863 = and i32 %859, 255
  %864 = tail call i32 @llvm.ctpop.i32(i32 %863)
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  %867 = xor i8 %866, 1
  store i8 %867, i8* %47, align 1
  %868 = xor i32 %858, %859
  %869 = lshr i32 %868, 4
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  store i8 %871, i8* %48, align 1
  %872 = icmp eq i32 %859, 0
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %49, align 1
  %874 = lshr i32 %859, 31
  %875 = trunc i32 %874 to i8
  store i8 %875, i8* %50, align 1
  %876 = lshr i32 %858, 31
  %877 = xor i32 %874, %876
  %878 = add nuw nsw i32 %877, %876
  %879 = icmp eq i32 %878, 2
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %51, align 1
  %881 = sext i32 %859 to i64
  store i64 %881, i64* %RCX.i1018, align 8
  %882 = shl nsw i64 %881, 3
  %883 = add i64 %882, %832
  %884 = add i64 %821, 29
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  %887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %886, i64* %887, align 1
  store double 0.000000e+00, double* %55, align 1
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -32
  %890 = add i64 %821, 33
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i64*
  %892 = load i64, i64* %891, align 8
  store i64 %892, i64* %RAX.i1011, align 8
  %893 = add i64 %888, -40
  %894 = add i64 %821, 37
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i32*
  %896 = load i32, i32* %895, align 4
  %897 = sext i32 %896 to i64
  %898 = shl nsw i64 %897, 13
  store i64 %898, i64* %RCX.i1018, align 8
  %899 = lshr i64 %897, 50
  %900 = and i64 %899, 1
  %901 = add i64 %898, %892
  store i64 %901, i64* %RAX.i1011, align 8
  %902 = icmp ult i64 %901, %892
  %903 = icmp ult i64 %901, %898
  %904 = or i1 %902, %903
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %46, align 1
  %906 = trunc i64 %901 to i32
  %907 = and i32 %906, 255
  %908 = tail call i32 @llvm.ctpop.i32(i32 %907)
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  store i8 %911, i8* %47, align 1
  %912 = xor i64 %892, %901
  %913 = lshr i64 %912, 4
  %914 = trunc i64 %913 to i8
  %915 = and i8 %914, 1
  store i8 %915, i8* %48, align 1
  %916 = icmp eq i64 %901, 0
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %49, align 1
  %918 = lshr i64 %901, 63
  %919 = trunc i64 %918 to i8
  store i8 %919, i8* %50, align 1
  %920 = lshr i64 %892, 63
  %921 = xor i64 %918, %920
  %922 = xor i64 %918, %900
  %923 = add nuw nsw i64 %921, %922
  %924 = icmp eq i64 %923, 2
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %51, align 1
  %926 = add i64 %888, -8
  %927 = add i64 %821, 47
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %926 to i32*
  %929 = load i32, i32* %928, align 4
  %930 = add i32 %929, -1
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RDX.i1021, align 8
  %932 = icmp eq i32 %929, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %46, align 1
  %934 = and i32 %930, 255
  %935 = tail call i32 @llvm.ctpop.i32(i32 %934)
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  %938 = xor i8 %937, 1
  store i8 %938, i8* %47, align 1
  %939 = xor i32 %929, %930
  %940 = lshr i32 %939, 4
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  store i8 %942, i8* %48, align 1
  %943 = icmp eq i32 %930, 0
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %49, align 1
  %945 = lshr i32 %930, 31
  %946 = trunc i32 %945 to i8
  store i8 %946, i8* %50, align 1
  %947 = lshr i32 %929, 31
  %948 = xor i32 %945, %947
  %949 = add nuw nsw i32 %948, %947
  %950 = icmp eq i32 %949, 2
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %51, align 1
  %952 = sext i32 %930 to i64
  store i64 %952, i64* %RCX.i1018, align 8
  %953 = shl nsw i64 %952, 3
  %954 = add i64 %953, %901
  %955 = add i64 %821, 58
  store i64 %955, i64* %3, align 8
  %956 = load double, double* %53, align 1
  %957 = inttoptr i64 %954 to double*
  %958 = load double, double* %957, align 8
  %959 = fdiv double %956, %958
  store double %959, double* %53, align 1
  %960 = load i64, i64* %RBP.i, align 8
  %961 = add i64 %960, -16
  %962 = add i64 %821, 62
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to i64*
  %964 = load i64, i64* %963, align 8
  store i64 %964, i64* %RAX.i1011, align 8
  %965 = add i64 %960, -40
  %966 = add i64 %821, 66
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = sext i32 %968 to i64
  %970 = shl nsw i64 %969, 13
  store i64 %970, i64* %RCX.i1018, align 8
  %971 = lshr i64 %969, 50
  %972 = and i64 %971, 1
  %973 = add i64 %970, %964
  store i64 %973, i64* %RAX.i1011, align 8
  %974 = icmp ult i64 %973, %964
  %975 = icmp ult i64 %973, %970
  %976 = or i1 %974, %975
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %46, align 1
  %978 = trunc i64 %973 to i32
  %979 = and i32 %978, 255
  %980 = tail call i32 @llvm.ctpop.i32(i32 %979)
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  %983 = xor i8 %982, 1
  store i8 %983, i8* %47, align 1
  %984 = xor i64 %964, %973
  %985 = lshr i64 %984, 4
  %986 = trunc i64 %985 to i8
  %987 = and i8 %986, 1
  store i8 %987, i8* %48, align 1
  %988 = icmp eq i64 %973, 0
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %49, align 1
  %990 = lshr i64 %973, 63
  %991 = trunc i64 %990 to i8
  store i8 %991, i8* %50, align 1
  %992 = lshr i64 %964, 63
  %993 = xor i64 %990, %992
  %994 = xor i64 %990, %972
  %995 = add nuw nsw i64 %993, %994
  %996 = icmp eq i64 %995, 2
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %51, align 1
  %998 = add i64 %960, -8
  %999 = add i64 %821, 76
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i32*
  %1001 = load i32, i32* %1000, align 4
  %1002 = add i32 %1001, -1
  %1003 = zext i32 %1002 to i64
  store i64 %1003, i64* %RDX.i1021, align 8
  %1004 = icmp eq i32 %1001, 0
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %46, align 1
  %1006 = and i32 %1002, 255
  %1007 = tail call i32 @llvm.ctpop.i32(i32 %1006)
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = xor i8 %1009, 1
  store i8 %1010, i8* %47, align 1
  %1011 = xor i32 %1001, %1002
  %1012 = lshr i32 %1011, 4
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  store i8 %1014, i8* %48, align 1
  %1015 = icmp eq i32 %1002, 0
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %49, align 1
  %1017 = lshr i32 %1002, 31
  %1018 = trunc i32 %1017 to i8
  store i8 %1018, i8* %50, align 1
  %1019 = lshr i32 %1001, 31
  %1020 = xor i32 %1017, %1019
  %1021 = add nuw nsw i32 %1020, %1019
  %1022 = icmp eq i32 %1021, 2
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %51, align 1
  %1024 = sext i32 %1002 to i64
  store i64 %1024, i64* %RCX.i1018, align 8
  %1025 = shl nsw i64 %1024, 3
  %1026 = add i64 %1025, %973
  %1027 = add i64 %821, 87
  store i64 %1027, i64* %3, align 8
  %1028 = load i64, i64* %887, align 1
  %1029 = inttoptr i64 %1026 to i64*
  store i64 %1028, i64* %1029, align 8
  %1030 = load i64, i64* %RBP.i, align 8
  %1031 = add i64 %1030, -40
  %1032 = load i64, i64* %3, align 8
  %1033 = add i64 %1032, 3
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1031 to i32*
  %1035 = load i32, i32* %1034, align 4
  %1036 = add i32 %1035, 1
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %RAX.i1011, align 8
  %1038 = icmp eq i32 %1035, -1
  %1039 = icmp eq i32 %1036, 0
  %1040 = or i1 %1038, %1039
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %46, align 1
  %1042 = and i32 %1036, 255
  %1043 = tail call i32 @llvm.ctpop.i32(i32 %1042)
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = xor i8 %1045, 1
  store i8 %1046, i8* %47, align 1
  %1047 = xor i32 %1035, %1036
  %1048 = lshr i32 %1047, 4
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  store i8 %1050, i8* %48, align 1
  %1051 = zext i1 %1039 to i8
  store i8 %1051, i8* %49, align 1
  %1052 = lshr i32 %1036, 31
  %1053 = trunc i32 %1052 to i8
  store i8 %1053, i8* %50, align 1
  %1054 = lshr i32 %1035, 31
  %1055 = xor i32 %1052, %1054
  %1056 = add nuw nsw i32 %1055, %1052
  %1057 = icmp eq i32 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %51, align 1
  %1059 = add i64 %1032, 9
  store i64 %1059, i64* %3, align 8
  store i32 %1036, i32* %1034, align 4
  %1060 = load i64, i64* %3, align 8
  %1061 = add i64 %1060, -108
  store i64 %1061, i64* %3, align 8
  br label %block_.L_400d0e

block_.L_400d7f:                                  ; preds = %block_.L_400d0e
  %1062 = add i64 %821, 7
  store i64 %1062, i64* %3, align 8
  store i32 0, i32* %788, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400d86

block_.L_400d86:                                  ; preds = %block_.L_400e5f, %block_.L_400d7f
  %1063 = phi i64 [ %1662, %block_.L_400e5f ], [ %.pre4, %block_.L_400d7f ]
  %1064 = load i64, i64* %RBP.i, align 8
  %1065 = add i64 %1064, -40
  %1066 = add i64 %1063, 3
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i32*
  %1068 = load i32, i32* %1067, align 4
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RAX.i1011, align 8
  %1070 = add i64 %1064, -8
  %1071 = add i64 %1063, 6
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = sub i32 %1068, %1073
  %1075 = icmp ult i32 %1068, %1073
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %46, align 1
  %1077 = and i32 %1074, 255
  %1078 = tail call i32 @llvm.ctpop.i32(i32 %1077)
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  %1081 = xor i8 %1080, 1
  store i8 %1081, i8* %47, align 1
  %1082 = xor i32 %1073, %1068
  %1083 = xor i32 %1082, %1074
  %1084 = lshr i32 %1083, 4
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  store i8 %1086, i8* %48, align 1
  %1087 = icmp eq i32 %1074, 0
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %49, align 1
  %1089 = lshr i32 %1074, 31
  %1090 = trunc i32 %1089 to i8
  store i8 %1090, i8* %50, align 1
  %1091 = lshr i32 %1068, 31
  %1092 = lshr i32 %1073, 31
  %1093 = xor i32 %1092, %1091
  %1094 = xor i32 %1089, %1091
  %1095 = add nuw nsw i32 %1094, %1093
  %1096 = icmp eq i32 %1095, 2
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %51, align 1
  %1098 = icmp ne i8 %1090, 0
  %1099 = xor i1 %1098, %1096
  %.v14 = select i1 %1099, i64 12, i64 236
  %1100 = add i64 %1063, %.v14
  store i64 %1100, i64* %3, align 8
  br i1 %1099, label %block_400d92, label %block_.L_400e72

block_400d92:                                     ; preds = %block_.L_400d86
  %1101 = add i64 %1064, -44
  %1102 = add i64 %1100, 7
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  store i32 0, i32* %1103, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400d99

block_.L_400d99:                                  ; preds = %block_400daa, %block_400d92
  %1104 = phi i64 [ %1632, %block_400daa ], [ %.pre5, %block_400d92 ]
  %1105 = load i64, i64* %RBP.i, align 8
  %1106 = add i64 %1105, -44
  %1107 = add i64 %1104, 3
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = zext i32 %1109 to i64
  store i64 %1110, i64* %RAX.i1011, align 8
  %1111 = add i64 %1105, -8
  %1112 = add i64 %1104, 6
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = add i32 %1114, -2
  %1116 = zext i32 %1115 to i64
  store i64 %1116, i64* %RCX.i1018, align 8
  %1117 = lshr i32 %1115, 31
  %1118 = sub i32 %1109, %1115
  %1119 = icmp ult i32 %1109, %1115
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %46, align 1
  %1121 = and i32 %1118, 255
  %1122 = tail call i32 @llvm.ctpop.i32(i32 %1121)
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  store i8 %1125, i8* %47, align 1
  %1126 = xor i32 %1115, %1109
  %1127 = xor i32 %1126, %1118
  %1128 = lshr i32 %1127, 4
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  store i8 %1130, i8* %48, align 1
  %1131 = icmp eq i32 %1118, 0
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %49, align 1
  %1133 = lshr i32 %1118, 31
  %1134 = trunc i32 %1133 to i8
  store i8 %1134, i8* %50, align 1
  %1135 = lshr i32 %1109, 31
  %1136 = xor i32 %1117, %1135
  %1137 = xor i32 %1133, %1135
  %1138 = add nuw nsw i32 %1137, %1136
  %1139 = icmp eq i32 %1138, 2
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %51, align 1
  %1141 = icmp ne i8 %1134, 0
  %1142 = xor i1 %1141, %1139
  %.v15 = select i1 %1142, i64 17, i64 198
  %1143 = add i64 %1104, %.v15
  store i64 %1143, i64* %3, align 8
  br i1 %1142, label %block_400daa, label %block_.L_400e5f

block_400daa:                                     ; preds = %block_.L_400d99
  %1144 = add i64 %1105, -16
  %1145 = add i64 %1143, 4
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i64*
  %1147 = load i64, i64* %1146, align 8
  store i64 %1147, i64* %RAX.i1011, align 8
  %1148 = add i64 %1105, -40
  %1149 = add i64 %1143, 8
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i32*
  %1151 = load i32, i32* %1150, align 4
  %1152 = sext i32 %1151 to i64
  %1153 = shl nsw i64 %1152, 13
  store i64 %1153, i64* %RCX.i1018, align 8
  %1154 = lshr i64 %1152, 50
  %1155 = and i64 %1154, 1
  %1156 = add i64 %1153, %1147
  store i64 %1156, i64* %RAX.i1011, align 8
  %1157 = icmp ult i64 %1156, %1147
  %1158 = icmp ult i64 %1156, %1153
  %1159 = or i1 %1157, %1158
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %46, align 1
  %1161 = trunc i64 %1156 to i32
  %1162 = and i32 %1161, 255
  %1163 = tail call i32 @llvm.ctpop.i32(i32 %1162)
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  %1166 = xor i8 %1165, 1
  store i8 %1166, i8* %47, align 1
  %1167 = xor i64 %1147, %1156
  %1168 = lshr i64 %1167, 4
  %1169 = trunc i64 %1168 to i8
  %1170 = and i8 %1169, 1
  store i8 %1170, i8* %48, align 1
  %1171 = icmp eq i64 %1156, 0
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %49, align 1
  %1173 = lshr i64 %1156, 63
  %1174 = trunc i64 %1173 to i8
  store i8 %1174, i8* %50, align 1
  %1175 = lshr i64 %1147, 63
  %1176 = xor i64 %1173, %1175
  %1177 = xor i64 %1173, %1155
  %1178 = add nuw nsw i64 %1176, %1177
  %1179 = icmp eq i64 %1178, 2
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %51, align 1
  %1181 = add i64 %1143, 18
  store i64 %1181, i64* %3, align 8
  %1182 = load i32, i32* %1113, align 4
  %1183 = add i32 %1182, -2
  %1184 = zext i32 %1183 to i64
  store i64 %1184, i64* %RDX.i1021, align 8
  %1185 = icmp ult i32 %1182, 2
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %46, align 1
  %1187 = and i32 %1183, 255
  %1188 = tail call i32 @llvm.ctpop.i32(i32 %1187)
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  %1191 = xor i8 %1190, 1
  store i8 %1191, i8* %47, align 1
  %1192 = xor i32 %1182, %1183
  %1193 = lshr i32 %1192, 4
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  store i8 %1195, i8* %48, align 1
  %1196 = icmp eq i32 %1183, 0
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %49, align 1
  %1198 = lshr i32 %1183, 31
  %1199 = trunc i32 %1198 to i8
  store i8 %1199, i8* %50, align 1
  %1200 = lshr i32 %1182, 31
  %1201 = xor i32 %1198, %1200
  %1202 = add nuw nsw i32 %1201, %1200
  %1203 = icmp eq i32 %1202, 2
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %51, align 1
  %1205 = load i64, i64* %RBP.i, align 8
  %1206 = add i64 %1205, -44
  %1207 = add i64 %1143, 24
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = sub i32 %1183, %1209
  %1211 = zext i32 %1210 to i64
  store i64 %1211, i64* %RDX.i1021, align 8
  %1212 = icmp ult i32 %1183, %1209
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %46, align 1
  %1214 = and i32 %1210, 255
  %1215 = tail call i32 @llvm.ctpop.i32(i32 %1214)
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = xor i8 %1217, 1
  store i8 %1218, i8* %47, align 1
  %1219 = xor i32 %1209, %1183
  %1220 = xor i32 %1219, %1210
  %1221 = lshr i32 %1220, 4
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  store i8 %1223, i8* %48, align 1
  %1224 = icmp eq i32 %1210, 0
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %49, align 1
  %1226 = lshr i32 %1210, 31
  %1227 = trunc i32 %1226 to i8
  store i8 %1227, i8* %50, align 1
  %1228 = lshr i32 %1209, 31
  %1229 = xor i32 %1228, %1198
  %1230 = xor i32 %1226, %1198
  %1231 = add nuw nsw i32 %1230, %1229
  %1232 = icmp eq i32 %1231, 2
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %51, align 1
  %1234 = sext i32 %1210 to i64
  store i64 %1234, i64* %RCX.i1018, align 8
  %1235 = load i64, i64* %RAX.i1011, align 8
  %1236 = shl nsw i64 %1234, 3
  %1237 = add i64 %1236, %1235
  %1238 = add i64 %1143, 32
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i64*
  %1240 = load i64, i64* %1239, align 8
  %1241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1240, i64* %1241, align 1
  store double 0.000000e+00, double* %55, align 1
  %1242 = add i64 %1205, -16
  %1243 = add i64 %1143, 36
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RAX.i1011, align 8
  %1246 = add i64 %1205, -40
  %1247 = add i64 %1143, 40
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = sext i32 %1249 to i64
  %1251 = shl nsw i64 %1250, 13
  store i64 %1251, i64* %RCX.i1018, align 8
  %1252 = lshr i64 %1250, 50
  %1253 = and i64 %1252, 1
  %1254 = add i64 %1251, %1245
  store i64 %1254, i64* %RAX.i1011, align 8
  %1255 = icmp ult i64 %1254, %1245
  %1256 = icmp ult i64 %1254, %1251
  %1257 = or i1 %1255, %1256
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %46, align 1
  %1259 = trunc i64 %1254 to i32
  %1260 = and i32 %1259, 255
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %47, align 1
  %1265 = xor i64 %1245, %1254
  %1266 = lshr i64 %1265, 4
  %1267 = trunc i64 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %48, align 1
  %1269 = icmp eq i64 %1254, 0
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %49, align 1
  %1271 = lshr i64 %1254, 63
  %1272 = trunc i64 %1271 to i8
  store i8 %1272, i8* %50, align 1
  %1273 = lshr i64 %1245, 63
  %1274 = xor i64 %1271, %1273
  %1275 = xor i64 %1271, %1253
  %1276 = add nuw nsw i64 %1274, %1275
  %1277 = icmp eq i64 %1276, 2
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %51, align 1
  %1279 = load i64, i64* %RBP.i, align 8
  %1280 = add i64 %1279, -8
  %1281 = add i64 %1143, 50
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = add i32 %1283, -2
  %1285 = zext i32 %1284 to i64
  store i64 %1285, i64* %RDX.i1021, align 8
  %1286 = icmp ult i32 %1283, 2
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %46, align 1
  %1288 = and i32 %1284, 255
  %1289 = tail call i32 @llvm.ctpop.i32(i32 %1288)
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  store i8 %1292, i8* %47, align 1
  %1293 = xor i32 %1283, %1284
  %1294 = lshr i32 %1293, 4
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  store i8 %1296, i8* %48, align 1
  %1297 = icmp eq i32 %1284, 0
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %49, align 1
  %1299 = lshr i32 %1284, 31
  %1300 = trunc i32 %1299 to i8
  store i8 %1300, i8* %50, align 1
  %1301 = lshr i32 %1283, 31
  %1302 = xor i32 %1299, %1301
  %1303 = add nuw nsw i32 %1302, %1301
  %1304 = icmp eq i32 %1303, 2
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %51, align 1
  %1306 = add i64 %1279, -44
  %1307 = add i64 %1143, 56
  store i64 %1307, i64* %3, align 8
  %1308 = inttoptr i64 %1306 to i32*
  %1309 = load i32, i32* %1308, align 4
  %1310 = sub i32 %1284, %1309
  %1311 = lshr i32 %1310, 31
  %1312 = add i32 %1310, -1
  %1313 = zext i32 %1312 to i64
  store i64 %1313, i64* %RDX.i1021, align 8
  %1314 = icmp eq i32 %1310, 0
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %46, align 1
  %1316 = and i32 %1312, 255
  %1317 = tail call i32 @llvm.ctpop.i32(i32 %1316)
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  store i8 %1320, i8* %47, align 1
  %1321 = xor i32 %1310, %1312
  %1322 = lshr i32 %1321, 4
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  store i8 %1324, i8* %48, align 1
  %1325 = icmp eq i32 %1312, 0
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %49, align 1
  %1327 = lshr i32 %1312, 31
  %1328 = trunc i32 %1327 to i8
  store i8 %1328, i8* %50, align 1
  %1329 = xor i32 %1327, %1311
  %1330 = add nuw nsw i32 %1329, %1311
  %1331 = icmp eq i32 %1330, 2
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %51, align 1
  %1333 = sext i32 %1312 to i64
  store i64 %1333, i64* %RCX.i1018, align 8
  %1334 = load i64, i64* %RAX.i1011, align 8
  %1335 = shl nsw i64 %1333, 3
  %1336 = add i64 %1335, %1334
  %1337 = add i64 %1143, 67
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1336 to i64*
  %1339 = load i64, i64* %1338, align 8
  %1340 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1339, i64* %1340, align 1
  store double 0.000000e+00, double* %59, align 1
  %1341 = load i64, i64* %RBP.i, align 8
  %1342 = add i64 %1341, -24
  %1343 = add i64 %1143, 71
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1342 to i64*
  %1345 = load i64, i64* %1344, align 8
  store i64 %1345, i64* %RAX.i1011, align 8
  %1346 = add i64 %1341, -40
  %1347 = add i64 %1143, 75
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = sext i32 %1349 to i64
  %1351 = shl nsw i64 %1350, 13
  store i64 %1351, i64* %RCX.i1018, align 8
  %1352 = lshr i64 %1350, 50
  %1353 = and i64 %1352, 1
  %1354 = add i64 %1351, %1345
  store i64 %1354, i64* %RAX.i1011, align 8
  %1355 = icmp ult i64 %1354, %1345
  %1356 = icmp ult i64 %1354, %1351
  %1357 = or i1 %1355, %1356
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %46, align 1
  %1359 = trunc i64 %1354 to i32
  %1360 = and i32 %1359, 255
  %1361 = tail call i32 @llvm.ctpop.i32(i32 %1360)
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  %1364 = xor i8 %1363, 1
  store i8 %1364, i8* %47, align 1
  %1365 = xor i64 %1345, %1354
  %1366 = lshr i64 %1365, 4
  %1367 = trunc i64 %1366 to i8
  %1368 = and i8 %1367, 1
  store i8 %1368, i8* %48, align 1
  %1369 = icmp eq i64 %1354, 0
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %49, align 1
  %1371 = lshr i64 %1354, 63
  %1372 = trunc i64 %1371 to i8
  store i8 %1372, i8* %50, align 1
  %1373 = lshr i64 %1345, 63
  %1374 = xor i64 %1371, %1373
  %1375 = xor i64 %1371, %1353
  %1376 = add nuw nsw i64 %1374, %1375
  %1377 = icmp eq i64 %1376, 2
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %51, align 1
  %1379 = add i64 %1341, -8
  %1380 = add i64 %1143, 85
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  %1382 = load i32, i32* %1381, align 4
  %1383 = zext i32 %1382 to i64
  store i64 %1383, i64* %RDX.i1021, align 8
  %1384 = add i64 %1341, -44
  %1385 = add i64 %1143, 88
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = sub i32 %1382, %1387
  %1389 = lshr i32 %1388, 31
  %1390 = add i32 %1388, -3
  %1391 = zext i32 %1390 to i64
  store i64 %1391, i64* %RDX.i1021, align 8
  %1392 = icmp ult i32 %1388, 3
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %46, align 1
  %1394 = and i32 %1390, 255
  %1395 = tail call i32 @llvm.ctpop.i32(i32 %1394)
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  %1398 = xor i8 %1397, 1
  store i8 %1398, i8* %47, align 1
  %1399 = xor i32 %1388, %1390
  %1400 = lshr i32 %1399, 4
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  store i8 %1402, i8* %48, align 1
  %1403 = icmp eq i32 %1390, 0
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %49, align 1
  %1405 = lshr i32 %1390, 31
  %1406 = trunc i32 %1405 to i8
  store i8 %1406, i8* %50, align 1
  %1407 = xor i32 %1405, %1389
  %1408 = add nuw nsw i32 %1407, %1389
  %1409 = icmp eq i32 %1408, 2
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %51, align 1
  %1411 = sext i32 %1390 to i64
  store i64 %1411, i64* %RCX.i1018, align 8
  %1412 = load i64, i64* %RAX.i1011, align 8
  %1413 = shl nsw i64 %1411, 3
  %1414 = add i64 %1413, %1412
  %1415 = add i64 %1143, 99
  store i64 %1415, i64* %3, align 8
  %1416 = load double, double* %57, align 1
  %1417 = inttoptr i64 %1414 to double*
  %1418 = load double, double* %1417, align 8
  %1419 = fmul double %1416, %1418
  store double %1419, double* %57, align 1
  %1420 = load double, double* %53, align 1
  %1421 = fsub double %1420, %1419
  store double %1421, double* %53, align 1
  %1422 = load i64, i64* %RBP.i, align 8
  %1423 = add i64 %1422, -32
  %1424 = add i64 %1143, 107
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i64*
  %1426 = load i64, i64* %1425, align 8
  store i64 %1426, i64* %RAX.i1011, align 8
  %1427 = add i64 %1422, -40
  %1428 = add i64 %1143, 111
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = sext i32 %1430 to i64
  %1432 = shl nsw i64 %1431, 13
  store i64 %1432, i64* %RCX.i1018, align 8
  %1433 = lshr i64 %1431, 50
  %1434 = and i64 %1433, 1
  %1435 = add i64 %1432, %1426
  store i64 %1435, i64* %RAX.i1011, align 8
  %1436 = icmp ult i64 %1435, %1426
  %1437 = icmp ult i64 %1435, %1432
  %1438 = or i1 %1436, %1437
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %46, align 1
  %1440 = trunc i64 %1435 to i32
  %1441 = and i32 %1440, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %47, align 1
  %1446 = xor i64 %1426, %1435
  %1447 = lshr i64 %1446, 4
  %1448 = trunc i64 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %48, align 1
  %1450 = icmp eq i64 %1435, 0
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %49, align 1
  %1452 = lshr i64 %1435, 63
  %1453 = trunc i64 %1452 to i8
  store i8 %1453, i8* %50, align 1
  %1454 = lshr i64 %1426, 63
  %1455 = xor i64 %1452, %1454
  %1456 = xor i64 %1452, %1434
  %1457 = add nuw nsw i64 %1455, %1456
  %1458 = icmp eq i64 %1457, 2
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %51, align 1
  %1460 = add i64 %1422, -8
  %1461 = add i64 %1143, 121
  store i64 %1461, i64* %3, align 8
  %1462 = inttoptr i64 %1460 to i32*
  %1463 = load i32, i32* %1462, align 4
  %1464 = add i32 %1463, -3
  %1465 = zext i32 %1464 to i64
  store i64 %1465, i64* %RDX.i1021, align 8
  %1466 = icmp ult i32 %1463, 3
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %46, align 1
  %1468 = and i32 %1464, 255
  %1469 = tail call i32 @llvm.ctpop.i32(i32 %1468)
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = xor i8 %1471, 1
  store i8 %1472, i8* %47, align 1
  %1473 = xor i32 %1463, %1464
  %1474 = lshr i32 %1473, 4
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  store i8 %1476, i8* %48, align 1
  %1477 = icmp eq i32 %1464, 0
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %49, align 1
  %1479 = lshr i32 %1464, 31
  %1480 = trunc i32 %1479 to i8
  store i8 %1480, i8* %50, align 1
  %1481 = lshr i32 %1463, 31
  %1482 = xor i32 %1479, %1481
  %1483 = add nuw nsw i32 %1482, %1481
  %1484 = icmp eq i32 %1483, 2
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %51, align 1
  %1486 = load i64, i64* %RBP.i, align 8
  %1487 = add i64 %1486, -44
  %1488 = add i64 %1143, 127
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = sub i32 %1464, %1490
  %1492 = zext i32 %1491 to i64
  store i64 %1492, i64* %RDX.i1021, align 8
  %1493 = icmp ult i32 %1464, %1490
  %1494 = zext i1 %1493 to i8
  store i8 %1494, i8* %46, align 1
  %1495 = and i32 %1491, 255
  %1496 = tail call i32 @llvm.ctpop.i32(i32 %1495)
  %1497 = trunc i32 %1496 to i8
  %1498 = and i8 %1497, 1
  %1499 = xor i8 %1498, 1
  store i8 %1499, i8* %47, align 1
  %1500 = xor i32 %1490, %1464
  %1501 = xor i32 %1500, %1491
  %1502 = lshr i32 %1501, 4
  %1503 = trunc i32 %1502 to i8
  %1504 = and i8 %1503, 1
  store i8 %1504, i8* %48, align 1
  %1505 = icmp eq i32 %1491, 0
  %1506 = zext i1 %1505 to i8
  store i8 %1506, i8* %49, align 1
  %1507 = lshr i32 %1491, 31
  %1508 = trunc i32 %1507 to i8
  store i8 %1508, i8* %50, align 1
  %1509 = lshr i32 %1490, 31
  %1510 = xor i32 %1509, %1479
  %1511 = xor i32 %1507, %1479
  %1512 = add nuw nsw i32 %1511, %1510
  %1513 = icmp eq i32 %1512, 2
  %1514 = zext i1 %1513 to i8
  store i8 %1514, i8* %51, align 1
  %1515 = sext i32 %1491 to i64
  store i64 %1515, i64* %RCX.i1018, align 8
  %1516 = load i64, i64* %RAX.i1011, align 8
  %1517 = shl nsw i64 %1515, 3
  %1518 = add i64 %1517, %1516
  %1519 = add i64 %1143, 135
  store i64 %1519, i64* %3, align 8
  %1520 = load double, double* %53, align 1
  %1521 = inttoptr i64 %1518 to double*
  %1522 = load double, double* %1521, align 8
  %1523 = fdiv double %1520, %1522
  store double %1523, double* %53, align 1
  %1524 = add i64 %1486, -16
  %1525 = add i64 %1143, 139
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i64*
  %1527 = load i64, i64* %1526, align 8
  store i64 %1527, i64* %RAX.i1011, align 8
  %1528 = add i64 %1486, -40
  %1529 = add i64 %1143, 143
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i32*
  %1531 = load i32, i32* %1530, align 4
  %1532 = sext i32 %1531 to i64
  %1533 = shl nsw i64 %1532, 13
  store i64 %1533, i64* %RCX.i1018, align 8
  %1534 = lshr i64 %1532, 50
  %1535 = and i64 %1534, 1
  %1536 = add i64 %1533, %1527
  store i64 %1536, i64* %RAX.i1011, align 8
  %1537 = icmp ult i64 %1536, %1527
  %1538 = icmp ult i64 %1536, %1533
  %1539 = or i1 %1537, %1538
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %46, align 1
  %1541 = trunc i64 %1536 to i32
  %1542 = and i32 %1541, 255
  %1543 = tail call i32 @llvm.ctpop.i32(i32 %1542)
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  %1546 = xor i8 %1545, 1
  store i8 %1546, i8* %47, align 1
  %1547 = xor i64 %1527, %1536
  %1548 = lshr i64 %1547, 4
  %1549 = trunc i64 %1548 to i8
  %1550 = and i8 %1549, 1
  store i8 %1550, i8* %48, align 1
  %1551 = icmp eq i64 %1536, 0
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %49, align 1
  %1553 = lshr i64 %1536, 63
  %1554 = trunc i64 %1553 to i8
  store i8 %1554, i8* %50, align 1
  %1555 = lshr i64 %1527, 63
  %1556 = xor i64 %1553, %1555
  %1557 = xor i64 %1553, %1535
  %1558 = add nuw nsw i64 %1556, %1557
  %1559 = icmp eq i64 %1558, 2
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %51, align 1
  %1561 = load i64, i64* %RBP.i, align 8
  %1562 = add i64 %1561, -8
  %1563 = add i64 %1143, 153
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i32*
  %1565 = load i32, i32* %1564, align 4
  %1566 = zext i32 %1565 to i64
  store i64 %1566, i64* %RDX.i1021, align 8
  %1567 = add i64 %1561, -44
  %1568 = add i64 %1143, 156
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i32*
  %1570 = load i32, i32* %1569, align 4
  %1571 = sub i32 %1565, %1570
  %1572 = lshr i32 %1571, 31
  %1573 = add i32 %1571, -2
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RDX.i1021, align 8
  %1575 = icmp ult i32 %1571, 2
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %46, align 1
  %1577 = and i32 %1573, 255
  %1578 = tail call i32 @llvm.ctpop.i32(i32 %1577)
  %1579 = trunc i32 %1578 to i8
  %1580 = and i8 %1579, 1
  %1581 = xor i8 %1580, 1
  store i8 %1581, i8* %47, align 1
  %1582 = xor i32 %1571, %1573
  %1583 = lshr i32 %1582, 4
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  store i8 %1585, i8* %48, align 1
  %1586 = icmp eq i32 %1573, 0
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %49, align 1
  %1588 = lshr i32 %1573, 31
  %1589 = trunc i32 %1588 to i8
  store i8 %1589, i8* %50, align 1
  %1590 = xor i32 %1588, %1572
  %1591 = add nuw nsw i32 %1590, %1572
  %1592 = icmp eq i32 %1591, 2
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %51, align 1
  %1594 = sext i32 %1573 to i64
  store i64 %1594, i64* %RCX.i1018, align 8
  %1595 = load i64, i64* %RAX.i1011, align 8
  %1596 = shl nsw i64 %1594, 3
  %1597 = add i64 %1596, %1595
  %1598 = add i64 %1143, 167
  store i64 %1598, i64* %3, align 8
  %1599 = load i64, i64* %1241, align 1
  %1600 = inttoptr i64 %1597 to i64*
  store i64 %1599, i64* %1600, align 8
  %1601 = load i64, i64* %RBP.i, align 8
  %1602 = add i64 %1601, -44
  %1603 = load i64, i64* %3, align 8
  %1604 = add i64 %1603, 3
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1602 to i32*
  %1606 = load i32, i32* %1605, align 4
  %1607 = add i32 %1606, 1
  %1608 = zext i32 %1607 to i64
  store i64 %1608, i64* %RAX.i1011, align 8
  %1609 = icmp eq i32 %1606, -1
  %1610 = icmp eq i32 %1607, 0
  %1611 = or i1 %1609, %1610
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %46, align 1
  %1613 = and i32 %1607, 255
  %1614 = tail call i32 @llvm.ctpop.i32(i32 %1613)
  %1615 = trunc i32 %1614 to i8
  %1616 = and i8 %1615, 1
  %1617 = xor i8 %1616, 1
  store i8 %1617, i8* %47, align 1
  %1618 = xor i32 %1606, %1607
  %1619 = lshr i32 %1618, 4
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  store i8 %1621, i8* %48, align 1
  %1622 = zext i1 %1610 to i8
  store i8 %1622, i8* %49, align 1
  %1623 = lshr i32 %1607, 31
  %1624 = trunc i32 %1623 to i8
  store i8 %1624, i8* %50, align 1
  %1625 = lshr i32 %1606, 31
  %1626 = xor i32 %1623, %1625
  %1627 = add nuw nsw i32 %1626, %1623
  %1628 = icmp eq i32 %1627, 2
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %51, align 1
  %1630 = add i64 %1603, 9
  store i64 %1630, i64* %3, align 8
  store i32 %1607, i32* %1605, align 4
  %1631 = load i64, i64* %3, align 8
  %1632 = add i64 %1631, -193
  store i64 %1632, i64* %3, align 8
  br label %block_.L_400d99

block_.L_400e5f:                                  ; preds = %block_.L_400d99
  %1633 = add i64 %1105, -40
  %1634 = add i64 %1143, 8
  store i64 %1634, i64* %3, align 8
  %1635 = inttoptr i64 %1633 to i32*
  %1636 = load i32, i32* %1635, align 4
  %1637 = add i32 %1636, 1
  %1638 = zext i32 %1637 to i64
  store i64 %1638, i64* %RAX.i1011, align 8
  %1639 = icmp eq i32 %1636, -1
  %1640 = icmp eq i32 %1637, 0
  %1641 = or i1 %1639, %1640
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %46, align 1
  %1643 = and i32 %1637, 255
  %1644 = tail call i32 @llvm.ctpop.i32(i32 %1643)
  %1645 = trunc i32 %1644 to i8
  %1646 = and i8 %1645, 1
  %1647 = xor i8 %1646, 1
  store i8 %1647, i8* %47, align 1
  %1648 = xor i32 %1636, %1637
  %1649 = lshr i32 %1648, 4
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  store i8 %1651, i8* %48, align 1
  %1652 = zext i1 %1640 to i8
  store i8 %1652, i8* %49, align 1
  %1653 = lshr i32 %1637, 31
  %1654 = trunc i32 %1653 to i8
  store i8 %1654, i8* %50, align 1
  %1655 = lshr i32 %1636, 31
  %1656 = xor i32 %1653, %1655
  %1657 = add nuw nsw i32 %1656, %1653
  %1658 = icmp eq i32 %1657, 2
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %51, align 1
  %1660 = add i64 %1143, 14
  store i64 %1660, i64* %3, align 8
  store i32 %1637, i32* %1635, align 4
  %1661 = load i64, i64* %3, align 8
  %1662 = add i64 %1661, -231
  store i64 %1662, i64* %3, align 8
  br label %block_.L_400d86

block_.L_400e72:                                  ; preds = %block_.L_400d86
  %1663 = add i64 %1100, 7
  store i64 %1663, i64* %3, align 8
  store i32 1, i32* %1067, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400e79

block_.L_400e79:                                  ; preds = %block_.L_400fad, %block_.L_400e72
  %1664 = phi i64 [ %2281, %block_.L_400fad ], [ %.pre6, %block_.L_400e72 ]
  %1665 = load i64, i64* %RBP.i, align 8
  %1666 = add i64 %1665, -40
  %1667 = add i64 %1664, 3
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = zext i32 %1669 to i64
  store i64 %1670, i64* %RAX.i1011, align 8
  %1671 = add i64 %1665, -8
  %1672 = add i64 %1664, 6
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1671 to i32*
  %1674 = load i32, i32* %1673, align 4
  %1675 = sub i32 %1669, %1674
  %1676 = icmp ult i32 %1669, %1674
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %46, align 1
  %1678 = and i32 %1675, 255
  %1679 = tail call i32 @llvm.ctpop.i32(i32 %1678)
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  store i8 %1682, i8* %47, align 1
  %1683 = xor i32 %1674, %1669
  %1684 = xor i32 %1683, %1675
  %1685 = lshr i32 %1684, 4
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  store i8 %1687, i8* %48, align 1
  %1688 = icmp eq i32 %1675, 0
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %49, align 1
  %1690 = lshr i32 %1675, 31
  %1691 = trunc i32 %1690 to i8
  store i8 %1691, i8* %50, align 1
  %1692 = lshr i32 %1669, 31
  %1693 = lshr i32 %1674, 31
  %1694 = xor i32 %1693, %1692
  %1695 = xor i32 %1690, %1692
  %1696 = add nuw nsw i32 %1695, %1694
  %1697 = icmp eq i32 %1696, 2
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %51, align 1
  %1699 = icmp ne i8 %1691, 0
  %1700 = xor i1 %1699, %1697
  %.v16 = select i1 %1700, i64 12, i64 327
  %1701 = add i64 %1664, %.v16
  %1702 = add i64 %1665, -44
  %1703 = add i64 %1701, 7
  store i64 %1703, i64* %3, align 8
  %1704 = inttoptr i64 %1702 to i32*
  store i32 0, i32* %1704, align 4
  %.pre8 = load i64, i64* %3, align 8
  br i1 %1700, label %block_.L_400e8c, label %block_.L_400fc7

block_.L_400e8c:                                  ; preds = %block_.L_400e79, %block_400e98
  %1705 = phi i64 [ %2251, %block_400e98 ], [ %.pre8, %block_.L_400e79 ]
  %1706 = load i64, i64* %RBP.i, align 8
  %1707 = add i64 %1706, -44
  %1708 = add i64 %1705, 3
  store i64 %1708, i64* %3, align 8
  %1709 = inttoptr i64 %1707 to i32*
  %1710 = load i32, i32* %1709, align 4
  %1711 = zext i32 %1710 to i64
  store i64 %1711, i64* %RAX.i1011, align 8
  %1712 = add i64 %1706, -8
  %1713 = add i64 %1705, 6
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = sub i32 %1710, %1715
  %1717 = icmp ult i32 %1710, %1715
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %46, align 1
  %1719 = and i32 %1716, 255
  %1720 = tail call i32 @llvm.ctpop.i32(i32 %1719)
  %1721 = trunc i32 %1720 to i8
  %1722 = and i8 %1721, 1
  %1723 = xor i8 %1722, 1
  store i8 %1723, i8* %47, align 1
  %1724 = xor i32 %1715, %1710
  %1725 = xor i32 %1724, %1716
  %1726 = lshr i32 %1725, 4
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  store i8 %1728, i8* %48, align 1
  %1729 = icmp eq i32 %1716, 0
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %49, align 1
  %1731 = lshr i32 %1716, 31
  %1732 = trunc i32 %1731 to i8
  store i8 %1732, i8* %50, align 1
  %1733 = lshr i32 %1710, 31
  %1734 = lshr i32 %1715, 31
  %1735 = xor i32 %1734, %1733
  %1736 = xor i32 %1731, %1733
  %1737 = add nuw nsw i32 %1736, %1735
  %1738 = icmp eq i32 %1737, 2
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %51, align 1
  %1740 = icmp ne i8 %1732, 0
  %1741 = xor i1 %1740, %1738
  %.v17 = select i1 %1741, i64 12, i64 289
  %1742 = add i64 %1705, %.v17
  store i64 %1742, i64* %3, align 8
  br i1 %1741, label %block_400e98, label %block_.L_400fad

block_400e98:                                     ; preds = %block_.L_400e8c
  %1743 = add i64 %1706, -16
  %1744 = add i64 %1742, 4
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i64*
  %1746 = load i64, i64* %1745, align 8
  store i64 %1746, i64* %RAX.i1011, align 8
  %1747 = add i64 %1706, -40
  %1748 = add i64 %1742, 8
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = sext i32 %1750 to i64
  %1752 = shl nsw i64 %1751, 13
  store i64 %1752, i64* %RCX.i1018, align 8
  %1753 = lshr i64 %1751, 50
  %1754 = and i64 %1753, 1
  %1755 = add i64 %1752, %1746
  store i64 %1755, i64* %RAX.i1011, align 8
  %1756 = icmp ult i64 %1755, %1746
  %1757 = icmp ult i64 %1755, %1752
  %1758 = or i1 %1756, %1757
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %46, align 1
  %1760 = trunc i64 %1755 to i32
  %1761 = and i32 %1760, 255
  %1762 = tail call i32 @llvm.ctpop.i32(i32 %1761)
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  %1765 = xor i8 %1764, 1
  store i8 %1765, i8* %47, align 1
  %1766 = xor i64 %1746, %1755
  %1767 = lshr i64 %1766, 4
  %1768 = trunc i64 %1767 to i8
  %1769 = and i8 %1768, 1
  store i8 %1769, i8* %48, align 1
  %1770 = icmp eq i64 %1755, 0
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %49, align 1
  %1772 = lshr i64 %1755, 63
  %1773 = trunc i64 %1772 to i8
  store i8 %1773, i8* %50, align 1
  %1774 = lshr i64 %1746, 63
  %1775 = xor i64 %1772, %1774
  %1776 = xor i64 %1772, %1754
  %1777 = add nuw nsw i64 %1775, %1776
  %1778 = icmp eq i64 %1777, 2
  %1779 = zext i1 %1778 to i8
  store i8 %1779, i8* %51, align 1
  %1780 = add i64 %1742, 19
  store i64 %1780, i64* %3, align 8
  %1781 = load i32, i32* %1709, align 4
  %1782 = sext i32 %1781 to i64
  store i64 %1782, i64* %RCX.i1018, align 8
  %1783 = shl nsw i64 %1782, 3
  %1784 = add i64 %1783, %1755
  %1785 = add i64 %1742, 24
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1784 to i64*
  %1787 = load i64, i64* %1786, align 8
  %1788 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1787, i64* %1788, align 1
  store double 0.000000e+00, double* %55, align 1
  %1789 = add i64 %1742, 28
  store i64 %1789, i64* %3, align 8
  %1790 = load i64, i64* %1745, align 8
  store i64 %1790, i64* %RAX.i1011, align 8
  %1791 = add i64 %1742, 31
  store i64 %1791, i64* %3, align 8
  %1792 = load i32, i32* %1749, align 4
  %1793 = add i32 %1792, -1
  %1794 = zext i32 %1793 to i64
  store i64 %1794, i64* %RDX.i1021, align 8
  %1795 = sext i32 %1793 to i64
  %1796 = shl nsw i64 %1795, 13
  store i64 %1796, i64* %RCX.i1018, align 8
  %1797 = lshr i64 %1795, 50
  %1798 = and i64 %1797, 1
  %1799 = add i64 %1796, %1790
  store i64 %1799, i64* %RAX.i1011, align 8
  %1800 = icmp ult i64 %1799, %1790
  %1801 = icmp ult i64 %1799, %1796
  %1802 = or i1 %1800, %1801
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %46, align 1
  %1804 = trunc i64 %1799 to i32
  %1805 = and i32 %1804, 255
  %1806 = tail call i32 @llvm.ctpop.i32(i32 %1805)
  %1807 = trunc i32 %1806 to i8
  %1808 = and i8 %1807, 1
  %1809 = xor i8 %1808, 1
  store i8 %1809, i8* %47, align 1
  %1810 = xor i64 %1790, %1799
  %1811 = lshr i64 %1810, 4
  %1812 = trunc i64 %1811 to i8
  %1813 = and i8 %1812, 1
  store i8 %1813, i8* %48, align 1
  %1814 = icmp eq i64 %1799, 0
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %49, align 1
  %1816 = lshr i64 %1799, 63
  %1817 = trunc i64 %1816 to i8
  store i8 %1817, i8* %50, align 1
  %1818 = lshr i64 %1790, 63
  %1819 = xor i64 %1816, %1818
  %1820 = xor i64 %1816, %1798
  %1821 = add nuw nsw i64 %1819, %1820
  %1822 = icmp eq i64 %1821, 2
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %51, align 1
  %1824 = load i64, i64* %RBP.i, align 8
  %1825 = add i64 %1824, -44
  %1826 = add i64 %1742, 48
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1825 to i32*
  %1828 = load i32, i32* %1827, align 4
  %1829 = sext i32 %1828 to i64
  store i64 %1829, i64* %RCX.i1018, align 8
  %1830 = shl nsw i64 %1829, 3
  %1831 = add i64 %1830, %1799
  %1832 = add i64 %1742, 53
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to double*
  %1834 = load double, double* %1833, align 8
  store double %1834, double* %57, align 1
  store double 0.000000e+00, double* %59, align 1
  %1835 = add i64 %1824, -24
  %1836 = add i64 %1742, 57
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i64*
  %1838 = load i64, i64* %1837, align 8
  store i64 %1838, i64* %RAX.i1011, align 8
  %1839 = add i64 %1824, -40
  %1840 = add i64 %1742, 61
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i32*
  %1842 = load i32, i32* %1841, align 4
  %1843 = sext i32 %1842 to i64
  %1844 = shl nsw i64 %1843, 13
  store i64 %1844, i64* %RCX.i1018, align 8
  %1845 = lshr i64 %1843, 50
  %1846 = and i64 %1845, 1
  %1847 = add i64 %1844, %1838
  store i64 %1847, i64* %RAX.i1011, align 8
  %1848 = icmp ult i64 %1847, %1838
  %1849 = icmp ult i64 %1847, %1844
  %1850 = or i1 %1848, %1849
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %46, align 1
  %1852 = trunc i64 %1847 to i32
  %1853 = and i32 %1852, 255
  %1854 = tail call i32 @llvm.ctpop.i32(i32 %1853)
  %1855 = trunc i32 %1854 to i8
  %1856 = and i8 %1855, 1
  %1857 = xor i8 %1856, 1
  store i8 %1857, i8* %47, align 1
  %1858 = xor i64 %1838, %1847
  %1859 = lshr i64 %1858, 4
  %1860 = trunc i64 %1859 to i8
  %1861 = and i8 %1860, 1
  store i8 %1861, i8* %48, align 1
  %1862 = icmp eq i64 %1847, 0
  %1863 = zext i1 %1862 to i8
  store i8 %1863, i8* %49, align 1
  %1864 = lshr i64 %1847, 63
  %1865 = trunc i64 %1864 to i8
  store i8 %1865, i8* %50, align 1
  %1866 = lshr i64 %1838, 63
  %1867 = xor i64 %1864, %1866
  %1868 = xor i64 %1864, %1846
  %1869 = add nuw nsw i64 %1867, %1868
  %1870 = icmp eq i64 %1869, 2
  %1871 = zext i1 %1870 to i8
  store i8 %1871, i8* %51, align 1
  %1872 = add i64 %1742, 72
  store i64 %1872, i64* %3, align 8
  %1873 = load i32, i32* %1827, align 4
  %1874 = sext i32 %1873 to i64
  store i64 %1874, i64* %RCX.i1018, align 8
  %1875 = shl nsw i64 %1874, 3
  %1876 = add i64 %1875, %1847
  %1877 = add i64 %1742, 77
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to double*
  %1879 = load double, double* %1878, align 8
  %1880 = fmul double %1834, %1879
  store double %1880, double* %57, align 1
  store i64 0, i64* %58, align 1
  %1881 = add i64 %1824, -32
  %1882 = add i64 %1742, 81
  store i64 %1882, i64* %3, align 8
  %1883 = inttoptr i64 %1881 to i64*
  %1884 = load i64, i64* %1883, align 8
  store i64 %1884, i64* %RAX.i1011, align 8
  %1885 = load i64, i64* %RBP.i, align 8
  %1886 = add i64 %1885, -40
  %1887 = add i64 %1742, 84
  store i64 %1887, i64* %3, align 8
  %1888 = inttoptr i64 %1886 to i32*
  %1889 = load i32, i32* %1888, align 4
  %1890 = add i32 %1889, -1
  %1891 = zext i32 %1890 to i64
  store i64 %1891, i64* %RDX.i1021, align 8
  %1892 = sext i32 %1890 to i64
  %1893 = shl nsw i64 %1892, 13
  store i64 %1893, i64* %RCX.i1018, align 8
  %1894 = lshr i64 %1892, 50
  %1895 = and i64 %1894, 1
  %1896 = add i64 %1893, %1884
  store i64 %1896, i64* %RAX.i1011, align 8
  %1897 = icmp ult i64 %1896, %1884
  %1898 = icmp ult i64 %1896, %1893
  %1899 = or i1 %1897, %1898
  %1900 = zext i1 %1899 to i8
  store i8 %1900, i8* %46, align 1
  %1901 = trunc i64 %1896 to i32
  %1902 = and i32 %1901, 255
  %1903 = tail call i32 @llvm.ctpop.i32(i32 %1902)
  %1904 = trunc i32 %1903 to i8
  %1905 = and i8 %1904, 1
  %1906 = xor i8 %1905, 1
  store i8 %1906, i8* %47, align 1
  %1907 = xor i64 %1884, %1896
  %1908 = lshr i64 %1907, 4
  %1909 = trunc i64 %1908 to i8
  %1910 = and i8 %1909, 1
  store i8 %1910, i8* %48, align 1
  %1911 = icmp eq i64 %1896, 0
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %49, align 1
  %1913 = lshr i64 %1896, 63
  %1914 = trunc i64 %1913 to i8
  store i8 %1914, i8* %50, align 1
  %1915 = lshr i64 %1884, 63
  %1916 = xor i64 %1913, %1915
  %1917 = xor i64 %1913, %1895
  %1918 = add nuw nsw i64 %1916, %1917
  %1919 = icmp eq i64 %1918, 2
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %51, align 1
  %1921 = load i64, i64* %RBP.i, align 8
  %1922 = add i64 %1921, -44
  %1923 = add i64 %1742, 101
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1922 to i32*
  %1925 = load i32, i32* %1924, align 4
  %1926 = sext i32 %1925 to i64
  store i64 %1926, i64* %RCX.i1018, align 8
  %1927 = shl nsw i64 %1926, 3
  %1928 = add i64 %1927, %1896
  %1929 = add i64 %1742, 106
  store i64 %1929, i64* %3, align 8
  %1930 = load double, double* %57, align 1
  %1931 = inttoptr i64 %1928 to double*
  %1932 = load double, double* %1931, align 8
  %1933 = fdiv double %1930, %1932
  store double %1933, double* %57, align 1
  %1934 = load double, double* %53, align 1
  %1935 = fsub double %1934, %1933
  store double %1935, double* %53, align 1
  %1936 = add i64 %1921, -16
  %1937 = add i64 %1742, 114
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i64*
  %1939 = load i64, i64* %1938, align 8
  store i64 %1939, i64* %RAX.i1011, align 8
  %1940 = add i64 %1921, -40
  %1941 = add i64 %1742, 118
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1940 to i32*
  %1943 = load i32, i32* %1942, align 4
  %1944 = sext i32 %1943 to i64
  %1945 = shl nsw i64 %1944, 13
  store i64 %1945, i64* %RCX.i1018, align 8
  %1946 = lshr i64 %1944, 50
  %1947 = and i64 %1946, 1
  %1948 = add i64 %1945, %1939
  store i64 %1948, i64* %RAX.i1011, align 8
  %1949 = icmp ult i64 %1948, %1939
  %1950 = icmp ult i64 %1948, %1945
  %1951 = or i1 %1949, %1950
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %46, align 1
  %1953 = trunc i64 %1948 to i32
  %1954 = and i32 %1953, 255
  %1955 = tail call i32 @llvm.ctpop.i32(i32 %1954)
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = xor i8 %1957, 1
  store i8 %1958, i8* %47, align 1
  %1959 = xor i64 %1939, %1948
  %1960 = lshr i64 %1959, 4
  %1961 = trunc i64 %1960 to i8
  %1962 = and i8 %1961, 1
  store i8 %1962, i8* %48, align 1
  %1963 = icmp eq i64 %1948, 0
  %1964 = zext i1 %1963 to i8
  store i8 %1964, i8* %49, align 1
  %1965 = lshr i64 %1948, 63
  %1966 = trunc i64 %1965 to i8
  store i8 %1966, i8* %50, align 1
  %1967 = lshr i64 %1939, 63
  %1968 = xor i64 %1965, %1967
  %1969 = xor i64 %1965, %1947
  %1970 = add nuw nsw i64 %1968, %1969
  %1971 = icmp eq i64 %1970, 2
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %51, align 1
  %1973 = add i64 %1742, 129
  store i64 %1973, i64* %3, align 8
  %1974 = load i32, i32* %1924, align 4
  %1975 = sext i32 %1974 to i64
  store i64 %1975, i64* %RCX.i1018, align 8
  %1976 = shl nsw i64 %1975, 3
  %1977 = add i64 %1976, %1948
  %1978 = add i64 %1742, 134
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to double*
  store double %1935, double* %1979, align 8
  %1980 = load i64, i64* %RBP.i, align 8
  %1981 = add i64 %1980, -32
  %1982 = load i64, i64* %3, align 8
  %1983 = add i64 %1982, 4
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1981 to i64*
  %1985 = load i64, i64* %1984, align 8
  store i64 %1985, i64* %RAX.i1011, align 8
  %1986 = add i64 %1980, -40
  %1987 = add i64 %1982, 8
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = sext i32 %1989 to i64
  %1991 = shl nsw i64 %1990, 13
  store i64 %1991, i64* %RCX.i1018, align 8
  %1992 = lshr i64 %1990, 50
  %1993 = and i64 %1992, 1
  %1994 = add i64 %1991, %1985
  store i64 %1994, i64* %RAX.i1011, align 8
  %1995 = icmp ult i64 %1994, %1985
  %1996 = icmp ult i64 %1994, %1991
  %1997 = or i1 %1995, %1996
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %46, align 1
  %1999 = trunc i64 %1994 to i32
  %2000 = and i32 %1999, 255
  %2001 = tail call i32 @llvm.ctpop.i32(i32 %2000)
  %2002 = trunc i32 %2001 to i8
  %2003 = and i8 %2002, 1
  %2004 = xor i8 %2003, 1
  store i8 %2004, i8* %47, align 1
  %2005 = xor i64 %1985, %1994
  %2006 = lshr i64 %2005, 4
  %2007 = trunc i64 %2006 to i8
  %2008 = and i8 %2007, 1
  store i8 %2008, i8* %48, align 1
  %2009 = icmp eq i64 %1994, 0
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %49, align 1
  %2011 = lshr i64 %1994, 63
  %2012 = trunc i64 %2011 to i8
  store i8 %2012, i8* %50, align 1
  %2013 = lshr i64 %1985, 63
  %2014 = xor i64 %2011, %2013
  %2015 = xor i64 %2011, %1993
  %2016 = add nuw nsw i64 %2014, %2015
  %2017 = icmp eq i64 %2016, 2
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %51, align 1
  %2019 = add i64 %1980, -44
  %2020 = add i64 %1982, 19
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i32*
  %2022 = load i32, i32* %2021, align 4
  %2023 = sext i32 %2022 to i64
  store i64 %2023, i64* %RCX.i1018, align 8
  %2024 = shl nsw i64 %2023, 3
  %2025 = add i64 %2024, %1994
  %2026 = add i64 %1982, 24
  store i64 %2026, i64* %3, align 8
  %2027 = inttoptr i64 %2025 to i64*
  %2028 = load i64, i64* %2027, align 8
  store i64 %2028, i64* %1788, align 1
  store double 0.000000e+00, double* %55, align 1
  %2029 = add i64 %1980, -24
  %2030 = add i64 %1982, 28
  store i64 %2030, i64* %3, align 8
  %2031 = inttoptr i64 %2029 to i64*
  %2032 = load i64, i64* %2031, align 8
  store i64 %2032, i64* %RAX.i1011, align 8
  %2033 = add i64 %1982, 32
  store i64 %2033, i64* %3, align 8
  %2034 = load i32, i32* %1988, align 4
  %2035 = sext i32 %2034 to i64
  %2036 = shl nsw i64 %2035, 13
  store i64 %2036, i64* %RCX.i1018, align 8
  %2037 = lshr i64 %2035, 50
  %2038 = and i64 %2037, 1
  %2039 = add i64 %2036, %2032
  store i64 %2039, i64* %RAX.i1011, align 8
  %2040 = icmp ult i64 %2039, %2032
  %2041 = icmp ult i64 %2039, %2036
  %2042 = or i1 %2040, %2041
  %2043 = zext i1 %2042 to i8
  store i8 %2043, i8* %46, align 1
  %2044 = trunc i64 %2039 to i32
  %2045 = and i32 %2044, 255
  %2046 = tail call i32 @llvm.ctpop.i32(i32 %2045)
  %2047 = trunc i32 %2046 to i8
  %2048 = and i8 %2047, 1
  %2049 = xor i8 %2048, 1
  store i8 %2049, i8* %47, align 1
  %2050 = xor i64 %2032, %2039
  %2051 = lshr i64 %2050, 4
  %2052 = trunc i64 %2051 to i8
  %2053 = and i8 %2052, 1
  store i8 %2053, i8* %48, align 1
  %2054 = icmp eq i64 %2039, 0
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %49, align 1
  %2056 = lshr i64 %2039, 63
  %2057 = trunc i64 %2056 to i8
  store i8 %2057, i8* %50, align 1
  %2058 = lshr i64 %2032, 63
  %2059 = xor i64 %2056, %2058
  %2060 = xor i64 %2056, %2038
  %2061 = add nuw nsw i64 %2059, %2060
  %2062 = icmp eq i64 %2061, 2
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %51, align 1
  %2064 = load i64, i64* %RBP.i, align 8
  %2065 = add i64 %2064, -44
  %2066 = add i64 %1982, 43
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2065 to i32*
  %2068 = load i32, i32* %2067, align 4
  %2069 = sext i32 %2068 to i64
  store i64 %2069, i64* %RCX.i1018, align 8
  %2070 = shl nsw i64 %2069, 3
  %2071 = add i64 %2070, %2039
  %2072 = add i64 %1982, 48
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to double*
  %2074 = load double, double* %2073, align 8
  store double %2074, double* %57, align 1
  store double 0.000000e+00, double* %59, align 1
  %2075 = add i64 %2064, -24
  %2076 = add i64 %1982, 52
  store i64 %2076, i64* %3, align 8
  %2077 = inttoptr i64 %2075 to i64*
  %2078 = load i64, i64* %2077, align 8
  store i64 %2078, i64* %RAX.i1011, align 8
  %2079 = add i64 %2064, -40
  %2080 = add i64 %1982, 56
  store i64 %2080, i64* %3, align 8
  %2081 = inttoptr i64 %2079 to i32*
  %2082 = load i32, i32* %2081, align 4
  %2083 = sext i32 %2082 to i64
  %2084 = shl nsw i64 %2083, 13
  store i64 %2084, i64* %RCX.i1018, align 8
  %2085 = lshr i64 %2083, 50
  %2086 = and i64 %2085, 1
  %2087 = add i64 %2084, %2078
  store i64 %2087, i64* %RAX.i1011, align 8
  %2088 = icmp ult i64 %2087, %2078
  %2089 = icmp ult i64 %2087, %2084
  %2090 = or i1 %2088, %2089
  %2091 = zext i1 %2090 to i8
  store i8 %2091, i8* %46, align 1
  %2092 = trunc i64 %2087 to i32
  %2093 = and i32 %2092, 255
  %2094 = tail call i32 @llvm.ctpop.i32(i32 %2093)
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  %2097 = xor i8 %2096, 1
  store i8 %2097, i8* %47, align 1
  %2098 = xor i64 %2078, %2087
  %2099 = lshr i64 %2098, 4
  %2100 = trunc i64 %2099 to i8
  %2101 = and i8 %2100, 1
  store i8 %2101, i8* %48, align 1
  %2102 = icmp eq i64 %2087, 0
  %2103 = zext i1 %2102 to i8
  store i8 %2103, i8* %49, align 1
  %2104 = lshr i64 %2087, 63
  %2105 = trunc i64 %2104 to i8
  store i8 %2105, i8* %50, align 1
  %2106 = lshr i64 %2078, 63
  %2107 = xor i64 %2104, %2106
  %2108 = xor i64 %2104, %2086
  %2109 = add nuw nsw i64 %2107, %2108
  %2110 = icmp eq i64 %2109, 2
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %51, align 1
  %2112 = add i64 %1982, 67
  store i64 %2112, i64* %3, align 8
  %2113 = load i32, i32* %2067, align 4
  %2114 = sext i32 %2113 to i64
  store i64 %2114, i64* %RCX.i1018, align 8
  %2115 = shl nsw i64 %2114, 3
  %2116 = add i64 %2115, %2087
  %2117 = add i64 %1982, 72
  store i64 %2117, i64* %3, align 8
  %2118 = inttoptr i64 %2116 to double*
  %2119 = load double, double* %2118, align 8
  %2120 = fmul double %2074, %2119
  store double %2120, double* %57, align 1
  store i64 0, i64* %58, align 1
  %2121 = add i64 %2064, -32
  %2122 = add i64 %1982, 76
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i64*
  %2124 = load i64, i64* %2123, align 8
  store i64 %2124, i64* %RAX.i1011, align 8
  %2125 = load i64, i64* %RBP.i, align 8
  %2126 = add i64 %2125, -40
  %2127 = add i64 %1982, 79
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i32*
  %2129 = load i32, i32* %2128, align 4
  %2130 = add i32 %2129, -1
  %2131 = zext i32 %2130 to i64
  store i64 %2131, i64* %RDX.i1021, align 8
  %2132 = sext i32 %2130 to i64
  %2133 = shl nsw i64 %2132, 13
  store i64 %2133, i64* %RCX.i1018, align 8
  %2134 = lshr i64 %2132, 50
  %2135 = and i64 %2134, 1
  %2136 = add i64 %2133, %2124
  store i64 %2136, i64* %RAX.i1011, align 8
  %2137 = icmp ult i64 %2136, %2124
  %2138 = icmp ult i64 %2136, %2133
  %2139 = or i1 %2137, %2138
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %46, align 1
  %2141 = trunc i64 %2136 to i32
  %2142 = and i32 %2141, 255
  %2143 = tail call i32 @llvm.ctpop.i32(i32 %2142)
  %2144 = trunc i32 %2143 to i8
  %2145 = and i8 %2144, 1
  %2146 = xor i8 %2145, 1
  store i8 %2146, i8* %47, align 1
  %2147 = xor i64 %2124, %2136
  %2148 = lshr i64 %2147, 4
  %2149 = trunc i64 %2148 to i8
  %2150 = and i8 %2149, 1
  store i8 %2150, i8* %48, align 1
  %2151 = icmp eq i64 %2136, 0
  %2152 = zext i1 %2151 to i8
  store i8 %2152, i8* %49, align 1
  %2153 = lshr i64 %2136, 63
  %2154 = trunc i64 %2153 to i8
  store i8 %2154, i8* %50, align 1
  %2155 = lshr i64 %2124, 63
  %2156 = xor i64 %2153, %2155
  %2157 = xor i64 %2153, %2135
  %2158 = add nuw nsw i64 %2156, %2157
  %2159 = icmp eq i64 %2158, 2
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %51, align 1
  %2161 = load i64, i64* %RBP.i, align 8
  %2162 = add i64 %2161, -44
  %2163 = add i64 %1982, 96
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2162 to i32*
  %2165 = load i32, i32* %2164, align 4
  %2166 = sext i32 %2165 to i64
  store i64 %2166, i64* %RCX.i1018, align 8
  %2167 = shl nsw i64 %2166, 3
  %2168 = add i64 %2167, %2136
  %2169 = add i64 %1982, 101
  store i64 %2169, i64* %3, align 8
  %2170 = load double, double* %57, align 1
  %2171 = inttoptr i64 %2168 to double*
  %2172 = load double, double* %2171, align 8
  %2173 = fdiv double %2170, %2172
  store double %2173, double* %57, align 1
  %2174 = load double, double* %53, align 1
  %2175 = fsub double %2174, %2173
  store double %2175, double* %53, align 1
  %2176 = add i64 %2161, -32
  %2177 = add i64 %1982, 109
  store i64 %2177, i64* %3, align 8
  %2178 = inttoptr i64 %2176 to i64*
  %2179 = load i64, i64* %2178, align 8
  store i64 %2179, i64* %RAX.i1011, align 8
  %2180 = add i64 %2161, -40
  %2181 = add i64 %1982, 113
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i32*
  %2183 = load i32, i32* %2182, align 4
  %2184 = sext i32 %2183 to i64
  %2185 = shl nsw i64 %2184, 13
  store i64 %2185, i64* %RCX.i1018, align 8
  %2186 = lshr i64 %2184, 50
  %2187 = and i64 %2186, 1
  %2188 = add i64 %2185, %2179
  store i64 %2188, i64* %RAX.i1011, align 8
  %2189 = icmp ult i64 %2188, %2179
  %2190 = icmp ult i64 %2188, %2185
  %2191 = or i1 %2189, %2190
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %46, align 1
  %2193 = trunc i64 %2188 to i32
  %2194 = and i32 %2193, 255
  %2195 = tail call i32 @llvm.ctpop.i32(i32 %2194)
  %2196 = trunc i32 %2195 to i8
  %2197 = and i8 %2196, 1
  %2198 = xor i8 %2197, 1
  store i8 %2198, i8* %47, align 1
  %2199 = xor i64 %2179, %2188
  %2200 = lshr i64 %2199, 4
  %2201 = trunc i64 %2200 to i8
  %2202 = and i8 %2201, 1
  store i8 %2202, i8* %48, align 1
  %2203 = icmp eq i64 %2188, 0
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %49, align 1
  %2205 = lshr i64 %2188, 63
  %2206 = trunc i64 %2205 to i8
  store i8 %2206, i8* %50, align 1
  %2207 = lshr i64 %2179, 63
  %2208 = xor i64 %2205, %2207
  %2209 = xor i64 %2205, %2187
  %2210 = add nuw nsw i64 %2208, %2209
  %2211 = icmp eq i64 %2210, 2
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %51, align 1
  %2213 = add i64 %1982, 124
  store i64 %2213, i64* %3, align 8
  %2214 = load i32, i32* %2164, align 4
  %2215 = sext i32 %2214 to i64
  store i64 %2215, i64* %RCX.i1018, align 8
  %2216 = shl nsw i64 %2215, 3
  %2217 = add i64 %2216, %2188
  %2218 = add i64 %1982, 129
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2217 to double*
  store double %2175, double* %2219, align 8
  %2220 = load i64, i64* %RBP.i, align 8
  %2221 = add i64 %2220, -44
  %2222 = load i64, i64* %3, align 8
  %2223 = add i64 %2222, 3
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2221 to i32*
  %2225 = load i32, i32* %2224, align 4
  %2226 = add i32 %2225, 1
  %2227 = zext i32 %2226 to i64
  store i64 %2227, i64* %RAX.i1011, align 8
  %2228 = icmp eq i32 %2225, -1
  %2229 = icmp eq i32 %2226, 0
  %2230 = or i1 %2228, %2229
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %46, align 1
  %2232 = and i32 %2226, 255
  %2233 = tail call i32 @llvm.ctpop.i32(i32 %2232)
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %47, align 1
  %2237 = xor i32 %2225, %2226
  %2238 = lshr i32 %2237, 4
  %2239 = trunc i32 %2238 to i8
  %2240 = and i8 %2239, 1
  store i8 %2240, i8* %48, align 1
  %2241 = zext i1 %2229 to i8
  store i8 %2241, i8* %49, align 1
  %2242 = lshr i32 %2226, 31
  %2243 = trunc i32 %2242 to i8
  store i8 %2243, i8* %50, align 1
  %2244 = lshr i32 %2225, 31
  %2245 = xor i32 %2242, %2244
  %2246 = add nuw nsw i32 %2245, %2242
  %2247 = icmp eq i32 %2246, 2
  %2248 = zext i1 %2247 to i8
  store i8 %2248, i8* %51, align 1
  %2249 = add i64 %2222, 9
  store i64 %2249, i64* %3, align 8
  store i32 %2226, i32* %2224, align 4
  %2250 = load i64, i64* %3, align 8
  %2251 = add i64 %2250, -284
  store i64 %2251, i64* %3, align 8
  br label %block_.L_400e8c

block_.L_400fad:                                  ; preds = %block_.L_400e8c
  %2252 = add i64 %1706, -40
  %2253 = add i64 %1742, 8
  store i64 %2253, i64* %3, align 8
  %2254 = inttoptr i64 %2252 to i32*
  %2255 = load i32, i32* %2254, align 4
  %2256 = add i32 %2255, 1
  %2257 = zext i32 %2256 to i64
  store i64 %2257, i64* %RAX.i1011, align 8
  %2258 = icmp eq i32 %2255, -1
  %2259 = icmp eq i32 %2256, 0
  %2260 = or i1 %2258, %2259
  %2261 = zext i1 %2260 to i8
  store i8 %2261, i8* %46, align 1
  %2262 = and i32 %2256, 255
  %2263 = tail call i32 @llvm.ctpop.i32(i32 %2262)
  %2264 = trunc i32 %2263 to i8
  %2265 = and i8 %2264, 1
  %2266 = xor i8 %2265, 1
  store i8 %2266, i8* %47, align 1
  %2267 = xor i32 %2255, %2256
  %2268 = lshr i32 %2267, 4
  %2269 = trunc i32 %2268 to i8
  %2270 = and i8 %2269, 1
  store i8 %2270, i8* %48, align 1
  %2271 = zext i1 %2259 to i8
  store i8 %2271, i8* %49, align 1
  %2272 = lshr i32 %2256, 31
  %2273 = trunc i32 %2272 to i8
  store i8 %2273, i8* %50, align 1
  %2274 = lshr i32 %2255, 31
  %2275 = xor i32 %2272, %2274
  %2276 = add nuw nsw i32 %2275, %2272
  %2277 = icmp eq i32 %2276, 2
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %51, align 1
  %2279 = add i64 %1742, 14
  store i64 %2279, i64* %3, align 8
  store i32 %2256, i32* %2254, align 4
  %2280 = load i64, i64* %3, align 8
  %2281 = add i64 %2280, -322
  store i64 %2281, i64* %3, align 8
  br label %block_.L_400e79

block_.L_400fc7:                                  ; preds = %block_.L_400e79, %block_400fd3
  %2282 = phi i64 [ %2502, %block_400fd3 ], [ %.pre8, %block_.L_400e79 ]
  %2283 = load i64, i64* %RBP.i, align 8
  %2284 = add i64 %2283, -44
  %2285 = add i64 %2282, 3
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to i32*
  %2287 = load i32, i32* %2286, align 4
  %2288 = zext i32 %2287 to i64
  store i64 %2288, i64* %RAX.i1011, align 8
  %2289 = add i64 %2283, -8
  %2290 = add i64 %2282, 6
  store i64 %2290, i64* %3, align 8
  %2291 = inttoptr i64 %2289 to i32*
  %2292 = load i32, i32* %2291, align 4
  %2293 = sub i32 %2287, %2292
  %2294 = icmp ult i32 %2287, %2292
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %46, align 1
  %2296 = and i32 %2293, 255
  %2297 = tail call i32 @llvm.ctpop.i32(i32 %2296)
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  %2300 = xor i8 %2299, 1
  store i8 %2300, i8* %47, align 1
  %2301 = xor i32 %2292, %2287
  %2302 = xor i32 %2301, %2293
  %2303 = lshr i32 %2302, 4
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  store i8 %2305, i8* %48, align 1
  %2306 = icmp eq i32 %2293, 0
  %2307 = zext i1 %2306 to i8
  store i8 %2307, i8* %49, align 1
  %2308 = lshr i32 %2293, 31
  %2309 = trunc i32 %2308 to i8
  store i8 %2309, i8* %50, align 1
  %2310 = lshr i32 %2287, 31
  %2311 = lshr i32 %2292, 31
  %2312 = xor i32 %2311, %2310
  %2313 = xor i32 %2308, %2310
  %2314 = add nuw nsw i32 %2313, %2312
  %2315 = icmp eq i32 %2314, 2
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %51, align 1
  %2317 = icmp ne i8 %2309, 0
  %2318 = xor i1 %2317, %2315
  %.v18 = select i1 %2318, i64 12, i64 113
  %2319 = add i64 %2282, %.v18
  store i64 %2319, i64* %3, align 8
  br i1 %2318, label %block_400fd3, label %block_.L_401038

block_400fd3:                                     ; preds = %block_.L_400fc7
  %2320 = add i64 %2283, -16
  %2321 = add i64 %2319, 4
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i64*
  %2323 = load i64, i64* %2322, align 8
  store i64 %2323, i64* %RAX.i1011, align 8
  %2324 = add i64 %2319, 7
  store i64 %2324, i64* %3, align 8
  %2325 = load i32, i32* %2291, align 4
  %2326 = add i32 %2325, -1
  %2327 = zext i32 %2326 to i64
  store i64 %2327, i64* %RCX.i1018, align 8
  %2328 = sext i32 %2326 to i64
  %2329 = shl nsw i64 %2328, 13
  store i64 %2329, i64* %RDX.i1021, align 8
  %2330 = lshr i64 %2328, 50
  %2331 = and i64 %2330, 1
  %2332 = add i64 %2329, %2323
  store i64 %2332, i64* %RAX.i1011, align 8
  %2333 = icmp ult i64 %2332, %2323
  %2334 = icmp ult i64 %2332, %2329
  %2335 = or i1 %2333, %2334
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %46, align 1
  %2337 = trunc i64 %2332 to i32
  %2338 = and i32 %2337, 255
  %2339 = tail call i32 @llvm.ctpop.i32(i32 %2338)
  %2340 = trunc i32 %2339 to i8
  %2341 = and i8 %2340, 1
  %2342 = xor i8 %2341, 1
  store i8 %2342, i8* %47, align 1
  %2343 = xor i64 %2323, %2332
  %2344 = lshr i64 %2343, 4
  %2345 = trunc i64 %2344 to i8
  %2346 = and i8 %2345, 1
  store i8 %2346, i8* %48, align 1
  %2347 = icmp eq i64 %2332, 0
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %49, align 1
  %2349 = lshr i64 %2332, 63
  %2350 = trunc i64 %2349 to i8
  store i8 %2350, i8* %50, align 1
  %2351 = lshr i64 %2323, 63
  %2352 = xor i64 %2349, %2351
  %2353 = xor i64 %2349, %2331
  %2354 = add nuw nsw i64 %2352, %2353
  %2355 = icmp eq i64 %2354, 2
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %51, align 1
  %2357 = load i64, i64* %RBP.i, align 8
  %2358 = add i64 %2357, -44
  %2359 = add i64 %2319, 24
  store i64 %2359, i64* %3, align 8
  %2360 = inttoptr i64 %2358 to i32*
  %2361 = load i32, i32* %2360, align 4
  %2362 = sext i32 %2361 to i64
  store i64 %2362, i64* %RDX.i1021, align 8
  %2363 = shl nsw i64 %2362, 3
  %2364 = add i64 %2363, %2332
  %2365 = add i64 %2319, 29
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i64*
  %2367 = load i64, i64* %2366, align 8
  %2368 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2367, i64* %2368, align 1
  store double 0.000000e+00, double* %55, align 1
  %2369 = add i64 %2357, -32
  %2370 = add i64 %2319, 33
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2369 to i64*
  %2372 = load i64, i64* %2371, align 8
  store i64 %2372, i64* %RAX.i1011, align 8
  %2373 = add i64 %2357, -8
  %2374 = add i64 %2319, 36
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i32*
  %2376 = load i32, i32* %2375, align 4
  %2377 = add i32 %2376, -1
  %2378 = zext i32 %2377 to i64
  store i64 %2378, i64* %RCX.i1018, align 8
  %2379 = sext i32 %2377 to i64
  %2380 = shl nsw i64 %2379, 13
  store i64 %2380, i64* %RDX.i1021, align 8
  %2381 = lshr i64 %2379, 50
  %2382 = and i64 %2381, 1
  %2383 = add i64 %2380, %2372
  store i64 %2383, i64* %RAX.i1011, align 8
  %2384 = icmp ult i64 %2383, %2372
  %2385 = icmp ult i64 %2383, %2380
  %2386 = or i1 %2384, %2385
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %46, align 1
  %2388 = trunc i64 %2383 to i32
  %2389 = and i32 %2388, 255
  %2390 = tail call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  store i8 %2393, i8* %47, align 1
  %2394 = xor i64 %2372, %2383
  %2395 = lshr i64 %2394, 4
  %2396 = trunc i64 %2395 to i8
  %2397 = and i8 %2396, 1
  store i8 %2397, i8* %48, align 1
  %2398 = icmp eq i64 %2383, 0
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %49, align 1
  %2400 = lshr i64 %2383, 63
  %2401 = trunc i64 %2400 to i8
  store i8 %2401, i8* %50, align 1
  %2402 = lshr i64 %2372, 63
  %2403 = xor i64 %2400, %2402
  %2404 = xor i64 %2400, %2382
  %2405 = add nuw nsw i64 %2403, %2404
  %2406 = icmp eq i64 %2405, 2
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %51, align 1
  %2408 = load i64, i64* %RBP.i, align 8
  %2409 = add i64 %2408, -44
  %2410 = add i64 %2319, 53
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2409 to i32*
  %2412 = load i32, i32* %2411, align 4
  %2413 = sext i32 %2412 to i64
  store i64 %2413, i64* %RDX.i1021, align 8
  %2414 = shl nsw i64 %2413, 3
  %2415 = add i64 %2414, %2383
  %2416 = add i64 %2319, 58
  store i64 %2416, i64* %3, align 8
  %2417 = load double, double* %53, align 1
  %2418 = inttoptr i64 %2415 to double*
  %2419 = load double, double* %2418, align 8
  %2420 = fdiv double %2417, %2419
  store double %2420, double* %53, align 1
  %2421 = add i64 %2408, -16
  %2422 = add i64 %2319, 62
  store i64 %2422, i64* %3, align 8
  %2423 = inttoptr i64 %2421 to i64*
  %2424 = load i64, i64* %2423, align 8
  store i64 %2424, i64* %RAX.i1011, align 8
  %2425 = add i64 %2408, -8
  %2426 = add i64 %2319, 65
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2425 to i32*
  %2428 = load i32, i32* %2427, align 4
  %2429 = add i32 %2428, -1
  %2430 = zext i32 %2429 to i64
  store i64 %2430, i64* %RCX.i1018, align 8
  %2431 = sext i32 %2429 to i64
  %2432 = shl nsw i64 %2431, 13
  store i64 %2432, i64* %RDX.i1021, align 8
  %2433 = lshr i64 %2431, 50
  %2434 = and i64 %2433, 1
  %2435 = add i64 %2432, %2424
  store i64 %2435, i64* %RAX.i1011, align 8
  %2436 = icmp ult i64 %2435, %2424
  %2437 = icmp ult i64 %2435, %2432
  %2438 = or i1 %2436, %2437
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %46, align 1
  %2440 = trunc i64 %2435 to i32
  %2441 = and i32 %2440, 255
  %2442 = tail call i32 @llvm.ctpop.i32(i32 %2441)
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  %2445 = xor i8 %2444, 1
  store i8 %2445, i8* %47, align 1
  %2446 = xor i64 %2424, %2435
  %2447 = lshr i64 %2446, 4
  %2448 = trunc i64 %2447 to i8
  %2449 = and i8 %2448, 1
  store i8 %2449, i8* %48, align 1
  %2450 = icmp eq i64 %2435, 0
  %2451 = zext i1 %2450 to i8
  store i8 %2451, i8* %49, align 1
  %2452 = lshr i64 %2435, 63
  %2453 = trunc i64 %2452 to i8
  store i8 %2453, i8* %50, align 1
  %2454 = lshr i64 %2424, 63
  %2455 = xor i64 %2452, %2454
  %2456 = xor i64 %2452, %2434
  %2457 = add nuw nsw i64 %2455, %2456
  %2458 = icmp eq i64 %2457, 2
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %51, align 1
  %2460 = load i64, i64* %RBP.i, align 8
  %2461 = add i64 %2460, -44
  %2462 = add i64 %2319, 82
  store i64 %2462, i64* %3, align 8
  %2463 = inttoptr i64 %2461 to i32*
  %2464 = load i32, i32* %2463, align 4
  %2465 = sext i32 %2464 to i64
  store i64 %2465, i64* %RDX.i1021, align 8
  %2466 = shl nsw i64 %2465, 3
  %2467 = add i64 %2466, %2435
  %2468 = add i64 %2319, 87
  store i64 %2468, i64* %3, align 8
  %2469 = load i64, i64* %2368, align 1
  %2470 = inttoptr i64 %2467 to i64*
  store i64 %2469, i64* %2470, align 8
  %2471 = load i64, i64* %RBP.i, align 8
  %2472 = add i64 %2471, -44
  %2473 = load i64, i64* %3, align 8
  %2474 = add i64 %2473, 3
  store i64 %2474, i64* %3, align 8
  %2475 = inttoptr i64 %2472 to i32*
  %2476 = load i32, i32* %2475, align 4
  %2477 = add i32 %2476, 1
  %2478 = zext i32 %2477 to i64
  store i64 %2478, i64* %RAX.i1011, align 8
  %2479 = icmp eq i32 %2476, -1
  %2480 = icmp eq i32 %2477, 0
  %2481 = or i1 %2479, %2480
  %2482 = zext i1 %2481 to i8
  store i8 %2482, i8* %46, align 1
  %2483 = and i32 %2477, 255
  %2484 = tail call i32 @llvm.ctpop.i32(i32 %2483)
  %2485 = trunc i32 %2484 to i8
  %2486 = and i8 %2485, 1
  %2487 = xor i8 %2486, 1
  store i8 %2487, i8* %47, align 1
  %2488 = xor i32 %2476, %2477
  %2489 = lshr i32 %2488, 4
  %2490 = trunc i32 %2489 to i8
  %2491 = and i8 %2490, 1
  store i8 %2491, i8* %48, align 1
  %2492 = zext i1 %2480 to i8
  store i8 %2492, i8* %49, align 1
  %2493 = lshr i32 %2477, 31
  %2494 = trunc i32 %2493 to i8
  store i8 %2494, i8* %50, align 1
  %2495 = lshr i32 %2476, 31
  %2496 = xor i32 %2493, %2495
  %2497 = add nuw nsw i32 %2496, %2493
  %2498 = icmp eq i32 %2497, 2
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %51, align 1
  %2500 = add i64 %2473, 9
  store i64 %2500, i64* %3, align 8
  store i32 %2477, i32* %2475, align 4
  %2501 = load i64, i64* %3, align 8
  %2502 = add i64 %2501, -108
  store i64 %2502, i64* %3, align 8
  br label %block_.L_400fc7

block_.L_401038:                                  ; preds = %block_.L_400fc7
  %2503 = add i64 %2283, -40
  %2504 = add i64 %2319, 7
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i32*
  store i32 0, i32* %2505, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_40103f

block_.L_40103f:                                  ; preds = %block_.L_401115, %block_.L_401038
  %2506 = phi i64 [ %3018, %block_.L_401115 ], [ %.pre9, %block_.L_401038 ]
  %2507 = load i64, i64* %RBP.i, align 8
  %2508 = add i64 %2507, -40
  %2509 = add i64 %2506, 3
  store i64 %2509, i64* %3, align 8
  %2510 = inttoptr i64 %2508 to i32*
  %2511 = load i32, i32* %2510, align 4
  %2512 = zext i32 %2511 to i64
  store i64 %2512, i64* %RAX.i1011, align 8
  %2513 = add i64 %2507, -8
  %2514 = add i64 %2506, 6
  store i64 %2514, i64* %3, align 8
  %2515 = inttoptr i64 %2513 to i32*
  %2516 = load i32, i32* %2515, align 4
  %2517 = add i32 %2516, -2
  %2518 = zext i32 %2517 to i64
  store i64 %2518, i64* %RCX.i1018, align 8
  %2519 = lshr i32 %2517, 31
  %2520 = sub i32 %2511, %2517
  %2521 = icmp ult i32 %2511, %2517
  %2522 = zext i1 %2521 to i8
  store i8 %2522, i8* %46, align 1
  %2523 = and i32 %2520, 255
  %2524 = tail call i32 @llvm.ctpop.i32(i32 %2523)
  %2525 = trunc i32 %2524 to i8
  %2526 = and i8 %2525, 1
  %2527 = xor i8 %2526, 1
  store i8 %2527, i8* %47, align 1
  %2528 = xor i32 %2517, %2511
  %2529 = xor i32 %2528, %2520
  %2530 = lshr i32 %2529, 4
  %2531 = trunc i32 %2530 to i8
  %2532 = and i8 %2531, 1
  store i8 %2532, i8* %48, align 1
  %2533 = icmp eq i32 %2520, 0
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %49, align 1
  %2535 = lshr i32 %2520, 31
  %2536 = trunc i32 %2535 to i8
  store i8 %2536, i8* %50, align 1
  %2537 = lshr i32 %2511, 31
  %2538 = xor i32 %2519, %2537
  %2539 = xor i32 %2535, %2537
  %2540 = add nuw nsw i32 %2539, %2538
  %2541 = icmp eq i32 %2540, 2
  %2542 = zext i1 %2541 to i8
  store i8 %2542, i8* %51, align 1
  %2543 = icmp ne i8 %2536, 0
  %2544 = xor i1 %2543, %2541
  %.v19 = select i1 %2544, i64 17, i64 233
  %2545 = add i64 %2506, %.v19
  store i64 %2545, i64* %3, align 8
  br i1 %2544, label %block_401050, label %block_.L_401128

block_401050:                                     ; preds = %block_.L_40103f
  %2546 = add i64 %2507, -44
  %2547 = add i64 %2545, 7
  store i64 %2547, i64* %3, align 8
  %2548 = inttoptr i64 %2546 to i32*
  store i32 0, i32* %2548, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_401057

block_.L_401057:                                  ; preds = %block_401063, %block_401050
  %2549 = phi i64 [ %2988, %block_401063 ], [ %.pre10, %block_401050 ]
  %2550 = load i64, i64* %RBP.i, align 8
  %2551 = add i64 %2550, -44
  %2552 = add i64 %2549, 3
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2551 to i32*
  %2554 = load i32, i32* %2553, align 4
  %2555 = zext i32 %2554 to i64
  store i64 %2555, i64* %RAX.i1011, align 8
  %2556 = add i64 %2550, -8
  %2557 = add i64 %2549, 6
  store i64 %2557, i64* %3, align 8
  %2558 = inttoptr i64 %2556 to i32*
  %2559 = load i32, i32* %2558, align 4
  %2560 = sub i32 %2554, %2559
  %2561 = icmp ult i32 %2554, %2559
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %46, align 1
  %2563 = and i32 %2560, 255
  %2564 = tail call i32 @llvm.ctpop.i32(i32 %2563)
  %2565 = trunc i32 %2564 to i8
  %2566 = and i8 %2565, 1
  %2567 = xor i8 %2566, 1
  store i8 %2567, i8* %47, align 1
  %2568 = xor i32 %2559, %2554
  %2569 = xor i32 %2568, %2560
  %2570 = lshr i32 %2569, 4
  %2571 = trunc i32 %2570 to i8
  %2572 = and i8 %2571, 1
  store i8 %2572, i8* %48, align 1
  %2573 = icmp eq i32 %2560, 0
  %2574 = zext i1 %2573 to i8
  store i8 %2574, i8* %49, align 1
  %2575 = lshr i32 %2560, 31
  %2576 = trunc i32 %2575 to i8
  store i8 %2576, i8* %50, align 1
  %2577 = lshr i32 %2554, 31
  %2578 = lshr i32 %2559, 31
  %2579 = xor i32 %2578, %2577
  %2580 = xor i32 %2575, %2577
  %2581 = add nuw nsw i32 %2580, %2579
  %2582 = icmp eq i32 %2581, 2
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %51, align 1
  %2584 = icmp ne i8 %2576, 0
  %2585 = xor i1 %2584, %2582
  %.v20 = select i1 %2585, i64 12, i64 190
  %2586 = add i64 %2549, %.v20
  store i64 %2586, i64* %3, align 8
  br i1 %2585, label %block_401063, label %block_.L_401115

block_401063:                                     ; preds = %block_.L_401057
  %2587 = add i64 %2550, -16
  %2588 = add i64 %2586, 4
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to i64*
  %2590 = load i64, i64* %2589, align 8
  store i64 %2590, i64* %RAX.i1011, align 8
  %2591 = add i64 %2586, 7
  store i64 %2591, i64* %3, align 8
  %2592 = load i32, i32* %2558, align 4
  %2593 = add i32 %2592, -2
  %2594 = zext i32 %2593 to i64
  store i64 %2594, i64* %RCX.i1018, align 8
  %2595 = icmp ult i32 %2592, 2
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %46, align 1
  %2597 = and i32 %2593, 255
  %2598 = tail call i32 @llvm.ctpop.i32(i32 %2597)
  %2599 = trunc i32 %2598 to i8
  %2600 = and i8 %2599, 1
  %2601 = xor i8 %2600, 1
  store i8 %2601, i8* %47, align 1
  %2602 = xor i32 %2592, %2593
  %2603 = lshr i32 %2602, 4
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  store i8 %2605, i8* %48, align 1
  %2606 = icmp eq i32 %2593, 0
  %2607 = zext i1 %2606 to i8
  store i8 %2607, i8* %49, align 1
  %2608 = lshr i32 %2593, 31
  %2609 = trunc i32 %2608 to i8
  store i8 %2609, i8* %50, align 1
  %2610 = lshr i32 %2592, 31
  %2611 = xor i32 %2608, %2610
  %2612 = add nuw nsw i32 %2611, %2610
  %2613 = icmp eq i32 %2612, 2
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %51, align 1
  %2615 = add i64 %2550, -40
  %2616 = add i64 %2586, 13
  store i64 %2616, i64* %3, align 8
  %2617 = inttoptr i64 %2615 to i32*
  %2618 = load i32, i32* %2617, align 4
  %2619 = sub i32 %2593, %2618
  %2620 = zext i32 %2619 to i64
  store i64 %2620, i64* %RCX.i1018, align 8
  %2621 = sext i32 %2619 to i64
  %2622 = shl nsw i64 %2621, 13
  store i64 %2622, i64* %RDX.i1021, align 8
  %2623 = lshr i64 %2621, 50
  %2624 = and i64 %2623, 1
  %2625 = add i64 %2622, %2590
  store i64 %2625, i64* %RAX.i1011, align 8
  %2626 = icmp ult i64 %2625, %2590
  %2627 = icmp ult i64 %2625, %2622
  %2628 = or i1 %2626, %2627
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %46, align 1
  %2630 = trunc i64 %2625 to i32
  %2631 = and i32 %2630, 255
  %2632 = tail call i32 @llvm.ctpop.i32(i32 %2631)
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = xor i8 %2634, 1
  store i8 %2635, i8* %47, align 1
  %2636 = xor i64 %2590, %2625
  %2637 = lshr i64 %2636, 4
  %2638 = trunc i64 %2637 to i8
  %2639 = and i8 %2638, 1
  store i8 %2639, i8* %48, align 1
  %2640 = icmp eq i64 %2625, 0
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %49, align 1
  %2642 = lshr i64 %2625, 63
  %2643 = trunc i64 %2642 to i8
  store i8 %2643, i8* %50, align 1
  %2644 = lshr i64 %2590, 63
  %2645 = xor i64 %2642, %2644
  %2646 = xor i64 %2642, %2624
  %2647 = add nuw nsw i64 %2645, %2646
  %2648 = icmp eq i64 %2647, 2
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %51, align 1
  %2650 = load i64, i64* %RBP.i, align 8
  %2651 = add i64 %2650, -44
  %2652 = add i64 %2586, 27
  store i64 %2652, i64* %3, align 8
  %2653 = inttoptr i64 %2651 to i32*
  %2654 = load i32, i32* %2653, align 4
  %2655 = sext i32 %2654 to i64
  store i64 %2655, i64* %RDX.i1021, align 8
  %2656 = shl nsw i64 %2655, 3
  %2657 = add i64 %2656, %2625
  %2658 = add i64 %2586, 32
  store i64 %2658, i64* %3, align 8
  %2659 = inttoptr i64 %2657 to i64*
  %2660 = load i64, i64* %2659, align 8
  %2661 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2660, i64* %2661, align 1
  store double 0.000000e+00, double* %55, align 1
  %2662 = add i64 %2650, -16
  %2663 = add i64 %2586, 36
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i64*
  %2665 = load i64, i64* %2664, align 8
  store i64 %2665, i64* %RAX.i1011, align 8
  %2666 = add i64 %2650, -8
  %2667 = add i64 %2586, 39
  store i64 %2667, i64* %3, align 8
  %2668 = inttoptr i64 %2666 to i32*
  %2669 = load i32, i32* %2668, align 4
  %2670 = zext i32 %2669 to i64
  store i64 %2670, i64* %RCX.i1018, align 8
  %2671 = add i64 %2650, -40
  %2672 = add i64 %2586, 42
  store i64 %2672, i64* %3, align 8
  %2673 = inttoptr i64 %2671 to i32*
  %2674 = load i32, i32* %2673, align 4
  %2675 = sub i32 %2669, %2674
  %2676 = add i32 %2675, -3
  %2677 = zext i32 %2676 to i64
  store i64 %2677, i64* %RCX.i1018, align 8
  %2678 = sext i32 %2676 to i64
  %2679 = shl nsw i64 %2678, 13
  store i64 %2679, i64* %RDX.i1021, align 8
  %2680 = lshr i64 %2678, 50
  %2681 = and i64 %2680, 1
  %2682 = load i64, i64* %RAX.i1011, align 8
  %2683 = add i64 %2679, %2682
  store i64 %2683, i64* %RAX.i1011, align 8
  %2684 = icmp ult i64 %2683, %2682
  %2685 = icmp ult i64 %2683, %2679
  %2686 = or i1 %2684, %2685
  %2687 = zext i1 %2686 to i8
  store i8 %2687, i8* %46, align 1
  %2688 = trunc i64 %2683 to i32
  %2689 = and i32 %2688, 255
  %2690 = tail call i32 @llvm.ctpop.i32(i32 %2689)
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = xor i8 %2692, 1
  store i8 %2693, i8* %47, align 1
  %2694 = xor i64 %2682, %2683
  %2695 = lshr i64 %2694, 4
  %2696 = trunc i64 %2695 to i8
  %2697 = and i8 %2696, 1
  store i8 %2697, i8* %48, align 1
  %2698 = icmp eq i64 %2683, 0
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %49, align 1
  %2700 = lshr i64 %2683, 63
  %2701 = trunc i64 %2700 to i8
  store i8 %2701, i8* %50, align 1
  %2702 = lshr i64 %2682, 63
  %2703 = xor i64 %2700, %2702
  %2704 = xor i64 %2700, %2681
  %2705 = add nuw nsw i64 %2703, %2704
  %2706 = icmp eq i64 %2705, 2
  %2707 = zext i1 %2706 to i8
  store i8 %2707, i8* %51, align 1
  %2708 = load i64, i64* %RBP.i, align 8
  %2709 = add i64 %2708, -44
  %2710 = add i64 %2586, 59
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2709 to i32*
  %2712 = load i32, i32* %2711, align 4
  %2713 = sext i32 %2712 to i64
  store i64 %2713, i64* %RDX.i1021, align 8
  %2714 = shl nsw i64 %2713, 3
  %2715 = add i64 %2714, %2683
  %2716 = add i64 %2586, 64
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i64*
  %2718 = load i64, i64* %2717, align 8
  %2719 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2718, i64* %2719, align 1
  store double 0.000000e+00, double* %59, align 1
  %2720 = add i64 %2708, -24
  %2721 = add i64 %2586, 68
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i64*
  %2723 = load i64, i64* %2722, align 8
  store i64 %2723, i64* %RAX.i1011, align 8
  %2724 = add i64 %2708, -8
  %2725 = add i64 %2586, 71
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i32*
  %2727 = load i32, i32* %2726, align 4
  %2728 = add i32 %2727, -3
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RCX.i1018, align 8
  %2730 = icmp ult i32 %2727, 3
  %2731 = zext i1 %2730 to i8
  store i8 %2731, i8* %46, align 1
  %2732 = and i32 %2728, 255
  %2733 = tail call i32 @llvm.ctpop.i32(i32 %2732)
  %2734 = trunc i32 %2733 to i8
  %2735 = and i8 %2734, 1
  %2736 = xor i8 %2735, 1
  store i8 %2736, i8* %47, align 1
  %2737 = xor i32 %2727, %2728
  %2738 = lshr i32 %2737, 4
  %2739 = trunc i32 %2738 to i8
  %2740 = and i8 %2739, 1
  store i8 %2740, i8* %48, align 1
  %2741 = icmp eq i32 %2728, 0
  %2742 = zext i1 %2741 to i8
  store i8 %2742, i8* %49, align 1
  %2743 = lshr i32 %2728, 31
  %2744 = trunc i32 %2743 to i8
  store i8 %2744, i8* %50, align 1
  %2745 = lshr i32 %2727, 31
  %2746 = xor i32 %2743, %2745
  %2747 = add nuw nsw i32 %2746, %2745
  %2748 = icmp eq i32 %2747, 2
  %2749 = zext i1 %2748 to i8
  store i8 %2749, i8* %51, align 1
  %2750 = add i64 %2708, -40
  %2751 = add i64 %2586, 77
  store i64 %2751, i64* %3, align 8
  %2752 = inttoptr i64 %2750 to i32*
  %2753 = load i32, i32* %2752, align 4
  %2754 = sub i32 %2728, %2753
  %2755 = zext i32 %2754 to i64
  store i64 %2755, i64* %RCX.i1018, align 8
  %2756 = sext i32 %2754 to i64
  %2757 = shl nsw i64 %2756, 13
  store i64 %2757, i64* %RDX.i1021, align 8
  %2758 = lshr i64 %2756, 50
  %2759 = and i64 %2758, 1
  %2760 = load i64, i64* %RAX.i1011, align 8
  %2761 = add i64 %2757, %2760
  store i64 %2761, i64* %RAX.i1011, align 8
  %2762 = icmp ult i64 %2761, %2760
  %2763 = icmp ult i64 %2761, %2757
  %2764 = or i1 %2762, %2763
  %2765 = zext i1 %2764 to i8
  store i8 %2765, i8* %46, align 1
  %2766 = trunc i64 %2761 to i32
  %2767 = and i32 %2766, 255
  %2768 = tail call i32 @llvm.ctpop.i32(i32 %2767)
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  %2771 = xor i8 %2770, 1
  store i8 %2771, i8* %47, align 1
  %2772 = xor i64 %2760, %2761
  %2773 = lshr i64 %2772, 4
  %2774 = trunc i64 %2773 to i8
  %2775 = and i8 %2774, 1
  store i8 %2775, i8* %48, align 1
  %2776 = icmp eq i64 %2761, 0
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %49, align 1
  %2778 = lshr i64 %2761, 63
  %2779 = trunc i64 %2778 to i8
  store i8 %2779, i8* %50, align 1
  %2780 = lshr i64 %2760, 63
  %2781 = xor i64 %2778, %2780
  %2782 = xor i64 %2778, %2759
  %2783 = add nuw nsw i64 %2781, %2782
  %2784 = icmp eq i64 %2783, 2
  %2785 = zext i1 %2784 to i8
  store i8 %2785, i8* %51, align 1
  %2786 = load i64, i64* %RBP.i, align 8
  %2787 = add i64 %2786, -44
  %2788 = add i64 %2586, 91
  store i64 %2788, i64* %3, align 8
  %2789 = inttoptr i64 %2787 to i32*
  %2790 = load i32, i32* %2789, align 4
  %2791 = sext i32 %2790 to i64
  store i64 %2791, i64* %RDX.i1021, align 8
  %2792 = shl nsw i64 %2791, 3
  %2793 = add i64 %2792, %2761
  %2794 = add i64 %2586, 96
  store i64 %2794, i64* %3, align 8
  %2795 = load double, double* %57, align 1
  %2796 = inttoptr i64 %2793 to double*
  %2797 = load double, double* %2796, align 8
  %2798 = fmul double %2795, %2797
  store double %2798, double* %57, align 1
  %2799 = load double, double* %53, align 1
  %2800 = fsub double %2799, %2798
  store double %2800, double* %53, align 1
  %2801 = add i64 %2786, -32
  %2802 = add i64 %2586, 104
  store i64 %2802, i64* %3, align 8
  %2803 = inttoptr i64 %2801 to i64*
  %2804 = load i64, i64* %2803, align 8
  store i64 %2804, i64* %RAX.i1011, align 8
  %2805 = add i64 %2786, -8
  %2806 = add i64 %2586, 107
  store i64 %2806, i64* %3, align 8
  %2807 = inttoptr i64 %2805 to i32*
  %2808 = load i32, i32* %2807, align 4
  %2809 = add i32 %2808, -2
  %2810 = zext i32 %2809 to i64
  store i64 %2810, i64* %RCX.i1018, align 8
  %2811 = icmp ult i32 %2808, 2
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %46, align 1
  %2813 = and i32 %2809, 255
  %2814 = tail call i32 @llvm.ctpop.i32(i32 %2813)
  %2815 = trunc i32 %2814 to i8
  %2816 = and i8 %2815, 1
  %2817 = xor i8 %2816, 1
  store i8 %2817, i8* %47, align 1
  %2818 = xor i32 %2808, %2809
  %2819 = lshr i32 %2818, 4
  %2820 = trunc i32 %2819 to i8
  %2821 = and i8 %2820, 1
  store i8 %2821, i8* %48, align 1
  %2822 = icmp eq i32 %2809, 0
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %49, align 1
  %2824 = lshr i32 %2809, 31
  %2825 = trunc i32 %2824 to i8
  store i8 %2825, i8* %50, align 1
  %2826 = lshr i32 %2808, 31
  %2827 = xor i32 %2824, %2826
  %2828 = add nuw nsw i32 %2827, %2826
  %2829 = icmp eq i32 %2828, 2
  %2830 = zext i1 %2829 to i8
  store i8 %2830, i8* %51, align 1
  %2831 = add i64 %2786, -40
  %2832 = add i64 %2586, 113
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2831 to i32*
  %2834 = load i32, i32* %2833, align 4
  %2835 = sub i32 %2809, %2834
  %2836 = zext i32 %2835 to i64
  store i64 %2836, i64* %RCX.i1018, align 8
  %2837 = sext i32 %2835 to i64
  %2838 = shl nsw i64 %2837, 13
  store i64 %2838, i64* %RDX.i1021, align 8
  %2839 = lshr i64 %2837, 50
  %2840 = and i64 %2839, 1
  %2841 = load i64, i64* %RAX.i1011, align 8
  %2842 = add i64 %2838, %2841
  store i64 %2842, i64* %RAX.i1011, align 8
  %2843 = icmp ult i64 %2842, %2841
  %2844 = icmp ult i64 %2842, %2838
  %2845 = or i1 %2843, %2844
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %46, align 1
  %2847 = trunc i64 %2842 to i32
  %2848 = and i32 %2847, 255
  %2849 = tail call i32 @llvm.ctpop.i32(i32 %2848)
  %2850 = trunc i32 %2849 to i8
  %2851 = and i8 %2850, 1
  %2852 = xor i8 %2851, 1
  store i8 %2852, i8* %47, align 1
  %2853 = xor i64 %2841, %2842
  %2854 = lshr i64 %2853, 4
  %2855 = trunc i64 %2854 to i8
  %2856 = and i8 %2855, 1
  store i8 %2856, i8* %48, align 1
  %2857 = icmp eq i64 %2842, 0
  %2858 = zext i1 %2857 to i8
  store i8 %2858, i8* %49, align 1
  %2859 = lshr i64 %2842, 63
  %2860 = trunc i64 %2859 to i8
  store i8 %2860, i8* %50, align 1
  %2861 = lshr i64 %2841, 63
  %2862 = xor i64 %2859, %2861
  %2863 = xor i64 %2859, %2840
  %2864 = add nuw nsw i64 %2862, %2863
  %2865 = icmp eq i64 %2864, 2
  %2866 = zext i1 %2865 to i8
  store i8 %2866, i8* %51, align 1
  %2867 = load i64, i64* %RBP.i, align 8
  %2868 = add i64 %2867, -44
  %2869 = add i64 %2586, 127
  store i64 %2869, i64* %3, align 8
  %2870 = inttoptr i64 %2868 to i32*
  %2871 = load i32, i32* %2870, align 4
  %2872 = sext i32 %2871 to i64
  store i64 %2872, i64* %RDX.i1021, align 8
  %2873 = shl nsw i64 %2872, 3
  %2874 = add i64 %2873, %2842
  %2875 = add i64 %2586, 132
  store i64 %2875, i64* %3, align 8
  %2876 = load double, double* %53, align 1
  %2877 = inttoptr i64 %2874 to double*
  %2878 = load double, double* %2877, align 8
  %2879 = fdiv double %2876, %2878
  store double %2879, double* %53, align 1
  %2880 = add i64 %2867, -16
  %2881 = add i64 %2586, 136
  store i64 %2881, i64* %3, align 8
  %2882 = inttoptr i64 %2880 to i64*
  %2883 = load i64, i64* %2882, align 8
  store i64 %2883, i64* %RAX.i1011, align 8
  %2884 = add i64 %2867, -8
  %2885 = add i64 %2586, 139
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i32*
  %2887 = load i32, i32* %2886, align 4
  %2888 = add i32 %2887, -2
  %2889 = zext i32 %2888 to i64
  store i64 %2889, i64* %RCX.i1018, align 8
  %2890 = icmp ult i32 %2887, 2
  %2891 = zext i1 %2890 to i8
  store i8 %2891, i8* %46, align 1
  %2892 = and i32 %2888, 255
  %2893 = tail call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  store i8 %2896, i8* %47, align 1
  %2897 = xor i32 %2887, %2888
  %2898 = lshr i32 %2897, 4
  %2899 = trunc i32 %2898 to i8
  %2900 = and i8 %2899, 1
  store i8 %2900, i8* %48, align 1
  %2901 = icmp eq i32 %2888, 0
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %49, align 1
  %2903 = lshr i32 %2888, 31
  %2904 = trunc i32 %2903 to i8
  store i8 %2904, i8* %50, align 1
  %2905 = lshr i32 %2887, 31
  %2906 = xor i32 %2903, %2905
  %2907 = add nuw nsw i32 %2906, %2905
  %2908 = icmp eq i32 %2907, 2
  %2909 = zext i1 %2908 to i8
  store i8 %2909, i8* %51, align 1
  %2910 = add i64 %2867, -40
  %2911 = add i64 %2586, 145
  store i64 %2911, i64* %3, align 8
  %2912 = inttoptr i64 %2910 to i32*
  %2913 = load i32, i32* %2912, align 4
  %2914 = sub i32 %2888, %2913
  %2915 = zext i32 %2914 to i64
  store i64 %2915, i64* %RCX.i1018, align 8
  %2916 = sext i32 %2914 to i64
  %2917 = shl nsw i64 %2916, 13
  store i64 %2917, i64* %RDX.i1021, align 8
  %2918 = lshr i64 %2916, 50
  %2919 = and i64 %2918, 1
  %2920 = load i64, i64* %RAX.i1011, align 8
  %2921 = add i64 %2917, %2920
  store i64 %2921, i64* %RAX.i1011, align 8
  %2922 = icmp ult i64 %2921, %2920
  %2923 = icmp ult i64 %2921, %2917
  %2924 = or i1 %2922, %2923
  %2925 = zext i1 %2924 to i8
  store i8 %2925, i8* %46, align 1
  %2926 = trunc i64 %2921 to i32
  %2927 = and i32 %2926, 255
  %2928 = tail call i32 @llvm.ctpop.i32(i32 %2927)
  %2929 = trunc i32 %2928 to i8
  %2930 = and i8 %2929, 1
  %2931 = xor i8 %2930, 1
  store i8 %2931, i8* %47, align 1
  %2932 = xor i64 %2920, %2921
  %2933 = lshr i64 %2932, 4
  %2934 = trunc i64 %2933 to i8
  %2935 = and i8 %2934, 1
  store i8 %2935, i8* %48, align 1
  %2936 = icmp eq i64 %2921, 0
  %2937 = zext i1 %2936 to i8
  store i8 %2937, i8* %49, align 1
  %2938 = lshr i64 %2921, 63
  %2939 = trunc i64 %2938 to i8
  store i8 %2939, i8* %50, align 1
  %2940 = lshr i64 %2920, 63
  %2941 = xor i64 %2938, %2940
  %2942 = xor i64 %2938, %2919
  %2943 = add nuw nsw i64 %2941, %2942
  %2944 = icmp eq i64 %2943, 2
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %51, align 1
  %2946 = load i64, i64* %RBP.i, align 8
  %2947 = add i64 %2946, -44
  %2948 = add i64 %2586, 159
  store i64 %2948, i64* %3, align 8
  %2949 = inttoptr i64 %2947 to i32*
  %2950 = load i32, i32* %2949, align 4
  %2951 = sext i32 %2950 to i64
  store i64 %2951, i64* %RDX.i1021, align 8
  %2952 = shl nsw i64 %2951, 3
  %2953 = add i64 %2952, %2921
  %2954 = add i64 %2586, 164
  store i64 %2954, i64* %3, align 8
  %2955 = load i64, i64* %2661, align 1
  %2956 = inttoptr i64 %2953 to i64*
  store i64 %2955, i64* %2956, align 8
  %2957 = load i64, i64* %RBP.i, align 8
  %2958 = add i64 %2957, -44
  %2959 = load i64, i64* %3, align 8
  %2960 = add i64 %2959, 3
  store i64 %2960, i64* %3, align 8
  %2961 = inttoptr i64 %2958 to i32*
  %2962 = load i32, i32* %2961, align 4
  %2963 = add i32 %2962, 1
  %2964 = zext i32 %2963 to i64
  store i64 %2964, i64* %RAX.i1011, align 8
  %2965 = icmp eq i32 %2962, -1
  %2966 = icmp eq i32 %2963, 0
  %2967 = or i1 %2965, %2966
  %2968 = zext i1 %2967 to i8
  store i8 %2968, i8* %46, align 1
  %2969 = and i32 %2963, 255
  %2970 = tail call i32 @llvm.ctpop.i32(i32 %2969)
  %2971 = trunc i32 %2970 to i8
  %2972 = and i8 %2971, 1
  %2973 = xor i8 %2972, 1
  store i8 %2973, i8* %47, align 1
  %2974 = xor i32 %2962, %2963
  %2975 = lshr i32 %2974, 4
  %2976 = trunc i32 %2975 to i8
  %2977 = and i8 %2976, 1
  store i8 %2977, i8* %48, align 1
  %2978 = zext i1 %2966 to i8
  store i8 %2978, i8* %49, align 1
  %2979 = lshr i32 %2963, 31
  %2980 = trunc i32 %2979 to i8
  store i8 %2980, i8* %50, align 1
  %2981 = lshr i32 %2962, 31
  %2982 = xor i32 %2979, %2981
  %2983 = add nuw nsw i32 %2982, %2979
  %2984 = icmp eq i32 %2983, 2
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %51, align 1
  %2986 = add i64 %2959, 9
  store i64 %2986, i64* %3, align 8
  store i32 %2963, i32* %2961, align 4
  %2987 = load i64, i64* %3, align 8
  %2988 = add i64 %2987, -185
  store i64 %2988, i64* %3, align 8
  br label %block_.L_401057

block_.L_401115:                                  ; preds = %block_.L_401057
  %2989 = add i64 %2550, -40
  %2990 = add i64 %2586, 8
  store i64 %2990, i64* %3, align 8
  %2991 = inttoptr i64 %2989 to i32*
  %2992 = load i32, i32* %2991, align 4
  %2993 = add i32 %2992, 1
  %2994 = zext i32 %2993 to i64
  store i64 %2994, i64* %RAX.i1011, align 8
  %2995 = icmp eq i32 %2992, -1
  %2996 = icmp eq i32 %2993, 0
  %2997 = or i1 %2995, %2996
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %46, align 1
  %2999 = and i32 %2993, 255
  %3000 = tail call i32 @llvm.ctpop.i32(i32 %2999)
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  %3003 = xor i8 %3002, 1
  store i8 %3003, i8* %47, align 1
  %3004 = xor i32 %2992, %2993
  %3005 = lshr i32 %3004, 4
  %3006 = trunc i32 %3005 to i8
  %3007 = and i8 %3006, 1
  store i8 %3007, i8* %48, align 1
  %3008 = zext i1 %2996 to i8
  store i8 %3008, i8* %49, align 1
  %3009 = lshr i32 %2993, 31
  %3010 = trunc i32 %3009 to i8
  store i8 %3010, i8* %50, align 1
  %3011 = lshr i32 %2992, 31
  %3012 = xor i32 %3009, %3011
  %3013 = add nuw nsw i32 %3012, %3009
  %3014 = icmp eq i32 %3013, 2
  %3015 = zext i1 %3014 to i8
  store i8 %3015, i8* %51, align 1
  %3016 = add i64 %2586, 14
  store i64 %3016, i64* %3, align 8
  store i32 %2993, i32* %2991, align 4
  %3017 = load i64, i64* %3, align 8
  %3018 = add i64 %3017, -228
  store i64 %3018, i64* %3, align 8
  br label %block_.L_40103f

block_.L_401128:                                  ; preds = %block_.L_40103f
  %3019 = add i64 %2507, -36
  %3020 = add i64 %2545, 8
  store i64 %3020, i64* %3, align 8
  %3021 = inttoptr i64 %3019 to i32*
  %3022 = load i32, i32* %3021, align 4
  %3023 = add i32 %3022, 1
  %3024 = zext i32 %3023 to i64
  store i64 %3024, i64* %RAX.i1011, align 8
  %3025 = icmp eq i32 %3022, -1
  %3026 = icmp eq i32 %3023, 0
  %3027 = or i1 %3025, %3026
  %3028 = zext i1 %3027 to i8
  store i8 %3028, i8* %46, align 1
  %3029 = and i32 %3023, 255
  %3030 = tail call i32 @llvm.ctpop.i32(i32 %3029)
  %3031 = trunc i32 %3030 to i8
  %3032 = and i8 %3031, 1
  %3033 = xor i8 %3032, 1
  store i8 %3033, i8* %47, align 1
  %3034 = xor i32 %3022, %3023
  %3035 = lshr i32 %3034, 4
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  store i8 %3037, i8* %48, align 1
  %3038 = zext i1 %3026 to i8
  store i8 %3038, i8* %49, align 1
  %3039 = lshr i32 %3023, 31
  %3040 = trunc i32 %3039 to i8
  store i8 %3040, i8* %50, align 1
  %3041 = lshr i32 %3022, 31
  %3042 = xor i32 %3039, %3041
  %3043 = add nuw nsw i32 %3042, %3039
  %3044 = icmp eq i32 %3043, 2
  %3045 = zext i1 %3044 to i8
  store i8 %3045, i8* %51, align 1
  %3046 = add i64 %2545, 14
  store i64 %3046, i64* %3, align 8
  store i32 %3023, i32* %3021, align 4
  %3047 = load i64, i64* %3, align 8
  %3048 = add i64 %3047, -1417
  store i64 %3048, i64* %3, align 8
  br label %block_.L_400bad

block_.L_40113b:                                  ; preds = %block_.L_400bad
  %3049 = add i64 %97, 1
  store i64 %3049, i64* %3, align 8
  %3050 = load i64, i64* %6, align 8
  %3051 = add i64 %3050, 8
  %3052 = inttoptr i64 %3050 to i64*
  %3053 = load i64, i64* %3052, align 8
  store i64 %3053, i64* %RBP.i, align 8
  store i64 %3051, i64* %6, align 8
  %3054 = add i64 %97, 2
  store i64 %3054, i64* %3, align 8
  %3055 = inttoptr i64 %3051 to i64*
  %3056 = load i64, i64* %3055, align 8
  store i64 %3056, i64* %3, align 8
  %3057 = add i64 %3050, 16
  store i64 %3057, i64* %6, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cf9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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

define %struct.Memory* @routine_jmpq_.L_400d99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e64(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d86(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400fb2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40111a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40103f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40112d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
