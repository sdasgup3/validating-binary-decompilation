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
define %struct.Memory* @kernel_adi(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %54 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %56 = bitcast i64* %55 to double*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %58 = bitcast %union.VectorReg* %57 to double*
  %59 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %57, i64 0, i32 0, i32 0, i32 0, i64 0
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %61 = bitcast i64* %60 to double*
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %63 = bitcast %union.VectorReg* %62 to double*
  %64 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %62, i64 0, i32 0, i32 0, i32 0, i64 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400bcd

block_.L_400bcd:                                  ; preds = %block_.L_401148, %entry
  %65 = phi i64 [ %3049, %block_.L_401148 ], [ %.pre, %entry ]
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -36
  %68 = add i64 %65, 3
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %RAX.i1011, align 8
  %72 = add i64 %66, -4
  %73 = add i64 %65, 6
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = sub i32 %70, %75
  %77 = icmp ult i32 %70, %75
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %46, align 1
  %79 = and i32 %76, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79)
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %47, align 1
  %84 = xor i32 %75, %70
  %85 = xor i32 %84, %76
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %48, align 1
  %89 = icmp eq i32 %76, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %49, align 1
  %91 = lshr i32 %76, 31
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %50, align 1
  %93 = lshr i32 %70, 31
  %94 = lshr i32 %75, 31
  %95 = xor i32 %94, %93
  %96 = xor i32 %91, %93
  %97 = add nuw nsw i32 %96, %95
  %98 = icmp eq i32 %97, 2
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %51, align 1
  %100 = icmp ne i8 %92, 0
  %101 = xor i1 %100, %98
  %.v87 = select i1 %101, i64 12, i64 1422
  %102 = add i64 %65, %.v87
  store i64 %102, i64* %3, align 8
  br i1 %101, label %block_400bd9, label %block_.L_40115b

block_400bd9:                                     ; preds = %block_.L_400bcd
  %103 = add i64 %66, -40
  %104 = add i64 %102, 7
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  store i32 0, i32* %105, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_400be0

block_.L_400be0:                                  ; preds = %block_.L_400d14, %block_400bd9
  %106 = phi i64 [ %788, %block_.L_400d14 ], [ %.pre72, %block_400bd9 ]
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -40
  %109 = add i64 %106, 3
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RAX.i1011, align 8
  %113 = add i64 %107, -8
  %114 = add i64 %106, 6
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = sub i32 %111, %116
  %118 = icmp ult i32 %111, %116
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %46, align 1
  %120 = and i32 %117, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120)
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %47, align 1
  %125 = xor i32 %116, %111
  %126 = xor i32 %125, %117
  %127 = lshr i32 %126, 4
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %48, align 1
  %130 = icmp eq i32 %117, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %49, align 1
  %132 = lshr i32 %117, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %50, align 1
  %134 = lshr i32 %111, 31
  %135 = lshr i32 %116, 31
  %136 = xor i32 %135, %134
  %137 = xor i32 %132, %134
  %138 = add nuw nsw i32 %137, %136
  %139 = icmp eq i32 %138, 2
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %51, align 1
  %141 = icmp ne i8 %133, 0
  %142 = xor i1 %141, %139
  %.v88 = select i1 %142, i64 12, i64 327
  %143 = add i64 %106, %.v88
  store i64 %143, i64* %3, align 8
  br i1 %142, label %block_400bec, label %block_.L_400d27

block_400bec:                                     ; preds = %block_.L_400be0
  %144 = add i64 %107, -44
  %145 = add i64 %143, 7
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i32*
  store i32 1, i32* %146, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_400bf3

block_.L_400bf3:                                  ; preds = %block_400bff, %block_400bec
  %147 = phi i64 [ %758, %block_400bff ], [ %.pre81, %block_400bec ]
  %148 = load i64, i64* %RBP.i, align 8
  %149 = add i64 %148, -44
  %150 = add i64 %147, 3
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RAX.i1011, align 8
  %154 = add i64 %148, -8
  %155 = add i64 %147, 6
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = sub i32 %152, %157
  %159 = icmp ult i32 %152, %157
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %46, align 1
  %161 = and i32 %158, 255
  %162 = tail call i32 @llvm.ctpop.i32(i32 %161)
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  %165 = xor i8 %164, 1
  store i8 %165, i8* %47, align 1
  %166 = xor i32 %157, %152
  %167 = xor i32 %166, %158
  %168 = lshr i32 %167, 4
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  store i8 %170, i8* %48, align 1
  %171 = icmp eq i32 %158, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %49, align 1
  %173 = lshr i32 %158, 31
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* %50, align 1
  %175 = lshr i32 %152, 31
  %176 = lshr i32 %157, 31
  %177 = xor i32 %176, %175
  %178 = xor i32 %173, %175
  %179 = add nuw nsw i32 %178, %177
  %180 = icmp eq i32 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %51, align 1
  %182 = icmp ne i8 %174, 0
  %183 = xor i1 %182, %180
  %.v86 = select i1 %183, i64 12, i64 289
  %184 = add i64 %147, %.v86
  store i64 %184, i64* %3, align 8
  br i1 %183, label %block_400bff, label %block_.L_400d14

block_400bff:                                     ; preds = %block_.L_400bf3
  %185 = add i64 %148, -16
  %186 = add i64 %184, 4
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i64*
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %RAX.i1011, align 8
  %189 = add i64 %148, -40
  %190 = add i64 %184, 8
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = shl nsw i64 %193, 13
  store i64 %194, i64* %RCX.i1018, align 8
  %195 = add i64 %194, %188
  store i64 %195, i64* %RAX.i1011, align 8
  %196 = icmp ult i64 %195, %188
  %197 = icmp ult i64 %195, %194
  %198 = or i1 %196, %197
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %46, align 1
  %200 = trunc i64 %195 to i32
  %201 = and i32 %200, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %47, align 1
  %206 = xor i64 %188, %195
  %207 = lshr i64 %206, 4
  %208 = trunc i64 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %48, align 1
  %210 = icmp eq i64 %195, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %49, align 1
  %212 = lshr i64 %195, 63
  %213 = trunc i64 %212 to i8
  store i8 %213, i8* %50, align 1
  %214 = lshr i64 %188, 63
  %215 = lshr i64 %193, 50
  %216 = and i64 %215, 1
  %217 = xor i64 %212, %214
  %218 = xor i64 %212, %216
  %219 = add nuw nsw i64 %217, %218
  %220 = icmp eq i64 %219, 2
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %51, align 1
  %222 = add i64 %184, 19
  store i64 %222, i64* %3, align 8
  %223 = load i32, i32* %151, align 4
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %RCX.i1018, align 8
  %225 = shl nsw i64 %224, 3
  %226 = add i64 %225, %195
  %227 = add i64 %184, 24
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %226 to i64*
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %54, align 1
  store double 0.000000e+00, double* %56, align 1
  %230 = add i64 %184, 28
  store i64 %230, i64* %3, align 8
  %231 = load i64, i64* %187, align 8
  store i64 %231, i64* %RAX.i1011, align 8
  %232 = add i64 %184, 32
  store i64 %232, i64* %3, align 8
  %233 = load i32, i32* %191, align 4
  %234 = sext i32 %233 to i64
  %235 = shl nsw i64 %234, 13
  store i64 %235, i64* %RCX.i1018, align 8
  %236 = add i64 %235, %231
  store i64 %236, i64* %RAX.i1011, align 8
  %237 = icmp ult i64 %236, %231
  %238 = icmp ult i64 %236, %235
  %239 = or i1 %237, %238
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %46, align 1
  %241 = trunc i64 %236 to i32
  %242 = and i32 %241, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %47, align 1
  %247 = xor i64 %231, %236
  %248 = lshr i64 %247, 4
  %249 = trunc i64 %248 to i8
  %250 = and i8 %249, 1
  store i8 %250, i8* %48, align 1
  %251 = icmp eq i64 %236, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %49, align 1
  %253 = lshr i64 %236, 63
  %254 = trunc i64 %253 to i8
  store i8 %254, i8* %50, align 1
  %255 = lshr i64 %231, 63
  %256 = lshr i64 %234, 50
  %257 = and i64 %256, 1
  %258 = xor i64 %253, %255
  %259 = xor i64 %253, %257
  %260 = add nuw nsw i64 %258, %259
  %261 = icmp eq i64 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %51, align 1
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -44
  %265 = add i64 %184, 42
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = add i32 %267, -1
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %RDX.i1021, align 8
  %270 = icmp eq i32 %267, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %46, align 1
  %272 = and i32 %268, 255
  %273 = tail call i32 @llvm.ctpop.i32(i32 %272)
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  store i8 %276, i8* %47, align 1
  %277 = xor i32 %268, %267
  %278 = lshr i32 %277, 4
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  store i8 %280, i8* %48, align 1
  %281 = icmp eq i32 %268, 0
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %49, align 1
  %283 = lshr i32 %268, 31
  %284 = trunc i32 %283 to i8
  store i8 %284, i8* %50, align 1
  %285 = lshr i32 %267, 31
  %286 = xor i32 %283, %285
  %287 = add nuw nsw i32 %286, %285
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %51, align 1
  %290 = sext i32 %268 to i64
  store i64 %290, i64* %RCX.i1018, align 8
  %291 = shl nsw i64 %290, 3
  %292 = add i64 %236, %291
  %293 = add i64 %184, 53
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i64*
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %296 = add i64 %263, -24
  %297 = add i64 %184, 57
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i64*
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %RAX.i1011, align 8
  %300 = add i64 %263, -40
  %301 = add i64 %184, 61
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  %305 = shl nsw i64 %304, 13
  store i64 %305, i64* %RCX.i1018, align 8
  %306 = add i64 %305, %299
  store i64 %306, i64* %RAX.i1011, align 8
  %307 = icmp ult i64 %306, %299
  %308 = icmp ult i64 %306, %305
  %309 = or i1 %307, %308
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %46, align 1
  %311 = trunc i64 %306 to i32
  %312 = and i32 %311, 255
  %313 = tail call i32 @llvm.ctpop.i32(i32 %312)
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  store i8 %316, i8* %47, align 1
  %317 = xor i64 %299, %306
  %318 = lshr i64 %317, 4
  %319 = trunc i64 %318 to i8
  %320 = and i8 %319, 1
  store i8 %320, i8* %48, align 1
  %321 = icmp eq i64 %306, 0
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %49, align 1
  %323 = lshr i64 %306, 63
  %324 = trunc i64 %323 to i8
  store i8 %324, i8* %50, align 1
  %325 = lshr i64 %299, 63
  %326 = lshr i64 %304, 50
  %327 = and i64 %326, 1
  %328 = xor i64 %323, %325
  %329 = xor i64 %323, %327
  %330 = add nuw nsw i64 %328, %329
  %331 = icmp eq i64 %330, 2
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %51, align 1
  %333 = load i64, i64* %RBP.i, align 8
  %334 = add i64 %333, -44
  %335 = add i64 %184, 72
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = sext i32 %337 to i64
  store i64 %338, i64* %RCX.i1018, align 8
  %339 = shl nsw i64 %338, 3
  %340 = add i64 %339, %306
  %341 = add i64 %184, 77
  store i64 %341, i64* %3, align 8
  %342 = bitcast i64 %295 to double
  %343 = inttoptr i64 %340 to double*
  %344 = load double, double* %343, align 8
  %345 = fmul double %342, %344
  store double %345, double* %58, align 1
  store i64 0, i64* %60, align 1
  %346 = add i64 %333, -32
  %347 = add i64 %184, 81
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %RAX.i1011, align 8
  %350 = add i64 %333, -40
  %351 = add i64 %184, 85
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = sext i32 %353 to i64
  %355 = shl nsw i64 %354, 13
  store i64 %355, i64* %RCX.i1018, align 8
  %356 = add i64 %355, %349
  store i64 %356, i64* %RAX.i1011, align 8
  %357 = icmp ult i64 %356, %349
  %358 = icmp ult i64 %356, %355
  %359 = or i1 %357, %358
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %46, align 1
  %361 = trunc i64 %356 to i32
  %362 = and i32 %361, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %47, align 1
  %367 = xor i64 %349, %356
  %368 = lshr i64 %367, 4
  %369 = trunc i64 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %48, align 1
  %371 = icmp eq i64 %356, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %49, align 1
  %373 = lshr i64 %356, 63
  %374 = trunc i64 %373 to i8
  store i8 %374, i8* %50, align 1
  %375 = lshr i64 %349, 63
  %376 = lshr i64 %354, 50
  %377 = and i64 %376, 1
  %378 = xor i64 %373, %375
  %379 = xor i64 %373, %377
  %380 = add nuw nsw i64 %378, %379
  %381 = icmp eq i64 %380, 2
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %51, align 1
  %383 = add i64 %184, 95
  store i64 %383, i64* %3, align 8
  %384 = load i32, i32* %336, align 4
  %385 = add i32 %384, -1
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RDX.i1021, align 8
  %387 = icmp eq i32 %384, 0
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %46, align 1
  %389 = and i32 %385, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389)
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %47, align 1
  %394 = xor i32 %385, %384
  %395 = lshr i32 %394, 4
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %48, align 1
  %398 = icmp eq i32 %385, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %49, align 1
  %400 = lshr i32 %385, 31
  %401 = trunc i32 %400 to i8
  store i8 %401, i8* %50, align 1
  %402 = lshr i32 %384, 31
  %403 = xor i32 %400, %402
  %404 = add nuw nsw i32 %403, %402
  %405 = icmp eq i32 %404, 2
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %51, align 1
  %407 = sext i32 %385 to i64
  store i64 %407, i64* %RCX.i1018, align 8
  %408 = shl nsw i64 %407, 3
  %409 = add i64 %356, %408
  %410 = add i64 %184, 106
  store i64 %410, i64* %3, align 8
  %411 = load double, double* %58, align 1
  %412 = inttoptr i64 %409 to double*
  %413 = load double, double* %412, align 8
  %414 = fdiv double %411, %413
  store double %414, double* %58, align 1
  %415 = load double, double* %53, align 1
  %416 = fsub double %415, %414
  store double %416, double* %53, align 1
  %417 = load i64, i64* %RBP.i, align 8
  %418 = add i64 %417, -16
  %419 = add i64 %184, 114
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i64*
  %421 = load i64, i64* %420, align 8
  store i64 %421, i64* %RAX.i1011, align 8
  %422 = add i64 %417, -40
  %423 = add i64 %184, 118
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  %427 = shl nsw i64 %426, 13
  store i64 %427, i64* %RCX.i1018, align 8
  %428 = add i64 %427, %421
  store i64 %428, i64* %RAX.i1011, align 8
  %429 = icmp ult i64 %428, %421
  %430 = icmp ult i64 %428, %427
  %431 = or i1 %429, %430
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %46, align 1
  %433 = trunc i64 %428 to i32
  %434 = and i32 %433, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %47, align 1
  %439 = xor i64 %421, %428
  %440 = lshr i64 %439, 4
  %441 = trunc i64 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, i8* %48, align 1
  %443 = icmp eq i64 %428, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %49, align 1
  %445 = lshr i64 %428, 63
  %446 = trunc i64 %445 to i8
  store i8 %446, i8* %50, align 1
  %447 = lshr i64 %421, 63
  %448 = lshr i64 %426, 50
  %449 = and i64 %448, 1
  %450 = xor i64 %445, %447
  %451 = xor i64 %445, %449
  %452 = add nuw nsw i64 %450, %451
  %453 = icmp eq i64 %452, 2
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %51, align 1
  %455 = add i64 %417, -44
  %456 = add i64 %184, 129
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = sext i32 %458 to i64
  store i64 %459, i64* %RCX.i1018, align 8
  %460 = shl nsw i64 %459, 3
  %461 = add i64 %460, %428
  %462 = add i64 %184, 134
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to double*
  store double %416, double* %463, align 8
  %464 = load i64, i64* %RBP.i, align 8
  %465 = add i64 %464, -32
  %466 = load i64, i64* %3, align 8
  %467 = add i64 %466, 4
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %465 to i64*
  %469 = load i64, i64* %468, align 8
  store i64 %469, i64* %RAX.i1011, align 8
  %470 = add i64 %464, -40
  %471 = add i64 %466, 8
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i32*
  %473 = load i32, i32* %472, align 4
  %474 = sext i32 %473 to i64
  %475 = shl nsw i64 %474, 13
  store i64 %475, i64* %RCX.i1018, align 8
  %476 = add i64 %475, %469
  store i64 %476, i64* %RAX.i1011, align 8
  %477 = icmp ult i64 %476, %469
  %478 = icmp ult i64 %476, %475
  %479 = or i1 %477, %478
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %46, align 1
  %481 = trunc i64 %476 to i32
  %482 = and i32 %481, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %47, align 1
  %487 = xor i64 %469, %476
  %488 = lshr i64 %487, 4
  %489 = trunc i64 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %48, align 1
  %491 = icmp eq i64 %476, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %49, align 1
  %493 = lshr i64 %476, 63
  %494 = trunc i64 %493 to i8
  store i8 %494, i8* %50, align 1
  %495 = lshr i64 %469, 63
  %496 = lshr i64 %474, 50
  %497 = and i64 %496, 1
  %498 = xor i64 %493, %495
  %499 = xor i64 %493, %497
  %500 = add nuw nsw i64 %498, %499
  %501 = icmp eq i64 %500, 2
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %51, align 1
  %503 = add i64 %464, -44
  %504 = add i64 %466, 19
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i32*
  %506 = load i32, i32* %505, align 4
  %507 = sext i32 %506 to i64
  store i64 %507, i64* %RCX.i1018, align 8
  %508 = shl nsw i64 %507, 3
  %509 = add i64 %508, %476
  %510 = add i64 %466, 24
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i64*
  %512 = load i64, i64* %511, align 8
  store i64 %512, i64* %54, align 1
  store double 0.000000e+00, double* %56, align 1
  %513 = add i64 %464, -24
  %514 = add i64 %466, 28
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i64*
  %516 = load i64, i64* %515, align 8
  store i64 %516, i64* %RAX.i1011, align 8
  %517 = add i64 %466, 32
  store i64 %517, i64* %3, align 8
  %518 = load i32, i32* %472, align 4
  %519 = sext i32 %518 to i64
  %520 = shl nsw i64 %519, 13
  store i64 %520, i64* %RCX.i1018, align 8
  %521 = add i64 %520, %516
  store i64 %521, i64* %RAX.i1011, align 8
  %522 = icmp ult i64 %521, %516
  %523 = icmp ult i64 %521, %520
  %524 = or i1 %522, %523
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %46, align 1
  %526 = trunc i64 %521 to i32
  %527 = and i32 %526, 255
  %528 = tail call i32 @llvm.ctpop.i32(i32 %527)
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = xor i8 %530, 1
  store i8 %531, i8* %47, align 1
  %532 = xor i64 %516, %521
  %533 = lshr i64 %532, 4
  %534 = trunc i64 %533 to i8
  %535 = and i8 %534, 1
  store i8 %535, i8* %48, align 1
  %536 = icmp eq i64 %521, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %49, align 1
  %538 = lshr i64 %521, 63
  %539 = trunc i64 %538 to i8
  store i8 %539, i8* %50, align 1
  %540 = lshr i64 %516, 63
  %541 = lshr i64 %519, 50
  %542 = and i64 %541, 1
  %543 = xor i64 %538, %540
  %544 = xor i64 %538, %542
  %545 = add nuw nsw i64 %543, %544
  %546 = icmp eq i64 %545, 2
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %51, align 1
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -44
  %550 = add i64 %466, 43
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = sext i32 %552 to i64
  store i64 %553, i64* %RCX.i1018, align 8
  %554 = shl nsw i64 %553, 3
  %555 = add i64 %554, %521
  %556 = add i64 %466, 48
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i64*
  %558 = load i64, i64* %557, align 8
  store i64 %558, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %559 = add i64 %548, -24
  %560 = add i64 %466, 52
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %559 to i64*
  %562 = load i64, i64* %561, align 8
  store i64 %562, i64* %RAX.i1011, align 8
  %563 = add i64 %548, -40
  %564 = add i64 %466, 56
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i32*
  %566 = load i32, i32* %565, align 4
  %567 = sext i32 %566 to i64
  %568 = shl nsw i64 %567, 13
  store i64 %568, i64* %RCX.i1018, align 8
  %569 = add i64 %568, %562
  store i64 %569, i64* %RAX.i1011, align 8
  %570 = icmp ult i64 %569, %562
  %571 = icmp ult i64 %569, %568
  %572 = or i1 %570, %571
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %46, align 1
  %574 = trunc i64 %569 to i32
  %575 = and i32 %574, 255
  %576 = tail call i32 @llvm.ctpop.i32(i32 %575)
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = xor i8 %578, 1
  store i8 %579, i8* %47, align 1
  %580 = xor i64 %562, %569
  %581 = lshr i64 %580, 4
  %582 = trunc i64 %581 to i8
  %583 = and i8 %582, 1
  store i8 %583, i8* %48, align 1
  %584 = icmp eq i64 %569, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %49, align 1
  %586 = lshr i64 %569, 63
  %587 = trunc i64 %586 to i8
  store i8 %587, i8* %50, align 1
  %588 = lshr i64 %562, 63
  %589 = lshr i64 %567, 50
  %590 = and i64 %589, 1
  %591 = xor i64 %586, %588
  %592 = xor i64 %586, %590
  %593 = add nuw nsw i64 %591, %592
  %594 = icmp eq i64 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %51, align 1
  %596 = add i64 %466, 67
  store i64 %596, i64* %3, align 8
  %597 = load i32, i32* %551, align 4
  %598 = sext i32 %597 to i64
  store i64 %598, i64* %RCX.i1018, align 8
  %599 = shl nsw i64 %598, 3
  %600 = add i64 %599, %569
  %601 = add i64 %466, 72
  store i64 %601, i64* %3, align 8
  %602 = bitcast i64 %558 to double
  %603 = inttoptr i64 %600 to double*
  %604 = load double, double* %603, align 8
  %605 = fmul double %602, %604
  store double %605, double* %58, align 1
  store i64 0, i64* %60, align 1
  %606 = add i64 %548, -32
  %607 = add i64 %466, 76
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i64*
  %609 = load i64, i64* %608, align 8
  store i64 %609, i64* %RAX.i1011, align 8
  %610 = load i64, i64* %RBP.i, align 8
  %611 = add i64 %610, -40
  %612 = add i64 %466, 80
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = sext i32 %614 to i64
  %616 = shl nsw i64 %615, 13
  store i64 %616, i64* %RCX.i1018, align 8
  %617 = add i64 %616, %609
  store i64 %617, i64* %RAX.i1011, align 8
  %618 = icmp ult i64 %617, %609
  %619 = icmp ult i64 %617, %616
  %620 = or i1 %618, %619
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %46, align 1
  %622 = trunc i64 %617 to i32
  %623 = and i32 %622, 255
  %624 = tail call i32 @llvm.ctpop.i32(i32 %623)
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, i8* %47, align 1
  %628 = xor i64 %609, %617
  %629 = lshr i64 %628, 4
  %630 = trunc i64 %629 to i8
  %631 = and i8 %630, 1
  store i8 %631, i8* %48, align 1
  %632 = icmp eq i64 %617, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %49, align 1
  %634 = lshr i64 %617, 63
  %635 = trunc i64 %634 to i8
  store i8 %635, i8* %50, align 1
  %636 = lshr i64 %609, 63
  %637 = lshr i64 %615, 50
  %638 = and i64 %637, 1
  %639 = xor i64 %634, %636
  %640 = xor i64 %634, %638
  %641 = add nuw nsw i64 %639, %640
  %642 = icmp eq i64 %641, 2
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %51, align 1
  %644 = add i64 %610, -44
  %645 = add i64 %466, 90
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = add i32 %647, -1
  %649 = zext i32 %648 to i64
  store i64 %649, i64* %RDX.i1021, align 8
  %650 = icmp eq i32 %647, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %46, align 1
  %652 = and i32 %648, 255
  %653 = tail call i32 @llvm.ctpop.i32(i32 %652)
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = xor i8 %655, 1
  store i8 %656, i8* %47, align 1
  %657 = xor i32 %648, %647
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  store i8 %660, i8* %48, align 1
  %661 = icmp eq i32 %648, 0
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %49, align 1
  %663 = lshr i32 %648, 31
  %664 = trunc i32 %663 to i8
  store i8 %664, i8* %50, align 1
  %665 = lshr i32 %647, 31
  %666 = xor i32 %663, %665
  %667 = add nuw nsw i32 %666, %665
  %668 = icmp eq i32 %667, 2
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %51, align 1
  %670 = sext i32 %648 to i64
  store i64 %670, i64* %RCX.i1018, align 8
  %671 = shl nsw i64 %670, 3
  %672 = add i64 %617, %671
  %673 = add i64 %466, 101
  store i64 %673, i64* %3, align 8
  %674 = load double, double* %58, align 1
  %675 = inttoptr i64 %672 to double*
  %676 = load double, double* %675, align 8
  %677 = fdiv double %674, %676
  store double %677, double* %58, align 1
  %678 = load double, double* %53, align 1
  %679 = fsub double %678, %677
  store double %679, double* %53, align 1
  %680 = load i64, i64* %RBP.i, align 8
  %681 = add i64 %680, -32
  %682 = add i64 %466, 109
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i64*
  %684 = load i64, i64* %683, align 8
  store i64 %684, i64* %RAX.i1011, align 8
  %685 = add i64 %680, -40
  %686 = add i64 %466, 113
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  %688 = load i32, i32* %687, align 4
  %689 = sext i32 %688 to i64
  %690 = shl nsw i64 %689, 13
  store i64 %690, i64* %RCX.i1018, align 8
  %691 = add i64 %690, %684
  store i64 %691, i64* %RAX.i1011, align 8
  %692 = icmp ult i64 %691, %684
  %693 = icmp ult i64 %691, %690
  %694 = or i1 %692, %693
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %46, align 1
  %696 = trunc i64 %691 to i32
  %697 = and i32 %696, 255
  %698 = tail call i32 @llvm.ctpop.i32(i32 %697)
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  %701 = xor i8 %700, 1
  store i8 %701, i8* %47, align 1
  %702 = xor i64 %684, %691
  %703 = lshr i64 %702, 4
  %704 = trunc i64 %703 to i8
  %705 = and i8 %704, 1
  store i8 %705, i8* %48, align 1
  %706 = icmp eq i64 %691, 0
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %49, align 1
  %708 = lshr i64 %691, 63
  %709 = trunc i64 %708 to i8
  store i8 %709, i8* %50, align 1
  %710 = lshr i64 %684, 63
  %711 = lshr i64 %689, 50
  %712 = and i64 %711, 1
  %713 = xor i64 %708, %710
  %714 = xor i64 %708, %712
  %715 = add nuw nsw i64 %713, %714
  %716 = icmp eq i64 %715, 2
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %51, align 1
  %718 = add i64 %680, -44
  %719 = add i64 %466, 124
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i32*
  %721 = load i32, i32* %720, align 4
  %722 = sext i32 %721 to i64
  store i64 %722, i64* %RCX.i1018, align 8
  %723 = shl nsw i64 %722, 3
  %724 = add i64 %723, %691
  %725 = add i64 %466, 129
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to double*
  store double %679, double* %726, align 8
  %727 = load i64, i64* %RBP.i, align 8
  %728 = add i64 %727, -44
  %729 = load i64, i64* %3, align 8
  %730 = add i64 %729, 3
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %728 to i32*
  %732 = load i32, i32* %731, align 4
  %733 = add i32 %732, 1
  %734 = zext i32 %733 to i64
  store i64 %734, i64* %RAX.i1011, align 8
  %735 = icmp eq i32 %732, -1
  %736 = icmp eq i32 %733, 0
  %737 = or i1 %735, %736
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %46, align 1
  %739 = and i32 %733, 255
  %740 = tail call i32 @llvm.ctpop.i32(i32 %739)
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  store i8 %743, i8* %47, align 1
  %744 = xor i32 %733, %732
  %745 = lshr i32 %744, 4
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  store i8 %747, i8* %48, align 1
  %748 = zext i1 %736 to i8
  store i8 %748, i8* %49, align 1
  %749 = lshr i32 %733, 31
  %750 = trunc i32 %749 to i8
  store i8 %750, i8* %50, align 1
  %751 = lshr i32 %732, 31
  %752 = xor i32 %749, %751
  %753 = add nuw nsw i32 %752, %749
  %754 = icmp eq i32 %753, 2
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %51, align 1
  %756 = add i64 %729, 9
  store i64 %756, i64* %3, align 8
  store i32 %733, i32* %731, align 4
  %757 = load i64, i64* %3, align 8
  %758 = add i64 %757, -284
  store i64 %758, i64* %3, align 8
  br label %block_.L_400bf3

