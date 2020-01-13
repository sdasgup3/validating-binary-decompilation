; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x820__rip__4197032__type = type <{ [16 x i8] }>
%G_0x820__rip__4197040__type = type <{ [16 x i8] }>
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
@G_0x820__rip__4197032_ = local_unnamed_addr global %G_0x820__rip__4197032__type zeroinitializer
@G_0x820__rip__4197040_ = local_unnamed_addr global %G_0x820__rip__4197040__type zeroinitializer

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
  %RAX.i294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %11 = add i64 %7, 24
  %12 = add i64 %10, 7
  store i64 %12, i64* %3, align 8
  %13 = inttoptr i64 %11 to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %RAX.i294, align 8
  %R10.i292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %15 = add i64 %7, 16
  %16 = add i64 %10, 11
  store i64 %16, i64* %3, align 8
  %17 = inttoptr i64 %15 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %R10.i292, align 8
  %R11.i289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %19 = add i64 %7, 8
  %20 = add i64 %10, 15
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %19 to i64*
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %R11.i289, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %24 = load i64, i64* bitcast (%G_0x820__rip__4197032__type* @G_0x820__rip__4197032_ to i64*), align 8
  %25 = bitcast [32 x %union.VectorReg]* %23 to double*
  %26 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %23, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %24, i64* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %28 = bitcast i64* %27 to double*
  store double 0.000000e+00, double* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %30 = load i64, i64* bitcast (%G_0x820__rip__4197040__type* @G_0x820__rip__4197040_ to i64*), align 8
  %31 = bitcast %union.VectorReg* %29 to double*
  %32 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %29, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %30, i64* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %34 = bitcast i64* %33 to double*
  store double 0.000000e+00, double* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %35 to i32*
  %36 = add i64 %7, -12
  %37 = load i32, i32* %EDI.i, align 4
  %38 = add i64 %10, 34
  store i64 %38, i64* %3, align 8
  %39 = inttoptr i64 %36 to i32*
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %40 to i32*
  %41 = load i64, i64* %RBP.i, align 8
  %42 = add i64 %41, -8
  %43 = load i32, i32* %ESI.i, align 4
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 3
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %46, align 4
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %47 to i32*
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -12
  %50 = load i32, i32* %EDX.i, align 4
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 3
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %53, align 4
  %RCX.i275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -24
  %56 = load i64, i64* %RCX.i275, align 8
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %55 to i64*
  store i64 %56, i64* %59, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -32
  %62 = load i64, i64* %R8.i, align 8
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -40
  %68 = load i64, i64* %R9.i, align 8
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -24
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 4
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %73 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %RCX.i275, align 8
  %78 = add i64 %74, 8
  store i64 %78, i64* %3, align 8
  %79 = load i64, i64* %32, align 1
  %80 = inttoptr i64 %77 to i64*
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -32
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 4
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %82 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %RCX.i275, align 8
  %87 = add i64 %83, 8
  store i64 %87, i64* %3, align 8
  %88 = load i64, i64* %26, align 1
  %89 = inttoptr i64 %86 to i64*
  store i64 %88, i64* %89, align 8
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -44
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, 7
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %91 to i32*
  store i32 0, i32* %94, align 4
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -56
  %97 = load i64, i64* %R11.i289, align 8
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 4
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %96 to i64*
  store i64 %97, i64* %100, align 8
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -64
  %103 = load i64, i64* %R10.i292, align 8
  %104 = load i64, i64* %3, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %106, align 8
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -72
  %109 = load i64, i64* %RAX.i294, align 8
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 4
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %112, align 8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RDX.i204 = getelementptr inbounds %union.anon, %union.anon* %47, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400ae8

