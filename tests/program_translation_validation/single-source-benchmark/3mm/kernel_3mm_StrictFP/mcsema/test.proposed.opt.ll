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
define %struct.Memory* @kernel_3mm_StrictFP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %91 = add i64 %90, -60
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, 7
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %91 to i32*
  store i32 0, i32* %94, align 4
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -80
  %97 = load i64, i64* %R15.i458, align 8
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 4
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %96 to i64*
  store i64 %97, i64* %100, align 8
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -88
  %103 = load i64, i64* %RAX.i451, align 8
  %104 = load i64, i64* %3, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %106, align 8
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -96
  %109 = load i64, i64* %R10.i449, align 8
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 4
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %112, align 8
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -104
  %115 = load i64, i64* %R11.i446, align 8
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %116, 4
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118, align 8
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -112
  %121 = load i64, i64* %RBX.i454, align 8
  %122 = load i64, i64* %3, align 8
  %123 = add i64 %122, 4
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %120 to i64*
  store i64 %121, i64* %124, align 8
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -120
  %127 = load i64, i64* %R14.i456, align 8
  %128 = load i64, i64* %3, align 8
  %129 = add i64 %128, 4
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %126 to i64*
  store i64 %127, i64* %130, align 8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %138 = bitcast %union.VectorReg* %137 to i8*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %140 = bitcast %union.VectorReg* %137 to i32*
  %141 = getelementptr inbounds i8, i8* %138, i64 4
  %142 = bitcast i8* %141 to i32*
  %143 = bitcast i64* %139 to i32*
  %144 = getelementptr inbounds i8, i8* %138, i64 12
  %145 = bitcast i8* %144 to i32*
  %RCX.i381 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %146 = bitcast %union.VectorReg* %137 to double*
  %147 = bitcast i64* %139 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4010e4

