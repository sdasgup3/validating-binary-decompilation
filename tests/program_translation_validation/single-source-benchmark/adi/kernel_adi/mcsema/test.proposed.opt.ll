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
  %60 = phi i64 [ %2983, %block_.L_401128 ], [ %.pre, %entry ]
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
  %101 = phi i64 [ %770, %block_.L_400cf4 ], [ %.pre1, %block_400bb9 ]
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
  %142 = phi i64 [ %740, %block_400bdf ], [ %.pre2, %block_400bcc ]
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
  %329 = add i64 %179, 72
  store i64 %329, i64* %3, align 8
  %330 = load i32, i32* %262, align 4
  %331 = sext i32 %330 to i64
  store i64 %331, i64* %RCX.i1018, align 8
  %332 = shl nsw i64 %331, 3
  %333 = add i64 %332, %304
  %334 = add i64 %179, 77
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to double*
  %336 = load double, double* %335, align 8
  %337 = fmul double %291, %336
  store double %337, double* %57, align 1
  store i64 0, i64* %58, align 1
  %338 = add i64 %259, -32
  %339 = add i64 %179, 81
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %RAX.i1011, align 8
  %342 = add i64 %179, 85
  store i64 %342, i64* %3, align 8
  %343 = load i32, i32* %298, align 4
  %344 = sext i32 %343 to i64
  %345 = shl nsw i64 %344, 13
  store i64 %345, i64* %RCX.i1018, align 8
  %346 = lshr i64 %344, 50
  %347 = and i64 %346, 1
  %348 = add i64 %345, %341
  store i64 %348, i64* %RAX.i1011, align 8
  %349 = icmp ult i64 %348, %341
  %350 = icmp ult i64 %348, %345
  %351 = or i1 %349, %350
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %46, align 1
  %353 = trunc i64 %348 to i32
  %354 = and i32 %353, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %47, align 1
  %359 = xor i64 %341, %348
  %360 = lshr i64 %359, 4
  %361 = trunc i64 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %48, align 1
  %363 = icmp eq i64 %348, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %49, align 1
  %365 = lshr i64 %348, 63
  %366 = trunc i64 %365 to i8
  store i8 %366, i8* %50, align 1
  %367 = lshr i64 %341, 63
  %368 = xor i64 %365, %367
  %369 = xor i64 %365, %347
  %370 = add nuw nsw i64 %368, %369
  %371 = icmp eq i64 %370, 2
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %51, align 1
  %373 = add i64 %179, 95
  store i64 %373, i64* %3, align 8
  %374 = load i32, i32* %262, align 4
  %375 = add i32 %374, -1
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RDX.i1021, align 8
  %377 = icmp eq i32 %374, 0
  %378 = zext i1 %377 to i8
  store i8 %378, i8* %46, align 1
  %379 = and i32 %375, 255
  %380 = tail call i32 @llvm.ctpop.i32(i32 %379)
  %381 = trunc i32 %380 to i8
  %382 = and i8 %381, 1
  %383 = xor i8 %382, 1
  store i8 %383, i8* %47, align 1
  %384 = xor i32 %374, %375
  %385 = lshr i32 %384, 4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  store i8 %387, i8* %48, align 1
  %388 = icmp eq i32 %375, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %49, align 1
  %390 = lshr i32 %375, 31
  %391 = trunc i32 %390 to i8
  store i8 %391, i8* %50, align 1
  %392 = lshr i32 %374, 31
  %393 = xor i32 %390, %392
  %394 = add nuw nsw i32 %393, %392
  %395 = icmp eq i32 %394, 2
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %51, align 1
  %397 = sext i32 %375 to i64
  store i64 %397, i64* %RCX.i1018, align 8
  %398 = shl nsw i64 %397, 3
  %399 = add i64 %398, %348
  %400 = add i64 %179, 106
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to double*
  %402 = load double, double* %401, align 8
  %403 = fdiv double %337, %402
  store double %403, double* %57, align 1
  %404 = load double, double* %53, align 1
  %405 = fsub double %404, %403
  store double %405, double* %53, align 1
  %406 = load i64, i64* %RBP.i, align 8
  %407 = add i64 %406, -16
  %408 = add i64 %179, 114
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i64*
  %410 = load i64, i64* %409, align 8
  store i64 %410, i64* %RAX.i1011, align 8
  %411 = add i64 %406, -40
  %412 = add i64 %179, 118
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = sext i32 %414 to i64
  %416 = shl nsw i64 %415, 13
  store i64 %416, i64* %RCX.i1018, align 8
  %417 = lshr i64 %415, 50
  %418 = and i64 %417, 1
  %419 = add i64 %416, %410
  store i64 %419, i64* %RAX.i1011, align 8
  %420 = icmp ult i64 %419, %410
  %421 = icmp ult i64 %419, %416
  %422 = or i1 %420, %421
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %46, align 1
  %424 = trunc i64 %419 to i32
  %425 = and i32 %424, 255
  %426 = tail call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  store i8 %429, i8* %47, align 1
  %430 = xor i64 %410, %419
  %431 = lshr i64 %430, 4
  %432 = trunc i64 %431 to i8
  %433 = and i8 %432, 1
  store i8 %433, i8* %48, align 1
  %434 = icmp eq i64 %419, 0
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %49, align 1
  %436 = lshr i64 %419, 63
  %437 = trunc i64 %436 to i8
  store i8 %437, i8* %50, align 1
  %438 = lshr i64 %410, 63
  %439 = xor i64 %436, %438
  %440 = xor i64 %436, %418
  %441 = add nuw nsw i64 %439, %440
  %442 = icmp eq i64 %441, 2
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %51, align 1
  %444 = add i64 %406, -44
  %445 = add i64 %179, 129
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = sext i32 %447 to i64
  store i64 %448, i64* %RCX.i1018, align 8
  %449 = shl nsw i64 %448, 3
  %450 = add i64 %449, %419
  %451 = add i64 %179, 134
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to double*
  store double %405, double* %452, align 8
  %453 = load i64, i64* %RBP.i, align 8
  %454 = add i64 %453, -32
  %455 = load i64, i64* %3, align 8
  %456 = add i64 %455, 4
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %454 to i64*
  %458 = load i64, i64* %457, align 8
  store i64 %458, i64* %RAX.i1011, align 8
  %459 = add i64 %453, -40
  %460 = add i64 %455, 8
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = sext i32 %462 to i64
  %464 = shl nsw i64 %463, 13
  store i64 %464, i64* %RCX.i1018, align 8
  %465 = lshr i64 %463, 50
  %466 = and i64 %465, 1
  %467 = add i64 %464, %458
  store i64 %467, i64* %RAX.i1011, align 8
  %468 = icmp ult i64 %467, %458
  %469 = icmp ult i64 %467, %464
  %470 = or i1 %468, %469
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %46, align 1
  %472 = trunc i64 %467 to i32
  %473 = and i32 %472, 255
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473)
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %47, align 1
  %478 = xor i64 %458, %467
  %479 = lshr i64 %478, 4
  %480 = trunc i64 %479 to i8
  %481 = and i8 %480, 1
  store i8 %481, i8* %48, align 1
  %482 = icmp eq i64 %467, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %49, align 1
  %484 = lshr i64 %467, 63
  %485 = trunc i64 %484 to i8
  store i8 %485, i8* %50, align 1
  %486 = lshr i64 %458, 63
  %487 = xor i64 %484, %486
  %488 = xor i64 %484, %466
  %489 = add nuw nsw i64 %487, %488
  %490 = icmp eq i64 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %51, align 1
  %492 = add i64 %453, -44
  %493 = add i64 %455, 19
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = sext i32 %495 to i64
  store i64 %496, i64* %RCX.i1018, align 8
  %497 = shl nsw i64 %496, 3
  %498 = add i64 %497, %467
  %499 = add i64 %455, 24
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %225, align 1
  store double 0.000000e+00, double* %55, align 1
  %502 = add i64 %453, -24
  %503 = add i64 %455, 28
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i64*
  %505 = load i64, i64* %504, align 8
  store i64 %505, i64* %RAX.i1011, align 8
  %506 = add i64 %455, 32
  store i64 %506, i64* %3, align 8
  %507 = load i32, i32* %461, align 4
  %508 = sext i32 %507 to i64
  %509 = shl nsw i64 %508, 13
  store i64 %509, i64* %RCX.i1018, align 8
  %510 = lshr i64 %508, 50
  %511 = and i64 %510, 1
  %512 = add i64 %509, %505
  store i64 %512, i64* %RAX.i1011, align 8
  %513 = icmp ult i64 %512, %505
  %514 = icmp ult i64 %512, %509
  %515 = or i1 %513, %514
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %46, align 1
  %517 = trunc i64 %512 to i32
  %518 = and i32 %517, 255
  %519 = tail call i32 @llvm.ctpop.i32(i32 %518)
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  store i8 %522, i8* %47, align 1
  %523 = xor i64 %505, %512
  %524 = lshr i64 %523, 4
  %525 = trunc i64 %524 to i8
  %526 = and i8 %525, 1
  store i8 %526, i8* %48, align 1
  %527 = icmp eq i64 %512, 0
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %49, align 1
  %529 = lshr i64 %512, 63
  %530 = trunc i64 %529 to i8
  store i8 %530, i8* %50, align 1
  %531 = lshr i64 %505, 63
  %532 = xor i64 %529, %531
  %533 = xor i64 %529, %511
  %534 = add nuw nsw i64 %532, %533
  %535 = icmp eq i64 %534, 2
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %51, align 1
  %537 = load i64, i64* %RBP.i, align 8
  %538 = add i64 %537, -44
  %539 = add i64 %455, 43
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i32*
  %541 = load i32, i32* %540, align 4
  %542 = sext i32 %541 to i64
  store i64 %542, i64* %RCX.i1018, align 8
  %543 = shl nsw i64 %542, 3
  %544 = add i64 %543, %512
  %545 = add i64 %455, 48
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to double*
  %547 = load double, double* %546, align 8
  store double %547, double* %57, align 1
  store double 0.000000e+00, double* %59, align 1
  %548 = add i64 %537, -24
  %549 = add i64 %455, 52
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i64*
  %551 = load i64, i64* %550, align 8
  store i64 %551, i64* %RAX.i1011, align 8
  %552 = add i64 %537, -40
  %553 = add i64 %455, 56
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = sext i32 %555 to i64
  %557 = shl nsw i64 %556, 13
  store i64 %557, i64* %RCX.i1018, align 8
  %558 = lshr i64 %556, 50
  %559 = and i64 %558, 1
  %560 = add i64 %557, %551
  store i64 %560, i64* %RAX.i1011, align 8
  %561 = icmp ult i64 %560, %551
  %562 = icmp ult i64 %560, %557
  %563 = or i1 %561, %562
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %46, align 1
  %565 = trunc i64 %560 to i32
  %566 = and i32 %565, 255
  %567 = tail call i32 @llvm.ctpop.i32(i32 %566)
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  store i8 %570, i8* %47, align 1
  %571 = xor i64 %551, %560
  %572 = lshr i64 %571, 4
  %573 = trunc i64 %572 to i8
  %574 = and i8 %573, 1
  store i8 %574, i8* %48, align 1
  %575 = icmp eq i64 %560, 0
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %49, align 1
  %577 = lshr i64 %560, 63
  %578 = trunc i64 %577 to i8
  store i8 %578, i8* %50, align 1
  %579 = lshr i64 %551, 63
  %580 = xor i64 %577, %579
  %581 = xor i64 %577, %559
  %582 = add nuw nsw i64 %580, %581
  %583 = icmp eq i64 %582, 2
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %51, align 1
  %585 = add i64 %455, 67
  store i64 %585, i64* %3, align 8
  %586 = load i32, i32* %540, align 4
  %587 = sext i32 %586 to i64
  store i64 %587, i64* %RCX.i1018, align 8
  %588 = shl nsw i64 %587, 3
  %589 = add i64 %588, %560
  %590 = add i64 %455, 72
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to double*
  %592 = load double, double* %591, align 8
  %593 = fmul double %547, %592
  store double %593, double* %57, align 1
  store i64 0, i64* %58, align 1
  %594 = add i64 %537, -32
  %595 = add i64 %455, 76
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i64*
  %597 = load i64, i64* %596, align 8
  store i64 %597, i64* %RAX.i1011, align 8
  %598 = add i64 %455, 80
  store i64 %598, i64* %3, align 8
  %599 = load i32, i32* %554, align 4
  %600 = sext i32 %599 to i64
  %601 = shl nsw i64 %600, 13
  store i64 %601, i64* %RCX.i1018, align 8
  %602 = lshr i64 %600, 50
  %603 = and i64 %602, 1
  %604 = add i64 %601, %597
  store i64 %604, i64* %RAX.i1011, align 8
  %605 = icmp ult i64 %604, %597
  %606 = icmp ult i64 %604, %601
  %607 = or i1 %605, %606
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %46, align 1
  %609 = trunc i64 %604 to i32
  %610 = and i32 %609, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610)
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %47, align 1
  %615 = xor i64 %597, %604
  %616 = lshr i64 %615, 4
  %617 = trunc i64 %616 to i8
  %618 = and i8 %617, 1
  store i8 %618, i8* %48, align 1
  %619 = icmp eq i64 %604, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %49, align 1
  %621 = lshr i64 %604, 63
  %622 = trunc i64 %621 to i8
  store i8 %622, i8* %50, align 1
  %623 = lshr i64 %597, 63
  %624 = xor i64 %621, %623
  %625 = xor i64 %621, %603
  %626 = add nuw nsw i64 %624, %625
  %627 = icmp eq i64 %626, 2
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %51, align 1
  %629 = add i64 %455, 90
  store i64 %629, i64* %3, align 8
  %630 = load i32, i32* %540, align 4
  %631 = add i32 %630, -1
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RDX.i1021, align 8
  %633 = icmp eq i32 %630, 0
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %46, align 1
  %635 = and i32 %631, 255
  %636 = tail call i32 @llvm.ctpop.i32(i32 %635)
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  store i8 %639, i8* %47, align 1
  %640 = xor i32 %630, %631
  %641 = lshr i32 %640, 4
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  store i8 %643, i8* %48, align 1
  %644 = icmp eq i32 %631, 0
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %49, align 1
  %646 = lshr i32 %631, 31
  %647 = trunc i32 %646 to i8
  store i8 %647, i8* %50, align 1
  %648 = lshr i32 %630, 31
  %649 = xor i32 %646, %648
  %650 = add nuw nsw i32 %649, %648
  %651 = icmp eq i32 %650, 2
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %51, align 1
  %653 = sext i32 %631 to i64
  store i64 %653, i64* %RCX.i1018, align 8
  %654 = shl nsw i64 %653, 3
  %655 = add i64 %654, %604
  %656 = add i64 %455, 101
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to double*
  %658 = load double, double* %657, align 8
  %659 = fdiv double %593, %658
  store double %659, double* %57, align 1
  %660 = load double, double* %53, align 1
  %661 = fsub double %660, %659
  store double %661, double* %53, align 1
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -32
  %664 = add i64 %455, 109
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i64*
  %666 = load i64, i64* %665, align 8
  store i64 %666, i64* %RAX.i1011, align 8
  %667 = add i64 %662, -40
  %668 = add i64 %455, 113
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i32*
  %670 = load i32, i32* %669, align 4
  %671 = sext i32 %670 to i64
  %672 = shl nsw i64 %671, 13
  store i64 %672, i64* %RCX.i1018, align 8
  %673 = lshr i64 %671, 50
  %674 = and i64 %673, 1
  %675 = add i64 %672, %666
  store i64 %675, i64* %RAX.i1011, align 8
  %676 = icmp ult i64 %675, %666
  %677 = icmp ult i64 %675, %672
  %678 = or i1 %676, %677
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %46, align 1
  %680 = trunc i64 %675 to i32
  %681 = and i32 %680, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681)
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %47, align 1
  %686 = xor i64 %666, %675
  %687 = lshr i64 %686, 4
  %688 = trunc i64 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %48, align 1
  %690 = icmp eq i64 %675, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %49, align 1
  %692 = lshr i64 %675, 63
  %693 = trunc i64 %692 to i8
  store i8 %693, i8* %50, align 1
  %694 = lshr i64 %666, 63
  %695 = xor i64 %692, %694
  %696 = xor i64 %692, %674
  %697 = add nuw nsw i64 %695, %696
  %698 = icmp eq i64 %697, 2
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %51, align 1
  %700 = add i64 %662, -44
  %701 = add i64 %455, 124
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %703 to i64
  store i64 %704, i64* %RCX.i1018, align 8
  %705 = shl nsw i64 %704, 3
  %706 = add i64 %705, %675
  %707 = add i64 %455, 129
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to double*
  store double %661, double* %708, align 8
  %709 = load i64, i64* %RBP.i, align 8
  %710 = add i64 %709, -44
  %711 = load i64, i64* %3, align 8
  %712 = add i64 %711, 3
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %710 to i32*
  %714 = load i32, i32* %713, align 4
  %715 = add i32 %714, 1
  %716 = zext i32 %715 to i64
  store i64 %716, i64* %RAX.i1011, align 8
  %717 = icmp eq i32 %714, -1
  %718 = icmp eq i32 %715, 0
  %719 = or i1 %717, %718
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %46, align 1
  %721 = and i32 %715, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %47, align 1
  %726 = xor i32 %714, %715
  %727 = lshr i32 %726, 4
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  store i8 %729, i8* %48, align 1
  %730 = zext i1 %718 to i8
  store i8 %730, i8* %49, align 1
  %731 = lshr i32 %715, 31
  %732 = trunc i32 %731 to i8
  store i8 %732, i8* %50, align 1
  %733 = lshr i32 %714, 31
  %734 = xor i32 %731, %733
  %735 = add nuw nsw i32 %734, %731
  %736 = icmp eq i32 %735, 2
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %51, align 1
  %738 = add i64 %711, 9
  store i64 %738, i64* %3, align 8
  store i32 %715, i32* %713, align 4
  %739 = load i64, i64* %3, align 8
  %740 = add i64 %739, -284
  store i64 %740, i64* %3, align 8
  br label %block_.L_400bd3

