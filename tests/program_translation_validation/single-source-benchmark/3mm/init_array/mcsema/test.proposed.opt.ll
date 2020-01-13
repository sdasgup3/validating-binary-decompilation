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
define %struct.Memory* @init_array(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RAX.i344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 24
  %12 = add i64 %10, 7
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i344, align 8
  %R10.i342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %15 = add i64 %7, 16
  %16 = add i64 %10, 11
  store i64 %16, i64* %3, align 8
  %17 = inttoptr i64 %15 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %R10.i342, align 8
  %R11.i339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %19 = add i64 %7, 8
  %20 = add i64 %10, 15
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %19 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %R11.i339, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %23 to i32*
  %24 = add i64 %7, -12
  %25 = load i32, i32* %EDI.i, align 4
  %26 = add i64 %10, 18
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %24 to i32*
  store i32 %25, i32* %27, align 4
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %28 to i32*
  %29 = load i64, i64* %RBP.i, align 8
  %30 = add i64 %29, -8
  %31 = load i32, i32* %ESI.i, align 4
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 3
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %30 to i32*
  store i32 %31, i32* %34, align 4
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %35 to i32*
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -12
  %38 = load i32, i32* %EDX.i, align 4
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 3
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %37 to i32*
  store i32 %38, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i = bitcast %union.anon* %42 to i32*
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i32, i32* %ECX.i, align 4
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 3
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i32*
  store i32 %45, i32* %48, align 4
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %49 to i32*
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -20
  %52 = load i32, i32* %R8D.i, align 4
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %55, align 4
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -32
  %58 = load i64, i64* %R9.i, align 8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -36
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 7
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %63 to i32*
  store i32 0, i32* %66, align 4
  %67 = load i64, i64* %RBP.i, align 8
  %68 = add i64 %67, -48
  %69 = load i64, i64* %R11.i339, align 8
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %68 to i64*
  store i64 %69, i64* %72, align 8
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -56
  %75 = load i64, i64* %R10.i342, align 8
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 4
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %74 to i64*
  store i64 %75, i64* %78, align 8
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -64
  %81 = load i64, i64* %RAX.i344, align 8
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84, align 8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %92 = bitcast [32 x %union.VectorReg]* %91 to double*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %94 = bitcast %union.VectorReg* %93 to double*
  %RCX.i274 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %RDX.i271 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400bb7

block_.L_400bb7:                                  ; preds = %block_.L_400c19, %entry
  %95 = phi i64 [ %297, %block_.L_400c19 ], [ %.pre, %entry ]
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -36
  %98 = add i64 %95, 3
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i32*
  %100 = load i32, i32* %99, align 4
  %101 = zext i32 %100 to i64
  store i64 %101, i64* %RAX.i344, align 8
  %102 = add i64 %96, -4
  %103 = add i64 %95, 6
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = sub i32 %100, %105
  %107 = icmp ult i32 %100, %105
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %85, align 1
  %109 = and i32 %106, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109)
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %86, align 1
  %114 = xor i32 %105, %100
  %115 = xor i32 %114, %106
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %87, align 1
  %119 = icmp eq i32 %106, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %88, align 1
  %121 = lshr i32 %106, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %89, align 1
  %123 = lshr i32 %100, 31
  %124 = lshr i32 %105, 31
  %125 = xor i32 %124, %123
  %126 = xor i32 %121, %123
  %127 = add nuw nsw i32 %126, %125
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %90, align 1
  %130 = icmp ne i8 %122, 0
  %131 = xor i1 %130, %128
  %.v = select i1 %131, i64 12, i64 117
  %132 = add i64 %95, %.v
  store i64 %132, i64* %3, align 8
  br i1 %131, label %block_400bc3, label %block_.L_400c2c

block_400bc3:                                     ; preds = %block_.L_400bb7
  %133 = add i64 %96, -40
  %134 = add i64 %132, 7
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i32*
  store i32 0, i32* %135, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400bca

block_.L_400bca:                                  ; preds = %block_400bd6, %block_400bc3
  %136 = phi i64 [ %268, %block_400bd6 ], [ %.pre1, %block_400bc3 ]
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -40
  %139 = add i64 %136, 3
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RAX.i344, align 8
  %143 = add i64 %137, -12
  %144 = add i64 %136, 6
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  %146 = load i32, i32* %145, align 4
  %147 = sub i32 %141, %146
  %148 = icmp ult i32 %141, %146
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %85, align 1
  %150 = and i32 %147, 255
  %151 = tail call i32 @llvm.ctpop.i32(i32 %150)
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  store i8 %154, i8* %86, align 1
  %155 = xor i32 %146, %141
  %156 = xor i32 %155, %147
  %157 = lshr i32 %156, 4
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  store i8 %159, i8* %87, align 1
  %160 = icmp eq i32 %147, 0
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %88, align 1
  %162 = lshr i32 %147, 31
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %89, align 1
  %164 = lshr i32 %141, 31
  %165 = lshr i32 %146, 31
  %166 = xor i32 %165, %164
  %167 = xor i32 %162, %164
  %168 = add nuw nsw i32 %167, %166
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %90, align 1
  %171 = icmp ne i8 %163, 0
  %172 = xor i1 %171, %169
  %.v8 = select i1 %172, i64 12, i64 79
  %173 = add i64 %136, %.v8
  store i64 %173, i64* %3, align 8
  %174 = add i64 %137, -36
  br i1 %172, label %block_400bd6, label %block_.L_400c19

