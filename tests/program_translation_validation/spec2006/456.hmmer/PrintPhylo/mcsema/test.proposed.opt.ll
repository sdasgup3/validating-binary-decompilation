; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x455ea2_type = type <{ [8 x i8] }>
%G__0x455ebe_type = type <{ [8 x i8] }>
%G__0x455ed5_type = type <{ [8 x i8] }>
%G__0x455ede_type = type <{ [8 x i8] }>
%G__0x455ef3_type = type <{ [8 x i8] }>
%G__0x455f09_type = type <{ [8 x i8] }>
%G__0x455f17_type = type <{ [8 x i8] }>
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
@G__0x455ea2 = global %G__0x455ea2_type zeroinitializer
@G__0x455ebe = global %G__0x455ebe_type zeroinitializer
@G__0x455ed5 = global %G__0x455ed5_type zeroinitializer
@G__0x455ede = global %G__0x455ede_type zeroinitializer
@G__0x455ef3 = global %G__0x455ef3_type zeroinitializer
@G__0x455f09 = global %G__0x455f09_type zeroinitializer
@G__0x455f17 = global %G__0x455f17_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @PrintPhylo(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -136
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 128
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
  %RDI.i64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i64, align 8
  %41 = add i64 %10, 14
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %RSI.i220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RSI.i220, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %RDX.i377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -24
  %51 = load i64, i64* %RDX.i377, align 8
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i430 = bitcast %union.anon* %55 to i32*
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -28
  %58 = load i32, i32* %ECX.i430, align 4
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 3
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %57 to i32*
  store i32 %58, i32* %61, align 4
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -32
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 7
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %63 to i32*
  store i32 0, i32* %66, align 4
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i462 = getelementptr inbounds %union.anon, %union.anon* %67, i64 0, i32 0
  %RCX.i459 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %EAX.i454 = bitcast %union.anon* %67 to i32*
  %AL.i434 = bitcast %union.anon* %67 to i8*
  %R8.i423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9.i420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %69 = bitcast %union.VectorReg* %68 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_406e61

block_.L_406e61:                                  ; preds = %block_.L_407088, %entry
  %70 = phi i64 [ %.pre, %entry ], [ %1276, %block_.L_407088 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %1238, %block_.L_407088 ]
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -32
  %73 = add i64 %70, 3
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RAX.i462, align 8
  %77 = add i64 %71, -28
  %78 = add i64 %70, 6
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = add i32 %80, -1
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %RCX.i459, align 8
  %83 = lshr i32 %81, 31
  %84 = sub i32 %75, %81
  %85 = icmp ult i32 %75, %81
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %14, align 1
  %87 = and i32 %84, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87)
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %21, align 1
  %92 = xor i32 %81, %75
  %93 = xor i32 %92, %84
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %26, align 1
  %97 = icmp eq i32 %84, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %29, align 1
  %99 = lshr i32 %84, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %32, align 1
  %101 = lshr i32 %75, 31
  %102 = xor i32 %83, %101
  %103 = xor i32 %99, %101
  %104 = add nuw nsw i32 %103, %102
  %105 = icmp eq i32 %104, 2
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %38, align 1
  %107 = icmp ne i8 %100, 0
  %108 = xor i1 %107, %105
  %.v = select i1 %108, i64 17, i64 705
  %109 = add i64 %70, %.v
  store i64 %109, i64* %3, align 8
  br i1 %108, label %block_406e72, label %block_.L_407122

