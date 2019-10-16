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
define %struct.Memory* @kernel_3mm(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %R15.i458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i458, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i456, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %RBX.i454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %20 = load i64, i64* %RBX.i454, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  store i64 %23, i64* %6, align 8
  %RAX.i451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, 56
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %26 to i64*
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %RAX.i451, align 8
  %R10.i449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %31 = add i64 %25, 48
  %32 = add i64 %27, 8
  store i64 %32, i64* %3, align 8
  %33 = inttoptr i64 %31 to i64*
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %R10.i449, align 8
  %R11.i446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %35 = add i64 %25, 40
  %36 = add i64 %27, 12
  store i64 %36, i64* %3, align 8
  %37 = inttoptr i64 %35 to i64*
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %R11.i446, align 8
  %39 = add i64 %25, 32
  %40 = add i64 %27, 16
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RBX.i454, align 8
  %43 = add i64 %25, 24
  %44 = add i64 %27, 20
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %43 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %R14.i456, align 8
  %47 = add i64 %25, 16
  %48 = add i64 %27, 24
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %47 to i64*
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %R15.i458, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %51 to i32*
  %52 = add i64 %25, -28
  %53 = load i32, i32* %EDI.i, align 4
  %54 = add i64 %27, 27
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %56 to i32*
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -32
  %59 = load i32, i32* %ESI.i, align 4
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %63 to i32*
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -36
  %66 = load i32, i32* %EDX.i, align 4
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 3
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i32*
  store i32 %66, i32* %69, align 4
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i = bitcast %union.anon* %70 to i32*
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -40
  %73 = load i32, i32* %ECX.i, align 4
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 3
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %72 to i32*
  store i32 %73, i32* %76, align 4
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %77 to i32*
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -44
  %80 = load i32, i32* %R8D.i, align 4
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %83, align 4
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -56
  %86 = load i64, i64* %R9.i, align 8
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -64
  %92 = load i64, i64* %R15.i458, align 8
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %95, align 8
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -72
  %98 = load i64, i64* %R14.i456, align 8
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 4
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %97 to i64*
  store i64 %98, i64* %101, align 8
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -80
  %104 = load i64, i64* %RBX.i454, align 8
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %103 to i64*
  store i64 %104, i64* %107, align 8
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -88
  %110 = load i64, i64* %R11.i446, align 8
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %113, align 8
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -96
  %116 = load i64, i64* %R10.i449, align 8
  %117 = load i64, i64* %3, align 8
  %118 = add i64 %117, 4
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %115 to i64*
  store i64 %116, i64* %119, align 8
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -104
  %122 = load i64, i64* %RAX.i451, align 8
  %123 = load i64, i64* %3, align 8
  %124 = add i64 %123, 4
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %121 to i64*
  store i64 %122, i64* %125, align 8
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -108
  %128 = load i64, i64* %3, align 8
  %129 = add i64 %128, 7
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %127 to i32*
  store i32 0, i32* %130, align 4
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %RCX.i381 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %139 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %137, i64 0, i32 0, i32 0, i32 0, i64 0
  %140 = bitcast %union.VectorReg* %137 to double*
  %141 = bitcast i64* %138 to double*
  %.pre = load i64, i64* %3, align 8
  %142 = bitcast %union.VectorReg* %137 to <4 x i32>*
  br label %block_.L_400e24

block_.L_400e24:                                  ; preds = %block_.L_400edf, %entry
  %143 = phi i64 [ %542, %block_.L_400edf ], [ %.pre, %entry ]
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -108
  %146 = add i64 %143, 3
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RAX.i451, align 8
  %150 = add i64 %144, -28
  %151 = add i64 %143, 6
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = sub i32 %148, %153
  %155 = icmp ult i32 %148, %153
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %131, align 1
  %157 = and i32 %154, 255
  %158 = tail call i32 @llvm.ctpop.i32(i32 %157)
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  store i8 %161, i8* %132, align 1
  %162 = xor i32 %153, %148
  %163 = xor i32 %162, %154
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %133, align 1
  %167 = icmp eq i32 %154, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %134, align 1
  %169 = lshr i32 %154, 31
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %135, align 1
  %171 = lshr i32 %148, 31
  %172 = lshr i32 %153, 31
  %173 = xor i32 %172, %171
  %174 = xor i32 %169, %171
  %175 = add nuw nsw i32 %174, %173
  %176 = icmp eq i32 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %136, align 1
  %178 = icmp ne i8 %170, 0
  %179 = xor i1 %178, %176
  %.v59 = select i1 %179, i64 12, i64 206
  %180 = add i64 %143, %.v59
  store i64 %180, i64* %3, align 8
  br i1 %179, label %block_400e30, label %block_.L_400ef2

block_400e30:                                     ; preds = %block_.L_400e24
  %181 = add i64 %144, -112
  %182 = add i64 %180, 7
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  store i32 0, i32* %183, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_400e37

block_.L_400e37:                                  ; preds = %block_.L_400ecc, %block_400e30
  %184 = phi i64 [ %512, %block_.L_400ecc ], [ %.pre52, %block_400e30 ]
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -112
  %187 = add i64 %184, 3
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RAX.i451, align 8
  %191 = add i64 %185, -32
  %192 = add i64 %184, 6
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = sub i32 %189, %194
  %196 = icmp ult i32 %189, %194
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %131, align 1
  %198 = and i32 %195, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198)
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %132, align 1
  %203 = xor i32 %194, %189
  %204 = xor i32 %203, %195
  %205 = lshr i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  store i8 %207, i8* %133, align 1
  %208 = icmp eq i32 %195, 0
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %134, align 1
  %210 = lshr i32 %195, 31
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %135, align 1
  %212 = lshr i32 %189, 31
  %213 = lshr i32 %194, 31
  %214 = xor i32 %213, %212
  %215 = xor i32 %210, %212
  %216 = add nuw nsw i32 %215, %214
  %217 = icmp eq i32 %216, 2
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %136, align 1
  %219 = icmp ne i8 %211, 0
  %220 = xor i1 %219, %217
  %.v57 = select i1 %220, i64 12, i64 168
  %221 = add i64 %184, %.v57
  store i64 %221, i64* %3, align 8
  br i1 %220, label %block_400e43, label %block_.L_400edf

block_400e43:                                     ; preds = %block_.L_400e37
  store <4 x i32> zeroinitializer, <4 x i32>* %142, align 1
  %222 = add i64 %185, -56
  %223 = add i64 %221, 7
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %RAX.i451, align 8
  %226 = add i64 %185, -108
  %227 = add i64 %221, 11
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = shl nsw i64 %230, 13
  store i64 %231, i64* %RCX.i381, align 8
  %232 = add i64 %231, %225
  store i64 %232, i64* %RAX.i451, align 8
  %233 = icmp ult i64 %232, %225
  %234 = icmp ult i64 %232, %231
  %235 = or i1 %233, %234
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %131, align 1
  %237 = trunc i64 %232 to i32
  %238 = and i32 %237, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %132, align 1
  %243 = xor i64 %225, %232
  %244 = lshr i64 %243, 4
  %245 = trunc i64 %244 to i8
  %246 = and i8 %245, 1
  store i8 %246, i8* %133, align 1
  %247 = icmp eq i64 %232, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %134, align 1
  %249 = lshr i64 %232, 63
  %250 = trunc i64 %249 to i8
  store i8 %250, i8* %135, align 1
  %251 = lshr i64 %225, 63
  %252 = lshr i64 %230, 50
  %253 = and i64 %252, 1
  %254 = xor i64 %249, %251
  %255 = xor i64 %249, %253
  %256 = add nuw nsw i64 %254, %255
  %257 = icmp eq i64 %256, 2
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %136, align 1
  %259 = add i64 %221, 22
  store i64 %259, i64* %3, align 8
  %260 = load i32, i32* %188, align 4
  %261 = sext i32 %260 to i64
  store i64 %261, i64* %RCX.i381, align 8
  %262 = shl nsw i64 %261, 3
  %263 = add i64 %262, %232
  %264 = add i64 %221, 27
  store i64 %264, i64* %3, align 8
  %265 = load i64, i64* %139, align 1
  %266 = inttoptr i64 %263 to i64*
  store i64 %265, i64* %266, align 8
  %267 = load i64, i64* %RBP.i, align 8
  %268 = add i64 %267, -116
  %269 = load i64, i64* %3, align 8
  %270 = add i64 %269, 7
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %268 to i32*
  store i32 0, i32* %271, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_400e65

