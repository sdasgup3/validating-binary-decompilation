; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x45b227_type = type <{ [8 x i8] }>
%G__0x45b23a_type = type <{ [8 x i8] }>
%G__0x45b259_type = type <{ [8 x i8] }>
%G__0x45b278_type = type <{ [8 x i8] }>
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
@G__0x45b227 = global %G__0x45b227_type zeroinitializer
@G__0x45b23a = global %G__0x45b23a_type zeroinitializer
@G__0x45b259 = global %G__0x45b259_type zeroinitializer
@G__0x45b278 = global %G__0x45b278_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @TophitsReport(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RDI.i28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i28, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 5
  store i64 %47, i64* %3, align 8
  %48 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %43, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %49 = load i64, i64* %48, align 1
  %50 = inttoptr i64 %45 to i64*
  store i64 %49, i64* %50, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i57 = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -20
  %54 = load i32, i32* %ESI.i57, align 4
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %59 to i64*
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %RDI.i28, align 8
  %64 = add i64 %63, 16
  %65 = add i64 %60, 8
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %64 to i32*
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = mul nsw i64 %68, 104
  %70 = lshr i64 %69, 63
  %71 = add i64 %69, 32
  store i64 %71, i64* %RDI.i28, align 8
  %72 = icmp ugt i64 %69, -33
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %14, align 1
  %74 = trunc i64 %71 to i32
  %75 = and i32 %74, 248
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %21, align 1
  %80 = xor i64 %71, %69
  %81 = lshr i64 %80, 4
  %82 = trunc i64 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %26, align 1
  %84 = icmp eq i64 %71, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %29, align 1
  %86 = lshr i64 %71, 63
  %87 = trunc i64 %86 to i8
  store i8 %87, i8* %32, align 1
  %88 = xor i64 %86, %70
  %89 = add nuw nsw i64 %88, %86
  %90 = icmp eq i64 %89, 2
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %38, align 1
  %RSI.i491 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %92 = and i64 %71, 4294967288
  store i64 %92, i64* %RSI.i491, align 8
  %93 = add i64 %58, -28
  %94 = add i64 %60, 21
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i32*
  store i32 %74, i32* %95, align 4
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -24
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 7
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %97 to i32*
  store i32 0, i32* %100, align 4
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i583 = getelementptr inbounds %union.anon, %union.anon* %101, i64 0, i32 0
  %RCX.i580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %EAX.i577 = bitcast %union.anon* %101 to i32*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i391 = getelementptr inbounds %union.anon, %union.anon* %102, i64 0, i32 0
  %EDX.i132 = bitcast %union.anon* %102 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_44d210

block_.L_44d210:                                  ; preds = %block_.L_44d4d8, %entry
  %103 = phi i64 [ %.pre, %entry ], [ %1690, %block_.L_44d4d8 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.11, %block_.L_44d4d8 ]
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -24
  %106 = add i64 %103, 3
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = zext i32 %108 to i64
  store i64 %109, i64* %RAX.i583, align 8
  %110 = add i64 %104, -8
  %111 = add i64 %103, 7
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RCX.i580, align 8
  %114 = add i64 %113, 20
  %115 = add i64 %103, 10
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = sub i32 %108, %117
  %119 = icmp ult i32 %108, %117
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %14, align 1
  %121 = and i32 %118, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %21, align 1
  %126 = xor i32 %117, %108
  %127 = xor i32 %126, %118
  %128 = lshr i32 %127, 4
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  store i8 %130, i8* %26, align 1
  %131 = icmp eq i32 %118, 0
  %132 = zext i1 %131 to i8
  store i8 %132, i8* %29, align 1
  %133 = lshr i32 %118, 31
  %134 = trunc i32 %133 to i8
  store i8 %134, i8* %32, align 1
  %135 = lshr i32 %108, 31
  %136 = lshr i32 %117, 31
  %137 = xor i32 %136, %135
  %138 = xor i32 %133, %135
  %139 = add nuw nsw i32 %138, %137
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %38, align 1
  %142 = icmp ne i8 %134, 0
  %143 = xor i1 %142, %140
  %.v = select i1 %143, i64 16, i64 731
  %144 = add i64 %103, %.v
  store i64 %144, i64* %3, align 8
  br i1 %143, label %block_44d220, label %block_.L_44d4eb

block_44d220:                                     ; preds = %block_.L_44d210
  %145 = add i64 %144, 4
  store i64 %145, i64* %3, align 8
  %146 = load i64, i64* %112, align 8
  store i64 %146, i64* %RAX.i583, align 8
  %147 = add i64 %146, 8
  %148 = add i64 %144, 8
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i64*
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %RAX.i583, align 8
  %151 = add i64 %144, 12
  store i64 %151, i64* %3, align 8
  %152 = load i32, i32* %107, align 4
  %153 = sext i32 %152 to i64
  %154 = mul nsw i64 %153, 104
  store i64 %154, i64* %RCX.i580, align 8
  %155 = lshr i64 %154, 63
  %156 = add i64 %154, %150
  store i64 %156, i64* %RAX.i583, align 8
  %157 = icmp ult i64 %156, %150
  %158 = icmp ult i64 %156, %154
  %159 = or i1 %157, %158
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %14, align 1
  %161 = trunc i64 %156 to i32
  %162 = and i32 %161, 255
  %163 = tail call i32 @llvm.ctpop.i32(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %21, align 1
  %167 = xor i64 %154, %150
  %168 = xor i64 %167, %156
  %169 = lshr i64 %168, 4
  %170 = trunc i64 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %26, align 1
  %172 = icmp eq i64 %156, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %29, align 1
  %174 = lshr i64 %156, 63
  %175 = trunc i64 %174 to i8
  store i8 %175, i8* %32, align 1
  %176 = lshr i64 %150, 63
  %177 = xor i64 %174, %176
  %178 = xor i64 %174, %155
  %179 = add nuw nsw i64 %177, %178
  %180 = icmp eq i64 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %38, align 1
  %182 = add i64 %156, 40
  %183 = add i64 %144, 24
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i64*
  %185 = load i64, i64* %184, align 8
  store i8 0, i8* %14, align 1
  %186 = trunc i64 %185 to i32
  %187 = and i32 %186, 255
  %188 = tail call i32 @llvm.ctpop.i32(i32 %187)
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  store i8 %191, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %192 = icmp eq i64 %185, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %29, align 1
  %194 = lshr i64 %185, 63
  %195 = trunc i64 %194 to i8
  store i8 %195, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v41 = select i1 %192, i64 74, i64 30
  %196 = add i64 %144, %.v41
  store i64 %196, i64* %3, align 8
  br i1 %192, label %block_.L_44d26a, label %block_44d23e

block_44d23e:                                     ; preds = %block_44d220
  %197 = load i64, i64* %RBP.i, align 8
  %198 = add i64 %197, -8
  %199 = add i64 %196, 4
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i64*
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %RAX.i583, align 8
  %202 = add i64 %201, 8
  %203 = add i64 %196, 8
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %RAX.i583, align 8
  %206 = add i64 %197, -24
  %207 = add i64 %196, 12
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = mul nsw i64 %210, 104
  store i64 %211, i64* %RCX.i580, align 8
  %212 = lshr i64 %211, 63
  %213 = add i64 %211, %205
  store i64 %213, i64* %RAX.i583, align 8
  %214 = icmp ult i64 %213, %205
  %215 = icmp ult i64 %213, %211
  %216 = or i1 %214, %215
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %14, align 1
  %218 = trunc i64 %213 to i32
  %219 = and i32 %218, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219)
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %21, align 1
  %224 = xor i64 %211, %205
  %225 = xor i64 %224, %213
  %226 = lshr i64 %225, 4
  %227 = trunc i64 %226 to i8
  %228 = and i8 %227, 1
  store i8 %228, i8* %26, align 1
  %229 = icmp eq i64 %213, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %29, align 1
  %231 = lshr i64 %213, 63
  %232 = trunc i64 %231 to i8
  store i8 %232, i8* %32, align 1
  %233 = lshr i64 %205, 63
  %234 = xor i64 %231, %233
  %235 = xor i64 %231, %212
  %236 = add nuw nsw i64 %234, %235
  %237 = icmp eq i64 %236, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %38, align 1
  %239 = add i64 %213, 40
  %240 = add i64 %196, 23
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %RDI.i28, align 8
  %243 = add i64 %196, -310750
  %244 = add i64 %196, 28
  %245 = load i64, i64* %6, align 8
  %246 = add i64 %245, -8
  %247 = inttoptr i64 %246 to i64*
  store i64 %244, i64* %247, align 8
  store i64 %246, i64* %6, align 8
  store i64 %243, i64* %3, align 8
  %248 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.0)
  %249 = load i64, i64* %RAX.i583, align 8
  %250 = load i64, i64* %3, align 8
  %251 = add i64 %249, 1
  store i64 %251, i64* %RAX.i583, align 8
  %252 = icmp eq i64 %249, -1
  %253 = icmp eq i64 %251, 0
  %254 = or i1 %252, %253
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %14, align 1
  %256 = trunc i64 %251 to i32
  %257 = and i32 %256, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %21, align 1
  %262 = xor i64 %251, %249
  %263 = lshr i64 %262, 4
  %264 = trunc i64 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %26, align 1
  %266 = zext i1 %253 to i8
  store i8 %266, i8* %29, align 1
  %267 = lshr i64 %251, 63
  %268 = trunc i64 %267 to i8
  store i8 %268, i8* %32, align 1
  %269 = lshr i64 %249, 63
  %270 = xor i64 %267, %269
  %271 = add nuw nsw i64 %270, %267
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %38, align 1
  %274 = load i64, i64* %RBP.i, align 8
  %275 = add i64 %274, -28
  %276 = add i64 %250, 8
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = add i64 %251, %279
  store i64 %280, i64* %RCX.i580, align 8
  %281 = icmp ult i64 %280, %279
  %282 = icmp ult i64 %280, %251
  %283 = or i1 %281, %282
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %14, align 1
  %285 = trunc i64 %280 to i32
  %286 = and i32 %285, 255
  %287 = tail call i32 @llvm.ctpop.i32(i32 %286)
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  store i8 %290, i8* %21, align 1
  %291 = xor i64 %251, %279
  %292 = xor i64 %291, %280
  %293 = lshr i64 %292, 4
  %294 = trunc i64 %293 to i8
  %295 = and i8 %294, 1
  store i8 %295, i8* %26, align 1
  %296 = icmp eq i64 %280, 0
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %29, align 1
  %298 = lshr i64 %280, 63
  %299 = trunc i64 %298 to i8
  store i8 %299, i8* %32, align 1
  %300 = lshr i64 %279, 63
  %301 = xor i64 %298, %300
  %302 = xor i64 %298, %267
  %303 = add nuw nsw i64 %301, %302
  %304 = icmp eq i64 %303, 2
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %38, align 1
  %306 = and i64 %280, 4294967295
  store i64 %306, i64* %RDX.i391, align 8
  %307 = add i64 %250, 16
  store i64 %307, i64* %3, align 8
  store i32 %285, i32* %277, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_44d26a

block_.L_44d26a:                                  ; preds = %block_44d23e, %block_44d220
  %308 = phi i64 [ %196, %block_44d220 ], [ %.pre29, %block_44d23e ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_44d220 ], [ %248, %block_44d23e ]
  %309 = load i64, i64* %RBP.i, align 8
  %310 = add i64 %309, -8
  %311 = add i64 %308, 4
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %RAX.i583, align 8
  %314 = add i64 %313, 8
  %315 = add i64 %308, 8
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i64*
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %RAX.i583, align 8
  %318 = add i64 %309, -24
  %319 = add i64 %308, 12
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = sext i32 %321 to i64
  %323 = mul nsw i64 %322, 104
  store i64 %323, i64* %RCX.i580, align 8
  %324 = lshr i64 %323, 63
  %325 = add i64 %323, %317
  store i64 %325, i64* %RAX.i583, align 8
  %326 = icmp ult i64 %325, %317
  %327 = icmp ult i64 %325, %323
  %328 = or i1 %326, %327
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %14, align 1
  %330 = trunc i64 %325 to i32
  %331 = and i32 %330, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331)
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %21, align 1
  %336 = xor i64 %323, %317
  %337 = xor i64 %336, %325
  %338 = lshr i64 %337, 4
  %339 = trunc i64 %338 to i8
  %340 = and i8 %339, 1
  store i8 %340, i8* %26, align 1
  %341 = icmp eq i64 %325, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %29, align 1
  %343 = lshr i64 %325, 63
  %344 = trunc i64 %343 to i8
  store i8 %344, i8* %32, align 1
  %345 = lshr i64 %317, 63
  %346 = xor i64 %343, %345
  %347 = xor i64 %343, %324
  %348 = add nuw nsw i64 %346, %347
  %349 = icmp eq i64 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %38, align 1
  %351 = add i64 %325, 48
  %352 = add i64 %308, 24
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i64*
  %354 = load i64, i64* %353, align 8
  store i8 0, i8* %14, align 1
  %355 = trunc i64 %354 to i32
  %356 = and i32 %355, 255
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356)
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  store i8 %360, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %361 = icmp eq i64 %354, 0
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %29, align 1
  %363 = lshr i64 %354, 63
  %364 = trunc i64 %363 to i8
  store i8 %364, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v42 = select i1 %361, i64 74, i64 30
  %365 = add i64 %308, %.v42
  store i64 %365, i64* %3, align 8
  br i1 %361, label %block_.L_44d2b4, label %block_44d288

