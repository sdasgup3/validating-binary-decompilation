; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x62ea40_type = type <{ [8 x i8] }>
%G__0x633b60_type = type <{ [8 x i8] }>
%G__0x84ad50_type = type <{ [8 x i8] }>
%G__0x85f3f0_type = type <{ [8 x i8] }>
%G__0x8667b0_type = type <{ [8 x i8] }>
%G__0x8870b0_type = type <{ [8 x i8] }>
%G__0x88c1b0_type = type <{ [8 x i8] }>
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
@G__0x62ea40 = global %G__0x62ea40_type zeroinitializer
@G__0x633b60 = global %G__0x633b60_type zeroinitializer
@G__0x84ad50 = global %G__0x84ad50_type zeroinitializer
@G__0x85f3f0 = global %G__0x85f3f0_type zeroinitializer
@G__0x8667b0 = global %G__0x8667b0_type zeroinitializer
@G__0x8870b0 = global %G__0x8870b0_type zeroinitializer
@G__0x88c1b0 = global %G__0x88c1b0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @initialize_eval(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %39 = add i64 %7, -12
  %40 = add i64 %10, 14
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i277 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %RCX.i325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %EAX.i417 = bitcast %union.anon* %42 to i32*
  %RDI.i418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RDX.i699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI.i687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_403b7f

block_.L_403b7f:                                  ; preds = %block_.L_403c5c, %entry
  %43 = phi i64 [ %.pre, %entry ], [ %490, %block_.L_403c5c ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.1, %block_.L_403c5c ]
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -4
  %46 = add i64 %43, 4
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %45 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, -64
  %50 = icmp ult i32 %48, 64
  %51 = zext i1 %50 to i8
  store i8 %51, i8* %14, align 1
  %52 = and i32 %49, 255
  %53 = tail call i32 @llvm.ctpop.i32(i32 %52)
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  store i8 %56, i8* %21, align 1
  %57 = xor i32 %49, %48
  %58 = lshr i32 %57, 4
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  store i8 %60, i8* %26, align 1
  %61 = icmp eq i32 %49, 0
  %62 = zext i1 %61 to i8
  store i8 %62, i8* %29, align 1
  %63 = lshr i32 %49, 31
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %32, align 1
  %65 = lshr i32 %48, 31
  %66 = xor i32 %63, %65
  %67 = add nuw nsw i32 %66, %65
  %68 = icmp eq i32 %67, 2
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %38, align 1
  %70 = icmp ne i8 %64, 0
  %71 = xor i1 %70, %68
  %.v33 = select i1 %71, i64 10, i64 240
  %72 = add i64 %43, %.v33
  store i64 %72, i64* %3, align 8
  br i1 %71, label %block_403b89, label %block_.L_403c6f

block_403b89:                                     ; preds = %block_.L_403b7f
  %73 = add i64 %44, -8
  %74 = add i64 %72, 7
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i32*
  store i32 0, i32* %75, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_403b90

block_.L_403b90:                                  ; preds = %block_.L_403c1c, %block_403b89
  %76 = phi i64 [ %.pre25, %block_403b89 ], [ %461, %block_.L_403c1c ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_403b89 ], [ %218, %block_.L_403c1c ]
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -8
  %79 = add i64 %76, 4
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %81, -64
  %83 = icmp ult i32 %81, 64
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %14, align 1
  %85 = and i32 %82, 255
  %86 = tail call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  store i8 %89, i8* %21, align 1
  %90 = xor i32 %82, %81
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %26, align 1
  %94 = icmp eq i32 %82, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %29, align 1
  %96 = lshr i32 %82, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %32, align 1
  %98 = lshr i32 %81, 31
  %99 = xor i32 %96, %98
  %100 = add nuw nsw i32 %99, %98
  %101 = icmp eq i32 %100, 2
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %38, align 1
  %103 = icmp ne i8 %97, 0
  %104 = xor i1 %103, %101
  %.v32 = select i1 %104, i64 10, i64 204
  %105 = add i64 %76, %.v32
  store i64 %105, i64* %3, align 8
  %106 = add i64 %77, -4
  br i1 %104, label %block_403b9a, label %block_.L_403c5c

block_403b9a:                                     ; preds = %block_.L_403b90
  %107 = add i64 %105, 3
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 7
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RAX.i277, align 8
  store i8 0, i8* %14, align 1
  %112 = tail call i32 @llvm.ctpop.i32(i32 %110)
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %21, align 1
  %116 = icmp eq i32 %110, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %118 = add i64 %105, 9
  store i64 %118, i64* %3, align 8
  %119 = load i32, i32* %80, align 4
  %120 = and i32 %119, 7
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RCX.i325, align 8
  %122 = sub nsw i32 %110, %120
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RAX.i277, align 8
  %124 = icmp ult i32 %110, %120
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %14, align 1
  %126 = and i32 %122, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %21, align 1
  %131 = lshr i32 %122, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %26, align 1
  %134 = icmp eq i32 %122, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %29, align 1
  %136 = lshr i32 %122, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %123, i64* %RDI.i418, align 8
  %138 = add i64 %105, -12058
  %139 = add i64 %105, 21
  %140 = load i64, i64* %6, align 8
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %139, i64* %142, align 8
  store i64 %141, i64* %6, align 8
  store i64 %138, i64* %3, align 8
  %143 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.1)
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -12
  %146 = load i32, i32* %EAX.i417, align 4
  %147 = load i64, i64* %3, align 8
  %148 = add i64 %147, 3
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %145 to i32*
  store i32 %146, i32* %149, align 4
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -4
  %152 = load i64, i64* %3, align 8
  %153 = add i64 %152, 3
  store i64 %153, i64* %3, align 8
  %154 = inttoptr i64 %151 to i32*
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = ashr i64 %156, 2
  %158 = lshr i64 %157, 1
  %159 = trunc i64 %157 to i8
  %160 = and i8 %159, 1
  %161 = trunc i64 %158 to i32
  %162 = and i64 %158, 4294967295
  store i64 %162, i64* %RAX.i277, align 8
  store i8 %160, i8* %14, align 1
  %163 = and i32 %161, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %168 = icmp eq i32 %161, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %29, align 1
  %170 = lshr i64 %157, 32
  %171 = trunc i64 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %173 = add i64 %150, -8
  %174 = add i64 %152, 9
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = ashr i64 %177, 2
  %179 = lshr i64 %178, 1
  %180 = and i64 %179, 4294967295
  store i64 %180, i64* %RCX.i325, align 8
  %181 = trunc i64 %179 to i32
  %182 = trunc i64 %158 to i32
  %183 = sub i32 %182, %181
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RAX.i277, align 8
  %185 = icmp ult i32 %182, %181
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %14, align 1
  %187 = and i32 %183, 255
  %188 = tail call i32 @llvm.ctpop.i32(i32 %187)
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %21, align 1
  %192 = xor i64 %179, %158
  %193 = trunc i64 %192 to i32
  %194 = xor i32 %193, %183
  %195 = lshr i32 %194, 4
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  store i8 %197, i8* %26, align 1
  %198 = icmp eq i32 %183, 0
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %29, align 1
  %200 = lshr i32 %183, 31
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %32, align 1
  %202 = lshr i64 %157, 32
  %203 = trunc i64 %202 to i32
  %204 = and i32 %203, 1
  %205 = lshr i64 %178, 32
  %206 = trunc i64 %205 to i32
  %207 = and i32 %206, 1
  %208 = xor i32 %207, %204
  %209 = xor i32 %200, %204
  %210 = add nuw nsw i32 %209, %208
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %38, align 1
  store i64 %184, i64* %RDI.i418, align 8
  %213 = add i64 %152, -12082
  %214 = add i64 %152, 21
  %215 = load i64, i64* %6, align 8
  %216 = add i64 %215, -8
  %217 = inttoptr i64 %216 to i64*
  store i64 %214, i64* %217, align 8
  store i64 %216, i64* %6, align 8
  store i64 %213, i64* %3, align 8
  %218 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %143)
  %219 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x84ad50_type* @G__0x84ad50 to i64), i64* %RDX.i699, align 8
  %220 = load i64, i64* %RBP.i, align 8
  %221 = add i64 %220, -16
  %222 = load i32, i32* %EAX.i417, align 4
  %223 = add i64 %219, 13
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %221 to i32*
  store i32 %222, i32* %224, align 4
  %225 = load i64, i64* %RBP.i, align 8
  %226 = add i64 %225, -12
  %227 = load i64, i64* %3, align 8
  %228 = add i64 %227, 3
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %226 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RAX.i277, align 8
  %232 = add i64 %225, -16
  %233 = add i64 %227, 6
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = add i32 %235, %230
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RAX.i277, align 8
  %238 = icmp ult i32 %236, %230
  %239 = icmp ult i32 %236, %235
  %240 = or i1 %238, %239
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %14, align 1
  %242 = and i32 %236, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %21, align 1
  %247 = xor i32 %235, %230
  %248 = xor i32 %247, %236
  %249 = lshr i32 %248, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %26, align 1
  %252 = icmp eq i32 %236, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %29, align 1
  %254 = lshr i32 %236, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %32, align 1
  %256 = lshr i32 %230, 31
  %257 = lshr i32 %235, 31
  %258 = xor i32 %254, %256
  %259 = xor i32 %254, %257
  %260 = add nuw nsw i32 %258, %259
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %38, align 1
  %263 = add i64 %225, -4
  %264 = add i64 %227, 10
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i32*
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  store i64 %267, i64* %RSI.i687, align 8
  %268 = shl nsw i64 %267, 2
  %269 = add nsw i64 %268, 4356688
  %270 = add i64 %227, 18
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = mul nsw i64 %273, 576
  store i64 %274, i64* %RSI.i687, align 8
  %275 = lshr i64 %274, 63
  %276 = load i64, i64* %RDX.i699, align 8
  %277 = add i64 %274, %276
  store i64 %277, i64* %RDX.i699, align 8
  %278 = icmp ult i64 %277, %276
  %279 = icmp ult i64 %277, %274
  %280 = or i1 %278, %279
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %14, align 1
  %282 = trunc i64 %277 to i32
  %283 = and i32 %282, 255
  %284 = tail call i32 @llvm.ctpop.i32(i32 %283)
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  store i8 %287, i8* %21, align 1
  %288 = xor i64 %276, %277
  %289 = lshr i64 %288, 4
  %290 = trunc i64 %289 to i8
  %291 = and i8 %290, 1
  store i8 %291, i8* %26, align 1
  %292 = icmp eq i64 %277, 0
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %29, align 1
  %294 = lshr i64 %277, 63
  %295 = trunc i64 %294 to i8
  store i8 %295, i8* %32, align 1
  %296 = lshr i64 %276, 63
  %297 = xor i64 %294, %296
  %298 = xor i64 %294, %275
  %299 = add nuw nsw i64 %297, %298
  %300 = icmp eq i64 %299, 2
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %38, align 1
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -8
  %304 = add i64 %227, 32
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  store i64 %307, i64* %RSI.i687, align 8
  %308 = shl nsw i64 %307, 2
  %309 = add nsw i64 %308, 4356688
  %310 = add i64 %227, 40
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  store i64 %313, i64* %RSI.i687, align 8
  %314 = shl nsw i64 %313, 2
  %315 = add i64 %314, %277
  %316 = load i32, i32* %EAX.i417, align 4
  %317 = add i64 %227, 43
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %315 to i32*
  store i32 %316, i32* %318, align 4
  %319 = load i64, i64* %RBP.i, align 8
  %320 = add i64 %319, -12
  %321 = load i64, i64* %3, align 8
  %322 = add i64 %321, 3
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %320 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RAX.i277, align 8
  %326 = add i64 %319, -16
  %327 = add i64 %321, 6
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = sub i32 %324, %329
  %331 = icmp ult i32 %324, %329
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %14, align 1
  %333 = and i32 %330, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333)
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %21, align 1
  %338 = xor i32 %329, %324
  %339 = xor i32 %338, %330
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %26, align 1
  %343 = icmp eq i32 %330, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %29, align 1
  %345 = lshr i32 %330, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %32, align 1
  %347 = lshr i32 %324, 31
  %348 = lshr i32 %329, 31
  %349 = xor i32 %348, %347
  %350 = xor i32 %345, %347
  %351 = add nuw nsw i32 %350, %349
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %38, align 1
  %354 = icmp ne i8 %346, 0
  %355 = xor i1 %354, %352
  %356 = or i1 %343, %355
  %.v35 = select i1 %356, i64 23, i64 12
  %357 = add i64 %321, %.v35
  %358 = add i64 %357, 3
  store i64 %358, i64* %3, align 8
  br i1 %356, label %block_.L_403c16, label %block_403c0b

block_403c0b:                                     ; preds = %block_403b9a
  %359 = load i32, i32* %323, align 4
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RAX.i277, align 8
  %361 = add i64 %319, -20
  %362 = add i64 %357, 6
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i32*
  store i32 %359, i32* %363, align 4
  %364 = load i64, i64* %3, align 8
  %365 = add i64 %364, 11
  store i64 %365, i64* %3, align 8
  br label %block_.L_403c1c

block_.L_403c16:                                  ; preds = %block_403b9a
  %366 = load i32, i32* %328, align 4
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RAX.i277, align 8
  %368 = add i64 %319, -20
  %369 = add i64 %357, 6
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  store i32 %366, i32* %370, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_403c1c