block_400bd6:                                     ; preds = %block_.L_400bca
  %175 = add i64 %173, 3
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RAX.i344, align 8
  %179 = sitofp i32 %177 to double
  store double %179, double* %92, align 1
  %180 = add i64 %173, 10
  store i64 %180, i64* %3, align 8
  %181 = load i32, i32* %140, align 4
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %RAX.i344, align 8
  %183 = sitofp i32 %181 to double
  store double %183, double* %94, align 1
  %184 = fmul double %179, %183
  store double %184, double* %92, align 1
  %185 = add i64 %137, -4
  %186 = add i64 %173, 21
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RAX.i344, align 8
  %190 = sitofp i32 %188 to double
  store double %190, double* %94, align 1
  %191 = fdiv double %184, %190
  store double %191, double* %92, align 1
  %192 = add i64 %137, -32
  %193 = add i64 %173, 33
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i64*
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %RCX.i274, align 8
  %196 = add i64 %173, 37
  store i64 %196, i64* %3, align 8
  %197 = load i32, i32* %176, align 4
  %198 = sext i32 %197 to i64
  %199 = shl nsw i64 %198, 13
  store i64 %199, i64* %RDX.i271, align 8
  %200 = lshr i64 %198, 50
  %201 = and i64 %200, 1
  %202 = add i64 %199, %195
  store i64 %202, i64* %RCX.i274, align 8
  %203 = icmp ult i64 %202, %195
  %204 = icmp ult i64 %202, %199
  %205 = or i1 %203, %204
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %85, align 1
  %207 = trunc i64 %202 to i32
  %208 = and i32 %207, 255
  %209 = tail call i32 @llvm.ctpop.i32(i32 %208)
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = xor i8 %211, 1
  store i8 %212, i8* %86, align 1
  %213 = xor i64 %195, %202
  %214 = lshr i64 %213, 4
  %215 = trunc i64 %214 to i8
  %216 = and i8 %215, 1
  store i8 %216, i8* %87, align 1
  %217 = icmp eq i64 %202, 0
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %88, align 1
  %219 = lshr i64 %202, 63
  %220 = trunc i64 %219 to i8
  store i8 %220, i8* %89, align 1
  %221 = lshr i64 %195, 63
  %222 = xor i64 %219, %221
  %223 = xor i64 %219, %201
  %224 = add nuw nsw i64 %222, %223
  %225 = icmp eq i64 %224, 2
  %226 = zext i1 %225 to i8
  store i8 %226, i8* %90, align 1
  %227 = load i64, i64* %RBP.i, align 8
  %228 = add i64 %227, -40
  %229 = add i64 %173, 48
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  store i64 %232, i64* %RDX.i271, align 8
  %233 = shl nsw i64 %232, 3
  %234 = add i64 %233, %202
  %235 = add i64 %173, 53
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to double*
  store double %191, double* %236, align 8
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -40
  %239 = load i64, i64* %3, align 8
  %240 = add i64 %239, 3
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %238 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = add i32 %242, 1
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RAX.i344, align 8
  %245 = icmp eq i32 %242, -1
  %246 = icmp eq i32 %243, 0
  %247 = or i1 %245, %246
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %85, align 1
  %249 = and i32 %243, 255
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249)
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  store i8 %253, i8* %86, align 1
  %254 = xor i32 %242, %243
  %255 = lshr i32 %254, 4
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  store i8 %257, i8* %87, align 1
  %258 = zext i1 %246 to i8
  store i8 %258, i8* %88, align 1
  %259 = lshr i32 %243, 31
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %89, align 1
  %261 = lshr i32 %242, 31
  %262 = xor i32 %259, %261
  %263 = add nuw nsw i32 %262, %259
  %264 = icmp eq i32 %263, 2
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %90, align 1
  %266 = add i64 %239, 9
  store i64 %266, i64* %3, align 8
  store i32 %243, i32* %241, align 4
  %267 = load i64, i64* %3, align 8
  %268 = add i64 %267, -74
  store i64 %268, i64* %3, align 8
  br label %block_.L_400bca

block_.L_400c19:                                  ; preds = %block_.L_400bca
  %269 = add i64 %173, 8
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %174 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, 1
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RAX.i344, align 8
  %274 = icmp eq i32 %271, -1
  %275 = icmp eq i32 %272, 0
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %85, align 1
  %278 = and i32 %272, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %86, align 1
  %283 = xor i32 %271, %272
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  store i8 %286, i8* %87, align 1
  %287 = zext i1 %275 to i8
  store i8 %287, i8* %88, align 1
  %288 = lshr i32 %272, 31
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %89, align 1
  %290 = lshr i32 %271, 31
  %291 = xor i32 %288, %290
  %292 = add nuw nsw i32 %291, %288
  %293 = icmp eq i32 %292, 2
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %90, align 1
  %295 = add i64 %173, 14
  store i64 %295, i64* %3, align 8
  store i32 %272, i32* %270, align 4
  %296 = load i64, i64* %3, align 8
  %297 = add i64 %296, -112
  store i64 %297, i64* %3, align 8
  br label %block_.L_400bb7