block_44d288:                                     ; preds = %block_.L_44d26a
  %366 = load i64, i64* %RBP.i, align 8
  %367 = add i64 %366, -8
  %368 = add i64 %365, 4
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i64*
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %RAX.i583, align 8
  %371 = add i64 %370, 8
  %372 = add i64 %365, 8
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i64*
  %374 = load i64, i64* %373, align 8
  store i64 %374, i64* %RAX.i583, align 8
  %375 = add i64 %366, -24
  %376 = add i64 %365, 12
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = sext i32 %378 to i64
  %380 = mul nsw i64 %379, 104
  store i64 %380, i64* %RCX.i580, align 8
  %381 = lshr i64 %380, 63
  %382 = add i64 %380, %374
  store i64 %382, i64* %RAX.i583, align 8
  %383 = icmp ult i64 %382, %374
  %384 = icmp ult i64 %382, %380
  %385 = or i1 %383, %384
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %14, align 1
  %387 = trunc i64 %382 to i32
  %388 = and i32 %387, 255
  %389 = tail call i32 @llvm.ctpop.i32(i32 %388)
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = xor i8 %391, 1
  store i8 %392, i8* %21, align 1
  %393 = xor i64 %380, %374
  %394 = xor i64 %393, %382
  %395 = lshr i64 %394, 4
  %396 = trunc i64 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %26, align 1
  %398 = icmp eq i64 %382, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %29, align 1
  %400 = lshr i64 %382, 63
  %401 = trunc i64 %400 to i8
  store i8 %401, i8* %32, align 1
  %402 = lshr i64 %374, 63
  %403 = xor i64 %400, %402
  %404 = xor i64 %400, %381
  %405 = add nuw nsw i64 %403, %404
  %406 = icmp eq i64 %405, 2
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %38, align 1
  %408 = add i64 %382, 48
  %409 = add i64 %365, 23
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %RDI.i28, align 8
  %412 = add i64 %365, -310824
  %413 = add i64 %365, 28
  %414 = load i64, i64* %6, align 8
  %415 = add i64 %414, -8
  %416 = inttoptr i64 %415 to i64*
  store i64 %413, i64* %416, align 8
  store i64 %415, i64* %6, align 8
  store i64 %412, i64* %3, align 8
  %417 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.1)
  %418 = load i64, i64* %RAX.i583, align 8
  %419 = load i64, i64* %3, align 8
  %420 = add i64 %418, 1
  store i64 %420, i64* %RAX.i583, align 8
  %421 = icmp eq i64 %418, -1
  %422 = icmp eq i64 %420, 0
  %423 = or i1 %421, %422
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %14, align 1
  %425 = trunc i64 %420 to i32
  %426 = and i32 %425, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426)
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %21, align 1
  %431 = xor i64 %420, %418
  %432 = lshr i64 %431, 4
  %433 = trunc i64 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %26, align 1
  %435 = zext i1 %422 to i8
  store i8 %435, i8* %29, align 1
  %436 = lshr i64 %420, 63
  %437 = trunc i64 %436 to i8
  store i8 %437, i8* %32, align 1
  %438 = lshr i64 %418, 63
  %439 = xor i64 %436, %438
  %440 = add nuw nsw i64 %439, %436
  %441 = icmp eq i64 %440, 2
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %38, align 1
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -28
  %445 = add i64 %419, 8
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = sext i32 %447 to i64
  %449 = add i64 %420, %448
  store i64 %449, i64* %RCX.i580, align 8
  %450 = icmp ult i64 %449, %448
  %451 = icmp ult i64 %449, %420
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %14, align 1
  %454 = trunc i64 %449 to i32
  %455 = and i32 %454, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %21, align 1
  %460 = xor i64 %420, %448
  %461 = xor i64 %460, %449
  %462 = lshr i64 %461, 4
  %463 = trunc i64 %462 to i8
  %464 = and i8 %463, 1
  store i8 %464, i8* %26, align 1
  %465 = icmp eq i64 %449, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %29, align 1
  %467 = lshr i64 %449, 63
  %468 = trunc i64 %467 to i8
  store i8 %468, i8* %32, align 1
  %469 = lshr i64 %448, 63
  %470 = xor i64 %467, %469
  %471 = xor i64 %467, %436
  %472 = add nuw nsw i64 %470, %471
  %473 = icmp eq i64 %472, 2
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %38, align 1
  %475 = and i64 %449, 4294967295
  store i64 %475, i64* %RDX.i391, align 8
  %476 = add i64 %419, 16
  store i64 %476, i64* %3, align 8
  store i32 %454, i32* %446, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_44d2b4

block_.L_44d2b4:                                  ; preds = %block_44d288, %block_.L_44d26a
  %477 = phi i64 [ %365, %block_.L_44d26a ], [ %.pre30, %block_44d288 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_44d26a ], [ %417, %block_44d288 ]
  %478 = load i64, i64* %RBP.i, align 8
  %479 = add i64 %478, -8
  %480 = add i64 %477, 4
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i64*
  %482 = load i64, i64* %481, align 8
  store i64 %482, i64* %RAX.i583, align 8
  %483 = add i64 %482, 8
  %484 = add i64 %477, 8
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i64*
  %486 = load i64, i64* %485, align 8
  store i64 %486, i64* %RAX.i583, align 8
  %487 = add i64 %478, -24
  %488 = add i64 %477, 12
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = sext i32 %490 to i64
  %492 = mul nsw i64 %491, 104
  store i64 %492, i64* %RCX.i580, align 8
  %493 = lshr i64 %492, 63
  %494 = add i64 %492, %486
  store i64 %494, i64* %RAX.i583, align 8
  %495 = icmp ult i64 %494, %486
  %496 = icmp ult i64 %494, %492
  %497 = or i1 %495, %496
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %14, align 1
  %499 = trunc i64 %494 to i32
  %500 = and i32 %499, 255
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500)
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  store i8 %504, i8* %21, align 1
  %505 = xor i64 %492, %486
  %506 = xor i64 %505, %494
  %507 = lshr i64 %506, 4
  %508 = trunc i64 %507 to i8
  %509 = and i8 %508, 1
  store i8 %509, i8* %26, align 1
  %510 = icmp eq i64 %494, 0
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %29, align 1
  %512 = lshr i64 %494, 63
  %513 = trunc i64 %512 to i8
  store i8 %513, i8* %32, align 1
  %514 = lshr i64 %486, 63
  %515 = xor i64 %512, %514
  %516 = xor i64 %512, %493
  %517 = add nuw nsw i64 %515, %516
  %518 = icmp eq i64 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %38, align 1
  %520 = add i64 %494, 56
  %521 = add i64 %477, 24
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i64*
  %523 = load i64, i64* %522, align 8
  store i8 0, i8* %14, align 1
  %524 = trunc i64 %523 to i32
  %525 = and i32 %524, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %530 = icmp eq i64 %523, 0
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %29, align 1
  %532 = lshr i64 %523, 63
  %533 = trunc i64 %532 to i8
  store i8 %533, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v43 = select i1 %530, i64 74, i64 30
  %534 = add i64 %477, %.v43
  store i64 %534, i64* %3, align 8
  br i1 %530, label %block_.L_44d2fe, label %block_44d2d2

block_44d2d2:                                     ; preds = %block_.L_44d2b4
  %535 = load i64, i64* %RBP.i, align 8
  %536 = add i64 %535, -8
  %537 = add i64 %534, 4
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %RAX.i583, align 8
  %540 = add i64 %539, 8
  %541 = add i64 %534, 8
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i64*
  %543 = load i64, i64* %542, align 8
  store i64 %543, i64* %RAX.i583, align 8
  %544 = add i64 %535, -24
  %545 = add i64 %534, 12
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = sext i32 %547 to i64
  %549 = mul nsw i64 %548, 104
  store i64 %549, i64* %RCX.i580, align 8
  %550 = lshr i64 %549, 63
  %551 = add i64 %549, %543
  store i64 %551, i64* %RAX.i583, align 8
  %552 = icmp ult i64 %551, %543
  %553 = icmp ult i64 %551, %549
  %554 = or i1 %552, %553
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %14, align 1
  %556 = trunc i64 %551 to i32
  %557 = and i32 %556, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557)
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %21, align 1
  %562 = xor i64 %549, %543
  %563 = xor i64 %562, %551
  %564 = lshr i64 %563, 4
  %565 = trunc i64 %564 to i8
  %566 = and i8 %565, 1
  store i8 %566, i8* %26, align 1
  %567 = icmp eq i64 %551, 0
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %29, align 1
  %569 = lshr i64 %551, 63
  %570 = trunc i64 %569 to i8
  store i8 %570, i8* %32, align 1
  %571 = lshr i64 %543, 63
  %572 = xor i64 %569, %571
  %573 = xor i64 %569, %550
  %574 = add nuw nsw i64 %572, %573
  %575 = icmp eq i64 %574, 2
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %38, align 1
  %577 = add i64 %551, 56
  %578 = add i64 %534, 23
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i64*
  %580 = load i64, i64* %579, align 8
  store i64 %580, i64* %RDI.i28, align 8
  %581 = add i64 %534, -310898
  %582 = add i64 %534, 28
  %583 = load i64, i64* %6, align 8
  %584 = add i64 %583, -8
  %585 = inttoptr i64 %584 to i64*
  store i64 %582, i64* %585, align 8
  store i64 %584, i64* %6, align 8
  store i64 %581, i64* %3, align 8
  %586 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.2)
  %587 = load i64, i64* %RAX.i583, align 8
  %588 = load i64, i64* %3, align 8
  %589 = add i64 %587, 1
  store i64 %589, i64* %RAX.i583, align 8
  %590 = icmp eq i64 %587, -1
  %591 = icmp eq i64 %589, 0
  %592 = or i1 %590, %591
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %14, align 1
  %594 = trunc i64 %589 to i32
  %595 = and i32 %594, 255
  %596 = tail call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %21, align 1
  %600 = xor i64 %589, %587
  %601 = lshr i64 %600, 4
  %602 = trunc i64 %601 to i8
  %603 = and i8 %602, 1
  store i8 %603, i8* %26, align 1
  %604 = zext i1 %591 to i8
  store i8 %604, i8* %29, align 1
  %605 = lshr i64 %589, 63
  %606 = trunc i64 %605 to i8
  store i8 %606, i8* %32, align 1
  %607 = lshr i64 %587, 63
  %608 = xor i64 %605, %607
  %609 = add nuw nsw i64 %608, %605
  %610 = icmp eq i64 %609, 2
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %38, align 1
  %612 = load i64, i64* %RBP.i, align 8
  %613 = add i64 %612, -28
  %614 = add i64 %588, 8
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i32*
  %616 = load i32, i32* %615, align 4
  %617 = sext i32 %616 to i64
  %618 = add i64 %589, %617
  store i64 %618, i64* %RCX.i580, align 8
  %619 = icmp ult i64 %618, %617
  %620 = icmp ult i64 %618, %589
  %621 = or i1 %619, %620
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %14, align 1
  %623 = trunc i64 %618 to i32
  %624 = and i32 %623, 255
  %625 = tail call i32 @llvm.ctpop.i32(i32 %624)
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  store i8 %628, i8* %21, align 1
  %629 = xor i64 %589, %617
  %630 = xor i64 %629, %618
  %631 = lshr i64 %630, 4
  %632 = trunc i64 %631 to i8
  %633 = and i8 %632, 1
  store i8 %633, i8* %26, align 1
  %634 = icmp eq i64 %618, 0
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %29, align 1
  %636 = lshr i64 %618, 63
  %637 = trunc i64 %636 to i8
  store i8 %637, i8* %32, align 1
  %638 = lshr i64 %617, 63
  %639 = xor i64 %636, %638
  %640 = xor i64 %636, %605
  %641 = add nuw nsw i64 %639, %640
  %642 = icmp eq i64 %641, 2
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %38, align 1
  %644 = and i64 %618, 4294967295
  store i64 %644, i64* %RDX.i391, align 8
  %645 = add i64 %588, 16
  store i64 %645, i64* %3, align 8
  store i32 %623, i32* %615, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_44d2fe