block_.L_400d14:                                  ; preds = %block_.L_400bf3
  %759 = add i64 %148, -40
  %760 = add i64 %184, 8
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = add i32 %762, 1
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RAX.i1011, align 8
  %765 = icmp eq i32 %762, -1
  %766 = icmp eq i32 %763, 0
  %767 = or i1 %765, %766
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %46, align 1
  %769 = and i32 %763, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769)
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %47, align 1
  %774 = xor i32 %763, %762
  %775 = lshr i32 %774, 4
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  store i8 %777, i8* %48, align 1
  %778 = zext i1 %766 to i8
  store i8 %778, i8* %49, align 1
  %779 = lshr i32 %763, 31
  %780 = trunc i32 %779 to i8
  store i8 %780, i8* %50, align 1
  %781 = lshr i32 %762, 31
  %782 = xor i32 %779, %781
  %783 = add nuw nsw i32 %782, %779
  %784 = icmp eq i32 %783, 2
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %51, align 1
  %786 = add i64 %184, 14
  store i64 %786, i64* %3, align 8
  store i32 %763, i32* %761, align 4
  %787 = load i64, i64* %3, align 8
  %788 = add i64 %787, -322
  store i64 %788, i64* %3, align 8
  br label %block_.L_400be0

block_.L_400d27:                                  ; preds = %block_.L_400be0
  %789 = add i64 %143, 7
  store i64 %789, i64* %3, align 8
  store i32 0, i32* %110, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_400d2e

block_.L_400d2e:                                  ; preds = %block_400d3a, %block_.L_400d27
  %790 = phi i64 [ %1066, %block_400d3a ], [ %.pre73, %block_.L_400d27 ]
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -40
  %793 = add i64 %790, 3
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = zext i32 %795 to i64
  store i64 %796, i64* %RAX.i1011, align 8
  %797 = add i64 %791, -8
  %798 = add i64 %790, 6
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = sub i32 %795, %800
  %802 = icmp ult i32 %795, %800
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %46, align 1
  %804 = and i32 %801, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %47, align 1
  %809 = xor i32 %800, %795
  %810 = xor i32 %809, %801
  %811 = lshr i32 %810, 4
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %48, align 1
  %814 = icmp eq i32 %801, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %49, align 1
  %816 = lshr i32 %801, 31
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %50, align 1
  %818 = lshr i32 %795, 31
  %819 = lshr i32 %800, 31
  %820 = xor i32 %819, %818
  %821 = xor i32 %816, %818
  %822 = add nuw nsw i32 %821, %820
  %823 = icmp eq i32 %822, 2
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %51, align 1
  %825 = icmp ne i8 %817, 0
  %826 = xor i1 %825, %823
  %.v89 = select i1 %826, i64 12, i64 113
  %827 = add i64 %790, %.v89
  store i64 %827, i64* %3, align 8
  br i1 %826, label %block_400d3a, label %block_.L_400d9f

