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

declare %struct.Memory* @sub_451f40.FSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @build_cij(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -72
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 64
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
  %RAX.i752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %39 = add i64 %7, 8
  %40 = add i64 %10, 11
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %RAX.i752, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i750 = bitcast %union.anon* %43 to i32*
  %44 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  store i64 8, i64* %44, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %46 = bitcast %union.VectorReg* %45 to i8*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %48 = bitcast %union.VectorReg* %45 to i32*
  %49 = getelementptr inbounds i8, i8* %46, i64 4
  %50 = bitcast i8* %49 to i32*
  %51 = bitcast i64* %47 to i32*
  %52 = getelementptr inbounds i8, i8* %46, i64 12
  %53 = bitcast i8* %52 to i32*
  %54 = bitcast %union.VectorReg* %45 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %54, align 1
  %RDI.i744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %55 = add i64 %7, -24
  %56 = load i64, i64* %RDI.i744, align 8
  %57 = add i64 %10, 24
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %58, align 8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %59 to i32*
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -20
  %62 = load i32, i32* %ESI.i, align 4
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 3
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %65, align 4
  %RDX.i739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -32
  %68 = load i64, i64* %RDX.i739, align 8
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i736 = bitcast %union.anon* %72 to i32*
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -36
  %75 = load i32, i32* %ECX.i736, align 4
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 3
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %78, align 4
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %79 to i32*
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -40
  %82 = load i32, i32* %R8D.i, align 4
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 4
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %81 to i32*
  store i32 %82, i32* %85, align 4
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -48
  %88 = load i64, i64* %R9.i, align 8
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, 4
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %87 to i64*
  store i64 %88, i64* %91, align 8
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -56
  %94 = load i64, i64* %RAX.i752, align 8
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 4
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97, align 8
  %RCX.i726 = getelementptr inbounds %union.anon, %union.anon* %72, i64 0, i32 0
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -36
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 3
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %99 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %103, -1
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RCX.i726, align 8
  %106 = icmp ne i32 %103, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %14, align 1
  %108 = and i32 %104, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %21, align 1
  %113 = xor i32 %103, 16
  %114 = xor i32 %113, %104
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %26, align 1
  %118 = icmp eq i32 %104, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %29, align 1
  %120 = lshr i32 %104, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %32, align 1
  %122 = lshr i32 %103, 31
  %123 = xor i32 %120, %122
  %124 = xor i32 %120, 1
  %125 = add nuw nsw i32 %123, %124
  %126 = icmp eq i32 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %38, align 1
  %128 = add i64 %100, 9
  store i64 %128, i64* %3, align 8
  store i32 %104, i32* %102, align 4
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -40
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 3
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %130 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = add i32 %134, -1
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RCX.i726, align 8
  %137 = icmp ne i32 %134, 0
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %14, align 1
  %139 = and i32 %135, 255
  %140 = tail call i32 @llvm.ctpop.i32(i32 %139)
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  store i8 %143, i8* %21, align 1
  %144 = xor i32 %134, 16
  %145 = xor i32 %144, %135
  %146 = lshr i32 %145, 4
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  store i8 %148, i8* %26, align 1
  %149 = icmp eq i32 %135, 0
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %29, align 1
  %151 = lshr i32 %135, 31
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %32, align 1
  %153 = lshr i32 %134, 31
  %154 = xor i32 %151, %153
  %155 = xor i32 %151, 1
  %156 = add nuw nsw i32 %154, %155
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %38, align 1
  %159 = add i64 %131, 9
  store i64 %159, i64* %3, align 8
  store i32 %135, i32* %133, align 4
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -56
  %162 = load i64, i64* %3, align 8
  %163 = add i64 %162, 4
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %161 to i64*
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %RDI.i744, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %166 = load i32, i32* %R10D.i750, align 4
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %RSI.i, align 8
  %168 = add i64 %162, 154799
  %169 = add i64 %162, 12
  %170 = load i64, i64* %6, align 8
  %171 = add i64 %170, -8
  %172 = inttoptr i64 %171 to i64*
  store i64 %169, i64* %172, align 8
  store i64 %171, i64* %6, align 8
  store i64 %168, i64* %3, align 8
  %call2_42c298 = tail call %struct.Memory* @sub_451f40.FSet(%struct.State* %0, i64 %168, %struct.Memory* %2)
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -60
  %175 = load i64, i64* %3, align 8
  %176 = add i64 %175, 7
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %174 to i32*
  store i32 0, i32* %177, align 4
  %178 = bitcast %union.VectorReg* %45 to float*
  %179 = bitcast i8* %49 to float*
  %180 = bitcast i64* %47 to float*
  %181 = bitcast i8* %52 to float*
  %182 = bitcast %union.VectorReg* %45 to <2 x float>*
  %183 = bitcast i64* %47 to <2 x i32>*
  %184 = bitcast %union.VectorReg* %45 to <2 x i32>*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_42c2a4

block_.L_42c2a4:                                  ; preds = %block_.L_42c6ed, %entry
  %185 = phi i64 [ %1712, %block_.L_42c6ed ], [ %.pre, %entry ]
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -60
  %188 = add i64 %185, 3
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = zext i32 %190 to i64
  store i64 %191, i64* %RAX.i752, align 8
  %192 = add i64 %186, -20
  %193 = add i64 %185, 6
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = sub i32 %190, %195
  %197 = icmp ult i32 %190, %195
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %14, align 1
  %199 = and i32 %196, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %21, align 1
  %204 = xor i32 %195, %190
  %205 = xor i32 %204, %196
  %206 = lshr i32 %205, 4
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  store i8 %208, i8* %26, align 1
  %209 = icmp eq i32 %196, 0
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %29, align 1
  %211 = lshr i32 %196, 31
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %32, align 1
  %213 = lshr i32 %190, 31
  %214 = lshr i32 %195, 31
  %215 = xor i32 %214, %213
  %216 = xor i32 %211, %213
  %217 = add nuw nsw i32 %216, %215
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %38, align 1
  %220 = icmp ne i8 %212, 0
  %221 = xor i1 %220, %218
  %.v48 = select i1 %221, i64 12, i64 1111
  %222 = add i64 %185, %.v48
  store i64 %222, i64* %3, align 8
  br i1 %221, label %block_42c2b0, label %block_.L_42c6fb

block_42c2b0:                                     ; preds = %block_.L_42c2a4
  %223 = add i64 %186, -32
  %224 = add i64 %222, 4
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to i64*
  %226 = load i64, i64* %225, align 8
  store i64 %226, i64* %RAX.i752, align 8
  %227 = add i64 %222, 8
  store i64 %227, i64* %3, align 8
  %228 = load i32, i32* %189, align 4
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %RCX.i726, align 8
  %230 = shl nsw i64 %229, 2
  %231 = add i64 %230, %226
  %232 = add i64 %222, 12
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  store i8 0, i8* %14, align 1
  %235 = and i32 %234, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235)
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %240 = icmp eq i32 %234, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %29, align 1
  %242 = lshr i32 %234, 31
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %244 = icmp ne i8 %243, 0
  %245 = or i1 %240, %244
  %.v = select i1 %245, i64 436, i64 18
  %246 = add i64 %222, %.v
  %247 = add i64 %186, -16
  %248 = add i64 %246, 4
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %RAX.i752, align 8
  %251 = add i64 %246, 8
  store i64 %251, i64* %3, align 8
  %252 = load i32, i32* %189, align 4
  %253 = sext i32 %252 to i64
  store i64 %253, i64* %RCX.i726, align 8
  %254 = shl nsw i64 %253, 3
  %255 = add i64 %254, %250
  %256 = add i64 %246, 12
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RAX.i752, align 8
  %259 = add i64 %186, -36
  %260 = add i64 %246, 16
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  store i64 %263, i64* %RCX.i726, align 8
  %264 = add i64 %258, %263
  %265 = add i64 %246, 20
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i8*
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i64
  %269 = and i64 %268, 4294967295
  store i64 %269, i64* %RDX.i739, align 8
  %270 = sext i8 %267 to i32
  %271 = add i64 %246, 23
  store i64 %271, i64* %3, align 8
  %272 = add nsw i32 %270, -32
  %273 = icmp ult i8 %267, 32
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %14, align 1
  %275 = and i32 %272, 255
  %276 = tail call i32 @llvm.ctpop.i32(i32 %275)
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %21, align 1
  %280 = xor i32 %272, %270
  %281 = lshr i32 %280, 4
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  store i8 %283, i8* %26, align 1
  %284 = icmp eq i32 %272, 0
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %29, align 1
  %286 = lshr i32 %272, 31
  %287 = trunc i32 %286 to i8
  store i8 %287, i8* %32, align 1
  %288 = lshr i32 %270, 31
  %289 = xor i32 %286, %288
  %290 = add nuw nsw i32 %289, %288
  %291 = icmp eq i32 %290, 2
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %38, align 1
  br i1 %245, label %block_.L_42c464, label %block_42c2c2

block_42c2c2:                                     ; preds = %block_42c2b0
  %.v49 = select i1 %284, i64 145, i64 29
  %293 = add i64 %246, %.v49
  store i64 %293, i64* %3, align 8
  %.pre42 = load i64, i64* %RBP.i, align 8
  br i1 %284, label %block_.L_42c353, label %block_42c2df

block_42c2df:                                     ; preds = %block_42c2c2
  %294 = add i64 %.pre42, -16
  %295 = add i64 %293, 4
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %RAX.i752, align 8
  %298 = add i64 %.pre42, -60
  %299 = add i64 %293, 8
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  store i64 %302, i64* %RCX.i726, align 8
  %303 = shl nsw i64 %302, 3
  %304 = add i64 %303, %297
  %305 = add i64 %293, 12
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %304 to i64*
  %307 = load i64, i64* %306, align 8
  store i64 %307, i64* %RAX.i752, align 8
  %308 = add i64 %.pre42, -36
  %309 = add i64 %293, 16
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  store i64 %312, i64* %RCX.i726, align 8
  %313 = add i64 %307, %312
  %314 = add i64 %293, 20
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i8*
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i64
  %318 = and i64 %317, 4294967295
  store i64 %318, i64* %RDX.i739, align 8
  %319 = sext i8 %316 to i32
  %320 = add nsw i32 %319, -46
  %321 = icmp ult i8 %316, 46
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %14, align 1
  %323 = and i32 %320, 255
  %324 = tail call i32 @llvm.ctpop.i32(i32 %323)
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = xor i8 %326, 1
  store i8 %327, i8* %21, align 1
  %328 = xor i32 %320, %319
  %329 = lshr i32 %328, 4
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  store i8 %331, i8* %26, align 1
  %332 = icmp eq i32 %320, 0
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %29, align 1
  %334 = lshr i32 %320, 31
  %335 = trunc i32 %334 to i8
  store i8 %335, i8* %32, align 1
  %336 = lshr i32 %319, 31
  %337 = xor i32 %334, %336
  %338 = add nuw nsw i32 %337, %336
  %339 = icmp eq i32 %338, 2
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %38, align 1
  %.v50 = select i1 %332, i64 116, i64 29
  %341 = add i64 %293, %.v50
  store i64 %341, i64* %3, align 8
  br i1 %332, label %block_.L_42c353, label %block_42c2fc