block_.L_4010e4:                                  ; preds = %block_.L_40119f, %entry
  %148 = phi i64 [ %546, %block_.L_40119f ], [ %.pre, %entry ]
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -60
  %151 = add i64 %148, 3
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RAX.i451, align 8
  %155 = add i64 %149, -28
  %156 = add i64 %148, 6
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = sub i32 %153, %158
  %160 = icmp ult i32 %153, %158
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %131, align 1
  %162 = and i32 %159, 255
  %163 = tail call i32 @llvm.ctpop.i32(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %132, align 1
  %167 = xor i32 %158, %153
  %168 = xor i32 %167, %159
  %169 = lshr i32 %168, 4
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %133, align 1
  %172 = icmp eq i32 %159, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %134, align 1
  %174 = lshr i32 %159, 31
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %135, align 1
  %176 = lshr i32 %153, 31
  %177 = lshr i32 %158, 31
  %178 = xor i32 %177, %176
  %179 = xor i32 %174, %176
  %180 = add nuw nsw i32 %179, %178
  %181 = icmp eq i32 %180, 2
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %136, align 1
  %183 = icmp ne i8 %175, 0
  %184 = xor i1 %183, %181
  %.v = select i1 %184, i64 12, i64 206
  %185 = add i64 %148, %.v
  store i64 %185, i64* %3, align 8
  br i1 %184, label %block_4010f0, label %block_.L_4011b2

block_4010f0:                                     ; preds = %block_.L_4010e4
  %186 = add i64 %149, -64
  %187 = add i64 %185, 7
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to i32*
  store i32 0, i32* %188, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_4010f7

block_.L_4010f7:                                  ; preds = %block_.L_40118c, %block_4010f0
  %189 = phi i64 [ %516, %block_.L_40118c ], [ %.pre1, %block_4010f0 ]
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -64
  %192 = add i64 %189, 3
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX.i451, align 8
  %196 = add i64 %190, -32
  %197 = add i64 %189, 6
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = sub i32 %194, %199
  %201 = icmp ult i32 %194, %199
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %131, align 1
  %203 = and i32 %200, 255
  %204 = tail call i32 @llvm.ctpop.i32(i32 %203)
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = xor i8 %206, 1
  store i8 %207, i8* %132, align 1
  %208 = xor i32 %199, %194
  %209 = xor i32 %208, %200
  %210 = lshr i32 %209, 4
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %133, align 1
  %213 = icmp eq i32 %200, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %134, align 1
  %215 = lshr i32 %200, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %135, align 1
  %217 = lshr i32 %194, 31
  %218 = lshr i32 %199, 31
  %219 = xor i32 %218, %217
  %220 = xor i32 %215, %217
  %221 = add nuw nsw i32 %220, %219
  %222 = icmp eq i32 %221, 2
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %136, align 1
  %224 = icmp ne i8 %216, 0
  %225 = xor i1 %224, %222
  %.v9 = select i1 %225, i64 12, i64 168
  %226 = add i64 %189, %.v9
  store i64 %226, i64* %3, align 8
  br i1 %225, label %block_401103, label %block_.L_40119f

block_401103:                                     ; preds = %block_.L_4010f7
  store i32 0, i32* %140, align 1
  store i32 0, i32* %142, align 1
  store i32 0, i32* %143, align 1
  store i32 0, i32* %145, align 1
  %227 = add i64 %190, -56
  %228 = add i64 %226, 7
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i64*
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %RAX.i451, align 8
  %231 = add i64 %190, -60
  %232 = add i64 %226, 11
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = shl nsw i64 %235, 13
  store i64 %236, i64* %RCX.i381, align 8
  %237 = lshr i64 %235, 50
  %238 = and i64 %237, 1
  %239 = add i64 %236, %230
  store i64 %239, i64* %RAX.i451, align 8
  %240 = icmp ult i64 %239, %230
  %241 = icmp ult i64 %239, %236
  %242 = or i1 %240, %241
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %131, align 1
  %244 = trunc i64 %239 to i32
  %245 = and i32 %244, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %132, align 1
  %250 = xor i64 %230, %239
  %251 = lshr i64 %250, 4
  %252 = trunc i64 %251 to i8
  %253 = and i8 %252, 1
  store i8 %253, i8* %133, align 1
  %254 = icmp eq i64 %239, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %134, align 1
  %256 = lshr i64 %239, 63
  %257 = trunc i64 %256 to i8
  store i8 %257, i8* %135, align 1
  %258 = lshr i64 %230, 63
  %259 = xor i64 %256, %258
  %260 = xor i64 %256, %238
  %261 = add nuw nsw i64 %259, %260
  %262 = icmp eq i64 %261, 2
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %136, align 1
  %264 = add i64 %226, 22
  store i64 %264, i64* %3, align 8
  %265 = load i32, i32* %193, align 4
  %266 = sext i32 %265 to i64
  store i64 %266, i64* %RCX.i381, align 8
  %267 = shl nsw i64 %266, 3
  %268 = add i64 %267, %239
  %269 = add i64 %226, 27
  store i64 %269, i64* %3, align 8
  %270 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %137, i64 0, i32 0, i32 0, i32 0, i64 0
  %271 = load i64, i64* %270, align 1
  %272 = inttoptr i64 %268 to i64*
  store i64 %271, i64* %272, align 8
  %273 = load i64, i64* %RBP.i, align 8
  %274 = add i64 %273, -68
  %275 = load i64, i64* %3, align 8
  %276 = add i64 %275, 7
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %274 to i32*
  store i32 0, i32* %277, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_401125

block_.L_401125:                                  ; preds = %block_401131, %block_401103
  %278 = phi i64 [ %486, %block_401131 ], [ %.pre2, %block_401103 ]
  %279 = load i64, i64* %RBP.i, align 8
  %280 = add i64 %279, -68
  %281 = add i64 %278, 3
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RAX.i451, align 8
  %285 = add i64 %279, -36
  %286 = add i64 %278, 6
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = sub i32 %283, %288
  %290 = icmp ult i32 %283, %288
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %131, align 1
  %292 = and i32 %289, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %132, align 1
  %297 = xor i32 %288, %283
  %298 = xor i32 %297, %289
  %299 = lshr i32 %298, 4
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  store i8 %301, i8* %133, align 1
  %302 = icmp eq i32 %289, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %134, align 1
  %304 = lshr i32 %289, 31
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* %135, align 1
  %306 = lshr i32 %283, 31
  %307 = lshr i32 %288, 31
  %308 = xor i32 %307, %306
  %309 = xor i32 %304, %306
  %310 = add nuw nsw i32 %309, %308
  %311 = icmp eq i32 %310, 2
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %136, align 1
  %313 = icmp ne i8 %305, 0
  %314 = xor i1 %313, %311
  %.v10 = select i1 %314, i64 12, i64 103
  %315 = add i64 %278, %.v10
  store i64 %315, i64* %3, align 8
  br i1 %314, label %block_401131, label %block_.L_40118c

block_401131:                                     ; preds = %block_.L_401125
  %316 = add i64 %279, 16
  %317 = add i64 %315, 4
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i64*
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %RAX.i451, align 8
  %320 = add i64 %279, -60
  %321 = add i64 %315, 8
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = shl nsw i64 %324, 13
  store i64 %325, i64* %RCX.i381, align 8
  %326 = lshr i64 %324, 50
  %327 = and i64 %326, 1
  %328 = add i64 %325, %319
  store i64 %328, i64* %RAX.i451, align 8
  %329 = icmp ult i64 %328, %319
  %330 = icmp ult i64 %328, %325
  %331 = or i1 %329, %330
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %131, align 1
  %333 = trunc i64 %328 to i32
  %334 = and i32 %333, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334)
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %132, align 1
  %339 = xor i64 %319, %328
  %340 = lshr i64 %339, 4
  %341 = trunc i64 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %133, align 1
  %343 = icmp eq i64 %328, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %134, align 1
  %345 = lshr i64 %328, 63
  %346 = trunc i64 %345 to i8
  store i8 %346, i8* %135, align 1
  %347 = lshr i64 %319, 63
  %348 = xor i64 %345, %347
  %349 = xor i64 %345, %327
  %350 = add nuw nsw i64 %348, %349
  %351 = icmp eq i64 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %136, align 1
  %353 = add i64 %315, 19
  store i64 %353, i64* %3, align 8
  %354 = load i32, i32* %282, align 4
  %355 = sext i32 %354 to i64
  store i64 %355, i64* %RCX.i381, align 8
  %356 = shl nsw i64 %355, 3
  %357 = add i64 %356, %328
  %358 = add i64 %315, 24
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to double*
  %360 = load double, double* %359, align 8
  store double %360, double* %146, align 1
  store double 0.000000e+00, double* %147, align 1
  %361 = add i64 %279, 24
  %362 = add i64 %315, 28
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i64*
  %364 = load i64, i64* %363, align 8
  store i64 %364, i64* %RAX.i451, align 8
  %365 = add i64 %315, 32
  store i64 %365, i64* %3, align 8
  %366 = load i32, i32* %282, align 4
  %367 = sext i32 %366 to i64
  %368 = shl nsw i64 %367, 13
  store i64 %368, i64* %RCX.i381, align 8
  %369 = lshr i64 %367, 50
  %370 = and i64 %369, 1
  %371 = add i64 %368, %364
  store i64 %371, i64* %RAX.i451, align 8
  %372 = icmp ult i64 %371, %364
  %373 = icmp ult i64 %371, %368
  %374 = or i1 %372, %373
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %131, align 1
  %376 = trunc i64 %371 to i32
  %377 = and i32 %376, 255
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %132, align 1
  %382 = xor i64 %364, %371
  %383 = lshr i64 %382, 4
  %384 = trunc i64 %383 to i8
  %385 = and i8 %384, 1
  store i8 %385, i8* %133, align 1
  %386 = icmp eq i64 %371, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %134, align 1
  %388 = lshr i64 %371, 63
  %389 = trunc i64 %388 to i8
  store i8 %389, i8* %135, align 1
  %390 = lshr i64 %364, 63
  %391 = xor i64 %388, %390
  %392 = xor i64 %388, %370
  %393 = add nuw nsw i64 %391, %392
  %394 = icmp eq i64 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %136, align 1
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -64
  %398 = add i64 %315, 43
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  store i64 %401, i64* %RCX.i381, align 8
  %402 = shl nsw i64 %401, 3
  %403 = add i64 %402, %371
  %404 = add i64 %315, 48
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to double*
  %406 = load double, double* %405, align 8
  %407 = fmul double %360, %406
  store double %407, double* %146, align 1
  store i64 0, i64* %139, align 1
  %408 = add i64 %396, -56
  %409 = add i64 %315, 52
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %RAX.i451, align 8
  %412 = add i64 %396, -60
  %413 = add i64 %315, 56
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = sext i32 %415 to i64
  %417 = shl nsw i64 %416, 13
  store i64 %417, i64* %RCX.i381, align 8
  %418 = lshr i64 %416, 50
  %419 = and i64 %418, 1
  %420 = add i64 %417, %411
  store i64 %420, i64* %RAX.i451, align 8
  %421 = icmp ult i64 %420, %411
  %422 = icmp ult i64 %420, %417
  %423 = or i1 %421, %422
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %131, align 1
  %425 = trunc i64 %420 to i32
  %426 = and i32 %425, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426)
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %132, align 1
  %431 = xor i64 %411, %420
  %432 = lshr i64 %431, 4
  %433 = trunc i64 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %133, align 1
  %435 = icmp eq i64 %420, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %134, align 1
  %437 = lshr i64 %420, 63
  %438 = trunc i64 %437 to i8
  store i8 %438, i8* %135, align 1
  %439 = lshr i64 %411, 63
  %440 = xor i64 %437, %439
  %441 = xor i64 %437, %419
  %442 = add nuw nsw i64 %440, %441
  %443 = icmp eq i64 %442, 2
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %136, align 1
  %445 = add i64 %315, 67
  store i64 %445, i64* %3, align 8
  %446 = load i32, i32* %399, align 4
  %447 = sext i32 %446 to i64
  store i64 %447, i64* %RCX.i381, align 8
  %448 = shl nsw i64 %447, 3
  %449 = add i64 %448, %420
  %450 = add i64 %315, 72
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to double*
  %452 = load double, double* %451, align 8
  %453 = fadd double %407, %452
  store double %453, double* %146, align 1
  store i64 0, i64* %139, align 1
  %454 = add i64 %315, 77
  store i64 %454, i64* %3, align 8
  store double %453, double* %451, align 8
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -68
  %457 = load i64, i64* %3, align 8
  %458 = add i64 %457, 3
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %456 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = add i32 %460, 1
  %462 = zext i32 %461 to i64
  store i64 %462, i64* %RAX.i451, align 8
  %463 = icmp eq i32 %460, -1
  %464 = icmp eq i32 %461, 0
  %465 = or i1 %463, %464
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %131, align 1
  %467 = and i32 %461, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %132, align 1
  %472 = xor i32 %460, %461
  %473 = lshr i32 %472, 4
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %133, align 1
  %476 = zext i1 %464 to i8
  store i8 %476, i8* %134, align 1
  %477 = lshr i32 %461, 31
  %478 = trunc i32 %477 to i8
  store i8 %478, i8* %135, align 1
  %479 = lshr i32 %460, 31
  %480 = xor i32 %477, %479
  %481 = add nuw nsw i32 %480, %477
  %482 = icmp eq i32 %481, 2
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %136, align 1
  %484 = add i64 %457, 9
  store i64 %484, i64* %3, align 8
  store i32 %461, i32* %459, align 4
  %485 = load i64, i64* %3, align 8
  %486 = add i64 %485, -98
  store i64 %486, i64* %3, align 8
  br label %block_.L_401125