block_.L_400c2c:                                  ; preds = %block_.L_400bb7
  %298 = add i64 %132, 7
  store i64 %298, i64* %3, align 8
  store i32 0, i32* %99, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400c33

block_.L_400c33:                                  ; preds = %block_.L_400c98, %block_.L_400c2c
  %299 = phi i64 [ %521, %block_.L_400c98 ], [ %.pre2, %block_.L_400c2c ]
  %300 = load i64, i64* %RBP.i, align 8
  %301 = add i64 %300, -36
  %302 = add i64 %299, 3
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RAX.i344, align 8
  %306 = add i64 %300, -12
  %307 = add i64 %299, 6
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = sub i32 %304, %309
  %311 = icmp ult i32 %304, %309
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %85, align 1
  %313 = and i32 %310, 255
  %314 = tail call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  store i8 %317, i8* %86, align 1
  %318 = xor i32 %309, %304
  %319 = xor i32 %318, %310
  %320 = lshr i32 %319, 4
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  store i8 %322, i8* %87, align 1
  %323 = icmp eq i32 %310, 0
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %88, align 1
  %325 = lshr i32 %310, 31
  %326 = trunc i32 %325 to i8
  store i8 %326, i8* %89, align 1
  %327 = lshr i32 %304, 31
  %328 = lshr i32 %309, 31
  %329 = xor i32 %328, %327
  %330 = xor i32 %325, %327
  %331 = add nuw nsw i32 %330, %329
  %332 = icmp eq i32 %331, 2
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %90, align 1
  %334 = icmp ne i8 %326, 0
  %335 = xor i1 %334, %332
  %.v9 = select i1 %335, i64 12, i64 120
  %336 = add i64 %299, %.v9
  store i64 %336, i64* %3, align 8
  br i1 %335, label %block_400c3f, label %block_.L_400cab

block_400c3f:                                     ; preds = %block_.L_400c33
  %337 = add i64 %300, -40
  %338 = add i64 %336, 7
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  store i32 0, i32* %339, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400c46

block_.L_400c46:                                  ; preds = %block_400c52, %block_400c3f
  %340 = phi i64 [ %492, %block_400c52 ], [ %.pre3, %block_400c3f ]
  %341 = load i64, i64* %RBP.i, align 8
  %342 = add i64 %341, -40
  %343 = add i64 %340, 3
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to i32*
  %345 = load i32, i32* %344, align 4
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RAX.i344, align 8
  %347 = add i64 %341, -8
  %348 = add i64 %340, 6
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = sub i32 %345, %350
  %352 = icmp ult i32 %345, %350
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %85, align 1
  %354 = and i32 %351, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %86, align 1
  %359 = xor i32 %350, %345
  %360 = xor i32 %359, %351
  %361 = lshr i32 %360, 4
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  store i8 %363, i8* %87, align 1
  %364 = icmp eq i32 %351, 0
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %88, align 1
  %366 = lshr i32 %351, 31
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %89, align 1
  %368 = lshr i32 %345, 31
  %369 = lshr i32 %350, 31
  %370 = xor i32 %369, %368
  %371 = xor i32 %366, %368
  %372 = add nuw nsw i32 %371, %370
  %373 = icmp eq i32 %372, 2
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %90, align 1
  %375 = icmp ne i8 %367, 0
  %376 = xor i1 %375, %373
  %.v10 = select i1 %376, i64 12, i64 82
  %377 = add i64 %340, %.v10
  store i64 %377, i64* %3, align 8
  %378 = add i64 %341, -36
  br i1 %376, label %block_400c52, label %block_.L_400c98