block_42c2fc:                                     ; preds = %block_42c2df
  %342 = add i64 %341, 4
  store i64 %342, i64* %3, align 8
  %343 = load i64, i64* %296, align 8
  store i64 %343, i64* %RAX.i752, align 8
  %344 = add i64 %341, 8
  store i64 %344, i64* %3, align 8
  %345 = load i32, i32* %300, align 4
  %346 = sext i32 %345 to i64
  store i64 %346, i64* %RCX.i726, align 8
  %347 = shl nsw i64 %346, 3
  %348 = add i64 %347, %343
  %349 = add i64 %341, 12
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %RAX.i752, align 8
  %352 = add i64 %341, 16
  store i64 %352, i64* %3, align 8
  %353 = load i32, i32* %310, align 4
  %354 = sext i32 %353 to i64
  store i64 %354, i64* %RCX.i726, align 8
  %355 = add i64 %351, %354
  %356 = add i64 %341, 20
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i8*
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i64
  %360 = and i64 %359, 4294967295
  store i64 %360, i64* %RDX.i739, align 8
  %361 = sext i8 %358 to i32
  %362 = add nsw i32 %361, -95
  %363 = icmp ult i8 %358, 95
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %14, align 1
  %365 = and i32 %362, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365)
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %21, align 1
  %370 = xor i32 %361, 16
  %371 = xor i32 %370, %362
  %372 = lshr i32 %371, 4
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  store i8 %374, i8* %26, align 1
  %375 = icmp eq i32 %362, 0
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %29, align 1
  %377 = lshr i32 %362, 31
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %32, align 1
  %379 = lshr i32 %361, 31
  %380 = xor i32 %377, %379
  %381 = add nuw nsw i32 %380, %379
  %382 = icmp eq i32 %381, 2
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %38, align 1
  %.v51 = select i1 %375, i64 87, i64 29
  %384 = add i64 %341, %.v51
  store i64 %384, i64* %3, align 8
  br i1 %375, label %block_.L_42c353, label %block_42c319

block_42c319:                                     ; preds = %block_42c2fc
  %385 = add i64 %384, 4
  store i64 %385, i64* %3, align 8
  %386 = load i64, i64* %296, align 8
  store i64 %386, i64* %RAX.i752, align 8
  %387 = add i64 %384, 8
  store i64 %387, i64* %3, align 8
  %388 = load i32, i32* %300, align 4
  %389 = sext i32 %388 to i64
  store i64 %389, i64* %RCX.i726, align 8
  %390 = shl nsw i64 %389, 3
  %391 = add i64 %390, %386
  %392 = add i64 %384, 12
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i64*
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %RAX.i752, align 8
  %395 = add i64 %384, 16
  store i64 %395, i64* %3, align 8
  %396 = load i32, i32* %310, align 4
  %397 = sext i32 %396 to i64
  store i64 %397, i64* %RCX.i726, align 8
  %398 = add i64 %394, %397
  %399 = add i64 %384, 20
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i8*
  %401 = load i8, i8* %400, align 1
  %402 = sext i8 %401 to i64
  %403 = and i64 %402, 4294967295
  store i64 %403, i64* %RDX.i739, align 8
  %404 = sext i8 %401 to i32
  %405 = add nsw i32 %404, -45
  %406 = icmp ult i8 %401, 45
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %14, align 1
  %408 = and i32 %405, 255
  %409 = tail call i32 @llvm.ctpop.i32(i32 %408)
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  store i8 %412, i8* %21, align 1
  %413 = xor i32 %405, %404
  %414 = lshr i32 %413, 4
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  store i8 %416, i8* %26, align 1
  %417 = icmp eq i32 %405, 0
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %29, align 1
  %419 = lshr i32 %405, 31
  %420 = trunc i32 %419 to i8
  store i8 %420, i8* %32, align 1
  %421 = lshr i32 %404, 31
  %422 = xor i32 %419, %421
  %423 = add nuw nsw i32 %422, %421
  %424 = icmp eq i32 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %38, align 1
  %.v52 = select i1 %417, i64 58, i64 29
  %426 = add i64 %384, %.v52
  store i64 %426, i64* %3, align 8
  br i1 %417, label %block_.L_42c353, label %block_42c336

block_42c336:                                     ; preds = %block_42c319
  %427 = add i64 %426, 4
  store i64 %427, i64* %3, align 8
  %428 = load i64, i64* %296, align 8
  store i64 %428, i64* %RAX.i752, align 8
  %429 = add i64 %426, 8
  store i64 %429, i64* %3, align 8
  %430 = load i32, i32* %300, align 4
  %431 = sext i32 %430 to i64
  store i64 %431, i64* %RCX.i726, align 8
  %432 = shl nsw i64 %431, 3
  %433 = add i64 %432, %428
  %434 = add i64 %426, 12
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i64*
  %436 = load i64, i64* %435, align 8
  store i64 %436, i64* %RAX.i752, align 8
  %437 = add i64 %426, 16
  store i64 %437, i64* %3, align 8
  %438 = load i32, i32* %310, align 4
  %439 = sext i32 %438 to i64
  store i64 %439, i64* %RCX.i726, align 8
  %440 = add i64 %436, %439
  %441 = add i64 %426, 20
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i8*
  %443 = load i8, i8* %442, align 1
  %444 = sext i8 %443 to i64
  %445 = and i64 %444, 4294967295
  store i64 %445, i64* %RDX.i739, align 8
  %446 = sext i8 %443 to i32
  %447 = add nsw i32 %446, -126
  %448 = icmp ult i8 %443, 126
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %14, align 1
  %450 = and i32 %447, 255
  %451 = tail call i32 @llvm.ctpop.i32(i32 %450)
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  store i8 %454, i8* %21, align 1
  %455 = xor i32 %446, 16
  %456 = xor i32 %455, %447
  %457 = lshr i32 %456, 4
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  store i8 %459, i8* %26, align 1
  %460 = icmp eq i32 %447, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %29, align 1
  %462 = lshr i32 %447, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %32, align 1
  %464 = lshr i32 %446, 31
  %465 = xor i32 %462, %464
  %466 = add nuw nsw i32 %465, %464
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %38, align 1
  %.v53 = select i1 %460, i64 29, i64 41
  %469 = add i64 %426, %.v53
  store i64 %469, i64* %3, align 8
  br i1 %460, label %block_.L_42c353, label %block_.L_42c35f

block_.L_42c353:                                  ; preds = %block_42c336, %block_42c319, %block_42c2fc, %block_42c2df, %block_42c2c2
  %470 = phi i64 [ %293, %block_42c2c2 ], [ %469, %block_42c336 ], [ %426, %block_42c319 ], [ %384, %block_42c2fc ], [ %341, %block_42c2df ]
  %471 = add i64 %.pre42, -4
  %472 = add i64 %470, 7
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i32*
  store i32 -1, i32* %473, align 4
  %474 = load i64, i64* %3, align 8
  %475 = add i64 %474, 936
  store i64 %475, i64* %3, align 8
  br label %block_.L_42c702

block_.L_42c35f:                                  ; preds = %block_42c336
  %476 = add i64 %469, 4
  store i64 %476, i64* %3, align 8
  %477 = load i64, i64* %296, align 8
  store i64 %477, i64* %RAX.i752, align 8
  %478 = add i64 %469, 8
  store i64 %478, i64* %3, align 8
  %479 = load i32, i32* %300, align 4
  %480 = sext i32 %479 to i64
  store i64 %480, i64* %RCX.i726, align 8
  %481 = shl nsw i64 %480, 3
  %482 = add i64 %481, %477
  %483 = add i64 %469, 12
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %RAX.i752, align 8
  %486 = add i64 %.pre42, -40
  %487 = add i64 %469, 16
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to i32*
  %489 = load i32, i32* %488, align 4
  %490 = sext i32 %489 to i64
  store i64 %490, i64* %RCX.i726, align 8
  %491 = add i64 %485, %490
  %492 = add i64 %469, 20
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i8*
  %494 = load i8, i8* %493, align 1
  %495 = sext i8 %494 to i64
  %496 = and i64 %495, 4294967295
  store i64 %496, i64* %RDX.i739, align 8
  %497 = sext i8 %494 to i32
  %498 = add nsw i32 %497, -32
  %499 = icmp ult i8 %494, 32
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %14, align 1
  %501 = and i32 %498, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501)
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %21, align 1
  %506 = xor i32 %498, %497
  %507 = lshr i32 %506, 4
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  store i8 %509, i8* %26, align 1
  %510 = icmp eq i32 %498, 0
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %29, align 1
  %512 = lshr i32 %498, 31
  %513 = trunc i32 %512 to i8
  store i8 %513, i8* %32, align 1
  %514 = lshr i32 %497, 31
  %515 = xor i32 %512, %514
  %516 = add nuw nsw i32 %515, %514
  %517 = icmp eq i32 %516, 2
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %38, align 1
  %.v54 = select i1 %510, i64 145, i64 29
  %519 = add i64 %469, %.v54
  store i64 %519, i64* %3, align 8
  br i1 %510, label %block_.L_42c3f0, label %block_42c37c

block_42c37c:                                     ; preds = %block_.L_42c35f
  %520 = add i64 %519, 4
  store i64 %520, i64* %3, align 8
  %521 = load i64, i64* %296, align 8
  store i64 %521, i64* %RAX.i752, align 8
  %522 = add i64 %519, 8
  store i64 %522, i64* %3, align 8
  %523 = load i32, i32* %300, align 4
  %524 = sext i32 %523 to i64
  store i64 %524, i64* %RCX.i726, align 8
  %525 = shl nsw i64 %524, 3
  %526 = add i64 %525, %521
  %527 = add i64 %519, 12
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i64*
  %529 = load i64, i64* %528, align 8
  store i64 %529, i64* %RAX.i752, align 8
  %530 = add i64 %519, 16
  store i64 %530, i64* %3, align 8
  %531 = load i32, i32* %488, align 4
  %532 = sext i32 %531 to i64
  store i64 %532, i64* %RCX.i726, align 8
  %533 = add i64 %529, %532
  %534 = add i64 %519, 20
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i8*
  %536 = load i8, i8* %535, align 1
  %537 = sext i8 %536 to i64
  %538 = and i64 %537, 4294967295
  store i64 %538, i64* %RDX.i739, align 8
  %539 = sext i8 %536 to i32
  %540 = add nsw i32 %539, -46
  %541 = icmp ult i8 %536, 46
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %14, align 1
  %543 = and i32 %540, 255
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543)
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %21, align 1
  %548 = xor i32 %540, %539
  %549 = lshr i32 %548, 4
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  store i8 %551, i8* %26, align 1
  %552 = icmp eq i32 %540, 0
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %29, align 1
  %554 = lshr i32 %540, 31
  %555 = trunc i32 %554 to i8
  store i8 %555, i8* %32, align 1
  %556 = lshr i32 %539, 31
  %557 = xor i32 %554, %556
  %558 = add nuw nsw i32 %557, %556
  %559 = icmp eq i32 %558, 2
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %38, align 1
  %.v55 = select i1 %552, i64 116, i64 29
  %561 = add i64 %519, %.v55
  store i64 %561, i64* %3, align 8
  br i1 %552, label %block_.L_42c3f0, label %block_42c399

block_42c399:                                     ; preds = %block_42c37c
  %562 = add i64 %561, 4
  store i64 %562, i64* %3, align 8
  %563 = load i64, i64* %296, align 8
  store i64 %563, i64* %RAX.i752, align 8
  %564 = add i64 %561, 8
  store i64 %564, i64* %3, align 8
  %565 = load i32, i32* %300, align 4
  %566 = sext i32 %565 to i64
  store i64 %566, i64* %RCX.i726, align 8
  %567 = shl nsw i64 %566, 3
  %568 = add i64 %567, %563
  %569 = add i64 %561, 12
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i64*
  %571 = load i64, i64* %570, align 8
  store i64 %571, i64* %RAX.i752, align 8
  %572 = add i64 %561, 16
  store i64 %572, i64* %3, align 8
  %573 = load i32, i32* %488, align 4
  %574 = sext i32 %573 to i64
  store i64 %574, i64* %RCX.i726, align 8
  %575 = add i64 %571, %574
  %576 = add i64 %561, 20
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %575 to i8*
  %578 = load i8, i8* %577, align 1
  %579 = sext i8 %578 to i64
  %580 = and i64 %579, 4294967295
  store i64 %580, i64* %RDX.i739, align 8
  %581 = sext i8 %578 to i32
  %582 = add nsw i32 %581, -95
  %583 = icmp ult i8 %578, 95
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %14, align 1
  %585 = and i32 %582, 255
  %586 = tail call i32 @llvm.ctpop.i32(i32 %585)
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  store i8 %589, i8* %21, align 1
  %590 = xor i32 %581, 16
  %591 = xor i32 %590, %582
  %592 = lshr i32 %591, 4
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  store i8 %594, i8* %26, align 1
  %595 = icmp eq i32 %582, 0
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %29, align 1
  %597 = lshr i32 %582, 31
  %598 = trunc i32 %597 to i8
  store i8 %598, i8* %32, align 1
  %599 = lshr i32 %581, 31
  %600 = xor i32 %597, %599
  %601 = add nuw nsw i32 %600, %599
  %602 = icmp eq i32 %601, 2
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %38, align 1
  %.v56 = select i1 %595, i64 87, i64 29
  %604 = add i64 %561, %.v56
  store i64 %604, i64* %3, align 8
  br i1 %595, label %block_.L_42c3f0, label %block_42c3b6