block_.L_40118c:                                  ; preds = %block_.L_401125
  %487 = add i64 %279, -64
  %488 = add i64 %315, 8
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = add i32 %490, 1
  %492 = zext i32 %491 to i64
  store i64 %492, i64* %RAX.i451, align 8
  %493 = icmp eq i32 %490, -1
  %494 = icmp eq i32 %491, 0
  %495 = or i1 %493, %494
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %131, align 1
  %497 = and i32 %491, 255
  %498 = tail call i32 @llvm.ctpop.i32(i32 %497)
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %132, align 1
  %502 = xor i32 %490, %491
  %503 = lshr i32 %502, 4
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  store i8 %505, i8* %133, align 1
  %506 = zext i1 %494 to i8
  store i8 %506, i8* %134, align 1
  %507 = lshr i32 %491, 31
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %135, align 1
  %509 = lshr i32 %490, 31
  %510 = xor i32 %507, %509
  %511 = add nuw nsw i32 %510, %507
  %512 = icmp eq i32 %511, 2
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %136, align 1
  %514 = add i64 %315, 14
  store i64 %514, i64* %3, align 8
  store i32 %491, i32* %489, align 4
  %515 = load i64, i64* %3, align 8
  %516 = add i64 %515, -163
  store i64 %516, i64* %3, align 8
  br label %block_.L_4010f7

block_.L_40119f:                                  ; preds = %block_.L_4010f7
  %517 = add i64 %190, -60
  %518 = add i64 %226, 8
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i32*
  %520 = load i32, i32* %519, align 4
  %521 = add i32 %520, 1
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RAX.i451, align 8
  %523 = icmp eq i32 %520, -1
  %524 = icmp eq i32 %521, 0
  %525 = or i1 %523, %524
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %131, align 1
  %527 = and i32 %521, 255
  %528 = tail call i32 @llvm.ctpop.i32(i32 %527)
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = xor i8 %530, 1
  store i8 %531, i8* %132, align 1
  %532 = xor i32 %520, %521
  %533 = lshr i32 %532, 4
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  store i8 %535, i8* %133, align 1
  %536 = zext i1 %524 to i8
  store i8 %536, i8* %134, align 1
  %537 = lshr i32 %521, 31
  %538 = trunc i32 %537 to i8
  store i8 %538, i8* %135, align 1
  %539 = lshr i32 %520, 31
  %540 = xor i32 %537, %539
  %541 = add nuw nsw i32 %540, %537
  %542 = icmp eq i32 %541, 2
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %136, align 1
  %544 = add i64 %226, 14
  store i64 %544, i64* %3, align 8
  store i32 %521, i32* %519, align 4
  %545 = load i64, i64* %3, align 8
  %546 = add i64 %545, -201
  store i64 %546, i64* %3, align 8
  br label %block_.L_4010e4

block_.L_4011b2:                                  ; preds = %block_.L_4010e4
  %547 = add i64 %185, 7
  store i64 %547, i64* %3, align 8
  store i32 0, i32* %152, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_4011b9

block_.L_4011b9:                                  ; preds = %block_.L_401274, %block_.L_4011b2
  %548 = phi i64 [ %946, %block_.L_401274 ], [ %.pre3, %block_.L_4011b2 ]
  %549 = load i64, i64* %RBP.i, align 8
  %550 = add i64 %549, -60
  %551 = add i64 %548, 3
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RAX.i451, align 8
  %555 = add i64 %549, -32
  %556 = add i64 %548, 6
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = sub i32 %553, %558
  %560 = icmp ult i32 %553, %558
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %131, align 1
  %562 = and i32 %559, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %132, align 1
  %567 = xor i32 %558, %553
  %568 = xor i32 %567, %559
  %569 = lshr i32 %568, 4
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  store i8 %571, i8* %133, align 1
  %572 = icmp eq i32 %559, 0
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %134, align 1
  %574 = lshr i32 %559, 31
  %575 = trunc i32 %574 to i8
  store i8 %575, i8* %135, align 1
  %576 = lshr i32 %553, 31
  %577 = lshr i32 %558, 31
  %578 = xor i32 %577, %576
  %579 = xor i32 %574, %576
  %580 = add nuw nsw i32 %579, %578
  %581 = icmp eq i32 %580, 2
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %136, align 1
  %583 = icmp ne i8 %575, 0
  %584 = xor i1 %583, %581
  %.v11 = select i1 %584, i64 12, i64 206
  %585 = add i64 %548, %.v11
  store i64 %585, i64* %3, align 8
  br i1 %584, label %block_4011c5, label %block_.L_401287

block_4011c5:                                     ; preds = %block_.L_4011b9
  %586 = add i64 %549, -64
  %587 = add i64 %585, 7
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  store i32 0, i32* %588, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_4011cc

block_.L_4011cc:                                  ; preds = %block_.L_401261, %block_4011c5
  %589 = phi i64 [ %916, %block_.L_401261 ], [ %.pre4, %block_4011c5 ]
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -64
  %592 = add i64 %589, 3
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = zext i32 %594 to i64
  store i64 %595, i64* %RAX.i451, align 8
  %596 = add i64 %590, -40
  %597 = add i64 %589, 6
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = sub i32 %594, %599
  %601 = icmp ult i32 %594, %599
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %131, align 1
  %603 = and i32 %600, 255
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %132, align 1
  %608 = xor i32 %599, %594
  %609 = xor i32 %608, %600
  %610 = lshr i32 %609, 4
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  store i8 %612, i8* %133, align 1
  %613 = icmp eq i32 %600, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %134, align 1
  %615 = lshr i32 %600, 31
  %616 = trunc i32 %615 to i8
  store i8 %616, i8* %135, align 1
  %617 = lshr i32 %594, 31
  %618 = lshr i32 %599, 31
  %619 = xor i32 %618, %617
  %620 = xor i32 %615, %617
  %621 = add nuw nsw i32 %620, %619
  %622 = icmp eq i32 %621, 2
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %136, align 1
  %624 = icmp ne i8 %616, 0
  %625 = xor i1 %624, %622
  %.v12 = select i1 %625, i64 12, i64 168
  %626 = add i64 %589, %.v12
  store i64 %626, i64* %3, align 8
  br i1 %625, label %block_4011d8, label %block_.L_401274