block_.L_400ae8:                                  ; preds = %block_.L_400b62, %entry
  %119 = phi i64 [ %370, %block_.L_400b62 ], [ %.pre, %entry ]
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -44
  %122 = add i64 %119, 3
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %121 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RAX.i294, align 8
  %126 = add i64 %120, -4
  %127 = add i64 %119, 6
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %126 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = sub i32 %124, %129
  %131 = icmp ult i32 %124, %129
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %113, align 1
  %133 = and i32 %130, 255
  %134 = tail call i32 @llvm.ctpop.i32(i32 %133)
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  store i8 %137, i8* %114, align 1
  %138 = xor i32 %129, %124
  %139 = xor i32 %138, %130
  %140 = lshr i32 %139, 4
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  store i8 %142, i8* %115, align 1
  %143 = icmp eq i32 %130, 0
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %116, align 1
  %145 = lshr i32 %130, 31
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %117, align 1
  %147 = lshr i32 %124, 31
  %148 = lshr i32 %129, 31
  %149 = xor i32 %148, %147
  %150 = xor i32 %145, %147
  %151 = add nuw nsw i32 %150, %149
  %152 = icmp eq i32 %151, 2
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %118, align 1
  %154 = icmp ne i8 %146, 0
  %155 = xor i1 %154, %152
  %.v = select i1 %155, i64 12, i64 141
  %156 = add i64 %119, %.v
  store i64 %156, i64* %3, align 8
  br i1 %155, label %block_400af4, label %block_.L_400b75

block_400af4:                                     ; preds = %block_.L_400ae8
  %157 = add i64 %120, -48
  %158 = add i64 %156, 7
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i32*
  store i32 0, i32* %159, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400afb

block_.L_400afb:                                  ; preds = %block_400b07, %block_400af4
  %160 = phi i64 [ %341, %block_400b07 ], [ %.pre1, %block_400af4 ]
  %161 = load i64, i64* %RBP.i, align 8
  %162 = add i64 %161, -48
  %163 = add i64 %160, 3
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RAX.i294, align 8
  %167 = add i64 %161, -8
  %168 = add i64 %160, 6
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = sub i32 %165, %170
  %172 = icmp ult i32 %165, %170
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %113, align 1
  %174 = and i32 %171, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174)
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %114, align 1
  %179 = xor i32 %170, %165
  %180 = xor i32 %179, %171
  %181 = lshr i32 %180, 4
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %115, align 1
  %184 = icmp eq i32 %171, 0
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %116, align 1
  %186 = lshr i32 %171, 31
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %117, align 1
  %188 = lshr i32 %165, 31
  %189 = lshr i32 %170, 31
  %190 = xor i32 %189, %188
  %191 = xor i32 %186, %188
  %192 = add nuw nsw i32 %191, %190
  %193 = icmp eq i32 %192, 2
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %118, align 1
  %195 = icmp ne i8 %187, 0
  %196 = xor i1 %195, %193
  %.v6 = select i1 %196, i64 12, i64 103
  %197 = add i64 %160, %.v6
  store i64 %197, i64* %3, align 8
  %198 = add i64 %161, -44
  br i1 %196, label %block_400b07, label %block_.L_400b62