block_400c52:                                     ; preds = %block_.L_400c46
  %379 = add i64 %377, 3
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RAX.i344, align 8
  %383 = sitofp i32 %381 to double
  store double %383, double* %92, align 1
  %384 = add i64 %377, 10
  store i64 %384, i64* %3, align 8
  %385 = load i32, i32* %344, align 4
  %386 = add i32 %385, 1
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RAX.i344, align 8
  %388 = icmp eq i32 %385, -1
  %389 = icmp eq i32 %386, 0
  %390 = or i1 %388, %389
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %85, align 1
  %392 = and i32 %386, 255
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %86, align 1
  %397 = xor i32 %385, %386
  %398 = lshr i32 %397, 4
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  store i8 %400, i8* %87, align 1
  %401 = zext i1 %389 to i8
  store i8 %401, i8* %88, align 1
  %402 = lshr i32 %386, 31
  %403 = trunc i32 %402 to i8
  store i8 %403, i8* %89, align 1
  %404 = lshr i32 %385, 31
  %405 = xor i32 %402, %404
  %406 = add nuw nsw i32 %405, %402
  %407 = icmp eq i32 %406, 2
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %90, align 1
  %409 = sitofp i32 %386 to double
  store double %409, double* %94, align 1
  %410 = fmul double %383, %409
  store double %410, double* %92, align 1
  %411 = add i64 %377, 24
  store i64 %411, i64* %3, align 8
  %412 = load i32, i32* %349, align 4
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RAX.i344, align 8
  %414 = sitofp i32 %412 to double
  store double %414, double* %94, align 1
  %415 = fdiv double %410, %414
  store double %415, double* %92, align 1
  %416 = add i64 %341, 16
  %417 = add i64 %377, 36
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i64*
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %RCX.i274, align 8
  %420 = add i64 %377, 40
  store i64 %420, i64* %3, align 8
  %421 = load i32, i32* %380, align 4
  %422 = sext i32 %421 to i64
  %423 = shl nsw i64 %422, 13
  store i64 %423, i64* %RDX.i271, align 8
  %424 = lshr i64 %422, 50
  %425 = and i64 %424, 1
  %426 = add i64 %423, %419
  store i64 %426, i64* %RCX.i274, align 8
  %427 = icmp ult i64 %426, %419
  %428 = icmp ult i64 %426, %423
  %429 = or i1 %427, %428
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %85, align 1
  %431 = trunc i64 %426 to i32
  %432 = and i32 %431, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %86, align 1
  %437 = xor i64 %419, %426
  %438 = lshr i64 %437, 4
  %439 = trunc i64 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %87, align 1
  %441 = icmp eq i64 %426, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %88, align 1
  %443 = lshr i64 %426, 63
  %444 = trunc i64 %443 to i8
  store i8 %444, i8* %89, align 1
  %445 = lshr i64 %419, 63
  %446 = xor i64 %443, %445
  %447 = xor i64 %443, %425
  %448 = add nuw nsw i64 %446, %447
  %449 = icmp eq i64 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %90, align 1
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -40
  %453 = add i64 %377, 51
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i32*
  %455 = load i32, i32* %454, align 4
  %456 = sext i32 %455 to i64
  store i64 %456, i64* %RDX.i271, align 8
  %457 = shl nsw i64 %456, 3
  %458 = add i64 %457, %426
  %459 = add i64 %377, 56
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to double*
  store double %415, double* %460, align 8
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -40
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 3
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %462 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = add i32 %466, 1
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RAX.i344, align 8
  %469 = icmp eq i32 %466, -1
  %470 = icmp eq i32 %467, 0
  %471 = or i1 %469, %470
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %85, align 1
  %473 = and i32 %467, 255
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473)
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %86, align 1
  %478 = xor i32 %466, %467
  %479 = lshr i32 %478, 4
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  store i8 %481, i8* %87, align 1
  %482 = zext i1 %470 to i8
  store i8 %482, i8* %88, align 1
  %483 = lshr i32 %467, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %89, align 1
  %485 = lshr i32 %466, 31
  %486 = xor i32 %483, %485
  %487 = add nuw nsw i32 %486, %483
  %488 = icmp eq i32 %487, 2
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %90, align 1
  %490 = add i64 %463, 9
  store i64 %490, i64* %3, align 8
  store i32 %467, i32* %465, align 4
  %491 = load i64, i64* %3, align 8
  %492 = add i64 %491, -77
  store i64 %492, i64* %3, align 8
  br label %block_.L_400c46

block_.L_400c98:                                  ; preds = %block_.L_400c46
  %493 = add i64 %377, 8
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %378 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = add i32 %495, 1
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RAX.i344, align 8
  %498 = icmp eq i32 %495, -1
  %499 = icmp eq i32 %496, 0
  %500 = or i1 %498, %499
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %85, align 1
  %502 = and i32 %496, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %86, align 1
  %507 = xor i32 %495, %496
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  store i8 %510, i8* %87, align 1
  %511 = zext i1 %499 to i8
  store i8 %511, i8* %88, align 1
  %512 = lshr i32 %496, 31
  %513 = trunc i32 %512 to i8
  store i8 %513, i8* %89, align 1
  %514 = lshr i32 %495, 31
  %515 = xor i32 %512, %514
  %516 = add nuw nsw i32 %515, %512
  %517 = icmp eq i32 %516, 2
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %90, align 1
  %519 = add i64 %377, 14
  store i64 %519, i64* %3, align 8
  store i32 %496, i32* %494, align 4
  %520 = load i64, i64* %3, align 8
  %521 = add i64 %520, -115
  store i64 %521, i64* %3, align 8
  br label %block_.L_400c33

block_.L_400cab:                                  ; preds = %block_.L_400c33
  %522 = add i64 %336, 7
  store i64 %522, i64* %3, align 8
  store i32 0, i32* %303, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400cb2