block_4011d8:                                     ; preds = %block_.L_4011cc
  store i32 0, i32* %140, align 1
  store i32 0, i32* %142, align 1
  store i32 0, i32* %143, align 1
  store i32 0, i32* %145, align 1
  %627 = add i64 %590, 32
  %628 = add i64 %626, 7
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i64*
  %630 = load i64, i64* %629, align 8
  store i64 %630, i64* %RAX.i451, align 8
  %631 = add i64 %590, -60
  %632 = add i64 %626, 11
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i32*
  %634 = load i32, i32* %633, align 4
  %635 = sext i32 %634 to i64
  %636 = shl nsw i64 %635, 13
  store i64 %636, i64* %RCX.i381, align 8
  %637 = lshr i64 %635, 50
  %638 = and i64 %637, 1
  %639 = add i64 %636, %630
  store i64 %639, i64* %RAX.i451, align 8
  %640 = icmp ult i64 %639, %630
  %641 = icmp ult i64 %639, %636
  %642 = or i1 %640, %641
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %131, align 1
  %644 = trunc i64 %639 to i32
  %645 = and i32 %644, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %132, align 1
  %650 = xor i64 %630, %639
  %651 = lshr i64 %650, 4
  %652 = trunc i64 %651 to i8
  %653 = and i8 %652, 1
  store i8 %653, i8* %133, align 1
  %654 = icmp eq i64 %639, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %134, align 1
  %656 = lshr i64 %639, 63
  %657 = trunc i64 %656 to i8
  store i8 %657, i8* %135, align 1
  %658 = lshr i64 %630, 63
  %659 = xor i64 %656, %658
  %660 = xor i64 %656, %638
  %661 = add nuw nsw i64 %659, %660
  %662 = icmp eq i64 %661, 2
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %136, align 1
  %664 = add i64 %626, 22
  store i64 %664, i64* %3, align 8
  %665 = load i32, i32* %593, align 4
  %666 = sext i32 %665 to i64
  store i64 %666, i64* %RCX.i381, align 8
  %667 = shl nsw i64 %666, 3
  %668 = add i64 %667, %639
  %669 = add i64 %626, 27
  store i64 %669, i64* %3, align 8
  %670 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %137, i64 0, i32 0, i32 0, i32 0, i64 0
  %671 = load i64, i64* %670, align 1
  %672 = inttoptr i64 %668 to i64*
  store i64 %671, i64* %672, align 8
  %673 = load i64, i64* %RBP.i, align 8
  %674 = add i64 %673, -68
  %675 = load i64, i64* %3, align 8
  %676 = add i64 %675, 7
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %674 to i32*
  store i32 0, i32* %677, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_4011fa

block_.L_4011fa:                                  ; preds = %block_401206, %block_4011d8
  %678 = phi i64 [ %886, %block_401206 ], [ %.pre5, %block_4011d8 ]
  %679 = load i64, i64* %RBP.i, align 8
  %680 = add i64 %679, -68
  %681 = add i64 %678, 3
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = zext i32 %683 to i64
  store i64 %684, i64* %RAX.i451, align 8
  %685 = add i64 %679, -44
  %686 = add i64 %678, 6
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  %688 = load i32, i32* %687, align 4
  %689 = sub i32 %683, %688
  %690 = icmp ult i32 %683, %688
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %131, align 1
  %692 = and i32 %689, 255
  %693 = tail call i32 @llvm.ctpop.i32(i32 %692)
  %694 = trunc i32 %693 to i8
  %695 = and i8 %694, 1
  %696 = xor i8 %695, 1
  store i8 %696, i8* %132, align 1
  %697 = xor i32 %688, %683
  %698 = xor i32 %697, %689
  %699 = lshr i32 %698, 4
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  store i8 %701, i8* %133, align 1
  %702 = icmp eq i32 %689, 0
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %134, align 1
  %704 = lshr i32 %689, 31
  %705 = trunc i32 %704 to i8
  store i8 %705, i8* %135, align 1
  %706 = lshr i32 %683, 31
  %707 = lshr i32 %688, 31
  %708 = xor i32 %707, %706
  %709 = xor i32 %704, %706
  %710 = add nuw nsw i32 %709, %708
  %711 = icmp eq i32 %710, 2
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %136, align 1
  %713 = icmp ne i8 %705, 0
  %714 = xor i1 %713, %711
  %.v13 = select i1 %714, i64 12, i64 103
  %715 = add i64 %678, %.v13
  store i64 %715, i64* %3, align 8
  br i1 %714, label %block_401206, label %block_.L_401261