block_42c3b6:                                     ; preds = %block_42c399
  %605 = add i64 %604, 4
  store i64 %605, i64* %3, align 8
  %606 = load i64, i64* %296, align 8
  store i64 %606, i64* %RAX.i752, align 8
  %607 = add i64 %604, 8
  store i64 %607, i64* %3, align 8
  %608 = load i32, i32* %300, align 4
  %609 = sext i32 %608 to i64
  store i64 %609, i64* %RCX.i726, align 8
  %610 = shl nsw i64 %609, 3
  %611 = add i64 %610, %606
  %612 = add i64 %604, 12
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i64*
  %614 = load i64, i64* %613, align 8
  store i64 %614, i64* %RAX.i752, align 8
  %615 = add i64 %604, 16
  store i64 %615, i64* %3, align 8
  %616 = load i32, i32* %488, align 4
  %617 = sext i32 %616 to i64
  store i64 %617, i64* %RCX.i726, align 8
  %618 = add i64 %614, %617
  %619 = add i64 %604, 20
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i8*
  %621 = load i8, i8* %620, align 1
  %622 = sext i8 %621 to i64
  %623 = and i64 %622, 4294967295
  store i64 %623, i64* %RDX.i739, align 8
  %624 = sext i8 %621 to i32
  %625 = add nsw i32 %624, -45
  %626 = icmp ult i8 %621, 45
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %14, align 1
  %628 = and i32 %625, 255
  %629 = tail call i32 @llvm.ctpop.i32(i32 %628)
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  %632 = xor i8 %631, 1
  store i8 %632, i8* %21, align 1
  %633 = xor i32 %625, %624
  %634 = lshr i32 %633, 4
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  store i8 %636, i8* %26, align 1
  %637 = icmp eq i32 %625, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %29, align 1
  %639 = lshr i32 %625, 31
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %32, align 1
  %641 = lshr i32 %624, 31
  %642 = xor i32 %639, %641
  %643 = add nuw nsw i32 %642, %641
  %644 = icmp eq i32 %643, 2
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %38, align 1
  %.v57 = select i1 %637, i64 58, i64 29
  %646 = add i64 %604, %.v57
  store i64 %646, i64* %3, align 8
  br i1 %637, label %block_.L_42c3f0, label %block_42c3d3

block_42c3d3:                                     ; preds = %block_42c3b6
  %647 = add i64 %646, 4
  store i64 %647, i64* %3, align 8
  %648 = load i64, i64* %296, align 8
  store i64 %648, i64* %RAX.i752, align 8
  %649 = add i64 %646, 8
  store i64 %649, i64* %3, align 8
  %650 = load i32, i32* %300, align 4
  %651 = sext i32 %650 to i64
  store i64 %651, i64* %RCX.i726, align 8
  %652 = shl nsw i64 %651, 3
  %653 = add i64 %652, %648
  %654 = add i64 %646, 12
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i64*
  %656 = load i64, i64* %655, align 8
  store i64 %656, i64* %RAX.i752, align 8
  %657 = add i64 %646, 16
  store i64 %657, i64* %3, align 8
  %658 = load i32, i32* %488, align 4
  %659 = sext i32 %658 to i64
  store i64 %659, i64* %RCX.i726, align 8
  %660 = add i64 %656, %659
  %661 = add i64 %646, 20
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i8*
  %663 = load i8, i8* %662, align 1
  %664 = sext i8 %663 to i64
  %665 = and i64 %664, 4294967295
  store i64 %665, i64* %RDX.i739, align 8
  %666 = sext i8 %663 to i32
  %667 = add nsw i32 %666, -126
  %668 = icmp ult i8 %663, 126
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %14, align 1
  %670 = and i32 %667, 255
  %671 = tail call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  store i8 %674, i8* %21, align 1
  %675 = xor i32 %666, 16
  %676 = xor i32 %675, %667
  %677 = lshr i32 %676, 4
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  store i8 %679, i8* %26, align 1
  %680 = icmp eq i32 %667, 0
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %29, align 1
  %682 = lshr i32 %667, 31
  %683 = trunc i32 %682 to i8
  store i8 %683, i8* %32, align 1
  %684 = lshr i32 %666, 31
  %685 = xor i32 %682, %684
  %686 = add nuw nsw i32 %685, %684
  %687 = icmp eq i32 %686, 2
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %38, align 1
  %.v58 = select i1 %680, i64 29, i64 41
  %689 = add i64 %646, %.v58
  store i64 %689, i64* %3, align 8
  br i1 %680, label %block_.L_42c3f0, label %block_.L_42c3fc

block_.L_42c3f0:                                  ; preds = %block_42c3d3, %block_42c3b6, %block_42c399, %block_42c37c, %block_.L_42c35f
  %690 = phi i64 [ %689, %block_42c3d3 ], [ %646, %block_42c3b6 ], [ %604, %block_42c399 ], [ %561, %block_42c37c ], [ %519, %block_.L_42c35f ]
  %691 = add i64 %.pre42, -4
  %692 = add i64 %690, 7
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  store i32 0, i32* %693, align 4
  %694 = load i64, i64* %3, align 8
  %695 = add i64 %694, 779
  store i64 %695, i64* %3, align 8
  br label %block_.L_42c702

block_.L_42c3fc:                                  ; preds = %block_42c3d3
  %696 = add i64 %.pre42, -48
  %697 = add i64 %689, 4
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %RAX.i752, align 8
  %700 = add i64 %689, 8
  store i64 %700, i64* %3, align 8
  %701 = load i32, i32* %300, align 4
  %702 = sext i32 %701 to i64
  store i64 %702, i64* %RCX.i726, align 8
  %703 = shl nsw i64 %702, 2
  %704 = add i64 %703, %699
  %705 = add i64 %689, 13
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  store i32 %707, i32* %48, align 1
  store float 0.000000e+00, float* %179, align 1
  store float 0.000000e+00, float* %180, align 1
  store float 0.000000e+00, float* %181, align 1
  %708 = add i64 %.pre42, -56
  %709 = add i64 %689, 17
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i64*
  %711 = load i64, i64* %710, align 8
  store i64 %711, i64* %RAX.i752, align 8
  %712 = add i64 %711, 4
  %713 = add i64 %689, 22
  store i64 %713, i64* %3, align 8
  %714 = load <2 x float>, <2 x float>* %182, align 1
  %715 = load <2 x i32>, <2 x i32>* %183, align 1
  %716 = inttoptr i64 %712 to float*
  %717 = load float, float* %716, align 4
  %718 = extractelement <2 x float> %714, i32 0
  %719 = fadd float %718, %717
  store float %719, float* %178, align 1
  %720 = bitcast <2 x float> %714 to <2 x i32>
  %721 = extractelement <2 x i32> %720, i32 1
  store i32 %721, i32* %50, align 1
  %722 = extractelement <2 x i32> %715, i32 0
  store i32 %722, i32* %51, align 1
  %723 = extractelement <2 x i32> %715, i32 1
  store i32 %723, i32* %53, align 1
  %724 = add i64 %689, 27
  store i64 %724, i64* %3, align 8
  %725 = load <2 x float>, <2 x float>* %182, align 1
  %726 = extractelement <2 x float> %725, i32 0
  store float %726, float* %716, align 4
  %727 = load i64, i64* %RBP.i, align 8
  %728 = add i64 %727, -32
  %729 = load i64, i64* %3, align 8
  %730 = add i64 %729, 4
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %728 to i64*
  %732 = load i64, i64* %731, align 8
  store i64 %732, i64* %RAX.i752, align 8
  %733 = add i64 %727, -60
  %734 = add i64 %729, 8
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to i32*
  %736 = load i32, i32* %735, align 4
  %737 = sext i32 %736 to i64
  store i64 %737, i64* %RCX.i726, align 8
  %738 = shl nsw i64 %737, 2
  %739 = add i64 %738, %732
  %740 = add i64 %729, 11
  store i64 %740, i64* %3, align 8
  %741 = inttoptr i64 %739 to i32*
  %742 = load i32, i32* %741, align 4
  %743 = add i32 %742, -1
  %744 = zext i32 %743 to i64
  store i64 %744, i64* %RDX.i739, align 8
  %745 = icmp eq i32 %742, 0
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %14, align 1
  %747 = and i32 %743, 255
  %748 = tail call i32 @llvm.ctpop.i32(i32 %747)
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  %751 = xor i8 %750, 1
  store i8 %751, i8* %21, align 1
  %752 = xor i32 %743, %742
  %753 = lshr i32 %752, 4
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  store i8 %755, i8* %26, align 1
  %756 = icmp eq i32 %743, 0
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %29, align 1
  %758 = lshr i32 %743, 31
  %759 = trunc i32 %758 to i8
  store i8 %759, i8* %32, align 1
  %760 = lshr i32 %742, 31
  %761 = xor i32 %758, %760
  %762 = add nuw nsw i32 %761, %760
  %763 = icmp eq i32 %762, 2
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %38, align 1
  %765 = load <2 x i32>, <2 x i32>* %184, align 1
  %766 = load <2 x i32>, <2 x i32>* %183, align 1
  %767 = sitofp i32 %743 to float
  store float %767, float* %178, align 1
  %768 = extractelement <2 x i32> %765, i32 1
  store i32 %768, i32* %50, align 1
  %769 = extractelement <2 x i32> %766, i32 0
  store i32 %769, i32* %51, align 1
  %770 = extractelement <2 x i32> %766, i32 1
  store i32 %770, i32* %53, align 1
  %771 = add i64 %727, -48
  %772 = add i64 %729, 22
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i64*
  %774 = load i64, i64* %773, align 8
  store i64 %774, i64* %RAX.i752, align 8
  %775 = add i64 %729, 26
  store i64 %775, i64* %3, align 8
  %776 = load i32, i32* %735, align 4
  %777 = sext i32 %776 to i64
  store i64 %777, i64* %RCX.i726, align 8
  %778 = shl nsw i64 %777, 2
  %779 = add i64 %778, %774
  %780 = add i64 %729, 31
  store i64 %780, i64* %3, align 8
  %781 = load <2 x float>, <2 x float>* %182, align 1
  %782 = load <2 x i32>, <2 x i32>* %183, align 1
  %783 = inttoptr i64 %779 to float*
  %784 = load float, float* %783, align 4
  %785 = extractelement <2 x float> %781, i32 0
  %786 = fmul float %785, %784
  store float %786, float* %178, align 1
  %787 = bitcast <2 x float> %781 to <2 x i32>
  %788 = extractelement <2 x i32> %787, i32 1
  store i32 %788, i32* %50, align 1
  %789 = extractelement <2 x i32> %782, i32 0
  store i32 %789, i32* %51, align 1
  %790 = extractelement <2 x i32> %782, i32 1
  store i32 %790, i32* %53, align 1
  %791 = add i64 %727, -56
  %792 = add i64 %729, 35
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i64*
  %794 = load i64, i64* %793, align 8
  store i64 %794, i64* %RAX.i752, align 8
  %795 = add i64 %794, 16
  %796 = add i64 %729, 40
  store i64 %796, i64* %3, align 8
  %797 = load <2 x float>, <2 x float>* %182, align 1
  %798 = load <2 x i32>, <2 x i32>* %183, align 1
  %799 = inttoptr i64 %795 to float*
  %800 = load float, float* %799, align 4
  %801 = extractelement <2 x float> %797, i32 0
  %802 = fadd float %801, %800
  store float %802, float* %178, align 1
  %803 = bitcast <2 x float> %797 to <2 x i32>
  %804 = extractelement <2 x i32> %803, i32 1
  store i32 %804, i32* %50, align 1
  %805 = extractelement <2 x i32> %798, i32 0
  store i32 %805, i32* %51, align 1
  %806 = extractelement <2 x i32> %798, i32 1
  store i32 %806, i32* %53, align 1
  %807 = add i64 %729, 45
  store i64 %807, i64* %3, align 8
  %808 = load <2 x float>, <2 x float>* %182, align 1
  %809 = extractelement <2 x float> %808, i32 0
  store float %809, float* %799, align 4
  %810 = load i64, i64* %RBP.i, align 8
  %811 = add i64 %810, -48
  %812 = load i64, i64* %3, align 8
  %813 = add i64 %812, 4
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %811 to i64*
  %815 = load i64, i64* %814, align 8
  store i64 %815, i64* %RAX.i752, align 8
  %816 = add i64 %810, -60
  %817 = add i64 %812, 8
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = sext i32 %819 to i64
  store i64 %820, i64* %RCX.i726, align 8
  %821 = shl nsw i64 %820, 2
  %822 = add i64 %821, %815
  %823 = add i64 %812, 13
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i32*
  %825 = load i32, i32* %824, align 4
  store i32 %825, i32* %48, align 1
  store float 0.000000e+00, float* %179, align 1
  store float 0.000000e+00, float* %180, align 1
  store float 0.000000e+00, float* %181, align 1
  %826 = add i64 %810, -56
  %827 = add i64 %812, 17
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i64*
  %829 = load i64, i64* %828, align 8
  store i64 %829, i64* %RAX.i752, align 8
  %830 = add i64 %829, 12
  %831 = add i64 %812, 22
  store i64 %831, i64* %3, align 8
  %832 = load <2 x float>, <2 x float>* %182, align 1
  %833 = load <2 x i32>, <2 x i32>* %183, align 1
  %834 = inttoptr i64 %830 to float*
  %835 = load float, float* %834, align 4
  %836 = extractelement <2 x float> %832, i32 0
  %837 = fadd float %836, %835
  store float %837, float* %178, align 1
  %838 = bitcast <2 x float> %832 to <2 x i32>
  %839 = extractelement <2 x i32> %838, i32 1
  store i32 %839, i32* %50, align 1
  %840 = extractelement <2 x i32> %833, i32 0
  store i32 %840, i32* %51, align 1
  %841 = extractelement <2 x i32> %833, i32 1
  store i32 %841, i32* %53, align 1
  %842 = add i64 %812, 27
  store i64 %842, i64* %3, align 8
  %843 = load <2 x float>, <2 x float>* %182, align 1
  %844 = extractelement <2 x float> %843, i32 0
  store float %844, float* %834, align 4
  %845 = load i64, i64* %3, align 8
  %846 = add i64 %845, 649
  br label %block_.L_42c6e8