block_406e72:                                     ; preds = %block_.L_406e61
  store i64 ptrtoint (%G__0x455ea2_type* @G__0x455ea2 to i64), i64* %RSI.i220, align 8
  %110 = add i64 %71, -8
  %111 = add i64 %109, 14
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RDI.i64, align 8
  %114 = add i64 %109, 17
  store i64 %114, i64* %3, align 8
  %115 = load i32, i32* %74, align 4
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RDX.i377, align 8
  %117 = add i64 %109, 20
  store i64 %117, i64* %3, align 8
  %118 = load i32, i32* %74, align 4
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RAX.i462, align 8
  %120 = add i64 %109, 23
  store i64 %120, i64* %3, align 8
  %121 = load i32, i32* %79, align 4
  %122 = add i32 %121, %118
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RAX.i462, align 8
  %124 = icmp ult i32 %122, %118
  %125 = icmp ult i32 %122, %121
  %126 = or i1 %124, %125
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %14, align 1
  %128 = and i32 %122, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128)
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %21, align 1
  %133 = xor i32 %121, %118
  %134 = xor i32 %133, %122
  %135 = lshr i32 %134, 4
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %26, align 1
  %138 = icmp eq i32 %122, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %29, align 1
  %140 = lshr i32 %122, 31
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %32, align 1
  %142 = lshr i32 %118, 31
  %143 = lshr i32 %121, 31
  %144 = xor i32 %140, %142
  %145 = xor i32 %140, %143
  %146 = add nuw nsw i32 %144, %145
  %147 = icmp eq i32 %146, 2
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %38, align 1
  store i64 %123, i64* %RCX.i459, align 8
  store i8 0, i8* %AL.i434, align 1
  %149 = add i64 %109, -22786
  %150 = add i64 %109, 32
  %151 = load i64, i64* %6, align 8
  %152 = add i64 %151, -8
  %153 = inttoptr i64 %152 to i64*
  store i64 %150, i64* %153, align 8
  store i64 %152, i64* %6, align 8
  store i64 %149, i64* %3, align 8
  %154 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.0)
  %155 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455ebe_type* @G__0x455ebe to i64), i64* %RSI.i220, align 8
  %156 = load i64, i64* %RBP.i, align 8
  %157 = add i64 %156, -8
  %158 = add i64 %155, 14
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i64*
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %RDI.i64, align 8
  %161 = add i64 %156, -24
  %162 = add i64 %155, 18
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %R8.i423, align 8
  %165 = add i64 %156, -32
  %166 = add i64 %155, 22
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = mul nsw i64 %169, 40
  store i64 %170, i64* %R9.i420, align 8
  %171 = lshr i64 %170, 63
  %172 = add i64 %170, %164
  store i64 %172, i64* %R8.i423, align 8
  %173 = icmp ult i64 %172, %164
  %174 = icmp ult i64 %172, %170
  %175 = or i1 %173, %174
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %14, align 1
  %177 = trunc i64 %172 to i32
  %178 = and i32 %177, 255
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178)
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %21, align 1
  %183 = xor i64 %170, %164
  %184 = xor i64 %183, %172
  %185 = lshr i64 %184, 4
  %186 = trunc i64 %185 to i8
  %187 = and i8 %186, 1
  store i8 %187, i8* %26, align 1
  %188 = icmp eq i64 %172, 0
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %29, align 1
  %190 = lshr i64 %172, 63
  %191 = trunc i64 %190 to i8
  store i8 %191, i8* %32, align 1
  %192 = lshr i64 %164, 63
  %193 = xor i64 %190, %192
  %194 = xor i64 %190, %171
  %195 = add nuw nsw i64 %193, %194
  %196 = icmp eq i64 %195, 2
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %38, align 1
  %198 = inttoptr i64 %172 to i32*
  %199 = add i64 %155, 32
  store i64 %199, i64* %3, align 8
  %200 = load i32, i32* %198, align 4
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RCX.i459, align 8
  %202 = add i64 %156, -28
  %203 = add i64 %155, 35
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = sub i32 %200, %205
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RCX.i459, align 8
  %208 = icmp ult i32 %200, %205
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %14, align 1
  %210 = and i32 %206, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210)
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %21, align 1
  %215 = xor i32 %205, %200
  %216 = xor i32 %215, %206
  %217 = lshr i32 %216, 4
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, i8* %26, align 1
  %220 = icmp eq i32 %206, 0
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %29, align 1
  %222 = lshr i32 %206, 31
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %32, align 1
  %224 = lshr i32 %200, 31
  %225 = lshr i32 %205, 31
  %226 = xor i32 %225, %224
  %227 = xor i32 %222, %224
  %228 = add nuw nsw i32 %227, %226
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %38, align 1
  %231 = load i64, i64* %RBP.i, align 8
  %232 = add i64 %231, -24
  %233 = add i64 %155, 39
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i64*
  %235 = load i64, i64* %234, align 8
  store i64 %235, i64* %R8.i423, align 8
  %236 = add i64 %231, -32
  %237 = add i64 %155, 43
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = mul nsw i64 %240, 40
  store i64 %241, i64* %R9.i420, align 8
  %242 = lshr i64 %241, 63
  %243 = add i64 %241, %235
  store i64 %243, i64* %R8.i423, align 8
  %244 = icmp ult i64 %243, %235
  %245 = icmp ult i64 %243, %241
  %246 = or i1 %244, %245
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %14, align 1
  %248 = trunc i64 %243 to i32
  %249 = and i32 %248, 255
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249)
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  store i8 %253, i8* %21, align 1
  %254 = xor i64 %241, %235
  %255 = xor i64 %254, %243
  %256 = lshr i64 %255, 4
  %257 = trunc i64 %256 to i8
  %258 = and i8 %257, 1
  store i8 %258, i8* %26, align 1
  %259 = icmp eq i64 %243, 0
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %29, align 1
  %261 = lshr i64 %243, 63
  %262 = trunc i64 %261 to i8
  store i8 %262, i8* %32, align 1
  %263 = lshr i64 %235, 63
  %264 = xor i64 %261, %263
  %265 = xor i64 %261, %242
  %266 = add nuw nsw i64 %264, %265
  %267 = icmp eq i64 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %38, align 1
  %269 = inttoptr i64 %243 to i32*
  %270 = add i64 %155, 53
  store i64 %270, i64* %3, align 8
  %271 = load i32, i32* %269, align 4
  %272 = add i64 %231, -36
  %273 = add i64 %155, 56
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i32*
  store i32 %271, i32* %274, align 4
  %275 = load i32, i32* %ECX.i430, align 4
  %276 = zext i32 %275 to i64
  %277 = load i64, i64* %3, align 8
  store i64 %276, i64* %RDX.i377, align 8
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -36
  %280 = add i64 %277, 5
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RCX.i459, align 8
  %284 = add i64 %278, -40
  %285 = load i32, i32* %EAX.i454, align 4
  %286 = add i64 %277, 8
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %284 to i32*
  store i32 %285, i32* %287, align 4
  %288 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i434, align 1
  %289 = add i64 %288, -22882
  %290 = add i64 %288, 7
  %291 = load i64, i64* %6, align 8
  %292 = add i64 %291, -8
  %293 = inttoptr i64 %292 to i64*
  store i64 %290, i64* %293, align 8
  store i64 %292, i64* %6, align 8
  store i64 %289, i64* %3, align 8
  %294 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %154)
  %295 = load i64, i64* %RBP.i, align 8
  %296 = add i64 %295, -8
  %297 = load i64, i64* %3, align 8
  %298 = add i64 %297, 4
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %296 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RDI.i64, align 8
  %301 = add i64 %295, -24
  %302 = add i64 %297, 8
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %RSI.i220, align 8
  %305 = add i64 %295, -32
  %306 = add i64 %297, 12
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = mul nsw i64 %309, 40
  store i64 %310, i64* %R8.i423, align 8
  %311 = lshr i64 %310, 63
  %312 = add i64 %310, %304
  store i64 %312, i64* %RSI.i220, align 8
  %313 = icmp ult i64 %312, %304
  %314 = icmp ult i64 %312, %310
  %315 = or i1 %313, %314
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %14, align 1
  %317 = trunc i64 %312 to i32
  %318 = and i32 %317, 255
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318)
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %21, align 1
  %323 = xor i64 %310, %304
  %324 = xor i64 %323, %312
  %325 = lshr i64 %324, 4
  %326 = trunc i64 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %26, align 1
  %328 = icmp eq i64 %312, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %29, align 1
  %330 = lshr i64 %312, 63
  %331 = trunc i64 %330 to i8
  store i8 %331, i8* %32, align 1
  %332 = lshr i64 %304, 63
  %333 = xor i64 %330, %332
  %334 = xor i64 %330, %311
  %335 = add nuw nsw i64 %333, %334
  %336 = icmp eq i64 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %38, align 1
  %338 = add i64 %312, 4
  %339 = add i64 %297, 22
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RCX.i459, align 8
  %343 = add i64 %295, -28
  %344 = add i64 %297, 25
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  %346 = load i32, i32* %345, align 4
  %347 = sub i32 %341, %346
  %348 = icmp ult i32 %341, %346
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %14, align 1
  %350 = and i32 %347, 255
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350)
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %21, align 1
  %355 = xor i32 %346, %341
  %356 = xor i32 %355, %347
  %357 = lshr i32 %356, 4
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %26, align 1
  %360 = icmp eq i32 %347, 0
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %29, align 1
  %362 = lshr i32 %347, 31
  %363 = trunc i32 %362 to i8
  store i8 %363, i8* %32, align 1
  %364 = lshr i32 %341, 31
  %365 = lshr i32 %346, 31
  %366 = xor i32 %365, %364
  %367 = xor i32 %362, %364
  %368 = add nuw nsw i32 %367, %366
  %369 = icmp eq i32 %368, 2
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %38, align 1
  %371 = load i64, i64* %RBP.i, align 8
  %372 = add i64 %371, -44
  %373 = load i32, i32* %EAX.i454, align 4
  %374 = add i64 %297, 28
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %372 to i32*
  store i32 %373, i32* %375, align 4
  %376 = load i64, i64* %RBP.i, align 8
  %377 = add i64 %376, -56
  %378 = load i64, i64* %RDI.i64, align 8
  %379 = load i64, i64* %3, align 8
  %380 = add i64 %379, 4
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %377 to i64*
  store i64 %378, i64* %381, align 8
  %382 = load i64, i64* %3, align 8
  %383 = load i8, i8* %32, align 1
  %384 = icmp ne i8 %383, 0
  %385 = load i8, i8* %38, align 1
  %386 = icmp ne i8 %385, 0
  %387 = xor i1 %384, %386
  %.v8 = select i1 %387, i64 6, i64 35
  %388 = add i64 %382, %.v8
  %389 = load i64, i64* %RBP.i, align 8
  %390 = add i64 %389, -24
  %391 = add i64 %388, 4
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i64*
  %393 = load i64, i64* %392, align 8
  store i64 %393, i64* %RAX.i462, align 8
  %394 = add i64 %389, -32
  %395 = add i64 %388, 8
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = mul nsw i64 %398, 40
  store i64 %399, i64* %RCX.i459, align 8
  %400 = lshr i64 %399, 63
  %401 = add i64 %399, %393
  store i64 %401, i64* %RAX.i462, align 8
  %402 = icmp ult i64 %401, %393
  %403 = icmp ult i64 %401, %399
  %404 = or i1 %402, %403
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %14, align 1
  %406 = trunc i64 %401 to i32
  %407 = and i32 %406, 255
  %408 = tail call i32 @llvm.ctpop.i32(i32 %407)
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  store i8 %411, i8* %21, align 1
  %412 = xor i64 %399, %393
  %413 = xor i64 %412, %401
  %414 = lshr i64 %413, 4
  %415 = trunc i64 %414 to i8
  %416 = and i8 %415, 1
  store i8 %416, i8* %26, align 1
  %417 = icmp eq i64 %401, 0
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %29, align 1
  %419 = lshr i64 %401, 63
  %420 = trunc i64 %419 to i8
  store i8 %420, i8* %32, align 1
  %421 = lshr i64 %393, 63
  %422 = xor i64 %419, %421
  %423 = xor i64 %419, %400
  %424 = add nuw nsw i64 %422, %423
  %425 = icmp eq i64 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %38, align 1
  %427 = add i64 %401, 4
  %428 = add i64 %388, 18
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = zext i32 %430 to i64
  store i64 %431, i64* %RDX.i377, align 8
  br i1 %387, label %block_406eff, label %block_.L_406f1c