block_.L_400cf4:                                  ; preds = %block_.L_400bd3
  %741 = add i64 %143, -40
  %742 = add i64 %179, 8
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = add i32 %744, 1
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RAX.i1011, align 8
  %747 = icmp eq i32 %744, -1
  %748 = icmp eq i32 %745, 0
  %749 = or i1 %747, %748
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %46, align 1
  %751 = and i32 %745, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751)
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %47, align 1
  %756 = xor i32 %744, %745
  %757 = lshr i32 %756, 4
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  store i8 %759, i8* %48, align 1
  %760 = zext i1 %748 to i8
  store i8 %760, i8* %49, align 1
  %761 = lshr i32 %745, 31
  %762 = trunc i32 %761 to i8
  store i8 %762, i8* %50, align 1
  %763 = lshr i32 %744, 31
  %764 = xor i32 %761, %763
  %765 = add nuw nsw i32 %764, %761
  %766 = icmp eq i32 %765, 2
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %51, align 1
  %768 = add i64 %179, 14
  store i64 %768, i64* %3, align 8
  store i32 %745, i32* %743, align 4
  %769 = load i64, i64* %3, align 8
  %770 = add i64 %769, -322
  store i64 %770, i64* %3, align 8
  br label %block_.L_400bc0

block_.L_400d07:                                  ; preds = %block_.L_400bc0
  %771 = add i64 %138, 7
  store i64 %771, i64* %3, align 8
  store i32 0, i32* %105, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400d0e

block_.L_400d0e:                                  ; preds = %block_400d1a, %block_.L_400d07
  %772 = phi i64 [ %1044, %block_400d1a ], [ %.pre3, %block_.L_400d07 ]
  %773 = load i64, i64* %RBP.i, align 8
  %774 = add i64 %773, -40
  %775 = add i64 %772, 3
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RAX.i1011, align 8
  %779 = add i64 %773, -8
  %780 = add i64 %772, 6
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i32*
  %782 = load i32, i32* %781, align 4
  %783 = sub i32 %777, %782
  %784 = icmp ult i32 %777, %782
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %46, align 1
  %786 = and i32 %783, 255
  %787 = tail call i32 @llvm.ctpop.i32(i32 %786)
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  store i8 %790, i8* %47, align 1
  %791 = xor i32 %782, %777
  %792 = xor i32 %791, %783
  %793 = lshr i32 %792, 4
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  store i8 %795, i8* %48, align 1
  %796 = icmp eq i32 %783, 0
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %49, align 1
  %798 = lshr i32 %783, 31
  %799 = trunc i32 %798 to i8
  store i8 %799, i8* %50, align 1
  %800 = lshr i32 %777, 31
  %801 = lshr i32 %782, 31
  %802 = xor i32 %801, %800
  %803 = xor i32 %798, %800
  %804 = add nuw nsw i32 %803, %802
  %805 = icmp eq i32 %804, 2
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %51, align 1
  %807 = icmp ne i8 %799, 0
  %808 = xor i1 %807, %805
  %.v13 = select i1 %808, i64 12, i64 113
  %809 = add i64 %772, %.v13
  store i64 %809, i64* %3, align 8
  br i1 %808, label %block_400d1a, label %block_.L_400d7f

block_400d1a:                                     ; preds = %block_.L_400d0e
  %810 = add i64 %773, -16
  %811 = add i64 %809, 4
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i64*
  %813 = load i64, i64* %812, align 8
  store i64 %813, i64* %RAX.i1011, align 8
  %814 = add i64 %809, 8
  store i64 %814, i64* %3, align 8
  %815 = load i32, i32* %776, align 4
  %816 = sext i32 %815 to i64
  %817 = shl nsw i64 %816, 13
  store i64 %817, i64* %RCX.i1018, align 8
  %818 = lshr i64 %816, 50
  %819 = and i64 %818, 1
  %820 = add i64 %817, %813
  store i64 %820, i64* %RAX.i1011, align 8
  %821 = icmp ult i64 %820, %813
  %822 = icmp ult i64 %820, %817
  %823 = or i1 %821, %822
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %46, align 1
  %825 = trunc i64 %820 to i32
  %826 = and i32 %825, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826)
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %47, align 1
  %831 = xor i64 %813, %820
  %832 = lshr i64 %831, 4
  %833 = trunc i64 %832 to i8
  %834 = and i8 %833, 1
  store i8 %834, i8* %48, align 1
  %835 = icmp eq i64 %820, 0
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %49, align 1
  %837 = lshr i64 %820, 63
  %838 = trunc i64 %837 to i8
  store i8 %838, i8* %50, align 1
  %839 = lshr i64 %813, 63
  %840 = xor i64 %837, %839
  %841 = xor i64 %837, %819
  %842 = add nuw nsw i64 %840, %841
  %843 = icmp eq i64 %842, 2
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %51, align 1
  %845 = add i64 %809, 18
  store i64 %845, i64* %3, align 8
  %846 = load i32, i32* %781, align 4
  %847 = add i32 %846, -1
  %848 = zext i32 %847 to i64
  store i64 %848, i64* %RDX.i1021, align 8
  %849 = icmp eq i32 %846, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %46, align 1
  %851 = and i32 %847, 255
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %47, align 1
  %856 = xor i32 %846, %847
  %857 = lshr i32 %856, 4
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  store i8 %859, i8* %48, align 1
  %860 = icmp eq i32 %847, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %49, align 1
  %862 = lshr i32 %847, 31
  %863 = trunc i32 %862 to i8
  store i8 %863, i8* %50, align 1
  %864 = lshr i32 %846, 31
  %865 = xor i32 %862, %864
  %866 = add nuw nsw i32 %865, %864
  %867 = icmp eq i32 %866, 2
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %51, align 1
  %869 = sext i32 %847 to i64
  store i64 %869, i64* %RCX.i1018, align 8
  %870 = shl nsw i64 %869, 3
  %871 = add i64 %870, %820
  %872 = add i64 %809, 29
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i64*
  %874 = load i64, i64* %873, align 8
  %875 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %874, i64* %875, align 1
  store double 0.000000e+00, double* %55, align 1
  %876 = add i64 %773, -32
  %877 = add i64 %809, 33
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i64*
  %879 = load i64, i64* %878, align 8
  store i64 %879, i64* %RAX.i1011, align 8
  %880 = add i64 %809, 37
  store i64 %880, i64* %3, align 8
  %881 = load i32, i32* %776, align 4
  %882 = sext i32 %881 to i64
  %883 = shl nsw i64 %882, 13
  store i64 %883, i64* %RCX.i1018, align 8
  %884 = lshr i64 %882, 50
  %885 = and i64 %884, 1
  %886 = add i64 %883, %879
  store i64 %886, i64* %RAX.i1011, align 8
  %887 = icmp ult i64 %886, %879
  %888 = icmp ult i64 %886, %883
  %889 = or i1 %887, %888
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %46, align 1
  %891 = trunc i64 %886 to i32
  %892 = and i32 %891, 255
  %893 = tail call i32 @llvm.ctpop.i32(i32 %892)
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = xor i8 %895, 1
  store i8 %896, i8* %47, align 1
  %897 = xor i64 %879, %886
  %898 = lshr i64 %897, 4
  %899 = trunc i64 %898 to i8
  %900 = and i8 %899, 1
  store i8 %900, i8* %48, align 1
  %901 = icmp eq i64 %886, 0
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %49, align 1
  %903 = lshr i64 %886, 63
  %904 = trunc i64 %903 to i8
  store i8 %904, i8* %50, align 1
  %905 = lshr i64 %879, 63
  %906 = xor i64 %903, %905
  %907 = xor i64 %903, %885
  %908 = add nuw nsw i64 %906, %907
  %909 = icmp eq i64 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %51, align 1
  %911 = add i64 %809, 47
  store i64 %911, i64* %3, align 8
  %912 = load i32, i32* %781, align 4
  %913 = add i32 %912, -1
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RDX.i1021, align 8
  %915 = icmp eq i32 %912, 0
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %46, align 1
  %917 = and i32 %913, 255
  %918 = tail call i32 @llvm.ctpop.i32(i32 %917)
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  %921 = xor i8 %920, 1
  store i8 %921, i8* %47, align 1
  %922 = xor i32 %912, %913
  %923 = lshr i32 %922, 4
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  store i8 %925, i8* %48, align 1
  %926 = icmp eq i32 %913, 0
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %49, align 1
  %928 = lshr i32 %913, 31
  %929 = trunc i32 %928 to i8
  store i8 %929, i8* %50, align 1
  %930 = lshr i32 %912, 31
  %931 = xor i32 %928, %930
  %932 = add nuw nsw i32 %931, %930
  %933 = icmp eq i32 %932, 2
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %51, align 1
  %935 = sext i32 %913 to i64
  store i64 %935, i64* %RCX.i1018, align 8
  %936 = shl nsw i64 %935, 3
  %937 = add i64 %936, %886
  %938 = add i64 %809, 58
  store i64 %938, i64* %3, align 8
  %939 = bitcast i64 %874 to double
  %940 = inttoptr i64 %937 to double*
  %941 = load double, double* %940, align 8
  %942 = fdiv double %939, %941
  store double %942, double* %53, align 1
  %943 = load i64, i64* %RBP.i, align 8
  %944 = add i64 %943, -16
  %945 = add i64 %809, 62
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i64*
  %947 = load i64, i64* %946, align 8
  store i64 %947, i64* %RAX.i1011, align 8
  %948 = add i64 %943, -40
  %949 = add i64 %809, 66
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i32*
  %951 = load i32, i32* %950, align 4
  %952 = sext i32 %951 to i64
  %953 = shl nsw i64 %952, 13
  store i64 %953, i64* %RCX.i1018, align 8
  %954 = lshr i64 %952, 50
  %955 = and i64 %954, 1
  %956 = add i64 %953, %947
  store i64 %956, i64* %RAX.i1011, align 8
  %957 = icmp ult i64 %956, %947
  %958 = icmp ult i64 %956, %953
  %959 = or i1 %957, %958
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %46, align 1
  %961 = trunc i64 %956 to i32
  %962 = and i32 %961, 255
  %963 = tail call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  store i8 %966, i8* %47, align 1
  %967 = xor i64 %947, %956
  %968 = lshr i64 %967, 4
  %969 = trunc i64 %968 to i8
  %970 = and i8 %969, 1
  store i8 %970, i8* %48, align 1
  %971 = icmp eq i64 %956, 0
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %49, align 1
  %973 = lshr i64 %956, 63
  %974 = trunc i64 %973 to i8
  store i8 %974, i8* %50, align 1
  %975 = lshr i64 %947, 63
  %976 = xor i64 %973, %975
  %977 = xor i64 %973, %955
  %978 = add nuw nsw i64 %976, %977
  %979 = icmp eq i64 %978, 2
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %51, align 1
  %981 = add i64 %943, -8
  %982 = add i64 %809, 76
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = add i32 %984, -1
  %986 = zext i32 %985 to i64
  store i64 %986, i64* %RDX.i1021, align 8
  %987 = icmp eq i32 %984, 0
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %46, align 1
  %989 = and i32 %985, 255
  %990 = tail call i32 @llvm.ctpop.i32(i32 %989)
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  store i8 %993, i8* %47, align 1
  %994 = xor i32 %984, %985
  %995 = lshr i32 %994, 4
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  store i8 %997, i8* %48, align 1
  %998 = icmp eq i32 %985, 0
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %49, align 1
  %1000 = lshr i32 %985, 31
  %1001 = trunc i32 %1000 to i8
  store i8 %1001, i8* %50, align 1
  %1002 = lshr i32 %984, 31
  %1003 = xor i32 %1000, %1002
  %1004 = add nuw nsw i32 %1003, %1002
  %1005 = icmp eq i32 %1004, 2
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %51, align 1
  %1007 = sext i32 %985 to i64
  store i64 %1007, i64* %RCX.i1018, align 8
  %1008 = shl nsw i64 %1007, 3
  %1009 = add i64 %1008, %956
  %1010 = add i64 %809, 87
  store i64 %1010, i64* %3, align 8
  %1011 = bitcast double %942 to i64
  %1012 = inttoptr i64 %1009 to i64*
  store i64 %1011, i64* %1012, align 8
  %1013 = load i64, i64* %RBP.i, align 8
  %1014 = add i64 %1013, -40
  %1015 = load i64, i64* %3, align 8
  %1016 = add i64 %1015, 3
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1014 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = add i32 %1018, 1
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RAX.i1011, align 8
  %1021 = icmp eq i32 %1018, -1
  %1022 = icmp eq i32 %1019, 0
  %1023 = or i1 %1021, %1022
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %46, align 1
  %1025 = and i32 %1019, 255
  %1026 = tail call i32 @llvm.ctpop.i32(i32 %1025)
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  store i8 %1029, i8* %47, align 1
  %1030 = xor i32 %1018, %1019
  %1031 = lshr i32 %1030, 4
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  store i8 %1033, i8* %48, align 1
  %1034 = zext i1 %1022 to i8
  store i8 %1034, i8* %49, align 1
  %1035 = lshr i32 %1019, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %50, align 1
  %1037 = lshr i32 %1018, 31
  %1038 = xor i32 %1035, %1037
  %1039 = add nuw nsw i32 %1038, %1035
  %1040 = icmp eq i32 %1039, 2
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %51, align 1
  %1042 = add i64 %1015, 9
  store i64 %1042, i64* %3, align 8
  store i32 %1019, i32* %1017, align 4
  %1043 = load i64, i64* %3, align 8
  %1044 = add i64 %1043, -108
  store i64 %1044, i64* %3, align 8
  br label %block_.L_400d0e

block_.L_400d7f:                                  ; preds = %block_.L_400d0e
  %1045 = add i64 %809, 7
  store i64 %1045, i64* %3, align 8
  store i32 0, i32* %776, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400d86

block_.L_400d86:                                  ; preds = %block_.L_400e5f, %block_.L_400d7f
  %1046 = phi i64 [ %1627, %block_.L_400e5f ], [ %.pre4, %block_.L_400d7f ]
  %1047 = load i64, i64* %RBP.i, align 8
  %1048 = add i64 %1047, -40
  %1049 = add i64 %1046, 3
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i32*
  %1051 = load i32, i32* %1050, align 4
  %1052 = zext i32 %1051 to i64
  store i64 %1052, i64* %RAX.i1011, align 8
  %1053 = add i64 %1047, -8
  %1054 = add i64 %1046, 6
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  %1056 = load i32, i32* %1055, align 4
  %1057 = sub i32 %1051, %1056
  %1058 = icmp ult i32 %1051, %1056
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %46, align 1
  %1060 = and i32 %1057, 255
  %1061 = tail call i32 @llvm.ctpop.i32(i32 %1060)
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = xor i8 %1063, 1
  store i8 %1064, i8* %47, align 1
  %1065 = xor i32 %1056, %1051
  %1066 = xor i32 %1065, %1057
  %1067 = lshr i32 %1066, 4
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  store i8 %1069, i8* %48, align 1
  %1070 = icmp eq i32 %1057, 0
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %49, align 1
  %1072 = lshr i32 %1057, 31
  %1073 = trunc i32 %1072 to i8
  store i8 %1073, i8* %50, align 1
  %1074 = lshr i32 %1051, 31
  %1075 = lshr i32 %1056, 31
  %1076 = xor i32 %1075, %1074
  %1077 = xor i32 %1072, %1074
  %1078 = add nuw nsw i32 %1077, %1076
  %1079 = icmp eq i32 %1078, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %51, align 1
  %1081 = icmp ne i8 %1073, 0
  %1082 = xor i1 %1081, %1079
  %.v14 = select i1 %1082, i64 12, i64 236
  %1083 = add i64 %1046, %.v14
  store i64 %1083, i64* %3, align 8
  br i1 %1082, label %block_400d92, label %block_.L_400e72

block_400d92:                                     ; preds = %block_.L_400d86
  %1084 = add i64 %1047, -44
  %1085 = add i64 %1083, 7
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i32*
  store i32 0, i32* %1086, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400d99