block_.L_400e65:                                  ; preds = %block_400e71, %block_400e43
  %272 = phi i64 [ %482, %block_400e71 ], [ %.pre53, %block_400e43 ]
  %273 = load i64, i64* %RBP.i, align 8
  %274 = add i64 %273, -116
  %275 = add i64 %272, 3
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = zext i32 %277 to i64
  store i64 %278, i64* %RAX.i451, align 8
  %279 = add i64 %273, -36
  %280 = add i64 %272, 6
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = sub i32 %277, %282
  %284 = icmp ult i32 %277, %282
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %131, align 1
  %286 = and i32 %283, 255
  %287 = tail call i32 @llvm.ctpop.i32(i32 %286)
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  store i8 %290, i8* %132, align 1
  %291 = xor i32 %282, %277
  %292 = xor i32 %291, %283
  %293 = lshr i32 %292, 4
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  store i8 %295, i8* %133, align 1
  %296 = icmp eq i32 %283, 0
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %134, align 1
  %298 = lshr i32 %283, 31
  %299 = trunc i32 %298 to i8
  store i8 %299, i8* %135, align 1
  %300 = lshr i32 %277, 31
  %301 = lshr i32 %282, 31
  %302 = xor i32 %301, %300
  %303 = xor i32 %298, %300
  %304 = add nuw nsw i32 %303, %302
  %305 = icmp eq i32 %304, 2
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %136, align 1
  %307 = icmp ne i8 %299, 0
  %308 = xor i1 %307, %305
  %.v58 = select i1 %308, i64 12, i64 103
  %309 = add i64 %272, %.v58
  store i64 %309, i64* %3, align 8
  br i1 %308, label %block_400e71, label %block_.L_400ecc

block_400e71:                                     ; preds = %block_.L_400e65
  %310 = add i64 %273, -64
  %311 = add i64 %309, 4
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %RAX.i451, align 8
  %314 = add i64 %273, -108
  %315 = add i64 %309, 8
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i32*
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = shl nsw i64 %318, 13
  store i64 %319, i64* %RCX.i381, align 8
  %320 = add i64 %319, %313
  store i64 %320, i64* %RAX.i451, align 8
  %321 = icmp ult i64 %320, %313
  %322 = icmp ult i64 %320, %319
  %323 = or i1 %321, %322
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %131, align 1
  %325 = trunc i64 %320 to i32
  %326 = and i32 %325, 255
  %327 = tail call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %132, align 1
  %331 = xor i64 %313, %320
  %332 = lshr i64 %331, 4
  %333 = trunc i64 %332 to i8
  %334 = and i8 %333, 1
  store i8 %334, i8* %133, align 1
  %335 = icmp eq i64 %320, 0
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %134, align 1
  %337 = lshr i64 %320, 63
  %338 = trunc i64 %337 to i8
  store i8 %338, i8* %135, align 1
  %339 = lshr i64 %313, 63
  %340 = lshr i64 %318, 50
  %341 = and i64 %340, 1
  %342 = xor i64 %337, %339
  %343 = xor i64 %337, %341
  %344 = add nuw nsw i64 %342, %343
  %345 = icmp eq i64 %344, 2
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %136, align 1
  %347 = add i64 %309, 19
  store i64 %347, i64* %3, align 8
  %348 = load i32, i32* %276, align 4
  %349 = sext i32 %348 to i64
  store i64 %349, i64* %RCX.i381, align 8
  %350 = shl nsw i64 %349, 3
  %351 = add i64 %350, %320
  %352 = add i64 %309, 24
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i64*
  %354 = load i64, i64* %353, align 8
  store i64 %354, i64* %139, align 1
  store double 0.000000e+00, double* %141, align 1
  %355 = add i64 %273, -72
  %356 = add i64 %309, 28
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %RAX.i451, align 8
  %359 = add i64 %309, 32
  store i64 %359, i64* %3, align 8
  %360 = load i32, i32* %276, align 4
  %361 = sext i32 %360 to i64
  %362 = shl nsw i64 %361, 13
  store i64 %362, i64* %RCX.i381, align 8
  %363 = add i64 %362, %358
  store i64 %363, i64* %RAX.i451, align 8
  %364 = icmp ult i64 %363, %358
  %365 = icmp ult i64 %363, %362
  %366 = or i1 %364, %365
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %131, align 1
  %368 = trunc i64 %363 to i32
  %369 = and i32 %368, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369)
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %132, align 1
  %374 = xor i64 %358, %363
  %375 = lshr i64 %374, 4
  %376 = trunc i64 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %133, align 1
  %378 = icmp eq i64 %363, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %134, align 1
  %380 = lshr i64 %363, 63
  %381 = trunc i64 %380 to i8
  store i8 %381, i8* %135, align 1
  %382 = lshr i64 %358, 63
  %383 = lshr i64 %361, 50
  %384 = and i64 %383, 1
  %385 = xor i64 %380, %382
  %386 = xor i64 %380, %384
  %387 = add nuw nsw i64 %385, %386
  %388 = icmp eq i64 %387, 2
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %136, align 1
  %390 = load i64, i64* %RBP.i, align 8
  %391 = add i64 %390, -112
  %392 = add i64 %309, 43
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  store i64 %395, i64* %RCX.i381, align 8
  %396 = shl nsw i64 %395, 3
  %397 = add i64 %396, %363
  %398 = add i64 %309, 48
  store i64 %398, i64* %3, align 8
  %399 = bitcast i64 %354 to double
  %400 = inttoptr i64 %397 to double*
  %401 = load double, double* %400, align 8
  %402 = fmul double %399, %401
  store double %402, double* %140, align 1
  store i64 0, i64* %138, align 1
  %403 = add i64 %390, -56
  %404 = add i64 %309, 52
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i64*
  %406 = load i64, i64* %405, align 8
  store i64 %406, i64* %RAX.i451, align 8
  %407 = add i64 %390, -108
  %408 = add i64 %309, 56
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = sext i32 %410 to i64
  %412 = shl nsw i64 %411, 13
  store i64 %412, i64* %RCX.i381, align 8
  %413 = add i64 %412, %406
  store i64 %413, i64* %RAX.i451, align 8
  %414 = icmp ult i64 %413, %406
  %415 = icmp ult i64 %413, %412
  %416 = or i1 %414, %415
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %131, align 1
  %418 = trunc i64 %413 to i32
  %419 = and i32 %418, 255
  %420 = tail call i32 @llvm.ctpop.i32(i32 %419)
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  %423 = xor i8 %422, 1
  store i8 %423, i8* %132, align 1
  %424 = xor i64 %406, %413
  %425 = lshr i64 %424, 4
  %426 = trunc i64 %425 to i8
  %427 = and i8 %426, 1
  store i8 %427, i8* %133, align 1
  %428 = icmp eq i64 %413, 0
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %134, align 1
  %430 = lshr i64 %413, 63
  %431 = trunc i64 %430 to i8
  store i8 %431, i8* %135, align 1
  %432 = lshr i64 %406, 63
  %433 = lshr i64 %411, 50
  %434 = and i64 %433, 1
  %435 = xor i64 %430, %432
  %436 = xor i64 %430, %434
  %437 = add nuw nsw i64 %435, %436
  %438 = icmp eq i64 %437, 2
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %136, align 1
  %440 = add i64 %309, 67
  store i64 %440, i64* %3, align 8
  %441 = load i32, i32* %393, align 4
  %442 = sext i32 %441 to i64
  store i64 %442, i64* %RCX.i381, align 8
  %443 = shl nsw i64 %442, 3
  %444 = add i64 %443, %413
  %445 = add i64 %309, 72
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to double*
  %447 = load double, double* %446, align 8
  %448 = fadd double %402, %447
  store double %448, double* %140, align 1
  store i64 0, i64* %138, align 1
  %449 = add i64 %309, 77
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %444 to double*
  store double %448, double* %450, align 8
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -116
  %453 = load i64, i64* %3, align 8
  %454 = add i64 %453, 3
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %452 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = add i32 %456, 1
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RAX.i451, align 8
  %459 = icmp eq i32 %456, -1
  %460 = icmp eq i32 %457, 0
  %461 = or i1 %459, %460
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %131, align 1
  %463 = and i32 %457, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463)
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %132, align 1
  %468 = xor i32 %457, %456
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %133, align 1
  %472 = zext i1 %460 to i8
  store i8 %472, i8* %134, align 1
  %473 = lshr i32 %457, 31
  %474 = trunc i32 %473 to i8
  store i8 %474, i8* %135, align 1
  %475 = lshr i32 %456, 31
  %476 = xor i32 %473, %475
  %477 = add nuw nsw i32 %476, %473
  %478 = icmp eq i32 %477, 2
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %136, align 1
  %480 = add i64 %453, 9
  store i64 %480, i64* %3, align 8
  store i32 %457, i32* %455, align 4
  %481 = load i64, i64* %3, align 8
  %482 = add i64 %481, -98
  store i64 %482, i64* %3, align 8
  br label %block_.L_400e65