block_400b07:                                     ; preds = %block_.L_400afb
  %199 = add i64 %197, 3
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = zext i32 %201 to i64
  store i64 %202, i64* %RAX.i294, align 8
  %203 = sitofp i32 %201 to double
  store double %203, double* %25, align 1
  %204 = add i64 %197, 10
  store i64 %204, i64* %3, align 8
  %205 = load i32, i32* %164, align 4
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RAX.i294, align 8
  %207 = sitofp i32 %205 to double
  store double %207, double* %31, align 1
  %208 = fmul double %203, %207
  store double %208, double* %25, align 1
  %209 = add i64 %161, -4
  %210 = add i64 %197, 21
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RAX.i294, align 8
  %214 = sitofp i32 %212 to double
  store double %214, double* %31, align 1
  %215 = fdiv double %208, %214
  store double %215, double* %25, align 1
  %216 = add i64 %161, -40
  %217 = add i64 %197, 33
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i64*
  %219 = load i64, i64* %218, align 8
  store i64 %219, i64* %RCX.i275, align 8
  %220 = add i64 %197, 37
  store i64 %220, i64* %3, align 8
  %221 = load i32, i32* %200, align 4
  %222 = sext i32 %221 to i64
  %223 = shl nsw i64 %222, 13
  store i64 %223, i64* %RDX.i204, align 8
  %224 = lshr i64 %222, 50
  %225 = and i64 %224, 1
  %226 = add i64 %223, %219
  store i64 %226, i64* %RCX.i275, align 8
  %227 = icmp ult i64 %226, %219
  %228 = icmp ult i64 %226, %223
  %229 = or i1 %227, %228
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %113, align 1
  %231 = trunc i64 %226 to i32
  %232 = and i32 %231, 255
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232)
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  store i8 %236, i8* %114, align 1
  %237 = xor i64 %219, %226
  %238 = lshr i64 %237, 4
  %239 = trunc i64 %238 to i8
  %240 = and i8 %239, 1
  store i8 %240, i8* %115, align 1
  %241 = icmp eq i64 %226, 0
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %116, align 1
  %243 = lshr i64 %226, 63
  %244 = trunc i64 %243 to i8
  store i8 %244, i8* %117, align 1
  %245 = lshr i64 %219, 63
  %246 = xor i64 %243, %245
  %247 = xor i64 %243, %225
  %248 = add nuw nsw i64 %246, %247
  %249 = icmp eq i64 %248, 2
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %118, align 1
  %251 = load i64, i64* %RBP.i, align 8
  %252 = add i64 %251, -48
  %253 = add i64 %197, 48
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  store i64 %256, i64* %RDX.i204, align 8
  %257 = shl nsw i64 %256, 3
  %258 = add i64 %257, %226
  %259 = add i64 %197, 53
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to double*
  store double %215, double* %260, align 8
  %261 = load i64, i64* %RBP.i, align 8
  %262 = add i64 %261, 16
  %263 = load i64, i64* %3, align 8
  %264 = add i64 %263, 4
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %262 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %RCX.i275, align 8
  %267 = add i64 %261, -44
  %268 = add i64 %263, 8
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = shl nsw i64 %271, 13
  store i64 %272, i64* %RDX.i204, align 8
  %273 = lshr i64 %271, 50
  %274 = and i64 %273, 1
  %275 = add i64 %272, %266
  store i64 %275, i64* %RCX.i275, align 8
  %276 = icmp ult i64 %275, %266
  %277 = icmp ult i64 %275, %272
  %278 = or i1 %276, %277
  %279 = zext i1 %278 to i8
  store i8 %279, i8* %113, align 1
  %280 = trunc i64 %275 to i32
  %281 = and i32 %280, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %114, align 1
  %286 = xor i64 %266, %275
  %287 = lshr i64 %286, 4
  %288 = trunc i64 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %115, align 1
  %290 = icmp eq i64 %275, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %116, align 1
  %292 = lshr i64 %275, 63
  %293 = trunc i64 %292 to i8
  store i8 %293, i8* %117, align 1
  %294 = lshr i64 %266, 63
  %295 = xor i64 %292, %294
  %296 = xor i64 %292, %274
  %297 = add nuw nsw i64 %295, %296
  %298 = icmp eq i64 %297, 2
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %118, align 1
  %300 = add i64 %261, -48
  %301 = add i64 %263, 19
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  store i64 %304, i64* %RDX.i204, align 8
  %305 = shl nsw i64 %304, 3
  %306 = add i64 %305, %275
  %307 = add i64 %263, 24
  store i64 %307, i64* %3, align 8
  %308 = load i64, i64* %26, align 1
  %309 = inttoptr i64 %306 to i64*
  store i64 %308, i64* %309, align 8
  %310 = load i64, i64* %RBP.i, align 8
  %311 = add i64 %310, -48
  %312 = load i64, i64* %3, align 8
  %313 = add i64 %312, 3
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %311 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = add i32 %315, 1
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RAX.i294, align 8
  %318 = icmp eq i32 %315, -1
  %319 = icmp eq i32 %316, 0
  %320 = or i1 %318, %319
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %113, align 1
  %322 = and i32 %316, 255
  %323 = tail call i32 @llvm.ctpop.i32(i32 %322)
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  %326 = xor i8 %325, 1
  store i8 %326, i8* %114, align 1
  %327 = xor i32 %315, %316
  %328 = lshr i32 %327, 4
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  store i8 %330, i8* %115, align 1
  %331 = zext i1 %319 to i8
  store i8 %331, i8* %116, align 1
  %332 = lshr i32 %316, 31
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %117, align 1
  %334 = lshr i32 %315, 31
  %335 = xor i32 %332, %334
  %336 = add nuw nsw i32 %335, %332
  %337 = icmp eq i32 %336, 2
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %118, align 1
  %339 = add i64 %312, 9
  store i64 %339, i64* %3, align 8
  store i32 %316, i32* %314, align 4
  %340 = load i64, i64* %3, align 8
  %341 = add i64 %340, -98
  store i64 %341, i64* %3, align 8
  br label %block_.L_400afb