block_.L_44d2fe:                                  ; preds = %block_44d2d2, %block_.L_44d2b4
  %646 = phi i64 [ %534, %block_.L_44d2b4 ], [ %.pre31, %block_44d2d2 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_44d2b4 ], [ %586, %block_44d2d2 ]
  %647 = load i64, i64* %RBP.i, align 8
  %648 = add i64 %647, -8
  %649 = add i64 %646, 4
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %RAX.i583, align 8
  %652 = add i64 %651, 8
  %653 = add i64 %646, 8
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i64*
  %655 = load i64, i64* %654, align 8
  store i64 %655, i64* %RAX.i583, align 8
  %656 = add i64 %647, -24
  %657 = add i64 %646, 12
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = sext i32 %659 to i64
  %661 = mul nsw i64 %660, 104
  store i64 %661, i64* %RCX.i580, align 8
  %662 = lshr i64 %661, 63
  %663 = add i64 %661, %655
  store i64 %663, i64* %RAX.i583, align 8
  %664 = icmp ult i64 %663, %655
  %665 = icmp ult i64 %663, %661
  %666 = or i1 %664, %665
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %14, align 1
  %668 = trunc i64 %663 to i32
  %669 = and i32 %668, 255
  %670 = tail call i32 @llvm.ctpop.i32(i32 %669)
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  %673 = xor i8 %672, 1
  store i8 %673, i8* %21, align 1
  %674 = xor i64 %661, %655
  %675 = xor i64 %674, %663
  %676 = lshr i64 %675, 4
  %677 = trunc i64 %676 to i8
  %678 = and i8 %677, 1
  store i8 %678, i8* %26, align 1
  %679 = icmp eq i64 %663, 0
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %29, align 1
  %681 = lshr i64 %663, 63
  %682 = trunc i64 %681 to i8
  store i8 %682, i8* %32, align 1
  %683 = lshr i64 %655, 63
  %684 = xor i64 %681, %683
  %685 = xor i64 %681, %662
  %686 = add nuw nsw i64 %684, %685
  %687 = icmp eq i64 %686, 2
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %38, align 1
  %689 = add i64 %663, 96
  %690 = add i64 %646, 24
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i64*
  %692 = load i64, i64* %691, align 8
  store i8 0, i8* %14, align 1
  %693 = trunc i64 %692 to i32
  %694 = and i32 %693, 255
  %695 = tail call i32 @llvm.ctpop.i32(i32 %694)
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  store i8 %698, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %699 = icmp eq i64 %692, 0
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %29, align 1
  %701 = lshr i64 %692, 63
  %702 = trunc i64 %701 to i8
  store i8 %702, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v44 = select i1 %699, i64 474, i64 30
  %703 = add i64 %646, %.v44
  store i64 %703, i64* %3, align 8
  br i1 %699, label %block_.L_44d4d8, label %block_44d31c

block_44d31c:                                     ; preds = %block_.L_44d2fe
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -28
  %706 = add i64 %703, 4
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  %709 = sext i32 %708 to i64
  %710 = add nsw i64 %709, 72
  store i64 %710, i64* %RAX.i583, align 8
  %711 = icmp ugt i32 %708, -73
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %14, align 1
  %713 = trunc i64 %710 to i32
  %714 = and i32 %713, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %21, align 1
  %719 = xor i64 %710, %709
  %720 = lshr i64 %719, 4
  %721 = trunc i64 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %26, align 1
  %723 = icmp eq i64 %710, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %29, align 1
  %725 = lshr i64 %710, 63
  %726 = trunc i64 %725 to i8
  store i8 %726, i8* %32, align 1
  %727 = lshr i64 %709, 63
  %728 = xor i64 %725, %727
  %729 = add nuw nsw i64 %728, %725
  %730 = icmp eq i64 %729, 2
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %38, align 1
  %732 = and i64 %710, 4294967295
  store i64 %732, i64* %RCX.i580, align 8
  %733 = add i64 %703, 13
  store i64 %733, i64* %3, align 8
  store i32 %713, i32* %707, align 4
  %734 = load i64, i64* %RBP.i, align 8
  %735 = add i64 %734, -32
  %736 = load i64, i64* %3, align 8
  %737 = add i64 %736, 7
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %735 to i32*
  store i32 0, i32* %738, align 4
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -8
  %741 = load i64, i64* %3, align 8
  %742 = add i64 %741, 4
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %740 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %RAX.i583, align 8
  %745 = add i64 %744, 8
  %746 = add i64 %741, 8
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %RAX.i583, align 8
  %749 = add i64 %739, -24
  %750 = add i64 %741, 12
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = sext i32 %752 to i64
  %754 = mul nsw i64 %753, 104
  store i64 %754, i64* %RDX.i391, align 8
  %755 = lshr i64 %754, 63
  %756 = add i64 %754, %748
  store i64 %756, i64* %RAX.i583, align 8
  %757 = icmp ult i64 %756, %748
  %758 = icmp ult i64 %756, %754
  %759 = or i1 %757, %758
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %14, align 1
  %761 = trunc i64 %756 to i32
  %762 = and i32 %761, 255
  %763 = tail call i32 @llvm.ctpop.i32(i32 %762)
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  %766 = xor i8 %765, 1
  store i8 %766, i8* %21, align 1
  %767 = xor i64 %754, %748
  %768 = xor i64 %767, %756
  %769 = lshr i64 %768, 4
  %770 = trunc i64 %769 to i8
  %771 = and i8 %770, 1
  store i8 %771, i8* %26, align 1
  %772 = icmp eq i64 %756, 0
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %29, align 1
  %774 = lshr i64 %756, 63
  %775 = trunc i64 %774 to i8
  store i8 %775, i8* %32, align 1
  %776 = lshr i64 %748, 63
  %777 = xor i64 %774, %776
  %778 = xor i64 %774, %755
  %779 = add nuw nsw i64 %777, %778
  %780 = icmp eq i64 %779, 2
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %38, align 1
  %782 = add i64 %756, 96
  %783 = add i64 %741, 23
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i64*
  %785 = load i64, i64* %784, align 8
  store i64 %785, i64* %RAX.i583, align 8
  %786 = add i64 %741, 27
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i64*
  %788 = load i64, i64* %787, align 8
  store i8 0, i8* %14, align 1
  %789 = trunc i64 %788 to i32
  %790 = and i32 %789, 255
  %791 = tail call i32 @llvm.ctpop.i32(i32 %790)
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  store i8 %794, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %795 = icmp eq i64 %788, 0
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %29, align 1
  %797 = lshr i64 %788, 63
  %798 = trunc i64 %797 to i8
  store i8 %798, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v45 = select i1 %795, i64 42, i64 33
  %799 = add i64 %741, %.v45
  store i64 %799, i64* %3, align 8
  br i1 %795, label %block_.L_44d35a, label %block_44d351

block_44d351:                                     ; preds = %block_44d31c
  %800 = load i64, i64* %RBP.i, align 8
  %801 = add i64 %800, -32
  %802 = add i64 %799, 3
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i32*
  %804 = load i32, i32* %803, align 4
  %805 = add i32 %804, 1
  %806 = zext i32 %805 to i64
  store i64 %806, i64* %RAX.i583, align 8
  %807 = icmp eq i32 %804, -1
  %808 = icmp eq i32 %805, 0
  %809 = or i1 %807, %808
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %14, align 1
  %811 = and i32 %805, 255
  %812 = tail call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  store i8 %815, i8* %21, align 1
  %816 = xor i32 %805, %804
  %817 = lshr i32 %816, 4
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  store i8 %819, i8* %26, align 1
  %820 = zext i1 %808 to i8
  store i8 %820, i8* %29, align 1
  %821 = lshr i32 %805, 31
  %822 = trunc i32 %821 to i8
  store i8 %822, i8* %32, align 1
  %823 = lshr i32 %804, 31
  %824 = xor i32 %821, %823
  %825 = add nuw nsw i32 %824, %821
  %826 = icmp eq i32 %825, 2
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %38, align 1
  %828 = add i64 %799, 9
  store i64 %828, i64* %3, align 8
  store i32 %805, i32* %803, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_44d35a

block_.L_44d35a:                                  ; preds = %block_44d351, %block_44d31c
  %829 = phi i64 [ %.pre32, %block_44d351 ], [ %799, %block_44d31c ]
  %830 = load i64, i64* %RBP.i, align 8
  %831 = add i64 %830, -8
  %832 = add i64 %829, 4
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i64*
  %834 = load i64, i64* %833, align 8
  store i64 %834, i64* %RAX.i583, align 8
  %835 = add i64 %834, 8
  %836 = add i64 %829, 8
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i64*
  %838 = load i64, i64* %837, align 8
  store i64 %838, i64* %RAX.i583, align 8
  %839 = add i64 %830, -24
  %840 = add i64 %829, 12
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i32*
  %842 = load i32, i32* %841, align 4
  %843 = sext i32 %842 to i64
  %844 = mul nsw i64 %843, 104
  store i64 %844, i64* %RCX.i580, align 8
  %845 = lshr i64 %844, 63
  %846 = add i64 %844, %838
  store i64 %846, i64* %RAX.i583, align 8
  %847 = icmp ult i64 %846, %838
  %848 = icmp ult i64 %846, %844
  %849 = or i1 %847, %848
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %14, align 1
  %851 = trunc i64 %846 to i32
  %852 = and i32 %851, 255
  %853 = tail call i32 @llvm.ctpop.i32(i32 %852)
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  %856 = xor i8 %855, 1
  store i8 %856, i8* %21, align 1
  %857 = xor i64 %844, %838
  %858 = xor i64 %857, %846
  %859 = lshr i64 %858, 4
  %860 = trunc i64 %859 to i8
  %861 = and i8 %860, 1
  store i8 %861, i8* %26, align 1
  %862 = icmp eq i64 %846, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %29, align 1
  %864 = lshr i64 %846, 63
  %865 = trunc i64 %864 to i8
  store i8 %865, i8* %32, align 1
  %866 = lshr i64 %838, 63
  %867 = xor i64 %864, %866
  %868 = xor i64 %864, %845
  %869 = add nuw nsw i64 %867, %868
  %870 = icmp eq i64 %869, 2
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %38, align 1
  %872 = add i64 %846, 96
  %873 = add i64 %829, 23
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i64*
  %875 = load i64, i64* %874, align 8
  store i64 %875, i64* %RAX.i583, align 8
  %876 = add i64 %875, 8
  %877 = add i64 %829, 28
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i64*
  %879 = load i64, i64* %878, align 8
  store i8 0, i8* %14, align 1
  %880 = trunc i64 %879 to i32
  %881 = and i32 %880, 255
  %882 = tail call i32 @llvm.ctpop.i32(i32 %881)
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  %885 = xor i8 %884, 1
  store i8 %885, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %886 = icmp eq i64 %879, 0
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %29, align 1
  %888 = lshr i64 %879, 63
  %889 = trunc i64 %888 to i8
  store i8 %889, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v46 = select i1 %886, i64 43, i64 34
  %890 = add i64 %829, %.v46
  store i64 %890, i64* %3, align 8
  br i1 %886, label %block_.L_44d385, label %block_44d37c

block_44d37c:                                     ; preds = %block_.L_44d35a
  %891 = load i64, i64* %RBP.i, align 8
  %892 = add i64 %891, -32
  %893 = add i64 %890, 3
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = add i32 %895, 1
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RAX.i583, align 8
  %898 = icmp eq i32 %895, -1
  %899 = icmp eq i32 %896, 0
  %900 = or i1 %898, %899
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %14, align 1
  %902 = and i32 %896, 255
  %903 = tail call i32 @llvm.ctpop.i32(i32 %902)
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  store i8 %906, i8* %21, align 1
  %907 = xor i32 %896, %895
  %908 = lshr i32 %907, 4
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  store i8 %910, i8* %26, align 1
  %911 = zext i1 %899 to i8
  store i8 %911, i8* %29, align 1
  %912 = lshr i32 %896, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %32, align 1
  %914 = lshr i32 %895, 31
  %915 = xor i32 %912, %914
  %916 = add nuw nsw i32 %915, %912
  %917 = icmp eq i32 %916, 2
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %38, align 1
  %919 = add i64 %890, 9
  store i64 %919, i64* %3, align 8
  store i32 %896, i32* %894, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_44d385