block_.L_403c1c:                                  ; preds = %block_.L_403c16, %block_403c0b
  %371 = phi i64 [ %.pre26, %block_.L_403c16 ], [ %365, %block_403c0b ]
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -20
  %374 = add i64 %371, 3
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RAX.i277, align 8
  store i64 ptrtoint (%G__0x88c1b0_type* @G__0x88c1b0 to i64), i64* %RCX.i325, align 8
  %378 = add i64 %372, -4
  %379 = add i64 %371, 17
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  store i64 %382, i64* %RDX.i699, align 8
  %383 = shl nsw i64 %382, 2
  %384 = add nsw i64 %383, 4356688
  %385 = add i64 %371, 25
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i32*
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = mul nsw i64 %388, 576
  store i64 %389, i64* %RDX.i699, align 8
  %390 = lshr i64 %389, 63
  %391 = add i64 %389, ptrtoint (%G__0x88c1b0_type* @G__0x88c1b0 to i64)
  store i64 %391, i64* %RCX.i325, align 8
  %392 = icmp ult i64 %391, ptrtoint (%G__0x88c1b0_type* @G__0x88c1b0 to i64)
  %393 = icmp ult i64 %391, %389
  %394 = or i1 %392, %393
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %14, align 1
  %396 = trunc i64 %391 to i32
  %397 = and i32 %396, 248
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %21, align 1
  %402 = xor i64 %391, ptrtoint (%G__0x88c1b0_type* @G__0x88c1b0 to i64)
  %403 = lshr i64 %402, 4
  %404 = trunc i64 %403 to i8
  %405 = and i8 %404, 1
  store i8 %405, i8* %26, align 1
  %406 = icmp eq i64 %391, 0
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %29, align 1
  %408 = lshr i64 %391, 63
  %409 = trunc i64 %408 to i8
  store i8 %409, i8* %32, align 1
  %410 = xor i64 %408, lshr (i64 ptrtoint (%G__0x88c1b0_type* @G__0x88c1b0 to i64), i64 63)
  %411 = xor i64 %408, %390
  %412 = add nuw nsw i64 %410, %411
  %413 = icmp eq i64 %412, 2
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %38, align 1
  %415 = add i64 %372, -8
  %416 = add i64 %371, 39
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = sext i32 %418 to i64
  store i64 %419, i64* %RDX.i699, align 8
  %420 = shl nsw i64 %419, 2
  %421 = add nsw i64 %420, 4356688
  %422 = add i64 %371, 47
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %421 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = sext i32 %424 to i64
  store i64 %425, i64* %RDX.i699, align 8
  %426 = shl nsw i64 %425, 2
  %427 = add i64 %426, %391
  %428 = add i64 %371, 50
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  store i32 %376, i32* %429, align 4
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -8
  %432 = load i64, i64* %3, align 8
  %433 = add i64 %432, 3
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %431 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = add i32 %435, 1
  %437 = zext i32 %436 to i64
  store i64 %437, i64* %RAX.i277, align 8
  %438 = icmp eq i32 %435, -1
  %439 = icmp eq i32 %436, 0
  %440 = or i1 %438, %439
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %14, align 1
  %442 = and i32 %436, 255
  %443 = tail call i32 @llvm.ctpop.i32(i32 %442)
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = xor i8 %445, 1
  store i8 %446, i8* %21, align 1
  %447 = xor i32 %436, %435
  %448 = lshr i32 %447, 4
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %26, align 1
  %451 = zext i1 %439 to i8
  store i8 %451, i8* %29, align 1
  %452 = lshr i32 %436, 31
  %453 = trunc i32 %452 to i8
  store i8 %453, i8* %32, align 1
  %454 = lshr i32 %435, 31
  %455 = xor i32 %452, %454
  %456 = add nuw nsw i32 %455, %452
  %457 = icmp eq i32 %456, 2
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %38, align 1
  %459 = add i64 %432, 9
  store i64 %459, i64* %3, align 8
  store i32 %436, i32* %434, align 4
  %460 = load i64, i64* %3, align 8
  %461 = add i64 %460, -199
  store i64 %461, i64* %3, align 8
  br label %block_.L_403b90

block_.L_403c5c:                                  ; preds = %block_.L_403b90
  %462 = add i64 %105, 8
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %106 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = add i32 %464, 1
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RAX.i277, align 8
  %467 = icmp eq i32 %464, -1
  %468 = icmp eq i32 %465, 0
  %469 = or i1 %467, %468
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %14, align 1
  %471 = and i32 %465, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %21, align 1
  %476 = xor i32 %465, %464
  %477 = lshr i32 %476, 4
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  store i8 %479, i8* %26, align 1
  %480 = zext i1 %468 to i8
  store i8 %480, i8* %29, align 1
  %481 = lshr i32 %465, 31
  %482 = trunc i32 %481 to i8
  store i8 %482, i8* %32, align 1
  %483 = lshr i32 %464, 31
  %484 = xor i32 %481, %483
  %485 = add nuw nsw i32 %484, %481
  %486 = icmp eq i32 %485, 2
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %38, align 1
  %488 = add i64 %105, 14
  store i64 %488, i64* %3, align 8
  store i32 %465, i32* %463, align 4
  %489 = load i64, i64* %3, align 8
  %490 = add i64 %489, -235
  store i64 %490, i64* %3, align 8
  br label %block_.L_403b7f

block_.L_403c6f:                                  ; preds = %block_.L_403b7f
  %491 = add i64 %72, 7
  store i64 %491, i64* %3, align 8
  store i32 0, i32* %47, align 4
  %RDI.i585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL.i495 = bitcast %union.anon* %492 to i8*
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_403c76

block_.L_403c76:                                  ; preds = %block_.L_40404e, %block_.L_403c6f
  %493 = phi i64 [ %.pre18, %block_.L_403c6f ], [ %2194, %block_.L_40404e ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_.L_403c6f ], [ %MEMORY.4, %block_.L_40404e ]
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -4
  %496 = add i64 %493, 7
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i32*
  %498 = load i32, i32* %497, align 4
  %499 = add i32 %498, -144
  %500 = icmp ult i32 %498, 144
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %14, align 1
  %502 = and i32 %499, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %21, align 1
  %507 = xor i32 %498, 16
  %508 = xor i32 %507, %499
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  store i8 %511, i8* %26, align 1
  %512 = icmp eq i32 %499, 0
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %29, align 1
  %514 = lshr i32 %499, 31
  %515 = trunc i32 %514 to i8
  store i8 %515, i8* %32, align 1
  %516 = lshr i32 %498, 31
  %517 = xor i32 %514, %516
  %518 = add nuw nsw i32 %517, %516
  %519 = icmp eq i32 %518, 2
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %38, align 1
  %521 = icmp ne i8 %515, 0
  %522 = xor i1 %521, %519
  %.v34 = select i1 %522, i64 13, i64 1003
  %523 = add i64 %493, %.v34
  store i64 %523, i64* %3, align 8
  br i1 %522, label %block_403c83, label %block_.L_404061

block_403c83:                                     ; preds = %block_.L_403c76
  %524 = add i64 %494, -8
  %525 = add i64 %523, 7
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i32*
  store i32 0, i32* %526, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_403c8a

block_.L_403c8a:                                  ; preds = %block_.L_404010, %block_403c83
  %527 = phi i64 [ %.pre19, %block_403c83 ], [ %2165, %block_.L_404010 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_403c83 ], [ %MEMORY.9, %block_.L_404010 ]
  %528 = load i64, i64* %RBP.i, align 8
  %529 = add i64 %528, -8
  %530 = add i64 %527, 7
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i32*
  %532 = load i32, i32* %531, align 4
  %533 = add i32 %532, -144
  %534 = icmp ult i32 %532, 144
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %14, align 1
  %536 = and i32 %533, 255
  %537 = tail call i32 @llvm.ctpop.i32(i32 %536)
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  store i8 %540, i8* %21, align 1
  %541 = xor i32 %532, 16
  %542 = xor i32 %541, %533
  %543 = lshr i32 %542, 4
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  store i8 %545, i8* %26, align 1
  %546 = icmp eq i32 %533, 0
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %29, align 1
  %548 = lshr i32 %533, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %32, align 1
  %550 = lshr i32 %532, 31
  %551 = xor i32 %548, %550
  %552 = add nuw nsw i32 %551, %550
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %38, align 1
  %555 = icmp ne i8 %549, 0
  %556 = xor i1 %555, %553
  %.v = select i1 %556, i64 13, i64 964
  %557 = add i64 %527, %.v
  store i64 %557, i64* %3, align 8
  %558 = add i64 %528, -4
  br i1 %556, label %block_403c97, label %block_.L_40404e

block_403c97:                                     ; preds = %block_.L_403c8a
  %559 = add i64 %557, 4
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = sext i32 %561 to i64
  store i64 %562, i64* %RAX.i277, align 8
  %563 = shl nsw i64 %562, 2
  %564 = add nsw i64 %563, 4348048
  %565 = add i64 %557, 11
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RCX.i325, align 8
  %569 = add i64 %557, 15
  store i64 %569, i64* %3, align 8
  %570 = load i32, i32* %531, align 4
  %571 = sext i32 %570 to i64
  store i64 %571, i64* %RAX.i277, align 8
  %572 = shl nsw i64 %571, 2
  %573 = add nsw i64 %572, 4348048
  %574 = add i64 %557, 22
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i32*
  %576 = load i32, i32* %575, align 4
  %577 = sub i32 %567, %576
  %578 = zext i32 %577 to i64
  store i64 %578, i64* %RCX.i325, align 8
  %579 = icmp ult i32 %567, %576
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %14, align 1
  %581 = and i32 %577, 255
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %21, align 1
  %586 = xor i32 %576, %567
  %587 = xor i32 %586, %577
  %588 = lshr i32 %587, 4
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  store i8 %590, i8* %26, align 1
  %591 = icmp eq i32 %577, 0
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %29, align 1
  %593 = lshr i32 %577, 31
  %594 = trunc i32 %593 to i8
  store i8 %594, i8* %32, align 1
  %595 = lshr i32 %567, 31
  %596 = lshr i32 %576, 31
  %597 = xor i32 %596, %595
  %598 = xor i32 %593, %595
  %599 = add nuw nsw i32 %598, %597
  %600 = icmp eq i32 %599, 2
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %38, align 1
  store i64 %578, i64* %RDI.i585, align 8
  %602 = add i64 %557, -12311
  %603 = add i64 %557, 29
  %604 = load i64, i64* %6, align 8
  %605 = add i64 %604, -8
  %606 = inttoptr i64 %605 to i64*
  store i64 %603, i64* %606, align 8
  store i64 %605, i64* %6, align 8
  store i64 %602, i64* %3, align 8
  %607 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.4)
  %608 = load i64, i64* %RBP.i, align 8
  %609 = add i64 %608, -4
  %610 = load i64, i64* %3, align 8
  %611 = add i64 %610, 4
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %609 to i32*
  %613 = load i32, i32* %612, align 4
  %614 = sext i32 %613 to i64
  store i64 %614, i64* %RDX.i699, align 8
  %615 = shl nsw i64 %614, 2
  %616 = add nsw i64 %615, 4347472
  %617 = add i64 %610, 11
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RCX.i325, align 8
  %621 = add i64 %608, -8
  %622 = add i64 %610, 15
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = sext i32 %624 to i64
  store i64 %625, i64* %RDX.i699, align 8
  %626 = shl nsw i64 %625, 2
  %627 = add nsw i64 %626, 4347472
  %628 = add i64 %610, 22
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = sub i32 %619, %630
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RCX.i325, align 8
  %633 = icmp ult i32 %619, %630
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %14, align 1
  %635 = and i32 %631, 255
  %636 = tail call i32 @llvm.ctpop.i32(i32 %635)
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  store i8 %639, i8* %21, align 1
  %640 = xor i32 %630, %619
  %641 = xor i32 %640, %631
  %642 = lshr i32 %641, 4
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  store i8 %644, i8* %26, align 1
  %645 = icmp eq i32 %631, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %29, align 1
  %647 = lshr i32 %631, 31
  %648 = trunc i32 %647 to i8
  store i8 %648, i8* %32, align 1
  %649 = lshr i32 %619, 31
  %650 = lshr i32 %630, 31
  %651 = xor i32 %650, %649
  %652 = xor i32 %647, %649
  %653 = add nuw nsw i32 %652, %651
  %654 = icmp eq i32 %653, 2
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %38, align 1
  store i64 %632, i64* %RDI.i585, align 8
  %656 = add i64 %608, -24
  %657 = load i32, i32* %EAX.i417, align 4
  %658 = add i64 %610, 27
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %656 to i32*
  store i32 %657, i32* %659, align 4
  %660 = load i64, i64* %3, align 8
  %661 = add i64 %660, -12367
  %662 = add i64 %660, 5
  %663 = load i64, i64* %6, align 8
  %664 = add i64 %663, -8
  %665 = inttoptr i64 %664 to i64*
  store i64 %662, i64* %665, align 8
  store i64 %664, i64* %6, align 8
  store i64 %661, i64* %3, align 8
  %666 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %607)
  %667 = load i64, i64* %RBP.i, align 8
  %668 = add i64 %667, -24
  %669 = load i64, i64* %3, align 8
  %670 = add i64 %669, 3
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %668 to i32*
  %672 = load i32, i32* %671, align 4
  %673 = zext i32 %672 to i64
  store i64 %673, i64* %RCX.i325, align 8
  %674 = load i32, i32* %EAX.i417, align 4
  %675 = sub i32 %672, %674
  %676 = icmp ult i32 %672, %674
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %14, align 1
  %678 = and i32 %675, 255
  %679 = tail call i32 @llvm.ctpop.i32(i32 %678)
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  store i8 %682, i8* %21, align 1
  %683 = xor i32 %674, %672
  %684 = xor i32 %683, %675
  %685 = lshr i32 %684, 4
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  store i8 %687, i8* %26, align 1
  %688 = icmp eq i32 %675, 0
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %29, align 1
  %690 = lshr i32 %675, 31
  %691 = trunc i32 %690 to i8
  store i8 %691, i8* %32, align 1
  %692 = lshr i32 %672, 31
  %693 = lshr i32 %674, 31
  %694 = xor i32 %693, %692
  %695 = xor i32 %690, %692
  %696 = add nuw nsw i32 %695, %694
  %697 = icmp eq i32 %696, 2
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %38, align 1
  %699 = icmp ne i8 %691, 0
  %700 = xor i1 %699, %697
  %701 = or i1 %688, %700
  %.v27 = select i1 %701, i64 48, i64 11
  %702 = add i64 %669, %.v27
  %703 = add i64 %667, -4
  %704 = add i64 %702, 4
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = sext i32 %706 to i64
  store i64 %707, i64* %RAX.i277, align 8
  %708 = shl nsw i64 %707, 2
  br i1 %701, label %block_.L_403d04, label %block_403cdf