block_.L_400b62:                                  ; preds = %block_.L_400afb
  %342 = add i64 %197, 8
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %198 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = add i32 %344, 1
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RAX.i294, align 8
  %347 = icmp eq i32 %344, -1
  %348 = icmp eq i32 %345, 0
  %349 = or i1 %347, %348
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %113, align 1
  %351 = and i32 %345, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %114, align 1
  %356 = xor i32 %344, %345
  %357 = lshr i32 %356, 4
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %115, align 1
  %360 = zext i1 %348 to i8
  store i8 %360, i8* %116, align 1
  %361 = lshr i32 %345, 31
  %362 = trunc i32 %361 to i8
  store i8 %362, i8* %117, align 1
  %363 = lshr i32 %344, 31
  %364 = xor i32 %361, %363
  %365 = add nuw nsw i32 %364, %361
  %366 = icmp eq i32 %365, 2
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %118, align 1
  %368 = add i64 %197, 14
  store i64 %368, i64* %3, align 8
  store i32 %345, i32* %343, align 4
  %369 = load i64, i64* %3, align 8
  %370 = add i64 %369, -136
  store i64 %370, i64* %3, align 8
  br label %block_.L_400ae8

block_.L_400b75:                                  ; preds = %block_.L_400ae8
  %371 = add i64 %156, 7
  store i64 %371, i64* %3, align 8
  store i32 0, i32* %123, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400b7c

block_.L_400b7c:                                  ; preds = %block_.L_400bde, %block_.L_400b75
  %372 = phi i64 [ %574, %block_.L_400bde ], [ %.pre2, %block_.L_400b75 ]
  %373 = load i64, i64* %RBP.i, align 8
  %374 = add i64 %373, -44
  %375 = add i64 %372, 3
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RAX.i294, align 8
  %379 = add i64 %373, -4
  %380 = add i64 %372, 6
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %379 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = sub i32 %377, %382
  %384 = icmp ult i32 %377, %382
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %113, align 1
  %386 = and i32 %383, 255
  %387 = tail call i32 @llvm.ctpop.i32(i32 %386)
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = xor i8 %389, 1
  store i8 %390, i8* %114, align 1
  %391 = xor i32 %382, %377
  %392 = xor i32 %391, %383
  %393 = lshr i32 %392, 4
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  store i8 %395, i8* %115, align 1
  %396 = icmp eq i32 %383, 0
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %116, align 1
  %398 = lshr i32 %383, 31
  %399 = trunc i32 %398 to i8
  store i8 %399, i8* %117, align 1
  %400 = lshr i32 %377, 31
  %401 = lshr i32 %382, 31
  %402 = xor i32 %401, %400
  %403 = xor i32 %398, %400
  %404 = add nuw nsw i32 %403, %402
  %405 = icmp eq i32 %404, 2
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %118, align 1
  %407 = icmp ne i8 %399, 0
  %408 = xor i1 %407, %405
  %.v7 = select i1 %408, i64 12, i64 117
  %409 = add i64 %372, %.v7
  store i64 %409, i64* %3, align 8
  br i1 %408, label %block_400b88, label %block_.L_400bf1

block_400b88:                                     ; preds = %block_.L_400b7c
  %410 = add i64 %373, -48
  %411 = add i64 %409, 7
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  store i32 0, i32* %412, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400b8f