block_406eff:                                     ; preds = %block_406e72
  %432 = add i64 %389, -28
  %433 = add i64 %388, 21
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = sub i32 %430, %435
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RDX.i377, align 8
  %438 = icmp ult i32 %430, %435
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %14, align 1
  %440 = and i32 %436, 255
  %441 = tail call i32 @llvm.ctpop.i32(i32 %440)
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  store i8 %444, i8* %21, align 1
  %445 = xor i32 %435, %430
  %446 = xor i32 %445, %436
  %447 = lshr i32 %446, 4
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  store i8 %449, i8* %26, align 1
  %450 = icmp eq i32 %436, 0
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %29, align 1
  %452 = lshr i32 %436, 31
  %453 = trunc i32 %452 to i8
  store i8 %453, i8* %32, align 1
  %454 = lshr i32 %430, 31
  %455 = lshr i32 %435, 31
  %456 = xor i32 %455, %454
  %457 = xor i32 %452, %454
  %458 = add nuw nsw i32 %457, %456
  %459 = icmp eq i32 %458, 2
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %38, align 1
  %461 = add i64 %389, -60
  %462 = add i64 %388, 24
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i32*
  store i32 %436, i32* %463, align 4
  %464 = load i64, i64* %3, align 8
  %465 = add i64 %464, 26
  store i64 %465, i64* %3, align 8
  br label %block_.L_406f31

block_.L_406f1c:                                  ; preds = %block_406e72
  %466 = add i64 %389, -60
  %467 = add i64 %388, 21
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %466 to i32*
  store i32 %430, i32* %468, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_406f31

block_.L_406f31:                                  ; preds = %block_.L_406f1c, %block_406eff
  %469 = phi i64 [ %.pre6, %block_.L_406f1c ], [ %465, %block_406eff ]
  %470 = load i64, i64* %RBP.i, align 8
  %471 = add i64 %470, -60
  %472 = add i64 %469, 3
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i32*
  %474 = load i32, i32* %473, align 4
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RAX.i462, align 8
  %476 = add i64 %470, -24
  %477 = add i64 %469, 7
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i64*
  %479 = load i64, i64* %478, align 8
  store i64 %479, i64* %RCX.i459, align 8
  %480 = add i64 %470, -32
  %481 = add i64 %469, 11
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  %485 = mul nsw i64 %484, 40
  store i64 %485, i64* %RDX.i377, align 8
  %486 = lshr i64 %485, 63
  %487 = add i64 %485, %479
  store i64 %487, i64* %RCX.i459, align 8
  %488 = icmp ult i64 %487, %479
  %489 = icmp ult i64 %487, %485
  %490 = or i1 %488, %489
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %14, align 1
  %492 = trunc i64 %487 to i32
  %493 = and i32 %492, 255
  %494 = tail call i32 @llvm.ctpop.i32(i32 %493)
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = xor i8 %496, 1
  store i8 %497, i8* %21, align 1
  %498 = xor i64 %485, %479
  %499 = xor i64 %498, %487
  %500 = lshr i64 %499, 4
  %501 = trunc i64 %500 to i8
  %502 = and i8 %501, 1
  store i8 %502, i8* %26, align 1
  %503 = icmp eq i64 %487, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %29, align 1
  %505 = lshr i64 %487, 63
  %506 = trunc i64 %505 to i8
  store i8 %506, i8* %32, align 1
  %507 = lshr i64 %479, 63
  %508 = xor i64 %505, %507
  %509 = xor i64 %505, %486
  %510 = add nuw nsw i64 %508, %509
  %511 = icmp eq i64 %510, 2
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %38, align 1
  %513 = add i64 %487, 4
  %514 = add i64 %469, 21
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = zext i32 %516 to i64
  store i64 %517, i64* %RSI.i220, align 8
  %518 = add i64 %470, -28
  %519 = add i64 %469, 24
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = sub i32 %516, %521
  %523 = icmp ult i32 %516, %521
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %14, align 1
  %525 = and i32 %522, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %21, align 1
  %530 = xor i32 %521, %516
  %531 = xor i32 %530, %522
  %532 = lshr i32 %531, 4
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  store i8 %534, i8* %26, align 1
  %535 = icmp eq i32 %522, 0
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %29, align 1
  %537 = lshr i32 %522, 31
  %538 = trunc i32 %537 to i8
  store i8 %538, i8* %32, align 1
  %539 = lshr i32 %516, 31
  %540 = lshr i32 %521, 31
  %541 = xor i32 %540, %539
  %542 = xor i32 %537, %539
  %543 = add nuw nsw i32 %542, %541
  %544 = icmp eq i32 %543, 2
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %38, align 1
  %546 = load i64, i64* %RBP.i, align 8
  %547 = add i64 %546, -64
  %548 = load i32, i32* %EAX.i454, align 4
  %549 = add i64 %469, 27
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %547 to i32*
  store i32 %548, i32* %550, align 4
  %551 = load i64, i64* %3, align 8
  %552 = load i8, i8* %32, align 1
  %553 = icmp ne i8 %552, 0
  %554 = load i8, i8* %38, align 1
  %555 = icmp ne i8 %554, 0
  %556 = xor i1 %553, %555
  %.v9 = select i1 %556, i64 6, i64 56
  %557 = add i64 %551, %.v9
  store i64 %557, i64* %3, align 8
  br i1 %556, label %block_406f52, label %block_.L_406f84