block_403cdf:                                     ; preds = %block_403c97
  %709 = add nsw i64 %708, 4348048
  %710 = add i64 %702, 11
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i32*
  %712 = load i32, i32* %711, align 4
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RCX.i325, align 8
  %714 = add i64 %667, -8
  %715 = add i64 %702, 15
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  %717 = load i32, i32* %716, align 4
  %718 = sext i32 %717 to i64
  store i64 %718, i64* %RAX.i277, align 8
  %719 = shl nsw i64 %718, 2
  %720 = add nsw i64 %719, 4348048
  %721 = add i64 %702, 22
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = sub i32 %712, %723
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RCX.i325, align 8
  %726 = icmp ult i32 %712, %723
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %14, align 1
  %728 = and i32 %724, 255
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728)
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %21, align 1
  %733 = xor i32 %723, %712
  %734 = xor i32 %733, %724
  %735 = lshr i32 %734, 4
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  store i8 %737, i8* %26, align 1
  %738 = icmp eq i32 %724, 0
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %29, align 1
  %740 = lshr i32 %724, 31
  %741 = trunc i32 %740 to i8
  store i8 %741, i8* %32, align 1
  %742 = lshr i32 %712, 31
  %743 = lshr i32 %723, 31
  %744 = xor i32 %743, %742
  %745 = xor i32 %740, %742
  %746 = add nuw nsw i32 %745, %744
  %747 = icmp eq i32 %746, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %38, align 1
  store i64 %725, i64* %RDI.i585, align 8
  %749 = add i64 %702, -12383
  %750 = add i64 %702, 29
  %751 = load i64, i64* %6, align 8
  %752 = add i64 %751, -8
  %753 = inttoptr i64 %752 to i64*
  store i64 %750, i64* %753, align 8
  store i64 %752, i64* %6, align 8
  store i64 %749, i64* %3, align 8
  %754 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %666)
  %755 = load i64, i64* %RBP.i, align 8
  %756 = add i64 %755, -28
  %757 = load i32, i32* %EAX.i417, align 4
  %758 = load i64, i64* %3, align 8
  %759 = add i64 %758, 3
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %756 to i32*
  store i32 %757, i32* %760, align 4
  %761 = load i64, i64* %3, align 8
  %762 = add i64 %761, 37
  store i64 %762, i64* %3, align 8
  br label %block_.L_403d24

block_.L_403d04:                                  ; preds = %block_403c97
  %763 = add nsw i64 %708, 4347472
  %764 = add i64 %702, 11
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %763 to i32*
  %766 = load i32, i32* %765, align 4
  %767 = zext i32 %766 to i64
  store i64 %767, i64* %RCX.i325, align 8
  %768 = add i64 %667, -8
  %769 = add i64 %702, 15
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i32*
  %771 = load i32, i32* %770, align 4
  %772 = sext i32 %771 to i64
  store i64 %772, i64* %RAX.i277, align 8
  %773 = shl nsw i64 %772, 2
  %774 = add nsw i64 %773, 4347472
  %775 = add i64 %702, 22
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = sub i32 %766, %777
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %RCX.i325, align 8
  %780 = icmp ult i32 %766, %777
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %14, align 1
  %782 = and i32 %778, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %21, align 1
  %787 = xor i32 %777, %766
  %788 = xor i32 %787, %778
  %789 = lshr i32 %788, 4
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  store i8 %791, i8* %26, align 1
  %792 = icmp eq i32 %778, 0
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %29, align 1
  %794 = lshr i32 %778, 31
  %795 = trunc i32 %794 to i8
  store i8 %795, i8* %32, align 1
  %796 = lshr i32 %766, 31
  %797 = lshr i32 %777, 31
  %798 = xor i32 %797, %796
  %799 = xor i32 %794, %796
  %800 = add nuw nsw i32 %799, %798
  %801 = icmp eq i32 %800, 2
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %38, align 1
  store i64 %779, i64* %RDI.i585, align 8
  %803 = add i64 %702, -12420
  %804 = add i64 %702, 29
  %805 = load i64, i64* %6, align 8
  %806 = add i64 %805, -8
  %807 = inttoptr i64 %806 to i64*
  store i64 %804, i64* %807, align 8
  store i64 %806, i64* %6, align 8
  store i64 %803, i64* %3, align 8
  %808 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %666)
  %809 = load i64, i64* %RBP.i, align 8
  %810 = add i64 %809, -28
  %811 = load i32, i32* %EAX.i417, align 4
  %812 = load i64, i64* %3, align 8
  %813 = add i64 %812, 3
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %810 to i32*
  store i32 %811, i32* %814, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_403d24

block_.L_403d24:                                  ; preds = %block_.L_403d04, %block_403cdf
  %815 = phi i64 [ %.pre20, %block_.L_403d04 ], [ %762, %block_403cdf ]
  %MEMORY.5 = phi %struct.Memory* [ %808, %block_.L_403d04 ], [ %754, %block_403cdf ]
  %816 = load i64, i64* %RBP.i, align 8
  %817 = add i64 %816, -28
  %818 = add i64 %815, 3
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i32*
  %820 = load i32, i32* %819, align 4
  %821 = zext i32 %820 to i64
  store i64 %821, i64* %RAX.i277, align 8
  store i64 ptrtoint (%G__0x62ea40_type* @G__0x62ea40 to i64), i64* %RCX.i325, align 8
  %822 = sext i32 %820 to i64
  store i64 %822, i64* %RDX.i699, align 8
  %823 = shl nsw i64 %822, 2
  %824 = add nsw i64 %823, 6472240
  %825 = add i64 %815, 23
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = zext i32 %827 to i64
  store i64 %828, i64* %RAX.i277, align 8
  %829 = trunc i32 %827 to i8
  store i8 %829, i8* %SIL.i495, align 1
  %830 = add i64 %816, -4
  %831 = add i64 %815, 30
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = sext i32 %833 to i64
  %835 = mul nsw i64 %834, 144
  store i64 %835, i64* %RDX.i699, align 8
  %836 = lshr i64 %835, 63
  %837 = add i64 %835, ptrtoint (%G__0x62ea40_type* @G__0x62ea40 to i64)
  store i64 %837, i64* %RCX.i325, align 8
  %838 = icmp ult i64 %837, ptrtoint (%G__0x62ea40_type* @G__0x62ea40 to i64)
  %839 = icmp ult i64 %837, %835
  %840 = or i1 %838, %839
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %14, align 1
  %842 = trunc i64 %837 to i32
  %843 = and i32 %842, 248
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %21, align 1
  %848 = xor i64 %835, ptrtoint (%G__0x62ea40_type* @G__0x62ea40 to i64)
  %849 = xor i64 %848, %837
  %850 = lshr i64 %849, 4
  %851 = trunc i64 %850 to i8
  %852 = and i8 %851, 1
  store i8 %852, i8* %26, align 1
  %853 = icmp eq i64 %837, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %29, align 1
  %855 = lshr i64 %837, 63
  %856 = trunc i64 %855 to i8
  store i8 %856, i8* %32, align 1
  %857 = xor i64 %855, lshr (i64 ptrtoint (%G__0x62ea40_type* @G__0x62ea40 to i64), i64 63)
  %858 = xor i64 %855, %836
  %859 = add nuw nsw i64 %857, %858
  %860 = icmp eq i64 %859, 2
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %38, align 1
  %862 = add i64 %816, -8
  %863 = add i64 %815, 44
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i32*
  %865 = load i32, i32* %864, align 4
  %866 = sext i32 %865 to i64
  store i64 %866, i64* %RDX.i699, align 8
  %867 = add i64 %837, %866
  %868 = add i64 %815, 48
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i8*
  store i8 %829, i8* %869, align 1
  %870 = load i64, i64* %RBP.i, align 8
  %871 = add i64 %870, -4
  %872 = load i64, i64* %3, align 8
  %873 = add i64 %872, 4
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %871 to i32*
  %875 = load i32, i32* %874, align 4
  %876 = sext i32 %875 to i64
  store i64 %876, i64* %RCX.i325, align 8
  %877 = shl nsw i64 %876, 2
  %878 = add nsw i64 %877, 4348048
  %879 = add i64 %872, 11
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RAX.i277, align 8
  %883 = add i64 %870, -8
  %884 = add i64 %872, 15
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = sext i32 %886 to i64
  store i64 %887, i64* %RCX.i325, align 8
  %888 = shl nsw i64 %887, 2
  %889 = add nsw i64 %888, 4348048
  %890 = add i64 %872, 22
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = sub i32 %881, %892
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RAX.i277, align 8
  %895 = icmp ult i32 %881, %892
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %14, align 1
  %897 = and i32 %893, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %21, align 1
  %902 = xor i32 %892, %881
  %903 = xor i32 %902, %893
  %904 = lshr i32 %903, 4
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %26, align 1
  %907 = icmp eq i32 %893, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %29, align 1
  %909 = lshr i32 %893, 31
  %910 = trunc i32 %909 to i8
  store i8 %910, i8* %32, align 1
  %911 = lshr i32 %881, 31
  %912 = lshr i32 %892, 31
  %913 = xor i32 %912, %911
  %914 = xor i32 %909, %911
  %915 = add nuw nsw i32 %914, %913
  %916 = icmp eq i32 %915, 2
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %38, align 1
  store i64 %894, i64* %RDI.i585, align 8
  %918 = add i64 %872, -12500
  %919 = add i64 %872, 29
  %920 = load i64, i64* %6, align 8
  %921 = add i64 %920, -8
  %922 = inttoptr i64 %921 to i64*
  store i64 %919, i64* %922, align 8
  store i64 %921, i64* %6, align 8
  store i64 %918, i64* %3, align 8
  %923 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.5)
  %924 = load i64, i64* %RBP.i, align 8
  %925 = add i64 %924, -4
  %926 = load i64, i64* %3, align 8
  %927 = add i64 %926, 4
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %925 to i32*
  %929 = load i32, i32* %928, align 4
  %930 = sext i32 %929 to i64
  store i64 %930, i64* %RCX.i325, align 8
  %931 = shl nsw i64 %930, 2
  %932 = add nsw i64 %931, 4347472
  %933 = add i64 %926, 11
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RDI.i585, align 8
  %937 = add i64 %924, -8
  %938 = add i64 %926, 15
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  %941 = sext i32 %940 to i64
  store i64 %941, i64* %RCX.i325, align 8
  %942 = shl nsw i64 %941, 2
  %943 = add nsw i64 %942, 4347472
  %944 = add i64 %926, 22
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  %947 = sub i32 %935, %946
  %948 = zext i32 %947 to i64
  store i64 %948, i64* %RDI.i585, align 8
  %949 = icmp ult i32 %935, %946
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %14, align 1
  %951 = and i32 %947, 255
  %952 = tail call i32 @llvm.ctpop.i32(i32 %951)
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = xor i8 %954, 1
  store i8 %955, i8* %21, align 1
  %956 = xor i32 %946, %935
  %957 = xor i32 %956, %947
  %958 = lshr i32 %957, 4
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  store i8 %960, i8* %26, align 1
  %961 = icmp eq i32 %947, 0
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %29, align 1
  %963 = lshr i32 %947, 31
  %964 = trunc i32 %963 to i8
  store i8 %964, i8* %32, align 1
  %965 = lshr i32 %935, 31
  %966 = lshr i32 %946, 31
  %967 = xor i32 %966, %965
  %968 = xor i32 %963, %965
  %969 = add nuw nsw i32 %968, %967
  %970 = icmp eq i32 %969, 2
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %38, align 1
  %972 = add i64 %924, -32
  %973 = load i32, i32* %EAX.i417, align 4
  %974 = add i64 %926, 25
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %972 to i32*
  store i32 %973, i32* %975, align 4
  %976 = load i64, i64* %3, align 8
  %977 = add i64 %976, -12554
  %978 = add i64 %976, 5
  %979 = load i64, i64* %6, align 8
  %980 = add i64 %979, -8
  %981 = inttoptr i64 %980 to i64*
  store i64 %978, i64* %981, align 8
  store i64 %980, i64* %6, align 8
  store i64 %977, i64* %3, align 8
  %982 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %923)
  %983 = load i64, i64* %RBP.i, align 8
  %984 = add i64 %983, -32
  %985 = load i64, i64* %3, align 8
  %986 = add i64 %985, 3
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %984 to i32*
  %988 = load i32, i32* %987, align 4
  %989 = zext i32 %988 to i64
  store i64 %989, i64* %RDI.i585, align 8
  %990 = load i32, i32* %EAX.i417, align 4
  %991 = sub i32 %988, %990
  %992 = icmp ult i32 %988, %990
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %14, align 1
  %994 = and i32 %991, 255
  %995 = tail call i32 @llvm.ctpop.i32(i32 %994)
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  %998 = xor i8 %997, 1
  store i8 %998, i8* %21, align 1
  %999 = xor i32 %990, %988
  %1000 = xor i32 %999, %991
  %1001 = lshr i32 %1000, 4
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  store i8 %1003, i8* %26, align 1
  %1004 = icmp eq i32 %991, 0
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %29, align 1
  %1006 = lshr i32 %991, 31
  %1007 = trunc i32 %1006 to i8
  store i8 %1007, i8* %32, align 1
  %1008 = lshr i32 %988, 31
  %1009 = lshr i32 %990, 31
  %1010 = xor i32 %1009, %1008
  %1011 = xor i32 %1006, %1008
  %1012 = add nuw nsw i32 %1011, %1010
  %1013 = icmp eq i32 %1012, 2
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %38, align 1
  %1015 = icmp ne i8 %1007, 0
  %1016 = xor i1 %1015, %1013
  %1017 = or i1 %1004, %1016
  %.v28 = select i1 %1017, i64 48, i64 11
  %1018 = add i64 %985, %.v28
  %1019 = add i64 %983, -4
  %1020 = add i64 %1018, 4
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = sext i32 %1022 to i64
  store i64 %1023, i64* %RAX.i277, align 8
  %1024 = shl nsw i64 %1023, 2
  br i1 %1017, label %block_.L_403dbf, label %block_403d9a