block_.L_400cb2:                                  ; preds = %block_.L_400d17, %block_.L_400cab
  %523 = phi i64 [ %746, %block_.L_400d17 ], [ %.pre4, %block_.L_400cab ]
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -36
  %526 = add i64 %523, 3
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = zext i32 %528 to i64
  store i64 %529, i64* %RAX.i344, align 8
  %530 = add i64 %524, -8
  %531 = add i64 %523, 6
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i32*
  %533 = load i32, i32* %532, align 4
  %534 = sub i32 %528, %533
  %535 = icmp ult i32 %528, %533
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %85, align 1
  %537 = and i32 %534, 255
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %86, align 1
  %542 = xor i32 %533, %528
  %543 = xor i32 %542, %534
  %544 = lshr i32 %543, 4
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  store i8 %546, i8* %87, align 1
  %547 = icmp eq i32 %534, 0
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %88, align 1
  %549 = lshr i32 %534, 31
  %550 = trunc i32 %549 to i8
  store i8 %550, i8* %89, align 1
  %551 = lshr i32 %528, 31
  %552 = lshr i32 %533, 31
  %553 = xor i32 %552, %551
  %554 = xor i32 %549, %551
  %555 = add nuw nsw i32 %554, %553
  %556 = icmp eq i32 %555, 2
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %90, align 1
  %558 = icmp ne i8 %550, 0
  %559 = xor i1 %558, %556
  %.v11 = select i1 %559, i64 12, i64 120
  %560 = add i64 %523, %.v11
  store i64 %560, i64* %3, align 8
  br i1 %559, label %block_400cbe, label %block_.L_400d2a

block_400cbe:                                     ; preds = %block_.L_400cb2
  %561 = add i64 %524, -40
  %562 = add i64 %560, 7
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  store i32 0, i32* %563, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400cc5

block_.L_400cc5:                                  ; preds = %block_400cd1, %block_400cbe
  %564 = phi i64 [ %717, %block_400cd1 ], [ %.pre5, %block_400cbe ]
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -40
  %567 = add i64 %564, 3
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RAX.i344, align 8
  %571 = add i64 %565, -20
  %572 = add i64 %564, 6
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = sub i32 %569, %574
  %576 = icmp ult i32 %569, %574
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %85, align 1
  %578 = and i32 %575, 255
  %579 = tail call i32 @llvm.ctpop.i32(i32 %578)
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  %582 = xor i8 %581, 1
  store i8 %582, i8* %86, align 1
  %583 = xor i32 %574, %569
  %584 = xor i32 %583, %575
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %87, align 1
  %588 = icmp eq i32 %575, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %88, align 1
  %590 = lshr i32 %575, 31
  %591 = trunc i32 %590 to i8
  store i8 %591, i8* %89, align 1
  %592 = lshr i32 %569, 31
  %593 = lshr i32 %574, 31
  %594 = xor i32 %593, %592
  %595 = xor i32 %590, %592
  %596 = add nuw nsw i32 %595, %594
  %597 = icmp eq i32 %596, 2
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %90, align 1
  %599 = icmp ne i8 %591, 0
  %600 = xor i1 %599, %597
  %.v12 = select i1 %600, i64 12, i64 82
  %601 = add i64 %564, %.v12
  store i64 %601, i64* %3, align 8
  %602 = add i64 %565, -36
  br i1 %600, label %block_400cd1, label %block_.L_400d17