block_.L_400ecc:                                  ; preds = %block_.L_400e65
  %483 = add i64 %273, -112
  %484 = add i64 %309, 8
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i32*
  %486 = load i32, i32* %485, align 4
  %487 = add i32 %486, 1
  %488 = zext i32 %487 to i64
  store i64 %488, i64* %RAX.i451, align 8
  %489 = icmp eq i32 %486, -1
  %490 = icmp eq i32 %487, 0
  %491 = or i1 %489, %490
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %131, align 1
  %493 = and i32 %487, 255
  %494 = tail call i32 @llvm.ctpop.i32(i32 %493)
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = xor i8 %496, 1
  store i8 %497, i8* %132, align 1
  %498 = xor i32 %487, %486
  %499 = lshr i32 %498, 4
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  store i8 %501, i8* %133, align 1
  %502 = zext i1 %490 to i8
  store i8 %502, i8* %134, align 1
  %503 = lshr i32 %487, 31
  %504 = trunc i32 %503 to i8
  store i8 %504, i8* %135, align 1
  %505 = lshr i32 %486, 31
  %506 = xor i32 %503, %505
  %507 = add nuw nsw i32 %506, %503
  %508 = icmp eq i32 %507, 2
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %136, align 1
  %510 = add i64 %309, 14
  store i64 %510, i64* %3, align 8
  store i32 %487, i32* %485, align 4
  %511 = load i64, i64* %3, align 8
  %512 = add i64 %511, -163
  store i64 %512, i64* %3, align 8
  br label %block_.L_400e37

block_.L_400edf:                                  ; preds = %block_.L_400e37
  %513 = add i64 %185, -108
  %514 = add i64 %221, 8
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = add i32 %516, 1
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RAX.i451, align 8
  %519 = icmp eq i32 %516, -1
  %520 = icmp eq i32 %517, 0
  %521 = or i1 %519, %520
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %131, align 1
  %523 = and i32 %517, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %132, align 1
  %528 = xor i32 %517, %516
  %529 = lshr i32 %528, 4
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  store i8 %531, i8* %133, align 1
  %532 = zext i1 %520 to i8
  store i8 %532, i8* %134, align 1
  %533 = lshr i32 %517, 31
  %534 = trunc i32 %533 to i8
  store i8 %534, i8* %135, align 1
  %535 = lshr i32 %516, 31
  %536 = xor i32 %533, %535
  %537 = add nuw nsw i32 %536, %533
  %538 = icmp eq i32 %537, 2
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %136, align 1
  %540 = add i64 %221, 14
  store i64 %540, i64* %3, align 8
  store i32 %517, i32* %515, align 4
  %541 = load i64, i64* %3, align 8
  %542 = add i64 %541, -201
  store i64 %542, i64* %3, align 8
  br label %block_.L_400e24

block_.L_400ef2:                                  ; preds = %block_.L_400e24
  %543 = add i64 %180, 7
  store i64 %543, i64* %3, align 8
  store i32 0, i32* %147, align 4
  %.pre46 = load i64, i64* %3, align 8
  %544 = bitcast %union.VectorReg* %137 to <4 x i32>*
  br label %block_.L_400ef9

block_.L_400ef9:                                  ; preds = %block_.L_400fb4, %block_.L_400ef2
  %545 = phi i64 [ %944, %block_.L_400fb4 ], [ %.pre46, %block_.L_400ef2 ]
  %546 = load i64, i64* %RBP.i, align 8
  %547 = add i64 %546, -108
  %548 = add i64 %545, 3
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = zext i32 %550 to i64
  store i64 %551, i64* %RAX.i451, align 8
  %552 = add i64 %546, -32
  %553 = add i64 %545, 6
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = sub i32 %550, %555
  %557 = icmp ult i32 %550, %555
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %131, align 1
  %559 = and i32 %556, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559)
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %132, align 1
  %564 = xor i32 %555, %550
  %565 = xor i32 %564, %556
  %566 = lshr i32 %565, 4
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  store i8 %568, i8* %133, align 1
  %569 = icmp eq i32 %556, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %134, align 1
  %571 = lshr i32 %556, 31
  %572 = trunc i32 %571 to i8
  store i8 %572, i8* %135, align 1
  %573 = lshr i32 %550, 31
  %574 = lshr i32 %555, 31
  %575 = xor i32 %574, %573
  %576 = xor i32 %571, %573
  %577 = add nuw nsw i32 %576, %575
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %136, align 1
  %580 = icmp ne i8 %572, 0
  %581 = xor i1 %580, %578
  %.v60 = select i1 %581, i64 12, i64 206
  %582 = add i64 %545, %.v60
  store i64 %582, i64* %3, align 8
  br i1 %581, label %block_400f05, label %block_.L_400fc7

block_400f05:                                     ; preds = %block_.L_400ef9
  %583 = add i64 %546, -112
  %584 = add i64 %582, 7
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i32*
  store i32 0, i32* %585, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_400f0c

block_.L_400f0c:                                  ; preds = %block_.L_400fa1, %block_400f05
  %586 = phi i64 [ %914, %block_.L_400fa1 ], [ %.pre50, %block_400f05 ]
  %587 = load i64, i64* %RBP.i, align 8
  %588 = add i64 %587, -112
  %589 = add i64 %586, 3
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RAX.i451, align 8
  %593 = add i64 %587, -40
  %594 = add i64 %586, 6
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = sub i32 %591, %596
  %598 = icmp ult i32 %591, %596
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %131, align 1
  %600 = and i32 %597, 255
  %601 = tail call i32 @llvm.ctpop.i32(i32 %600)
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %132, align 1
  %605 = xor i32 %596, %591
  %606 = xor i32 %605, %597
  %607 = lshr i32 %606, 4
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  store i8 %609, i8* %133, align 1
  %610 = icmp eq i32 %597, 0
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %134, align 1
  %612 = lshr i32 %597, 31
  %613 = trunc i32 %612 to i8
  store i8 %613, i8* %135, align 1
  %614 = lshr i32 %591, 31
  %615 = lshr i32 %596, 31
  %616 = xor i32 %615, %614
  %617 = xor i32 %612, %614
  %618 = add nuw nsw i32 %617, %616
  %619 = icmp eq i32 %618, 2
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %136, align 1
  %621 = icmp ne i8 %613, 0
  %622 = xor i1 %621, %619
  %.v55 = select i1 %622, i64 12, i64 168
  %623 = add i64 %586, %.v55
  store i64 %623, i64* %3, align 8
  br i1 %622, label %block_400f18, label %block_.L_400fb4