block_.L_400d99:                                  ; preds = %block_400daa, %block_400d92
  %1087 = phi i64 [ %1597, %block_400daa ], [ %.pre5, %block_400d92 ]
  %1088 = load i64, i64* %RBP.i, align 8
  %1089 = add i64 %1088, -44
  %1090 = add i64 %1087, 3
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RAX.i1011, align 8
  %1094 = add i64 %1088, -8
  %1095 = add i64 %1087, 6
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = add i32 %1097, -2
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RCX.i1018, align 8
  %1100 = lshr i32 %1098, 31
  %1101 = sub i32 %1092, %1098
  %1102 = icmp ult i32 %1092, %1098
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %46, align 1
  %1104 = and i32 %1101, 255
  %1105 = tail call i32 @llvm.ctpop.i32(i32 %1104)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  store i8 %1108, i8* %47, align 1
  %1109 = xor i32 %1098, %1092
  %1110 = xor i32 %1109, %1101
  %1111 = lshr i32 %1110, 4
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  store i8 %1113, i8* %48, align 1
  %1114 = icmp eq i32 %1101, 0
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %49, align 1
  %1116 = lshr i32 %1101, 31
  %1117 = trunc i32 %1116 to i8
  store i8 %1117, i8* %50, align 1
  %1118 = lshr i32 %1092, 31
  %1119 = xor i32 %1100, %1118
  %1120 = xor i32 %1116, %1118
  %1121 = add nuw nsw i32 %1120, %1119
  %1122 = icmp eq i32 %1121, 2
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %51, align 1
  %1124 = icmp ne i8 %1117, 0
  %1125 = xor i1 %1124, %1122
  %.v15 = select i1 %1125, i64 17, i64 198
  %1126 = add i64 %1087, %.v15
  store i64 %1126, i64* %3, align 8
  br i1 %1125, label %block_400daa, label %block_.L_400e5f

block_400daa:                                     ; preds = %block_.L_400d99
  %1127 = add i64 %1088, -16
  %1128 = add i64 %1126, 4
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i64*
  %1130 = load i64, i64* %1129, align 8
  store i64 %1130, i64* %RAX.i1011, align 8
  %1131 = add i64 %1088, -40
  %1132 = add i64 %1126, 8
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = sext i32 %1134 to i64
  %1136 = shl nsw i64 %1135, 13
  store i64 %1136, i64* %RCX.i1018, align 8
  %1137 = lshr i64 %1135, 50
  %1138 = and i64 %1137, 1
  %1139 = add i64 %1136, %1130
  store i64 %1139, i64* %RAX.i1011, align 8
  %1140 = icmp ult i64 %1139, %1130
  %1141 = icmp ult i64 %1139, %1136
  %1142 = or i1 %1140, %1141
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %46, align 1
  %1144 = trunc i64 %1139 to i32
  %1145 = and i32 %1144, 255
  %1146 = tail call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  store i8 %1149, i8* %47, align 1
  %1150 = xor i64 %1130, %1139
  %1151 = lshr i64 %1150, 4
  %1152 = trunc i64 %1151 to i8
  %1153 = and i8 %1152, 1
  store i8 %1153, i8* %48, align 1
  %1154 = icmp eq i64 %1139, 0
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %49, align 1
  %1156 = lshr i64 %1139, 63
  %1157 = trunc i64 %1156 to i8
  store i8 %1157, i8* %50, align 1
  %1158 = lshr i64 %1130, 63
  %1159 = xor i64 %1156, %1158
  %1160 = xor i64 %1156, %1138
  %1161 = add nuw nsw i64 %1159, %1160
  %1162 = icmp eq i64 %1161, 2
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %51, align 1
  %1164 = add i64 %1126, 18
  store i64 %1164, i64* %3, align 8
  %1165 = load i32, i32* %1096, align 4
  %1166 = add i32 %1165, -2
  %1167 = zext i32 %1166 to i64
  store i64 %1167, i64* %RDX.i1021, align 8
  %1168 = icmp ult i32 %1165, 2
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %46, align 1
  %1170 = and i32 %1166, 255
  %1171 = tail call i32 @llvm.ctpop.i32(i32 %1170)
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = xor i8 %1173, 1
  store i8 %1174, i8* %47, align 1
  %1175 = xor i32 %1165, %1166
  %1176 = lshr i32 %1175, 4
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  store i8 %1178, i8* %48, align 1
  %1179 = icmp eq i32 %1166, 0
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %49, align 1
  %1181 = lshr i32 %1166, 31
  %1182 = trunc i32 %1181 to i8
  store i8 %1182, i8* %50, align 1
  %1183 = lshr i32 %1165, 31
  %1184 = xor i32 %1181, %1183
  %1185 = add nuw nsw i32 %1184, %1183
  %1186 = icmp eq i32 %1185, 2
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %51, align 1
  %1188 = add i64 %1126, 24
  store i64 %1188, i64* %3, align 8
  %1189 = load i32, i32* %1091, align 4
  %1190 = sub i32 %1166, %1189
  %1191 = zext i32 %1190 to i64
  store i64 %1191, i64* %RDX.i1021, align 8
  %1192 = icmp ult i32 %1166, %1189
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %46, align 1
  %1194 = and i32 %1190, 255
  %1195 = tail call i32 @llvm.ctpop.i32(i32 %1194)
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = xor i8 %1197, 1
  store i8 %1198, i8* %47, align 1
  %1199 = xor i32 %1189, %1166
  %1200 = xor i32 %1199, %1190
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  store i8 %1203, i8* %48, align 1
  %1204 = icmp eq i32 %1190, 0
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %49, align 1
  %1206 = lshr i32 %1190, 31
  %1207 = trunc i32 %1206 to i8
  store i8 %1207, i8* %50, align 1
  %1208 = lshr i32 %1189, 31
  %1209 = xor i32 %1208, %1181
  %1210 = xor i32 %1206, %1181
  %1211 = add nuw nsw i32 %1210, %1209
  %1212 = icmp eq i32 %1211, 2
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %51, align 1
  %1214 = sext i32 %1190 to i64
  store i64 %1214, i64* %RCX.i1018, align 8
  %1215 = shl nsw i64 %1214, 3
  %1216 = add i64 %1215, %1139
  %1217 = add i64 %1126, 32
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i64*
  %1219 = load i64, i64* %1218, align 8
  %1220 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1219, i64* %1220, align 1
  store double 0.000000e+00, double* %55, align 1
  %1221 = add i64 %1126, 36
  store i64 %1221, i64* %3, align 8
  %1222 = load i64, i64* %1129, align 8
  store i64 %1222, i64* %RAX.i1011, align 8
  %1223 = add i64 %1126, 40
  store i64 %1223, i64* %3, align 8
  %1224 = load i32, i32* %1133, align 4
  %1225 = sext i32 %1224 to i64
  %1226 = shl nsw i64 %1225, 13
  store i64 %1226, i64* %RCX.i1018, align 8
  %1227 = lshr i64 %1225, 50
  %1228 = and i64 %1227, 1
  %1229 = add i64 %1226, %1222
  store i64 %1229, i64* %RAX.i1011, align 8
  %1230 = icmp ult i64 %1229, %1222
  %1231 = icmp ult i64 %1229, %1226
  %1232 = or i1 %1230, %1231
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %46, align 1
  %1234 = trunc i64 %1229 to i32
  %1235 = and i32 %1234, 255
  %1236 = tail call i32 @llvm.ctpop.i32(i32 %1235)
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  %1239 = xor i8 %1238, 1
  store i8 %1239, i8* %47, align 1
  %1240 = xor i64 %1222, %1229
  %1241 = lshr i64 %1240, 4
  %1242 = trunc i64 %1241 to i8
  %1243 = and i8 %1242, 1
  store i8 %1243, i8* %48, align 1
  %1244 = icmp eq i64 %1229, 0
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %49, align 1
  %1246 = lshr i64 %1229, 63
  %1247 = trunc i64 %1246 to i8
  store i8 %1247, i8* %50, align 1
  %1248 = lshr i64 %1222, 63
  %1249 = xor i64 %1246, %1248
  %1250 = xor i64 %1246, %1228
  %1251 = add nuw nsw i64 %1249, %1250
  %1252 = icmp eq i64 %1251, 2
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %51, align 1
  %1254 = load i64, i64* %RBP.i, align 8
  %1255 = add i64 %1254, -8
  %1256 = add i64 %1126, 50
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i32*
  %1258 = load i32, i32* %1257, align 4
  %1259 = add i32 %1258, -2
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RDX.i1021, align 8
  %1261 = icmp ult i32 %1258, 2
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %46, align 1
  %1263 = and i32 %1259, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %47, align 1
  %1268 = xor i32 %1258, %1259
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %48, align 1
  %1272 = icmp eq i32 %1259, 0
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %49, align 1
  %1274 = lshr i32 %1259, 31
  %1275 = trunc i32 %1274 to i8
  store i8 %1275, i8* %50, align 1
  %1276 = lshr i32 %1258, 31
  %1277 = xor i32 %1274, %1276
  %1278 = add nuw nsw i32 %1277, %1276
  %1279 = icmp eq i32 %1278, 2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %51, align 1
  %1281 = add i64 %1254, -44
  %1282 = add i64 %1126, 56
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = sub i32 %1259, %1284
  %1286 = lshr i32 %1285, 31
  %1287 = add i32 %1285, -1
  %1288 = zext i32 %1287 to i64
  store i64 %1288, i64* %RDX.i1021, align 8
  %1289 = icmp eq i32 %1285, 0
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %46, align 1
  %1291 = and i32 %1287, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %47, align 1
  %1296 = xor i32 %1285, %1287
  %1297 = lshr i32 %1296, 4
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  store i8 %1299, i8* %48, align 1
  %1300 = icmp eq i32 %1287, 0
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %49, align 1
  %1302 = lshr i32 %1287, 31
  %1303 = trunc i32 %1302 to i8
  store i8 %1303, i8* %50, align 1
  %1304 = xor i32 %1302, %1286
  %1305 = add nuw nsw i32 %1304, %1286
  %1306 = icmp eq i32 %1305, 2
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %51, align 1
  %1308 = sext i32 %1287 to i64
  store i64 %1308, i64* %RCX.i1018, align 8
  %1309 = load i64, i64* %RAX.i1011, align 8
  %1310 = shl nsw i64 %1308, 3
  %1311 = add i64 %1310, %1309
  %1312 = add i64 %1126, 67
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i64*
  %1314 = load i64, i64* %1313, align 8
  %1315 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1314, i64* %1315, align 1
  store double 0.000000e+00, double* %59, align 1
  %1316 = add i64 %1254, -24
  %1317 = add i64 %1126, 71
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i64*
  %1319 = load i64, i64* %1318, align 8
  store i64 %1319, i64* %RAX.i1011, align 8
  %1320 = add i64 %1254, -40
  %1321 = add i64 %1126, 75
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i32*
  %1323 = load i32, i32* %1322, align 4
  %1324 = sext i32 %1323 to i64
  %1325 = shl nsw i64 %1324, 13
  store i64 %1325, i64* %RCX.i1018, align 8
  %1326 = lshr i64 %1324, 50
  %1327 = and i64 %1326, 1
  %1328 = add i64 %1325, %1319
  store i64 %1328, i64* %RAX.i1011, align 8
  %1329 = icmp ult i64 %1328, %1319
  %1330 = icmp ult i64 %1328, %1325
  %1331 = or i1 %1329, %1330
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %46, align 1
  %1333 = trunc i64 %1328 to i32
  %1334 = and i32 %1333, 255
  %1335 = tail call i32 @llvm.ctpop.i32(i32 %1334)
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = xor i8 %1337, 1
  store i8 %1338, i8* %47, align 1
  %1339 = xor i64 %1319, %1328
  %1340 = lshr i64 %1339, 4
  %1341 = trunc i64 %1340 to i8
  %1342 = and i8 %1341, 1
  store i8 %1342, i8* %48, align 1
  %1343 = icmp eq i64 %1328, 0
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %49, align 1
  %1345 = lshr i64 %1328, 63
  %1346 = trunc i64 %1345 to i8
  store i8 %1346, i8* %50, align 1
  %1347 = lshr i64 %1319, 63
  %1348 = xor i64 %1345, %1347
  %1349 = xor i64 %1345, %1327
  %1350 = add nuw nsw i64 %1348, %1349
  %1351 = icmp eq i64 %1350, 2
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %51, align 1
  %1353 = add i64 %1126, 85
  store i64 %1353, i64* %3, align 8
  %1354 = load i32, i32* %1257, align 4
  %1355 = zext i32 %1354 to i64
  store i64 %1355, i64* %RDX.i1021, align 8
  %1356 = add i64 %1126, 88
  store i64 %1356, i64* %3, align 8
  %1357 = load i32, i32* %1283, align 4
  %1358 = sub i32 %1354, %1357
  %1359 = lshr i32 %1358, 31
  %1360 = add i32 %1358, -3
  %1361 = zext i32 %1360 to i64
  store i64 %1361, i64* %RDX.i1021, align 8
  %1362 = icmp ult i32 %1358, 3
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %46, align 1
  %1364 = and i32 %1360, 255
  %1365 = tail call i32 @llvm.ctpop.i32(i32 %1364)
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  store i8 %1368, i8* %47, align 1
  %1369 = xor i32 %1358, %1360
  %1370 = lshr i32 %1369, 4
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  store i8 %1372, i8* %48, align 1
  %1373 = icmp eq i32 %1360, 0
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %49, align 1
  %1375 = lshr i32 %1360, 31
  %1376 = trunc i32 %1375 to i8
  store i8 %1376, i8* %50, align 1
  %1377 = xor i32 %1375, %1359
  %1378 = add nuw nsw i32 %1377, %1359
  %1379 = icmp eq i32 %1378, 2
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %51, align 1
  %1381 = sext i32 %1360 to i64
  store i64 %1381, i64* %RCX.i1018, align 8
  %1382 = shl nsw i64 %1381, 3
  %1383 = add i64 %1382, %1328
  %1384 = add i64 %1126, 99
  store i64 %1384, i64* %3, align 8
  %1385 = bitcast i64 %1314 to double
  %1386 = inttoptr i64 %1383 to double*
  %1387 = load double, double* %1386, align 8
  %1388 = fmul double %1385, %1387
  store double %1388, double* %57, align 1
  %1389 = load double, double* %53, align 1
  %1390 = fsub double %1389, %1388
  store double %1390, double* %53, align 1
  %1391 = load i64, i64* %RBP.i, align 8
  %1392 = add i64 %1391, -32
  %1393 = add i64 %1126, 107
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i64*
  %1395 = load i64, i64* %1394, align 8
  store i64 %1395, i64* %RAX.i1011, align 8
  %1396 = add i64 %1391, -40
  %1397 = add i64 %1126, 111
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1396 to i32*
  %1399 = load i32, i32* %1398, align 4
  %1400 = sext i32 %1399 to i64
  %1401 = shl nsw i64 %1400, 13
  store i64 %1401, i64* %RCX.i1018, align 8
  %1402 = lshr i64 %1400, 50
  %1403 = and i64 %1402, 1
  %1404 = add i64 %1401, %1395
  store i64 %1404, i64* %RAX.i1011, align 8
  %1405 = icmp ult i64 %1404, %1395
  %1406 = icmp ult i64 %1404, %1401
  %1407 = or i1 %1405, %1406
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %46, align 1
  %1409 = trunc i64 %1404 to i32
  %1410 = and i32 %1409, 255
  %1411 = tail call i32 @llvm.ctpop.i32(i32 %1410)
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  %1414 = xor i8 %1413, 1
  store i8 %1414, i8* %47, align 1
  %1415 = xor i64 %1395, %1404
  %1416 = lshr i64 %1415, 4
  %1417 = trunc i64 %1416 to i8
  %1418 = and i8 %1417, 1
  store i8 %1418, i8* %48, align 1
  %1419 = icmp eq i64 %1404, 0
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %49, align 1
  %1421 = lshr i64 %1404, 63
  %1422 = trunc i64 %1421 to i8
  store i8 %1422, i8* %50, align 1
  %1423 = lshr i64 %1395, 63
  %1424 = xor i64 %1421, %1423
  %1425 = xor i64 %1421, %1403
  %1426 = add nuw nsw i64 %1424, %1425
  %1427 = icmp eq i64 %1426, 2
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %51, align 1
  %1429 = add i64 %1391, -8
  %1430 = add i64 %1126, 121
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i32*
  %1432 = load i32, i32* %1431, align 4
  %1433 = add i32 %1432, -3
  %1434 = zext i32 %1433 to i64
  store i64 %1434, i64* %RDX.i1021, align 8
  %1435 = icmp ult i32 %1432, 3
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %46, align 1
  %1437 = and i32 %1433, 255
  %1438 = tail call i32 @llvm.ctpop.i32(i32 %1437)
  %1439 = trunc i32 %1438 to i8
  %1440 = and i8 %1439, 1
  %1441 = xor i8 %1440, 1
  store i8 %1441, i8* %47, align 1
  %1442 = xor i32 %1432, %1433
  %1443 = lshr i32 %1442, 4
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  store i8 %1445, i8* %48, align 1
  %1446 = icmp eq i32 %1433, 0
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %49, align 1
  %1448 = lshr i32 %1433, 31
  %1449 = trunc i32 %1448 to i8
  store i8 %1449, i8* %50, align 1
  %1450 = lshr i32 %1432, 31
  %1451 = xor i32 %1448, %1450
  %1452 = add nuw nsw i32 %1451, %1450
  %1453 = icmp eq i32 %1452, 2
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %51, align 1
  %1455 = add i64 %1391, -44
  %1456 = add i64 %1126, 127
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = sub i32 %1433, %1458
  %1460 = zext i32 %1459 to i64
  store i64 %1460, i64* %RDX.i1021, align 8
  %1461 = icmp ult i32 %1433, %1458
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %46, align 1
  %1463 = and i32 %1459, 255
  %1464 = tail call i32 @llvm.ctpop.i32(i32 %1463)
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  %1467 = xor i8 %1466, 1
  store i8 %1467, i8* %47, align 1
  %1468 = xor i32 %1458, %1433
  %1469 = xor i32 %1468, %1459
  %1470 = lshr i32 %1469, 4
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  store i8 %1472, i8* %48, align 1
  %1473 = icmp eq i32 %1459, 0
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %49, align 1
  %1475 = lshr i32 %1459, 31
  %1476 = trunc i32 %1475 to i8
  store i8 %1476, i8* %50, align 1
  %1477 = lshr i32 %1458, 31
  %1478 = xor i32 %1477, %1448
  %1479 = xor i32 %1475, %1448
  %1480 = add nuw nsw i32 %1479, %1478
  %1481 = icmp eq i32 %1480, 2
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %51, align 1
  %1483 = sext i32 %1459 to i64
  store i64 %1483, i64* %RCX.i1018, align 8
  %1484 = load i64, i64* %RAX.i1011, align 8
  %1485 = shl nsw i64 %1483, 3
  %1486 = add i64 %1485, %1484
  %1487 = add i64 %1126, 135
  store i64 %1487, i64* %3, align 8
  %1488 = load double, double* %53, align 1
  %1489 = inttoptr i64 %1486 to double*
  %1490 = load double, double* %1489, align 8
  %1491 = fdiv double %1488, %1490
  store double %1491, double* %53, align 1
  %1492 = add i64 %1391, -16
  %1493 = add i64 %1126, 139
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1492 to i64*
  %1495 = load i64, i64* %1494, align 8
  store i64 %1495, i64* %RAX.i1011, align 8
  %1496 = add i64 %1126, 143
  store i64 %1496, i64* %3, align 8
  %1497 = load i32, i32* %1398, align 4
  %1498 = sext i32 %1497 to i64
  %1499 = shl nsw i64 %1498, 13
  store i64 %1499, i64* %RCX.i1018, align 8
  %1500 = lshr i64 %1498, 50
  %1501 = and i64 %1500, 1
  %1502 = add i64 %1499, %1495
  store i64 %1502, i64* %RAX.i1011, align 8
  %1503 = icmp ult i64 %1502, %1495
  %1504 = icmp ult i64 %1502, %1499
  %1505 = or i1 %1503, %1504
  %1506 = zext i1 %1505 to i8
  store i8 %1506, i8* %46, align 1
  %1507 = trunc i64 %1502 to i32
  %1508 = and i32 %1507, 255
  %1509 = tail call i32 @llvm.ctpop.i32(i32 %1508)
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  %1512 = xor i8 %1511, 1
  store i8 %1512, i8* %47, align 1
  %1513 = xor i64 %1495, %1502
  %1514 = lshr i64 %1513, 4
  %1515 = trunc i64 %1514 to i8
  %1516 = and i8 %1515, 1
  store i8 %1516, i8* %48, align 1
  %1517 = icmp eq i64 %1502, 0
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %49, align 1
  %1519 = lshr i64 %1502, 63
  %1520 = trunc i64 %1519 to i8
  store i8 %1520, i8* %50, align 1
  %1521 = lshr i64 %1495, 63
  %1522 = xor i64 %1519, %1521
  %1523 = xor i64 %1519, %1501
  %1524 = add nuw nsw i64 %1522, %1523
  %1525 = icmp eq i64 %1524, 2
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %51, align 1
  %1527 = load i64, i64* %RBP.i, align 8
  %1528 = add i64 %1527, -8
  %1529 = add i64 %1126, 153
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i32*
  %1531 = load i32, i32* %1530, align 4
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RDX.i1021, align 8
  %1533 = add i64 %1527, -44
  %1534 = add i64 %1126, 156
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = sub i32 %1531, %1536
  %1538 = lshr i32 %1537, 31
  %1539 = add i32 %1537, -2
  %1540 = zext i32 %1539 to i64
  store i64 %1540, i64* %RDX.i1021, align 8
  %1541 = icmp ult i32 %1537, 2
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %46, align 1
  %1543 = and i32 %1539, 255
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %47, align 1
  %1548 = xor i32 %1537, %1539
  %1549 = lshr i32 %1548, 4
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  store i8 %1551, i8* %48, align 1
  %1552 = icmp eq i32 %1539, 0
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %49, align 1
  %1554 = lshr i32 %1539, 31
  %1555 = trunc i32 %1554 to i8
  store i8 %1555, i8* %50, align 1
  %1556 = xor i32 %1554, %1538
  %1557 = add nuw nsw i32 %1556, %1538
  %1558 = icmp eq i32 %1557, 2
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %51, align 1
  %1560 = sext i32 %1539 to i64
  store i64 %1560, i64* %RCX.i1018, align 8
  %1561 = shl nsw i64 %1560, 3
  %1562 = add i64 %1561, %1502
  %1563 = add i64 %1126, 167
  store i64 %1563, i64* %3, align 8
  %1564 = bitcast double %1491 to i64
  %1565 = inttoptr i64 %1562 to i64*
  store i64 %1564, i64* %1565, align 8
  %1566 = load i64, i64* %RBP.i, align 8
  %1567 = add i64 %1566, -44
  %1568 = load i64, i64* %3, align 8
  %1569 = add i64 %1568, 3
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1567 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = add i32 %1571, 1
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RAX.i1011, align 8
  %1574 = icmp eq i32 %1571, -1
  %1575 = icmp eq i32 %1572, 0
  %1576 = or i1 %1574, %1575
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %46, align 1
  %1578 = and i32 %1572, 255
  %1579 = tail call i32 @llvm.ctpop.i32(i32 %1578)
  %1580 = trunc i32 %1579 to i8
  %1581 = and i8 %1580, 1
  %1582 = xor i8 %1581, 1
  store i8 %1582, i8* %47, align 1
  %1583 = xor i32 %1571, %1572
  %1584 = lshr i32 %1583, 4
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  store i8 %1586, i8* %48, align 1
  %1587 = zext i1 %1575 to i8
  store i8 %1587, i8* %49, align 1
  %1588 = lshr i32 %1572, 31
  %1589 = trunc i32 %1588 to i8
  store i8 %1589, i8* %50, align 1
  %1590 = lshr i32 %1571, 31
  %1591 = xor i32 %1588, %1590
  %1592 = add nuw nsw i32 %1591, %1588
  %1593 = icmp eq i32 %1592, 2
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %51, align 1
  %1595 = add i64 %1568, 9
  store i64 %1595, i64* %3, align 8
  store i32 %1572, i32* %1570, align 4
  %1596 = load i64, i64* %3, align 8
  %1597 = add i64 %1596, -193
  store i64 %1597, i64* %3, align 8
  br label %block_.L_400d99