block_.L_42c464:                                  ; preds = %block_42c2b0
  %.v59 = select i1 %284, i64 391, i64 29
  %847 = add i64 %246, %.v59
  store i64 %847, i64* %3, align 8
  %.pre45 = load i64, i64* %RBP.i, align 8
  br i1 %284, label %block_.L_42c5eb, label %block_42c481

block_42c481:                                     ; preds = %block_.L_42c464
  %848 = add i64 %.pre45, -16
  %849 = add i64 %847, 4
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i64*
  %851 = load i64, i64* %850, align 8
  store i64 %851, i64* %RAX.i752, align 8
  %852 = add i64 %.pre45, -60
  %853 = add i64 %847, 8
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i32*
  %855 = load i32, i32* %854, align 4
  %856 = sext i32 %855 to i64
  store i64 %856, i64* %RCX.i726, align 8
  %857 = shl nsw i64 %856, 3
  %858 = add i64 %857, %851
  %859 = add i64 %847, 12
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i64*
  %861 = load i64, i64* %860, align 8
  store i64 %861, i64* %RAX.i752, align 8
  %862 = add i64 %.pre45, -36
  %863 = add i64 %847, 16
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i32*
  %865 = load i32, i32* %864, align 4
  %866 = sext i32 %865 to i64
  store i64 %866, i64* %RCX.i726, align 8
  %867 = add i64 %861, %866
  %868 = add i64 %847, 20
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i8*
  %870 = load i8, i8* %869, align 1
  %871 = sext i8 %870 to i64
  %872 = and i64 %871, 4294967295
  store i64 %872, i64* %RDX.i739, align 8
  %873 = sext i8 %870 to i32
  %874 = add nsw i32 %873, -46
  %875 = icmp ult i8 %870, 46
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %14, align 1
  %877 = and i32 %874, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  %882 = xor i32 %874, %873
  %883 = lshr i32 %882, 4
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  store i8 %885, i8* %26, align 1
  %886 = icmp eq i32 %874, 0
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %29, align 1
  %888 = lshr i32 %874, 31
  %889 = trunc i32 %888 to i8
  store i8 %889, i8* %32, align 1
  %890 = lshr i32 %873, 31
  %891 = xor i32 %888, %890
  %892 = add nuw nsw i32 %891, %890
  %893 = icmp eq i32 %892, 2
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %38, align 1
  %.v60 = select i1 %886, i64 362, i64 29
  %895 = add i64 %847, %.v60
  store i64 %895, i64* %3, align 8
  br i1 %886, label %block_.L_42c5eb, label %block_42c49e

block_42c49e:                                     ; preds = %block_42c481
  %896 = add i64 %895, 4
  store i64 %896, i64* %3, align 8
  %897 = load i64, i64* %850, align 8
  store i64 %897, i64* %RAX.i752, align 8
  %898 = add i64 %895, 8
  store i64 %898, i64* %3, align 8
  %899 = load i32, i32* %854, align 4
  %900 = sext i32 %899 to i64
  store i64 %900, i64* %RCX.i726, align 8
  %901 = shl nsw i64 %900, 3
  %902 = add i64 %901, %897
  %903 = add i64 %895, 12
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i64*
  %905 = load i64, i64* %904, align 8
  store i64 %905, i64* %RAX.i752, align 8
  %906 = add i64 %895, 16
  store i64 %906, i64* %3, align 8
  %907 = load i32, i32* %864, align 4
  %908 = sext i32 %907 to i64
  store i64 %908, i64* %RCX.i726, align 8
  %909 = add i64 %905, %908
  %910 = add i64 %895, 20
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i8*
  %912 = load i8, i8* %911, align 1
  %913 = sext i8 %912 to i64
  %914 = and i64 %913, 4294967295
  store i64 %914, i64* %RDX.i739, align 8
  %915 = sext i8 %912 to i32
  %916 = add nsw i32 %915, -95
  %917 = icmp ult i8 %912, 95
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %14, align 1
  %919 = and i32 %916, 255
  %920 = tail call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  store i8 %923, i8* %21, align 1
  %924 = xor i32 %915, 16
  %925 = xor i32 %924, %916
  %926 = lshr i32 %925, 4
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  store i8 %928, i8* %26, align 1
  %929 = icmp eq i32 %916, 0
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %29, align 1
  %931 = lshr i32 %916, 31
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %32, align 1
  %933 = lshr i32 %915, 31
  %934 = xor i32 %931, %933
  %935 = add nuw nsw i32 %934, %933
  %936 = icmp eq i32 %935, 2
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %38, align 1
  %.v61 = select i1 %929, i64 333, i64 29
  %938 = add i64 %895, %.v61
  store i64 %938, i64* %3, align 8
  br i1 %929, label %block_.L_42c5eb, label %block_42c4bb

block_42c4bb:                                     ; preds = %block_42c49e
  %939 = add i64 %938, 4
  store i64 %939, i64* %3, align 8
  %940 = load i64, i64* %850, align 8
  store i64 %940, i64* %RAX.i752, align 8
  %941 = add i64 %938, 8
  store i64 %941, i64* %3, align 8
  %942 = load i32, i32* %854, align 4
  %943 = sext i32 %942 to i64
  store i64 %943, i64* %RCX.i726, align 8
  %944 = shl nsw i64 %943, 3
  %945 = add i64 %944, %940
  %946 = add i64 %938, 12
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i64*
  %948 = load i64, i64* %947, align 8
  store i64 %948, i64* %RAX.i752, align 8
  %949 = add i64 %938, 16
  store i64 %949, i64* %3, align 8
  %950 = load i32, i32* %864, align 4
  %951 = sext i32 %950 to i64
  store i64 %951, i64* %RCX.i726, align 8
  %952 = add i64 %948, %951
  %953 = add i64 %938, 20
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i8*
  %955 = load i8, i8* %954, align 1
  %956 = sext i8 %955 to i64
  %957 = and i64 %956, 4294967295
  store i64 %957, i64* %RDX.i739, align 8
  %958 = sext i8 %955 to i32
  %959 = add nsw i32 %958, -45
  %960 = icmp ult i8 %955, 45
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %14, align 1
  %962 = and i32 %959, 255
  %963 = tail call i32 @llvm.ctpop.i32(i32 %962)
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = xor i8 %965, 1
  store i8 %966, i8* %21, align 1
  %967 = xor i32 %959, %958
  %968 = lshr i32 %967, 4
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  store i8 %970, i8* %26, align 1
  %971 = icmp eq i32 %959, 0
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %29, align 1
  %973 = lshr i32 %959, 31
  %974 = trunc i32 %973 to i8
  store i8 %974, i8* %32, align 1
  %975 = lshr i32 %958, 31
  %976 = xor i32 %973, %975
  %977 = add nuw nsw i32 %976, %975
  %978 = icmp eq i32 %977, 2
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %38, align 1
  %.v62 = select i1 %971, i64 304, i64 29
  %980 = add i64 %938, %.v62
  store i64 %980, i64* %3, align 8
  br i1 %971, label %block_.L_42c5eb, label %block_42c4d8

block_42c4d8:                                     ; preds = %block_42c4bb
  %981 = add i64 %980, 4
  store i64 %981, i64* %3, align 8
  %982 = load i64, i64* %850, align 8
  store i64 %982, i64* %RAX.i752, align 8
  %983 = add i64 %980, 8
  store i64 %983, i64* %3, align 8
  %984 = load i32, i32* %854, align 4
  %985 = sext i32 %984 to i64
  store i64 %985, i64* %RCX.i726, align 8
  %986 = shl nsw i64 %985, 3
  %987 = add i64 %986, %982
  %988 = add i64 %980, 12
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i64*
  %990 = load i64, i64* %989, align 8
  store i64 %990, i64* %RAX.i752, align 8
  %991 = add i64 %980, 16
  store i64 %991, i64* %3, align 8
  %992 = load i32, i32* %864, align 4
  %993 = sext i32 %992 to i64
  store i64 %993, i64* %RCX.i726, align 8
  %994 = add i64 %990, %993
  %995 = add i64 %980, 20
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i8*
  %997 = load i8, i8* %996, align 1
  %998 = sext i8 %997 to i64
  %999 = and i64 %998, 4294967295
  store i64 %999, i64* %RDX.i739, align 8
  %1000 = sext i8 %997 to i32
  %1001 = add nsw i32 %1000, -126
  %1002 = icmp ult i8 %997, 126
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %14, align 1
  %1004 = and i32 %1001, 255
  %1005 = tail call i32 @llvm.ctpop.i32(i32 %1004)
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  store i8 %1008, i8* %21, align 1
  %1009 = xor i32 %1000, 16
  %1010 = xor i32 %1009, %1001
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  store i8 %1013, i8* %26, align 1
  %1014 = icmp eq i32 %1001, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %29, align 1
  %1016 = lshr i32 %1001, 31
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, i8* %32, align 1
  %1018 = lshr i32 %1000, 31
  %1019 = xor i32 %1016, %1018
  %1020 = add nuw nsw i32 %1019, %1018
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %38, align 1
  %.v63 = select i1 %1014, i64 275, i64 29
  %1023 = add i64 %980, %.v63
  store i64 %1023, i64* %3, align 8
  br i1 %1014, label %block_.L_42c5eb, label %block_42c4f5