block_.L_400b8f:                                  ; preds = %block_400b9b, %block_400b88
  %413 = phi i64 [ %545, %block_400b9b ], [ %.pre3, %block_400b88 ]
  %414 = load i64, i64* %RBP.i, align 8
  %415 = add i64 %414, -48
  %416 = add i64 %413, 3
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RAX.i294, align 8
  %420 = add i64 %414, -12
  %421 = add i64 %413, 6
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = sub i32 %418, %423
  %425 = icmp ult i32 %418, %423
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %113, align 1
  %427 = and i32 %424, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %114, align 1
  %432 = xor i32 %423, %418
  %433 = xor i32 %432, %424
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %115, align 1
  %437 = icmp eq i32 %424, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %116, align 1
  %439 = lshr i32 %424, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %117, align 1
  %441 = lshr i32 %418, 31
  %442 = lshr i32 %423, 31
  %443 = xor i32 %442, %441
  %444 = xor i32 %439, %441
  %445 = add nuw nsw i32 %444, %443
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %118, align 1
  %448 = icmp ne i8 %440, 0
  %449 = xor i1 %448, %446
  %.v8 = select i1 %449, i64 12, i64 79
  %450 = add i64 %413, %.v8
  store i64 %450, i64* %3, align 8
  %451 = add i64 %414, -44
  br i1 %449, label %block_400b9b, label %block_.L_400bde

block_400b9b:                                     ; preds = %block_.L_400b8f
  %452 = add i64 %450, 3
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RAX.i294, align 8
  %456 = sitofp i32 %454 to double
  store double %456, double* %25, align 1
  %457 = add i64 %450, 10
  store i64 %457, i64* %3, align 8
  %458 = load i32, i32* %417, align 4
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RAX.i294, align 8
  %460 = sitofp i32 %458 to double
  store double %460, double* %31, align 1
  %461 = fmul double %456, %460
  store double %461, double* %25, align 1
  %462 = add i64 %414, -4
  %463 = add i64 %450, 21
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RAX.i294, align 8
  %467 = sitofp i32 %465 to double
  store double %467, double* %31, align 1
  %468 = fdiv double %461, %467
  store double %468, double* %25, align 1
  %469 = add i64 %414, 24
  %470 = add i64 %450, 33
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i64*
  %472 = load i64, i64* %471, align 8
  store i64 %472, i64* %RCX.i275, align 8
  %473 = add i64 %450, 37
  store i64 %473, i64* %3, align 8
  %474 = load i32, i32* %453, align 4
  %475 = sext i32 %474 to i64
  %476 = shl nsw i64 %475, 13
  store i64 %476, i64* %RDX.i204, align 8
  %477 = lshr i64 %475, 50
  %478 = and i64 %477, 1
  %479 = add i64 %476, %472
  store i64 %479, i64* %RCX.i275, align 8
  %480 = icmp ult i64 %479, %472
  %481 = icmp ult i64 %479, %476
  %482 = or i1 %480, %481
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %113, align 1
  %484 = trunc i64 %479 to i32
  %485 = and i32 %484, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %114, align 1
  %490 = xor i64 %472, %479
  %491 = lshr i64 %490, 4
  %492 = trunc i64 %491 to i8
  %493 = and i8 %492, 1
  store i8 %493, i8* %115, align 1
  %494 = icmp eq i64 %479, 0
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %116, align 1
  %496 = lshr i64 %479, 63
  %497 = trunc i64 %496 to i8
  store i8 %497, i8* %117, align 1
  %498 = lshr i64 %472, 63
  %499 = xor i64 %496, %498
  %500 = xor i64 %496, %478
  %501 = add nuw nsw i64 %499, %500
  %502 = icmp eq i64 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %118, align 1
  %504 = load i64, i64* %RBP.i, align 8
  %505 = add i64 %504, -48
  %506 = add i64 %450, 48
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = sext i32 %508 to i64
  store i64 %509, i64* %RDX.i204, align 8
  %510 = shl nsw i64 %509, 3
  %511 = add i64 %510, %479
  %512 = add i64 %450, 53
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to double*
  store double %468, double* %513, align 8
  %514 = load i64, i64* %RBP.i, align 8
  %515 = add i64 %514, -48
  %516 = load i64, i64* %3, align 8
  %517 = add i64 %516, 3
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %515 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = add i32 %519, 1
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RAX.i294, align 8
  %522 = icmp eq i32 %519, -1
  %523 = icmp eq i32 %520, 0
  %524 = or i1 %522, %523
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %113, align 1
  %526 = and i32 %520, 255
  %527 = tail call i32 @llvm.ctpop.i32(i32 %526)
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  store i8 %530, i8* %114, align 1
  %531 = xor i32 %519, %520
  %532 = lshr i32 %531, 4
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  store i8 %534, i8* %115, align 1
  %535 = zext i1 %523 to i8
  store i8 %535, i8* %116, align 1
  %536 = lshr i32 %520, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %117, align 1
  %538 = lshr i32 %519, 31
  %539 = xor i32 %536, %538
  %540 = add nuw nsw i32 %539, %536
  %541 = icmp eq i32 %540, 2
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %118, align 1
  %543 = add i64 %516, 9
  store i64 %543, i64* %3, align 8
  store i32 %520, i32* %518, align 4
  %544 = load i64, i64* %3, align 8
  %545 = add i64 %544, -74
  store i64 %545, i64* %3, align 8
  br label %block_.L_400b8f