block_.L_400e5f:                                  ; preds = %block_.L_400d99
  %1598 = add i64 %1088, -40
  %1599 = add i64 %1126, 8
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  %1601 = load i32, i32* %1600, align 4
  %1602 = add i32 %1601, 1
  %1603 = zext i32 %1602 to i64
  store i64 %1603, i64* %RAX.i1011, align 8
  %1604 = icmp eq i32 %1601, -1
  %1605 = icmp eq i32 %1602, 0
  %1606 = or i1 %1604, %1605
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %46, align 1
  %1608 = and i32 %1602, 255
  %1609 = tail call i32 @llvm.ctpop.i32(i32 %1608)
  %1610 = trunc i32 %1609 to i8
  %1611 = and i8 %1610, 1
  %1612 = xor i8 %1611, 1
  store i8 %1612, i8* %47, align 1
  %1613 = xor i32 %1601, %1602
  %1614 = lshr i32 %1613, 4
  %1615 = trunc i32 %1614 to i8
  %1616 = and i8 %1615, 1
  store i8 %1616, i8* %48, align 1
  %1617 = zext i1 %1605 to i8
  store i8 %1617, i8* %49, align 1
  %1618 = lshr i32 %1602, 31
  %1619 = trunc i32 %1618 to i8
  store i8 %1619, i8* %50, align 1
  %1620 = lshr i32 %1601, 31
  %1621 = xor i32 %1618, %1620
  %1622 = add nuw nsw i32 %1621, %1618
  %1623 = icmp eq i32 %1622, 2
  %1624 = zext i1 %1623 to i8
  store i8 %1624, i8* %51, align 1
  %1625 = add i64 %1126, 14
  store i64 %1625, i64* %3, align 8
  store i32 %1602, i32* %1600, align 4
  %1626 = load i64, i64* %3, align 8
  %1627 = add i64 %1626, -231
  store i64 %1627, i64* %3, align 8
  br label %block_.L_400d86

block_.L_400e72:                                  ; preds = %block_.L_400d86
  %1628 = add i64 %1083, 7
  store i64 %1628, i64* %3, align 8
  store i32 1, i32* %1050, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400e79

block_.L_400e79:                                  ; preds = %block_.L_400fad, %block_.L_400e72
  %1629 = phi i64 [ %2238, %block_.L_400fad ], [ %.pre6, %block_.L_400e72 ]
  %1630 = load i64, i64* %RBP.i, align 8
  %1631 = add i64 %1630, -40
  %1632 = add i64 %1629, 3
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1631 to i32*
  %1634 = load i32, i32* %1633, align 4
  %1635 = zext i32 %1634 to i64
  store i64 %1635, i64* %RAX.i1011, align 8
  %1636 = add i64 %1630, -8
  %1637 = add i64 %1629, 6
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = sub i32 %1634, %1639
  %1641 = icmp ult i32 %1634, %1639
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %46, align 1
  %1643 = and i32 %1640, 255
  %1644 = tail call i32 @llvm.ctpop.i32(i32 %1643)
  %1645 = trunc i32 %1644 to i8
  %1646 = and i8 %1645, 1
  %1647 = xor i8 %1646, 1
  store i8 %1647, i8* %47, align 1
  %1648 = xor i32 %1639, %1634
  %1649 = xor i32 %1648, %1640
  %1650 = lshr i32 %1649, 4
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  store i8 %1652, i8* %48, align 1
  %1653 = icmp eq i32 %1640, 0
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %49, align 1
  %1655 = lshr i32 %1640, 31
  %1656 = trunc i32 %1655 to i8
  store i8 %1656, i8* %50, align 1
  %1657 = lshr i32 %1634, 31
  %1658 = lshr i32 %1639, 31
  %1659 = xor i32 %1658, %1657
  %1660 = xor i32 %1655, %1657
  %1661 = add nuw nsw i32 %1660, %1659
  %1662 = icmp eq i32 %1661, 2
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %51, align 1
  %1664 = icmp ne i8 %1656, 0
  %1665 = xor i1 %1664, %1662
  %.v16 = select i1 %1665, i64 12, i64 327
  %1666 = add i64 %1629, %.v16
  %1667 = add i64 %1630, -44
  %1668 = add i64 %1666, 7
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i32*
  store i32 0, i32* %1669, align 4
  %.pre8 = load i64, i64* %3, align 8
  br i1 %1665, label %block_.L_400e79.block_.L_400e8c_crit_edge, label %block_.L_400e79.block_.L_400fc7_crit_edge

block_.L_400e79.block_.L_400e8c_crit_edge:        ; preds = %block_.L_400e79
  br label %block_.L_400e8c

block_.L_400e79.block_.L_400fc7_crit_edge:        ; preds = %block_.L_400e79
  br label %block_.L_400fc7

block_.L_400e8c:                                  ; preds = %block_.L_400e79.block_.L_400e8c_crit_edge, %block_400e98
  %1670 = phi i64 [ %2208, %block_400e98 ], [ %.pre8, %block_.L_400e79.block_.L_400e8c_crit_edge ]
  %1671 = load i64, i64* %RBP.i, align 8
  %1672 = add i64 %1671, -44
  %1673 = add i64 %1670, 3
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i32*
  %1675 = load i32, i32* %1674, align 4
  %1676 = zext i32 %1675 to i64
  store i64 %1676, i64* %RAX.i1011, align 8
  %1677 = add i64 %1671, -8
  %1678 = add i64 %1670, 6
  store i64 %1678, i64* %3, align 8
  %1679 = inttoptr i64 %1677 to i32*
  %1680 = load i32, i32* %1679, align 4
  %1681 = sub i32 %1675, %1680
  %1682 = icmp ult i32 %1675, %1680
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %46, align 1
  %1684 = and i32 %1681, 255
  %1685 = tail call i32 @llvm.ctpop.i32(i32 %1684)
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = xor i8 %1687, 1
  store i8 %1688, i8* %47, align 1
  %1689 = xor i32 %1680, %1675
  %1690 = xor i32 %1689, %1681
  %1691 = lshr i32 %1690, 4
  %1692 = trunc i32 %1691 to i8
  %1693 = and i8 %1692, 1
  store i8 %1693, i8* %48, align 1
  %1694 = icmp eq i32 %1681, 0
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %49, align 1
  %1696 = lshr i32 %1681, 31
  %1697 = trunc i32 %1696 to i8
  store i8 %1697, i8* %50, align 1
  %1698 = lshr i32 %1675, 31
  %1699 = lshr i32 %1680, 31
  %1700 = xor i32 %1699, %1698
  %1701 = xor i32 %1696, %1698
  %1702 = add nuw nsw i32 %1701, %1700
  %1703 = icmp eq i32 %1702, 2
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %51, align 1
  %1705 = icmp ne i8 %1697, 0
  %1706 = xor i1 %1705, %1703
  %.v17 = select i1 %1706, i64 12, i64 289
  %1707 = add i64 %1670, %.v17
  store i64 %1707, i64* %3, align 8
  br i1 %1706, label %block_400e98, label %block_.L_400fad