block_403d9a:                                     ; preds = %block_.L_403d24
  %1025 = add nsw i64 %1024, 4348048
  %1026 = add i64 %1018, 11
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i32*
  %1028 = load i32, i32* %1027, align 4
  %1029 = zext i32 %1028 to i64
  store i64 %1029, i64* %RCX.i325, align 8
  %1030 = add i64 %983, -8
  %1031 = add i64 %1018, 15
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i32*
  %1033 = load i32, i32* %1032, align 4
  %1034 = sext i32 %1033 to i64
  store i64 %1034, i64* %RAX.i277, align 8
  %1035 = shl nsw i64 %1034, 2
  %1036 = add nsw i64 %1035, 4348048
  %1037 = add i64 %1018, 22
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = sub i32 %1028, %1039
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RCX.i325, align 8
  %1042 = icmp ult i32 %1028, %1039
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %14, align 1
  %1044 = and i32 %1040, 255
  %1045 = tail call i32 @llvm.ctpop.i32(i32 %1044)
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  %1048 = xor i8 %1047, 1
  store i8 %1048, i8* %21, align 1
  %1049 = xor i32 %1039, %1028
  %1050 = xor i32 %1049, %1040
  %1051 = lshr i32 %1050, 4
  %1052 = trunc i32 %1051 to i8
  %1053 = and i8 %1052, 1
  store i8 %1053, i8* %26, align 1
  %1054 = icmp eq i32 %1040, 0
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %29, align 1
  %1056 = lshr i32 %1040, 31
  %1057 = trunc i32 %1056 to i8
  store i8 %1057, i8* %32, align 1
  %1058 = lshr i32 %1028, 31
  %1059 = lshr i32 %1039, 31
  %1060 = xor i32 %1059, %1058
  %1061 = xor i32 %1056, %1058
  %1062 = add nuw nsw i32 %1061, %1060
  %1063 = icmp eq i32 %1062, 2
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %38, align 1
  store i64 %1041, i64* %RDI.i585, align 8
  %1065 = add i64 %1018, -12570
  %1066 = add i64 %1018, 29
  %1067 = load i64, i64* %6, align 8
  %1068 = add i64 %1067, -8
  %1069 = inttoptr i64 %1068 to i64*
  store i64 %1066, i64* %1069, align 8
  store i64 %1068, i64* %6, align 8
  store i64 %1065, i64* %3, align 8
  %1070 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %982)
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -36
  %1073 = load i32, i32* %EAX.i417, align 4
  %1074 = load i64, i64* %3, align 8
  %1075 = add i64 %1074, 3
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1072 to i32*
  store i32 %1073, i32* %1076, align 4
  %1077 = load i64, i64* %3, align 8
  %1078 = add i64 %1077, 37
  store i64 %1078, i64* %3, align 8
  br label %block_.L_403ddf

block_.L_403dbf:                                  ; preds = %block_.L_403d24
  %1079 = add nsw i64 %1024, 4347472
  %1080 = add i64 %1018, 11
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RCX.i325, align 8
  %1084 = add i64 %983, -8
  %1085 = add i64 %1018, 15
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i32*
  %1087 = load i32, i32* %1086, align 4
  %1088 = sext i32 %1087 to i64
  store i64 %1088, i64* %RAX.i277, align 8
  %1089 = shl nsw i64 %1088, 2
  %1090 = add nsw i64 %1089, 4347472
  %1091 = add i64 %1018, 22
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i32*
  %1093 = load i32, i32* %1092, align 4
  %1094 = sub i32 %1082, %1093
  %1095 = zext i32 %1094 to i64
  store i64 %1095, i64* %RCX.i325, align 8
  %1096 = icmp ult i32 %1082, %1093
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %14, align 1
  %1098 = and i32 %1094, 255
  %1099 = tail call i32 @llvm.ctpop.i32(i32 %1098)
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  store i8 %1102, i8* %21, align 1
  %1103 = xor i32 %1093, %1082
  %1104 = xor i32 %1103, %1094
  %1105 = lshr i32 %1104, 4
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  store i8 %1107, i8* %26, align 1
  %1108 = icmp eq i32 %1094, 0
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %29, align 1
  %1110 = lshr i32 %1094, 31
  %1111 = trunc i32 %1110 to i8
  store i8 %1111, i8* %32, align 1
  %1112 = lshr i32 %1082, 31
  %1113 = lshr i32 %1093, 31
  %1114 = xor i32 %1113, %1112
  %1115 = xor i32 %1110, %1112
  %1116 = add nuw nsw i32 %1115, %1114
  %1117 = icmp eq i32 %1116, 2
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %38, align 1
  store i64 %1095, i64* %RDI.i585, align 8
  %1119 = add i64 %1018, -12607
  %1120 = add i64 %1018, 29
  %1121 = load i64, i64* %6, align 8
  %1122 = add i64 %1121, -8
  %1123 = inttoptr i64 %1122 to i64*
  store i64 %1120, i64* %1123, align 8
  store i64 %1122, i64* %6, align 8
  store i64 %1119, i64* %3, align 8
  %1124 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %982)
  %1125 = load i64, i64* %RBP.i, align 8
  %1126 = add i64 %1125, -36
  %1127 = load i32, i32* %EAX.i417, align 4
  %1128 = load i64, i64* %3, align 8
  %1129 = add i64 %1128, 3
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1126 to i32*
  store i32 %1127, i32* %1130, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_403ddf

block_.L_403ddf:                                  ; preds = %block_.L_403dbf, %block_403d9a
  %1131 = phi i64 [ %.pre21, %block_.L_403dbf ], [ %1078, %block_403d9a ]
  %MEMORY.6 = phi %struct.Memory* [ %1124, %block_.L_403dbf ], [ %1070, %block_403d9a ]
  %1132 = load i64, i64* %RBP.i, align 8
  %1133 = add i64 %1132, -36
  %1134 = add i64 %1131, 3
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = zext i32 %1136 to i64
  store i64 %1137, i64* %RAX.i277, align 8
  store i64 ptrtoint (%G__0x8667b0_type* @G__0x8667b0 to i64), i64* %RCX.i325, align 8
  %1138 = sext i32 %1136 to i64
  store i64 %1138, i64* %RDX.i699, align 8
  %1139 = shl nsw i64 %1138, 2
  %1140 = add nsw i64 %1139, 6472432
  %1141 = add i64 %1131, 23
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RAX.i277, align 8
  %1145 = trunc i32 %1143 to i8
  store i8 %1145, i8* %SIL.i495, align 1
  %1146 = add i64 %1132, -4
  %1147 = add i64 %1131, 30
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i32*
  %1149 = load i32, i32* %1148, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = mul nsw i64 %1150, 144
  store i64 %1151, i64* %RDX.i699, align 8
  %1152 = lshr i64 %1151, 63
  %1153 = add i64 %1151, ptrtoint (%G__0x8667b0_type* @G__0x8667b0 to i64)
  store i64 %1153, i64* %RCX.i325, align 8
  %1154 = icmp ult i64 %1153, ptrtoint (%G__0x8667b0_type* @G__0x8667b0 to i64)
  %1155 = icmp ult i64 %1153, %1151
  %1156 = or i1 %1154, %1155
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %14, align 1
  %1158 = trunc i64 %1153 to i32
  %1159 = and i32 %1158, 248
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %21, align 1
  %1164 = xor i64 %1151, ptrtoint (%G__0x8667b0_type* @G__0x8667b0 to i64)
  %1165 = xor i64 %1164, %1153
  %1166 = lshr i64 %1165, 4
  %1167 = trunc i64 %1166 to i8
  %1168 = and i8 %1167, 1
  store i8 %1168, i8* %26, align 1
  %1169 = icmp eq i64 %1153, 0
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %29, align 1
  %1171 = lshr i64 %1153, 63
  %1172 = trunc i64 %1171 to i8
  store i8 %1172, i8* %32, align 1
  %1173 = xor i64 %1171, lshr (i64 ptrtoint (%G__0x8667b0_type* @G__0x8667b0 to i64), i64 63)
  %1174 = xor i64 %1171, %1152
  %1175 = add nuw nsw i64 %1173, %1174
  %1176 = icmp eq i64 %1175, 2
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %38, align 1
  %1178 = add i64 %1132, -8
  %1179 = add i64 %1131, 44
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i32*
  %1181 = load i32, i32* %1180, align 4
  %1182 = sext i32 %1181 to i64
  store i64 %1182, i64* %RDX.i699, align 8
  %1183 = add i64 %1153, %1182
  %1184 = add i64 %1131, 48
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i8*
  store i8 %1145, i8* %1185, align 1
  %1186 = load i64, i64* %RBP.i, align 8
  %1187 = add i64 %1186, -4
  %1188 = load i64, i64* %3, align 8
  %1189 = add i64 %1188, 4
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1187 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = sext i32 %1191 to i64
  store i64 %1192, i64* %RCX.i325, align 8
  %1193 = shl nsw i64 %1192, 2
  %1194 = add nsw i64 %1193, 4348048
  %1195 = add i64 %1188, 11
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i32*
  %1197 = load i32, i32* %1196, align 4
  %1198 = zext i32 %1197 to i64
  store i64 %1198, i64* %RAX.i277, align 8
  %1199 = add i64 %1186, -8
  %1200 = add i64 %1188, 15
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = sext i32 %1202 to i64
  store i64 %1203, i64* %RCX.i325, align 8
  %1204 = shl nsw i64 %1203, 2
  %1205 = add nsw i64 %1204, 4348048
  %1206 = add i64 %1188, 22
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = sub i32 %1197, %1208
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RAX.i277, align 8
  %1211 = icmp ult i32 %1197, %1208
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %14, align 1
  %1213 = and i32 %1209, 255
  %1214 = tail call i32 @llvm.ctpop.i32(i32 %1213)
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = xor i8 %1216, 1
  store i8 %1217, i8* %21, align 1
  %1218 = xor i32 %1208, %1197
  %1219 = xor i32 %1218, %1209
  %1220 = lshr i32 %1219, 4
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  store i8 %1222, i8* %26, align 1
  %1223 = icmp eq i32 %1209, 0
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %29, align 1
  %1225 = lshr i32 %1209, 31
  %1226 = trunc i32 %1225 to i8
  store i8 %1226, i8* %32, align 1
  %1227 = lshr i32 %1197, 31
  %1228 = lshr i32 %1208, 31
  %1229 = xor i32 %1228, %1227
  %1230 = xor i32 %1225, %1227
  %1231 = add nuw nsw i32 %1230, %1229
  %1232 = icmp eq i32 %1231, 2
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %38, align 1
  store i64 %1210, i64* %RDI.i585, align 8
  %1234 = add i64 %1188, -12687
  %1235 = add i64 %1188, 29
  %1236 = load i64, i64* %6, align 8
  %1237 = add i64 %1236, -8
  %1238 = inttoptr i64 %1237 to i64*
  store i64 %1235, i64* %1238, align 8
  store i64 %1237, i64* %6, align 8
  store i64 %1234, i64* %3, align 8
  %1239 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.6)
  %1240 = load i64, i64* %RBP.i, align 8
  %1241 = add i64 %1240, -4
  %1242 = load i64, i64* %3, align 8
  %1243 = add i64 %1242, 4
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1241 to i32*
  %1245 = load i32, i32* %1244, align 4
  %1246 = sext i32 %1245 to i64
  store i64 %1246, i64* %RCX.i325, align 8
  %1247 = shl nsw i64 %1246, 2
  %1248 = add nsw i64 %1247, 4347472
  %1249 = add i64 %1242, 11
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i32*
  %1251 = load i32, i32* %1250, align 4
  %1252 = zext i32 %1251 to i64
  store i64 %1252, i64* %RDI.i585, align 8
  %1253 = add i64 %1240, -8
  %1254 = add i64 %1242, 15
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  %1257 = sext i32 %1256 to i64
  store i64 %1257, i64* %RCX.i325, align 8
  %1258 = shl nsw i64 %1257, 2
  %1259 = add nsw i64 %1258, 4347472
  %1260 = add i64 %1242, 22
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1259 to i32*
  %1262 = load i32, i32* %1261, align 4
  %1263 = sub i32 %1251, %1262
  %1264 = zext i32 %1263 to i64
  store i64 %1264, i64* %RDI.i585, align 8
  %1265 = icmp ult i32 %1251, %1262
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %14, align 1
  %1267 = and i32 %1263, 255
  %1268 = tail call i32 @llvm.ctpop.i32(i32 %1267)
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  store i8 %1271, i8* %21, align 1
  %1272 = xor i32 %1262, %1251
  %1273 = xor i32 %1272, %1263
  %1274 = lshr i32 %1273, 4
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  store i8 %1276, i8* %26, align 1
  %1277 = icmp eq i32 %1263, 0
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %29, align 1
  %1279 = lshr i32 %1263, 31
  %1280 = trunc i32 %1279 to i8
  store i8 %1280, i8* %32, align 1
  %1281 = lshr i32 %1251, 31
  %1282 = lshr i32 %1262, 31
  %1283 = xor i32 %1282, %1281
  %1284 = xor i32 %1279, %1281
  %1285 = add nuw nsw i32 %1284, %1283
  %1286 = icmp eq i32 %1285, 2
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %38, align 1
  %1288 = add i64 %1240, -40
  %1289 = load i32, i32* %EAX.i417, align 4
  %1290 = add i64 %1242, 25
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1288 to i32*
  store i32 %1289, i32* %1291, align 4
  %1292 = load i64, i64* %3, align 8
  %1293 = add i64 %1292, -12741
  %1294 = add i64 %1292, 5
  %1295 = load i64, i64* %6, align 8
  %1296 = add i64 %1295, -8
  %1297 = inttoptr i64 %1296 to i64*
  store i64 %1294, i64* %1297, align 8
  store i64 %1296, i64* %6, align 8
  store i64 %1293, i64* %3, align 8
  %1298 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1239)
  %1299 = load i64, i64* %RBP.i, align 8
  %1300 = add i64 %1299, -40
  %1301 = load i64, i64* %3, align 8
  %1302 = add i64 %1301, 3
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1300 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = zext i32 %1304 to i64
  store i64 %1305, i64* %RDI.i585, align 8
  %1306 = load i32, i32* %EAX.i417, align 4
  %1307 = sub i32 %1304, %1306
  %1308 = icmp ult i32 %1304, %1306
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %14, align 1
  %1310 = and i32 %1307, 255
  %1311 = tail call i32 @llvm.ctpop.i32(i32 %1310)
  %1312 = trunc i32 %1311 to i8
  %1313 = and i8 %1312, 1
  %1314 = xor i8 %1313, 1
  store i8 %1314, i8* %21, align 1
  %1315 = xor i32 %1306, %1304
  %1316 = xor i32 %1315, %1307
  %1317 = lshr i32 %1316, 4
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  store i8 %1319, i8* %26, align 1
  %1320 = icmp eq i32 %1307, 0
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %29, align 1
  %1322 = lshr i32 %1307, 31
  %1323 = trunc i32 %1322 to i8
  store i8 %1323, i8* %32, align 1
  %1324 = lshr i32 %1304, 31
  %1325 = lshr i32 %1306, 31
  %1326 = xor i32 %1325, %1324
  %1327 = xor i32 %1322, %1324
  %1328 = add nuw nsw i32 %1327, %1326
  %1329 = icmp eq i32 %1328, 2
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %38, align 1
  %1331 = icmp ne i8 %1323, 0
  %1332 = xor i1 %1331, %1329
  %1333 = or i1 %1320, %1332
  %.v29 = select i1 %1333, i64 48, i64 11
  %1334 = add i64 %1301, %.v29
  %1335 = add i64 %1299, -4
  %1336 = add i64 %1334, 4
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = sext i32 %1338 to i64
  store i64 %1339, i64* %RAX.i277, align 8
  %1340 = shl nsw i64 %1339, 2
  br i1 %1333, label %block_.L_403e7a, label %block_403e55