block_42c4f5:                                     ; preds = %block_42c4d8
  %1024 = add i64 %1023, 4
  store i64 %1024, i64* %3, align 8
  %1025 = load i64, i64* %850, align 8
  store i64 %1025, i64* %RAX.i752, align 8
  %1026 = add i64 %1023, 8
  store i64 %1026, i64* %3, align 8
  %1027 = load i32, i32* %854, align 4
  %1028 = sext i32 %1027 to i64
  store i64 %1028, i64* %RCX.i726, align 8
  %1029 = shl nsw i64 %1028, 3
  %1030 = add i64 %1029, %1025
  %1031 = add i64 %1023, 12
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i64*
  %1033 = load i64, i64* %1032, align 8
  store i64 %1033, i64* %RAX.i752, align 8
  %1034 = add i64 %.pre45, -40
  %1035 = add i64 %1023, 16
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i32*
  %1037 = load i32, i32* %1036, align 4
  %1038 = sext i32 %1037 to i64
  store i64 %1038, i64* %RCX.i726, align 8
  %1039 = add i64 %1033, %1038
  %1040 = add i64 %1023, 20
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i8*
  %1042 = load i8, i8* %1041, align 1
  %1043 = sext i8 %1042 to i64
  %1044 = and i64 %1043, 4294967295
  store i64 %1044, i64* %RDX.i739, align 8
  %1045 = sext i8 %1042 to i32
  %1046 = add nsw i32 %1045, -95
  %1047 = icmp ult i8 %1042, 95
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %14, align 1
  %1049 = and i32 %1046, 255
  %1050 = tail call i32 @llvm.ctpop.i32(i32 %1049)
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  store i8 %1053, i8* %21, align 1
  %1054 = xor i32 %1045, 16
  %1055 = xor i32 %1054, %1046
  %1056 = lshr i32 %1055, 4
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  store i8 %1058, i8* %26, align 1
  %1059 = icmp eq i32 %1046, 0
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %29, align 1
  %1061 = lshr i32 %1046, 31
  %1062 = trunc i32 %1061 to i8
  store i8 %1062, i8* %32, align 1
  %1063 = lshr i32 %1045, 31
  %1064 = xor i32 %1061, %1063
  %1065 = add nuw nsw i32 %1064, %1063
  %1066 = icmp eq i32 %1065, 2
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %38, align 1
  %.v64 = select i1 %1059, i64 29, i64 34
  %1068 = add i64 %1023, %.v64
  store i64 %1068, i64* %3, align 8
  br i1 %1059, label %block_42c512, label %block_.L_42c517

block_42c512:                                     ; preds = %block_42c4f5
  %1069 = add i64 %1068, 212
  br label %block_.L_42c5e6

block_.L_42c517:                                  ; preds = %block_42c4f5
  %1070 = add i64 %1068, 4
  store i64 %1070, i64* %3, align 8
  %1071 = load i64, i64* %850, align 8
  store i64 %1071, i64* %RAX.i752, align 8
  %1072 = add i64 %1068, 8
  store i64 %1072, i64* %3, align 8
  %1073 = load i32, i32* %854, align 4
  %1074 = sext i32 %1073 to i64
  store i64 %1074, i64* %RCX.i726, align 8
  %1075 = shl nsw i64 %1074, 3
  %1076 = add i64 %1075, %1071
  %1077 = add i64 %1068, 12
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i64*
  %1079 = load i64, i64* %1078, align 8
  store i64 %1079, i64* %RAX.i752, align 8
  %1080 = add i64 %1068, 16
  store i64 %1080, i64* %3, align 8
  %1081 = load i32, i32* %1036, align 4
  %1082 = sext i32 %1081 to i64
  store i64 %1082, i64* %RCX.i726, align 8
  %1083 = add i64 %1079, %1082
  %1084 = add i64 %1068, 20
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to i8*
  %1086 = load i8, i8* %1085, align 1
  %1087 = sext i8 %1086 to i64
  %1088 = and i64 %1087, 4294967295
  store i64 %1088, i64* %RDX.i739, align 8
  %1089 = sext i8 %1086 to i32
  %1090 = add nsw i32 %1089, -32
  %1091 = icmp ult i8 %1086, 32
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %14, align 1
  %1093 = and i32 %1090, 255
  %1094 = tail call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  store i8 %1097, i8* %21, align 1
  %1098 = xor i32 %1090, %1089
  %1099 = lshr i32 %1098, 4
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  store i8 %1101, i8* %26, align 1
  %1102 = icmp eq i32 %1090, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %29, align 1
  %1104 = lshr i32 %1090, 31
  %1105 = trunc i32 %1104 to i8
  store i8 %1105, i8* %32, align 1
  %1106 = lshr i32 %1089, 31
  %1107 = xor i32 %1104, %1106
  %1108 = add nuw nsw i32 %1107, %1106
  %1109 = icmp eq i32 %1108, 2
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %38, align 1
  %.v65 = select i1 %1102, i64 145, i64 29
  %1111 = add i64 %1068, %.v65
  store i64 %1111, i64* %3, align 8
  br i1 %1102, label %block_.L_42c5a8, label %block_42c534

block_42c534:                                     ; preds = %block_.L_42c517
  %1112 = add i64 %1111, 4
  store i64 %1112, i64* %3, align 8
  %1113 = load i64, i64* %850, align 8
  store i64 %1113, i64* %RAX.i752, align 8
  %1114 = add i64 %1111, 8
  store i64 %1114, i64* %3, align 8
  %1115 = load i32, i32* %854, align 4
  %1116 = sext i32 %1115 to i64
  store i64 %1116, i64* %RCX.i726, align 8
  %1117 = shl nsw i64 %1116, 3
  %1118 = add i64 %1117, %1113
  %1119 = add i64 %1111, 12
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %RAX.i752, align 8
  %1122 = add i64 %1111, 16
  store i64 %1122, i64* %3, align 8
  %1123 = load i32, i32* %1036, align 4
  %1124 = sext i32 %1123 to i64
  store i64 %1124, i64* %RCX.i726, align 8
  %1125 = add i64 %1121, %1124
  %1126 = add i64 %1111, 20
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1125 to i8*
  %1128 = load i8, i8* %1127, align 1
  %1129 = sext i8 %1128 to i64
  %1130 = and i64 %1129, 4294967295
  store i64 %1130, i64* %RDX.i739, align 8
  %1131 = sext i8 %1128 to i32
  %1132 = add nsw i32 %1131, -46
  %1133 = icmp ult i8 %1128, 46
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %14, align 1
  %1135 = and i32 %1132, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1
  %1140 = xor i32 %1132, %1131
  %1141 = lshr i32 %1140, 4
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  store i8 %1143, i8* %26, align 1
  %1144 = icmp eq i32 %1132, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %29, align 1
  %1146 = lshr i32 %1132, 31
  %1147 = trunc i32 %1146 to i8
  store i8 %1147, i8* %32, align 1
  %1148 = lshr i32 %1131, 31
  %1149 = xor i32 %1146, %1148
  %1150 = add nuw nsw i32 %1149, %1148
  %1151 = icmp eq i32 %1150, 2
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %38, align 1
  %.v66 = select i1 %1144, i64 116, i64 29
  %1153 = add i64 %1111, %.v66
  store i64 %1153, i64* %3, align 8
  br i1 %1144, label %block_.L_42c5a8, label %block_42c551

block_42c551:                                     ; preds = %block_42c534
  %1154 = add i64 %1153, 4
  store i64 %1154, i64* %3, align 8
  %1155 = load i64, i64* %850, align 8
  store i64 %1155, i64* %RAX.i752, align 8
  %1156 = add i64 %1153, 8
  store i64 %1156, i64* %3, align 8
  %1157 = load i32, i32* %854, align 4
  %1158 = sext i32 %1157 to i64
  store i64 %1158, i64* %RCX.i726, align 8
  %1159 = shl nsw i64 %1158, 3
  %1160 = add i64 %1159, %1155
  %1161 = add i64 %1153, 12
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i64*
  %1163 = load i64, i64* %1162, align 8
  store i64 %1163, i64* %RAX.i752, align 8
  %1164 = add i64 %1153, 16
  store i64 %1164, i64* %3, align 8
  %1165 = load i32, i32* %1036, align 4
  %1166 = sext i32 %1165 to i64
  store i64 %1166, i64* %RCX.i726, align 8
  %1167 = add i64 %1163, %1166
  %1168 = add i64 %1153, 20
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i8*
  %1170 = load i8, i8* %1169, align 1
  %1171 = sext i8 %1170 to i64
  %1172 = and i64 %1171, 4294967295
  store i64 %1172, i64* %RDX.i739, align 8
  %1173 = sext i8 %1170 to i32
  %1174 = add nsw i32 %1173, -95
  %1175 = icmp ult i8 %1170, 95
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %14, align 1
  %1177 = and i32 %1174, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177)
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %21, align 1
  %1182 = xor i32 %1173, 16
  %1183 = xor i32 %1182, %1174
  %1184 = lshr i32 %1183, 4
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  store i8 %1186, i8* %26, align 1
  %1187 = icmp eq i32 %1174, 0
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %29, align 1
  %1189 = lshr i32 %1174, 31
  %1190 = trunc i32 %1189 to i8
  store i8 %1190, i8* %32, align 1
  %1191 = lshr i32 %1173, 31
  %1192 = xor i32 %1189, %1191
  %1193 = add nuw nsw i32 %1192, %1191
  %1194 = icmp eq i32 %1193, 2
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %38, align 1
  %.v67 = select i1 %1187, i64 87, i64 29
  %1196 = add i64 %1153, %.v67
  store i64 %1196, i64* %3, align 8
  br i1 %1187, label %block_.L_42c5a8, label %block_42c56e

block_42c56e:                                     ; preds = %block_42c551
  %1197 = add i64 %1196, 4
  store i64 %1197, i64* %3, align 8
  %1198 = load i64, i64* %850, align 8
  store i64 %1198, i64* %RAX.i752, align 8
  %1199 = add i64 %1196, 8
  store i64 %1199, i64* %3, align 8
  %1200 = load i32, i32* %854, align 4
  %1201 = sext i32 %1200 to i64
  store i64 %1201, i64* %RCX.i726, align 8
  %1202 = shl nsw i64 %1201, 3
  %1203 = add i64 %1202, %1198
  %1204 = add i64 %1196, 12
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i64*
  %1206 = load i64, i64* %1205, align 8
  store i64 %1206, i64* %RAX.i752, align 8
  %1207 = add i64 %1196, 16
  store i64 %1207, i64* %3, align 8
  %1208 = load i32, i32* %1036, align 4
  %1209 = sext i32 %1208 to i64
  store i64 %1209, i64* %RCX.i726, align 8
  %1210 = add i64 %1206, %1209
  %1211 = add i64 %1196, 20
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i8*
  %1213 = load i8, i8* %1212, align 1
  %1214 = sext i8 %1213 to i64
  %1215 = and i64 %1214, 4294967295
  store i64 %1215, i64* %RDX.i739, align 8
  %1216 = sext i8 %1213 to i32
  %1217 = add nsw i32 %1216, -45
  %1218 = icmp ult i8 %1213, 45
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %14, align 1
  %1220 = and i32 %1217, 255
  %1221 = tail call i32 @llvm.ctpop.i32(i32 %1220)
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  %1224 = xor i8 %1223, 1
  store i8 %1224, i8* %21, align 1
  %1225 = xor i32 %1217, %1216
  %1226 = lshr i32 %1225, 4
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %26, align 1
  %1229 = icmp eq i32 %1217, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %29, align 1
  %1231 = lshr i32 %1217, 31
  %1232 = trunc i32 %1231 to i8
  store i8 %1232, i8* %32, align 1
  %1233 = lshr i32 %1216, 31
  %1234 = xor i32 %1231, %1233
  %1235 = add nuw nsw i32 %1234, %1233
  %1236 = icmp eq i32 %1235, 2
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %38, align 1
  %.v68 = select i1 %1229, i64 58, i64 29
  %1238 = add i64 %1196, %.v68
  store i64 %1238, i64* %3, align 8
  br i1 %1229, label %block_.L_42c5a8, label %block_42c58b