block_406f52:                                     ; preds = %block_.L_406f31
  %558 = load i64, i64* %RBP.i, align 8
  %559 = add i64 %558, -16
  %560 = add i64 %557, 4
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %559 to i64*
  %562 = load i64, i64* %561, align 8
  store i64 %562, i64* %RAX.i462, align 8
  %563 = add i64 %562, 40
  %564 = add i64 %557, 8
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i64*
  %566 = load i64, i64* %565, align 8
  store i64 %566, i64* %RAX.i462, align 8
  %567 = add i64 %558, -24
  %568 = add i64 %557, 12
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i64*
  %570 = load i64, i64* %569, align 8
  store i64 %570, i64* %RCX.i459, align 8
  %571 = add i64 %558, -32
  %572 = add i64 %557, 16
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = sext i32 %574 to i64
  %576 = mul nsw i64 %575, 40
  store i64 %576, i64* %RDX.i377, align 8
  %577 = lshr i64 %576, 63
  %578 = add i64 %576, %570
  store i64 %578, i64* %RCX.i459, align 8
  %579 = icmp ult i64 %578, %570
  %580 = icmp ult i64 %578, %576
  %581 = or i1 %579, %580
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %14, align 1
  %583 = trunc i64 %578 to i32
  %584 = and i32 %583, 255
  %585 = tail call i32 @llvm.ctpop.i32(i32 %584)
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  %588 = xor i8 %587, 1
  store i8 %588, i8* %21, align 1
  %589 = xor i64 %576, %570
  %590 = xor i64 %589, %578
  %591 = lshr i64 %590, 4
  %592 = trunc i64 %591 to i8
  %593 = and i8 %592, 1
  store i8 %593, i8* %26, align 1
  %594 = icmp eq i64 %578, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %29, align 1
  %596 = lshr i64 %578, 63
  %597 = trunc i64 %596 to i8
  store i8 %597, i8* %32, align 1
  %598 = lshr i64 %570, 63
  %599 = xor i64 %596, %598
  %600 = xor i64 %596, %577
  %601 = add nuw nsw i64 %599, %600
  %602 = icmp eq i64 %601, 2
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %38, align 1
  %604 = add i64 %578, 4
  %605 = add i64 %557, 27
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i32*
  %607 = load i32, i32* %606, align 4
  %608 = sext i32 %607 to i64
  %609 = mul nsw i64 %608, 360
  store i64 %609, i64* %RCX.i459, align 8
  %610 = load i64, i64* %RAX.i462, align 8
  %611 = add i64 %609, %610
  %612 = lshr i64 %611, 63
  %613 = add i64 %611, 4
  store i64 %613, i64* %RAX.i462, align 8
  %614 = icmp ugt i64 %611, -5
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %14, align 1
  %616 = trunc i64 %613 to i32
  %617 = and i32 %616, 255
  %618 = tail call i32 @llvm.ctpop.i32(i32 %617)
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  %621 = xor i8 %620, 1
  store i8 %621, i8* %21, align 1
  %622 = xor i64 %613, %611
  %623 = lshr i64 %622, 4
  %624 = trunc i64 %623 to i8
  %625 = and i8 %624, 1
  store i8 %625, i8* %26, align 1
  %626 = icmp eq i64 %613, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %29, align 1
  %628 = lshr i64 %613, 63
  %629 = trunc i64 %628 to i8
  store i8 %629, i8* %32, align 1
  %630 = xor i64 %628, %612
  %631 = add nuw nsw i64 %630, %628
  %632 = icmp eq i64 %631, 2
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %38, align 1
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -72
  %636 = add i64 %557, 45
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i64*
  store i64 %613, i64* %637, align 8
  %638 = load i64, i64* %3, align 8
  %639 = add i64 %638, 24
  br label %block_.L_406f97

block_.L_406f84:                                  ; preds = %block_.L_406f31
  store i64 ptrtoint (%G__0x455ed5_type* @G__0x455ed5 to i64), i64* %RAX.i462, align 8
  %640 = load i64, i64* %RBP.i, align 8
  %641 = add i64 %640, -72
  %642 = add i64 %557, 14
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i64*
  store i64 ptrtoint (%G__0x455ed5_type* @G__0x455ed5 to i64), i64* %643, align 8
  %644 = load i64, i64* %3, align 8
  %645 = add i64 %644, 5
  store i64 %645, i64* %3, align 8
  br label %block_.L_406f97