block_403e55:                                     ; preds = %block_.L_403ddf
  %1341 = add nsw i64 %1340, 4348048
  %1342 = add i64 %1334, 11
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1341 to i32*
  %1344 = load i32, i32* %1343, align 4
  %1345 = zext i32 %1344 to i64
  store i64 %1345, i64* %RCX.i325, align 8
  %1346 = add i64 %1299, -8
  %1347 = add i64 %1334, 15
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = sext i32 %1349 to i64
  store i64 %1350, i64* %RAX.i277, align 8
  %1351 = shl nsw i64 %1350, 2
  %1352 = add nsw i64 %1351, 4348048
  %1353 = add i64 %1334, 22
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = sub i32 %1344, %1355
  %1357 = zext i32 %1356 to i64
  store i64 %1357, i64* %RCX.i325, align 8
  %1358 = icmp ult i32 %1344, %1355
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %14, align 1
  %1360 = and i32 %1356, 255
  %1361 = tail call i32 @llvm.ctpop.i32(i32 %1360)
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  %1364 = xor i8 %1363, 1
  store i8 %1364, i8* %21, align 1
  %1365 = xor i32 %1355, %1344
  %1366 = xor i32 %1365, %1356
  %1367 = lshr i32 %1366, 4
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  store i8 %1369, i8* %26, align 1
  %1370 = icmp eq i32 %1356, 0
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %29, align 1
  %1372 = lshr i32 %1356, 31
  %1373 = trunc i32 %1372 to i8
  store i8 %1373, i8* %32, align 1
  %1374 = lshr i32 %1344, 31
  %1375 = lshr i32 %1355, 31
  %1376 = xor i32 %1375, %1374
  %1377 = xor i32 %1372, %1374
  %1378 = add nuw nsw i32 %1377, %1376
  %1379 = icmp eq i32 %1378, 2
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %38, align 1
  store i64 %1357, i64* %RDI.i585, align 8
  %1381 = add i64 %1334, -12757
  %1382 = add i64 %1334, 29
  %1383 = load i64, i64* %6, align 8
  %1384 = add i64 %1383, -8
  %1385 = inttoptr i64 %1384 to i64*
  store i64 %1382, i64* %1385, align 8
  store i64 %1384, i64* %6, align 8
  store i64 %1381, i64* %3, align 8
  %1386 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1298)
  %1387 = load i64, i64* %RBP.i, align 8
  %1388 = add i64 %1387, -44
  %1389 = load i32, i32* %EAX.i417, align 4
  %1390 = load i64, i64* %3, align 8
  %1391 = add i64 %1390, 3
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1388 to i32*
  store i32 %1389, i32* %1392, align 4
  %1393 = load i64, i64* %3, align 8
  %1394 = add i64 %1393, 37
  store i64 %1394, i64* %3, align 8
  br label %block_.L_403e9a

block_.L_403e7a:                                  ; preds = %block_.L_403ddf
  %1395 = add nsw i64 %1340, 4347472
  %1396 = add i64 %1334, 11
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i32*
  %1398 = load i32, i32* %1397, align 4
  %1399 = zext i32 %1398 to i64
  store i64 %1399, i64* %RCX.i325, align 8
  %1400 = add i64 %1299, -8
  %1401 = add i64 %1334, 15
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i32*
  %1403 = load i32, i32* %1402, align 4
  %1404 = sext i32 %1403 to i64
  store i64 %1404, i64* %RAX.i277, align 8
  %1405 = shl nsw i64 %1404, 2
  %1406 = add nsw i64 %1405, 4347472
  %1407 = add i64 %1334, 22
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = sub i32 %1398, %1409
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RCX.i325, align 8
  %1412 = icmp ult i32 %1398, %1409
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %14, align 1
  %1414 = and i32 %1410, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414)
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %21, align 1
  %1419 = xor i32 %1409, %1398
  %1420 = xor i32 %1419, %1410
  %1421 = lshr i32 %1420, 4
  %1422 = trunc i32 %1421 to i8
  %1423 = and i8 %1422, 1
  store i8 %1423, i8* %26, align 1
  %1424 = icmp eq i32 %1410, 0
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %29, align 1
  %1426 = lshr i32 %1410, 31
  %1427 = trunc i32 %1426 to i8
  store i8 %1427, i8* %32, align 1
  %1428 = lshr i32 %1398, 31
  %1429 = lshr i32 %1409, 31
  %1430 = xor i32 %1429, %1428
  %1431 = xor i32 %1426, %1428
  %1432 = add nuw nsw i32 %1431, %1430
  %1433 = icmp eq i32 %1432, 2
  %1434 = zext i1 %1433 to i8
  store i8 %1434, i8* %38, align 1
  store i64 %1411, i64* %RDI.i585, align 8
  %1435 = add i64 %1334, -12794
  %1436 = add i64 %1334, 29
  %1437 = load i64, i64* %6, align 8
  %1438 = add i64 %1437, -8
  %1439 = inttoptr i64 %1438 to i64*
  store i64 %1436, i64* %1439, align 8
  store i64 %1438, i64* %6, align 8
  store i64 %1435, i64* %3, align 8
  %1440 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1298)
  %1441 = load i64, i64* %RBP.i, align 8
  %1442 = add i64 %1441, -44
  %1443 = load i32, i32* %EAX.i417, align 4
  %1444 = load i64, i64* %3, align 8
  %1445 = add i64 %1444, 3
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1442 to i32*
  store i32 %1443, i32* %1446, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_403e9a