block_400d3a:                                     ; preds = %block_.L_400d2e
  %828 = add i64 %791, -16
  %829 = add i64 %827, 4
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i64*
  %831 = load i64, i64* %830, align 8
  store i64 %831, i64* %RAX.i1011, align 8
  %832 = add i64 %827, 8
  store i64 %832, i64* %3, align 8
  %833 = load i32, i32* %794, align 4
  %834 = sext i32 %833 to i64
  %835 = shl nsw i64 %834, 13
  store i64 %835, i64* %RCX.i1018, align 8
  %836 = add i64 %835, %831
  store i64 %836, i64* %RAX.i1011, align 8
  %837 = icmp ult i64 %836, %831
  %838 = icmp ult i64 %836, %835
  %839 = or i1 %837, %838
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %46, align 1
  %841 = trunc i64 %836 to i32
  %842 = and i32 %841, 255
  %843 = tail call i32 @llvm.ctpop.i32(i32 %842)
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  %846 = xor i8 %845, 1
  store i8 %846, i8* %47, align 1
  %847 = xor i64 %831, %836
  %848 = lshr i64 %847, 4
  %849 = trunc i64 %848 to i8
  %850 = and i8 %849, 1
  store i8 %850, i8* %48, align 1
  %851 = icmp eq i64 %836, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %49, align 1
  %853 = lshr i64 %836, 63
  %854 = trunc i64 %853 to i8
  store i8 %854, i8* %50, align 1
  %855 = lshr i64 %831, 63
  %856 = lshr i64 %834, 50
  %857 = and i64 %856, 1
  %858 = xor i64 %853, %855
  %859 = xor i64 %853, %857
  %860 = add nuw nsw i64 %858, %859
  %861 = icmp eq i64 %860, 2
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %51, align 1
  %863 = add i64 %827, 18
  store i64 %863, i64* %3, align 8
  %864 = load i32, i32* %799, align 4
  %865 = add i32 %864, -1
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RDX.i1021, align 8
  %867 = icmp eq i32 %864, 0
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %46, align 1
  %869 = and i32 %865, 255
  %870 = tail call i32 @llvm.ctpop.i32(i32 %869)
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  %873 = xor i8 %872, 1
  store i8 %873, i8* %47, align 1
  %874 = xor i32 %865, %864
  %875 = lshr i32 %874, 4
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  store i8 %877, i8* %48, align 1
  %878 = icmp eq i32 %865, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %49, align 1
  %880 = lshr i32 %865, 31
  %881 = trunc i32 %880 to i8
  store i8 %881, i8* %50, align 1
  %882 = lshr i32 %864, 31
  %883 = xor i32 %880, %882
  %884 = add nuw nsw i32 %883, %882
  %885 = icmp eq i32 %884, 2
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %51, align 1
  %887 = sext i32 %865 to i64
  store i64 %887, i64* %RCX.i1018, align 8
  %888 = shl nsw i64 %887, 3
  %889 = add i64 %836, %888
  %890 = add i64 %827, 29
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i64*
  %892 = load i64, i64* %891, align 8
  store i64 %892, i64* %64, align 1
  store double 0.000000e+00, double* %56, align 1
  %893 = load i64, i64* %RBP.i, align 8
  %894 = add i64 %893, -32
  %895 = add i64 %827, 33
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i64*
  %897 = load i64, i64* %896, align 8
  store i64 %897, i64* %RAX.i1011, align 8
  %898 = add i64 %893, -40
  %899 = add i64 %827, 37
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i32*
  %901 = load i32, i32* %900, align 4
  %902 = sext i32 %901 to i64
  %903 = shl nsw i64 %902, 13
  store i64 %903, i64* %RCX.i1018, align 8
  %904 = add i64 %903, %897
  store i64 %904, i64* %RAX.i1011, align 8
  %905 = icmp ult i64 %904, %897
  %906 = icmp ult i64 %904, %903
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
  %915 = xor i64 %897, %904
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
  %923 = lshr i64 %897, 63
  %924 = lshr i64 %902, 50
  %925 = and i64 %924, 1
  %926 = xor i64 %921, %923
  %927 = xor i64 %921, %925
  %928 = add nuw nsw i64 %926, %927
  %929 = icmp eq i64 %928, 2
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %51, align 1
  %931 = add i64 %893, -8
  %932 = add i64 %827, 47
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i32*
  %934 = load i32, i32* %933, align 4
  %935 = add i32 %934, -1
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RDX.i1021, align 8
  %937 = icmp eq i32 %934, 0
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %46, align 1
  %939 = and i32 %935, 255
  %940 = tail call i32 @llvm.ctpop.i32(i32 %939)
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  %943 = xor i8 %942, 1
  store i8 %943, i8* %47, align 1
  %944 = xor i32 %935, %934
  %945 = lshr i32 %944, 4
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  store i8 %947, i8* %48, align 1
  %948 = icmp eq i32 %935, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %49, align 1
  %950 = lshr i32 %935, 31
  %951 = trunc i32 %950 to i8
  store i8 %951, i8* %50, align 1
  %952 = lshr i32 %934, 31
  %953 = xor i32 %950, %952
  %954 = add nuw nsw i32 %953, %952
  %955 = icmp eq i32 %954, 2
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %51, align 1
  %957 = sext i32 %935 to i64
  store i64 %957, i64* %RCX.i1018, align 8
  %958 = shl nsw i64 %957, 3
  %959 = add i64 %904, %958
  %960 = add i64 %827, 58
  store i64 %960, i64* %3, align 8
  %961 = load double, double* %63, align 1
  %962 = inttoptr i64 %959 to double*
  %963 = load double, double* %962, align 8
  %964 = fdiv double %961, %963
  store double %964, double* %63, align 1
  %965 = load i64, i64* %RBP.i, align 8
  %966 = add i64 %965, -16
  %967 = add i64 %827, 62
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %966 to i64*
  %969 = load i64, i64* %968, align 8
  store i64 %969, i64* %RAX.i1011, align 8
  %970 = add i64 %965, -40
  %971 = add i64 %827, 66
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i32*
  %973 = load i32, i32* %972, align 4
  %974 = sext i32 %973 to i64
  %975 = shl nsw i64 %974, 13
  store i64 %975, i64* %RCX.i1018, align 8
  %976 = add i64 %975, %969
  store i64 %976, i64* %RAX.i1011, align 8
  %977 = icmp ult i64 %976, %969
  %978 = icmp ult i64 %976, %975
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
  %987 = xor i64 %969, %976
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
  %995 = lshr i64 %969, 63
  %996 = lshr i64 %974, 50
  %997 = and i64 %996, 1
  %998 = xor i64 %993, %995
  %999 = xor i64 %993, %997
  %1000 = add nuw nsw i64 %998, %999
  %1001 = icmp eq i64 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %51, align 1
  %1003 = add i64 %965, -8
  %1004 = add i64 %827, 76
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i32*
  %1006 = load i32, i32* %1005, align 4
  %1007 = add i32 %1006, -1
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %RDX.i1021, align 8
  %1009 = icmp eq i32 %1006, 0
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %46, align 1
  %1011 = and i32 %1007, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %47, align 1
  %1016 = xor i32 %1007, %1006
  %1017 = lshr i32 %1016, 4
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  store i8 %1019, i8* %48, align 1
  %1020 = icmp eq i32 %1007, 0
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %49, align 1
  %1022 = lshr i32 %1007, 31
  %1023 = trunc i32 %1022 to i8
  store i8 %1023, i8* %50, align 1
  %1024 = lshr i32 %1006, 31
  %1025 = xor i32 %1022, %1024
  %1026 = add nuw nsw i32 %1025, %1024
  %1027 = icmp eq i32 %1026, 2
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %51, align 1
  %1029 = sext i32 %1007 to i64
  store i64 %1029, i64* %RCX.i1018, align 8
  %1030 = shl nsw i64 %1029, 3
  %1031 = add i64 %976, %1030
  %1032 = add i64 %827, 87
  store i64 %1032, i64* %3, align 8
  %1033 = load i64, i64* %64, align 1
  %1034 = inttoptr i64 %1031 to i64*
  store i64 %1033, i64* %1034, align 8
  %1035 = load i64, i64* %RBP.i, align 8
  %1036 = add i64 %1035, -40
  %1037 = load i64, i64* %3, align 8
  %1038 = add i64 %1037, 3
  store i64 %1038, i64* %3, align 8
  %1039 = inttoptr i64 %1036 to i32*
  %1040 = load i32, i32* %1039, align 4
  %1041 = add i32 %1040, 1
  %1042 = zext i32 %1041 to i64
  store i64 %1042, i64* %RAX.i1011, align 8
  %1043 = icmp eq i32 %1040, -1
  %1044 = icmp eq i32 %1041, 0
  %1045 = or i1 %1043, %1044
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %46, align 1
  %1047 = and i32 %1041, 255
  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %47, align 1
  %1052 = xor i32 %1041, %1040
  %1053 = lshr i32 %1052, 4
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  store i8 %1055, i8* %48, align 1
  %1056 = zext i1 %1044 to i8
  store i8 %1056, i8* %49, align 1
  %1057 = lshr i32 %1041, 31
  %1058 = trunc i32 %1057 to i8
  store i8 %1058, i8* %50, align 1
  %1059 = lshr i32 %1040, 31
  %1060 = xor i32 %1057, %1059
  %1061 = add nuw nsw i32 %1060, %1057
  %1062 = icmp eq i32 %1061, 2
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %51, align 1
  %1064 = add i64 %1037, 9
  store i64 %1064, i64* %3, align 8
  store i32 %1041, i32* %1039, align 4
  %1065 = load i64, i64* %3, align 8
  %1066 = add i64 %1065, -108
  store i64 %1066, i64* %3, align 8
  br label %block_.L_400d2e

block_.L_400d9f:                                  ; preds = %block_.L_400d2e
  %1067 = add i64 %827, 7
  store i64 %1067, i64* %3, align 8
  store i32 0, i32* %794, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_400da6

block_.L_400da6:                                  ; preds = %block_.L_400e7f, %block_.L_400d9f
  %1068 = phi i64 [ %1665, %block_.L_400e7f ], [ %.pre74, %block_.L_400d9f ]
  %1069 = load i64, i64* %RBP.i, align 8
  %1070 = add i64 %1069, -40
  %1071 = add i64 %1068, 3
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = zext i32 %1073 to i64
  store i64 %1074, i64* %RAX.i1011, align 8
  %1075 = add i64 %1069, -8
  %1076 = add i64 %1068, 6
  store i64 %1076, i64* %3, align 8
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
  %.v90 = select i1 %1104, i64 12, i64 236
  %1105 = add i64 %1068, %.v90
  store i64 %1105, i64* %3, align 8
  br i1 %1104, label %block_400db2, label %block_.L_400e92

block_400db2:                                     ; preds = %block_.L_400da6
  %1106 = add i64 %1069, -44
  %1107 = add i64 %1105, 7
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  store i32 0, i32* %1108, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_400db9

block_.L_400db9:                                  ; preds = %block_400dca, %block_400db2
  %1109 = phi i64 [ %1635, %block_400dca ], [ %.pre80, %block_400db2 ]
  %1110 = load i64, i64* %RBP.i, align 8
  %1111 = add i64 %1110, -44
  %1112 = add i64 %1109, 3
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = zext i32 %1114 to i64
  store i64 %1115, i64* %RAX.i1011, align 8
  %1116 = add i64 %1110, -8
  %1117 = add i64 %1109, 6
  store i64 %1117, i64* %3, align 8
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
  %.v85 = select i1 %1147, i64 17, i64 198
  %1148 = add i64 %1109, %.v85
  store i64 %1148, i64* %3, align 8
  br i1 %1147, label %block_400dca, label %block_.L_400e7f

block_400dca:                                     ; preds = %block_.L_400db9
  %1149 = add i64 %1110, -16
  %1150 = add i64 %1148, 4
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i64*
  %1152 = load i64, i64* %1151, align 8
  store i64 %1152, i64* %RAX.i1011, align 8
  %1153 = add i64 %1110, -40
  %1154 = add i64 %1148, 8
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1153 to i32*
  %1156 = load i32, i32* %1155, align 4
  %1157 = sext i32 %1156 to i64
  %1158 = shl nsw i64 %1157, 13
  store i64 %1158, i64* %RCX.i1018, align 8
  %1159 = add i64 %1158, %1152
  store i64 %1159, i64* %RAX.i1011, align 8
  %1160 = icmp ult i64 %1159, %1152
  %1161 = icmp ult i64 %1159, %1158
  %1162 = or i1 %1160, %1161
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %46, align 1
  %1164 = trunc i64 %1159 to i32
  %1165 = and i32 %1164, 255
  %1166 = tail call i32 @llvm.ctpop.i32(i32 %1165)
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = xor i8 %1168, 1
  store i8 %1169, i8* %47, align 1
  %1170 = xor i64 %1152, %1159
  %1171 = lshr i64 %1170, 4
  %1172 = trunc i64 %1171 to i8
  %1173 = and i8 %1172, 1
  store i8 %1173, i8* %48, align 1
  %1174 = icmp eq i64 %1159, 0
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %49, align 1
  %1176 = lshr i64 %1159, 63
  %1177 = trunc i64 %1176 to i8
  store i8 %1177, i8* %50, align 1
  %1178 = lshr i64 %1152, 63
  %1179 = lshr i64 %1157, 50
  %1180 = and i64 %1179, 1
  %1181 = xor i64 %1176, %1178
  %1182 = xor i64 %1176, %1180
  %1183 = add nuw nsw i64 %1181, %1182
  %1184 = icmp eq i64 %1183, 2
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %51, align 1
  %1186 = add i64 %1148, 18
  store i64 %1186, i64* %3, align 8
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
  %1197 = xor i32 %1188, %1187
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
  store i64 %1212, i64* %3, align 8
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
  %1242 = add i64 %1240, %1241
  %1243 = add i64 %1148, 32
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %54, align 1
  store double 0.000000e+00, double* %56, align 1
  %1246 = add i64 %1210, -16
  %1247 = add i64 %1148, 36
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i64*
  %1249 = load i64, i64* %1248, align 8
  store i64 %1249, i64* %RAX.i1011, align 8
  %1250 = add i64 %1210, -40
  %1251 = add i64 %1148, 40
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = shl nsw i64 %1254, 13
  store i64 %1255, i64* %RCX.i1018, align 8
  %1256 = add i64 %1255, %1249
  store i64 %1256, i64* %RAX.i1011, align 8
  %1257 = icmp ult i64 %1256, %1249
  %1258 = icmp ult i64 %1256, %1255
  %1259 = or i1 %1257, %1258
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %46, align 1
  %1261 = trunc i64 %1256 to i32
  %1262 = and i32 %1261, 255
  %1263 = tail call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  store i8 %1266, i8* %47, align 1
  %1267 = xor i64 %1249, %1256
  %1268 = lshr i64 %1267, 4
  %1269 = trunc i64 %1268 to i8
  %1270 = and i8 %1269, 1
  store i8 %1270, i8* %48, align 1
  %1271 = icmp eq i64 %1256, 0
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %49, align 1
  %1273 = lshr i64 %1256, 63
  %1274 = trunc i64 %1273 to i8
  store i8 %1274, i8* %50, align 1
  %1275 = lshr i64 %1249, 63
  %1276 = lshr i64 %1254, 50
  %1277 = and i64 %1276, 1
  %1278 = xor i64 %1273, %1275
  %1279 = xor i64 %1273, %1277
  %1280 = add nuw nsw i64 %1278, %1279
  %1281 = icmp eq i64 %1280, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %51, align 1
  %1283 = load i64, i64* %RBP.i, align 8
  %1284 = add i64 %1283, -8
  %1285 = add i64 %1148, 50
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  %1288 = add i32 %1287, -2
  %1289 = zext i32 %1288 to i64
  store i64 %1289, i64* %RDX.i1021, align 8
  %1290 = icmp ult i32 %1287, 2
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %46, align 1
  %1292 = and i32 %1288, 255
  %1293 = tail call i32 @llvm.ctpop.i32(i32 %1292)
  %1294 = trunc i32 %1293 to i8
  %1295 = and i8 %1294, 1
  %1296 = xor i8 %1295, 1
  store i8 %1296, i8* %47, align 1
  %1297 = xor i32 %1288, %1287
  %1298 = lshr i32 %1297, 4
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  store i8 %1300, i8* %48, align 1
  %1301 = icmp eq i32 %1288, 0
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %49, align 1
  %1303 = lshr i32 %1288, 31
  %1304 = trunc i32 %1303 to i8
  store i8 %1304, i8* %50, align 1
  %1305 = lshr i32 %1287, 31
  %1306 = xor i32 %1303, %1305
  %1307 = add nuw nsw i32 %1306, %1305
  %1308 = icmp eq i32 %1307, 2
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %51, align 1
  %1310 = add i64 %1283, -44
  %1311 = add i64 %1148, 56
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = sub i32 %1288, %1313
  %1315 = icmp eq i32 %1314, 0
  %1316 = zext i1 %1315 to i8
  %1317 = lshr i32 %1314, 31
  %1318 = add i32 %1314, -1
  %1319 = zext i32 %1318 to i64
  store i64 %1319, i64* %RDX.i1021, align 8
  store i8 %1316, i8* %46, align 1
  %1320 = and i32 %1318, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %47, align 1
  %1325 = xor i32 %1318, %1314
  %1326 = lshr i32 %1325, 4
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  store i8 %1328, i8* %48, align 1
  %1329 = icmp eq i32 %1318, 0
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %49, align 1
  %1331 = lshr i32 %1318, 31
  %1332 = trunc i32 %1331 to i8
  store i8 %1332, i8* %50, align 1
  %1333 = xor i32 %1331, %1317
  %1334 = add nuw nsw i32 %1333, %1317
  %1335 = icmp eq i32 %1334, 2
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %51, align 1
  %1337 = sext i32 %1318 to i64
  store i64 %1337, i64* %RCX.i1018, align 8
  %1338 = load i64, i64* %RAX.i1011, align 8
  %1339 = shl nsw i64 %1337, 3
  %1340 = add i64 %1338, %1339
  %1341 = add i64 %1148, 67
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i64*
  %1343 = load i64, i64* %1342, align 8
  store i64 %1343, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %1344 = load i64, i64* %RBP.i, align 8
  %1345 = add i64 %1344, -24
  %1346 = add i64 %1148, 71
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i64*
  %1348 = load i64, i64* %1347, align 8
  store i64 %1348, i64* %RAX.i1011, align 8
  %1349 = add i64 %1344, -40
  %1350 = add i64 %1148, 75
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i32*
  %1352 = load i32, i32* %1351, align 4
  %1353 = sext i32 %1352 to i64
  %1354 = shl nsw i64 %1353, 13
  store i64 %1354, i64* %RCX.i1018, align 8
  %1355 = add i64 %1354, %1348
  store i64 %1355, i64* %RAX.i1011, align 8
  %1356 = icmp ult i64 %1355, %1348
  %1357 = icmp ult i64 %1355, %1354
  %1358 = or i1 %1356, %1357
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %46, align 1
  %1360 = trunc i64 %1355 to i32
  %1361 = and i32 %1360, 255
  %1362 = tail call i32 @llvm.ctpop.i32(i32 %1361)
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = xor i8 %1364, 1
  store i8 %1365, i8* %47, align 1
  %1366 = xor i64 %1348, %1355
  %1367 = lshr i64 %1366, 4
  %1368 = trunc i64 %1367 to i8
  %1369 = and i8 %1368, 1
  store i8 %1369, i8* %48, align 1
  %1370 = icmp eq i64 %1355, 0
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %49, align 1
  %1372 = lshr i64 %1355, 63
  %1373 = trunc i64 %1372 to i8
  store i8 %1373, i8* %50, align 1
  %1374 = lshr i64 %1348, 63
  %1375 = lshr i64 %1353, 50
  %1376 = and i64 %1375, 1
  %1377 = xor i64 %1372, %1374
  %1378 = xor i64 %1372, %1376
  %1379 = add nuw nsw i64 %1377, %1378
  %1380 = icmp eq i64 %1379, 2
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %51, align 1
  %1382 = add i64 %1344, -8
  %1383 = add i64 %1148, 85
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = zext i32 %1385 to i64
  store i64 %1386, i64* %RDX.i1021, align 8
  %1387 = add i64 %1344, -44
  %1388 = add i64 %1148, 88
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  %1390 = load i32, i32* %1389, align 4
  %1391 = sub i32 %1385, %1390
  %1392 = lshr i32 %1391, 31
  %1393 = add i32 %1391, -3
  %1394 = zext i32 %1393 to i64
  store i64 %1394, i64* %RDX.i1021, align 8
  %1395 = icmp ult i32 %1391, 3
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %46, align 1
  %1397 = and i32 %1393, 255
  %1398 = tail call i32 @llvm.ctpop.i32(i32 %1397)
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  store i8 %1401, i8* %47, align 1
  %1402 = xor i32 %1393, %1391
  %1403 = lshr i32 %1402, 4
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  store i8 %1405, i8* %48, align 1
  %1406 = icmp eq i32 %1393, 0
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %49, align 1
  %1408 = lshr i32 %1393, 31
  %1409 = trunc i32 %1408 to i8
  store i8 %1409, i8* %50, align 1
  %1410 = xor i32 %1408, %1392
  %1411 = add nuw nsw i32 %1410, %1392
  %1412 = icmp eq i32 %1411, 2
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %51, align 1
  %1414 = sext i32 %1393 to i64
  store i64 %1414, i64* %RCX.i1018, align 8
  %1415 = load i64, i64* %RAX.i1011, align 8
  %1416 = shl nsw i64 %1414, 3
  %1417 = add i64 %1415, %1416
  %1418 = add i64 %1148, 99
  store i64 %1418, i64* %3, align 8
  %1419 = load double, double* %58, align 1
  %1420 = inttoptr i64 %1417 to double*
  %1421 = load double, double* %1420, align 8
  %1422 = fmul double %1419, %1421
  store double %1422, double* %58, align 1
  %1423 = load double, double* %53, align 1
  %1424 = fsub double %1423, %1422
  store double %1424, double* %53, align 1
  %1425 = load i64, i64* %RBP.i, align 8
  %1426 = add i64 %1425, -32
  %1427 = add i64 %1148, 107
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i64*
  %1429 = load i64, i64* %1428, align 8
  store i64 %1429, i64* %RAX.i1011, align 8
  %1430 = add i64 %1425, -40
  %1431 = add i64 %1148, 111
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i32*
  %1433 = load i32, i32* %1432, align 4
  %1434 = sext i32 %1433 to i64
  %1435 = shl nsw i64 %1434, 13
  store i64 %1435, i64* %RCX.i1018, align 8
  %1436 = add i64 %1435, %1429
  store i64 %1436, i64* %RAX.i1011, align 8
  %1437 = icmp ult i64 %1436, %1429
  %1438 = icmp ult i64 %1436, %1435
  %1439 = or i1 %1437, %1438
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %46, align 1
  %1441 = trunc i64 %1436 to i32
  %1442 = and i32 %1441, 255
  %1443 = tail call i32 @llvm.ctpop.i32(i32 %1442)
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %47, align 1
  %1447 = xor i64 %1429, %1436
  %1448 = lshr i64 %1447, 4
  %1449 = trunc i64 %1448 to i8
  %1450 = and i8 %1449, 1
  store i8 %1450, i8* %48, align 1
  %1451 = icmp eq i64 %1436, 0
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %49, align 1
  %1453 = lshr i64 %1436, 63
  %1454 = trunc i64 %1453 to i8
  store i8 %1454, i8* %50, align 1
  %1455 = lshr i64 %1429, 63
  %1456 = lshr i64 %1434, 50
  %1457 = and i64 %1456, 1
  %1458 = xor i64 %1453, %1455
  %1459 = xor i64 %1453, %1457
  %1460 = add nuw nsw i64 %1458, %1459
  %1461 = icmp eq i64 %1460, 2
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %51, align 1
  %1463 = add i64 %1425, -8
  %1464 = add i64 %1148, 121
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1463 to i32*
  %1466 = load i32, i32* %1465, align 4
  %1467 = add i32 %1466, -3
  %1468 = zext i32 %1467 to i64
  store i64 %1468, i64* %RDX.i1021, align 8
  %1469 = icmp ult i32 %1466, 3
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %46, align 1
  %1471 = and i32 %1467, 255
  %1472 = tail call i32 @llvm.ctpop.i32(i32 %1471)
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  store i8 %1475, i8* %47, align 1
  %1476 = xor i32 %1467, %1466
  %1477 = lshr i32 %1476, 4
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  store i8 %1479, i8* %48, align 1
  %1480 = icmp eq i32 %1467, 0
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %49, align 1
  %1482 = lshr i32 %1467, 31
  %1483 = trunc i32 %1482 to i8
  store i8 %1483, i8* %50, align 1
  %1484 = lshr i32 %1466, 31
  %1485 = xor i32 %1482, %1484
  %1486 = add nuw nsw i32 %1485, %1484
  %1487 = icmp eq i32 %1486, 2
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %51, align 1
  %1489 = load i64, i64* %RBP.i, align 8
  %1490 = add i64 %1489, -44
  %1491 = add i64 %1148, 127
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i32*
  %1493 = load i32, i32* %1492, align 4
  %1494 = sub i32 %1467, %1493
  %1495 = zext i32 %1494 to i64
  store i64 %1495, i64* %RDX.i1021, align 8
  %1496 = icmp ult i32 %1467, %1493
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %46, align 1
  %1498 = and i32 %1494, 255
  %1499 = tail call i32 @llvm.ctpop.i32(i32 %1498)
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  store i8 %1502, i8* %47, align 1
  %1503 = xor i32 %1493, %1467
  %1504 = xor i32 %1503, %1494
  %1505 = lshr i32 %1504, 4
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  store i8 %1507, i8* %48, align 1
  %1508 = icmp eq i32 %1494, 0
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %49, align 1
  %1510 = lshr i32 %1494, 31
  %1511 = trunc i32 %1510 to i8
  store i8 %1511, i8* %50, align 1
  %1512 = lshr i32 %1493, 31
  %1513 = xor i32 %1512, %1482
  %1514 = xor i32 %1510, %1482
  %1515 = add nuw nsw i32 %1514, %1513
  %1516 = icmp eq i32 %1515, 2
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %51, align 1
  %1518 = sext i32 %1494 to i64
  store i64 %1518, i64* %RCX.i1018, align 8
  %1519 = load i64, i64* %RAX.i1011, align 8
  %1520 = shl nsw i64 %1518, 3
  %1521 = add i64 %1519, %1520
  %1522 = add i64 %1148, 135
  store i64 %1522, i64* %3, align 8
  %1523 = load double, double* %53, align 1
  %1524 = inttoptr i64 %1521 to double*
  %1525 = load double, double* %1524, align 8
  %1526 = fdiv double %1523, %1525
  store double %1526, double* %53, align 1
  %1527 = add i64 %1489, -16
  %1528 = add i64 %1148, 139
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i64*
  %1530 = load i64, i64* %1529, align 8
  store i64 %1530, i64* %RAX.i1011, align 8
  %1531 = add i64 %1489, -40
  %1532 = add i64 %1148, 143
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1531 to i32*
  %1534 = load i32, i32* %1533, align 4
  %1535 = sext i32 %1534 to i64
  %1536 = shl nsw i64 %1535, 13
  store i64 %1536, i64* %RCX.i1018, align 8
  %1537 = add i64 %1536, %1530
  store i64 %1537, i64* %RAX.i1011, align 8
  %1538 = icmp ult i64 %1537, %1530
  %1539 = icmp ult i64 %1537, %1536
  %1540 = or i1 %1538, %1539
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %46, align 1
  %1542 = trunc i64 %1537 to i32
  %1543 = and i32 %1542, 255
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %47, align 1
  %1548 = xor i64 %1530, %1537
  %1549 = lshr i64 %1548, 4
  %1550 = trunc i64 %1549 to i8
  %1551 = and i8 %1550, 1
  store i8 %1551, i8* %48, align 1
  %1552 = icmp eq i64 %1537, 0
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %49, align 1
  %1554 = lshr i64 %1537, 63
  %1555 = trunc i64 %1554 to i8
  store i8 %1555, i8* %50, align 1
  %1556 = lshr i64 %1530, 63
  %1557 = lshr i64 %1535, 50
  %1558 = and i64 %1557, 1
  %1559 = xor i64 %1554, %1556
  %1560 = xor i64 %1554, %1558
  %1561 = add nuw nsw i64 %1559, %1560
  %1562 = icmp eq i64 %1561, 2
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %51, align 1
  %1564 = load i64, i64* %RBP.i, align 8
  %1565 = add i64 %1564, -8
  %1566 = add i64 %1148, 153
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i32*
  %1568 = load i32, i32* %1567, align 4
  %1569 = zext i32 %1568 to i64
  store i64 %1569, i64* %RDX.i1021, align 8
  %1570 = add i64 %1564, -44
  %1571 = add i64 %1148, 156
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i32*
  %1573 = load i32, i32* %1572, align 4
  %1574 = sub i32 %1568, %1573
  %1575 = lshr i32 %1574, 31
  %1576 = add i32 %1574, -2
  %1577 = zext i32 %1576 to i64
  store i64 %1577, i64* %RDX.i1021, align 8
  %1578 = icmp ult i32 %1574, 2
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %46, align 1
  %1580 = and i32 %1576, 255
  %1581 = tail call i32 @llvm.ctpop.i32(i32 %1580)
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  %1584 = xor i8 %1583, 1
  store i8 %1584, i8* %47, align 1
  %1585 = xor i32 %1576, %1574
  %1586 = lshr i32 %1585, 4
  %1587 = trunc i32 %1586 to i8
  %1588 = and i8 %1587, 1
  store i8 %1588, i8* %48, align 1
  %1589 = icmp eq i32 %1576, 0
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %49, align 1
  %1591 = lshr i32 %1576, 31
  %1592 = trunc i32 %1591 to i8
  store i8 %1592, i8* %50, align 1
  %1593 = xor i32 %1591, %1575
  %1594 = add nuw nsw i32 %1593, %1575
  %1595 = icmp eq i32 %1594, 2
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %51, align 1
  %1597 = sext i32 %1576 to i64
  store i64 %1597, i64* %RCX.i1018, align 8
  %1598 = load i64, i64* %RAX.i1011, align 8
  %1599 = shl nsw i64 %1597, 3
  %1600 = add i64 %1598, %1599
  %1601 = add i64 %1148, 167
  store i64 %1601, i64* %3, align 8
  %1602 = load i64, i64* %54, align 1
  %1603 = inttoptr i64 %1600 to i64*
  store i64 %1602, i64* %1603, align 8
  %1604 = load i64, i64* %RBP.i, align 8
  %1605 = add i64 %1604, -44
  %1606 = load i64, i64* %3, align 8
  %1607 = add i64 %1606, 3
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1605 to i32*
  %1609 = load i32, i32* %1608, align 4
  %1610 = add i32 %1609, 1
  %1611 = zext i32 %1610 to i64
  store i64 %1611, i64* %RAX.i1011, align 8
  %1612 = icmp eq i32 %1609, -1
  %1613 = icmp eq i32 %1610, 0
  %1614 = or i1 %1612, %1613
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %46, align 1
  %1616 = and i32 %1610, 255
  %1617 = tail call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %47, align 1
  %1621 = xor i32 %1610, %1609
  %1622 = lshr i32 %1621, 4
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  store i8 %1624, i8* %48, align 1
  %1625 = zext i1 %1613 to i8
  store i8 %1625, i8* %49, align 1
  %1626 = lshr i32 %1610, 31
  %1627 = trunc i32 %1626 to i8
  store i8 %1627, i8* %50, align 1
  %1628 = lshr i32 %1609, 31
  %1629 = xor i32 %1626, %1628
  %1630 = add nuw nsw i32 %1629, %1626
  %1631 = icmp eq i32 %1630, 2
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %51, align 1
  %1633 = add i64 %1606, 9
  store i64 %1633, i64* %3, align 8
  store i32 %1610, i32* %1608, align 4
  %1634 = load i64, i64* %3, align 8
  %1635 = add i64 %1634, -193
  store i64 %1635, i64* %3, align 8
  br label %block_.L_400db9