block_.L_406f97:                                  ; preds = %block_.L_406f84, %block_406f52
  %storemerge = phi i64 [ %639, %block_406f52 ], [ %645, %block_.L_406f84 ]
  %646 = load i64, i64* %RBP.i, align 8
  %647 = add i64 %646, -72
  %648 = add i64 %storemerge, 4
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i64*
  %650 = load i64, i64* %649, align 8
  store i64 %650, i64* %RAX.i462, align 8
  store i64 ptrtoint (%G__0x455ede_type* @G__0x455ede to i64), i64* %RSI.i220, align 8
  %651 = add i64 %646, -24
  %652 = add i64 %storemerge, 18
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i64*
  %654 = load i64, i64* %653, align 8
  store i64 %654, i64* %RCX.i459, align 8
  %655 = add i64 %646, -32
  %656 = add i64 %storemerge, 22
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i32*
  %658 = load i32, i32* %657, align 4
  %659 = sext i32 %658 to i64
  %660 = mul nsw i64 %659, 40
  store i64 %660, i64* %RDX.i377, align 8
  %661 = lshr i64 %660, 63
  %662 = add i64 %660, %654
  store i64 %662, i64* %RCX.i459, align 8
  %663 = icmp ult i64 %662, %654
  %664 = icmp ult i64 %662, %660
  %665 = or i1 %663, %664
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %14, align 1
  %667 = trunc i64 %662 to i32
  %668 = and i32 %667, 255
  %669 = tail call i32 @llvm.ctpop.i32(i32 %668)
  %670 = trunc i32 %669 to i8
  %671 = and i8 %670, 1
  %672 = xor i8 %671, 1
  store i8 %672, i8* %21, align 1
  %673 = xor i64 %660, %654
  %674 = xor i64 %673, %662
  %675 = lshr i64 %674, 4
  %676 = trunc i64 %675 to i8
  %677 = and i8 %676, 1
  store i8 %677, i8* %26, align 1
  %678 = icmp eq i64 %662, 0
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %29, align 1
  %680 = lshr i64 %662, 63
  %681 = trunc i64 %680 to i8
  store i8 %681, i8* %32, align 1
  %682 = lshr i64 %654, 63
  %683 = xor i64 %680, %682
  %684 = xor i64 %680, %661
  %685 = add nuw nsw i64 %683, %684
  %686 = icmp eq i64 %685, 2
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %38, align 1
  %688 = add i64 %662, 16
  %689 = add i64 %storemerge, 34
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to float*
  %691 = load float, float* %690, align 4
  %692 = fpext float %691 to double
  store double %692, double* %69, align 1
  %693 = add i64 %646, -56
  %694 = add i64 %storemerge, 38
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i64*
  %696 = load i64, i64* %695, align 8
  store i64 %696, i64* %RDI.i64, align 8
  %697 = add i64 %646, -64
  %698 = add i64 %storemerge, 41
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i32*
  %700 = load i32, i32* %699, align 4
  %701 = zext i32 %700 to i64
  store i64 %701, i64* %RDX.i377, align 8
  store i64 %650, i64* %RCX.i459, align 8
  store i8 1, i8* %AL.i434, align 1
  %702 = add i64 %storemerge, -23079
  %703 = add i64 %storemerge, 51
  %704 = load i64, i64* %6, align 8
  %705 = add i64 %704, -8
  %706 = inttoptr i64 %705 to i64*
  store i64 %703, i64* %706, align 8
  store i64 %705, i64* %6, align 8
  store i64 %702, i64* %3, align 8
  %707 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %294)
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -8
  %710 = load i64, i64* %3, align 8
  %711 = add i64 %710, 4
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %709 to i64*
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %RDI.i64, align 8
  %714 = add i64 %708, -24
  %715 = add i64 %710, 8
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i64*
  %717 = load i64, i64* %716, align 8
  store i64 %717, i64* %RCX.i459, align 8
  %718 = add i64 %708, -32
  %719 = add i64 %710, 12
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i32*
  %721 = load i32, i32* %720, align 4
  %722 = sext i32 %721 to i64
  %723 = mul nsw i64 %722, 40
  store i64 %723, i64* %RSI.i220, align 8
  %724 = lshr i64 %723, 63
  %725 = add i64 %723, %717
  store i64 %725, i64* %RCX.i459, align 8
  %726 = icmp ult i64 %725, %717
  %727 = icmp ult i64 %725, %723
  %728 = or i1 %726, %727
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %14, align 1
  %730 = trunc i64 %725 to i32
  %731 = and i32 %730, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %21, align 1
  %736 = xor i64 %723, %717
  %737 = xor i64 %736, %725
  %738 = lshr i64 %737, 4
  %739 = trunc i64 %738 to i8
  %740 = and i8 %739, 1
  store i8 %740, i8* %26, align 1
  %741 = icmp eq i64 %725, 0
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %29, align 1
  %743 = lshr i64 %725, 63
  %744 = trunc i64 %743 to i8
  store i8 %744, i8* %32, align 1
  %745 = lshr i64 %717, 63
  %746 = xor i64 %743, %745
  %747 = xor i64 %743, %724
  %748 = add nuw nsw i64 %746, %747
  %749 = icmp eq i64 %748, 2
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %38, align 1
  %751 = add i64 %725, 8
  %752 = add i64 %710, 22
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i32*
  %754 = load i32, i32* %753, align 4
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %RDX.i377, align 8
  %756 = add i64 %708, -28
  %757 = add i64 %710, 25
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = sub i32 %754, %759
  %761 = icmp ult i32 %754, %759
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %14, align 1
  %763 = and i32 %760, 255
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %21, align 1
  %768 = xor i32 %759, %754
  %769 = xor i32 %768, %760
  %770 = lshr i32 %769, 4
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  store i8 %772, i8* %26, align 1
  %773 = icmp eq i32 %760, 0
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %29, align 1
  %775 = lshr i32 %760, 31
  %776 = trunc i32 %775 to i8
  store i8 %776, i8* %32, align 1
  %777 = lshr i32 %754, 31
  %778 = lshr i32 %759, 31
  %779 = xor i32 %778, %777
  %780 = xor i32 %775, %777
  %781 = add nuw nsw i32 %780, %779
  %782 = icmp eq i32 %781, 2
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %38, align 1
  %784 = load i64, i64* %RBP.i, align 8
  %785 = add i64 %784, -76
  %786 = load i32, i32* %EAX.i454, align 4
  %787 = add i64 %710, 28
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %785 to i32*
  store i32 %786, i32* %788, align 4
  %789 = load i64, i64* %RBP.i, align 8
  %790 = add i64 %789, -88
  %791 = load i64, i64* %RDI.i64, align 8
  %792 = load i64, i64* %3, align 8
  %793 = add i64 %792, 4
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %790 to i64*
  store i64 %791, i64* %794, align 8
  %795 = load i64, i64* %3, align 8
  %796 = load i8, i8* %32, align 1
  %797 = icmp ne i8 %796, 0
  %798 = load i8, i8* %38, align 1
  %799 = icmp ne i8 %798, 0
  %800 = xor i1 %797, %799
  %.v10 = select i1 %800, i64 6, i64 35
  %801 = add i64 %795, %.v10
  %802 = load i64, i64* %RBP.i, align 8
  %803 = add i64 %802, -24
  %804 = add i64 %801, 4
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RAX.i462, align 8
  %807 = add i64 %802, -32
  %808 = add i64 %801, 8
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = sext i32 %810 to i64
  %812 = mul nsw i64 %811, 40
  store i64 %812, i64* %RCX.i459, align 8
  %813 = lshr i64 %812, 63
  %814 = add i64 %812, %806
  store i64 %814, i64* %RAX.i462, align 8
  %815 = icmp ult i64 %814, %806
  %816 = icmp ult i64 %814, %812
  %817 = or i1 %815, %816
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %14, align 1
  %819 = trunc i64 %814 to i32
  %820 = and i32 %819, 255
  %821 = tail call i32 @llvm.ctpop.i32(i32 %820)
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %21, align 1
  %825 = xor i64 %812, %806
  %826 = xor i64 %825, %814
  %827 = lshr i64 %826, 4
  %828 = trunc i64 %827 to i8
  %829 = and i8 %828, 1
  store i8 %829, i8* %26, align 1
  %830 = icmp eq i64 %814, 0
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %29, align 1
  %832 = lshr i64 %814, 63
  %833 = trunc i64 %832 to i8
  store i8 %833, i8* %32, align 1
  %834 = lshr i64 %806, 63
  %835 = xor i64 %832, %834
  %836 = xor i64 %832, %813
  %837 = add nuw nsw i64 %835, %836
  %838 = icmp eq i64 %837, 2
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %38, align 1
  %840 = add i64 %814, 8
  %841 = add i64 %801, 18
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %840 to i32*
  %843 = load i32, i32* %842, align 4
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RDX.i377, align 8
  br i1 %800, label %block_406ff0, label %block_.L_40700d

block_406ff0:                                     ; preds = %block_.L_406f97
  %845 = add i64 %802, -28
  %846 = add i64 %801, 21
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = sub i32 %843, %848
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RDX.i377, align 8
  %851 = icmp ult i32 %843, %848
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %14, align 1
  %853 = and i32 %849, 255
  %854 = tail call i32 @llvm.ctpop.i32(i32 %853)
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = xor i8 %856, 1
  store i8 %857, i8* %21, align 1
  %858 = xor i32 %848, %843
  %859 = xor i32 %858, %849
  %860 = lshr i32 %859, 4
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %26, align 1
  %863 = icmp eq i32 %849, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %29, align 1
  %865 = lshr i32 %849, 31
  %866 = trunc i32 %865 to i8
  store i8 %866, i8* %32, align 1
  %867 = lshr i32 %843, 31
  %868 = lshr i32 %848, 31
  %869 = xor i32 %868, %867
  %870 = xor i32 %865, %867
  %871 = add nuw nsw i32 %870, %869
  %872 = icmp eq i32 %871, 2
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %38, align 1
  %874 = add i64 %802, -92
  %875 = add i64 %801, 24
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i32*
  store i32 %849, i32* %876, align 4
  %877 = load i64, i64* %3, align 8
  %878 = add i64 %877, 26
  store i64 %878, i64* %3, align 8
  br label %block_.L_407022

block_.L_40700d:                                  ; preds = %block_.L_406f97
  %879 = add i64 %802, -92
  %880 = add i64 %801, 21
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to i32*
  store i32 %843, i32* %881, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_407022