block_.L_403e9a:                                  ; preds = %block_.L_403e7a, %block_403e55
  %1447 = phi i64 [ %.pre22, %block_.L_403e7a ], [ %1394, %block_403e55 ]
  %MEMORY.7 = phi %struct.Memory* [ %1440, %block_.L_403e7a ], [ %1386, %block_403e55 ]
  %1448 = load i64, i64* %RBP.i, align 8
  %1449 = add i64 %1448, -44
  %1450 = add i64 %1447, 3
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i32*
  %1452 = load i32, i32* %1451, align 4
  %1453 = zext i32 %1452 to i64
  store i64 %1453, i64* %RAX.i277, align 8
  store i64 ptrtoint (%G__0x8870b0_type* @G__0x8870b0 to i64), i64* %RCX.i325, align 8
  %1454 = sext i32 %1452 to i64
  store i64 %1454, i64* %RDX.i699, align 8
  %1455 = shl nsw i64 %1454, 2
  %1456 = add nsw i64 %1455, 6472336
  %1457 = add i64 %1447, 23
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i32*
  %1459 = load i32, i32* %1458, align 4
  %1460 = zext i32 %1459 to i64
  store i64 %1460, i64* %RAX.i277, align 8
  %1461 = trunc i32 %1459 to i8
  store i8 %1461, i8* %SIL.i495, align 1
  %1462 = add i64 %1448, -4
  %1463 = add i64 %1447, 30
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = sext i32 %1465 to i64
  %1467 = mul nsw i64 %1466, 144
  store i64 %1467, i64* %RDX.i699, align 8
  %1468 = lshr i64 %1467, 63
  %1469 = add i64 %1467, ptrtoint (%G__0x8870b0_type* @G__0x8870b0 to i64)
  store i64 %1469, i64* %RCX.i325, align 8
  %1470 = icmp ult i64 %1469, ptrtoint (%G__0x8870b0_type* @G__0x8870b0 to i64)
  %1471 = icmp ult i64 %1469, %1467
  %1472 = or i1 %1470, %1471
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %14, align 1
  %1474 = trunc i64 %1469 to i32
  %1475 = and i32 %1474, 248
  %1476 = tail call i32 @llvm.ctpop.i32(i32 %1475)
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  %1479 = xor i8 %1478, 1
  store i8 %1479, i8* %21, align 1
  %1480 = xor i64 %1467, ptrtoint (%G__0x8870b0_type* @G__0x8870b0 to i64)
  %1481 = xor i64 %1480, %1469
  %1482 = lshr i64 %1481, 4
  %1483 = trunc i64 %1482 to i8
  %1484 = and i8 %1483, 1
  store i8 %1484, i8* %26, align 1
  %1485 = icmp eq i64 %1469, 0
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %29, align 1
  %1487 = lshr i64 %1469, 63
  %1488 = trunc i64 %1487 to i8
  store i8 %1488, i8* %32, align 1
  %1489 = xor i64 %1487, lshr (i64 ptrtoint (%G__0x8870b0_type* @G__0x8870b0 to i64), i64 63)
  %1490 = xor i64 %1487, %1468
  %1491 = add nuw nsw i64 %1489, %1490
  %1492 = icmp eq i64 %1491, 2
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %38, align 1
  %1494 = add i64 %1448, -8
  %1495 = add i64 %1447, 44
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = sext i32 %1497 to i64
  store i64 %1498, i64* %RDX.i699, align 8
  %1499 = add i64 %1469, %1498
  %1500 = add i64 %1447, 48
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i8*
  store i8 %1461, i8* %1501, align 1
  %1502 = load i64, i64* %RBP.i, align 8
  %1503 = add i64 %1502, -4
  %1504 = load i64, i64* %3, align 8
  %1505 = add i64 %1504, 4
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1503 to i32*
  %1507 = load i32, i32* %1506, align 4
  %1508 = sext i32 %1507 to i64
  store i64 %1508, i64* %RCX.i325, align 8
  %1509 = shl nsw i64 %1508, 2
  %1510 = add nsw i64 %1509, 4348048
  %1511 = add i64 %1504, 11
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i32*
  %1513 = load i32, i32* %1512, align 4
  %1514 = zext i32 %1513 to i64
  store i64 %1514, i64* %RAX.i277, align 8
  %1515 = add i64 %1502, -8
  %1516 = add i64 %1504, 15
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i32*
  %1518 = load i32, i32* %1517, align 4
  %1519 = sext i32 %1518 to i64
  store i64 %1519, i64* %RCX.i325, align 8
  %1520 = shl nsw i64 %1519, 2
  %1521 = add nsw i64 %1520, 4348048
  %1522 = add i64 %1504, 22
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = sub i32 %1513, %1524
  %1526 = zext i32 %1525 to i64
  store i64 %1526, i64* %RAX.i277, align 8
  %1527 = icmp ult i32 %1513, %1524
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %14, align 1
  %1529 = and i32 %1525, 255
  %1530 = tail call i32 @llvm.ctpop.i32(i32 %1529)
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  store i8 %1533, i8* %21, align 1
  %1534 = xor i32 %1524, %1513
  %1535 = xor i32 %1534, %1525
  %1536 = lshr i32 %1535, 4
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  store i8 %1538, i8* %26, align 1
  %1539 = icmp eq i32 %1525, 0
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %29, align 1
  %1541 = lshr i32 %1525, 31
  %1542 = trunc i32 %1541 to i8
  store i8 %1542, i8* %32, align 1
  %1543 = lshr i32 %1513, 31
  %1544 = lshr i32 %1524, 31
  %1545 = xor i32 %1544, %1543
  %1546 = xor i32 %1541, %1543
  %1547 = add nuw nsw i32 %1546, %1545
  %1548 = icmp eq i32 %1547, 2
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %38, align 1
  store i64 %1526, i64* %RDI.i585, align 8
  %1550 = add i64 %1504, -12874
  %1551 = add i64 %1504, 29
  %1552 = load i64, i64* %6, align 8
  %1553 = add i64 %1552, -8
  %1554 = inttoptr i64 %1553 to i64*
  store i64 %1551, i64* %1554, align 8
  store i64 %1553, i64* %6, align 8
  store i64 %1550, i64* %3, align 8
  %1555 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.7)
  %1556 = load i64, i64* %RBP.i, align 8
  %1557 = add i64 %1556, -4
  %1558 = load i64, i64* %3, align 8
  %1559 = add i64 %1558, 4
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1557 to i32*
  %1561 = load i32, i32* %1560, align 4
  %1562 = sext i32 %1561 to i64
  store i64 %1562, i64* %RCX.i325, align 8
  %1563 = shl nsw i64 %1562, 2
  %1564 = add nsw i64 %1563, 4347472
  %1565 = add i64 %1558, 11
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RDI.i585, align 8
  %1569 = add i64 %1556, -8
  %1570 = add i64 %1558, 15
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = sext i32 %1572 to i64
  store i64 %1573, i64* %RCX.i325, align 8
  %1574 = shl nsw i64 %1573, 2
  %1575 = add nsw i64 %1574, 4347472
  %1576 = add i64 %1558, 22
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i32*
  %1578 = load i32, i32* %1577, align 4
  %1579 = sub i32 %1567, %1578
  %1580 = zext i32 %1579 to i64
  store i64 %1580, i64* %RDI.i585, align 8
  %1581 = icmp ult i32 %1567, %1578
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %14, align 1
  %1583 = and i32 %1579, 255
  %1584 = tail call i32 @llvm.ctpop.i32(i32 %1583)
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = xor i8 %1586, 1
  store i8 %1587, i8* %21, align 1
  %1588 = xor i32 %1578, %1567
  %1589 = xor i32 %1588, %1579
  %1590 = lshr i32 %1589, 4
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  store i8 %1592, i8* %26, align 1
  %1593 = icmp eq i32 %1579, 0
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %29, align 1
  %1595 = lshr i32 %1579, 31
  %1596 = trunc i32 %1595 to i8
  store i8 %1596, i8* %32, align 1
  %1597 = lshr i32 %1567, 31
  %1598 = lshr i32 %1578, 31
  %1599 = xor i32 %1598, %1597
  %1600 = xor i32 %1595, %1597
  %1601 = add nuw nsw i32 %1600, %1599
  %1602 = icmp eq i32 %1601, 2
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %38, align 1
  %1604 = add i64 %1556, -48
  %1605 = load i32, i32* %EAX.i417, align 4
  %1606 = add i64 %1558, 25
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1604 to i32*
  store i32 %1605, i32* %1607, align 4
  %1608 = load i64, i64* %3, align 8
  %1609 = add i64 %1608, -12928
  %1610 = add i64 %1608, 5
  %1611 = load i64, i64* %6, align 8
  %1612 = add i64 %1611, -8
  %1613 = inttoptr i64 %1612 to i64*
  store i64 %1610, i64* %1613, align 8
  store i64 %1612, i64* %6, align 8
  store i64 %1609, i64* %3, align 8
  %1614 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1555)
  %1615 = load i64, i64* %RBP.i, align 8
  %1616 = add i64 %1615, -48
  %1617 = load i64, i64* %3, align 8
  %1618 = add i64 %1617, 3
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1616 to i32*
  %1620 = load i32, i32* %1619, align 4
  %1621 = zext i32 %1620 to i64
  store i64 %1621, i64* %RDI.i585, align 8
  %1622 = load i32, i32* %EAX.i417, align 4
  %1623 = sub i32 %1620, %1622
  %1624 = icmp ult i32 %1620, %1622
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %14, align 1
  %1626 = and i32 %1623, 255
  %1627 = tail call i32 @llvm.ctpop.i32(i32 %1626)
  %1628 = trunc i32 %1627 to i8
  %1629 = and i8 %1628, 1
  %1630 = xor i8 %1629, 1
  store i8 %1630, i8* %21, align 1
  %1631 = xor i32 %1622, %1620
  %1632 = xor i32 %1631, %1623
  %1633 = lshr i32 %1632, 4
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  store i8 %1635, i8* %26, align 1
  %1636 = icmp eq i32 %1623, 0
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %29, align 1
  %1638 = lshr i32 %1623, 31
  %1639 = trunc i32 %1638 to i8
  store i8 %1639, i8* %32, align 1
  %1640 = lshr i32 %1620, 31
  %1641 = lshr i32 %1622, 31
  %1642 = xor i32 %1641, %1640
  %1643 = xor i32 %1638, %1640
  %1644 = add nuw nsw i32 %1643, %1642
  %1645 = icmp eq i32 %1644, 2
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %38, align 1
  %1647 = icmp ne i8 %1639, 0
  %1648 = xor i1 %1647, %1645
  %1649 = or i1 %1636, %1648
  %.v30 = select i1 %1649, i64 48, i64 11
  %1650 = add i64 %1617, %.v30
  %1651 = add i64 %1615, -4
  %1652 = add i64 %1650, 4
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i32*
  %1654 = load i32, i32* %1653, align 4
  %1655 = sext i32 %1654 to i64
  store i64 %1655, i64* %RAX.i277, align 8
  %1656 = shl nsw i64 %1655, 2
  br i1 %1649, label %block_.L_403f35, label %block_403f10

block_403f10:                                     ; preds = %block_.L_403e9a
  %1657 = add nsw i64 %1656, 4348048
  %1658 = add i64 %1650, 11
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  %1660 = load i32, i32* %1659, align 4
  %1661 = zext i32 %1660 to i64
  store i64 %1661, i64* %RCX.i325, align 8
  %1662 = add i64 %1615, -8
  %1663 = add i64 %1650, 15
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to i32*
  %1665 = load i32, i32* %1664, align 4
  %1666 = sext i32 %1665 to i64
  store i64 %1666, i64* %RAX.i277, align 8
  %1667 = shl nsw i64 %1666, 2
  %1668 = add nsw i64 %1667, 4348048
  %1669 = add i64 %1650, 22
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to i32*
  %1671 = load i32, i32* %1670, align 4
  %1672 = sub i32 %1660, %1671
  %1673 = zext i32 %1672 to i64
  store i64 %1673, i64* %RCX.i325, align 8
  %1674 = icmp ult i32 %1660, %1671
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %14, align 1
  %1676 = and i32 %1672, 255
  %1677 = tail call i32 @llvm.ctpop.i32(i32 %1676)
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  %1680 = xor i8 %1679, 1
  store i8 %1680, i8* %21, align 1
  %1681 = xor i32 %1671, %1660
  %1682 = xor i32 %1681, %1672
  %1683 = lshr i32 %1682, 4
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  store i8 %1685, i8* %26, align 1
  %1686 = icmp eq i32 %1672, 0
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %29, align 1
  %1688 = lshr i32 %1672, 31
  %1689 = trunc i32 %1688 to i8
  store i8 %1689, i8* %32, align 1
  %1690 = lshr i32 %1660, 31
  %1691 = lshr i32 %1671, 31
  %1692 = xor i32 %1691, %1690
  %1693 = xor i32 %1688, %1690
  %1694 = add nuw nsw i32 %1693, %1692
  %1695 = icmp eq i32 %1694, 2
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %38, align 1
  store i64 %1673, i64* %RDI.i585, align 8
  %1697 = add i64 %1650, -12944
  %1698 = add i64 %1650, 29
  %1699 = load i64, i64* %6, align 8
  %1700 = add i64 %1699, -8
  %1701 = inttoptr i64 %1700 to i64*
  store i64 %1698, i64* %1701, align 8
  store i64 %1700, i64* %6, align 8
  store i64 %1697, i64* %3, align 8
  %1702 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1614)
  %1703 = load i64, i64* %RBP.i, align 8
  %1704 = add i64 %1703, -52
  %1705 = load i32, i32* %EAX.i417, align 4
  %1706 = load i64, i64* %3, align 8
  %1707 = add i64 %1706, 3
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1704 to i32*
  store i32 %1705, i32* %1708, align 4
  %1709 = load i64, i64* %3, align 8
  %1710 = add i64 %1709, 37
  store i64 %1710, i64* %3, align 8
  br label %block_.L_403f55

block_.L_403f35:                                  ; preds = %block_.L_403e9a
  %1711 = add nsw i64 %1656, 4347472
  %1712 = add i64 %1650, 11
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i32*
  %1714 = load i32, i32* %1713, align 4
  %1715 = zext i32 %1714 to i64
  store i64 %1715, i64* %RCX.i325, align 8
  %1716 = add i64 %1615, -8
  %1717 = add i64 %1650, 15
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to i32*
  %1719 = load i32, i32* %1718, align 4
  %1720 = sext i32 %1719 to i64
  store i64 %1720, i64* %RAX.i277, align 8
  %1721 = shl nsw i64 %1720, 2
  %1722 = add nsw i64 %1721, 4347472
  %1723 = add i64 %1650, 22
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i32*
  %1725 = load i32, i32* %1724, align 4
  %1726 = sub i32 %1714, %1725
  %1727 = zext i32 %1726 to i64
  store i64 %1727, i64* %RCX.i325, align 8
  %1728 = icmp ult i32 %1714, %1725
  %1729 = zext i1 %1728 to i8
  store i8 %1729, i8* %14, align 1
  %1730 = and i32 %1726, 255
  %1731 = tail call i32 @llvm.ctpop.i32(i32 %1730)
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  store i8 %1734, i8* %21, align 1
  %1735 = xor i32 %1725, %1714
  %1736 = xor i32 %1735, %1726
  %1737 = lshr i32 %1736, 4
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  store i8 %1739, i8* %26, align 1
  %1740 = icmp eq i32 %1726, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %29, align 1
  %1742 = lshr i32 %1726, 31
  %1743 = trunc i32 %1742 to i8
  store i8 %1743, i8* %32, align 1
  %1744 = lshr i32 %1714, 31
  %1745 = lshr i32 %1725, 31
  %1746 = xor i32 %1745, %1744
  %1747 = xor i32 %1742, %1744
  %1748 = add nuw nsw i32 %1747, %1746
  %1749 = icmp eq i32 %1748, 2
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %38, align 1
  store i64 %1727, i64* %RDI.i585, align 8
  %1751 = add i64 %1650, -12981
  %1752 = add i64 %1650, 29
  %1753 = load i64, i64* %6, align 8
  %1754 = add i64 %1753, -8
  %1755 = inttoptr i64 %1754 to i64*
  store i64 %1752, i64* %1755, align 8
  store i64 %1754, i64* %6, align 8
  store i64 %1751, i64* %3, align 8
  %1756 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1614)
  %1757 = load i64, i64* %RBP.i, align 8
  %1758 = add i64 %1757, -52
  %1759 = load i32, i32* %EAX.i417, align 4
  %1760 = load i64, i64* %3, align 8
  %1761 = add i64 %1760, 3
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1758 to i32*
  store i32 %1759, i32* %1762, align 4
  %.pre23 = load i64, i64* %3, align 8
  br label %block_.L_403f55