block_400f18:                                     ; preds = %block_.L_400f0c
  store <4 x i32> zeroinitializer, <4 x i32>* %544, align 1
  %624 = add i64 %587, -80
  %625 = add i64 %623, 7
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i64*
  %627 = load i64, i64* %626, align 8
  store i64 %627, i64* %RAX.i451, align 8
  %628 = add i64 %587, -108
  %629 = add i64 %623, 11
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = sext i32 %631 to i64
  %633 = shl nsw i64 %632, 13
  store i64 %633, i64* %RCX.i381, align 8
  %634 = add i64 %633, %627
  store i64 %634, i64* %RAX.i451, align 8
  %635 = icmp ult i64 %634, %627
  %636 = icmp ult i64 %634, %633
  %637 = or i1 %635, %636
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %131, align 1
  %639 = trunc i64 %634 to i32
  %640 = and i32 %639, 255
  %641 = tail call i32 @llvm.ctpop.i32(i32 %640)
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  store i8 %644, i8* %132, align 1
  %645 = xor i64 %627, %634
  %646 = lshr i64 %645, 4
  %647 = trunc i64 %646 to i8
  %648 = and i8 %647, 1
  store i8 %648, i8* %133, align 1
  %649 = icmp eq i64 %634, 0
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %134, align 1
  %651 = lshr i64 %634, 63
  %652 = trunc i64 %651 to i8
  store i8 %652, i8* %135, align 1
  %653 = lshr i64 %627, 63
  %654 = lshr i64 %632, 50
  %655 = and i64 %654, 1
  %656 = xor i64 %651, %653
  %657 = xor i64 %651, %655
  %658 = add nuw nsw i64 %656, %657
  %659 = icmp eq i64 %658, 2
  %660 = zext i1 %659 to i8
  store i8 %660, i8* %136, align 1
  %661 = add i64 %623, 22
  store i64 %661, i64* %3, align 8
  %662 = load i32, i32* %590, align 4
  %663 = sext i32 %662 to i64
  store i64 %663, i64* %RCX.i381, align 8
  %664 = shl nsw i64 %663, 3
  %665 = add i64 %664, %634
  %666 = add i64 %623, 27
  store i64 %666, i64* %3, align 8
  %667 = load i64, i64* %139, align 1
  %668 = inttoptr i64 %665 to i64*
  store i64 %667, i64* %668, align 8
  %669 = load i64, i64* %RBP.i, align 8
  %670 = add i64 %669, -116
  %671 = load i64, i64* %3, align 8
  %672 = add i64 %671, 7
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %670 to i32*
  store i32 0, i32* %673, align 4
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_400f3a

block_.L_400f3a:                                  ; preds = %block_400f46, %block_400f18
  %674 = phi i64 [ %884, %block_400f46 ], [ %.pre51, %block_400f18 ]
  %675 = load i64, i64* %RBP.i, align 8
  %676 = add i64 %675, -116
  %677 = add i64 %674, 3
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = zext i32 %679 to i64
  store i64 %680, i64* %RAX.i451, align 8
  %681 = add i64 %675, -44
  %682 = add i64 %674, 6
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i32*
  %684 = load i32, i32* %683, align 4
  %685 = sub i32 %679, %684
  %686 = icmp ult i32 %679, %684
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %131, align 1
  %688 = and i32 %685, 255
  %689 = tail call i32 @llvm.ctpop.i32(i32 %688)
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  %692 = xor i8 %691, 1
  store i8 %692, i8* %132, align 1
  %693 = xor i32 %684, %679
  %694 = xor i32 %693, %685
  %695 = lshr i32 %694, 4
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  store i8 %697, i8* %133, align 1
  %698 = icmp eq i32 %685, 0
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %134, align 1
  %700 = lshr i32 %685, 31
  %701 = trunc i32 %700 to i8
  store i8 %701, i8* %135, align 1
  %702 = lshr i32 %679, 31
  %703 = lshr i32 %684, 31
  %704 = xor i32 %703, %702
  %705 = xor i32 %700, %702
  %706 = add nuw nsw i32 %705, %704
  %707 = icmp eq i32 %706, 2
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %136, align 1
  %709 = icmp ne i8 %701, 0
  %710 = xor i1 %709, %707
  %.v56 = select i1 %710, i64 12, i64 103
  %711 = add i64 %674, %.v56
  store i64 %711, i64* %3, align 8
  br i1 %710, label %block_400f46, label %block_.L_400fa1