block_.L_44d385:                                  ; preds = %block_44d37c, %block_.L_44d35a
  %920 = phi i64 [ %.pre33, %block_44d37c ], [ %890, %block_.L_44d35a ]
  %921 = load i64, i64* %RBP.i, align 8
  %922 = add i64 %921, -8
  %923 = add i64 %920, 4
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i64*
  %925 = load i64, i64* %924, align 8
  store i64 %925, i64* %RAX.i583, align 8
  %926 = add i64 %925, 8
  %927 = add i64 %920, 8
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %926 to i64*
  %929 = load i64, i64* %928, align 8
  store i64 %929, i64* %RAX.i583, align 8
  %930 = add i64 %921, -24
  %931 = add i64 %920, 12
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  %933 = load i32, i32* %932, align 4
  %934 = sext i32 %933 to i64
  %935 = mul nsw i64 %934, 104
  store i64 %935, i64* %RCX.i580, align 8
  %936 = lshr i64 %935, 63
  %937 = add i64 %935, %929
  store i64 %937, i64* %RAX.i583, align 8
  %938 = icmp ult i64 %937, %929
  %939 = icmp ult i64 %937, %935
  %940 = or i1 %938, %939
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %14, align 1
  %942 = trunc i64 %937 to i32
  %943 = and i32 %942, 255
  %944 = tail call i32 @llvm.ctpop.i32(i32 %943)
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = xor i8 %946, 1
  store i8 %947, i8* %21, align 1
  %948 = xor i64 %935, %929
  %949 = xor i64 %948, %937
  %950 = lshr i64 %949, 4
  %951 = trunc i64 %950 to i8
  %952 = and i8 %951, 1
  store i8 %952, i8* %26, align 1
  %953 = icmp eq i64 %937, 0
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %29, align 1
  %955 = lshr i64 %937, 63
  %956 = trunc i64 %955 to i8
  store i8 %956, i8* %32, align 1
  %957 = lshr i64 %929, 63
  %958 = xor i64 %955, %957
  %959 = xor i64 %955, %936
  %960 = add nuw nsw i64 %958, %959
  %961 = icmp eq i64 %960, 2
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %38, align 1
  %963 = add i64 %937, 96
  %964 = add i64 %920, 23
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i64*
  %966 = load i64, i64* %965, align 8
  store i64 %966, i64* %RAX.i583, align 8
  %967 = add i64 %966, 16
  %968 = add i64 %920, 28
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i64*
  %970 = load i64, i64* %969, align 8
  store i8 0, i8* %14, align 1
  %971 = trunc i64 %970 to i32
  %972 = and i32 %971, 255
  %973 = tail call i32 @llvm.ctpop.i32(i32 %972)
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  %976 = xor i8 %975, 1
  store i8 %976, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %977 = icmp eq i64 %970, 0
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %29, align 1
  %979 = lshr i64 %970, 63
  %980 = trunc i64 %979 to i8
  store i8 %980, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v47 = select i1 %977, i64 43, i64 34
  %981 = add i64 %920, %.v47
  store i64 %981, i64* %3, align 8
  br i1 %977, label %block_.L_44d3b0, label %block_44d3a7

block_44d3a7:                                     ; preds = %block_.L_44d385
  %982 = load i64, i64* %RBP.i, align 8
  %983 = add i64 %982, -32
  %984 = add i64 %981, 3
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = add i32 %986, 1
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RAX.i583, align 8
  %989 = icmp eq i32 %986, -1
  %990 = icmp eq i32 %987, 0
  %991 = or i1 %989, %990
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %14, align 1
  %993 = and i32 %987, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %21, align 1
  %998 = xor i32 %987, %986
  %999 = lshr i32 %998, 4
  %1000 = trunc i32 %999 to i8
  %1001 = and i8 %1000, 1
  store i8 %1001, i8* %26, align 1
  %1002 = zext i1 %990 to i8
  store i8 %1002, i8* %29, align 1
  %1003 = lshr i32 %987, 31
  %1004 = trunc i32 %1003 to i8
  store i8 %1004, i8* %32, align 1
  %1005 = lshr i32 %986, 31
  %1006 = xor i32 %1003, %1005
  %1007 = add nuw nsw i32 %1006, %1003
  %1008 = icmp eq i32 %1007, 2
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %38, align 1
  %1010 = add i64 %981, 9
  store i64 %1010, i64* %3, align 8
  store i32 %987, i32* %985, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_44d3b0

block_.L_44d3b0:                                  ; preds = %block_44d3a7, %block_.L_44d385
  %1011 = phi i64 [ %.pre34, %block_44d3a7 ], [ %981, %block_.L_44d385 ]
  %1012 = load i64, i64* %RBP.i, align 8
  %1013 = add i64 %1012, -8
  %1014 = add i64 %1011, 4
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i64*
  %1016 = load i64, i64* %1015, align 8
  store i64 %1016, i64* %RAX.i583, align 8
  %1017 = add i64 %1016, 8
  %1018 = add i64 %1011, 8
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i64*
  %1020 = load i64, i64* %1019, align 8
  store i64 %1020, i64* %RAX.i583, align 8
  %1021 = add i64 %1012, -24
  %1022 = add i64 %1011, 12
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = sext i32 %1024 to i64
  %1026 = mul nsw i64 %1025, 104
  store i64 %1026, i64* %RCX.i580, align 8
  %1027 = lshr i64 %1026, 63
  %1028 = add i64 %1026, %1020
  store i64 %1028, i64* %RAX.i583, align 8
  %1029 = icmp ult i64 %1028, %1020
  %1030 = icmp ult i64 %1028, %1026
  %1031 = or i1 %1029, %1030
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %14, align 1
  %1033 = trunc i64 %1028 to i32
  %1034 = and i32 %1033, 255
  %1035 = tail call i32 @llvm.ctpop.i32(i32 %1034)
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = xor i8 %1037, 1
  store i8 %1038, i8* %21, align 1
  %1039 = xor i64 %1026, %1020
  %1040 = xor i64 %1039, %1028
  %1041 = lshr i64 %1040, 4
  %1042 = trunc i64 %1041 to i8
  %1043 = and i8 %1042, 1
  store i8 %1043, i8* %26, align 1
  %1044 = icmp eq i64 %1028, 0
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %29, align 1
  %1046 = lshr i64 %1028, 63
  %1047 = trunc i64 %1046 to i8
  store i8 %1047, i8* %32, align 1
  %1048 = lshr i64 %1020, 63
  %1049 = xor i64 %1046, %1048
  %1050 = xor i64 %1046, %1027
  %1051 = add nuw nsw i64 %1049, %1050
  %1052 = icmp eq i64 %1051, 2
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %38, align 1
  %1054 = add i64 %1028, 96
  %1055 = add i64 %1011, 23
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i64*
  %1057 = load i64, i64* %1056, align 8
  store i64 %1057, i64* %RAX.i583, align 8
  %1058 = add i64 %1057, 24
  %1059 = add i64 %1011, 28
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to i64*
  %1061 = load i64, i64* %1060, align 8
  store i8 0, i8* %14, align 1
  %1062 = trunc i64 %1061 to i32
  %1063 = and i32 %1062, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1068 = icmp eq i64 %1061, 0
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %29, align 1
  %1070 = lshr i64 %1061, 63
  %1071 = trunc i64 %1070 to i8
  store i8 %1071, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v48 = select i1 %1068, i64 43, i64 34
  %1072 = add i64 %1011, %.v48
  store i64 %1072, i64* %3, align 8
  br i1 %1068, label %block_.L_44d3db, label %block_44d3d2

block_44d3d2:                                     ; preds = %block_.L_44d3b0
  %1073 = load i64, i64* %RBP.i, align 8
  %1074 = add i64 %1073, -32
  %1075 = add i64 %1072, 3
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = add i32 %1077, 1
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RAX.i583, align 8
  %1080 = icmp eq i32 %1077, -1
  %1081 = icmp eq i32 %1078, 0
  %1082 = or i1 %1080, %1081
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %14, align 1
  %1084 = and i32 %1078, 255
  %1085 = tail call i32 @llvm.ctpop.i32(i32 %1084)
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = xor i8 %1087, 1
  store i8 %1088, i8* %21, align 1
  %1089 = xor i32 %1078, %1077
  %1090 = lshr i32 %1089, 4
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  store i8 %1092, i8* %26, align 1
  %1093 = zext i1 %1081 to i8
  store i8 %1093, i8* %29, align 1
  %1094 = lshr i32 %1078, 31
  %1095 = trunc i32 %1094 to i8
  store i8 %1095, i8* %32, align 1
  %1096 = lshr i32 %1077, 31
  %1097 = xor i32 %1094, %1096
  %1098 = add nuw nsw i32 %1097, %1094
  %1099 = icmp eq i32 %1098, 2
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %38, align 1
  %1101 = add i64 %1072, 9
  store i64 %1101, i64* %3, align 8
  store i32 %1078, i32* %1076, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_44d3db

block_.L_44d3db:                                  ; preds = %block_44d3d2, %block_.L_44d3b0
  %1102 = phi i64 [ %.pre35, %block_44d3d2 ], [ %1072, %block_.L_44d3b0 ]
  %1103 = load i64, i64* %RBP.i, align 8
  %1104 = add i64 %1103, -8
  %1105 = add i64 %1102, 4
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i64*
  %1107 = load i64, i64* %1106, align 8
  store i64 %1107, i64* %RAX.i583, align 8
  %1108 = add i64 %1107, 8
  %1109 = add i64 %1102, 8
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i64*
  %1111 = load i64, i64* %1110, align 8
  store i64 %1111, i64* %RAX.i583, align 8
  %1112 = add i64 %1103, -24
  %1113 = add i64 %1102, 12
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = sext i32 %1115 to i64
  %1117 = mul nsw i64 %1116, 104
  store i64 %1117, i64* %RCX.i580, align 8
  %1118 = lshr i64 %1117, 63
  %1119 = add i64 %1117, %1111
  store i64 %1119, i64* %RAX.i583, align 8
  %1120 = icmp ult i64 %1119, %1111
  %1121 = icmp ult i64 %1119, %1117
  %1122 = or i1 %1120, %1121
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %14, align 1
  %1124 = trunc i64 %1119 to i32
  %1125 = and i32 %1124, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %21, align 1
  %1130 = xor i64 %1117, %1111
  %1131 = xor i64 %1130, %1119
  %1132 = lshr i64 %1131, 4
  %1133 = trunc i64 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %26, align 1
  %1135 = icmp eq i64 %1119, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %29, align 1
  %1137 = lshr i64 %1119, 63
  %1138 = trunc i64 %1137 to i8
  store i8 %1138, i8* %32, align 1
  %1139 = lshr i64 %1111, 63
  %1140 = xor i64 %1137, %1139
  %1141 = xor i64 %1137, %1118
  %1142 = add nuw nsw i64 %1140, %1141
  %1143 = icmp eq i64 %1142, 2
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %38, align 1
  %1145 = add i64 %1119, 96
  %1146 = add i64 %1102, 23
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i64*
  %1148 = load i64, i64* %1147, align 8
  store i64 %1148, i64* %RAX.i583, align 8
  %1149 = add i64 %1148, 32
  %1150 = add i64 %1102, 28
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i64*
  %1152 = load i64, i64* %1151, align 8
  store i8 0, i8* %14, align 1
  %1153 = trunc i64 %1152 to i32
  %1154 = and i32 %1153, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1159 = icmp eq i64 %1152, 0
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %29, align 1
  %1161 = lshr i64 %1152, 63
  %1162 = trunc i64 %1161 to i8
  store i8 %1162, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v49 = select i1 %1159, i64 43, i64 34
  %1163 = add i64 %1102, %.v49
  store i64 %1163, i64* %3, align 8
  br i1 %1159, label %block_.L_44d406, label %block_44d3fd