block_401206:                                     ; preds = %block_.L_4011fa
  %716 = add i64 %679, 40
  %717 = add i64 %715, 4
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i64*
  %719 = load i64, i64* %718, align 8
  store i64 %719, i64* %RAX.i451, align 8
  %720 = add i64 %679, -60
  %721 = add i64 %715, 8
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = sext i32 %723 to i64
  %725 = shl nsw i64 %724, 13
  store i64 %725, i64* %RCX.i381, align 8
  %726 = lshr i64 %724, 50
  %727 = and i64 %726, 1
  %728 = add i64 %725, %719
  store i64 %728, i64* %RAX.i451, align 8
  %729 = icmp ult i64 %728, %719
  %730 = icmp ult i64 %728, %725
  %731 = or i1 %729, %730
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %131, align 1
  %733 = trunc i64 %728 to i32
  %734 = and i32 %733, 255
  %735 = tail call i32 @llvm.ctpop.i32(i32 %734)
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  store i8 %738, i8* %132, align 1
  %739 = xor i64 %719, %728
  %740 = lshr i64 %739, 4
  %741 = trunc i64 %740 to i8
  %742 = and i8 %741, 1
  store i8 %742, i8* %133, align 1
  %743 = icmp eq i64 %728, 0
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %134, align 1
  %745 = lshr i64 %728, 63
  %746 = trunc i64 %745 to i8
  store i8 %746, i8* %135, align 1
  %747 = lshr i64 %719, 63
  %748 = xor i64 %745, %747
  %749 = xor i64 %745, %727
  %750 = add nuw nsw i64 %748, %749
  %751 = icmp eq i64 %750, 2
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %136, align 1
  %753 = add i64 %715, 19
  store i64 %753, i64* %3, align 8
  %754 = load i32, i32* %682, align 4
  %755 = sext i32 %754 to i64
  store i64 %755, i64* %RCX.i381, align 8
  %756 = shl nsw i64 %755, 3
  %757 = add i64 %756, %728
  %758 = add i64 %715, 24
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to double*
  %760 = load double, double* %759, align 8
  store double %760, double* %146, align 1
  store double 0.000000e+00, double* %147, align 1
  %761 = add i64 %679, 48
  %762 = add i64 %715, 28
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i64*
  %764 = load i64, i64* %763, align 8
  store i64 %764, i64* %RAX.i451, align 8
  %765 = add i64 %715, 32
  store i64 %765, i64* %3, align 8
  %766 = load i32, i32* %682, align 4
  %767 = sext i32 %766 to i64
  %768 = shl nsw i64 %767, 13
  store i64 %768, i64* %RCX.i381, align 8
  %769 = lshr i64 %767, 50
  %770 = and i64 %769, 1
  %771 = add i64 %768, %764
  store i64 %771, i64* %RAX.i451, align 8
  %772 = icmp ult i64 %771, %764
  %773 = icmp ult i64 %771, %768
  %774 = or i1 %772, %773
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %131, align 1
  %776 = trunc i64 %771 to i32
  %777 = and i32 %776, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %132, align 1
  %782 = xor i64 %764, %771
  %783 = lshr i64 %782, 4
  %784 = trunc i64 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %133, align 1
  %786 = icmp eq i64 %771, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %134, align 1
  %788 = lshr i64 %771, 63
  %789 = trunc i64 %788 to i8
  store i8 %789, i8* %135, align 1
  %790 = lshr i64 %764, 63
  %791 = xor i64 %788, %790
  %792 = xor i64 %788, %770
  %793 = add nuw nsw i64 %791, %792
  %794 = icmp eq i64 %793, 2
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %136, align 1
  %796 = load i64, i64* %RBP.i, align 8
  %797 = add i64 %796, -64
  %798 = add i64 %715, 43
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = sext i32 %800 to i64
  store i64 %801, i64* %RCX.i381, align 8
  %802 = shl nsw i64 %801, 3
  %803 = add i64 %802, %771
  %804 = add i64 %715, 48
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to double*
  %806 = load double, double* %805, align 8
  %807 = fmul double %760, %806
  store double %807, double* %146, align 1
  store i64 0, i64* %139, align 1
  %808 = add i64 %796, 32
  %809 = add i64 %715, 52
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i64*
  %811 = load i64, i64* %810, align 8
  store i64 %811, i64* %RAX.i451, align 8
  %812 = add i64 %796, -60
  %813 = add i64 %715, 56
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i32*
  %815 = load i32, i32* %814, align 4
  %816 = sext i32 %815 to i64
  %817 = shl nsw i64 %816, 13
  store i64 %817, i64* %RCX.i381, align 8
  %818 = lshr i64 %816, 50
  %819 = and i64 %818, 1
  %820 = add i64 %817, %811
  store i64 %820, i64* %RAX.i451, align 8
  %821 = icmp ult i64 %820, %811
  %822 = icmp ult i64 %820, %817
  %823 = or i1 %821, %822
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %131, align 1
  %825 = trunc i64 %820 to i32
  %826 = and i32 %825, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826)
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %132, align 1
  %831 = xor i64 %811, %820
  %832 = lshr i64 %831, 4
  %833 = trunc i64 %832 to i8
  %834 = and i8 %833, 1
  store i8 %834, i8* %133, align 1
  %835 = icmp eq i64 %820, 0
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %134, align 1
  %837 = lshr i64 %820, 63
  %838 = trunc i64 %837 to i8
  store i8 %838, i8* %135, align 1
  %839 = lshr i64 %811, 63
  %840 = xor i64 %837, %839
  %841 = xor i64 %837, %819
  %842 = add nuw nsw i64 %840, %841
  %843 = icmp eq i64 %842, 2
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %136, align 1
  %845 = add i64 %715, 67
  store i64 %845, i64* %3, align 8
  %846 = load i32, i32* %799, align 4
  %847 = sext i32 %846 to i64
  store i64 %847, i64* %RCX.i381, align 8
  %848 = shl nsw i64 %847, 3
  %849 = add i64 %848, %820
  %850 = add i64 %715, 72
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to double*
  %852 = load double, double* %851, align 8
  %853 = fadd double %807, %852
  store double %853, double* %146, align 1
  store i64 0, i64* %139, align 1
  %854 = add i64 %715, 77
  store i64 %854, i64* %3, align 8
  store double %853, double* %851, align 8
  %855 = load i64, i64* %RBP.i, align 8
  %856 = add i64 %855, -68
  %857 = load i64, i64* %3, align 8
  %858 = add i64 %857, 3
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %856 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = add i32 %860, 1
  %862 = zext i32 %861 to i64
  store i64 %862, i64* %RAX.i451, align 8
  %863 = icmp eq i32 %860, -1
  %864 = icmp eq i32 %861, 0
  %865 = or i1 %863, %864
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %131, align 1
  %867 = and i32 %861, 255
  %868 = tail call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  store i8 %871, i8* %132, align 1
  %872 = xor i32 %860, %861
  %873 = lshr i32 %872, 4
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  store i8 %875, i8* %133, align 1
  %876 = zext i1 %864 to i8
  store i8 %876, i8* %134, align 1
  %877 = lshr i32 %861, 31
  %878 = trunc i32 %877 to i8
  store i8 %878, i8* %135, align 1
  %879 = lshr i32 %860, 31
  %880 = xor i32 %877, %879
  %881 = add nuw nsw i32 %880, %877
  %882 = icmp eq i32 %881, 2
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %136, align 1
  %884 = add i64 %857, 9
  store i64 %884, i64* %3, align 8
  store i32 %861, i32* %859, align 4
  %885 = load i64, i64* %3, align 8
  %886 = add i64 %885, -98
  store i64 %886, i64* %3, align 8
  br label %block_.L_4011fa

block_.L_401261:                                  ; preds = %block_.L_4011fa
  %887 = add i64 %679, -64
  %888 = add i64 %715, 8
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = add i32 %890, 1
  %892 = zext i32 %891 to i64
  store i64 %892, i64* %RAX.i451, align 8
  %893 = icmp eq i32 %890, -1
  %894 = icmp eq i32 %891, 0
  %895 = or i1 %893, %894
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %131, align 1
  %897 = and i32 %891, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %132, align 1
  %902 = xor i32 %890, %891
  %903 = lshr i32 %902, 4
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  store i8 %905, i8* %133, align 1
  %906 = zext i1 %894 to i8
  store i8 %906, i8* %134, align 1
  %907 = lshr i32 %891, 31
  %908 = trunc i32 %907 to i8
  store i8 %908, i8* %135, align 1
  %909 = lshr i32 %890, 31
  %910 = xor i32 %907, %909
  %911 = add nuw nsw i32 %910, %907
  %912 = icmp eq i32 %911, 2
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %136, align 1
  %914 = add i64 %715, 14
  store i64 %914, i64* %3, align 8
  store i32 %891, i32* %889, align 4
  %915 = load i64, i64* %3, align 8
  %916 = add i64 %915, -163
  store i64 %916, i64* %3, align 8
  br label %block_.L_4011cc