block_400e98:                                     ; preds = %block_.L_400e8c
  %1708 = add i64 %1671, -16
  %1709 = add i64 %1707, 4
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i64*
  %1711 = load i64, i64* %1710, align 8
  store i64 %1711, i64* %RAX.i1011, align 8
  %1712 = add i64 %1671, -40
  %1713 = add i64 %1707, 8
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = sext i32 %1715 to i64
  %1717 = shl nsw i64 %1716, 13
  store i64 %1717, i64* %RCX.i1018, align 8
  %1718 = lshr i64 %1716, 50
  %1719 = and i64 %1718, 1
  %1720 = add i64 %1717, %1711
  store i64 %1720, i64* %RAX.i1011, align 8
  %1721 = icmp ult i64 %1720, %1711
  %1722 = icmp ult i64 %1720, %1717
  %1723 = or i1 %1721, %1722
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %46, align 1
  %1725 = trunc i64 %1720 to i32
  %1726 = and i32 %1725, 255
  %1727 = tail call i32 @llvm.ctpop.i32(i32 %1726)
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  %1730 = xor i8 %1729, 1
  store i8 %1730, i8* %47, align 1
  %1731 = xor i64 %1711, %1720
  %1732 = lshr i64 %1731, 4
  %1733 = trunc i64 %1732 to i8
  %1734 = and i8 %1733, 1
  store i8 %1734, i8* %48, align 1
  %1735 = icmp eq i64 %1720, 0
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %49, align 1
  %1737 = lshr i64 %1720, 63
  %1738 = trunc i64 %1737 to i8
  store i8 %1738, i8* %50, align 1
  %1739 = lshr i64 %1711, 63
  %1740 = xor i64 %1737, %1739
  %1741 = xor i64 %1737, %1719
  %1742 = add nuw nsw i64 %1740, %1741
  %1743 = icmp eq i64 %1742, 2
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %51, align 1
  %1745 = add i64 %1707, 19
  store i64 %1745, i64* %3, align 8
  %1746 = load i32, i32* %1674, align 4
  %1747 = sext i32 %1746 to i64
  store i64 %1747, i64* %RCX.i1018, align 8
  %1748 = shl nsw i64 %1747, 3
  %1749 = add i64 %1748, %1720
  %1750 = add i64 %1707, 24
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i64*
  %1752 = load i64, i64* %1751, align 8
  %1753 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1752, i64* %1753, align 1
  store double 0.000000e+00, double* %55, align 1
  %1754 = add i64 %1707, 28
  store i64 %1754, i64* %3, align 8
  %1755 = load i64, i64* %1710, align 8
  store i64 %1755, i64* %RAX.i1011, align 8
  %1756 = add i64 %1707, 31
  store i64 %1756, i64* %3, align 8
  %1757 = load i32, i32* %1714, align 4
  %1758 = add i32 %1757, -1
  %1759 = zext i32 %1758 to i64
  store i64 %1759, i64* %RDX.i1021, align 8
  %1760 = sext i32 %1758 to i64
  %1761 = shl nsw i64 %1760, 13
  store i64 %1761, i64* %RCX.i1018, align 8
  %1762 = lshr i64 %1760, 50
  %1763 = and i64 %1762, 1
  %1764 = add i64 %1761, %1755
  store i64 %1764, i64* %RAX.i1011, align 8
  %1765 = icmp ult i64 %1764, %1755
  %1766 = icmp ult i64 %1764, %1761
  %1767 = or i1 %1765, %1766
  %1768 = zext i1 %1767 to i8
  store i8 %1768, i8* %46, align 1
  %1769 = trunc i64 %1764 to i32
  %1770 = and i32 %1769, 255
  %1771 = tail call i32 @llvm.ctpop.i32(i32 %1770)
  %1772 = trunc i32 %1771 to i8
  %1773 = and i8 %1772, 1
  %1774 = xor i8 %1773, 1
  store i8 %1774, i8* %47, align 1
  %1775 = xor i64 %1755, %1764
  %1776 = lshr i64 %1775, 4
  %1777 = trunc i64 %1776 to i8
  %1778 = and i8 %1777, 1
  store i8 %1778, i8* %48, align 1
  %1779 = icmp eq i64 %1764, 0
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %49, align 1
  %1781 = lshr i64 %1764, 63
  %1782 = trunc i64 %1781 to i8
  store i8 %1782, i8* %50, align 1
  %1783 = lshr i64 %1755, 63
  %1784 = xor i64 %1781, %1783
  %1785 = xor i64 %1781, %1763
  %1786 = add nuw nsw i64 %1784, %1785
  %1787 = icmp eq i64 %1786, 2
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %51, align 1
  %1789 = load i64, i64* %RBP.i, align 8
  %1790 = add i64 %1789, -44
  %1791 = add i64 %1707, 48
  store i64 %1791, i64* %3, align 8
  %1792 = inttoptr i64 %1790 to i32*
  %1793 = load i32, i32* %1792, align 4
  %1794 = sext i32 %1793 to i64
  store i64 %1794, i64* %RCX.i1018, align 8
  %1795 = shl nsw i64 %1794, 3
  %1796 = add i64 %1795, %1764
  %1797 = add i64 %1707, 53
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to double*
  %1799 = load double, double* %1798, align 8
  store double %1799, double* %57, align 1
  store double 0.000000e+00, double* %59, align 1
  %1800 = add i64 %1789, -24
  %1801 = add i64 %1707, 57
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i64*
  %1803 = load i64, i64* %1802, align 8
  store i64 %1803, i64* %RAX.i1011, align 8
  %1804 = add i64 %1789, -40
  %1805 = add i64 %1707, 61
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i32*
  %1807 = load i32, i32* %1806, align 4
  %1808 = sext i32 %1807 to i64
  %1809 = shl nsw i64 %1808, 13
  store i64 %1809, i64* %RCX.i1018, align 8
  %1810 = lshr i64 %1808, 50
  %1811 = and i64 %1810, 1
  %1812 = add i64 %1809, %1803
  store i64 %1812, i64* %RAX.i1011, align 8
  %1813 = icmp ult i64 %1812, %1803
  %1814 = icmp ult i64 %1812, %1809
  %1815 = or i1 %1813, %1814
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %46, align 1
  %1817 = trunc i64 %1812 to i32
  %1818 = and i32 %1817, 255
  %1819 = tail call i32 @llvm.ctpop.i32(i32 %1818)
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = xor i8 %1821, 1
  store i8 %1822, i8* %47, align 1
  %1823 = xor i64 %1803, %1812
  %1824 = lshr i64 %1823, 4
  %1825 = trunc i64 %1824 to i8
  %1826 = and i8 %1825, 1
  store i8 %1826, i8* %48, align 1
  %1827 = icmp eq i64 %1812, 0
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %49, align 1
  %1829 = lshr i64 %1812, 63
  %1830 = trunc i64 %1829 to i8
  store i8 %1830, i8* %50, align 1
  %1831 = lshr i64 %1803, 63
  %1832 = xor i64 %1829, %1831
  %1833 = xor i64 %1829, %1811
  %1834 = add nuw nsw i64 %1832, %1833
  %1835 = icmp eq i64 %1834, 2
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %51, align 1
  %1837 = add i64 %1707, 72
  store i64 %1837, i64* %3, align 8
  %1838 = load i32, i32* %1792, align 4
  %1839 = sext i32 %1838 to i64
  store i64 %1839, i64* %RCX.i1018, align 8
  %1840 = shl nsw i64 %1839, 3
  %1841 = add i64 %1840, %1812
  %1842 = add i64 %1707, 77
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to double*
  %1844 = load double, double* %1843, align 8
  %1845 = fmul double %1799, %1844
  store double %1845, double* %57, align 1
  store i64 0, i64* %58, align 1
  %1846 = add i64 %1789, -32
  %1847 = add i64 %1707, 81
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i64*
  %1849 = load i64, i64* %1848, align 8
  store i64 %1849, i64* %RAX.i1011, align 8
  %1850 = add i64 %1707, 84
  store i64 %1850, i64* %3, align 8
  %1851 = load i32, i32* %1806, align 4
  %1852 = add i32 %1851, -1
  %1853 = zext i32 %1852 to i64
  store i64 %1853, i64* %RDX.i1021, align 8
  %1854 = sext i32 %1852 to i64
  %1855 = shl nsw i64 %1854, 13
  store i64 %1855, i64* %RCX.i1018, align 8
  %1856 = lshr i64 %1854, 50
  %1857 = and i64 %1856, 1
  %1858 = add i64 %1855, %1849
  store i64 %1858, i64* %RAX.i1011, align 8
  %1859 = icmp ult i64 %1858, %1849
  %1860 = icmp ult i64 %1858, %1855
  %1861 = or i1 %1859, %1860
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %46, align 1
  %1863 = trunc i64 %1858 to i32
  %1864 = and i32 %1863, 255
  %1865 = tail call i32 @llvm.ctpop.i32(i32 %1864)
  %1866 = trunc i32 %1865 to i8
  %1867 = and i8 %1866, 1
  %1868 = xor i8 %1867, 1
  store i8 %1868, i8* %47, align 1
  %1869 = xor i64 %1849, %1858
  %1870 = lshr i64 %1869, 4
  %1871 = trunc i64 %1870 to i8
  %1872 = and i8 %1871, 1
  store i8 %1872, i8* %48, align 1
  %1873 = icmp eq i64 %1858, 0
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %49, align 1
  %1875 = lshr i64 %1858, 63
  %1876 = trunc i64 %1875 to i8
  store i8 %1876, i8* %50, align 1
  %1877 = lshr i64 %1849, 63
  %1878 = xor i64 %1875, %1877
  %1879 = xor i64 %1875, %1857
  %1880 = add nuw nsw i64 %1878, %1879
  %1881 = icmp eq i64 %1880, 2
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %51, align 1
  %1883 = load i64, i64* %RBP.i, align 8
  %1884 = add i64 %1883, -44
  %1885 = add i64 %1707, 101
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i32*
  %1887 = load i32, i32* %1886, align 4
  %1888 = sext i32 %1887 to i64
  store i64 %1888, i64* %RCX.i1018, align 8
  %1889 = shl nsw i64 %1888, 3
  %1890 = add i64 %1889, %1858
  %1891 = add i64 %1707, 106
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to double*
  %1893 = load double, double* %1892, align 8
  %1894 = fdiv double %1845, %1893
  store double %1894, double* %57, align 1
  %1895 = load double, double* %53, align 1
  %1896 = fsub double %1895, %1894
  store double %1896, double* %53, align 1
  %1897 = add i64 %1883, -16
  %1898 = add i64 %1707, 114
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i64*
  %1900 = load i64, i64* %1899, align 8
  store i64 %1900, i64* %RAX.i1011, align 8
  %1901 = add i64 %1883, -40
  %1902 = add i64 %1707, 118
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1901 to i32*
  %1904 = load i32, i32* %1903, align 4
  %1905 = sext i32 %1904 to i64
  %1906 = shl nsw i64 %1905, 13
  store i64 %1906, i64* %RCX.i1018, align 8
  %1907 = lshr i64 %1905, 50
  %1908 = and i64 %1907, 1
  %1909 = add i64 %1906, %1900
  store i64 %1909, i64* %RAX.i1011, align 8
  %1910 = icmp ult i64 %1909, %1900
  %1911 = icmp ult i64 %1909, %1906
  %1912 = or i1 %1910, %1911
  %1913 = zext i1 %1912 to i8
  store i8 %1913, i8* %46, align 1
  %1914 = trunc i64 %1909 to i32
  %1915 = and i32 %1914, 255
  %1916 = tail call i32 @llvm.ctpop.i32(i32 %1915)
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = xor i8 %1918, 1
  store i8 %1919, i8* %47, align 1
  %1920 = xor i64 %1900, %1909
  %1921 = lshr i64 %1920, 4
  %1922 = trunc i64 %1921 to i8
  %1923 = and i8 %1922, 1
  store i8 %1923, i8* %48, align 1
  %1924 = icmp eq i64 %1909, 0
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %49, align 1
  %1926 = lshr i64 %1909, 63
  %1927 = trunc i64 %1926 to i8
  store i8 %1927, i8* %50, align 1
  %1928 = lshr i64 %1900, 63
  %1929 = xor i64 %1926, %1928
  %1930 = xor i64 %1926, %1908
  %1931 = add nuw nsw i64 %1929, %1930
  %1932 = icmp eq i64 %1931, 2
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %51, align 1
  %1934 = add i64 %1707, 129
  store i64 %1934, i64* %3, align 8
  %1935 = load i32, i32* %1886, align 4
  %1936 = sext i32 %1935 to i64
  store i64 %1936, i64* %RCX.i1018, align 8
  %1937 = shl nsw i64 %1936, 3
  %1938 = add i64 %1937, %1909
  %1939 = add i64 %1707, 134
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1938 to double*
  store double %1896, double* %1940, align 8
  %1941 = load i64, i64* %RBP.i, align 8
  %1942 = add i64 %1941, -32
  %1943 = load i64, i64* %3, align 8
  %1944 = add i64 %1943, 4
  store i64 %1944, i64* %3, align 8
  %1945 = inttoptr i64 %1942 to i64*
  %1946 = load i64, i64* %1945, align 8
  store i64 %1946, i64* %RAX.i1011, align 8
  %1947 = add i64 %1941, -40
  %1948 = add i64 %1943, 8
  store i64 %1948, i64* %3, align 8
  %1949 = inttoptr i64 %1947 to i32*
  %1950 = load i32, i32* %1949, align 4
  %1951 = sext i32 %1950 to i64
  %1952 = shl nsw i64 %1951, 13
  store i64 %1952, i64* %RCX.i1018, align 8
  %1953 = lshr i64 %1951, 50
  %1954 = and i64 %1953, 1
  %1955 = add i64 %1952, %1946
  store i64 %1955, i64* %RAX.i1011, align 8
  %1956 = icmp ult i64 %1955, %1946
  %1957 = icmp ult i64 %1955, %1952
  %1958 = or i1 %1956, %1957
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %46, align 1
  %1960 = trunc i64 %1955 to i32
  %1961 = and i32 %1960, 255
  %1962 = tail call i32 @llvm.ctpop.i32(i32 %1961)
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  store i8 %1965, i8* %47, align 1
  %1966 = xor i64 %1946, %1955
  %1967 = lshr i64 %1966, 4
  %1968 = trunc i64 %1967 to i8
  %1969 = and i8 %1968, 1
  store i8 %1969, i8* %48, align 1
  %1970 = icmp eq i64 %1955, 0
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %49, align 1
  %1972 = lshr i64 %1955, 63
  %1973 = trunc i64 %1972 to i8
  store i8 %1973, i8* %50, align 1
  %1974 = lshr i64 %1946, 63
  %1975 = xor i64 %1972, %1974
  %1976 = xor i64 %1972, %1954
  %1977 = add nuw nsw i64 %1975, %1976
  %1978 = icmp eq i64 %1977, 2
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %51, align 1
  %1980 = add i64 %1941, -44
  %1981 = add i64 %1943, 19
  store i64 %1981, i64* %3, align 8
  %1982 = inttoptr i64 %1980 to i32*
  %1983 = load i32, i32* %1982, align 4
  %1984 = sext i32 %1983 to i64
  store i64 %1984, i64* %RCX.i1018, align 8
  %1985 = shl nsw i64 %1984, 3
  %1986 = add i64 %1985, %1955
  %1987 = add i64 %1943, 24
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i64*
  %1989 = load i64, i64* %1988, align 8
  store i64 %1989, i64* %1753, align 1
  store double 0.000000e+00, double* %55, align 1
  %1990 = add i64 %1941, -24
  %1991 = add i64 %1943, 28
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1990 to i64*
  %1993 = load i64, i64* %1992, align 8
  store i64 %1993, i64* %RAX.i1011, align 8
  %1994 = add i64 %1943, 32
  store i64 %1994, i64* %3, align 8
  %1995 = load i32, i32* %1949, align 4
  %1996 = sext i32 %1995 to i64
  %1997 = shl nsw i64 %1996, 13
  store i64 %1997, i64* %RCX.i1018, align 8
  %1998 = lshr i64 %1996, 50
  %1999 = and i64 %1998, 1
  %2000 = add i64 %1997, %1993
  store i64 %2000, i64* %RAX.i1011, align 8
  %2001 = icmp ult i64 %2000, %1993
  %2002 = icmp ult i64 %2000, %1997
  %2003 = or i1 %2001, %2002
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %46, align 1
  %2005 = trunc i64 %2000 to i32
  %2006 = and i32 %2005, 255
  %2007 = tail call i32 @llvm.ctpop.i32(i32 %2006)
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  %2010 = xor i8 %2009, 1
  store i8 %2010, i8* %47, align 1
  %2011 = xor i64 %1993, %2000
  %2012 = lshr i64 %2011, 4
  %2013 = trunc i64 %2012 to i8
  %2014 = and i8 %2013, 1
  store i8 %2014, i8* %48, align 1
  %2015 = icmp eq i64 %2000, 0
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %49, align 1
  %2017 = lshr i64 %2000, 63
  %2018 = trunc i64 %2017 to i8
  store i8 %2018, i8* %50, align 1
  %2019 = lshr i64 %1993, 63
  %2020 = xor i64 %2017, %2019
  %2021 = xor i64 %2017, %1999
  %2022 = add nuw nsw i64 %2020, %2021
  %2023 = icmp eq i64 %2022, 2
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %51, align 1
  %2025 = load i64, i64* %RBP.i, align 8
  %2026 = add i64 %2025, -44
  %2027 = add i64 %1943, 43
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  %2030 = sext i32 %2029 to i64
  store i64 %2030, i64* %RCX.i1018, align 8
  %2031 = shl nsw i64 %2030, 3
  %2032 = add i64 %2031, %2000
  %2033 = add i64 %1943, 48
  store i64 %2033, i64* %3, align 8
  %2034 = inttoptr i64 %2032 to double*
  %2035 = load double, double* %2034, align 8
  store double %2035, double* %57, align 1
  store double 0.000000e+00, double* %59, align 1
  %2036 = add i64 %2025, -24
  %2037 = add i64 %1943, 52
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i64*
  %2039 = load i64, i64* %2038, align 8
  store i64 %2039, i64* %RAX.i1011, align 8
  %2040 = add i64 %2025, -40
  %2041 = add i64 %1943, 56
  store i64 %2041, i64* %3, align 8
  %2042 = inttoptr i64 %2040 to i32*
  %2043 = load i32, i32* %2042, align 4
  %2044 = sext i32 %2043 to i64
  %2045 = shl nsw i64 %2044, 13
  store i64 %2045, i64* %RCX.i1018, align 8
  %2046 = lshr i64 %2044, 50
  %2047 = and i64 %2046, 1
  %2048 = add i64 %2045, %2039
  store i64 %2048, i64* %RAX.i1011, align 8
  %2049 = icmp ult i64 %2048, %2039
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
  %2059 = xor i64 %2039, %2048
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
  %2067 = lshr i64 %2039, 63
  %2068 = xor i64 %2065, %2067
  %2069 = xor i64 %2065, %2047
  %2070 = add nuw nsw i64 %2068, %2069
  %2071 = icmp eq i64 %2070, 2
  %2072 = zext i1 %2071 to i8
  store i8 %2072, i8* %51, align 1
  %2073 = add i64 %1943, 67
  store i64 %2073, i64* %3, align 8
  %2074 = load i32, i32* %2028, align 4
  %2075 = sext i32 %2074 to i64
  store i64 %2075, i64* %RCX.i1018, align 8
  %2076 = shl nsw i64 %2075, 3
  %2077 = add i64 %2076, %2048
  %2078 = add i64 %1943, 72
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to double*
  %2080 = load double, double* %2079, align 8
  %2081 = fmul double %2035, %2080
  store double %2081, double* %57, align 1
  store i64 0, i64* %58, align 1
  %2082 = add i64 %2025, -32
  %2083 = add i64 %1943, 76
  store i64 %2083, i64* %3, align 8
  %2084 = inttoptr i64 %2082 to i64*
  %2085 = load i64, i64* %2084, align 8
  store i64 %2085, i64* %RAX.i1011, align 8
  %2086 = add i64 %1943, 79
  store i64 %2086, i64* %3, align 8
  %2087 = load i32, i32* %2042, align 4
  %2088 = add i32 %2087, -1
  %2089 = zext i32 %2088 to i64
  store i64 %2089, i64* %RDX.i1021, align 8
  %2090 = sext i32 %2088 to i64
  %2091 = shl nsw i64 %2090, 13
  store i64 %2091, i64* %RCX.i1018, align 8
  %2092 = lshr i64 %2090, 50
  %2093 = and i64 %2092, 1
  %2094 = add i64 %2091, %2085
  store i64 %2094, i64* %RAX.i1011, align 8
  %2095 = icmp ult i64 %2094, %2085
  %2096 = icmp ult i64 %2094, %2091
  %2097 = or i1 %2095, %2096
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %46, align 1
  %2099 = trunc i64 %2094 to i32
  %2100 = and i32 %2099, 255
  %2101 = tail call i32 @llvm.ctpop.i32(i32 %2100)
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = xor i8 %2103, 1
  store i8 %2104, i8* %47, align 1
  %2105 = xor i64 %2085, %2094
  %2106 = lshr i64 %2105, 4
  %2107 = trunc i64 %2106 to i8
  %2108 = and i8 %2107, 1
  store i8 %2108, i8* %48, align 1
  %2109 = icmp eq i64 %2094, 0
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %49, align 1
  %2111 = lshr i64 %2094, 63
  %2112 = trunc i64 %2111 to i8
  store i8 %2112, i8* %50, align 1
  %2113 = lshr i64 %2085, 63
  %2114 = xor i64 %2111, %2113
  %2115 = xor i64 %2111, %2093
  %2116 = add nuw nsw i64 %2114, %2115
  %2117 = icmp eq i64 %2116, 2
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %51, align 1
  %2119 = load i64, i64* %RBP.i, align 8
  %2120 = add i64 %2119, -44
  %2121 = add i64 %1943, 96
  store i64 %2121, i64* %3, align 8
  %2122 = inttoptr i64 %2120 to i32*
  %2123 = load i32, i32* %2122, align 4
  %2124 = sext i32 %2123 to i64
  store i64 %2124, i64* %RCX.i1018, align 8
  %2125 = shl nsw i64 %2124, 3
  %2126 = add i64 %2125, %2094
  %2127 = add i64 %1943, 101
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to double*
  %2129 = load double, double* %2128, align 8
  %2130 = fdiv double %2081, %2129
  store double %2130, double* %57, align 1
  %2131 = load double, double* %53, align 1
  %2132 = fsub double %2131, %2130
  store double %2132, double* %53, align 1
  %2133 = add i64 %2119, -32
  %2134 = add i64 %1943, 109
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i64*
  %2136 = load i64, i64* %2135, align 8
  store i64 %2136, i64* %RAX.i1011, align 8
  %2137 = add i64 %2119, -40
  %2138 = add i64 %1943, 113
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i32*
  %2140 = load i32, i32* %2139, align 4
  %2141 = sext i32 %2140 to i64
  %2142 = shl nsw i64 %2141, 13
  store i64 %2142, i64* %RCX.i1018, align 8
  %2143 = lshr i64 %2141, 50
  %2144 = and i64 %2143, 1
  %2145 = add i64 %2142, %2136
  store i64 %2145, i64* %RAX.i1011, align 8
  %2146 = icmp ult i64 %2145, %2136
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
  %2156 = xor i64 %2136, %2145
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
  %2164 = lshr i64 %2136, 63
  %2165 = xor i64 %2162, %2164
  %2166 = xor i64 %2162, %2144
  %2167 = add nuw nsw i64 %2165, %2166
  %2168 = icmp eq i64 %2167, 2
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %51, align 1
  %2170 = add i64 %1943, 124
  store i64 %2170, i64* %3, align 8
  %2171 = load i32, i32* %2122, align 4
  %2172 = sext i32 %2171 to i64
  store i64 %2172, i64* %RCX.i1018, align 8
  %2173 = shl nsw i64 %2172, 3
  %2174 = add i64 %2173, %2145
  %2175 = add i64 %1943, 129
  store i64 %2175, i64* %3, align 8
  %2176 = inttoptr i64 %2174 to double*
  store double %2132, double* %2176, align 8
  %2177 = load i64, i64* %RBP.i, align 8
  %2178 = add i64 %2177, -44
  %2179 = load i64, i64* %3, align 8
  %2180 = add i64 %2179, 3
  store i64 %2180, i64* %3, align 8
  %2181 = inttoptr i64 %2178 to i32*
  %2182 = load i32, i32* %2181, align 4
  %2183 = add i32 %2182, 1
  %2184 = zext i32 %2183 to i64
  store i64 %2184, i64* %RAX.i1011, align 8
  %2185 = icmp eq i32 %2182, -1
  %2186 = icmp eq i32 %2183, 0
  %2187 = or i1 %2185, %2186
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %46, align 1
  %2189 = and i32 %2183, 255
  %2190 = tail call i32 @llvm.ctpop.i32(i32 %2189)
  %2191 = trunc i32 %2190 to i8
  %2192 = and i8 %2191, 1
  %2193 = xor i8 %2192, 1
  store i8 %2193, i8* %47, align 1
  %2194 = xor i32 %2182, %2183
  %2195 = lshr i32 %2194, 4
  %2196 = trunc i32 %2195 to i8
  %2197 = and i8 %2196, 1
  store i8 %2197, i8* %48, align 1
  %2198 = zext i1 %2186 to i8
  store i8 %2198, i8* %49, align 1
  %2199 = lshr i32 %2183, 31
  %2200 = trunc i32 %2199 to i8
  store i8 %2200, i8* %50, align 1
  %2201 = lshr i32 %2182, 31
  %2202 = xor i32 %2199, %2201
  %2203 = add nuw nsw i32 %2202, %2199
  %2204 = icmp eq i32 %2203, 2
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %51, align 1
  %2206 = add i64 %2179, 9
  store i64 %2206, i64* %3, align 8
  store i32 %2183, i32* %2181, align 4
  %2207 = load i64, i64* %3, align 8
  %2208 = add i64 %2207, -284
  store i64 %2208, i64* %3, align 8
  br label %block_.L_400e8c