block_.L_400e7f:                                  ; preds = %block_.L_400db9
  %1636 = add i64 %1110, -40
  %1637 = add i64 %1148, 8
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = add i32 %1639, 1
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RAX.i1011, align 8
  %1642 = icmp eq i32 %1639, -1
  %1643 = icmp eq i32 %1640, 0
  %1644 = or i1 %1642, %1643
  %1645 = zext i1 %1644 to i8
  store i8 %1645, i8* %46, align 1
  %1646 = and i32 %1640, 255
  %1647 = tail call i32 @llvm.ctpop.i32(i32 %1646)
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  %1650 = xor i8 %1649, 1
  store i8 %1650, i8* %47, align 1
  %1651 = xor i32 %1640, %1639
  %1652 = lshr i32 %1651, 4
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  store i8 %1654, i8* %48, align 1
  %1655 = zext i1 %1643 to i8
  store i8 %1655, i8* %49, align 1
  %1656 = lshr i32 %1640, 31
  %1657 = trunc i32 %1656 to i8
  store i8 %1657, i8* %50, align 1
  %1658 = lshr i32 %1639, 31
  %1659 = xor i32 %1656, %1658
  %1660 = add nuw nsw i32 %1659, %1656
  %1661 = icmp eq i32 %1660, 2
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %51, align 1
  %1663 = add i64 %1148, 14
  store i64 %1663, i64* %3, align 8
  store i32 %1640, i32* %1638, align 4
  %1664 = load i64, i64* %3, align 8
  %1665 = add i64 %1664, -231
  store i64 %1665, i64* %3, align 8
  br label %block_.L_400da6

block_.L_400e92:                                  ; preds = %block_.L_400da6
  %1666 = add i64 %1105, 7
  store i64 %1666, i64* %3, align 8
  store i32 1, i32* %1072, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_400e99

block_.L_400e99:                                  ; preds = %block_.L_400fcd, %block_.L_400e92
  %1667 = phi i64 [ %2289, %block_.L_400fcd ], [ %.pre75, %block_.L_400e92 ]
  %1668 = load i64, i64* %RBP.i, align 8
  %1669 = add i64 %1668, -40
  %1670 = add i64 %1667, 3
  store i64 %1670, i64* %3, align 8
  %1671 = inttoptr i64 %1669 to i32*
  %1672 = load i32, i32* %1671, align 4
  %1673 = zext i32 %1672 to i64
  store i64 %1673, i64* %RAX.i1011, align 8
  %1674 = add i64 %1668, -8
  %1675 = add i64 %1667, 6
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i32*
  %1677 = load i32, i32* %1676, align 4
  %1678 = sub i32 %1672, %1677
  %1679 = icmp ult i32 %1672, %1677
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %46, align 1
  %1681 = and i32 %1678, 255
  %1682 = tail call i32 @llvm.ctpop.i32(i32 %1681)
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  %1685 = xor i8 %1684, 1
  store i8 %1685, i8* %47, align 1
  %1686 = xor i32 %1677, %1672
  %1687 = xor i32 %1686, %1678
  %1688 = lshr i32 %1687, 4
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  store i8 %1690, i8* %48, align 1
  %1691 = icmp eq i32 %1678, 0
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %49, align 1
  %1693 = lshr i32 %1678, 31
  %1694 = trunc i32 %1693 to i8
  store i8 %1694, i8* %50, align 1
  %1695 = lshr i32 %1672, 31
  %1696 = lshr i32 %1677, 31
  %1697 = xor i32 %1696, %1695
  %1698 = xor i32 %1693, %1695
  %1699 = add nuw nsw i32 %1698, %1697
  %1700 = icmp eq i32 %1699, 2
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %51, align 1
  %1702 = icmp ne i8 %1694, 0
  %1703 = xor i1 %1702, %1700
  %.v = select i1 %1703, i64 12, i64 327
  %1704 = add i64 %1667, %.v
  %1705 = add i64 %1668, -44
  %1706 = add i64 %1704, 7
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  store i32 0, i32* %1707, align 4
  %.pre79 = load i64, i64* %3, align 8
  br i1 %1703, label %block_.L_400eac.preheader, label %block_.L_400fe7.preheader

block_.L_400fe7.preheader:                        ; preds = %block_.L_400e99
  br label %block_.L_400fe7

block_.L_400eac.preheader:                        ; preds = %block_.L_400e99
  br label %block_.L_400eac

block_.L_400eac:                                  ; preds = %block_.L_400eac.preheader, %block_400eb8
  %1708 = phi i64 [ %2259, %block_400eb8 ], [ %.pre79, %block_.L_400eac.preheader ]
  %1709 = load i64, i64* %RBP.i, align 8
  %1710 = add i64 %1709, -44
  %1711 = add i64 %1708, 3
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i32*
  %1713 = load i32, i32* %1712, align 4
  %1714 = zext i32 %1713 to i64
  store i64 %1714, i64* %RAX.i1011, align 8
  %1715 = add i64 %1709, -8
  %1716 = add i64 %1708, 6
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i32*
  %1718 = load i32, i32* %1717, align 4
  %1719 = sub i32 %1713, %1718
  %1720 = icmp ult i32 %1713, %1718
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %46, align 1
  %1722 = and i32 %1719, 255
  %1723 = tail call i32 @llvm.ctpop.i32(i32 %1722)
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  store i8 %1726, i8* %47, align 1
  %1727 = xor i32 %1718, %1713
  %1728 = xor i32 %1727, %1719
  %1729 = lshr i32 %1728, 4
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  store i8 %1731, i8* %48, align 1
  %1732 = icmp eq i32 %1719, 0
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %49, align 1
  %1734 = lshr i32 %1719, 31
  %1735 = trunc i32 %1734 to i8
  store i8 %1735, i8* %50, align 1
  %1736 = lshr i32 %1713, 31
  %1737 = lshr i32 %1718, 31
  %1738 = xor i32 %1737, %1736
  %1739 = xor i32 %1734, %1736
  %1740 = add nuw nsw i32 %1739, %1738
  %1741 = icmp eq i32 %1740, 2
  %1742 = zext i1 %1741 to i8
  store i8 %1742, i8* %51, align 1
  %1743 = icmp ne i8 %1735, 0
  %1744 = xor i1 %1743, %1741
  %.v84 = select i1 %1744, i64 12, i64 289
  %1745 = add i64 %1708, %.v84
  store i64 %1745, i64* %3, align 8
  br i1 %1744, label %block_400eb8, label %block_.L_400fcd