block_42c58b:                                     ; preds = %block_42c56e
  %1239 = add i64 %1238, 4
  store i64 %1239, i64* %3, align 8
  %1240 = load i64, i64* %850, align 8
  store i64 %1240, i64* %RAX.i752, align 8
  %1241 = add i64 %1238, 8
  store i64 %1241, i64* %3, align 8
  %1242 = load i32, i32* %854, align 4
  %1243 = sext i32 %1242 to i64
  store i64 %1243, i64* %RCX.i726, align 8
  %1244 = shl nsw i64 %1243, 3
  %1245 = add i64 %1244, %1240
  %1246 = add i64 %1238, 12
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i64*
  %1248 = load i64, i64* %1247, align 8
  store i64 %1248, i64* %RAX.i752, align 8
  %1249 = add i64 %1238, 16
  store i64 %1249, i64* %3, align 8
  %1250 = load i32, i32* %1036, align 4
  %1251 = sext i32 %1250 to i64
  store i64 %1251, i64* %RCX.i726, align 8
  %1252 = add i64 %1248, %1251
  %1253 = add i64 %1238, 20
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i8*
  %1255 = load i8, i8* %1254, align 1
  %1256 = sext i8 %1255 to i64
  %1257 = and i64 %1256, 4294967295
  store i64 %1257, i64* %RDX.i739, align 8
  %1258 = sext i8 %1255 to i32
  %1259 = add nsw i32 %1258, -126
  %1260 = icmp ult i8 %1255, 126
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %14, align 1
  %1262 = and i32 %1259, 255
  %1263 = tail call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  store i8 %1266, i8* %21, align 1
  %1267 = xor i32 %1258, 16
  %1268 = xor i32 %1267, %1259
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %26, align 1
  %1272 = icmp eq i32 %1259, 0
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %29, align 1
  %1274 = lshr i32 %1259, 31
  %1275 = trunc i32 %1274 to i8
  store i8 %1275, i8* %32, align 1
  %1276 = lshr i32 %1258, 31
  %1277 = xor i32 %1274, %1276
  %1278 = add nuw nsw i32 %1277, %1276
  %1279 = icmp eq i32 %1278, 2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %38, align 1
  %.v69 = select i1 %1272, i64 29, i64 61
  %1281 = add i64 %1238, %.v69
  store i64 %1281, i64* %3, align 8
  br i1 %1272, label %block_.L_42c5a8, label %block_.L_42c5c8

block_.L_42c5a8:                                  ; preds = %block_42c58b, %block_42c56e, %block_42c551, %block_42c534, %block_.L_42c517
  %1282 = phi i64 [ %1281, %block_42c58b ], [ %1238, %block_42c56e ], [ %1196, %block_42c551 ], [ %1153, %block_42c534 ], [ %1111, %block_.L_42c517 ]
  %1283 = add i64 %.pre45, -48
  %1284 = add i64 %1282, 4
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i64*
  %1286 = load i64, i64* %1285, align 8
  store i64 %1286, i64* %RAX.i752, align 8
  %1287 = add i64 %1282, 8
  store i64 %1287, i64* %3, align 8
  %1288 = load i32, i32* %854, align 4
  %1289 = sext i32 %1288 to i64
  store i64 %1289, i64* %RCX.i726, align 8
  %1290 = shl nsw i64 %1289, 2
  %1291 = add i64 %1290, %1286
  %1292 = add i64 %1282, 13
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1291 to i32*
  %1294 = load i32, i32* %1293, align 4
  store i32 %1294, i32* %48, align 1
  store float 0.000000e+00, float* %179, align 1
  store float 0.000000e+00, float* %180, align 1
  store float 0.000000e+00, float* %181, align 1
  %1295 = add i64 %.pre45, -56
  %1296 = add i64 %1282, 17
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i64*
  %1298 = load i64, i64* %1297, align 8
  store i64 %1298, i64* %RAX.i752, align 8
  %1299 = add i64 %1298, 8
  %1300 = add i64 %1282, 22
  store i64 %1300, i64* %3, align 8
  %1301 = load <2 x float>, <2 x float>* %182, align 1
  %1302 = load <2 x i32>, <2 x i32>* %183, align 1
  %1303 = inttoptr i64 %1299 to float*
  %1304 = load float, float* %1303, align 4
  %1305 = extractelement <2 x float> %1301, i32 0
  %1306 = fadd float %1305, %1304
  store float %1306, float* %178, align 1
  %1307 = bitcast <2 x float> %1301 to <2 x i32>
  %1308 = extractelement <2 x i32> %1307, i32 1
  store i32 %1308, i32* %50, align 1
  %1309 = extractelement <2 x i32> %1302, i32 0
  store i32 %1309, i32* %51, align 1
  %1310 = extractelement <2 x i32> %1302, i32 1
  store i32 %1310, i32* %53, align 1
  %1311 = add i64 %1282, 27
  store i64 %1311, i64* %3, align 8
  %1312 = load <2 x float>, <2 x float>* %182, align 1
  %1313 = extractelement <2 x float> %1312, i32 0
  store float %1313, float* %1303, align 4
  %1314 = load i64, i64* %3, align 8
  %1315 = add i64 %1314, 30
  store i64 %1315, i64* %3, align 8
  br label %block_.L_42c5e1

block_.L_42c5c8:                                  ; preds = %block_42c58b
  %1316 = add i64 %.pre45, -48
  %1317 = add i64 %1281, 4
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i64*
  %1319 = load i64, i64* %1318, align 8
  store i64 %1319, i64* %RAX.i752, align 8
  %1320 = add i64 %1281, 8
  store i64 %1320, i64* %3, align 8
  %1321 = load i32, i32* %854, align 4
  %1322 = sext i32 %1321 to i64
  store i64 %1322, i64* %RCX.i726, align 8
  %1323 = shl nsw i64 %1322, 2
  %1324 = add i64 %1323, %1319
  %1325 = add i64 %1281, 13
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i32*
  %1327 = load i32, i32* %1326, align 4
  store i32 %1327, i32* %48, align 1
  store float 0.000000e+00, float* %179, align 1
  store float 0.000000e+00, float* %180, align 1
  store float 0.000000e+00, float* %181, align 1
  %1328 = add i64 %.pre45, -56
  %1329 = add i64 %1281, 17
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i64*
  %1331 = load i64, i64* %1330, align 8
  store i64 %1331, i64* %RAX.i752, align 8
  %1332 = add i64 %1281, 21
  store i64 %1332, i64* %3, align 8
  %1333 = load <2 x float>, <2 x float>* %182, align 1
  %1334 = load <2 x i32>, <2 x i32>* %183, align 1
  %1335 = inttoptr i64 %1331 to float*
  %1336 = load float, float* %1335, align 4
  %1337 = extractelement <2 x float> %1333, i32 0
  %1338 = fadd float %1337, %1336
  store float %1338, float* %178, align 1
  %1339 = bitcast <2 x float> %1333 to <2 x i32>
  %1340 = extractelement <2 x i32> %1339, i32 1
  store i32 %1340, i32* %50, align 1
  %1341 = extractelement <2 x i32> %1334, i32 0
  store i32 %1341, i32* %51, align 1
  %1342 = extractelement <2 x i32> %1334, i32 1
  store i32 %1342, i32* %53, align 1
  %1343 = add i64 %1281, 25
  store i64 %1343, i64* %3, align 8
  %1344 = load <2 x float>, <2 x float>* %182, align 1
  %1345 = extractelement <2 x float> %1344, i32 0
  store float %1345, float* %1335, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_42c5e1

block_.L_42c5e1:                                  ; preds = %block_.L_42c5c8, %block_.L_42c5a8
  %1346 = phi i64 [ %.pre44, %block_.L_42c5c8 ], [ %1315, %block_.L_42c5a8 ]
  %1347 = add i64 %1346, 5
  store i64 %1347, i64* %3, align 8
  br label %block_.L_42c5e6

block_.L_42c5e6:                                  ; preds = %block_.L_42c5e1, %block_42c512
  %storemerge30 = phi i64 [ %1069, %block_42c512 ], [ %1347, %block_.L_42c5e1 ]
  %1348 = add i64 %storemerge30, 253
  br label %block_.L_42c6e3

block_.L_42c5eb:                                  ; preds = %block_.L_42c464, %block_42c4d8, %block_42c4bb, %block_42c49e, %block_42c481
  %1349 = phi i64 [ %1023, %block_42c4d8 ], [ %980, %block_42c4bb ], [ %938, %block_42c49e ], [ %895, %block_42c481 ], [ %847, %block_.L_42c464 ]
  %1350 = add i64 %.pre45, -16
  %1351 = add i64 %1349, 4
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i64*
  %1353 = load i64, i64* %1352, align 8
  store i64 %1353, i64* %RAX.i752, align 8
  %1354 = add i64 %.pre45, -60
  %1355 = add i64 %1349, 8
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i32*
  %1357 = load i32, i32* %1356, align 4
  %1358 = sext i32 %1357 to i64
  store i64 %1358, i64* %RCX.i726, align 8
  %1359 = shl nsw i64 %1358, 3
  %1360 = add i64 %1359, %1353
  %1361 = add i64 %1349, 12
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i64*
  %1363 = load i64, i64* %1362, align 8
  store i64 %1363, i64* %RAX.i752, align 8
  %1364 = add i64 %.pre45, -40
  %1365 = add i64 %1349, 16
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  %1368 = sext i32 %1367 to i64
  store i64 %1368, i64* %RCX.i726, align 8
  %1369 = add i64 %1363, %1368
  %1370 = add i64 %1349, 20
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to i8*
  %1372 = load i8, i8* %1371, align 1
  %1373 = sext i8 %1372 to i64
  %1374 = and i64 %1373, 4294967295
  store i64 %1374, i64* %RDX.i739, align 8
  %1375 = sext i8 %1372 to i32
  %1376 = add nsw i32 %1375, -95
  %1377 = icmp ult i8 %1372, 95
  %1378 = zext i1 %1377 to i8
  store i8 %1378, i8* %14, align 1
  %1379 = and i32 %1376, 255
  %1380 = tail call i32 @llvm.ctpop.i32(i32 %1379)
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = xor i8 %1382, 1
  store i8 %1383, i8* %21, align 1
  %1384 = xor i32 %1375, 16
  %1385 = xor i32 %1384, %1376
  %1386 = lshr i32 %1385, 4
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  store i8 %1388, i8* %26, align 1
  %1389 = icmp eq i32 %1376, 0
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %29, align 1
  %1391 = lshr i32 %1376, 31
  %1392 = trunc i32 %1391 to i8
  store i8 %1392, i8* %32, align 1
  %1393 = lshr i32 %1375, 31
  %1394 = xor i32 %1391, %1393
  %1395 = add nuw nsw i32 %1394, %1393
  %1396 = icmp eq i32 %1395, 2
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %38, align 1
  %.v70 = select i1 %1389, i64 29, i64 34
  %1398 = add i64 %1349, %.v70
  store i64 %1398, i64* %3, align 8
  br i1 %1389, label %block_42c608, label %block_.L_42c60d

block_42c608:                                     ; preds = %block_.L_42c5eb
  %1399 = add i64 %1398, 229
  %1400 = add i64 %1398, 5
  store i64 %1400, i64* %3, align 8
  br label %block_.L_42c6ed