block_.L_403f55:                                  ; preds = %block_.L_403f35, %block_403f10
  %1763 = phi i64 [ %.pre23, %block_.L_403f35 ], [ %1710, %block_403f10 ]
  %MEMORY.8 = phi %struct.Memory* [ %1756, %block_.L_403f35 ], [ %1702, %block_403f10 ]
  %1764 = load i64, i64* %RBP.i, align 8
  %1765 = add i64 %1764, -52
  %1766 = add i64 %1763, 3
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1765 to i32*
  %1768 = load i32, i32* %1767, align 4
  %1769 = zext i32 %1768 to i64
  store i64 %1769, i64* %RAX.i277, align 8
  store i64 ptrtoint (%G__0x633b60_type* @G__0x633b60 to i64), i64* %RCX.i325, align 8
  %1770 = sext i32 %1768 to i64
  store i64 %1770, i64* %RDX.i699, align 8
  %1771 = shl nsw i64 %1770, 2
  %1772 = add nsw i64 %1771, 6472288
  %1773 = add i64 %1763, 23
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1772 to i32*
  %1775 = load i32, i32* %1774, align 4
  %1776 = zext i32 %1775 to i64
  store i64 %1776, i64* %RAX.i277, align 8
  %1777 = trunc i32 %1775 to i8
  store i8 %1777, i8* %SIL.i495, align 1
  %1778 = add i64 %1764, -4
  %1779 = add i64 %1763, 30
  store i64 %1779, i64* %3, align 8
  %1780 = inttoptr i64 %1778 to i32*
  %1781 = load i32, i32* %1780, align 4
  %1782 = sext i32 %1781 to i64
  %1783 = mul nsw i64 %1782, 144
  store i64 %1783, i64* %RDX.i699, align 8
  %1784 = lshr i64 %1783, 63
  %1785 = add i64 %1783, ptrtoint (%G__0x633b60_type* @G__0x633b60 to i64)
  store i64 %1785, i64* %RCX.i325, align 8
  %1786 = icmp ult i64 %1785, ptrtoint (%G__0x633b60_type* @G__0x633b60 to i64)
  %1787 = icmp ult i64 %1785, %1783
  %1788 = or i1 %1786, %1787
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %14, align 1
  %1790 = trunc i64 %1785 to i32
  %1791 = and i32 %1790, 248
  %1792 = tail call i32 @llvm.ctpop.i32(i32 %1791)
  %1793 = trunc i32 %1792 to i8
  %1794 = and i8 %1793, 1
  %1795 = xor i8 %1794, 1
  store i8 %1795, i8* %21, align 1
  %1796 = xor i64 %1783, ptrtoint (%G__0x633b60_type* @G__0x633b60 to i64)
  %1797 = xor i64 %1796, %1785
  %1798 = lshr i64 %1797, 4
  %1799 = trunc i64 %1798 to i8
  %1800 = and i8 %1799, 1
  store i8 %1800, i8* %26, align 1
  %1801 = icmp eq i64 %1785, 0
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %29, align 1
  %1803 = lshr i64 %1785, 63
  %1804 = trunc i64 %1803 to i8
  store i8 %1804, i8* %32, align 1
  %1805 = xor i64 %1803, lshr (i64 ptrtoint (%G__0x633b60_type* @G__0x633b60 to i64), i64 63)
  %1806 = xor i64 %1803, %1784
  %1807 = add nuw nsw i64 %1805, %1806
  %1808 = icmp eq i64 %1807, 2
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %38, align 1
  %1810 = add i64 %1764, -8
  %1811 = add i64 %1763, 44
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1810 to i32*
  %1813 = load i32, i32* %1812, align 4
  %1814 = sext i32 %1813 to i64
  store i64 %1814, i64* %RDX.i699, align 8
  %1815 = add i64 %1785, %1814
  %1816 = add i64 %1763, 48
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1815 to i8*
  store i8 %1777, i8* %1817, align 1
  %1818 = load i64, i64* %RBP.i, align 8
  %1819 = add i64 %1818, -4
  %1820 = load i64, i64* %3, align 8
  %1821 = add i64 %1820, 4
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1819 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = sext i32 %1823 to i64
  store i64 %1824, i64* %RCX.i325, align 8
  %1825 = shl nsw i64 %1824, 2
  %1826 = add nsw i64 %1825, 4348048
  %1827 = add i64 %1820, 11
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1826 to i32*
  %1829 = load i32, i32* %1828, align 4
  %1830 = zext i32 %1829 to i64
  store i64 %1830, i64* %RAX.i277, align 8
  %1831 = add i64 %1818, -8
  %1832 = add i64 %1820, 15
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i32*
  %1834 = load i32, i32* %1833, align 4
  %1835 = sext i32 %1834 to i64
  store i64 %1835, i64* %RCX.i325, align 8
  %1836 = shl nsw i64 %1835, 2
  %1837 = add nsw i64 %1836, 4348048
  %1838 = add i64 %1820, 22
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i32*
  %1840 = load i32, i32* %1839, align 4
  %1841 = sub i32 %1829, %1840
  %1842 = zext i32 %1841 to i64
  store i64 %1842, i64* %RAX.i277, align 8
  %1843 = icmp ult i32 %1829, %1840
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %14, align 1
  %1845 = and i32 %1841, 255
  %1846 = tail call i32 @llvm.ctpop.i32(i32 %1845)
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  %1849 = xor i8 %1848, 1
  store i8 %1849, i8* %21, align 1
  %1850 = xor i32 %1840, %1829
  %1851 = xor i32 %1850, %1841
  %1852 = lshr i32 %1851, 4
  %1853 = trunc i32 %1852 to i8
  %1854 = and i8 %1853, 1
  store i8 %1854, i8* %26, align 1
  %1855 = icmp eq i32 %1841, 0
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %29, align 1
  %1857 = lshr i32 %1841, 31
  %1858 = trunc i32 %1857 to i8
  store i8 %1858, i8* %32, align 1
  %1859 = lshr i32 %1829, 31
  %1860 = lshr i32 %1840, 31
  %1861 = xor i32 %1860, %1859
  %1862 = xor i32 %1857, %1859
  %1863 = add nuw nsw i32 %1862, %1861
  %1864 = icmp eq i32 %1863, 2
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %38, align 1
  store i64 %1842, i64* %RDI.i585, align 8
  %1866 = add i64 %1820, -13061
  %1867 = add i64 %1820, 29
  %1868 = load i64, i64* %6, align 8
  %1869 = add i64 %1868, -8
  %1870 = inttoptr i64 %1869 to i64*
  store i64 %1867, i64* %1870, align 8
  store i64 %1869, i64* %6, align 8
  store i64 %1866, i64* %3, align 8
  %1871 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.8)
  %1872 = load i64, i64* %RBP.i, align 8
  %1873 = add i64 %1872, -4
  %1874 = load i64, i64* %3, align 8
  %1875 = add i64 %1874, 4
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1873 to i32*
  %1877 = load i32, i32* %1876, align 4
  %1878 = sext i32 %1877 to i64
  store i64 %1878, i64* %RCX.i325, align 8
  %1879 = shl nsw i64 %1878, 2
  %1880 = add nsw i64 %1879, 4347472
  %1881 = add i64 %1874, 11
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i32*
  %1883 = load i32, i32* %1882, align 4
  %1884 = zext i32 %1883 to i64
  store i64 %1884, i64* %RDI.i585, align 8
  %1885 = add i64 %1872, -8
  %1886 = add i64 %1874, 15
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i32*
  %1888 = load i32, i32* %1887, align 4
  %1889 = sext i32 %1888 to i64
  store i64 %1889, i64* %RCX.i325, align 8
  %1890 = shl nsw i64 %1889, 2
  %1891 = add nsw i64 %1890, 4347472
  %1892 = add i64 %1874, 22
  store i64 %1892, i64* %3, align 8
  %1893 = inttoptr i64 %1891 to i32*
  %1894 = load i32, i32* %1893, align 4
  %1895 = sub i32 %1883, %1894
  %1896 = zext i32 %1895 to i64
  store i64 %1896, i64* %RDI.i585, align 8
  %1897 = icmp ult i32 %1883, %1894
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %14, align 1
  %1899 = and i32 %1895, 255
  %1900 = tail call i32 @llvm.ctpop.i32(i32 %1899)
  %1901 = trunc i32 %1900 to i8
  %1902 = and i8 %1901, 1
  %1903 = xor i8 %1902, 1
  store i8 %1903, i8* %21, align 1
  %1904 = xor i32 %1894, %1883
  %1905 = xor i32 %1904, %1895
  %1906 = lshr i32 %1905, 4
  %1907 = trunc i32 %1906 to i8
  %1908 = and i8 %1907, 1
  store i8 %1908, i8* %26, align 1
  %1909 = icmp eq i32 %1895, 0
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %29, align 1
  %1911 = lshr i32 %1895, 31
  %1912 = trunc i32 %1911 to i8
  store i8 %1912, i8* %32, align 1
  %1913 = lshr i32 %1883, 31
  %1914 = lshr i32 %1894, 31
  %1915 = xor i32 %1914, %1913
  %1916 = xor i32 %1911, %1913
  %1917 = add nuw nsw i32 %1916, %1915
  %1918 = icmp eq i32 %1917, 2
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %38, align 1
  %1920 = add i64 %1872, -56
  %1921 = load i32, i32* %EAX.i417, align 4
  %1922 = add i64 %1874, 25
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1920 to i32*
  store i32 %1921, i32* %1923, align 4
  %1924 = load i64, i64* %3, align 8
  %1925 = add i64 %1924, -13115
  %1926 = add i64 %1924, 5
  %1927 = load i64, i64* %6, align 8
  %1928 = add i64 %1927, -8
  %1929 = inttoptr i64 %1928 to i64*
  store i64 %1926, i64* %1929, align 8
  store i64 %1928, i64* %6, align 8
  store i64 %1925, i64* %3, align 8
  %1930 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1871)
  %1931 = load i64, i64* %RBP.i, align 8
  %1932 = add i64 %1931, -56
  %1933 = load i64, i64* %3, align 8
  %1934 = add i64 %1933, 3
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1932 to i32*
  %1936 = load i32, i32* %1935, align 4
  %1937 = zext i32 %1936 to i64
  store i64 %1937, i64* %RDI.i585, align 8
  %1938 = load i32, i32* %EAX.i417, align 4
  %1939 = sub i32 %1936, %1938
  %1940 = icmp ult i32 %1936, %1938
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %14, align 1
  %1942 = and i32 %1939, 255
  %1943 = tail call i32 @llvm.ctpop.i32(i32 %1942)
  %1944 = trunc i32 %1943 to i8
  %1945 = and i8 %1944, 1
  %1946 = xor i8 %1945, 1
  store i8 %1946, i8* %21, align 1
  %1947 = xor i32 %1938, %1936
  %1948 = xor i32 %1947, %1939
  %1949 = lshr i32 %1948, 4
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  store i8 %1951, i8* %26, align 1
  %1952 = icmp eq i32 %1939, 0
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %29, align 1
  %1954 = lshr i32 %1939, 31
  %1955 = trunc i32 %1954 to i8
  store i8 %1955, i8* %32, align 1
  %1956 = lshr i32 %1936, 31
  %1957 = lshr i32 %1938, 31
  %1958 = xor i32 %1957, %1956
  %1959 = xor i32 %1954, %1956
  %1960 = add nuw nsw i32 %1959, %1958
  %1961 = icmp eq i32 %1960, 2
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %38, align 1
  %1963 = icmp ne i8 %1955, 0
  %1964 = xor i1 %1963, %1961
  %1965 = or i1 %1952, %1964
  %.v31 = select i1 %1965, i64 48, i64 11
  %1966 = add i64 %1933, %.v31
  %1967 = add i64 %1931, -4
  %1968 = add i64 %1966, 4
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1967 to i32*
  %1970 = load i32, i32* %1969, align 4
  %1971 = sext i32 %1970 to i64
  store i64 %1971, i64* %RAX.i277, align 8
  %1972 = shl nsw i64 %1971, 2
  br i1 %1965, label %block_.L_403ff0, label %block_403fcb

block_403fcb:                                     ; preds = %block_.L_403f55
  %1973 = add nsw i64 %1972, 4348048
  %1974 = add i64 %1966, 11
  store i64 %1974, i64* %3, align 8
  %1975 = inttoptr i64 %1973 to i32*
  %1976 = load i32, i32* %1975, align 4
  %1977 = zext i32 %1976 to i64
  store i64 %1977, i64* %RCX.i325, align 8
  %1978 = add i64 %1931, -8
  %1979 = add i64 %1966, 15
  store i64 %1979, i64* %3, align 8
  %1980 = inttoptr i64 %1978 to i32*
  %1981 = load i32, i32* %1980, align 4
  %1982 = sext i32 %1981 to i64
  store i64 %1982, i64* %RAX.i277, align 8
  %1983 = shl nsw i64 %1982, 2
  %1984 = add nsw i64 %1983, 4348048
  %1985 = add i64 %1966, 22
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i32*
  %1987 = load i32, i32* %1986, align 4
  %1988 = sub i32 %1976, %1987
  %1989 = zext i32 %1988 to i64
  store i64 %1989, i64* %RCX.i325, align 8
  %1990 = icmp ult i32 %1976, %1987
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %14, align 1
  %1992 = and i32 %1988, 255
  %1993 = tail call i32 @llvm.ctpop.i32(i32 %1992)
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  store i8 %1996, i8* %21, align 1
  %1997 = xor i32 %1987, %1976
  %1998 = xor i32 %1997, %1988
  %1999 = lshr i32 %1998, 4
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  store i8 %2001, i8* %26, align 1
  %2002 = icmp eq i32 %1988, 0
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %29, align 1
  %2004 = lshr i32 %1988, 31
  %2005 = trunc i32 %2004 to i8
  store i8 %2005, i8* %32, align 1
  %2006 = lshr i32 %1976, 31
  %2007 = lshr i32 %1987, 31
  %2008 = xor i32 %2007, %2006
  %2009 = xor i32 %2004, %2006
  %2010 = add nuw nsw i32 %2009, %2008
  %2011 = icmp eq i32 %2010, 2
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %38, align 1
  store i64 %1989, i64* %RDI.i585, align 8
  %2013 = add i64 %1966, -13131
  %2014 = add i64 %1966, 29
  %2015 = load i64, i64* %6, align 8
  %2016 = add i64 %2015, -8
  %2017 = inttoptr i64 %2016 to i64*
  store i64 %2014, i64* %2017, align 8
  store i64 %2016, i64* %6, align 8
  store i64 %2013, i64* %3, align 8
  %2018 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1930)
  %2019 = load i64, i64* %RBP.i, align 8
  %2020 = add i64 %2019, -60
  %2021 = load i32, i32* %EAX.i417, align 4
  %2022 = load i64, i64* %3, align 8
  %2023 = add i64 %2022, 3
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2020 to i32*
  store i32 %2021, i32* %2024, align 4
  %2025 = load i64, i64* %3, align 8
  %2026 = add i64 %2025, 37
  store i64 %2026, i64* %3, align 8
  br label %block_.L_404010