block_400cd1:                                     ; preds = %block_.L_400cc5
  %603 = add i64 %601, 3
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RAX.i344, align 8
  %607 = sitofp i32 %605 to double
  store double %607, double* %92, align 1
  %608 = add i64 %601, 10
  store i64 %608, i64* %3, align 8
  %609 = load i32, i32* %568, align 4
  %610 = add i32 %609, 3
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RAX.i344, align 8
  %612 = icmp ugt i32 %609, -4
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %85, align 1
  %614 = and i32 %610, 255
  %615 = tail call i32 @llvm.ctpop.i32(i32 %614)
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = xor i8 %617, 1
  store i8 %618, i8* %86, align 1
  %619 = xor i32 %609, %610
  %620 = lshr i32 %619, 4
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  store i8 %622, i8* %87, align 1
  %623 = icmp eq i32 %610, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %88, align 1
  %625 = lshr i32 %610, 31
  %626 = trunc i32 %625 to i8
  store i8 %626, i8* %89, align 1
  %627 = lshr i32 %609, 31
  %628 = xor i32 %625, %627
  %629 = add nuw nsw i32 %628, %625
  %630 = icmp eq i32 %629, 2
  %631 = zext i1 %630 to i8
  store i8 %631, i8* %90, align 1
  %632 = sitofp i32 %610 to double
  store double %632, double* %94, align 1
  %633 = fmul double %607, %632
  store double %633, double* %92, align 1
  %634 = add i64 %565, -16
  %635 = add i64 %601, 24
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i32*
  %637 = load i32, i32* %636, align 4
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RAX.i344, align 8
  %639 = sitofp i32 %637 to double
  store double %639, double* %94, align 1
  %640 = fdiv double %633, %639
  store double %640, double* %92, align 1
  %641 = add i64 %565, 24
  %642 = add i64 %601, 36
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i64*
  %644 = load i64, i64* %643, align 8
  store i64 %644, i64* %RCX.i274, align 8
  %645 = add i64 %601, 40
  store i64 %645, i64* %3, align 8
  %646 = load i32, i32* %604, align 4
  %647 = sext i32 %646 to i64
  %648 = shl nsw i64 %647, 13
  store i64 %648, i64* %RDX.i271, align 8
  %649 = lshr i64 %647, 50
  %650 = and i64 %649, 1
  %651 = add i64 %648, %644
  store i64 %651, i64* %RCX.i274, align 8
  %652 = icmp ult i64 %651, %644
  %653 = icmp ult i64 %651, %648
  %654 = or i1 %652, %653
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %85, align 1
  %656 = trunc i64 %651 to i32
  %657 = and i32 %656, 255
  %658 = tail call i32 @llvm.ctpop.i32(i32 %657)
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  store i8 %661, i8* %86, align 1
  %662 = xor i64 %644, %651
  %663 = lshr i64 %662, 4
  %664 = trunc i64 %663 to i8
  %665 = and i8 %664, 1
  store i8 %665, i8* %87, align 1
  %666 = icmp eq i64 %651, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %88, align 1
  %668 = lshr i64 %651, 63
  %669 = trunc i64 %668 to i8
  store i8 %669, i8* %89, align 1
  %670 = lshr i64 %644, 63
  %671 = xor i64 %668, %670
  %672 = xor i64 %668, %650
  %673 = add nuw nsw i64 %671, %672
  %674 = icmp eq i64 %673, 2
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %90, align 1
  %676 = load i64, i64* %RBP.i, align 8
  %677 = add i64 %676, -40
  %678 = add i64 %601, 51
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i32*
  %680 = load i32, i32* %679, align 4
  %681 = sext i32 %680 to i64
  store i64 %681, i64* %RDX.i271, align 8
  %682 = shl nsw i64 %681, 3
  %683 = add i64 %682, %651
  %684 = add i64 %601, 56
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to double*
  store double %640, double* %685, align 8
  %686 = load i64, i64* %RBP.i, align 8
  %687 = add i64 %686, -40
  %688 = load i64, i64* %3, align 8
  %689 = add i64 %688, 3
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %687 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = add i32 %691, 1
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RAX.i344, align 8
  %694 = icmp eq i32 %691, -1
  %695 = icmp eq i32 %692, 0
  %696 = or i1 %694, %695
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %85, align 1
  %698 = and i32 %692, 255
  %699 = tail call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  store i8 %702, i8* %86, align 1
  %703 = xor i32 %691, %692
  %704 = lshr i32 %703, 4
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  store i8 %706, i8* %87, align 1
  %707 = zext i1 %695 to i8
  store i8 %707, i8* %88, align 1
  %708 = lshr i32 %692, 31
  %709 = trunc i32 %708 to i8
  store i8 %709, i8* %89, align 1
  %710 = lshr i32 %691, 31
  %711 = xor i32 %708, %710
  %712 = add nuw nsw i32 %711, %708
  %713 = icmp eq i32 %712, 2
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %90, align 1
  %715 = add i64 %688, 9
  store i64 %715, i64* %3, align 8
  store i32 %692, i32* %690, align 4
  %716 = load i64, i64* %3, align 8
  %717 = add i64 %716, -77
  store i64 %717, i64* %3, align 8
  br label %block_.L_400cc5

block_.L_400d17:                                  ; preds = %block_.L_400cc5
  %718 = add i64 %601, 8
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %602 to i32*
  %720 = load i32, i32* %719, align 4
  %721 = add i32 %720, 1
  %722 = zext i32 %721 to i64
  store i64 %722, i64* %RAX.i344, align 8
  %723 = icmp eq i32 %720, -1
  %724 = icmp eq i32 %721, 0
  %725 = or i1 %723, %724
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %85, align 1
  %727 = and i32 %721, 255
  %728 = tail call i32 @llvm.ctpop.i32(i32 %727)
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = xor i8 %730, 1
  store i8 %731, i8* %86, align 1
  %732 = xor i32 %720, %721
  %733 = lshr i32 %732, 4
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  store i8 %735, i8* %87, align 1
  %736 = zext i1 %724 to i8
  store i8 %736, i8* %88, align 1
  %737 = lshr i32 %721, 31
  %738 = trunc i32 %737 to i8
  store i8 %738, i8* %89, align 1
  %739 = lshr i32 %720, 31
  %740 = xor i32 %737, %739
  %741 = add nuw nsw i32 %740, %737
  %742 = icmp eq i32 %741, 2
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %90, align 1
  %744 = add i64 %601, 14
  store i64 %744, i64* %3, align 8
  store i32 %721, i32* %719, align 4
  %745 = load i64, i64* %3, align 8
  %746 = add i64 %745, -115
  store i64 %746, i64* %3, align 8
  br label %block_.L_400cb2

block_.L_400d2a:                                  ; preds = %block_.L_400cb2
  %747 = add i64 %560, 7
  store i64 %747, i64* %3, align 8
  store i32 0, i32* %527, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400d31