block_.L_400bde:                                  ; preds = %block_.L_400b8f
  %546 = add i64 %450, 8
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %451 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = add i32 %548, 1
  %550 = zext i32 %549 to i64
  store i64 %550, i64* %RAX.i294, align 8
  %551 = icmp eq i32 %548, -1
  %552 = icmp eq i32 %549, 0
  %553 = or i1 %551, %552
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %113, align 1
  %555 = and i32 %549, 255
  %556 = tail call i32 @llvm.ctpop.i32(i32 %555)
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = xor i8 %558, 1
  store i8 %559, i8* %114, align 1
  %560 = xor i32 %548, %549
  %561 = lshr i32 %560, 4
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  store i8 %563, i8* %115, align 1
  %564 = zext i1 %552 to i8
  store i8 %564, i8* %116, align 1
  %565 = lshr i32 %549, 31
  %566 = trunc i32 %565 to i8
  store i8 %566, i8* %117, align 1
  %567 = lshr i32 %548, 31
  %568 = xor i32 %565, %567
  %569 = add nuw nsw i32 %568, %565
  %570 = icmp eq i32 %569, 2
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %118, align 1
  %572 = add i64 %450, 14
  store i64 %572, i64* %3, align 8
  store i32 %549, i32* %547, align 4
  %573 = load i64, i64* %3, align 8
  %574 = add i64 %573, -112
  store i64 %574, i64* %3, align 8
  br label %block_.L_400b7c

block_.L_400bf1:                                  ; preds = %block_.L_400b7c
  %575 = add i64 %409, 7
  store i64 %575, i64* %3, align 8
  store i32 0, i32* %376, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400bf8

block_.L_400bf8:                                  ; preds = %block_.L_400c5a, %block_.L_400bf1
  %576 = phi i64 [ %778, %block_.L_400c5a ], [ %.pre4, %block_.L_400bf1 ]
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -44
  %579 = add i64 %576, 3
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RAX.i294, align 8
  %583 = add i64 %577, -12
  %584 = add i64 %576, 6
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i32*
  %586 = load i32, i32* %585, align 4
  %587 = sub i32 %581, %586
  %588 = icmp ult i32 %581, %586
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %113, align 1
  %590 = and i32 %587, 255
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %114, align 1
  %595 = xor i32 %586, %581
  %596 = xor i32 %595, %587
  %597 = lshr i32 %596, 4
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %115, align 1
  %600 = icmp eq i32 %587, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %116, align 1
  %602 = lshr i32 %587, 31
  %603 = trunc i32 %602 to i8
  store i8 %603, i8* %117, align 1
  %604 = lshr i32 %581, 31
  %605 = lshr i32 %586, 31
  %606 = xor i32 %605, %604
  %607 = xor i32 %602, %604
  %608 = add nuw nsw i32 %607, %606
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %118, align 1
  %611 = icmp ne i8 %603, 0
  %612 = xor i1 %611, %609
  %.v9 = select i1 %612, i64 12, i64 117
  %613 = add i64 %576, %.v9
  store i64 %613, i64* %3, align 8
  br i1 %612, label %block_400c04, label %block_.L_400c6d

block_400c04:                                     ; preds = %block_.L_400bf8
  %614 = add i64 %577, -48
  %615 = add i64 %613, 7
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  store i32 0, i32* %616, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400c0b