block_.L_401274:                                  ; preds = %block_.L_4011cc
  %917 = add i64 %590, -60
  %918 = add i64 %626, 8
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  %921 = add i32 %920, 1
  %922 = zext i32 %921 to i64
  store i64 %922, i64* %RAX.i451, align 8
  %923 = icmp eq i32 %920, -1
  %924 = icmp eq i32 %921, 0
  %925 = or i1 %923, %924
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %131, align 1
  %927 = and i32 %921, 255
  %928 = tail call i32 @llvm.ctpop.i32(i32 %927)
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = xor i8 %930, 1
  store i8 %931, i8* %132, align 1
  %932 = xor i32 %920, %921
  %933 = lshr i32 %932, 4
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  store i8 %935, i8* %133, align 1
  %936 = zext i1 %924 to i8
  store i8 %936, i8* %134, align 1
  %937 = lshr i32 %921, 31
  %938 = trunc i32 %937 to i8
  store i8 %938, i8* %135, align 1
  %939 = lshr i32 %920, 31
  %940 = xor i32 %937, %939
  %941 = add nuw nsw i32 %940, %937
  %942 = icmp eq i32 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %136, align 1
  %944 = add i64 %626, 14
  store i64 %944, i64* %3, align 8
  store i32 %921, i32* %919, align 4
  %945 = load i64, i64* %3, align 8
  %946 = add i64 %945, -201
  store i64 %946, i64* %3, align 8
  br label %block_.L_4011b9

block_.L_401287:                                  ; preds = %block_.L_4011b9
  %947 = add i64 %585, 7
  store i64 %947, i64* %3, align 8
  store i32 0, i32* %552, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_40128e

block_.L_40128e:                                  ; preds = %block_.L_401349, %block_.L_401287
  %948 = phi i64 [ %1346, %block_.L_401349 ], [ %.pre6, %block_.L_401287 ]
  %949 = load i64, i64* %RBP.i, align 8
  %950 = add i64 %949, -60
  %951 = add i64 %948, 3
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  %953 = load i32, i32* %952, align 4
  %954 = zext i32 %953 to i64
  store i64 %954, i64* %RAX.i451, align 8
  %955 = add i64 %949, -28
  %956 = add i64 %948, 6
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = sub i32 %953, %958
  %960 = icmp ult i32 %953, %958
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %131, align 1
  %962 = and i32 %959, 255
  %963 = tail call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  store i8 %966, i8* %132, align 1
  %967 = xor i32 %958, %953
  %968 = xor i32 %967, %959
  %969 = lshr i32 %968, 4
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  store i8 %971, i8* %133, align 1
  %972 = icmp eq i32 %959, 0
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %134, align 1
  %974 = lshr i32 %959, 31
  %975 = trunc i32 %974 to i8
  store i8 %975, i8* %135, align 1
  %976 = lshr i32 %953, 31
  %977 = lshr i32 %958, 31
  %978 = xor i32 %977, %976
  %979 = xor i32 %974, %976
  %980 = add nuw nsw i32 %979, %978
  %981 = icmp eq i32 %980, 2
  %982 = zext i1 %981 to i8
  store i8 %982, i8* %136, align 1
  %983 = icmp ne i8 %975, 0
  %984 = xor i1 %983, %981
  %.v14 = select i1 %984, i64 12, i64 206
  %985 = add i64 %948, %.v14
  store i64 %985, i64* %3, align 8
  br i1 %984, label %block_40129a, label %block_.L_40135c

block_40129a:                                     ; preds = %block_.L_40128e
  %986 = add i64 %949, -64
  %987 = add i64 %985, 7
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  store i32 0, i32* %988, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_4012a1

block_.L_4012a1:                                  ; preds = %block_.L_401336, %block_40129a
  %989 = phi i64 [ %1316, %block_.L_401336 ], [ %.pre7, %block_40129a ]
  %990 = load i64, i64* %RBP.i, align 8
  %991 = add i64 %990, -64
  %992 = add i64 %989, 3
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RAX.i451, align 8
  %996 = add i64 %990, -40
  %997 = add i64 %989, 6
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = sub i32 %994, %999
  %1001 = icmp ult i32 %994, %999
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %131, align 1
  %1003 = and i32 %1000, 255
  %1004 = tail call i32 @llvm.ctpop.i32(i32 %1003)
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  store i8 %1007, i8* %132, align 1
  %1008 = xor i32 %999, %994
  %1009 = xor i32 %1008, %1000
  %1010 = lshr i32 %1009, 4
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  store i8 %1012, i8* %133, align 1
  %1013 = icmp eq i32 %1000, 0
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %134, align 1
  %1015 = lshr i32 %1000, 31
  %1016 = trunc i32 %1015 to i8
  store i8 %1016, i8* %135, align 1
  %1017 = lshr i32 %994, 31
  %1018 = lshr i32 %999, 31
  %1019 = xor i32 %1018, %1017
  %1020 = xor i32 %1015, %1017
  %1021 = add nuw nsw i32 %1020, %1019
  %1022 = icmp eq i32 %1021, 2
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %136, align 1
  %1024 = icmp ne i8 %1016, 0
  %1025 = xor i1 %1024, %1022
  %.v15 = select i1 %1025, i64 12, i64 168
  %1026 = add i64 %989, %.v15
  store i64 %1026, i64* %3, align 8
  br i1 %1025, label %block_4012ad, label %block_.L_401349

block_4012ad:                                     ; preds = %block_.L_4012a1
  store i32 0, i32* %140, align 1
  store i32 0, i32* %142, align 1
  store i32 0, i32* %143, align 1
  store i32 0, i32* %145, align 1
  %1027 = add i64 %990, 56
  %1028 = add i64 %1026, 7
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i64*
  %1030 = load i64, i64* %1029, align 8
  store i64 %1030, i64* %RAX.i451, align 8
  %1031 = add i64 %990, -60
  %1032 = add i64 %1026, 11
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = shl nsw i64 %1035, 13
  store i64 %1036, i64* %RCX.i381, align 8
  %1037 = lshr i64 %1035, 50
  %1038 = and i64 %1037, 1
  %1039 = add i64 %1036, %1030
  store i64 %1039, i64* %RAX.i451, align 8
  %1040 = icmp ult i64 %1039, %1030
  %1041 = icmp ult i64 %1039, %1036
  %1042 = or i1 %1040, %1041
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %131, align 1
  %1044 = trunc i64 %1039 to i32
  %1045 = and i32 %1044, 255
  %1046 = tail call i32 @llvm.ctpop.i32(i32 %1045)
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  %1049 = xor i8 %1048, 1
  store i8 %1049, i8* %132, align 1
  %1050 = xor i64 %1030, %1039
  %1051 = lshr i64 %1050, 4
  %1052 = trunc i64 %1051 to i8
  %1053 = and i8 %1052, 1
  store i8 %1053, i8* %133, align 1
  %1054 = icmp eq i64 %1039, 0
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %134, align 1
  %1056 = lshr i64 %1039, 63
  %1057 = trunc i64 %1056 to i8
  store i8 %1057, i8* %135, align 1
  %1058 = lshr i64 %1030, 63
  %1059 = xor i64 %1056, %1058
  %1060 = xor i64 %1056, %1038
  %1061 = add nuw nsw i64 %1059, %1060
  %1062 = icmp eq i64 %1061, 2
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %136, align 1
  %1064 = add i64 %1026, 22
  store i64 %1064, i64* %3, align 8
  %1065 = load i32, i32* %993, align 4
  %1066 = sext i32 %1065 to i64
  store i64 %1066, i64* %RCX.i381, align 8
  %1067 = shl nsw i64 %1066, 3
  %1068 = add i64 %1067, %1039
  %1069 = add i64 %1026, 27
  store i64 %1069, i64* %3, align 8
  %1070 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %137, i64 0, i32 0, i32 0, i32 0, i64 0
  %1071 = load i64, i64* %1070, align 1
  %1072 = inttoptr i64 %1068 to i64*
  store i64 %1071, i64* %1072, align 8
  %1073 = load i64, i64* %RBP.i, align 8
  %1074 = add i64 %1073, -68
  %1075 = load i64, i64* %3, align 8
  %1076 = add i64 %1075, 7
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1074 to i32*
  store i32 0, i32* %1077, align 4
  %.pre8 = load i64, i64* %3, align 8
  br label %block_.L_4012cf