block_.L_407022:                                  ; preds = %block_.L_40700d, %block_406ff0
  %882 = phi i64 [ %.pre7, %block_.L_40700d ], [ %878, %block_406ff0 ]
  %883 = load i64, i64* %RBP.i, align 8
  %884 = add i64 %883, -92
  %885 = add i64 %882, 3
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i32*
  %887 = load i32, i32* %886, align 4
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RAX.i462, align 8
  %889 = add i64 %883, -24
  %890 = add i64 %882, 7
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i64*
  %892 = load i64, i64* %891, align 8
  store i64 %892, i64* %RCX.i459, align 8
  %893 = add i64 %883, -32
  %894 = add i64 %882, 11
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i32*
  %896 = load i32, i32* %895, align 4
  %897 = sext i32 %896 to i64
  %898 = mul nsw i64 %897, 40
  store i64 %898, i64* %RDX.i377, align 8
  %899 = lshr i64 %898, 63
  %900 = add i64 %898, %892
  store i64 %900, i64* %RCX.i459, align 8
  %901 = icmp ult i64 %900, %892
  %902 = icmp ult i64 %900, %898
  %903 = or i1 %901, %902
  %904 = zext i1 %903 to i8
  store i8 %904, i8* %14, align 1
  %905 = trunc i64 %900 to i32
  %906 = and i32 %905, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906)
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %21, align 1
  %911 = xor i64 %898, %892
  %912 = xor i64 %911, %900
  %913 = lshr i64 %912, 4
  %914 = trunc i64 %913 to i8
  %915 = and i8 %914, 1
  store i8 %915, i8* %26, align 1
  %916 = icmp eq i64 %900, 0
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %29, align 1
  %918 = lshr i64 %900, 63
  %919 = trunc i64 %918 to i8
  store i8 %919, i8* %32, align 1
  %920 = lshr i64 %892, 63
  %921 = xor i64 %918, %920
  %922 = xor i64 %918, %899
  %923 = add nuw nsw i64 %921, %922
  %924 = icmp eq i64 %923, 2
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %38, align 1
  %926 = add i64 %900, 8
  %927 = add i64 %882, 21
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %926 to i32*
  %929 = load i32, i32* %928, align 4
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RSI.i220, align 8
  %931 = add i64 %883, -28
  %932 = add i64 %882, 24
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i32*
  %934 = load i32, i32* %933, align 4
  %935 = sub i32 %929, %934
  %936 = icmp ult i32 %929, %934
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %14, align 1
  %938 = and i32 %935, 255
  %939 = tail call i32 @llvm.ctpop.i32(i32 %938)
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  store i8 %942, i8* %21, align 1
  %943 = xor i32 %934, %929
  %944 = xor i32 %943, %935
  %945 = lshr i32 %944, 4
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  store i8 %947, i8* %26, align 1
  %948 = icmp eq i32 %935, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %29, align 1
  %950 = lshr i32 %935, 31
  %951 = trunc i32 %950 to i8
  store i8 %951, i8* %32, align 1
  %952 = lshr i32 %929, 31
  %953 = lshr i32 %934, 31
  %954 = xor i32 %953, %952
  %955 = xor i32 %950, %952
  %956 = add nuw nsw i32 %955, %954
  %957 = icmp eq i32 %956, 2
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %38, align 1
  %959 = load i64, i64* %RBP.i, align 8
  %960 = add i64 %959, -96
  %961 = load i32, i32* %EAX.i454, align 4
  %962 = add i64 %882, 27
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %960 to i32*
  store i32 %961, i32* %963, align 4
  %964 = load i64, i64* %3, align 8
  %965 = load i8, i8* %32, align 1
  %966 = icmp ne i8 %965, 0
  %967 = load i8, i8* %38, align 1
  %968 = icmp ne i8 %967, 0
  %969 = xor i1 %966, %968
  %.v11 = select i1 %969, i64 6, i64 56
  %970 = add i64 %964, %.v11
  store i64 %970, i64* %3, align 8
  br i1 %969, label %block_407043, label %block_.L_407075

block_407043:                                     ; preds = %block_.L_407022
  %971 = load i64, i64* %RBP.i, align 8
  %972 = add i64 %971, -16
  %973 = add i64 %970, 4
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i64*
  %975 = load i64, i64* %974, align 8
  store i64 %975, i64* %RAX.i462, align 8
  %976 = add i64 %975, 40
  %977 = add i64 %970, 8
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to i64*
  %979 = load i64, i64* %978, align 8
  store i64 %979, i64* %RAX.i462, align 8
  %980 = add i64 %971, -24
  %981 = add i64 %970, 12
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i64*
  %983 = load i64, i64* %982, align 8
  store i64 %983, i64* %RCX.i459, align 8
  %984 = add i64 %971, -32
  %985 = add i64 %970, 16
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i32*
  %987 = load i32, i32* %986, align 4
  %988 = sext i32 %987 to i64
  %989 = mul nsw i64 %988, 40
  store i64 %989, i64* %RDX.i377, align 8
  %990 = lshr i64 %989, 63
  %991 = add i64 %989, %983
  store i64 %991, i64* %RCX.i459, align 8
  %992 = icmp ult i64 %991, %983
  %993 = icmp ult i64 %991, %989
  %994 = or i1 %992, %993
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %14, align 1
  %996 = trunc i64 %991 to i32
  %997 = and i32 %996, 255
  %998 = tail call i32 @llvm.ctpop.i32(i32 %997)
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = xor i8 %1000, 1
  store i8 %1001, i8* %21, align 1
  %1002 = xor i64 %989, %983
  %1003 = xor i64 %1002, %991
  %1004 = lshr i64 %1003, 4
  %1005 = trunc i64 %1004 to i8
  %1006 = and i8 %1005, 1
  store i8 %1006, i8* %26, align 1
  %1007 = icmp eq i64 %991, 0
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %29, align 1
  %1009 = lshr i64 %991, 63
  %1010 = trunc i64 %1009 to i8
  store i8 %1010, i8* %32, align 1
  %1011 = lshr i64 %983, 63
  %1012 = xor i64 %1009, %1011
  %1013 = xor i64 %1009, %990
  %1014 = add nuw nsw i64 %1012, %1013
  %1015 = icmp eq i64 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %38, align 1
  %1017 = add i64 %991, 8
  %1018 = add i64 %970, 27
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  %1020 = load i32, i32* %1019, align 4
  %1021 = sext i32 %1020 to i64
  %1022 = mul nsw i64 %1021, 360
  store i64 %1022, i64* %RCX.i459, align 8
  %1023 = load i64, i64* %RAX.i462, align 8
  %1024 = add i64 %1022, %1023
  %1025 = lshr i64 %1024, 63
  %1026 = add i64 %1024, 4
  store i64 %1026, i64* %RAX.i462, align 8
  %1027 = icmp ugt i64 %1024, -5
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %14, align 1
  %1029 = trunc i64 %1026 to i32
  %1030 = and i32 %1029, 255
  %1031 = tail call i32 @llvm.ctpop.i32(i32 %1030)
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  %1034 = xor i8 %1033, 1
  store i8 %1034, i8* %21, align 1
  %1035 = xor i64 %1026, %1024
  %1036 = lshr i64 %1035, 4
  %1037 = trunc i64 %1036 to i8
  %1038 = and i8 %1037, 1
  store i8 %1038, i8* %26, align 1
  %1039 = icmp eq i64 %1026, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %29, align 1
  %1041 = lshr i64 %1026, 63
  %1042 = trunc i64 %1041 to i8
  store i8 %1042, i8* %32, align 1
  %1043 = xor i64 %1041, %1025
  %1044 = add nuw nsw i64 %1043, %1041
  %1045 = icmp eq i64 %1044, 2
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %38, align 1
  %1047 = load i64, i64* %RBP.i, align 8
  %1048 = add i64 %1047, -104
  %1049 = add i64 %970, 45
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i64*
  store i64 %1026, i64* %1050, align 8
  %1051 = load i64, i64* %3, align 8
  %1052 = add i64 %1051, 24
  br label %block_.L_407088

block_.L_407075:                                  ; preds = %block_.L_407022
  store i64 ptrtoint (%G__0x455ed5_type* @G__0x455ed5 to i64), i64* %RAX.i462, align 8
  %1053 = load i64, i64* %RBP.i, align 8
  %1054 = add i64 %1053, -104
  %1055 = add i64 %970, 14
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i64*
  store i64 ptrtoint (%G__0x455ed5_type* @G__0x455ed5 to i64), i64* %1056, align 8
  %1057 = load i64, i64* %3, align 8
  %1058 = add i64 %1057, 5
  store i64 %1058, i64* %3, align 8
  br label %block_.L_407088