block_.L_42c60d:                                  ; preds = %block_.L_42c5eb
  %1401 = add i64 %1398, 4
  store i64 %1401, i64* %3, align 8
  %1402 = load i64, i64* %1352, align 8
  store i64 %1402, i64* %RAX.i752, align 8
  %1403 = add i64 %1398, 8
  store i64 %1403, i64* %3, align 8
  %1404 = load i32, i32* %1356, align 4
  %1405 = sext i32 %1404 to i64
  store i64 %1405, i64* %RCX.i726, align 8
  %1406 = shl nsw i64 %1405, 3
  %1407 = add i64 %1406, %1402
  %1408 = add i64 %1398, 12
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i64*
  %1410 = load i64, i64* %1409, align 8
  store i64 %1410, i64* %RAX.i752, align 8
  %1411 = add i64 %1398, 16
  store i64 %1411, i64* %3, align 8
  %1412 = load i32, i32* %1366, align 4
  %1413 = sext i32 %1412 to i64
  store i64 %1413, i64* %RCX.i726, align 8
  %1414 = add i64 %1410, %1413
  %1415 = add i64 %1398, 20
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1414 to i8*
  %1417 = load i8, i8* %1416, align 1
  %1418 = sext i8 %1417 to i64
  %1419 = and i64 %1418, 4294967295
  store i64 %1419, i64* %RDX.i739, align 8
  %1420 = sext i8 %1417 to i32
  %1421 = add nsw i32 %1420, -32
  %1422 = icmp ult i8 %1417, 32
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %14, align 1
  %1424 = and i32 %1421, 255
  %1425 = tail call i32 @llvm.ctpop.i32(i32 %1424)
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  store i8 %1428, i8* %21, align 1
  %1429 = xor i32 %1421, %1420
  %1430 = lshr i32 %1429, 4
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  store i8 %1432, i8* %26, align 1
  %1433 = icmp eq i32 %1421, 0
  %1434 = zext i1 %1433 to i8
  store i8 %1434, i8* %29, align 1
  %1435 = lshr i32 %1421, 31
  %1436 = trunc i32 %1435 to i8
  store i8 %1436, i8* %32, align 1
  %1437 = lshr i32 %1420, 31
  %1438 = xor i32 %1435, %1437
  %1439 = add nuw nsw i32 %1438, %1437
  %1440 = icmp eq i32 %1439, 2
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %38, align 1
  %.v71 = select i1 %1433, i64 145, i64 29
  %1442 = add i64 %1398, %.v71
  store i64 %1442, i64* %3, align 8
  br i1 %1433, label %block_.L_42c69e, label %block_42c62a

block_42c62a:                                     ; preds = %block_.L_42c60d
  %1443 = add i64 %1442, 4
  store i64 %1443, i64* %3, align 8
  %1444 = load i64, i64* %1352, align 8
  store i64 %1444, i64* %RAX.i752, align 8
  %1445 = add i64 %1442, 8
  store i64 %1445, i64* %3, align 8
  %1446 = load i32, i32* %1356, align 4
  %1447 = sext i32 %1446 to i64
  store i64 %1447, i64* %RCX.i726, align 8
  %1448 = shl nsw i64 %1447, 3
  %1449 = add i64 %1448, %1444
  %1450 = add i64 %1442, 12
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i64*
  %1452 = load i64, i64* %1451, align 8
  store i64 %1452, i64* %RAX.i752, align 8
  %1453 = add i64 %1442, 16
  store i64 %1453, i64* %3, align 8
  %1454 = load i32, i32* %1366, align 4
  %1455 = sext i32 %1454 to i64
  store i64 %1455, i64* %RCX.i726, align 8
  %1456 = add i64 %1452, %1455
  %1457 = add i64 %1442, 20
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i8*
  %1459 = load i8, i8* %1458, align 1
  %1460 = sext i8 %1459 to i64
  %1461 = and i64 %1460, 4294967295
  store i64 %1461, i64* %RDX.i739, align 8
  %1462 = sext i8 %1459 to i32
  %1463 = add nsw i32 %1462, -46
  %1464 = icmp ult i8 %1459, 46
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %14, align 1
  %1466 = and i32 %1463, 255
  %1467 = tail call i32 @llvm.ctpop.i32(i32 %1466)
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  %1470 = xor i8 %1469, 1
  store i8 %1470, i8* %21, align 1
  %1471 = xor i32 %1463, %1462
  %1472 = lshr i32 %1471, 4
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  store i8 %1474, i8* %26, align 1
  %1475 = icmp eq i32 %1463, 0
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %29, align 1
  %1477 = lshr i32 %1463, 31
  %1478 = trunc i32 %1477 to i8
  store i8 %1478, i8* %32, align 1
  %1479 = lshr i32 %1462, 31
  %1480 = xor i32 %1477, %1479
  %1481 = add nuw nsw i32 %1480, %1479
  %1482 = icmp eq i32 %1481, 2
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %38, align 1
  %.v72 = select i1 %1475, i64 116, i64 29
  %1484 = add i64 %1442, %.v72
  store i64 %1484, i64* %3, align 8
  br i1 %1475, label %block_.L_42c69e, label %block_42c647

block_42c647:                                     ; preds = %block_42c62a
  %1485 = add i64 %1484, 4
  store i64 %1485, i64* %3, align 8
  %1486 = load i64, i64* %1352, align 8
  store i64 %1486, i64* %RAX.i752, align 8
  %1487 = add i64 %1484, 8
  store i64 %1487, i64* %3, align 8
  %1488 = load i32, i32* %1356, align 4
  %1489 = sext i32 %1488 to i64
  store i64 %1489, i64* %RCX.i726, align 8
  %1490 = shl nsw i64 %1489, 3
  %1491 = add i64 %1490, %1486
  %1492 = add i64 %1484, 12
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i64*
  %1494 = load i64, i64* %1493, align 8
  store i64 %1494, i64* %RAX.i752, align 8
  %1495 = add i64 %1484, 16
  store i64 %1495, i64* %3, align 8
  %1496 = load i32, i32* %1366, align 4
  %1497 = sext i32 %1496 to i64
  store i64 %1497, i64* %RCX.i726, align 8
  %1498 = add i64 %1494, %1497
  %1499 = add i64 %1484, 20
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i8*
  %1501 = load i8, i8* %1500, align 1
  %1502 = sext i8 %1501 to i64
  %1503 = and i64 %1502, 4294967295
  store i64 %1503, i64* %RDX.i739, align 8
  %1504 = sext i8 %1501 to i32
  %1505 = add nsw i32 %1504, -95
  %1506 = icmp ult i8 %1501, 95
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %14, align 1
  %1508 = and i32 %1505, 255
  %1509 = tail call i32 @llvm.ctpop.i32(i32 %1508)
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  %1512 = xor i8 %1511, 1
  store i8 %1512, i8* %21, align 1
  %1513 = xor i32 %1504, 16
  %1514 = xor i32 %1513, %1505
  %1515 = lshr i32 %1514, 4
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  store i8 %1517, i8* %26, align 1
  %1518 = icmp eq i32 %1505, 0
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %29, align 1
  %1520 = lshr i32 %1505, 31
  %1521 = trunc i32 %1520 to i8
  store i8 %1521, i8* %32, align 1
  %1522 = lshr i32 %1504, 31
  %1523 = xor i32 %1520, %1522
  %1524 = add nuw nsw i32 %1523, %1522
  %1525 = icmp eq i32 %1524, 2
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %38, align 1
  %.v73 = select i1 %1518, i64 87, i64 29
  %1527 = add i64 %1484, %.v73
  store i64 %1527, i64* %3, align 8
  br i1 %1518, label %block_.L_42c69e, label %block_42c664

block_42c664:                                     ; preds = %block_42c647
  %1528 = add i64 %1527, 4
  store i64 %1528, i64* %3, align 8
  %1529 = load i64, i64* %1352, align 8
  store i64 %1529, i64* %RAX.i752, align 8
  %1530 = add i64 %1527, 8
  store i64 %1530, i64* %3, align 8
  %1531 = load i32, i32* %1356, align 4
  %1532 = sext i32 %1531 to i64
  store i64 %1532, i64* %RCX.i726, align 8
  %1533 = shl nsw i64 %1532, 3
  %1534 = add i64 %1533, %1529
  %1535 = add i64 %1527, 12
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i64*
  %1537 = load i64, i64* %1536, align 8
  store i64 %1537, i64* %RAX.i752, align 8
  %1538 = add i64 %1527, 16
  store i64 %1538, i64* %3, align 8
  %1539 = load i32, i32* %1366, align 4
  %1540 = sext i32 %1539 to i64
  store i64 %1540, i64* %RCX.i726, align 8
  %1541 = add i64 %1537, %1540
  %1542 = add i64 %1527, 20
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i8*
  %1544 = load i8, i8* %1543, align 1
  %1545 = sext i8 %1544 to i64
  %1546 = and i64 %1545, 4294967295
  store i64 %1546, i64* %RDX.i739, align 8
  %1547 = sext i8 %1544 to i32
  %1548 = add nsw i32 %1547, -45
  %1549 = icmp ult i8 %1544, 45
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %14, align 1
  %1551 = and i32 %1548, 255
  %1552 = tail call i32 @llvm.ctpop.i32(i32 %1551)
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = xor i8 %1554, 1
  store i8 %1555, i8* %21, align 1
  %1556 = xor i32 %1548, %1547
  %1557 = lshr i32 %1556, 4
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  store i8 %1559, i8* %26, align 1
  %1560 = icmp eq i32 %1548, 0
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %29, align 1
  %1562 = lshr i32 %1548, 31
  %1563 = trunc i32 %1562 to i8
  store i8 %1563, i8* %32, align 1
  %1564 = lshr i32 %1547, 31
  %1565 = xor i32 %1562, %1564
  %1566 = add nuw nsw i32 %1565, %1564
  %1567 = icmp eq i32 %1566, 2
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %38, align 1
  %.v74 = select i1 %1560, i64 58, i64 29
  %1569 = add i64 %1527, %.v74
  store i64 %1569, i64* %3, align 8
  br i1 %1560, label %block_.L_42c69e, label %block_42c681

block_42c681:                                     ; preds = %block_42c664
  %1570 = add i64 %1569, 4
  store i64 %1570, i64* %3, align 8
  %1571 = load i64, i64* %1352, align 8
  store i64 %1571, i64* %RAX.i752, align 8
  %1572 = add i64 %1569, 8
  store i64 %1572, i64* %3, align 8
  %1573 = load i32, i32* %1356, align 4
  %1574 = sext i32 %1573 to i64
  store i64 %1574, i64* %RCX.i726, align 8
  %1575 = shl nsw i64 %1574, 3
  %1576 = add i64 %1575, %1571
  %1577 = add i64 %1569, 12
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i64*
  %1579 = load i64, i64* %1578, align 8
  store i64 %1579, i64* %RAX.i752, align 8
  %1580 = add i64 %1569, 16
  store i64 %1580, i64* %3, align 8
  %1581 = load i32, i32* %1366, align 4
  %1582 = sext i32 %1581 to i64
  store i64 %1582, i64* %RCX.i726, align 8
  %1583 = add i64 %1579, %1582
  %1584 = add i64 %1569, 20
  store i64 %1584, i64* %3, align 8
  %1585 = inttoptr i64 %1583 to i8*
  %1586 = load i8, i8* %1585, align 1
  %1587 = sext i8 %1586 to i64
  %1588 = and i64 %1587, 4294967295
  store i64 %1588, i64* %RDX.i739, align 8
  %1589 = sext i8 %1586 to i32
  %1590 = add nsw i32 %1589, -126
  %1591 = icmp ult i8 %1586, 126
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %14, align 1
  %1593 = and i32 %1590, 255
  %1594 = tail call i32 @llvm.ctpop.i32(i32 %1593)
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  %1597 = xor i8 %1596, 1
  store i8 %1597, i8* %21, align 1
  %1598 = xor i32 %1589, 16
  %1599 = xor i32 %1598, %1590
  %1600 = lshr i32 %1599, 4
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  store i8 %1602, i8* %26, align 1
  %1603 = icmp eq i32 %1590, 0
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %29, align 1
  %1605 = lshr i32 %1590, 31
  %1606 = trunc i32 %1605 to i8
  store i8 %1606, i8* %32, align 1
  %1607 = lshr i32 %1589, 31
  %1608 = xor i32 %1605, %1607
  %1609 = add nuw nsw i32 %1608, %1607
  %1610 = icmp eq i32 %1609, 2
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %38, align 1
  %.v75 = select i1 %1603, i64 29, i64 61
  %1612 = add i64 %1569, %.v75
  store i64 %1612, i64* %3, align 8
  br i1 %1603, label %block_.L_42c69e, label %block_.L_42c6be

