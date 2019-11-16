; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G__0x6d4600_type = type <{ [8 x i8] }>
%G__0x6f73a0_type = type <{ [8 x i8] }>
%G__0x70d1b0_type = type <{ [8 x i8] }>
%G__0x722cd0_type = type <{ [8 x i8] }>
%G__0x723b20_type = type <{ [8 x i8] }>
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
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G__0x6d4600 = global %G__0x6d4600_type zeroinitializer
@G__0x6f73a0 = global %G__0x6f73a0_type zeroinitializer
@G__0x70d1b0 = global %G__0x70d1b0_type zeroinitializer
@G__0x722cd0 = global %G__0x722cd0_type zeroinitializer
@G__0x723b20 = global %G__0x723b20_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_475150.sign(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @dct_chroma4x4(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -216
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 208
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
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i = bitcast %union.anon* %40 to i8*
  store i8 1, i8* %AL.i, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1379 = bitcast %union.anon* %41 to i32*
  %42 = add i64 %7, -12
  %43 = load i32, i32* %EDI.i1379, align 4
  %44 = add i64 %10, 15
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1397 = bitcast %union.anon* %46 to i32*
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -8
  %49 = load i32, i32* %ESI.i1397, align 4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1427 = bitcast %union.anon* %53 to i32*
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -12
  %56 = load i32, i32* %EDX.i1427, align 4
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 3
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %59, align 4
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1445 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %62, i64* %RCX.i1445, align 8
  %63 = add i64 %62, 14168
  %64 = add i64 %61, 15
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %63 to i64*
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %RCX.i1445, align 8
  %R8.i1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 %62, i64* %R8.i1611, align 8
  %67 = add i64 %62, 12
  %68 = add i64 %61, 27
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %71, 632
  store i64 %72, i64* %R8.i1611, align 8
  %73 = lshr i64 %72, 63
  %74 = add i64 %72, %66
  store i64 %74, i64* %RCX.i1445, align 8
  %75 = icmp ult i64 %74, %66
  %76 = icmp ult i64 %74, %72
  %77 = or i1 %75, %76
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %14, align 1
  %79 = trunc i64 %74 to i32
  %80 = and i32 %79, 255
  %81 = tail call i32 @llvm.ctpop.i32(i32 %80)
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  store i8 %84, i8* %21, align 1
  %85 = xor i64 %72, %66
  %86 = xor i64 %85, %74
  %87 = lshr i64 %86, 4
  %88 = trunc i64 %87 to i8
  %89 = and i8 %88, 1
  store i8 %89, i8* %27, align 1
  %90 = icmp eq i64 %74, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %30, align 1
  %92 = lshr i64 %74, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %33, align 1
  %94 = lshr i64 %66, 63
  %95 = xor i64 %92, %94
  %96 = xor i64 %92, %73
  %97 = add nuw nsw i64 %95, %96
  %98 = icmp eq i64 %97, 2
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %39, align 1
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -96
  %102 = add i64 %61, 41
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i64*
  store i64 %74, i64* %103, align 8
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -96
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %RCX.i1445, align 8
  %110 = add i64 %109, 72
  %111 = add i64 %106, 8
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, -9
  %115 = icmp ult i32 %113, 9
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %14, align 1
  %117 = and i32 %114, 255
  %118 = tail call i32 @llvm.ctpop.i32(i32 %117)
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  store i8 %121, i8* %21, align 1
  %122 = xor i32 %114, %113
  %123 = lshr i32 %122, 4
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  store i8 %125, i8* %27, align 1
  %126 = icmp eq i32 %114, 0
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %30, align 1
  %128 = lshr i32 %114, 31
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %33, align 1
  %130 = lshr i32 %113, 31
  %131 = xor i32 %128, %130
  %132 = add nuw nsw i32 %131, %130
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %39, align 1
  %135 = add i64 %104, -141
  %136 = load i8, i8* %AL.i, align 1
  %137 = add i64 %106, 14
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %135 to i8*
  store i8 %136, i8* %138, align 1
  %139 = load i64, i64* %3, align 8
  %140 = load i8, i8* %30, align 1
  %141 = icmp ne i8 %140, 0
  %.v210 = select i1 %141, i64 45, i64 6
  %142 = add i64 %139, %.v210
  store i64 %142, i64* %3, align 8
  %cmpBr_40ad0d = icmp eq i8 %140, 1
  br i1 %cmpBr_40ad0d, label %block_.L_40ad3a, label %block_40ad13

block_40ad13:                                     ; preds = %entry
  store i8 1, i8* %AL.i, align 1
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -96
  %145 = add i64 %142, 6
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i64*
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %RCX.i1445, align 8
  %148 = add i64 %147, 72
  %149 = add i64 %142, 10
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, -10
  %153 = icmp ult i32 %151, 10
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %14, align 1
  %155 = and i32 %152, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %21, align 1
  %160 = xor i32 %152, %151
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %27, align 1
  %164 = icmp eq i32 %152, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %30, align 1
  %166 = lshr i32 %152, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %33, align 1
  %168 = lshr i32 %151, 31
  %169 = xor i32 %166, %168
  %170 = add nuw nsw i32 %169, %168
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %39, align 1
  %173 = add i64 %143, -141
  %174 = add i64 %142, 16
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i8*
  store i8 1, i8* %175, align 1
  %176 = load i64, i64* %3, align 8
  %177 = load i8, i8* %30, align 1
  %178 = icmp ne i8 %177, 0
  %.v211 = select i1 %178, i64 23, i64 6
  %179 = add i64 %176, %.v211
  store i64 %179, i64* %3, align 8
  %cmpBr_40ad23 = icmp eq i8 %177, 1
  br i1 %cmpBr_40ad23, label %block_.L_40ad3a, label %block_40ad29

block_40ad29:                                     ; preds = %block_40ad13
  %RAX.i2255 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %180 = load i64, i64* %RBP.i, align 8
  %181 = add i64 %180, -96
  %182 = add i64 %179, 4
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i64*
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %RAX.i2255, align 8
  %185 = add i64 %184, 72
  %186 = add i64 %179, 8
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %188, -13
  %190 = icmp ult i32 %188, 13
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %14, align 1
  %192 = and i32 %189, 255
  %193 = tail call i32 @llvm.ctpop.i32(i32 %192)
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  store i8 %196, i8* %21, align 1
  %197 = xor i32 %189, %188
  %198 = lshr i32 %197, 4
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  store i8 %200, i8* %27, align 1
  %201 = icmp eq i32 %189, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %30, align 1
  %203 = lshr i32 %189, 31
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %33, align 1
  %205 = lshr i32 %188, 31
  %206 = xor i32 %203, %205
  %207 = add nuw nsw i32 %206, %205
  %208 = icmp eq i32 %207, 2
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %39, align 1
  %CL.i2251 = bitcast %union.anon* %60 to i8*
  store i8 %202, i8* %CL.i2251, align 1
  %210 = add i64 %180, -141
  %211 = add i64 %179, 17
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i8*
  store i8 %202, i8* %212, align 1
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40ad3a

block_.L_40ad3a:                                  ; preds = %block_40ad29, %block_40ad13, %entry
  %213 = phi i64 [ %.pre, %block_40ad29 ], [ %179, %block_40ad13 ], [ %142, %entry ]
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -141
  %216 = add i64 %213, 6
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i8*
  %218 = load i8, i8* %217, align 1
  %ECX.i2242 = bitcast %union.anon* %60 to i32*
  %DL.i2240 = bitcast %union.anon* %53 to i8*
  store i8 0, i8* %DL.i2240, align 1
  %219 = and i8 %218, 1
  store i8 %219, i8* %AL.i, align 1
  store i8 0, i8* %14, align 1
  %220 = zext i8 %219 to i32
  %221 = tail call i32 @llvm.ctpop.i32(i32 %220)
  %222 = trunc i32 %221 to i8
  %223 = xor i8 %222, 1
  store i8 %223, i8* %21, align 1
  %224 = xor i8 %219, 1
  store i8 %224, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %225 = zext i8 %219 to i64
  store i64 %225, i64* %RCX.i1445, align 8
  %226 = add i64 %214, -100
  %227 = zext i8 %219 to i32
  %228 = add i64 %213, 18
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %226 to i32*
  store i32 %227, i32* %229, align 4
  %RSI.i2229 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %230 = load i64, i64* %3, align 8
  %231 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %231, i64* %RSI.i2229, align 8
  %232 = add i64 %231, 14136
  %233 = add i64 %230, 15
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i64*
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %RSI.i2229, align 8
  %RDI.i2224 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  %236 = load i64, i64* %RBP.i, align 8
  %237 = add i64 %236, -8
  %238 = add i64 %230, 19
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i32*
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  store i64 %241, i64* %RDI.i2224, align 8
  %242 = shl nsw i64 %241, 3
  %243 = add i64 %242, %235
  %244 = add i64 %230, 23
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %RSI.i2229, align 8
  %247 = add i64 %236, -12
  %248 = add i64 %230, 27
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  store i64 %251, i64* %RDI.i2224, align 8
  %252 = shl nsw i64 %251, 3
  %253 = add i64 %252, %246
  %254 = add i64 %230, 31
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %RSI.i2229, align 8
  %257 = add i64 %230, 34
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  %260 = add i64 %236, -128
  %261 = add i64 %230, 38
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i64*
  store i64 %259, i64* %262, align 8
  %263 = load i64, i64* %3, align 8
  %264 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %264, i64* %RSI.i2229, align 8
  %265 = add i64 %264, 14136
  %266 = add i64 %263, 15
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %RSI.i2229, align 8
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -8
  %271 = add i64 %263, 19
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %RDI.i2224, align 8
  %275 = shl nsw i64 %274, 3
  %276 = add i64 %275, %268
  %277 = add i64 %263, 23
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i64*
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %RSI.i2229, align 8
  %280 = add i64 %269, -12
  %281 = add i64 %263, 27
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  store i64 %284, i64* %RDI.i2224, align 8
  %285 = shl nsw i64 %284, 3
  %286 = add i64 %285, %279
  %287 = add i64 %263, 31
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %RSI.i2229, align 8
  %290 = add i64 %289, 8
  %291 = add i64 %263, 35
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292, align 8
  %294 = add i64 %269, -136
  %295 = add i64 %263, 42
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i64*
  store i64 %293, i64* %296, align 8
  %297 = load i64, i64* %3, align 8
  %298 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %298, i64* %RSI.i2229, align 8
  %299 = add i64 %298, 40
  %300 = add i64 %297, 11
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RCX.i1445, align 8
  store i64 %298, i64* %RSI.i2229, align 8
  %304 = add i64 %298, 72668
  %305 = add i64 %297, 25
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = add i32 %307, %302
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RCX.i1445, align 8
  %310 = and i32 %308, 255
  %311 = tail call i32 @llvm.ctpop.i32(i32 %310)
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  %314 = xor i8 %313, 1
  %315 = icmp eq i32 %308, 0
  %316 = zext i1 %315 to i8
  %317 = lshr i32 %308, 31
  %318 = trunc i32 %317 to i8
  store i8 0, i8* %14, align 1
  store i8 %314, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %316, i8* %30, align 1
  store i8 %318, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %319 = load i64, i64* %RBP.i, align 8
  %320 = add i64 %319, -142
  %321 = load i8, i8* %DL.i2240, align 1
  %322 = add i64 %297, 34
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %320 to i8*
  store i8 %321, i8* %323, align 1
  %324 = load i64, i64* %3, align 8
  %325 = add i64 %324, 30
  %326 = add i64 %324, 6
  %327 = load i8, i8* %30, align 1
  %328 = icmp eq i8 %327, 0
  %329 = select i1 %328, i64 %325, i64 %326
  store i64 %329, i64* %3, align 8
  br i1 %328, label %block_.L_40ad3a.block_.L_40addc_crit_edge, label %block_40adc4

block_.L_40ad3a.block_.L_40addc_crit_edge:        ; preds = %block_.L_40ad3a
  %.pre157 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  br label %block_.L_40addc

block_40adc4:                                     ; preds = %block_.L_40ad3a
  %CL.i2239 = bitcast %union.anon* %60 to i8*
  %RAX.i2172 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %330 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %330, i64* %RAX.i2172, align 8
  %331 = add i64 %330, 72704
  %332 = add i64 %329, 15
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = add i32 %334, -1
  %336 = icmp eq i32 %334, 0
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %14, align 1
  %338 = and i32 %335, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %21, align 1
  %343 = xor i32 %335, %334
  %344 = lshr i32 %343, 4
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %27, align 1
  %347 = icmp eq i32 %335, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %30, align 1
  %349 = lshr i32 %335, 31
  %350 = trunc i32 %349 to i8
  store i8 %350, i8* %33, align 1
  %351 = lshr i32 %334, 31
  %352 = xor i32 %349, %351
  %353 = add nuw nsw i32 %352, %351
  %354 = icmp eq i32 %353, 2
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %39, align 1
  store i8 %348, i8* %CL.i2239, align 1
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -142
  %358 = add i64 %329, 24
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i8*
  store i8 %348, i8* %359, align 1
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_40addc

block_.L_40addc:                                  ; preds = %block_.L_40ad3a.block_.L_40addc_crit_edge, %block_40adc4
  %RAX.i2123.pre-phi = phi i64* [ %.pre157, %block_.L_40ad3a.block_.L_40addc_crit_edge ], [ %RAX.i2172, %block_40adc4 ]
  %360 = phi i64 [ %325, %block_.L_40ad3a.block_.L_40addc_crit_edge ], [ %.pre118, %block_40adc4 ]
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -142
  %363 = add i64 %360, 6
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i8*
  %365 = load i8, i8* %364, align 1
  %366 = and i8 %365, 1
  store i8 %366, i8* %AL.i, align 1
  store i8 0, i8* %14, align 1
  %367 = zext i8 %366 to i32
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367)
  %369 = trunc i32 %368 to i8
  %370 = xor i8 %369, 1
  store i8 %370, i8* %21, align 1
  %371 = xor i8 %366, 1
  store i8 %371, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %372 = zext i8 %366 to i64
  store i64 %372, i64* %RCX.i1445, align 8
  %373 = add i64 %361, -140
  %374 = zext i8 %366 to i32
  %375 = add i64 %360, 17
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %373 to i32*
  store i32 %374, i32* %376, align 4
  %RDX.i2151 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  %377 = load i64, i64* %RBP.i, align 8
  %378 = add i64 %377, -96
  %379 = load i64, i64* %3, align 8
  %380 = add i64 %379, 4
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %378 to i64*
  %382 = load i64, i64* %381, align 8
  store i64 %382, i64* %RDX.i2151, align 8
  %383 = add i64 %382, 12
  %384 = add i64 %379, 7
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i32*
  %386 = load i32, i32* %385, align 4
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RCX.i1445, align 8
  %388 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %388, i64* %RDX.i2151, align 8
  %389 = add i64 %377, -4
  %390 = add i64 %379, 19
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = sext i32 %392 to i64
  store i64 %393, i64* %RSI.i2229, align 8
  %394 = shl nsw i64 %393, 2
  %395 = add nsw i64 %394, 72716
  %396 = add i64 %395, %388
  %397 = add i64 %379, 26
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = add i32 %399, %386
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RCX.i1445, align 8
  %402 = icmp ult i32 %400, %386
  %403 = icmp ult i32 %400, %399
  %404 = or i1 %402, %403
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %14, align 1
  %406 = and i32 %400, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %21, align 1
  %411 = xor i32 %399, %386
  %412 = xor i32 %411, %400
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %27, align 1
  %416 = icmp eq i32 %400, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %30, align 1
  %418 = lshr i32 %400, 31
  %419 = trunc i32 %418 to i8
  store i8 %419, i8* %33, align 1
  %420 = lshr i32 %386, 31
  %421 = lshr i32 %399, 31
  %422 = xor i32 %418, %420
  %423 = xor i32 %418, %421
  %424 = add nuw nsw i32 %422, %423
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %39, align 1
  %427 = add i64 %377, -116
  %428 = add i64 %379, 29
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  store i32 %400, i32* %429, align 4
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -116
  %432 = load i64, i64* %3, align 8
  %433 = add i64 %432, 4
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %431 to i32*
  %435 = load i32, i32* %434, align 4
  store i8 0, i8* %14, align 1
  %436 = and i32 %435, 255
  %437 = tail call i32 @llvm.ctpop.i32(i32 %436)
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  store i8 %440, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %441 = icmp eq i32 %435, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %30, align 1
  %443 = lshr i32 %435, 31
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %445 = icmp ne i8 %444, 0
  %.v = select i1 %445, i64 6, i64 20
  %446 = add i64 %433, %.v
  %447 = add i64 %446, 3
  store i64 %447, i64* %3, align 8
  %448 = load i32, i32* %434, align 4
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RAX.i2123.pre-phi, align 8
  br i1 %445, label %block_40ae14, label %block_.L_40ae22

block_40ae14:                                     ; preds = %block_.L_40addc
  %450 = add i64 %430, -148
  %451 = add i64 %446, 9
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i32*
  store i32 %448, i32* %452, align 4
  %453 = load i64, i64* %3, align 8
  %454 = add i64 %453, 28
  store i64 %454, i64* %3, align 8
  br label %block_.L_40ae39

block_.L_40ae22:                                  ; preds = %block_.L_40addc
  store i64 %449, i64* %RAX.i2123.pre-phi, align 8
  store i8 0, i8* %14, align 1
  %455 = and i32 %448, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %460 = icmp eq i32 %448, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %30, align 1
  %462 = lshr i32 %448, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %464 = sext i32 %448 to i64
  store i64 %464, i64* %RCX.i1445, align 8
  %465 = add nsw i64 %464, 4924192
  %466 = add i64 %446, 17
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i8*
  %468 = load i8, i8* %467, align 1
  %469 = zext i8 %468 to i64
  store i64 %469, i64* %RAX.i2123.pre-phi, align 8
  %470 = add i64 %430, -148
  %471 = zext i8 %468 to i32
  %472 = add i64 %446, 23
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %470 to i32*
  store i32 %471, i32* %473, align 4
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_40ae39

block_.L_40ae39:                                  ; preds = %block_.L_40ae22, %block_40ae14
  %474 = phi i64 [ %.pre119, %block_.L_40ae22 ], [ %454, %block_40ae14 ]
  %EAX.i2104.pre-phi = bitcast %union.anon* %40 to i32*
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -148
  %477 = add i64 %474, 6
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RAX.i2123.pre-phi, align 8
  store i64 6, i64* %RCX.i1445, align 8
  %481 = add i64 %475, -116
  %482 = add i64 %474, 14
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i32*
  store i32 %479, i32* %483, align 4
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -116
  %486 = load i64, i64* %3, align 8
  %487 = add i64 %486, 3
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %485 to i32*
  %489 = load i32, i32* %488, align 4
  %490 = zext i32 %489 to i64
  store i64 %490, i64* %RAX.i2123.pre-phi, align 8
  %491 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %491, i64* %RDX.i2151, align 8
  %492 = add i64 %491, 72672
  %493 = add i64 %486, 17
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = add i32 %495, %489
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RAX.i2123.pre-phi, align 8
  %498 = icmp ult i32 %496, %489
  %499 = icmp ult i32 %496, %495
  %500 = or i1 %498, %499
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %14, align 1
  %502 = and i32 %496, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %21, align 1
  %507 = xor i32 %495, %489
  %508 = xor i32 %507, %496
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %27, align 1
  %512 = icmp eq i32 %496, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %30, align 1
  %514 = lshr i32 %496, 31
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %33, align 1
  %516 = lshr i32 %489, 31
  %517 = lshr i32 %495, 31
  %518 = xor i32 %514, %516
  %519 = xor i32 %514, %517
  %520 = add nuw nsw i32 %518, %519
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %39, align 1
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %524 = sext i32 %496 to i64
  %525 = lshr i64 %524, 32
  store i64 %525, i64* %523, align 8
  %526 = load i32, i32* %ECX.i2242, align 4
  %527 = add i64 %486, 20
  store i64 %527, i64* %3, align 8
  %528 = sext i32 %526 to i64
  %529 = shl nuw i64 %525, 32
  %530 = or i64 %529, %497
  %531 = sdiv i64 %530, %528
  %532 = shl i64 %531, 32
  %533 = ashr exact i64 %532, 32
  %534 = icmp eq i64 %531, %533
  br i1 %534, label %537, label %535

; <label>:535:                                    ; preds = %block_.L_40ae39
  %536 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %527, %struct.Memory* %2)
  %.pre120 = load i64, i64* %RBP.i, align 8
  %.pre121 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %.pre122 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit2090

; <label>:537:                                    ; preds = %block_.L_40ae39
  %538 = srem i64 %530, %528
  %539 = and i64 %531, 4294967295
  store i64 %539, i64* %RAX.i2123.pre-phi, align 8
  %540 = and i64 %538, 4294967295
  store i64 %540, i64* %RDX.i2151, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %541 = trunc i64 %531 to i32
  br label %routine_idivl__ecx.exit2090

routine_idivl__ecx.exit2090:                      ; preds = %537, %535
  %542 = phi i64 [ %.pre122, %535 ], [ %527, %537 ]
  %543 = phi i32 [ %.pre121, %535 ], [ %541, %537 ]
  %544 = phi i64 [ %.pre120, %535 ], [ %484, %537 ]
  %545 = phi %struct.Memory* [ %536, %535 ], [ %2, %537 ]
  %546 = add i64 %544, -104
  %547 = add i64 %542, 3
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i32*
  store i32 %543, i32* %548, align 4
  %549 = load i64, i64* %RBP.i, align 8
  %550 = add i64 %549, -116
  %551 = load i64, i64* %3, align 8
  %552 = add i64 %551, 3
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %550 to i32*
  %554 = load i32, i32* %553, align 4
  %555 = zext i32 %554 to i64
  store i64 %555, i64* %RAX.i2123.pre-phi, align 8
  %556 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %556, i64* %RSI.i2229, align 8
  %557 = add i64 %556, 72672
  %558 = add i64 %551, 17
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = add i32 %560, %554
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RAX.i2123.pre-phi, align 8
  %563 = icmp ult i32 %561, %554
  %564 = icmp ult i32 %561, %560
  %565 = or i1 %563, %564
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %14, align 1
  %567 = and i32 %561, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %21, align 1
  %572 = xor i32 %560, %554
  %573 = xor i32 %572, %561
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %27, align 1
  %577 = icmp eq i32 %561, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %30, align 1
  %579 = lshr i32 %561, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %33, align 1
  %581 = lshr i32 %554, 31
  %582 = lshr i32 %560, 31
  %583 = xor i32 %579, %581
  %584 = xor i32 %579, %582
  %585 = add nuw nsw i32 %583, %584
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %39, align 1
  %588 = sext i32 %561 to i64
  %589 = lshr i64 %588, 32
  store i64 %589, i64* %523, align 8
  %590 = load i32, i32* %ECX.i2242, align 4
  %591 = add i64 %551, 20
  store i64 %591, i64* %3, align 8
  %592 = sext i32 %590 to i64
  %593 = shl nuw i64 %589, 32
  %594 = or i64 %593, %562
  %595 = sdiv i64 %594, %592
  %596 = shl i64 %595, 32
  %597 = ashr exact i64 %596, 32
  %598 = icmp eq i64 %595, %597
  br i1 %598, label %601, label %599

; <label>:599:                                    ; preds = %routine_idivl__ecx.exit2090
  %600 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %591, %struct.Memory* %545)
  %.pre123 = load i64, i64* %RBP.i, align 8
  %.pre124 = load i32, i32* %EDX.i1427, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit2073

; <label>:601:                                    ; preds = %routine_idivl__ecx.exit2090
  %602 = srem i64 %594, %592
  %603 = and i64 %595, 4294967295
  store i64 %603, i64* %RAX.i2123.pre-phi, align 8
  %604 = and i64 %602, 4294967295
  store i64 %604, i64* %RDX.i2151, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %605 = trunc i64 %602 to i32
  br label %routine_idivl__ecx.exit2073

routine_idivl__ecx.exit2073:                      ; preds = %601, %599
  %606 = phi i64 [ %.pre125, %599 ], [ %591, %601 ]
  %607 = phi i32 [ %.pre124, %599 ], [ %605, %601 ]
  %608 = phi i64 [ %.pre123, %599 ], [ %549, %601 ]
  %609 = phi %struct.Memory* [ %600, %599 ], [ %545, %601 ]
  %610 = add i64 %608, -108
  %611 = add i64 %606, 3
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i32*
  store i32 %607, i32* %612, align 4
  %613 = load i64, i64* %RBP.i, align 8
  %614 = add i64 %613, -104
  %615 = load i64, i64* %3, align 8
  %616 = add i64 %615, 3
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %614 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = add i32 %618, 15
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RCX.i1445, align 8
  %621 = icmp ugt i32 %618, -16
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %14, align 1
  %623 = and i32 %619, 255
  %624 = tail call i32 @llvm.ctpop.i32(i32 %623)
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, i8* %21, align 1
  %628 = xor i32 %619, %618
  %629 = lshr i32 %628, 4
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  store i8 %631, i8* %27, align 1
  %632 = icmp eq i32 %619, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %30, align 1
  %634 = lshr i32 %619, 31
  %635 = trunc i32 %634 to i8
  store i8 %635, i8* %33, align 1
  %636 = lshr i32 %618, 31
  %637 = xor i32 %634, %636
  %638 = add nuw nsw i32 %637, %634
  %639 = icmp eq i32 %638, 2
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %39, align 1
  %641 = add i64 %613, -112
  %642 = add i64 %615, 9
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i32*
  store i32 %619, i32* %643, align 4
  %644 = load i64, i64* %RBP.i, align 8
  %645 = add i64 %644, -140
  %646 = load i64, i64* %3, align 8
  %647 = add i64 %646, 7
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %645 to i32*
  %649 = load i32, i32* %648, align 4
  store i8 0, i8* %14, align 1
  %650 = and i32 %649, 255
  %651 = tail call i32 @llvm.ctpop.i32(i32 %650)
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  store i8 %654, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %655 = icmp eq i32 %649, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %30, align 1
  %657 = lshr i32 %649, 31
  %658 = trunc i32 %657 to i8
  store i8 %658, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v162 = select i1 %655, i64 13, i64 347
  %659 = add i64 %646, %.v162
  store i64 %659, i64* %3, align 8
  br i1 %655, label %block_40ae8b, label %block_.L_40afd9

block_40ae8b:                                     ; preds = %routine_idivl__ecx.exit2073
  %660 = add i64 %644, -20
  %661 = add i64 %659, 7
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  store i32 0, i32* %662, align 4
  %.pre126 = load i64, i64* %3, align 8
  br label %block_.L_40ae92

block_.L_40ae92:                                  ; preds = %block_.L_40af5a, %block_40ae8b
  %663 = phi i64 [ %1356, %block_.L_40af5a ], [ %.pre126, %block_40ae8b ]
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -20
  %666 = add i64 %663, 4
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = add i32 %668, -4
  %670 = icmp ult i32 %668, 4
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %14, align 1
  %672 = and i32 %669, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %21, align 1
  %677 = xor i32 %669, %668
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %27, align 1
  %681 = icmp eq i32 %669, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %30, align 1
  %683 = lshr i32 %669, 31
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %33, align 1
  %685 = lshr i32 %668, 31
  %686 = xor i32 %683, %685
  %687 = add nuw nsw i32 %686, %685
  %688 = icmp eq i32 %687, 2
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %39, align 1
  %690 = icmp ne i8 %684, 0
  %691 = xor i1 %690, %688
  %.v187 = select i1 %691, i64 10, i64 322
  %692 = add i64 %663, %.v187
  store i64 %692, i64* %3, align 8
  br i1 %691, label %block_40ae9c, label %block_.L_40afd4

block_40ae9c:                                     ; preds = %block_.L_40ae92
  %693 = add i64 %664, -16
  %694 = add i64 %692, 7
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  store i32 0, i32* %695, align 4
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_40aea3

block_.L_40aea3:                                  ; preds = %block_40aead, %block_40ae9c
  %696 = phi i64 [ %1114, %block_40aead ], [ %.pre127, %block_40ae9c ]
  %697 = load i64, i64* %RBP.i, align 8
  %698 = add i64 %697, -16
  %699 = add i64 %696, 4
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = add i32 %701, -2
  %703 = icmp ult i32 %701, 2
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %14, align 1
  %705 = and i32 %702, 255
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %21, align 1
  %710 = xor i32 %702, %701
  %711 = lshr i32 %710, 4
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %27, align 1
  %714 = icmp eq i32 %702, 0
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %30, align 1
  %716 = lshr i32 %702, 31
  %717 = trunc i32 %716 to i8
  store i8 %717, i8* %33, align 1
  %718 = lshr i32 %701, 31
  %719 = xor i32 %716, %718
  %720 = add nuw nsw i32 %719, %718
  %721 = icmp eq i32 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %39, align 1
  %723 = icmp ne i8 %717, 0
  %724 = xor i1 %723, %721
  %.v188 = select i1 %724, i64 10, i64 183
  %725 = add i64 %696, %.v188
  store i64 %725, i64* %3, align 8
  br i1 %724, label %block_40aead, label %block_.L_40af5a

block_40aead:                                     ; preds = %block_.L_40aea3
  store i64 3, i64* %RAX.i2123.pre-phi, align 8
  %726 = add i64 %725, 8
  store i64 %726, i64* %3, align 8
  %727 = load i32, i32* %700, align 4
  %728 = sub i32 3, %727
  %729 = zext i32 %728 to i64
  store i64 %729, i64* %RAX.i2123.pre-phi, align 8
  %730 = add i64 %697, -24
  %731 = add i64 %725, 11
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  store i32 %728, i32* %732, align 4
  %733 = load i64, i64* %3, align 8
  %734 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %735 = add i64 %734, 13112
  store i64 %735, i64* %RCX.i1445, align 8
  %736 = icmp ugt i64 %734, -13113
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %14, align 1
  %738 = trunc i64 %735 to i32
  %739 = and i32 %738, 255
  %740 = tail call i32 @llvm.ctpop.i32(i32 %739)
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  store i8 %743, i8* %21, align 1
  %744 = xor i64 %734, 16
  %745 = xor i64 %744, %735
  %746 = lshr i64 %745, 4
  %747 = trunc i64 %746 to i8
  %748 = and i8 %747, 1
  store i8 %748, i8* %27, align 1
  %749 = icmp eq i64 %735, 0
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %30, align 1
  %751 = lshr i64 %735, 63
  %752 = trunc i64 %751 to i8
  store i8 %752, i8* %33, align 1
  %753 = lshr i64 %734, 63
  %754 = xor i64 %751, %753
  %755 = add nuw nsw i64 %754, %751
  %756 = icmp eq i64 %755, 2
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %39, align 1
  %758 = load i64, i64* %RBP.i, align 8
  %759 = add i64 %758, -16
  %760 = add i64 %733, 19
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = sext i32 %762 to i64
  %764 = shl nsw i64 %763, 6
  store i64 %764, i64* %RDX.i2151, align 8
  %765 = add i64 %764, %735
  store i64 %765, i64* %RCX.i1445, align 8
  %766 = icmp ult i64 %765, %735
  %767 = icmp ult i64 %765, %764
  %768 = or i1 %766, %767
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %14, align 1
  %770 = trunc i64 %765 to i32
  %771 = and i32 %770, 255
  %772 = tail call i32 @llvm.ctpop.i32(i32 %771)
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = xor i8 %774, 1
  store i8 %775, i8* %21, align 1
  %776 = xor i64 %735, %765
  %777 = lshr i64 %776, 4
  %778 = trunc i64 %777 to i8
  %779 = and i8 %778, 1
  store i8 %779, i8* %27, align 1
  %780 = icmp eq i64 %765, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %30, align 1
  %782 = lshr i64 %765, 63
  %783 = trunc i64 %782 to i8
  store i8 %783, i8* %33, align 1
  %784 = lshr i64 %763, 57
  %785 = and i64 %784, 1
  %786 = xor i64 %782, %751
  %787 = xor i64 %782, %785
  %788 = add nuw nsw i64 %786, %787
  %789 = icmp eq i64 %788, 2
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %39, align 1
  %791 = add i64 %758, -20
  %792 = add i64 %733, 30
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = sext i32 %794 to i64
  store i64 %795, i64* %RDX.i2151, align 8
  %796 = shl nsw i64 %795, 2
  %797 = add i64 %796, %765
  %798 = add i64 %733, 33
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = zext i32 %800 to i64
  store i64 %801, i64* %RAX.i2123.pre-phi, align 8
  %802 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %803 = add i64 %802, 13112
  store i64 %803, i64* %RCX.i1445, align 8
  %804 = icmp ugt i64 %802, -13113
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %14, align 1
  %806 = trunc i64 %803 to i32
  %807 = and i32 %806, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %21, align 1
  %812 = xor i64 %802, 16
  %813 = xor i64 %812, %803
  %814 = lshr i64 %813, 4
  %815 = trunc i64 %814 to i8
  %816 = and i8 %815, 1
  store i8 %816, i8* %27, align 1
  %817 = icmp eq i64 %803, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %30, align 1
  %819 = lshr i64 %803, 63
  %820 = trunc i64 %819 to i8
  store i8 %820, i8* %33, align 1
  %821 = lshr i64 %802, 63
  %822 = xor i64 %819, %821
  %823 = add nuw nsw i64 %822, %819
  %824 = icmp eq i64 %823, 2
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %39, align 1
  %826 = load i64, i64* %RBP.i, align 8
  %827 = add i64 %826, -24
  %828 = add i64 %733, 52
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = sext i32 %830 to i64
  %832 = shl nsw i64 %831, 6
  store i64 %832, i64* %RDX.i2151, align 8
  %833 = add i64 %832, %803
  store i64 %833, i64* %RCX.i1445, align 8
  %834 = icmp ult i64 %833, %803
  %835 = icmp ult i64 %833, %832
  %836 = or i1 %834, %835
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %14, align 1
  %838 = trunc i64 %833 to i32
  %839 = and i32 %838, 255
  %840 = tail call i32 @llvm.ctpop.i32(i32 %839)
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  store i8 %843, i8* %21, align 1
  %844 = xor i64 %803, %833
  %845 = lshr i64 %844, 4
  %846 = trunc i64 %845 to i8
  %847 = and i8 %846, 1
  store i8 %847, i8* %27, align 1
  %848 = icmp eq i64 %833, 0
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %30, align 1
  %850 = lshr i64 %833, 63
  %851 = trunc i64 %850 to i8
  store i8 %851, i8* %33, align 1
  %852 = lshr i64 %831, 57
  %853 = and i64 %852, 1
  %854 = xor i64 %850, %819
  %855 = xor i64 %850, %853
  %856 = add nuw nsw i64 %854, %855
  %857 = icmp eq i64 %856, 2
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %39, align 1
  %859 = add i64 %826, -20
  %860 = add i64 %733, 63
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = sext i32 %862 to i64
  store i64 %863, i64* %RDX.i2151, align 8
  %864 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %865 = shl nsw i64 %863, 2
  %866 = add i64 %833, %865
  %867 = add i64 %733, 66
  store i64 %867, i64* %3, align 8
  %868 = trunc i64 %864 to i32
  %869 = inttoptr i64 %866 to i32*
  %870 = load i32, i32* %869, align 4
  %871 = add i32 %870, %868
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RAX.i2123.pre-phi, align 8
  %873 = icmp ult i32 %871, %868
  %874 = icmp ult i32 %871, %870
  %875 = or i1 %873, %874
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %14, align 1
  %877 = and i32 %871, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  %882 = xor i32 %870, %868
  %883 = xor i32 %882, %871
  %884 = lshr i32 %883, 4
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %27, align 1
  %887 = icmp eq i32 %871, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %30, align 1
  %889 = lshr i32 %871, 31
  %890 = trunc i32 %889 to i8
  store i8 %890, i8* %33, align 1
  %891 = lshr i32 %868, 31
  %892 = lshr i32 %870, 31
  %893 = xor i32 %889, %891
  %894 = xor i32 %889, %892
  %895 = add nuw nsw i32 %893, %894
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %39, align 1
  %898 = load i64, i64* %RBP.i, align 8
  %899 = add i64 %898, -16
  %900 = add i64 %733, 70
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = sext i32 %902 to i64
  %904 = shl nsw i64 %903, 2
  %905 = add i64 %898, -48
  %906 = add i64 %905, %904
  %907 = add i64 %733, 74
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i32*
  store i32 %871, i32* %908, align 4
  %909 = load i64, i64* %3, align 8
  %910 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %911 = add i64 %910, 13112
  store i64 %911, i64* %RCX.i1445, align 8
  %912 = icmp ugt i64 %910, -13113
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %14, align 1
  %914 = trunc i64 %911 to i32
  %915 = and i32 %914, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %21, align 1
  %920 = xor i64 %910, 16
  %921 = xor i64 %920, %911
  %922 = lshr i64 %921, 4
  %923 = trunc i64 %922 to i8
  %924 = and i8 %923, 1
  store i8 %924, i8* %27, align 1
  %925 = icmp eq i64 %911, 0
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %30, align 1
  %927 = lshr i64 %911, 63
  %928 = trunc i64 %927 to i8
  store i8 %928, i8* %33, align 1
  %929 = lshr i64 %910, 63
  %930 = xor i64 %927, %929
  %931 = add nuw nsw i64 %930, %927
  %932 = icmp eq i64 %931, 2
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %39, align 1
  %934 = load i64, i64* %RBP.i, align 8
  %935 = add i64 %934, -16
  %936 = add i64 %909, 19
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = sext i32 %938 to i64
  %940 = shl nsw i64 %939, 6
  store i64 %940, i64* %RDX.i2151, align 8
  %941 = add i64 %940, %911
  store i64 %941, i64* %RCX.i1445, align 8
  %942 = icmp ult i64 %941, %911
  %943 = icmp ult i64 %941, %940
  %944 = or i1 %942, %943
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %14, align 1
  %946 = trunc i64 %941 to i32
  %947 = and i32 %946, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %21, align 1
  %952 = xor i64 %911, %941
  %953 = lshr i64 %952, 4
  %954 = trunc i64 %953 to i8
  %955 = and i8 %954, 1
  store i8 %955, i8* %27, align 1
  %956 = icmp eq i64 %941, 0
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %30, align 1
  %958 = lshr i64 %941, 63
  %959 = trunc i64 %958 to i8
  store i8 %959, i8* %33, align 1
  %960 = lshr i64 %939, 57
  %961 = and i64 %960, 1
  %962 = xor i64 %958, %927
  %963 = xor i64 %958, %961
  %964 = add nuw nsw i64 %962, %963
  %965 = icmp eq i64 %964, 2
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %39, align 1
  %967 = add i64 %934, -20
  %968 = add i64 %909, 30
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i32*
  %970 = load i32, i32* %969, align 4
  %971 = sext i32 %970 to i64
  store i64 %971, i64* %RDX.i2151, align 8
  %972 = shl nsw i64 %971, 2
  %973 = add i64 %972, %941
  %974 = add i64 %909, 33
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i32*
  %976 = load i32, i32* %975, align 4
  %977 = zext i32 %976 to i64
  store i64 %977, i64* %RAX.i2123.pre-phi, align 8
  %978 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %979 = add i64 %978, 13112
  store i64 %979, i64* %RCX.i1445, align 8
  %980 = icmp ugt i64 %978, -13113
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %14, align 1
  %982 = trunc i64 %979 to i32
  %983 = and i32 %982, 255
  %984 = tail call i32 @llvm.ctpop.i32(i32 %983)
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  %987 = xor i8 %986, 1
  store i8 %987, i8* %21, align 1
  %988 = xor i64 %978, 16
  %989 = xor i64 %988, %979
  %990 = lshr i64 %989, 4
  %991 = trunc i64 %990 to i8
  %992 = and i8 %991, 1
  store i8 %992, i8* %27, align 1
  %993 = icmp eq i64 %979, 0
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %30, align 1
  %995 = lshr i64 %979, 63
  %996 = trunc i64 %995 to i8
  store i8 %996, i8* %33, align 1
  %997 = lshr i64 %978, 63
  %998 = xor i64 %995, %997
  %999 = add nuw nsw i64 %998, %995
  %1000 = icmp eq i64 %999, 2
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %39, align 1
  %1002 = load i64, i64* %RBP.i, align 8
  %1003 = add i64 %1002, -24
  %1004 = add i64 %909, 52
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i32*
  %1006 = load i32, i32* %1005, align 4
  %1007 = sext i32 %1006 to i64
  %1008 = shl nsw i64 %1007, 6
  store i64 %1008, i64* %RDX.i2151, align 8
  %1009 = add i64 %1008, %979
  store i64 %1009, i64* %RCX.i1445, align 8
  %1010 = icmp ult i64 %1009, %979
  %1011 = icmp ult i64 %1009, %1008
  %1012 = or i1 %1010, %1011
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %14, align 1
  %1014 = trunc i64 %1009 to i32
  %1015 = and i32 %1014, 255
  %1016 = tail call i32 @llvm.ctpop.i32(i32 %1015)
  %1017 = trunc i32 %1016 to i8
  %1018 = and i8 %1017, 1
  %1019 = xor i8 %1018, 1
  store i8 %1019, i8* %21, align 1
  %1020 = xor i64 %979, %1009
  %1021 = lshr i64 %1020, 4
  %1022 = trunc i64 %1021 to i8
  %1023 = and i8 %1022, 1
  store i8 %1023, i8* %27, align 1
  %1024 = icmp eq i64 %1009, 0
  %1025 = zext i1 %1024 to i8
  store i8 %1025, i8* %30, align 1
  %1026 = lshr i64 %1009, 63
  %1027 = trunc i64 %1026 to i8
  store i8 %1027, i8* %33, align 1
  %1028 = lshr i64 %1007, 57
  %1029 = and i64 %1028, 1
  %1030 = xor i64 %1026, %995
  %1031 = xor i64 %1026, %1029
  %1032 = add nuw nsw i64 %1030, %1031
  %1033 = icmp eq i64 %1032, 2
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %39, align 1
  %1035 = add i64 %1002, -20
  %1036 = add i64 %909, 63
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i32*
  %1038 = load i32, i32* %1037, align 4
  %1039 = sext i32 %1038 to i64
  store i64 %1039, i64* %RDX.i2151, align 8
  %1040 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %1041 = shl nsw i64 %1039, 2
  %1042 = add i64 %1009, %1041
  %1043 = add i64 %909, 66
  store i64 %1043, i64* %3, align 8
  %1044 = trunc i64 %1040 to i32
  %1045 = inttoptr i64 %1042 to i32*
  %1046 = load i32, i32* %1045, align 4
  %1047 = sub i32 %1044, %1046
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RAX.i2123.pre-phi, align 8
  %1049 = icmp ult i32 %1044, %1046
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %14, align 1
  %1051 = and i32 %1047, 255
  %1052 = tail call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %21, align 1
  %1056 = xor i32 %1046, %1044
  %1057 = xor i32 %1056, %1047
  %1058 = lshr i32 %1057, 4
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  store i8 %1060, i8* %27, align 1
  %1061 = icmp eq i32 %1047, 0
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %30, align 1
  %1063 = lshr i32 %1047, 31
  %1064 = trunc i32 %1063 to i8
  store i8 %1064, i8* %33, align 1
  %1065 = lshr i32 %1044, 31
  %1066 = lshr i32 %1046, 31
  %1067 = xor i32 %1066, %1065
  %1068 = xor i32 %1063, %1065
  %1069 = add nuw nsw i32 %1068, %1067
  %1070 = icmp eq i32 %1069, 2
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %39, align 1
  %1072 = load i64, i64* %RBP.i, align 8
  %1073 = add i64 %1072, -24
  %1074 = add i64 %909, 70
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = sext i32 %1076 to i64
  store i64 %1077, i64* %RCX.i1445, align 8
  %1078 = shl nsw i64 %1077, 2
  %1079 = add i64 %1072, -48
  %1080 = add i64 %1079, %1078
  %1081 = add i64 %909, 74
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  store i32 %1047, i32* %1082, align 4
  %1083 = load i64, i64* %RBP.i, align 8
  %1084 = add i64 %1083, -16
  %1085 = load i64, i64* %3, align 8
  %1086 = add i64 %1085, 3
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1084 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = add i32 %1088, 1
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RAX.i2123.pre-phi, align 8
  %1091 = icmp eq i32 %1088, -1
  %1092 = icmp eq i32 %1089, 0
  %1093 = or i1 %1091, %1092
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %14, align 1
  %1095 = and i32 %1089, 255
  %1096 = tail call i32 @llvm.ctpop.i32(i32 %1095)
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  %1099 = xor i8 %1098, 1
  store i8 %1099, i8* %21, align 1
  %1100 = xor i32 %1089, %1088
  %1101 = lshr i32 %1100, 4
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  store i8 %1103, i8* %27, align 1
  %1104 = zext i1 %1092 to i8
  store i8 %1104, i8* %30, align 1
  %1105 = lshr i32 %1089, 31
  %1106 = trunc i32 %1105 to i8
  store i8 %1106, i8* %33, align 1
  %1107 = lshr i32 %1088, 31
  %1108 = xor i32 %1105, %1107
  %1109 = add nuw nsw i32 %1108, %1105
  %1110 = icmp eq i32 %1109, 2
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %39, align 1
  %1112 = add i64 %1085, 9
  store i64 %1112, i64* %3, align 8
  store i32 %1089, i32* %1087, align 4
  %1113 = load i64, i64* %3, align 8
  %1114 = add i64 %1113, -178
  store i64 %1114, i64* %3, align 8
  br label %block_.L_40aea3

block_.L_40af5a:                                  ; preds = %block_.L_40aea3
  %1115 = add i64 %697, -48
  %1116 = add i64 %725, 3
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i32*
  %1118 = load i32, i32* %1117, align 4
  %1119 = zext i32 %1118 to i64
  store i64 %1119, i64* %RAX.i2123.pre-phi, align 8
  %1120 = add i64 %697, -44
  %1121 = add i64 %725, 6
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = add i32 %1123, %1118
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RAX.i2123.pre-phi, align 8
  %1126 = icmp ult i32 %1124, %1118
  %1127 = icmp ult i32 %1124, %1123
  %1128 = or i1 %1126, %1127
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %14, align 1
  %1130 = and i32 %1124, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130)
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %21, align 1
  %1135 = xor i32 %1123, %1118
  %1136 = xor i32 %1135, %1124
  %1137 = lshr i32 %1136, 4
  %1138 = trunc i32 %1137 to i8
  %1139 = and i8 %1138, 1
  store i8 %1139, i8* %27, align 1
  %1140 = icmp eq i32 %1124, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %30, align 1
  %1142 = lshr i32 %1124, 31
  %1143 = trunc i32 %1142 to i8
  store i8 %1143, i8* %33, align 1
  %1144 = lshr i32 %1118, 31
  %1145 = lshr i32 %1123, 31
  %1146 = xor i32 %1142, %1144
  %1147 = xor i32 %1142, %1145
  %1148 = add nuw nsw i32 %1146, %1147
  %1149 = icmp eq i32 %1148, 2
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %39, align 1
  %1151 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1151, i64* %RCX.i1445, align 8
  %1152 = add i64 %697, -20
  %1153 = add i64 %725, 18
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = sext i32 %1155 to i64
  store i64 %1156, i64* %RDX.i2151, align 8
  %1157 = shl nsw i64 %1156, 2
  %1158 = add i64 %1151, 13112
  %1159 = add i64 %1158, %1157
  %1160 = add i64 %725, 25
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i32*
  store i32 %1124, i32* %1161, align 4
  %1162 = load i64, i64* %RBP.i, align 8
  %1163 = add i64 %1162, -48
  %1164 = load i64, i64* %3, align 8
  %1165 = add i64 %1164, 3
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1163 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RAX.i2123.pre-phi, align 8
  %1169 = add i64 %1162, -44
  %1170 = add i64 %1164, 6
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i32*
  %1172 = load i32, i32* %1171, align 4
  %1173 = sub i32 %1167, %1172
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RAX.i2123.pre-phi, align 8
  %1175 = icmp ult i32 %1167, %1172
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %14, align 1
  %1177 = and i32 %1173, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177)
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %21, align 1
  %1182 = xor i32 %1172, %1167
  %1183 = xor i32 %1182, %1173
  %1184 = lshr i32 %1183, 4
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  store i8 %1186, i8* %27, align 1
  %1187 = icmp eq i32 %1173, 0
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %30, align 1
  %1189 = lshr i32 %1173, 31
  %1190 = trunc i32 %1189 to i8
  store i8 %1190, i8* %33, align 1
  %1191 = lshr i32 %1167, 31
  %1192 = lshr i32 %1172, 31
  %1193 = xor i32 %1192, %1191
  %1194 = xor i32 %1189, %1191
  %1195 = add nuw nsw i32 %1194, %1193
  %1196 = icmp eq i32 %1195, 2
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %39, align 1
  %1198 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1198, i64* %RCX.i1445, align 8
  %1199 = add i64 %1162, -20
  %1200 = add i64 %1164, 18
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = sext i32 %1202 to i64
  store i64 %1203, i64* %RDX.i2151, align 8
  %1204 = shl nsw i64 %1203, 2
  %1205 = add i64 %1198, 13240
  %1206 = add i64 %1205, %1204
  %1207 = add i64 %1164, 25
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  store i32 %1173, i32* %1208, align 4
  %1209 = load i64, i64* %RBP.i, align 8
  %1210 = add i64 %1209, -36
  %1211 = load i64, i64* %3, align 8
  %1212 = add i64 %1211, 3
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1210 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = shl i32 %1214, 1
  %1216 = icmp slt i32 %1214, 0
  %1217 = icmp slt i32 %1215, 0
  %1218 = xor i1 %1216, %1217
  %1219 = zext i32 %1215 to i64
  store i64 %1219, i64* %RAX.i2123.pre-phi, align 8
  %.lobit38 = lshr i32 %1214, 31
  %1220 = trunc i32 %.lobit38 to i8
  store i8 %1220, i8* %14, align 1
  %1221 = and i32 %1215, 254
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1226 = icmp eq i32 %1215, 0
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %30, align 1
  %1228 = lshr i32 %1214, 30
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  store i8 %1230, i8* %33, align 1
  %1231 = zext i1 %1218 to i8
  store i8 %1231, i8* %39, align 1
  %1232 = add i64 %1209, -40
  %1233 = add i64 %1211, 8
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = add i32 %1235, %1215
  %1237 = zext i32 %1236 to i64
  store i64 %1237, i64* %RAX.i2123.pre-phi, align 8
  %1238 = icmp ult i32 %1236, %1215
  %1239 = icmp ult i32 %1236, %1235
  %1240 = or i1 %1238, %1239
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %14, align 1
  %1242 = and i32 %1236, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %21, align 1
  %1247 = xor i32 %1235, %1215
  %1248 = xor i32 %1247, %1236
  %1249 = lshr i32 %1248, 4
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  store i8 %1251, i8* %27, align 1
  %1252 = icmp eq i32 %1236, 0
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %30, align 1
  %1254 = lshr i32 %1236, 31
  %1255 = trunc i32 %1254 to i8
  store i8 %1255, i8* %33, align 1
  %1256 = lshr i32 %1214, 30
  %1257 = and i32 %1256, 1
  %1258 = lshr i32 %1235, 31
  %1259 = xor i32 %1254, %1257
  %1260 = xor i32 %1254, %1258
  %1261 = add nuw nsw i32 %1259, %1260
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %39, align 1
  %1264 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1264, i64* %RCX.i1445, align 8
  %1265 = add i64 %1209, -20
  %1266 = add i64 %1211, 20
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to i32*
  %1268 = load i32, i32* %1267, align 4
  %1269 = sext i32 %1268 to i64
  store i64 %1269, i64* %RDX.i2151, align 8
  %1270 = shl nsw i64 %1269, 2
  %1271 = add i64 %1264, 13176
  %1272 = add i64 %1271, %1270
  %1273 = add i64 %1211, 27
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i32*
  store i32 %1236, i32* %1274, align 4
  %1275 = load i64, i64* %RBP.i, align 8
  %1276 = add i64 %1275, -36
  %1277 = load i64, i64* %3, align 8
  %1278 = add i64 %1277, 3
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1276 to i32*
  %1280 = load i32, i32* %1279, align 4
  %1281 = zext i32 %1280 to i64
  store i64 %1281, i64* %RAX.i2123.pre-phi, align 8
  %1282 = add i64 %1275, -40
  %1283 = add i64 %1277, 6
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i32*
  %1285 = load i32, i32* %1284, align 4
  %1286 = shl i32 %1285, 1
  %1287 = zext i32 %1286 to i64
  store i64 %1287, i64* %RSI.i2229, align 8
  %1288 = sub i32 %1280, %1286
  %1289 = zext i32 %1288 to i64
  store i64 %1289, i64* %RAX.i2123.pre-phi, align 8
  %1290 = icmp ult i32 %1280, %1286
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %14, align 1
  %1292 = and i32 %1288, 255
  %1293 = tail call i32 @llvm.ctpop.i32(i32 %1292)
  %1294 = trunc i32 %1293 to i8
  %1295 = and i8 %1294, 1
  %1296 = xor i8 %1295, 1
  store i8 %1296, i8* %21, align 1
  %1297 = xor i32 %1286, %1280
  %1298 = xor i32 %1297, %1288
  %1299 = lshr i32 %1298, 4
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  store i8 %1301, i8* %27, align 1
  %1302 = icmp eq i32 %1288, 0
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %30, align 1
  %1304 = lshr i32 %1288, 31
  %1305 = trunc i32 %1304 to i8
  store i8 %1305, i8* %33, align 1
  %1306 = lshr i32 %1280, 31
  %1307 = lshr i32 %1285, 30
  %1308 = and i32 %1307, 1
  %1309 = xor i32 %1308, %1306
  %1310 = xor i32 %1304, %1306
  %1311 = add nuw nsw i32 %1310, %1309
  %1312 = icmp eq i32 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %39, align 1
  %1314 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1314, i64* %RCX.i1445, align 8
  %1315 = add i64 %1275, -20
  %1316 = add i64 %1277, 22
  store i64 %1316, i64* %3, align 8
  %1317 = inttoptr i64 %1315 to i32*
  %1318 = load i32, i32* %1317, align 4
  %1319 = sext i32 %1318 to i64
  store i64 %1319, i64* %RDX.i2151, align 8
  %1320 = shl nsw i64 %1319, 2
  %1321 = add i64 %1314, 13304
  %1322 = add i64 %1321, %1320
  %1323 = add i64 %1277, 29
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  store i32 %1288, i32* %1324, align 4
  %1325 = load i64, i64* %RBP.i, align 8
  %1326 = add i64 %1325, -20
  %1327 = load i64, i64* %3, align 8
  %1328 = add i64 %1327, 3
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1326 to i32*
  %1330 = load i32, i32* %1329, align 4
  %1331 = add i32 %1330, 1
  %1332 = zext i32 %1331 to i64
  store i64 %1332, i64* %RAX.i2123.pre-phi, align 8
  %1333 = icmp eq i32 %1330, -1
  %1334 = icmp eq i32 %1331, 0
  %1335 = or i1 %1333, %1334
  %1336 = zext i1 %1335 to i8
  store i8 %1336, i8* %14, align 1
  %1337 = and i32 %1331, 255
  %1338 = tail call i32 @llvm.ctpop.i32(i32 %1337)
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  %1341 = xor i8 %1340, 1
  store i8 %1341, i8* %21, align 1
  %1342 = xor i32 %1331, %1330
  %1343 = lshr i32 %1342, 4
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  store i8 %1345, i8* %27, align 1
  %1346 = zext i1 %1334 to i8
  store i8 %1346, i8* %30, align 1
  %1347 = lshr i32 %1331, 31
  %1348 = trunc i32 %1347 to i8
  store i8 %1348, i8* %33, align 1
  %1349 = lshr i32 %1330, 31
  %1350 = xor i32 %1347, %1349
  %1351 = add nuw nsw i32 %1350, %1347
  %1352 = icmp eq i32 %1351, 2
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %39, align 1
  %1354 = add i64 %1327, 9
  store i64 %1354, i64* %3, align 8
  store i32 %1331, i32* %1329, align 4
  %1355 = load i64, i64* %3, align 8
  %1356 = add i64 %1355, -317
  store i64 %1356, i64* %3, align 8
  br label %block_.L_40ae92

block_.L_40afd4:                                  ; preds = %block_.L_40ae92
  %1357 = add i64 %692, 5
  store i64 %1357, i64* %3, align 8
  br label %block_.L_40afd9

block_.L_40afd9:                                  ; preds = %routine_idivl__ecx.exit2073, %block_.L_40afd4
  %1358 = phi i64 [ %1357, %block_.L_40afd4 ], [ %659, %routine_idivl__ecx.exit2073 ]
  %1359 = phi i64 [ %664, %block_.L_40afd4 ], [ %644, %routine_idivl__ecx.exit2073 ]
  %1360 = add i64 %1359, -140
  %1361 = add i64 %1358, 7
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i32*
  %1363 = load i32, i32* %1362, align 4
  store i8 0, i8* %14, align 1
  %1364 = and i32 %1363, 255
  %1365 = tail call i32 @llvm.ctpop.i32(i32 %1364)
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  store i8 %1368, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1369 = icmp eq i32 %1363, 0
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %30, align 1
  %1371 = lshr i32 %1363, 31
  %1372 = trunc i32 %1371 to i8
  store i8 %1372, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v163 = select i1 %1369, i64 13, i64 386
  %1373 = add i64 %1358, %.v163
  store i64 %1373, i64* %3, align 8
  br i1 %1369, label %block_40afe6, label %block_.L_40b15b

block_40afe6:                                     ; preds = %block_.L_40afd9
  %1374 = add i64 %1359, -16
  %1375 = add i64 %1373, 7
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i32*
  store i32 0, i32* %1376, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_40afed

block_.L_40afed:                                  ; preds = %block_.L_40b0b5, %block_40afe6
  %1377 = phi i64 [ %2169, %block_.L_40b0b5 ], [ %.pre128, %block_40afe6 ]
  %1378 = load i64, i64* %RBP.i, align 8
  %1379 = add i64 %1378, -16
  %1380 = add i64 %1377, 4
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  %1382 = load i32, i32* %1381, align 4
  %1383 = add i32 %1382, -4
  %1384 = icmp ult i32 %1382, 4
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %14, align 1
  %1386 = and i32 %1383, 255
  %1387 = tail call i32 @llvm.ctpop.i32(i32 %1386)
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  %1390 = xor i8 %1389, 1
  store i8 %1390, i8* %21, align 1
  %1391 = xor i32 %1383, %1382
  %1392 = lshr i32 %1391, 4
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  store i8 %1394, i8* %27, align 1
  %1395 = icmp eq i32 %1383, 0
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %30, align 1
  %1397 = lshr i32 %1383, 31
  %1398 = trunc i32 %1397 to i8
  store i8 %1398, i8* %33, align 1
  %1399 = lshr i32 %1382, 31
  %1400 = xor i32 %1397, %1399
  %1401 = add nuw nsw i32 %1400, %1399
  %1402 = icmp eq i32 %1401, 2
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %39, align 1
  %1404 = icmp ne i8 %1398, 0
  %1405 = xor i1 %1404, %1402
  %.v185 = select i1 %1405, i64 10, i64 361
  %1406 = add i64 %1377, %.v185
  store i64 %1406, i64* %3, align 8
  br i1 %1405, label %block_40aff7, label %block_.L_40b156

block_40aff7:                                     ; preds = %block_.L_40afed
  %1407 = add i64 %1378, -20
  %1408 = add i64 %1406, 7
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  store i32 0, i32* %1409, align 4
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_40affe

block_.L_40affe:                                  ; preds = %block_40b008, %block_40aff7
  %1410 = phi i64 [ %1828, %block_40b008 ], [ %.pre129, %block_40aff7 ]
  %1411 = load i64, i64* %RBP.i, align 8
  %1412 = add i64 %1411, -20
  %1413 = add i64 %1410, 4
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i32*
  %1415 = load i32, i32* %1414, align 4
  %1416 = add i32 %1415, -2
  %1417 = icmp ult i32 %1415, 2
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %14, align 1
  %1419 = and i32 %1416, 255
  %1420 = tail call i32 @llvm.ctpop.i32(i32 %1419)
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  %1423 = xor i8 %1422, 1
  store i8 %1423, i8* %21, align 1
  %1424 = xor i32 %1416, %1415
  %1425 = lshr i32 %1424, 4
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  store i8 %1427, i8* %27, align 1
  %1428 = icmp eq i32 %1416, 0
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %30, align 1
  %1430 = lshr i32 %1416, 31
  %1431 = trunc i32 %1430 to i8
  store i8 %1431, i8* %33, align 1
  %1432 = lshr i32 %1415, 31
  %1433 = xor i32 %1430, %1432
  %1434 = add nuw nsw i32 %1433, %1432
  %1435 = icmp eq i32 %1434, 2
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %39, align 1
  %1437 = icmp ne i8 %1431, 0
  %1438 = xor i1 %1437, %1435
  %.v186 = select i1 %1438, i64 10, i64 183
  %1439 = add i64 %1410, %.v186
  store i64 %1439, i64* %3, align 8
  br i1 %1438, label %block_40b008, label %block_.L_40b0b5

block_40b008:                                     ; preds = %block_.L_40affe
  store i64 3, i64* %RAX.i2123.pre-phi, align 8
  %1440 = add i64 %1439, 8
  store i64 %1440, i64* %3, align 8
  %1441 = load i32, i32* %1414, align 4
  %1442 = sub i32 3, %1441
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RAX.i2123.pre-phi, align 8
  %1444 = add i64 %1411, -28
  %1445 = add i64 %1439, 11
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1444 to i32*
  store i32 %1442, i32* %1446, align 4
  %1447 = load i64, i64* %3, align 8
  %1448 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1449 = add i64 %1448, 13112
  store i64 %1449, i64* %RCX.i1445, align 8
  %1450 = icmp ugt i64 %1448, -13113
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %14, align 1
  %1452 = trunc i64 %1449 to i32
  %1453 = and i32 %1452, 255
  %1454 = tail call i32 @llvm.ctpop.i32(i32 %1453)
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  store i8 %1457, i8* %21, align 1
  %1458 = xor i64 %1448, 16
  %1459 = xor i64 %1458, %1449
  %1460 = lshr i64 %1459, 4
  %1461 = trunc i64 %1460 to i8
  %1462 = and i8 %1461, 1
  store i8 %1462, i8* %27, align 1
  %1463 = icmp eq i64 %1449, 0
  %1464 = zext i1 %1463 to i8
  store i8 %1464, i8* %30, align 1
  %1465 = lshr i64 %1449, 63
  %1466 = trunc i64 %1465 to i8
  store i8 %1466, i8* %33, align 1
  %1467 = lshr i64 %1448, 63
  %1468 = xor i64 %1465, %1467
  %1469 = add nuw nsw i64 %1468, %1465
  %1470 = icmp eq i64 %1469, 2
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %39, align 1
  %1472 = load i64, i64* %RBP.i, align 8
  %1473 = add i64 %1472, -16
  %1474 = add i64 %1447, 19
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i32*
  %1476 = load i32, i32* %1475, align 4
  %1477 = sext i32 %1476 to i64
  %1478 = shl nsw i64 %1477, 6
  store i64 %1478, i64* %RDX.i2151, align 8
  %1479 = add i64 %1478, %1449
  store i64 %1479, i64* %RCX.i1445, align 8
  %1480 = icmp ult i64 %1479, %1449
  %1481 = icmp ult i64 %1479, %1478
  %1482 = or i1 %1480, %1481
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %14, align 1
  %1484 = trunc i64 %1479 to i32
  %1485 = and i32 %1484, 255
  %1486 = tail call i32 @llvm.ctpop.i32(i32 %1485)
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  %1489 = xor i8 %1488, 1
  store i8 %1489, i8* %21, align 1
  %1490 = xor i64 %1449, %1479
  %1491 = lshr i64 %1490, 4
  %1492 = trunc i64 %1491 to i8
  %1493 = and i8 %1492, 1
  store i8 %1493, i8* %27, align 1
  %1494 = icmp eq i64 %1479, 0
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %30, align 1
  %1496 = lshr i64 %1479, 63
  %1497 = trunc i64 %1496 to i8
  store i8 %1497, i8* %33, align 1
  %1498 = lshr i64 %1477, 57
  %1499 = and i64 %1498, 1
  %1500 = xor i64 %1496, %1465
  %1501 = xor i64 %1496, %1499
  %1502 = add nuw nsw i64 %1500, %1501
  %1503 = icmp eq i64 %1502, 2
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %39, align 1
  %1505 = add i64 %1472, -20
  %1506 = add i64 %1447, 30
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = sext i32 %1508 to i64
  store i64 %1509, i64* %RDX.i2151, align 8
  %1510 = shl nsw i64 %1509, 2
  %1511 = add i64 %1510, %1479
  %1512 = add i64 %1447, 33
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i32*
  %1514 = load i32, i32* %1513, align 4
  %1515 = zext i32 %1514 to i64
  store i64 %1515, i64* %RAX.i2123.pre-phi, align 8
  %1516 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1517 = add i64 %1516, 13112
  store i64 %1517, i64* %RCX.i1445, align 8
  %1518 = icmp ugt i64 %1516, -13113
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %14, align 1
  %1520 = trunc i64 %1517 to i32
  %1521 = and i32 %1520, 255
  %1522 = tail call i32 @llvm.ctpop.i32(i32 %1521)
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %21, align 1
  %1526 = xor i64 %1516, 16
  %1527 = xor i64 %1526, %1517
  %1528 = lshr i64 %1527, 4
  %1529 = trunc i64 %1528 to i8
  %1530 = and i8 %1529, 1
  store i8 %1530, i8* %27, align 1
  %1531 = icmp eq i64 %1517, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %30, align 1
  %1533 = lshr i64 %1517, 63
  %1534 = trunc i64 %1533 to i8
  store i8 %1534, i8* %33, align 1
  %1535 = lshr i64 %1516, 63
  %1536 = xor i64 %1533, %1535
  %1537 = add nuw nsw i64 %1536, %1533
  %1538 = icmp eq i64 %1537, 2
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %39, align 1
  %1540 = load i64, i64* %RBP.i, align 8
  %1541 = add i64 %1540, -16
  %1542 = add i64 %1447, 52
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i32*
  %1544 = load i32, i32* %1543, align 4
  %1545 = sext i32 %1544 to i64
  %1546 = shl nsw i64 %1545, 6
  store i64 %1546, i64* %RDX.i2151, align 8
  %1547 = add i64 %1546, %1517
  store i64 %1547, i64* %RCX.i1445, align 8
  %1548 = icmp ult i64 %1547, %1517
  %1549 = icmp ult i64 %1547, %1546
  %1550 = or i1 %1548, %1549
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %14, align 1
  %1552 = trunc i64 %1547 to i32
  %1553 = and i32 %1552, 255
  %1554 = tail call i32 @llvm.ctpop.i32(i32 %1553)
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  %1557 = xor i8 %1556, 1
  store i8 %1557, i8* %21, align 1
  %1558 = xor i64 %1517, %1547
  %1559 = lshr i64 %1558, 4
  %1560 = trunc i64 %1559 to i8
  %1561 = and i8 %1560, 1
  store i8 %1561, i8* %27, align 1
  %1562 = icmp eq i64 %1547, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %30, align 1
  %1564 = lshr i64 %1547, 63
  %1565 = trunc i64 %1564 to i8
  store i8 %1565, i8* %33, align 1
  %1566 = lshr i64 %1545, 57
  %1567 = and i64 %1566, 1
  %1568 = xor i64 %1564, %1533
  %1569 = xor i64 %1564, %1567
  %1570 = add nuw nsw i64 %1568, %1569
  %1571 = icmp eq i64 %1570, 2
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %39, align 1
  %1573 = add i64 %1540, -28
  %1574 = add i64 %1447, 63
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1573 to i32*
  %1576 = load i32, i32* %1575, align 4
  %1577 = sext i32 %1576 to i64
  store i64 %1577, i64* %RDX.i2151, align 8
  %1578 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %1579 = shl nsw i64 %1577, 2
  %1580 = add i64 %1547, %1579
  %1581 = add i64 %1447, 66
  store i64 %1581, i64* %3, align 8
  %1582 = trunc i64 %1578 to i32
  %1583 = inttoptr i64 %1580 to i32*
  %1584 = load i32, i32* %1583, align 4
  %1585 = add i32 %1584, %1582
  %1586 = zext i32 %1585 to i64
  store i64 %1586, i64* %RAX.i2123.pre-phi, align 8
  %1587 = icmp ult i32 %1585, %1582
  %1588 = icmp ult i32 %1585, %1584
  %1589 = or i1 %1587, %1588
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %14, align 1
  %1591 = and i32 %1585, 255
  %1592 = tail call i32 @llvm.ctpop.i32(i32 %1591)
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  %1595 = xor i8 %1594, 1
  store i8 %1595, i8* %21, align 1
  %1596 = xor i32 %1584, %1582
  %1597 = xor i32 %1596, %1585
  %1598 = lshr i32 %1597, 4
  %1599 = trunc i32 %1598 to i8
  %1600 = and i8 %1599, 1
  store i8 %1600, i8* %27, align 1
  %1601 = icmp eq i32 %1585, 0
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %30, align 1
  %1603 = lshr i32 %1585, 31
  %1604 = trunc i32 %1603 to i8
  store i8 %1604, i8* %33, align 1
  %1605 = lshr i32 %1582, 31
  %1606 = lshr i32 %1584, 31
  %1607 = xor i32 %1603, %1605
  %1608 = xor i32 %1603, %1606
  %1609 = add nuw nsw i32 %1607, %1608
  %1610 = icmp eq i32 %1609, 2
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %39, align 1
  %1612 = load i64, i64* %RBP.i, align 8
  %1613 = add i64 %1612, -20
  %1614 = add i64 %1447, 70
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1613 to i32*
  %1616 = load i32, i32* %1615, align 4
  %1617 = sext i32 %1616 to i64
  %1618 = shl nsw i64 %1617, 2
  %1619 = add i64 %1612, -48
  %1620 = add i64 %1619, %1618
  %1621 = add i64 %1447, 74
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  store i32 %1585, i32* %1622, align 4
  %1623 = load i64, i64* %3, align 8
  %1624 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1625 = add i64 %1624, 13112
  store i64 %1625, i64* %RCX.i1445, align 8
  %1626 = icmp ugt i64 %1624, -13113
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %14, align 1
  %1628 = trunc i64 %1625 to i32
  %1629 = and i32 %1628, 255
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %21, align 1
  %1634 = xor i64 %1624, 16
  %1635 = xor i64 %1634, %1625
  %1636 = lshr i64 %1635, 4
  %1637 = trunc i64 %1636 to i8
  %1638 = and i8 %1637, 1
  store i8 %1638, i8* %27, align 1
  %1639 = icmp eq i64 %1625, 0
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %30, align 1
  %1641 = lshr i64 %1625, 63
  %1642 = trunc i64 %1641 to i8
  store i8 %1642, i8* %33, align 1
  %1643 = lshr i64 %1624, 63
  %1644 = xor i64 %1641, %1643
  %1645 = add nuw nsw i64 %1644, %1641
  %1646 = icmp eq i64 %1645, 2
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %39, align 1
  %1648 = load i64, i64* %RBP.i, align 8
  %1649 = add i64 %1648, -16
  %1650 = add i64 %1623, 19
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1649 to i32*
  %1652 = load i32, i32* %1651, align 4
  %1653 = sext i32 %1652 to i64
  %1654 = shl nsw i64 %1653, 6
  store i64 %1654, i64* %RDX.i2151, align 8
  %1655 = add i64 %1654, %1625
  store i64 %1655, i64* %RCX.i1445, align 8
  %1656 = icmp ult i64 %1655, %1625
  %1657 = icmp ult i64 %1655, %1654
  %1658 = or i1 %1656, %1657
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %14, align 1
  %1660 = trunc i64 %1655 to i32
  %1661 = and i32 %1660, 255
  %1662 = tail call i32 @llvm.ctpop.i32(i32 %1661)
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  %1665 = xor i8 %1664, 1
  store i8 %1665, i8* %21, align 1
  %1666 = xor i64 %1625, %1655
  %1667 = lshr i64 %1666, 4
  %1668 = trunc i64 %1667 to i8
  %1669 = and i8 %1668, 1
  store i8 %1669, i8* %27, align 1
  %1670 = icmp eq i64 %1655, 0
  %1671 = zext i1 %1670 to i8
  store i8 %1671, i8* %30, align 1
  %1672 = lshr i64 %1655, 63
  %1673 = trunc i64 %1672 to i8
  store i8 %1673, i8* %33, align 1
  %1674 = lshr i64 %1653, 57
  %1675 = and i64 %1674, 1
  %1676 = xor i64 %1672, %1641
  %1677 = xor i64 %1672, %1675
  %1678 = add nuw nsw i64 %1676, %1677
  %1679 = icmp eq i64 %1678, 2
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %39, align 1
  %1681 = add i64 %1648, -20
  %1682 = add i64 %1623, 30
  store i64 %1682, i64* %3, align 8
  %1683 = inttoptr i64 %1681 to i32*
  %1684 = load i32, i32* %1683, align 4
  %1685 = sext i32 %1684 to i64
  store i64 %1685, i64* %RDX.i2151, align 8
  %1686 = shl nsw i64 %1685, 2
  %1687 = add i64 %1686, %1655
  %1688 = add i64 %1623, 33
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1687 to i32*
  %1690 = load i32, i32* %1689, align 4
  %1691 = zext i32 %1690 to i64
  store i64 %1691, i64* %RAX.i2123.pre-phi, align 8
  %1692 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1693 = add i64 %1692, 13112
  store i64 %1693, i64* %RCX.i1445, align 8
  %1694 = icmp ugt i64 %1692, -13113
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %14, align 1
  %1696 = trunc i64 %1693 to i32
  %1697 = and i32 %1696, 255
  %1698 = tail call i32 @llvm.ctpop.i32(i32 %1697)
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  %1701 = xor i8 %1700, 1
  store i8 %1701, i8* %21, align 1
  %1702 = xor i64 %1692, 16
  %1703 = xor i64 %1702, %1693
  %1704 = lshr i64 %1703, 4
  %1705 = trunc i64 %1704 to i8
  %1706 = and i8 %1705, 1
  store i8 %1706, i8* %27, align 1
  %1707 = icmp eq i64 %1693, 0
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %30, align 1
  %1709 = lshr i64 %1693, 63
  %1710 = trunc i64 %1709 to i8
  store i8 %1710, i8* %33, align 1
  %1711 = lshr i64 %1692, 63
  %1712 = xor i64 %1709, %1711
  %1713 = add nuw nsw i64 %1712, %1709
  %1714 = icmp eq i64 %1713, 2
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %39, align 1
  %1716 = load i64, i64* %RBP.i, align 8
  %1717 = add i64 %1716, -16
  %1718 = add i64 %1623, 52
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to i32*
  %1720 = load i32, i32* %1719, align 4
  %1721 = sext i32 %1720 to i64
  %1722 = shl nsw i64 %1721, 6
  store i64 %1722, i64* %RDX.i2151, align 8
  %1723 = add i64 %1722, %1693
  store i64 %1723, i64* %RCX.i1445, align 8
  %1724 = icmp ult i64 %1723, %1693
  %1725 = icmp ult i64 %1723, %1722
  %1726 = or i1 %1724, %1725
  %1727 = zext i1 %1726 to i8
  store i8 %1727, i8* %14, align 1
  %1728 = trunc i64 %1723 to i32
  %1729 = and i32 %1728, 255
  %1730 = tail call i32 @llvm.ctpop.i32(i32 %1729)
  %1731 = trunc i32 %1730 to i8
  %1732 = and i8 %1731, 1
  %1733 = xor i8 %1732, 1
  store i8 %1733, i8* %21, align 1
  %1734 = xor i64 %1693, %1723
  %1735 = lshr i64 %1734, 4
  %1736 = trunc i64 %1735 to i8
  %1737 = and i8 %1736, 1
  store i8 %1737, i8* %27, align 1
  %1738 = icmp eq i64 %1723, 0
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %30, align 1
  %1740 = lshr i64 %1723, 63
  %1741 = trunc i64 %1740 to i8
  store i8 %1741, i8* %33, align 1
  %1742 = lshr i64 %1721, 57
  %1743 = and i64 %1742, 1
  %1744 = xor i64 %1740, %1709
  %1745 = xor i64 %1740, %1743
  %1746 = add nuw nsw i64 %1744, %1745
  %1747 = icmp eq i64 %1746, 2
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %39, align 1
  %1749 = add i64 %1716, -28
  %1750 = add i64 %1623, 63
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i32*
  %1752 = load i32, i32* %1751, align 4
  %1753 = sext i32 %1752 to i64
  store i64 %1753, i64* %RDX.i2151, align 8
  %1754 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %1755 = shl nsw i64 %1753, 2
  %1756 = add i64 %1723, %1755
  %1757 = add i64 %1623, 66
  store i64 %1757, i64* %3, align 8
  %1758 = trunc i64 %1754 to i32
  %1759 = inttoptr i64 %1756 to i32*
  %1760 = load i32, i32* %1759, align 4
  %1761 = sub i32 %1758, %1760
  %1762 = zext i32 %1761 to i64
  store i64 %1762, i64* %RAX.i2123.pre-phi, align 8
  %1763 = icmp ult i32 %1758, %1760
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %14, align 1
  %1765 = and i32 %1761, 255
  %1766 = tail call i32 @llvm.ctpop.i32(i32 %1765)
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  store i8 %1769, i8* %21, align 1
  %1770 = xor i32 %1760, %1758
  %1771 = xor i32 %1770, %1761
  %1772 = lshr i32 %1771, 4
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  store i8 %1774, i8* %27, align 1
  %1775 = icmp eq i32 %1761, 0
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %30, align 1
  %1777 = lshr i32 %1761, 31
  %1778 = trunc i32 %1777 to i8
  store i8 %1778, i8* %33, align 1
  %1779 = lshr i32 %1758, 31
  %1780 = lshr i32 %1760, 31
  %1781 = xor i32 %1780, %1779
  %1782 = xor i32 %1777, %1779
  %1783 = add nuw nsw i32 %1782, %1781
  %1784 = icmp eq i32 %1783, 2
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %39, align 1
  %1786 = load i64, i64* %RBP.i, align 8
  %1787 = add i64 %1786, -28
  %1788 = add i64 %1623, 70
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i32*
  %1790 = load i32, i32* %1789, align 4
  %1791 = sext i32 %1790 to i64
  store i64 %1791, i64* %RCX.i1445, align 8
  %1792 = shl nsw i64 %1791, 2
  %1793 = add i64 %1786, -48
  %1794 = add i64 %1793, %1792
  %1795 = add i64 %1623, 74
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1794 to i32*
  store i32 %1761, i32* %1796, align 4
  %1797 = load i64, i64* %RBP.i, align 8
  %1798 = add i64 %1797, -20
  %1799 = load i64, i64* %3, align 8
  %1800 = add i64 %1799, 3
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1798 to i32*
  %1802 = load i32, i32* %1801, align 4
  %1803 = add i32 %1802, 1
  %1804 = zext i32 %1803 to i64
  store i64 %1804, i64* %RAX.i2123.pre-phi, align 8
  %1805 = icmp eq i32 %1802, -1
  %1806 = icmp eq i32 %1803, 0
  %1807 = or i1 %1805, %1806
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %14, align 1
  %1809 = and i32 %1803, 255
  %1810 = tail call i32 @llvm.ctpop.i32(i32 %1809)
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  %1813 = xor i8 %1812, 1
  store i8 %1813, i8* %21, align 1
  %1814 = xor i32 %1803, %1802
  %1815 = lshr i32 %1814, 4
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  store i8 %1817, i8* %27, align 1
  %1818 = zext i1 %1806 to i8
  store i8 %1818, i8* %30, align 1
  %1819 = lshr i32 %1803, 31
  %1820 = trunc i32 %1819 to i8
  store i8 %1820, i8* %33, align 1
  %1821 = lshr i32 %1802, 31
  %1822 = xor i32 %1819, %1821
  %1823 = add nuw nsw i32 %1822, %1819
  %1824 = icmp eq i32 %1823, 2
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %39, align 1
  %1826 = add i64 %1799, 9
  store i64 %1826, i64* %3, align 8
  store i32 %1803, i32* %1801, align 4
  %1827 = load i64, i64* %3, align 8
  %1828 = add i64 %1827, -178
  store i64 %1828, i64* %3, align 8
  br label %block_.L_40affe

block_.L_40b0b5:                                  ; preds = %block_.L_40affe
  %1829 = add i64 %1411, -48
  %1830 = add i64 %1439, 3
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to i32*
  %1832 = load i32, i32* %1831, align 4
  %1833 = zext i32 %1832 to i64
  store i64 %1833, i64* %RAX.i2123.pre-phi, align 8
  %1834 = add i64 %1411, -44
  %1835 = add i64 %1439, 6
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to i32*
  %1837 = load i32, i32* %1836, align 4
  %1838 = add i32 %1837, %1832
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %RAX.i2123.pre-phi, align 8
  %1840 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1841 = add i64 %1840, 13112
  store i64 %1841, i64* %RCX.i1445, align 8
  %1842 = icmp ugt i64 %1840, -13113
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %14, align 1
  %1844 = trunc i64 %1841 to i32
  %1845 = and i32 %1844, 255
  %1846 = tail call i32 @llvm.ctpop.i32(i32 %1845)
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  %1849 = xor i8 %1848, 1
  store i8 %1849, i8* %21, align 1
  %1850 = xor i64 %1840, 16
  %1851 = xor i64 %1850, %1841
  %1852 = lshr i64 %1851, 4
  %1853 = trunc i64 %1852 to i8
  %1854 = and i8 %1853, 1
  store i8 %1854, i8* %27, align 1
  %1855 = icmp eq i64 %1841, 0
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %30, align 1
  %1857 = lshr i64 %1841, 63
  %1858 = trunc i64 %1857 to i8
  store i8 %1858, i8* %33, align 1
  %1859 = lshr i64 %1840, 63
  %1860 = xor i64 %1857, %1859
  %1861 = add nuw nsw i64 %1860, %1857
  %1862 = icmp eq i64 %1861, 2
  %1863 = zext i1 %1862 to i8
  store i8 %1863, i8* %39, align 1
  %1864 = add i64 %1411, -16
  %1865 = add i64 %1439, 25
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = sext i32 %1867 to i64
  %1869 = shl nsw i64 %1868, 6
  store i64 %1869, i64* %RDX.i2151, align 8
  %1870 = add i64 %1869, %1841
  store i64 %1870, i64* %RCX.i1445, align 8
  %1871 = icmp ult i64 %1870, %1841
  %1872 = icmp ult i64 %1870, %1869
  %1873 = or i1 %1871, %1872
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %14, align 1
  %1875 = trunc i64 %1870 to i32
  %1876 = and i32 %1875, 255
  %1877 = tail call i32 @llvm.ctpop.i32(i32 %1876)
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  %1880 = xor i8 %1879, 1
  store i8 %1880, i8* %21, align 1
  %1881 = xor i64 %1841, %1870
  %1882 = lshr i64 %1881, 4
  %1883 = trunc i64 %1882 to i8
  %1884 = and i8 %1883, 1
  store i8 %1884, i8* %27, align 1
  %1885 = icmp eq i64 %1870, 0
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %30, align 1
  %1887 = lshr i64 %1870, 63
  %1888 = trunc i64 %1887 to i8
  store i8 %1888, i8* %33, align 1
  %1889 = lshr i64 %1868, 57
  %1890 = and i64 %1889, 1
  %1891 = xor i64 %1887, %1857
  %1892 = xor i64 %1887, %1890
  %1893 = add nuw nsw i64 %1891, %1892
  %1894 = icmp eq i64 %1893, 2
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %39, align 1
  %1896 = inttoptr i64 %1870 to i32*
  %1897 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %1898 = add i64 %1439, 34
  store i64 %1898, i64* %3, align 8
  store i32 %1897, i32* %1896, align 4
  %1899 = load i64, i64* %RBP.i, align 8
  %1900 = add i64 %1899, -48
  %1901 = load i64, i64* %3, align 8
  %1902 = add i64 %1901, 3
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1900 to i32*
  %1904 = load i32, i32* %1903, align 4
  %1905 = zext i32 %1904 to i64
  store i64 %1905, i64* %RAX.i2123.pre-phi, align 8
  %1906 = add i64 %1899, -44
  %1907 = add i64 %1901, 6
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i32*
  %1909 = load i32, i32* %1908, align 4
  %1910 = sub i32 %1904, %1909
  %1911 = zext i32 %1910 to i64
  store i64 %1911, i64* %RAX.i2123.pre-phi, align 8
  %1912 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1913 = add i64 %1912, 13112
  store i64 %1913, i64* %RCX.i1445, align 8
  %1914 = icmp ugt i64 %1912, -13113
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %14, align 1
  %1916 = trunc i64 %1913 to i32
  %1917 = and i32 %1916, 255
  %1918 = tail call i32 @llvm.ctpop.i32(i32 %1917)
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  %1921 = xor i8 %1920, 1
  store i8 %1921, i8* %21, align 1
  %1922 = xor i64 %1912, 16
  %1923 = xor i64 %1922, %1913
  %1924 = lshr i64 %1923, 4
  %1925 = trunc i64 %1924 to i8
  %1926 = and i8 %1925, 1
  store i8 %1926, i8* %27, align 1
  %1927 = icmp eq i64 %1913, 0
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %30, align 1
  %1929 = lshr i64 %1913, 63
  %1930 = trunc i64 %1929 to i8
  store i8 %1930, i8* %33, align 1
  %1931 = lshr i64 %1912, 63
  %1932 = xor i64 %1929, %1931
  %1933 = add nuw nsw i64 %1932, %1929
  %1934 = icmp eq i64 %1933, 2
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %39, align 1
  %1936 = add i64 %1899, -16
  %1937 = add i64 %1901, 25
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  %1939 = load i32, i32* %1938, align 4
  %1940 = sext i32 %1939 to i64
  %1941 = shl nsw i64 %1940, 6
  store i64 %1941, i64* %RDX.i2151, align 8
  %1942 = add i64 %1941, %1913
  store i64 %1942, i64* %RCX.i1445, align 8
  %1943 = icmp ult i64 %1942, %1913
  %1944 = icmp ult i64 %1942, %1941
  %1945 = or i1 %1943, %1944
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %14, align 1
  %1947 = trunc i64 %1942 to i32
  %1948 = and i32 %1947, 255
  %1949 = tail call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  store i8 %1952, i8* %21, align 1
  %1953 = xor i64 %1913, %1942
  %1954 = lshr i64 %1953, 4
  %1955 = trunc i64 %1954 to i8
  %1956 = and i8 %1955, 1
  store i8 %1956, i8* %27, align 1
  %1957 = icmp eq i64 %1942, 0
  %1958 = zext i1 %1957 to i8
  store i8 %1958, i8* %30, align 1
  %1959 = lshr i64 %1942, 63
  %1960 = trunc i64 %1959 to i8
  store i8 %1960, i8* %33, align 1
  %1961 = lshr i64 %1940, 57
  %1962 = and i64 %1961, 1
  %1963 = xor i64 %1959, %1929
  %1964 = xor i64 %1959, %1962
  %1965 = add nuw nsw i64 %1963, %1964
  %1966 = icmp eq i64 %1965, 2
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %39, align 1
  %1968 = add i64 %1942, 8
  %1969 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %1970 = add i64 %1901, 35
  store i64 %1970, i64* %3, align 8
  %1971 = inttoptr i64 %1968 to i32*
  store i32 %1969, i32* %1971, align 4
  %1972 = load i64, i64* %RBP.i, align 8
  %1973 = add i64 %1972, -36
  %1974 = load i64, i64* %3, align 8
  %1975 = add i64 %1974, 3
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1973 to i32*
  %1977 = load i32, i32* %1976, align 4
  %1978 = shl i32 %1977, 1
  %1979 = icmp slt i32 %1977, 0
  %1980 = icmp slt i32 %1978, 0
  %1981 = xor i1 %1979, %1980
  %1982 = zext i32 %1978 to i64
  store i64 %1982, i64* %RAX.i2123.pre-phi, align 8
  %.lobit46 = lshr i32 %1977, 31
  %1983 = trunc i32 %.lobit46 to i8
  store i8 %1983, i8* %14, align 1
  %1984 = and i32 %1978, 254
  %1985 = tail call i32 @llvm.ctpop.i32(i32 %1984)
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  %1988 = xor i8 %1987, 1
  store i8 %1988, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1989 = icmp eq i32 %1978, 0
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %30, align 1
  %1991 = lshr i32 %1977, 30
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  store i8 %1993, i8* %33, align 1
  %1994 = zext i1 %1981 to i8
  store i8 %1994, i8* %39, align 1
  %1995 = add i64 %1972, -40
  %1996 = add i64 %1974, 8
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1995 to i32*
  %1998 = load i32, i32* %1997, align 4
  %1999 = add i32 %1998, %1978
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %RAX.i2123.pre-phi, align 8
  %2001 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2002 = add i64 %2001, 13112
  store i64 %2002, i64* %RCX.i1445, align 8
  %2003 = icmp ugt i64 %2001, -13113
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %14, align 1
  %2005 = trunc i64 %2002 to i32
  %2006 = and i32 %2005, 255
  %2007 = tail call i32 @llvm.ctpop.i32(i32 %2006)
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  %2010 = xor i8 %2009, 1
  store i8 %2010, i8* %21, align 1
  %2011 = xor i64 %2001, 16
  %2012 = xor i64 %2011, %2002
  %2013 = lshr i64 %2012, 4
  %2014 = trunc i64 %2013 to i8
  %2015 = and i8 %2014, 1
  store i8 %2015, i8* %27, align 1
  %2016 = icmp eq i64 %2002, 0
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %30, align 1
  %2018 = lshr i64 %2002, 63
  %2019 = trunc i64 %2018 to i8
  store i8 %2019, i8* %33, align 1
  %2020 = lshr i64 %2001, 63
  %2021 = xor i64 %2018, %2020
  %2022 = add nuw nsw i64 %2021, %2018
  %2023 = icmp eq i64 %2022, 2
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %39, align 1
  %2025 = load i64, i64* %RBP.i, align 8
  %2026 = add i64 %2025, -16
  %2027 = add i64 %1974, 27
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  %2030 = sext i32 %2029 to i64
  %2031 = shl nsw i64 %2030, 6
  store i64 %2031, i64* %RDX.i2151, align 8
  %2032 = add i64 %2031, %2002
  store i64 %2032, i64* %RCX.i1445, align 8
  %2033 = icmp ult i64 %2032, %2002
  %2034 = icmp ult i64 %2032, %2031
  %2035 = or i1 %2033, %2034
  %2036 = zext i1 %2035 to i8
  store i8 %2036, i8* %14, align 1
  %2037 = trunc i64 %2032 to i32
  %2038 = and i32 %2037, 255
  %2039 = tail call i32 @llvm.ctpop.i32(i32 %2038)
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  %2042 = xor i8 %2041, 1
  store i8 %2042, i8* %21, align 1
  %2043 = xor i64 %2002, %2032
  %2044 = lshr i64 %2043, 4
  %2045 = trunc i64 %2044 to i8
  %2046 = and i8 %2045, 1
  store i8 %2046, i8* %27, align 1
  %2047 = icmp eq i64 %2032, 0
  %2048 = zext i1 %2047 to i8
  store i8 %2048, i8* %30, align 1
  %2049 = lshr i64 %2032, 63
  %2050 = trunc i64 %2049 to i8
  store i8 %2050, i8* %33, align 1
  %2051 = lshr i64 %2030, 57
  %2052 = and i64 %2051, 1
  %2053 = xor i64 %2049, %2018
  %2054 = xor i64 %2049, %2052
  %2055 = add nuw nsw i64 %2053, %2054
  %2056 = icmp eq i64 %2055, 2
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %39, align 1
  %2058 = add i64 %2032, 4
  %2059 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %2060 = add i64 %1974, 37
  store i64 %2060, i64* %3, align 8
  %2061 = inttoptr i64 %2058 to i32*
  store i32 %2059, i32* %2061, align 4
  %2062 = load i64, i64* %RBP.i, align 8
  %2063 = add i64 %2062, -36
  %2064 = load i64, i64* %3, align 8
  %2065 = add i64 %2064, 3
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2063 to i32*
  %2067 = load i32, i32* %2066, align 4
  %2068 = zext i32 %2067 to i64
  store i64 %2068, i64* %RAX.i2123.pre-phi, align 8
  %2069 = add i64 %2062, -40
  %2070 = add i64 %2064, 6
  store i64 %2070, i64* %3, align 8
  %2071 = inttoptr i64 %2069 to i32*
  %2072 = load i32, i32* %2071, align 4
  %2073 = shl i32 %2072, 1
  %2074 = zext i32 %2073 to i64
  store i64 %2074, i64* %RSI.i2229, align 8
  %2075 = sub i32 %2067, %2073
  %2076 = zext i32 %2075 to i64
  store i64 %2076, i64* %RAX.i2123.pre-phi, align 8
  %2077 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2078 = add i64 %2077, 13112
  store i64 %2078, i64* %RCX.i1445, align 8
  %2079 = icmp ugt i64 %2077, -13113
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %14, align 1
  %2081 = trunc i64 %2078 to i32
  %2082 = and i32 %2081, 255
  %2083 = tail call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  store i8 %2086, i8* %21, align 1
  %2087 = xor i64 %2077, 16
  %2088 = xor i64 %2087, %2078
  %2089 = lshr i64 %2088, 4
  %2090 = trunc i64 %2089 to i8
  %2091 = and i8 %2090, 1
  store i8 %2091, i8* %27, align 1
  %2092 = icmp eq i64 %2078, 0
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %30, align 1
  %2094 = lshr i64 %2078, 63
  %2095 = trunc i64 %2094 to i8
  store i8 %2095, i8* %33, align 1
  %2096 = lshr i64 %2077, 63
  %2097 = xor i64 %2094, %2096
  %2098 = add nuw nsw i64 %2097, %2094
  %2099 = icmp eq i64 %2098, 2
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %39, align 1
  %2101 = load i64, i64* %RBP.i, align 8
  %2102 = add i64 %2101, -16
  %2103 = add i64 %2064, 29
  store i64 %2103, i64* %3, align 8
  %2104 = inttoptr i64 %2102 to i32*
  %2105 = load i32, i32* %2104, align 4
  %2106 = sext i32 %2105 to i64
  %2107 = shl nsw i64 %2106, 6
  store i64 %2107, i64* %RDX.i2151, align 8
  %2108 = add i64 %2107, %2078
  store i64 %2108, i64* %RCX.i1445, align 8
  %2109 = icmp ult i64 %2108, %2078
  %2110 = icmp ult i64 %2108, %2107
  %2111 = or i1 %2109, %2110
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %14, align 1
  %2113 = trunc i64 %2108 to i32
  %2114 = and i32 %2113, 255
  %2115 = tail call i32 @llvm.ctpop.i32(i32 %2114)
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  store i8 %2118, i8* %21, align 1
  %2119 = xor i64 %2078, %2108
  %2120 = lshr i64 %2119, 4
  %2121 = trunc i64 %2120 to i8
  %2122 = and i8 %2121, 1
  store i8 %2122, i8* %27, align 1
  %2123 = icmp eq i64 %2108, 0
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %30, align 1
  %2125 = lshr i64 %2108, 63
  %2126 = trunc i64 %2125 to i8
  store i8 %2126, i8* %33, align 1
  %2127 = lshr i64 %2106, 57
  %2128 = and i64 %2127, 1
  %2129 = xor i64 %2125, %2094
  %2130 = xor i64 %2125, %2128
  %2131 = add nuw nsw i64 %2129, %2130
  %2132 = icmp eq i64 %2131, 2
  %2133 = zext i1 %2132 to i8
  store i8 %2133, i8* %39, align 1
  %2134 = add i64 %2108, 12
  %2135 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %2136 = add i64 %2064, 39
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2134 to i32*
  store i32 %2135, i32* %2137, align 4
  %2138 = load i64, i64* %RBP.i, align 8
  %2139 = add i64 %2138, -16
  %2140 = load i64, i64* %3, align 8
  %2141 = add i64 %2140, 3
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2139 to i32*
  %2143 = load i32, i32* %2142, align 4
  %2144 = add i32 %2143, 1
  %2145 = zext i32 %2144 to i64
  store i64 %2145, i64* %RAX.i2123.pre-phi, align 8
  %2146 = icmp eq i32 %2143, -1
  %2147 = icmp eq i32 %2144, 0
  %2148 = or i1 %2146, %2147
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %14, align 1
  %2150 = and i32 %2144, 255
  %2151 = tail call i32 @llvm.ctpop.i32(i32 %2150)
  %2152 = trunc i32 %2151 to i8
  %2153 = and i8 %2152, 1
  %2154 = xor i8 %2153, 1
  store i8 %2154, i8* %21, align 1
  %2155 = xor i32 %2144, %2143
  %2156 = lshr i32 %2155, 4
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  store i8 %2158, i8* %27, align 1
  %2159 = zext i1 %2147 to i8
  store i8 %2159, i8* %30, align 1
  %2160 = lshr i32 %2144, 31
  %2161 = trunc i32 %2160 to i8
  store i8 %2161, i8* %33, align 1
  %2162 = lshr i32 %2143, 31
  %2163 = xor i32 %2160, %2162
  %2164 = add nuw nsw i32 %2163, %2160
  %2165 = icmp eq i32 %2164, 2
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %39, align 1
  %2167 = add i64 %2140, 9
  store i64 %2167, i64* %3, align 8
  store i32 %2144, i32* %2142, align 4
  %2168 = load i64, i64* %3, align 8
  %2169 = add i64 %2168, -356
  store i64 %2169, i64* %3, align 8
  br label %block_.L_40afed

block_.L_40b156:                                  ; preds = %block_.L_40afed
  %2170 = add i64 %1406, 5
  store i64 %2170, i64* %3, align 8
  br label %block_.L_40b15b

block_.L_40b15b:                                  ; preds = %block_.L_40afd9, %block_.L_40b156
  %2171 = phi i64 [ %2170, %block_.L_40b156 ], [ %1373, %block_.L_40afd9 ]
  %2172 = phi i64 [ %1378, %block_.L_40b156 ], [ %1359, %block_.L_40afd9 ]
  %2173 = add i64 %2172, -84
  %2174 = add i64 %2171, 7
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2173 to i32*
  store i32 0, i32* %2175, align 4
  %2176 = load i64, i64* %RBP.i, align 8
  %2177 = add i64 %2176, -80
  %2178 = load i64, i64* %3, align 8
  %2179 = add i64 %2178, 7
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2177 to i32*
  store i32 -1, i32* %2180, align 4
  %2181 = load i64, i64* %RBP.i, align 8
  %2182 = add i64 %2181, -76
  %2183 = load i64, i64* %3, align 8
  %2184 = add i64 %2183, 7
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2182 to i32*
  store i32 0, i32* %2185, align 4
  %2186 = load i64, i64* %RBP.i, align 8
  %2187 = add i64 %2186, -140
  %2188 = load i64, i64* %3, align 8
  %2189 = add i64 %2188, 7
  store i64 %2189, i64* %3, align 8
  %2190 = inttoptr i64 %2187 to i32*
  %2191 = load i32, i32* %2190, align 4
  store i8 0, i8* %14, align 1
  %2192 = and i32 %2191, 255
  %2193 = tail call i32 @llvm.ctpop.i32(i32 %2192)
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = xor i8 %2195, 1
  store i8 %2196, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2197 = icmp eq i32 %2191, 0
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %30, align 1
  %2199 = lshr i32 %2191, 31
  %2200 = trunc i32 %2199 to i8
  store i8 %2200, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v164 = select i1 %2197, i64 40, i64 13
  %2201 = add i64 %2188, %.v164
  store i64 %2201, i64* %3, align 8
  br i1 %2197, label %block_.L_40b198, label %block_40b17d

block_40b17d:                                     ; preds = %block_.L_40b15b
  %2202 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2202, i64* %RAX.i2123.pre-phi, align 8
  %2203 = add i64 %2202, 13112
  %2204 = add i64 %2201, 14
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i32*
  %2206 = load i32, i32* %2205, align 4
  %2207 = zext i32 %2206 to i64
  store i64 %2207, i64* %RDI.i2224, align 8
  %2208 = add i64 %2201, -41341
  %2209 = add i64 %2201, 19
  %2210 = load i64, i64* %6, align 8
  %2211 = add i64 %2210, -8
  %2212 = inttoptr i64 %2211 to i64*
  store i64 %2209, i64* %2212, align 8
  store i64 %2211, i64* %6, align 8
  store i64 %2208, i64* %3, align 8
  %2213 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %609)
  %2214 = load i64, i64* %RBP.i, align 8
  %2215 = add i64 %2214, -72
  %2216 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %2217 = load i64, i64* %3, align 8
  %2218 = add i64 %2217, 3
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2215 to i32*
  store i32 %2216, i32* %2219, align 4
  %2220 = load i64, i64* %3, align 8
  %2221 = add i64 %2220, 229
  br label %block_.L_40b278

block_.L_40b198:                                  ; preds = %block_.L_40b15b
  %2222 = add i64 %2186, -100
  %2223 = add i64 %2201, 4
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2222 to i32*
  %2225 = load i32, i32* %2224, align 4
  %2226 = add i32 %2225, -1
  %2227 = icmp eq i32 %2225, 0
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %14, align 1
  %2229 = and i32 %2226, 255
  %2230 = tail call i32 @llvm.ctpop.i32(i32 %2229)
  %2231 = trunc i32 %2230 to i8
  %2232 = and i8 %2231, 1
  %2233 = xor i8 %2232, 1
  store i8 %2233, i8* %21, align 1
  %2234 = xor i32 %2226, %2225
  %2235 = lshr i32 %2234, 4
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  store i8 %2237, i8* %27, align 1
  %2238 = icmp eq i32 %2226, 0
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %30, align 1
  %2240 = lshr i32 %2226, 31
  %2241 = trunc i32 %2240 to i8
  store i8 %2241, i8* %33, align 1
  %2242 = lshr i32 %2225, 31
  %2243 = xor i32 %2240, %2242
  %2244 = add nuw nsw i32 %2243, %2242
  %2245 = icmp eq i32 %2244, 2
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %39, align 1
  %.v184 = select i1 %2238, i64 10, i64 117
  %2247 = add i64 %2201, %.v184
  %2248 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2248, i64* %RAX.i2123.pre-phi, align 8
  %2249 = add i64 %2248, 13112
  %2250 = add i64 %2247, 14
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i32*
  %2252 = load i32, i32* %2251, align 4
  %2253 = zext i32 %2252 to i64
  store i64 %2253, i64* %RDI.i2224, align 8
  br i1 %2238, label %block_40b1a2, label %block_.L_40b20d

block_40b1a2:                                     ; preds = %block_.L_40b198
  %2254 = add i64 %2247, -41378
  %2255 = add i64 %2247, 19
  %2256 = load i64, i64* %6, align 8
  %2257 = add i64 %2256, -8
  %2258 = inttoptr i64 %2257 to i64*
  store i64 %2255, i64* %2258, align 8
  store i64 %2257, i64* %6, align 8
  store i64 %2254, i64* %3, align 8
  %2259 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %609)
  %2260 = load i64, i64* %3, align 8
  store i64 7490528, i64* %RCX.i1445, align 8
  store i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64* %RDX.i2151, align 8
  %2261 = load i64, i64* %RBP.i, align 8
  %2262 = add i64 %2261, -4
  %2263 = add i64 %2260, 24
  store i64 %2263, i64* %3, align 8
  %2264 = inttoptr i64 %2262 to i32*
  %2265 = load i32, i32* %2264, align 4
  %2266 = sext i32 %2265 to i64
  %2267 = mul nsw i64 %2266, 384
  store i64 %2267, i64* %RSI.i2229, align 8
  %2268 = lshr i64 %2267, 63
  %2269 = add i64 %2267, ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64)
  store i64 %2269, i64* %RDX.i2151, align 8
  %2270 = icmp ult i64 %2269, ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64)
  %2271 = icmp ult i64 %2269, %2267
  %2272 = or i1 %2270, %2271
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %14, align 1
  %2274 = trunc i64 %2269 to i32
  %2275 = and i32 %2274, 248
  %2276 = tail call i32 @llvm.ctpop.i32(i32 %2275)
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = xor i8 %2278, 1
  store i8 %2279, i8* %21, align 1
  %2280 = xor i64 %2269, ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64)
  %2281 = lshr i64 %2280, 4
  %2282 = trunc i64 %2281 to i8
  %2283 = and i8 %2282, 1
  store i8 %2283, i8* %27, align 1
  %2284 = icmp eq i64 %2269, 0
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %30, align 1
  %2286 = lshr i64 %2269, 63
  %2287 = trunc i64 %2286 to i8
  store i8 %2287, i8* %33, align 1
  %2288 = xor i64 %2286, lshr (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 63)
  %2289 = xor i64 %2286, %2268
  %2290 = add nuw nsw i64 %2288, %2289
  %2291 = icmp eq i64 %2290, 2
  %2292 = zext i1 %2291 to i8
  store i8 %2292, i8* %39, align 1
  %2293 = add i64 %2261, -108
  %2294 = add i64 %2260, 38
  store i64 %2294, i64* %3, align 8
  %2295 = inttoptr i64 %2293 to i32*
  %2296 = load i32, i32* %2295, align 4
  %2297 = sext i32 %2296 to i64
  %2298 = shl nsw i64 %2297, 6
  store i64 %2298, i64* %RSI.i2229, align 8
  %2299 = add i64 %2298, %2269
  store i64 %2299, i64* %RDX.i2151, align 8
  %2300 = icmp ult i64 %2299, %2269
  %2301 = icmp ult i64 %2299, %2298
  %2302 = or i1 %2300, %2301
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %14, align 1
  %2304 = trunc i64 %2299 to i32
  %2305 = and i32 %2304, 248
  %2306 = tail call i32 @llvm.ctpop.i32(i32 %2305)
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  %2309 = xor i8 %2308, 1
  store i8 %2309, i8* %21, align 1
  %2310 = xor i64 %2269, %2299
  %2311 = lshr i64 %2310, 4
  %2312 = trunc i64 %2311 to i8
  %2313 = and i8 %2312, 1
  store i8 %2313, i8* %27, align 1
  %2314 = icmp eq i64 %2299, 0
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %30, align 1
  %2316 = lshr i64 %2299, 63
  %2317 = trunc i64 %2316 to i8
  store i8 %2317, i8* %33, align 1
  %2318 = lshr i64 %2297, 57
  %2319 = and i64 %2318, 1
  %2320 = xor i64 %2316, %2286
  %2321 = xor i64 %2316, %2319
  %2322 = add nuw nsw i64 %2320, %2321
  %2323 = icmp eq i64 %2322, 2
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %39, align 1
  %2325 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %2326 = inttoptr i64 %2299 to i32*
  %2327 = add i64 %2260, 48
  store i64 %2327, i64* %3, align 8
  %2328 = load i32, i32* %2326, align 8
  %2329 = shl i64 %2325, 32
  %2330 = ashr exact i64 %2329, 32
  %2331 = sext i32 %2328 to i64
  %2332 = mul nsw i64 %2331, %2330
  %2333 = trunc i64 %2332 to i32
  %2334 = and i64 %2332, 4294967295
  store i64 %2334, i64* %RAX.i2123.pre-phi, align 8
  %2335 = shl i64 %2332, 32
  %2336 = ashr exact i64 %2335, 32
  %2337 = icmp ne i64 %2336, %2332
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %14, align 1
  %2339 = and i32 %2333, 255
  %2340 = tail call i32 @llvm.ctpop.i32(i32 %2339)
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2344 = lshr i32 %2333, 31
  %2345 = trunc i32 %2344 to i8
  store i8 %2345, i8* %33, align 1
  store i8 %2338, i8* %39, align 1
  %2346 = load i64, i64* %RBP.i, align 8
  %2347 = add i64 %2346, -4
  %2348 = add i64 %2260, 52
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i32*
  %2350 = load i32, i32* %2349, align 4
  %2351 = sext i32 %2350 to i64
  %2352 = mul nsw i64 %2351, 832
  store i64 %2352, i64* %RDX.i2151, align 8
  %2353 = lshr i64 %2352, 63
  %2354 = load i64, i64* %RCX.i1445, align 8
  %2355 = add i64 %2352, %2354
  store i64 %2355, i64* %RCX.i1445, align 8
  %2356 = icmp ult i64 %2355, %2354
  %2357 = icmp ult i64 %2355, %2352
  %2358 = or i1 %2356, %2357
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %14, align 1
  %2360 = trunc i64 %2355 to i32
  %2361 = and i32 %2360, 255
  %2362 = tail call i32 @llvm.ctpop.i32(i32 %2361)
  %2363 = trunc i32 %2362 to i8
  %2364 = and i8 %2363, 1
  %2365 = xor i8 %2364, 1
  store i8 %2365, i8* %21, align 1
  %2366 = xor i64 %2354, %2355
  %2367 = lshr i64 %2366, 4
  %2368 = trunc i64 %2367 to i8
  %2369 = and i8 %2368, 1
  store i8 %2369, i8* %27, align 1
  %2370 = icmp eq i64 %2355, 0
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %30, align 1
  %2372 = lshr i64 %2355, 63
  %2373 = trunc i64 %2372 to i8
  store i8 %2373, i8* %33, align 1
  %2374 = lshr i64 %2354, 63
  %2375 = xor i64 %2372, %2374
  %2376 = xor i64 %2372, %2353
  %2377 = add nuw nsw i64 %2375, %2376
  %2378 = icmp eq i64 %2377, 2
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %39, align 1
  %2380 = add i64 %2346, -104
  %2381 = add i64 %2260, 66
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2380 to i32*
  %2383 = load i32, i32* %2382, align 4
  %2384 = sext i32 %2383 to i64
  %2385 = shl nsw i64 %2384, 6
  store i64 %2385, i64* %RDX.i2151, align 8
  %2386 = add i64 %2385, %2355
  store i64 %2386, i64* %RCX.i1445, align 8
  %2387 = icmp ult i64 %2386, %2355
  %2388 = icmp ult i64 %2386, %2385
  %2389 = or i1 %2387, %2388
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %14, align 1
  %2391 = trunc i64 %2386 to i32
  %2392 = and i32 %2391, 255
  %2393 = tail call i32 @llvm.ctpop.i32(i32 %2392)
  %2394 = trunc i32 %2393 to i8
  %2395 = and i8 %2394, 1
  %2396 = xor i8 %2395, 1
  store i8 %2396, i8* %21, align 1
  %2397 = xor i64 %2355, %2386
  %2398 = lshr i64 %2397, 4
  %2399 = trunc i64 %2398 to i8
  %2400 = and i8 %2399, 1
  store i8 %2400, i8* %27, align 1
  %2401 = icmp eq i64 %2386, 0
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %30, align 1
  %2403 = lshr i64 %2386, 63
  %2404 = trunc i64 %2403 to i8
  store i8 %2404, i8* %33, align 1
  %2405 = lshr i64 %2384, 57
  %2406 = and i64 %2405, 1
  %2407 = xor i64 %2403, %2372
  %2408 = xor i64 %2403, %2406
  %2409 = add nuw nsw i64 %2407, %2408
  %2410 = icmp eq i64 %2409, 2
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %39, align 1
  %2412 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %2413 = inttoptr i64 %2386 to i32*
  %2414 = add i64 %2260, 75
  store i64 %2414, i64* %3, align 8
  %2415 = trunc i64 %2412 to i32
  %2416 = load i32, i32* %2413, align 4
  %2417 = add i32 %2416, %2415
  %2418 = zext i32 %2417 to i64
  store i64 %2418, i64* %RAX.i2123.pre-phi, align 8
  %2419 = icmp ult i32 %2417, %2415
  %2420 = icmp ult i32 %2417, %2416
  %2421 = or i1 %2419, %2420
  %2422 = zext i1 %2421 to i8
  store i8 %2422, i8* %14, align 1
  %2423 = and i32 %2417, 255
  %2424 = tail call i32 @llvm.ctpop.i32(i32 %2423)
  %2425 = trunc i32 %2424 to i8
  %2426 = and i8 %2425, 1
  %2427 = xor i8 %2426, 1
  store i8 %2427, i8* %21, align 1
  %2428 = xor i32 %2416, %2415
  %2429 = xor i32 %2428, %2417
  %2430 = lshr i32 %2429, 4
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  store i8 %2432, i8* %27, align 1
  %2433 = icmp eq i32 %2417, 0
  %2434 = zext i1 %2433 to i8
  store i8 %2434, i8* %30, align 1
  %2435 = lshr i32 %2417, 31
  %2436 = trunc i32 %2435 to i8
  store i8 %2436, i8* %33, align 1
  %2437 = lshr i32 %2415, 31
  %2438 = lshr i32 %2416, 31
  %2439 = xor i32 %2435, %2437
  %2440 = xor i32 %2435, %2438
  %2441 = add nuw nsw i32 %2439, %2440
  %2442 = icmp eq i32 %2441, 2
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %39, align 1
  %2444 = load i64, i64* %RBP.i, align 8
  %2445 = add i64 %2444, -112
  %2446 = add i64 %2260, 78
  store i64 %2446, i64* %3, align 8
  %2447 = inttoptr i64 %2445 to i32*
  %2448 = load i32, i32* %2447, align 4
  %2449 = zext i32 %2448 to i64
  store i64 %2449, i64* %RCX.i1445, align 8
  %2450 = add i64 %2260, 80
  store i64 %2450, i64* %3, align 8
  %2451 = trunc i32 %2448 to i5
  switch i5 %2451, label %2455 [
    i5 0, label %routine_sarl__cl___eax.exit1564
    i5 1, label %2452
  ]

; <label>:2452:                                   ; preds = %block_40b1a2
  %2453 = shl nuw i64 %2418, 32
  %2454 = ashr i64 %2453, 33
  br label %2462

; <label>:2455:                                   ; preds = %block_40b1a2
  %2456 = and i32 %2448, 31
  %2457 = zext i32 %2456 to i64
  %2458 = add nsw i64 %2457, -1
  %2459 = sext i32 %2417 to i64
  %2460 = ashr i64 %2459, %2458
  %2461 = lshr i64 %2460, 1
  br label %2462

; <label>:2462:                                   ; preds = %2455, %2452
  %2463 = phi i64 [ %2461, %2455 ], [ %2454, %2452 ]
  %2464 = phi i64 [ %2460, %2455 ], [ %2418, %2452 ]
  %2465 = trunc i64 %2464 to i8
  %2466 = and i8 %2465, 1
  %2467 = trunc i64 %2463 to i32
  %2468 = and i64 %2463, 4294967295
  store i64 %2468, i64* %RAX.i2123.pre-phi, align 8
  store i8 %2466, i8* %14, align 1
  %2469 = and i32 %2467, 255
  %2470 = tail call i32 @llvm.ctpop.i32(i32 %2469)
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  %2473 = xor i8 %2472, 1
  store i8 %2473, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2474 = icmp eq i32 %2467, 0
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %30, align 1
  %2476 = lshr i32 %2467, 31
  %2477 = trunc i32 %2476 to i8
  store i8 %2477, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2478 = trunc i64 %2463 to i32
  br label %routine_sarl__cl___eax.exit1564

routine_sarl__cl___eax.exit1564:                  ; preds = %2462, %block_40b1a2
  %2479 = phi i32 [ %2478, %2462 ], [ %2417, %block_40b1a2 ]
  %2480 = add i64 %2444, -72
  %2481 = add i64 %2260, 83
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i32*
  store i32 %2479, i32* %2482, align 4
  %2483 = load i64, i64* %3, align 8
  %2484 = add i64 %2483, 107
  store i64 %2484, i64* %3, align 8
  br label %block_.L_40b273

block_.L_40b20d:                                  ; preds = %block_.L_40b198
  %2485 = add i64 %2247, -41485
  %2486 = add i64 %2247, 19
  %2487 = load i64, i64* %6, align 8
  %2488 = add i64 %2487, -8
  %2489 = inttoptr i64 %2488 to i64*
  store i64 %2486, i64* %2489, align 8
  store i64 %2488, i64* %6, align 8
  store i64 %2485, i64* %3, align 8
  %2490 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %609)
  %2491 = load i64, i64* %3, align 8
  store i64 7397968, i64* %RCX.i1445, align 8
  store i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64* %RDX.i2151, align 8
  %2492 = load i64, i64* %RBP.i, align 8
  %2493 = add i64 %2492, -4
  %2494 = add i64 %2491, 24
  store i64 %2494, i64* %3, align 8
  %2495 = inttoptr i64 %2493 to i32*
  %2496 = load i32, i32* %2495, align 4
  %2497 = sext i32 %2496 to i64
  %2498 = mul nsw i64 %2497, 384
  store i64 %2498, i64* %RSI.i2229, align 8
  %2499 = lshr i64 %2498, 63
  %2500 = add i64 %2498, ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64)
  store i64 %2500, i64* %RDX.i2151, align 8
  %2501 = icmp ult i64 %2500, ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64)
  %2502 = icmp ult i64 %2500, %2498
  %2503 = or i1 %2501, %2502
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %14, align 1
  %2505 = trunc i64 %2500 to i32
  %2506 = and i32 %2505, 248
  %2507 = tail call i32 @llvm.ctpop.i32(i32 %2506)
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  %2510 = xor i8 %2509, 1
  store i8 %2510, i8* %21, align 1
  %2511 = xor i64 %2500, ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64)
  %2512 = lshr i64 %2511, 4
  %2513 = trunc i64 %2512 to i8
  %2514 = and i8 %2513, 1
  store i8 %2514, i8* %27, align 1
  %2515 = icmp eq i64 %2500, 0
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %30, align 1
  %2517 = lshr i64 %2500, 63
  %2518 = trunc i64 %2517 to i8
  store i8 %2518, i8* %33, align 1
  %2519 = xor i64 %2517, lshr (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 63)
  %2520 = xor i64 %2517, %2499
  %2521 = add nuw nsw i64 %2519, %2520
  %2522 = icmp eq i64 %2521, 2
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %39, align 1
  %2524 = add i64 %2492, -108
  %2525 = add i64 %2491, 38
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2524 to i32*
  %2527 = load i32, i32* %2526, align 4
  %2528 = sext i32 %2527 to i64
  %2529 = shl nsw i64 %2528, 6
  store i64 %2529, i64* %RSI.i2229, align 8
  %2530 = add i64 %2529, %2500
  store i64 %2530, i64* %RDX.i2151, align 8
  %2531 = icmp ult i64 %2530, %2500
  %2532 = icmp ult i64 %2530, %2529
  %2533 = or i1 %2531, %2532
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %14, align 1
  %2535 = trunc i64 %2530 to i32
  %2536 = and i32 %2535, 248
  %2537 = tail call i32 @llvm.ctpop.i32(i32 %2536)
  %2538 = trunc i32 %2537 to i8
  %2539 = and i8 %2538, 1
  %2540 = xor i8 %2539, 1
  store i8 %2540, i8* %21, align 1
  %2541 = xor i64 %2500, %2530
  %2542 = lshr i64 %2541, 4
  %2543 = trunc i64 %2542 to i8
  %2544 = and i8 %2543, 1
  store i8 %2544, i8* %27, align 1
  %2545 = icmp eq i64 %2530, 0
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %30, align 1
  %2547 = lshr i64 %2530, 63
  %2548 = trunc i64 %2547 to i8
  store i8 %2548, i8* %33, align 1
  %2549 = lshr i64 %2528, 57
  %2550 = and i64 %2549, 1
  %2551 = xor i64 %2547, %2517
  %2552 = xor i64 %2547, %2550
  %2553 = add nuw nsw i64 %2551, %2552
  %2554 = icmp eq i64 %2553, 2
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %39, align 1
  %2556 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %2557 = inttoptr i64 %2530 to i32*
  %2558 = add i64 %2491, 48
  store i64 %2558, i64* %3, align 8
  %2559 = load i32, i32* %2557, align 8
  %2560 = shl i64 %2556, 32
  %2561 = ashr exact i64 %2560, 32
  %2562 = sext i32 %2559 to i64
  %2563 = mul nsw i64 %2562, %2561
  %2564 = trunc i64 %2563 to i32
  %2565 = and i64 %2563, 4294967295
  store i64 %2565, i64* %RAX.i2123.pre-phi, align 8
  %2566 = shl i64 %2563, 32
  %2567 = ashr exact i64 %2566, 32
  %2568 = icmp ne i64 %2567, %2563
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %14, align 1
  %2570 = and i32 %2564, 255
  %2571 = tail call i32 @llvm.ctpop.i32(i32 %2570)
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = xor i8 %2573, 1
  store i8 %2574, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %2575 = lshr i32 %2564, 31
  %2576 = trunc i32 %2575 to i8
  store i8 %2576, i8* %33, align 1
  store i8 %2569, i8* %39, align 1
  %2577 = load i64, i64* %RBP.i, align 8
  %2578 = add i64 %2577, -4
  %2579 = add i64 %2491, 52
  store i64 %2579, i64* %3, align 8
  %2580 = inttoptr i64 %2578 to i32*
  %2581 = load i32, i32* %2580, align 4
  %2582 = sext i32 %2581 to i64
  %2583 = mul nsw i64 %2582, 832
  store i64 %2583, i64* %RDX.i2151, align 8
  %2584 = lshr i64 %2583, 63
  %2585 = load i64, i64* %RCX.i1445, align 8
  %2586 = add i64 %2583, %2585
  store i64 %2586, i64* %RCX.i1445, align 8
  %2587 = icmp ult i64 %2586, %2585
  %2588 = icmp ult i64 %2586, %2583
  %2589 = or i1 %2587, %2588
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %14, align 1
  %2591 = trunc i64 %2586 to i32
  %2592 = and i32 %2591, 255
  %2593 = tail call i32 @llvm.ctpop.i32(i32 %2592)
  %2594 = trunc i32 %2593 to i8
  %2595 = and i8 %2594, 1
  %2596 = xor i8 %2595, 1
  store i8 %2596, i8* %21, align 1
  %2597 = xor i64 %2585, %2586
  %2598 = lshr i64 %2597, 4
  %2599 = trunc i64 %2598 to i8
  %2600 = and i8 %2599, 1
  store i8 %2600, i8* %27, align 1
  %2601 = icmp eq i64 %2586, 0
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %30, align 1
  %2603 = lshr i64 %2586, 63
  %2604 = trunc i64 %2603 to i8
  store i8 %2604, i8* %33, align 1
  %2605 = lshr i64 %2585, 63
  %2606 = xor i64 %2603, %2605
  %2607 = xor i64 %2603, %2584
  %2608 = add nuw nsw i64 %2606, %2607
  %2609 = icmp eq i64 %2608, 2
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %39, align 1
  %2611 = add i64 %2577, -104
  %2612 = add i64 %2491, 66
  store i64 %2612, i64* %3, align 8
  %2613 = inttoptr i64 %2611 to i32*
  %2614 = load i32, i32* %2613, align 4
  %2615 = sext i32 %2614 to i64
  %2616 = shl nsw i64 %2615, 6
  store i64 %2616, i64* %RDX.i2151, align 8
  %2617 = add i64 %2616, %2586
  store i64 %2617, i64* %RCX.i1445, align 8
  %2618 = icmp ult i64 %2617, %2586
  %2619 = icmp ult i64 %2617, %2616
  %2620 = or i1 %2618, %2619
  %2621 = zext i1 %2620 to i8
  store i8 %2621, i8* %14, align 1
  %2622 = trunc i64 %2617 to i32
  %2623 = and i32 %2622, 255
  %2624 = tail call i32 @llvm.ctpop.i32(i32 %2623)
  %2625 = trunc i32 %2624 to i8
  %2626 = and i8 %2625, 1
  %2627 = xor i8 %2626, 1
  store i8 %2627, i8* %21, align 1
  %2628 = xor i64 %2586, %2617
  %2629 = lshr i64 %2628, 4
  %2630 = trunc i64 %2629 to i8
  %2631 = and i8 %2630, 1
  store i8 %2631, i8* %27, align 1
  %2632 = icmp eq i64 %2617, 0
  %2633 = zext i1 %2632 to i8
  store i8 %2633, i8* %30, align 1
  %2634 = lshr i64 %2617, 63
  %2635 = trunc i64 %2634 to i8
  store i8 %2635, i8* %33, align 1
  %2636 = lshr i64 %2615, 57
  %2637 = and i64 %2636, 1
  %2638 = xor i64 %2634, %2603
  %2639 = xor i64 %2634, %2637
  %2640 = add nuw nsw i64 %2638, %2639
  %2641 = icmp eq i64 %2640, 2
  %2642 = zext i1 %2641 to i8
  store i8 %2642, i8* %39, align 1
  %2643 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %2644 = inttoptr i64 %2617 to i32*
  %2645 = add i64 %2491, 75
  store i64 %2645, i64* %3, align 8
  %2646 = trunc i64 %2643 to i32
  %2647 = load i32, i32* %2644, align 4
  %2648 = add i32 %2647, %2646
  %2649 = zext i32 %2648 to i64
  store i64 %2649, i64* %RAX.i2123.pre-phi, align 8
  %2650 = icmp ult i32 %2648, %2646
  %2651 = icmp ult i32 %2648, %2647
  %2652 = or i1 %2650, %2651
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %14, align 1
  %2654 = and i32 %2648, 255
  %2655 = tail call i32 @llvm.ctpop.i32(i32 %2654)
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = xor i8 %2657, 1
  store i8 %2658, i8* %21, align 1
  %2659 = xor i32 %2647, %2646
  %2660 = xor i32 %2659, %2648
  %2661 = lshr i32 %2660, 4
  %2662 = trunc i32 %2661 to i8
  %2663 = and i8 %2662, 1
  store i8 %2663, i8* %27, align 1
  %2664 = icmp eq i32 %2648, 0
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %30, align 1
  %2666 = lshr i32 %2648, 31
  %2667 = trunc i32 %2666 to i8
  store i8 %2667, i8* %33, align 1
  %2668 = lshr i32 %2646, 31
  %2669 = lshr i32 %2647, 31
  %2670 = xor i32 %2666, %2668
  %2671 = xor i32 %2666, %2669
  %2672 = add nuw nsw i32 %2670, %2671
  %2673 = icmp eq i32 %2672, 2
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %39, align 1
  %2675 = load i64, i64* %RBP.i, align 8
  %2676 = add i64 %2675, -112
  %2677 = add i64 %2491, 78
  store i64 %2677, i64* %3, align 8
  %2678 = inttoptr i64 %2676 to i32*
  %2679 = load i32, i32* %2678, align 4
  %2680 = zext i32 %2679 to i64
  store i64 %2680, i64* %RCX.i1445, align 8
  %2681 = add i64 %2491, 80
  store i64 %2681, i64* %3, align 8
  %2682 = trunc i32 %2679 to i5
  switch i5 %2682, label %2686 [
    i5 0, label %routine_sarl__cl___eax.exit1503
    i5 1, label %2683
  ]

; <label>:2683:                                   ; preds = %block_.L_40b20d
  %2684 = shl nuw i64 %2649, 32
  %2685 = ashr i64 %2684, 33
  br label %2693

; <label>:2686:                                   ; preds = %block_.L_40b20d
  %2687 = and i32 %2679, 31
  %2688 = zext i32 %2687 to i64
  %2689 = add nsw i64 %2688, -1
  %2690 = sext i32 %2648 to i64
  %2691 = ashr i64 %2690, %2689
  %2692 = lshr i64 %2691, 1
  br label %2693

; <label>:2693:                                   ; preds = %2686, %2683
  %2694 = phi i64 [ %2692, %2686 ], [ %2685, %2683 ]
  %2695 = phi i64 [ %2691, %2686 ], [ %2649, %2683 ]
  %2696 = trunc i64 %2695 to i8
  %2697 = and i8 %2696, 1
  %2698 = trunc i64 %2694 to i32
  %2699 = and i64 %2694, 4294967295
  store i64 %2699, i64* %RAX.i2123.pre-phi, align 8
  store i8 %2697, i8* %14, align 1
  %2700 = and i32 %2698, 255
  %2701 = tail call i32 @llvm.ctpop.i32(i32 %2700)
  %2702 = trunc i32 %2701 to i8
  %2703 = and i8 %2702, 1
  %2704 = xor i8 %2703, 1
  store i8 %2704, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2705 = icmp eq i32 %2698, 0
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %30, align 1
  %2707 = lshr i32 %2698, 31
  %2708 = trunc i32 %2707 to i8
  store i8 %2708, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2709 = trunc i64 %2694 to i32
  br label %routine_sarl__cl___eax.exit1503

routine_sarl__cl___eax.exit1503:                  ; preds = %2693, %block_.L_40b20d
  %2710 = phi i32 [ %2709, %2693 ], [ %2648, %block_.L_40b20d ]
  %2711 = add i64 %2675, -72
  %2712 = add i64 %2491, 83
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2711 to i32*
  store i32 %2710, i32* %2713, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_40b273

block_.L_40b273:                                  ; preds = %routine_sarl__cl___eax.exit1503, %routine_sarl__cl___eax.exit1564
  %2714 = phi i64 [ %.pre130, %routine_sarl__cl___eax.exit1503 ], [ %2484, %routine_sarl__cl___eax.exit1564 ]
  %MEMORY.9 = phi %struct.Memory* [ %2490, %routine_sarl__cl___eax.exit1503 ], [ %2259, %routine_sarl__cl___eax.exit1564 ]
  %2715 = add i64 %2714, 5
  store i64 %2715, i64* %3, align 8
  br label %block_.L_40b278

block_.L_40b278:                                  ; preds = %block_.L_40b273, %block_40b17d
  %storemerge = phi i64 [ %2221, %block_40b17d ], [ %2715, %block_.L_40b273 ]
  %MEMORY.10 = phi %struct.Memory* [ %2213, %block_40b17d ], [ %MEMORY.9, %block_.L_40b273 ]
  %2716 = load i64, i64* %RBP.i, align 8
  %2717 = add i64 %2716, -4
  %2718 = add i64 %storemerge, 3
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2717 to i32*
  %2720 = load i32, i32* %2719, align 4
  %2721 = add i32 %2720, 1
  %2722 = shl i32 %2721, 2
  %2723 = zext i32 %2722 to i64
  store i64 %2723, i64* %RAX.i2123.pre-phi, align 8
  %2724 = lshr i32 %2721, 30
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  store i8 %2726, i8* %14, align 1
  %2727 = and i32 %2722, 252
  %2728 = tail call i32 @llvm.ctpop.i32(i32 %2727)
  %2729 = trunc i32 %2728 to i8
  %2730 = and i8 %2729, 1
  %2731 = xor i8 %2730, 1
  store i8 %2731, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2732 = icmp eq i32 %2722, 0
  %2733 = zext i1 %2732 to i8
  store i8 %2733, i8* %30, align 1
  %2734 = lshr i32 %2721, 29
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  store i8 %2736, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2737 = add i64 %2716, -8
  %2738 = add i64 %storemerge, 12
  store i64 %2738, i64* %3, align 8
  %2739 = inttoptr i64 %2737 to i32*
  %2740 = load i32, i32* %2739, align 4
  %2741 = sub i32 %2740, %2722
  %2742 = zext i32 %2741 to i64
  store i64 %2742, i64* %RCX.i1445, align 8
  %2743 = icmp ult i32 %2740, %2722
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %14, align 1
  %2745 = and i32 %2741, 255
  %2746 = tail call i32 @llvm.ctpop.i32(i32 %2745)
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  %2749 = xor i8 %2748, 1
  store i8 %2749, i8* %21, align 1
  %2750 = xor i32 %2722, %2740
  %2751 = xor i32 %2750, %2741
  %2752 = lshr i32 %2751, 4
  %2753 = trunc i32 %2752 to i8
  %2754 = and i8 %2753, 1
  store i8 %2754, i8* %27, align 1
  %2755 = icmp eq i32 %2741, 0
  %2756 = zext i1 %2755 to i8
  store i8 %2756, i8* %30, align 1
  %2757 = lshr i32 %2741, 31
  %2758 = trunc i32 %2757 to i8
  store i8 %2758, i8* %33, align 1
  %2759 = lshr i32 %2740, 31
  %2760 = lshr i32 %2721, 29
  %2761 = and i32 %2760, 1
  %2762 = xor i32 %2761, %2759
  %2763 = xor i32 %2757, %2759
  %2764 = add nuw nsw i32 %2763, %2762
  %2765 = icmp eq i32 %2764, 2
  %2766 = zext i1 %2765 to i8
  store i8 %2766, i8* %39, align 1
  %2767 = load i64, i64* %RBP.i, align 8
  %2768 = add i64 %2767, -8
  %2769 = add i64 %storemerge, 17
  store i64 %2769, i64* %3, align 8
  %2770 = inttoptr i64 %2768 to i32*
  store i32 %2741, i32* %2770, align 4
  %2771 = load i64, i64* %RBP.i, align 8
  %2772 = add i64 %2771, -72
  %2773 = load i64, i64* %3, align 8
  %2774 = add i64 %2773, 3
  store i64 %2774, i64* %3, align 8
  %2775 = inttoptr i64 %2772 to i32*
  %2776 = load i32, i32* %2775, align 4
  %2777 = zext i32 %2776 to i64
  store i64 %2777, i64* %RDI.i2224, align 8
  %2778 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2778, i64* %RDX.i2151, align 8
  %2779 = add i64 %2778, 13112
  %2780 = add i64 %2773, 17
  store i64 %2780, i64* %3, align 8
  %2781 = inttoptr i64 %2779 to i32*
  %2782 = load i32, i32* %2781, align 4
  %2783 = zext i32 %2782 to i64
  store i64 %2783, i64* %RSI.i2229, align 8
  %2784 = add i64 %2773, 433863
  %2785 = add i64 %2773, 22
  %2786 = load i64, i64* %6, align 8
  %2787 = add i64 %2786, -8
  %2788 = inttoptr i64 %2787 to i64*
  store i64 %2785, i64* %2788, align 8
  store i64 %2787, i64* %6, align 8
  store i64 %2784, i64* %3, align 8
  %call2_40b29a = tail call %struct.Memory* @sub_475150.sign(%struct.State* nonnull %0, i64 %2784, %struct.Memory* %MEMORY.10)
  %2789 = load i64, i64* %3, align 8
  store i64 2, i64* %RCX.i1445, align 8
  store i64 ptrtoint (%G__0x6d4600_type* @G__0x6d4600 to i64), i64* %RDX.i2151, align 8
  %2790 = load i64, i64* %RBP.i, align 8
  %2791 = add i64 %2790, -4
  %2792 = add i64 %2789, 19
  store i64 %2792, i64* %3, align 8
  %2793 = inttoptr i64 %2791 to i32*
  %2794 = load i32, i32* %2793, align 4
  %2795 = sext i32 %2794 to i64
  %2796 = shl nsw i64 %2795, 6
  store i64 %2796, i64* %R8.i1611, align 8
  %2797 = add i64 %2796, ptrtoint (%G__0x6d4600_type* @G__0x6d4600 to i64)
  store i64 %2797, i64* %RDX.i2151, align 8
  %2798 = icmp ult i64 %2797, ptrtoint (%G__0x6d4600_type* @G__0x6d4600 to i64)
  %2799 = icmp ult i64 %2797, %2796
  %2800 = or i1 %2798, %2799
  %2801 = zext i1 %2800 to i8
  store i8 %2801, i8* %14, align 1
  %2802 = trunc i64 %2797 to i32
  %2803 = and i32 %2802, 248
  %2804 = tail call i32 @llvm.ctpop.i32(i32 %2803)
  %2805 = trunc i32 %2804 to i8
  %2806 = and i8 %2805, 1
  %2807 = xor i8 %2806, 1
  store i8 %2807, i8* %21, align 1
  %2808 = xor i64 %2797, ptrtoint (%G__0x6d4600_type* @G__0x6d4600 to i64)
  %2809 = lshr i64 %2808, 4
  %2810 = trunc i64 %2809 to i8
  %2811 = and i8 %2810, 1
  store i8 %2811, i8* %27, align 1
  %2812 = icmp eq i64 %2797, 0
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %30, align 1
  %2814 = lshr i64 %2797, 63
  %2815 = trunc i64 %2814 to i8
  store i8 %2815, i8* %33, align 1
  %2816 = lshr i64 %2795, 57
  %2817 = and i64 %2816, 1
  %2818 = xor i64 %2814, lshr (i64 ptrtoint (%G__0x6d4600_type* @G__0x6d4600 to i64), i64 63)
  %2819 = xor i64 %2814, %2817
  %2820 = add nuw nsw i64 %2818, %2819
  %2821 = icmp eq i64 %2820, 2
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %39, align 1
  %2823 = add i64 %2790, -8
  %2824 = add i64 %2789, 29
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to i32*
  %2826 = load i32, i32* %2825, align 4
  %2827 = zext i32 %2826 to i64
  store i64 %2827, i64* %RSI.i2229, align 8
  %2828 = add i64 %2790, -152
  %2829 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %2830 = add i64 %2789, 35
  store i64 %2830, i64* %3, align 8
  %2831 = inttoptr i64 %2828 to i32*
  store i32 %2829, i32* %2831, align 4
  %2832 = load i32, i32* %ESI.i1397, align 4
  %2833 = zext i32 %2832 to i64
  %2834 = load i64, i64* %3, align 8
  store i64 %2833, i64* %RAX.i2123.pre-phi, align 8
  %2835 = load i64, i64* %RBP.i, align 8
  %2836 = add i64 %2835, -160
  %2837 = load i64, i64* %RDX.i2151, align 8
  %2838 = add i64 %2834, 9
  store i64 %2838, i64* %3, align 8
  %2839 = inttoptr i64 %2836 to i64*
  store i64 %2837, i64* %2839, align 8
  %2840 = load i64, i64* %3, align 8
  %2841 = load i32, i32* %EAX.i2104.pre-phi, align 8
  %2842 = sext i32 %2841 to i64
  %2843 = lshr i64 %2842, 32
  store i64 %2843, i64* %523, align 8
  %2844 = load i32, i32* %ECX.i2242, align 4
  %2845 = add i64 %2840, 3
  store i64 %2845, i64* %3, align 8
  %2846 = zext i32 %2841 to i64
  %2847 = sext i32 %2844 to i64
  %2848 = shl nuw i64 %2843, 32
  %2849 = or i64 %2848, %2846
  %2850 = sdiv i64 %2849, %2847
  %2851 = shl i64 %2850, 32
  %2852 = ashr exact i64 %2851, 32
  %2853 = icmp eq i64 %2850, %2852
  br i1 %2853, label %2856, label %2854

; <label>:2854:                                   ; preds = %block_.L_40b278
  %2855 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2845, %struct.Memory* %call2_40b29a)
  %.pre131 = load i64, i64* %RDX.i2151, align 8
  %.pre132 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit1443

; <label>:2856:                                   ; preds = %block_.L_40b278
  %2857 = srem i64 %2849, %2847
  %2858 = and i64 %2850, 4294967295
  store i64 %2858, i64* %RAX.i2123.pre-phi, align 8
  %2859 = and i64 %2857, 4294967295
  store i64 %2859, i64* %RDX.i2151, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1443

routine_idivl__ecx.exit1443:                      ; preds = %2856, %2854
  %2860 = phi i64 [ %.pre132, %2854 ], [ %2845, %2856 ]
  %2861 = phi i64 [ %.pre131, %2854 ], [ %2859, %2856 ]
  %2862 = phi %struct.Memory* [ %2855, %2854 ], [ %call2_40b29a, %2856 ]
  %2863 = trunc i64 %2861 to i32
  %2864 = shl i32 %2863, 1
  %2865 = icmp slt i32 %2863, 0
  %2866 = icmp slt i32 %2864, 0
  %2867 = xor i1 %2865, %2866
  %2868 = zext i32 %2864 to i64
  store i64 %2868, i64* %RDX.i2151, align 8
  %.lobit53 = lshr i32 %2863, 31
  %2869 = trunc i32 %.lobit53 to i8
  store i8 %2869, i8* %14, align 1
  %2870 = and i32 %2864, 254
  %2871 = tail call i32 @llvm.ctpop.i32(i32 %2870)
  %2872 = trunc i32 %2871 to i8
  %2873 = and i8 %2872, 1
  %2874 = xor i8 %2873, 1
  store i8 %2874, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2875 = icmp eq i32 %2864, 0
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %30, align 1
  %2877 = lshr i32 %2863, 30
  %2878 = trunc i32 %2877 to i8
  %2879 = and i8 %2878, 1
  store i8 %2879, i8* %33, align 1
  %2880 = zext i1 %2867 to i8
  store i8 %2880, i8* %39, align 1
  %2881 = load i64, i64* %RBP.i, align 8
  %2882 = add i64 %2881, -12
  %2883 = add i64 %2860, 5
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2882 to i32*
  %2885 = load i32, i32* %2884, align 4
  %2886 = zext i32 %2885 to i64
  store i64 %2886, i64* %RSI.i2229, align 8
  store i64 %2886, i64* %RAX.i2123.pre-phi, align 8
  %2887 = add i64 %2881, -164
  %2888 = add i64 %2860, 13
  store i64 %2888, i64* %3, align 8
  %2889 = inttoptr i64 %2887 to i32*
  store i32 %2864, i32* %2889, align 4
  %2890 = load i64, i64* %3, align 8
  %2891 = load i32, i32* %EAX.i2104.pre-phi, align 8
  %2892 = sext i32 %2891 to i64
  %2893 = lshr i64 %2892, 32
  store i64 %2893, i64* %523, align 8
  %2894 = load i32, i32* %ECX.i2242, align 4
  %2895 = add i64 %2890, 3
  store i64 %2895, i64* %3, align 8
  %2896 = zext i32 %2891 to i64
  %2897 = sext i32 %2894 to i64
  %2898 = shl nuw i64 %2893, 32
  %2899 = or i64 %2898, %2896
  %2900 = sdiv i64 %2899, %2897
  %2901 = shl i64 %2900, 32
  %2902 = ashr exact i64 %2901, 32
  %2903 = icmp eq i64 %2900, %2902
  br i1 %2903, label %2906, label %2904

; <label>:2904:                                   ; preds = %routine_idivl__ecx.exit1443
  %2905 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2895, %struct.Memory* %2862)
  %.pre133 = load i64, i64* %3, align 8
  %.pre134 = load i32, i32* %EDX.i1427, align 4
  br label %routine_idivl__ecx.exit1425

; <label>:2906:                                   ; preds = %routine_idivl__ecx.exit1443
  %2907 = srem i64 %2899, %2897
  %2908 = and i64 %2900, 4294967295
  store i64 %2908, i64* %RAX.i2123.pre-phi, align 8
  %2909 = and i64 %2907, 4294967295
  store i64 %2909, i64* %RDX.i2151, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2910 = trunc i64 %2907 to i32
  br label %routine_idivl__ecx.exit1425

routine_idivl__ecx.exit1425:                      ; preds = %2906, %2904
  %2911 = phi i32 [ %.pre134, %2904 ], [ %2910, %2906 ]
  %2912 = phi i64 [ %.pre133, %2904 ], [ %2895, %2906 ]
  %2913 = phi %struct.Memory* [ %2905, %2904 ], [ %2862, %2906 ]
  %2914 = load i64, i64* %RBP.i, align 8
  %2915 = add i64 %2914, -164
  %2916 = add i64 %2912, 6
  store i64 %2916, i64* %3, align 8
  %2917 = inttoptr i64 %2915 to i32*
  %2918 = load i32, i32* %2917, align 4
  %2919 = add i32 %2911, %2918
  %2920 = zext i32 %2919 to i64
  store i64 %2920, i64* %RSI.i2229, align 8
  %2921 = icmp eq i32 %2919, 0
  %2922 = zext i1 %2921 to i8
  %2923 = lshr i32 %2919, 31
  %2924 = trunc i32 %2923 to i8
  %2925 = sext i32 %2919 to i64
  %2926 = shl nsw i64 %2925, 4
  store i64 %2926, i64* %R8.i1611, align 8
  store i8 %2924, i8* %14, align 1
  %2927 = trunc i64 %2926 to i32
  %2928 = and i32 %2927, 240
  %2929 = tail call i32 @llvm.ctpop.i32(i32 %2928)
  %2930 = trunc i32 %2929 to i8
  %2931 = and i8 %2930, 1
  %2932 = xor i8 %2931, 1
  store i8 %2932, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %2922, i8* %30, align 1
  %2933 = lshr i64 %2925, 59
  %2934 = trunc i64 %2933 to i8
  %2935 = and i8 %2934, 1
  store i8 %2935, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %R9.i1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %2936 = add i64 %2914, -160
  %2937 = add i64 %2912, 22
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i64*
  %2939 = load i64, i64* %2938, align 8
  %2940 = add i64 %2926, %2939
  store i64 %2940, i64* %R9.i1411, align 8
  %2941 = icmp ult i64 %2940, %2939
  %2942 = icmp ult i64 %2940, %2926
  %2943 = or i1 %2941, %2942
  %2944 = zext i1 %2943 to i8
  store i8 %2944, i8* %14, align 1
  %2945 = trunc i64 %2940 to i32
  %2946 = and i32 %2945, 255
  %2947 = tail call i32 @llvm.ctpop.i32(i32 %2946)
  %2948 = trunc i32 %2947 to i8
  %2949 = and i8 %2948, 1
  %2950 = xor i8 %2949, 1
  store i8 %2950, i8* %21, align 1
  %2951 = xor i64 %2926, %2939
  %2952 = xor i64 %2951, %2940
  %2953 = lshr i64 %2952, 4
  %2954 = trunc i64 %2953 to i8
  %2955 = and i8 %2954, 1
  store i8 %2955, i8* %27, align 1
  %2956 = icmp eq i64 %2940, 0
  %2957 = zext i1 %2956 to i8
  store i8 %2957, i8* %30, align 1
  %2958 = lshr i64 %2940, 63
  %2959 = trunc i64 %2958 to i8
  store i8 %2959, i8* %33, align 1
  %2960 = lshr i64 %2939, 63
  %2961 = lshr i64 %2925, 59
  %2962 = and i64 %2961, 1
  %2963 = xor i64 %2958, %2960
  %2964 = xor i64 %2958, %2962
  %2965 = add nuw nsw i64 %2963, %2964
  %2966 = icmp eq i64 %2965, 2
  %2967 = zext i1 %2966 to i8
  store i8 %2967, i8* %39, align 1
  %2968 = load i64, i64* %RBP.i, align 8
  %2969 = add i64 %2968, -8
  %2970 = add i64 %2912, 28
  store i64 %2970, i64* %3, align 8
  %2971 = inttoptr i64 %2969 to i32*
  %2972 = load i32, i32* %2971, align 4
  %2973 = zext i32 %2972 to i64
  store i64 %2973, i64* %RAX.i2123.pre-phi, align 8
  %2974 = sext i32 %2972 to i64
  %2975 = lshr i64 %2974, 32
  store i64 %2975, i64* %523, align 8
  %2976 = load i32, i32* %ECX.i2242, align 4
  %2977 = add i64 %2912, 33
  store i64 %2977, i64* %3, align 8
  %2978 = sext i32 %2976 to i64
  %2979 = shl nuw i64 %2975, 32
  %2980 = or i64 %2979, %2973
  %2981 = sdiv i64 %2980, %2978
  %2982 = shl i64 %2981, 32
  %2983 = ashr exact i64 %2982, 32
  %2984 = icmp eq i64 %2981, %2983
  br i1 %2984, label %2987, label %2985

; <label>:2985:                                   ; preds = %routine_idivl__ecx.exit1425
  %2986 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2977, %struct.Memory* %2913)
  %.pre135 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %.pre136 = load i64, i64* %3, align 8
  %.pre137 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1395

; <label>:2987:                                   ; preds = %routine_idivl__ecx.exit1425
  %2988 = srem i64 %2980, %2978
  %2989 = and i64 %2981, 4294967295
  store i64 %2989, i64* %RAX.i2123.pre-phi, align 8
  %2990 = and i64 %2988, 4294967295
  store i64 %2990, i64* %RDX.i2151, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1395

routine_idivl__ecx.exit1395:                      ; preds = %2987, %2985
  %2991 = phi i64 [ %.pre137, %2985 ], [ %2968, %2987 ]
  %2992 = phi i64 [ %.pre136, %2985 ], [ %2977, %2987 ]
  %2993 = phi i64 [ %.pre135, %2985 ], [ %2989, %2987 ]
  %2994 = phi %struct.Memory* [ %2986, %2985 ], [ %2913, %2987 ]
  %2995 = trunc i64 %2993 to i32
  %2996 = shl i32 %2995, 1
  %2997 = icmp slt i32 %2995, 0
  %2998 = icmp slt i32 %2996, 0
  %2999 = xor i1 %2997, %2998
  %3000 = zext i32 %2996 to i64
  store i64 %3000, i64* %RAX.i2123.pre-phi, align 8
  %.lobit55 = lshr i32 %2995, 31
  %3001 = trunc i32 %.lobit55 to i8
  store i8 %3001, i8* %14, align 1
  %3002 = and i32 %2996, 254
  %3003 = tail call i32 @llvm.ctpop.i32(i32 %3002)
  %3004 = trunc i32 %3003 to i8
  %3005 = and i8 %3004, 1
  %3006 = xor i8 %3005, 1
  store i8 %3006, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3007 = icmp eq i32 %2996, 0
  %3008 = zext i1 %3007 to i8
  store i8 %3008, i8* %30, align 1
  %3009 = lshr i32 %2995, 30
  %3010 = trunc i32 %3009 to i8
  %3011 = and i8 %3010, 1
  store i8 %3011, i8* %33, align 1
  %3012 = zext i1 %2999 to i8
  store i8 %3012, i8* %39, align 1
  %3013 = add i64 %2991, -12
  %3014 = add i64 %2992, 5
  store i64 %3014, i64* %3, align 8
  %3015 = inttoptr i64 %3013 to i32*
  %3016 = load i32, i32* %3015, align 4
  %3017 = zext i32 %3016 to i64
  store i64 %3017, i64* %RSI.i2229, align 8
  %3018 = add i64 %2991, -168
  %3019 = add i64 %2992, 11
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3018 to i32*
  store i32 %2996, i32* %3020, align 4
  %3021 = load i32, i32* %ESI.i1397, align 4
  %3022 = zext i32 %3021 to i64
  %3023 = load i64, i64* %3, align 8
  store i64 %3022, i64* %RAX.i2123.pre-phi, align 8
  %3024 = sext i32 %3021 to i64
  %3025 = lshr i64 %3024, 32
  store i64 %3025, i64* %523, align 8
  %3026 = load i32, i32* %ECX.i2242, align 4
  %3027 = add i64 %3023, 5
  store i64 %3027, i64* %3, align 8
  %3028 = sext i32 %3026 to i64
  %3029 = shl nuw i64 %3025, 32
  %3030 = or i64 %3029, %3022
  %3031 = sdiv i64 %3030, %3028
  %3032 = shl i64 %3031, 32
  %3033 = ashr exact i64 %3032, 32
  %3034 = icmp eq i64 %3031, %3033
  br i1 %3034, label %3037, label %3035

; <label>:3035:                                   ; preds = %routine_idivl__ecx.exit1395
  %3036 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3027, %struct.Memory* %2994)
  %.pre138 = load i64, i64* %3, align 8
  %.pre139 = load i32, i32* %EAX.i2104.pre-phi, align 4
  br label %routine_idivl__ecx.exit

; <label>:3037:                                   ; preds = %routine_idivl__ecx.exit1395
  %3038 = srem i64 %3030, %3028
  %3039 = and i64 %3031, 4294967295
  store i64 %3039, i64* %RAX.i2123.pre-phi, align 8
  %3040 = and i64 %3038, 4294967295
  store i64 %3040, i64* %RDX.i2151, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3041 = trunc i64 %3031 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3037, %3035
  %3042 = phi i32 [ %.pre139, %3035 ], [ %3041, %3037 ]
  %3043 = phi i64 [ %.pre138, %3035 ], [ %3027, %3037 ]
  %3044 = phi %struct.Memory* [ %3036, %3035 ], [ %2994, %3037 ]
  %3045 = load i64, i64* %RBP.i, align 8
  %3046 = add i64 %3045, -168
  %3047 = add i64 %3043, 6
  store i64 %3047, i64* %3, align 8
  %3048 = inttoptr i64 %3046 to i32*
  %3049 = load i32, i32* %3048, align 4
  %3050 = add i32 %3042, %3049
  %3051 = zext i32 %3050 to i64
  store i64 %3051, i64* %RCX.i1445, align 8
  %3052 = icmp ult i32 %3050, %3049
  %3053 = icmp ult i32 %3050, %3042
  %3054 = or i1 %3052, %3053
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %14, align 1
  %3056 = and i32 %3050, 255
  %3057 = tail call i32 @llvm.ctpop.i32(i32 %3056)
  %3058 = trunc i32 %3057 to i8
  %3059 = and i8 %3058, 1
  %3060 = xor i8 %3059, 1
  store i8 %3060, i8* %21, align 1
  %3061 = xor i32 %3042, %3049
  %3062 = xor i32 %3061, %3050
  %3063 = lshr i32 %3062, 4
  %3064 = trunc i32 %3063 to i8
  %3065 = and i8 %3064, 1
  store i8 %3065, i8* %27, align 1
  %3066 = icmp eq i32 %3050, 0
  %3067 = zext i1 %3066 to i8
  store i8 %3067, i8* %30, align 1
  %3068 = lshr i32 %3050, 31
  %3069 = trunc i32 %3068 to i8
  store i8 %3069, i8* %33, align 1
  %3070 = lshr i32 %3049, 31
  %3071 = lshr i32 %3042, 31
  %3072 = xor i32 %3068, %3070
  %3073 = xor i32 %3068, %3071
  %3074 = add nuw nsw i32 %3072, %3073
  %3075 = icmp eq i32 %3074, 2
  %3076 = zext i1 %3075 to i8
  store i8 %3076, i8* %39, align 1
  %3077 = sext i32 %3050 to i64
  store i64 %3077, i64* %R8.i1611, align 8
  %3078 = add i64 %3045, -152
  %3079 = add i64 %3043, 17
  store i64 %3079, i64* %3, align 8
  %3080 = inttoptr i64 %3078 to i32*
  %3081 = load i32, i32* %3080, align 4
  %3082 = zext i32 %3081 to i64
  store i64 %3082, i64* %RAX.i2123.pre-phi, align 8
  %3083 = load i64, i64* %R9.i1411, align 8
  %3084 = shl nsw i64 %3077, 2
  %3085 = add i64 %3084, %3083
  %3086 = add i64 %3043, 21
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to i32*
  store i32 %3081, i32* %3087, align 4
  %3088 = load i64, i64* %RBP.i, align 8
  %3089 = add i64 %3088, -140
  %3090 = load i64, i64* %3, align 8
  %3091 = add i64 %3090, 7
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3089 to i32*
  %3093 = load i32, i32* %3092, align 4
  store i8 0, i8* %14, align 1
  %3094 = and i32 %3093, 255
  %3095 = tail call i32 @llvm.ctpop.i32(i32 %3094)
  %3096 = trunc i32 %3095 to i8
  %3097 = and i8 %3096, 1
  %3098 = xor i8 %3097, 1
  store i8 %3098, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3099 = icmp eq i32 %3093, 0
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %30, align 1
  %3101 = lshr i32 %3093, 31
  %3102 = trunc i32 %3101 to i8
  store i8 %3102, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v161 = select i1 %3099, i64 54, i64 13
  %3103 = add i64 %3090, %.v161
  store i64 %3103, i64* %3, align 8
  br i1 %3099, label %block_.L_40b35c, label %block_40b333

block_40b333:                                     ; preds = %routine_idivl__ecx.exit
  %3104 = add i64 %3088, -72
  %3105 = add i64 %3103, 3
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i32*
  %3107 = load i32, i32* %3106, align 4
  %3108 = zext i32 %3107 to i64
  store i64 %3108, i64* %RDI.i2224, align 8
  %3109 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3109, i64* %RAX.i2123.pre-phi, align 8
  %3110 = add i64 %3109, 13112
  %3111 = add i64 %3103, 17
  store i64 %3111, i64* %3, align 8
  %3112 = inttoptr i64 %3110 to i32*
  %3113 = load i32, i32* %3112, align 4
  %3114 = zext i32 %3113 to i64
  store i64 %3114, i64* %RSI.i2229, align 8
  %3115 = add i64 %3103, 433693
  %3116 = add i64 %3103, 22
  %3117 = load i64, i64* %6, align 8
  %3118 = add i64 %3117, -8
  %3119 = inttoptr i64 %3118 to i64*
  store i64 %3116, i64* %3119, align 8
  store i64 %3118, i64* %6, align 8
  store i64 %3115, i64* %3, align 8
  %call2_40b344 = tail call %struct.Memory* @sub_475150.sign(%struct.State* nonnull %0, i64 %3115, %struct.Memory* %3044)
  %3120 = load i64, i64* %3, align 8
  %3121 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3121, i64* %RCX.i1445, align 8
  %3122 = add i64 %3121, 13112
  %3123 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %3124 = add i64 %3120, 14
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3122 to i32*
  store i32 %3123, i32* %3125, align 4
  %3126 = load i64, i64* %3, align 8
  %3127 = add i64 %3126, 516
  br label %block_.L_40b55b

block_.L_40b35c:                                  ; preds = %routine_idivl__ecx.exit
  %3128 = add i64 %3088, -104
  %3129 = add i64 %3103, 4
  store i64 %3129, i64* %3, align 8
  %3130 = inttoptr i64 %3128 to i32*
  %3131 = load i32, i32* %3130, align 4
  %3132 = add i32 %3131, -4
  %3133 = icmp ult i32 %3131, 4
  %3134 = zext i1 %3133 to i8
  store i8 %3134, i8* %14, align 1
  %3135 = and i32 %3132, 255
  %3136 = tail call i32 @llvm.ctpop.i32(i32 %3135)
  %3137 = trunc i32 %3136 to i8
  %3138 = and i8 %3137, 1
  %3139 = xor i8 %3138, 1
  store i8 %3139, i8* %21, align 1
  %3140 = xor i32 %3132, %3131
  %3141 = lshr i32 %3140, 4
  %3142 = trunc i32 %3141 to i8
  %3143 = and i8 %3142, 1
  store i8 %3143, i8* %27, align 1
  %3144 = icmp eq i32 %3132, 0
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %30, align 1
  %3146 = lshr i32 %3132, 31
  %3147 = trunc i32 %3146 to i8
  store i8 %3147, i8* %33, align 1
  %3148 = lshr i32 %3131, 31
  %3149 = xor i32 %3146, %3148
  %3150 = add nuw nsw i32 %3149, %3148
  %3151 = icmp eq i32 %3150, 2
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %39, align 1
  %3153 = icmp ne i8 %3147, 0
  %3154 = xor i1 %3153, %3151
  %.v160 = select i1 %3154, i64 10, i64 266
  %3155 = add i64 %3103, %.v160
  %3156 = add i64 %3088, -100
  %3157 = add i64 %3155, 4
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i32*
  %3159 = load i32, i32* %3158, align 4
  %3160 = add i32 %3159, -1
  %3161 = icmp eq i32 %3159, 0
  %3162 = zext i1 %3161 to i8
  store i8 %3162, i8* %14, align 1
  %3163 = and i32 %3160, 255
  %3164 = tail call i32 @llvm.ctpop.i32(i32 %3163)
  %3165 = trunc i32 %3164 to i8
  %3166 = and i8 %3165, 1
  %3167 = xor i8 %3166, 1
  store i8 %3167, i8* %21, align 1
  %3168 = xor i32 %3160, %3159
  %3169 = lshr i32 %3168, 4
  %3170 = trunc i32 %3169 to i8
  %3171 = and i8 %3170, 1
  store i8 %3171, i8* %27, align 1
  %3172 = icmp eq i32 %3160, 0
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %30, align 1
  %3174 = lshr i32 %3160, 31
  %3175 = trunc i32 %3174 to i8
  store i8 %3175, i8* %33, align 1
  %3176 = lshr i32 %3159, 31
  %3177 = xor i32 %3174, %3176
  %3178 = add nuw nsw i32 %3177, %3176
  %3179 = icmp eq i32 %3178, 2
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %39, align 1
  br i1 %3154, label %block_40b366, label %block_.L_40b466

block_40b366:                                     ; preds = %block_.L_40b35c
  %.v183 = select i1 %3172, i64 10, i64 133
  %3181 = add i64 %3155, %.v183
  store i64 4, i64* %RAX.i2123.pre-phi, align 8
  store i64 1, i64* %RCX.i1445, align 8
  store i64 3, i64* %RDX.i2151, align 8
  %3182 = add i64 %3181, 25
  store i64 %3182, i64* %3, align 8
  br i1 %3172, label %block_40b370, label %block_.L_40b3eb

block_40b370:                                     ; preds = %block_40b366
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %RSI.i2229, align 8
  %3183 = add i64 %3088, -72
  %3184 = add i64 %3181, 28
  store i64 %3184, i64* %3, align 8
  %3185 = inttoptr i64 %3183 to i32*
  %3186 = load i32, i32* %3185, align 4
  %3187 = zext i32 %3186 to i64
  store i64 %3187, i64* %RDI.i2224, align 8
  %3188 = add i64 %3088, -4
  %3189 = add i64 %3181, 32
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3188 to i32*
  %3191 = load i32, i32* %3190, align 4
  %3192 = sext i32 %3191 to i64
  %3193 = mul nsw i64 %3192, 384
  store i64 %3193, i64* %R8.i1611, align 8
  %3194 = lshr i64 %3193, 63
  %3195 = add i64 %3193, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  store i64 %3195, i64* %RSI.i2229, align 8
  %3196 = icmp ult i64 %3195, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  %3197 = icmp ult i64 %3195, %3193
  %3198 = or i1 %3196, %3197
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %14, align 1
  %3200 = trunc i64 %3195 to i32
  %3201 = and i32 %3200, 248
  %3202 = tail call i32 @llvm.ctpop.i32(i32 %3201)
  %3203 = trunc i32 %3202 to i8
  %3204 = and i8 %3203, 1
  %3205 = xor i8 %3204, 1
  store i8 %3205, i8* %21, align 1
  %3206 = xor i64 %3195, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  %3207 = lshr i64 %3206, 4
  %3208 = trunc i64 %3207 to i8
  %3209 = and i8 %3208, 1
  store i8 %3209, i8* %27, align 1
  %3210 = icmp eq i64 %3195, 0
  %3211 = zext i1 %3210 to i8
  store i8 %3211, i8* %30, align 1
  %3212 = lshr i64 %3195, 63
  %3213 = trunc i64 %3212 to i8
  store i8 %3213, i8* %33, align 1
  %3214 = xor i64 %3212, lshr (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 63)
  %3215 = xor i64 %3212, %3194
  %3216 = add nuw nsw i64 %3214, %3215
  %3217 = icmp eq i64 %3216, 2
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %39, align 1
  %3219 = add i64 %3088, -108
  %3220 = add i64 %3181, 46
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3219 to i32*
  %3222 = load i32, i32* %3221, align 4
  %3223 = sext i32 %3222 to i64
  %3224 = shl nsw i64 %3223, 6
  store i64 %3224, i64* %R8.i1611, align 8
  %3225 = add i64 %3224, %3195
  store i64 %3225, i64* %RSI.i2229, align 8
  %3226 = icmp ult i64 %3225, %3195
  %3227 = icmp ult i64 %3225, %3224
  %3228 = or i1 %3226, %3227
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %14, align 1
  %3230 = trunc i64 %3225 to i32
  %3231 = and i32 %3230, 248
  %3232 = tail call i32 @llvm.ctpop.i32(i32 %3231)
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  %3235 = xor i8 %3234, 1
  store i8 %3235, i8* %21, align 1
  %3236 = xor i64 %3195, %3225
  %3237 = lshr i64 %3236, 4
  %3238 = trunc i64 %3237 to i8
  %3239 = and i8 %3238, 1
  store i8 %3239, i8* %27, align 1
  %3240 = icmp eq i64 %3225, 0
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %30, align 1
  %3242 = lshr i64 %3225, 63
  %3243 = trunc i64 %3242 to i8
  store i8 %3243, i8* %33, align 1
  %3244 = lshr i64 %3223, 57
  %3245 = and i64 %3244, 1
  %3246 = xor i64 %3242, %3212
  %3247 = xor i64 %3242, %3245
  %3248 = add nuw nsw i64 %3246, %3247
  %3249 = icmp eq i64 %3248, 2
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %39, align 1
  %3251 = load i64, i64* %RDI.i2224, align 8
  %3252 = inttoptr i64 %3225 to i32*
  %3253 = add i64 %3181, 56
  store i64 %3253, i64* %3, align 8
  %3254 = load i32, i32* %3252, align 8
  %3255 = shl i64 %3251, 32
  %3256 = ashr exact i64 %3255, 32
  %3257 = sext i32 %3254 to i64
  %3258 = mul nsw i64 %3257, %3256
  %3259 = trunc i64 %3258 to i32
  %3260 = and i64 %3258, 4294967295
  store i64 %3260, i64* %RDI.i2224, align 8
  %3261 = shl i64 %3258, 32
  %3262 = ashr exact i64 %3261, 32
  %3263 = icmp ne i64 %3262, %3258
  %3264 = zext i1 %3263 to i8
  store i8 %3264, i8* %14, align 1
  %3265 = and i32 %3259, 255
  %3266 = tail call i32 @llvm.ctpop.i32(i32 %3265)
  %3267 = trunc i32 %3266 to i8
  %3268 = and i8 %3267, 1
  %3269 = xor i8 %3268, 1
  store i8 %3269, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %3270 = lshr i32 %3259, 31
  %3271 = trunc i32 %3270 to i8
  store i8 %3271, i8* %33, align 1
  store i8 %3264, i8* %39, align 1
  %3272 = load i64, i64* %RDX.i2151, align 8
  %3273 = load i64, i64* %RBP.i, align 8
  %3274 = add i64 %3273, -104
  %3275 = add i64 %3181, 59
  store i64 %3275, i64* %3, align 8
  %3276 = trunc i64 %3272 to i32
  %3277 = inttoptr i64 %3274 to i32*
  %3278 = load i32, i32* %3277, align 4
  %3279 = sub i32 %3276, %3278
  %3280 = zext i32 %3279 to i64
  store i64 %3280, i64* %RDX.i2151, align 8
  %3281 = icmp ult i32 %3276, %3278
  %3282 = zext i1 %3281 to i8
  store i8 %3282, i8* %14, align 1
  %3283 = and i32 %3279, 255
  %3284 = tail call i32 @llvm.ctpop.i32(i32 %3283)
  %3285 = trunc i32 %3284 to i8
  %3286 = and i8 %3285, 1
  %3287 = xor i8 %3286, 1
  store i8 %3287, i8* %21, align 1
  %3288 = xor i32 %3278, %3276
  %3289 = xor i32 %3288, %3279
  %3290 = lshr i32 %3289, 4
  %3291 = trunc i32 %3290 to i8
  %3292 = and i8 %3291, 1
  store i8 %3292, i8* %27, align 1
  %3293 = icmp eq i32 %3279, 0
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %30, align 1
  %3295 = lshr i32 %3279, 31
  %3296 = trunc i32 %3295 to i8
  store i8 %3296, i8* %33, align 1
  %3297 = lshr i32 %3276, 31
  %3298 = lshr i32 %3278, 31
  %3299 = xor i32 %3298, %3297
  %3300 = xor i32 %3295, %3297
  %3301 = add nuw nsw i32 %3300, %3299
  %3302 = icmp eq i32 %3301, 2
  %3303 = zext i1 %3302 to i8
  store i8 %3303, i8* %39, align 1
  %3304 = add i64 %3273, -172
  %3305 = load i32, i32* %ECX.i2242, align 4
  %3306 = add i64 %3181, 65
  store i64 %3306, i64* %3, align 8
  %3307 = inttoptr i64 %3304 to i32*
  store i32 %3305, i32* %3307, align 4
  %3308 = load i32, i32* %EDX.i1427, align 4
  %3309 = zext i32 %3308 to i64
  %3310 = load i64, i64* %3, align 8
  store i64 %3309, i64* %RCX.i1445, align 8
  %3311 = load i64, i64* %RBP.i, align 8
  %3312 = add i64 %3311, -172
  %3313 = add i64 %3310, 8
  store i64 %3313, i64* %3, align 8
  %3314 = inttoptr i64 %3312 to i32*
  %3315 = load i32, i32* %3314, align 4
  %3316 = zext i32 %3315 to i64
  store i64 %3316, i64* %RDX.i2151, align 8
  %3317 = add i64 %3310, 10
  store i64 %3317, i64* %3, align 8
  %3318 = trunc i32 %3308 to i5
  switch i5 %3318, label %3324 [
    i5 0, label %routine_shll__cl___edx.exit1294
    i5 1, label %3319
  ]

; <label>:3319:                                   ; preds = %block_40b370
  %3320 = shl i32 %3315, 1
  %3321 = icmp slt i32 %3315, 0
  %3322 = icmp slt i32 %3320, 0
  %3323 = xor i1 %3321, %3322
  br label %3333

; <label>:3324:                                   ; preds = %block_40b370
  %3325 = and i32 %3308, 31
  %3326 = zext i32 %3325 to i64
  %3327 = add nuw nsw i64 %3326, 4294967295
  %3328 = and i64 %3327, 4294967295
  %3329 = shl i64 %3316, %3328
  %3330 = trunc i64 %3329 to i32
  %3331 = icmp slt i32 %3330, 0
  %3332 = shl i32 %3330, 1
  br label %3333

; <label>:3333:                                   ; preds = %3324, %3319
  %3334 = phi i1 [ %3321, %3319 ], [ %3331, %3324 ]
  %3335 = phi i1 [ %3323, %3319 ], [ false, %3324 ]
  %3336 = phi i32 [ %3320, %3319 ], [ %3332, %3324 ]
  %3337 = zext i32 %3336 to i64
  store i64 %3337, i64* %RDX.i2151, align 8
  %3338 = zext i1 %3334 to i8
  store i8 %3338, i8* %14, align 1
  %3339 = and i32 %3336, 254
  %3340 = tail call i32 @llvm.ctpop.i32(i32 %3339)
  %3341 = trunc i32 %3340 to i8
  %3342 = and i8 %3341, 1
  %3343 = xor i8 %3342, 1
  store i8 %3343, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3344 = icmp eq i32 %3336, 0
  %3345 = zext i1 %3344 to i8
  store i8 %3345, i8* %30, align 1
  %3346 = lshr i32 %3336, 31
  %3347 = trunc i32 %3346 to i8
  store i8 %3347, i8* %33, align 1
  %3348 = zext i1 %3335 to i8
  store i8 %3348, i8* %39, align 1
  br label %routine_shll__cl___edx.exit1294

routine_shll__cl___edx.exit1294:                  ; preds = %3333, %block_40b370
  %3349 = phi i32 [ %3336, %3333 ], [ %3315, %block_40b370 ]
  %3350 = load i64, i64* %RDI.i2224, align 8
  %3351 = zext i32 %3349 to i64
  %3352 = trunc i64 %3350 to i32
  %3353 = add i32 %3349, %3352
  %3354 = zext i32 %3353 to i64
  store i64 %3354, i64* %RDI.i2224, align 8
  %3355 = icmp ult i32 %3353, %3352
  %3356 = icmp ult i32 %3353, %3349
  %3357 = or i1 %3355, %3356
  %3358 = zext i1 %3357 to i8
  store i8 %3358, i8* %14, align 1
  %3359 = and i32 %3353, 255
  %3360 = tail call i32 @llvm.ctpop.i32(i32 %3359)
  %3361 = trunc i32 %3360 to i8
  %3362 = and i8 %3361, 1
  %3363 = xor i8 %3362, 1
  store i8 %3363, i8* %21, align 1
  %3364 = xor i64 %3351, %3350
  %3365 = trunc i64 %3364 to i32
  %3366 = xor i32 %3365, %3353
  %3367 = lshr i32 %3366, 4
  %3368 = trunc i32 %3367 to i8
  %3369 = and i8 %3368, 1
  store i8 %3369, i8* %27, align 1
  %3370 = icmp eq i32 %3353, 0
  %3371 = zext i1 %3370 to i8
  store i8 %3371, i8* %30, align 1
  %3372 = lshr i32 %3353, 31
  %3373 = trunc i32 %3372 to i8
  store i8 %3373, i8* %33, align 1
  %3374 = lshr i32 %3352, 31
  %3375 = lshr i32 %3349, 31
  %3376 = xor i32 %3372, %3374
  %3377 = xor i32 %3372, %3375
  %3378 = add nuw nsw i32 %3376, %3377
  %3379 = icmp eq i32 %3378, 2
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %39, align 1
  %3381 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %3382 = add i64 %3311, -104
  %3383 = add i64 %3310, 15
  store i64 %3383, i64* %3, align 8
  %3384 = trunc i64 %3381 to i32
  %3385 = inttoptr i64 %3382 to i32*
  %3386 = load i32, i32* %3385, align 4
  %3387 = sub i32 %3384, %3386
  %3388 = zext i32 %3387 to i64
  store i64 %3388, i64* %RAX.i2123.pre-phi, align 8
  %3389 = icmp ult i32 %3384, %3386
  %3390 = zext i1 %3389 to i8
  store i8 %3390, i8* %14, align 1
  %3391 = and i32 %3387, 255
  %3392 = tail call i32 @llvm.ctpop.i32(i32 %3391)
  %3393 = trunc i32 %3392 to i8
  %3394 = and i8 %3393, 1
  %3395 = xor i8 %3394, 1
  store i8 %3395, i8* %21, align 1
  %3396 = xor i32 %3386, %3384
  %3397 = xor i32 %3396, %3387
  %3398 = lshr i32 %3397, 4
  %3399 = trunc i32 %3398 to i8
  %3400 = and i8 %3399, 1
  store i8 %3400, i8* %27, align 1
  %3401 = icmp eq i32 %3387, 0
  %3402 = zext i1 %3401 to i8
  store i8 %3402, i8* %30, align 1
  %3403 = lshr i32 %3387, 31
  %3404 = trunc i32 %3403 to i8
  store i8 %3404, i8* %33, align 1
  %3405 = lshr i32 %3384, 31
  %3406 = lshr i32 %3386, 31
  %3407 = xor i32 %3406, %3405
  %3408 = xor i32 %3403, %3405
  %3409 = add nuw nsw i32 %3408, %3407
  %3410 = icmp eq i32 %3409, 2
  %3411 = zext i1 %3410 to i8
  store i8 %3411, i8* %39, align 1
  store i64 %3388, i64* %RCX.i1445, align 8
  %3412 = add i64 %3310, 19
  store i64 %3412, i64* %3, align 8
  %3413 = trunc i32 %3387 to i5
  switch i5 %3413, label %3417 [
    i5 0, label %routine_sarl__cl___edi.exit1281
    i5 1, label %3414
  ]

; <label>:3414:                                   ; preds = %routine_shll__cl___edx.exit1294
  %3415 = shl nuw i64 %3354, 32
  %3416 = ashr i64 %3415, 33
  br label %3424

; <label>:3417:                                   ; preds = %routine_shll__cl___edx.exit1294
  %3418 = and i32 %3387, 31
  %3419 = zext i32 %3418 to i64
  %3420 = add nsw i64 %3419, -1
  %3421 = sext i32 %3353 to i64
  %3422 = ashr i64 %3421, %3420
  %3423 = lshr i64 %3422, 1
  br label %3424

; <label>:3424:                                   ; preds = %3417, %3414
  %3425 = phi i64 [ %3423, %3417 ], [ %3416, %3414 ]
  %3426 = phi i64 [ %3422, %3417 ], [ %3354, %3414 ]
  %3427 = trunc i64 %3426 to i8
  %3428 = and i8 %3427, 1
  %3429 = trunc i64 %3425 to i32
  %3430 = and i64 %3425, 4294967295
  store i64 %3430, i64* %RDI.i2224, align 8
  store i8 %3428, i8* %14, align 1
  %3431 = and i32 %3429, 255
  %3432 = tail call i32 @llvm.ctpop.i32(i32 %3431)
  %3433 = trunc i32 %3432 to i8
  %3434 = and i8 %3433, 1
  %3435 = xor i8 %3434, 1
  store i8 %3435, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3436 = icmp eq i32 %3429, 0
  %3437 = zext i1 %3436 to i8
  store i8 %3437, i8* %30, align 1
  %3438 = lshr i32 %3429, 31
  %3439 = trunc i32 %3438 to i8
  store i8 %3439, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edi.exit1281

routine_sarl__cl___edi.exit1281:                  ; preds = %3424, %routine_shll__cl___edx.exit1294
  %3440 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3440, i64* %RSI.i2229, align 8
  %3441 = add i64 %3440, 13112
  %3442 = add i64 %3310, 33
  store i64 %3442, i64* %3, align 8
  %3443 = inttoptr i64 %3441 to i32*
  %3444 = load i32, i32* %3443, align 4
  %3445 = zext i32 %3444 to i64
  store i64 %3445, i64* %RSI.i2229, align 8
  %3446 = add i64 %3310, 433567
  %3447 = add i64 %3310, 38
  %3448 = load i64, i64* %6, align 8
  %3449 = add i64 %3448, -8
  %3450 = inttoptr i64 %3449 to i64*
  store i64 %3447, i64* %3450, align 8
  store i64 %3449, i64* %6, align 8
  store i64 %3446, i64* %3, align 8
  %call2_40b3d2 = tail call %struct.Memory* @sub_475150.sign(%struct.State* nonnull %0, i64 %3446, %struct.Memory* %3044)
  %3451 = load i64, i64* %3, align 8
  %3452 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3452, i64* %R8.i1611, align 8
  %3453 = add i64 %3452, 13112
  %3454 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %3455 = add i64 %3451, 15
  store i64 %3455, i64* %3, align 8
  %3456 = inttoptr i64 %3453 to i32*
  store i32 %3454, i32* %3456, align 4
  %3457 = load i64, i64* %3, align 8
  %3458 = add i64 %3457, 123
  store i64 %3458, i64* %3, align 8
  br label %block_.L_40b461

block_.L_40b3eb:                                  ; preds = %block_40b366
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %RSI.i2229, align 8
  %3459 = add i64 %3088, -72
  %3460 = add i64 %3181, 28
  store i64 %3460, i64* %3, align 8
  %3461 = inttoptr i64 %3459 to i32*
  %3462 = load i32, i32* %3461, align 4
  %3463 = zext i32 %3462 to i64
  store i64 %3463, i64* %RDI.i2224, align 8
  %3464 = add i64 %3088, -4
  %3465 = add i64 %3181, 32
  store i64 %3465, i64* %3, align 8
  %3466 = inttoptr i64 %3464 to i32*
  %3467 = load i32, i32* %3466, align 4
  %3468 = sext i32 %3467 to i64
  %3469 = mul nsw i64 %3468, 384
  store i64 %3469, i64* %R8.i1611, align 8
  %3470 = lshr i64 %3469, 63
  %3471 = add i64 %3469, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  store i64 %3471, i64* %RSI.i2229, align 8
  %3472 = icmp ult i64 %3471, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  %3473 = icmp ult i64 %3471, %3469
  %3474 = or i1 %3472, %3473
  %3475 = zext i1 %3474 to i8
  store i8 %3475, i8* %14, align 1
  %3476 = trunc i64 %3471 to i32
  %3477 = and i32 %3476, 248
  %3478 = tail call i32 @llvm.ctpop.i32(i32 %3477)
  %3479 = trunc i32 %3478 to i8
  %3480 = and i8 %3479, 1
  %3481 = xor i8 %3480, 1
  store i8 %3481, i8* %21, align 1
  %3482 = xor i64 %3471, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  %3483 = lshr i64 %3482, 4
  %3484 = trunc i64 %3483 to i8
  %3485 = and i8 %3484, 1
  store i8 %3485, i8* %27, align 1
  %3486 = icmp eq i64 %3471, 0
  %3487 = zext i1 %3486 to i8
  store i8 %3487, i8* %30, align 1
  %3488 = lshr i64 %3471, 63
  %3489 = trunc i64 %3488 to i8
  store i8 %3489, i8* %33, align 1
  %3490 = xor i64 %3488, lshr (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 63)
  %3491 = xor i64 %3488, %3470
  %3492 = add nuw nsw i64 %3490, %3491
  %3493 = icmp eq i64 %3492, 2
  %3494 = zext i1 %3493 to i8
  store i8 %3494, i8* %39, align 1
  %3495 = add i64 %3088, -108
  %3496 = add i64 %3181, 46
  store i64 %3496, i64* %3, align 8
  %3497 = inttoptr i64 %3495 to i32*
  %3498 = load i32, i32* %3497, align 4
  %3499 = sext i32 %3498 to i64
  %3500 = shl nsw i64 %3499, 6
  store i64 %3500, i64* %R8.i1611, align 8
  %3501 = add i64 %3500, %3471
  store i64 %3501, i64* %RSI.i2229, align 8
  %3502 = icmp ult i64 %3501, %3471
  %3503 = icmp ult i64 %3501, %3500
  %3504 = or i1 %3502, %3503
  %3505 = zext i1 %3504 to i8
  store i8 %3505, i8* %14, align 1
  %3506 = trunc i64 %3501 to i32
  %3507 = and i32 %3506, 248
  %3508 = tail call i32 @llvm.ctpop.i32(i32 %3507)
  %3509 = trunc i32 %3508 to i8
  %3510 = and i8 %3509, 1
  %3511 = xor i8 %3510, 1
  store i8 %3511, i8* %21, align 1
  %3512 = xor i64 %3471, %3501
  %3513 = lshr i64 %3512, 4
  %3514 = trunc i64 %3513 to i8
  %3515 = and i8 %3514, 1
  store i8 %3515, i8* %27, align 1
  %3516 = icmp eq i64 %3501, 0
  %3517 = zext i1 %3516 to i8
  store i8 %3517, i8* %30, align 1
  %3518 = lshr i64 %3501, 63
  %3519 = trunc i64 %3518 to i8
  store i8 %3519, i8* %33, align 1
  %3520 = lshr i64 %3499, 57
  %3521 = and i64 %3520, 1
  %3522 = xor i64 %3518, %3488
  %3523 = xor i64 %3518, %3521
  %3524 = add nuw nsw i64 %3522, %3523
  %3525 = icmp eq i64 %3524, 2
  %3526 = zext i1 %3525 to i8
  store i8 %3526, i8* %39, align 1
  %3527 = load i64, i64* %RDI.i2224, align 8
  %3528 = inttoptr i64 %3501 to i32*
  %3529 = add i64 %3181, 56
  store i64 %3529, i64* %3, align 8
  %3530 = load i32, i32* %3528, align 8
  %3531 = shl i64 %3527, 32
  %3532 = ashr exact i64 %3531, 32
  %3533 = sext i32 %3530 to i64
  %3534 = mul nsw i64 %3533, %3532
  %3535 = trunc i64 %3534 to i32
  %3536 = and i64 %3534, 4294967295
  store i64 %3536, i64* %RDI.i2224, align 8
  %3537 = shl i64 %3534, 32
  %3538 = ashr exact i64 %3537, 32
  %3539 = icmp ne i64 %3538, %3534
  %3540 = zext i1 %3539 to i8
  store i8 %3540, i8* %14, align 1
  %3541 = and i32 %3535, 255
  %3542 = tail call i32 @llvm.ctpop.i32(i32 %3541)
  %3543 = trunc i32 %3542 to i8
  %3544 = and i8 %3543, 1
  %3545 = xor i8 %3544, 1
  store i8 %3545, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %3546 = lshr i32 %3535, 31
  %3547 = trunc i32 %3546 to i8
  store i8 %3547, i8* %33, align 1
  store i8 %3540, i8* %39, align 1
  %3548 = load i64, i64* %RDX.i2151, align 8
  %3549 = load i64, i64* %RBP.i, align 8
  %3550 = add i64 %3549, -104
  %3551 = add i64 %3181, 59
  store i64 %3551, i64* %3, align 8
  %3552 = trunc i64 %3548 to i32
  %3553 = inttoptr i64 %3550 to i32*
  %3554 = load i32, i32* %3553, align 4
  %3555 = sub i32 %3552, %3554
  %3556 = zext i32 %3555 to i64
  store i64 %3556, i64* %RDX.i2151, align 8
  %3557 = icmp ult i32 %3552, %3554
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %14, align 1
  %3559 = and i32 %3555, 255
  %3560 = tail call i32 @llvm.ctpop.i32(i32 %3559)
  %3561 = trunc i32 %3560 to i8
  %3562 = and i8 %3561, 1
  %3563 = xor i8 %3562, 1
  store i8 %3563, i8* %21, align 1
  %3564 = xor i32 %3554, %3552
  %3565 = xor i32 %3564, %3555
  %3566 = lshr i32 %3565, 4
  %3567 = trunc i32 %3566 to i8
  %3568 = and i8 %3567, 1
  store i8 %3568, i8* %27, align 1
  %3569 = icmp eq i32 %3555, 0
  %3570 = zext i1 %3569 to i8
  store i8 %3570, i8* %30, align 1
  %3571 = lshr i32 %3555, 31
  %3572 = trunc i32 %3571 to i8
  store i8 %3572, i8* %33, align 1
  %3573 = lshr i32 %3552, 31
  %3574 = lshr i32 %3554, 31
  %3575 = xor i32 %3574, %3573
  %3576 = xor i32 %3571, %3573
  %3577 = add nuw nsw i32 %3576, %3575
  %3578 = icmp eq i32 %3577, 2
  %3579 = zext i1 %3578 to i8
  store i8 %3579, i8* %39, align 1
  %3580 = add i64 %3549, -176
  %3581 = load i32, i32* %ECX.i2242, align 4
  %3582 = add i64 %3181, 65
  store i64 %3582, i64* %3, align 8
  %3583 = inttoptr i64 %3580 to i32*
  store i32 %3581, i32* %3583, align 4
  %3584 = load i32, i32* %EDX.i1427, align 4
  %3585 = zext i32 %3584 to i64
  %3586 = load i64, i64* %3, align 8
  store i64 %3585, i64* %RCX.i1445, align 8
  %3587 = load i64, i64* %RBP.i, align 8
  %3588 = add i64 %3587, -176
  %3589 = add i64 %3586, 8
  store i64 %3589, i64* %3, align 8
  %3590 = inttoptr i64 %3588 to i32*
  %3591 = load i32, i32* %3590, align 4
  %3592 = zext i32 %3591 to i64
  store i64 %3592, i64* %RDX.i2151, align 8
  %3593 = add i64 %3586, 10
  store i64 %3593, i64* %3, align 8
  %3594 = trunc i32 %3584 to i5
  switch i5 %3594, label %3600 [
    i5 0, label %routine_shll__cl___edx.exit1224
    i5 1, label %3595
  ]

; <label>:3595:                                   ; preds = %block_.L_40b3eb
  %3596 = shl i32 %3591, 1
  %3597 = icmp slt i32 %3591, 0
  %3598 = icmp slt i32 %3596, 0
  %3599 = xor i1 %3597, %3598
  br label %3609

; <label>:3600:                                   ; preds = %block_.L_40b3eb
  %3601 = and i32 %3584, 31
  %3602 = zext i32 %3601 to i64
  %3603 = add nuw nsw i64 %3602, 4294967295
  %3604 = and i64 %3603, 4294967295
  %3605 = shl i64 %3592, %3604
  %3606 = trunc i64 %3605 to i32
  %3607 = icmp slt i32 %3606, 0
  %3608 = shl i32 %3606, 1
  br label %3609

; <label>:3609:                                   ; preds = %3600, %3595
  %3610 = phi i1 [ %3597, %3595 ], [ %3607, %3600 ]
  %3611 = phi i1 [ %3599, %3595 ], [ false, %3600 ]
  %3612 = phi i32 [ %3596, %3595 ], [ %3608, %3600 ]
  %3613 = zext i32 %3612 to i64
  store i64 %3613, i64* %RDX.i2151, align 8
  %3614 = zext i1 %3610 to i8
  store i8 %3614, i8* %14, align 1
  %3615 = and i32 %3612, 254
  %3616 = tail call i32 @llvm.ctpop.i32(i32 %3615)
  %3617 = trunc i32 %3616 to i8
  %3618 = and i8 %3617, 1
  %3619 = xor i8 %3618, 1
  store i8 %3619, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3620 = icmp eq i32 %3612, 0
  %3621 = zext i1 %3620 to i8
  store i8 %3621, i8* %30, align 1
  %3622 = lshr i32 %3612, 31
  %3623 = trunc i32 %3622 to i8
  store i8 %3623, i8* %33, align 1
  %3624 = zext i1 %3611 to i8
  store i8 %3624, i8* %39, align 1
  br label %routine_shll__cl___edx.exit1224

routine_shll__cl___edx.exit1224:                  ; preds = %3609, %block_.L_40b3eb
  %3625 = phi i32 [ %3612, %3609 ], [ %3591, %block_.L_40b3eb ]
  %3626 = load i64, i64* %RDI.i2224, align 8
  %3627 = zext i32 %3625 to i64
  %3628 = trunc i64 %3626 to i32
  %3629 = add i32 %3625, %3628
  %3630 = zext i32 %3629 to i64
  store i64 %3630, i64* %RDI.i2224, align 8
  %3631 = icmp ult i32 %3629, %3628
  %3632 = icmp ult i32 %3629, %3625
  %3633 = or i1 %3631, %3632
  %3634 = zext i1 %3633 to i8
  store i8 %3634, i8* %14, align 1
  %3635 = and i32 %3629, 255
  %3636 = tail call i32 @llvm.ctpop.i32(i32 %3635)
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  %3639 = xor i8 %3638, 1
  store i8 %3639, i8* %21, align 1
  %3640 = xor i64 %3627, %3626
  %3641 = trunc i64 %3640 to i32
  %3642 = xor i32 %3641, %3629
  %3643 = lshr i32 %3642, 4
  %3644 = trunc i32 %3643 to i8
  %3645 = and i8 %3644, 1
  store i8 %3645, i8* %27, align 1
  %3646 = icmp eq i32 %3629, 0
  %3647 = zext i1 %3646 to i8
  store i8 %3647, i8* %30, align 1
  %3648 = lshr i32 %3629, 31
  %3649 = trunc i32 %3648 to i8
  store i8 %3649, i8* %33, align 1
  %3650 = lshr i32 %3628, 31
  %3651 = lshr i32 %3625, 31
  %3652 = xor i32 %3648, %3650
  %3653 = xor i32 %3648, %3651
  %3654 = add nuw nsw i32 %3652, %3653
  %3655 = icmp eq i32 %3654, 2
  %3656 = zext i1 %3655 to i8
  store i8 %3656, i8* %39, align 1
  %3657 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %3658 = add i64 %3587, -104
  %3659 = add i64 %3586, 15
  store i64 %3659, i64* %3, align 8
  %3660 = trunc i64 %3657 to i32
  %3661 = inttoptr i64 %3658 to i32*
  %3662 = load i32, i32* %3661, align 4
  %3663 = sub i32 %3660, %3662
  %3664 = zext i32 %3663 to i64
  store i64 %3664, i64* %RAX.i2123.pre-phi, align 8
  %3665 = icmp ult i32 %3660, %3662
  %3666 = zext i1 %3665 to i8
  store i8 %3666, i8* %14, align 1
  %3667 = and i32 %3663, 255
  %3668 = tail call i32 @llvm.ctpop.i32(i32 %3667)
  %3669 = trunc i32 %3668 to i8
  %3670 = and i8 %3669, 1
  %3671 = xor i8 %3670, 1
  store i8 %3671, i8* %21, align 1
  %3672 = xor i32 %3662, %3660
  %3673 = xor i32 %3672, %3663
  %3674 = lshr i32 %3673, 4
  %3675 = trunc i32 %3674 to i8
  %3676 = and i8 %3675, 1
  store i8 %3676, i8* %27, align 1
  %3677 = icmp eq i32 %3663, 0
  %3678 = zext i1 %3677 to i8
  store i8 %3678, i8* %30, align 1
  %3679 = lshr i32 %3663, 31
  %3680 = trunc i32 %3679 to i8
  store i8 %3680, i8* %33, align 1
  %3681 = lshr i32 %3660, 31
  %3682 = lshr i32 %3662, 31
  %3683 = xor i32 %3682, %3681
  %3684 = xor i32 %3679, %3681
  %3685 = add nuw nsw i32 %3684, %3683
  %3686 = icmp eq i32 %3685, 2
  %3687 = zext i1 %3686 to i8
  store i8 %3687, i8* %39, align 1
  store i64 %3664, i64* %RCX.i1445, align 8
  %3688 = add i64 %3586, 19
  store i64 %3688, i64* %3, align 8
  %3689 = trunc i32 %3663 to i5
  switch i5 %3689, label %3693 [
    i5 0, label %routine_sarl__cl___edi.exit1211
    i5 1, label %3690
  ]

; <label>:3690:                                   ; preds = %routine_shll__cl___edx.exit1224
  %3691 = shl nuw i64 %3630, 32
  %3692 = ashr i64 %3691, 33
  br label %3700

; <label>:3693:                                   ; preds = %routine_shll__cl___edx.exit1224
  %3694 = and i32 %3663, 31
  %3695 = zext i32 %3694 to i64
  %3696 = add nsw i64 %3695, -1
  %3697 = sext i32 %3629 to i64
  %3698 = ashr i64 %3697, %3696
  %3699 = lshr i64 %3698, 1
  br label %3700

; <label>:3700:                                   ; preds = %3693, %3690
  %3701 = phi i64 [ %3699, %3693 ], [ %3692, %3690 ]
  %3702 = phi i64 [ %3698, %3693 ], [ %3630, %3690 ]
  %3703 = trunc i64 %3702 to i8
  %3704 = and i8 %3703, 1
  %3705 = trunc i64 %3701 to i32
  %3706 = and i64 %3701, 4294967295
  store i64 %3706, i64* %RDI.i2224, align 8
  store i8 %3704, i8* %14, align 1
  %3707 = and i32 %3705, 255
  %3708 = tail call i32 @llvm.ctpop.i32(i32 %3707)
  %3709 = trunc i32 %3708 to i8
  %3710 = and i8 %3709, 1
  %3711 = xor i8 %3710, 1
  store i8 %3711, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3712 = icmp eq i32 %3705, 0
  %3713 = zext i1 %3712 to i8
  store i8 %3713, i8* %30, align 1
  %3714 = lshr i32 %3705, 31
  %3715 = trunc i32 %3714 to i8
  store i8 %3715, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_sarl__cl___edi.exit1211

routine_sarl__cl___edi.exit1211:                  ; preds = %3700, %routine_shll__cl___edx.exit1224
  %3716 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3716, i64* %RSI.i2229, align 8
  %3717 = add i64 %3716, 13112
  %3718 = add i64 %3586, 33
  store i64 %3718, i64* %3, align 8
  %3719 = inttoptr i64 %3717 to i32*
  %3720 = load i32, i32* %3719, align 4
  %3721 = zext i32 %3720 to i64
  store i64 %3721, i64* %RSI.i2229, align 8
  %3722 = add i64 %3586, 433444
  %3723 = add i64 %3586, 38
  %3724 = load i64, i64* %6, align 8
  %3725 = add i64 %3724, -8
  %3726 = inttoptr i64 %3725 to i64*
  store i64 %3723, i64* %3726, align 8
  store i64 %3725, i64* %6, align 8
  store i64 %3722, i64* %3, align 8
  %call2_40b44d = tail call %struct.Memory* @sub_475150.sign(%struct.State* nonnull %0, i64 %3722, %struct.Memory* %3044)
  %3727 = load i64, i64* %3, align 8
  %3728 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3728, i64* %R8.i1611, align 8
  %3729 = add i64 %3728, 13112
  %3730 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %3731 = add i64 %3727, 15
  store i64 %3731, i64* %3, align 8
  %3732 = inttoptr i64 %3729 to i32*
  store i32 %3730, i32* %3732, align 4
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_40b461

block_.L_40b461:                                  ; preds = %routine_sarl__cl___edi.exit1211, %routine_sarl__cl___edi.exit1281
  %3733 = phi i64 [ %.pre141, %routine_sarl__cl___edi.exit1211 ], [ %3458, %routine_sarl__cl___edi.exit1281 ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_40b44d, %routine_sarl__cl___edi.exit1211 ], [ %call2_40b3d2, %routine_sarl__cl___edi.exit1281 ]
  %3734 = add i64 %3733, 245
  br label %block_.L_40b556

block_.L_40b466:                                  ; preds = %block_.L_40b35c
  %.v182 = select i1 %3172, i64 10, i64 125
  %3735 = add i64 %3155, %.v182
  %3736 = add i64 %3735, 10
  store i64 %3736, i64* %3, align 8
  br i1 %3172, label %block_40b470, label %block_.L_40b4e3

block_40b470:                                     ; preds = %block_.L_40b466
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %RAX.i2123.pre-phi, align 8
  %3737 = add i64 %3088, -72
  %3738 = add i64 %3735, 13
  store i64 %3738, i64* %3, align 8
  %3739 = inttoptr i64 %3737 to i32*
  %3740 = load i32, i32* %3739, align 4
  %3741 = zext i32 %3740 to i64
  store i64 %3741, i64* %RCX.i1445, align 8
  %3742 = add i64 %3088, -4
  %3743 = add i64 %3735, 17
  store i64 %3743, i64* %3, align 8
  %3744 = inttoptr i64 %3742 to i32*
  %3745 = load i32, i32* %3744, align 4
  %3746 = sext i32 %3745 to i64
  %3747 = mul nsw i64 %3746, 384
  store i64 %3747, i64* %RDX.i2151, align 8
  %3748 = lshr i64 %3747, 63
  %3749 = add i64 %3747, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  store i64 %3749, i64* %RAX.i2123.pre-phi, align 8
  %3750 = icmp ult i64 %3749, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  %3751 = icmp ult i64 %3749, %3747
  %3752 = or i1 %3750, %3751
  %3753 = zext i1 %3752 to i8
  store i8 %3753, i8* %14, align 1
  %3754 = trunc i64 %3749 to i32
  %3755 = and i32 %3754, 248
  %3756 = tail call i32 @llvm.ctpop.i32(i32 %3755)
  %3757 = trunc i32 %3756 to i8
  %3758 = and i8 %3757, 1
  %3759 = xor i8 %3758, 1
  store i8 %3759, i8* %21, align 1
  %3760 = xor i64 %3749, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  %3761 = lshr i64 %3760, 4
  %3762 = trunc i64 %3761 to i8
  %3763 = and i8 %3762, 1
  store i8 %3763, i8* %27, align 1
  %3764 = icmp eq i64 %3749, 0
  %3765 = zext i1 %3764 to i8
  store i8 %3765, i8* %30, align 1
  %3766 = lshr i64 %3749, 63
  %3767 = trunc i64 %3766 to i8
  store i8 %3767, i8* %33, align 1
  %3768 = xor i64 %3766, lshr (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 63)
  %3769 = xor i64 %3766, %3748
  %3770 = add nuw nsw i64 %3768, %3769
  %3771 = icmp eq i64 %3770, 2
  %3772 = zext i1 %3771 to i8
  store i8 %3772, i8* %39, align 1
  %3773 = add i64 %3088, -108
  %3774 = add i64 %3735, 31
  store i64 %3774, i64* %3, align 8
  %3775 = inttoptr i64 %3773 to i32*
  %3776 = load i32, i32* %3775, align 4
  %3777 = sext i32 %3776 to i64
  %3778 = shl nsw i64 %3777, 6
  store i64 %3778, i64* %RDX.i2151, align 8
  %3779 = add i64 %3778, %3749
  store i64 %3779, i64* %RAX.i2123.pre-phi, align 8
  %3780 = icmp ult i64 %3779, %3749
  %3781 = icmp ult i64 %3779, %3778
  %3782 = or i1 %3780, %3781
  %3783 = zext i1 %3782 to i8
  store i8 %3783, i8* %14, align 1
  %3784 = trunc i64 %3779 to i32
  %3785 = and i32 %3784, 248
  %3786 = tail call i32 @llvm.ctpop.i32(i32 %3785)
  %3787 = trunc i32 %3786 to i8
  %3788 = and i8 %3787, 1
  %3789 = xor i8 %3788, 1
  store i8 %3789, i8* %21, align 1
  %3790 = xor i64 %3749, %3779
  %3791 = lshr i64 %3790, 4
  %3792 = trunc i64 %3791 to i8
  %3793 = and i8 %3792, 1
  store i8 %3793, i8* %27, align 1
  %3794 = icmp eq i64 %3779, 0
  %3795 = zext i1 %3794 to i8
  store i8 %3795, i8* %30, align 1
  %3796 = lshr i64 %3779, 63
  %3797 = trunc i64 %3796 to i8
  store i8 %3797, i8* %33, align 1
  %3798 = lshr i64 %3777, 57
  %3799 = and i64 %3798, 1
  %3800 = xor i64 %3796, %3766
  %3801 = xor i64 %3796, %3799
  %3802 = add nuw nsw i64 %3800, %3801
  %3803 = icmp eq i64 %3802, 2
  %3804 = zext i1 %3803 to i8
  store i8 %3804, i8* %39, align 1
  %3805 = load i64, i64* %RCX.i1445, align 8
  %3806 = inttoptr i64 %3779 to i32*
  %3807 = add i64 %3735, 41
  store i64 %3807, i64* %3, align 8
  %3808 = load i32, i32* %3806, align 8
  %3809 = shl i64 %3805, 32
  %3810 = ashr exact i64 %3809, 32
  %3811 = sext i32 %3808 to i64
  %3812 = mul nsw i64 %3811, %3810
  %3813 = trunc i64 %3812 to i32
  %3814 = and i64 %3812, 4294967295
  store i64 %3814, i64* %RCX.i1445, align 8
  %3815 = shl i64 %3812, 32
  %3816 = ashr exact i64 %3815, 32
  %3817 = icmp ne i64 %3816, %3812
  %3818 = zext i1 %3817 to i8
  store i8 %3818, i8* %14, align 1
  %3819 = and i32 %3813, 255
  %3820 = tail call i32 @llvm.ctpop.i32(i32 %3819)
  %3821 = trunc i32 %3820 to i8
  %3822 = and i8 %3821, 1
  %3823 = xor i8 %3822, 1
  store i8 %3823, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %3824 = lshr i32 %3813, 31
  %3825 = trunc i32 %3824 to i8
  store i8 %3825, i8* %33, align 1
  store i8 %3818, i8* %39, align 1
  %3826 = load i64, i64* %RBP.i, align 8
  %3827 = add i64 %3826, -104
  %3828 = add i64 %3735, 44
  store i64 %3828, i64* %3, align 8
  %3829 = inttoptr i64 %3827 to i32*
  %3830 = load i32, i32* %3829, align 4
  %3831 = add i32 %3830, -4
  %3832 = zext i32 %3831 to i64
  store i64 %3832, i64* %RSI.i2229, align 8
  %3833 = icmp ult i32 %3830, 4
  %3834 = zext i1 %3833 to i8
  store i8 %3834, i8* %14, align 1
  %3835 = and i32 %3831, 255
  %3836 = tail call i32 @llvm.ctpop.i32(i32 %3835)
  %3837 = trunc i32 %3836 to i8
  %3838 = and i8 %3837, 1
  %3839 = xor i8 %3838, 1
  store i8 %3839, i8* %21, align 1
  %3840 = xor i32 %3831, %3830
  %3841 = lshr i32 %3840, 4
  %3842 = trunc i32 %3841 to i8
  %3843 = and i8 %3842, 1
  store i8 %3843, i8* %27, align 1
  %3844 = icmp eq i32 %3831, 0
  %3845 = zext i1 %3844 to i8
  store i8 %3845, i8* %30, align 1
  %3846 = lshr i32 %3831, 31
  %3847 = trunc i32 %3846 to i8
  store i8 %3847, i8* %33, align 1
  %3848 = lshr i32 %3830, 31
  %3849 = xor i32 %3846, %3848
  %3850 = add nuw nsw i32 %3849, %3848
  %3851 = icmp eq i32 %3850, 2
  %3852 = zext i1 %3851 to i8
  store i8 %3852, i8* %39, align 1
  %3853 = add i64 %3826, -180
  %3854 = trunc i64 %3812 to i32
  %3855 = add i64 %3735, 53
  store i64 %3855, i64* %3, align 8
  %3856 = inttoptr i64 %3853 to i32*
  store i32 %3854, i32* %3856, align 4
  %3857 = load i32, i32* %ESI.i1397, align 4
  %3858 = zext i32 %3857 to i64
  %3859 = load i64, i64* %3, align 8
  store i64 %3858, i64* %RCX.i1445, align 8
  %3860 = load i64, i64* %RBP.i, align 8
  %3861 = add i64 %3860, -180
  %3862 = add i64 %3859, 8
  store i64 %3862, i64* %3, align 8
  %3863 = inttoptr i64 %3861 to i32*
  %3864 = load i32, i32* %3863, align 4
  %3865 = zext i32 %3864 to i64
  store i64 %3865, i64* %RSI.i2229, align 8
  %3866 = add i64 %3859, 10
  store i64 %3866, i64* %3, align 8
  %3867 = trunc i32 %3857 to i5
  switch i5 %3867, label %3873 [
    i5 0, label %routine_shll__cl___esi.exit1155
    i5 1, label %3868
  ]

; <label>:3868:                                   ; preds = %block_40b470
  %3869 = shl i32 %3864, 1
  %3870 = icmp slt i32 %3864, 0
  %3871 = icmp slt i32 %3869, 0
  %3872 = xor i1 %3870, %3871
  br label %3882

; <label>:3873:                                   ; preds = %block_40b470
  %3874 = and i32 %3857, 31
  %3875 = zext i32 %3874 to i64
  %3876 = add nuw nsw i64 %3875, 4294967295
  %3877 = and i64 %3876, 4294967295
  %3878 = shl i64 %3865, %3877
  %3879 = trunc i64 %3878 to i32
  %3880 = icmp slt i32 %3879, 0
  %3881 = shl i32 %3879, 1
  br label %3882

; <label>:3882:                                   ; preds = %3873, %3868
  %3883 = phi i1 [ %3870, %3868 ], [ %3880, %3873 ]
  %3884 = phi i1 [ %3872, %3868 ], [ false, %3873 ]
  %3885 = phi i32 [ %3869, %3868 ], [ %3881, %3873 ]
  %3886 = zext i32 %3885 to i64
  store i64 %3886, i64* %RSI.i2229, align 8
  %3887 = zext i1 %3883 to i8
  store i8 %3887, i8* %14, align 1
  %3888 = and i32 %3885, 254
  %3889 = tail call i32 @llvm.ctpop.i32(i32 %3888)
  %3890 = trunc i32 %3889 to i8
  %3891 = and i8 %3890, 1
  %3892 = xor i8 %3891, 1
  store i8 %3892, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3893 = icmp eq i32 %3885, 0
  %3894 = zext i1 %3893 to i8
  store i8 %3894, i8* %30, align 1
  %3895 = lshr i32 %3885, 31
  %3896 = trunc i32 %3895 to i8
  store i8 %3896, i8* %33, align 1
  %3897 = zext i1 %3884 to i8
  store i8 %3897, i8* %39, align 1
  br label %routine_shll__cl___esi.exit1155

routine_shll__cl___esi.exit1155:                  ; preds = %3882, %block_40b470
  %3898 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3898, i64* %RAX.i2123.pre-phi, align 8
  %3899 = add i64 %3898, 13112
  %3900 = add i64 %3859, 24
  store i64 %3900, i64* %3, align 8
  %3901 = inttoptr i64 %3899 to i32*
  %3902 = load i32, i32* %3901, align 4
  %3903 = add i64 %3860, -184
  %3904 = add i64 %3859, 30
  store i64 %3904, i64* %3, align 8
  %3905 = inttoptr i64 %3903 to i32*
  store i32 %3902, i32* %3905, align 4
  %3906 = load i32, i32* %ESI.i1397, align 4
  %3907 = zext i32 %3906 to i64
  %3908 = load i64, i64* %3, align 8
  store i64 %3907, i64* %RDI.i2224, align 8
  %3909 = load i64, i64* %RBP.i, align 8
  %3910 = add i64 %3909, -184
  %3911 = add i64 %3908, 8
  store i64 %3911, i64* %3, align 8
  %3912 = inttoptr i64 %3910 to i32*
  %3913 = load i32, i32* %3912, align 4
  %3914 = zext i32 %3913 to i64
  store i64 %3914, i64* %RSI.i2229, align 8
  %3915 = add i64 %3908, 433293
  %3916 = add i64 %3908, 13
  %3917 = load i64, i64* %6, align 8
  %3918 = add i64 %3917, -8
  %3919 = inttoptr i64 %3918 to i64*
  store i64 %3916, i64* %3919, align 8
  store i64 %3918, i64* %6, align 8
  store i64 %3915, i64* %3, align 8
  %call2_40b4cb = tail call %struct.Memory* @sub_475150.sign(%struct.State* nonnull %0, i64 %3915, %struct.Memory* %3044)
  %3920 = load i64, i64* %3, align 8
  %3921 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3921, i64* %RDX.i2151, align 8
  %3922 = add i64 %3921, 13112
  %3923 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %3924 = add i64 %3920, 14
  store i64 %3924, i64* %3, align 8
  %3925 = inttoptr i64 %3922 to i32*
  store i32 %3923, i32* %3925, align 4
  %3926 = load i64, i64* %3, align 8
  %3927 = add i64 %3926, 115
  store i64 %3927, i64* %3, align 8
  br label %block_.L_40b551

block_.L_40b4e3:                                  ; preds = %block_.L_40b466
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %RAX.i2123.pre-phi, align 8
  %3928 = add i64 %3088, -72
  %3929 = add i64 %3735, 13
  store i64 %3929, i64* %3, align 8
  %3930 = inttoptr i64 %3928 to i32*
  %3931 = load i32, i32* %3930, align 4
  %3932 = zext i32 %3931 to i64
  store i64 %3932, i64* %RCX.i1445, align 8
  %3933 = add i64 %3088, -4
  %3934 = add i64 %3735, 17
  store i64 %3934, i64* %3, align 8
  %3935 = inttoptr i64 %3933 to i32*
  %3936 = load i32, i32* %3935, align 4
  %3937 = sext i32 %3936 to i64
  %3938 = mul nsw i64 %3937, 384
  store i64 %3938, i64* %RDX.i2151, align 8
  %3939 = lshr i64 %3938, 63
  %3940 = add i64 %3938, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  store i64 %3940, i64* %RAX.i2123.pre-phi, align 8
  %3941 = icmp ult i64 %3940, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  %3942 = icmp ult i64 %3940, %3938
  %3943 = or i1 %3941, %3942
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %14, align 1
  %3945 = trunc i64 %3940 to i32
  %3946 = and i32 %3945, 248
  %3947 = tail call i32 @llvm.ctpop.i32(i32 %3946)
  %3948 = trunc i32 %3947 to i8
  %3949 = and i8 %3948, 1
  %3950 = xor i8 %3949, 1
  store i8 %3950, i8* %21, align 1
  %3951 = xor i64 %3940, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  %3952 = lshr i64 %3951, 4
  %3953 = trunc i64 %3952 to i8
  %3954 = and i8 %3953, 1
  store i8 %3954, i8* %27, align 1
  %3955 = icmp eq i64 %3940, 0
  %3956 = zext i1 %3955 to i8
  store i8 %3956, i8* %30, align 1
  %3957 = lshr i64 %3940, 63
  %3958 = trunc i64 %3957 to i8
  store i8 %3958, i8* %33, align 1
  %3959 = xor i64 %3957, lshr (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 63)
  %3960 = xor i64 %3957, %3939
  %3961 = add nuw nsw i64 %3959, %3960
  %3962 = icmp eq i64 %3961, 2
  %3963 = zext i1 %3962 to i8
  store i8 %3963, i8* %39, align 1
  %3964 = add i64 %3088, -108
  %3965 = add i64 %3735, 31
  store i64 %3965, i64* %3, align 8
  %3966 = inttoptr i64 %3964 to i32*
  %3967 = load i32, i32* %3966, align 4
  %3968 = sext i32 %3967 to i64
  %3969 = shl nsw i64 %3968, 6
  store i64 %3969, i64* %RDX.i2151, align 8
  %3970 = add i64 %3969, %3940
  store i64 %3970, i64* %RAX.i2123.pre-phi, align 8
  %3971 = icmp ult i64 %3970, %3940
  %3972 = icmp ult i64 %3970, %3969
  %3973 = or i1 %3971, %3972
  %3974 = zext i1 %3973 to i8
  store i8 %3974, i8* %14, align 1
  %3975 = trunc i64 %3970 to i32
  %3976 = and i32 %3975, 248
  %3977 = tail call i32 @llvm.ctpop.i32(i32 %3976)
  %3978 = trunc i32 %3977 to i8
  %3979 = and i8 %3978, 1
  %3980 = xor i8 %3979, 1
  store i8 %3980, i8* %21, align 1
  %3981 = xor i64 %3940, %3970
  %3982 = lshr i64 %3981, 4
  %3983 = trunc i64 %3982 to i8
  %3984 = and i8 %3983, 1
  store i8 %3984, i8* %27, align 1
  %3985 = icmp eq i64 %3970, 0
  %3986 = zext i1 %3985 to i8
  store i8 %3986, i8* %30, align 1
  %3987 = lshr i64 %3970, 63
  %3988 = trunc i64 %3987 to i8
  store i8 %3988, i8* %33, align 1
  %3989 = lshr i64 %3968, 57
  %3990 = and i64 %3989, 1
  %3991 = xor i64 %3987, %3957
  %3992 = xor i64 %3987, %3990
  %3993 = add nuw nsw i64 %3991, %3992
  %3994 = icmp eq i64 %3993, 2
  %3995 = zext i1 %3994 to i8
  store i8 %3995, i8* %39, align 1
  %3996 = load i64, i64* %RCX.i1445, align 8
  %3997 = inttoptr i64 %3970 to i32*
  %3998 = add i64 %3735, 41
  store i64 %3998, i64* %3, align 8
  %3999 = load i32, i32* %3997, align 8
  %4000 = shl i64 %3996, 32
  %4001 = ashr exact i64 %4000, 32
  %4002 = sext i32 %3999 to i64
  %4003 = mul nsw i64 %4002, %4001
  %4004 = trunc i64 %4003 to i32
  %4005 = and i64 %4003, 4294967295
  store i64 %4005, i64* %RCX.i1445, align 8
  %4006 = shl i64 %4003, 32
  %4007 = ashr exact i64 %4006, 32
  %4008 = icmp ne i64 %4007, %4003
  %4009 = zext i1 %4008 to i8
  store i8 %4009, i8* %14, align 1
  %4010 = and i32 %4004, 255
  %4011 = tail call i32 @llvm.ctpop.i32(i32 %4010)
  %4012 = trunc i32 %4011 to i8
  %4013 = and i8 %4012, 1
  %4014 = xor i8 %4013, 1
  store i8 %4014, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %4015 = lshr i32 %4004, 31
  %4016 = trunc i32 %4015 to i8
  store i8 %4016, i8* %33, align 1
  store i8 %4009, i8* %39, align 1
  %4017 = load i64, i64* %RBP.i, align 8
  %4018 = add i64 %4017, -104
  %4019 = add i64 %3735, 44
  store i64 %4019, i64* %3, align 8
  %4020 = inttoptr i64 %4018 to i32*
  %4021 = load i32, i32* %4020, align 4
  %4022 = add i32 %4021, -4
  %4023 = zext i32 %4022 to i64
  store i64 %4023, i64* %RSI.i2229, align 8
  %4024 = icmp ult i32 %4021, 4
  %4025 = zext i1 %4024 to i8
  store i8 %4025, i8* %14, align 1
  %4026 = and i32 %4022, 255
  %4027 = tail call i32 @llvm.ctpop.i32(i32 %4026)
  %4028 = trunc i32 %4027 to i8
  %4029 = and i8 %4028, 1
  %4030 = xor i8 %4029, 1
  store i8 %4030, i8* %21, align 1
  %4031 = xor i32 %4022, %4021
  %4032 = lshr i32 %4031, 4
  %4033 = trunc i32 %4032 to i8
  %4034 = and i8 %4033, 1
  store i8 %4034, i8* %27, align 1
  %4035 = icmp eq i32 %4022, 0
  %4036 = zext i1 %4035 to i8
  store i8 %4036, i8* %30, align 1
  %4037 = lshr i32 %4022, 31
  %4038 = trunc i32 %4037 to i8
  store i8 %4038, i8* %33, align 1
  %4039 = lshr i32 %4021, 31
  %4040 = xor i32 %4037, %4039
  %4041 = add nuw nsw i32 %4040, %4039
  %4042 = icmp eq i32 %4041, 2
  %4043 = zext i1 %4042 to i8
  store i8 %4043, i8* %39, align 1
  %4044 = add i64 %4017, -188
  %4045 = trunc i64 %4003 to i32
  %4046 = add i64 %3735, 53
  store i64 %4046, i64* %3, align 8
  %4047 = inttoptr i64 %4044 to i32*
  store i32 %4045, i32* %4047, align 4
  %4048 = load i32, i32* %ESI.i1397, align 4
  %4049 = zext i32 %4048 to i64
  %4050 = load i64, i64* %3, align 8
  store i64 %4049, i64* %RCX.i1445, align 8
  %4051 = load i64, i64* %RBP.i, align 8
  %4052 = add i64 %4051, -188
  %4053 = add i64 %4050, 8
  store i64 %4053, i64* %3, align 8
  %4054 = inttoptr i64 %4052 to i32*
  %4055 = load i32, i32* %4054, align 4
  %4056 = zext i32 %4055 to i64
  store i64 %4056, i64* %RSI.i2229, align 8
  %4057 = add i64 %4050, 10
  store i64 %4057, i64* %3, align 8
  %4058 = trunc i32 %4048 to i5
  switch i5 %4058, label %4064 [
    i5 0, label %routine_shll__cl___esi.exit1092
    i5 1, label %4059
  ]

; <label>:4059:                                   ; preds = %block_.L_40b4e3
  %4060 = shl i32 %4055, 1
  %4061 = icmp slt i32 %4055, 0
  %4062 = icmp slt i32 %4060, 0
  %4063 = xor i1 %4061, %4062
  br label %4073

; <label>:4064:                                   ; preds = %block_.L_40b4e3
  %4065 = and i32 %4048, 31
  %4066 = zext i32 %4065 to i64
  %4067 = add nuw nsw i64 %4066, 4294967295
  %4068 = and i64 %4067, 4294967295
  %4069 = shl i64 %4056, %4068
  %4070 = trunc i64 %4069 to i32
  %4071 = icmp slt i32 %4070, 0
  %4072 = shl i32 %4070, 1
  br label %4073

; <label>:4073:                                   ; preds = %4064, %4059
  %4074 = phi i1 [ %4061, %4059 ], [ %4071, %4064 ]
  %4075 = phi i1 [ %4063, %4059 ], [ false, %4064 ]
  %4076 = phi i32 [ %4060, %4059 ], [ %4072, %4064 ]
  %4077 = zext i32 %4076 to i64
  store i64 %4077, i64* %RSI.i2229, align 8
  %4078 = zext i1 %4074 to i8
  store i8 %4078, i8* %14, align 1
  %4079 = and i32 %4076, 254
  %4080 = tail call i32 @llvm.ctpop.i32(i32 %4079)
  %4081 = trunc i32 %4080 to i8
  %4082 = and i8 %4081, 1
  %4083 = xor i8 %4082, 1
  store i8 %4083, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4084 = icmp eq i32 %4076, 0
  %4085 = zext i1 %4084 to i8
  store i8 %4085, i8* %30, align 1
  %4086 = lshr i32 %4076, 31
  %4087 = trunc i32 %4086 to i8
  store i8 %4087, i8* %33, align 1
  %4088 = zext i1 %4075 to i8
  store i8 %4088, i8* %39, align 1
  br label %routine_shll__cl___esi.exit1092

routine_shll__cl___esi.exit1092:                  ; preds = %4073, %block_.L_40b4e3
  %4089 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4089, i64* %RAX.i2123.pre-phi, align 8
  %4090 = add i64 %4089, 13112
  %4091 = add i64 %4050, 24
  store i64 %4091, i64* %3, align 8
  %4092 = inttoptr i64 %4090 to i32*
  %4093 = load i32, i32* %4092, align 4
  %4094 = add i64 %4051, -192
  %4095 = add i64 %4050, 30
  store i64 %4095, i64* %3, align 8
  %4096 = inttoptr i64 %4094 to i32*
  store i32 %4093, i32* %4096, align 4
  %4097 = load i32, i32* %ESI.i1397, align 4
  %4098 = zext i32 %4097 to i64
  %4099 = load i64, i64* %3, align 8
  store i64 %4098, i64* %RDI.i2224, align 8
  %4100 = load i64, i64* %RBP.i, align 8
  %4101 = add i64 %4100, -192
  %4102 = add i64 %4099, 8
  store i64 %4102, i64* %3, align 8
  %4103 = inttoptr i64 %4101 to i32*
  %4104 = load i32, i32* %4103, align 4
  %4105 = zext i32 %4104 to i64
  store i64 %4105, i64* %RSI.i2229, align 8
  %4106 = add i64 %4099, 433178
  %4107 = add i64 %4099, 13
  %4108 = load i64, i64* %6, align 8
  %4109 = add i64 %4108, -8
  %4110 = inttoptr i64 %4109 to i64*
  store i64 %4107, i64* %4110, align 8
  store i64 %4109, i64* %6, align 8
  store i64 %4106, i64* %3, align 8
  %call2_40b53e = tail call %struct.Memory* @sub_475150.sign(%struct.State* nonnull %0, i64 %4106, %struct.Memory* %3044)
  %4111 = load i64, i64* %3, align 8
  %4112 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4112, i64* %RDX.i2151, align 8
  %4113 = add i64 %4112, 13112
  %4114 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %4115 = add i64 %4111, 14
  store i64 %4115, i64* %3, align 8
  %4116 = inttoptr i64 %4113 to i32*
  store i32 %4114, i32* %4116, align 4
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_40b551

block_.L_40b551:                                  ; preds = %routine_shll__cl___esi.exit1092, %routine_shll__cl___esi.exit1155
  %4117 = phi i64 [ %.pre140, %routine_shll__cl___esi.exit1092 ], [ %3927, %routine_shll__cl___esi.exit1155 ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_40b53e, %routine_shll__cl___esi.exit1092 ], [ %call2_40b4cb, %routine_shll__cl___esi.exit1155 ]
  %4118 = add i64 %4117, 5
  store i64 %4118, i64* %3, align 8
  br label %block_.L_40b556

block_.L_40b556:                                  ; preds = %block_.L_40b551, %block_.L_40b461
  %storemerge88 = phi i64 [ %3734, %block_.L_40b461 ], [ %4118, %block_.L_40b551 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.11, %block_.L_40b461 ], [ %MEMORY.12, %block_.L_40b551 ]
  %4119 = add i64 %storemerge88, 5
  store i64 %4119, i64* %3, align 8
  br label %block_.L_40b55b

block_.L_40b55b:                                  ; preds = %block_.L_40b556, %block_40b333
  %storemerge56 = phi i64 [ %3127, %block_40b333 ], [ %4119, %block_.L_40b556 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_40b344, %block_40b333 ], [ %MEMORY.13, %block_.L_40b556 ]
  %4120 = load i64, i64* %RBP.i, align 8
  %4121 = add i64 %4120, -68
  %4122 = add i64 %storemerge56, 7
  store i64 %4122, i64* %3, align 8
  %4123 = inttoptr i64 %4121 to i32*
  store i32 1, i32* %4123, align 4
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_40b562

block_.L_40b562:                                  ; preds = %block_.L_40b9b6, %block_.L_40b55b
  %4124 = phi i64 [ %.pre142, %block_.L_40b55b ], [ %6532, %block_.L_40b9b6 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_.L_40b55b ], [ %MEMORY.24, %block_.L_40b9b6 ]
  %4125 = load i64, i64* %RBP.i, align 8
  %4126 = add i64 %4125, -68
  %4127 = add i64 %4124, 4
  store i64 %4127, i64* %3, align 8
  %4128 = inttoptr i64 %4126 to i32*
  %4129 = load i32, i32* %4128, align 4
  %4130 = add i32 %4129, -16
  %4131 = icmp ult i32 %4129, 16
  %4132 = zext i1 %4131 to i8
  store i8 %4132, i8* %14, align 1
  %4133 = and i32 %4130, 255
  %4134 = tail call i32 @llvm.ctpop.i32(i32 %4133)
  %4135 = trunc i32 %4134 to i8
  %4136 = and i8 %4135, 1
  %4137 = xor i8 %4136, 1
  store i8 %4137, i8* %21, align 1
  %4138 = xor i32 %4129, 16
  %4139 = xor i32 %4138, %4130
  %4140 = lshr i32 %4139, 4
  %4141 = trunc i32 %4140 to i8
  %4142 = and i8 %4141, 1
  store i8 %4142, i8* %27, align 1
  %4143 = icmp eq i32 %4130, 0
  %4144 = zext i1 %4143 to i8
  store i8 %4144, i8* %30, align 1
  %4145 = lshr i32 %4130, 31
  %4146 = trunc i32 %4145 to i8
  store i8 %4146, i8* %33, align 1
  %4147 = lshr i32 %4129, 31
  %4148 = xor i32 %4145, %4147
  %4149 = add nuw nsw i32 %4148, %4147
  %4150 = icmp eq i32 %4149, 2
  %4151 = zext i1 %4150 to i8
  store i8 %4151, i8* %39, align 1
  %4152 = icmp ne i8 %4146, 0
  %4153 = xor i1 %4152, %4150
  %.v165 = select i1 %4153, i64 10, i64 1127
  %4154 = add i64 %4124, %.v165
  store i64 %4154, i64* %3, align 8
  br i1 %4153, label %block_40b56c, label %block_.L_40b9c9

block_40b56c:                                     ; preds = %block_.L_40b562
  %4155 = add i64 %4154, 4
  store i64 %4155, i64* %3, align 8
  %4156 = load i32, i32* %4128, align 4
  %4157 = sext i32 %4156 to i64
  store i64 %4157, i64* %RAX.i2123.pre-phi, align 8
  %4158 = shl nsw i64 %4157, 1
  %4159 = add nsw i64 %4158, 4924256
  %4160 = add i64 %4154, 12
  store i64 %4160, i64* %3, align 8
  %4161 = inttoptr i64 %4159 to i8*
  %4162 = load i8, i8* %4161, align 2
  %4163 = zext i8 %4162 to i64
  store i64 %4163, i64* %RCX.i1445, align 8
  %4164 = add i64 %4125, -16
  %4165 = zext i8 %4162 to i32
  %4166 = add i64 %4154, 15
  store i64 %4166, i64* %3, align 8
  %4167 = inttoptr i64 %4164 to i32*
  store i32 %4165, i32* %4167, align 4
  %4168 = load i64, i64* %RBP.i, align 8
  %4169 = add i64 %4168, -68
  %4170 = load i64, i64* %3, align 8
  %4171 = add i64 %4170, 4
  store i64 %4171, i64* %3, align 8
  %4172 = inttoptr i64 %4169 to i32*
  %4173 = load i32, i32* %4172, align 4
  %4174 = sext i32 %4173 to i64
  store i64 %4174, i64* %RAX.i2123.pre-phi, align 8
  %4175 = shl nsw i64 %4174, 1
  %4176 = add nsw i64 %4175, 4924257
  %4177 = add i64 %4170, 12
  store i64 %4177, i64* %3, align 8
  %4178 = inttoptr i64 %4176 to i8*
  %4179 = load i8, i8* %4178, align 1
  %4180 = zext i8 %4179 to i64
  store i64 %4180, i64* %RCX.i1445, align 8
  %4181 = add i64 %4168, -20
  %4182 = zext i8 %4179 to i32
  %4183 = add i64 %4170, 15
  store i64 %4183, i64* %3, align 8
  %4184 = inttoptr i64 %4181 to i32*
  store i32 %4182, i32* %4184, align 4
  %4185 = load i64, i64* %RBP.i, align 8
  %4186 = add i64 %4185, -80
  %4187 = load i64, i64* %3, align 8
  %4188 = add i64 %4187, 3
  store i64 %4188, i64* %3, align 8
  %4189 = inttoptr i64 %4186 to i32*
  %4190 = load i32, i32* %4189, align 4
  %4191 = add i32 %4190, 1
  %4192 = zext i32 %4191 to i64
  store i64 %4192, i64* %RCX.i1445, align 8
  %4193 = icmp eq i32 %4190, -1
  %4194 = icmp eq i32 %4191, 0
  %4195 = or i1 %4193, %4194
  %4196 = zext i1 %4195 to i8
  store i8 %4196, i8* %14, align 1
  %4197 = and i32 %4191, 255
  %4198 = tail call i32 @llvm.ctpop.i32(i32 %4197)
  %4199 = trunc i32 %4198 to i8
  %4200 = and i8 %4199, 1
  %4201 = xor i8 %4200, 1
  store i8 %4201, i8* %21, align 1
  %4202 = xor i32 %4191, %4190
  %4203 = lshr i32 %4202, 4
  %4204 = trunc i32 %4203 to i8
  %4205 = and i8 %4204, 1
  store i8 %4205, i8* %27, align 1
  %4206 = zext i1 %4194 to i8
  store i8 %4206, i8* %30, align 1
  %4207 = lshr i32 %4191, 31
  %4208 = trunc i32 %4207 to i8
  store i8 %4208, i8* %33, align 1
  %4209 = lshr i32 %4190, 31
  %4210 = xor i32 %4207, %4209
  %4211 = add nuw nsw i32 %4210, %4207
  %4212 = icmp eq i32 %4211, 2
  %4213 = zext i1 %4212 to i8
  store i8 %4213, i8* %39, align 1
  %4214 = add i64 %4187, 9
  store i64 %4214, i64* %3, align 8
  store i32 %4191, i32* %4189, align 4
  %4215 = load i64, i64* %RBP.i, align 8
  %4216 = add i64 %4215, -32
  %4217 = load i64, i64* %3, align 8
  %4218 = add i64 %4217, 7
  store i64 %4218, i64* %3, align 8
  %4219 = inttoptr i64 %4216 to i32*
  store i32 0, i32* %4219, align 4
  %4220 = load i64, i64* %RBP.i, align 8
  %4221 = add i64 %4220, -140
  %4222 = load i64, i64* %3, align 8
  %4223 = add i64 %4222, 7
  store i64 %4223, i64* %3, align 8
  %4224 = inttoptr i64 %4221 to i32*
  %4225 = load i32, i32* %4224, align 4
  store i8 0, i8* %14, align 1
  %4226 = and i32 %4225, 255
  %4227 = tail call i32 @llvm.ctpop.i32(i32 %4226)
  %4228 = trunc i32 %4227 to i8
  %4229 = and i8 %4228, 1
  %4230 = xor i8 %4229, 1
  store i8 %4230, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4231 = icmp eq i32 %4225, 0
  %4232 = zext i1 %4231 to i8
  store i8 %4232, i8* %30, align 1
  %4233 = lshr i32 %4225, 31
  %4234 = trunc i32 %4233 to i8
  store i8 %4234, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v174 = select i1 %4231, i64 58, i64 13
  %4235 = add i64 %4222, %.v174
  store i64 %4235, i64* %3, align 8
  br i1 %4231, label %block_.L_40b5d4, label %block_40b5a7

block_40b5a7:                                     ; preds = %block_40b56c
  %4236 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4237 = add i64 %4236, 13112
  store i64 %4237, i64* %RAX.i2123.pre-phi, align 8
  %4238 = icmp ugt i64 %4236, -13113
  %4239 = zext i1 %4238 to i8
  store i8 %4239, i8* %14, align 1
  %4240 = trunc i64 %4237 to i32
  %4241 = and i32 %4240, 255
  %4242 = tail call i32 @llvm.ctpop.i32(i32 %4241)
  %4243 = trunc i32 %4242 to i8
  %4244 = and i8 %4243, 1
  %4245 = xor i8 %4244, 1
  store i8 %4245, i8* %21, align 1
  %4246 = xor i64 %4236, 16
  %4247 = xor i64 %4246, %4237
  %4248 = lshr i64 %4247, 4
  %4249 = trunc i64 %4248 to i8
  %4250 = and i8 %4249, 1
  store i8 %4250, i8* %27, align 1
  %4251 = icmp eq i64 %4237, 0
  %4252 = zext i1 %4251 to i8
  store i8 %4252, i8* %30, align 1
  %4253 = lshr i64 %4237, 63
  %4254 = trunc i64 %4253 to i8
  store i8 %4254, i8* %33, align 1
  %4255 = lshr i64 %4236, 63
  %4256 = xor i64 %4253, %4255
  %4257 = add nuw nsw i64 %4256, %4253
  %4258 = icmp eq i64 %4257, 2
  %4259 = zext i1 %4258 to i8
  store i8 %4259, i8* %39, align 1
  %4260 = add i64 %4220, -16
  %4261 = add i64 %4235, 18
  store i64 %4261, i64* %3, align 8
  %4262 = inttoptr i64 %4260 to i32*
  %4263 = load i32, i32* %4262, align 4
  %4264 = sext i32 %4263 to i64
  %4265 = shl nsw i64 %4264, 6
  store i64 %4265, i64* %RCX.i1445, align 8
  %4266 = add i64 %4265, %4237
  store i64 %4266, i64* %RAX.i2123.pre-phi, align 8
  %4267 = icmp ult i64 %4266, %4237
  %4268 = icmp ult i64 %4266, %4265
  %4269 = or i1 %4267, %4268
  %4270 = zext i1 %4269 to i8
  store i8 %4270, i8* %14, align 1
  %4271 = trunc i64 %4266 to i32
  %4272 = and i32 %4271, 255
  %4273 = tail call i32 @llvm.ctpop.i32(i32 %4272)
  %4274 = trunc i32 %4273 to i8
  %4275 = and i8 %4274, 1
  %4276 = xor i8 %4275, 1
  store i8 %4276, i8* %21, align 1
  %4277 = xor i64 %4237, %4266
  %4278 = lshr i64 %4277, 4
  %4279 = trunc i64 %4278 to i8
  %4280 = and i8 %4279, 1
  store i8 %4280, i8* %27, align 1
  %4281 = icmp eq i64 %4266, 0
  %4282 = zext i1 %4281 to i8
  store i8 %4282, i8* %30, align 1
  %4283 = lshr i64 %4266, 63
  %4284 = trunc i64 %4283 to i8
  store i8 %4284, i8* %33, align 1
  %4285 = lshr i64 %4264, 57
  %4286 = and i64 %4285, 1
  %4287 = xor i64 %4283, %4253
  %4288 = xor i64 %4283, %4286
  %4289 = add nuw nsw i64 %4287, %4288
  %4290 = icmp eq i64 %4289, 2
  %4291 = zext i1 %4290 to i8
  store i8 %4291, i8* %39, align 1
  %4292 = load i64, i64* %RBP.i, align 8
  %4293 = add i64 %4292, -20
  %4294 = add i64 %4235, 29
  store i64 %4294, i64* %3, align 8
  %4295 = inttoptr i64 %4293 to i32*
  %4296 = load i32, i32* %4295, align 4
  %4297 = sext i32 %4296 to i64
  store i64 %4297, i64* %RCX.i1445, align 8
  %4298 = shl nsw i64 %4297, 2
  %4299 = add i64 %4298, %4266
  %4300 = add i64 %4235, 32
  store i64 %4300, i64* %3, align 8
  %4301 = inttoptr i64 %4299 to i32*
  %4302 = load i32, i32* %4301, align 4
  %4303 = zext i32 %4302 to i64
  store i64 %4303, i64* %RDI.i2224, align 8
  %4304 = add i64 %4235, -42407
  %4305 = add i64 %4235, 37
  %4306 = load i64, i64* %6, align 8
  %4307 = add i64 %4306, -8
  %4308 = inttoptr i64 %4307 to i64*
  store i64 %4305, i64* %4308, align 8
  store i64 %4307, i64* %6, align 8
  store i64 %4304, i64* %3, align 8
  %4309 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.15)
  %4310 = load i64, i64* %RBP.i, align 8
  %4311 = add i64 %4310, -72
  %4312 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %4313 = load i64, i64* %3, align 8
  %4314 = add i64 %4313, 3
  store i64 %4314, i64* %3, align 8
  %4315 = inttoptr i64 %4311 to i32*
  store i32 %4312, i32* %4315, align 4
  %4316 = load i64, i64* %3, align 8
  %4317 = add i64 %4316, 329
  br label %block_.L_40b718

block_.L_40b5d4:                                  ; preds = %block_40b56c
  %4318 = add i64 %4220, -100
  %4319 = add i64 %4235, 4
  store i64 %4319, i64* %3, align 8
  %4320 = inttoptr i64 %4318 to i32*
  %4321 = load i32, i32* %4320, align 4
  %4322 = icmp eq i32 %4321, 1
  %.v181 = select i1 %4322, i64 10, i64 167
  %4323 = add i64 %4235, %.v181
  %4324 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4325 = add i64 %4324, 13112
  store i64 %4325, i64* %RAX.i2123.pre-phi, align 8
  %4326 = icmp ugt i64 %4324, -13113
  %4327 = zext i1 %4326 to i8
  store i8 %4327, i8* %14, align 1
  %4328 = trunc i64 %4325 to i32
  %4329 = and i32 %4328, 255
  %4330 = tail call i32 @llvm.ctpop.i32(i32 %4329)
  %4331 = trunc i32 %4330 to i8
  %4332 = and i8 %4331, 1
  %4333 = xor i8 %4332, 1
  store i8 %4333, i8* %21, align 1
  %4334 = xor i64 %4324, 16
  %4335 = xor i64 %4334, %4325
  %4336 = lshr i64 %4335, 4
  %4337 = trunc i64 %4336 to i8
  %4338 = and i8 %4337, 1
  store i8 %4338, i8* %27, align 1
  %4339 = icmp eq i64 %4325, 0
  %4340 = zext i1 %4339 to i8
  store i8 %4340, i8* %30, align 1
  %4341 = lshr i64 %4325, 63
  %4342 = trunc i64 %4341 to i8
  store i8 %4342, i8* %33, align 1
  %4343 = lshr i64 %4324, 63
  %4344 = xor i64 %4341, %4343
  %4345 = add nuw nsw i64 %4344, %4341
  %4346 = icmp eq i64 %4345, 2
  %4347 = zext i1 %4346 to i8
  store i8 %4347, i8* %39, align 1
  %4348 = add i64 %4220, -16
  %4349 = add i64 %4323, 18
  store i64 %4349, i64* %3, align 8
  %4350 = inttoptr i64 %4348 to i32*
  %4351 = load i32, i32* %4350, align 4
  %4352 = sext i32 %4351 to i64
  %4353 = shl nsw i64 %4352, 6
  store i64 %4353, i64* %RCX.i1445, align 8
  %4354 = add i64 %4353, %4325
  store i64 %4354, i64* %RAX.i2123.pre-phi, align 8
  %4355 = icmp ult i64 %4354, %4325
  %4356 = icmp ult i64 %4354, %4353
  %4357 = or i1 %4355, %4356
  %4358 = zext i1 %4357 to i8
  store i8 %4358, i8* %14, align 1
  %4359 = trunc i64 %4354 to i32
  %4360 = and i32 %4359, 255
  %4361 = tail call i32 @llvm.ctpop.i32(i32 %4360)
  %4362 = trunc i32 %4361 to i8
  %4363 = and i8 %4362, 1
  %4364 = xor i8 %4363, 1
  store i8 %4364, i8* %21, align 1
  %4365 = xor i64 %4325, %4354
  %4366 = lshr i64 %4365, 4
  %4367 = trunc i64 %4366 to i8
  %4368 = and i8 %4367, 1
  store i8 %4368, i8* %27, align 1
  %4369 = icmp eq i64 %4354, 0
  %4370 = zext i1 %4369 to i8
  store i8 %4370, i8* %30, align 1
  %4371 = lshr i64 %4354, 63
  %4372 = trunc i64 %4371 to i8
  store i8 %4372, i8* %33, align 1
  %4373 = lshr i64 %4352, 57
  %4374 = and i64 %4373, 1
  %4375 = xor i64 %4371, %4341
  %4376 = xor i64 %4371, %4374
  %4377 = add nuw nsw i64 %4375, %4376
  %4378 = icmp eq i64 %4377, 2
  %4379 = zext i1 %4378 to i8
  store i8 %4379, i8* %39, align 1
  %4380 = load i64, i64* %RBP.i, align 8
  %4381 = add i64 %4380, -20
  %4382 = add i64 %4323, 29
  store i64 %4382, i64* %3, align 8
  %4383 = inttoptr i64 %4381 to i32*
  %4384 = load i32, i32* %4383, align 4
  %4385 = sext i32 %4384 to i64
  store i64 %4385, i64* %RCX.i1445, align 8
  %4386 = shl nsw i64 %4385, 2
  %4387 = add i64 %4386, %4354
  %4388 = add i64 %4323, 32
  store i64 %4388, i64* %3, align 8
  %4389 = inttoptr i64 %4387 to i32*
  %4390 = load i32, i32* %4389, align 4
  %4391 = zext i32 %4390 to i64
  store i64 %4391, i64* %RDI.i2224, align 8
  br i1 %4322, label %block_40b5de, label %block_.L_40b67b

block_40b5de:                                     ; preds = %block_.L_40b5d4
  %4392 = add i64 %4323, -42462
  %4393 = add i64 %4323, 37
  %4394 = load i64, i64* %6, align 8
  %4395 = add i64 %4394, -8
  %4396 = inttoptr i64 %4395 to i64*
  store i64 %4393, i64* %4396, align 8
  store i64 %4395, i64* %6, align 8
  store i64 %4392, i64* %3, align 8
  %4397 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.15)
  %4398 = load i64, i64* %3, align 8
  store i64 7490528, i64* %RCX.i1445, align 8
  store i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64* %RDX.i2151, align 8
  %4399 = load i64, i64* %RBP.i, align 8
  %4400 = add i64 %4399, -4
  %4401 = add i64 %4398, 24
  store i64 %4401, i64* %3, align 8
  %4402 = inttoptr i64 %4400 to i32*
  %4403 = load i32, i32* %4402, align 4
  %4404 = sext i32 %4403 to i64
  %4405 = mul nsw i64 %4404, 384
  store i64 %4405, i64* %RSI.i2229, align 8
  %4406 = lshr i64 %4405, 63
  %4407 = add i64 %4405, ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64)
  store i64 %4407, i64* %RDX.i2151, align 8
  %4408 = icmp ult i64 %4407, ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64)
  %4409 = icmp ult i64 %4407, %4405
  %4410 = or i1 %4408, %4409
  %4411 = zext i1 %4410 to i8
  store i8 %4411, i8* %14, align 1
  %4412 = trunc i64 %4407 to i32
  %4413 = and i32 %4412, 248
  %4414 = tail call i32 @llvm.ctpop.i32(i32 %4413)
  %4415 = trunc i32 %4414 to i8
  %4416 = and i8 %4415, 1
  %4417 = xor i8 %4416, 1
  store i8 %4417, i8* %21, align 1
  %4418 = xor i64 %4407, ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64)
  %4419 = lshr i64 %4418, 4
  %4420 = trunc i64 %4419 to i8
  %4421 = and i8 %4420, 1
  store i8 %4421, i8* %27, align 1
  %4422 = icmp eq i64 %4407, 0
  %4423 = zext i1 %4422 to i8
  store i8 %4423, i8* %30, align 1
  %4424 = lshr i64 %4407, 63
  %4425 = trunc i64 %4424 to i8
  store i8 %4425, i8* %33, align 1
  %4426 = xor i64 %4424, lshr (i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64 63)
  %4427 = xor i64 %4424, %4406
  %4428 = add nuw nsw i64 %4426, %4427
  %4429 = icmp eq i64 %4428, 2
  %4430 = zext i1 %4429 to i8
  store i8 %4430, i8* %39, align 1
  %4431 = add i64 %4399, -108
  %4432 = add i64 %4398, 38
  store i64 %4432, i64* %3, align 8
  %4433 = inttoptr i64 %4431 to i32*
  %4434 = load i32, i32* %4433, align 4
  %4435 = sext i32 %4434 to i64
  %4436 = shl nsw i64 %4435, 6
  store i64 %4436, i64* %RSI.i2229, align 8
  %4437 = add i64 %4436, %4407
  store i64 %4437, i64* %RDX.i2151, align 8
  %4438 = icmp ult i64 %4437, %4407
  %4439 = icmp ult i64 %4437, %4436
  %4440 = or i1 %4438, %4439
  %4441 = zext i1 %4440 to i8
  store i8 %4441, i8* %14, align 1
  %4442 = trunc i64 %4437 to i32
  %4443 = and i32 %4442, 248
  %4444 = tail call i32 @llvm.ctpop.i32(i32 %4443)
  %4445 = trunc i32 %4444 to i8
  %4446 = and i8 %4445, 1
  %4447 = xor i8 %4446, 1
  store i8 %4447, i8* %21, align 1
  %4448 = xor i64 %4407, %4437
  %4449 = lshr i64 %4448, 4
  %4450 = trunc i64 %4449 to i8
  %4451 = and i8 %4450, 1
  store i8 %4451, i8* %27, align 1
  %4452 = icmp eq i64 %4437, 0
  %4453 = zext i1 %4452 to i8
  store i8 %4453, i8* %30, align 1
  %4454 = lshr i64 %4437, 63
  %4455 = trunc i64 %4454 to i8
  store i8 %4455, i8* %33, align 1
  %4456 = lshr i64 %4435, 57
  %4457 = and i64 %4456, 1
  %4458 = xor i64 %4454, %4424
  %4459 = xor i64 %4454, %4457
  %4460 = add nuw nsw i64 %4458, %4459
  %4461 = icmp eq i64 %4460, 2
  %4462 = zext i1 %4461 to i8
  store i8 %4462, i8* %39, align 1
  %4463 = load i64, i64* %RBP.i, align 8
  %4464 = add i64 %4463, -16
  %4465 = add i64 %4398, 49
  store i64 %4465, i64* %3, align 8
  %4466 = inttoptr i64 %4464 to i32*
  %4467 = load i32, i32* %4466, align 4
  %4468 = sext i32 %4467 to i64
  %4469 = shl nsw i64 %4468, 4
  store i64 %4469, i64* %RSI.i2229, align 8
  %4470 = add i64 %4469, %4437
  store i64 %4470, i64* %RDX.i2151, align 8
  %4471 = icmp ult i64 %4470, %4437
  %4472 = icmp ult i64 %4470, %4469
  %4473 = or i1 %4471, %4472
  %4474 = zext i1 %4473 to i8
  store i8 %4474, i8* %14, align 1
  %4475 = trunc i64 %4470 to i32
  %4476 = and i32 %4475, 255
  %4477 = tail call i32 @llvm.ctpop.i32(i32 %4476)
  %4478 = trunc i32 %4477 to i8
  %4479 = and i8 %4478, 1
  %4480 = xor i8 %4479, 1
  store i8 %4480, i8* %21, align 1
  %4481 = xor i64 %4469, %4437
  %4482 = xor i64 %4481, %4470
  %4483 = lshr i64 %4482, 4
  %4484 = trunc i64 %4483 to i8
  %4485 = and i8 %4484, 1
  store i8 %4485, i8* %27, align 1
  %4486 = icmp eq i64 %4470, 0
  %4487 = zext i1 %4486 to i8
  store i8 %4487, i8* %30, align 1
  %4488 = lshr i64 %4470, 63
  %4489 = trunc i64 %4488 to i8
  store i8 %4489, i8* %33, align 1
  %4490 = lshr i64 %4468, 59
  %4491 = and i64 %4490, 1
  %4492 = xor i64 %4488, %4454
  %4493 = xor i64 %4488, %4491
  %4494 = add nuw nsw i64 %4492, %4493
  %4495 = icmp eq i64 %4494, 2
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %39, align 1
  %4497 = add i64 %4463, -20
  %4498 = add i64 %4398, 60
  store i64 %4498, i64* %3, align 8
  %4499 = inttoptr i64 %4497 to i32*
  %4500 = load i32, i32* %4499, align 4
  %4501 = sext i32 %4500 to i64
  store i64 %4501, i64* %RSI.i2229, align 8
  %4502 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %4503 = shl nsw i64 %4501, 2
  %4504 = add i64 %4470, %4503
  %4505 = add i64 %4398, 64
  store i64 %4505, i64* %3, align 8
  %4506 = inttoptr i64 %4504 to i32*
  %4507 = load i32, i32* %4506, align 4
  %4508 = shl i64 %4502, 32
  %4509 = ashr exact i64 %4508, 32
  %4510 = sext i32 %4507 to i64
  %4511 = mul nsw i64 %4510, %4509
  %4512 = trunc i64 %4511 to i32
  %4513 = and i64 %4511, 4294967295
  store i64 %4513, i64* %RAX.i2123.pre-phi, align 8
  %4514 = shl i64 %4511, 32
  %4515 = ashr exact i64 %4514, 32
  %4516 = icmp ne i64 %4515, %4511
  %4517 = zext i1 %4516 to i8
  store i8 %4517, i8* %14, align 1
  %4518 = and i32 %4512, 255
  %4519 = tail call i32 @llvm.ctpop.i32(i32 %4518)
  %4520 = trunc i32 %4519 to i8
  %4521 = and i8 %4520, 1
  %4522 = xor i8 %4521, 1
  store i8 %4522, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %4523 = lshr i32 %4512, 31
  %4524 = trunc i32 %4523 to i8
  store i8 %4524, i8* %33, align 1
  store i8 %4517, i8* %39, align 1
  %4525 = load i64, i64* %RBP.i, align 8
  %4526 = add i64 %4525, -4
  %4527 = add i64 %4398, 68
  store i64 %4527, i64* %3, align 8
  %4528 = inttoptr i64 %4526 to i32*
  %4529 = load i32, i32* %4528, align 4
  %4530 = sext i32 %4529 to i64
  %4531 = mul nsw i64 %4530, 832
  store i64 %4531, i64* %RDX.i2151, align 8
  %4532 = lshr i64 %4531, 63
  %4533 = load i64, i64* %RCX.i1445, align 8
  %4534 = add i64 %4531, %4533
  store i64 %4534, i64* %RCX.i1445, align 8
  %4535 = icmp ult i64 %4534, %4533
  %4536 = icmp ult i64 %4534, %4531
  %4537 = or i1 %4535, %4536
  %4538 = zext i1 %4537 to i8
  store i8 %4538, i8* %14, align 1
  %4539 = trunc i64 %4534 to i32
  %4540 = and i32 %4539, 255
  %4541 = tail call i32 @llvm.ctpop.i32(i32 %4540)
  %4542 = trunc i32 %4541 to i8
  %4543 = and i8 %4542, 1
  %4544 = xor i8 %4543, 1
  store i8 %4544, i8* %21, align 1
  %4545 = xor i64 %4533, %4534
  %4546 = lshr i64 %4545, 4
  %4547 = trunc i64 %4546 to i8
  %4548 = and i8 %4547, 1
  store i8 %4548, i8* %27, align 1
  %4549 = icmp eq i64 %4534, 0
  %4550 = zext i1 %4549 to i8
  store i8 %4550, i8* %30, align 1
  %4551 = lshr i64 %4534, 63
  %4552 = trunc i64 %4551 to i8
  store i8 %4552, i8* %33, align 1
  %4553 = lshr i64 %4533, 63
  %4554 = xor i64 %4551, %4553
  %4555 = xor i64 %4551, %4532
  %4556 = add nuw nsw i64 %4554, %4555
  %4557 = icmp eq i64 %4556, 2
  %4558 = zext i1 %4557 to i8
  store i8 %4558, i8* %39, align 1
  %4559 = add i64 %4525, -104
  %4560 = add i64 %4398, 82
  store i64 %4560, i64* %3, align 8
  %4561 = inttoptr i64 %4559 to i32*
  %4562 = load i32, i32* %4561, align 4
  %4563 = sext i32 %4562 to i64
  %4564 = shl nsw i64 %4563, 6
  store i64 %4564, i64* %RDX.i2151, align 8
  %4565 = add i64 %4564, %4534
  store i64 %4565, i64* %RCX.i1445, align 8
  %4566 = icmp ult i64 %4565, %4534
  %4567 = icmp ult i64 %4565, %4564
  %4568 = or i1 %4566, %4567
  %4569 = zext i1 %4568 to i8
  store i8 %4569, i8* %14, align 1
  %4570 = trunc i64 %4565 to i32
  %4571 = and i32 %4570, 255
  %4572 = tail call i32 @llvm.ctpop.i32(i32 %4571)
  %4573 = trunc i32 %4572 to i8
  %4574 = and i8 %4573, 1
  %4575 = xor i8 %4574, 1
  store i8 %4575, i8* %21, align 1
  %4576 = xor i64 %4534, %4565
  %4577 = lshr i64 %4576, 4
  %4578 = trunc i64 %4577 to i8
  %4579 = and i8 %4578, 1
  store i8 %4579, i8* %27, align 1
  %4580 = icmp eq i64 %4565, 0
  %4581 = zext i1 %4580 to i8
  store i8 %4581, i8* %30, align 1
  %4582 = lshr i64 %4565, 63
  %4583 = trunc i64 %4582 to i8
  store i8 %4583, i8* %33, align 1
  %4584 = lshr i64 %4563, 57
  %4585 = and i64 %4584, 1
  %4586 = xor i64 %4582, %4551
  %4587 = xor i64 %4582, %4585
  %4588 = add nuw nsw i64 %4586, %4587
  %4589 = icmp eq i64 %4588, 2
  %4590 = zext i1 %4589 to i8
  store i8 %4590, i8* %39, align 1
  %4591 = load i64, i64* %RBP.i, align 8
  %4592 = add i64 %4591, -16
  %4593 = add i64 %4398, 93
  store i64 %4593, i64* %3, align 8
  %4594 = inttoptr i64 %4592 to i32*
  %4595 = load i32, i32* %4594, align 4
  %4596 = sext i32 %4595 to i64
  %4597 = shl nsw i64 %4596, 4
  store i64 %4597, i64* %RDX.i2151, align 8
  %4598 = add i64 %4597, %4565
  store i64 %4598, i64* %RCX.i1445, align 8
  %4599 = icmp ult i64 %4598, %4565
  %4600 = icmp ult i64 %4598, %4597
  %4601 = or i1 %4599, %4600
  %4602 = zext i1 %4601 to i8
  store i8 %4602, i8* %14, align 1
  %4603 = trunc i64 %4598 to i32
  %4604 = and i32 %4603, 255
  %4605 = tail call i32 @llvm.ctpop.i32(i32 %4604)
  %4606 = trunc i32 %4605 to i8
  %4607 = and i8 %4606, 1
  %4608 = xor i8 %4607, 1
  store i8 %4608, i8* %21, align 1
  %4609 = xor i64 %4597, %4565
  %4610 = xor i64 %4609, %4598
  %4611 = lshr i64 %4610, 4
  %4612 = trunc i64 %4611 to i8
  %4613 = and i8 %4612, 1
  store i8 %4613, i8* %27, align 1
  %4614 = icmp eq i64 %4598, 0
  %4615 = zext i1 %4614 to i8
  store i8 %4615, i8* %30, align 1
  %4616 = lshr i64 %4598, 63
  %4617 = trunc i64 %4616 to i8
  store i8 %4617, i8* %33, align 1
  %4618 = lshr i64 %4596, 59
  %4619 = and i64 %4618, 1
  %4620 = xor i64 %4616, %4582
  %4621 = xor i64 %4616, %4619
  %4622 = add nuw nsw i64 %4620, %4621
  %4623 = icmp eq i64 %4622, 2
  %4624 = zext i1 %4623 to i8
  store i8 %4624, i8* %39, align 1
  %4625 = add i64 %4591, -20
  %4626 = add i64 %4398, 104
  store i64 %4626, i64* %3, align 8
  %4627 = inttoptr i64 %4625 to i32*
  %4628 = load i32, i32* %4627, align 4
  %4629 = sext i32 %4628 to i64
  store i64 %4629, i64* %RDX.i2151, align 8
  %4630 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %4631 = shl nsw i64 %4629, 2
  %4632 = add i64 %4598, %4631
  %4633 = add i64 %4398, 107
  store i64 %4633, i64* %3, align 8
  %4634 = trunc i64 %4630 to i32
  %4635 = inttoptr i64 %4632 to i32*
  %4636 = load i32, i32* %4635, align 4
  %4637 = add i32 %4636, %4634
  %4638 = zext i32 %4637 to i64
  store i64 %4638, i64* %RAX.i2123.pre-phi, align 8
  %4639 = icmp ult i32 %4637, %4634
  %4640 = icmp ult i32 %4637, %4636
  %4641 = or i1 %4639, %4640
  %4642 = zext i1 %4641 to i8
  store i8 %4642, i8* %14, align 1
  %4643 = and i32 %4637, 255
  %4644 = tail call i32 @llvm.ctpop.i32(i32 %4643)
  %4645 = trunc i32 %4644 to i8
  %4646 = and i8 %4645, 1
  %4647 = xor i8 %4646, 1
  store i8 %4647, i8* %21, align 1
  %4648 = xor i32 %4636, %4634
  %4649 = xor i32 %4648, %4637
  %4650 = lshr i32 %4649, 4
  %4651 = trunc i32 %4650 to i8
  %4652 = and i8 %4651, 1
  store i8 %4652, i8* %27, align 1
  %4653 = icmp eq i32 %4637, 0
  %4654 = zext i1 %4653 to i8
  store i8 %4654, i8* %30, align 1
  %4655 = lshr i32 %4637, 31
  %4656 = trunc i32 %4655 to i8
  store i8 %4656, i8* %33, align 1
  %4657 = lshr i32 %4634, 31
  %4658 = lshr i32 %4636, 31
  %4659 = xor i32 %4655, %4657
  %4660 = xor i32 %4655, %4658
  %4661 = add nuw nsw i32 %4659, %4660
  %4662 = icmp eq i32 %4661, 2
  %4663 = zext i1 %4662 to i8
  store i8 %4663, i8* %39, align 1
  %4664 = load i64, i64* %RBP.i, align 8
  %4665 = add i64 %4664, -112
  %4666 = add i64 %4398, 110
  store i64 %4666, i64* %3, align 8
  %4667 = inttoptr i64 %4665 to i32*
  %4668 = load i32, i32* %4667, align 4
  %4669 = zext i32 %4668 to i64
  store i64 %4669, i64* %RCX.i1445, align 8
  %4670 = add i64 %4398, 112
  store i64 %4670, i64* %3, align 8
  %4671 = trunc i32 %4668 to i5
  switch i5 %4671, label %4675 [
    i5 0, label %routine_sarl__cl___eax.exit911
    i5 1, label %4672
  ]

; <label>:4672:                                   ; preds = %block_40b5de
  %4673 = shl nuw i64 %4638, 32
  %4674 = ashr i64 %4673, 33
  br label %4682

; <label>:4675:                                   ; preds = %block_40b5de
  %4676 = and i32 %4668, 31
  %4677 = zext i32 %4676 to i64
  %4678 = add nsw i64 %4677, -1
  %4679 = sext i32 %4637 to i64
  %4680 = ashr i64 %4679, %4678
  %4681 = lshr i64 %4680, 1
  br label %4682

; <label>:4682:                                   ; preds = %4675, %4672
  %4683 = phi i64 [ %4681, %4675 ], [ %4674, %4672 ]
  %4684 = phi i64 [ %4680, %4675 ], [ %4638, %4672 ]
  %4685 = trunc i64 %4684 to i8
  %4686 = and i8 %4685, 1
  %4687 = trunc i64 %4683 to i32
  %4688 = and i64 %4683, 4294967295
  store i64 %4688, i64* %RAX.i2123.pre-phi, align 8
  store i8 %4686, i8* %14, align 1
  %4689 = and i32 %4687, 255
  %4690 = tail call i32 @llvm.ctpop.i32(i32 %4689)
  %4691 = trunc i32 %4690 to i8
  %4692 = and i8 %4691, 1
  %4693 = xor i8 %4692, 1
  store i8 %4693, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4694 = icmp eq i32 %4687, 0
  %4695 = zext i1 %4694 to i8
  store i8 %4695, i8* %30, align 1
  %4696 = lshr i32 %4687, 31
  %4697 = trunc i32 %4696 to i8
  store i8 %4697, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %4698 = trunc i64 %4683 to i32
  br label %routine_sarl__cl___eax.exit911

routine_sarl__cl___eax.exit911:                   ; preds = %4682, %block_40b5de
  %4699 = phi i32 [ %4698, %4682 ], [ %4637, %block_40b5de ]
  %4700 = add i64 %4664, -72
  %4701 = add i64 %4398, 115
  store i64 %4701, i64* %3, align 8
  %4702 = inttoptr i64 %4700 to i32*
  store i32 %4699, i32* %4702, align 4
  %4703 = load i64, i64* %3, align 8
  %4704 = add i64 %4703, 157
  store i64 %4704, i64* %3, align 8
  br label %block_.L_40b713

block_.L_40b67b:                                  ; preds = %block_.L_40b5d4
  %4705 = add i64 %4323, -42619
  %4706 = add i64 %4323, 37
  %4707 = load i64, i64* %6, align 8
  %4708 = add i64 %4707, -8
  %4709 = inttoptr i64 %4708 to i64*
  store i64 %4706, i64* %4709, align 8
  store i64 %4708, i64* %6, align 8
  store i64 %4705, i64* %3, align 8
  %4710 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.15)
  %4711 = load i64, i64* %3, align 8
  store i64 7397968, i64* %RCX.i1445, align 8
  store i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64* %RDX.i2151, align 8
  %4712 = load i64, i64* %RBP.i, align 8
  %4713 = add i64 %4712, -4
  %4714 = add i64 %4711, 24
  store i64 %4714, i64* %3, align 8
  %4715 = inttoptr i64 %4713 to i32*
  %4716 = load i32, i32* %4715, align 4
  %4717 = sext i32 %4716 to i64
  %4718 = mul nsw i64 %4717, 384
  store i64 %4718, i64* %RSI.i2229, align 8
  %4719 = lshr i64 %4718, 63
  %4720 = add i64 %4718, ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64)
  store i64 %4720, i64* %RDX.i2151, align 8
  %4721 = icmp ult i64 %4720, ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64)
  %4722 = icmp ult i64 %4720, %4718
  %4723 = or i1 %4721, %4722
  %4724 = zext i1 %4723 to i8
  store i8 %4724, i8* %14, align 1
  %4725 = trunc i64 %4720 to i32
  %4726 = and i32 %4725, 248
  %4727 = tail call i32 @llvm.ctpop.i32(i32 %4726)
  %4728 = trunc i32 %4727 to i8
  %4729 = and i8 %4728, 1
  %4730 = xor i8 %4729, 1
  store i8 %4730, i8* %21, align 1
  %4731 = xor i64 %4720, ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64)
  %4732 = lshr i64 %4731, 4
  %4733 = trunc i64 %4732 to i8
  %4734 = and i8 %4733, 1
  store i8 %4734, i8* %27, align 1
  %4735 = icmp eq i64 %4720, 0
  %4736 = zext i1 %4735 to i8
  store i8 %4736, i8* %30, align 1
  %4737 = lshr i64 %4720, 63
  %4738 = trunc i64 %4737 to i8
  store i8 %4738, i8* %33, align 1
  %4739 = xor i64 %4737, lshr (i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64 63)
  %4740 = xor i64 %4737, %4719
  %4741 = add nuw nsw i64 %4739, %4740
  %4742 = icmp eq i64 %4741, 2
  %4743 = zext i1 %4742 to i8
  store i8 %4743, i8* %39, align 1
  %4744 = add i64 %4712, -108
  %4745 = add i64 %4711, 38
  store i64 %4745, i64* %3, align 8
  %4746 = inttoptr i64 %4744 to i32*
  %4747 = load i32, i32* %4746, align 4
  %4748 = sext i32 %4747 to i64
  %4749 = shl nsw i64 %4748, 6
  store i64 %4749, i64* %RSI.i2229, align 8
  %4750 = add i64 %4749, %4720
  store i64 %4750, i64* %RDX.i2151, align 8
  %4751 = icmp ult i64 %4750, %4720
  %4752 = icmp ult i64 %4750, %4749
  %4753 = or i1 %4751, %4752
  %4754 = zext i1 %4753 to i8
  store i8 %4754, i8* %14, align 1
  %4755 = trunc i64 %4750 to i32
  %4756 = and i32 %4755, 248
  %4757 = tail call i32 @llvm.ctpop.i32(i32 %4756)
  %4758 = trunc i32 %4757 to i8
  %4759 = and i8 %4758, 1
  %4760 = xor i8 %4759, 1
  store i8 %4760, i8* %21, align 1
  %4761 = xor i64 %4720, %4750
  %4762 = lshr i64 %4761, 4
  %4763 = trunc i64 %4762 to i8
  %4764 = and i8 %4763, 1
  store i8 %4764, i8* %27, align 1
  %4765 = icmp eq i64 %4750, 0
  %4766 = zext i1 %4765 to i8
  store i8 %4766, i8* %30, align 1
  %4767 = lshr i64 %4750, 63
  %4768 = trunc i64 %4767 to i8
  store i8 %4768, i8* %33, align 1
  %4769 = lshr i64 %4748, 57
  %4770 = and i64 %4769, 1
  %4771 = xor i64 %4767, %4737
  %4772 = xor i64 %4767, %4770
  %4773 = add nuw nsw i64 %4771, %4772
  %4774 = icmp eq i64 %4773, 2
  %4775 = zext i1 %4774 to i8
  store i8 %4775, i8* %39, align 1
  %4776 = load i64, i64* %RBP.i, align 8
  %4777 = add i64 %4776, -16
  %4778 = add i64 %4711, 49
  store i64 %4778, i64* %3, align 8
  %4779 = inttoptr i64 %4777 to i32*
  %4780 = load i32, i32* %4779, align 4
  %4781 = sext i32 %4780 to i64
  %4782 = shl nsw i64 %4781, 4
  store i64 %4782, i64* %RSI.i2229, align 8
  %4783 = add i64 %4782, %4750
  store i64 %4783, i64* %RDX.i2151, align 8
  %4784 = icmp ult i64 %4783, %4750
  %4785 = icmp ult i64 %4783, %4782
  %4786 = or i1 %4784, %4785
  %4787 = zext i1 %4786 to i8
  store i8 %4787, i8* %14, align 1
  %4788 = trunc i64 %4783 to i32
  %4789 = and i32 %4788, 255
  %4790 = tail call i32 @llvm.ctpop.i32(i32 %4789)
  %4791 = trunc i32 %4790 to i8
  %4792 = and i8 %4791, 1
  %4793 = xor i8 %4792, 1
  store i8 %4793, i8* %21, align 1
  %4794 = xor i64 %4782, %4750
  %4795 = xor i64 %4794, %4783
  %4796 = lshr i64 %4795, 4
  %4797 = trunc i64 %4796 to i8
  %4798 = and i8 %4797, 1
  store i8 %4798, i8* %27, align 1
  %4799 = icmp eq i64 %4783, 0
  %4800 = zext i1 %4799 to i8
  store i8 %4800, i8* %30, align 1
  %4801 = lshr i64 %4783, 63
  %4802 = trunc i64 %4801 to i8
  store i8 %4802, i8* %33, align 1
  %4803 = lshr i64 %4781, 59
  %4804 = and i64 %4803, 1
  %4805 = xor i64 %4801, %4767
  %4806 = xor i64 %4801, %4804
  %4807 = add nuw nsw i64 %4805, %4806
  %4808 = icmp eq i64 %4807, 2
  %4809 = zext i1 %4808 to i8
  store i8 %4809, i8* %39, align 1
  %4810 = add i64 %4776, -20
  %4811 = add i64 %4711, 60
  store i64 %4811, i64* %3, align 8
  %4812 = inttoptr i64 %4810 to i32*
  %4813 = load i32, i32* %4812, align 4
  %4814 = sext i32 %4813 to i64
  store i64 %4814, i64* %RSI.i2229, align 8
  %4815 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %4816 = shl nsw i64 %4814, 2
  %4817 = add i64 %4783, %4816
  %4818 = add i64 %4711, 64
  store i64 %4818, i64* %3, align 8
  %4819 = inttoptr i64 %4817 to i32*
  %4820 = load i32, i32* %4819, align 4
  %4821 = shl i64 %4815, 32
  %4822 = ashr exact i64 %4821, 32
  %4823 = sext i32 %4820 to i64
  %4824 = mul nsw i64 %4823, %4822
  %4825 = trunc i64 %4824 to i32
  %4826 = and i64 %4824, 4294967295
  store i64 %4826, i64* %RAX.i2123.pre-phi, align 8
  %4827 = shl i64 %4824, 32
  %4828 = ashr exact i64 %4827, 32
  %4829 = icmp ne i64 %4828, %4824
  %4830 = zext i1 %4829 to i8
  store i8 %4830, i8* %14, align 1
  %4831 = and i32 %4825, 255
  %4832 = tail call i32 @llvm.ctpop.i32(i32 %4831)
  %4833 = trunc i32 %4832 to i8
  %4834 = and i8 %4833, 1
  %4835 = xor i8 %4834, 1
  store i8 %4835, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %4836 = lshr i32 %4825, 31
  %4837 = trunc i32 %4836 to i8
  store i8 %4837, i8* %33, align 1
  store i8 %4830, i8* %39, align 1
  %4838 = load i64, i64* %RBP.i, align 8
  %4839 = add i64 %4838, -4
  %4840 = add i64 %4711, 68
  store i64 %4840, i64* %3, align 8
  %4841 = inttoptr i64 %4839 to i32*
  %4842 = load i32, i32* %4841, align 4
  %4843 = sext i32 %4842 to i64
  %4844 = mul nsw i64 %4843, 832
  store i64 %4844, i64* %RDX.i2151, align 8
  %4845 = lshr i64 %4844, 63
  %4846 = load i64, i64* %RCX.i1445, align 8
  %4847 = add i64 %4844, %4846
  store i64 %4847, i64* %RCX.i1445, align 8
  %4848 = icmp ult i64 %4847, %4846
  %4849 = icmp ult i64 %4847, %4844
  %4850 = or i1 %4848, %4849
  %4851 = zext i1 %4850 to i8
  store i8 %4851, i8* %14, align 1
  %4852 = trunc i64 %4847 to i32
  %4853 = and i32 %4852, 255
  %4854 = tail call i32 @llvm.ctpop.i32(i32 %4853)
  %4855 = trunc i32 %4854 to i8
  %4856 = and i8 %4855, 1
  %4857 = xor i8 %4856, 1
  store i8 %4857, i8* %21, align 1
  %4858 = xor i64 %4846, %4847
  %4859 = lshr i64 %4858, 4
  %4860 = trunc i64 %4859 to i8
  %4861 = and i8 %4860, 1
  store i8 %4861, i8* %27, align 1
  %4862 = icmp eq i64 %4847, 0
  %4863 = zext i1 %4862 to i8
  store i8 %4863, i8* %30, align 1
  %4864 = lshr i64 %4847, 63
  %4865 = trunc i64 %4864 to i8
  store i8 %4865, i8* %33, align 1
  %4866 = lshr i64 %4846, 63
  %4867 = xor i64 %4864, %4866
  %4868 = xor i64 %4864, %4845
  %4869 = add nuw nsw i64 %4867, %4868
  %4870 = icmp eq i64 %4869, 2
  %4871 = zext i1 %4870 to i8
  store i8 %4871, i8* %39, align 1
  %4872 = add i64 %4838, -104
  %4873 = add i64 %4711, 82
  store i64 %4873, i64* %3, align 8
  %4874 = inttoptr i64 %4872 to i32*
  %4875 = load i32, i32* %4874, align 4
  %4876 = sext i32 %4875 to i64
  %4877 = shl nsw i64 %4876, 6
  store i64 %4877, i64* %RDX.i2151, align 8
  %4878 = add i64 %4877, %4847
  store i64 %4878, i64* %RCX.i1445, align 8
  %4879 = icmp ult i64 %4878, %4847
  %4880 = icmp ult i64 %4878, %4877
  %4881 = or i1 %4879, %4880
  %4882 = zext i1 %4881 to i8
  store i8 %4882, i8* %14, align 1
  %4883 = trunc i64 %4878 to i32
  %4884 = and i32 %4883, 255
  %4885 = tail call i32 @llvm.ctpop.i32(i32 %4884)
  %4886 = trunc i32 %4885 to i8
  %4887 = and i8 %4886, 1
  %4888 = xor i8 %4887, 1
  store i8 %4888, i8* %21, align 1
  %4889 = xor i64 %4847, %4878
  %4890 = lshr i64 %4889, 4
  %4891 = trunc i64 %4890 to i8
  %4892 = and i8 %4891, 1
  store i8 %4892, i8* %27, align 1
  %4893 = icmp eq i64 %4878, 0
  %4894 = zext i1 %4893 to i8
  store i8 %4894, i8* %30, align 1
  %4895 = lshr i64 %4878, 63
  %4896 = trunc i64 %4895 to i8
  store i8 %4896, i8* %33, align 1
  %4897 = lshr i64 %4876, 57
  %4898 = and i64 %4897, 1
  %4899 = xor i64 %4895, %4864
  %4900 = xor i64 %4895, %4898
  %4901 = add nuw nsw i64 %4899, %4900
  %4902 = icmp eq i64 %4901, 2
  %4903 = zext i1 %4902 to i8
  store i8 %4903, i8* %39, align 1
  %4904 = load i64, i64* %RBP.i, align 8
  %4905 = add i64 %4904, -16
  %4906 = add i64 %4711, 93
  store i64 %4906, i64* %3, align 8
  %4907 = inttoptr i64 %4905 to i32*
  %4908 = load i32, i32* %4907, align 4
  %4909 = sext i32 %4908 to i64
  %4910 = shl nsw i64 %4909, 4
  store i64 %4910, i64* %RDX.i2151, align 8
  %4911 = add i64 %4910, %4878
  store i64 %4911, i64* %RCX.i1445, align 8
  %4912 = icmp ult i64 %4911, %4878
  %4913 = icmp ult i64 %4911, %4910
  %4914 = or i1 %4912, %4913
  %4915 = zext i1 %4914 to i8
  store i8 %4915, i8* %14, align 1
  %4916 = trunc i64 %4911 to i32
  %4917 = and i32 %4916, 255
  %4918 = tail call i32 @llvm.ctpop.i32(i32 %4917)
  %4919 = trunc i32 %4918 to i8
  %4920 = and i8 %4919, 1
  %4921 = xor i8 %4920, 1
  store i8 %4921, i8* %21, align 1
  %4922 = xor i64 %4910, %4878
  %4923 = xor i64 %4922, %4911
  %4924 = lshr i64 %4923, 4
  %4925 = trunc i64 %4924 to i8
  %4926 = and i8 %4925, 1
  store i8 %4926, i8* %27, align 1
  %4927 = icmp eq i64 %4911, 0
  %4928 = zext i1 %4927 to i8
  store i8 %4928, i8* %30, align 1
  %4929 = lshr i64 %4911, 63
  %4930 = trunc i64 %4929 to i8
  store i8 %4930, i8* %33, align 1
  %4931 = lshr i64 %4909, 59
  %4932 = and i64 %4931, 1
  %4933 = xor i64 %4929, %4895
  %4934 = xor i64 %4929, %4932
  %4935 = add nuw nsw i64 %4933, %4934
  %4936 = icmp eq i64 %4935, 2
  %4937 = zext i1 %4936 to i8
  store i8 %4937, i8* %39, align 1
  %4938 = add i64 %4904, -20
  %4939 = add i64 %4711, 104
  store i64 %4939, i64* %3, align 8
  %4940 = inttoptr i64 %4938 to i32*
  %4941 = load i32, i32* %4940, align 4
  %4942 = sext i32 %4941 to i64
  store i64 %4942, i64* %RDX.i2151, align 8
  %4943 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %4944 = shl nsw i64 %4942, 2
  %4945 = add i64 %4911, %4944
  %4946 = add i64 %4711, 107
  store i64 %4946, i64* %3, align 8
  %4947 = trunc i64 %4943 to i32
  %4948 = inttoptr i64 %4945 to i32*
  %4949 = load i32, i32* %4948, align 4
  %4950 = add i32 %4949, %4947
  %4951 = zext i32 %4950 to i64
  store i64 %4951, i64* %RAX.i2123.pre-phi, align 8
  %4952 = icmp ult i32 %4950, %4947
  %4953 = icmp ult i32 %4950, %4949
  %4954 = or i1 %4952, %4953
  %4955 = zext i1 %4954 to i8
  store i8 %4955, i8* %14, align 1
  %4956 = and i32 %4950, 255
  %4957 = tail call i32 @llvm.ctpop.i32(i32 %4956)
  %4958 = trunc i32 %4957 to i8
  %4959 = and i8 %4958, 1
  %4960 = xor i8 %4959, 1
  store i8 %4960, i8* %21, align 1
  %4961 = xor i32 %4949, %4947
  %4962 = xor i32 %4961, %4950
  %4963 = lshr i32 %4962, 4
  %4964 = trunc i32 %4963 to i8
  %4965 = and i8 %4964, 1
  store i8 %4965, i8* %27, align 1
  %4966 = icmp eq i32 %4950, 0
  %4967 = zext i1 %4966 to i8
  store i8 %4967, i8* %30, align 1
  %4968 = lshr i32 %4950, 31
  %4969 = trunc i32 %4968 to i8
  store i8 %4969, i8* %33, align 1
  %4970 = lshr i32 %4947, 31
  %4971 = lshr i32 %4949, 31
  %4972 = xor i32 %4968, %4970
  %4973 = xor i32 %4968, %4971
  %4974 = add nuw nsw i32 %4972, %4973
  %4975 = icmp eq i32 %4974, 2
  %4976 = zext i1 %4975 to i8
  store i8 %4976, i8* %39, align 1
  %4977 = load i64, i64* %RBP.i, align 8
  %4978 = add i64 %4977, -112
  %4979 = add i64 %4711, 110
  store i64 %4979, i64* %3, align 8
  %4980 = inttoptr i64 %4978 to i32*
  %4981 = load i32, i32* %4980, align 4
  %4982 = zext i32 %4981 to i64
  store i64 %4982, i64* %RCX.i1445, align 8
  %4983 = add i64 %4711, 112
  store i64 %4983, i64* %3, align 8
  %4984 = trunc i32 %4981 to i5
  switch i5 %4984, label %4988 [
    i5 0, label %routine_sarl__cl___eax.exit
    i5 1, label %4985
  ]

; <label>:4985:                                   ; preds = %block_.L_40b67b
  %4986 = shl nuw i64 %4951, 32
  %4987 = ashr i64 %4986, 33
  br label %4995

; <label>:4988:                                   ; preds = %block_.L_40b67b
  %4989 = and i32 %4981, 31
  %4990 = zext i32 %4989 to i64
  %4991 = add nsw i64 %4990, -1
  %4992 = sext i32 %4950 to i64
  %4993 = ashr i64 %4992, %4991
  %4994 = lshr i64 %4993, 1
  br label %4995

; <label>:4995:                                   ; preds = %4988, %4985
  %4996 = phi i64 [ %4994, %4988 ], [ %4987, %4985 ]
  %4997 = phi i64 [ %4993, %4988 ], [ %4951, %4985 ]
  %4998 = trunc i64 %4997 to i8
  %4999 = and i8 %4998, 1
  %5000 = trunc i64 %4996 to i32
  %5001 = and i64 %4996, 4294967295
  store i64 %5001, i64* %RAX.i2123.pre-phi, align 8
  store i8 %4999, i8* %14, align 1
  %5002 = and i32 %5000, 255
  %5003 = tail call i32 @llvm.ctpop.i32(i32 %5002)
  %5004 = trunc i32 %5003 to i8
  %5005 = and i8 %5004, 1
  %5006 = xor i8 %5005, 1
  store i8 %5006, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5007 = icmp eq i32 %5000, 0
  %5008 = zext i1 %5007 to i8
  store i8 %5008, i8* %30, align 1
  %5009 = lshr i32 %5000, 31
  %5010 = trunc i32 %5009 to i8
  store i8 %5010, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5011 = trunc i64 %4996 to i32
  br label %routine_sarl__cl___eax.exit

routine_sarl__cl___eax.exit:                      ; preds = %4995, %block_.L_40b67b
  %5012 = phi i32 [ %5011, %4995 ], [ %4950, %block_.L_40b67b ]
  %5013 = add i64 %4977, -72
  %5014 = add i64 %4711, 115
  store i64 %5014, i64* %3, align 8
  %5015 = inttoptr i64 %5013 to i32*
  store i32 %5012, i32* %5015, align 4
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_40b713

block_.L_40b713:                                  ; preds = %routine_sarl__cl___eax.exit, %routine_sarl__cl___eax.exit911
  %5016 = phi i64 [ %.pre149, %routine_sarl__cl___eax.exit ], [ %4704, %routine_sarl__cl___eax.exit911 ]
  %MEMORY.16 = phi %struct.Memory* [ %4710, %routine_sarl__cl___eax.exit ], [ %4397, %routine_sarl__cl___eax.exit911 ]
  %5017 = add i64 %5016, 5
  store i64 %5017, i64* %3, align 8
  br label %block_.L_40b718

block_.L_40b718:                                  ; preds = %block_.L_40b713, %block_40b5a7
  %storemerge58 = phi i64 [ %4317, %block_40b5a7 ], [ %5017, %block_.L_40b713 ]
  %MEMORY.17 = phi %struct.Memory* [ %4309, %block_40b5a7 ], [ %MEMORY.16, %block_.L_40b713 ]
  %5018 = load i64, i64* %RBP.i, align 8
  %5019 = add i64 %5018, -72
  %5020 = add i64 %storemerge58, 4
  store i64 %5020, i64* %3, align 8
  %5021 = inttoptr i64 %5019 to i32*
  %5022 = load i32, i32* %5021, align 4
  store i8 0, i8* %14, align 1
  %5023 = and i32 %5022, 255
  %5024 = tail call i32 @llvm.ctpop.i32(i32 %5023)
  %5025 = trunc i32 %5024 to i8
  %5026 = and i8 %5025, 1
  %5027 = xor i8 %5026, 1
  store i8 %5027, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5028 = icmp eq i32 %5022, 0
  %5029 = zext i1 %5028 to i8
  store i8 %5029, i8* %30, align 1
  %5030 = lshr i32 %5022, 31
  %5031 = trunc i32 %5030 to i8
  store i8 %5031, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v175 = select i1 %5028, i64 621, i64 10
  %5032 = add i64 %storemerge58, %.v175
  store i64 %5032, i64* %3, align 8
  br i1 %5028, label %block_.L_40b985, label %block_40b722

block_40b722:                                     ; preds = %block_.L_40b718
  %5033 = add i64 %5018, -16
  %5034 = add i64 %5032, 4
  store i64 %5034, i64* %3, align 8
  %5035 = inttoptr i64 %5033 to i32*
  %5036 = load i32, i32* %5035, align 4
  store i8 0, i8* %14, align 1
  %5037 = and i32 %5036, 255
  %5038 = tail call i32 @llvm.ctpop.i32(i32 %5037)
  %5039 = trunc i32 %5038 to i8
  %5040 = and i8 %5039, 1
  %5041 = xor i8 %5040, 1
  store i8 %5041, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5042 = icmp eq i32 %5036, 0
  %5043 = zext i1 %5042 to i8
  store i8 %5043, i8* %30, align 1
  %5044 = lshr i32 %5036, 31
  %5045 = trunc i32 %5044 to i8
  store i8 %5045, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v176 = select i1 %5042, i64 10, i64 20
  %5046 = add i64 %5032, %.v176
  store i64 %5046, i64* %3, align 8
  br i1 %5042, label %block_40b72c, label %block_.L_40b736

block_40b72c:                                     ; preds = %block_40b722
  %5047 = add i64 %5018, -20
  %5048 = add i64 %5046, 4
  store i64 %5048, i64* %3, align 8
  %5049 = inttoptr i64 %5047 to i32*
  %5050 = load i32, i32* %5049, align 4
  store i8 0, i8* %14, align 1
  %5051 = and i32 %5050, 255
  %5052 = tail call i32 @llvm.ctpop.i32(i32 %5051)
  %5053 = trunc i32 %5052 to i8
  %5054 = and i8 %5053, 1
  %5055 = xor i8 %5054, 1
  store i8 %5055, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5056 = icmp eq i32 %5050, 0
  %5057 = zext i1 %5056 to i8
  store i8 %5057, i8* %30, align 1
  %5058 = lshr i32 %5050, 31
  %5059 = trunc i32 %5058 to i8
  store i8 %5059, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v180 = select i1 %5056, i64 17, i64 10
  %5060 = add i64 %5046, %.v180
  store i64 %5060, i64* %3, align 8
  br i1 %5056, label %block_.L_40b73d, label %block_.L_40b736

block_.L_40b736:                                  ; preds = %block_40b722, %block_40b72c
  %5061 = phi i64 [ %5060, %block_40b72c ], [ %5046, %block_40b722 ]
  %5062 = add i64 %5018, -84
  %5063 = add i64 %5061, 7
  store i64 %5063, i64* %3, align 8
  %5064 = inttoptr i64 %5062 to i32*
  store i32 1, i32* %5064, align 4
  %.pre150 = load i64, i64* %RBP.i, align 8
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_40b73d

block_.L_40b73d:                                  ; preds = %block_.L_40b736, %block_40b72c
  %5065 = phi i64 [ %.pre151, %block_.L_40b736 ], [ %5060, %block_40b72c ]
  %5066 = phi i64 [ %.pre150, %block_.L_40b736 ], [ %5018, %block_40b72c ]
  %5067 = add i64 %5066, -72
  %5068 = add i64 %5065, 3
  store i64 %5068, i64* %3, align 8
  %5069 = inttoptr i64 %5067 to i32*
  %5070 = load i32, i32* %5069, align 4
  %5071 = zext i32 %5070 to i64
  store i64 %5071, i64* %RDI.i2224, align 8
  %5072 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5073 = add i64 %5072, 13112
  store i64 %5073, i64* %RAX.i2123.pre-phi, align 8
  %5074 = icmp ugt i64 %5072, -13113
  %5075 = zext i1 %5074 to i8
  store i8 %5075, i8* %14, align 1
  %5076 = trunc i64 %5073 to i32
  %5077 = and i32 %5076, 255
  %5078 = tail call i32 @llvm.ctpop.i32(i32 %5077)
  %5079 = trunc i32 %5078 to i8
  %5080 = and i8 %5079, 1
  %5081 = xor i8 %5080, 1
  store i8 %5081, i8* %21, align 1
  %5082 = xor i64 %5072, 16
  %5083 = xor i64 %5082, %5073
  %5084 = lshr i64 %5083, 4
  %5085 = trunc i64 %5084 to i8
  %5086 = and i8 %5085, 1
  store i8 %5086, i8* %27, align 1
  %5087 = icmp eq i64 %5073, 0
  %5088 = zext i1 %5087 to i8
  store i8 %5088, i8* %30, align 1
  %5089 = lshr i64 %5073, 63
  %5090 = trunc i64 %5089 to i8
  store i8 %5090, i8* %33, align 1
  %5091 = lshr i64 %5072, 63
  %5092 = xor i64 %5089, %5091
  %5093 = add nuw nsw i64 %5092, %5089
  %5094 = icmp eq i64 %5093, 2
  %5095 = zext i1 %5094 to i8
  store i8 %5095, i8* %39, align 1
  %5096 = add i64 %5066, -16
  %5097 = add i64 %5065, 21
  store i64 %5097, i64* %3, align 8
  %5098 = inttoptr i64 %5096 to i32*
  %5099 = load i32, i32* %5098, align 4
  %5100 = sext i32 %5099 to i64
  %5101 = shl nsw i64 %5100, 6
  store i64 %5101, i64* %RCX.i1445, align 8
  %5102 = add i64 %5101, %5073
  store i64 %5102, i64* %RAX.i2123.pre-phi, align 8
  %5103 = icmp ult i64 %5102, %5073
  %5104 = icmp ult i64 %5102, %5101
  %5105 = or i1 %5103, %5104
  %5106 = zext i1 %5105 to i8
  store i8 %5106, i8* %14, align 1
  %5107 = trunc i64 %5102 to i32
  %5108 = and i32 %5107, 255
  %5109 = tail call i32 @llvm.ctpop.i32(i32 %5108)
  %5110 = trunc i32 %5109 to i8
  %5111 = and i8 %5110, 1
  %5112 = xor i8 %5111, 1
  store i8 %5112, i8* %21, align 1
  %5113 = xor i64 %5073, %5102
  %5114 = lshr i64 %5113, 4
  %5115 = trunc i64 %5114 to i8
  %5116 = and i8 %5115, 1
  store i8 %5116, i8* %27, align 1
  %5117 = icmp eq i64 %5102, 0
  %5118 = zext i1 %5117 to i8
  store i8 %5118, i8* %30, align 1
  %5119 = lshr i64 %5102, 63
  %5120 = trunc i64 %5119 to i8
  store i8 %5120, i8* %33, align 1
  %5121 = lshr i64 %5100, 57
  %5122 = and i64 %5121, 1
  %5123 = xor i64 %5119, %5089
  %5124 = xor i64 %5119, %5122
  %5125 = add nuw nsw i64 %5123, %5124
  %5126 = icmp eq i64 %5125, 2
  %5127 = zext i1 %5126 to i8
  store i8 %5127, i8* %39, align 1
  %5128 = load i64, i64* %RBP.i, align 8
  %5129 = add i64 %5128, -20
  %5130 = add i64 %5065, 32
  store i64 %5130, i64* %3, align 8
  %5131 = inttoptr i64 %5129 to i32*
  %5132 = load i32, i32* %5131, align 4
  %5133 = sext i32 %5132 to i64
  store i64 %5133, i64* %RCX.i1445, align 8
  %5134 = shl nsw i64 %5133, 2
  %5135 = add i64 %5134, %5102
  %5136 = add i64 %5065, 35
  store i64 %5136, i64* %3, align 8
  %5137 = inttoptr i64 %5135 to i32*
  %5138 = load i32, i32* %5137, align 4
  %5139 = zext i32 %5138 to i64
  store i64 %5139, i64* %RSI.i2229, align 8
  %5140 = add i64 %5065, 432659
  %5141 = add i64 %5065, 40
  %5142 = load i64, i64* %6, align 8
  %5143 = add i64 %5142, -8
  %5144 = inttoptr i64 %5143 to i64*
  store i64 %5141, i64* %5144, align 8
  store i64 %5143, i64* %6, align 8
  store i64 %5140, i64* %3, align 8
  %call2_40b760 = tail call %struct.Memory* @sub_475150.sign(%struct.State* nonnull %0, i64 %5140, %struct.Memory* %MEMORY.17)
  %5145 = load i64, i64* %RBP.i, align 8
  %5146 = add i64 %5145, -128
  %5147 = load i64, i64* %3, align 8
  %5148 = add i64 %5147, 4
  store i64 %5148, i64* %3, align 8
  %5149 = inttoptr i64 %5146 to i64*
  %5150 = load i64, i64* %5149, align 8
  store i64 %5150, i64* %RCX.i1445, align 8
  %5151 = add i64 %5145, -76
  %5152 = add i64 %5147, 8
  store i64 %5152, i64* %3, align 8
  %5153 = inttoptr i64 %5151 to i32*
  %5154 = load i32, i32* %5153, align 4
  %5155 = sext i32 %5154 to i64
  store i64 %5155, i64* %RDX.i2151, align 8
  %5156 = shl nsw i64 %5155, 2
  %5157 = add i64 %5156, %5150
  %5158 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %5159 = add i64 %5147, 11
  store i64 %5159, i64* %3, align 8
  %5160 = inttoptr i64 %5157 to i32*
  store i32 %5158, i32* %5160, align 4
  %5161 = load i64, i64* %RBP.i, align 8
  %5162 = add i64 %5161, -80
  %5163 = load i64, i64* %3, align 8
  %5164 = add i64 %5163, 3
  store i64 %5164, i64* %3, align 8
  %5165 = inttoptr i64 %5162 to i32*
  %5166 = load i32, i32* %5165, align 4
  %5167 = zext i32 %5166 to i64
  store i64 %5167, i64* %RAX.i2123.pre-phi, align 8
  %5168 = add i64 %5161, -136
  %5169 = add i64 %5163, 10
  store i64 %5169, i64* %3, align 8
  %5170 = inttoptr i64 %5168 to i64*
  %5171 = load i64, i64* %5170, align 8
  store i64 %5171, i64* %RCX.i1445, align 8
  %5172 = add i64 %5161, -76
  %5173 = add i64 %5163, 14
  store i64 %5173, i64* %3, align 8
  %5174 = inttoptr i64 %5172 to i32*
  %5175 = load i32, i32* %5174, align 4
  %5176 = sext i32 %5175 to i64
  store i64 %5176, i64* %RDX.i2151, align 8
  %5177 = shl nsw i64 %5176, 2
  %5178 = add i64 %5177, %5171
  %5179 = add i64 %5163, 17
  store i64 %5179, i64* %3, align 8
  %5180 = inttoptr i64 %5178 to i32*
  store i32 %5166, i32* %5180, align 4
  %5181 = load i64, i64* %RBP.i, align 8
  %5182 = add i64 %5181, -76
  %5183 = load i64, i64* %3, align 8
  %5184 = add i64 %5183, 3
  store i64 %5184, i64* %3, align 8
  %5185 = inttoptr i64 %5182 to i32*
  %5186 = load i32, i32* %5185, align 4
  %5187 = add i32 %5186, 1
  %5188 = zext i32 %5187 to i64
  store i64 %5188, i64* %RAX.i2123.pre-phi, align 8
  %5189 = icmp eq i32 %5186, -1
  %5190 = icmp eq i32 %5187, 0
  %5191 = or i1 %5189, %5190
  %5192 = zext i1 %5191 to i8
  store i8 %5192, i8* %14, align 1
  %5193 = and i32 %5187, 255
  %5194 = tail call i32 @llvm.ctpop.i32(i32 %5193)
  %5195 = trunc i32 %5194 to i8
  %5196 = and i8 %5195, 1
  %5197 = xor i8 %5196, 1
  store i8 %5197, i8* %21, align 1
  %5198 = xor i32 %5187, %5186
  %5199 = lshr i32 %5198, 4
  %5200 = trunc i32 %5199 to i8
  %5201 = and i8 %5200, 1
  store i8 %5201, i8* %27, align 1
  %5202 = zext i1 %5190 to i8
  store i8 %5202, i8* %30, align 1
  %5203 = lshr i32 %5187, 31
  %5204 = trunc i32 %5203 to i8
  store i8 %5204, i8* %33, align 1
  %5205 = lshr i32 %5186, 31
  %5206 = xor i32 %5203, %5205
  %5207 = add nuw nsw i32 %5206, %5203
  %5208 = icmp eq i32 %5207, 2
  %5209 = zext i1 %5208 to i8
  store i8 %5209, i8* %39, align 1
  %5210 = add i64 %5183, 9
  store i64 %5210, i64* %3, align 8
  store i32 %5187, i32* %5185, align 4
  %5211 = load i64, i64* %RBP.i, align 8
  %5212 = add i64 %5211, -80
  %5213 = load i64, i64* %3, align 8
  %5214 = add i64 %5213, 7
  store i64 %5214, i64* %3, align 8
  %5215 = inttoptr i64 %5212 to i32*
  store i32 -1, i32* %5215, align 4
  %5216 = load i64, i64* %RBP.i, align 8
  %5217 = add i64 %5216, -72
  %5218 = load i64, i64* %3, align 8
  %5219 = add i64 %5218, 3
  store i64 %5219, i64* %3, align 8
  %5220 = inttoptr i64 %5217 to i32*
  %5221 = load i32, i32* %5220, align 4
  %5222 = zext i32 %5221 to i64
  store i64 %5222, i64* %RDI.i2224, align 8
  %5223 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %5224 = add i64 %5223, 13112
  store i64 %5224, i64* %RCX.i1445, align 8
  %5225 = icmp ugt i64 %5223, -13113
  %5226 = zext i1 %5225 to i8
  store i8 %5226, i8* %14, align 1
  %5227 = trunc i64 %5224 to i32
  %5228 = and i32 %5227, 255
  %5229 = tail call i32 @llvm.ctpop.i32(i32 %5228)
  %5230 = trunc i32 %5229 to i8
  %5231 = and i8 %5230, 1
  %5232 = xor i8 %5231, 1
  store i8 %5232, i8* %21, align 1
  %5233 = xor i64 %5223, 16
  %5234 = xor i64 %5233, %5224
  %5235 = lshr i64 %5234, 4
  %5236 = trunc i64 %5235 to i8
  %5237 = and i8 %5236, 1
  store i8 %5237, i8* %27, align 1
  %5238 = icmp eq i64 %5224, 0
  %5239 = zext i1 %5238 to i8
  store i8 %5239, i8* %30, align 1
  %5240 = lshr i64 %5224, 63
  %5241 = trunc i64 %5240 to i8
  store i8 %5241, i8* %33, align 1
  %5242 = lshr i64 %5223, 63
  %5243 = xor i64 %5240, %5242
  %5244 = add nuw nsw i64 %5243, %5240
  %5245 = icmp eq i64 %5244, 2
  %5246 = zext i1 %5245 to i8
  store i8 %5246, i8* %39, align 1
  %5247 = add i64 %5216, -16
  %5248 = add i64 %5218, 22
  store i64 %5248, i64* %3, align 8
  %5249 = inttoptr i64 %5247 to i32*
  %5250 = load i32, i32* %5249, align 4
  %5251 = sext i32 %5250 to i64
  %5252 = shl nsw i64 %5251, 6
  store i64 %5252, i64* %RDX.i2151, align 8
  %5253 = add i64 %5252, %5224
  store i64 %5253, i64* %RCX.i1445, align 8
  %5254 = icmp ult i64 %5253, %5224
  %5255 = icmp ult i64 %5253, %5252
  %5256 = or i1 %5254, %5255
  %5257 = zext i1 %5256 to i8
  store i8 %5257, i8* %14, align 1
  %5258 = trunc i64 %5253 to i32
  %5259 = and i32 %5258, 255
  %5260 = tail call i32 @llvm.ctpop.i32(i32 %5259)
  %5261 = trunc i32 %5260 to i8
  %5262 = and i8 %5261, 1
  %5263 = xor i8 %5262, 1
  store i8 %5263, i8* %21, align 1
  %5264 = xor i64 %5224, %5253
  %5265 = lshr i64 %5264, 4
  %5266 = trunc i64 %5265 to i8
  %5267 = and i8 %5266, 1
  store i8 %5267, i8* %27, align 1
  %5268 = icmp eq i64 %5253, 0
  %5269 = zext i1 %5268 to i8
  store i8 %5269, i8* %30, align 1
  %5270 = lshr i64 %5253, 63
  %5271 = trunc i64 %5270 to i8
  store i8 %5271, i8* %33, align 1
  %5272 = lshr i64 %5251, 57
  %5273 = and i64 %5272, 1
  %5274 = xor i64 %5270, %5240
  %5275 = xor i64 %5270, %5273
  %5276 = add nuw nsw i64 %5274, %5275
  %5277 = icmp eq i64 %5276, 2
  %5278 = zext i1 %5277 to i8
  store i8 %5278, i8* %39, align 1
  %5279 = load i64, i64* %RBP.i, align 8
  %5280 = add i64 %5279, -20
  %5281 = add i64 %5218, 33
  store i64 %5281, i64* %3, align 8
  %5282 = inttoptr i64 %5280 to i32*
  %5283 = load i32, i32* %5282, align 4
  %5284 = sext i32 %5283 to i64
  store i64 %5284, i64* %RDX.i2151, align 8
  %5285 = shl nsw i64 %5284, 2
  %5286 = add i64 %5285, %5253
  %5287 = add i64 %5218, 36
  store i64 %5287, i64* %3, align 8
  %5288 = inttoptr i64 %5286 to i32*
  %5289 = load i32, i32* %5288, align 4
  %5290 = zext i32 %5289 to i64
  store i64 %5290, i64* %RSI.i2229, align 8
  %5291 = add i64 %5218, 432575
  %5292 = add i64 %5218, 41
  %5293 = load i64, i64* %6, align 8
  %5294 = add i64 %5293, -8
  %5295 = inttoptr i64 %5294 to i64*
  store i64 %5292, i64* %5295, align 8
  store i64 %5294, i64* %6, align 8
  store i64 %5291, i64* %3, align 8
  %call2_40b7b5 = tail call %struct.Memory* @sub_475150.sign(%struct.State* nonnull %0, i64 %5291, %struct.Memory* %call2_40b760)
  %5296 = load i64, i64* %RBP.i, align 8
  %5297 = add i64 %5296, -72
  %5298 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %5299 = load i64, i64* %3, align 8
  %5300 = add i64 %5299, 3
  store i64 %5300, i64* %3, align 8
  %5301 = inttoptr i64 %5297 to i32*
  store i32 %5298, i32* %5301, align 4
  %5302 = load i64, i64* %RBP.i, align 8
  %5303 = add i64 %5302, -140
  %5304 = load i64, i64* %3, align 8
  %5305 = add i64 %5304, 7
  store i64 %5305, i64* %3, align 8
  %5306 = inttoptr i64 %5303 to i32*
  %5307 = load i32, i32* %5306, align 4
  store i8 0, i8* %14, align 1
  %5308 = and i32 %5307, 255
  %5309 = tail call i32 @llvm.ctpop.i32(i32 %5308)
  %5310 = trunc i32 %5309 to i8
  %5311 = and i8 %5310, 1
  %5312 = xor i8 %5311, 1
  store i8 %5312, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5313 = icmp eq i32 %5307, 0
  %5314 = zext i1 %5313 to i8
  store i8 %5314, i8* %30, align 1
  %5315 = lshr i32 %5307, 31
  %5316 = trunc i32 %5315 to i8
  store i8 %5316, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v159 = select i1 %5313, i64 24, i64 13
  %5317 = add i64 %5304, %.v159
  store i64 %5317, i64* %3, align 8
  br i1 %5313, label %block_.L_40b7d5, label %block_40b7ca

block_40b7ca:                                     ; preds = %block_.L_40b73d
  %5318 = add i64 %5302, -72
  %5319 = add i64 %5317, 3
  store i64 %5319, i64* %3, align 8
  %5320 = inttoptr i64 %5318 to i32*
  %5321 = load i32, i32* %5320, align 4
  %5322 = zext i32 %5321 to i64
  store i64 %5322, i64* %RAX.i2123.pre-phi, align 8
  %5323 = add i64 %5302, -32
  %5324 = add i64 %5317, 6
  store i64 %5324, i64* %3, align 8
  %5325 = inttoptr i64 %5323 to i32*
  store i32 %5321, i32* %5325, align 4
  %5326 = load i64, i64* %3, align 8
  %5327 = add i64 %5326, 432
  br label %block_.L_40b980

block_.L_40b7d5:                                  ; preds = %block_.L_40b73d
  %5328 = add i64 %5302, -104
  %5329 = add i64 %5317, 4
  store i64 %5329, i64* %3, align 8
  %5330 = inttoptr i64 %5328 to i32*
  %5331 = load i32, i32* %5330, align 4
  %5332 = add i32 %5331, -4
  %5333 = icmp ult i32 %5331, 4
  %5334 = zext i1 %5333 to i8
  store i8 %5334, i8* %14, align 1
  %5335 = and i32 %5332, 255
  %5336 = tail call i32 @llvm.ctpop.i32(i32 %5335)
  %5337 = trunc i32 %5336 to i8
  %5338 = and i8 %5337, 1
  %5339 = xor i8 %5338, 1
  store i8 %5339, i8* %21, align 1
  %5340 = xor i32 %5332, %5331
  %5341 = lshr i32 %5340, 4
  %5342 = trunc i32 %5341 to i8
  %5343 = and i8 %5342, 1
  store i8 %5343, i8* %27, align 1
  %5344 = icmp eq i32 %5332, 0
  %5345 = zext i1 %5344 to i8
  store i8 %5345, i8* %30, align 1
  %5346 = lshr i32 %5332, 31
  %5347 = trunc i32 %5346 to i8
  store i8 %5347, i8* %33, align 1
  %5348 = lshr i32 %5331, 31
  %5349 = xor i32 %5346, %5348
  %5350 = add nuw nsw i32 %5349, %5348
  %5351 = icmp eq i32 %5350, 2
  %5352 = zext i1 %5351 to i8
  store i8 %5352, i8* %39, align 1
  %5353 = icmp ne i8 %5347, 0
  %5354 = xor i1 %5353, %5351
  %.v158 = select i1 %5354, i64 10, i64 238
  %5355 = add i64 %5317, %.v158
  %5356 = add i64 %5302, -100
  %5357 = add i64 %5355, 4
  store i64 %5357, i64* %3, align 8
  %5358 = inttoptr i64 %5356 to i32*
  %5359 = load i32, i32* %5358, align 4
  %5360 = add i32 %5359, -1
  %5361 = icmp eq i32 %5359, 0
  %5362 = zext i1 %5361 to i8
  store i8 %5362, i8* %14, align 1
  %5363 = and i32 %5360, 255
  %5364 = tail call i32 @llvm.ctpop.i32(i32 %5363)
  %5365 = trunc i32 %5364 to i8
  %5366 = and i8 %5365, 1
  %5367 = xor i8 %5366, 1
  store i8 %5367, i8* %21, align 1
  %5368 = xor i32 %5360, %5359
  %5369 = lshr i32 %5368, 4
  %5370 = trunc i32 %5369 to i8
  %5371 = and i8 %5370, 1
  store i8 %5371, i8* %27, align 1
  %5372 = icmp eq i32 %5360, 0
  %5373 = zext i1 %5372 to i8
  store i8 %5373, i8* %30, align 1
  %5374 = lshr i32 %5360, 31
  %5375 = trunc i32 %5374 to i8
  store i8 %5375, i8* %33, align 1
  %5376 = lshr i32 %5359, 31
  %5377 = xor i32 %5374, %5376
  %5378 = add nuw nsw i32 %5377, %5376
  %5379 = icmp eq i32 %5378, 2
  %5380 = zext i1 %5379 to i8
  store i8 %5380, i8* %39, align 1
  br i1 %5354, label %block_40b7df, label %block_.L_40b8c3

block_40b7df:                                     ; preds = %block_.L_40b7d5
  %.v179 = select i1 %5372, i64 10, i64 119
  %5381 = add i64 %5355, %.v179
  store i64 4, i64* %RAX.i2123.pre-phi, align 8
  store i64 1, i64* %RCX.i1445, align 8
  store i64 3, i64* %RDX.i2151, align 8
  %5382 = add i64 %5381, 25
  store i64 %5382, i64* %3, align 8
  br i1 %5372, label %block_40b7e9, label %block_.L_40b856

block_40b7e9:                                     ; preds = %block_40b7df
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %RSI.i2229, align 8
  %5383 = add i64 %5302, -72
  %5384 = add i64 %5381, 28
  store i64 %5384, i64* %3, align 8
  %5385 = inttoptr i64 %5383 to i32*
  %5386 = load i32, i32* %5385, align 4
  %5387 = zext i32 %5386 to i64
  store i64 %5387, i64* %RDI.i2224, align 8
  %5388 = add i64 %5302, -4
  %5389 = add i64 %5381, 32
  store i64 %5389, i64* %3, align 8
  %5390 = inttoptr i64 %5388 to i32*
  %5391 = load i32, i32* %5390, align 4
  %5392 = sext i32 %5391 to i64
  %5393 = mul nsw i64 %5392, 384
  store i64 %5393, i64* %R8.i1611, align 8
  %5394 = lshr i64 %5393, 63
  %5395 = add i64 %5393, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  store i64 %5395, i64* %RSI.i2229, align 8
  %5396 = icmp ult i64 %5395, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  %5397 = icmp ult i64 %5395, %5393
  %5398 = or i1 %5396, %5397
  %5399 = zext i1 %5398 to i8
  store i8 %5399, i8* %14, align 1
  %5400 = trunc i64 %5395 to i32
  %5401 = and i32 %5400, 248
  %5402 = tail call i32 @llvm.ctpop.i32(i32 %5401)
  %5403 = trunc i32 %5402 to i8
  %5404 = and i8 %5403, 1
  %5405 = xor i8 %5404, 1
  store i8 %5405, i8* %21, align 1
  %5406 = xor i64 %5395, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  %5407 = lshr i64 %5406, 4
  %5408 = trunc i64 %5407 to i8
  %5409 = and i8 %5408, 1
  store i8 %5409, i8* %27, align 1
  %5410 = icmp eq i64 %5395, 0
  %5411 = zext i1 %5410 to i8
  store i8 %5411, i8* %30, align 1
  %5412 = lshr i64 %5395, 63
  %5413 = trunc i64 %5412 to i8
  store i8 %5413, i8* %33, align 1
  %5414 = xor i64 %5412, lshr (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 63)
  %5415 = xor i64 %5412, %5394
  %5416 = add nuw nsw i64 %5414, %5415
  %5417 = icmp eq i64 %5416, 2
  %5418 = zext i1 %5417 to i8
  store i8 %5418, i8* %39, align 1
  %5419 = add i64 %5302, -108
  %5420 = add i64 %5381, 46
  store i64 %5420, i64* %3, align 8
  %5421 = inttoptr i64 %5419 to i32*
  %5422 = load i32, i32* %5421, align 4
  %5423 = sext i32 %5422 to i64
  %5424 = shl nsw i64 %5423, 6
  store i64 %5424, i64* %R8.i1611, align 8
  %5425 = add i64 %5424, %5395
  store i64 %5425, i64* %RSI.i2229, align 8
  %5426 = icmp ult i64 %5425, %5395
  %5427 = icmp ult i64 %5425, %5424
  %5428 = or i1 %5426, %5427
  %5429 = zext i1 %5428 to i8
  store i8 %5429, i8* %14, align 1
  %5430 = trunc i64 %5425 to i32
  %5431 = and i32 %5430, 248
  %5432 = tail call i32 @llvm.ctpop.i32(i32 %5431)
  %5433 = trunc i32 %5432 to i8
  %5434 = and i8 %5433, 1
  %5435 = xor i8 %5434, 1
  store i8 %5435, i8* %21, align 1
  %5436 = xor i64 %5395, %5425
  %5437 = lshr i64 %5436, 4
  %5438 = trunc i64 %5437 to i8
  %5439 = and i8 %5438, 1
  store i8 %5439, i8* %27, align 1
  %5440 = icmp eq i64 %5425, 0
  %5441 = zext i1 %5440 to i8
  store i8 %5441, i8* %30, align 1
  %5442 = lshr i64 %5425, 63
  %5443 = trunc i64 %5442 to i8
  store i8 %5443, i8* %33, align 1
  %5444 = lshr i64 %5423, 57
  %5445 = and i64 %5444, 1
  %5446 = xor i64 %5442, %5412
  %5447 = xor i64 %5442, %5445
  %5448 = add nuw nsw i64 %5446, %5447
  %5449 = icmp eq i64 %5448, 2
  %5450 = zext i1 %5449 to i8
  store i8 %5450, i8* %39, align 1
  %5451 = load i64, i64* %RBP.i, align 8
  %5452 = add i64 %5451, -16
  %5453 = add i64 %5381, 57
  store i64 %5453, i64* %3, align 8
  %5454 = inttoptr i64 %5452 to i32*
  %5455 = load i32, i32* %5454, align 4
  %5456 = sext i32 %5455 to i64
  %5457 = shl nsw i64 %5456, 4
  store i64 %5457, i64* %R8.i1611, align 8
  %5458 = add i64 %5457, %5425
  store i64 %5458, i64* %RSI.i2229, align 8
  %5459 = icmp ult i64 %5458, %5425
  %5460 = icmp ult i64 %5458, %5457
  %5461 = or i1 %5459, %5460
  %5462 = zext i1 %5461 to i8
  store i8 %5462, i8* %14, align 1
  %5463 = trunc i64 %5458 to i32
  %5464 = and i32 %5463, 255
  %5465 = tail call i32 @llvm.ctpop.i32(i32 %5464)
  %5466 = trunc i32 %5465 to i8
  %5467 = and i8 %5466, 1
  %5468 = xor i8 %5467, 1
  store i8 %5468, i8* %21, align 1
  %5469 = xor i64 %5457, %5425
  %5470 = xor i64 %5469, %5458
  %5471 = lshr i64 %5470, 4
  %5472 = trunc i64 %5471 to i8
  %5473 = and i8 %5472, 1
  store i8 %5473, i8* %27, align 1
  %5474 = icmp eq i64 %5458, 0
  %5475 = zext i1 %5474 to i8
  store i8 %5475, i8* %30, align 1
  %5476 = lshr i64 %5458, 63
  %5477 = trunc i64 %5476 to i8
  store i8 %5477, i8* %33, align 1
  %5478 = lshr i64 %5456, 59
  %5479 = and i64 %5478, 1
  %5480 = xor i64 %5476, %5442
  %5481 = xor i64 %5476, %5479
  %5482 = add nuw nsw i64 %5480, %5481
  %5483 = icmp eq i64 %5482, 2
  %5484 = zext i1 %5483 to i8
  store i8 %5484, i8* %39, align 1
  %5485 = add i64 %5451, -20
  %5486 = add i64 %5381, 68
  store i64 %5486, i64* %3, align 8
  %5487 = inttoptr i64 %5485 to i32*
  %5488 = load i32, i32* %5487, align 4
  %5489 = sext i32 %5488 to i64
  store i64 %5489, i64* %R8.i1611, align 8
  %5490 = load i64, i64* %RDI.i2224, align 8
  %5491 = shl nsw i64 %5489, 2
  %5492 = add i64 %5458, %5491
  %5493 = add i64 %5381, 73
  store i64 %5493, i64* %3, align 8
  %5494 = inttoptr i64 %5492 to i32*
  %5495 = load i32, i32* %5494, align 4
  %5496 = shl i64 %5490, 32
  %5497 = ashr exact i64 %5496, 32
  %5498 = sext i32 %5495 to i64
  %5499 = mul nsw i64 %5498, %5497
  %5500 = trunc i64 %5499 to i32
  %5501 = and i64 %5499, 4294967295
  store i64 %5501, i64* %RDI.i2224, align 8
  %5502 = shl i64 %5499, 32
  %5503 = ashr exact i64 %5502, 32
  %5504 = icmp ne i64 %5503, %5499
  %5505 = zext i1 %5504 to i8
  store i8 %5505, i8* %14, align 1
  %5506 = and i32 %5500, 255
  %5507 = tail call i32 @llvm.ctpop.i32(i32 %5506)
  %5508 = trunc i32 %5507 to i8
  %5509 = and i8 %5508, 1
  %5510 = xor i8 %5509, 1
  store i8 %5510, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %5511 = lshr i32 %5500, 31
  %5512 = trunc i32 %5511 to i8
  store i8 %5512, i8* %33, align 1
  store i8 %5505, i8* %39, align 1
  %5513 = load i64, i64* %RDX.i2151, align 8
  %5514 = load i64, i64* %RBP.i, align 8
  %5515 = add i64 %5514, -104
  %5516 = add i64 %5381, 76
  store i64 %5516, i64* %3, align 8
  %5517 = trunc i64 %5513 to i32
  %5518 = inttoptr i64 %5515 to i32*
  %5519 = load i32, i32* %5518, align 4
  %5520 = sub i32 %5517, %5519
  %5521 = zext i32 %5520 to i64
  store i64 %5521, i64* %RDX.i2151, align 8
  %5522 = icmp ult i32 %5517, %5519
  %5523 = zext i1 %5522 to i8
  store i8 %5523, i8* %14, align 1
  %5524 = and i32 %5520, 255
  %5525 = tail call i32 @llvm.ctpop.i32(i32 %5524)
  %5526 = trunc i32 %5525 to i8
  %5527 = and i8 %5526, 1
  %5528 = xor i8 %5527, 1
  store i8 %5528, i8* %21, align 1
  %5529 = xor i32 %5519, %5517
  %5530 = xor i32 %5529, %5520
  %5531 = lshr i32 %5530, 4
  %5532 = trunc i32 %5531 to i8
  %5533 = and i8 %5532, 1
  store i8 %5533, i8* %27, align 1
  %5534 = icmp eq i32 %5520, 0
  %5535 = zext i1 %5534 to i8
  store i8 %5535, i8* %30, align 1
  %5536 = lshr i32 %5520, 31
  %5537 = trunc i32 %5536 to i8
  store i8 %5537, i8* %33, align 1
  %5538 = lshr i32 %5517, 31
  %5539 = lshr i32 %5519, 31
  %5540 = xor i32 %5539, %5538
  %5541 = xor i32 %5536, %5538
  %5542 = add nuw nsw i32 %5541, %5540
  %5543 = icmp eq i32 %5542, 2
  %5544 = zext i1 %5543 to i8
  store i8 %5544, i8* %39, align 1
  %5545 = add i64 %5514, -196
  %5546 = load i32, i32* %ECX.i2242, align 4
  %5547 = add i64 %5381, 82
  store i64 %5547, i64* %3, align 8
  %5548 = inttoptr i64 %5545 to i32*
  store i32 %5546, i32* %5548, align 4
  %5549 = load i32, i32* %EDX.i1427, align 4
  %5550 = zext i32 %5549 to i64
  %5551 = load i64, i64* %3, align 8
  store i64 %5550, i64* %RCX.i1445, align 8
  %5552 = load i64, i64* %RBP.i, align 8
  %5553 = add i64 %5552, -196
  %5554 = add i64 %5551, 8
  store i64 %5554, i64* %3, align 8
  %5555 = inttoptr i64 %5553 to i32*
  %5556 = load i32, i32* %5555, align 4
  %5557 = zext i32 %5556 to i64
  store i64 %5557, i64* %RDX.i2151, align 8
  %5558 = add i64 %5551, 10
  store i64 %5558, i64* %3, align 8
  %5559 = trunc i32 %5549 to i5
  switch i5 %5559, label %5565 [
    i5 0, label %routine_shll__cl___edx.exit641
    i5 1, label %5560
  ]

; <label>:5560:                                   ; preds = %block_40b7e9
  %5561 = shl i32 %5556, 1
  %5562 = icmp slt i32 %5556, 0
  %5563 = icmp slt i32 %5561, 0
  %5564 = xor i1 %5562, %5563
  br label %5574

; <label>:5565:                                   ; preds = %block_40b7e9
  %5566 = and i32 %5549, 31
  %5567 = zext i32 %5566 to i64
  %5568 = add nuw nsw i64 %5567, 4294967295
  %5569 = and i64 %5568, 4294967295
  %5570 = shl i64 %5557, %5569
  %5571 = trunc i64 %5570 to i32
  %5572 = icmp slt i32 %5571, 0
  %5573 = shl i32 %5571, 1
  br label %5574

; <label>:5574:                                   ; preds = %5565, %5560
  %5575 = phi i1 [ %5562, %5560 ], [ %5572, %5565 ]
  %5576 = phi i1 [ %5564, %5560 ], [ false, %5565 ]
  %5577 = phi i32 [ %5561, %5560 ], [ %5573, %5565 ]
  %5578 = zext i32 %5577 to i64
  store i64 %5578, i64* %RDX.i2151, align 8
  %5579 = zext i1 %5575 to i8
  store i8 %5579, i8* %14, align 1
  %5580 = and i32 %5577, 254
  %5581 = tail call i32 @llvm.ctpop.i32(i32 %5580)
  %5582 = trunc i32 %5581 to i8
  %5583 = and i8 %5582, 1
  %5584 = xor i8 %5583, 1
  store i8 %5584, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5585 = icmp eq i32 %5577, 0
  %5586 = zext i1 %5585 to i8
  store i8 %5586, i8* %30, align 1
  %5587 = lshr i32 %5577, 31
  %5588 = trunc i32 %5587 to i8
  store i8 %5588, i8* %33, align 1
  %5589 = zext i1 %5576 to i8
  store i8 %5589, i8* %39, align 1
  br label %routine_shll__cl___edx.exit641

routine_shll__cl___edx.exit641:                   ; preds = %5574, %block_40b7e9
  %5590 = phi i32 [ %5577, %5574 ], [ %5556, %block_40b7e9 ]
  %5591 = load i64, i64* %RDI.i2224, align 8
  %5592 = zext i32 %5590 to i64
  %5593 = trunc i64 %5591 to i32
  %5594 = add i32 %5590, %5593
  %5595 = zext i32 %5594 to i64
  store i64 %5595, i64* %RDI.i2224, align 8
  %5596 = icmp ult i32 %5594, %5593
  %5597 = icmp ult i32 %5594, %5590
  %5598 = or i1 %5596, %5597
  %5599 = zext i1 %5598 to i8
  store i8 %5599, i8* %14, align 1
  %5600 = and i32 %5594, 255
  %5601 = tail call i32 @llvm.ctpop.i32(i32 %5600)
  %5602 = trunc i32 %5601 to i8
  %5603 = and i8 %5602, 1
  %5604 = xor i8 %5603, 1
  store i8 %5604, i8* %21, align 1
  %5605 = xor i64 %5592, %5591
  %5606 = trunc i64 %5605 to i32
  %5607 = xor i32 %5606, %5594
  %5608 = lshr i32 %5607, 4
  %5609 = trunc i32 %5608 to i8
  %5610 = and i8 %5609, 1
  store i8 %5610, i8* %27, align 1
  %5611 = icmp eq i32 %5594, 0
  %5612 = zext i1 %5611 to i8
  store i8 %5612, i8* %30, align 1
  %5613 = lshr i32 %5594, 31
  %5614 = trunc i32 %5613 to i8
  store i8 %5614, i8* %33, align 1
  %5615 = lshr i32 %5593, 31
  %5616 = lshr i32 %5590, 31
  %5617 = xor i32 %5613, %5615
  %5618 = xor i32 %5613, %5616
  %5619 = add nuw nsw i32 %5617, %5618
  %5620 = icmp eq i32 %5619, 2
  %5621 = zext i1 %5620 to i8
  store i8 %5621, i8* %39, align 1
  %5622 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %5623 = add i64 %5552, -104
  %5624 = add i64 %5551, 15
  store i64 %5624, i64* %3, align 8
  %5625 = trunc i64 %5622 to i32
  %5626 = inttoptr i64 %5623 to i32*
  %5627 = load i32, i32* %5626, align 4
  %5628 = sub i32 %5625, %5627
  %5629 = zext i32 %5628 to i64
  store i64 %5629, i64* %RAX.i2123.pre-phi, align 8
  %5630 = icmp ult i32 %5625, %5627
  %5631 = zext i1 %5630 to i8
  store i8 %5631, i8* %14, align 1
  %5632 = and i32 %5628, 255
  %5633 = tail call i32 @llvm.ctpop.i32(i32 %5632)
  %5634 = trunc i32 %5633 to i8
  %5635 = and i8 %5634, 1
  %5636 = xor i8 %5635, 1
  store i8 %5636, i8* %21, align 1
  %5637 = xor i32 %5627, %5625
  %5638 = xor i32 %5637, %5628
  %5639 = lshr i32 %5638, 4
  %5640 = trunc i32 %5639 to i8
  %5641 = and i8 %5640, 1
  store i8 %5641, i8* %27, align 1
  %5642 = icmp eq i32 %5628, 0
  %5643 = zext i1 %5642 to i8
  store i8 %5643, i8* %30, align 1
  %5644 = lshr i32 %5628, 31
  %5645 = trunc i32 %5644 to i8
  store i8 %5645, i8* %33, align 1
  %5646 = lshr i32 %5625, 31
  %5647 = lshr i32 %5627, 31
  %5648 = xor i32 %5647, %5646
  %5649 = xor i32 %5644, %5646
  %5650 = add nuw nsw i32 %5649, %5648
  %5651 = icmp eq i32 %5650, 2
  %5652 = zext i1 %5651 to i8
  store i8 %5652, i8* %39, align 1
  store i64 %5629, i64* %RCX.i1445, align 8
  %5653 = add i64 %5551, 19
  store i64 %5653, i64* %3, align 8
  %5654 = trunc i32 %5628 to i5
  switch i5 %5654, label %5658 [
    i5 0, label %routine_sarl__cl___edi.exit628
    i5 1, label %5655
  ]

; <label>:5655:                                   ; preds = %routine_shll__cl___edx.exit641
  %5656 = shl nuw i64 %5595, 32
  %5657 = ashr i64 %5656, 33
  br label %5665

; <label>:5658:                                   ; preds = %routine_shll__cl___edx.exit641
  %5659 = and i32 %5628, 31
  %5660 = zext i32 %5659 to i64
  %5661 = add nsw i64 %5660, -1
  %5662 = sext i32 %5594 to i64
  %5663 = ashr i64 %5662, %5661
  %5664 = lshr i64 %5663, 1
  br label %5665

; <label>:5665:                                   ; preds = %5658, %5655
  %5666 = phi i64 [ %5664, %5658 ], [ %5657, %5655 ]
  %5667 = phi i64 [ %5663, %5658 ], [ %5595, %5655 ]
  %5668 = trunc i64 %5667 to i8
  %5669 = and i8 %5668, 1
  %5670 = trunc i64 %5666 to i32
  %5671 = and i64 %5666, 4294967295
  store i64 %5671, i64* %RDI.i2224, align 8
  store i8 %5669, i8* %14, align 1
  %5672 = and i32 %5670, 255
  %5673 = tail call i32 @llvm.ctpop.i32(i32 %5672)
  %5674 = trunc i32 %5673 to i8
  %5675 = and i8 %5674, 1
  %5676 = xor i8 %5675, 1
  store i8 %5676, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5677 = icmp eq i32 %5670, 0
  %5678 = zext i1 %5677 to i8
  store i8 %5678, i8* %30, align 1
  %5679 = lshr i32 %5670, 31
  %5680 = trunc i32 %5679 to i8
  store i8 %5680, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5681 = trunc i64 %5666 to i32
  br label %routine_sarl__cl___edi.exit628

routine_sarl__cl___edi.exit628:                   ; preds = %5665, %routine_shll__cl___edx.exit641
  %5682 = phi i32 [ %5681, %5665 ], [ %5594, %routine_shll__cl___edx.exit641 ]
  %5683 = add i64 %5552, -32
  %5684 = add i64 %5551, 22
  store i64 %5684, i64* %3, align 8
  %5685 = inttoptr i64 %5683 to i32*
  store i32 %5682, i32* %5685, align 4
  %5686 = load i64, i64* %3, align 8
  %5687 = add i64 %5686, 109
  store i64 %5687, i64* %3, align 8
  br label %block_.L_40b8be

block_.L_40b856:                                  ; preds = %block_40b7df
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %RSI.i2229, align 8
  %5688 = add i64 %5302, -72
  %5689 = add i64 %5381, 28
  store i64 %5689, i64* %3, align 8
  %5690 = inttoptr i64 %5688 to i32*
  %5691 = load i32, i32* %5690, align 4
  %5692 = zext i32 %5691 to i64
  store i64 %5692, i64* %RDI.i2224, align 8
  %5693 = add i64 %5302, -4
  %5694 = add i64 %5381, 32
  store i64 %5694, i64* %3, align 8
  %5695 = inttoptr i64 %5693 to i32*
  %5696 = load i32, i32* %5695, align 4
  %5697 = sext i32 %5696 to i64
  %5698 = mul nsw i64 %5697, 384
  store i64 %5698, i64* %R8.i1611, align 8
  %5699 = lshr i64 %5698, 63
  %5700 = add i64 %5698, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  store i64 %5700, i64* %RSI.i2229, align 8
  %5701 = icmp ult i64 %5700, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  %5702 = icmp ult i64 %5700, %5698
  %5703 = or i1 %5701, %5702
  %5704 = zext i1 %5703 to i8
  store i8 %5704, i8* %14, align 1
  %5705 = trunc i64 %5700 to i32
  %5706 = and i32 %5705, 248
  %5707 = tail call i32 @llvm.ctpop.i32(i32 %5706)
  %5708 = trunc i32 %5707 to i8
  %5709 = and i8 %5708, 1
  %5710 = xor i8 %5709, 1
  store i8 %5710, i8* %21, align 1
  %5711 = xor i64 %5700, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  %5712 = lshr i64 %5711, 4
  %5713 = trunc i64 %5712 to i8
  %5714 = and i8 %5713, 1
  store i8 %5714, i8* %27, align 1
  %5715 = icmp eq i64 %5700, 0
  %5716 = zext i1 %5715 to i8
  store i8 %5716, i8* %30, align 1
  %5717 = lshr i64 %5700, 63
  %5718 = trunc i64 %5717 to i8
  store i8 %5718, i8* %33, align 1
  %5719 = xor i64 %5717, lshr (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 63)
  %5720 = xor i64 %5717, %5699
  %5721 = add nuw nsw i64 %5719, %5720
  %5722 = icmp eq i64 %5721, 2
  %5723 = zext i1 %5722 to i8
  store i8 %5723, i8* %39, align 1
  %5724 = add i64 %5302, -108
  %5725 = add i64 %5381, 46
  store i64 %5725, i64* %3, align 8
  %5726 = inttoptr i64 %5724 to i32*
  %5727 = load i32, i32* %5726, align 4
  %5728 = sext i32 %5727 to i64
  %5729 = shl nsw i64 %5728, 6
  store i64 %5729, i64* %R8.i1611, align 8
  %5730 = add i64 %5729, %5700
  store i64 %5730, i64* %RSI.i2229, align 8
  %5731 = icmp ult i64 %5730, %5700
  %5732 = icmp ult i64 %5730, %5729
  %5733 = or i1 %5731, %5732
  %5734 = zext i1 %5733 to i8
  store i8 %5734, i8* %14, align 1
  %5735 = trunc i64 %5730 to i32
  %5736 = and i32 %5735, 248
  %5737 = tail call i32 @llvm.ctpop.i32(i32 %5736)
  %5738 = trunc i32 %5737 to i8
  %5739 = and i8 %5738, 1
  %5740 = xor i8 %5739, 1
  store i8 %5740, i8* %21, align 1
  %5741 = xor i64 %5700, %5730
  %5742 = lshr i64 %5741, 4
  %5743 = trunc i64 %5742 to i8
  %5744 = and i8 %5743, 1
  store i8 %5744, i8* %27, align 1
  %5745 = icmp eq i64 %5730, 0
  %5746 = zext i1 %5745 to i8
  store i8 %5746, i8* %30, align 1
  %5747 = lshr i64 %5730, 63
  %5748 = trunc i64 %5747 to i8
  store i8 %5748, i8* %33, align 1
  %5749 = lshr i64 %5728, 57
  %5750 = and i64 %5749, 1
  %5751 = xor i64 %5747, %5717
  %5752 = xor i64 %5747, %5750
  %5753 = add nuw nsw i64 %5751, %5752
  %5754 = icmp eq i64 %5753, 2
  %5755 = zext i1 %5754 to i8
  store i8 %5755, i8* %39, align 1
  %5756 = load i64, i64* %RBP.i, align 8
  %5757 = add i64 %5756, -16
  %5758 = add i64 %5381, 57
  store i64 %5758, i64* %3, align 8
  %5759 = inttoptr i64 %5757 to i32*
  %5760 = load i32, i32* %5759, align 4
  %5761 = sext i32 %5760 to i64
  %5762 = shl nsw i64 %5761, 4
  store i64 %5762, i64* %R8.i1611, align 8
  %5763 = add i64 %5762, %5730
  store i64 %5763, i64* %RSI.i2229, align 8
  %5764 = icmp ult i64 %5763, %5730
  %5765 = icmp ult i64 %5763, %5762
  %5766 = or i1 %5764, %5765
  %5767 = zext i1 %5766 to i8
  store i8 %5767, i8* %14, align 1
  %5768 = trunc i64 %5763 to i32
  %5769 = and i32 %5768, 255
  %5770 = tail call i32 @llvm.ctpop.i32(i32 %5769)
  %5771 = trunc i32 %5770 to i8
  %5772 = and i8 %5771, 1
  %5773 = xor i8 %5772, 1
  store i8 %5773, i8* %21, align 1
  %5774 = xor i64 %5762, %5730
  %5775 = xor i64 %5774, %5763
  %5776 = lshr i64 %5775, 4
  %5777 = trunc i64 %5776 to i8
  %5778 = and i8 %5777, 1
  store i8 %5778, i8* %27, align 1
  %5779 = icmp eq i64 %5763, 0
  %5780 = zext i1 %5779 to i8
  store i8 %5780, i8* %30, align 1
  %5781 = lshr i64 %5763, 63
  %5782 = trunc i64 %5781 to i8
  store i8 %5782, i8* %33, align 1
  %5783 = lshr i64 %5761, 59
  %5784 = and i64 %5783, 1
  %5785 = xor i64 %5781, %5747
  %5786 = xor i64 %5781, %5784
  %5787 = add nuw nsw i64 %5785, %5786
  %5788 = icmp eq i64 %5787, 2
  %5789 = zext i1 %5788 to i8
  store i8 %5789, i8* %39, align 1
  %5790 = add i64 %5756, -20
  %5791 = add i64 %5381, 68
  store i64 %5791, i64* %3, align 8
  %5792 = inttoptr i64 %5790 to i32*
  %5793 = load i32, i32* %5792, align 4
  %5794 = sext i32 %5793 to i64
  store i64 %5794, i64* %R8.i1611, align 8
  %5795 = load i64, i64* %RDI.i2224, align 8
  %5796 = shl nsw i64 %5794, 2
  %5797 = add i64 %5763, %5796
  %5798 = add i64 %5381, 73
  store i64 %5798, i64* %3, align 8
  %5799 = inttoptr i64 %5797 to i32*
  %5800 = load i32, i32* %5799, align 4
  %5801 = shl i64 %5795, 32
  %5802 = ashr exact i64 %5801, 32
  %5803 = sext i32 %5800 to i64
  %5804 = mul nsw i64 %5803, %5802
  %5805 = trunc i64 %5804 to i32
  %5806 = and i64 %5804, 4294967295
  store i64 %5806, i64* %RDI.i2224, align 8
  %5807 = shl i64 %5804, 32
  %5808 = ashr exact i64 %5807, 32
  %5809 = icmp ne i64 %5808, %5804
  %5810 = zext i1 %5809 to i8
  store i8 %5810, i8* %14, align 1
  %5811 = and i32 %5805, 255
  %5812 = tail call i32 @llvm.ctpop.i32(i32 %5811)
  %5813 = trunc i32 %5812 to i8
  %5814 = and i8 %5813, 1
  %5815 = xor i8 %5814, 1
  store i8 %5815, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %5816 = lshr i32 %5805, 31
  %5817 = trunc i32 %5816 to i8
  store i8 %5817, i8* %33, align 1
  store i8 %5810, i8* %39, align 1
  %5818 = load i64, i64* %RDX.i2151, align 8
  %5819 = load i64, i64* %RBP.i, align 8
  %5820 = add i64 %5819, -104
  %5821 = add i64 %5381, 76
  store i64 %5821, i64* %3, align 8
  %5822 = trunc i64 %5818 to i32
  %5823 = inttoptr i64 %5820 to i32*
  %5824 = load i32, i32* %5823, align 4
  %5825 = sub i32 %5822, %5824
  %5826 = zext i32 %5825 to i64
  store i64 %5826, i64* %RDX.i2151, align 8
  %5827 = icmp ult i32 %5822, %5824
  %5828 = zext i1 %5827 to i8
  store i8 %5828, i8* %14, align 1
  %5829 = and i32 %5825, 255
  %5830 = tail call i32 @llvm.ctpop.i32(i32 %5829)
  %5831 = trunc i32 %5830 to i8
  %5832 = and i8 %5831, 1
  %5833 = xor i8 %5832, 1
  store i8 %5833, i8* %21, align 1
  %5834 = xor i32 %5824, %5822
  %5835 = xor i32 %5834, %5825
  %5836 = lshr i32 %5835, 4
  %5837 = trunc i32 %5836 to i8
  %5838 = and i8 %5837, 1
  store i8 %5838, i8* %27, align 1
  %5839 = icmp eq i32 %5825, 0
  %5840 = zext i1 %5839 to i8
  store i8 %5840, i8* %30, align 1
  %5841 = lshr i32 %5825, 31
  %5842 = trunc i32 %5841 to i8
  store i8 %5842, i8* %33, align 1
  %5843 = lshr i32 %5822, 31
  %5844 = lshr i32 %5824, 31
  %5845 = xor i32 %5844, %5843
  %5846 = xor i32 %5841, %5843
  %5847 = add nuw nsw i32 %5846, %5845
  %5848 = icmp eq i32 %5847, 2
  %5849 = zext i1 %5848 to i8
  store i8 %5849, i8* %39, align 1
  %5850 = add i64 %5819, -200
  %5851 = load i32, i32* %ECX.i2242, align 4
  %5852 = add i64 %5381, 82
  store i64 %5852, i64* %3, align 8
  %5853 = inttoptr i64 %5850 to i32*
  store i32 %5851, i32* %5853, align 4
  %5854 = load i32, i32* %EDX.i1427, align 4
  %5855 = zext i32 %5854 to i64
  %5856 = load i64, i64* %3, align 8
  store i64 %5855, i64* %RCX.i1445, align 8
  %5857 = load i64, i64* %RBP.i, align 8
  %5858 = add i64 %5857, -200
  %5859 = add i64 %5856, 8
  store i64 %5859, i64* %3, align 8
  %5860 = inttoptr i64 %5858 to i32*
  %5861 = load i32, i32* %5860, align 4
  %5862 = zext i32 %5861 to i64
  store i64 %5862, i64* %RDX.i2151, align 8
  %5863 = add i64 %5856, 10
  store i64 %5863, i64* %3, align 8
  %5864 = trunc i32 %5854 to i5
  switch i5 %5864, label %5870 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %5865
  ]

; <label>:5865:                                   ; preds = %block_.L_40b856
  %5866 = shl i32 %5861, 1
  %5867 = icmp slt i32 %5861, 0
  %5868 = icmp slt i32 %5866, 0
  %5869 = xor i1 %5867, %5868
  br label %5879

; <label>:5870:                                   ; preds = %block_.L_40b856
  %5871 = and i32 %5854, 31
  %5872 = zext i32 %5871 to i64
  %5873 = add nuw nsw i64 %5872, 4294967295
  %5874 = and i64 %5873, 4294967295
  %5875 = shl i64 %5862, %5874
  %5876 = trunc i64 %5875 to i32
  %5877 = icmp slt i32 %5876, 0
  %5878 = shl i32 %5876, 1
  br label %5879

; <label>:5879:                                   ; preds = %5870, %5865
  %5880 = phi i1 [ %5867, %5865 ], [ %5877, %5870 ]
  %5881 = phi i1 [ %5869, %5865 ], [ false, %5870 ]
  %5882 = phi i32 [ %5866, %5865 ], [ %5878, %5870 ]
  %5883 = zext i32 %5882 to i64
  store i64 %5883, i64* %RDX.i2151, align 8
  %5884 = zext i1 %5880 to i8
  store i8 %5884, i8* %14, align 1
  %5885 = and i32 %5882, 254
  %5886 = tail call i32 @llvm.ctpop.i32(i32 %5885)
  %5887 = trunc i32 %5886 to i8
  %5888 = and i8 %5887, 1
  %5889 = xor i8 %5888, 1
  store i8 %5889, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5890 = icmp eq i32 %5882, 0
  %5891 = zext i1 %5890 to i8
  store i8 %5891, i8* %30, align 1
  %5892 = lshr i32 %5882, 31
  %5893 = trunc i32 %5892 to i8
  store i8 %5893, i8* %33, align 1
  %5894 = zext i1 %5881 to i8
  store i8 %5894, i8* %39, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %5879, %block_.L_40b856
  %5895 = phi i32 [ %5882, %5879 ], [ %5861, %block_.L_40b856 ]
  %5896 = load i64, i64* %RDI.i2224, align 8
  %5897 = zext i32 %5895 to i64
  %5898 = trunc i64 %5896 to i32
  %5899 = add i32 %5895, %5898
  %5900 = zext i32 %5899 to i64
  store i64 %5900, i64* %RDI.i2224, align 8
  %5901 = icmp ult i32 %5899, %5898
  %5902 = icmp ult i32 %5899, %5895
  %5903 = or i1 %5901, %5902
  %5904 = zext i1 %5903 to i8
  store i8 %5904, i8* %14, align 1
  %5905 = and i32 %5899, 255
  %5906 = tail call i32 @llvm.ctpop.i32(i32 %5905)
  %5907 = trunc i32 %5906 to i8
  %5908 = and i8 %5907, 1
  %5909 = xor i8 %5908, 1
  store i8 %5909, i8* %21, align 1
  %5910 = xor i64 %5897, %5896
  %5911 = trunc i64 %5910 to i32
  %5912 = xor i32 %5911, %5899
  %5913 = lshr i32 %5912, 4
  %5914 = trunc i32 %5913 to i8
  %5915 = and i8 %5914, 1
  store i8 %5915, i8* %27, align 1
  %5916 = icmp eq i32 %5899, 0
  %5917 = zext i1 %5916 to i8
  store i8 %5917, i8* %30, align 1
  %5918 = lshr i32 %5899, 31
  %5919 = trunc i32 %5918 to i8
  store i8 %5919, i8* %33, align 1
  %5920 = lshr i32 %5898, 31
  %5921 = lshr i32 %5895, 31
  %5922 = xor i32 %5918, %5920
  %5923 = xor i32 %5918, %5921
  %5924 = add nuw nsw i32 %5922, %5923
  %5925 = icmp eq i32 %5924, 2
  %5926 = zext i1 %5925 to i8
  store i8 %5926, i8* %39, align 1
  %5927 = load i64, i64* %RAX.i2123.pre-phi, align 8
  %5928 = add i64 %5857, -104
  %5929 = add i64 %5856, 15
  store i64 %5929, i64* %3, align 8
  %5930 = trunc i64 %5927 to i32
  %5931 = inttoptr i64 %5928 to i32*
  %5932 = load i32, i32* %5931, align 4
  %5933 = sub i32 %5930, %5932
  %5934 = zext i32 %5933 to i64
  store i64 %5934, i64* %RAX.i2123.pre-phi, align 8
  %5935 = icmp ult i32 %5930, %5932
  %5936 = zext i1 %5935 to i8
  store i8 %5936, i8* %14, align 1
  %5937 = and i32 %5933, 255
  %5938 = tail call i32 @llvm.ctpop.i32(i32 %5937)
  %5939 = trunc i32 %5938 to i8
  %5940 = and i8 %5939, 1
  %5941 = xor i8 %5940, 1
  store i8 %5941, i8* %21, align 1
  %5942 = xor i32 %5932, %5930
  %5943 = xor i32 %5942, %5933
  %5944 = lshr i32 %5943, 4
  %5945 = trunc i32 %5944 to i8
  %5946 = and i8 %5945, 1
  store i8 %5946, i8* %27, align 1
  %5947 = icmp eq i32 %5933, 0
  %5948 = zext i1 %5947 to i8
  store i8 %5948, i8* %30, align 1
  %5949 = lshr i32 %5933, 31
  %5950 = trunc i32 %5949 to i8
  store i8 %5950, i8* %33, align 1
  %5951 = lshr i32 %5930, 31
  %5952 = lshr i32 %5932, 31
  %5953 = xor i32 %5952, %5951
  %5954 = xor i32 %5949, %5951
  %5955 = add nuw nsw i32 %5954, %5953
  %5956 = icmp eq i32 %5955, 2
  %5957 = zext i1 %5956 to i8
  store i8 %5957, i8* %39, align 1
  store i64 %5934, i64* %RCX.i1445, align 8
  %5958 = add i64 %5856, 19
  store i64 %5958, i64* %3, align 8
  %5959 = trunc i32 %5933 to i5
  switch i5 %5959, label %5963 [
    i5 0, label %routine_sarl__cl___edi.exit
    i5 1, label %5960
  ]

; <label>:5960:                                   ; preds = %routine_shll__cl___edx.exit
  %5961 = shl nuw i64 %5900, 32
  %5962 = ashr i64 %5961, 33
  br label %5970

; <label>:5963:                                   ; preds = %routine_shll__cl___edx.exit
  %5964 = and i32 %5933, 31
  %5965 = zext i32 %5964 to i64
  %5966 = add nsw i64 %5965, -1
  %5967 = sext i32 %5899 to i64
  %5968 = ashr i64 %5967, %5966
  %5969 = lshr i64 %5968, 1
  br label %5970

; <label>:5970:                                   ; preds = %5963, %5960
  %5971 = phi i64 [ %5969, %5963 ], [ %5962, %5960 ]
  %5972 = phi i64 [ %5968, %5963 ], [ %5900, %5960 ]
  %5973 = trunc i64 %5972 to i8
  %5974 = and i8 %5973, 1
  %5975 = trunc i64 %5971 to i32
  %5976 = and i64 %5971, 4294967295
  store i64 %5976, i64* %RDI.i2224, align 8
  store i8 %5974, i8* %14, align 1
  %5977 = and i32 %5975, 255
  %5978 = tail call i32 @llvm.ctpop.i32(i32 %5977)
  %5979 = trunc i32 %5978 to i8
  %5980 = and i8 %5979, 1
  %5981 = xor i8 %5980, 1
  store i8 %5981, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %5982 = icmp eq i32 %5975, 0
  %5983 = zext i1 %5982 to i8
  store i8 %5983, i8* %30, align 1
  %5984 = lshr i32 %5975, 31
  %5985 = trunc i32 %5984 to i8
  store i8 %5985, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %5986 = trunc i64 %5971 to i32
  br label %routine_sarl__cl___edi.exit

routine_sarl__cl___edi.exit:                      ; preds = %5970, %routine_shll__cl___edx.exit
  %5987 = phi i32 [ %5986, %5970 ], [ %5899, %routine_shll__cl___edx.exit ]
  %5988 = add i64 %5857, -32
  %5989 = add i64 %5856, 22
  store i64 %5989, i64* %3, align 8
  %5990 = inttoptr i64 %5988 to i32*
  store i32 %5987, i32* %5990, align 4
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_40b8be

block_.L_40b8be:                                  ; preds = %routine_sarl__cl___edi.exit, %routine_sarl__cl___edi.exit628
  %5991 = phi i64 [ %.pre153, %routine_sarl__cl___edi.exit ], [ %5687, %routine_sarl__cl___edi.exit628 ]
  %5992 = add i64 %5991, 189
  br label %block_.L_40b97b

block_.L_40b8c3:                                  ; preds = %block_.L_40b7d5
  %.v178 = select i1 %5372, i64 10, i64 97
  %5993 = add i64 %5355, %.v178
  %5994 = add i64 %5993, 10
  store i64 %5994, i64* %3, align 8
  br i1 %5372, label %block_40b8cd, label %block_.L_40b924

block_40b8cd:                                     ; preds = %block_.L_40b8c3
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %RAX.i2123.pre-phi, align 8
  %5995 = add i64 %5302, -72
  %5996 = add i64 %5993, 13
  store i64 %5996, i64* %3, align 8
  %5997 = inttoptr i64 %5995 to i32*
  %5998 = load i32, i32* %5997, align 4
  %5999 = zext i32 %5998 to i64
  store i64 %5999, i64* %RCX.i1445, align 8
  %6000 = add i64 %5302, -4
  %6001 = add i64 %5993, 17
  store i64 %6001, i64* %3, align 8
  %6002 = inttoptr i64 %6000 to i32*
  %6003 = load i32, i32* %6002, align 4
  %6004 = sext i32 %6003 to i64
  %6005 = mul nsw i64 %6004, 384
  store i64 %6005, i64* %RDX.i2151, align 8
  %6006 = lshr i64 %6005, 63
  %6007 = add i64 %6005, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  store i64 %6007, i64* %RAX.i2123.pre-phi, align 8
  %6008 = icmp ult i64 %6007, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  %6009 = icmp ult i64 %6007, %6005
  %6010 = or i1 %6008, %6009
  %6011 = zext i1 %6010 to i8
  store i8 %6011, i8* %14, align 1
  %6012 = trunc i64 %6007 to i32
  %6013 = and i32 %6012, 248
  %6014 = tail call i32 @llvm.ctpop.i32(i32 %6013)
  %6015 = trunc i32 %6014 to i8
  %6016 = and i8 %6015, 1
  %6017 = xor i8 %6016, 1
  store i8 %6017, i8* %21, align 1
  %6018 = xor i64 %6007, ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64)
  %6019 = lshr i64 %6018, 4
  %6020 = trunc i64 %6019 to i8
  %6021 = and i8 %6020, 1
  store i8 %6021, i8* %27, align 1
  %6022 = icmp eq i64 %6007, 0
  %6023 = zext i1 %6022 to i8
  store i8 %6023, i8* %30, align 1
  %6024 = lshr i64 %6007, 63
  %6025 = trunc i64 %6024 to i8
  store i8 %6025, i8* %33, align 1
  %6026 = xor i64 %6024, lshr (i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64 63)
  %6027 = xor i64 %6024, %6006
  %6028 = add nuw nsw i64 %6026, %6027
  %6029 = icmp eq i64 %6028, 2
  %6030 = zext i1 %6029 to i8
  store i8 %6030, i8* %39, align 1
  %6031 = add i64 %5302, -108
  %6032 = add i64 %5993, 31
  store i64 %6032, i64* %3, align 8
  %6033 = inttoptr i64 %6031 to i32*
  %6034 = load i32, i32* %6033, align 4
  %6035 = sext i32 %6034 to i64
  %6036 = shl nsw i64 %6035, 6
  store i64 %6036, i64* %RDX.i2151, align 8
  %6037 = add i64 %6036, %6007
  store i64 %6037, i64* %RAX.i2123.pre-phi, align 8
  %6038 = icmp ult i64 %6037, %6007
  %6039 = icmp ult i64 %6037, %6036
  %6040 = or i1 %6038, %6039
  %6041 = zext i1 %6040 to i8
  store i8 %6041, i8* %14, align 1
  %6042 = trunc i64 %6037 to i32
  %6043 = and i32 %6042, 248
  %6044 = tail call i32 @llvm.ctpop.i32(i32 %6043)
  %6045 = trunc i32 %6044 to i8
  %6046 = and i8 %6045, 1
  %6047 = xor i8 %6046, 1
  store i8 %6047, i8* %21, align 1
  %6048 = xor i64 %6007, %6037
  %6049 = lshr i64 %6048, 4
  %6050 = trunc i64 %6049 to i8
  %6051 = and i8 %6050, 1
  store i8 %6051, i8* %27, align 1
  %6052 = icmp eq i64 %6037, 0
  %6053 = zext i1 %6052 to i8
  store i8 %6053, i8* %30, align 1
  %6054 = lshr i64 %6037, 63
  %6055 = trunc i64 %6054 to i8
  store i8 %6055, i8* %33, align 1
  %6056 = lshr i64 %6035, 57
  %6057 = and i64 %6056, 1
  %6058 = xor i64 %6054, %6024
  %6059 = xor i64 %6054, %6057
  %6060 = add nuw nsw i64 %6058, %6059
  %6061 = icmp eq i64 %6060, 2
  %6062 = zext i1 %6061 to i8
  store i8 %6062, i8* %39, align 1
  %6063 = load i64, i64* %RBP.i, align 8
  %6064 = add i64 %6063, -16
  %6065 = add i64 %5993, 42
  store i64 %6065, i64* %3, align 8
  %6066 = inttoptr i64 %6064 to i32*
  %6067 = load i32, i32* %6066, align 4
  %6068 = sext i32 %6067 to i64
  %6069 = shl nsw i64 %6068, 4
  store i64 %6069, i64* %RDX.i2151, align 8
  %6070 = add i64 %6069, %6037
  store i64 %6070, i64* %RAX.i2123.pre-phi, align 8
  %6071 = icmp ult i64 %6070, %6037
  %6072 = icmp ult i64 %6070, %6069
  %6073 = or i1 %6071, %6072
  %6074 = zext i1 %6073 to i8
  store i8 %6074, i8* %14, align 1
  %6075 = trunc i64 %6070 to i32
  %6076 = and i32 %6075, 255
  %6077 = tail call i32 @llvm.ctpop.i32(i32 %6076)
  %6078 = trunc i32 %6077 to i8
  %6079 = and i8 %6078, 1
  %6080 = xor i8 %6079, 1
  store i8 %6080, i8* %21, align 1
  %6081 = xor i64 %6069, %6037
  %6082 = xor i64 %6081, %6070
  %6083 = lshr i64 %6082, 4
  %6084 = trunc i64 %6083 to i8
  %6085 = and i8 %6084, 1
  store i8 %6085, i8* %27, align 1
  %6086 = icmp eq i64 %6070, 0
  %6087 = zext i1 %6086 to i8
  store i8 %6087, i8* %30, align 1
  %6088 = lshr i64 %6070, 63
  %6089 = trunc i64 %6088 to i8
  store i8 %6089, i8* %33, align 1
  %6090 = lshr i64 %6068, 59
  %6091 = and i64 %6090, 1
  %6092 = xor i64 %6088, %6054
  %6093 = xor i64 %6088, %6091
  %6094 = add nuw nsw i64 %6092, %6093
  %6095 = icmp eq i64 %6094, 2
  %6096 = zext i1 %6095 to i8
  store i8 %6096, i8* %39, align 1
  %6097 = add i64 %6063, -20
  %6098 = add i64 %5993, 53
  store i64 %6098, i64* %3, align 8
  %6099 = inttoptr i64 %6097 to i32*
  %6100 = load i32, i32* %6099, align 4
  %6101 = sext i32 %6100 to i64
  store i64 %6101, i64* %RDX.i2151, align 8
  %6102 = load i64, i64* %RCX.i1445, align 8
  %6103 = shl nsw i64 %6101, 2
  %6104 = add i64 %6070, %6103
  %6105 = add i64 %5993, 57
  store i64 %6105, i64* %3, align 8
  %6106 = inttoptr i64 %6104 to i32*
  %6107 = load i32, i32* %6106, align 4
  %6108 = shl i64 %6102, 32
  %6109 = ashr exact i64 %6108, 32
  %6110 = sext i32 %6107 to i64
  %6111 = mul nsw i64 %6110, %6109
  %6112 = trunc i64 %6111 to i32
  %6113 = and i64 %6111, 4294967295
  store i64 %6113, i64* %RCX.i1445, align 8
  %6114 = shl i64 %6111, 32
  %6115 = ashr exact i64 %6114, 32
  %6116 = icmp ne i64 %6115, %6111
  %6117 = zext i1 %6116 to i8
  store i8 %6117, i8* %14, align 1
  %6118 = and i32 %6112, 255
  %6119 = tail call i32 @llvm.ctpop.i32(i32 %6118)
  %6120 = trunc i32 %6119 to i8
  %6121 = and i8 %6120, 1
  %6122 = xor i8 %6121, 1
  store i8 %6122, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %6123 = lshr i32 %6112, 31
  %6124 = trunc i32 %6123 to i8
  store i8 %6124, i8* %33, align 1
  store i8 %6117, i8* %39, align 1
  %6125 = load i64, i64* %RBP.i, align 8
  %6126 = add i64 %6125, -104
  %6127 = add i64 %5993, 60
  store i64 %6127, i64* %3, align 8
  %6128 = inttoptr i64 %6126 to i32*
  %6129 = load i32, i32* %6128, align 4
  %6130 = add i32 %6129, -4
  %6131 = zext i32 %6130 to i64
  store i64 %6131, i64* %RSI.i2229, align 8
  %6132 = icmp ult i32 %6129, 4
  %6133 = zext i1 %6132 to i8
  store i8 %6133, i8* %14, align 1
  %6134 = and i32 %6130, 255
  %6135 = tail call i32 @llvm.ctpop.i32(i32 %6134)
  %6136 = trunc i32 %6135 to i8
  %6137 = and i8 %6136, 1
  %6138 = xor i8 %6137, 1
  store i8 %6138, i8* %21, align 1
  %6139 = xor i32 %6130, %6129
  %6140 = lshr i32 %6139, 4
  %6141 = trunc i32 %6140 to i8
  %6142 = and i8 %6141, 1
  store i8 %6142, i8* %27, align 1
  %6143 = icmp eq i32 %6130, 0
  %6144 = zext i1 %6143 to i8
  store i8 %6144, i8* %30, align 1
  %6145 = lshr i32 %6130, 31
  %6146 = trunc i32 %6145 to i8
  store i8 %6146, i8* %33, align 1
  %6147 = lshr i32 %6129, 31
  %6148 = xor i32 %6145, %6147
  %6149 = add nuw nsw i32 %6148, %6147
  %6150 = icmp eq i32 %6149, 2
  %6151 = zext i1 %6150 to i8
  store i8 %6151, i8* %39, align 1
  %6152 = add i64 %6125, -204
  %6153 = trunc i64 %6111 to i32
  %6154 = add i64 %5993, 69
  store i64 %6154, i64* %3, align 8
  %6155 = inttoptr i64 %6152 to i32*
  store i32 %6153, i32* %6155, align 4
  %6156 = load i32, i32* %ESI.i1397, align 4
  %6157 = zext i32 %6156 to i64
  %6158 = load i64, i64* %3, align 8
  store i64 %6157, i64* %RCX.i1445, align 8
  %6159 = load i64, i64* %RBP.i, align 8
  %6160 = add i64 %6159, -204
  %6161 = add i64 %6158, 8
  store i64 %6161, i64* %3, align 8
  %6162 = inttoptr i64 %6160 to i32*
  %6163 = load i32, i32* %6162, align 4
  %6164 = zext i32 %6163 to i64
  store i64 %6164, i64* %RSI.i2229, align 8
  %6165 = add i64 %6158, 10
  store i64 %6165, i64* %3, align 8
  %6166 = trunc i32 %6156 to i5
  switch i5 %6166, label %6172 [
    i5 0, label %routine_shll__cl___esi.exit497
    i5 1, label %6167
  ]

; <label>:6167:                                   ; preds = %block_40b8cd
  %6168 = shl i32 %6163, 1
  %6169 = icmp slt i32 %6163, 0
  %6170 = icmp slt i32 %6168, 0
  %6171 = xor i1 %6169, %6170
  br label %6181

; <label>:6172:                                   ; preds = %block_40b8cd
  %6173 = and i32 %6156, 31
  %6174 = zext i32 %6173 to i64
  %6175 = add nuw nsw i64 %6174, 4294967295
  %6176 = and i64 %6175, 4294967295
  %6177 = shl i64 %6164, %6176
  %6178 = trunc i64 %6177 to i32
  %6179 = icmp slt i32 %6178, 0
  %6180 = shl i32 %6178, 1
  br label %6181

; <label>:6181:                                   ; preds = %6172, %6167
  %6182 = phi i1 [ %6169, %6167 ], [ %6179, %6172 ]
  %6183 = phi i1 [ %6171, %6167 ], [ false, %6172 ]
  %6184 = phi i32 [ %6168, %6167 ], [ %6180, %6172 ]
  %6185 = zext i32 %6184 to i64
  store i64 %6185, i64* %RSI.i2229, align 8
  %6186 = zext i1 %6182 to i8
  store i8 %6186, i8* %14, align 1
  %6187 = and i32 %6184, 254
  %6188 = tail call i32 @llvm.ctpop.i32(i32 %6187)
  %6189 = trunc i32 %6188 to i8
  %6190 = and i8 %6189, 1
  %6191 = xor i8 %6190, 1
  store i8 %6191, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %6192 = icmp eq i32 %6184, 0
  %6193 = zext i1 %6192 to i8
  store i8 %6193, i8* %30, align 1
  %6194 = lshr i32 %6184, 31
  %6195 = trunc i32 %6194 to i8
  store i8 %6195, i8* %33, align 1
  %6196 = zext i1 %6183 to i8
  store i8 %6196, i8* %39, align 1
  br label %routine_shll__cl___esi.exit497

routine_shll__cl___esi.exit497:                   ; preds = %6181, %block_40b8cd
  %6197 = phi i32 [ %6184, %6181 ], [ %6163, %block_40b8cd ]
  %6198 = add i64 %6159, -32
  %6199 = add i64 %6158, 13
  store i64 %6199, i64* %3, align 8
  %6200 = inttoptr i64 %6198 to i32*
  store i32 %6197, i32* %6200, align 4
  %6201 = load i64, i64* %3, align 8
  %6202 = add i64 %6201, 87
  store i64 %6202, i64* %3, align 8
  br label %block_.L_40b976

block_.L_40b924:                                  ; preds = %block_.L_40b8c3
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %RAX.i2123.pre-phi, align 8
  %6203 = add i64 %5302, -72
  %6204 = add i64 %5993, 13
  store i64 %6204, i64* %3, align 8
  %6205 = inttoptr i64 %6203 to i32*
  %6206 = load i32, i32* %6205, align 4
  %6207 = zext i32 %6206 to i64
  store i64 %6207, i64* %RCX.i1445, align 8
  %6208 = add i64 %5302, -4
  %6209 = add i64 %5993, 17
  store i64 %6209, i64* %3, align 8
  %6210 = inttoptr i64 %6208 to i32*
  %6211 = load i32, i32* %6210, align 4
  %6212 = sext i32 %6211 to i64
  %6213 = mul nsw i64 %6212, 384
  store i64 %6213, i64* %RDX.i2151, align 8
  %6214 = lshr i64 %6213, 63
  %6215 = add i64 %6213, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  store i64 %6215, i64* %RAX.i2123.pre-phi, align 8
  %6216 = icmp ult i64 %6215, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  %6217 = icmp ult i64 %6215, %6213
  %6218 = or i1 %6216, %6217
  %6219 = zext i1 %6218 to i8
  store i8 %6219, i8* %14, align 1
  %6220 = trunc i64 %6215 to i32
  %6221 = and i32 %6220, 248
  %6222 = tail call i32 @llvm.ctpop.i32(i32 %6221)
  %6223 = trunc i32 %6222 to i8
  %6224 = and i8 %6223, 1
  %6225 = xor i8 %6224, 1
  store i8 %6225, i8* %21, align 1
  %6226 = xor i64 %6215, ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64)
  %6227 = lshr i64 %6226, 4
  %6228 = trunc i64 %6227 to i8
  %6229 = and i8 %6228, 1
  store i8 %6229, i8* %27, align 1
  %6230 = icmp eq i64 %6215, 0
  %6231 = zext i1 %6230 to i8
  store i8 %6231, i8* %30, align 1
  %6232 = lshr i64 %6215, 63
  %6233 = trunc i64 %6232 to i8
  store i8 %6233, i8* %33, align 1
  %6234 = xor i64 %6232, lshr (i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64 63)
  %6235 = xor i64 %6232, %6214
  %6236 = add nuw nsw i64 %6234, %6235
  %6237 = icmp eq i64 %6236, 2
  %6238 = zext i1 %6237 to i8
  store i8 %6238, i8* %39, align 1
  %6239 = add i64 %5302, -108
  %6240 = add i64 %5993, 31
  store i64 %6240, i64* %3, align 8
  %6241 = inttoptr i64 %6239 to i32*
  %6242 = load i32, i32* %6241, align 4
  %6243 = sext i32 %6242 to i64
  %6244 = shl nsw i64 %6243, 6
  store i64 %6244, i64* %RDX.i2151, align 8
  %6245 = add i64 %6244, %6215
  store i64 %6245, i64* %RAX.i2123.pre-phi, align 8
  %6246 = icmp ult i64 %6245, %6215
  %6247 = icmp ult i64 %6245, %6244
  %6248 = or i1 %6246, %6247
  %6249 = zext i1 %6248 to i8
  store i8 %6249, i8* %14, align 1
  %6250 = trunc i64 %6245 to i32
  %6251 = and i32 %6250, 248
  %6252 = tail call i32 @llvm.ctpop.i32(i32 %6251)
  %6253 = trunc i32 %6252 to i8
  %6254 = and i8 %6253, 1
  %6255 = xor i8 %6254, 1
  store i8 %6255, i8* %21, align 1
  %6256 = xor i64 %6215, %6245
  %6257 = lshr i64 %6256, 4
  %6258 = trunc i64 %6257 to i8
  %6259 = and i8 %6258, 1
  store i8 %6259, i8* %27, align 1
  %6260 = icmp eq i64 %6245, 0
  %6261 = zext i1 %6260 to i8
  store i8 %6261, i8* %30, align 1
  %6262 = lshr i64 %6245, 63
  %6263 = trunc i64 %6262 to i8
  store i8 %6263, i8* %33, align 1
  %6264 = lshr i64 %6243, 57
  %6265 = and i64 %6264, 1
  %6266 = xor i64 %6262, %6232
  %6267 = xor i64 %6262, %6265
  %6268 = add nuw nsw i64 %6266, %6267
  %6269 = icmp eq i64 %6268, 2
  %6270 = zext i1 %6269 to i8
  store i8 %6270, i8* %39, align 1
  %6271 = load i64, i64* %RBP.i, align 8
  %6272 = add i64 %6271, -16
  %6273 = add i64 %5993, 42
  store i64 %6273, i64* %3, align 8
  %6274 = inttoptr i64 %6272 to i32*
  %6275 = load i32, i32* %6274, align 4
  %6276 = sext i32 %6275 to i64
  %6277 = shl nsw i64 %6276, 4
  store i64 %6277, i64* %RDX.i2151, align 8
  %6278 = add i64 %6277, %6245
  store i64 %6278, i64* %RAX.i2123.pre-phi, align 8
  %6279 = icmp ult i64 %6278, %6245
  %6280 = icmp ult i64 %6278, %6277
  %6281 = or i1 %6279, %6280
  %6282 = zext i1 %6281 to i8
  store i8 %6282, i8* %14, align 1
  %6283 = trunc i64 %6278 to i32
  %6284 = and i32 %6283, 255
  %6285 = tail call i32 @llvm.ctpop.i32(i32 %6284)
  %6286 = trunc i32 %6285 to i8
  %6287 = and i8 %6286, 1
  %6288 = xor i8 %6287, 1
  store i8 %6288, i8* %21, align 1
  %6289 = xor i64 %6277, %6245
  %6290 = xor i64 %6289, %6278
  %6291 = lshr i64 %6290, 4
  %6292 = trunc i64 %6291 to i8
  %6293 = and i8 %6292, 1
  store i8 %6293, i8* %27, align 1
  %6294 = icmp eq i64 %6278, 0
  %6295 = zext i1 %6294 to i8
  store i8 %6295, i8* %30, align 1
  %6296 = lshr i64 %6278, 63
  %6297 = trunc i64 %6296 to i8
  store i8 %6297, i8* %33, align 1
  %6298 = lshr i64 %6276, 59
  %6299 = and i64 %6298, 1
  %6300 = xor i64 %6296, %6262
  %6301 = xor i64 %6296, %6299
  %6302 = add nuw nsw i64 %6300, %6301
  %6303 = icmp eq i64 %6302, 2
  %6304 = zext i1 %6303 to i8
  store i8 %6304, i8* %39, align 1
  %6305 = add i64 %6271, -20
  %6306 = add i64 %5993, 53
  store i64 %6306, i64* %3, align 8
  %6307 = inttoptr i64 %6305 to i32*
  %6308 = load i32, i32* %6307, align 4
  %6309 = sext i32 %6308 to i64
  store i64 %6309, i64* %RDX.i2151, align 8
  %6310 = load i64, i64* %RCX.i1445, align 8
  %6311 = shl nsw i64 %6309, 2
  %6312 = add i64 %6278, %6311
  %6313 = add i64 %5993, 57
  store i64 %6313, i64* %3, align 8
  %6314 = inttoptr i64 %6312 to i32*
  %6315 = load i32, i32* %6314, align 4
  %6316 = shl i64 %6310, 32
  %6317 = ashr exact i64 %6316, 32
  %6318 = sext i32 %6315 to i64
  %6319 = mul nsw i64 %6318, %6317
  %6320 = trunc i64 %6319 to i32
  %6321 = and i64 %6319, 4294967295
  store i64 %6321, i64* %RCX.i1445, align 8
  %6322 = shl i64 %6319, 32
  %6323 = ashr exact i64 %6322, 32
  %6324 = icmp ne i64 %6323, %6319
  %6325 = zext i1 %6324 to i8
  store i8 %6325, i8* %14, align 1
  %6326 = and i32 %6320, 255
  %6327 = tail call i32 @llvm.ctpop.i32(i32 %6326)
  %6328 = trunc i32 %6327 to i8
  %6329 = and i8 %6328, 1
  %6330 = xor i8 %6329, 1
  store i8 %6330, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %6331 = lshr i32 %6320, 31
  %6332 = trunc i32 %6331 to i8
  store i8 %6332, i8* %33, align 1
  store i8 %6325, i8* %39, align 1
  %6333 = load i64, i64* %RBP.i, align 8
  %6334 = add i64 %6333, -104
  %6335 = add i64 %5993, 60
  store i64 %6335, i64* %3, align 8
  %6336 = inttoptr i64 %6334 to i32*
  %6337 = load i32, i32* %6336, align 4
  %6338 = add i32 %6337, -4
  %6339 = zext i32 %6338 to i64
  store i64 %6339, i64* %RSI.i2229, align 8
  %6340 = icmp ult i32 %6337, 4
  %6341 = zext i1 %6340 to i8
  store i8 %6341, i8* %14, align 1
  %6342 = and i32 %6338, 255
  %6343 = tail call i32 @llvm.ctpop.i32(i32 %6342)
  %6344 = trunc i32 %6343 to i8
  %6345 = and i8 %6344, 1
  %6346 = xor i8 %6345, 1
  store i8 %6346, i8* %21, align 1
  %6347 = xor i32 %6338, %6337
  %6348 = lshr i32 %6347, 4
  %6349 = trunc i32 %6348 to i8
  %6350 = and i8 %6349, 1
  store i8 %6350, i8* %27, align 1
  %6351 = icmp eq i32 %6338, 0
  %6352 = zext i1 %6351 to i8
  store i8 %6352, i8* %30, align 1
  %6353 = lshr i32 %6338, 31
  %6354 = trunc i32 %6353 to i8
  store i8 %6354, i8* %33, align 1
  %6355 = lshr i32 %6337, 31
  %6356 = xor i32 %6353, %6355
  %6357 = add nuw nsw i32 %6356, %6355
  %6358 = icmp eq i32 %6357, 2
  %6359 = zext i1 %6358 to i8
  store i8 %6359, i8* %39, align 1
  %6360 = add i64 %6333, -208
  %6361 = trunc i64 %6319 to i32
  %6362 = add i64 %5993, 69
  store i64 %6362, i64* %3, align 8
  %6363 = inttoptr i64 %6360 to i32*
  store i32 %6361, i32* %6363, align 4
  %6364 = load i32, i32* %ESI.i1397, align 4
  %6365 = zext i32 %6364 to i64
  %6366 = load i64, i64* %3, align 8
  store i64 %6365, i64* %RCX.i1445, align 8
  %6367 = load i64, i64* %RBP.i, align 8
  %6368 = add i64 %6367, -208
  %6369 = add i64 %6366, 8
  store i64 %6369, i64* %3, align 8
  %6370 = inttoptr i64 %6368 to i32*
  %6371 = load i32, i32* %6370, align 4
  %6372 = zext i32 %6371 to i64
  store i64 %6372, i64* %RSI.i2229, align 8
  %6373 = add i64 %6366, 10
  store i64 %6373, i64* %3, align 8
  %6374 = trunc i32 %6364 to i5
  switch i5 %6374, label %6380 [
    i5 0, label %routine_shll__cl___esi.exit
    i5 1, label %6375
  ]

; <label>:6375:                                   ; preds = %block_.L_40b924
  %6376 = shl i32 %6371, 1
  %6377 = icmp slt i32 %6371, 0
  %6378 = icmp slt i32 %6376, 0
  %6379 = xor i1 %6377, %6378
  br label %6389

; <label>:6380:                                   ; preds = %block_.L_40b924
  %6381 = and i32 %6364, 31
  %6382 = zext i32 %6381 to i64
  %6383 = add nuw nsw i64 %6382, 4294967295
  %6384 = and i64 %6383, 4294967295
  %6385 = shl i64 %6372, %6384
  %6386 = trunc i64 %6385 to i32
  %6387 = icmp slt i32 %6386, 0
  %6388 = shl i32 %6386, 1
  br label %6389

; <label>:6389:                                   ; preds = %6380, %6375
  %6390 = phi i1 [ %6377, %6375 ], [ %6387, %6380 ]
  %6391 = phi i1 [ %6379, %6375 ], [ false, %6380 ]
  %6392 = phi i32 [ %6376, %6375 ], [ %6388, %6380 ]
  %6393 = zext i32 %6392 to i64
  store i64 %6393, i64* %RSI.i2229, align 8
  %6394 = zext i1 %6390 to i8
  store i8 %6394, i8* %14, align 1
  %6395 = and i32 %6392, 254
  %6396 = tail call i32 @llvm.ctpop.i32(i32 %6395)
  %6397 = trunc i32 %6396 to i8
  %6398 = and i8 %6397, 1
  %6399 = xor i8 %6398, 1
  store i8 %6399, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %6400 = icmp eq i32 %6392, 0
  %6401 = zext i1 %6400 to i8
  store i8 %6401, i8* %30, align 1
  %6402 = lshr i32 %6392, 31
  %6403 = trunc i32 %6402 to i8
  store i8 %6403, i8* %33, align 1
  %6404 = zext i1 %6391 to i8
  store i8 %6404, i8* %39, align 1
  br label %routine_shll__cl___esi.exit

routine_shll__cl___esi.exit:                      ; preds = %6389, %block_.L_40b924
  %6405 = phi i32 [ %6392, %6389 ], [ %6371, %block_.L_40b924 ]
  %6406 = add i64 %6367, -32
  %6407 = add i64 %6366, 13
  store i64 %6407, i64* %3, align 8
  %6408 = inttoptr i64 %6406 to i32*
  store i32 %6405, i32* %6408, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_40b976

block_.L_40b976:                                  ; preds = %routine_shll__cl___esi.exit, %routine_shll__cl___esi.exit497
  %6409 = phi i64 [ %.pre152, %routine_shll__cl___esi.exit ], [ %6202, %routine_shll__cl___esi.exit497 ]
  %6410 = add i64 %6409, 5
  store i64 %6410, i64* %3, align 8
  br label %block_.L_40b97b

block_.L_40b97b:                                  ; preds = %block_.L_40b976, %block_.L_40b8be
  %storemerge65 = phi i64 [ %5992, %block_.L_40b8be ], [ %6410, %block_.L_40b976 ]
  %6411 = add i64 %storemerge65, 5
  store i64 %6411, i64* %3, align 8
  br label %block_.L_40b980

block_.L_40b980:                                  ; preds = %block_.L_40b97b, %block_40b7ca
  %storemerge61 = phi i64 [ %5327, %block_40b7ca ], [ %6411, %block_.L_40b97b ]
  %6412 = add i64 %storemerge61, 5
  store i64 %6412, i64* %3, align 8
  %.pre154 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40b985

block_.L_40b985:                                  ; preds = %block_.L_40b980, %block_.L_40b718
  %6413 = phi i64 [ %5032, %block_.L_40b718 ], [ %6412, %block_.L_40b980 ]
  %6414 = phi i64 [ %5018, %block_.L_40b718 ], [ %.pre154, %block_.L_40b980 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.17, %block_.L_40b718 ], [ %call2_40b7b5, %block_.L_40b980 ]
  %6415 = add i64 %6414, -140
  %6416 = add i64 %6413, 7
  store i64 %6416, i64* %3, align 8
  %6417 = inttoptr i64 %6415 to i32*
  %6418 = load i32, i32* %6417, align 4
  store i8 0, i8* %14, align 1
  %6419 = and i32 %6418, 255
  %6420 = tail call i32 @llvm.ctpop.i32(i32 %6419)
  %6421 = trunc i32 %6420 to i8
  %6422 = and i8 %6421, 1
  %6423 = xor i8 %6422, 1
  store i8 %6423, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %6424 = icmp eq i32 %6418, 0
  %6425 = zext i1 %6424 to i8
  store i8 %6425, i8* %30, align 1
  %6426 = lshr i32 %6418, 31
  %6427 = trunc i32 %6426 to i8
  store i8 %6427, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v177 = select i1 %6424, i64 13, i64 49
  %6428 = add i64 %6413, %.v177
  store i64 %6428, i64* %3, align 8
  br i1 %6424, label %block_40b992, label %block_.L_40b9b6

block_40b992:                                     ; preds = %block_.L_40b985
  %6429 = add i64 %6414, -32
  %6430 = add i64 %6428, 3
  store i64 %6430, i64* %3, align 8
  %6431 = inttoptr i64 %6429 to i32*
  %6432 = load i32, i32* %6431, align 4
  %6433 = zext i32 %6432 to i64
  store i64 %6433, i64* %RAX.i2123.pre-phi, align 8
  %6434 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6435 = add i64 %6434, 13112
  store i64 %6435, i64* %RCX.i1445, align 8
  %6436 = icmp ugt i64 %6434, -13113
  %6437 = zext i1 %6436 to i8
  store i8 %6437, i8* %14, align 1
  %6438 = trunc i64 %6435 to i32
  %6439 = and i32 %6438, 255
  %6440 = tail call i32 @llvm.ctpop.i32(i32 %6439)
  %6441 = trunc i32 %6440 to i8
  %6442 = and i8 %6441, 1
  %6443 = xor i8 %6442, 1
  store i8 %6443, i8* %21, align 1
  %6444 = xor i64 %6434, 16
  %6445 = xor i64 %6444, %6435
  %6446 = lshr i64 %6445, 4
  %6447 = trunc i64 %6446 to i8
  %6448 = and i8 %6447, 1
  store i8 %6448, i8* %27, align 1
  %6449 = icmp eq i64 %6435, 0
  %6450 = zext i1 %6449 to i8
  store i8 %6450, i8* %30, align 1
  %6451 = lshr i64 %6435, 63
  %6452 = trunc i64 %6451 to i8
  store i8 %6452, i8* %33, align 1
  %6453 = lshr i64 %6434, 63
  %6454 = xor i64 %6451, %6453
  %6455 = add nuw nsw i64 %6454, %6451
  %6456 = icmp eq i64 %6455, 2
  %6457 = zext i1 %6456 to i8
  store i8 %6457, i8* %39, align 1
  %6458 = add i64 %6414, -16
  %6459 = add i64 %6428, 22
  store i64 %6459, i64* %3, align 8
  %6460 = inttoptr i64 %6458 to i32*
  %6461 = load i32, i32* %6460, align 4
  %6462 = sext i32 %6461 to i64
  %6463 = shl nsw i64 %6462, 6
  store i64 %6463, i64* %RDX.i2151, align 8
  %6464 = add i64 %6463, %6435
  store i64 %6464, i64* %RCX.i1445, align 8
  %6465 = icmp ult i64 %6464, %6435
  %6466 = icmp ult i64 %6464, %6463
  %6467 = or i1 %6465, %6466
  %6468 = zext i1 %6467 to i8
  store i8 %6468, i8* %14, align 1
  %6469 = trunc i64 %6464 to i32
  %6470 = and i32 %6469, 255
  %6471 = tail call i32 @llvm.ctpop.i32(i32 %6470)
  %6472 = trunc i32 %6471 to i8
  %6473 = and i8 %6472, 1
  %6474 = xor i8 %6473, 1
  store i8 %6474, i8* %21, align 1
  %6475 = xor i64 %6435, %6464
  %6476 = lshr i64 %6475, 4
  %6477 = trunc i64 %6476 to i8
  %6478 = and i8 %6477, 1
  store i8 %6478, i8* %27, align 1
  %6479 = icmp eq i64 %6464, 0
  %6480 = zext i1 %6479 to i8
  store i8 %6480, i8* %30, align 1
  %6481 = lshr i64 %6464, 63
  %6482 = trunc i64 %6481 to i8
  store i8 %6482, i8* %33, align 1
  %6483 = lshr i64 %6462, 57
  %6484 = and i64 %6483, 1
  %6485 = xor i64 %6481, %6451
  %6486 = xor i64 %6481, %6484
  %6487 = add nuw nsw i64 %6485, %6486
  %6488 = icmp eq i64 %6487, 2
  %6489 = zext i1 %6488 to i8
  store i8 %6489, i8* %39, align 1
  %6490 = load i64, i64* %RBP.i, align 8
  %6491 = add i64 %6490, -20
  %6492 = add i64 %6428, 33
  store i64 %6492, i64* %3, align 8
  %6493 = inttoptr i64 %6491 to i32*
  %6494 = load i32, i32* %6493, align 4
  %6495 = sext i32 %6494 to i64
  store i64 %6495, i64* %RDX.i2151, align 8
  %6496 = shl nsw i64 %6495, 2
  %6497 = add i64 %6496, %6464
  %6498 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %6499 = add i64 %6428, 36
  store i64 %6499, i64* %3, align 8
  %6500 = inttoptr i64 %6497 to i32*
  store i32 %6498, i32* %6500, align 4
  %.pre155 = load i64, i64* %3, align 8
  %.pre156 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40b9b6

block_.L_40b9b6:                                  ; preds = %block_.L_40b985, %block_40b992
  %6501 = phi i64 [ %.pre156, %block_40b992 ], [ %6414, %block_.L_40b985 ]
  %6502 = phi i64 [ %.pre155, %block_40b992 ], [ %6428, %block_.L_40b985 ]
  %6503 = add i64 %6501, -68
  %6504 = add i64 %6502, 8
  store i64 %6504, i64* %3, align 8
  %6505 = inttoptr i64 %6503 to i32*
  %6506 = load i32, i32* %6505, align 4
  %6507 = add i32 %6506, 1
  %6508 = zext i32 %6507 to i64
  store i64 %6508, i64* %RAX.i2123.pre-phi, align 8
  %6509 = icmp eq i32 %6506, -1
  %6510 = icmp eq i32 %6507, 0
  %6511 = or i1 %6509, %6510
  %6512 = zext i1 %6511 to i8
  store i8 %6512, i8* %14, align 1
  %6513 = and i32 %6507, 255
  %6514 = tail call i32 @llvm.ctpop.i32(i32 %6513)
  %6515 = trunc i32 %6514 to i8
  %6516 = and i8 %6515, 1
  %6517 = xor i8 %6516, 1
  store i8 %6517, i8* %21, align 1
  %6518 = xor i32 %6507, %6506
  %6519 = lshr i32 %6518, 4
  %6520 = trunc i32 %6519 to i8
  %6521 = and i8 %6520, 1
  store i8 %6521, i8* %27, align 1
  %6522 = zext i1 %6510 to i8
  store i8 %6522, i8* %30, align 1
  %6523 = lshr i32 %6507, 31
  %6524 = trunc i32 %6523 to i8
  store i8 %6524, i8* %33, align 1
  %6525 = lshr i32 %6506, 31
  %6526 = xor i32 %6523, %6525
  %6527 = add nuw nsw i32 %6526, %6523
  %6528 = icmp eq i32 %6527, 2
  %6529 = zext i1 %6528 to i8
  store i8 %6529, i8* %39, align 1
  %6530 = add i64 %6502, 14
  store i64 %6530, i64* %3, align 8
  store i32 %6507, i32* %6505, align 4
  %6531 = load i64, i64* %3, align 8
  %6532 = add i64 %6531, -1122
  store i64 %6532, i64* %3, align 8
  br label %block_.L_40b562

block_.L_40b9c9:                                  ; preds = %block_.L_40b562
  %6533 = add i64 %4125, -128
  %6534 = add i64 %4154, 4
  store i64 %6534, i64* %3, align 8
  %6535 = inttoptr i64 %6533 to i64*
  %6536 = load i64, i64* %6535, align 8
  store i64 %6536, i64* %RAX.i2123.pre-phi, align 8
  %6537 = add i64 %4125, -76
  %6538 = add i64 %4154, 8
  store i64 %6538, i64* %3, align 8
  %6539 = inttoptr i64 %6537 to i32*
  %6540 = load i32, i32* %6539, align 4
  %6541 = sext i32 %6540 to i64
  store i64 %6541, i64* %RCX.i1445, align 8
  %6542 = shl nsw i64 %6541, 2
  %6543 = add i64 %6542, %6536
  %6544 = add i64 %4154, 15
  store i64 %6544, i64* %3, align 8
  %6545 = inttoptr i64 %6543 to i32*
  store i32 0, i32* %6545, align 4
  %6546 = load i64, i64* %RBP.i, align 8
  %6547 = add i64 %6546, -140
  %6548 = load i64, i64* %3, align 8
  %6549 = add i64 %6548, 7
  store i64 %6549, i64* %3, align 8
  %6550 = inttoptr i64 %6547 to i32*
  %6551 = load i32, i32* %6550, align 4
  store i8 0, i8* %14, align 1
  %6552 = and i32 %6551, 255
  %6553 = tail call i32 @llvm.ctpop.i32(i32 %6552)
  %6554 = trunc i32 %6553 to i8
  %6555 = and i8 %6554, 1
  %6556 = xor i8 %6555, 1
  store i8 %6556, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %6557 = icmp eq i32 %6551, 0
  %6558 = zext i1 %6557 to i8
  store i8 %6558, i8* %30, align 1
  %6559 = lshr i32 %6551, 31
  %6560 = trunc i32 %6559 to i8
  store i8 %6560, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v166 = select i1 %6557, i64 13, i64 309
  %6561 = add i64 %6548, %.v166
  store i64 %6561, i64* %3, align 8
  br i1 %6557, label %block_40b9e5, label %block_.L_40bb0d

block_40b9e5:                                     ; preds = %block_.L_40b9c9
  %6562 = add i64 %6546, -20
  %6563 = add i64 %6561, 7
  store i64 %6563, i64* %3, align 8
  %6564 = inttoptr i64 %6562 to i32*
  store i32 0, i32* %6564, align 4
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_40b9ec

block_.L_40b9ec:                                  ; preds = %block_.L_40baf5, %block_40b9e5
  %6565 = phi i64 [ %7232, %block_.L_40baf5 ], [ %.pre143, %block_40b9e5 ]
  %6566 = load i64, i64* %RBP.i, align 8
  %6567 = add i64 %6566, -20
  %6568 = add i64 %6565, 4
  store i64 %6568, i64* %3, align 8
  %6569 = inttoptr i64 %6567 to i32*
  %6570 = load i32, i32* %6569, align 4
  %6571 = add i32 %6570, -4
  %6572 = icmp ult i32 %6570, 4
  %6573 = zext i1 %6572 to i8
  store i8 %6573, i8* %14, align 1
  %6574 = and i32 %6571, 255
  %6575 = tail call i32 @llvm.ctpop.i32(i32 %6574)
  %6576 = trunc i32 %6575 to i8
  %6577 = and i8 %6576, 1
  %6578 = xor i8 %6577, 1
  store i8 %6578, i8* %21, align 1
  %6579 = xor i32 %6571, %6570
  %6580 = lshr i32 %6579, 4
  %6581 = trunc i32 %6580 to i8
  %6582 = and i8 %6581, 1
  store i8 %6582, i8* %27, align 1
  %6583 = icmp eq i32 %6571, 0
  %6584 = zext i1 %6583 to i8
  store i8 %6584, i8* %30, align 1
  %6585 = lshr i32 %6571, 31
  %6586 = trunc i32 %6585 to i8
  store i8 %6586, i8* %33, align 1
  %6587 = lshr i32 %6570, 31
  %6588 = xor i32 %6585, %6587
  %6589 = add nuw nsw i32 %6588, %6587
  %6590 = icmp eq i32 %6589, 2
  %6591 = zext i1 %6590 to i8
  store i8 %6591, i8* %39, align 1
  %6592 = icmp ne i8 %6586, 0
  %6593 = xor i1 %6592, %6590
  %.v171 = select i1 %6593, i64 10, i64 284
  %6594 = add i64 %6565, %.v171
  store i64 %6594, i64* %3, align 8
  br i1 %6593, label %block_40b9f6, label %block_.L_40bb08

block_40b9f6:                                     ; preds = %block_.L_40b9ec
  %6595 = add i64 %6566, -16
  %6596 = add i64 %6594, 7
  store i64 %6596, i64* %3, align 8
  %6597 = inttoptr i64 %6595 to i32*
  store i32 0, i32* %6597, align 4
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_40b9fd

block_.L_40b9fd:                                  ; preds = %block_40ba07, %block_40b9f6
  %6598 = phi i64 [ %6735, %block_40ba07 ], [ %.pre144, %block_40b9f6 ]
  %6599 = load i64, i64* %RBP.i, align 8
  %6600 = add i64 %6599, -16
  %6601 = add i64 %6598, 4
  store i64 %6601, i64* %3, align 8
  %6602 = inttoptr i64 %6600 to i32*
  %6603 = load i32, i32* %6602, align 4
  %6604 = add i32 %6603, -4
  %6605 = icmp ult i32 %6603, 4
  %6606 = zext i1 %6605 to i8
  store i8 %6606, i8* %14, align 1
  %6607 = and i32 %6604, 255
  %6608 = tail call i32 @llvm.ctpop.i32(i32 %6607)
  %6609 = trunc i32 %6608 to i8
  %6610 = and i8 %6609, 1
  %6611 = xor i8 %6610, 1
  store i8 %6611, i8* %21, align 1
  %6612 = xor i32 %6604, %6603
  %6613 = lshr i32 %6612, 4
  %6614 = trunc i32 %6613 to i8
  %6615 = and i8 %6614, 1
  store i8 %6615, i8* %27, align 1
  %6616 = icmp eq i32 %6604, 0
  %6617 = zext i1 %6616 to i8
  store i8 %6617, i8* %30, align 1
  %6618 = lshr i32 %6604, 31
  %6619 = trunc i32 %6618 to i8
  store i8 %6619, i8* %33, align 1
  %6620 = lshr i32 %6603, 31
  %6621 = xor i32 %6618, %6620
  %6622 = add nuw nsw i32 %6621, %6620
  %6623 = icmp eq i32 %6622, 2
  %6624 = zext i1 %6623 to i8
  store i8 %6624, i8* %39, align 1
  %6625 = icmp ne i8 %6619, 0
  %6626 = xor i1 %6625, %6623
  %.v172 = select i1 %6626, i64 10, i64 64
  %6627 = add i64 %6598, %.v172
  store i64 %6627, i64* %3, align 8
  br i1 %6626, label %block_40ba07, label %block_.L_40ba3d

block_40ba07:                                     ; preds = %block_.L_40b9fd
  %6628 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %6629 = add i64 %6628, 13112
  store i64 %6629, i64* %RAX.i2123.pre-phi, align 8
  %6630 = icmp ugt i64 %6628, -13113
  %6631 = zext i1 %6630 to i8
  store i8 %6631, i8* %14, align 1
  %6632 = trunc i64 %6629 to i32
  %6633 = and i32 %6632, 255
  %6634 = tail call i32 @llvm.ctpop.i32(i32 %6633)
  %6635 = trunc i32 %6634 to i8
  %6636 = and i8 %6635, 1
  %6637 = xor i8 %6636, 1
  store i8 %6637, i8* %21, align 1
  %6638 = xor i64 %6628, 16
  %6639 = xor i64 %6638, %6629
  %6640 = lshr i64 %6639, 4
  %6641 = trunc i64 %6640 to i8
  %6642 = and i8 %6641, 1
  store i8 %6642, i8* %27, align 1
  %6643 = icmp eq i64 %6629, 0
  %6644 = zext i1 %6643 to i8
  store i8 %6644, i8* %30, align 1
  %6645 = lshr i64 %6629, 63
  %6646 = trunc i64 %6645 to i8
  store i8 %6646, i8* %33, align 1
  %6647 = lshr i64 %6628, 63
  %6648 = xor i64 %6645, %6647
  %6649 = add nuw nsw i64 %6648, %6645
  %6650 = icmp eq i64 %6649, 2
  %6651 = zext i1 %6650 to i8
  store i8 %6651, i8* %39, align 1
  %6652 = add i64 %6627, 18
  store i64 %6652, i64* %3, align 8
  %6653 = load i32, i32* %6602, align 4
  %6654 = sext i32 %6653 to i64
  %6655 = shl nsw i64 %6654, 6
  store i64 %6655, i64* %RCX.i1445, align 8
  %6656 = add i64 %6655, %6629
  store i64 %6656, i64* %RAX.i2123.pre-phi, align 8
  %6657 = icmp ult i64 %6656, %6629
  %6658 = icmp ult i64 %6656, %6655
  %6659 = or i1 %6657, %6658
  %6660 = zext i1 %6659 to i8
  store i8 %6660, i8* %14, align 1
  %6661 = trunc i64 %6656 to i32
  %6662 = and i32 %6661, 255
  %6663 = tail call i32 @llvm.ctpop.i32(i32 %6662)
  %6664 = trunc i32 %6663 to i8
  %6665 = and i8 %6664, 1
  %6666 = xor i8 %6665, 1
  store i8 %6666, i8* %21, align 1
  %6667 = xor i64 %6629, %6656
  %6668 = lshr i64 %6667, 4
  %6669 = trunc i64 %6668 to i8
  %6670 = and i8 %6669, 1
  store i8 %6670, i8* %27, align 1
  %6671 = icmp eq i64 %6656, 0
  %6672 = zext i1 %6671 to i8
  store i8 %6672, i8* %30, align 1
  %6673 = lshr i64 %6656, 63
  %6674 = trunc i64 %6673 to i8
  store i8 %6674, i8* %33, align 1
  %6675 = lshr i64 %6654, 57
  %6676 = and i64 %6675, 1
  %6677 = xor i64 %6673, %6645
  %6678 = xor i64 %6673, %6676
  %6679 = add nuw nsw i64 %6677, %6678
  %6680 = icmp eq i64 %6679, 2
  %6681 = zext i1 %6680 to i8
  store i8 %6681, i8* %39, align 1
  %6682 = add i64 %6599, -20
  %6683 = add i64 %6627, 29
  store i64 %6683, i64* %3, align 8
  %6684 = inttoptr i64 %6682 to i32*
  %6685 = load i32, i32* %6684, align 4
  %6686 = sext i32 %6685 to i64
  store i64 %6686, i64* %RCX.i1445, align 8
  %6687 = shl nsw i64 %6686, 2
  %6688 = add i64 %6687, %6656
  %6689 = add i64 %6627, 32
  store i64 %6689, i64* %3, align 8
  %6690 = inttoptr i64 %6688 to i32*
  %6691 = load i32, i32* %6690, align 4
  %6692 = zext i32 %6691 to i64
  store i64 %6692, i64* %RDX.i2151, align 8
  %6693 = load i64, i64* %RBP.i, align 8
  %6694 = add i64 %6693, -16
  %6695 = add i64 %6627, 36
  store i64 %6695, i64* %3, align 8
  %6696 = inttoptr i64 %6694 to i32*
  %6697 = load i32, i32* %6696, align 4
  %6698 = sext i32 %6697 to i64
  store i64 %6698, i64* %RAX.i2123.pre-phi, align 8
  %6699 = shl nsw i64 %6698, 2
  %6700 = add i64 %6693, -48
  %6701 = add i64 %6700, %6699
  %6702 = add i64 %6627, 40
  store i64 %6702, i64* %3, align 8
  %6703 = inttoptr i64 %6701 to i32*
  store i32 %6691, i32* %6703, align 4
  %6704 = load i64, i64* %RBP.i, align 8
  %6705 = add i64 %6704, -16
  %6706 = load i64, i64* %3, align 8
  %6707 = add i64 %6706, 3
  store i64 %6707, i64* %3, align 8
  %6708 = inttoptr i64 %6705 to i32*
  %6709 = load i32, i32* %6708, align 4
  %6710 = add i32 %6709, 1
  %6711 = zext i32 %6710 to i64
  store i64 %6711, i64* %RAX.i2123.pre-phi, align 8
  %6712 = icmp eq i32 %6709, -1
  %6713 = icmp eq i32 %6710, 0
  %6714 = or i1 %6712, %6713
  %6715 = zext i1 %6714 to i8
  store i8 %6715, i8* %14, align 1
  %6716 = and i32 %6710, 255
  %6717 = tail call i32 @llvm.ctpop.i32(i32 %6716)
  %6718 = trunc i32 %6717 to i8
  %6719 = and i8 %6718, 1
  %6720 = xor i8 %6719, 1
  store i8 %6720, i8* %21, align 1
  %6721 = xor i32 %6710, %6709
  %6722 = lshr i32 %6721, 4
  %6723 = trunc i32 %6722 to i8
  %6724 = and i8 %6723, 1
  store i8 %6724, i8* %27, align 1
  %6725 = zext i1 %6713 to i8
  store i8 %6725, i8* %30, align 1
  %6726 = lshr i32 %6710, 31
  %6727 = trunc i32 %6726 to i8
  store i8 %6727, i8* %33, align 1
  %6728 = lshr i32 %6709, 31
  %6729 = xor i32 %6726, %6728
  %6730 = add nuw nsw i32 %6729, %6726
  %6731 = icmp eq i32 %6730, 2
  %6732 = zext i1 %6731 to i8
  store i8 %6732, i8* %39, align 1
  %6733 = add i64 %6706, 9
  store i64 %6733, i64* %3, align 8
  store i32 %6710, i32* %6708, align 4
  %6734 = load i64, i64* %3, align 8
  %6735 = add i64 %6734, -59
  store i64 %6735, i64* %3, align 8
  br label %block_.L_40b9fd

block_.L_40ba3d:                                  ; preds = %block_.L_40b9fd
  %6736 = add i64 %6599, -48
  %6737 = add i64 %6627, 3
  store i64 %6737, i64* %3, align 8
  %6738 = inttoptr i64 %6736 to i32*
  %6739 = load i32, i32* %6738, align 4
  %6740 = zext i32 %6739 to i64
  store i64 %6740, i64* %RAX.i2123.pre-phi, align 8
  %6741 = add i64 %6599, -40
  %6742 = add i64 %6627, 6
  store i64 %6742, i64* %3, align 8
  %6743 = inttoptr i64 %6741 to i32*
  %6744 = load i32, i32* %6743, align 4
  %6745 = add i32 %6744, %6739
  %6746 = zext i32 %6745 to i64
  store i64 %6746, i64* %RAX.i2123.pre-phi, align 8
  %6747 = icmp ult i32 %6745, %6739
  %6748 = icmp ult i32 %6745, %6744
  %6749 = or i1 %6747, %6748
  %6750 = zext i1 %6749 to i8
  store i8 %6750, i8* %14, align 1
  %6751 = and i32 %6745, 255
  %6752 = tail call i32 @llvm.ctpop.i32(i32 %6751)
  %6753 = trunc i32 %6752 to i8
  %6754 = and i8 %6753, 1
  %6755 = xor i8 %6754, 1
  store i8 %6755, i8* %21, align 1
  %6756 = xor i32 %6744, %6739
  %6757 = xor i32 %6756, %6745
  %6758 = lshr i32 %6757, 4
  %6759 = trunc i32 %6758 to i8
  %6760 = and i8 %6759, 1
  store i8 %6760, i8* %27, align 1
  %6761 = icmp eq i32 %6745, 0
  %6762 = zext i1 %6761 to i8
  store i8 %6762, i8* %30, align 1
  %6763 = lshr i32 %6745, 31
  %6764 = trunc i32 %6763 to i8
  store i8 %6764, i8* %33, align 1
  %6765 = lshr i32 %6739, 31
  %6766 = lshr i32 %6744, 31
  %6767 = xor i32 %6763, %6765
  %6768 = xor i32 %6763, %6766
  %6769 = add nuw nsw i32 %6767, %6768
  %6770 = icmp eq i32 %6769, 2
  %6771 = zext i1 %6770 to i8
  store i8 %6771, i8* %39, align 1
  %6772 = add i64 %6599, -64
  %6773 = add i64 %6627, 9
  store i64 %6773, i64* %3, align 8
  %6774 = inttoptr i64 %6772 to i32*
  store i32 %6745, i32* %6774, align 4
  %6775 = load i64, i64* %RBP.i, align 8
  %6776 = add i64 %6775, -48
  %6777 = load i64, i64* %3, align 8
  %6778 = add i64 %6777, 3
  store i64 %6778, i64* %3, align 8
  %6779 = inttoptr i64 %6776 to i32*
  %6780 = load i32, i32* %6779, align 4
  %6781 = zext i32 %6780 to i64
  store i64 %6781, i64* %RAX.i2123.pre-phi, align 8
  %6782 = add i64 %6775, -40
  %6783 = add i64 %6777, 6
  store i64 %6783, i64* %3, align 8
  %6784 = inttoptr i64 %6782 to i32*
  %6785 = load i32, i32* %6784, align 4
  %6786 = sub i32 %6780, %6785
  %6787 = zext i32 %6786 to i64
  store i64 %6787, i64* %RAX.i2123.pre-phi, align 8
  %6788 = icmp ult i32 %6780, %6785
  %6789 = zext i1 %6788 to i8
  store i8 %6789, i8* %14, align 1
  %6790 = and i32 %6786, 255
  %6791 = tail call i32 @llvm.ctpop.i32(i32 %6790)
  %6792 = trunc i32 %6791 to i8
  %6793 = and i8 %6792, 1
  %6794 = xor i8 %6793, 1
  store i8 %6794, i8* %21, align 1
  %6795 = xor i32 %6785, %6780
  %6796 = xor i32 %6795, %6786
  %6797 = lshr i32 %6796, 4
  %6798 = trunc i32 %6797 to i8
  %6799 = and i8 %6798, 1
  store i8 %6799, i8* %27, align 1
  %6800 = icmp eq i32 %6786, 0
  %6801 = zext i1 %6800 to i8
  store i8 %6801, i8* %30, align 1
  %6802 = lshr i32 %6786, 31
  %6803 = trunc i32 %6802 to i8
  store i8 %6803, i8* %33, align 1
  %6804 = lshr i32 %6780, 31
  %6805 = lshr i32 %6785, 31
  %6806 = xor i32 %6805, %6804
  %6807 = xor i32 %6802, %6804
  %6808 = add nuw nsw i32 %6807, %6806
  %6809 = icmp eq i32 %6808, 2
  %6810 = zext i1 %6809 to i8
  store i8 %6810, i8* %39, align 1
  %6811 = add i64 %6775, -60
  %6812 = add i64 %6777, 9
  store i64 %6812, i64* %3, align 8
  %6813 = inttoptr i64 %6811 to i32*
  store i32 %6786, i32* %6813, align 4
  %6814 = load i64, i64* %RBP.i, align 8
  %6815 = add i64 %6814, -44
  %6816 = load i64, i64* %3, align 8
  %6817 = add i64 %6816, 3
  store i64 %6817, i64* %3, align 8
  %6818 = inttoptr i64 %6815 to i32*
  %6819 = load i32, i32* %6818, align 4
  %6820 = zext i32 %6819 to i64
  %6821 = shl nuw i64 %6820, 32
  %6822 = ashr i64 %6821, 33
  %6823 = trunc i32 %6819 to i8
  %6824 = and i8 %6823, 1
  %6825 = trunc i64 %6822 to i32
  %6826 = and i64 %6822, 4294967295
  store i64 %6826, i64* %RAX.i2123.pre-phi, align 8
  store i8 %6824, i8* %14, align 1
  %6827 = and i32 %6825, 255
  %6828 = tail call i32 @llvm.ctpop.i32(i32 %6827)
  %6829 = trunc i32 %6828 to i8
  %6830 = and i8 %6829, 1
  %6831 = xor i8 %6830, 1
  store i8 %6831, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %6832 = icmp eq i32 %6825, 0
  %6833 = zext i1 %6832 to i8
  store i8 %6833, i8* %30, align 1
  %6834 = lshr i64 %6822, 31
  %6835 = trunc i64 %6834 to i8
  %6836 = and i8 %6835, 1
  store i8 %6836, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %6837 = add i64 %6814, -36
  %6838 = add i64 %6816, 8
  store i64 %6838, i64* %3, align 8
  %6839 = trunc i64 %6822 to i32
  %6840 = inttoptr i64 %6837 to i32*
  %6841 = load i32, i32* %6840, align 4
  %6842 = sub i32 %6839, %6841
  %6843 = zext i32 %6842 to i64
  store i64 %6843, i64* %RAX.i2123.pre-phi, align 8
  %6844 = icmp ult i32 %6839, %6841
  %6845 = zext i1 %6844 to i8
  store i8 %6845, i8* %14, align 1
  %6846 = and i32 %6842, 255
  %6847 = tail call i32 @llvm.ctpop.i32(i32 %6846)
  %6848 = trunc i32 %6847 to i8
  %6849 = and i8 %6848, 1
  %6850 = xor i8 %6849, 1
  store i8 %6850, i8* %21, align 1
  %6851 = xor i32 %6841, %6839
  %6852 = xor i32 %6851, %6842
  %6853 = lshr i32 %6852, 4
  %6854 = trunc i32 %6853 to i8
  %6855 = and i8 %6854, 1
  store i8 %6855, i8* %27, align 1
  %6856 = icmp eq i32 %6842, 0
  %6857 = zext i1 %6856 to i8
  store i8 %6857, i8* %30, align 1
  %6858 = lshr i32 %6842, 31
  %6859 = trunc i32 %6858 to i8
  store i8 %6859, i8* %33, align 1
  %6860 = lshr i64 %6822, 31
  %6861 = trunc i64 %6860 to i32
  %6862 = and i32 %6861, 1
  %6863 = lshr i32 %6841, 31
  %6864 = xor i32 %6863, %6862
  %6865 = xor i32 %6858, %6862
  %6866 = add nuw nsw i32 %6865, %6864
  %6867 = icmp eq i32 %6866, 2
  %6868 = zext i1 %6867 to i8
  store i8 %6868, i8* %39, align 1
  %6869 = add i64 %6814, -56
  %6870 = add i64 %6816, 11
  store i64 %6870, i64* %3, align 8
  %6871 = inttoptr i64 %6869 to i32*
  store i32 %6842, i32* %6871, align 4
  %6872 = load i64, i64* %RBP.i, align 8
  %6873 = add i64 %6872, -44
  %6874 = load i64, i64* %3, align 8
  %6875 = add i64 %6874, 3
  store i64 %6875, i64* %3, align 8
  %6876 = inttoptr i64 %6873 to i32*
  %6877 = load i32, i32* %6876, align 4
  %6878 = zext i32 %6877 to i64
  store i64 %6878, i64* %RAX.i2123.pre-phi, align 8
  %6879 = add i64 %6872, -36
  %6880 = add i64 %6874, 6
  store i64 %6880, i64* %3, align 8
  %6881 = inttoptr i64 %6879 to i32*
  %6882 = load i32, i32* %6881, align 4
  %6883 = zext i32 %6882 to i64
  %6884 = shl nuw i64 %6883, 32
  %6885 = ashr i64 %6884, 33
  %6886 = and i64 %6885, 4294967295
  store i64 %6886, i64* %RCX.i1445, align 8
  %6887 = trunc i64 %6885 to i32
  %6888 = add i32 %6887, %6877
  %6889 = zext i32 %6888 to i64
  store i64 %6889, i64* %RAX.i2123.pre-phi, align 8
  %6890 = icmp ult i32 %6888, %6877
  %6891 = icmp ult i32 %6888, %6887
  %6892 = or i1 %6890, %6891
  %6893 = zext i1 %6892 to i8
  store i8 %6893, i8* %14, align 1
  %6894 = and i32 %6888, 255
  %6895 = tail call i32 @llvm.ctpop.i32(i32 %6894)
  %6896 = trunc i32 %6895 to i8
  %6897 = and i8 %6896, 1
  %6898 = xor i8 %6897, 1
  store i8 %6898, i8* %21, align 1
  %6899 = xor i64 %6885, %6878
  %6900 = trunc i64 %6899 to i32
  %6901 = xor i32 %6900, %6888
  %6902 = lshr i32 %6901, 4
  %6903 = trunc i32 %6902 to i8
  %6904 = and i8 %6903, 1
  store i8 %6904, i8* %27, align 1
  %6905 = icmp eq i32 %6888, 0
  %6906 = zext i1 %6905 to i8
  store i8 %6906, i8* %30, align 1
  %6907 = lshr i32 %6888, 31
  %6908 = trunc i32 %6907 to i8
  store i8 %6908, i8* %33, align 1
  %6909 = lshr i32 %6877, 31
  %6910 = lshr i64 %6885, 31
  %6911 = trunc i64 %6910 to i32
  %6912 = and i32 %6911, 1
  %6913 = xor i32 %6907, %6909
  %6914 = xor i32 %6907, %6912
  %6915 = add nuw nsw i32 %6913, %6914
  %6916 = icmp eq i32 %6915, 2
  %6917 = zext i1 %6916 to i8
  store i8 %6917, i8* %39, align 1
  %6918 = add i64 %6872, -52
  %6919 = add i64 %6874, 13
  store i64 %6919, i64* %3, align 8
  %6920 = inttoptr i64 %6918 to i32*
  store i32 %6888, i32* %6920, align 4
  %6921 = load i64, i64* %RBP.i, align 8
  %6922 = add i64 %6921, -16
  %6923 = load i64, i64* %3, align 8
  %6924 = add i64 %6923, 7
  store i64 %6924, i64* %3, align 8
  %6925 = inttoptr i64 %6922 to i32*
  store i32 0, i32* %6925, align 4
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_40ba70

block_.L_40ba70:                                  ; preds = %block_40ba7a, %block_.L_40ba3d
  %6926 = phi i64 [ %7202, %block_40ba7a ], [ %.pre145, %block_.L_40ba3d ]
  %6927 = load i64, i64* %RBP.i, align 8
  %6928 = add i64 %6927, -16
  %6929 = add i64 %6926, 4
  store i64 %6929, i64* %3, align 8
  %6930 = inttoptr i64 %6928 to i32*
  %6931 = load i32, i32* %6930, align 4
  %6932 = add i32 %6931, -2
  %6933 = icmp ult i32 %6931, 2
  %6934 = zext i1 %6933 to i8
  store i8 %6934, i8* %14, align 1
  %6935 = and i32 %6932, 255
  %6936 = tail call i32 @llvm.ctpop.i32(i32 %6935)
  %6937 = trunc i32 %6936 to i8
  %6938 = and i8 %6937, 1
  %6939 = xor i8 %6938, 1
  store i8 %6939, i8* %21, align 1
  %6940 = xor i32 %6932, %6931
  %6941 = lshr i32 %6940, 4
  %6942 = trunc i32 %6941 to i8
  %6943 = and i8 %6942, 1
  store i8 %6943, i8* %27, align 1
  %6944 = icmp eq i32 %6932, 0
  %6945 = zext i1 %6944 to i8
  store i8 %6945, i8* %30, align 1
  %6946 = lshr i32 %6932, 31
  %6947 = trunc i32 %6946 to i8
  store i8 %6947, i8* %33, align 1
  %6948 = lshr i32 %6931, 31
  %6949 = xor i32 %6946, %6948
  %6950 = add nuw nsw i32 %6949, %6948
  %6951 = icmp eq i32 %6950, 2
  %6952 = zext i1 %6951 to i8
  store i8 %6952, i8* %39, align 1
  %6953 = icmp ne i8 %6947, 0
  %6954 = xor i1 %6953, %6951
  %.v173 = select i1 %6954, i64 10, i64 133
  %6955 = add i64 %6926, %.v173
  %6956 = add i64 %6955, 5
  store i64 %6956, i64* %3, align 8
  br i1 %6954, label %block_40ba7a, label %block_.L_40baf5

block_40ba7a:                                     ; preds = %block_.L_40ba70
  store i64 3, i64* %RAX.i2123.pre-phi, align 8
  %6957 = add i64 %6955, 8
  store i64 %6957, i64* %3, align 8
  %6958 = load i32, i32* %6930, align 4
  %6959 = sub i32 3, %6958
  %6960 = zext i32 %6959 to i64
  store i64 %6960, i64* %RAX.i2123.pre-phi, align 8
  %6961 = icmp ugt i32 %6958, 3
  %6962 = zext i1 %6961 to i8
  store i8 %6962, i8* %14, align 1
  %6963 = and i32 %6959, 255
  %6964 = tail call i32 @llvm.ctpop.i32(i32 %6963)
  %6965 = trunc i32 %6964 to i8
  %6966 = and i8 %6965, 1
  %6967 = xor i8 %6966, 1
  store i8 %6967, i8* %21, align 1
  %6968 = xor i32 %6959, %6958
  %6969 = lshr i32 %6968, 4
  %6970 = trunc i32 %6969 to i8
  %6971 = and i8 %6970, 1
  store i8 %6971, i8* %27, align 1
  %6972 = icmp eq i32 %6959, 0
  %6973 = zext i1 %6972 to i8
  store i8 %6973, i8* %30, align 1
  %6974 = lshr i32 %6959, 31
  %6975 = trunc i32 %6974 to i8
  store i8 %6975, i8* %33, align 1
  %6976 = lshr i32 %6958, 31
  %6977 = add nuw nsw i32 %6974, %6976
  %6978 = icmp eq i32 %6977, 2
  %6979 = zext i1 %6978 to i8
  store i8 %6979, i8* %39, align 1
  %6980 = add i64 %6927, -24
  %6981 = add i64 %6955, 11
  store i64 %6981, i64* %3, align 8
  %6982 = inttoptr i64 %6980 to i32*
  store i32 %6959, i32* %6982, align 4
  %6983 = load i64, i64* %RBP.i, align 8
  %6984 = add i64 %6983, -16
  %6985 = load i64, i64* %3, align 8
  %6986 = add i64 %6985, 4
  store i64 %6986, i64* %3, align 8
  %6987 = inttoptr i64 %6984 to i32*
  %6988 = load i32, i32* %6987, align 4
  %6989 = sext i32 %6988 to i64
  store i64 %6989, i64* %RCX.i1445, align 8
  %6990 = shl nsw i64 %6989, 2
  %6991 = add i64 %6983, -64
  %6992 = add i64 %6991, %6990
  %6993 = add i64 %6985, 8
  store i64 %6993, i64* %3, align 8
  %6994 = inttoptr i64 %6992 to i32*
  %6995 = load i32, i32* %6994, align 4
  %6996 = zext i32 %6995 to i64
  store i64 %6996, i64* %RAX.i2123.pre-phi, align 8
  %6997 = add i64 %6983, -24
  %6998 = add i64 %6985, 12
  store i64 %6998, i64* %3, align 8
  %6999 = inttoptr i64 %6997 to i32*
  %7000 = load i32, i32* %6999, align 4
  %7001 = sext i32 %7000 to i64
  store i64 %7001, i64* %RCX.i1445, align 8
  %7002 = shl nsw i64 %7001, 2
  %7003 = add nsw i64 %7002, -64
  %7004 = add i64 %7003, %6983
  %7005 = add i64 %6985, 16
  store i64 %7005, i64* %3, align 8
  %7006 = inttoptr i64 %7004 to i32*
  %7007 = load i32, i32* %7006, align 4
  %7008 = add i32 %7007, %6995
  %7009 = zext i32 %7008 to i64
  store i64 %7009, i64* %RAX.i2123.pre-phi, align 8
  %7010 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7011 = add i64 %7010, 13112
  store i64 %7011, i64* %RCX.i1445, align 8
  %7012 = icmp ugt i64 %7010, -13113
  %7013 = zext i1 %7012 to i8
  store i8 %7013, i8* %14, align 1
  %7014 = trunc i64 %7011 to i32
  %7015 = and i32 %7014, 255
  %7016 = tail call i32 @llvm.ctpop.i32(i32 %7015)
  %7017 = trunc i32 %7016 to i8
  %7018 = and i8 %7017, 1
  %7019 = xor i8 %7018, 1
  store i8 %7019, i8* %21, align 1
  %7020 = xor i64 %7010, 16
  %7021 = xor i64 %7020, %7011
  %7022 = lshr i64 %7021, 4
  %7023 = trunc i64 %7022 to i8
  %7024 = and i8 %7023, 1
  store i8 %7024, i8* %27, align 1
  %7025 = icmp eq i64 %7011, 0
  %7026 = zext i1 %7025 to i8
  store i8 %7026, i8* %30, align 1
  %7027 = lshr i64 %7011, 63
  %7028 = trunc i64 %7027 to i8
  store i8 %7028, i8* %33, align 1
  %7029 = lshr i64 %7010, 63
  %7030 = xor i64 %7027, %7029
  %7031 = add nuw nsw i64 %7030, %7027
  %7032 = icmp eq i64 %7031, 2
  %7033 = zext i1 %7032 to i8
  store i8 %7033, i8* %39, align 1
  %7034 = load i64, i64* %RBP.i, align 8
  %7035 = add i64 %7034, -16
  %7036 = add i64 %6985, 35
  store i64 %7036, i64* %3, align 8
  %7037 = inttoptr i64 %7035 to i32*
  %7038 = load i32, i32* %7037, align 4
  %7039 = sext i32 %7038 to i64
  %7040 = shl nsw i64 %7039, 6
  store i64 %7040, i64* %RDX.i2151, align 8
  %7041 = add i64 %7040, %7011
  store i64 %7041, i64* %RCX.i1445, align 8
  %7042 = icmp ult i64 %7041, %7011
  %7043 = icmp ult i64 %7041, %7040
  %7044 = or i1 %7042, %7043
  %7045 = zext i1 %7044 to i8
  store i8 %7045, i8* %14, align 1
  %7046 = trunc i64 %7041 to i32
  %7047 = and i32 %7046, 255
  %7048 = tail call i32 @llvm.ctpop.i32(i32 %7047)
  %7049 = trunc i32 %7048 to i8
  %7050 = and i8 %7049, 1
  %7051 = xor i8 %7050, 1
  store i8 %7051, i8* %21, align 1
  %7052 = xor i64 %7011, %7041
  %7053 = lshr i64 %7052, 4
  %7054 = trunc i64 %7053 to i8
  %7055 = and i8 %7054, 1
  store i8 %7055, i8* %27, align 1
  %7056 = icmp eq i64 %7041, 0
  %7057 = zext i1 %7056 to i8
  store i8 %7057, i8* %30, align 1
  %7058 = lshr i64 %7041, 63
  %7059 = trunc i64 %7058 to i8
  store i8 %7059, i8* %33, align 1
  %7060 = lshr i64 %7039, 57
  %7061 = and i64 %7060, 1
  %7062 = xor i64 %7058, %7027
  %7063 = xor i64 %7058, %7061
  %7064 = add nuw nsw i64 %7062, %7063
  %7065 = icmp eq i64 %7064, 2
  %7066 = zext i1 %7065 to i8
  store i8 %7066, i8* %39, align 1
  %7067 = add i64 %7034, -20
  %7068 = add i64 %6985, 46
  store i64 %7068, i64* %3, align 8
  %7069 = inttoptr i64 %7067 to i32*
  %7070 = load i32, i32* %7069, align 4
  %7071 = sext i32 %7070 to i64
  store i64 %7071, i64* %RDX.i2151, align 8
  %7072 = shl nsw i64 %7071, 2
  %7073 = add i64 %7072, %7041
  %7074 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %7075 = add i64 %6985, 49
  store i64 %7075, i64* %3, align 8
  %7076 = inttoptr i64 %7073 to i32*
  store i32 %7074, i32* %7076, align 4
  %7077 = load i64, i64* %RBP.i, align 8
  %7078 = add i64 %7077, -16
  %7079 = load i64, i64* %3, align 8
  %7080 = add i64 %7079, 4
  store i64 %7080, i64* %3, align 8
  %7081 = inttoptr i64 %7078 to i32*
  %7082 = load i32, i32* %7081, align 4
  %7083 = sext i32 %7082 to i64
  store i64 %7083, i64* %RCX.i1445, align 8
  %7084 = shl nsw i64 %7083, 2
  %7085 = add i64 %7077, -64
  %7086 = add i64 %7085, %7084
  %7087 = add i64 %7079, 8
  store i64 %7087, i64* %3, align 8
  %7088 = inttoptr i64 %7086 to i32*
  %7089 = load i32, i32* %7088, align 4
  %7090 = zext i32 %7089 to i64
  store i64 %7090, i64* %RAX.i2123.pre-phi, align 8
  %7091 = add i64 %7077, -24
  %7092 = add i64 %7079, 12
  store i64 %7092, i64* %3, align 8
  %7093 = inttoptr i64 %7091 to i32*
  %7094 = load i32, i32* %7093, align 4
  %7095 = sext i32 %7094 to i64
  store i64 %7095, i64* %RCX.i1445, align 8
  %7096 = shl nsw i64 %7095, 2
  %7097 = add nsw i64 %7096, -64
  %7098 = add i64 %7097, %7077
  %7099 = add i64 %7079, 16
  store i64 %7099, i64* %3, align 8
  %7100 = inttoptr i64 %7098 to i32*
  %7101 = load i32, i32* %7100, align 4
  %7102 = sub i32 %7089, %7101
  %7103 = zext i32 %7102 to i64
  store i64 %7103, i64* %RAX.i2123.pre-phi, align 8
  %7104 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7105 = add i64 %7104, 13112
  store i64 %7105, i64* %RCX.i1445, align 8
  %7106 = icmp ugt i64 %7104, -13113
  %7107 = zext i1 %7106 to i8
  store i8 %7107, i8* %14, align 1
  %7108 = trunc i64 %7105 to i32
  %7109 = and i32 %7108, 255
  %7110 = tail call i32 @llvm.ctpop.i32(i32 %7109)
  %7111 = trunc i32 %7110 to i8
  %7112 = and i8 %7111, 1
  %7113 = xor i8 %7112, 1
  store i8 %7113, i8* %21, align 1
  %7114 = xor i64 %7104, 16
  %7115 = xor i64 %7114, %7105
  %7116 = lshr i64 %7115, 4
  %7117 = trunc i64 %7116 to i8
  %7118 = and i8 %7117, 1
  store i8 %7118, i8* %27, align 1
  %7119 = icmp eq i64 %7105, 0
  %7120 = zext i1 %7119 to i8
  store i8 %7120, i8* %30, align 1
  %7121 = lshr i64 %7105, 63
  %7122 = trunc i64 %7121 to i8
  store i8 %7122, i8* %33, align 1
  %7123 = lshr i64 %7104, 63
  %7124 = xor i64 %7121, %7123
  %7125 = add nuw nsw i64 %7124, %7121
  %7126 = icmp eq i64 %7125, 2
  %7127 = zext i1 %7126 to i8
  store i8 %7127, i8* %39, align 1
  %7128 = load i64, i64* %RBP.i, align 8
  %7129 = add i64 %7128, -24
  %7130 = add i64 %7079, 35
  store i64 %7130, i64* %3, align 8
  %7131 = inttoptr i64 %7129 to i32*
  %7132 = load i32, i32* %7131, align 4
  %7133 = sext i32 %7132 to i64
  %7134 = shl nsw i64 %7133, 6
  store i64 %7134, i64* %RDX.i2151, align 8
  %7135 = add i64 %7134, %7105
  store i64 %7135, i64* %RCX.i1445, align 8
  %7136 = icmp ult i64 %7135, %7105
  %7137 = icmp ult i64 %7135, %7134
  %7138 = or i1 %7136, %7137
  %7139 = zext i1 %7138 to i8
  store i8 %7139, i8* %14, align 1
  %7140 = trunc i64 %7135 to i32
  %7141 = and i32 %7140, 255
  %7142 = tail call i32 @llvm.ctpop.i32(i32 %7141)
  %7143 = trunc i32 %7142 to i8
  %7144 = and i8 %7143, 1
  %7145 = xor i8 %7144, 1
  store i8 %7145, i8* %21, align 1
  %7146 = xor i64 %7105, %7135
  %7147 = lshr i64 %7146, 4
  %7148 = trunc i64 %7147 to i8
  %7149 = and i8 %7148, 1
  store i8 %7149, i8* %27, align 1
  %7150 = icmp eq i64 %7135, 0
  %7151 = zext i1 %7150 to i8
  store i8 %7151, i8* %30, align 1
  %7152 = lshr i64 %7135, 63
  %7153 = trunc i64 %7152 to i8
  store i8 %7153, i8* %33, align 1
  %7154 = lshr i64 %7133, 57
  %7155 = and i64 %7154, 1
  %7156 = xor i64 %7152, %7121
  %7157 = xor i64 %7152, %7155
  %7158 = add nuw nsw i64 %7156, %7157
  %7159 = icmp eq i64 %7158, 2
  %7160 = zext i1 %7159 to i8
  store i8 %7160, i8* %39, align 1
  %7161 = add i64 %7128, -20
  %7162 = add i64 %7079, 46
  store i64 %7162, i64* %3, align 8
  %7163 = inttoptr i64 %7161 to i32*
  %7164 = load i32, i32* %7163, align 4
  %7165 = sext i32 %7164 to i64
  store i64 %7165, i64* %RDX.i2151, align 8
  %7166 = shl nsw i64 %7165, 2
  %7167 = add i64 %7166, %7135
  %7168 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %7169 = add i64 %7079, 49
  store i64 %7169, i64* %3, align 8
  %7170 = inttoptr i64 %7167 to i32*
  store i32 %7168, i32* %7170, align 4
  %7171 = load i64, i64* %RBP.i, align 8
  %7172 = add i64 %7171, -16
  %7173 = load i64, i64* %3, align 8
  %7174 = add i64 %7173, 3
  store i64 %7174, i64* %3, align 8
  %7175 = inttoptr i64 %7172 to i32*
  %7176 = load i32, i32* %7175, align 4
  %7177 = add i32 %7176, 1
  %7178 = zext i32 %7177 to i64
  store i64 %7178, i64* %RAX.i2123.pre-phi, align 8
  %7179 = icmp eq i32 %7176, -1
  %7180 = icmp eq i32 %7177, 0
  %7181 = or i1 %7179, %7180
  %7182 = zext i1 %7181 to i8
  store i8 %7182, i8* %14, align 1
  %7183 = and i32 %7177, 255
  %7184 = tail call i32 @llvm.ctpop.i32(i32 %7183)
  %7185 = trunc i32 %7184 to i8
  %7186 = and i8 %7185, 1
  %7187 = xor i8 %7186, 1
  store i8 %7187, i8* %21, align 1
  %7188 = xor i32 %7177, %7176
  %7189 = lshr i32 %7188, 4
  %7190 = trunc i32 %7189 to i8
  %7191 = and i8 %7190, 1
  store i8 %7191, i8* %27, align 1
  %7192 = zext i1 %7180 to i8
  store i8 %7192, i8* %30, align 1
  %7193 = lshr i32 %7177, 31
  %7194 = trunc i32 %7193 to i8
  store i8 %7194, i8* %33, align 1
  %7195 = lshr i32 %7176, 31
  %7196 = xor i32 %7193, %7195
  %7197 = add nuw nsw i32 %7196, %7193
  %7198 = icmp eq i32 %7197, 2
  %7199 = zext i1 %7198 to i8
  store i8 %7199, i8* %39, align 1
  %7200 = add i64 %7173, 9
  store i64 %7200, i64* %3, align 8
  store i32 %7177, i32* %7175, align 4
  %7201 = load i64, i64* %3, align 8
  %7202 = add i64 %7201, -128
  store i64 %7202, i64* %3, align 8
  br label %block_.L_40ba70

block_.L_40baf5:                                  ; preds = %block_.L_40ba70
  %7203 = add i64 %6927, -20
  %7204 = add i64 %6955, 8
  store i64 %7204, i64* %3, align 8
  %7205 = inttoptr i64 %7203 to i32*
  %7206 = load i32, i32* %7205, align 4
  %7207 = add i32 %7206, 1
  %7208 = zext i32 %7207 to i64
  store i64 %7208, i64* %RAX.i2123.pre-phi, align 8
  %7209 = icmp eq i32 %7206, -1
  %7210 = icmp eq i32 %7207, 0
  %7211 = or i1 %7209, %7210
  %7212 = zext i1 %7211 to i8
  store i8 %7212, i8* %14, align 1
  %7213 = and i32 %7207, 255
  %7214 = tail call i32 @llvm.ctpop.i32(i32 %7213)
  %7215 = trunc i32 %7214 to i8
  %7216 = and i8 %7215, 1
  %7217 = xor i8 %7216, 1
  store i8 %7217, i8* %21, align 1
  %7218 = xor i32 %7207, %7206
  %7219 = lshr i32 %7218, 4
  %7220 = trunc i32 %7219 to i8
  %7221 = and i8 %7220, 1
  store i8 %7221, i8* %27, align 1
  %7222 = zext i1 %7210 to i8
  store i8 %7222, i8* %30, align 1
  %7223 = lshr i32 %7207, 31
  %7224 = trunc i32 %7223 to i8
  store i8 %7224, i8* %33, align 1
  %7225 = lshr i32 %7206, 31
  %7226 = xor i32 %7223, %7225
  %7227 = add nuw nsw i32 %7226, %7223
  %7228 = icmp eq i32 %7227, 2
  %7229 = zext i1 %7228 to i8
  store i8 %7229, i8* %39, align 1
  %7230 = add i64 %6955, 14
  store i64 %7230, i64* %3, align 8
  store i32 %7207, i32* %7205, align 4
  %7231 = load i64, i64* %3, align 8
  %7232 = add i64 %7231, -279
  store i64 %7232, i64* %3, align 8
  br label %block_.L_40b9ec

block_.L_40bb08:                                  ; preds = %block_.L_40b9ec
  %7233 = add i64 %6594, 5
  store i64 %7233, i64* %3, align 8
  br label %block_.L_40bb0d

block_.L_40bb0d:                                  ; preds = %block_.L_40b9c9, %block_.L_40bb08
  %7234 = phi i64 [ %7233, %block_.L_40bb08 ], [ %6561, %block_.L_40b9c9 ]
  %7235 = phi i64 [ %6566, %block_.L_40bb08 ], [ %6546, %block_.L_40b9c9 ]
  %7236 = add i64 %7235, -140
  %7237 = add i64 %7234, 7
  store i64 %7237, i64* %3, align 8
  %7238 = inttoptr i64 %7236 to i32*
  %7239 = load i32, i32* %7238, align 4
  store i8 0, i8* %14, align 1
  %7240 = and i32 %7239, 255
  %7241 = tail call i32 @llvm.ctpop.i32(i32 %7240)
  %7242 = trunc i32 %7241 to i8
  %7243 = and i8 %7242, 1
  %7244 = xor i8 %7243, 1
  store i8 %7244, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %7245 = icmp eq i32 %7239, 0
  %7246 = zext i1 %7245 to i8
  store i8 %7246, i8* %30, align 1
  %7247 = lshr i32 %7239, 31
  %7248 = trunc i32 %7247 to i8
  store i8 %7248, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v167 = select i1 %7245, i64 13, i64 321
  %7249 = add i64 %7234, %.v167
  store i64 %7249, i64* %3, align 8
  br i1 %7245, label %block_40bb1a, label %block_.L_40bc4e

block_40bb1a:                                     ; preds = %block_.L_40bb0d
  %7250 = add i64 %7235, -16
  %7251 = add i64 %7249, 7
  store i64 %7251, i64* %3, align 8
  %7252 = inttoptr i64 %7250 to i32*
  store i32 0, i32* %7252, align 4
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_40bb21

block_.L_40bb21:                                  ; preds = %block_.L_40bc36, %block_40bb1a
  %7253 = phi i64 [ %7930, %block_.L_40bc36 ], [ %.pre146, %block_40bb1a ]
  %7254 = load i64, i64* %RBP.i, align 8
  %7255 = add i64 %7254, -16
  %7256 = add i64 %7253, 4
  store i64 %7256, i64* %3, align 8
  %7257 = inttoptr i64 %7255 to i32*
  %7258 = load i32, i32* %7257, align 4
  %7259 = add i32 %7258, -4
  %7260 = icmp ult i32 %7258, 4
  %7261 = zext i1 %7260 to i8
  store i8 %7261, i8* %14, align 1
  %7262 = and i32 %7259, 255
  %7263 = tail call i32 @llvm.ctpop.i32(i32 %7262)
  %7264 = trunc i32 %7263 to i8
  %7265 = and i8 %7264, 1
  %7266 = xor i8 %7265, 1
  store i8 %7266, i8* %21, align 1
  %7267 = xor i32 %7259, %7258
  %7268 = lshr i32 %7267, 4
  %7269 = trunc i32 %7268 to i8
  %7270 = and i8 %7269, 1
  store i8 %7270, i8* %27, align 1
  %7271 = icmp eq i32 %7259, 0
  %7272 = zext i1 %7271 to i8
  store i8 %7272, i8* %30, align 1
  %7273 = lshr i32 %7259, 31
  %7274 = trunc i32 %7273 to i8
  store i8 %7274, i8* %33, align 1
  %7275 = lshr i32 %7258, 31
  %7276 = xor i32 %7273, %7275
  %7277 = add nuw nsw i32 %7276, %7275
  %7278 = icmp eq i32 %7277, 2
  %7279 = zext i1 %7278 to i8
  store i8 %7279, i8* %39, align 1
  %7280 = icmp ne i8 %7274, 0
  %7281 = xor i1 %7280, %7278
  %.v168 = select i1 %7281, i64 10, i64 296
  %7282 = add i64 %7253, %.v168
  store i64 %7282, i64* %3, align 8
  br i1 %7281, label %block_40bb2b, label %block_.L_40bc49

block_40bb2b:                                     ; preds = %block_.L_40bb21
  %7283 = add i64 %7254, -20
  %7284 = add i64 %7282, 7
  store i64 %7284, i64* %3, align 8
  %7285 = inttoptr i64 %7283 to i32*
  store i32 0, i32* %7285, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_40bb32

block_.L_40bb32:                                  ; preds = %block_40bb3c, %block_40bb2b
  %7286 = phi i64 [ %7423, %block_40bb3c ], [ %.pre147, %block_40bb2b ]
  %7287 = load i64, i64* %RBP.i, align 8
  %7288 = add i64 %7287, -20
  %7289 = add i64 %7286, 4
  store i64 %7289, i64* %3, align 8
  %7290 = inttoptr i64 %7288 to i32*
  %7291 = load i32, i32* %7290, align 4
  %7292 = add i32 %7291, -4
  %7293 = icmp ult i32 %7291, 4
  %7294 = zext i1 %7293 to i8
  store i8 %7294, i8* %14, align 1
  %7295 = and i32 %7292, 255
  %7296 = tail call i32 @llvm.ctpop.i32(i32 %7295)
  %7297 = trunc i32 %7296 to i8
  %7298 = and i8 %7297, 1
  %7299 = xor i8 %7298, 1
  store i8 %7299, i8* %21, align 1
  %7300 = xor i32 %7292, %7291
  %7301 = lshr i32 %7300, 4
  %7302 = trunc i32 %7301 to i8
  %7303 = and i8 %7302, 1
  store i8 %7303, i8* %27, align 1
  %7304 = icmp eq i32 %7292, 0
  %7305 = zext i1 %7304 to i8
  store i8 %7305, i8* %30, align 1
  %7306 = lshr i32 %7292, 31
  %7307 = trunc i32 %7306 to i8
  store i8 %7307, i8* %33, align 1
  %7308 = lshr i32 %7291, 31
  %7309 = xor i32 %7306, %7308
  %7310 = add nuw nsw i32 %7309, %7308
  %7311 = icmp eq i32 %7310, 2
  %7312 = zext i1 %7311 to i8
  store i8 %7312, i8* %39, align 1
  %7313 = icmp ne i8 %7307, 0
  %7314 = xor i1 %7313, %7311
  %.v169 = select i1 %7314, i64 10, i64 64
  %7315 = add i64 %7286, %.v169
  store i64 %7315, i64* %3, align 8
  br i1 %7314, label %block_40bb3c, label %block_.L_40bb72

block_40bb3c:                                     ; preds = %block_.L_40bb32
  %7316 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7317 = add i64 %7316, 13112
  store i64 %7317, i64* %RAX.i2123.pre-phi, align 8
  %7318 = icmp ugt i64 %7316, -13113
  %7319 = zext i1 %7318 to i8
  store i8 %7319, i8* %14, align 1
  %7320 = trunc i64 %7317 to i32
  %7321 = and i32 %7320, 255
  %7322 = tail call i32 @llvm.ctpop.i32(i32 %7321)
  %7323 = trunc i32 %7322 to i8
  %7324 = and i8 %7323, 1
  %7325 = xor i8 %7324, 1
  store i8 %7325, i8* %21, align 1
  %7326 = xor i64 %7316, 16
  %7327 = xor i64 %7326, %7317
  %7328 = lshr i64 %7327, 4
  %7329 = trunc i64 %7328 to i8
  %7330 = and i8 %7329, 1
  store i8 %7330, i8* %27, align 1
  %7331 = icmp eq i64 %7317, 0
  %7332 = zext i1 %7331 to i8
  store i8 %7332, i8* %30, align 1
  %7333 = lshr i64 %7317, 63
  %7334 = trunc i64 %7333 to i8
  store i8 %7334, i8* %33, align 1
  %7335 = lshr i64 %7316, 63
  %7336 = xor i64 %7333, %7335
  %7337 = add nuw nsw i64 %7336, %7333
  %7338 = icmp eq i64 %7337, 2
  %7339 = zext i1 %7338 to i8
  store i8 %7339, i8* %39, align 1
  %7340 = add i64 %7287, -16
  %7341 = add i64 %7315, 18
  store i64 %7341, i64* %3, align 8
  %7342 = inttoptr i64 %7340 to i32*
  %7343 = load i32, i32* %7342, align 4
  %7344 = sext i32 %7343 to i64
  %7345 = shl nsw i64 %7344, 6
  store i64 %7345, i64* %RCX.i1445, align 8
  %7346 = add i64 %7345, %7317
  store i64 %7346, i64* %RAX.i2123.pre-phi, align 8
  %7347 = icmp ult i64 %7346, %7317
  %7348 = icmp ult i64 %7346, %7345
  %7349 = or i1 %7347, %7348
  %7350 = zext i1 %7349 to i8
  store i8 %7350, i8* %14, align 1
  %7351 = trunc i64 %7346 to i32
  %7352 = and i32 %7351, 255
  %7353 = tail call i32 @llvm.ctpop.i32(i32 %7352)
  %7354 = trunc i32 %7353 to i8
  %7355 = and i8 %7354, 1
  %7356 = xor i8 %7355, 1
  store i8 %7356, i8* %21, align 1
  %7357 = xor i64 %7317, %7346
  %7358 = lshr i64 %7357, 4
  %7359 = trunc i64 %7358 to i8
  %7360 = and i8 %7359, 1
  store i8 %7360, i8* %27, align 1
  %7361 = icmp eq i64 %7346, 0
  %7362 = zext i1 %7361 to i8
  store i8 %7362, i8* %30, align 1
  %7363 = lshr i64 %7346, 63
  %7364 = trunc i64 %7363 to i8
  store i8 %7364, i8* %33, align 1
  %7365 = lshr i64 %7344, 57
  %7366 = and i64 %7365, 1
  %7367 = xor i64 %7363, %7333
  %7368 = xor i64 %7363, %7366
  %7369 = add nuw nsw i64 %7367, %7368
  %7370 = icmp eq i64 %7369, 2
  %7371 = zext i1 %7370 to i8
  store i8 %7371, i8* %39, align 1
  %7372 = load i64, i64* %RBP.i, align 8
  %7373 = add i64 %7372, -20
  %7374 = add i64 %7315, 29
  store i64 %7374, i64* %3, align 8
  %7375 = inttoptr i64 %7373 to i32*
  %7376 = load i32, i32* %7375, align 4
  %7377 = sext i32 %7376 to i64
  store i64 %7377, i64* %RCX.i1445, align 8
  %7378 = shl nsw i64 %7377, 2
  %7379 = add i64 %7378, %7346
  %7380 = add i64 %7315, 32
  store i64 %7380, i64* %3, align 8
  %7381 = inttoptr i64 %7379 to i32*
  %7382 = load i32, i32* %7381, align 4
  %7383 = zext i32 %7382 to i64
  store i64 %7383, i64* %RDX.i2151, align 8
  %7384 = add i64 %7315, 36
  store i64 %7384, i64* %3, align 8
  %7385 = load i32, i32* %7375, align 4
  %7386 = sext i32 %7385 to i64
  store i64 %7386, i64* %RAX.i2123.pre-phi, align 8
  %7387 = shl nsw i64 %7386, 2
  %7388 = add i64 %7372, -48
  %7389 = add i64 %7388, %7387
  %7390 = add i64 %7315, 40
  store i64 %7390, i64* %3, align 8
  %7391 = inttoptr i64 %7389 to i32*
  store i32 %7382, i32* %7391, align 4
  %7392 = load i64, i64* %RBP.i, align 8
  %7393 = add i64 %7392, -20
  %7394 = load i64, i64* %3, align 8
  %7395 = add i64 %7394, 3
  store i64 %7395, i64* %3, align 8
  %7396 = inttoptr i64 %7393 to i32*
  %7397 = load i32, i32* %7396, align 4
  %7398 = add i32 %7397, 1
  %7399 = zext i32 %7398 to i64
  store i64 %7399, i64* %RAX.i2123.pre-phi, align 8
  %7400 = icmp eq i32 %7397, -1
  %7401 = icmp eq i32 %7398, 0
  %7402 = or i1 %7400, %7401
  %7403 = zext i1 %7402 to i8
  store i8 %7403, i8* %14, align 1
  %7404 = and i32 %7398, 255
  %7405 = tail call i32 @llvm.ctpop.i32(i32 %7404)
  %7406 = trunc i32 %7405 to i8
  %7407 = and i8 %7406, 1
  %7408 = xor i8 %7407, 1
  store i8 %7408, i8* %21, align 1
  %7409 = xor i32 %7398, %7397
  %7410 = lshr i32 %7409, 4
  %7411 = trunc i32 %7410 to i8
  %7412 = and i8 %7411, 1
  store i8 %7412, i8* %27, align 1
  %7413 = zext i1 %7401 to i8
  store i8 %7413, i8* %30, align 1
  %7414 = lshr i32 %7398, 31
  %7415 = trunc i32 %7414 to i8
  store i8 %7415, i8* %33, align 1
  %7416 = lshr i32 %7397, 31
  %7417 = xor i32 %7414, %7416
  %7418 = add nuw nsw i32 %7417, %7414
  %7419 = icmp eq i32 %7418, 2
  %7420 = zext i1 %7419 to i8
  store i8 %7420, i8* %39, align 1
  %7421 = add i64 %7394, 9
  store i64 %7421, i64* %3, align 8
  store i32 %7398, i32* %7396, align 4
  %7422 = load i64, i64* %3, align 8
  %7423 = add i64 %7422, -59
  store i64 %7423, i64* %3, align 8
  br label %block_.L_40bb32

block_.L_40bb72:                                  ; preds = %block_.L_40bb32
  %7424 = add i64 %7287, -48
  %7425 = add i64 %7315, 3
  store i64 %7425, i64* %3, align 8
  %7426 = inttoptr i64 %7424 to i32*
  %7427 = load i32, i32* %7426, align 4
  %7428 = zext i32 %7427 to i64
  store i64 %7428, i64* %RAX.i2123.pre-phi, align 8
  %7429 = add i64 %7287, -40
  %7430 = add i64 %7315, 6
  store i64 %7430, i64* %3, align 8
  %7431 = inttoptr i64 %7429 to i32*
  %7432 = load i32, i32* %7431, align 4
  %7433 = add i32 %7432, %7427
  %7434 = zext i32 %7433 to i64
  store i64 %7434, i64* %RAX.i2123.pre-phi, align 8
  %7435 = icmp ult i32 %7433, %7427
  %7436 = icmp ult i32 %7433, %7432
  %7437 = or i1 %7435, %7436
  %7438 = zext i1 %7437 to i8
  store i8 %7438, i8* %14, align 1
  %7439 = and i32 %7433, 255
  %7440 = tail call i32 @llvm.ctpop.i32(i32 %7439)
  %7441 = trunc i32 %7440 to i8
  %7442 = and i8 %7441, 1
  %7443 = xor i8 %7442, 1
  store i8 %7443, i8* %21, align 1
  %7444 = xor i32 %7432, %7427
  %7445 = xor i32 %7444, %7433
  %7446 = lshr i32 %7445, 4
  %7447 = trunc i32 %7446 to i8
  %7448 = and i8 %7447, 1
  store i8 %7448, i8* %27, align 1
  %7449 = icmp eq i32 %7433, 0
  %7450 = zext i1 %7449 to i8
  store i8 %7450, i8* %30, align 1
  %7451 = lshr i32 %7433, 31
  %7452 = trunc i32 %7451 to i8
  store i8 %7452, i8* %33, align 1
  %7453 = lshr i32 %7427, 31
  %7454 = lshr i32 %7432, 31
  %7455 = xor i32 %7451, %7453
  %7456 = xor i32 %7451, %7454
  %7457 = add nuw nsw i32 %7455, %7456
  %7458 = icmp eq i32 %7457, 2
  %7459 = zext i1 %7458 to i8
  store i8 %7459, i8* %39, align 1
  %7460 = add i64 %7287, -64
  %7461 = add i64 %7315, 9
  store i64 %7461, i64* %3, align 8
  %7462 = inttoptr i64 %7460 to i32*
  store i32 %7433, i32* %7462, align 4
  %7463 = load i64, i64* %RBP.i, align 8
  %7464 = add i64 %7463, -48
  %7465 = load i64, i64* %3, align 8
  %7466 = add i64 %7465, 3
  store i64 %7466, i64* %3, align 8
  %7467 = inttoptr i64 %7464 to i32*
  %7468 = load i32, i32* %7467, align 4
  %7469 = zext i32 %7468 to i64
  store i64 %7469, i64* %RAX.i2123.pre-phi, align 8
  %7470 = add i64 %7463, -40
  %7471 = add i64 %7465, 6
  store i64 %7471, i64* %3, align 8
  %7472 = inttoptr i64 %7470 to i32*
  %7473 = load i32, i32* %7472, align 4
  %7474 = sub i32 %7468, %7473
  %7475 = zext i32 %7474 to i64
  store i64 %7475, i64* %RAX.i2123.pre-phi, align 8
  %7476 = icmp ult i32 %7468, %7473
  %7477 = zext i1 %7476 to i8
  store i8 %7477, i8* %14, align 1
  %7478 = and i32 %7474, 255
  %7479 = tail call i32 @llvm.ctpop.i32(i32 %7478)
  %7480 = trunc i32 %7479 to i8
  %7481 = and i8 %7480, 1
  %7482 = xor i8 %7481, 1
  store i8 %7482, i8* %21, align 1
  %7483 = xor i32 %7473, %7468
  %7484 = xor i32 %7483, %7474
  %7485 = lshr i32 %7484, 4
  %7486 = trunc i32 %7485 to i8
  %7487 = and i8 %7486, 1
  store i8 %7487, i8* %27, align 1
  %7488 = icmp eq i32 %7474, 0
  %7489 = zext i1 %7488 to i8
  store i8 %7489, i8* %30, align 1
  %7490 = lshr i32 %7474, 31
  %7491 = trunc i32 %7490 to i8
  store i8 %7491, i8* %33, align 1
  %7492 = lshr i32 %7468, 31
  %7493 = lshr i32 %7473, 31
  %7494 = xor i32 %7493, %7492
  %7495 = xor i32 %7490, %7492
  %7496 = add nuw nsw i32 %7495, %7494
  %7497 = icmp eq i32 %7496, 2
  %7498 = zext i1 %7497 to i8
  store i8 %7498, i8* %39, align 1
  %7499 = add i64 %7463, -60
  %7500 = add i64 %7465, 9
  store i64 %7500, i64* %3, align 8
  %7501 = inttoptr i64 %7499 to i32*
  store i32 %7474, i32* %7501, align 4
  %7502 = load i64, i64* %RBP.i, align 8
  %7503 = add i64 %7502, -44
  %7504 = load i64, i64* %3, align 8
  %7505 = add i64 %7504, 3
  store i64 %7505, i64* %3, align 8
  %7506 = inttoptr i64 %7503 to i32*
  %7507 = load i32, i32* %7506, align 4
  %7508 = zext i32 %7507 to i64
  %7509 = shl nuw i64 %7508, 32
  %7510 = ashr i64 %7509, 33
  %7511 = trunc i32 %7507 to i8
  %7512 = and i8 %7511, 1
  %7513 = trunc i64 %7510 to i32
  %7514 = and i64 %7510, 4294967295
  store i64 %7514, i64* %RAX.i2123.pre-phi, align 8
  store i8 %7512, i8* %14, align 1
  %7515 = and i32 %7513, 255
  %7516 = tail call i32 @llvm.ctpop.i32(i32 %7515)
  %7517 = trunc i32 %7516 to i8
  %7518 = and i8 %7517, 1
  %7519 = xor i8 %7518, 1
  store i8 %7519, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %7520 = icmp eq i32 %7513, 0
  %7521 = zext i1 %7520 to i8
  store i8 %7521, i8* %30, align 1
  %7522 = lshr i64 %7510, 31
  %7523 = trunc i64 %7522 to i8
  %7524 = and i8 %7523, 1
  store i8 %7524, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %7525 = add i64 %7502, -36
  %7526 = add i64 %7504, 8
  store i64 %7526, i64* %3, align 8
  %7527 = trunc i64 %7510 to i32
  %7528 = inttoptr i64 %7525 to i32*
  %7529 = load i32, i32* %7528, align 4
  %7530 = sub i32 %7527, %7529
  %7531 = zext i32 %7530 to i64
  store i64 %7531, i64* %RAX.i2123.pre-phi, align 8
  %7532 = icmp ult i32 %7527, %7529
  %7533 = zext i1 %7532 to i8
  store i8 %7533, i8* %14, align 1
  %7534 = and i32 %7530, 255
  %7535 = tail call i32 @llvm.ctpop.i32(i32 %7534)
  %7536 = trunc i32 %7535 to i8
  %7537 = and i8 %7536, 1
  %7538 = xor i8 %7537, 1
  store i8 %7538, i8* %21, align 1
  %7539 = xor i32 %7529, %7527
  %7540 = xor i32 %7539, %7530
  %7541 = lshr i32 %7540, 4
  %7542 = trunc i32 %7541 to i8
  %7543 = and i8 %7542, 1
  store i8 %7543, i8* %27, align 1
  %7544 = icmp eq i32 %7530, 0
  %7545 = zext i1 %7544 to i8
  store i8 %7545, i8* %30, align 1
  %7546 = lshr i32 %7530, 31
  %7547 = trunc i32 %7546 to i8
  store i8 %7547, i8* %33, align 1
  %7548 = lshr i64 %7510, 31
  %7549 = trunc i64 %7548 to i32
  %7550 = and i32 %7549, 1
  %7551 = lshr i32 %7529, 31
  %7552 = xor i32 %7551, %7550
  %7553 = xor i32 %7546, %7550
  %7554 = add nuw nsw i32 %7553, %7552
  %7555 = icmp eq i32 %7554, 2
  %7556 = zext i1 %7555 to i8
  store i8 %7556, i8* %39, align 1
  %7557 = add i64 %7502, -56
  %7558 = add i64 %7504, 11
  store i64 %7558, i64* %3, align 8
  %7559 = inttoptr i64 %7557 to i32*
  store i32 %7530, i32* %7559, align 4
  %7560 = load i64, i64* %RBP.i, align 8
  %7561 = add i64 %7560, -44
  %7562 = load i64, i64* %3, align 8
  %7563 = add i64 %7562, 3
  store i64 %7563, i64* %3, align 8
  %7564 = inttoptr i64 %7561 to i32*
  %7565 = load i32, i32* %7564, align 4
  %7566 = zext i32 %7565 to i64
  store i64 %7566, i64* %RAX.i2123.pre-phi, align 8
  %7567 = add i64 %7560, -36
  %7568 = add i64 %7562, 6
  store i64 %7568, i64* %3, align 8
  %7569 = inttoptr i64 %7567 to i32*
  %7570 = load i32, i32* %7569, align 4
  %7571 = zext i32 %7570 to i64
  %7572 = shl nuw i64 %7571, 32
  %7573 = ashr i64 %7572, 33
  %7574 = and i64 %7573, 4294967295
  store i64 %7574, i64* %RCX.i1445, align 8
  %7575 = trunc i64 %7573 to i32
  %7576 = add i32 %7575, %7565
  %7577 = zext i32 %7576 to i64
  store i64 %7577, i64* %RAX.i2123.pre-phi, align 8
  %7578 = icmp ult i32 %7576, %7565
  %7579 = icmp ult i32 %7576, %7575
  %7580 = or i1 %7578, %7579
  %7581 = zext i1 %7580 to i8
  store i8 %7581, i8* %14, align 1
  %7582 = and i32 %7576, 255
  %7583 = tail call i32 @llvm.ctpop.i32(i32 %7582)
  %7584 = trunc i32 %7583 to i8
  %7585 = and i8 %7584, 1
  %7586 = xor i8 %7585, 1
  store i8 %7586, i8* %21, align 1
  %7587 = xor i64 %7573, %7566
  %7588 = trunc i64 %7587 to i32
  %7589 = xor i32 %7588, %7576
  %7590 = lshr i32 %7589, 4
  %7591 = trunc i32 %7590 to i8
  %7592 = and i8 %7591, 1
  store i8 %7592, i8* %27, align 1
  %7593 = icmp eq i32 %7576, 0
  %7594 = zext i1 %7593 to i8
  store i8 %7594, i8* %30, align 1
  %7595 = lshr i32 %7576, 31
  %7596 = trunc i32 %7595 to i8
  store i8 %7596, i8* %33, align 1
  %7597 = lshr i32 %7565, 31
  %7598 = lshr i64 %7573, 31
  %7599 = trunc i64 %7598 to i32
  %7600 = and i32 %7599, 1
  %7601 = xor i32 %7595, %7597
  %7602 = xor i32 %7595, %7600
  %7603 = add nuw nsw i32 %7601, %7602
  %7604 = icmp eq i32 %7603, 2
  %7605 = zext i1 %7604 to i8
  store i8 %7605, i8* %39, align 1
  %7606 = add i64 %7560, -52
  %7607 = add i64 %7562, 13
  store i64 %7607, i64* %3, align 8
  %7608 = inttoptr i64 %7606 to i32*
  store i32 %7576, i32* %7608, align 4
  %7609 = load i64, i64* %RBP.i, align 8
  %7610 = add i64 %7609, -20
  %7611 = load i64, i64* %3, align 8
  %7612 = add i64 %7611, 7
  store i64 %7612, i64* %3, align 8
  %7613 = inttoptr i64 %7610 to i32*
  store i32 0, i32* %7613, align 4
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_40bba5

block_.L_40bba5:                                  ; preds = %block_40bbaf, %block_.L_40bb72
  %7614 = phi i64 [ %7900, %block_40bbaf ], [ %.pre148, %block_.L_40bb72 ]
  %7615 = load i64, i64* %RBP.i, align 8
  %7616 = add i64 %7615, -20
  %7617 = add i64 %7614, 4
  store i64 %7617, i64* %3, align 8
  %7618 = inttoptr i64 %7616 to i32*
  %7619 = load i32, i32* %7618, align 4
  %7620 = add i32 %7619, -2
  %7621 = icmp ult i32 %7619, 2
  %7622 = zext i1 %7621 to i8
  store i8 %7622, i8* %14, align 1
  %7623 = and i32 %7620, 255
  %7624 = tail call i32 @llvm.ctpop.i32(i32 %7623)
  %7625 = trunc i32 %7624 to i8
  %7626 = and i8 %7625, 1
  %7627 = xor i8 %7626, 1
  store i8 %7627, i8* %21, align 1
  %7628 = xor i32 %7620, %7619
  %7629 = lshr i32 %7628, 4
  %7630 = trunc i32 %7629 to i8
  %7631 = and i8 %7630, 1
  store i8 %7631, i8* %27, align 1
  %7632 = icmp eq i32 %7620, 0
  %7633 = zext i1 %7632 to i8
  store i8 %7633, i8* %30, align 1
  %7634 = lshr i32 %7620, 31
  %7635 = trunc i32 %7634 to i8
  store i8 %7635, i8* %33, align 1
  %7636 = lshr i32 %7619, 31
  %7637 = xor i32 %7634, %7636
  %7638 = add nuw nsw i32 %7637, %7636
  %7639 = icmp eq i32 %7638, 2
  %7640 = zext i1 %7639 to i8
  store i8 %7640, i8* %39, align 1
  %7641 = icmp ne i8 %7635, 0
  %7642 = xor i1 %7641, %7639
  %.v170 = select i1 %7642, i64 10, i64 145
  %7643 = add i64 %7614, %.v170
  %7644 = add i64 %7643, 5
  store i64 %7644, i64* %3, align 8
  br i1 %7642, label %block_40bbaf, label %block_.L_40bc36

block_40bbaf:                                     ; preds = %block_.L_40bba5
  store i64 3, i64* %RAX.i2123.pre-phi, align 8
  %7645 = add i64 %7643, 8
  store i64 %7645, i64* %3, align 8
  %7646 = load i32, i32* %7618, align 4
  %7647 = sub i32 3, %7646
  %7648 = zext i32 %7647 to i64
  store i64 %7648, i64* %RAX.i2123.pre-phi, align 8
  %7649 = icmp ugt i32 %7646, 3
  %7650 = zext i1 %7649 to i8
  store i8 %7650, i8* %14, align 1
  %7651 = and i32 %7647, 255
  %7652 = tail call i32 @llvm.ctpop.i32(i32 %7651)
  %7653 = trunc i32 %7652 to i8
  %7654 = and i8 %7653, 1
  %7655 = xor i8 %7654, 1
  store i8 %7655, i8* %21, align 1
  %7656 = xor i32 %7647, %7646
  %7657 = lshr i32 %7656, 4
  %7658 = trunc i32 %7657 to i8
  %7659 = and i8 %7658, 1
  store i8 %7659, i8* %27, align 1
  %7660 = icmp eq i32 %7647, 0
  %7661 = zext i1 %7660 to i8
  store i8 %7661, i8* %30, align 1
  %7662 = lshr i32 %7647, 31
  %7663 = trunc i32 %7662 to i8
  store i8 %7663, i8* %33, align 1
  %7664 = lshr i32 %7646, 31
  %7665 = add nuw nsw i32 %7662, %7664
  %7666 = icmp eq i32 %7665, 2
  %7667 = zext i1 %7666 to i8
  store i8 %7667, i8* %39, align 1
  %7668 = add i64 %7615, -28
  %7669 = add i64 %7643, 11
  store i64 %7669, i64* %3, align 8
  %7670 = inttoptr i64 %7668 to i32*
  store i32 %7647, i32* %7670, align 4
  %7671 = load i64, i64* %RBP.i, align 8
  %7672 = add i64 %7671, -20
  %7673 = load i64, i64* %3, align 8
  %7674 = add i64 %7673, 4
  store i64 %7674, i64* %3, align 8
  %7675 = inttoptr i64 %7672 to i32*
  %7676 = load i32, i32* %7675, align 4
  %7677 = sext i32 %7676 to i64
  store i64 %7677, i64* %RCX.i1445, align 8
  %7678 = shl nsw i64 %7677, 2
  %7679 = add i64 %7671, -64
  %7680 = add i64 %7679, %7678
  %7681 = add i64 %7673, 8
  store i64 %7681, i64* %3, align 8
  %7682 = inttoptr i64 %7680 to i32*
  %7683 = load i32, i32* %7682, align 4
  %7684 = zext i32 %7683 to i64
  store i64 %7684, i64* %RAX.i2123.pre-phi, align 8
  %7685 = add i64 %7671, -28
  %7686 = add i64 %7673, 12
  store i64 %7686, i64* %3, align 8
  %7687 = inttoptr i64 %7685 to i32*
  %7688 = load i32, i32* %7687, align 4
  %7689 = sext i32 %7688 to i64
  store i64 %7689, i64* %RCX.i1445, align 8
  %7690 = shl nsw i64 %7689, 2
  %7691 = add nsw i64 %7690, -64
  %7692 = add i64 %7691, %7671
  %7693 = add i64 %7673, 16
  store i64 %7693, i64* %3, align 8
  %7694 = inttoptr i64 %7692 to i32*
  %7695 = load i32, i32* %7694, align 4
  %7696 = add i32 %7695, %7683
  %7697 = add i32 %7696, 32
  %7698 = zext i32 %7697 to i64
  %7699 = shl nuw i64 %7698, 32
  %7700 = ashr i64 %7699, 37
  %7701 = lshr i64 %7700, 1
  %7702 = and i64 %7701, 4294967295
  store i64 %7702, i64* %RAX.i2123.pre-phi, align 8
  %7703 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7704 = add i64 %7703, 13112
  store i64 %7704, i64* %RCX.i1445, align 8
  %7705 = icmp ugt i64 %7703, -13113
  %7706 = zext i1 %7705 to i8
  store i8 %7706, i8* %14, align 1
  %7707 = trunc i64 %7704 to i32
  %7708 = and i32 %7707, 255
  %7709 = tail call i32 @llvm.ctpop.i32(i32 %7708)
  %7710 = trunc i32 %7709 to i8
  %7711 = and i8 %7710, 1
  %7712 = xor i8 %7711, 1
  store i8 %7712, i8* %21, align 1
  %7713 = xor i64 %7703, 16
  %7714 = xor i64 %7713, %7704
  %7715 = lshr i64 %7714, 4
  %7716 = trunc i64 %7715 to i8
  %7717 = and i8 %7716, 1
  store i8 %7717, i8* %27, align 1
  %7718 = icmp eq i64 %7704, 0
  %7719 = zext i1 %7718 to i8
  store i8 %7719, i8* %30, align 1
  %7720 = lshr i64 %7704, 63
  %7721 = trunc i64 %7720 to i8
  store i8 %7721, i8* %33, align 1
  %7722 = lshr i64 %7703, 63
  %7723 = xor i64 %7720, %7722
  %7724 = add nuw nsw i64 %7723, %7720
  %7725 = icmp eq i64 %7724, 2
  %7726 = zext i1 %7725 to i8
  store i8 %7726, i8* %39, align 1
  %7727 = load i64, i64* %RBP.i, align 8
  %7728 = add i64 %7727, -16
  %7729 = add i64 %7673, 41
  store i64 %7729, i64* %3, align 8
  %7730 = inttoptr i64 %7728 to i32*
  %7731 = load i32, i32* %7730, align 4
  %7732 = sext i32 %7731 to i64
  %7733 = shl nsw i64 %7732, 6
  store i64 %7733, i64* %RDX.i2151, align 8
  %7734 = add i64 %7733, %7704
  store i64 %7734, i64* %RCX.i1445, align 8
  %7735 = icmp ult i64 %7734, %7704
  %7736 = icmp ult i64 %7734, %7733
  %7737 = or i1 %7735, %7736
  %7738 = zext i1 %7737 to i8
  store i8 %7738, i8* %14, align 1
  %7739 = trunc i64 %7734 to i32
  %7740 = and i32 %7739, 255
  %7741 = tail call i32 @llvm.ctpop.i32(i32 %7740)
  %7742 = trunc i32 %7741 to i8
  %7743 = and i8 %7742, 1
  %7744 = xor i8 %7743, 1
  store i8 %7744, i8* %21, align 1
  %7745 = xor i64 %7704, %7734
  %7746 = lshr i64 %7745, 4
  %7747 = trunc i64 %7746 to i8
  %7748 = and i8 %7747, 1
  store i8 %7748, i8* %27, align 1
  %7749 = icmp eq i64 %7734, 0
  %7750 = zext i1 %7749 to i8
  store i8 %7750, i8* %30, align 1
  %7751 = lshr i64 %7734, 63
  %7752 = trunc i64 %7751 to i8
  store i8 %7752, i8* %33, align 1
  %7753 = lshr i64 %7732, 57
  %7754 = and i64 %7753, 1
  %7755 = xor i64 %7751, %7720
  %7756 = xor i64 %7751, %7754
  %7757 = add nuw nsw i64 %7755, %7756
  %7758 = icmp eq i64 %7757, 2
  %7759 = zext i1 %7758 to i8
  store i8 %7759, i8* %39, align 1
  %7760 = add i64 %7727, -20
  %7761 = add i64 %7673, 52
  store i64 %7761, i64* %3, align 8
  %7762 = inttoptr i64 %7760 to i32*
  %7763 = load i32, i32* %7762, align 4
  %7764 = sext i32 %7763 to i64
  store i64 %7764, i64* %RDX.i2151, align 8
  %7765 = shl nsw i64 %7764, 2
  %7766 = add i64 %7765, %7734
  %7767 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %7768 = add i64 %7673, 55
  store i64 %7768, i64* %3, align 8
  %7769 = inttoptr i64 %7766 to i32*
  store i32 %7767, i32* %7769, align 4
  %7770 = load i64, i64* %RBP.i, align 8
  %7771 = add i64 %7770, -20
  %7772 = load i64, i64* %3, align 8
  %7773 = add i64 %7772, 4
  store i64 %7773, i64* %3, align 8
  %7774 = inttoptr i64 %7771 to i32*
  %7775 = load i32, i32* %7774, align 4
  %7776 = sext i32 %7775 to i64
  store i64 %7776, i64* %RCX.i1445, align 8
  %7777 = shl nsw i64 %7776, 2
  %7778 = add i64 %7770, -64
  %7779 = add i64 %7778, %7777
  %7780 = add i64 %7772, 8
  store i64 %7780, i64* %3, align 8
  %7781 = inttoptr i64 %7779 to i32*
  %7782 = load i32, i32* %7781, align 4
  %7783 = zext i32 %7782 to i64
  store i64 %7783, i64* %RAX.i2123.pre-phi, align 8
  %7784 = add i64 %7770, -28
  %7785 = add i64 %7772, 12
  store i64 %7785, i64* %3, align 8
  %7786 = inttoptr i64 %7784 to i32*
  %7787 = load i32, i32* %7786, align 4
  %7788 = sext i32 %7787 to i64
  store i64 %7788, i64* %RCX.i1445, align 8
  %7789 = shl nsw i64 %7788, 2
  %7790 = add nsw i64 %7789, -64
  %7791 = add i64 %7790, %7770
  %7792 = add i64 %7772, 16
  store i64 %7792, i64* %3, align 8
  %7793 = inttoptr i64 %7791 to i32*
  %7794 = load i32, i32* %7793, align 4
  %7795 = sub i32 %7782, %7794
  %7796 = add i32 %7795, 32
  %7797 = zext i32 %7796 to i64
  %7798 = shl nuw i64 %7797, 32
  %7799 = ashr i64 %7798, 37
  %7800 = lshr i64 %7799, 1
  %7801 = and i64 %7800, 4294967295
  store i64 %7801, i64* %RAX.i2123.pre-phi, align 8
  %7802 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %7803 = add i64 %7802, 13112
  store i64 %7803, i64* %RCX.i1445, align 8
  %7804 = icmp ugt i64 %7802, -13113
  %7805 = zext i1 %7804 to i8
  store i8 %7805, i8* %14, align 1
  %7806 = trunc i64 %7803 to i32
  %7807 = and i32 %7806, 255
  %7808 = tail call i32 @llvm.ctpop.i32(i32 %7807)
  %7809 = trunc i32 %7808 to i8
  %7810 = and i8 %7809, 1
  %7811 = xor i8 %7810, 1
  store i8 %7811, i8* %21, align 1
  %7812 = xor i64 %7802, 16
  %7813 = xor i64 %7812, %7803
  %7814 = lshr i64 %7813, 4
  %7815 = trunc i64 %7814 to i8
  %7816 = and i8 %7815, 1
  store i8 %7816, i8* %27, align 1
  %7817 = icmp eq i64 %7803, 0
  %7818 = zext i1 %7817 to i8
  store i8 %7818, i8* %30, align 1
  %7819 = lshr i64 %7803, 63
  %7820 = trunc i64 %7819 to i8
  store i8 %7820, i8* %33, align 1
  %7821 = lshr i64 %7802, 63
  %7822 = xor i64 %7819, %7821
  %7823 = add nuw nsw i64 %7822, %7819
  %7824 = icmp eq i64 %7823, 2
  %7825 = zext i1 %7824 to i8
  store i8 %7825, i8* %39, align 1
  %7826 = load i64, i64* %RBP.i, align 8
  %7827 = add i64 %7826, -16
  %7828 = add i64 %7772, 41
  store i64 %7828, i64* %3, align 8
  %7829 = inttoptr i64 %7827 to i32*
  %7830 = load i32, i32* %7829, align 4
  %7831 = sext i32 %7830 to i64
  %7832 = shl nsw i64 %7831, 6
  store i64 %7832, i64* %RDX.i2151, align 8
  %7833 = add i64 %7832, %7803
  store i64 %7833, i64* %RCX.i1445, align 8
  %7834 = icmp ult i64 %7833, %7803
  %7835 = icmp ult i64 %7833, %7832
  %7836 = or i1 %7834, %7835
  %7837 = zext i1 %7836 to i8
  store i8 %7837, i8* %14, align 1
  %7838 = trunc i64 %7833 to i32
  %7839 = and i32 %7838, 255
  %7840 = tail call i32 @llvm.ctpop.i32(i32 %7839)
  %7841 = trunc i32 %7840 to i8
  %7842 = and i8 %7841, 1
  %7843 = xor i8 %7842, 1
  store i8 %7843, i8* %21, align 1
  %7844 = xor i64 %7803, %7833
  %7845 = lshr i64 %7844, 4
  %7846 = trunc i64 %7845 to i8
  %7847 = and i8 %7846, 1
  store i8 %7847, i8* %27, align 1
  %7848 = icmp eq i64 %7833, 0
  %7849 = zext i1 %7848 to i8
  store i8 %7849, i8* %30, align 1
  %7850 = lshr i64 %7833, 63
  %7851 = trunc i64 %7850 to i8
  store i8 %7851, i8* %33, align 1
  %7852 = lshr i64 %7831, 57
  %7853 = and i64 %7852, 1
  %7854 = xor i64 %7850, %7819
  %7855 = xor i64 %7850, %7853
  %7856 = add nuw nsw i64 %7854, %7855
  %7857 = icmp eq i64 %7856, 2
  %7858 = zext i1 %7857 to i8
  store i8 %7858, i8* %39, align 1
  %7859 = add i64 %7826, -28
  %7860 = add i64 %7772, 52
  store i64 %7860, i64* %3, align 8
  %7861 = inttoptr i64 %7859 to i32*
  %7862 = load i32, i32* %7861, align 4
  %7863 = sext i32 %7862 to i64
  store i64 %7863, i64* %RDX.i2151, align 8
  %7864 = shl nsw i64 %7863, 2
  %7865 = add i64 %7864, %7833
  %7866 = load i32, i32* %EAX.i2104.pre-phi, align 4
  %7867 = add i64 %7772, 55
  store i64 %7867, i64* %3, align 8
  %7868 = inttoptr i64 %7865 to i32*
  store i32 %7866, i32* %7868, align 4
  %7869 = load i64, i64* %RBP.i, align 8
  %7870 = add i64 %7869, -20
  %7871 = load i64, i64* %3, align 8
  %7872 = add i64 %7871, 3
  store i64 %7872, i64* %3, align 8
  %7873 = inttoptr i64 %7870 to i32*
  %7874 = load i32, i32* %7873, align 4
  %7875 = add i32 %7874, 1
  %7876 = zext i32 %7875 to i64
  store i64 %7876, i64* %RAX.i2123.pre-phi, align 8
  %7877 = icmp eq i32 %7874, -1
  %7878 = icmp eq i32 %7875, 0
  %7879 = or i1 %7877, %7878
  %7880 = zext i1 %7879 to i8
  store i8 %7880, i8* %14, align 1
  %7881 = and i32 %7875, 255
  %7882 = tail call i32 @llvm.ctpop.i32(i32 %7881)
  %7883 = trunc i32 %7882 to i8
  %7884 = and i8 %7883, 1
  %7885 = xor i8 %7884, 1
  store i8 %7885, i8* %21, align 1
  %7886 = xor i32 %7875, %7874
  %7887 = lshr i32 %7886, 4
  %7888 = trunc i32 %7887 to i8
  %7889 = and i8 %7888, 1
  store i8 %7889, i8* %27, align 1
  %7890 = zext i1 %7878 to i8
  store i8 %7890, i8* %30, align 1
  %7891 = lshr i32 %7875, 31
  %7892 = trunc i32 %7891 to i8
  store i8 %7892, i8* %33, align 1
  %7893 = lshr i32 %7874, 31
  %7894 = xor i32 %7891, %7893
  %7895 = add nuw nsw i32 %7894, %7891
  %7896 = icmp eq i32 %7895, 2
  %7897 = zext i1 %7896 to i8
  store i8 %7897, i8* %39, align 1
  %7898 = add i64 %7871, 9
  store i64 %7898, i64* %3, align 8
  store i32 %7875, i32* %7873, align 4
  %7899 = load i64, i64* %3, align 8
  %7900 = add i64 %7899, -140
  store i64 %7900, i64* %3, align 8
  br label %block_.L_40bba5

block_.L_40bc36:                                  ; preds = %block_.L_40bba5
  %7901 = add i64 %7615, -16
  %7902 = add i64 %7643, 8
  store i64 %7902, i64* %3, align 8
  %7903 = inttoptr i64 %7901 to i32*
  %7904 = load i32, i32* %7903, align 4
  %7905 = add i32 %7904, 1
  %7906 = zext i32 %7905 to i64
  store i64 %7906, i64* %RAX.i2123.pre-phi, align 8
  %7907 = icmp eq i32 %7904, -1
  %7908 = icmp eq i32 %7905, 0
  %7909 = or i1 %7907, %7908
  %7910 = zext i1 %7909 to i8
  store i8 %7910, i8* %14, align 1
  %7911 = and i32 %7905, 255
  %7912 = tail call i32 @llvm.ctpop.i32(i32 %7911)
  %7913 = trunc i32 %7912 to i8
  %7914 = and i8 %7913, 1
  %7915 = xor i8 %7914, 1
  store i8 %7915, i8* %21, align 1
  %7916 = xor i32 %7905, %7904
  %7917 = lshr i32 %7916, 4
  %7918 = trunc i32 %7917 to i8
  %7919 = and i8 %7918, 1
  store i8 %7919, i8* %27, align 1
  %7920 = zext i1 %7908 to i8
  store i8 %7920, i8* %30, align 1
  %7921 = lshr i32 %7905, 31
  %7922 = trunc i32 %7921 to i8
  store i8 %7922, i8* %33, align 1
  %7923 = lshr i32 %7904, 31
  %7924 = xor i32 %7921, %7923
  %7925 = add nuw nsw i32 %7924, %7921
  %7926 = icmp eq i32 %7925, 2
  %7927 = zext i1 %7926 to i8
  store i8 %7927, i8* %39, align 1
  %7928 = add i64 %7643, 14
  store i64 %7928, i64* %3, align 8
  store i32 %7905, i32* %7903, align 4
  %7929 = load i64, i64* %3, align 8
  %7930 = add i64 %7929, -291
  store i64 %7930, i64* %3, align 8
  br label %block_.L_40bb21

block_.L_40bc49:                                  ; preds = %block_.L_40bb21
  %7931 = add i64 %7282, 5
  store i64 %7931, i64* %3, align 8
  br label %block_.L_40bc4e

block_.L_40bc4e:                                  ; preds = %block_.L_40bb0d, %block_.L_40bc49
  %7932 = phi i64 [ %7931, %block_.L_40bc49 ], [ %7249, %block_.L_40bb0d ]
  %7933 = phi i64 [ %7254, %block_.L_40bc49 ], [ %7235, %block_.L_40bb0d ]
  %7934 = add i64 %7933, -84
  %7935 = add i64 %7932, 3
  store i64 %7935, i64* %3, align 8
  %7936 = inttoptr i64 %7934 to i32*
  %7937 = load i32, i32* %7936, align 4
  %7938 = zext i32 %7937 to i64
  store i64 %7938, i64* %RAX.i2123.pre-phi, align 8
  %7939 = load i64, i64* %6, align 8
  %7940 = add i64 %7939, 208
  store i64 %7940, i64* %6, align 8
  %7941 = icmp ugt i64 %7939, -209
  %7942 = zext i1 %7941 to i8
  store i8 %7942, i8* %14, align 1
  %7943 = trunc i64 %7940 to i32
  %7944 = and i32 %7943, 255
  %7945 = tail call i32 @llvm.ctpop.i32(i32 %7944)
  %7946 = trunc i32 %7945 to i8
  %7947 = and i8 %7946, 1
  %7948 = xor i8 %7947, 1
  store i8 %7948, i8* %21, align 1
  %7949 = xor i64 %7939, 16
  %7950 = xor i64 %7949, %7940
  %7951 = lshr i64 %7950, 4
  %7952 = trunc i64 %7951 to i8
  %7953 = and i8 %7952, 1
  store i8 %7953, i8* %27, align 1
  %7954 = icmp eq i64 %7940, 0
  %7955 = zext i1 %7954 to i8
  store i8 %7955, i8* %30, align 1
  %7956 = lshr i64 %7940, 63
  %7957 = trunc i64 %7956 to i8
  store i8 %7957, i8* %33, align 1
  %7958 = lshr i64 %7939, 63
  %7959 = xor i64 %7956, %7958
  %7960 = add nuw nsw i64 %7959, %7956
  %7961 = icmp eq i64 %7960, 2
  %7962 = zext i1 %7961 to i8
  store i8 %7962, i8* %39, align 1
  %7963 = add i64 %7932, 11
  store i64 %7963, i64* %3, align 8
  %7964 = add i64 %7939, 216
  %7965 = inttoptr i64 %7940 to i64*
  %7966 = load i64, i64* %7965, align 8
  store i64 %7966, i64* %RBP.i, align 8
  store i64 %7964, i64* %6, align 8
  %7967 = add i64 %7932, 12
  store i64 %7967, i64* %3, align 8
  %7968 = inttoptr i64 %7964 to i64*
  %7969 = load i64, i64* %7968, align 8
  store i64 %7969, i64* %3, align 8
  %7970 = add i64 %7939, 224
  store i64 %7970, i64* %6, align 8
  ret %struct.Memory* %MEMORY.15
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
define %struct.Memory* @routine_subq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 208
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
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
define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3758__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xc__r8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R8, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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
define %struct.Memory* @routine_addq__r8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x9__0x48__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %8, 9
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x8d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -141
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40ad3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xa__0x48__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xd__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -13
  %10 = icmp ult i32 %8, 13
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_sete__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x8d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -141
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x8d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -141
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %AL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__al___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3738__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 14136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x28__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_addl_0x11bdc__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 72668
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %4, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i32 %4, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %4, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x8e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -142
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40addc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x11c00__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72704
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x8e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -142
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x8e__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -142
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11c0c__rdx__rsi_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 72716
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40ae22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40ae39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %6, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x4b2320___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4924192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11be0__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 72672
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11be0__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 72672
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_addl__0xf___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 15
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -16
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40afd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40afd4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40af5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 13112
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -13113
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %10, %12
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %12, %10
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %10, 31
  %37 = lshr i32 %12, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40aea3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x3338__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 13112
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
  store i64 %12, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x33b8__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 13240
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i32 %11, %8
  %14 = icmp ult i32 %11, %10
  %15 = or i1 %13, %14
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %10, %8
  %25 = xor i32 %24, %11
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %11, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %8, 31
  %37 = lshr i32 %10, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x3378__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 13176
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x33f8__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 13304
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_jmpq_.L_40ae92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40afd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b15b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40b156(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40b0b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jmpq_.L_40affe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40afed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b15b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40b198(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x3338__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 13112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abs_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b278(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b20d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x724be0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 7490528, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6f73a0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6f73a0_type* @G__0x6f73a0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x180___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 384
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 128
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %23, align 1
  %24 = lshr i64 %11, 63
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = shl i64 %3, 32
  %10 = ashr exact i64 %9, 32
  %11 = sext i32 %8 to i64
  %12 = mul nsw i64 %11, %10
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RAX, align 8
  %15 = shl i64 %12, 32
  %16 = ashr exact i64 %15, 32
  %17 = icmp ne i64 %16, %12
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %18, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x340___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 832
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_sarl__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %12 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = shl i64 %4, 32
  %11 = ashr i64 %10, 33
  br label %20

; <label>:12:                                     ; preds = %block_400488
  %13 = and i8 %5, 31
  %14 = zext i8 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = shl i64 %4, 32
  %17 = ashr exact i64 %16, 32
  %18 = ashr i64 %17, %15
  %19 = lshr i64 %18, 1
  br label %20

; <label>:20:                                     ; preds = %12, %9
  %21 = phi i64 [ %19, %12 ], [ %11, %9 ]
  %22 = phi i64 [ %18, %12 ], [ %4, %9 ]
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = trunc i64 %21 to i32
  %26 = and i64 %21, 4294967295
  store i64 %26, i64* %RAX, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = and i32 %25, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %28, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %36 = icmp eq i32 %25, 0
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %35, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %39 = lshr i32 %25, 31
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %38, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1
  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %20, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b273(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70e250___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 7397968, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x722cd0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x722cd0_type* @G__0x722cd0 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_shll__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_subl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
  %36 = xor i32 %35, %34
  %37 = xor i32 %31, %34
  %38 = add nuw nsw i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3338__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 13112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sign(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d4600___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d4600_type* @G__0x6d4600 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R9, align 8
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
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____r9__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %R9, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40b35c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x3338__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 13112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x3338__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 13112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b55b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
  %19 = xor i32 %9, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %9, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %9, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40b466(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b3eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x70d1b0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x180___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 384
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R8, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 128
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %23, align 1
  %24 = lshr i64 %11, 63
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = shl i64 %3, 32
  %10 = ashr exact i64 %9, 32
  %11 = sext i32 %8 to i64
  %12 = mul nsw i64 %11, %10
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RDI, align 8
  %15 = shl i64 %12, 32
  %16 = ashr exact i64 %15, 32
  %17 = icmp ne i64 %16, %12
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %18, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x68__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RDX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__cl___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %12 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = shl i64 %4, 32
  %11 = ashr i64 %10, 33
  br label %20

; <label>:12:                                     ; preds = %block_400488
  %13 = and i8 %5, 31
  %14 = zext i8 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = shl i64 %4, 32
  %17 = ashr exact i64 %16, 32
  %18 = ashr i64 %17, %15
  %19 = lshr i64 %18, 1
  br label %20

; <label>:20:                                     ; preds = %12, %9
  %21 = phi i64 [ %19, %12 ], [ %11, %9 ]
  %22 = phi i64 [ %18, %12 ], [ %4, %9 ]
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = trunc i64 %21 to i32
  %26 = and i64 %21, 4294967295
  store i64 %26, i64* %RDI, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = and i32 %25, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %28, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %36 = icmp eq i32 %25, 0
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %35, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %39 = lshr i32 %25, 31
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %38, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1
  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %20, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3338__rsi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 13112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x3338__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, 13112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b461(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x723b20___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b556(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b4e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x70d1b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x70d1b0_type* @G__0x70d1b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_imulq__0x180___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 384
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 128
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %23, align 1
  %24 = lshr i64 %11, 63
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %27, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = shl i64 %3, 32
  %10 = ashr exact i64 %9, 32
  %11 = sext i32 %8 to i64
  %12 = mul nsw i64 %11, %10
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RCX, align 8
  %15 = shl i64 %12, 32
  %16 = ashr exact i64 %15, 32
  %17 = icmp ne i64 %16, %12
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %18, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RSI, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x3338__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 13112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b551(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x723b20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x723b20_type* @G__0x723b20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40b9c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x4b2360___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4924256
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 2
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0x4b2361___rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 1
  %5 = add i64 %4, 4924257
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40b5d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x3338___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 13112
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -13113
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b718(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b67b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rdx__rsi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = shl i64 %3, 32
  %13 = ashr exact i64 %12, 32
  %14 = sext i32 %11 to i64
  %15 = mul nsw i64 %14, %13
  %16 = trunc i64 %15 to i32
  %17 = and i64 %15, 4294967295
  store i64 %17, i64* %RAX, align 8
  %18 = shl i64 %15, 32
  %19 = ashr exact i64 %18, 32
  %20 = icmp ne i64 %19, %15
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %16, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %21, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b713(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40b985(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b736(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40b73d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40b7d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b980(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40b8c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40b856(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rsi__r8_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = shl i64 %3, 32
  %13 = ashr exact i64 %12, 32
  %14 = sext i32 %11 to i64
  %15 = mul nsw i64 %14, %13
  %16 = trunc i64 %15 to i32
  %17 = and i64 %15, 4294967295
  store i64 %17, i64* %RDI, align 8
  %18 = shl i64 %15, 32
  %19 = ashr exact i64 %18, 32
  %20 = icmp ne i64 %19, %15
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %16, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %21, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b8be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b97b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b924(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = shl i64 %3, 32
  %13 = ashr exact i64 %12, 32
  %14 = sext i32 %11 to i64
  %15 = mul nsw i64 %14, %13
  %16 = trunc i64 %15 to i32
  %17 = and i64 %15, 4294967295
  store i64 %17, i64* %RCX, align 8
  %18 = shl i64 %15, 32
  %19 = ashr exact i64 %18, 32
  %20 = icmp ne i64 %19, %15
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %16, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %21, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xcc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_40b976(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b985(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40b9b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jmpq_.L_40b9bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b562(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40bb0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40bb08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40ba3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b9fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
  store i64 %12, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
  %38 = xor i32 %33, %36
  %39 = xor i32 %33, %37
  %40 = add nuw nsw i32 %38, %39
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40baf5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -64
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x40__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x40__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40ba70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40bafa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40b9ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40bb0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40bc4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40bc49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40bb72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40bb32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40bc36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x20___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 32
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -33
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 37
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40bba5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40bc3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40bb21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40bc4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_addq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -209
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