block_.L_400c0b:                                  ; preds = %block_400c17, %block_400c04
  %617 = phi i64 [ %749, %block_400c17 ], [ %.pre5, %block_400c04 ]
  %618 = load i64, i64* %RBP.i, align 8
  %619 = add i64 %618, -48
  %620 = add i64 %617, 3
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RAX.i294, align 8
  %624 = add i64 %618, -8
  %625 = add i64 %617, 6
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  %627 = load i32, i32* %626, align 4
  %628 = sub i32 %622, %627
  %629 = icmp ult i32 %622, %627
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %113, align 1
  %631 = and i32 %628, 255
  %632 = tail call i32 @llvm.ctpop.i32(i32 %631)
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  store i8 %635, i8* %114, align 1
  %636 = xor i32 %627, %622
  %637 = xor i32 %636, %628
  %638 = lshr i32 %637, 4
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  store i8 %640, i8* %115, align 1
  %641 = icmp eq i32 %628, 0
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %116, align 1
  %643 = lshr i32 %628, 31
  %644 = trunc i32 %643 to i8
  store i8 %644, i8* %117, align 1
  %645 = lshr i32 %622, 31
  %646 = lshr i32 %627, 31
  %647 = xor i32 %646, %645
  %648 = xor i32 %643, %645
  %649 = add nuw nsw i32 %648, %647
  %650 = icmp eq i32 %649, 2
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %118, align 1
  %652 = icmp ne i8 %644, 0
  %653 = xor i1 %652, %650
  %.v10 = select i1 %653, i64 12, i64 79
  %654 = add i64 %617, %.v10
  store i64 %654, i64* %3, align 8
  %655 = add i64 %618, -44
  br i1 %653, label %block_400c17, label %block_.L_400c5a

block_400c17:                                     ; preds = %block_.L_400c0b
  %656 = add i64 %654, 3
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i32*
  %658 = load i32, i32* %657, align 4
  %659 = zext i32 %658 to i64
  store i64 %659, i64* %RAX.i294, align 8
  %660 = sitofp i32 %658 to double
  store double %660, double* %25, align 1
  %661 = add i64 %654, 10
  store i64 %661, i64* %3, align 8
  %662 = load i32, i32* %621, align 4
  %663 = zext i32 %662 to i64
  store i64 %663, i64* %RAX.i294, align 8
  %664 = sitofp i32 %662 to double
  store double %664, double* %31, align 1
  %665 = fmul double %660, %664
  store double %665, double* %25, align 1
  %666 = add i64 %618, -4
  %667 = add i64 %654, 21
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = zext i32 %669 to i64
  store i64 %670, i64* %RAX.i294, align 8
  %671 = sitofp i32 %669 to double
  store double %671, double* %31, align 1
  %672 = fdiv double %665, %671
  store double %672, double* %25, align 1
  %673 = add i64 %618, 32
  %674 = add i64 %654, 33
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i64*
  %676 = load i64, i64* %675, align 8
  store i64 %676, i64* %RCX.i275, align 8
  %677 = add i64 %654, 37
  store i64 %677, i64* %3, align 8
  %678 = load i32, i32* %657, align 4
  %679 = sext i32 %678 to i64
  %680 = shl nsw i64 %679, 13
  store i64 %680, i64* %RDX.i204, align 8
  %681 = lshr i64 %679, 50
  %682 = and i64 %681, 1
  %683 = add i64 %680, %676
  store i64 %683, i64* %RCX.i275, align 8
  %684 = icmp ult i64 %683, %676
  %685 = icmp ult i64 %683, %680
  %686 = or i1 %684, %685
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %113, align 1
  %688 = trunc i64 %683 to i32
  %689 = and i32 %688, 255
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  store i8 %693, i8* %114, align 1
  %694 = xor i64 %676, %683
  %695 = lshr i64 %694, 4
  %696 = trunc i64 %695 to i8
  %697 = and i8 %696, 1
  store i8 %697, i8* %115, align 1
  %698 = icmp eq i64 %683, 0
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %116, align 1
  %700 = lshr i64 %683, 63
  %701 = trunc i64 %700 to i8
  store i8 %701, i8* %117, align 1
  %702 = lshr i64 %676, 63
  %703 = xor i64 %700, %702
  %704 = xor i64 %700, %682
  %705 = add nuw nsw i64 %703, %704
  %706 = icmp eq i64 %705, 2
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %118, align 1
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -48
  %710 = add i64 %654, 48
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i32*
  %712 = load i32, i32* %711, align 4
  %713 = sext i32 %712 to i64
  store i64 %713, i64* %RDX.i204, align 8
  %714 = shl nsw i64 %713, 3
  %715 = add i64 %714, %683
  %716 = add i64 %654, 53
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to double*
  store double %672, double* %717, align 8
  %718 = load i64, i64* %RBP.i, align 8
  %719 = add i64 %718, -48
  %720 = load i64, i64* %3, align 8
  %721 = add i64 %720, 3
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %719 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = add i32 %723, 1
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RAX.i294, align 8
  %726 = icmp eq i32 %723, -1
  %727 = icmp eq i32 %724, 0
  %728 = or i1 %726, %727
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %113, align 1
  %730 = and i32 %724, 255
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %114, align 1
  %735 = xor i32 %723, %724
  %736 = lshr i32 %735, 4
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  store i8 %738, i8* %115, align 1
  %739 = zext i1 %727 to i8
  store i8 %739, i8* %116, align 1
  %740 = lshr i32 %724, 31
  %741 = trunc i32 %740 to i8
  store i8 %741, i8* %117, align 1
  %742 = lshr i32 %723, 31
  %743 = xor i32 %740, %742
  %744 = add nuw nsw i32 %743, %740
  %745 = icmp eq i32 %744, 2
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %118, align 1
  %747 = add i64 %720, 9
  store i64 %747, i64* %3, align 8
  store i32 %724, i32* %722, align 4
  %748 = load i64, i64* %3, align 8
  %749 = add i64 %748, -74
  store i64 %749, i64* %3, align 8
  br label %block_.L_400c0b