block_.L_407088:                                  ; preds = %block_.L_407075, %block_407043
  %storemerge5 = phi i64 [ %1052, %block_407043 ], [ %1058, %block_.L_407075 ]
  %1059 = load i64, i64* %RBP.i, align 8
  %1060 = add i64 %1059, -104
  %1061 = add i64 %storemerge5, 4
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i64*
  %1063 = load i64, i64* %1062, align 8
  store i64 %1063, i64* %RAX.i462, align 8
  store i64 ptrtoint (%G__0x455ef3_type* @G__0x455ef3 to i64), i64* %RSI.i220, align 8
  %1064 = add i64 %1059, -24
  %1065 = add i64 %storemerge5, 18
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i64*
  %1067 = load i64, i64* %1066, align 8
  store i64 %1067, i64* %RCX.i459, align 8
  %1068 = add i64 %1059, -32
  %1069 = add i64 %storemerge5, 22
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i32*
  %1071 = load i32, i32* %1070, align 4
  %1072 = sext i32 %1071 to i64
  %1073 = mul nsw i64 %1072, 40
  store i64 %1073, i64* %RDX.i377, align 8
  %1074 = lshr i64 %1073, 63
  %1075 = add i64 %1073, %1067
  store i64 %1075, i64* %RCX.i459, align 8
  %1076 = icmp ult i64 %1075, %1067
  %1077 = icmp ult i64 %1075, %1073
  %1078 = or i1 %1076, %1077
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %14, align 1
  %1080 = trunc i64 %1075 to i32
  %1081 = and i32 %1080, 255
  %1082 = tail call i32 @llvm.ctpop.i32(i32 %1081)
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  %1085 = xor i8 %1084, 1
  store i8 %1085, i8* %21, align 1
  %1086 = xor i64 %1073, %1067
  %1087 = xor i64 %1086, %1075
  %1088 = lshr i64 %1087, 4
  %1089 = trunc i64 %1088 to i8
  %1090 = and i8 %1089, 1
  store i8 %1090, i8* %26, align 1
  %1091 = icmp eq i64 %1075, 0
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %29, align 1
  %1093 = lshr i64 %1075, 63
  %1094 = trunc i64 %1093 to i8
  store i8 %1094, i8* %32, align 1
  %1095 = lshr i64 %1067, 63
  %1096 = xor i64 %1093, %1095
  %1097 = xor i64 %1093, %1074
  %1098 = add nuw nsw i64 %1096, %1097
  %1099 = icmp eq i64 %1098, 2
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %38, align 1
  %1101 = add i64 %1075, 20
  %1102 = add i64 %storemerge5, 34
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to float*
  %1104 = load float, float* %1103, align 4
  %1105 = fpext float %1104 to double
  store double %1105, double* %69, align 1
  %1106 = add i64 %1059, -88
  %1107 = add i64 %storemerge5, 38
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i64*
  %1109 = load i64, i64* %1108, align 8
  store i64 %1109, i64* %RDI.i64, align 8
  %1110 = add i64 %1059, -96
  %1111 = add i64 %storemerge5, 41
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = zext i32 %1113 to i64
  store i64 %1114, i64* %RDX.i377, align 8
  store i64 %1063, i64* %RCX.i459, align 8
  store i8 1, i8* %AL.i434, align 1
  %1115 = add i64 %storemerge5, -23320
  %1116 = add i64 %storemerge5, 51
  %1117 = load i64, i64* %6, align 8
  %1118 = add i64 %1117, -8
  %1119 = inttoptr i64 %1118 to i64*
  store i64 %1116, i64* %1119, align 8
  store i64 %1118, i64* %6, align 8
  store i64 %1115, i64* %3, align 8
  %1120 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %707)
  %1121 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f09_type* @G__0x455f09 to i64), i64* %RSI.i220, align 8
  %1122 = load i64, i64* %RBP.i, align 8
  %1123 = add i64 %1122, -8
  %1124 = add i64 %1121, 14
  store i64 %1124, i64* %3, align 8
  %1125 = inttoptr i64 %1123 to i64*
  %1126 = load i64, i64* %1125, align 8
  store i64 %1126, i64* %RDI.i64, align 8
  %1127 = add i64 %1122, -24
  %1128 = add i64 %1121, 18
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i64*
  %1130 = load i64, i64* %1129, align 8
  store i64 %1130, i64* %RCX.i459, align 8
  %1131 = add i64 %1122, -32
  %1132 = add i64 %1121, 22
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = sext i32 %1134 to i64
  %1136 = mul nsw i64 %1135, 40
  store i64 %1136, i64* %R8.i423, align 8
  %1137 = lshr i64 %1136, 63
  %1138 = add i64 %1136, %1130
  store i64 %1138, i64* %RCX.i459, align 8
  %1139 = icmp ult i64 %1138, %1130
  %1140 = icmp ult i64 %1138, %1136
  %1141 = or i1 %1139, %1140
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %14, align 1
  %1143 = trunc i64 %1138 to i32
  %1144 = and i32 %1143, 255
  %1145 = tail call i32 @llvm.ctpop.i32(i32 %1144)
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  store i8 %1148, i8* %21, align 1
  %1149 = xor i64 %1136, %1130
  %1150 = xor i64 %1149, %1138
  %1151 = lshr i64 %1150, 4
  %1152 = trunc i64 %1151 to i8
  %1153 = and i8 %1152, 1
  store i8 %1153, i8* %26, align 1
  %1154 = icmp eq i64 %1138, 0
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %29, align 1
  %1156 = lshr i64 %1138, 63
  %1157 = trunc i64 %1156 to i8
  store i8 %1157, i8* %32, align 1
  %1158 = lshr i64 %1130, 63
  %1159 = xor i64 %1156, %1158
  %1160 = xor i64 %1156, %1137
  %1161 = add nuw nsw i64 %1159, %1160
  %1162 = icmp eq i64 %1161, 2
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %38, align 1
  %1164 = add i64 %1138, 12
  %1165 = add i64 %1121, 34
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to float*
  %1167 = load float, float* %1166, align 4
  %1168 = fpext float %1167 to double
  store double %1168, double* %69, align 1
  %1169 = add i64 %1122, -108
  %1170 = load i32, i32* %EAX.i454, align 4
  %1171 = add i64 %1121, 37
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1169 to i32*
  store i32 %1170, i32* %1172, align 4
  %1173 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i434, align 1
  %1174 = add i64 %1173, -23408
  %1175 = add i64 %1173, 7
  %1176 = load i64, i64* %6, align 8
  %1177 = add i64 %1176, -8
  %1178 = inttoptr i64 %1177 to i64*
  store i64 %1175, i64* %1178, align 8
  store i64 %1177, i64* %6, align 8
  store i64 %1174, i64* %3, align 8
  %1179 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1120)
  %1180 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f17_type* @G__0x455f17 to i64), i64* %RSI.i220, align 8
  %1181 = load i64, i64* %RBP.i, align 8
  %1182 = add i64 %1181, -8
  %1183 = add i64 %1180, 14
  store i64 %1183, i64* %3, align 8
  %1184 = inttoptr i64 %1182 to i64*
  %1185 = load i64, i64* %1184, align 8
  store i64 %1185, i64* %RDI.i64, align 8
  %1186 = add i64 %1181, -24
  %1187 = add i64 %1180, 18
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i64*
  %1189 = load i64, i64* %1188, align 8
  store i64 %1189, i64* %RCX.i459, align 8
  %1190 = add i64 %1181, -32
  %1191 = add i64 %1180, 22
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1190 to i32*
  %1193 = load i32, i32* %1192, align 4
  %1194 = sext i32 %1193 to i64
  %1195 = mul nsw i64 %1194, 40
  store i64 %1195, i64* %R8.i423, align 8
  %1196 = lshr i64 %1195, 63
  %1197 = add i64 %1195, %1189
  store i64 %1197, i64* %RCX.i459, align 8
  %1198 = icmp ult i64 %1197, %1189
  %1199 = icmp ult i64 %1197, %1195
  %1200 = or i1 %1198, %1199
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %14, align 1
  %1202 = trunc i64 %1197 to i32
  %1203 = and i32 %1202, 255
  %1204 = tail call i32 @llvm.ctpop.i32(i32 %1203)
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  store i8 %1207, i8* %21, align 1
  %1208 = xor i64 %1195, %1189
  %1209 = xor i64 %1208, %1197
  %1210 = lshr i64 %1209, 4
  %1211 = trunc i64 %1210 to i8
  %1212 = and i8 %1211, 1
  store i8 %1212, i8* %26, align 1
  %1213 = icmp eq i64 %1197, 0
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %29, align 1
  %1215 = lshr i64 %1197, 63
  %1216 = trunc i64 %1215 to i8
  store i8 %1216, i8* %32, align 1
  %1217 = lshr i64 %1189, 63
  %1218 = xor i64 %1215, %1217
  %1219 = xor i64 %1215, %1196
  %1220 = add nuw nsw i64 %1218, %1219
  %1221 = icmp eq i64 %1220, 2
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %38, align 1
  %1223 = add i64 %1197, 32
  %1224 = add i64 %1180, 32
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %RDX.i377, align 8
  %1228 = add i64 %1181, -112
  %1229 = load i32, i32* %EAX.i454, align 4
  %1230 = add i64 %1180, 35
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1228 to i32*
  store i32 %1229, i32* %1231, align 4
  %1232 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i434, align 1
  %1233 = add i64 %1232, -23450
  %1234 = add i64 %1232, 7
  %1235 = load i64, i64* %6, align 8
  %1236 = add i64 %1235, -8
  %1237 = inttoptr i64 %1236 to i64*
  store i64 %1234, i64* %1237, align 8
  store i64 %1236, i64* %6, align 8
  store i64 %1233, i64* %3, align 8
  %1238 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %1179)
  %1239 = load i64, i64* %RBP.i, align 8
  %1240 = add i64 %1239, -116
  %1241 = load i32, i32* %EAX.i454, align 4
  %1242 = load i64, i64* %3, align 8
  %1243 = add i64 %1242, 3
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1240 to i32*
  store i32 %1241, i32* %1244, align 4
  %1245 = load i64, i64* %RBP.i, align 8
  %1246 = add i64 %1245, -32
  %1247 = load i64, i64* %3, align 8
  %1248 = add i64 %1247, 3
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1246 to i32*
  %1250 = load i32, i32* %1249, align 4
  %1251 = add i32 %1250, 1
  %1252 = zext i32 %1251 to i64
  store i64 %1252, i64* %RAX.i462, align 8
  %1253 = icmp eq i32 %1250, -1
  %1254 = icmp eq i32 %1251, 0
  %1255 = or i1 %1253, %1254
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %14, align 1
  %1257 = and i32 %1251, 255
  %1258 = tail call i32 @llvm.ctpop.i32(i32 %1257)
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = xor i8 %1260, 1
  store i8 %1261, i8* %21, align 1
  %1262 = xor i32 %1251, %1250
  %1263 = lshr i32 %1262, 4
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  store i8 %1265, i8* %26, align 1
  %1266 = zext i1 %1254 to i8
  store i8 %1266, i8* %29, align 1
  %1267 = lshr i32 %1251, 31
  %1268 = trunc i32 %1267 to i8
  store i8 %1268, i8* %32, align 1
  %1269 = lshr i32 %1250, 31
  %1270 = xor i32 %1267, %1269
  %1271 = add nuw nsw i32 %1270, %1267
  %1272 = icmp eq i32 %1271, 2
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %38, align 1
  %1274 = add i64 %1247, 9
  store i64 %1274, i64* %3, align 8
  store i32 %1251, i32* %1249, align 4
  %1275 = load i64, i64* %3, align 8
  %1276 = add i64 %1275, -700
  store i64 %1276, i64* %3, align 8
  br label %block_.L_406e61