block_.L_4012cf:                                  ; preds = %block_4012db, %block_4012ad
  %1078 = phi i64 [ %1286, %block_4012db ], [ %.pre8, %block_4012ad ]
  %1079 = load i64, i64* %RBP.i, align 8
  %1080 = add i64 %1079, -68
  %1081 = add i64 %1078, 3
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  %1083 = load i32, i32* %1082, align 4
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RAX.i451, align 8
  %1085 = add i64 %1079, -32
  %1086 = add i64 %1078, 6
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = sub i32 %1083, %1088
  %1090 = icmp ult i32 %1083, %1088
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %131, align 1
  %1092 = and i32 %1089, 255
  %1093 = tail call i32 @llvm.ctpop.i32(i32 %1092)
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  %1096 = xor i8 %1095, 1
  store i8 %1096, i8* %132, align 1
  %1097 = xor i32 %1088, %1083
  %1098 = xor i32 %1097, %1089
  %1099 = lshr i32 %1098, 4
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  store i8 %1101, i8* %133, align 1
  %1102 = icmp eq i32 %1089, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %134, align 1
  %1104 = lshr i32 %1089, 31
  %1105 = trunc i32 %1104 to i8
  store i8 %1105, i8* %135, align 1
  %1106 = lshr i32 %1083, 31
  %1107 = lshr i32 %1088, 31
  %1108 = xor i32 %1107, %1106
  %1109 = xor i32 %1104, %1106
  %1110 = add nuw nsw i32 %1109, %1108
  %1111 = icmp eq i32 %1110, 2
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %136, align 1
  %1113 = icmp ne i8 %1105, 0
  %1114 = xor i1 %1113, %1111
  %.v16 = select i1 %1114, i64 12, i64 103
  %1115 = add i64 %1078, %.v16
  store i64 %1115, i64* %3, align 8
  br i1 %1114, label %block_4012db, label %block_.L_401336