block_400f46:                                     ; preds = %block_.L_400f3a
  %712 = add i64 %675, -88
  %713 = add i64 %711, 4
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i64*
  %715 = load i64, i64* %714, align 8
  store i64 %715, i64* %RAX.i451, align 8
  %716 = add i64 %675, -108
  %717 = add i64 %711, 8
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i32*
  %719 = load i32, i32* %718, align 4
  %720 = sext i32 %719 to i64
  %721 = shl nsw i64 %720, 13
  store i64 %721, i64* %RCX.i381, align 8
  %722 = add i64 %721, %715
  store i64 %722, i64* %RAX.i451, align 8
  %723 = icmp ult i64 %722, %715
  %724 = icmp ult i64 %722, %721
  %725 = or i1 %723, %724
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %131, align 1
  %727 = trunc i64 %722 to i32
  %728 = and i32 %727, 255
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728)
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %132, align 1
  %733 = xor i64 %715, %722
  %734 = lshr i64 %733, 4
  %735 = trunc i64 %734 to i8
  %736 = and i8 %735, 1
  store i8 %736, i8* %133, align 1
  %737 = icmp eq i64 %722, 0
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %134, align 1
  %739 = lshr i64 %722, 63
  %740 = trunc i64 %739 to i8
  store i8 %740, i8* %135, align 1
  %741 = lshr i64 %715, 63
  %742 = lshr i64 %720, 50
  %743 = and i64 %742, 1
  %744 = xor i64 %739, %741
  %745 = xor i64 %739, %743
  %746 = add nuw nsw i64 %744, %745
  %747 = icmp eq i64 %746, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %136, align 1
  %749 = add i64 %711, 19
  store i64 %749, i64* %3, align 8
  %750 = load i32, i32* %678, align 4
  %751 = sext i32 %750 to i64
  store i64 %751, i64* %RCX.i381, align 8
  %752 = shl nsw i64 %751, 3
  %753 = add i64 %752, %722
  %754 = add i64 %711, 24
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i64*
  %756 = load i64, i64* %755, align 8
  store i64 %756, i64* %139, align 1
  store double 0.000000e+00, double* %141, align 1
  %757 = add i64 %675, -96
  %758 = add i64 %711, 28
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to i64*
  %760 = load i64, i64* %759, align 8
  store i64 %760, i64* %RAX.i451, align 8
  %761 = add i64 %711, 32
  store i64 %761, i64* %3, align 8
  %762 = load i32, i32* %678, align 4
  %763 = sext i32 %762 to i64
  %764 = shl nsw i64 %763, 13
  store i64 %764, i64* %RCX.i381, align 8
  %765 = add i64 %764, %760
  store i64 %765, i64* %RAX.i451, align 8
  %766 = icmp ult i64 %765, %760
  %767 = icmp ult i64 %765, %764
  %768 = or i1 %766, %767
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %131, align 1
  %770 = trunc i64 %765 to i32
  %771 = and i32 %770, 255
  %772 = tail call i32 @llvm.ctpop.i32(i32 %771)
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = xor i8 %774, 1
  store i8 %775, i8* %132, align 1
  %776 = xor i64 %760, %765
  %777 = lshr i64 %776, 4
  %778 = trunc i64 %777 to i8
  %779 = and i8 %778, 1
  store i8 %779, i8* %133, align 1
  %780 = icmp eq i64 %765, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %134, align 1
  %782 = lshr i64 %765, 63
  %783 = trunc i64 %782 to i8
  store i8 %783, i8* %135, align 1
  %784 = lshr i64 %760, 63
  %785 = lshr i64 %763, 50
  %786 = and i64 %785, 1
  %787 = xor i64 %782, %784
  %788 = xor i64 %782, %786
  %789 = add nuw nsw i64 %787, %788
  %790 = icmp eq i64 %789, 2
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %136, align 1
  %792 = load i64, i64* %RBP.i, align 8
  %793 = add i64 %792, -112
  %794 = add i64 %711, 43
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i32*
  %796 = load i32, i32* %795, align 4
  %797 = sext i32 %796 to i64
  store i64 %797, i64* %RCX.i381, align 8
  %798 = shl nsw i64 %797, 3
  %799 = add i64 %798, %765
  %800 = add i64 %711, 48
  store i64 %800, i64* %3, align 8
  %801 = bitcast i64 %756 to double
  %802 = inttoptr i64 %799 to double*
  %803 = load double, double* %802, align 8
  %804 = fmul double %801, %803
  store double %804, double* %140, align 1
  store i64 0, i64* %138, align 1
  %805 = add i64 %792, -80
  %806 = add i64 %711, 52
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i64*
  %808 = load i64, i64* %807, align 8
  store i64 %808, i64* %RAX.i451, align 8
  %809 = add i64 %792, -108
  %810 = add i64 %711, 56
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = sext i32 %812 to i64
  %814 = shl nsw i64 %813, 13
  store i64 %814, i64* %RCX.i381, align 8
  %815 = add i64 %814, %808
  store i64 %815, i64* %RAX.i451, align 8
  %816 = icmp ult i64 %815, %808
  %817 = icmp ult i64 %815, %814
  %818 = or i1 %816, %817
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %131, align 1
  %820 = trunc i64 %815 to i32
  %821 = and i32 %820, 255
  %822 = tail call i32 @llvm.ctpop.i32(i32 %821)
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = xor i8 %824, 1
  store i8 %825, i8* %132, align 1
  %826 = xor i64 %808, %815
  %827 = lshr i64 %826, 4
  %828 = trunc i64 %827 to i8
  %829 = and i8 %828, 1
  store i8 %829, i8* %133, align 1
  %830 = icmp eq i64 %815, 0
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %134, align 1
  %832 = lshr i64 %815, 63
  %833 = trunc i64 %832 to i8
  store i8 %833, i8* %135, align 1
  %834 = lshr i64 %808, 63
  %835 = lshr i64 %813, 50
  %836 = and i64 %835, 1
  %837 = xor i64 %832, %834
  %838 = xor i64 %832, %836
  %839 = add nuw nsw i64 %837, %838
  %840 = icmp eq i64 %839, 2
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %136, align 1
  %842 = add i64 %711, 67
  store i64 %842, i64* %3, align 8
  %843 = load i32, i32* %795, align 4
  %844 = sext i32 %843 to i64
  store i64 %844, i64* %RCX.i381, align 8
  %845 = shl nsw i64 %844, 3
  %846 = add i64 %845, %815
  %847 = add i64 %711, 72
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to double*
  %849 = load double, double* %848, align 8
  %850 = fadd double %804, %849
  store double %850, double* %140, align 1
  store i64 0, i64* %138, align 1
  %851 = add i64 %711, 77
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %846 to double*
  store double %850, double* %852, align 8
  %853 = load i64, i64* %RBP.i, align 8
  %854 = add i64 %853, -116
  %855 = load i64, i64* %3, align 8
  %856 = add i64 %855, 3
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %854 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = add i32 %858, 1
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RAX.i451, align 8
  %861 = icmp eq i32 %858, -1
  %862 = icmp eq i32 %859, 0
  %863 = or i1 %861, %862
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %131, align 1
  %865 = and i32 %859, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %132, align 1
  %870 = xor i32 %859, %858
  %871 = lshr i32 %870, 4
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  store i8 %873, i8* %133, align 1
  %874 = zext i1 %862 to i8
  store i8 %874, i8* %134, align 1
  %875 = lshr i32 %859, 31
  %876 = trunc i32 %875 to i8
  store i8 %876, i8* %135, align 1
  %877 = lshr i32 %858, 31
  %878 = xor i32 %875, %877
  %879 = add nuw nsw i32 %878, %875
  %880 = icmp eq i32 %879, 2
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %136, align 1
  %882 = add i64 %855, 9
  store i64 %882, i64* %3, align 8
  store i32 %859, i32* %857, align 4
  %883 = load i64, i64* %3, align 8
  %884 = add i64 %883, -98
  store i64 %884, i64* %3, align 8
  br label %block_.L_400f3a

block_.L_400fa1:                                  ; preds = %block_.L_400f3a
  %885 = add i64 %675, -112
  %886 = add i64 %711, 8
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to i32*
  %888 = load i32, i32* %887, align 4
  %889 = add i32 %888, 1
  %890 = zext i32 %889 to i64
  store i64 %890, i64* %RAX.i451, align 8
  %891 = icmp eq i32 %888, -1
  %892 = icmp eq i32 %889, 0
  %893 = or i1 %891, %892
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %131, align 1
  %895 = and i32 %889, 255
  %896 = tail call i32 @llvm.ctpop.i32(i32 %895)
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  %899 = xor i8 %898, 1
  store i8 %899, i8* %132, align 1
  %900 = xor i32 %889, %888
  %901 = lshr i32 %900, 4
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  store i8 %903, i8* %133, align 1
  %904 = zext i1 %892 to i8
  store i8 %904, i8* %134, align 1
  %905 = lshr i32 %889, 31
  %906 = trunc i32 %905 to i8
  store i8 %906, i8* %135, align 1
  %907 = lshr i32 %888, 31
  %908 = xor i32 %905, %907
  %909 = add nuw nsw i32 %908, %905
  %910 = icmp eq i32 %909, 2
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %136, align 1
  %912 = add i64 %711, 14
  store i64 %912, i64* %3, align 8
  store i32 %889, i32* %887, align 4
  %913 = load i64, i64* %3, align 8
  %914 = add i64 %913, -163
  store i64 %914, i64* %3, align 8
  br label %block_.L_400f0c

block_.L_400fb4:                                  ; preds = %block_.L_400f0c
  %915 = add i64 %587, -108
  %916 = add i64 %623, 8
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = add i32 %918, 1
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RAX.i451, align 8
  %921 = icmp eq i32 %918, -1
  %922 = icmp eq i32 %919, 0
  %923 = or i1 %921, %922
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %131, align 1
  %925 = and i32 %919, 255
  %926 = tail call i32 @llvm.ctpop.i32(i32 %925)
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  store i8 %929, i8* %132, align 1
  %930 = xor i32 %919, %918
  %931 = lshr i32 %930, 4
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  store i8 %933, i8* %133, align 1
  %934 = zext i1 %922 to i8
  store i8 %934, i8* %134, align 1
  %935 = lshr i32 %919, 31
  %936 = trunc i32 %935 to i8
  store i8 %936, i8* %135, align 1
  %937 = lshr i32 %918, 31
  %938 = xor i32 %935, %937
  %939 = add nuw nsw i32 %938, %935
  %940 = icmp eq i32 %939, 2
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %136, align 1
  %942 = add i64 %623, 14
  store i64 %942, i64* %3, align 8
  store i32 %919, i32* %917, align 4
  %943 = load i64, i64* %3, align 8
  %944 = add i64 %943, -201
  store i64 %944, i64* %3, align 8
  br label %block_.L_400ef9

