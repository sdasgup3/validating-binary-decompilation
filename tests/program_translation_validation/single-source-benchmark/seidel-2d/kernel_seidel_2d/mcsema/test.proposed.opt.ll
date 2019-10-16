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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @kernel_seidel_2d(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %41 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %43 = bitcast i64* %42 to double*
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %45 = bitcast %union.VectorReg* %44 to double*
  %46 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %44, i64 0, i32 0, i32 0, i32 0, i64 0
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %48 = bitcast i64* %47 to double*
  %49 = bitcast [32 x %union.VectorReg]* %40 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400ae5

block_.L_400ae5:                                  ; preds = %block_.L_400c9d, %entry
  %50 = phi i64 [ %902, %block_.L_400c9d ], [ %.pre, %entry ]
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -20
  %53 = add i64 %50, 3
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %52 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %RAX.i307, align 8
  %57 = add i64 %51, -4
  %58 = add i64 %50, 6
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %60, -1
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %RCX.i304, align 8
  %63 = lshr i32 %61, 31
  %64 = sub i32 %55, %61
  %65 = icmp ult i32 %55, %61
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %34, align 1
  %67 = and i32 %64, 255
  %68 = tail call i32 @llvm.ctpop.i32(i32 %67)
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  store i8 %71, i8* %35, align 1
  %72 = xor i32 %61, %55
  %73 = xor i32 %72, %64
  %74 = lshr i32 %73, 4
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  store i8 %76, i8* %36, align 1
  %77 = icmp eq i32 %64, 0
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %37, align 1
  %79 = lshr i32 %64, 31
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %38, align 1
  %81 = lshr i32 %55, 31
  %82 = xor i32 %63, %81
  %83 = xor i32 %79, %81
  %84 = add nuw nsw i32 %83, %82
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %39, align 1
  %87 = icmp ne i8 %80, 0
  %88 = xor i1 %87, %85
  %.demorgan = or i1 %77, %88
  %.v12 = select i1 %.demorgan, i64 17, i64 459
  %89 = add i64 %50, %.v12
  store i64 %89, i64* %3, align 8
  br i1 %.demorgan, label %block_400af6, label %block_.L_400cb0

block_400af6:                                     ; preds = %block_.L_400ae5
  %90 = add i64 %51, -24
  %91 = add i64 %89, 7
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %90 to i32*
  store i32 1, i32* %92, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_400afd

block_.L_400afd:                                  ; preds = %block_.L_400c8a, %block_400af6
  %93 = phi i64 [ %872, %block_.L_400c8a ], [ %.pre7, %block_400af6 ]
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -24
  %96 = add i64 %93, 3
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RAX.i307, align 8
  %100 = add i64 %94, -8
  %101 = add i64 %93, 6
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %103, -2
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RCX.i304, align 8
  %106 = lshr i32 %104, 31
  %107 = sub i32 %98, %104
  %108 = icmp ult i32 %98, %104
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %34, align 1
  %110 = and i32 %107, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %35, align 1
  %115 = xor i32 %104, %98
  %116 = xor i32 %115, %107
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %36, align 1
  %120 = icmp eq i32 %107, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %37, align 1
  %122 = lshr i32 %107, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %38, align 1
  %124 = lshr i32 %98, 31
  %125 = xor i32 %106, %124
  %126 = xor i32 %122, %124
  %127 = add nuw nsw i32 %126, %125
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %39, align 1
  %130 = icmp ne i8 %123, 0
  %131 = xor i1 %130, %128
  %.demorgan9 = or i1 %120, %131
  %.v11 = select i1 %.demorgan9, i64 17, i64 416
  %132 = add i64 %93, %.v11
  store i64 %132, i64* %3, align 8
  br i1 %.demorgan9, label %block_400b0e, label %block_.L_400c9d

block_400b0e:                                     ; preds = %block_.L_400afd
  %133 = add i64 %94, -28
  %134 = add i64 %132, 7
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i32*
  store i32 1, i32* %135, align 4
  %.pre8 = load i64, i64* %3, align 8
  br label %block_.L_400b15

block_.L_400b15:                                  ; preds = %block_400b26, %block_400b0e
  %136 = phi i64 [ %842, %block_400b26 ], [ %.pre8, %block_400b0e ]
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -28
  %139 = add i64 %136, 3
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RAX.i307, align 8
  %143 = add i64 %137, -8
  %144 = add i64 %136, 6
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = add i32 %146, -2
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RCX.i304, align 8
  %149 = lshr i32 %147, 31
  %150 = sub i32 %141, %147
  %151 = icmp ult i32 %141, %147
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %34, align 1
  %153 = and i32 %150, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %35, align 1
  %158 = xor i32 %147, %141
  %159 = xor i32 %158, %150
  %160 = lshr i32 %159, 4
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %36, align 1
  %163 = icmp eq i32 %150, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %37, align 1
  %165 = lshr i32 %150, 31
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %38, align 1
  %167 = lshr i32 %141, 31
  %168 = xor i32 %149, %167
  %169 = xor i32 %165, %167
  %170 = add nuw nsw i32 %169, %168
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %39, align 1
  %173 = icmp ne i8 %166, 0
  %174 = xor i1 %173, %171
  %.demorgan10 = or i1 %163, %174
  %.v = select i1 %.demorgan10, i64 17, i64 373
  %175 = add i64 %136, %.v
  store i64 %175, i64* %3, align 8
  br i1 %.demorgan10, label %block_400b26, label %block_.L_400c8a

block_400b26:                                     ; preds = %block_.L_400b15
  %176 = add i64 %175, 1498
  %177 = add i64 %175, 8
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %41, align 1
  store double 0.000000e+00, double* %43, align 1
  %180 = add i64 %137, -16
  %181 = add i64 %175, 12
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RAX.i307, align 8
  %184 = add i64 %137, -24
  %185 = add i64 %175, 15
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = add i32 %187, -1
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RCX.i304, align 8
  %190 = sext i32 %188 to i64
  %191 = mul nsw i64 %190, 8000
  store i64 %191, i64* %RDX.i312, align 8
  %192 = lshr i64 %191, 63
  %193 = add i64 %191, %183
  store i64 %193, i64* %RAX.i307, align 8
  %194 = icmp ult i64 %193, %183
  %195 = icmp ult i64 %193, %191
  %196 = or i1 %194, %195
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %34, align 1
  %198 = trunc i64 %193 to i32
  %199 = and i32 %198, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %35, align 1
  %204 = xor i64 %183, %193
  %205 = lshr i64 %204, 4
  %206 = trunc i64 %205 to i8
  %207 = and i8 %206, 1
  store i8 %207, i8* %36, align 1
  %208 = icmp eq i64 %193, 0
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %37, align 1
  %210 = lshr i64 %193, 63
  %211 = trunc i64 %210 to i8
  store i8 %211, i8* %38, align 1
  %212 = lshr i64 %183, 63
  %213 = xor i64 %210, %212
  %214 = xor i64 %210, %192
  %215 = add nuw nsw i64 %213, %214
  %216 = icmp eq i64 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %39, align 1
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -28
  %220 = add i64 %175, 34
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = add i32 %222, -1
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RCX.i304, align 8
  %225 = icmp eq i32 %222, 0
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %34, align 1
  %227 = and i32 %223, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227)
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %35, align 1
  %232 = xor i32 %223, %222
  %233 = lshr i32 %232, 4
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  store i8 %235, i8* %36, align 1
  %236 = icmp eq i32 %223, 0
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %37, align 1
  %238 = lshr i32 %223, 31
  %239 = trunc i32 %238 to i8
  store i8 %239, i8* %38, align 1
  %240 = lshr i32 %222, 31
  %241 = xor i32 %238, %240
  %242 = add nuw nsw i32 %241, %240
  %243 = icmp eq i32 %242, 2
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %39, align 1
  %245 = sext i32 %223 to i64
  store i64 %245, i64* %RDX.i312, align 8
  %246 = shl nsw i64 %245, 3
  %247 = add i64 %193, %246
  %248 = add i64 %175, 45
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %46, align 1
  store double 0.000000e+00, double* %48, align 1
  %251 = add i64 %218, -16
  %252 = add i64 %175, 49
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %RAX.i307, align 8
  %255 = add i64 %218, -24
  %256 = add i64 %175, 52
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = add i32 %258, -1
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %RCX.i304, align 8
  %261 = sext i32 %259 to i64
  %262 = mul nsw i64 %261, 8000
  store i64 %262, i64* %RDX.i312, align 8
  %263 = lshr i64 %262, 63
  %264 = add i64 %262, %254
  store i64 %264, i64* %RAX.i307, align 8
  %265 = icmp ult i64 %264, %254
  %266 = icmp ult i64 %264, %262
  %267 = or i1 %265, %266
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %34, align 1
  %269 = trunc i64 %264 to i32
  %270 = and i32 %269, 255
  %271 = tail call i32 @llvm.ctpop.i32(i32 %270)
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  store i8 %274, i8* %35, align 1
  %275 = xor i64 %254, %264
  %276 = lshr i64 %275, 4
  %277 = trunc i64 %276 to i8
  %278 = and i8 %277, 1
  store i8 %278, i8* %36, align 1
  %279 = icmp eq i64 %264, 0
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %37, align 1
  %281 = lshr i64 %264, 63
  %282 = trunc i64 %281 to i8
  store i8 %282, i8* %38, align 1
  %283 = lshr i64 %254, 63
  %284 = xor i64 %281, %283
  %285 = xor i64 %281, %263
  %286 = add nuw nsw i64 %284, %285
  %287 = icmp eq i64 %286, 2
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %39, align 1
  %289 = load i64, i64* %RBP.i, align 8
  %290 = add i64 %289, -28
  %291 = add i64 %175, 72
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  store i64 %294, i64* %RDX.i312, align 8
  %295 = shl nsw i64 %294, 3
  %296 = add i64 %295, %264
  %297 = add i64 %175, 77
  store i64 %297, i64* %3, align 8
  %298 = load double, double* %45, align 1
  %299 = inttoptr i64 %296 to double*
  %300 = load double, double* %299, align 8
  %301 = fadd double %298, %300
  store double %301, double* %45, align 1
  %302 = add i64 %289, -16
  %303 = add i64 %175, 81
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i64*
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %RAX.i307, align 8
  %306 = add i64 %289, -24
  %307 = add i64 %175, 84
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = add i32 %309, -1
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RCX.i304, align 8
  %312 = sext i32 %310 to i64
  %313 = mul nsw i64 %312, 8000
  store i64 %313, i64* %RDX.i312, align 8
  %314 = lshr i64 %313, 63
  %315 = add i64 %313, %305
  store i64 %315, i64* %RAX.i307, align 8
  %316 = icmp ult i64 %315, %305
  %317 = icmp ult i64 %315, %313
  %318 = or i1 %316, %317
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %34, align 1
  %320 = trunc i64 %315 to i32
  %321 = and i32 %320, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321)
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %35, align 1
  %326 = xor i64 %305, %315
  %327 = lshr i64 %326, 4
  %328 = trunc i64 %327 to i8
  %329 = and i8 %328, 1
  store i8 %329, i8* %36, align 1
  %330 = icmp eq i64 %315, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %37, align 1
  %332 = lshr i64 %315, 63
  %333 = trunc i64 %332 to i8
  store i8 %333, i8* %38, align 1
  %334 = lshr i64 %305, 63
  %335 = xor i64 %332, %334
  %336 = xor i64 %332, %314
  %337 = add nuw nsw i64 %335, %336
  %338 = icmp eq i64 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %39, align 1
  %340 = load i64, i64* %RBP.i, align 8
  %341 = add i64 %340, -28
  %342 = add i64 %175, 103
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = add i32 %344, 1
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RCX.i304, align 8
  %347 = icmp eq i32 %344, -1
  %348 = icmp eq i32 %345, 0
  %349 = or i1 %347, %348
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %34, align 1
  %351 = and i32 %345, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %35, align 1
  %356 = xor i32 %345, %344
  %357 = lshr i32 %356, 4
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %36, align 1
  %360 = zext i1 %348 to i8
  store i8 %360, i8* %37, align 1
  %361 = lshr i32 %345, 31
  %362 = trunc i32 %361 to i8
  store i8 %362, i8* %38, align 1
  %363 = lshr i32 %344, 31
  %364 = xor i32 %361, %363
  %365 = add nuw nsw i32 %364, %361
  %366 = icmp eq i32 %365, 2
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %39, align 1
  %368 = sext i32 %345 to i64
  store i64 %368, i64* %RDX.i312, align 8
  %369 = shl nsw i64 %368, 3
  %370 = add i64 %315, %369
  %371 = add i64 %175, 114
  store i64 %371, i64* %3, align 8
  %372 = load double, double* %45, align 1
  %373 = inttoptr i64 %370 to double*
  %374 = load double, double* %373, align 8
  %375 = fadd double %372, %374
  store double %375, double* %45, align 1
  %376 = add i64 %340, -16
  %377 = add i64 %175, 118
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RAX.i307, align 8
  %380 = add i64 %340, -24
  %381 = add i64 %175, 122
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = sext i32 %383 to i64
  %385 = mul nsw i64 %384, 8000
  store i64 %385, i64* %RDX.i312, align 8
  %386 = lshr i64 %385, 63
  %387 = add i64 %385, %379
  store i64 %387, i64* %RAX.i307, align 8
  %388 = icmp ult i64 %387, %379
  %389 = icmp ult i64 %387, %385
  %390 = or i1 %388, %389
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %34, align 1
  %392 = trunc i64 %387 to i32
  %393 = and i32 %392, 255
  %394 = tail call i32 @llvm.ctpop.i32(i32 %393)
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  %397 = xor i8 %396, 1
  store i8 %397, i8* %35, align 1
  %398 = xor i64 %379, %387
  %399 = lshr i64 %398, 4
  %400 = trunc i64 %399 to i8
  %401 = and i8 %400, 1
  store i8 %401, i8* %36, align 1
  %402 = icmp eq i64 %387, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %37, align 1
  %404 = lshr i64 %387, 63
  %405 = trunc i64 %404 to i8
  store i8 %405, i8* %38, align 1
  %406 = lshr i64 %379, 63
  %407 = xor i64 %404, %406
  %408 = xor i64 %404, %386
  %409 = add nuw nsw i64 %407, %408
  %410 = icmp eq i64 %409, 2
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %39, align 1
  %412 = load i64, i64* %RBP.i, align 8
  %413 = add i64 %412, -28
  %414 = add i64 %175, 135
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = add i32 %416, -1
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RCX.i304, align 8
  %419 = icmp eq i32 %416, 0
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %34, align 1
  %421 = and i32 %417, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %35, align 1
  %426 = xor i32 %417, %416
  %427 = lshr i32 %426, 4
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  store i8 %429, i8* %36, align 1
  %430 = icmp eq i32 %417, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %37, align 1
  %432 = lshr i32 %417, 31
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %38, align 1
  %434 = lshr i32 %416, 31
  %435 = xor i32 %432, %434
  %436 = add nuw nsw i32 %435, %434
  %437 = icmp eq i32 %436, 2
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %39, align 1
  %439 = sext i32 %417 to i64
  store i64 %439, i64* %RDX.i312, align 8
  %440 = shl nsw i64 %439, 3
  %441 = add i64 %387, %440
  %442 = add i64 %175, 146
  store i64 %442, i64* %3, align 8
  %443 = load double, double* %45, align 1
  %444 = inttoptr i64 %441 to double*
  %445 = load double, double* %444, align 8
  %446 = fadd double %443, %445
  store double %446, double* %45, align 1
  %447 = add i64 %412, -16
  %448 = add i64 %175, 150
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i64*
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %RAX.i307, align 8
  %451 = add i64 %412, -24
  %452 = add i64 %175, 154
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = sext i32 %454 to i64
  %456 = mul nsw i64 %455, 8000
  store i64 %456, i64* %RDX.i312, align 8
  %457 = lshr i64 %456, 63
  %458 = add i64 %456, %450
  store i64 %458, i64* %RAX.i307, align 8
  %459 = icmp ult i64 %458, %450
  %460 = icmp ult i64 %458, %456
  %461 = or i1 %459, %460
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %34, align 1
  %463 = trunc i64 %458 to i32
  %464 = and i32 %463, 255
  %465 = tail call i32 @llvm.ctpop.i32(i32 %464)
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %35, align 1
  %469 = xor i64 %450, %458
  %470 = lshr i64 %469, 4
  %471 = trunc i64 %470 to i8
  %472 = and i8 %471, 1
  store i8 %472, i8* %36, align 1
  %473 = icmp eq i64 %458, 0
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %37, align 1
  %475 = lshr i64 %458, 63
  %476 = trunc i64 %475 to i8
  store i8 %476, i8* %38, align 1
  %477 = lshr i64 %450, 63
  %478 = xor i64 %475, %477
  %479 = xor i64 %475, %457
  %480 = add nuw nsw i64 %478, %479
  %481 = icmp eq i64 %480, 2
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %39, align 1
  %483 = load i64, i64* %RBP.i, align 8
  %484 = add i64 %483, -28
  %485 = add i64 %175, 168
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = sext i32 %487 to i64
  store i64 %488, i64* %RDX.i312, align 8
  %489 = shl nsw i64 %488, 3
  %490 = add i64 %489, %458
  %491 = add i64 %175, 173
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to double*
  %493 = load double, double* %492, align 8
  %494 = fadd double %446, %493
  store double %494, double* %45, align 1
  %495 = add i64 %483, -16
  %496 = add i64 %175, 177
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i64*
  %498 = load i64, i64* %497, align 8
  store i64 %498, i64* %RAX.i307, align 8
  %499 = add i64 %483, -24
  %500 = add i64 %175, 181
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  %502 = load i32, i32* %501, align 4
  %503 = sext i32 %502 to i64
  %504 = mul nsw i64 %503, 8000
  store i64 %504, i64* %RDX.i312, align 8
  %505 = lshr i64 %504, 63
  %506 = add i64 %504, %498
  store i64 %506, i64* %RAX.i307, align 8
  %507 = icmp ult i64 %506, %498
  %508 = icmp ult i64 %506, %504
  %509 = or i1 %507, %508
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %34, align 1
  %511 = trunc i64 %506 to i32
  %512 = and i32 %511, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %35, align 1
  %517 = xor i64 %498, %506
  %518 = lshr i64 %517, 4
  %519 = trunc i64 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %36, align 1
  %521 = icmp eq i64 %506, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %37, align 1
  %523 = lshr i64 %506, 63
  %524 = trunc i64 %523 to i8
  store i8 %524, i8* %38, align 1
  %525 = lshr i64 %498, 63
  %526 = xor i64 %523, %525
  %527 = xor i64 %523, %505
  %528 = add nuw nsw i64 %526, %527
  %529 = icmp eq i64 %528, 2
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %39, align 1
  %531 = add i64 %175, 194
  store i64 %531, i64* %3, align 8
  %532 = load i32, i32* %486, align 4
  %533 = add i32 %532, 1
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RCX.i304, align 8
  %535 = icmp eq i32 %532, -1
  %536 = icmp eq i32 %533, 0
  %537 = or i1 %535, %536
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %34, align 1
  %539 = and i32 %533, 255
  %540 = tail call i32 @llvm.ctpop.i32(i32 %539)
  %541 = trunc i32 %540 to i8
  %542 = and i8 %541, 1
  %543 = xor i8 %542, 1
  store i8 %543, i8* %35, align 1
  %544 = xor i32 %533, %532
  %545 = lshr i32 %544, 4
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %36, align 1
  %548 = zext i1 %536 to i8
  store i8 %548, i8* %37, align 1
  %549 = lshr i32 %533, 31
  %550 = trunc i32 %549 to i8
  store i8 %550, i8* %38, align 1
  %551 = lshr i32 %532, 31
  %552 = xor i32 %549, %551
  %553 = add nuw nsw i32 %552, %549
  %554 = icmp eq i32 %553, 2
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %39, align 1
  %556 = sext i32 %533 to i64
  store i64 %556, i64* %RDX.i312, align 8
  %557 = shl nsw i64 %556, 3
  %558 = add i64 %506, %557
  %559 = add i64 %175, 205
  store i64 %559, i64* %3, align 8
  %560 = load double, double* %45, align 1
  %561 = inttoptr i64 %558 to double*
  %562 = load double, double* %561, align 8
  %563 = fadd double %560, %562
  store double %563, double* %45, align 1
  %564 = load i64, i64* %RBP.i, align 8
  %565 = add i64 %564, -16
  %566 = add i64 %175, 209
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i64*
  %568 = load i64, i64* %567, align 8
  store i64 %568, i64* %RAX.i307, align 8
  %569 = add i64 %564, -24
  %570 = add i64 %175, 212
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = add i32 %572, 1
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RCX.i304, align 8
  %575 = sext i32 %573 to i64
  %576 = mul nsw i64 %575, 8000
  store i64 %576, i64* %RDX.i312, align 8
  %577 = lshr i64 %576, 63
  %578 = add i64 %576, %568
  store i64 %578, i64* %RAX.i307, align 8
  %579 = icmp ult i64 %578, %568
  %580 = icmp ult i64 %578, %576
  %581 = or i1 %579, %580
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %34, align 1
  %583 = trunc i64 %578 to i32
  %584 = and i32 %583, 255
  %585 = tail call i32 @llvm.ctpop.i32(i32 %584)
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  %588 = xor i8 %587, 1
  store i8 %588, i8* %35, align 1
  %589 = xor i64 %568, %578
  %590 = lshr i64 %589, 4
  %591 = trunc i64 %590 to i8
  %592 = and i8 %591, 1
  store i8 %592, i8* %36, align 1
  %593 = icmp eq i64 %578, 0
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %37, align 1
  %595 = lshr i64 %578, 63
  %596 = trunc i64 %595 to i8
  store i8 %596, i8* %38, align 1
  %597 = lshr i64 %568, 63
  %598 = xor i64 %595, %597
  %599 = xor i64 %595, %577
  %600 = add nuw nsw i64 %598, %599
  %601 = icmp eq i64 %600, 2
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %39, align 1
  %603 = load i64, i64* %RBP.i, align 8
  %604 = add i64 %603, -28
  %605 = add i64 %175, 231
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i32*
  %607 = load i32, i32* %606, align 4
  %608 = add i32 %607, -1
  %609 = zext i32 %608 to i64
  store i64 %609, i64* %RCX.i304, align 8
  %610 = icmp eq i32 %607, 0
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %34, align 1
  %612 = and i32 %608, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %35, align 1
  %617 = xor i32 %608, %607
  %618 = lshr i32 %617, 4
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  store i8 %620, i8* %36, align 1
  %621 = icmp eq i32 %608, 0
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %37, align 1
  %623 = lshr i32 %608, 31
  %624 = trunc i32 %623 to i8
  store i8 %624, i8* %38, align 1
  %625 = lshr i32 %607, 31
  %626 = xor i32 %623, %625
  %627 = add nuw nsw i32 %626, %625
  %628 = icmp eq i32 %627, 2
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %39, align 1
  %630 = sext i32 %608 to i64
  store i64 %630, i64* %RDX.i312, align 8
  %631 = shl nsw i64 %630, 3
  %632 = add i64 %578, %631
  %633 = add i64 %175, 242
  store i64 %633, i64* %3, align 8
  %634 = load double, double* %45, align 1
  %635 = inttoptr i64 %632 to double*
  %636 = load double, double* %635, align 8
  %637 = fadd double %634, %636
  store double %637, double* %45, align 1
  %638 = add i64 %603, -16
  %639 = add i64 %175, 246
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %641, i64* %RAX.i307, align 8
  %642 = add i64 %603, -24
  %643 = add i64 %175, 249
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = add i32 %645, 1
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RCX.i304, align 8
  %648 = sext i32 %646 to i64
  %649 = mul nsw i64 %648, 8000
  store i64 %649, i64* %RDX.i312, align 8
  %650 = lshr i64 %649, 63
  %651 = add i64 %649, %641
  store i64 %651, i64* %RAX.i307, align 8
  %652 = icmp ult i64 %651, %641
  %653 = icmp ult i64 %651, %649
  %654 = or i1 %652, %653
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %34, align 1
  %656 = trunc i64 %651 to i32
  %657 = and i32 %656, 255
  %658 = tail call i32 @llvm.ctpop.i32(i32 %657)
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  store i8 %661, i8* %35, align 1
  %662 = xor i64 %641, %651
  %663 = lshr i64 %662, 4
  %664 = trunc i64 %663 to i8
  %665 = and i8 %664, 1
  store i8 %665, i8* %36, align 1
  %666 = icmp eq i64 %651, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %37, align 1
  %668 = lshr i64 %651, 63
  %669 = trunc i64 %668 to i8
  store i8 %669, i8* %38, align 1
  %670 = lshr i64 %641, 63
  %671 = xor i64 %668, %670
  %672 = xor i64 %668, %650
  %673 = add nuw nsw i64 %671, %672
  %674 = icmp eq i64 %673, 2
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %39, align 1
  %676 = load i64, i64* %RBP.i, align 8
  %677 = add i64 %676, -28
  %678 = add i64 %175, 269
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i32*
  %680 = load i32, i32* %679, align 4
  %681 = sext i32 %680 to i64
  store i64 %681, i64* %RDX.i312, align 8
  %682 = shl nsw i64 %681, 3
  %683 = add i64 %682, %651
  %684 = add i64 %175, 274
  store i64 %684, i64* %3, align 8
  %685 = load double, double* %45, align 1
  %686 = inttoptr i64 %683 to double*
  %687 = load double, double* %686, align 8
  %688 = fadd double %685, %687
  store double %688, double* %45, align 1
  %689 = add i64 %676, -16
  %690 = add i64 %175, 278
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i64*
  %692 = load i64, i64* %691, align 8
  store i64 %692, i64* %RAX.i307, align 8
  %693 = add i64 %676, -24
  %694 = add i64 %175, 281
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = add i32 %696, 1
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RCX.i304, align 8
  %699 = sext i32 %697 to i64
  %700 = mul nsw i64 %699, 8000
  store i64 %700, i64* %RDX.i312, align 8
  %701 = lshr i64 %700, 63
  %702 = add i64 %700, %692
  store i64 %702, i64* %RAX.i307, align 8
  %703 = icmp ult i64 %702, %692
  %704 = icmp ult i64 %702, %700
  %705 = or i1 %703, %704
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %34, align 1
  %707 = trunc i64 %702 to i32
  %708 = and i32 %707, 255
  %709 = tail call i32 @llvm.ctpop.i32(i32 %708)
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  store i8 %712, i8* %35, align 1
  %713 = xor i64 %692, %702
  %714 = lshr i64 %713, 4
  %715 = trunc i64 %714 to i8
  %716 = and i8 %715, 1
  store i8 %716, i8* %36, align 1
  %717 = icmp eq i64 %702, 0
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %37, align 1
  %719 = lshr i64 %702, 63
  %720 = trunc i64 %719 to i8
  store i8 %720, i8* %38, align 1
  %721 = lshr i64 %692, 63
  %722 = xor i64 %719, %721
  %723 = xor i64 %719, %701
  %724 = add nuw nsw i64 %722, %723
  %725 = icmp eq i64 %724, 2
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %39, align 1
  %727 = load i64, i64* %RBP.i, align 8
  %728 = add i64 %727, -28
  %729 = add i64 %175, 300
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = add i32 %731, 1
  %733 = zext i32 %732 to i64
  store i64 %733, i64* %RCX.i304, align 8
  %734 = icmp eq i32 %731, -1
  %735 = icmp eq i32 %732, 0
  %736 = or i1 %734, %735
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %34, align 1
  %738 = and i32 %732, 255
  %739 = tail call i32 @llvm.ctpop.i32(i32 %738)
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  store i8 %742, i8* %35, align 1
  %743 = xor i32 %732, %731
  %744 = lshr i32 %743, 4
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  store i8 %746, i8* %36, align 1
  %747 = zext i1 %735 to i8
  store i8 %747, i8* %37, align 1
  %748 = lshr i32 %732, 31
  %749 = trunc i32 %748 to i8
  store i8 %749, i8* %38, align 1
  %750 = lshr i32 %731, 31
  %751 = xor i32 %748, %750
  %752 = add nuw nsw i32 %751, %748
  %753 = icmp eq i32 %752, 2
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %39, align 1
  %755 = sext i32 %732 to i64
  store i64 %755, i64* %RDX.i312, align 8
  %756 = shl nsw i64 %755, 3
  %757 = add i64 %702, %756
  %758 = add i64 %175, 311
  store i64 %758, i64* %3, align 8
  %759 = load double, double* %45, align 1
  %760 = inttoptr i64 %757 to double*
  %761 = load double, double* %760, align 8
  %762 = fadd double %759, %761
  %763 = load double, double* %49, align 1
  %764 = fdiv double %762, %763
  store double %764, double* %45, align 1
  %765 = add i64 %727, -16
  %766 = add i64 %175, 319
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %RAX.i307, align 8
  %769 = add i64 %727, -24
  %770 = add i64 %175, 323
  store i64 %770, i64* %3, align 8
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
  %803 = add i64 %175, 337
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  %806 = sext i32 %805 to i64
  store i64 %806, i64* %RDX.i312, align 8
  %807 = shl nsw i64 %806, 3
  %808 = add i64 %807, %776
  %809 = add i64 %175, 342
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to double*
  store double %764, double* %810, align 8
  %811 = load i64, i64* %RBP.i, align 8
  %812 = add i64 %811, -28
  %813 = load i64, i64* %3, align 8
  %814 = add i64 %813, 3
  store i64 %814, i64* %3, align 8
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
  %828 = xor i32 %817, %816
  %829 = lshr i32 %828, 4
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  store i8 %831, i8* %36, align 1
  %832 = zext i1 %820 to i8
  store i8 %832, i8* %37, align 1
  %833 = lshr i32 %817, 31
  %834 = trunc i32 %833 to i8
  store i8 %834, i8* %38, align 1
  %835 = lshr i32 %816, 31
  %836 = xor i32 %833, %835
  %837 = add nuw nsw i32 %836, %833
  %838 = icmp eq i32 %837, 2
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %39, align 1
  %840 = add i64 %813, 9
  store i64 %840, i64* %3, align 8
  store i32 %817, i32* %815, align 4
  %841 = load i64, i64* %3, align 8
  %842 = add i64 %841, -368
  store i64 %842, i64* %3, align 8
  br label %block_.L_400b15