block_400eb8:                                     ; preds = %block_.L_400eac
  %1746 = add i64 %1709, -16
  %1747 = add i64 %1745, 4
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i64*
  %1749 = load i64, i64* %1748, align 8
  store i64 %1749, i64* %RAX.i1011, align 8
  %1750 = add i64 %1709, -40
  %1751 = add i64 %1745, 8
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = sext i32 %1753 to i64
  %1755 = shl nsw i64 %1754, 13
  store i64 %1755, i64* %RCX.i1018, align 8
  %1756 = add i64 %1755, %1749
  store i64 %1756, i64* %RAX.i1011, align 8
  %1757 = icmp ult i64 %1756, %1749
  %1758 = icmp ult i64 %1756, %1755
  %1759 = or i1 %1757, %1758
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %46, align 1
  %1761 = trunc i64 %1756 to i32
  %1762 = and i32 %1761, 255
  %1763 = tail call i32 @llvm.ctpop.i32(i32 %1762)
  %1764 = trunc i32 %1763 to i8
  %1765 = and i8 %1764, 1
  %1766 = xor i8 %1765, 1
  store i8 %1766, i8* %47, align 1
  %1767 = xor i64 %1749, %1756
  %1768 = lshr i64 %1767, 4
  %1769 = trunc i64 %1768 to i8
  %1770 = and i8 %1769, 1
  store i8 %1770, i8* %48, align 1
  %1771 = icmp eq i64 %1756, 0
  %1772 = zext i1 %1771 to i8
  store i8 %1772, i8* %49, align 1
  %1773 = lshr i64 %1756, 63
  %1774 = trunc i64 %1773 to i8
  store i8 %1774, i8* %50, align 1
  %1775 = lshr i64 %1749, 63
  %1776 = lshr i64 %1754, 50
  %1777 = and i64 %1776, 1
  %1778 = xor i64 %1773, %1775
  %1779 = xor i64 %1773, %1777
  %1780 = add nuw nsw i64 %1778, %1779
  %1781 = icmp eq i64 %1780, 2
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %51, align 1
  %1783 = add i64 %1745, 19
  store i64 %1783, i64* %3, align 8
  %1784 = load i32, i32* %1712, align 4
  %1785 = sext i32 %1784 to i64
  store i64 %1785, i64* %RCX.i1018, align 8
  %1786 = shl nsw i64 %1785, 3
  %1787 = add i64 %1786, %1756
  %1788 = add i64 %1745, 24
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i64*
  %1790 = load i64, i64* %1789, align 8
  store i64 %1790, i64* %54, align 1
  store double 0.000000e+00, double* %56, align 1
  %1791 = add i64 %1745, 28
  store i64 %1791, i64* %3, align 8
  %1792 = load i64, i64* %1748, align 8
  store i64 %1792, i64* %RAX.i1011, align 8
  %1793 = add i64 %1745, 31
  store i64 %1793, i64* %3, align 8
  %1794 = load i32, i32* %1752, align 4
  %1795 = add i32 %1794, -1
  %1796 = zext i32 %1795 to i64
  store i64 %1796, i64* %RDX.i1021, align 8
  %1797 = sext i32 %1795 to i64
  %1798 = shl nsw i64 %1797, 13
  store i64 %1798, i64* %RCX.i1018, align 8
  %1799 = add i64 %1798, %1792
  store i64 %1799, i64* %RAX.i1011, align 8
  %1800 = icmp ult i64 %1799, %1792
  %1801 = icmp ult i64 %1799, %1798
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
  %1810 = xor i64 %1792, %1799
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
  %1818 = lshr i64 %1792, 63
  %1819 = lshr i64 %1797, 50
  %1820 = and i64 %1819, 1
  %1821 = xor i64 %1816, %1818
  %1822 = xor i64 %1816, %1820
  %1823 = add nuw nsw i64 %1821, %1822
  %1824 = icmp eq i64 %1823, 2
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %51, align 1
  %1826 = load i64, i64* %RBP.i, align 8
  %1827 = add i64 %1826, -44
  %1828 = add i64 %1745, 48
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1827 to i32*
  %1830 = load i32, i32* %1829, align 4
  %1831 = sext i32 %1830 to i64
  store i64 %1831, i64* %RCX.i1018, align 8
  %1832 = shl nsw i64 %1831, 3
  %1833 = add i64 %1832, %1799
  %1834 = add i64 %1745, 53
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1833 to i64*
  %1836 = load i64, i64* %1835, align 8
  store i64 %1836, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %1837 = add i64 %1826, -24
  %1838 = add i64 %1745, 57
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i64*
  %1840 = load i64, i64* %1839, align 8
  store i64 %1840, i64* %RAX.i1011, align 8
  %1841 = add i64 %1826, -40
  %1842 = add i64 %1745, 61
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i32*
  %1844 = load i32, i32* %1843, align 4
  %1845 = sext i32 %1844 to i64
  %1846 = shl nsw i64 %1845, 13
  store i64 %1846, i64* %RCX.i1018, align 8
  %1847 = add i64 %1846, %1840
  store i64 %1847, i64* %RAX.i1011, align 8
  %1848 = icmp ult i64 %1847, %1840
  %1849 = icmp ult i64 %1847, %1846
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
  %1858 = xor i64 %1840, %1847
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
  %1866 = lshr i64 %1840, 63
  %1867 = lshr i64 %1845, 50
  %1868 = and i64 %1867, 1
  %1869 = xor i64 %1864, %1866
  %1870 = xor i64 %1864, %1868
  %1871 = add nuw nsw i64 %1869, %1870
  %1872 = icmp eq i64 %1871, 2
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %51, align 1
  %1874 = add i64 %1745, 72
  store i64 %1874, i64* %3, align 8
  %1875 = load i32, i32* %1829, align 4
  %1876 = sext i32 %1875 to i64
  store i64 %1876, i64* %RCX.i1018, align 8
  %1877 = shl nsw i64 %1876, 3
  %1878 = add i64 %1877, %1847
  %1879 = add i64 %1745, 77
  store i64 %1879, i64* %3, align 8
  %1880 = bitcast i64 %1836 to double
  %1881 = inttoptr i64 %1878 to double*
  %1882 = load double, double* %1881, align 8
  %1883 = fmul double %1880, %1882
  store double %1883, double* %58, align 1
  store i64 0, i64* %60, align 1
  %1884 = add i64 %1826, -32
  %1885 = add i64 %1745, 81
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i64*
  %1887 = load i64, i64* %1886, align 8
  store i64 %1887, i64* %RAX.i1011, align 8
  %1888 = load i64, i64* %RBP.i, align 8
  %1889 = add i64 %1888, -40
  %1890 = add i64 %1745, 84
  store i64 %1890, i64* %3, align 8
  %1891 = inttoptr i64 %1889 to i32*
  %1892 = load i32, i32* %1891, align 4
  %1893 = add i32 %1892, -1
  %1894 = zext i32 %1893 to i64
  store i64 %1894, i64* %RDX.i1021, align 8
  %1895 = sext i32 %1893 to i64
  %1896 = shl nsw i64 %1895, 13
  store i64 %1896, i64* %RCX.i1018, align 8
  %1897 = add i64 %1896, %1887
  store i64 %1897, i64* %RAX.i1011, align 8
  %1898 = icmp ult i64 %1897, %1887
  %1899 = icmp ult i64 %1897, %1896
  %1900 = or i1 %1898, %1899
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %46, align 1
  %1902 = trunc i64 %1897 to i32
  %1903 = and i32 %1902, 255
  %1904 = tail call i32 @llvm.ctpop.i32(i32 %1903)
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = xor i8 %1906, 1
  store i8 %1907, i8* %47, align 1
  %1908 = xor i64 %1887, %1897
  %1909 = lshr i64 %1908, 4
  %1910 = trunc i64 %1909 to i8
  %1911 = and i8 %1910, 1
  store i8 %1911, i8* %48, align 1
  %1912 = icmp eq i64 %1897, 0
  %1913 = zext i1 %1912 to i8
  store i8 %1913, i8* %49, align 1
  %1914 = lshr i64 %1897, 63
  %1915 = trunc i64 %1914 to i8
  store i8 %1915, i8* %50, align 1
  %1916 = lshr i64 %1887, 63
  %1917 = lshr i64 %1895, 50
  %1918 = and i64 %1917, 1
  %1919 = xor i64 %1914, %1916
  %1920 = xor i64 %1914, %1918
  %1921 = add nuw nsw i64 %1919, %1920
  %1922 = icmp eq i64 %1921, 2
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %51, align 1
  %1924 = add i64 %1888, -44
  %1925 = add i64 %1745, 101
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i32*
  %1927 = load i32, i32* %1926, align 4
  %1928 = sext i32 %1927 to i64
  store i64 %1928, i64* %RCX.i1018, align 8
  %1929 = shl nsw i64 %1928, 3
  %1930 = add i64 %1929, %1897
  %1931 = add i64 %1745, 106
  store i64 %1931, i64* %3, align 8
  %1932 = load double, double* %58, align 1
  %1933 = inttoptr i64 %1930 to double*
  %1934 = load double, double* %1933, align 8
  %1935 = fdiv double %1932, %1934
  store double %1935, double* %58, align 1
  %1936 = load double, double* %53, align 1
  %1937 = fsub double %1936, %1935
  store double %1937, double* %53, align 1
  %1938 = load i64, i64* %RBP.i, align 8
  %1939 = add i64 %1938, -16
  %1940 = add i64 %1745, 114
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1939 to i64*
  %1942 = load i64, i64* %1941, align 8
  store i64 %1942, i64* %RAX.i1011, align 8
  %1943 = add i64 %1938, -40
  %1944 = add i64 %1745, 118
  store i64 %1944, i64* %3, align 8
  %1945 = inttoptr i64 %1943 to i32*
  %1946 = load i32, i32* %1945, align 4
  %1947 = sext i32 %1946 to i64
  %1948 = shl nsw i64 %1947, 13
  store i64 %1948, i64* %RCX.i1018, align 8
  %1949 = add i64 %1948, %1942
  store i64 %1949, i64* %RAX.i1011, align 8
  %1950 = icmp ult i64 %1949, %1942
  %1951 = icmp ult i64 %1949, %1948
  %1952 = or i1 %1950, %1951
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %46, align 1
  %1954 = trunc i64 %1949 to i32
  %1955 = and i32 %1954, 255
  %1956 = tail call i32 @llvm.ctpop.i32(i32 %1955)
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  %1959 = xor i8 %1958, 1
  store i8 %1959, i8* %47, align 1
  %1960 = xor i64 %1942, %1949
  %1961 = lshr i64 %1960, 4
  %1962 = trunc i64 %1961 to i8
  %1963 = and i8 %1962, 1
  store i8 %1963, i8* %48, align 1
  %1964 = icmp eq i64 %1949, 0
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %49, align 1
  %1966 = lshr i64 %1949, 63
  %1967 = trunc i64 %1966 to i8
  store i8 %1967, i8* %50, align 1
  %1968 = lshr i64 %1942, 63
  %1969 = lshr i64 %1947, 50
  %1970 = and i64 %1969, 1
  %1971 = xor i64 %1966, %1968
  %1972 = xor i64 %1966, %1970
  %1973 = add nuw nsw i64 %1971, %1972
  %1974 = icmp eq i64 %1973, 2
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %51, align 1
  %1976 = add i64 %1938, -44
  %1977 = add i64 %1745, 129
  store i64 %1977, i64* %3, align 8
  %1978 = inttoptr i64 %1976 to i32*
  %1979 = load i32, i32* %1978, align 4
  %1980 = sext i32 %1979 to i64
  store i64 %1980, i64* %RCX.i1018, align 8
  %1981 = shl nsw i64 %1980, 3
  %1982 = add i64 %1981, %1949
  %1983 = add i64 %1745, 134
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to double*
  store double %1937, double* %1984, align 8
  %1985 = load i64, i64* %RBP.i, align 8
  %1986 = add i64 %1985, -32
  %1987 = load i64, i64* %3, align 8
  %1988 = add i64 %1987, 4
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1986 to i64*
  %1990 = load i64, i64* %1989, align 8
  store i64 %1990, i64* %RAX.i1011, align 8
  %1991 = add i64 %1985, -40
  %1992 = add i64 %1987, 8
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i32*
  %1994 = load i32, i32* %1993, align 4
  %1995 = sext i32 %1994 to i64
  %1996 = shl nsw i64 %1995, 13
  store i64 %1996, i64* %RCX.i1018, align 8
  %1997 = add i64 %1996, %1990
  store i64 %1997, i64* %RAX.i1011, align 8
  %1998 = icmp ult i64 %1997, %1990
  %1999 = icmp ult i64 %1997, %1996
  %2000 = or i1 %1998, %1999
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %46, align 1
  %2002 = trunc i64 %1997 to i32
  %2003 = and i32 %2002, 255
  %2004 = tail call i32 @llvm.ctpop.i32(i32 %2003)
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  store i8 %2007, i8* %47, align 1
  %2008 = xor i64 %1990, %1997
  %2009 = lshr i64 %2008, 4
  %2010 = trunc i64 %2009 to i8
  %2011 = and i8 %2010, 1
  store i8 %2011, i8* %48, align 1
  %2012 = icmp eq i64 %1997, 0
  %2013 = zext i1 %2012 to i8
  store i8 %2013, i8* %49, align 1
  %2014 = lshr i64 %1997, 63
  %2015 = trunc i64 %2014 to i8
  store i8 %2015, i8* %50, align 1
  %2016 = lshr i64 %1990, 63
  %2017 = lshr i64 %1995, 50
  %2018 = and i64 %2017, 1
  %2019 = xor i64 %2014, %2016
  %2020 = xor i64 %2014, %2018
  %2021 = add nuw nsw i64 %2019, %2020
  %2022 = icmp eq i64 %2021, 2
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %51, align 1
  %2024 = add i64 %1985, -44
  %2025 = add i64 %1987, 19
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2024 to i32*
  %2027 = load i32, i32* %2026, align 4
  %2028 = sext i32 %2027 to i64
  store i64 %2028, i64* %RCX.i1018, align 8
  %2029 = shl nsw i64 %2028, 3
  %2030 = add i64 %2029, %1997
  %2031 = add i64 %1987, 24
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i64*
  %2033 = load i64, i64* %2032, align 8
  store i64 %2033, i64* %54, align 1
  store double 0.000000e+00, double* %56, align 1
  %2034 = add i64 %1985, -24
  %2035 = add i64 %1987, 28
  store i64 %2035, i64* %3, align 8
  %2036 = inttoptr i64 %2034 to i64*
  %2037 = load i64, i64* %2036, align 8
  store i64 %2037, i64* %RAX.i1011, align 8
  %2038 = add i64 %1987, 32
  store i64 %2038, i64* %3, align 8
  %2039 = load i32, i32* %1993, align 4
  %2040 = sext i32 %2039 to i64
  %2041 = shl nsw i64 %2040, 13
  store i64 %2041, i64* %RCX.i1018, align 8
  %2042 = add i64 %2041, %2037
  store i64 %2042, i64* %RAX.i1011, align 8
  %2043 = icmp ult i64 %2042, %2037
  %2044 = icmp ult i64 %2042, %2041
  %2045 = or i1 %2043, %2044
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %46, align 1
  %2047 = trunc i64 %2042 to i32
  %2048 = and i32 %2047, 255
  %2049 = tail call i32 @llvm.ctpop.i32(i32 %2048)
  %2050 = trunc i32 %2049 to i8
  %2051 = and i8 %2050, 1
  %2052 = xor i8 %2051, 1
  store i8 %2052, i8* %47, align 1
  %2053 = xor i64 %2037, %2042
  %2054 = lshr i64 %2053, 4
  %2055 = trunc i64 %2054 to i8
  %2056 = and i8 %2055, 1
  store i8 %2056, i8* %48, align 1
  %2057 = icmp eq i64 %2042, 0
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %49, align 1
  %2059 = lshr i64 %2042, 63
  %2060 = trunc i64 %2059 to i8
  store i8 %2060, i8* %50, align 1
  %2061 = lshr i64 %2037, 63
  %2062 = lshr i64 %2040, 50
  %2063 = and i64 %2062, 1
  %2064 = xor i64 %2059, %2061
  %2065 = xor i64 %2059, %2063
  %2066 = add nuw nsw i64 %2064, %2065
  %2067 = icmp eq i64 %2066, 2
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %51, align 1
  %2069 = load i64, i64* %RBP.i, align 8
  %2070 = add i64 %2069, -44
  %2071 = add i64 %1987, 43
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = sext i32 %2073 to i64
  store i64 %2074, i64* %RCX.i1018, align 8
  %2075 = shl nsw i64 %2074, 3
  %2076 = add i64 %2075, %2042
  %2077 = add i64 %1987, 48
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2076 to i64*
  %2079 = load i64, i64* %2078, align 8
  store i64 %2079, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %2080 = add i64 %2069, -24
  %2081 = add i64 %1987, 52
  store i64 %2081, i64* %3, align 8
  %2082 = inttoptr i64 %2080 to i64*
  %2083 = load i64, i64* %2082, align 8
  store i64 %2083, i64* %RAX.i1011, align 8
  %2084 = add i64 %2069, -40
  %2085 = add i64 %1987, 56
  store i64 %2085, i64* %3, align 8
  %2086 = inttoptr i64 %2084 to i32*
  %2087 = load i32, i32* %2086, align 4
  %2088 = sext i32 %2087 to i64
  %2089 = shl nsw i64 %2088, 13
  store i64 %2089, i64* %RCX.i1018, align 8
  %2090 = add i64 %2089, %2083
  store i64 %2090, i64* %RAX.i1011, align 8
  %2091 = icmp ult i64 %2090, %2083
  %2092 = icmp ult i64 %2090, %2089
  %2093 = or i1 %2091, %2092
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %46, align 1
  %2095 = trunc i64 %2090 to i32
  %2096 = and i32 %2095, 255
  %2097 = tail call i32 @llvm.ctpop.i32(i32 %2096)
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  %2100 = xor i8 %2099, 1
  store i8 %2100, i8* %47, align 1
  %2101 = xor i64 %2083, %2090
  %2102 = lshr i64 %2101, 4
  %2103 = trunc i64 %2102 to i8
  %2104 = and i8 %2103, 1
  store i8 %2104, i8* %48, align 1
  %2105 = icmp eq i64 %2090, 0
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %49, align 1
  %2107 = lshr i64 %2090, 63
  %2108 = trunc i64 %2107 to i8
  store i8 %2108, i8* %50, align 1
  %2109 = lshr i64 %2083, 63
  %2110 = lshr i64 %2088, 50
  %2111 = and i64 %2110, 1
  %2112 = xor i64 %2107, %2109
  %2113 = xor i64 %2107, %2111
  %2114 = add nuw nsw i64 %2112, %2113
  %2115 = icmp eq i64 %2114, 2
  %2116 = zext i1 %2115 to i8
  store i8 %2116, i8* %51, align 1
  %2117 = add i64 %1987, 67
  store i64 %2117, i64* %3, align 8
  %2118 = load i32, i32* %2072, align 4
  %2119 = sext i32 %2118 to i64
  store i64 %2119, i64* %RCX.i1018, align 8
  %2120 = shl nsw i64 %2119, 3
  %2121 = add i64 %2120, %2090
  %2122 = add i64 %1987, 72
  store i64 %2122, i64* %3, align 8
  %2123 = bitcast i64 %2079 to double
  %2124 = inttoptr i64 %2121 to double*
  %2125 = load double, double* %2124, align 8
  %2126 = fmul double %2123, %2125
  store double %2126, double* %58, align 1
  store i64 0, i64* %60, align 1
  %2127 = add i64 %2069, -32
  %2128 = add i64 %1987, 76
  store i64 %2128, i64* %3, align 8
  %2129 = inttoptr i64 %2127 to i64*
  %2130 = load i64, i64* %2129, align 8
  store i64 %2130, i64* %RAX.i1011, align 8
  %2131 = load i64, i64* %RBP.i, align 8
  %2132 = add i64 %2131, -40
  %2133 = add i64 %1987, 79
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2132 to i32*
  %2135 = load i32, i32* %2134, align 4
  %2136 = add i32 %2135, -1
  %2137 = zext i32 %2136 to i64
  store i64 %2137, i64* %RDX.i1021, align 8
  %2138 = sext i32 %2136 to i64
  %2139 = shl nsw i64 %2138, 13
  store i64 %2139, i64* %RCX.i1018, align 8
  %2140 = add i64 %2139, %2130
  store i64 %2140, i64* %RAX.i1011, align 8
  %2141 = icmp ult i64 %2140, %2130
  %2142 = icmp ult i64 %2140, %2139
  %2143 = or i1 %2141, %2142
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %46, align 1
  %2145 = trunc i64 %2140 to i32
  %2146 = and i32 %2145, 255
  %2147 = tail call i32 @llvm.ctpop.i32(i32 %2146)
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  store i8 %2150, i8* %47, align 1
  %2151 = xor i64 %2130, %2140
  %2152 = lshr i64 %2151, 4
  %2153 = trunc i64 %2152 to i8
  %2154 = and i8 %2153, 1
  store i8 %2154, i8* %48, align 1
  %2155 = icmp eq i64 %2140, 0
  %2156 = zext i1 %2155 to i8
  store i8 %2156, i8* %49, align 1
  %2157 = lshr i64 %2140, 63
  %2158 = trunc i64 %2157 to i8
  store i8 %2158, i8* %50, align 1
  %2159 = lshr i64 %2130, 63
  %2160 = lshr i64 %2138, 50
  %2161 = and i64 %2160, 1
  %2162 = xor i64 %2157, %2159
  %2163 = xor i64 %2157, %2161
  %2164 = add nuw nsw i64 %2162, %2163
  %2165 = icmp eq i64 %2164, 2
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %51, align 1
  %2167 = add i64 %2131, -44
  %2168 = add i64 %1987, 96
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i32*
  %2170 = load i32, i32* %2169, align 4
  %2171 = sext i32 %2170 to i64
  store i64 %2171, i64* %RCX.i1018, align 8
  %2172 = shl nsw i64 %2171, 3
  %2173 = add i64 %2172, %2140
  %2174 = add i64 %1987, 101
  store i64 %2174, i64* %3, align 8
  %2175 = load double, double* %58, align 1
  %2176 = inttoptr i64 %2173 to double*
  %2177 = load double, double* %2176, align 8
  %2178 = fdiv double %2175, %2177
  store double %2178, double* %58, align 1
  %2179 = load double, double* %53, align 1
  %2180 = fsub double %2179, %2178
  store double %2180, double* %53, align 1
  %2181 = load i64, i64* %RBP.i, align 8
  %2182 = add i64 %2181, -32
  %2183 = add i64 %1987, 109
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2182 to i64*
  %2185 = load i64, i64* %2184, align 8
  store i64 %2185, i64* %RAX.i1011, align 8
  %2186 = add i64 %2181, -40
  %2187 = add i64 %1987, 113
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i32*
  %2189 = load i32, i32* %2188, align 4
  %2190 = sext i32 %2189 to i64
  %2191 = shl nsw i64 %2190, 13
  store i64 %2191, i64* %RCX.i1018, align 8
  %2192 = add i64 %2191, %2185
  store i64 %2192, i64* %RAX.i1011, align 8
  %2193 = icmp ult i64 %2192, %2185
  %2194 = icmp ult i64 %2192, %2191
  %2195 = or i1 %2193, %2194
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %46, align 1
  %2197 = trunc i64 %2192 to i32
  %2198 = and i32 %2197, 255
  %2199 = tail call i32 @llvm.ctpop.i32(i32 %2198)
  %2200 = trunc i32 %2199 to i8
  %2201 = and i8 %2200, 1
  %2202 = xor i8 %2201, 1
  store i8 %2202, i8* %47, align 1
  %2203 = xor i64 %2185, %2192
  %2204 = lshr i64 %2203, 4
  %2205 = trunc i64 %2204 to i8
  %2206 = and i8 %2205, 1
  store i8 %2206, i8* %48, align 1
  %2207 = icmp eq i64 %2192, 0
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %49, align 1
  %2209 = lshr i64 %2192, 63
  %2210 = trunc i64 %2209 to i8
  store i8 %2210, i8* %50, align 1
  %2211 = lshr i64 %2185, 63
  %2212 = lshr i64 %2190, 50
  %2213 = and i64 %2212, 1
  %2214 = xor i64 %2209, %2211
  %2215 = xor i64 %2209, %2213
  %2216 = add nuw nsw i64 %2214, %2215
  %2217 = icmp eq i64 %2216, 2
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %51, align 1
  %2219 = add i64 %2181, -44
  %2220 = add i64 %1987, 124
  store i64 %2220, i64* %3, align 8
  %2221 = inttoptr i64 %2219 to i32*
  %2222 = load i32, i32* %2221, align 4
  %2223 = sext i32 %2222 to i64
  store i64 %2223, i64* %RCX.i1018, align 8
  %2224 = shl nsw i64 %2223, 3
  %2225 = add i64 %2224, %2192
  %2226 = add i64 %1987, 129
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to double*
  store double %2180, double* %2227, align 8
  %2228 = load i64, i64* %RBP.i, align 8
  %2229 = add i64 %2228, -44
  %2230 = load i64, i64* %3, align 8
  %2231 = add i64 %2230, 3
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2229 to i32*
  %2233 = load i32, i32* %2232, align 4
  %2234 = add i32 %2233, 1
  %2235 = zext i32 %2234 to i64
  store i64 %2235, i64* %RAX.i1011, align 8
  %2236 = icmp eq i32 %2233, -1
  %2237 = icmp eq i32 %2234, 0
  %2238 = or i1 %2236, %2237
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %46, align 1
  %2240 = and i32 %2234, 255
  %2241 = tail call i32 @llvm.ctpop.i32(i32 %2240)
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  %2244 = xor i8 %2243, 1
  store i8 %2244, i8* %47, align 1
  %2245 = xor i32 %2234, %2233
  %2246 = lshr i32 %2245, 4
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  store i8 %2248, i8* %48, align 1
  %2249 = zext i1 %2237 to i8
  store i8 %2249, i8* %49, align 1
  %2250 = lshr i32 %2234, 31
  %2251 = trunc i32 %2250 to i8
  store i8 %2251, i8* %50, align 1
  %2252 = lshr i32 %2233, 31
  %2253 = xor i32 %2250, %2252
  %2254 = add nuw nsw i32 %2253, %2250
  %2255 = icmp eq i32 %2254, 2
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %51, align 1
  %2257 = add i64 %2230, 9
  store i64 %2257, i64* %3, align 8
  store i32 %2234, i32* %2232, align 4
  %2258 = load i64, i64* %3, align 8
  %2259 = add i64 %2258, -284
  store i64 %2259, i64* %3, align 8
  br label %block_.L_400eac