block_.L_400d31:                                  ; preds = %block_.L_400d96, %block_.L_400d2a
  %748 = phi i64 [ %971, %block_.L_400d96 ], [ %.pre6, %block_.L_400d2a ]
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -36
  %751 = add i64 %748, 3
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RAX.i344, align 8
  %755 = add i64 %749, -20
  %756 = add i64 %748, 6
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  %759 = sub i32 %753, %758
  %760 = icmp ult i32 %753, %758
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %85, align 1
  %762 = and i32 %759, 255
  %763 = tail call i32 @llvm.ctpop.i32(i32 %762)
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  %766 = xor i8 %765, 1
  store i8 %766, i8* %86, align 1
  %767 = xor i32 %758, %753
  %768 = xor i32 %767, %759
  %769 = lshr i32 %768, 4
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  store i8 %771, i8* %87, align 1
  %772 = icmp eq i32 %759, 0
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %88, align 1
  %774 = lshr i32 %759, 31
  %775 = trunc i32 %774 to i8
  store i8 %775, i8* %89, align 1
  %776 = lshr i32 %753, 31
  %777 = lshr i32 %758, 31
  %778 = xor i32 %777, %776
  %779 = xor i32 %774, %776
  %780 = add nuw nsw i32 %779, %778
  %781 = icmp eq i32 %780, 2
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %90, align 1
  %783 = icmp ne i8 %775, 0
  %784 = xor i1 %783, %781
  %.v13 = select i1 %784, i64 12, i64 120
  %785 = add i64 %748, %.v13
  store i64 %785, i64* %3, align 8
  br i1 %784, label %block_400d3d, label %block_.L_400da9

block_400d3d:                                     ; preds = %block_.L_400d31
  %786 = add i64 %749, -40
  %787 = add i64 %785, 7
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  store i32 0, i32* %788, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_400d44

block_.L_400d44:                                  ; preds = %block_400d50, %block_400d3d
  %789 = phi i64 [ %942, %block_400d50 ], [ %.pre7, %block_400d3d ]
  %790 = load i64, i64* %RBP.i, align 8
  %791 = add i64 %790, -40
  %792 = add i64 %789, 3
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = zext i32 %794 to i64
  store i64 %795, i64* %RAX.i344, align 8
  %796 = add i64 %790, -16
  %797 = add i64 %789, 6
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i32*
  %799 = load i32, i32* %798, align 4
  %800 = sub i32 %794, %799
  %801 = icmp ult i32 %794, %799
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %85, align 1
  %803 = and i32 %800, 255
  %804 = tail call i32 @llvm.ctpop.i32(i32 %803)
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  %807 = xor i8 %806, 1
  store i8 %807, i8* %86, align 1
  %808 = xor i32 %799, %794
  %809 = xor i32 %808, %800
  %810 = lshr i32 %809, 4
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  store i8 %812, i8* %87, align 1
  %813 = icmp eq i32 %800, 0
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %88, align 1
  %815 = lshr i32 %800, 31
  %816 = trunc i32 %815 to i8
  store i8 %816, i8* %89, align 1
  %817 = lshr i32 %794, 31
  %818 = lshr i32 %799, 31
  %819 = xor i32 %818, %817
  %820 = xor i32 %815, %817
  %821 = add nuw nsw i32 %820, %819
  %822 = icmp eq i32 %821, 2
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %90, align 1
  %824 = icmp ne i8 %816, 0
  %825 = xor i1 %824, %822
  %.v14 = select i1 %825, i64 12, i64 82
  %826 = add i64 %789, %.v14
  store i64 %826, i64* %3, align 8
  %827 = add i64 %790, -36
  br i1 %825, label %block_400d50, label %block_.L_400d96