block_.L_400c8a:                                  ; preds = %block_.L_400b15
  %843 = add i64 %137, -24
  %844 = add i64 %175, 8
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i32*
  %846 = load i32, i32* %845, align 4
  %847 = add i32 %846, 1
  %848 = zext i32 %847 to i64
  store i64 %848, i64* %RAX.i307, align 8
  %849 = icmp eq i32 %846, -1
  %850 = icmp eq i32 %847, 0
  %851 = or i1 %849, %850
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %34, align 1
  %853 = and i32 %847, 255
  %854 = tail call i32 @llvm.ctpop.i32(i32 %853)
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = xor i8 %856, 1
  store i8 %857, i8* %35, align 1
  %858 = xor i32 %847, %846
  %859 = lshr i32 %858, 4
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  store i8 %861, i8* %36, align 1
  %862 = zext i1 %850 to i8
  store i8 %862, i8* %37, align 1
  %863 = lshr i32 %847, 31
  %864 = trunc i32 %863 to i8
  store i8 %864, i8* %38, align 1
  %865 = lshr i32 %846, 31
  %866 = xor i32 %863, %865
  %867 = add nuw nsw i32 %866, %863
  %868 = icmp eq i32 %867, 2
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %39, align 1
  %870 = add i64 %175, 14
  store i64 %870, i64* %3, align 8
  store i32 %847, i32* %845, align 4
  %871 = load i64, i64* %3, align 8
  %872 = add i64 %871, -411
  store i64 %872, i64* %3, align 8
  br label %block_.L_400afd