block_.L_400fad:                                  ; preds = %block_.L_400e8c
  %2209 = add i64 %1671, -40
  %2210 = add i64 %1707, 8
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2209 to i32*
  %2212 = load i32, i32* %2211, align 4
  %2213 = add i32 %2212, 1
  %2214 = zext i32 %2213 to i64
  store i64 %2214, i64* %RAX.i1011, align 8
  %2215 = icmp eq i32 %2212, -1
  %2216 = icmp eq i32 %2213, 0
  %2217 = or i1 %2215, %2216
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %46, align 1
  %2219 = and i32 %2213, 255
  %2220 = tail call i32 @llvm.ctpop.i32(i32 %2219)
  %2221 = trunc i32 %2220 to i8
  %2222 = and i8 %2221, 1
  %2223 = xor i8 %2222, 1
  store i8 %2223, i8* %47, align 1
  %2224 = xor i32 %2212, %2213
  %2225 = lshr i32 %2224, 4
  %2226 = trunc i32 %2225 to i8
  %2227 = and i8 %2226, 1
  store i8 %2227, i8* %48, align 1
  %2228 = zext i1 %2216 to i8
  store i8 %2228, i8* %49, align 1
  %2229 = lshr i32 %2213, 31
  %2230 = trunc i32 %2229 to i8
  store i8 %2230, i8* %50, align 1
  %2231 = lshr i32 %2212, 31
  %2232 = xor i32 %2229, %2231
  %2233 = add nuw nsw i32 %2232, %2229
  %2234 = icmp eq i32 %2233, 2
  %2235 = zext i1 %2234 to i8
  store i8 %2235, i8* %51, align 1
  %2236 = add i64 %1707, 14
  store i64 %2236, i64* %3, align 8
  store i32 %2213, i32* %2211, align 4
  %2237 = load i64, i64* %3, align 8
  %2238 = add i64 %2237, -322
  store i64 %2238, i64* %3, align 8
  br label %block_.L_400e79

block_.L_400fc7:                                  ; preds = %block_.L_400e79.block_.L_400fc7_crit_edge, %block_400fd3
  %2239 = phi i64 [ %2451, %block_400fd3 ], [ %.pre8, %block_.L_400e79.block_.L_400fc7_crit_edge ]
  %2240 = load i64, i64* %RBP.i, align 8
  %2241 = add i64 %2240, -44
  %2242 = add i64 %2239, 3
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2241 to i32*
  %2244 = load i32, i32* %2243, align 4
  %2245 = zext i32 %2244 to i64
  store i64 %2245, i64* %RAX.i1011, align 8
  %2246 = add i64 %2240, -8
  %2247 = add i64 %2239, 6
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i32*
  %2249 = load i32, i32* %2248, align 4
  %2250 = sub i32 %2244, %2249
  %2251 = icmp ult i32 %2244, %2249
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %46, align 1
  %2253 = and i32 %2250, 255
  %2254 = tail call i32 @llvm.ctpop.i32(i32 %2253)
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  %2257 = xor i8 %2256, 1
  store i8 %2257, i8* %47, align 1
  %2258 = xor i32 %2249, %2244
  %2259 = xor i32 %2258, %2250
  %2260 = lshr i32 %2259, 4
  %2261 = trunc i32 %2260 to i8
  %2262 = and i8 %2261, 1
  store i8 %2262, i8* %48, align 1
  %2263 = icmp eq i32 %2250, 0
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %49, align 1
  %2265 = lshr i32 %2250, 31
  %2266 = trunc i32 %2265 to i8
  store i8 %2266, i8* %50, align 1
  %2267 = lshr i32 %2244, 31
  %2268 = lshr i32 %2249, 31
  %2269 = xor i32 %2268, %2267
  %2270 = xor i32 %2265, %2267
  %2271 = add nuw nsw i32 %2270, %2269
  %2272 = icmp eq i32 %2271, 2
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %51, align 1
  %2274 = icmp ne i8 %2266, 0
  %2275 = xor i1 %2274, %2272
  %.v18 = select i1 %2275, i64 12, i64 113
  %2276 = add i64 %2239, %.v18
  store i64 %2276, i64* %3, align 8
  br i1 %2275, label %block_400fd3, label %block_.L_401038

block_400fd3:                                     ; preds = %block_.L_400fc7
  %2277 = add i64 %2240, -16
  %2278 = add i64 %2276, 4
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2277 to i64*
  %2280 = load i64, i64* %2279, align 8
  store i64 %2280, i64* %RAX.i1011, align 8
  %2281 = add i64 %2276, 7
  store i64 %2281, i64* %3, align 8
  %2282 = load i32, i32* %2248, align 4
  %2283 = add i32 %2282, -1
  %2284 = zext i32 %2283 to i64
  store i64 %2284, i64* %RCX.i1018, align 8
  %2285 = sext i32 %2283 to i64
  %2286 = shl nsw i64 %2285, 13
  store i64 %2286, i64* %RDX.i1021, align 8
  %2287 = lshr i64 %2285, 50
  %2288 = and i64 %2287, 1
  %2289 = add i64 %2286, %2280
  store i64 %2289, i64* %RAX.i1011, align 8
  %2290 = icmp ult i64 %2289, %2280
  %2291 = icmp ult i64 %2289, %2286
  %2292 = or i1 %2290, %2291
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %46, align 1
  %2294 = trunc i64 %2289 to i32
  %2295 = and i32 %2294, 255
  %2296 = tail call i32 @llvm.ctpop.i32(i32 %2295)
  %2297 = trunc i32 %2296 to i8
  %2298 = and i8 %2297, 1
  %2299 = xor i8 %2298, 1
  store i8 %2299, i8* %47, align 1
  %2300 = xor i64 %2280, %2289
  %2301 = lshr i64 %2300, 4
  %2302 = trunc i64 %2301 to i8
  %2303 = and i8 %2302, 1
  store i8 %2303, i8* %48, align 1
  %2304 = icmp eq i64 %2289, 0
  %2305 = zext i1 %2304 to i8
  store i8 %2305, i8* %49, align 1
  %2306 = lshr i64 %2289, 63
  %2307 = trunc i64 %2306 to i8
  store i8 %2307, i8* %50, align 1
  %2308 = lshr i64 %2280, 63
  %2309 = xor i64 %2306, %2308
  %2310 = xor i64 %2306, %2288
  %2311 = add nuw nsw i64 %2309, %2310
  %2312 = icmp eq i64 %2311, 2
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %51, align 1
  %2314 = add i64 %2276, 24
  store i64 %2314, i64* %3, align 8
  %2315 = load i32, i32* %2243, align 4
  %2316 = sext i32 %2315 to i64
  store i64 %2316, i64* %RDX.i1021, align 8
  %2317 = shl nsw i64 %2316, 3
  %2318 = add i64 %2317, %2289
  %2319 = add i64 %2276, 29
  store i64 %2319, i64* %3, align 8
  %2320 = inttoptr i64 %2318 to i64*
  %2321 = load i64, i64* %2320, align 8
  %2322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2321, i64* %2322, align 1
  store double 0.000000e+00, double* %55, align 1
  %2323 = add i64 %2240, -32
  %2324 = add i64 %2276, 33
  store i64 %2324, i64* %3, align 8
  %2325 = inttoptr i64 %2323 to i64*
  %2326 = load i64, i64* %2325, align 8
  store i64 %2326, i64* %RAX.i1011, align 8
  %2327 = add i64 %2276, 36
  store i64 %2327, i64* %3, align 8
  %2328 = load i32, i32* %2248, align 4
  %2329 = add i32 %2328, -1
  %2330 = zext i32 %2329 to i64
  store i64 %2330, i64* %RCX.i1018, align 8
  %2331 = sext i32 %2329 to i64
  %2332 = shl nsw i64 %2331, 13
  store i64 %2332, i64* %RDX.i1021, align 8
  %2333 = lshr i64 %2331, 50
  %2334 = and i64 %2333, 1
  %2335 = add i64 %2332, %2326
  store i64 %2335, i64* %RAX.i1011, align 8
  %2336 = icmp ult i64 %2335, %2326
  %2337 = icmp ult i64 %2335, %2332
  %2338 = or i1 %2336, %2337
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %46, align 1
  %2340 = trunc i64 %2335 to i32
  %2341 = and i32 %2340, 255
  %2342 = tail call i32 @llvm.ctpop.i32(i32 %2341)
  %2343 = trunc i32 %2342 to i8
  %2344 = and i8 %2343, 1
  %2345 = xor i8 %2344, 1
  store i8 %2345, i8* %47, align 1
  %2346 = xor i64 %2326, %2335
  %2347 = lshr i64 %2346, 4
  %2348 = trunc i64 %2347 to i8
  %2349 = and i8 %2348, 1
  store i8 %2349, i8* %48, align 1
  %2350 = icmp eq i64 %2335, 0
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %49, align 1
  %2352 = lshr i64 %2335, 63
  %2353 = trunc i64 %2352 to i8
  store i8 %2353, i8* %50, align 1
  %2354 = lshr i64 %2326, 63
  %2355 = xor i64 %2352, %2354
  %2356 = xor i64 %2352, %2334
  %2357 = add nuw nsw i64 %2355, %2356
  %2358 = icmp eq i64 %2357, 2
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %51, align 1
  %2360 = load i64, i64* %RBP.i, align 8
  %2361 = add i64 %2360, -44
  %2362 = add i64 %2276, 53
  store i64 %2362, i64* %3, align 8
  %2363 = inttoptr i64 %2361 to i32*
  %2364 = load i32, i32* %2363, align 4
  %2365 = sext i32 %2364 to i64
  store i64 %2365, i64* %RDX.i1021, align 8
  %2366 = shl nsw i64 %2365, 3
  %2367 = add i64 %2366, %2335
  %2368 = add i64 %2276, 58
  store i64 %2368, i64* %3, align 8
  %2369 = bitcast i64 %2321 to double
  %2370 = inttoptr i64 %2367 to double*
  %2371 = load double, double* %2370, align 8
  %2372 = fdiv double %2369, %2371
  store double %2372, double* %53, align 1
  %2373 = add i64 %2360, -16
  %2374 = add i64 %2276, 62
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i64*
  %2376 = load i64, i64* %2375, align 8
  store i64 %2376, i64* %RAX.i1011, align 8
  %2377 = add i64 %2360, -8
  %2378 = add i64 %2276, 65
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i32*
  %2380 = load i32, i32* %2379, align 4
  %2381 = add i32 %2380, -1
  %2382 = zext i32 %2381 to i64
  store i64 %2382, i64* %RCX.i1018, align 8
  %2383 = sext i32 %2381 to i64
  %2384 = shl nsw i64 %2383, 13
  store i64 %2384, i64* %RDX.i1021, align 8
  %2385 = lshr i64 %2383, 50
  %2386 = and i64 %2385, 1
  %2387 = add i64 %2384, %2376
  store i64 %2387, i64* %RAX.i1011, align 8
  %2388 = icmp ult i64 %2387, %2376
  %2389 = icmp ult i64 %2387, %2384
  %2390 = or i1 %2388, %2389
  %2391 = zext i1 %2390 to i8
  store i8 %2391, i8* %46, align 1
  %2392 = trunc i64 %2387 to i32
  %2393 = and i32 %2392, 255
  %2394 = tail call i32 @llvm.ctpop.i32(i32 %2393)
  %2395 = trunc i32 %2394 to i8
  %2396 = and i8 %2395, 1
  %2397 = xor i8 %2396, 1
  store i8 %2397, i8* %47, align 1
  %2398 = xor i64 %2376, %2387
  %2399 = lshr i64 %2398, 4
  %2400 = trunc i64 %2399 to i8
  %2401 = and i8 %2400, 1
  store i8 %2401, i8* %48, align 1
  %2402 = icmp eq i64 %2387, 0
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %49, align 1
  %2404 = lshr i64 %2387, 63
  %2405 = trunc i64 %2404 to i8
  store i8 %2405, i8* %50, align 1
  %2406 = lshr i64 %2376, 63
  %2407 = xor i64 %2404, %2406
  %2408 = xor i64 %2404, %2386
  %2409 = add nuw nsw i64 %2407, %2408
  %2410 = icmp eq i64 %2409, 2
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %51, align 1
  %2412 = add i64 %2276, 82
  store i64 %2412, i64* %3, align 8
  %2413 = load i32, i32* %2363, align 4
  %2414 = sext i32 %2413 to i64
  store i64 %2414, i64* %RDX.i1021, align 8
  %2415 = shl nsw i64 %2414, 3
  %2416 = add i64 %2415, %2387
  %2417 = add i64 %2276, 87
  store i64 %2417, i64* %3, align 8
  %2418 = bitcast double %2372 to i64
  %2419 = inttoptr i64 %2416 to i64*
  store i64 %2418, i64* %2419, align 8
  %2420 = load i64, i64* %RBP.i, align 8
  %2421 = add i64 %2420, -44
  %2422 = load i64, i64* %3, align 8
  %2423 = add i64 %2422, 3
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2421 to i32*
  %2425 = load i32, i32* %2424, align 4
  %2426 = add i32 %2425, 1
  %2427 = zext i32 %2426 to i64
  store i64 %2427, i64* %RAX.i1011, align 8
  %2428 = icmp eq i32 %2425, -1
  %2429 = icmp eq i32 %2426, 0
  %2430 = or i1 %2428, %2429
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %46, align 1
  %2432 = and i32 %2426, 255
  %2433 = tail call i32 @llvm.ctpop.i32(i32 %2432)
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  store i8 %2436, i8* %47, align 1
  %2437 = xor i32 %2425, %2426
  %2438 = lshr i32 %2437, 4
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  store i8 %2440, i8* %48, align 1
  %2441 = zext i1 %2429 to i8
  store i8 %2441, i8* %49, align 1
  %2442 = lshr i32 %2426, 31
  %2443 = trunc i32 %2442 to i8
  store i8 %2443, i8* %50, align 1
  %2444 = lshr i32 %2425, 31
  %2445 = xor i32 %2442, %2444
  %2446 = add nuw nsw i32 %2445, %2442
  %2447 = icmp eq i32 %2446, 2
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %51, align 1
  %2449 = add i64 %2422, 9
  store i64 %2449, i64* %3, align 8
  store i32 %2426, i32* %2424, align 4
  %2450 = load i64, i64* %3, align 8
  %2451 = add i64 %2450, -108
  store i64 %2451, i64* %3, align 8
  br label %block_.L_400fc7