block_.L_400fcd:                                  ; preds = %block_.L_400eac
  %2260 = add i64 %1709, -40
  %2261 = add i64 %1745, 8
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  %2263 = load i32, i32* %2262, align 4
  %2264 = add i32 %2263, 1
  %2265 = zext i32 %2264 to i64
  store i64 %2265, i64* %RAX.i1011, align 8
  %2266 = icmp eq i32 %2263, -1
  %2267 = icmp eq i32 %2264, 0
  %2268 = or i1 %2266, %2267
  %2269 = zext i1 %2268 to i8
  store i8 %2269, i8* %46, align 1
  %2270 = and i32 %2264, 255
  %2271 = tail call i32 @llvm.ctpop.i32(i32 %2270)
  %2272 = trunc i32 %2271 to i8
  %2273 = and i8 %2272, 1
  %2274 = xor i8 %2273, 1
  store i8 %2274, i8* %47, align 1
  %2275 = xor i32 %2264, %2263
  %2276 = lshr i32 %2275, 4
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  store i8 %2278, i8* %48, align 1
  %2279 = zext i1 %2267 to i8
  store i8 %2279, i8* %49, align 1
  %2280 = lshr i32 %2264, 31
  %2281 = trunc i32 %2280 to i8
  store i8 %2281, i8* %50, align 1
  %2282 = lshr i32 %2263, 31
  %2283 = xor i32 %2280, %2282
  %2284 = add nuw nsw i32 %2283, %2280
  %2285 = icmp eq i32 %2284, 2
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %51, align 1
  %2287 = add i64 %1745, 14
  store i64 %2287, i64* %3, align 8
  store i32 %2264, i32* %2262, align 4
  %2288 = load i64, i64* %3, align 8
  %2289 = add i64 %2288, -322
  store i64 %2289, i64* %3, align 8
  br label %block_.L_400e99

block_.L_400fe7:                                  ; preds = %block_.L_400fe7.preheader, %block_400ff3
  %2290 = phi i64 [ %2509, %block_400ff3 ], [ %.pre79, %block_.L_400fe7.preheader ]
  %2291 = load i64, i64* %RBP.i, align 8
  %2292 = add i64 %2291, -44
  %2293 = add i64 %2290, 3
  store i64 %2293, i64* %3, align 8
  %2294 = inttoptr i64 %2292 to i32*
  %2295 = load i32, i32* %2294, align 4
  %2296 = zext i32 %2295 to i64
  store i64 %2296, i64* %RAX.i1011, align 8
  %2297 = add i64 %2291, -8
  %2298 = add i64 %2290, 6
  store i64 %2298, i64* %3, align 8
  %2299 = inttoptr i64 %2297 to i32*
  %2300 = load i32, i32* %2299, align 4
  %2301 = sub i32 %2295, %2300
  %2302 = icmp ult i32 %2295, %2300
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %46, align 1
  %2304 = and i32 %2301, 255
  %2305 = tail call i32 @llvm.ctpop.i32(i32 %2304)
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  %2308 = xor i8 %2307, 1
  store i8 %2308, i8* %47, align 1
  %2309 = xor i32 %2300, %2295
  %2310 = xor i32 %2309, %2301
  %2311 = lshr i32 %2310, 4
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  store i8 %2313, i8* %48, align 1
  %2314 = icmp eq i32 %2301, 0
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %49, align 1
  %2316 = lshr i32 %2301, 31
  %2317 = trunc i32 %2316 to i8
  store i8 %2317, i8* %50, align 1
  %2318 = lshr i32 %2295, 31
  %2319 = lshr i32 %2300, 31
  %2320 = xor i32 %2319, %2318
  %2321 = xor i32 %2316, %2318
  %2322 = add nuw nsw i32 %2321, %2320
  %2323 = icmp eq i32 %2322, 2
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %51, align 1
  %2325 = icmp ne i8 %2317, 0
  %2326 = xor i1 %2325, %2323
  %.v91 = select i1 %2326, i64 12, i64 113
  %2327 = add i64 %2290, %.v91
  store i64 %2327, i64* %3, align 8
  br i1 %2326, label %block_400ff3, label %block_.L_401058

block_400ff3:                                     ; preds = %block_.L_400fe7
  %2328 = add i64 %2291, -16
  %2329 = add i64 %2327, 4
  store i64 %2329, i64* %3, align 8
  %2330 = inttoptr i64 %2328 to i64*
  %2331 = load i64, i64* %2330, align 8
  store i64 %2331, i64* %RAX.i1011, align 8
  %2332 = add i64 %2327, 7
  store i64 %2332, i64* %3, align 8
  %2333 = load i32, i32* %2299, align 4
  %2334 = add i32 %2333, -1
  %2335 = zext i32 %2334 to i64
  store i64 %2335, i64* %RCX.i1018, align 8
  %2336 = sext i32 %2334 to i64
  %2337 = shl nsw i64 %2336, 13
  store i64 %2337, i64* %RDX.i1021, align 8
  %2338 = add i64 %2337, %2331
  store i64 %2338, i64* %RAX.i1011, align 8
  %2339 = icmp ult i64 %2338, %2331
  %2340 = icmp ult i64 %2338, %2337
  %2341 = or i1 %2339, %2340
  %2342 = zext i1 %2341 to i8
  store i8 %2342, i8* %46, align 1
  %2343 = trunc i64 %2338 to i32
  %2344 = and i32 %2343, 255
  %2345 = tail call i32 @llvm.ctpop.i32(i32 %2344)
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  %2348 = xor i8 %2347, 1
  store i8 %2348, i8* %47, align 1
  %2349 = xor i64 %2331, %2338
  %2350 = lshr i64 %2349, 4
  %2351 = trunc i64 %2350 to i8
  %2352 = and i8 %2351, 1
  store i8 %2352, i8* %48, align 1
  %2353 = icmp eq i64 %2338, 0
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %49, align 1
  %2355 = lshr i64 %2338, 63
  %2356 = trunc i64 %2355 to i8
  store i8 %2356, i8* %50, align 1
  %2357 = lshr i64 %2331, 63
  %2358 = lshr i64 %2336, 50
  %2359 = and i64 %2358, 1
  %2360 = xor i64 %2355, %2357
  %2361 = xor i64 %2355, %2359
  %2362 = add nuw nsw i64 %2360, %2361
  %2363 = icmp eq i64 %2362, 2
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %51, align 1
  %2365 = load i64, i64* %RBP.i, align 8
  %2366 = add i64 %2365, -44
  %2367 = add i64 %2327, 24
  store i64 %2367, i64* %3, align 8
  %2368 = inttoptr i64 %2366 to i32*
  %2369 = load i32, i32* %2368, align 4
  %2370 = sext i32 %2369 to i64
  store i64 %2370, i64* %RDX.i1021, align 8
  %2371 = shl nsw i64 %2370, 3
  %2372 = add i64 %2371, %2338
  %2373 = add i64 %2327, 29
  store i64 %2373, i64* %3, align 8
  %2374 = inttoptr i64 %2372 to i64*
  %2375 = load i64, i64* %2374, align 8
  store i64 %2375, i64* %64, align 1
  store double 0.000000e+00, double* %56, align 1
  %2376 = add i64 %2365, -32
  %2377 = add i64 %2327, 33
  store i64 %2377, i64* %3, align 8
  %2378 = inttoptr i64 %2376 to i64*
  %2379 = load i64, i64* %2378, align 8
  store i64 %2379, i64* %RAX.i1011, align 8
  %2380 = add i64 %2365, -8
  %2381 = add i64 %2327, 36
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2380 to i32*
  %2383 = load i32, i32* %2382, align 4
  %2384 = add i32 %2383, -1
  %2385 = zext i32 %2384 to i64
  store i64 %2385, i64* %RCX.i1018, align 8
  %2386 = sext i32 %2384 to i64
  %2387 = shl nsw i64 %2386, 13
  store i64 %2387, i64* %RDX.i1021, align 8
  %2388 = add i64 %2387, %2379
  store i64 %2388, i64* %RAX.i1011, align 8
  %2389 = icmp ult i64 %2388, %2379
  %2390 = icmp ult i64 %2388, %2387
  %2391 = or i1 %2389, %2390
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %46, align 1
  %2393 = trunc i64 %2388 to i32
  %2394 = and i32 %2393, 255
  %2395 = tail call i32 @llvm.ctpop.i32(i32 %2394)
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = xor i8 %2397, 1
  store i8 %2398, i8* %47, align 1
  %2399 = xor i64 %2379, %2388
  %2400 = lshr i64 %2399, 4
  %2401 = trunc i64 %2400 to i8
  %2402 = and i8 %2401, 1
  store i8 %2402, i8* %48, align 1
  %2403 = icmp eq i64 %2388, 0
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %49, align 1
  %2405 = lshr i64 %2388, 63
  %2406 = trunc i64 %2405 to i8
  store i8 %2406, i8* %50, align 1
  %2407 = lshr i64 %2379, 63
  %2408 = lshr i64 %2386, 50
  %2409 = and i64 %2408, 1
  %2410 = xor i64 %2405, %2407
  %2411 = xor i64 %2405, %2409
  %2412 = add nuw nsw i64 %2410, %2411
  %2413 = icmp eq i64 %2412, 2
  %2414 = zext i1 %2413 to i8
  store i8 %2414, i8* %51, align 1
  %2415 = load i64, i64* %RBP.i, align 8
  %2416 = add i64 %2415, -44
  %2417 = add i64 %2327, 53
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i32*
  %2419 = load i32, i32* %2418, align 4
  %2420 = sext i32 %2419 to i64
  store i64 %2420, i64* %RDX.i1021, align 8
  %2421 = shl nsw i64 %2420, 3
  %2422 = add i64 %2421, %2388
  %2423 = add i64 %2327, 58
  store i64 %2423, i64* %3, align 8
  %2424 = load double, double* %63, align 1
  %2425 = inttoptr i64 %2422 to double*
  %2426 = load double, double* %2425, align 8
  %2427 = fdiv double %2424, %2426
  store double %2427, double* %63, align 1
  %2428 = add i64 %2415, -16
  %2429 = add i64 %2327, 62
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2428 to i64*
  %2431 = load i64, i64* %2430, align 8
  store i64 %2431, i64* %RAX.i1011, align 8
  %2432 = add i64 %2415, -8
  %2433 = add i64 %2327, 65
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2432 to i32*
  %2435 = load i32, i32* %2434, align 4
  %2436 = add i32 %2435, -1
  %2437 = zext i32 %2436 to i64
  store i64 %2437, i64* %RCX.i1018, align 8
  %2438 = sext i32 %2436 to i64
  %2439 = shl nsw i64 %2438, 13
  store i64 %2439, i64* %RDX.i1021, align 8
  %2440 = add i64 %2439, %2431
  store i64 %2440, i64* %RAX.i1011, align 8
  %2441 = icmp ult i64 %2440, %2431
  %2442 = icmp ult i64 %2440, %2439
  %2443 = or i1 %2441, %2442
  %2444 = zext i1 %2443 to i8
  store i8 %2444, i8* %46, align 1
  %2445 = trunc i64 %2440 to i32
  %2446 = and i32 %2445, 255
  %2447 = tail call i32 @llvm.ctpop.i32(i32 %2446)
  %2448 = trunc i32 %2447 to i8
  %2449 = and i8 %2448, 1
  %2450 = xor i8 %2449, 1
  store i8 %2450, i8* %47, align 1
  %2451 = xor i64 %2431, %2440
  %2452 = lshr i64 %2451, 4
  %2453 = trunc i64 %2452 to i8
  %2454 = and i8 %2453, 1
  store i8 %2454, i8* %48, align 1
  %2455 = icmp eq i64 %2440, 0
  %2456 = zext i1 %2455 to i8
  store i8 %2456, i8* %49, align 1
  %2457 = lshr i64 %2440, 63
  %2458 = trunc i64 %2457 to i8
  store i8 %2458, i8* %50, align 1
  %2459 = lshr i64 %2431, 63
  %2460 = lshr i64 %2438, 50
  %2461 = and i64 %2460, 1
  %2462 = xor i64 %2457, %2459
  %2463 = xor i64 %2457, %2461
  %2464 = add nuw nsw i64 %2462, %2463
  %2465 = icmp eq i64 %2464, 2
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %51, align 1
  %2467 = load i64, i64* %RBP.i, align 8
  %2468 = add i64 %2467, -44
  %2469 = add i64 %2327, 82
  store i64 %2469, i64* %3, align 8
  %2470 = inttoptr i64 %2468 to i32*
  %2471 = load i32, i32* %2470, align 4
  %2472 = sext i32 %2471 to i64
  store i64 %2472, i64* %RDX.i1021, align 8
  %2473 = shl nsw i64 %2472, 3
  %2474 = add i64 %2473, %2440
  %2475 = add i64 %2327, 87
  store i64 %2475, i64* %3, align 8
  %2476 = load i64, i64* %64, align 1
  %2477 = inttoptr i64 %2474 to i64*
  store i64 %2476, i64* %2477, align 8
  %2478 = load i64, i64* %RBP.i, align 8
  %2479 = add i64 %2478, -44
  %2480 = load i64, i64* %3, align 8
  %2481 = add i64 %2480, 3
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2479 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = add i32 %2483, 1
  %2485 = zext i32 %2484 to i64
  store i64 %2485, i64* %RAX.i1011, align 8
  %2486 = icmp eq i32 %2483, -1
  %2487 = icmp eq i32 %2484, 0
  %2488 = or i1 %2486, %2487
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %46, align 1
  %2490 = and i32 %2484, 255
  %2491 = tail call i32 @llvm.ctpop.i32(i32 %2490)
  %2492 = trunc i32 %2491 to i8
  %2493 = and i8 %2492, 1
  %2494 = xor i8 %2493, 1
  store i8 %2494, i8* %47, align 1
  %2495 = xor i32 %2484, %2483
  %2496 = lshr i32 %2495, 4
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  store i8 %2498, i8* %48, align 1
  %2499 = zext i1 %2487 to i8
  store i8 %2499, i8* %49, align 1
  %2500 = lshr i32 %2484, 31
  %2501 = trunc i32 %2500 to i8
  store i8 %2501, i8* %50, align 1
  %2502 = lshr i32 %2483, 31
  %2503 = xor i32 %2500, %2502
  %2504 = add nuw nsw i32 %2503, %2500
  %2505 = icmp eq i32 %2504, 2
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %51, align 1
  %2507 = add i64 %2480, 9
  store i64 %2507, i64* %3, align 8
  store i32 %2484, i32* %2482, align 4
  %2508 = load i64, i64* %3, align 8
  %2509 = add i64 %2508, -108
  store i64 %2509, i64* %3, align 8
  br label %block_.L_400fe7