block_.L_400c5a:                                  ; preds = %block_.L_400c0b
  %750 = add i64 %654, 8
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %655 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = add i32 %752, 1
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RAX.i294, align 8
  %755 = icmp eq i32 %752, -1
  %756 = icmp eq i32 %753, 0
  %757 = or i1 %755, %756
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %113, align 1
  %759 = and i32 %753, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %114, align 1
  %764 = xor i32 %752, %753
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %115, align 1
  %768 = zext i1 %756 to i8
  store i8 %768, i8* %116, align 1
  %769 = lshr i32 %753, 31
  %770 = trunc i32 %769 to i8
  store i8 %770, i8* %117, align 1
  %771 = lshr i32 %752, 31
  %772 = xor i32 %769, %771
  %773 = add nuw nsw i32 %772, %769
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %118, align 1
  %776 = add i64 %654, 14
  store i64 %776, i64* %3, align 8
  store i32 %753, i32* %751, align 4
  %777 = load i64, i64* %3, align 8
  %778 = add i64 %777, -112
  store i64 %778, i64* %3, align 8
  br label %block_.L_400bf8

block_.L_400c6d:                                  ; preds = %block_.L_400bf8
  %779 = add i64 %613, 1
  store i64 %779, i64* %3, align 8
  %780 = load i64, i64* %6, align 8
  %781 = add i64 %780, 8
  %782 = inttoptr i64 %780 to i64*
  %783 = load i64, i64* %782, align 8
  store i64 %783, i64* %RBP.i, align 8
  store i64 %781, i64* %6, align 8
  %784 = add i64 %613, 2
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %781 to i64*
  %786 = load i64, i64* %785, align 8
  store i64 %786, i64* %3, align 8
  %787 = add i64 %780, 16
  store i64 %787, i64* %6, align 8
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

define %struct.Memory* @routine_movsd_0x820__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x820__rip__4197032__type* @G_0x820__rip__4197032_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x820__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x820__rip__4197040__type* @G_0x820__rip__4197040_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
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

define %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
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

define %struct.Memory* @routine_movsd__xmm0____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  store i64 %8, i64* %4, align 8
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

define %struct.Memory* @routine_movq__r11__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_jge_.L_400b75(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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

define %struct.Memory* @routine_jge_.L_400b62(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400afb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b67(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

define %struct.Memory* @routine_jmpq_.L_400ae8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400bf1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400bde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400b8f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400be3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400b7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400c6d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_400c5a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_400c0b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400bf8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