block_.L_401038:                                  ; preds = %block_.L_400fc7
  %2452 = add i64 %2240, -40
  %2453 = add i64 %2276, 7
  store i64 %2453, i64* %3, align 8
  %2454 = inttoptr i64 %2452 to i32*
  store i32 0, i32* %2454, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_40103f

block_.L_40103f:                                  ; preds = %block_.L_401115, %block_.L_401038
  %2455 = phi i64 [ %2953, %block_.L_401115 ], [ %.pre9, %block_.L_401038 ]
  %2456 = load i64, i64* %RBP.i, align 8
  %2457 = add i64 %2456, -40
  %2458 = add i64 %2455, 3
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i32*
  %2460 = load i32, i32* %2459, align 4
  %2461 = zext i32 %2460 to i64
  store i64 %2461, i64* %RAX.i1011, align 8
  %2462 = add i64 %2456, -8
  %2463 = add i64 %2455, 6
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2462 to i32*
  %2465 = load i32, i32* %2464, align 4
  %2466 = add i32 %2465, -2
  %2467 = zext i32 %2466 to i64
  store i64 %2467, i64* %RCX.i1018, align 8
  %2468 = lshr i32 %2466, 31
  %2469 = sub i32 %2460, %2466
  %2470 = icmp ult i32 %2460, %2466
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %46, align 1
  %2472 = and i32 %2469, 255
  %2473 = tail call i32 @llvm.ctpop.i32(i32 %2472)
  %2474 = trunc i32 %2473 to i8
  %2475 = and i8 %2474, 1
  %2476 = xor i8 %2475, 1
  store i8 %2476, i8* %47, align 1
  %2477 = xor i32 %2466, %2460
  %2478 = xor i32 %2477, %2469
  %2479 = lshr i32 %2478, 4
  %2480 = trunc i32 %2479 to i8
  %2481 = and i8 %2480, 1
  store i8 %2481, i8* %48, align 1
  %2482 = icmp eq i32 %2469, 0
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %49, align 1
  %2484 = lshr i32 %2469, 31
  %2485 = trunc i32 %2484 to i8
  store i8 %2485, i8* %50, align 1
  %2486 = lshr i32 %2460, 31
  %2487 = xor i32 %2468, %2486
  %2488 = xor i32 %2484, %2486
  %2489 = add nuw nsw i32 %2488, %2487
  %2490 = icmp eq i32 %2489, 2
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %51, align 1
  %2492 = icmp ne i8 %2485, 0
  %2493 = xor i1 %2492, %2490
  %.v19 = select i1 %2493, i64 17, i64 233
  %2494 = add i64 %2455, %.v19
  store i64 %2494, i64* %3, align 8
  br i1 %2493, label %block_401050, label %block_.L_401128

block_401050:                                     ; preds = %block_.L_40103f
  %2495 = add i64 %2456, -44
  %2496 = add i64 %2494, 7
  store i64 %2496, i64* %3, align 8
  %2497 = inttoptr i64 %2495 to i32*
  store i32 0, i32* %2497, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_401057

block_.L_401057:                                  ; preds = %block_401063, %block_401050
  %2498 = phi i64 [ %2923, %block_401063 ], [ %.pre10, %block_401050 ]
  %2499 = load i64, i64* %RBP.i, align 8
  %2500 = add i64 %2499, -44
  %2501 = add i64 %2498, 3
  store i64 %2501, i64* %3, align 8
  %2502 = inttoptr i64 %2500 to i32*
  %2503 = load i32, i32* %2502, align 4
  %2504 = zext i32 %2503 to i64
  store i64 %2504, i64* %RAX.i1011, align 8
  %2505 = add i64 %2499, -8
  %2506 = add i64 %2498, 6
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2505 to i32*
  %2508 = load i32, i32* %2507, align 4
  %2509 = sub i32 %2503, %2508
  %2510 = icmp ult i32 %2503, %2508
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %46, align 1
  %2512 = and i32 %2509, 255
  %2513 = tail call i32 @llvm.ctpop.i32(i32 %2512)
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  %2516 = xor i8 %2515, 1
  store i8 %2516, i8* %47, align 1
  %2517 = xor i32 %2508, %2503
  %2518 = xor i32 %2517, %2509
  %2519 = lshr i32 %2518, 4
  %2520 = trunc i32 %2519 to i8
  %2521 = and i8 %2520, 1
  store i8 %2521, i8* %48, align 1
  %2522 = icmp eq i32 %2509, 0
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %49, align 1
  %2524 = lshr i32 %2509, 31
  %2525 = trunc i32 %2524 to i8
  store i8 %2525, i8* %50, align 1
  %2526 = lshr i32 %2503, 31
  %2527 = lshr i32 %2508, 31
  %2528 = xor i32 %2527, %2526
  %2529 = xor i32 %2524, %2526
  %2530 = add nuw nsw i32 %2529, %2528
  %2531 = icmp eq i32 %2530, 2
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %51, align 1
  %2533 = icmp ne i8 %2525, 0
  %2534 = xor i1 %2533, %2531
  %.v20 = select i1 %2534, i64 12, i64 190
  %2535 = add i64 %2498, %.v20
  store i64 %2535, i64* %3, align 8
  br i1 %2534, label %block_401063, label %block_.L_401115