block_.L_401058:                                  ; preds = %block_.L_400fe7
  %2510 = add i64 %2291, -40
  %2511 = add i64 %2327, 7
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2510 to i32*
  store i32 0, i32* %2512, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_40105f

block_.L_40105f:                                  ; preds = %block_.L_401135, %block_.L_401058
  %2513 = phi i64 [ %3019, %block_.L_401135 ], [ %.pre77, %block_.L_401058 ]
  %2514 = load i64, i64* %RBP.i, align 8
  %2515 = add i64 %2514, -40
  %2516 = add i64 %2513, 3
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i32*
  %2518 = load i32, i32* %2517, align 4
  %2519 = zext i32 %2518 to i64
  store i64 %2519, i64* %RAX.i1011, align 8
  %2520 = add i64 %2514, -8
  %2521 = add i64 %2513, 6
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i32*
  %2523 = load i32, i32* %2522, align 4
  %2524 = add i32 %2523, -2
  %2525 = zext i32 %2524 to i64
  store i64 %2525, i64* %RCX.i1018, align 8
  %2526 = lshr i32 %2524, 31
  %2527 = sub i32 %2518, %2524
  %2528 = icmp ult i32 %2518, %2524
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %46, align 1
  %2530 = and i32 %2527, 255
  %2531 = tail call i32 @llvm.ctpop.i32(i32 %2530)
  %2532 = trunc i32 %2531 to i8
  %2533 = and i8 %2532, 1
  %2534 = xor i8 %2533, 1
  store i8 %2534, i8* %47, align 1
  %2535 = xor i32 %2524, %2518
  %2536 = xor i32 %2535, %2527
  %2537 = lshr i32 %2536, 4
  %2538 = trunc i32 %2537 to i8
  %2539 = and i8 %2538, 1
  store i8 %2539, i8* %48, align 1
  %2540 = icmp eq i32 %2527, 0
  %2541 = zext i1 %2540 to i8
  store i8 %2541, i8* %49, align 1
  %2542 = lshr i32 %2527, 31
  %2543 = trunc i32 %2542 to i8
  store i8 %2543, i8* %50, align 1
  %2544 = lshr i32 %2518, 31
  %2545 = xor i32 %2526, %2544
  %2546 = xor i32 %2542, %2544
  %2547 = add nuw nsw i32 %2546, %2545
  %2548 = icmp eq i32 %2547, 2
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %51, align 1
  %2550 = icmp ne i8 %2543, 0
  %2551 = xor i1 %2550, %2548
  %.v82 = select i1 %2551, i64 17, i64 233
  %2552 = add i64 %2513, %.v82
  store i64 %2552, i64* %3, align 8
  br i1 %2551, label %block_401070, label %block_.L_401148

block_401070:                                     ; preds = %block_.L_40105f
  %2553 = add i64 %2514, -44
  %2554 = add i64 %2552, 7
  store i64 %2554, i64* %3, align 8
  %2555 = inttoptr i64 %2553 to i32*
  store i32 0, i32* %2555, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_401077

block_.L_401077:                                  ; preds = %block_401083, %block_401070
  %2556 = phi i64 [ %2989, %block_401083 ], [ %.pre78, %block_401070 ]
  %2557 = load i64, i64* %RBP.i, align 8
  %2558 = add i64 %2557, -44
  %2559 = add i64 %2556, 3
  store i64 %2559, i64* %3, align 8
  %2560 = inttoptr i64 %2558 to i32*
  %2561 = load i32, i32* %2560, align 4
  %2562 = zext i32 %2561 to i64
  store i64 %2562, i64* %RAX.i1011, align 8
  %2563 = add i64 %2557, -8
  %2564 = add i64 %2556, 6
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i32*
  %2566 = load i32, i32* %2565, align 4
  %2567 = sub i32 %2561, %2566
  %2568 = icmp ult i32 %2561, %2566
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %46, align 1
  %2570 = and i32 %2567, 255
  %2571 = tail call i32 @llvm.ctpop.i32(i32 %2570)
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = xor i8 %2573, 1
  store i8 %2574, i8* %47, align 1
  %2575 = xor i32 %2566, %2561
  %2576 = xor i32 %2575, %2567
  %2577 = lshr i32 %2576, 4
  %2578 = trunc i32 %2577 to i8
  %2579 = and i8 %2578, 1
  store i8 %2579, i8* %48, align 1
  %2580 = icmp eq i32 %2567, 0
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %49, align 1
  %2582 = lshr i32 %2567, 31
  %2583 = trunc i32 %2582 to i8
  store i8 %2583, i8* %50, align 1
  %2584 = lshr i32 %2561, 31
  %2585 = lshr i32 %2566, 31
  %2586 = xor i32 %2585, %2584
  %2587 = xor i32 %2582, %2584
  %2588 = add nuw nsw i32 %2587, %2586
  %2589 = icmp eq i32 %2588, 2
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %51, align 1
  %2591 = icmp ne i8 %2583, 0
  %2592 = xor i1 %2591, %2589
  %.v83 = select i1 %2592, i64 12, i64 190
  %2593 = add i64 %2556, %.v83
  store i64 %2593, i64* %3, align 8
  br i1 %2592, label %block_401083, label %block_.L_401135