block_44d3fd:                                     ; preds = %block_.L_44d3db
  %1164 = load i64, i64* %RBP.i, align 8
  %1165 = add i64 %1164, -32
  %1166 = add i64 %1163, 3
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i32*
  %1168 = load i32, i32* %1167, align 4
  %1169 = add i32 %1168, 1
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RAX.i583, align 8
  %1171 = icmp eq i32 %1168, -1
  %1172 = icmp eq i32 %1169, 0
  %1173 = or i1 %1171, %1172
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %14, align 1
  %1175 = and i32 %1169, 255
  %1176 = tail call i32 @llvm.ctpop.i32(i32 %1175)
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  %1179 = xor i8 %1178, 1
  store i8 %1179, i8* %21, align 1
  %1180 = xor i32 %1169, %1168
  %1181 = lshr i32 %1180, 4
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  store i8 %1183, i8* %26, align 1
  %1184 = zext i1 %1172 to i8
  store i8 %1184, i8* %29, align 1
  %1185 = lshr i32 %1169, 31
  %1186 = trunc i32 %1185 to i8
  store i8 %1186, i8* %32, align 1
  %1187 = lshr i32 %1168, 31
  %1188 = xor i32 %1185, %1187
  %1189 = add nuw nsw i32 %1188, %1185
  %1190 = icmp eq i32 %1189, 2
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %38, align 1
  %1192 = add i64 %1163, 9
  store i64 %1192, i64* %3, align 8
  store i32 %1169, i32* %1167, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_44d406

block_.L_44d406:                                  ; preds = %block_44d3fd, %block_.L_44d3db
  %1193 = phi i64 [ %.pre36, %block_44d3fd ], [ %1163, %block_.L_44d3db ]
  %1194 = load i64, i64* %RBP.i, align 8
  %1195 = add i64 %1194, -32
  %1196 = add i64 %1193, 3
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i32*
  %1198 = load i32, i32* %1197, align 4
  %1199 = zext i32 %1198 to i64
  store i64 %1199, i64* %RAX.i583, align 8
  %1200 = add i64 %1194, -8
  %1201 = add i64 %1193, 7
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i64*
  %1203 = load i64, i64* %1202, align 8
  store i64 %1203, i64* %RCX.i580, align 8
  %1204 = add i64 %1203, 8
  %1205 = add i64 %1193, 11
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1204 to i64*
  %1207 = load i64, i64* %1206, align 8
  store i64 %1207, i64* %RCX.i580, align 8
  %1208 = add i64 %1194, -24
  %1209 = add i64 %1193, 15
  store i64 %1209, i64* %3, align 8
  %1210 = inttoptr i64 %1208 to i32*
  %1211 = load i32, i32* %1210, align 4
  %1212 = sext i32 %1211 to i64
  %1213 = mul nsw i64 %1212, 104
  store i64 %1213, i64* %RDX.i391, align 8
  %1214 = lshr i64 %1213, 63
  %1215 = add i64 %1213, %1207
  store i64 %1215, i64* %RCX.i580, align 8
  %1216 = icmp ult i64 %1215, %1207
  %1217 = icmp ult i64 %1215, %1213
  %1218 = or i1 %1216, %1217
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %14, align 1
  %1220 = trunc i64 %1215 to i32
  %1221 = and i32 %1220, 255
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %21, align 1
  %1226 = xor i64 %1213, %1207
  %1227 = xor i64 %1226, %1215
  %1228 = lshr i64 %1227, 4
  %1229 = trunc i64 %1228 to i8
  %1230 = and i8 %1229, 1
  store i8 %1230, i8* %26, align 1
  %1231 = icmp eq i64 %1215, 0
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %29, align 1
  %1233 = lshr i64 %1215, 63
  %1234 = trunc i64 %1233 to i8
  store i8 %1234, i8* %32, align 1
  %1235 = lshr i64 %1207, 63
  %1236 = xor i64 %1233, %1235
  %1237 = xor i64 %1233, %1214
  %1238 = add nuw nsw i64 %1236, %1237
  %1239 = icmp eq i64 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %38, align 1
  %1241 = add i64 %1215, 96
  %1242 = add i64 %1193, 26
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1241 to i64*
  %1244 = load i64, i64* %1243, align 8
  store i64 %1244, i64* %RCX.i580, align 8
  %1245 = add i64 %1244, 40
  %1246 = add i64 %1193, 29
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i32*
  %1248 = load i32, i32* %1247, align 4
  %1249 = add i32 %1248, 1
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RSI.i491, align 8
  %1251 = load i64, i64* %RAX.i583, align 8
  %1252 = shl i64 %1251, 32
  %1253 = ashr exact i64 %1252, 32
  %1254 = sext i32 %1249 to i64
  %1255 = mul nsw i64 %1254, %1253
  %1256 = trunc i64 %1255 to i32
  %1257 = and i64 %1255, 4294967295
  store i64 %1257, i64* %RAX.i583, align 8
  %1258 = shl i64 %1255, 32
  %1259 = ashr exact i64 %1258, 32
  %1260 = icmp ne i64 %1259, %1255
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %14, align 1
  %1262 = and i32 %1256, 255
  %1263 = tail call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  store i8 %1266, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1267 = lshr i32 %1256, 31
  %1268 = trunc i32 %1267 to i8
  store i8 %1268, i8* %32, align 1
  store i8 %1261, i8* %38, align 1
  %1269 = load i64, i64* %RBP.i, align 8
  %1270 = add i64 %1269, -28
  %1271 = add i64 %1193, 38
  store i64 %1271, i64* %3, align 8
  %1272 = trunc i64 %1255 to i32
  %1273 = inttoptr i64 %1270 to i32*
  %1274 = load i32, i32* %1273, align 4
  %1275 = add i32 %1274, %1272
  %1276 = zext i32 %1275 to i64
  store i64 %1276, i64* %RAX.i583, align 8
  %1277 = icmp ult i32 %1275, %1272
  %1278 = icmp ult i32 %1275, %1274
  %1279 = or i1 %1277, %1278
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %14, align 1
  %1281 = and i32 %1275, 255
  %1282 = tail call i32 @llvm.ctpop.i32(i32 %1281)
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = xor i8 %1284, 1
  store i8 %1285, i8* %21, align 1
  %1286 = xor i32 %1274, %1272
  %1287 = xor i32 %1286, %1275
  %1288 = lshr i32 %1287, 4
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  store i8 %1290, i8* %26, align 1
  %1291 = icmp eq i32 %1275, 0
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %29, align 1
  %1293 = lshr i32 %1275, 31
  %1294 = trunc i32 %1293 to i8
  store i8 %1294, i8* %32, align 1
  %1295 = lshr i32 %1272, 31
  %1296 = lshr i32 %1274, 31
  %1297 = xor i32 %1293, %1295
  %1298 = xor i32 %1293, %1296
  %1299 = add nuw nsw i32 %1297, %1298
  %1300 = icmp eq i32 %1299, 2
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %38, align 1
  %1302 = add i64 %1193, 41
  store i64 %1302, i64* %3, align 8
  store i32 %1275, i32* %1273, align 4
  %1303 = load i64, i64* %RBP.i, align 8
  %1304 = add i64 %1303, -8
  %1305 = load i64, i64* %3, align 8
  %1306 = add i64 %1305, 4
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1304 to i64*
  %1308 = load i64, i64* %1307, align 8
  store i64 %1308, i64* %RCX.i580, align 8
  %1309 = add i64 %1308, 8
  %1310 = add i64 %1305, 8
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1309 to i64*
  %1312 = load i64, i64* %1311, align 8
  store i64 %1312, i64* %RCX.i580, align 8
  %1313 = add i64 %1303, -24
  %1314 = add i64 %1305, 12
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = sext i32 %1316 to i64
  %1318 = mul nsw i64 %1317, 104
  store i64 %1318, i64* %RDX.i391, align 8
  %1319 = lshr i64 %1318, 63
  %1320 = add i64 %1318, %1312
  store i64 %1320, i64* %RCX.i580, align 8
  %1321 = icmp ult i64 %1320, %1312
  %1322 = icmp ult i64 %1320, %1318
  %1323 = or i1 %1321, %1322
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %14, align 1
  %1325 = trunc i64 %1320 to i32
  %1326 = and i32 %1325, 255
  %1327 = tail call i32 @llvm.ctpop.i32(i32 %1326)
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  %1330 = xor i8 %1329, 1
  store i8 %1330, i8* %21, align 1
  %1331 = xor i64 %1318, %1312
  %1332 = xor i64 %1331, %1320
  %1333 = lshr i64 %1332, 4
  %1334 = trunc i64 %1333 to i8
  %1335 = and i8 %1334, 1
  store i8 %1335, i8* %26, align 1
  %1336 = icmp eq i64 %1320, 0
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %29, align 1
  %1338 = lshr i64 %1320, 63
  %1339 = trunc i64 %1338 to i8
  store i8 %1339, i8* %32, align 1
  %1340 = lshr i64 %1312, 63
  %1341 = xor i64 %1338, %1340
  %1342 = xor i64 %1338, %1319
  %1343 = add nuw nsw i64 %1341, %1342
  %1344 = icmp eq i64 %1343, 2
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %38, align 1
  %1346 = add i64 %1320, 96
  %1347 = add i64 %1305, 23
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i64*
  %1349 = load i64, i64* %1348, align 8
  store i64 %1349, i64* %RCX.i580, align 8
  %1350 = add i64 %1349, 48
  %1351 = add i64 %1305, 28
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i64*
  %1353 = load i64, i64* %1352, align 8
  store i8 0, i8* %14, align 1
  %1354 = trunc i64 %1353 to i32
  %1355 = and i32 %1354, 255
  %1356 = tail call i32 @llvm.ctpop.i32(i32 %1355)
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  %1359 = xor i8 %1358, 1
  store i8 %1359, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1360 = icmp eq i64 %1353, 0
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %29, align 1
  %1362 = lshr i64 %1353, 63
  %1363 = trunc i64 %1362 to i8
  store i8 %1363, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v50 = select i1 %1360, i64 82, i64 34
  %1364 = add i64 %1305, %.v50
  store i64 %1364, i64* %3, align 8
  br i1 %1360, label %block_.L_44d481, label %block_44d451