block_400d50:                                     ; preds = %block_.L_400d44
  %828 = add i64 %826, 3
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = zext i32 %830 to i64
  store i64 %831, i64* %RAX.i344, align 8
  %832 = sitofp i32 %830 to double
  store double %832, double* %92, align 1
  %833 = add i64 %826, 10
  store i64 %833, i64* %3, align 8
  %834 = load i32, i32* %793, align 4
  %835 = add i32 %834, 2
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RAX.i344, align 8
  %837 = icmp ugt i32 %834, -3
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %85, align 1
  %839 = and i32 %835, 255
  %840 = tail call i32 @llvm.ctpop.i32(i32 %839)
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  store i8 %843, i8* %86, align 1
  %844 = xor i32 %834, %835
  %845 = lshr i32 %844, 4
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  store i8 %847, i8* %87, align 1
  %848 = icmp eq i32 %835, 0
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %88, align 1
  %850 = lshr i32 %835, 31
  %851 = trunc i32 %850 to i8
  store i8 %851, i8* %89, align 1
  %852 = lshr i32 %834, 31
  %853 = xor i32 %850, %852
  %854 = add nuw nsw i32 %853, %850
  %855 = icmp eq i32 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %90, align 1
  %857 = sitofp i32 %835 to double
  store double %857, double* %94, align 1
  %858 = fmul double %832, %857
  store double %858, double* %92, align 1
  %859 = add i64 %790, -12
  %860 = add i64 %826, 24
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %RAX.i344, align 8
  %864 = sitofp i32 %862 to double
  store double %864, double* %94, align 1
  %865 = fdiv double %858, %864
  store double %865, double* %92, align 1
  %866 = add i64 %790, 32
  %867 = add i64 %826, 36
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i64*
  %869 = load i64, i64* %868, align 8
  store i64 %869, i64* %RCX.i274, align 8
  %870 = add i64 %826, 40
  store i64 %870, i64* %3, align 8
  %871 = load i32, i32* %829, align 4
  %872 = sext i32 %871 to i64
  %873 = shl nsw i64 %872, 13
  store i64 %873, i64* %RDX.i271, align 8
  %874 = lshr i64 %872, 50
  %875 = and i64 %874, 1
  %876 = add i64 %873, %869
  store i64 %876, i64* %RCX.i274, align 8
  %877 = icmp ult i64 %876, %869
  %878 = icmp ult i64 %876, %873
  %879 = or i1 %877, %878
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %85, align 1
  %881 = trunc i64 %876 to i32
  %882 = and i32 %881, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %86, align 1
  %887 = xor i64 %869, %876
  %888 = lshr i64 %887, 4
  %889 = trunc i64 %888 to i8
  %890 = and i8 %889, 1
  store i8 %890, i8* %87, align 1
  %891 = icmp eq i64 %876, 0
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %88, align 1
  %893 = lshr i64 %876, 63
  %894 = trunc i64 %893 to i8
  store i8 %894, i8* %89, align 1
  %895 = lshr i64 %869, 63
  %896 = xor i64 %893, %895
  %897 = xor i64 %893, %875
  %898 = add nuw nsw i64 %896, %897
  %899 = icmp eq i64 %898, 2
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %90, align 1
  %901 = load i64, i64* %RBP.i, align 8
  %902 = add i64 %901, -40
  %903 = add i64 %826, 51
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i32*
  %905 = load i32, i32* %904, align 4
  %906 = sext i32 %905 to i64
  store i64 %906, i64* %RDX.i271, align 8
  %907 = shl nsw i64 %906, 3
  %908 = add i64 %907, %876
  %909 = add i64 %826, 56
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to double*
  store double %865, double* %910, align 8
  %911 = load i64, i64* %RBP.i, align 8
  %912 = add i64 %911, -40
  %913 = load i64, i64* %3, align 8
  %914 = add i64 %913, 3
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %912 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = add i32 %916, 1
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RAX.i344, align 8
  %919 = icmp eq i32 %916, -1
  %920 = icmp eq i32 %917, 0
  %921 = or i1 %919, %920
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %85, align 1
  %923 = and i32 %917, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923)
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %86, align 1
  %928 = xor i32 %916, %917
  %929 = lshr i32 %928, 4
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %87, align 1
  %932 = zext i1 %920 to i8
  store i8 %932, i8* %88, align 1
  %933 = lshr i32 %917, 31
  %934 = trunc i32 %933 to i8
  store i8 %934, i8* %89, align 1
  %935 = lshr i32 %916, 31
  %936 = xor i32 %933, %935
  %937 = add nuw nsw i32 %936, %933
  %938 = icmp eq i32 %937, 2
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %90, align 1
  %940 = add i64 %913, 9
  store i64 %940, i64* %3, align 8
  store i32 %917, i32* %915, align 4
  %941 = load i64, i64* %3, align 8
  %942 = add i64 %941, -77
  store i64 %942, i64* %3, align 8
  br label %block_.L_400d44

block_.L_400d96:                                  ; preds = %block_.L_400d44
  %943 = add i64 %826, 8
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %827 to i32*
  %945 = load i32, i32* %944, align 4
  %946 = add i32 %945, 1
  %947 = zext i32 %946 to i64
  store i64 %947, i64* %RAX.i344, align 8
  %948 = icmp eq i32 %945, -1
  %949 = icmp eq i32 %946, 0
  %950 = or i1 %948, %949
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %85, align 1
  %952 = and i32 %946, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %86, align 1
  %957 = xor i32 %945, %946
  %958 = lshr i32 %957, 4
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  store i8 %960, i8* %87, align 1
  %961 = zext i1 %949 to i8
  store i8 %961, i8* %88, align 1
  %962 = lshr i32 %946, 31
  %963 = trunc i32 %962 to i8
  store i8 %963, i8* %89, align 1
  %964 = lshr i32 %945, 31
  %965 = xor i32 %962, %964
  %966 = add nuw nsw i32 %965, %962
  %967 = icmp eq i32 %966, 2
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %90, align 1
  %969 = add i64 %826, 14
  store i64 %969, i64* %3, align 8
  store i32 %946, i32* %944, align 4
  %970 = load i64, i64* %3, align 8
  %971 = add i64 %970, -115
  store i64 %971, i64* %3, align 8
  br label %block_.L_400d31

block_.L_400da9:                                  ; preds = %block_.L_400d31
  %972 = add i64 %785, 1
  store i64 %972, i64* %3, align 8
  %973 = load i64, i64* %6, align 8
  %974 = add i64 %973, 8
  %975 = inttoptr i64 %973 to i64*
  %976 = load i64, i64* %975, align 8
  store i64 %976, i64* %RBP.i, align 8
  store i64 %974, i64* %6, align 8
  %977 = add i64 %785, 2
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %974 to i64*
  %979 = load i64, i64* %978, align 8
  store i64 %979, i64* %3, align 8
  %980 = add i64 %973, 16
  store i64 %980, i64* %6, align 8
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

define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %R9, align 8
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

define %struct.Memory* @routine_movq__r11__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_jge_.L_400c2c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400c19(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_400bca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400bb7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400cab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400c98(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400d2a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400d17(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_addl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -4
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d1c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cb2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400da9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400d96(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -3
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d44(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d31(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