block_.L_42c69e:                                  ; preds = %block_42c681, %block_42c664, %block_42c647, %block_42c62a, %block_.L_42c60d
  %1613 = phi i64 [ %1612, %block_42c681 ], [ %1569, %block_42c664 ], [ %1527, %block_42c647 ], [ %1484, %block_42c62a ], [ %1442, %block_.L_42c60d ]
  %1614 = add i64 %.pre45, -48
  %1615 = add i64 %1613, 4
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i64*
  %1617 = load i64, i64* %1616, align 8
  store i64 %1617, i64* %RAX.i752, align 8
  %1618 = add i64 %1613, 8
  store i64 %1618, i64* %3, align 8
  %1619 = load i32, i32* %1356, align 4
  %1620 = sext i32 %1619 to i64
  store i64 %1620, i64* %RCX.i726, align 8
  %1621 = shl nsw i64 %1620, 2
  %1622 = add i64 %1621, %1617
  %1623 = add i64 %1613, 13
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  store i32 %1625, i32* %48, align 1
  store float 0.000000e+00, float* %179, align 1
  store float 0.000000e+00, float* %180, align 1
  store float 0.000000e+00, float* %181, align 1
  %1626 = add i64 %.pre45, -56
  %1627 = add i64 %1613, 17
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i64*
  %1629 = load i64, i64* %1628, align 8
  store i64 %1629, i64* %RAX.i752, align 8
  %1630 = add i64 %1629, 24
  %1631 = add i64 %1613, 22
  store i64 %1631, i64* %3, align 8
  %1632 = load <2 x float>, <2 x float>* %182, align 1
  %1633 = load <2 x i32>, <2 x i32>* %183, align 1
  %1634 = inttoptr i64 %1630 to float*
  %1635 = load float, float* %1634, align 4
  %1636 = extractelement <2 x float> %1632, i32 0
  %1637 = fadd float %1636, %1635
  store float %1637, float* %178, align 1
  %1638 = bitcast <2 x float> %1632 to <2 x i32>
  %1639 = extractelement <2 x i32> %1638, i32 1
  store i32 %1639, i32* %50, align 1
  %1640 = extractelement <2 x i32> %1633, i32 0
  store i32 %1640, i32* %51, align 1
  %1641 = extractelement <2 x i32> %1633, i32 1
  store i32 %1641, i32* %53, align 1
  %1642 = add i64 %1613, 27
  store i64 %1642, i64* %3, align 8
  %1643 = load <2 x float>, <2 x float>* %182, align 1
  %1644 = extractelement <2 x float> %1643, i32 0
  store float %1644, float* %1634, align 4
  %1645 = load i64, i64* %3, align 8
  %1646 = add i64 %1645, 32
  store i64 %1646, i64* %3, align 8
  br label %block_.L_42c6d9

block_.L_42c6be:                                  ; preds = %block_42c681
  %1647 = add i64 %.pre45, -48
  %1648 = add i64 %1612, 4
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i64*
  %1650 = load i64, i64* %1649, align 8
  store i64 %1650, i64* %RAX.i752, align 8
  %1651 = add i64 %1612, 8
  store i64 %1651, i64* %3, align 8
  %1652 = load i32, i32* %1356, align 4
  %1653 = sext i32 %1652 to i64
  store i64 %1653, i64* %RCX.i726, align 8
  %1654 = shl nsw i64 %1653, 2
  %1655 = add i64 %1654, %1650
  %1656 = add i64 %1612, 13
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1655 to i32*
  %1658 = load i32, i32* %1657, align 4
  store i32 %1658, i32* %48, align 1
  store float 0.000000e+00, float* %179, align 1
  store float 0.000000e+00, float* %180, align 1
  store float 0.000000e+00, float* %181, align 1
  %1659 = add i64 %.pre45, -56
  %1660 = add i64 %1612, 17
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1659 to i64*
  %1662 = load i64, i64* %1661, align 8
  store i64 %1662, i64* %RAX.i752, align 8
  %1663 = add i64 %1662, 20
  %1664 = add i64 %1612, 22
  store i64 %1664, i64* %3, align 8
  %1665 = load <2 x float>, <2 x float>* %182, align 1
  %1666 = load <2 x i32>, <2 x i32>* %183, align 1
  %1667 = inttoptr i64 %1663 to float*
  %1668 = load float, float* %1667, align 4
  %1669 = extractelement <2 x float> %1665, i32 0
  %1670 = fadd float %1669, %1668
  store float %1670, float* %178, align 1
  %1671 = bitcast <2 x float> %1665 to <2 x i32>
  %1672 = extractelement <2 x i32> %1671, i32 1
  store i32 %1672, i32* %50, align 1
  %1673 = extractelement <2 x i32> %1666, i32 0
  store i32 %1673, i32* %51, align 1
  %1674 = extractelement <2 x i32> %1666, i32 1
  store i32 %1674, i32* %53, align 1
  %1675 = add i64 %1612, 27
  store i64 %1675, i64* %3, align 8
  %1676 = load <2 x float>, <2 x float>* %182, align 1
  %1677 = extractelement <2 x float> %1676, i32 0
  store float %1677, float* %1667, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_42c6d9

block_.L_42c6d9:                                  ; preds = %block_.L_42c6be, %block_.L_42c69e
  %1678 = phi i64 [ %.pre46, %block_.L_42c6be ], [ %1646, %block_.L_42c69e ]
  %1679 = add i64 %1678, 10
  store i64 %1679, i64* %3, align 8
  br label %block_.L_42c6e3

block_.L_42c6e3:                                  ; preds = %block_.L_42c6d9, %block_.L_42c5e6
  %storemerge31 = phi i64 [ %1348, %block_.L_42c5e6 ], [ %1679, %block_.L_42c6d9 ]
  %1680 = add i64 %storemerge31, 5
  store i64 %1680, i64* %3, align 8
  br label %block_.L_42c6e8

block_.L_42c6e8:                                  ; preds = %block_.L_42c6e3, %block_.L_42c3fc
  %storemerge = phi i64 [ %846, %block_.L_42c3fc ], [ %1680, %block_.L_42c6e3 ]
  %1681 = add i64 %storemerge, 5
  %.pre47 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42c6ed

block_.L_42c6ed:                                  ; preds = %block_.L_42c6e8, %block_42c608
  %1682 = phi i64 [ %.pre47, %block_.L_42c6e8 ], [ %.pre45, %block_42c608 ]
  %storemerge29 = phi i64 [ %1681, %block_.L_42c6e8 ], [ %1399, %block_42c608 ]
  %1683 = add i64 %1682, -60
  %1684 = add i64 %storemerge29, 3
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1683 to i32*
  %1686 = load i32, i32* %1685, align 4
  %1687 = add i32 %1686, 1
  %1688 = zext i32 %1687 to i64
  store i64 %1688, i64* %RAX.i752, align 8
  %1689 = icmp eq i32 %1686, -1
  %1690 = icmp eq i32 %1687, 0
  %1691 = or i1 %1689, %1690
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %14, align 1
  %1693 = and i32 %1687, 255
  %1694 = tail call i32 @llvm.ctpop.i32(i32 %1693)
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  %1697 = xor i8 %1696, 1
  store i8 %1697, i8* %21, align 1
  %1698 = xor i32 %1687, %1686
  %1699 = lshr i32 %1698, 4
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  store i8 %1701, i8* %26, align 1
  %1702 = zext i1 %1690 to i8
  store i8 %1702, i8* %29, align 1
  %1703 = lshr i32 %1687, 31
  %1704 = trunc i32 %1703 to i8
  store i8 %1704, i8* %32, align 1
  %1705 = lshr i32 %1686, 31
  %1706 = xor i32 %1703, %1705
  %1707 = add nuw nsw i32 %1706, %1703
  %1708 = icmp eq i32 %1707, 2
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %38, align 1
  %1710 = add i64 %storemerge29, 9
  store i64 %1710, i64* %3, align 8
  store i32 %1687, i32* %1685, align 4
  %1711 = load i64, i64* %3, align 8
  %1712 = add i64 %1711, -1106
  store i64 %1712, i64* %3, align 8
  br label %block_.L_42c2a4

block_.L_42c6fb:                                  ; preds = %block_.L_42c2a4
  %1713 = add i64 %186, -4
  %1714 = add i64 %222, 7
  store i64 %1714, i64* %3, align 8
  %1715 = inttoptr i64 %1713 to i32*
  store i32 1, i32* %1715, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_42c702

block_.L_42c702:                                  ; preds = %block_.L_42c6fb, %block_.L_42c3f0, %block_.L_42c353
  %1716 = phi i64 [ %.pre43, %block_.L_42c6fb ], [ %695, %block_.L_42c3f0 ], [ %475, %block_.L_42c353 ]
  %1717 = load i64, i64* %RBP.i, align 8
  %1718 = add i64 %1717, -4
  %1719 = add i64 %1716, 3
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1718 to i32*
  %1721 = load i32, i32* %1720, align 4
  %1722 = zext i32 %1721 to i64
  store i64 %1722, i64* %RAX.i752, align 8
  %1723 = load i64, i64* %6, align 8
  %1724 = add i64 %1723, 64
  store i64 %1724, i64* %6, align 8
  %1725 = icmp ugt i64 %1723, -65
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %14, align 1
  %1727 = trunc i64 %1724 to i32
  %1728 = and i32 %1727, 255
  %1729 = tail call i32 @llvm.ctpop.i32(i32 %1728)
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  %1732 = xor i8 %1731, 1
  store i8 %1732, i8* %21, align 1
  %1733 = xor i64 %1724, %1723
  %1734 = lshr i64 %1733, 4
  %1735 = trunc i64 %1734 to i8
  %1736 = and i8 %1735, 1
  store i8 %1736, i8* %26, align 1
  %1737 = icmp eq i64 %1724, 0
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %29, align 1
  %1739 = lshr i64 %1724, 63
  %1740 = trunc i64 %1739 to i8
  store i8 %1740, i8* %32, align 1
  %1741 = lshr i64 %1723, 63
  %1742 = xor i64 %1739, %1741
  %1743 = add nuw nsw i64 %1742, %1739
  %1744 = icmp eq i64 %1743, 2
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %38, align 1
  %1746 = add i64 %1716, 8
  store i64 %1746, i64* %3, align 8
  %1747 = add i64 %1723, 72
  %1748 = inttoptr i64 %1724 to i64*
  %1749 = load i64, i64* %1748, align 8
  store i64 %1749, i64* %RBP.i, align 8
  store i64 %1747, i64* %6, align 8
  %1750 = add i64 %1716, 9
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1747 to i64*
  %1752 = load i64, i64* %1751, align 8
  store i64 %1752, i64* %3, align 8
  %1753 = add i64 %1723, 80
  store i64 %1753, i64* %6, align 8
  ret %struct.Memory* %call2_42c298
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
define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 64
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
define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 8, i64* %3, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ne i32 %6, 0
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
  %18 = xor i32 %6, 16
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FSet(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42c6fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_42c464(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_je_.L_42c353(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42c35f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42c702(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_42c3f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42c3fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
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
define %struct.Memory* @routine_addss_0x4__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
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
define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_cvtsi2ssl__edx___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fmul float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x10__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
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
define %struct.Memory* @routine_addss_0xc__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 12
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
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
define %struct.Memory* @routine_jmpq_.L_42c6e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42c5eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42c517(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42c5e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42c5a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42c5c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addss_0x8__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_jmpq_.L_42c5e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss___rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = bitcast i64* %RAX to float**
  %6 = load float*, float** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = load float, float* %6, align 4
  %15 = extractelement <2 x float> %10, i32 0
  %16 = fadd float %15, %14
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = bitcast <2 x float> %10 to <2 x i32>
  %19 = extractelement <2 x i32> %18, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 4
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  %22 = extractelement <2 x i32> %13, i32 0
  %23 = bitcast i64* %11 to i32*
  store i32 %22, i32* %23, align 1
  %24 = extractelement <2 x i32> %13, i32 1
  %25 = getelementptr inbounds i8, i8* %4, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  store float %10, float* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42c6e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42c60d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42c6ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42c69e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42c6be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addss_0x18__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 24
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 24
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
define %struct.Memory* @routine_jmpq_.L_42c6d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_0x14__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 20
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
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
define %struct.Memory* @routine_jmpq_.L_42c6de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42c2a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -65
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