block_44d451:                                     ; preds = %block_.L_44d406
  %1365 = load i64, i64* %RBP.i, align 8
  %1366 = add i64 %1365, -8
  %1367 = add i64 %1364, 4
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %RAX.i583, align 8
  %1370 = add i64 %1369, 8
  %1371 = add i64 %1364, 8
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i64*
  %1373 = load i64, i64* %1372, align 8
  store i64 %1373, i64* %RAX.i583, align 8
  %1374 = add i64 %1365, -24
  %1375 = add i64 %1364, 12
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i32*
  %1377 = load i32, i32* %1376, align 4
  %1378 = sext i32 %1377 to i64
  %1379 = mul nsw i64 %1378, 104
  store i64 %1379, i64* %RCX.i580, align 8
  %1380 = lshr i64 %1379, 63
  %1381 = add i64 %1379, %1373
  store i64 %1381, i64* %RAX.i583, align 8
  %1382 = icmp ult i64 %1381, %1373
  %1383 = icmp ult i64 %1381, %1379
  %1384 = or i1 %1382, %1383
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %14, align 1
  %1386 = trunc i64 %1381 to i32
  %1387 = and i32 %1386, 255
  %1388 = tail call i32 @llvm.ctpop.i32(i32 %1387)
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = xor i8 %1390, 1
  store i8 %1391, i8* %21, align 1
  %1392 = xor i64 %1379, %1373
  %1393 = xor i64 %1392, %1381
  %1394 = lshr i64 %1393, 4
  %1395 = trunc i64 %1394 to i8
  %1396 = and i8 %1395, 1
  store i8 %1396, i8* %26, align 1
  %1397 = icmp eq i64 %1381, 0
  %1398 = zext i1 %1397 to i8
  store i8 %1398, i8* %29, align 1
  %1399 = lshr i64 %1381, 63
  %1400 = trunc i64 %1399 to i8
  store i8 %1400, i8* %32, align 1
  %1401 = lshr i64 %1373, 63
  %1402 = xor i64 %1399, %1401
  %1403 = xor i64 %1399, %1380
  %1404 = add nuw nsw i64 %1402, %1403
  %1405 = icmp eq i64 %1404, 2
  %1406 = zext i1 %1405 to i8
  store i8 %1406, i8* %38, align 1
  %1407 = add i64 %1381, 96
  %1408 = add i64 %1364, 23
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i64*
  %1410 = load i64, i64* %1409, align 8
  store i64 %1410, i64* %RAX.i583, align 8
  %1411 = add i64 %1410, 48
  %1412 = add i64 %1364, 27
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i64*
  %1414 = load i64, i64* %1413, align 8
  store i64 %1414, i64* %RDI.i28, align 8
  %1415 = add i64 %1364, -311281
  %1416 = add i64 %1364, 32
  %1417 = load i64, i64* %6, align 8
  %1418 = add i64 %1417, -8
  %1419 = inttoptr i64 %1418 to i64*
  store i64 %1416, i64* %1419, align 8
  store i64 %1418, i64* %6, align 8
  store i64 %1415, i64* %3, align 8
  %1420 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.3)
  %1421 = load i64, i64* %RAX.i583, align 8
  %1422 = load i64, i64* %3, align 8
  %1423 = add i64 %1421, 1
  store i64 %1423, i64* %RAX.i583, align 8
  %1424 = icmp eq i64 %1421, -1
  %1425 = icmp eq i64 %1423, 0
  %1426 = or i1 %1424, %1425
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %14, align 1
  %1428 = trunc i64 %1423 to i32
  %1429 = and i32 %1428, 255
  %1430 = tail call i32 @llvm.ctpop.i32(i32 %1429)
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = xor i8 %1432, 1
  store i8 %1433, i8* %21, align 1
  %1434 = xor i64 %1423, %1421
  %1435 = lshr i64 %1434, 4
  %1436 = trunc i64 %1435 to i8
  %1437 = and i8 %1436, 1
  store i8 %1437, i8* %26, align 1
  %1438 = zext i1 %1425 to i8
  store i8 %1438, i8* %29, align 1
  %1439 = lshr i64 %1423, 63
  %1440 = trunc i64 %1439 to i8
  store i8 %1440, i8* %32, align 1
  %1441 = lshr i64 %1421, 63
  %1442 = xor i64 %1439, %1441
  %1443 = add nuw nsw i64 %1442, %1439
  %1444 = icmp eq i64 %1443, 2
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %38, align 1
  %1446 = load i64, i64* %RBP.i, align 8
  %1447 = add i64 %1446, -28
  %1448 = add i64 %1422, 8
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1447 to i32*
  %1450 = load i32, i32* %1449, align 4
  %1451 = sext i32 %1450 to i64
  %1452 = add i64 %1423, %1451
  store i64 %1452, i64* %RCX.i580, align 8
  %1453 = icmp ult i64 %1452, %1451
  %1454 = icmp ult i64 %1452, %1423
  %1455 = or i1 %1453, %1454
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %14, align 1
  %1457 = trunc i64 %1452 to i32
  %1458 = and i32 %1457, 255
  %1459 = tail call i32 @llvm.ctpop.i32(i32 %1458)
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  %1462 = xor i8 %1461, 1
  store i8 %1462, i8* %21, align 1
  %1463 = xor i64 %1423, %1451
  %1464 = xor i64 %1463, %1452
  %1465 = lshr i64 %1464, 4
  %1466 = trunc i64 %1465 to i8
  %1467 = and i8 %1466, 1
  store i8 %1467, i8* %26, align 1
  %1468 = icmp eq i64 %1452, 0
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %29, align 1
  %1470 = lshr i64 %1452, 63
  %1471 = trunc i64 %1470 to i8
  store i8 %1471, i8* %32, align 1
  %1472 = lshr i64 %1451, 63
  %1473 = xor i64 %1470, %1472
  %1474 = xor i64 %1470, %1439
  %1475 = add nuw nsw i64 %1473, %1474
  %1476 = icmp eq i64 %1475, 2
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %38, align 1
  %1478 = and i64 %1452, 4294967295
  store i64 %1478, i64* %RDX.i391, align 8
  %1479 = add i64 %1422, 16
  store i64 %1479, i64* %3, align 8
  store i32 %1457, i32* %1449, align 4
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_44d481

block_.L_44d481:                                  ; preds = %block_44d451, %block_.L_44d406
  %1480 = phi i64 [ %1364, %block_.L_44d406 ], [ %.pre37, %block_44d451 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.3, %block_.L_44d406 ], [ %1420, %block_44d451 ]
  %1481 = load i64, i64* %RBP.i, align 8
  %1482 = add i64 %1481, -8
  %1483 = add i64 %1480, 4
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i64*
  %1485 = load i64, i64* %1484, align 8
  store i64 %1485, i64* %RAX.i583, align 8
  %1486 = add i64 %1485, 8
  %1487 = add i64 %1480, 8
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i64*
  %1489 = load i64, i64* %1488, align 8
  store i64 %1489, i64* %RAX.i583, align 8
  %1490 = add i64 %1481, -24
  %1491 = add i64 %1480, 12
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i32*
  %1493 = load i32, i32* %1492, align 4
  %1494 = sext i32 %1493 to i64
  %1495 = mul nsw i64 %1494, 104
  store i64 %1495, i64* %RCX.i580, align 8
  %1496 = lshr i64 %1495, 63
  %1497 = add i64 %1495, %1489
  store i64 %1497, i64* %RAX.i583, align 8
  %1498 = icmp ult i64 %1497, %1489
  %1499 = icmp ult i64 %1497, %1495
  %1500 = or i1 %1498, %1499
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %14, align 1
  %1502 = trunc i64 %1497 to i32
  %1503 = and i32 %1502, 255
  %1504 = tail call i32 @llvm.ctpop.i32(i32 %1503)
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  %1507 = xor i8 %1506, 1
  store i8 %1507, i8* %21, align 1
  %1508 = xor i64 %1495, %1489
  %1509 = xor i64 %1508, %1497
  %1510 = lshr i64 %1509, 4
  %1511 = trunc i64 %1510 to i8
  %1512 = and i8 %1511, 1
  store i8 %1512, i8* %26, align 1
  %1513 = icmp eq i64 %1497, 0
  %1514 = zext i1 %1513 to i8
  store i8 %1514, i8* %29, align 1
  %1515 = lshr i64 %1497, 63
  %1516 = trunc i64 %1515 to i8
  store i8 %1516, i8* %32, align 1
  %1517 = lshr i64 %1489, 63
  %1518 = xor i64 %1515, %1517
  %1519 = xor i64 %1515, %1496
  %1520 = add nuw nsw i64 %1518, %1519
  %1521 = icmp eq i64 %1520, 2
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %38, align 1
  %1523 = add i64 %1497, 96
  %1524 = add i64 %1480, 23
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i64*
  %1526 = load i64, i64* %1525, align 8
  store i64 %1526, i64* %RAX.i583, align 8
  %1527 = add i64 %1526, 56
  %1528 = add i64 %1480, 28
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i64*
  %1530 = load i64, i64* %1529, align 8
  store i8 0, i8* %14, align 1
  %1531 = trunc i64 %1530 to i32
  %1532 = and i32 %1531, 255
  %1533 = tail call i32 @llvm.ctpop.i32(i32 %1532)
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  store i8 %1536, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1537 = icmp eq i64 %1530, 0
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %29, align 1
  %1539 = lshr i64 %1530, 63
  %1540 = trunc i64 %1539 to i8
  store i8 %1540, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v51 = select i1 %1537, i64 82, i64 34
  %1541 = add i64 %1480, %.v51
  store i64 %1541, i64* %3, align 8
  br i1 %1537, label %block_.L_44d4d3, label %block_44d4a3

block_44d4a3:                                     ; preds = %block_.L_44d481
  %1542 = load i64, i64* %RBP.i, align 8
  %1543 = add i64 %1542, -8
  %1544 = add i64 %1541, 4
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i64*
  %1546 = load i64, i64* %1545, align 8
  store i64 %1546, i64* %RAX.i583, align 8
  %1547 = add i64 %1546, 8
  %1548 = add i64 %1541, 8
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i64*
  %1550 = load i64, i64* %1549, align 8
  store i64 %1550, i64* %RAX.i583, align 8
  %1551 = add i64 %1542, -24
  %1552 = add i64 %1541, 12
  store i64 %1552, i64* %3, align 8
  %1553 = inttoptr i64 %1551 to i32*
  %1554 = load i32, i32* %1553, align 4
  %1555 = sext i32 %1554 to i64
  %1556 = mul nsw i64 %1555, 104
  store i64 %1556, i64* %RCX.i580, align 8
  %1557 = lshr i64 %1556, 63
  %1558 = add i64 %1556, %1550
  store i64 %1558, i64* %RAX.i583, align 8
  %1559 = icmp ult i64 %1558, %1550
  %1560 = icmp ult i64 %1558, %1556
  %1561 = or i1 %1559, %1560
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %14, align 1
  %1563 = trunc i64 %1558 to i32
  %1564 = and i32 %1563, 255
  %1565 = tail call i32 @llvm.ctpop.i32(i32 %1564)
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  %1568 = xor i8 %1567, 1
  store i8 %1568, i8* %21, align 1
  %1569 = xor i64 %1556, %1550
  %1570 = xor i64 %1569, %1558
  %1571 = lshr i64 %1570, 4
  %1572 = trunc i64 %1571 to i8
  %1573 = and i8 %1572, 1
  store i8 %1573, i8* %26, align 1
  %1574 = icmp eq i64 %1558, 0
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %29, align 1
  %1576 = lshr i64 %1558, 63
  %1577 = trunc i64 %1576 to i8
  store i8 %1577, i8* %32, align 1
  %1578 = lshr i64 %1550, 63
  %1579 = xor i64 %1576, %1578
  %1580 = xor i64 %1576, %1557
  %1581 = add nuw nsw i64 %1579, %1580
  %1582 = icmp eq i64 %1581, 2
  %1583 = zext i1 %1582 to i8
  store i8 %1583, i8* %38, align 1
  %1584 = add i64 %1558, 96
  %1585 = add i64 %1541, 23
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i64*
  %1587 = load i64, i64* %1586, align 8
  store i64 %1587, i64* %RAX.i583, align 8
  %1588 = add i64 %1587, 56
  %1589 = add i64 %1541, 27
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to i64*
  %1591 = load i64, i64* %1590, align 8
  store i64 %1591, i64* %RDI.i28, align 8
  %1592 = add i64 %1541, -311363
  %1593 = add i64 %1541, 32
  %1594 = load i64, i64* %6, align 8
  %1595 = add i64 %1594, -8
  %1596 = inttoptr i64 %1595 to i64*
  store i64 %1593, i64* %1596, align 8
  store i64 %1595, i64* %6, align 8
  store i64 %1592, i64* %3, align 8
  %1597 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.9)
  %1598 = load i64, i64* %RAX.i583, align 8
  %1599 = load i64, i64* %3, align 8
  %1600 = add i64 %1598, 1
  store i64 %1600, i64* %RAX.i583, align 8
  %1601 = icmp eq i64 %1598, -1
  %1602 = icmp eq i64 %1600, 0
  %1603 = or i1 %1601, %1602
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %14, align 1
  %1605 = trunc i64 %1600 to i32
  %1606 = and i32 %1605, 255
  %1607 = tail call i32 @llvm.ctpop.i32(i32 %1606)
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  %1610 = xor i8 %1609, 1
  store i8 %1610, i8* %21, align 1
  %1611 = xor i64 %1600, %1598
  %1612 = lshr i64 %1611, 4
  %1613 = trunc i64 %1612 to i8
  %1614 = and i8 %1613, 1
  store i8 %1614, i8* %26, align 1
  %1615 = zext i1 %1602 to i8
  store i8 %1615, i8* %29, align 1
  %1616 = lshr i64 %1600, 63
  %1617 = trunc i64 %1616 to i8
  store i8 %1617, i8* %32, align 1
  %1618 = lshr i64 %1598, 63
  %1619 = xor i64 %1616, %1618
  %1620 = add nuw nsw i64 %1619, %1616
  %1621 = icmp eq i64 %1620, 2
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %38, align 1
  %1623 = load i64, i64* %RBP.i, align 8
  %1624 = add i64 %1623, -28
  %1625 = add i64 %1599, 8
  store i64 %1625, i64* %3, align 8
  %1626 = inttoptr i64 %1624 to i32*
  %1627 = load i32, i32* %1626, align 4
  %1628 = sext i32 %1627 to i64
  %1629 = add i64 %1600, %1628
  store i64 %1629, i64* %RCX.i580, align 8
  %1630 = icmp ult i64 %1629, %1628
  %1631 = icmp ult i64 %1629, %1600
  %1632 = or i1 %1630, %1631
  %1633 = zext i1 %1632 to i8
  store i8 %1633, i8* %14, align 1
  %1634 = trunc i64 %1629 to i32
  %1635 = and i32 %1634, 255
  %1636 = tail call i32 @llvm.ctpop.i32(i32 %1635)
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  %1639 = xor i8 %1638, 1
  store i8 %1639, i8* %21, align 1
  %1640 = xor i64 %1600, %1628
  %1641 = xor i64 %1640, %1629
  %1642 = lshr i64 %1641, 4
  %1643 = trunc i64 %1642 to i8
  %1644 = and i8 %1643, 1
  store i8 %1644, i8* %26, align 1
  %1645 = icmp eq i64 %1629, 0
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %29, align 1
  %1647 = lshr i64 %1629, 63
  %1648 = trunc i64 %1647 to i8
  store i8 %1648, i8* %32, align 1
  %1649 = lshr i64 %1628, 63
  %1650 = xor i64 %1647, %1649
  %1651 = xor i64 %1647, %1616
  %1652 = add nuw nsw i64 %1650, %1651
  %1653 = icmp eq i64 %1652, 2
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %38, align 1
  %1655 = and i64 %1629, 4294967295
  store i64 %1655, i64* %RDX.i391, align 8
  %1656 = add i64 %1599, 16
  store i64 %1656, i64* %3, align 8
  store i32 %1634, i32* %1626, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_44d4d3