block_401083:                                     ; preds = %block_.L_401077
  %2594 = add i64 %2557, -16
  %2595 = add i64 %2593, 4
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2594 to i64*
  %2597 = load i64, i64* %2596, align 8
  store i64 %2597, i64* %RAX.i1011, align 8
  %2598 = add i64 %2593, 7
  store i64 %2598, i64* %3, align 8
  %2599 = load i32, i32* %2565, align 4
  %2600 = add i32 %2599, -2
  %2601 = zext i32 %2600 to i64
  store i64 %2601, i64* %RCX.i1018, align 8
  %2602 = icmp ult i32 %2599, 2
  %2603 = zext i1 %2602 to i8
  store i8 %2603, i8* %46, align 1
  %2604 = and i32 %2600, 255
  %2605 = tail call i32 @llvm.ctpop.i32(i32 %2604)
  %2606 = trunc i32 %2605 to i8
  %2607 = and i8 %2606, 1
  %2608 = xor i8 %2607, 1
  store i8 %2608, i8* %47, align 1
  %2609 = xor i32 %2600, %2599
  %2610 = lshr i32 %2609, 4
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  store i8 %2612, i8* %48, align 1
  %2613 = icmp eq i32 %2600, 0
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %49, align 1
  %2615 = lshr i32 %2600, 31
  %2616 = trunc i32 %2615 to i8
  store i8 %2616, i8* %50, align 1
  %2617 = lshr i32 %2599, 31
  %2618 = xor i32 %2615, %2617
  %2619 = add nuw nsw i32 %2618, %2617
  %2620 = icmp eq i32 %2619, 2
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %51, align 1
  %2622 = add i64 %2557, -40
  %2623 = add i64 %2593, 13
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i32*
  %2625 = load i32, i32* %2624, align 4
  %2626 = sub i32 %2600, %2625
  %2627 = zext i32 %2626 to i64
  store i64 %2627, i64* %RCX.i1018, align 8
  %2628 = sext i32 %2626 to i64
  %2629 = shl nsw i64 %2628, 13
  store i64 %2629, i64* %RDX.i1021, align 8
  %2630 = add i64 %2629, %2597
  store i64 %2630, i64* %RAX.i1011, align 8
  %2631 = icmp ult i64 %2630, %2597
  %2632 = icmp ult i64 %2630, %2629
  %2633 = or i1 %2631, %2632
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %46, align 1
  %2635 = trunc i64 %2630 to i32
  %2636 = and i32 %2635, 255
  %2637 = tail call i32 @llvm.ctpop.i32(i32 %2636)
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = xor i8 %2639, 1
  store i8 %2640, i8* %47, align 1
  %2641 = xor i64 %2597, %2630
  %2642 = lshr i64 %2641, 4
  %2643 = trunc i64 %2642 to i8
  %2644 = and i8 %2643, 1
  store i8 %2644, i8* %48, align 1
  %2645 = icmp eq i64 %2630, 0
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %49, align 1
  %2647 = lshr i64 %2630, 63
  %2648 = trunc i64 %2647 to i8
  store i8 %2648, i8* %50, align 1
  %2649 = lshr i64 %2597, 63
  %2650 = lshr i64 %2628, 50
  %2651 = and i64 %2650, 1
  %2652 = xor i64 %2647, %2649
  %2653 = xor i64 %2647, %2651
  %2654 = add nuw nsw i64 %2652, %2653
  %2655 = icmp eq i64 %2654, 2
  %2656 = zext i1 %2655 to i8
  store i8 %2656, i8* %51, align 1
  %2657 = load i64, i64* %RBP.i, align 8
  %2658 = add i64 %2657, -44
  %2659 = add i64 %2593, 27
  store i64 %2659, i64* %3, align 8
  %2660 = inttoptr i64 %2658 to i32*
  %2661 = load i32, i32* %2660, align 4
  %2662 = sext i32 %2661 to i64
  store i64 %2662, i64* %RDX.i1021, align 8
  %2663 = shl nsw i64 %2662, 3
  %2664 = add i64 %2663, %2630
  %2665 = add i64 %2593, 32
  store i64 %2665, i64* %3, align 8
  %2666 = inttoptr i64 %2664 to i64*
  %2667 = load i64, i64* %2666, align 8
  store i64 %2667, i64* %54, align 1
  store double 0.000000e+00, double* %56, align 1
  %2668 = add i64 %2657, -16
  %2669 = add i64 %2593, 36
  store i64 %2669, i64* %3, align 8
  %2670 = inttoptr i64 %2668 to i64*
  %2671 = load i64, i64* %2670, align 8
  store i64 %2671, i64* %RAX.i1011, align 8
  %2672 = add i64 %2657, -8
  %2673 = add i64 %2593, 39
  store i64 %2673, i64* %3, align 8
  %2674 = inttoptr i64 %2672 to i32*
  %2675 = load i32, i32* %2674, align 4
  %2676 = zext i32 %2675 to i64
  store i64 %2676, i64* %RCX.i1018, align 8
  %2677 = add i64 %2657, -40
  %2678 = add i64 %2593, 42
  store i64 %2678, i64* %3, align 8
  %2679 = inttoptr i64 %2677 to i32*
  %2680 = load i32, i32* %2679, align 4
  %2681 = sub i32 %2675, %2680
  %2682 = add i32 %2681, -3
  %2683 = zext i32 %2682 to i64
  store i64 %2683, i64* %RCX.i1018, align 8
  %2684 = sext i32 %2682 to i64
  %2685 = shl nsw i64 %2684, 13
  store i64 %2685, i64* %RDX.i1021, align 8
  %2686 = add i64 %2685, %2671
  store i64 %2686, i64* %RAX.i1011, align 8
  %2687 = icmp ult i64 %2686, %2671
  %2688 = icmp ult i64 %2686, %2685
  %2689 = or i1 %2687, %2688
  %2690 = zext i1 %2689 to i8
  store i8 %2690, i8* %46, align 1
  %2691 = trunc i64 %2686 to i32
  %2692 = and i32 %2691, 255
  %2693 = tail call i32 @llvm.ctpop.i32(i32 %2692)
  %2694 = trunc i32 %2693 to i8
  %2695 = and i8 %2694, 1
  %2696 = xor i8 %2695, 1
  store i8 %2696, i8* %47, align 1
  %2697 = xor i64 %2671, %2686
  %2698 = lshr i64 %2697, 4
  %2699 = trunc i64 %2698 to i8
  %2700 = and i8 %2699, 1
  store i8 %2700, i8* %48, align 1
  %2701 = icmp eq i64 %2686, 0
  %2702 = zext i1 %2701 to i8
  store i8 %2702, i8* %49, align 1
  %2703 = lshr i64 %2686, 63
  %2704 = trunc i64 %2703 to i8
  store i8 %2704, i8* %50, align 1
  %2705 = lshr i64 %2671, 63
  %2706 = lshr i64 %2684, 50
  %2707 = and i64 %2706, 1
  %2708 = xor i64 %2703, %2705
  %2709 = xor i64 %2703, %2707
  %2710 = add nuw nsw i64 %2708, %2709
  %2711 = icmp eq i64 %2710, 2
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %51, align 1
  %2713 = load i64, i64* %RBP.i, align 8
  %2714 = add i64 %2713, -44
  %2715 = add i64 %2593, 59
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2714 to i32*
  %2717 = load i32, i32* %2716, align 4
  %2718 = sext i32 %2717 to i64
  store i64 %2718, i64* %RDX.i1021, align 8
  %2719 = shl nsw i64 %2718, 3
  %2720 = add i64 %2719, %2686
  %2721 = add i64 %2593, 64
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i64*
  %2723 = load i64, i64* %2722, align 8
  store i64 %2723, i64* %59, align 1
  store double 0.000000e+00, double* %61, align 1
  %2724 = add i64 %2713, -24
  %2725 = add i64 %2593, 68
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i64*
  %2727 = load i64, i64* %2726, align 8
  store i64 %2727, i64* %RAX.i1011, align 8
  %2728 = add i64 %2713, -8
  %2729 = add i64 %2593, 71
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2728 to i32*
  %2731 = load i32, i32* %2730, align 4
  %2732 = add i32 %2731, -3
  %2733 = zext i32 %2732 to i64
  store i64 %2733, i64* %RCX.i1018, align 8
  %2734 = icmp ult i32 %2731, 3
  %2735 = zext i1 %2734 to i8
  store i8 %2735, i8* %46, align 1
  %2736 = and i32 %2732, 255
  %2737 = tail call i32 @llvm.ctpop.i32(i32 %2736)
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = xor i8 %2739, 1
  store i8 %2740, i8* %47, align 1
  %2741 = xor i32 %2732, %2731
  %2742 = lshr i32 %2741, 4
  %2743 = trunc i32 %2742 to i8
  %2744 = and i8 %2743, 1
  store i8 %2744, i8* %48, align 1
  %2745 = icmp eq i32 %2732, 0
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %49, align 1
  %2747 = lshr i32 %2732, 31
  %2748 = trunc i32 %2747 to i8
  store i8 %2748, i8* %50, align 1
  %2749 = lshr i32 %2731, 31
  %2750 = xor i32 %2747, %2749
  %2751 = add nuw nsw i32 %2750, %2749
  %2752 = icmp eq i32 %2751, 2
  %2753 = zext i1 %2752 to i8
  store i8 %2753, i8* %51, align 1
  %2754 = add i64 %2713, -40
  %2755 = add i64 %2593, 77
  store i64 %2755, i64* %3, align 8
  %2756 = inttoptr i64 %2754 to i32*
  %2757 = load i32, i32* %2756, align 4
  %2758 = sub i32 %2732, %2757
  %2759 = zext i32 %2758 to i64
  store i64 %2759, i64* %RCX.i1018, align 8
  %2760 = sext i32 %2758 to i64
  %2761 = shl nsw i64 %2760, 13
  store i64 %2761, i64* %RDX.i1021, align 8
  %2762 = add i64 %2761, %2727
  store i64 %2762, i64* %RAX.i1011, align 8
  %2763 = icmp ult i64 %2762, %2727
  %2764 = icmp ult i64 %2762, %2761
  %2765 = or i1 %2763, %2764
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %46, align 1
  %2767 = trunc i64 %2762 to i32
  %2768 = and i32 %2767, 255
  %2769 = tail call i32 @llvm.ctpop.i32(i32 %2768)
  %2770 = trunc i32 %2769 to i8
  %2771 = and i8 %2770, 1
  %2772 = xor i8 %2771, 1
  store i8 %2772, i8* %47, align 1
  %2773 = xor i64 %2727, %2762
  %2774 = lshr i64 %2773, 4
  %2775 = trunc i64 %2774 to i8
  %2776 = and i8 %2775, 1
  store i8 %2776, i8* %48, align 1
  %2777 = icmp eq i64 %2762, 0
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %49, align 1
  %2779 = lshr i64 %2762, 63
  %2780 = trunc i64 %2779 to i8
  store i8 %2780, i8* %50, align 1
  %2781 = lshr i64 %2727, 63
  %2782 = lshr i64 %2760, 50
  %2783 = and i64 %2782, 1
  %2784 = xor i64 %2779, %2781
  %2785 = xor i64 %2779, %2783
  %2786 = add nuw nsw i64 %2784, %2785
  %2787 = icmp eq i64 %2786, 2
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %51, align 1
  %2789 = load i64, i64* %RBP.i, align 8
  %2790 = add i64 %2789, -44
  %2791 = add i64 %2593, 91
  store i64 %2791, i64* %3, align 8
  %2792 = inttoptr i64 %2790 to i32*
  %2793 = load i32, i32* %2792, align 4
  %2794 = sext i32 %2793 to i64
  store i64 %2794, i64* %RDX.i1021, align 8
  %2795 = shl nsw i64 %2794, 3
  %2796 = add i64 %2795, %2762
  %2797 = add i64 %2593, 96
  store i64 %2797, i64* %3, align 8
  %2798 = load double, double* %58, align 1
  %2799 = inttoptr i64 %2796 to double*
  %2800 = load double, double* %2799, align 8
  %2801 = fmul double %2798, %2800
  store double %2801, double* %58, align 1
  %2802 = load double, double* %53, align 1
  %2803 = fsub double %2802, %2801
  store double %2803, double* %53, align 1
  %2804 = add i64 %2789, -32
  %2805 = add i64 %2593, 104
  store i64 %2805, i64* %3, align 8
  %2806 = inttoptr i64 %2804 to i64*
  %2807 = load i64, i64* %2806, align 8
  store i64 %2807, i64* %RAX.i1011, align 8
  %2808 = add i64 %2789, -8
  %2809 = add i64 %2593, 107
  store i64 %2809, i64* %3, align 8
  %2810 = inttoptr i64 %2808 to i32*
  %2811 = load i32, i32* %2810, align 4
  %2812 = add i32 %2811, -2
  %2813 = zext i32 %2812 to i64
  store i64 %2813, i64* %RCX.i1018, align 8
  %2814 = icmp ult i32 %2811, 2
  %2815 = zext i1 %2814 to i8
  store i8 %2815, i8* %46, align 1
  %2816 = and i32 %2812, 255
  %2817 = tail call i32 @llvm.ctpop.i32(i32 %2816)
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  %2820 = xor i8 %2819, 1
  store i8 %2820, i8* %47, align 1
  %2821 = xor i32 %2812, %2811
  %2822 = lshr i32 %2821, 4
  %2823 = trunc i32 %2822 to i8
  %2824 = and i8 %2823, 1
  store i8 %2824, i8* %48, align 1
  %2825 = icmp eq i32 %2812, 0
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %49, align 1
  %2827 = lshr i32 %2812, 31
  %2828 = trunc i32 %2827 to i8
  store i8 %2828, i8* %50, align 1
  %2829 = lshr i32 %2811, 31
  %2830 = xor i32 %2827, %2829
  %2831 = add nuw nsw i32 %2830, %2829
  %2832 = icmp eq i32 %2831, 2
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %51, align 1
  %2834 = add i64 %2789, -40
  %2835 = add i64 %2593, 113
  store i64 %2835, i64* %3, align 8
  %2836 = inttoptr i64 %2834 to i32*
  %2837 = load i32, i32* %2836, align 4
  %2838 = sub i32 %2812, %2837
  %2839 = zext i32 %2838 to i64
  store i64 %2839, i64* %RCX.i1018, align 8
  %2840 = sext i32 %2838 to i64
  %2841 = shl nsw i64 %2840, 13
  store i64 %2841, i64* %RDX.i1021, align 8
  %2842 = add i64 %2841, %2807
  store i64 %2842, i64* %RAX.i1011, align 8
  %2843 = icmp ult i64 %2842, %2807
  %2844 = icmp ult i64 %2842, %2841
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
  %2853 = xor i64 %2807, %2842
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
  %2861 = lshr i64 %2807, 63
  %2862 = lshr i64 %2840, 50
  %2863 = and i64 %2862, 1
  %2864 = xor i64 %2859, %2861
  %2865 = xor i64 %2859, %2863
  %2866 = add nuw nsw i64 %2864, %2865
  %2867 = icmp eq i64 %2866, 2
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %51, align 1
  %2869 = load i64, i64* %RBP.i, align 8
  %2870 = add i64 %2869, -44
  %2871 = add i64 %2593, 127
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i32*
  %2873 = load i32, i32* %2872, align 4
  %2874 = sext i32 %2873 to i64
  store i64 %2874, i64* %RDX.i1021, align 8
  %2875 = shl nsw i64 %2874, 3
  %2876 = add i64 %2875, %2842
  %2877 = add i64 %2593, 132
  store i64 %2877, i64* %3, align 8
  %2878 = load double, double* %53, align 1
  %2879 = inttoptr i64 %2876 to double*
  %2880 = load double, double* %2879, align 8
  %2881 = fdiv double %2878, %2880
  store double %2881, double* %53, align 1
  %2882 = add i64 %2869, -16
  %2883 = add i64 %2593, 136
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2882 to i64*
  %2885 = load i64, i64* %2884, align 8
  store i64 %2885, i64* %RAX.i1011, align 8
  %2886 = add i64 %2869, -8
  %2887 = add i64 %2593, 139
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i32*
  %2889 = load i32, i32* %2888, align 4
  %2890 = add i32 %2889, -2
  %2891 = zext i32 %2890 to i64
  store i64 %2891, i64* %RCX.i1018, align 8
  %2892 = icmp ult i32 %2889, 2
  %2893 = zext i1 %2892 to i8
  store i8 %2893, i8* %46, align 1
  %2894 = and i32 %2890, 255
  %2895 = tail call i32 @llvm.ctpop.i32(i32 %2894)
  %2896 = trunc i32 %2895 to i8
  %2897 = and i8 %2896, 1
  %2898 = xor i8 %2897, 1
  store i8 %2898, i8* %47, align 1
  %2899 = xor i32 %2890, %2889
  %2900 = lshr i32 %2899, 4
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  store i8 %2902, i8* %48, align 1
  %2903 = icmp eq i32 %2890, 0
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %49, align 1
  %2905 = lshr i32 %2890, 31
  %2906 = trunc i32 %2905 to i8
  store i8 %2906, i8* %50, align 1
  %2907 = lshr i32 %2889, 31
  %2908 = xor i32 %2905, %2907
  %2909 = add nuw nsw i32 %2908, %2907
  %2910 = icmp eq i32 %2909, 2
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %51, align 1
  %2912 = add i64 %2869, -40
  %2913 = add i64 %2593, 145
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i32*
  %2915 = load i32, i32* %2914, align 4
  %2916 = sub i32 %2890, %2915
  %2917 = zext i32 %2916 to i64
  store i64 %2917, i64* %RCX.i1018, align 8
  %2918 = sext i32 %2916 to i64
  %2919 = shl nsw i64 %2918, 13
  store i64 %2919, i64* %RDX.i1021, align 8
  %2920 = add i64 %2919, %2885
  store i64 %2920, i64* %RAX.i1011, align 8
  %2921 = icmp ult i64 %2920, %2885
  %2922 = icmp ult i64 %2920, %2919
  %2923 = or i1 %2921, %2922
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %46, align 1
  %2925 = trunc i64 %2920 to i32
  %2926 = and i32 %2925, 255
  %2927 = tail call i32 @llvm.ctpop.i32(i32 %2926)
  %2928 = trunc i32 %2927 to i8
  %2929 = and i8 %2928, 1
  %2930 = xor i8 %2929, 1
  store i8 %2930, i8* %47, align 1
  %2931 = xor i64 %2885, %2920
  %2932 = lshr i64 %2931, 4
  %2933 = trunc i64 %2932 to i8
  %2934 = and i8 %2933, 1
  store i8 %2934, i8* %48, align 1
  %2935 = icmp eq i64 %2920, 0
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %49, align 1
  %2937 = lshr i64 %2920, 63
  %2938 = trunc i64 %2937 to i8
  store i8 %2938, i8* %50, align 1
  %2939 = lshr i64 %2885, 63
  %2940 = lshr i64 %2918, 50
  %2941 = and i64 %2940, 1
  %2942 = xor i64 %2937, %2939
  %2943 = xor i64 %2937, %2941
  %2944 = add nuw nsw i64 %2942, %2943
  %2945 = icmp eq i64 %2944, 2
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %51, align 1
  %2947 = load i64, i64* %RBP.i, align 8
  %2948 = add i64 %2947, -44
  %2949 = add i64 %2593, 159
  store i64 %2949, i64* %3, align 8
  %2950 = inttoptr i64 %2948 to i32*
  %2951 = load i32, i32* %2950, align 4
  %2952 = sext i32 %2951 to i64
  store i64 %2952, i64* %RDX.i1021, align 8
  %2953 = shl nsw i64 %2952, 3
  %2954 = add i64 %2953, %2920
  %2955 = add i64 %2593, 164
  store i64 %2955, i64* %3, align 8
  %2956 = load i64, i64* %54, align 1
  %2957 = inttoptr i64 %2954 to i64*
  store i64 %2956, i64* %2957, align 8
  %2958 = load i64, i64* %RBP.i, align 8
  %2959 = add i64 %2958, -44
  %2960 = load i64, i64* %3, align 8
  %2961 = add i64 %2960, 3
  store i64 %2961, i64* %3, align 8
  %2962 = inttoptr i64 %2959 to i32*
  %2963 = load i32, i32* %2962, align 4
  %2964 = add i32 %2963, 1
  %2965 = zext i32 %2964 to i64
  store i64 %2965, i64* %RAX.i1011, align 8
  %2966 = icmp eq i32 %2963, -1
  %2967 = icmp eq i32 %2964, 0
  %2968 = or i1 %2966, %2967
  %2969 = zext i1 %2968 to i8
  store i8 %2969, i8* %46, align 1
  %2970 = and i32 %2964, 255
  %2971 = tail call i32 @llvm.ctpop.i32(i32 %2970)
  %2972 = trunc i32 %2971 to i8
  %2973 = and i8 %2972, 1
  %2974 = xor i8 %2973, 1
  store i8 %2974, i8* %47, align 1
  %2975 = xor i32 %2964, %2963
  %2976 = lshr i32 %2975, 4
  %2977 = trunc i32 %2976 to i8
  %2978 = and i8 %2977, 1
  store i8 %2978, i8* %48, align 1
  %2979 = zext i1 %2967 to i8
  store i8 %2979, i8* %49, align 1
  %2980 = lshr i32 %2964, 31
  %2981 = trunc i32 %2980 to i8
  store i8 %2981, i8* %50, align 1
  %2982 = lshr i32 %2963, 31
  %2983 = xor i32 %2980, %2982
  %2984 = add nuw nsw i32 %2983, %2980
  %2985 = icmp eq i32 %2984, 2
  %2986 = zext i1 %2985 to i8
  store i8 %2986, i8* %51, align 1
  %2987 = add i64 %2960, 9
  store i64 %2987, i64* %3, align 8
  store i32 %2964, i32* %2962, align 4
  %2988 = load i64, i64* %3, align 8
  %2989 = add i64 %2988, -185
  store i64 %2989, i64* %3, align 8
  br label %block_.L_401077

block_.L_401135:                                  ; preds = %block_.L_401077
  %2990 = add i64 %2557, -40
  %2991 = add i64 %2593, 8
  store i64 %2991, i64* %3, align 8
  %2992 = inttoptr i64 %2990 to i32*
  %2993 = load i32, i32* %2992, align 4
  %2994 = add i32 %2993, 1
  %2995 = zext i32 %2994 to i64
  store i64 %2995, i64* %RAX.i1011, align 8
  %2996 = icmp eq i32 %2993, -1
  %2997 = icmp eq i32 %2994, 0
  %2998 = or i1 %2996, %2997
  %2999 = zext i1 %2998 to i8
  store i8 %2999, i8* %46, align 1
  %3000 = and i32 %2994, 255
  %3001 = tail call i32 @llvm.ctpop.i32(i32 %3000)
  %3002 = trunc i32 %3001 to i8
  %3003 = and i8 %3002, 1
  %3004 = xor i8 %3003, 1
  store i8 %3004, i8* %47, align 1
  %3005 = xor i32 %2994, %2993
  %3006 = lshr i32 %3005, 4
  %3007 = trunc i32 %3006 to i8
  %3008 = and i8 %3007, 1
  store i8 %3008, i8* %48, align 1
  %3009 = zext i1 %2997 to i8
  store i8 %3009, i8* %49, align 1
  %3010 = lshr i32 %2994, 31
  %3011 = trunc i32 %3010 to i8
  store i8 %3011, i8* %50, align 1
  %3012 = lshr i32 %2993, 31
  %3013 = xor i32 %3010, %3012
  %3014 = add nuw nsw i32 %3013, %3010
  %3015 = icmp eq i32 %3014, 2
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %51, align 1
  %3017 = add i64 %2593, 14
  store i64 %3017, i64* %3, align 8
  store i32 %2994, i32* %2992, align 4
  %3018 = load i64, i64* %3, align 8
  %3019 = add i64 %3018, -228
  store i64 %3019, i64* %3, align 8
  br label %block_.L_40105f

block_.L_401148:                                  ; preds = %block_.L_40105f
  %3020 = add i64 %2514, -36
  %3021 = add i64 %2552, 8
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3020 to i32*
  %3023 = load i32, i32* %3022, align 4
  %3024 = add i32 %3023, 1
  %3025 = zext i32 %3024 to i64
  store i64 %3025, i64* %RAX.i1011, align 8
  %3026 = icmp eq i32 %3023, -1
  %3027 = icmp eq i32 %3024, 0
  %3028 = or i1 %3026, %3027
  %3029 = zext i1 %3028 to i8
  store i8 %3029, i8* %46, align 1
  %3030 = and i32 %3024, 255
  %3031 = tail call i32 @llvm.ctpop.i32(i32 %3030)
  %3032 = trunc i32 %3031 to i8
  %3033 = and i8 %3032, 1
  %3034 = xor i8 %3033, 1
  store i8 %3034, i8* %47, align 1
  %3035 = xor i32 %3024, %3023
  %3036 = lshr i32 %3035, 4
  %3037 = trunc i32 %3036 to i8
  %3038 = and i8 %3037, 1
  store i8 %3038, i8* %48, align 1
  %3039 = zext i1 %3027 to i8
  store i8 %3039, i8* %49, align 1
  %3040 = lshr i32 %3024, 31
  %3041 = trunc i32 %3040 to i8
  store i8 %3041, i8* %50, align 1
  %3042 = lshr i32 %3023, 31
  %3043 = xor i32 %3040, %3042
  %3044 = add nuw nsw i32 %3043, %3040
  %3045 = icmp eq i32 %3044, 2
  %3046 = zext i1 %3045 to i8
  store i8 %3046, i8* %51, align 1
  %3047 = add i64 %2552, 14
  store i64 %3047, i64* %3, align 8
  store i32 %3024, i32* %3022, align 4
  %3048 = load i64, i64* %3, align 8
  %3049 = add i64 %3048, -1417
  store i64 %3049, i64* %3, align 8
  br label %block_.L_400bcd

block_.L_40115b:                                  ; preds = %block_.L_400bcd
  %3050 = add i64 %102, 1
  store i64 %3050, i64* %3, align 8
  %3051 = load i64, i64* %6, align 8
  %3052 = add i64 %3051, 8
  %3053 = inttoptr i64 %3051 to i64*
  %3054 = load i64, i64* %3053, align 8
  store i64 %3054, i64* %RBP.i, align 8
  store i64 %3052, i64* %6, align 8
  %3055 = add i64 %102, 2
  store i64 %3055, i64* %3, align 8
  %3056 = inttoptr i64 %3052 to i64*
  %3057 = load i64, i64* %3056, align 8
  store i64 %3057, i64* %3, align 8
  %3058 = add i64 %3051, 16
  store i64 %3058, i64* %6, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40115b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0xd___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bf3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d19(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400be0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400e92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jge_.L_400e7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_400db9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400da6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400fe0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_400fcd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400eac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401058(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0xd___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd___rax__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd___rax__rdx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fe7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401148(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_401135(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_mulsd___rax__rdx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401077(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40113a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40105f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40114d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400bcd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