block_.L_403ff0:                                  ; preds = %block_.L_403f55
  %2027 = add nsw i64 %1972, 4347472
  %2028 = add i64 %1966, 11
  store i64 %2028, i64* %3, align 8
  %2029 = inttoptr i64 %2027 to i32*
  %2030 = load i32, i32* %2029, align 4
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RCX.i325, align 8
  %2032 = add i64 %1931, -8
  %2033 = add i64 %1966, 15
  store i64 %2033, i64* %3, align 8
  %2034 = inttoptr i64 %2032 to i32*
  %2035 = load i32, i32* %2034, align 4
  %2036 = sext i32 %2035 to i64
  store i64 %2036, i64* %RAX.i277, align 8
  %2037 = shl nsw i64 %2036, 2
  %2038 = add nsw i64 %2037, 4347472
  %2039 = add i64 %1966, 22
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i32*
  %2041 = load i32, i32* %2040, align 4
  %2042 = sub i32 %2030, %2041
  %2043 = zext i32 %2042 to i64
  store i64 %2043, i64* %RCX.i325, align 8
  %2044 = icmp ult i32 %2030, %2041
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %14, align 1
  %2046 = and i32 %2042, 255
  %2047 = tail call i32 @llvm.ctpop.i32(i32 %2046)
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = xor i8 %2049, 1
  store i8 %2050, i8* %21, align 1
  %2051 = xor i32 %2041, %2030
  %2052 = xor i32 %2051, %2042
  %2053 = lshr i32 %2052, 4
  %2054 = trunc i32 %2053 to i8
  %2055 = and i8 %2054, 1
  store i8 %2055, i8* %26, align 1
  %2056 = icmp eq i32 %2042, 0
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %29, align 1
  %2058 = lshr i32 %2042, 31
  %2059 = trunc i32 %2058 to i8
  store i8 %2059, i8* %32, align 1
  %2060 = lshr i32 %2030, 31
  %2061 = lshr i32 %2041, 31
  %2062 = xor i32 %2061, %2060
  %2063 = xor i32 %2058, %2060
  %2064 = add nuw nsw i32 %2063, %2062
  %2065 = icmp eq i32 %2064, 2
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %38, align 1
  store i64 %2043, i64* %RDI.i585, align 8
  %2067 = add i64 %1966, -13168
  %2068 = add i64 %1966, 29
  %2069 = load i64, i64* %6, align 8
  %2070 = add i64 %2069, -8
  %2071 = inttoptr i64 %2070 to i64*
  store i64 %2068, i64* %2071, align 8
  store i64 %2070, i64* %6, align 8
  store i64 %2067, i64* %3, align 8
  %2072 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %1930)
  %2073 = load i64, i64* %RBP.i, align 8
  %2074 = add i64 %2073, -60
  %2075 = load i32, i32* %EAX.i417, align 4
  %2076 = load i64, i64* %3, align 8
  %2077 = add i64 %2076, 3
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2074 to i32*
  store i32 %2075, i32* %2078, align 4
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_404010

block_.L_404010:                                  ; preds = %block_.L_403ff0, %block_403fcb
  %2079 = phi i64 [ %.pre24, %block_.L_403ff0 ], [ %2026, %block_403fcb ]
  %MEMORY.9 = phi %struct.Memory* [ %2072, %block_.L_403ff0 ], [ %2018, %block_403fcb ]
  %2080 = load i64, i64* %RBP.i, align 8
  %2081 = add i64 %2080, -60
  %2082 = add i64 %2079, 3
  store i64 %2082, i64* %3, align 8
  %2083 = inttoptr i64 %2081 to i32*
  %2084 = load i32, i32* %2083, align 4
  %2085 = zext i32 %2084 to i64
  store i64 %2085, i64* %RAX.i277, align 8
  store i64 ptrtoint (%G__0x85f3f0_type* @G__0x85f3f0 to i64), i64* %RCX.i325, align 8
  %2086 = sext i32 %2084 to i64
  store i64 %2086, i64* %RDX.i699, align 8
  %2087 = shl nsw i64 %2086, 2
  %2088 = add nsw i64 %2087, 6472384
  %2089 = add i64 %2079, 23
  store i64 %2089, i64* %3, align 8
  %2090 = inttoptr i64 %2088 to i32*
  %2091 = load i32, i32* %2090, align 4
  %2092 = zext i32 %2091 to i64
  store i64 %2092, i64* %RAX.i277, align 8
  %2093 = trunc i32 %2091 to i8
  store i8 %2093, i8* %SIL.i495, align 1
  %2094 = add i64 %2080, -4
  %2095 = add i64 %2079, 30
  store i64 %2095, i64* %3, align 8
  %2096 = inttoptr i64 %2094 to i32*
  %2097 = load i32, i32* %2096, align 4
  %2098 = sext i32 %2097 to i64
  %2099 = mul nsw i64 %2098, 144
  store i64 %2099, i64* %RDX.i699, align 8
  %2100 = lshr i64 %2099, 63
  %2101 = add i64 %2099, ptrtoint (%G__0x85f3f0_type* @G__0x85f3f0 to i64)
  store i64 %2101, i64* %RCX.i325, align 8
  %2102 = icmp ult i64 %2101, ptrtoint (%G__0x85f3f0_type* @G__0x85f3f0 to i64)
  %2103 = icmp ult i64 %2101, %2099
  %2104 = or i1 %2102, %2103
  %2105 = zext i1 %2104 to i8
  store i8 %2105, i8* %14, align 1
  %2106 = trunc i64 %2101 to i32
  %2107 = and i32 %2106, 248
  %2108 = tail call i32 @llvm.ctpop.i32(i32 %2107)
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  %2111 = xor i8 %2110, 1
  store i8 %2111, i8* %21, align 1
  %2112 = xor i64 %2099, ptrtoint (%G__0x85f3f0_type* @G__0x85f3f0 to i64)
  %2113 = xor i64 %2112, %2101
  %2114 = lshr i64 %2113, 4
  %2115 = trunc i64 %2114 to i8
  %2116 = and i8 %2115, 1
  store i8 %2116, i8* %26, align 1
  %2117 = icmp eq i64 %2101, 0
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %29, align 1
  %2119 = lshr i64 %2101, 63
  %2120 = trunc i64 %2119 to i8
  store i8 %2120, i8* %32, align 1
  %2121 = xor i64 %2119, lshr (i64 ptrtoint (%G__0x85f3f0_type* @G__0x85f3f0 to i64), i64 63)
  %2122 = xor i64 %2119, %2100
  %2123 = add nuw nsw i64 %2121, %2122
  %2124 = icmp eq i64 %2123, 2
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %38, align 1
  %2126 = add i64 %2080, -8
  %2127 = add i64 %2079, 44
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i32*
  %2129 = load i32, i32* %2128, align 4
  %2130 = sext i32 %2129 to i64
  store i64 %2130, i64* %RDX.i699, align 8
  %2131 = add i64 %2101, %2130
  %2132 = add i64 %2079, 48
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i8*
  store i8 %2093, i8* %2133, align 1
  %2134 = load i64, i64* %RBP.i, align 8
  %2135 = add i64 %2134, -8
  %2136 = load i64, i64* %3, align 8
  %2137 = add i64 %2136, 3
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2135 to i32*
  %2139 = load i32, i32* %2138, align 4
  %2140 = add i32 %2139, 1
  %2141 = zext i32 %2140 to i64
  store i64 %2141, i64* %RAX.i277, align 8
  %2142 = icmp eq i32 %2139, -1
  %2143 = icmp eq i32 %2140, 0
  %2144 = or i1 %2142, %2143
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %14, align 1
  %2146 = and i32 %2140, 255
  %2147 = tail call i32 @llvm.ctpop.i32(i32 %2146)
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  store i8 %2150, i8* %21, align 1
  %2151 = xor i32 %2140, %2139
  %2152 = lshr i32 %2151, 4
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  store i8 %2154, i8* %26, align 1
  %2155 = zext i1 %2143 to i8
  store i8 %2155, i8* %29, align 1
  %2156 = lshr i32 %2140, 31
  %2157 = trunc i32 %2156 to i8
  store i8 %2157, i8* %32, align 1
  %2158 = lshr i32 %2139, 31
  %2159 = xor i32 %2156, %2158
  %2160 = add nuw nsw i32 %2159, %2156
  %2161 = icmp eq i32 %2160, 2
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %38, align 1
  %2163 = add i64 %2136, 9
  store i64 %2163, i64* %3, align 8
  store i32 %2140, i32* %2138, align 4
  %2164 = load i64, i64* %3, align 8
  %2165 = add i64 %2164, -959
  store i64 %2165, i64* %3, align 8
  br label %block_.L_403c8a

block_.L_40404e:                                  ; preds = %block_.L_403c8a
  %2166 = add i64 %557, 8
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %558 to i32*
  %2168 = load i32, i32* %2167, align 4
  %2169 = add i32 %2168, 1
  %2170 = zext i32 %2169 to i64
  store i64 %2170, i64* %RAX.i277, align 8
  %2171 = icmp eq i32 %2168, -1
  %2172 = icmp eq i32 %2169, 0
  %2173 = or i1 %2171, %2172
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %14, align 1
  %2175 = and i32 %2169, 255
  %2176 = tail call i32 @llvm.ctpop.i32(i32 %2175)
  %2177 = trunc i32 %2176 to i8
  %2178 = and i8 %2177, 1
  %2179 = xor i8 %2178, 1
  store i8 %2179, i8* %21, align 1
  %2180 = xor i32 %2169, %2168
  %2181 = lshr i32 %2180, 4
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  store i8 %2183, i8* %26, align 1
  %2184 = zext i1 %2172 to i8
  store i8 %2184, i8* %29, align 1
  %2185 = lshr i32 %2169, 31
  %2186 = trunc i32 %2185 to i8
  store i8 %2186, i8* %32, align 1
  %2187 = lshr i32 %2168, 31
  %2188 = xor i32 %2185, %2187
  %2189 = add nuw nsw i32 %2188, %2185
  %2190 = icmp eq i32 %2189, 2
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %38, align 1
  %2192 = add i64 %557, 14
  store i64 %2192, i64* %3, align 8
  store i32 %2169, i32* %2167, align 4
  %2193 = load i64, i64* %3, align 8
  %2194 = add i64 %2193, -998
  store i64 %2194, i64* %3, align 8
  br label %block_.L_403c76

block_.L_404061:                                  ; preds = %block_.L_403c76
  %2195 = load i64, i64* %6, align 8
  %2196 = add i64 %2195, 64
  store i64 %2196, i64* %6, align 8
  %2197 = icmp ugt i64 %2195, -65
  %2198 = zext i1 %2197 to i8
  store i8 %2198, i8* %14, align 1
  %2199 = trunc i64 %2196 to i32
  %2200 = and i32 %2199, 255
  %2201 = tail call i32 @llvm.ctpop.i32(i32 %2200)
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  %2204 = xor i8 %2203, 1
  store i8 %2204, i8* %21, align 1
  %2205 = xor i64 %2196, %2195
  %2206 = lshr i64 %2205, 4
  %2207 = trunc i64 %2206 to i8
  %2208 = and i8 %2207, 1
  store i8 %2208, i8* %26, align 1
  %2209 = icmp eq i64 %2196, 0
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %29, align 1
  %2211 = lshr i64 %2196, 63
  %2212 = trunc i64 %2211 to i8
  store i8 %2212, i8* %32, align 1
  %2213 = lshr i64 %2195, 63
  %2214 = xor i64 %2211, %2213
  %2215 = add nuw nsw i64 %2214, %2211
  %2216 = icmp eq i64 %2215, 2
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %38, align 1
  %2218 = add i64 %523, 5
  store i64 %2218, i64* %3, align 8
  %2219 = add i64 %2195, 72
  %2220 = inttoptr i64 %2196 to i64*
  %2221 = load i64, i64* %2220, align 8
  store i64 %2221, i64* %RBP.i, align 8
  store i64 %2219, i64* %6, align 8
  %2222 = add i64 %523, 6
  store i64 %2222, i64* %3, align 8
  %2223 = inttoptr i64 %2219 to i64*
  %2224 = load i64, i64* %2223, align 8
  store i64 %2224, i64* %3, align 8
  %2225 = add i64 %2195, 80
  store i64 %2225, i64* %6, align 8
  ret %struct.Memory* %MEMORY.3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x40__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -64
  %10 = icmp ult i32 %8, 64
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
define %struct.Memory* @routine_jge_.L_403c6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x40__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -64
  %10 = icmp ult i32 %8, 64
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
define %struct.Memory* @routine_jge_.L_403c5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x7___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 7
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
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
define %struct.Memory* @routine_andl__0x7___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 7
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 34
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 34
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__0x84ad50___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x84ad50_type* @G__0x84ad50 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x427a50___rsi_4____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4356688
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x240___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 576
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_403c16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_403c1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__0x88c1b0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x88c1b0_type* @G__0x88c1b0 to i64), i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x427a50___rdx_4____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4356688
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 576
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403b90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403c61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403b7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x90__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -144
  %10 = icmp ult i32 %8, 144
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
define %struct.Memory* @routine_jge_.L_404061(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x90__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -144
  %10 = icmp ult i32 %8, 144
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
define %struct.Memory* @routine_jge_.L_40404e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl_0x425890___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4348048
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x425890___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4348048
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %9, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RCX, align 8
  %14 = icmp ult i32 %9, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %9
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %9, 31
  %36 = lshr i32 %11, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x425650___rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4347472
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x425650___rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4347472
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %9, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RCX, align 8
  %14 = icmp ult i32 %9, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %9
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %9, 31
  %36 = lshr i32 %11, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jle_.L_403d04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_403d24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x425650___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4347472
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x425650___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4347472
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %9, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RCX, align 8
  %14 = icmp ult i32 %9, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %9
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %9, 31
  %36 = lshr i32 %11, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
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
define %struct.Memory* @routine_movq__0x62ea40___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x62ea40_type* @G__0x62ea40 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c230___rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6472240
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 144
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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
define %struct.Memory* @routine_movb__sil____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %SIL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl_0x425890___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4348048
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_subl_0x425890___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4348048
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %9, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %9, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %9
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %9, 31
  %36 = lshr i32 %11, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x425650___rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4347472
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x425650___rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4347472
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %9, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDI, align 8
  %14 = icmp ult i32 %9, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %9
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %9, 31
  %36 = lshr i32 %11, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDI, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jle_.L_403dbf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_403ddf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x8667b0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x8667b0_type* @G__0x8667b0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c2f0___rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6472432
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_jle_.L_403e7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_403e9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__0x8870b0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x8870b0_type* @G__0x8870b0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c290___rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6472336
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jle_.L_403f35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_403f55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movq__0x633b60___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x633b60_type* @G__0x633b60 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c260___rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6472288
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_jle_.L_403ff0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_404010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x85f3f0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x85f3f0_type* @G__0x85f3f0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62c2c0___rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6472384
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403c8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_404053(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403c76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