block_401063:                                     ; preds = %block_.L_401057
  %2536 = add i64 %2499, -16
  %2537 = add i64 %2535, 4
  store i64 %2537, i64* %3, align 8
  %2538 = inttoptr i64 %2536 to i64*
  %2539 = load i64, i64* %2538, align 8
  store i64 %2539, i64* %RAX.i1011, align 8
  %2540 = add i64 %2535, 7
  store i64 %2540, i64* %3, align 8
  %2541 = load i32, i32* %2507, align 4
  %2542 = add i32 %2541, -2
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %RCX.i1018, align 8
  %2544 = icmp ult i32 %2541, 2
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %46, align 1
  %2546 = and i32 %2542, 255
  %2547 = tail call i32 @llvm.ctpop.i32(i32 %2546)
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  %2550 = xor i8 %2549, 1
  store i8 %2550, i8* %47, align 1
  %2551 = xor i32 %2541, %2542
  %2552 = lshr i32 %2551, 4
  %2553 = trunc i32 %2552 to i8
  %2554 = and i8 %2553, 1
  store i8 %2554, i8* %48, align 1
  %2555 = icmp eq i32 %2542, 0
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %49, align 1
  %2557 = lshr i32 %2542, 31
  %2558 = trunc i32 %2557 to i8
  store i8 %2558, i8* %50, align 1
  %2559 = lshr i32 %2541, 31
  %2560 = xor i32 %2557, %2559
  %2561 = add nuw nsw i32 %2560, %2559
  %2562 = icmp eq i32 %2561, 2
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %51, align 1
  %2564 = add i64 %2499, -40
  %2565 = add i64 %2535, 13
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i32*
  %2567 = load i32, i32* %2566, align 4
  %2568 = sub i32 %2542, %2567
  %2569 = zext i32 %2568 to i64
  store i64 %2569, i64* %RCX.i1018, align 8
  %2570 = sext i32 %2568 to i64
  %2571 = shl nsw i64 %2570, 13
  store i64 %2571, i64* %RDX.i1021, align 8
  %2572 = lshr i64 %2570, 50
  %2573 = and i64 %2572, 1
  %2574 = add i64 %2571, %2539
  store i64 %2574, i64* %RAX.i1011, align 8
  %2575 = icmp ult i64 %2574, %2539
  %2576 = icmp ult i64 %2574, %2571
  %2577 = or i1 %2575, %2576
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %46, align 1
  %2579 = trunc i64 %2574 to i32
  %2580 = and i32 %2579, 255
  %2581 = tail call i32 @llvm.ctpop.i32(i32 %2580)
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  store i8 %2584, i8* %47, align 1
  %2585 = xor i64 %2539, %2574
  %2586 = lshr i64 %2585, 4
  %2587 = trunc i64 %2586 to i8
  %2588 = and i8 %2587, 1
  store i8 %2588, i8* %48, align 1
  %2589 = icmp eq i64 %2574, 0
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %49, align 1
  %2591 = lshr i64 %2574, 63
  %2592 = trunc i64 %2591 to i8
  store i8 %2592, i8* %50, align 1
  %2593 = lshr i64 %2539, 63
  %2594 = xor i64 %2591, %2593
  %2595 = xor i64 %2591, %2573
  %2596 = add nuw nsw i64 %2594, %2595
  %2597 = icmp eq i64 %2596, 2
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %51, align 1
  %2599 = add i64 %2535, 27
  store i64 %2599, i64* %3, align 8
  %2600 = load i32, i32* %2502, align 4
  %2601 = sext i32 %2600 to i64
  store i64 %2601, i64* %RDX.i1021, align 8
  %2602 = shl nsw i64 %2601, 3
  %2603 = add i64 %2602, %2574
  %2604 = add i64 %2535, 32
  store i64 %2604, i64* %3, align 8
  %2605 = inttoptr i64 %2603 to i64*
  %2606 = load i64, i64* %2605, align 8
  %2607 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2606, i64* %2607, align 1
  store double 0.000000e+00, double* %55, align 1
  %2608 = add i64 %2535, 36
  store i64 %2608, i64* %3, align 8
  %2609 = load i64, i64* %2538, align 8
  store i64 %2609, i64* %RAX.i1011, align 8
  %2610 = add i64 %2535, 39
  store i64 %2610, i64* %3, align 8
  %2611 = load i32, i32* %2507, align 4
  %2612 = zext i32 %2611 to i64
  store i64 %2612, i64* %RCX.i1018, align 8
  %2613 = add i64 %2535, 42
  store i64 %2613, i64* %3, align 8
  %2614 = load i32, i32* %2566, align 4
  %2615 = sub i32 %2611, %2614
  %2616 = add i32 %2615, -3
  %2617 = zext i32 %2616 to i64
  store i64 %2617, i64* %RCX.i1018, align 8
  %2618 = sext i32 %2616 to i64
  %2619 = shl nsw i64 %2618, 13
  store i64 %2619, i64* %RDX.i1021, align 8
  %2620 = lshr i64 %2618, 50
  %2621 = and i64 %2620, 1
  %2622 = add i64 %2619, %2609
  store i64 %2622, i64* %RAX.i1011, align 8
  %2623 = icmp ult i64 %2622, %2609
  %2624 = icmp ult i64 %2622, %2619
  %2625 = or i1 %2623, %2624
  %2626 = zext i1 %2625 to i8
  store i8 %2626, i8* %46, align 1
  %2627 = trunc i64 %2622 to i32
  %2628 = and i32 %2627, 255
  %2629 = tail call i32 @llvm.ctpop.i32(i32 %2628)
  %2630 = trunc i32 %2629 to i8
  %2631 = and i8 %2630, 1
  %2632 = xor i8 %2631, 1
  store i8 %2632, i8* %47, align 1
  %2633 = xor i64 %2609, %2622
  %2634 = lshr i64 %2633, 4
  %2635 = trunc i64 %2634 to i8
  %2636 = and i8 %2635, 1
  store i8 %2636, i8* %48, align 1
  %2637 = icmp eq i64 %2622, 0
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %49, align 1
  %2639 = lshr i64 %2622, 63
  %2640 = trunc i64 %2639 to i8
  store i8 %2640, i8* %50, align 1
  %2641 = lshr i64 %2609, 63
  %2642 = xor i64 %2639, %2641
  %2643 = xor i64 %2639, %2621
  %2644 = add nuw nsw i64 %2642, %2643
  %2645 = icmp eq i64 %2644, 2
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %51, align 1
  %2647 = load i64, i64* %RBP.i, align 8
  %2648 = add i64 %2647, -44
  %2649 = add i64 %2535, 59
  store i64 %2649, i64* %3, align 8
  %2650 = inttoptr i64 %2648 to i32*
  %2651 = load i32, i32* %2650, align 4
  %2652 = sext i32 %2651 to i64
  store i64 %2652, i64* %RDX.i1021, align 8
  %2653 = shl nsw i64 %2652, 3
  %2654 = add i64 %2653, %2622
  %2655 = add i64 %2535, 64
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2654 to i64*
  %2657 = load i64, i64* %2656, align 8
  %2658 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %56, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2657, i64* %2658, align 1
  store double 0.000000e+00, double* %59, align 1
  %2659 = add i64 %2647, -24
  %2660 = add i64 %2535, 68
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i64*
  %2662 = load i64, i64* %2661, align 8
  store i64 %2662, i64* %RAX.i1011, align 8
  %2663 = add i64 %2647, -8
  %2664 = add i64 %2535, 71
  store i64 %2664, i64* %3, align 8
  %2665 = inttoptr i64 %2663 to i32*
  %2666 = load i32, i32* %2665, align 4
  %2667 = add i32 %2666, -3
  %2668 = zext i32 %2667 to i64
  store i64 %2668, i64* %RCX.i1018, align 8
  %2669 = icmp ult i32 %2666, 3
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %46, align 1
  %2671 = and i32 %2667, 255
  %2672 = tail call i32 @llvm.ctpop.i32(i32 %2671)
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  %2675 = xor i8 %2674, 1
  store i8 %2675, i8* %47, align 1
  %2676 = xor i32 %2666, %2667
  %2677 = lshr i32 %2676, 4
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  store i8 %2679, i8* %48, align 1
  %2680 = icmp eq i32 %2667, 0
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %49, align 1
  %2682 = lshr i32 %2667, 31
  %2683 = trunc i32 %2682 to i8
  store i8 %2683, i8* %50, align 1
  %2684 = lshr i32 %2666, 31
  %2685 = xor i32 %2682, %2684
  %2686 = add nuw nsw i32 %2685, %2684
  %2687 = icmp eq i32 %2686, 2
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %51, align 1
  %2689 = add i64 %2647, -40
  %2690 = add i64 %2535, 77
  store i64 %2690, i64* %3, align 8
  %2691 = inttoptr i64 %2689 to i32*
  %2692 = load i32, i32* %2691, align 4
  %2693 = sub i32 %2667, %2692
  %2694 = zext i32 %2693 to i64
  store i64 %2694, i64* %RCX.i1018, align 8
  %2695 = sext i32 %2693 to i64
  %2696 = shl nsw i64 %2695, 13
  store i64 %2696, i64* %RDX.i1021, align 8
  %2697 = lshr i64 %2695, 50
  %2698 = and i64 %2697, 1
  %2699 = add i64 %2696, %2662
  store i64 %2699, i64* %RAX.i1011, align 8
  %2700 = icmp ult i64 %2699, %2662
  %2701 = icmp ult i64 %2699, %2696
  %2702 = or i1 %2700, %2701
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %46, align 1
  %2704 = trunc i64 %2699 to i32
  %2705 = and i32 %2704, 255
  %2706 = tail call i32 @llvm.ctpop.i32(i32 %2705)
  %2707 = trunc i32 %2706 to i8
  %2708 = and i8 %2707, 1
  %2709 = xor i8 %2708, 1
  store i8 %2709, i8* %47, align 1
  %2710 = xor i64 %2662, %2699
  %2711 = lshr i64 %2710, 4
  %2712 = trunc i64 %2711 to i8
  %2713 = and i8 %2712, 1
  store i8 %2713, i8* %48, align 1
  %2714 = icmp eq i64 %2699, 0
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %49, align 1
  %2716 = lshr i64 %2699, 63
  %2717 = trunc i64 %2716 to i8
  store i8 %2717, i8* %50, align 1
  %2718 = lshr i64 %2662, 63
  %2719 = xor i64 %2716, %2718
  %2720 = xor i64 %2716, %2698
  %2721 = add nuw nsw i64 %2719, %2720
  %2722 = icmp eq i64 %2721, 2
  %2723 = zext i1 %2722 to i8
  store i8 %2723, i8* %51, align 1
  %2724 = load i64, i64* %RBP.i, align 8
  %2725 = add i64 %2724, -44
  %2726 = add i64 %2535, 91
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i32*
  %2728 = load i32, i32* %2727, align 4
  %2729 = sext i32 %2728 to i64
  store i64 %2729, i64* %RDX.i1021, align 8
  %2730 = shl nsw i64 %2729, 3
  %2731 = add i64 %2730, %2699
  %2732 = add i64 %2535, 96
  store i64 %2732, i64* %3, align 8
  %2733 = bitcast i64 %2657 to double
  %2734 = inttoptr i64 %2731 to double*
  %2735 = load double, double* %2734, align 8
  %2736 = fmul double %2733, %2735
  store double %2736, double* %57, align 1
  %2737 = load double, double* %53, align 1
  %2738 = fsub double %2737, %2736
  store double %2738, double* %53, align 1
  %2739 = add i64 %2724, -32
  %2740 = add i64 %2535, 104
  store i64 %2740, i64* %3, align 8
  %2741 = inttoptr i64 %2739 to i64*
  %2742 = load i64, i64* %2741, align 8
  store i64 %2742, i64* %RAX.i1011, align 8
  %2743 = add i64 %2724, -8
  %2744 = add i64 %2535, 107
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i32*
  %2746 = load i32, i32* %2745, align 4
  %2747 = add i32 %2746, -2
  %2748 = zext i32 %2747 to i64
  store i64 %2748, i64* %RCX.i1018, align 8
  %2749 = icmp ult i32 %2746, 2
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %46, align 1
  %2751 = and i32 %2747, 255
  %2752 = tail call i32 @llvm.ctpop.i32(i32 %2751)
  %2753 = trunc i32 %2752 to i8
  %2754 = and i8 %2753, 1
  %2755 = xor i8 %2754, 1
  store i8 %2755, i8* %47, align 1
  %2756 = xor i32 %2746, %2747
  %2757 = lshr i32 %2756, 4
  %2758 = trunc i32 %2757 to i8
  %2759 = and i8 %2758, 1
  store i8 %2759, i8* %48, align 1
  %2760 = icmp eq i32 %2747, 0
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %49, align 1
  %2762 = lshr i32 %2747, 31
  %2763 = trunc i32 %2762 to i8
  store i8 %2763, i8* %50, align 1
  %2764 = lshr i32 %2746, 31
  %2765 = xor i32 %2762, %2764
  %2766 = add nuw nsw i32 %2765, %2764
  %2767 = icmp eq i32 %2766, 2
  %2768 = zext i1 %2767 to i8
  store i8 %2768, i8* %51, align 1
  %2769 = add i64 %2724, -40
  %2770 = add i64 %2535, 113
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2769 to i32*
  %2772 = load i32, i32* %2771, align 4
  %2773 = sub i32 %2747, %2772
  %2774 = zext i32 %2773 to i64
  store i64 %2774, i64* %RCX.i1018, align 8
  %2775 = sext i32 %2773 to i64
  %2776 = shl nsw i64 %2775, 13
  store i64 %2776, i64* %RDX.i1021, align 8
  %2777 = lshr i64 %2775, 50
  %2778 = and i64 %2777, 1
  %2779 = add i64 %2776, %2742
  store i64 %2779, i64* %RAX.i1011, align 8
  %2780 = icmp ult i64 %2779, %2742
  %2781 = icmp ult i64 %2779, %2776
  %2782 = or i1 %2780, %2781
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %46, align 1
  %2784 = trunc i64 %2779 to i32
  %2785 = and i32 %2784, 255
  %2786 = tail call i32 @llvm.ctpop.i32(i32 %2785)
  %2787 = trunc i32 %2786 to i8
  %2788 = and i8 %2787, 1
  %2789 = xor i8 %2788, 1
  store i8 %2789, i8* %47, align 1
  %2790 = xor i64 %2742, %2779
  %2791 = lshr i64 %2790, 4
  %2792 = trunc i64 %2791 to i8
  %2793 = and i8 %2792, 1
  store i8 %2793, i8* %48, align 1
  %2794 = icmp eq i64 %2779, 0
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %49, align 1
  %2796 = lshr i64 %2779, 63
  %2797 = trunc i64 %2796 to i8
  store i8 %2797, i8* %50, align 1
  %2798 = lshr i64 %2742, 63
  %2799 = xor i64 %2796, %2798
  %2800 = xor i64 %2796, %2778
  %2801 = add nuw nsw i64 %2799, %2800
  %2802 = icmp eq i64 %2801, 2
  %2803 = zext i1 %2802 to i8
  store i8 %2803, i8* %51, align 1
  %2804 = load i64, i64* %RBP.i, align 8
  %2805 = add i64 %2804, -44
  %2806 = add i64 %2535, 127
  store i64 %2806, i64* %3, align 8
  %2807 = inttoptr i64 %2805 to i32*
  %2808 = load i32, i32* %2807, align 4
  %2809 = sext i32 %2808 to i64
  store i64 %2809, i64* %RDX.i1021, align 8
  %2810 = shl nsw i64 %2809, 3
  %2811 = add i64 %2810, %2779
  %2812 = add i64 %2535, 132
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2811 to double*
  %2814 = load double, double* %2813, align 8
  %2815 = fdiv double %2738, %2814
  store double %2815, double* %53, align 1
  %2816 = add i64 %2804, -16
  %2817 = add i64 %2535, 136
  store i64 %2817, i64* %3, align 8
  %2818 = inttoptr i64 %2816 to i64*
  %2819 = load i64, i64* %2818, align 8
  store i64 %2819, i64* %RAX.i1011, align 8
  %2820 = add i64 %2804, -8
  %2821 = add i64 %2535, 139
  store i64 %2821, i64* %3, align 8
  %2822 = inttoptr i64 %2820 to i32*
  %2823 = load i32, i32* %2822, align 4
  %2824 = add i32 %2823, -2
  %2825 = zext i32 %2824 to i64
  store i64 %2825, i64* %RCX.i1018, align 8
  %2826 = icmp ult i32 %2823, 2
  %2827 = zext i1 %2826 to i8
  store i8 %2827, i8* %46, align 1
  %2828 = and i32 %2824, 255
  %2829 = tail call i32 @llvm.ctpop.i32(i32 %2828)
  %2830 = trunc i32 %2829 to i8
  %2831 = and i8 %2830, 1
  %2832 = xor i8 %2831, 1
  store i8 %2832, i8* %47, align 1
  %2833 = xor i32 %2823, %2824
  %2834 = lshr i32 %2833, 4
  %2835 = trunc i32 %2834 to i8
  %2836 = and i8 %2835, 1
  store i8 %2836, i8* %48, align 1
  %2837 = icmp eq i32 %2824, 0
  %2838 = zext i1 %2837 to i8
  store i8 %2838, i8* %49, align 1
  %2839 = lshr i32 %2824, 31
  %2840 = trunc i32 %2839 to i8
  store i8 %2840, i8* %50, align 1
  %2841 = lshr i32 %2823, 31
  %2842 = xor i32 %2839, %2841
  %2843 = add nuw nsw i32 %2842, %2841
  %2844 = icmp eq i32 %2843, 2
  %2845 = zext i1 %2844 to i8
  store i8 %2845, i8* %51, align 1
  %2846 = add i64 %2804, -40
  %2847 = add i64 %2535, 145
  store i64 %2847, i64* %3, align 8
  %2848 = inttoptr i64 %2846 to i32*
  %2849 = load i32, i32* %2848, align 4
  %2850 = sub i32 %2824, %2849
  %2851 = zext i32 %2850 to i64
  store i64 %2851, i64* %RCX.i1018, align 8
  %2852 = sext i32 %2850 to i64
  %2853 = shl nsw i64 %2852, 13
  store i64 %2853, i64* %RDX.i1021, align 8
  %2854 = lshr i64 %2852, 50
  %2855 = and i64 %2854, 1
  %2856 = add i64 %2853, %2819
  store i64 %2856, i64* %RAX.i1011, align 8
  %2857 = icmp ult i64 %2856, %2819
  %2858 = icmp ult i64 %2856, %2853
  %2859 = or i1 %2857, %2858
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %46, align 1
  %2861 = trunc i64 %2856 to i32
  %2862 = and i32 %2861, 255
  %2863 = tail call i32 @llvm.ctpop.i32(i32 %2862)
  %2864 = trunc i32 %2863 to i8
  %2865 = and i8 %2864, 1
  %2866 = xor i8 %2865, 1
  store i8 %2866, i8* %47, align 1
  %2867 = xor i64 %2819, %2856
  %2868 = lshr i64 %2867, 4
  %2869 = trunc i64 %2868 to i8
  %2870 = and i8 %2869, 1
  store i8 %2870, i8* %48, align 1
  %2871 = icmp eq i64 %2856, 0
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %49, align 1
  %2873 = lshr i64 %2856, 63
  %2874 = trunc i64 %2873 to i8
  store i8 %2874, i8* %50, align 1
  %2875 = lshr i64 %2819, 63
  %2876 = xor i64 %2873, %2875
  %2877 = xor i64 %2873, %2855
  %2878 = add nuw nsw i64 %2876, %2877
  %2879 = icmp eq i64 %2878, 2
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %51, align 1
  %2881 = load i64, i64* %RBP.i, align 8
  %2882 = add i64 %2881, -44
  %2883 = add i64 %2535, 159
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2882 to i32*
  %2885 = load i32, i32* %2884, align 4
  %2886 = sext i32 %2885 to i64
  store i64 %2886, i64* %RDX.i1021, align 8
  %2887 = shl nsw i64 %2886, 3
  %2888 = add i64 %2887, %2856
  %2889 = add i64 %2535, 164
  store i64 %2889, i64* %3, align 8
  %2890 = bitcast double %2815 to i64
  %2891 = inttoptr i64 %2888 to i64*
  store i64 %2890, i64* %2891, align 8
  %2892 = load i64, i64* %RBP.i, align 8
  %2893 = add i64 %2892, -44
  %2894 = load i64, i64* %3, align 8
  %2895 = add i64 %2894, 3
  store i64 %2895, i64* %3, align 8
  %2896 = inttoptr i64 %2893 to i32*
  %2897 = load i32, i32* %2896, align 4
  %2898 = add i32 %2897, 1
  %2899 = zext i32 %2898 to i64
  store i64 %2899, i64* %RAX.i1011, align 8
  %2900 = icmp eq i32 %2897, -1
  %2901 = icmp eq i32 %2898, 0
  %2902 = or i1 %2900, %2901
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %46, align 1
  %2904 = and i32 %2898, 255
  %2905 = tail call i32 @llvm.ctpop.i32(i32 %2904)
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  %2908 = xor i8 %2907, 1
  store i8 %2908, i8* %47, align 1
  %2909 = xor i32 %2897, %2898
  %2910 = lshr i32 %2909, 4
  %2911 = trunc i32 %2910 to i8
  %2912 = and i8 %2911, 1
  store i8 %2912, i8* %48, align 1
  %2913 = zext i1 %2901 to i8
  store i8 %2913, i8* %49, align 1
  %2914 = lshr i32 %2898, 31
  %2915 = trunc i32 %2914 to i8
  store i8 %2915, i8* %50, align 1
  %2916 = lshr i32 %2897, 31
  %2917 = xor i32 %2914, %2916
  %2918 = add nuw nsw i32 %2917, %2914
  %2919 = icmp eq i32 %2918, 2
  %2920 = zext i1 %2919 to i8
  store i8 %2920, i8* %51, align 1
  %2921 = add i64 %2894, 9
  store i64 %2921, i64* %3, align 8
  store i32 %2898, i32* %2896, align 4
  %2922 = load i64, i64* %3, align 8
  %2923 = add i64 %2922, -185
  store i64 %2923, i64* %3, align 8
  br label %block_.L_401057

block_.L_401115:                                  ; preds = %block_.L_401057
  %2924 = add i64 %2499, -40
  %2925 = add i64 %2535, 8
  store i64 %2925, i64* %3, align 8
  %2926 = inttoptr i64 %2924 to i32*
  %2927 = load i32, i32* %2926, align 4
  %2928 = add i32 %2927, 1
  %2929 = zext i32 %2928 to i64
  store i64 %2929, i64* %RAX.i1011, align 8
  %2930 = icmp eq i32 %2927, -1
  %2931 = icmp eq i32 %2928, 0
  %2932 = or i1 %2930, %2931
  %2933 = zext i1 %2932 to i8
  store i8 %2933, i8* %46, align 1
  %2934 = and i32 %2928, 255
  %2935 = tail call i32 @llvm.ctpop.i32(i32 %2934)
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  %2938 = xor i8 %2937, 1
  store i8 %2938, i8* %47, align 1
  %2939 = xor i32 %2927, %2928
  %2940 = lshr i32 %2939, 4
  %2941 = trunc i32 %2940 to i8
  %2942 = and i8 %2941, 1
  store i8 %2942, i8* %48, align 1
  %2943 = zext i1 %2931 to i8
  store i8 %2943, i8* %49, align 1
  %2944 = lshr i32 %2928, 31
  %2945 = trunc i32 %2944 to i8
  store i8 %2945, i8* %50, align 1
  %2946 = lshr i32 %2927, 31
  %2947 = xor i32 %2944, %2946
  %2948 = add nuw nsw i32 %2947, %2944
  %2949 = icmp eq i32 %2948, 2
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %51, align 1
  %2951 = add i64 %2535, 14
  store i64 %2951, i64* %3, align 8
  store i32 %2928, i32* %2926, align 4
  %2952 = load i64, i64* %3, align 8
  %2953 = add i64 %2952, -228
  store i64 %2953, i64* %3, align 8
  br label %block_.L_40103f

block_.L_401128:                                  ; preds = %block_.L_40103f
  %2954 = add i64 %2456, -36
  %2955 = add i64 %2494, 8
  store i64 %2955, i64* %3, align 8
  %2956 = inttoptr i64 %2954 to i32*
  %2957 = load i32, i32* %2956, align 4
  %2958 = add i32 %2957, 1
  %2959 = zext i32 %2958 to i64
  store i64 %2959, i64* %RAX.i1011, align 8
  %2960 = icmp eq i32 %2957, -1
  %2961 = icmp eq i32 %2958, 0
  %2962 = or i1 %2960, %2961
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %46, align 1
  %2964 = and i32 %2958, 255
  %2965 = tail call i32 @llvm.ctpop.i32(i32 %2964)
  %2966 = trunc i32 %2965 to i8
  %2967 = and i8 %2966, 1
  %2968 = xor i8 %2967, 1
  store i8 %2968, i8* %47, align 1
  %2969 = xor i32 %2957, %2958
  %2970 = lshr i32 %2969, 4
  %2971 = trunc i32 %2970 to i8
  %2972 = and i8 %2971, 1
  store i8 %2972, i8* %48, align 1
  %2973 = zext i1 %2961 to i8
  store i8 %2973, i8* %49, align 1
  %2974 = lshr i32 %2958, 31
  %2975 = trunc i32 %2974 to i8
  store i8 %2975, i8* %50, align 1
  %2976 = lshr i32 %2957, 31
  %2977 = xor i32 %2974, %2976
  %2978 = add nuw nsw i32 %2977, %2974
  %2979 = icmp eq i32 %2978, 2
  %2980 = zext i1 %2979 to i8
  store i8 %2980, i8* %51, align 1
  %2981 = add i64 %2494, 14
  store i64 %2981, i64* %3, align 8
  store i32 %2958, i32* %2956, align 4
  %2982 = load i64, i64* %3, align 8
  %2983 = add i64 %2982, -1417
  store i64 %2983, i64* %3, align 8
  br label %block_.L_400bad

block_.L_40113b:                                  ; preds = %block_.L_400bad
  %2984 = add i64 %97, 1
  store i64 %2984, i64* %3, align 8
  %2985 = load i64, i64* %6, align 8
  %2986 = add i64 %2985, 8
  %2987 = inttoptr i64 %2985 to i64*
  %2988 = load i64, i64* %2987, align 8
  store i64 %2988, i64* %RBP.i, align 8
  store i64 %2986, i64* %6, align 8
  %2989 = add i64 %97, 2
  store i64 %2989, i64* %3, align 8
  %2990 = inttoptr i64 %2986 to i64*
  %2991 = load i64, i64* %2990, align 8
  store i64 %2991, i64* %3, align 8
  %2992 = add i64 %2985, 16
  store i64 %2992, i64* %6, align 8
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