block_.L_407122:                                  ; preds = %block_.L_406e61
  %1277 = load i64, i64* %6, align 8
  %1278 = add i64 %1277, 128
  store i64 %1278, i64* %6, align 8
  %1279 = icmp ugt i64 %1277, -129
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %14, align 1
  %1281 = trunc i64 %1278 to i32
  %1282 = and i32 %1281, 255
  %1283 = tail call i32 @llvm.ctpop.i32(i32 %1282)
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = xor i8 %1285, 1
  store i8 %1286, i8* %21, align 1
  %1287 = xor i64 %1278, %1277
  %1288 = lshr i64 %1287, 4
  %1289 = trunc i64 %1288 to i8
  %1290 = and i8 %1289, 1
  store i8 %1290, i8* %26, align 1
  %1291 = icmp eq i64 %1278, 0
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %29, align 1
  %1293 = lshr i64 %1278, 63
  %1294 = trunc i64 %1293 to i8
  store i8 %1294, i8* %32, align 1
  %1295 = lshr i64 %1277, 63
  %1296 = xor i64 %1293, %1295
  %1297 = add nuw nsw i64 %1296, %1293
  %1298 = icmp eq i64 %1297, 2
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %38, align 1
  %1300 = add i64 %109, 8
  store i64 %1300, i64* %3, align 8
  %1301 = add i64 %1277, 136
  %1302 = inttoptr i64 %1278 to i64*
  %1303 = load i64, i64* %1302, align 8
  store i64 %1303, i64* %RBP.i, align 8
  store i64 %1301, i64* %6, align 8
  %1304 = add i64 %109, 9
  store i64 %1304, i64* %3, align 8
  %1305 = inttoptr i64 %1301 to i64*
  %1306 = load i64, i64* %1305, align 8
  store i64 %1306, i64* %3, align 8
  %1307 = add i64 %1277, 144
  store i64 %1307, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
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
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_jge_.L_407122(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x455ea2___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455ea2_type* @G__0x455ea2 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x455ebe___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455ebe_type* @G__0x455ebe to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x28___r9___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 40
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R9, align 8
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
define %struct.Memory* @routine_addq__r9___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %R9, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R8, align 8
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
define %struct.Memory* @routine_movl___r8____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %R8 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r8____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %R8 to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_imulq__0x28___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 40
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
define %struct.Memory* @routine_movl_0x4__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_406f1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_imulq__0x28___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 40
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_subl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406f31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 40
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_406f84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x4__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_imulq__0x168___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 360
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_addq__0x4___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -5
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
define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406f97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x455ed5___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455ed5_type* @G__0x455ed5 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__0x455ede___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455ede_type* @G__0x455ede to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x10__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_imulq__0x28___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 40
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movq__rdi__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40700d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407022(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_407075(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_jmpq_.L_407088(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__0x455ef3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455ef3_type* @G__0x455ef3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x14__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movq__0x455f09___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455f09_type* @G__0x455f09 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_cvtss2sd_0xc__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
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
define %struct.Memory* @routine_movq__0x455f17___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455f17_type* @G__0x455f17 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_jmpq_.L_406e61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -129
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