block_.L_400fc7:                                  ; preds = %block_.L_400ef9
  %945 = add i64 %582, 7
  store i64 %945, i64* %3, align 8
  store i32 0, i32* %549, align 4
  %.pre47 = load i64, i64* %3, align 8
  %946 = bitcast %union.VectorReg* %137 to <4 x i32>*
  br label %block_.L_400fce

block_.L_400fce:                                  ; preds = %block_.L_401089, %block_.L_400fc7
  %947 = phi i64 [ %1346, %block_.L_401089 ], [ %.pre47, %block_.L_400fc7 ]
  %948 = load i64, i64* %RBP.i, align 8
  %949 = add i64 %948, -108
  %950 = add i64 %947, 3
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %RAX.i451, align 8
  %954 = add i64 %948, -28
  %955 = add i64 %947, 6
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i32*
  %957 = load i32, i32* %956, align 4
  %958 = sub i32 %952, %957
  %959 = icmp ult i32 %952, %957
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %131, align 1
  %961 = and i32 %958, 255
  %962 = tail call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  store i8 %965, i8* %132, align 1
  %966 = xor i32 %957, %952
  %967 = xor i32 %966, %958
  %968 = lshr i32 %967, 4
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  store i8 %970, i8* %133, align 1
  %971 = icmp eq i32 %958, 0
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %134, align 1
  %973 = lshr i32 %958, 31
  %974 = trunc i32 %973 to i8
  store i8 %974, i8* %135, align 1
  %975 = lshr i32 %952, 31
  %976 = lshr i32 %957, 31
  %977 = xor i32 %976, %975
  %978 = xor i32 %973, %975
  %979 = add nuw nsw i32 %978, %977
  %980 = icmp eq i32 %979, 2
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %136, align 1
  %982 = icmp ne i8 %974, 0
  %983 = xor i1 %982, %980
  %.v61 = select i1 %983, i64 12, i64 206
  %984 = add i64 %947, %.v61
  store i64 %984, i64* %3, align 8
  br i1 %983, label %block_400fda, label %block_.L_40109c

block_400fda:                                     ; preds = %block_.L_400fce
  %985 = add i64 %948, -112
  %986 = add i64 %984, 7
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  store i32 0, i32* %987, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_400fe1

block_.L_400fe1:                                  ; preds = %block_.L_401076, %block_400fda
  %988 = phi i64 [ %1316, %block_.L_401076 ], [ %.pre48, %block_400fda ]
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -112
  %991 = add i64 %988, 3
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RAX.i451, align 8
  %995 = add i64 %989, -40
  %996 = add i64 %988, 6
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = sub i32 %993, %998
  %1000 = icmp ult i32 %993, %998
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %131, align 1
  %1002 = and i32 %999, 255
  %1003 = tail call i32 @llvm.ctpop.i32(i32 %1002)
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %132, align 1
  %1007 = xor i32 %998, %993
  %1008 = xor i32 %1007, %999
  %1009 = lshr i32 %1008, 4
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  store i8 %1011, i8* %133, align 1
  %1012 = icmp eq i32 %999, 0
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %134, align 1
  %1014 = lshr i32 %999, 31
  %1015 = trunc i32 %1014 to i8
  store i8 %1015, i8* %135, align 1
  %1016 = lshr i32 %993, 31
  %1017 = lshr i32 %998, 31
  %1018 = xor i32 %1017, %1016
  %1019 = xor i32 %1014, %1016
  %1020 = add nuw nsw i32 %1019, %1018
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %136, align 1
  %1023 = icmp ne i8 %1015, 0
  %1024 = xor i1 %1023, %1021
  %.v = select i1 %1024, i64 12, i64 168
  %1025 = add i64 %988, %.v
  store i64 %1025, i64* %3, align 8
  br i1 %1024, label %block_400fed, label %block_.L_401089

block_400fed:                                     ; preds = %block_.L_400fe1
  store <4 x i32> zeroinitializer, <4 x i32>* %946, align 1
  %1026 = add i64 %989, -104
  %1027 = add i64 %1025, 7
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i64*
  %1029 = load i64, i64* %1028, align 8
  store i64 %1029, i64* %RAX.i451, align 8
  %1030 = add i64 %989, -108
  %1031 = add i64 %1025, 11
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i32*
  %1033 = load i32, i32* %1032, align 4
  %1034 = sext i32 %1033 to i64
  %1035 = shl nsw i64 %1034, 13
  store i64 %1035, i64* %RCX.i381, align 8
  %1036 = add i64 %1035, %1029
  store i64 %1036, i64* %RAX.i451, align 8
  %1037 = icmp ult i64 %1036, %1029
  %1038 = icmp ult i64 %1036, %1035
  %1039 = or i1 %1037, %1038
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %131, align 1
  %1041 = trunc i64 %1036 to i32
  %1042 = and i32 %1041, 255
  %1043 = tail call i32 @llvm.ctpop.i32(i32 %1042)
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = xor i8 %1045, 1
  store i8 %1046, i8* %132, align 1
  %1047 = xor i64 %1029, %1036
  %1048 = lshr i64 %1047, 4
  %1049 = trunc i64 %1048 to i8
  %1050 = and i8 %1049, 1
  store i8 %1050, i8* %133, align 1
  %1051 = icmp eq i64 %1036, 0
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %134, align 1
  %1053 = lshr i64 %1036, 63
  %1054 = trunc i64 %1053 to i8
  store i8 %1054, i8* %135, align 1
  %1055 = lshr i64 %1029, 63
  %1056 = lshr i64 %1034, 50
  %1057 = and i64 %1056, 1
  %1058 = xor i64 %1053, %1055
  %1059 = xor i64 %1053, %1057
  %1060 = add nuw nsw i64 %1058, %1059
  %1061 = icmp eq i64 %1060, 2
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %136, align 1
  %1063 = add i64 %1025, 22
  store i64 %1063, i64* %3, align 8
  %1064 = load i32, i32* %992, align 4
  %1065 = sext i32 %1064 to i64
  store i64 %1065, i64* %RCX.i381, align 8
  %1066 = shl nsw i64 %1065, 3
  %1067 = add i64 %1066, %1036
  %1068 = add i64 %1025, 27
  store i64 %1068, i64* %3, align 8
  %1069 = load i64, i64* %139, align 1
  %1070 = inttoptr i64 %1067 to i64*
  store i64 %1069, i64* %1070, align 8
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -116
  %1073 = load i64, i64* %3, align 8
  %1074 = add i64 %1073, 7
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1072 to i32*
  store i32 0, i32* %1075, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_40100f