block_.L_44d4d3:                                  ; preds = %block_44d4a3, %block_.L_44d481
  %1657 = phi i64 [ %1541, %block_.L_44d481 ], [ %.pre38, %block_44d4a3 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_44d481 ], [ %1597, %block_44d4a3 ]
  %1658 = add i64 %1657, 5
  store i64 %1658, i64* %3, align 8
  br label %block_.L_44d4d8

block_.L_44d4d8:                                  ; preds = %block_.L_44d4d3, %block_.L_44d2fe
  %1659 = phi i64 [ %703, %block_.L_44d2fe ], [ %1658, %block_.L_44d4d3 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.3, %block_.L_44d2fe ], [ %MEMORY.10, %block_.L_44d4d3 ]
  %1660 = load i64, i64* %RBP.i, align 8
  %1661 = add i64 %1660, -24
  %1662 = add i64 %1659, 8
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i32*
  %1664 = load i32, i32* %1663, align 4
  %1665 = add i32 %1664, 1
  %1666 = zext i32 %1665 to i64
  store i64 %1666, i64* %RAX.i583, align 8
  %1667 = icmp eq i32 %1664, -1
  %1668 = icmp eq i32 %1665, 0
  %1669 = or i1 %1667, %1668
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %14, align 1
  %1671 = and i32 %1665, 255
  %1672 = tail call i32 @llvm.ctpop.i32(i32 %1671)
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = xor i8 %1674, 1
  store i8 %1675, i8* %21, align 1
  %1676 = xor i32 %1665, %1664
  %1677 = lshr i32 %1676, 4
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  store i8 %1679, i8* %26, align 1
  %1680 = zext i1 %1668 to i8
  store i8 %1680, i8* %29, align 1
  %1681 = lshr i32 %1665, 31
  %1682 = trunc i32 %1681 to i8
  store i8 %1682, i8* %32, align 1
  %1683 = lshr i32 %1664, 31
  %1684 = xor i32 %1681, %1683
  %1685 = add nuw nsw i32 %1684, %1681
  %1686 = icmp eq i32 %1685, 2
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %38, align 1
  %1688 = add i64 %1659, 14
  store i64 %1688, i64* %3, align 8
  store i32 %1665, i32* %1663, align 4
  %1689 = load i64, i64* %3, align 8
  %1690 = add i64 %1689, -726
  store i64 %1690, i64* %3, align 8
  br label %block_.L_44d210

block_.L_44d4eb:                                  ; preds = %block_.L_44d210
  %1691 = bitcast [32 x %union.VectorReg]* %43 to double*
  %1692 = add i64 %104, -36
  %1693 = add i64 %144, 7
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i32*
  store i32 0, i32* %1694, align 4
  %1695 = load i64, i64* %RBP.i, align 8
  %1696 = add i64 %1695, -24
  %1697 = load i64, i64* %3, align 8
  %1698 = add i64 %1697, 7
  store i64 %1698, i64* %3, align 8
  %1699 = inttoptr i64 %1696 to i32*
  store i32 0, i32* %1699, align 4
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1701 = bitcast i64* %1700 to double*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1703 = bitcast %union.VectorReg* %1702 to double*
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_44d4f9

block_.L_44d4f9:                                  ; preds = %block_.L_44d536, %block_.L_44d4eb
  %1704 = phi i64 [ %.pre24, %block_.L_44d4eb ], [ %1863, %block_.L_44d536 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.0, %block_.L_44d4eb ], [ %1799, %block_.L_44d536 ]
  %1705 = load i64, i64* %RBP.i, align 8
  %1706 = add i64 %1705, -24
  %1707 = add i64 %1704, 3
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1706 to i32*
  %1709 = load i32, i32* %1708, align 4
  %1710 = zext i32 %1709 to i64
  store i64 %1710, i64* %RAX.i583, align 8
  %1711 = add i64 %1705, -8
  %1712 = add i64 %1704, 7
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i64*
  %1714 = load i64, i64* %1713, align 8
  store i64 %1714, i64* %RCX.i580, align 8
  %1715 = add i64 %1714, 20
  %1716 = add i64 %1704, 10
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i32*
  %1718 = load i32, i32* %1717, align 4
  %1719 = sub i32 %1709, %1718
  %1720 = icmp ult i32 %1709, %1718
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %14, align 1
  %1722 = and i32 %1719, 255
  %1723 = tail call i32 @llvm.ctpop.i32(i32 %1722)
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  store i8 %1726, i8* %21, align 1
  %1727 = xor i32 %1718, %1709
  %1728 = xor i32 %1727, %1719
  %1729 = lshr i32 %1728, 4
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  store i8 %1731, i8* %26, align 1
  %1732 = icmp eq i32 %1719, 0
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %29, align 1
  %1734 = lshr i32 %1719, 31
  %1735 = trunc i32 %1734 to i8
  store i8 %1735, i8* %32, align 1
  %1736 = lshr i32 %1709, 31
  %1737 = lshr i32 %1718, 31
  %1738 = xor i32 %1737, %1736
  %1739 = xor i32 %1734, %1736
  %1740 = add nuw nsw i32 %1739, %1738
  %1741 = icmp eq i32 %1740, 2
  %1742 = zext i1 %1741 to i8
  store i8 %1742, i8* %38, align 1
  %1743 = icmp ne i8 %1735, 0
  %1744 = xor i1 %1743, %1741
  %.v39 = select i1 %1744, i64 16, i64 84
  %1745 = add i64 %1704, %.v39
  store i64 %1745, i64* %3, align 8
  br i1 %1744, label %block_44d509, label %block_.L_44d54d.loopexit

block_44d509:                                     ; preds = %block_.L_44d4f9
  %1746 = add i64 %1745, 4
  store i64 %1746, i64* %3, align 8
  %1747 = load i64, i64* %1713, align 8
  store i64 %1747, i64* %RAX.i583, align 8
  %1748 = add i64 %1745, 7
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i64*
  %1750 = load i64, i64* %1749, align 8
  store i64 %1750, i64* %RAX.i583, align 8
  %1751 = add i64 %1745, 11
  store i64 %1751, i64* %3, align 8
  %1752 = load i32, i32* %1708, align 4
  %1753 = sext i32 %1752 to i64
  store i64 %1753, i64* %RCX.i580, align 8
  %1754 = shl nsw i64 %1753, 3
  %1755 = add i64 %1754, %1750
  %1756 = add i64 %1745, 15
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i64*
  %1758 = load i64, i64* %1757, align 8
  store i64 %1758, i64* %RAX.i583, align 8
  %1759 = add i64 %1758, 16
  %1760 = add i64 %1745, 20
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1759 to i64*
  %1762 = load i64, i64* %1761, align 8
  store i64 %1762, i64* %48, align 1
  store double 0.000000e+00, double* %1701, align 1
  %1763 = add i64 %1705, -20
  %1764 = add i64 %1745, 25
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1763 to i32*
  %1766 = load i32, i32* %1765, align 4
  %1767 = sitofp i32 %1766 to double
  store double %1767, double* %1703, align 1
  %1768 = bitcast i64 %1762 to double
  %1769 = fmul double %1767, %1768
  store double %1769, double* %1691, align 1
  store i64 0, i64* %1700, align 1
  %1770 = add i64 %1705, -16
  %1771 = add i64 %1745, 34
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1770 to double*
  %1773 = load double, double* %1772, align 8
  %1774 = fcmp uno double %1769, %1773
  br i1 %1774, label %1775, label %1785

; <label>:1775:                                   ; preds = %block_44d509
  %1776 = fadd double %1769, %1773
  %1777 = bitcast double %1776 to i64
  %1778 = and i64 %1777, 9221120237041090560
  %1779 = icmp eq i64 %1778, 9218868437227405312
  %1780 = and i64 %1777, 2251799813685247
  %1781 = icmp ne i64 %1780, 0
  %1782 = and i1 %1779, %1781
  br i1 %1782, label %1783, label %1791

; <label>:1783:                                   ; preds = %1775
  %1784 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1771, %struct.Memory* %MEMORY.12)
  %.pre25 = load i64, i64* %3, align 8
  %.pre26 = load i8, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit

; <label>:1785:                                   ; preds = %block_44d509
  %1786 = fcmp ogt double %1769, %1773
  br i1 %1786, label %1791, label %1787

; <label>:1787:                                   ; preds = %1785
  %1788 = fcmp olt double %1769, %1773
  br i1 %1788, label %1791, label %1789

; <label>:1789:                                   ; preds = %1787
  %1790 = fcmp oeq double %1769, %1773
  br i1 %1790, label %1791, label %1795

; <label>:1791:                                   ; preds = %1789, %1787, %1785, %1775
  %1792 = phi i8 [ 0, %1785 ], [ 0, %1787 ], [ 1, %1789 ], [ 1, %1775 ]
  %1793 = phi i8 [ 0, %1785 ], [ 0, %1787 ], [ 0, %1789 ], [ 1, %1775 ]
  %1794 = phi i8 [ 0, %1785 ], [ 1, %1787 ], [ 0, %1789 ], [ 1, %1775 ]
  store i8 %1792, i8* %29, align 1
  store i8 %1793, i8* %21, align 1
  store i8 %1794, i8* %14, align 1
  br label %1795