block_.L_400c9d:                                  ; preds = %block_.L_400afd
  %873 = add i64 %94, -20
  %874 = add i64 %132, 8
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = add i32 %876, 1
  %878 = zext i32 %877 to i64
  store i64 %878, i64* %RAX.i307, align 8
  %879 = icmp eq i32 %876, -1
  %880 = icmp eq i32 %877, 0
  %881 = or i1 %879, %880
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %34, align 1
  %883 = and i32 %877, 255
  %884 = tail call i32 @llvm.ctpop.i32(i32 %883)
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  %887 = xor i8 %886, 1
  store i8 %887, i8* %35, align 1
  %888 = xor i32 %877, %876
  %889 = lshr i32 %888, 4
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  store i8 %891, i8* %36, align 1
  %892 = zext i1 %880 to i8
  store i8 %892, i8* %37, align 1
  %893 = lshr i32 %877, 31
  %894 = trunc i32 %893 to i8
  store i8 %894, i8* %38, align 1
  %895 = lshr i32 %876, 31
  %896 = xor i32 %893, %895
  %897 = add nuw nsw i32 %896, %893
  %898 = icmp eq i32 %897, 2
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %39, align 1
  %900 = add i64 %132, 14
  store i64 %900, i64* %3, align 8
  store i32 %877, i32* %875, align 4
  %901 = load i64, i64* %3, align 8
  %902 = add i64 %901, -454
  store i64 %902, i64* %3, align 8
  br label %block_.L_400ae5

block_.L_400cb0:                                  ; preds = %block_.L_400ae5
  %903 = add i64 %89, 1
  store i64 %903, i64* %3, align 8
  %904 = load i64, i64* %6, align 8
  %905 = add i64 %904, 8
  %906 = inttoptr i64 %904 to i64*
  %907 = load i64, i64* %906, align 8
  store i64 %907, i64* %RBP.i, align 8
  store i64 %905, i64* %6, align 8
  %908 = add i64 %89, 2
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %905 to i64*
  %910 = load i64, i64* %909, align 8
  store i64 %910, i64* %3, align 8
  %911 = add i64 %904, 16
  store i64 %911, i64* %6, align 8
  ret %struct.Memory* %2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %18 = xor i32 %7, %6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400cb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %18 = xor i32 %7, %6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400c9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_400c8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
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
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x5d2__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1498
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x1f40___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rax__rdx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd___rax__rdx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1____rax__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_400b15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400afd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ca2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ae5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