block_.L_40100f:                                  ; preds = %block_40101b, %block_400fed
  %1076 = phi i64 [ %1286, %block_40101b ], [ %.pre49, %block_400fed ]
  %1077 = load i64, i64* %RBP.i, align 8
  %1078 = add i64 %1077, -116
  %1079 = add i64 %1076, 3
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i32*
  %1081 = load i32, i32* %1080, align 4
  %1082 = zext i32 %1081 to i64
  store i64 %1082, i64* %RAX.i451, align 8
  %1083 = add i64 %1077, -32
  %1084 = add i64 %1076, 6
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to i32*
  %1086 = load i32, i32* %1085, align 4
  %1087 = sub i32 %1081, %1086
  %1088 = icmp ult i32 %1081, %1086
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %131, align 1
  %1090 = and i32 %1087, 255
  %1091 = tail call i32 @llvm.ctpop.i32(i32 %1090)
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = xor i8 %1093, 1
  store i8 %1094, i8* %132, align 1
  %1095 = xor i32 %1086, %1081
  %1096 = xor i32 %1095, %1087
  %1097 = lshr i32 %1096, 4
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  store i8 %1099, i8* %133, align 1
  %1100 = icmp eq i32 %1087, 0
  %1101 = zext i1 %1100 to i8
  store i8 %1101, i8* %134, align 1
  %1102 = lshr i32 %1087, 31
  %1103 = trunc i32 %1102 to i8
  store i8 %1103, i8* %135, align 1
  %1104 = lshr i32 %1081, 31
  %1105 = lshr i32 %1086, 31
  %1106 = xor i32 %1105, %1104
  %1107 = xor i32 %1102, %1104
  %1108 = add nuw nsw i32 %1107, %1106
  %1109 = icmp eq i32 %1108, 2
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %136, align 1
  %1111 = icmp ne i8 %1103, 0
  %1112 = xor i1 %1111, %1109
  %.v54 = select i1 %1112, i64 12, i64 103
  %1113 = add i64 %1076, %.v54
  store i64 %1113, i64* %3, align 8
  br i1 %1112, label %block_40101b, label %block_.L_401076

block_40101b:                                     ; preds = %block_.L_40100f
  %1114 = add i64 %1077, -56
  %1115 = add i64 %1113, 4
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %RAX.i451, align 8
  %1118 = add i64 %1077, -108
  %1119 = add i64 %1113, 8
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = sext i32 %1121 to i64
  %1123 = shl nsw i64 %1122, 13
  store i64 %1123, i64* %RCX.i381, align 8
  %1124 = add i64 %1123, %1117
  store i64 %1124, i64* %RAX.i451, align 8
  %1125 = icmp ult i64 %1124, %1117
  %1126 = icmp ult i64 %1124, %1123
  %1127 = or i1 %1125, %1126
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %131, align 1
  %1129 = trunc i64 %1124 to i32
  %1130 = and i32 %1129, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130)
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %132, align 1
  %1135 = xor i64 %1117, %1124
  %1136 = lshr i64 %1135, 4
  %1137 = trunc i64 %1136 to i8
  %1138 = and i8 %1137, 1
  store i8 %1138, i8* %133, align 1
  %1139 = icmp eq i64 %1124, 0
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %134, align 1
  %1141 = lshr i64 %1124, 63
  %1142 = trunc i64 %1141 to i8
  store i8 %1142, i8* %135, align 1
  %1143 = lshr i64 %1117, 63
  %1144 = lshr i64 %1122, 50
  %1145 = and i64 %1144, 1
  %1146 = xor i64 %1141, %1143
  %1147 = xor i64 %1141, %1145
  %1148 = add nuw nsw i64 %1146, %1147
  %1149 = icmp eq i64 %1148, 2
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %136, align 1
  %1151 = add i64 %1113, 19
  store i64 %1151, i64* %3, align 8
  %1152 = load i32, i32* %1080, align 4
  %1153 = sext i32 %1152 to i64
  store i64 %1153, i64* %RCX.i381, align 8
  %1154 = shl nsw i64 %1153, 3
  %1155 = add i64 %1154, %1124
  %1156 = add i64 %1113, 24
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i64*
  %1158 = load i64, i64* %1157, align 8
  store i64 %1158, i64* %139, align 1
  store double 0.000000e+00, double* %141, align 1
  %1159 = add i64 %1077, -80
  %1160 = add i64 %1113, 28
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i64*
  %1162 = load i64, i64* %1161, align 8
  store i64 %1162, i64* %RAX.i451, align 8
  %1163 = add i64 %1113, 32
  store i64 %1163, i64* %3, align 8
  %1164 = load i32, i32* %1080, align 4
  %1165 = sext i32 %1164 to i64
  %1166 = shl nsw i64 %1165, 13
  store i64 %1166, i64* %RCX.i381, align 8
  %1167 = add i64 %1166, %1162
  store i64 %1167, i64* %RAX.i451, align 8
  %1168 = icmp ult i64 %1167, %1162
  %1169 = icmp ult i64 %1167, %1166
  %1170 = or i1 %1168, %1169
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %131, align 1
  %1172 = trunc i64 %1167 to i32
  %1173 = and i32 %1172, 255
  %1174 = tail call i32 @llvm.ctpop.i32(i32 %1173)
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  store i8 %1177, i8* %132, align 1
  %1178 = xor i64 %1162, %1167
  %1179 = lshr i64 %1178, 4
  %1180 = trunc i64 %1179 to i8
  %1181 = and i8 %1180, 1
  store i8 %1181, i8* %133, align 1
  %1182 = icmp eq i64 %1167, 0
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %134, align 1
  %1184 = lshr i64 %1167, 63
  %1185 = trunc i64 %1184 to i8
  store i8 %1185, i8* %135, align 1
  %1186 = lshr i64 %1162, 63
  %1187 = lshr i64 %1165, 50
  %1188 = and i64 %1187, 1
  %1189 = xor i64 %1184, %1186
  %1190 = xor i64 %1184, %1188
  %1191 = add nuw nsw i64 %1189, %1190
  %1192 = icmp eq i64 %1191, 2
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %136, align 1
  %1194 = load i64, i64* %RBP.i, align 8
  %1195 = add i64 %1194, -112
  %1196 = add i64 %1113, 43
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i32*
  %1198 = load i32, i32* %1197, align 4
  %1199 = sext i32 %1198 to i64
  store i64 %1199, i64* %RCX.i381, align 8
  %1200 = shl nsw i64 %1199, 3
  %1201 = add i64 %1200, %1167
  %1202 = add i64 %1113, 48
  store i64 %1202, i64* %3, align 8
  %1203 = bitcast i64 %1158 to double
  %1204 = inttoptr i64 %1201 to double*
  %1205 = load double, double* %1204, align 8
  %1206 = fmul double %1203, %1205
  store double %1206, double* %140, align 1
  store i64 0, i64* %138, align 1
  %1207 = add i64 %1194, -104
  %1208 = add i64 %1113, 52
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i64*
  %1210 = load i64, i64* %1209, align 8
  store i64 %1210, i64* %RAX.i451, align 8
  %1211 = add i64 %1194, -108
  %1212 = add i64 %1113, 56
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = sext i32 %1214 to i64
  %1216 = shl nsw i64 %1215, 13
  store i64 %1216, i64* %RCX.i381, align 8
  %1217 = add i64 %1216, %1210
  store i64 %1217, i64* %RAX.i451, align 8
  %1218 = icmp ult i64 %1217, %1210
  %1219 = icmp ult i64 %1217, %1216
  %1220 = or i1 %1218, %1219
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %131, align 1
  %1222 = trunc i64 %1217 to i32
  %1223 = and i32 %1222, 255
  %1224 = tail call i32 @llvm.ctpop.i32(i32 %1223)
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = xor i8 %1226, 1
  store i8 %1227, i8* %132, align 1
  %1228 = xor i64 %1210, %1217
  %1229 = lshr i64 %1228, 4
  %1230 = trunc i64 %1229 to i8
  %1231 = and i8 %1230, 1
  store i8 %1231, i8* %133, align 1
  %1232 = icmp eq i64 %1217, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %134, align 1
  %1234 = lshr i64 %1217, 63
  %1235 = trunc i64 %1234 to i8
  store i8 %1235, i8* %135, align 1
  %1236 = lshr i64 %1210, 63
  %1237 = lshr i64 %1215, 50
  %1238 = and i64 %1237, 1
  %1239 = xor i64 %1234, %1236
  %1240 = xor i64 %1234, %1238
  %1241 = add nuw nsw i64 %1239, %1240
  %1242 = icmp eq i64 %1241, 2
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %136, align 1
  %1244 = add i64 %1113, 67
  store i64 %1244, i64* %3, align 8
  %1245 = load i32, i32* %1197, align 4
  %1246 = sext i32 %1245 to i64
  store i64 %1246, i64* %RCX.i381, align 8
  %1247 = shl nsw i64 %1246, 3
  %1248 = add i64 %1247, %1217
  %1249 = add i64 %1113, 72
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to double*
  %1251 = load double, double* %1250, align 8
  %1252 = fadd double %1206, %1251
  store double %1252, double* %140, align 1
  store i64 0, i64* %138, align 1
  %1253 = add i64 %1113, 77
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1248 to double*
  store double %1252, double* %1254, align 8
  %1255 = load i64, i64* %RBP.i, align 8
  %1256 = add i64 %1255, -116
  %1257 = load i64, i64* %3, align 8
  %1258 = add i64 %1257, 3
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1256 to i32*
  %1260 = load i32, i32* %1259, align 4
  %1261 = add i32 %1260, 1
  %1262 = zext i32 %1261 to i64
  store i64 %1262, i64* %RAX.i451, align 8
  %1263 = icmp eq i32 %1260, -1
  %1264 = icmp eq i32 %1261, 0
  %1265 = or i1 %1263, %1264
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %131, align 1
  %1267 = and i32 %1261, 255
  %1268 = tail call i32 @llvm.ctpop.i32(i32 %1267)
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  store i8 %1271, i8* %132, align 1
  %1272 = xor i32 %1261, %1260
  %1273 = lshr i32 %1272, 4
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  store i8 %1275, i8* %133, align 1
  %1276 = zext i1 %1264 to i8
  store i8 %1276, i8* %134, align 1
  %1277 = lshr i32 %1261, 31
  %1278 = trunc i32 %1277 to i8
  store i8 %1278, i8* %135, align 1
  %1279 = lshr i32 %1260, 31
  %1280 = xor i32 %1277, %1279
  %1281 = add nuw nsw i32 %1280, %1277
  %1282 = icmp eq i32 %1281, 2
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %136, align 1
  %1284 = add i64 %1257, 9
  store i64 %1284, i64* %3, align 8
  store i32 %1261, i32* %1259, align 4
  %1285 = load i64, i64* %3, align 8
  %1286 = add i64 %1285, -98
  store i64 %1286, i64* %3, align 8
  br label %block_.L_40100f