block_4012db:                                     ; preds = %block_.L_4012cf
  %1116 = add i64 %1079, -56
  %1117 = add i64 %1115, 4
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %RAX.i451, align 8
  %1120 = add i64 %1079, -60
  %1121 = add i64 %1115, 8
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = shl nsw i64 %1124, 13
  store i64 %1125, i64* %RCX.i381, align 8
  %1126 = lshr i64 %1124, 50
  %1127 = and i64 %1126, 1
  %1128 = add i64 %1125, %1119
  store i64 %1128, i64* %RAX.i451, align 8
  %1129 = icmp ult i64 %1128, %1119
  %1130 = icmp ult i64 %1128, %1125
  %1131 = or i1 %1129, %1130
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %131, align 1
  %1133 = trunc i64 %1128 to i32
  %1134 = and i32 %1133, 255
  %1135 = tail call i32 @llvm.ctpop.i32(i32 %1134)
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  %1138 = xor i8 %1137, 1
  store i8 %1138, i8* %132, align 1
  %1139 = xor i64 %1119, %1128
  %1140 = lshr i64 %1139, 4
  %1141 = trunc i64 %1140 to i8
  %1142 = and i8 %1141, 1
  store i8 %1142, i8* %133, align 1
  %1143 = icmp eq i64 %1128, 0
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %134, align 1
  %1145 = lshr i64 %1128, 63
  %1146 = trunc i64 %1145 to i8
  store i8 %1146, i8* %135, align 1
  %1147 = lshr i64 %1119, 63
  %1148 = xor i64 %1145, %1147
  %1149 = xor i64 %1145, %1127
  %1150 = add nuw nsw i64 %1148, %1149
  %1151 = icmp eq i64 %1150, 2
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %136, align 1
  %1153 = add i64 %1115, 19
  store i64 %1153, i64* %3, align 8
  %1154 = load i32, i32* %1082, align 4
  %1155 = sext i32 %1154 to i64
  store i64 %1155, i64* %RCX.i381, align 8
  %1156 = shl nsw i64 %1155, 3
  %1157 = add i64 %1156, %1128
  %1158 = add i64 %1115, 24
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to double*
  %1160 = load double, double* %1159, align 8
  store double %1160, double* %146, align 1
  store double 0.000000e+00, double* %147, align 1
  %1161 = add i64 %1079, 32
  %1162 = add i64 %1115, 28
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1161 to i64*
  %1164 = load i64, i64* %1163, align 8
  store i64 %1164, i64* %RAX.i451, align 8
  %1165 = add i64 %1115, 32
  store i64 %1165, i64* %3, align 8
  %1166 = load i32, i32* %1082, align 4
  %1167 = sext i32 %1166 to i64
  %1168 = shl nsw i64 %1167, 13
  store i64 %1168, i64* %RCX.i381, align 8
  %1169 = lshr i64 %1167, 50
  %1170 = and i64 %1169, 1
  %1171 = add i64 %1168, %1164
  store i64 %1171, i64* %RAX.i451, align 8
  %1172 = icmp ult i64 %1171, %1164
  %1173 = icmp ult i64 %1171, %1168
  %1174 = or i1 %1172, %1173
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %131, align 1
  %1176 = trunc i64 %1171 to i32
  %1177 = and i32 %1176, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177)
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %132, align 1
  %1182 = xor i64 %1164, %1171
  %1183 = lshr i64 %1182, 4
  %1184 = trunc i64 %1183 to i8
  %1185 = and i8 %1184, 1
  store i8 %1185, i8* %133, align 1
  %1186 = icmp eq i64 %1171, 0
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %134, align 1
  %1188 = lshr i64 %1171, 63
  %1189 = trunc i64 %1188 to i8
  store i8 %1189, i8* %135, align 1
  %1190 = lshr i64 %1164, 63
  %1191 = xor i64 %1188, %1190
  %1192 = xor i64 %1188, %1170
  %1193 = add nuw nsw i64 %1191, %1192
  %1194 = icmp eq i64 %1193, 2
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %136, align 1
  %1196 = load i64, i64* %RBP.i, align 8
  %1197 = add i64 %1196, -64
  %1198 = add i64 %1115, 43
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i32*
  %1200 = load i32, i32* %1199, align 4
  %1201 = sext i32 %1200 to i64
  store i64 %1201, i64* %RCX.i381, align 8
  %1202 = shl nsw i64 %1201, 3
  %1203 = add i64 %1202, %1171
  %1204 = add i64 %1115, 48
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to double*
  %1206 = load double, double* %1205, align 8
  %1207 = fmul double %1160, %1206
  store double %1207, double* %146, align 1
  store i64 0, i64* %139, align 1
  %1208 = add i64 %1196, 56
  %1209 = add i64 %1115, 52
  store i64 %1209, i64* %3, align 8
  %1210 = inttoptr i64 %1208 to i64*
  %1211 = load i64, i64* %1210, align 8
  store i64 %1211, i64* %RAX.i451, align 8
  %1212 = add i64 %1196, -60
  %1213 = add i64 %1115, 56
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = sext i32 %1215 to i64
  %1217 = shl nsw i64 %1216, 13
  store i64 %1217, i64* %RCX.i381, align 8
  %1218 = lshr i64 %1216, 50
  %1219 = and i64 %1218, 1
  %1220 = add i64 %1217, %1211
  store i64 %1220, i64* %RAX.i451, align 8
  %1221 = icmp ult i64 %1220, %1211
  %1222 = icmp ult i64 %1220, %1217
  %1223 = or i1 %1221, %1222
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %131, align 1
  %1225 = trunc i64 %1220 to i32
  %1226 = and i32 %1225, 255
  %1227 = tail call i32 @llvm.ctpop.i32(i32 %1226)
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  %1230 = xor i8 %1229, 1
  store i8 %1230, i8* %132, align 1
  %1231 = xor i64 %1211, %1220
  %1232 = lshr i64 %1231, 4
  %1233 = trunc i64 %1232 to i8
  %1234 = and i8 %1233, 1
  store i8 %1234, i8* %133, align 1
  %1235 = icmp eq i64 %1220, 0
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %134, align 1
  %1237 = lshr i64 %1220, 63
  %1238 = trunc i64 %1237 to i8
  store i8 %1238, i8* %135, align 1
  %1239 = lshr i64 %1211, 63
  %1240 = xor i64 %1237, %1239
  %1241 = xor i64 %1237, %1219
  %1242 = add nuw nsw i64 %1240, %1241
  %1243 = icmp eq i64 %1242, 2
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %136, align 1
  %1245 = add i64 %1115, 67
  store i64 %1245, i64* %3, align 8
  %1246 = load i32, i32* %1199, align 4
  %1247 = sext i32 %1246 to i64
  store i64 %1247, i64* %RCX.i381, align 8
  %1248 = shl nsw i64 %1247, 3
  %1249 = add i64 %1248, %1220
  %1250 = add i64 %1115, 72
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to double*
  %1252 = load double, double* %1251, align 8
  %1253 = fadd double %1207, %1252
  store double %1253, double* %146, align 1
  store i64 0, i64* %139, align 1
  %1254 = add i64 %1115, 77
  store i64 %1254, i64* %3, align 8
  store double %1253, double* %1251, align 8
  %1255 = load i64, i64* %RBP.i, align 8
  %1256 = add i64 %1255, -68
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
  %1272 = xor i32 %1260, %1261
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
  br label %block_.L_4012cf

block_.L_401336:                                  ; preds = %block_.L_4012cf
  %1287 = add i64 %1079, -64
  %1288 = add i64 %1115, 8
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
  %1302 = xor i32 %1290, %1291
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
  %1314 = add i64 %1115, 14
  store i64 %1314, i64* %3, align 8
  store i32 %1291, i32* %1289, align 4
  %1315 = load i64, i64* %3, align 8
  %1316 = add i64 %1315, -163
  store i64 %1316, i64* %3, align 8
  br label %block_.L_4012a1

block_.L_401349:                                  ; preds = %block_.L_4012a1
  %1317 = add i64 %990, -60
  %1318 = add i64 %1026, 8
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
  %1332 = xor i32 %1320, %1321
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
  %1344 = add i64 %1026, 14
  store i64 %1344, i64* %3, align 8
  store i32 %1321, i32* %1319, align 4
  %1345 = load i64, i64* %3, align 8
  %1346 = add i64 %1345, -201
  store i64 %1346, i64* %3, align 8
  br label %block_.L_40128e

block_.L_40135c:                                  ; preds = %block_.L_40128e
  %1347 = add i64 %985, 1
  store i64 %1347, i64* %3, align 8
  %1348 = load i64, i64* %6, align 8
  %1349 = add i64 %1348, 8
  %1350 = inttoptr i64 %1348 to i64*
  %1351 = load i64, i64* %1350, align 8
  store i64 %1351, i64* %RBX.i454, align 8
  store i64 %1349, i64* %6, align 8
  %1352 = add i64 %985, 3
  store i64 %1352, i64* %3, align 8
  %1353 = add i64 %1348, 16
  %1354 = inttoptr i64 %1349 to i64*
  %1355 = load i64, i64* %1354, align 8
  store i64 %1355, i64* %R14.i456, align 8
  store i64 %1353, i64* %6, align 8
  %1356 = add i64 %985, 5
  store i64 %1356, i64* %3, align 8
  %1357 = add i64 %1348, 24
  %1358 = inttoptr i64 %1353 to i64*
  %1359 = load i64, i64* %1358, align 8
  store i64 %1359, i64* %R15.i458, align 8
  store i64 %1357, i64* %6, align 8
  %1360 = add i64 %985, 6
  store i64 %1360, i64* %3, align 8
  %1361 = add i64 %1348, 32
  %1362 = inttoptr i64 %1357 to i64*
  %1363 = load i64, i64* %1362, align 8
  store i64 %1363, i64* %RBP.i, align 8
  store i64 %1361, i64* %6, align 8
  %1364 = add i64 %985, 7
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1361 to i64*
  %1366 = load i64, i64* %1365, align 8
  store i64 %1366, i64* %3, align 8
  %1367 = add i64 %1348, 40
  store i64 %1367, i64* %6, align 8
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

define %struct.Memory* @routine_pushq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x30__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x28__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x20__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x18__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x10__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__r9__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__r15__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %R15, align 8
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

define %struct.Memory* @routine_movq__r10__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__r11__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_4011b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_40119f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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

define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_40118c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401125(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401191(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4010f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

define %struct.Memory* @routine_jmpq_.L_4010e4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_401287(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_401274(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_401261(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4011fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401266(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011cc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401279(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4011b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_40135c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401349(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401336(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4012cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40133b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4012a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40134e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40128e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_popq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