; <label>:1795:                                   ; preds = %1791, %1789
  %1796 = phi i8 [ %1794, %1791 ], [ %1721, %1789 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit

routine_ucomisd_MINUS0x10__rbp____xmm0.exit:      ; preds = %1795, %1783
  %1797 = phi i8 [ %.pre26, %1783 ], [ %1796, %1795 ]
  %1798 = phi i64 [ %.pre25, %1783 ], [ %1771, %1795 ]
  %1799 = phi %struct.Memory* [ %1784, %1783 ], [ %MEMORY.12, %1795 ]
  %1800 = icmp ne i8 %1797, 0
  %.v40 = select i1 %1800, i64 11, i64 6
  %1801 = add i64 %1798, %.v40
  store i64 %1801, i64* %3, align 8
  %cmpBr_44d52b = icmp eq i8 %1797, 1
  br i1 %cmpBr_44d52b, label %block_.L_44d536, label %block_44d531

block_44d531:                                     ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit
  %1802 = add i64 %1801, 28
  store i64 %1802, i64* %3, align 8
  br label %block_.L_44d54d

block_.L_44d536:                                  ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit
  %1803 = load i64, i64* %RBP.i, align 8
  %1804 = add i64 %1803, -36
  %1805 = add i64 %1801, 3
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i32*
  %1807 = load i32, i32* %1806, align 4
  %1808 = add i32 %1807, 1
  %1809 = zext i32 %1808 to i64
  store i64 %1809, i64* %RAX.i583, align 8
  %1810 = icmp eq i32 %1807, -1
  %1811 = icmp eq i32 %1808, 0
  %1812 = or i1 %1810, %1811
  %1813 = zext i1 %1812 to i8
  store i8 %1813, i8* %14, align 1
  %1814 = and i32 %1808, 255
  %1815 = tail call i32 @llvm.ctpop.i32(i32 %1814)
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  %1818 = xor i8 %1817, 1
  store i8 %1818, i8* %21, align 1
  %1819 = xor i32 %1808, %1807
  %1820 = lshr i32 %1819, 4
  %1821 = trunc i32 %1820 to i8
  %1822 = and i8 %1821, 1
  store i8 %1822, i8* %26, align 1
  %1823 = zext i1 %1811 to i8
  store i8 %1823, i8* %29, align 1
  %1824 = lshr i32 %1808, 31
  %1825 = trunc i32 %1824 to i8
  store i8 %1825, i8* %32, align 1
  %1826 = lshr i32 %1807, 31
  %1827 = xor i32 %1824, %1826
  %1828 = add nuw nsw i32 %1827, %1824
  %1829 = icmp eq i32 %1828, 2
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %38, align 1
  %1831 = add i64 %1801, 9
  store i64 %1831, i64* %3, align 8
  store i32 %1808, i32* %1806, align 4
  %1832 = load i64, i64* %RBP.i, align 8
  %1833 = add i64 %1832, -24
  %1834 = load i64, i64* %3, align 8
  %1835 = add i64 %1834, 3
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1833 to i32*
  %1837 = load i32, i32* %1836, align 4
  %1838 = add i32 %1837, 1
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %RAX.i583, align 8
  %1840 = icmp eq i32 %1837, -1
  %1841 = icmp eq i32 %1838, 0
  %1842 = or i1 %1840, %1841
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %14, align 1
  %1844 = and i32 %1838, 255
  %1845 = tail call i32 @llvm.ctpop.i32(i32 %1844)
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  store i8 %1848, i8* %21, align 1
  %1849 = xor i32 %1838, %1837
  %1850 = lshr i32 %1849, 4
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  store i8 %1852, i8* %26, align 1
  %1853 = zext i1 %1841 to i8
  store i8 %1853, i8* %29, align 1
  %1854 = lshr i32 %1838, 31
  %1855 = trunc i32 %1854 to i8
  store i8 %1855, i8* %32, align 1
  %1856 = lshr i32 %1837, 31
  %1857 = xor i32 %1854, %1856
  %1858 = add nuw nsw i32 %1857, %1854
  %1859 = icmp eq i32 %1858, 2
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %38, align 1
  %1861 = add i64 %1834, 9
  store i64 %1861, i64* %3, align 8
  store i32 %1838, i32* %1836, align 4
  %1862 = load i64, i64* %3, align 8
  %1863 = add i64 %1862, -79
  store i64 %1863, i64* %3, align 8
  br label %block_.L_44d4f9

block_.L_44d54d.loopexit:                         ; preds = %block_.L_44d4f9
  br label %block_.L_44d54d

block_.L_44d54d:                                  ; preds = %block_.L_44d54d.loopexit, %block_44d531
  %1864 = phi i64 [ %1802, %block_44d531 ], [ %1745, %block_.L_44d54d.loopexit ]
  %MEMORY.13 = phi %struct.Memory* [ %1799, %block_44d531 ], [ %MEMORY.12, %block_.L_44d54d.loopexit ]
  store i64 ptrtoint (%G__0x45b227_type* @G__0x45b227 to i64), i64* %RDI.i28, align 8
  %AL.i61 = bitcast %union.anon* %101 to i8*
  store i8 0, i8* %AL.i61, align 1
  %1865 = add i64 %1864, -311485
  %1866 = add i64 %1864, 17
  %1867 = load i64, i64* %6, align 8
  %1868 = add i64 %1867, -8
  %1869 = inttoptr i64 %1868 to i64*
  store i64 %1866, i64* %1869, align 8
  store i64 %1868, i64* %6, align 8
  store i64 %1865, i64* %3, align 8
  %1870 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.13)
  %1871 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b23a_type* @G__0x45b23a to i64), i64* %RDI.i28, align 8
  %1872 = load i64, i64* %RBP.i, align 8
  %1873 = add i64 %1872, -8
  %1874 = add i64 %1871, 14
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i64*
  %1876 = load i64, i64* %1875, align 8
  store i64 %1876, i64* %RCX.i580, align 8
  %1877 = add i64 %1876, 20
  %1878 = add i64 %1871, 17
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i32*
  %1880 = load i32, i32* %1879, align 4
  %1881 = zext i32 %1880 to i64
  store i64 %1881, i64* %RSI.i491, align 8
  %1882 = add i64 %1872, -40
  %1883 = load i32, i32* %EAX.i577, align 4
  %1884 = add i64 %1871, 20
  store i64 %1884, i64* %3, align 8
  %1885 = inttoptr i64 %1882 to i32*
  store i32 %1883, i32* %1885, align 4
  %1886 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i61, align 1
  %1887 = add i64 %1886, -311522
  %1888 = add i64 %1886, 7
  %1889 = load i64, i64* %6, align 8
  %1890 = add i64 %1889, -8
  %1891 = inttoptr i64 %1890 to i64*
  store i64 %1888, i64* %1891, align 8
  store i64 %1890, i64* %6, align 8
  store i64 %1887, i64* %3, align 8
  %1892 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1870)
  %1893 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b259_type* @G__0x45b259 to i64), i64* %RDI.i28, align 8
  %1894 = load i64, i64* %RBP.i, align 8
  %1895 = add i64 %1894, -36
  %1896 = add i64 %1893, 13
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1895 to i32*
  %1898 = load i32, i32* %1897, align 4
  %1899 = zext i32 %1898 to i64
  store i64 %1899, i64* %RSI.i491, align 8
  %1900 = add i64 %1894, -44
  %1901 = load i32, i32* %EAX.i577, align 4
  %1902 = add i64 %1893, 16
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1900 to i32*
  store i32 %1901, i32* %1903, align 4
  %1904 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i61, align 1
  %1905 = add i64 %1904, -311545
  %1906 = add i64 %1904, 7
  %1907 = load i64, i64* %6, align 8
  %1908 = add i64 %1907, -8
  %1909 = inttoptr i64 %1908 to i64*
  store i64 %1906, i64* %1909, align 8
  store i64 %1908, i64* %6, align 8
  store i64 %1905, i64* %3, align 8
  %1910 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1892)
  %1911 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45b278_type* @G__0x45b278 to i64), i64* %RDI.i28, align 8
  store i64 1000, i64* %RSI.i491, align 8
  %1912 = load i64, i64* %RBP.i, align 8
  %1913 = add i64 %1912, -28
  %1914 = add i64 %1911, 18
  store i64 %1914, i64* %3, align 8
  %1915 = inttoptr i64 %1913 to i32*
  %1916 = load i32, i32* %1915, align 4
  %1917 = zext i32 %1916 to i64
  store i64 %1917, i64* %RDX.i391, align 8
  %1918 = add i64 %1912, -48
  %1919 = load i32, i32* %EAX.i577, align 4
  %1920 = add i64 %1911, 21
  store i64 %1920, i64* %3, align 8
  %1921 = inttoptr i64 %1918 to i32*
  store i32 %1919, i32* %1921, align 4
  %1922 = load i32, i32* %EDX.i132, align 4
  %1923 = zext i32 %1922 to i64
  %1924 = load i64, i64* %3, align 8
  store i64 %1923, i64* %RAX.i583, align 8
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1926 = sext i32 %1922 to i64
  %1927 = lshr i64 %1926, 32
  store i64 %1927, i64* %1925, align 8
  %1928 = load i32, i32* %ESI.i57, align 4
  %1929 = add i64 %1924, 5
  store i64 %1929, i64* %3, align 8
  %1930 = sext i32 %1928 to i64
  %1931 = shl nuw i64 %1927, 32
  %1932 = or i64 %1931, %1923
  %1933 = sdiv i64 %1932, %1930
  %1934 = shl i64 %1933, 32
  %1935 = ashr exact i64 %1934, 32
  %1936 = icmp eq i64 %1933, %1935
  br i1 %1936, label %1939, label %1937

; <label>:1937:                                   ; preds = %block_.L_44d54d
  %1938 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1929, %struct.Memory* %1910)
  %.pre27 = load i32, i32* %EAX.i577, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:1939:                                   ; preds = %block_.L_44d54d
  %1940 = srem i64 %1932, %1930
  %1941 = and i64 %1933, 4294967295
  store i64 %1941, i64* %RAX.i583, align 8
  %1942 = and i64 %1940, 4294967295
  store i64 %1942, i64* %RDX.i391, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1943 = trunc i64 %1933 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %1939, %1937
  %1944 = phi i64 [ %.pre28, %1937 ], [ %1929, %1939 ]
  %1945 = phi i32 [ %.pre27, %1937 ], [ %1943, %1939 ]
  %1946 = phi %struct.Memory* [ %1938, %1937 ], [ %1910, %1939 ]
  %1947 = zext i32 %1945 to i64
  store i64 %1947, i64* %RSI.i491, align 8
  store i8 0, i8* %AL.i61, align 1
  %1948 = add i64 %1944, -311578
  %1949 = add i64 %1944, 9
  %1950 = load i64, i64* %6, align 8
  %1951 = add i64 %1950, -8
  %1952 = inttoptr i64 %1951 to i64*
  store i64 %1949, i64* %1952, align 8
  store i64 %1951, i64* %6, align 8
  store i64 %1948, i64* %3, align 8
  %1953 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %1946)
  %1954 = load i64, i64* %RBP.i, align 8
  %1955 = add i64 %1954, -52
  %1956 = load i32, i32* %EAX.i577, align 4
  %1957 = load i64, i64* %3, align 8
  %1958 = add i64 %1957, 3
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1955 to i32*
  store i32 %1956, i32* %1959, align 4
  %1960 = load i64, i64* %6, align 8
  %1961 = load i64, i64* %3, align 8
  %1962 = add i64 %1960, 64
  store i64 %1962, i64* %6, align 8
  %1963 = icmp ugt i64 %1960, -65
  %1964 = zext i1 %1963 to i8
  store i8 %1964, i8* %14, align 1
  %1965 = trunc i64 %1962 to i32
  %1966 = and i32 %1965, 255
  %1967 = tail call i32 @llvm.ctpop.i32(i32 %1966)
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  %1970 = xor i8 %1969, 1
  store i8 %1970, i8* %21, align 1
  %1971 = xor i64 %1962, %1960
  %1972 = lshr i64 %1971, 4
  %1973 = trunc i64 %1972 to i8
  %1974 = and i8 %1973, 1
  store i8 %1974, i8* %26, align 1
  %1975 = icmp eq i64 %1962, 0
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %29, align 1
  %1977 = lshr i64 %1962, 63
  %1978 = trunc i64 %1977 to i8
  store i8 %1978, i8* %32, align 1
  %1979 = lshr i64 %1960, 63
  %1980 = xor i64 %1977, %1979
  %1981 = add nuw nsw i64 %1980, %1977
  %1982 = icmp eq i64 %1981, 2
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %38, align 1
  %1984 = add i64 %1961, 5
  store i64 %1984, i64* %3, align 8
  %1985 = add i64 %1960, 72
  %1986 = inttoptr i64 %1962 to i64*
  %1987 = load i64, i64* %1986, align 8
  store i64 %1987, i64* %RBP.i, align 8
  store i64 %1985, i64* %6, align 8
  %1988 = add i64 %1961, 6
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1985 to i64*
  %1990 = load i64, i64* %1989, align 8
  store i64 %1990, i64* %3, align 8
  %1991 = add i64 %1960, 80
  store i64 %1991, i64* %6, align 8
  ret %struct.Memory* %1953
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movslq_0x10__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x68___rdi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 104
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_addq__0x20___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -33
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
define %struct.Memory* @routine_movl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x14__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 20
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
define %struct.Memory* @routine_jge_.L_44d4eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x68___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 104
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44d26a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x28__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44d2b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x30__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44d2fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x38__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44d4d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_addq__0x48___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 72
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -73
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
define %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 104
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
define %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i64 %7, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i64 %7, 63
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44d35a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44d385(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44d3b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44d3db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44d406(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0x60__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x28__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x30__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44d481(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44d4d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44d4d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d4dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44d210(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_44d54d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_movsd_0x10__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x14__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fcmp uno double %9, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %block_400488
  %14 = fadd double %9, %11
  %15 = bitcast double %14 to i64
  %16 = and i64 %15, 9221120237041090560
  %17 = icmp eq i64 %16, 9218868437227405312
  %18 = and i64 %15, 2251799813685247
  %19 = icmp ne i64 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = fcmp ogt double %9, %11
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt double %9, %11
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq double %9, %11
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %13
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %13 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %13 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %13 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %36, %21
  %40 = phi %struct.Memory* [ %22, %21 ], [ %2, %36 ]
  ret %struct.Memory* %40
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_44d536(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44d54d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44d4f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45b227___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b227_type* @G__0x45b227 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45b23a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b23a_type* @G__0x45b23a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movq__0x45b259___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b259_type* @G__0x45b259 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movq__0x45b278___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b278_type* @G__0x45b278 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3e8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1000, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
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