block_.L_401076:                                  ; preds = %block_.L_40100f
  %1287 = add i64 %1077, -112
  %1288 = add i64 %1113, 8
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1287 to i32*
  %1290 = load i32, i32* %1289, align 4
  %1291 = add i32 %1290, 1
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RAX.i451, align 8
  %1293 = icmp eq i32 %1290, -1
  %1294 = icmp eq i32 %1291, 0
  %1295 = or i1 %1293, %1294
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %131, align 1
  %1297 = and i32 %1291, 255
  %1298 = tail call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  store i8 %1301, i8* %132, align 1
  %1302 = xor i32 %1291, %1290
  %1303 = lshr i32 %1302, 4
  %1304 = trunc i32 %1303 to i8
  %1305 = and i8 %1304, 1
  store i8 %1305, i8* %133, align 1
  %1306 = zext i1 %1294 to i8
  store i8 %1306, i8* %134, align 1
  %1307 = lshr i32 %1291, 31
  %1308 = trunc i32 %1307 to i8
  store i8 %1308, i8* %135, align 1
  %1309 = lshr i32 %1290, 31
  %1310 = xor i32 %1307, %1309
  %1311 = add nuw nsw i32 %1310, %1307
  %1312 = icmp eq i32 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %136, align 1
  %1314 = add i64 %1113, 14
  store i64 %1314, i64* %3, align 8
  store i32 %1291, i32* %1289, align 4
  %1315 = load i64, i64* %3, align 8
  %1316 = add i64 %1315, -163
  store i64 %1316, i64* %3, align 8
  br label %block_.L_400fe1

block_.L_401089:                                  ; preds = %block_.L_400fe1
  %1317 = add i64 %989, -108
  %1318 = add i64 %1025, 8
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1317 to i32*
  %1320 = load i32, i32* %1319, align 4
  %1321 = add i32 %1320, 1
  %1322 = zext i32 %1321 to i64
  store i64 %1322, i64* %RAX.i451, align 8
  %1323 = icmp eq i32 %1320, -1
  %1324 = icmp eq i32 %1321, 0
  %1325 = or i1 %1323, %1324
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %131, align 1
  %1327 = and i32 %1321, 255
  %1328 = tail call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  store i8 %1331, i8* %132, align 1
  %1332 = xor i32 %1321, %1320
  %1333 = lshr i32 %1332, 4
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  store i8 %1335, i8* %133, align 1
  %1336 = zext i1 %1324 to i8
  store i8 %1336, i8* %134, align 1
  %1337 = lshr i32 %1321, 31
  %1338 = trunc i32 %1337 to i8
  store i8 %1338, i8* %135, align 1
  %1339 = lshr i32 %1320, 31
  %1340 = xor i32 %1337, %1339
  %1341 = add nuw nsw i32 %1340, %1337
  %1342 = icmp eq i32 %1341, 2
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %136, align 1
  %1344 = add i64 %1025, 14
  store i64 %1344, i64* %3, align 8
  store i32 %1321, i32* %1319, align 4
  %1345 = load i64, i64* %3, align 8
  %1346 = add i64 %1345, -201
  store i64 %1346, i64* %3, align 8
  br label %block_.L_400fce

block_.L_40109c:                                  ; preds = %block_.L_400fce
  %1347 = add i64 %984, 1
  store i64 %1347, i64* %3, align 8
  %1348 = load i64, i64* %6, align 8
  %1349 = add i64 %1348, 8
  %1350 = inttoptr i64 %1348 to i64*
  %1351 = load i64, i64* %1350, align 8
  store i64 %1351, i64* %RBX.i454, align 8
  store i64 %1349, i64* %6, align 8
  %1352 = add i64 %984, 3
  store i64 %1352, i64* %3, align 8
  %1353 = add i64 %1348, 16
  %1354 = inttoptr i64 %1349 to i64*
  %1355 = load i64, i64* %1354, align 8
  store i64 %1355, i64* %R14.i456, align 8
  store i64 %1353, i64* %6, align 8
  %1356 = add i64 %984, 5
  store i64 %1356, i64* %3, align 8
  %1357 = add i64 %1348, 24
  %1358 = inttoptr i64 %1353 to i64*
  %1359 = load i64, i64* %1358, align 8
  store i64 %1359, i64* %R15.i458, align 8
  store i64 %1357, i64* %6, align 8
  %1360 = add i64 %984, 6
  store i64 %1360, i64* %3, align 8
  %1361 = add i64 %1348, 32
  %1362 = inttoptr i64 %1357 to i64*
  %1363 = load i64, i64* %1362, align 8
  store i64 %1363, i64* %RBP.i, align 8
  store i64 %1361, i64* %6, align 8
  %1364 = add i64 %984, 7
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1361 to i64*
  %1366 = load i64, i64* %1365, align 8
  store i64 %1366, i64* %3, align 8
  %1367 = add i64 %1348, 40
  store i64 %1367, i64* %6, align 8
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
define %struct.Memory* @routine_pushq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r15__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_jge_.L_400ef2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
define %struct.Memory* @routine_jge_.L_400edf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
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
define %struct.Memory* @routine_jge_.L_400ecc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
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
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ed1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ee4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400fc7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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
define %struct.Memory* @routine_jge_.L_400fb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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
define %struct.Memory* @routine_jge_.L_400fa1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fa6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ef9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40109c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_401089(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401076(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40100f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40107b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fe1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40108e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
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
