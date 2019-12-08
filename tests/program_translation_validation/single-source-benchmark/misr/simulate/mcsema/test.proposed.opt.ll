; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1a9__rip__type = type <{ [8 x i8] }>
%G_0x293__rip__type = type <{ [8 x i8] }>
%G_0x39f__rip__type = type <{ [8 x i8] }>
%G_0x602074_type = type <{ [4 x i8] }>
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
@G_0x1a9__rip_ = local_unnamed_addr global %G_0x1a9__rip__type zeroinitializer
@G_0x293__rip_ = local_unnamed_addr global %G_0x293__rip__type zeroinitializer
@G_0x39f__rip_ = local_unnamed_addr global %G_0x39f__rip__type zeroinitializer
@G_0x602074 = local_unnamed_addr global %G_0x602074_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @lrand48()

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @simulate(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %RSP.i88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -136
  store i64 %11, i64* %RSP.i88, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i116 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 31, i64* %RAX.i116, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %19 to i32*
  %20 = add i64 %7, -12
  %21 = load i32, i32* %EDI.i, align 4
  %22 = add i64 %10, 18
  store i64 %22, i64* %PC.i, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %RSI.i242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %RSI.i242, align 8
  %27 = load i64, i64* %PC.i, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %PC.i, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -24
  %33 = load i64, i64* %PC.i, align 8
  %34 = add i64 %33, 5
  store i64 %34, i64* %PC.i, align 8
  %35 = bitcast [32 x %union.VectorReg]* %30 to double*
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %37 = load i64, i64* %36, align 1
  %38 = inttoptr i64 %32 to i64*
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i277 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = load i64, i64* %RBP.i, align 8
  %41 = add i64 %40, -32
  %42 = load i64, i64* %RDX.i277, align 8
  %43 = load i64, i64* %PC.i, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC.i, align 8
  %45 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -44
  %48 = load i64, i64* %PC.i, align 8
  %49 = add i64 %48, 7
  store i64 %49, i64* %PC.i, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 0, i32* %50, align 4
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %51 = load i64, i64* %PC.i, align 8
  %52 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %53 = add i32 %52, -1
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %RDI.i, align 8
  %55 = icmp eq i32 %52, 0
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %12, align 1
  %57 = and i32 %53, 255
  %58 = tail call i32 @llvm.ctpop.i32(i32 %57)
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, i8* %13, align 1
  %62 = xor i32 %52, %53
  %63 = lshr i32 %62, 4
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  store i8 %65, i8* %14, align 1
  %66 = icmp eq i32 %53, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %15, align 1
  %68 = lshr i32 %53, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %16, align 1
  %70 = lshr i32 %52, 31
  %71 = xor i32 %68, %70
  %72 = add nuw nsw i32 %71, %70
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %17, align 1
  %EAX.i461 = bitcast %union.anon* %18 to i32*
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -92
  %77 = load i32, i32* %EAX.i461, align 4
  %78 = add i64 %51, 13
  store i64 %78, i64* %PC.i, align 8
  %79 = inttoptr i64 %76 to i32*
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %EDI.i, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %PC.i, align 8
  store i64 %81, i64* %RAX.i116, align 8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %85 = sext i32 %80 to i64
  %86 = lshr i64 %85, 32
  store i64 %86, i64* %83, align 8
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -92
  %89 = add i64 %82, 6
  store i64 %89, i64* %PC.i, align 8
  %90 = inttoptr i64 %88 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = zext i32 %91 to i64
  store i64 %92, i64* %RDI.i, align 8
  %93 = add i64 %82, 8
  store i64 %93, i64* %PC.i, align 8
  %94 = zext i32 %80 to i64
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %96 = sext i32 %91 to i64
  %97 = shl nuw i64 %86, 32
  %98 = or i64 %97, %94
  %99 = sdiv i64 %98, %96
  %100 = shl i64 %99, 32
  %101 = ashr exact i64 %100, 32
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %105, label %103

; <label>:103:                                    ; preds = %entry
  %104 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %93, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre1 = load i32, i32* %EAX.i461, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %routine_idivl__edi.exit583

; <label>:105:                                    ; preds = %entry
  %106 = srem i64 %98, %96
  %107 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  %108 = and i64 %99, 4294967295
  store i64 %108, i64* %107, align 8
  %109 = getelementptr inbounds %union.anon, %union.anon* %95, i64 0, i32 0
  %110 = and i64 %106, 4294967295
  store i64 %110, i64* %109, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %111 = trunc i64 %99 to i32
  br label %routine_idivl__edi.exit583

routine_idivl__edi.exit583:                       ; preds = %105, %103
  %112 = phi i64 [ %.pre2, %103 ], [ %93, %105 ]
  %113 = phi i32 [ %.pre1, %103 ], [ %111, %105 ]
  %114 = phi i64 [ %.pre, %103 ], [ %87, %105 ]
  %115 = phi %struct.Memory* [ %104, %103 ], [ %2, %105 ]
  %116 = add i64 %114, -60
  %117 = add i64 %112, 3
  store i64 %117, i64* %PC.i, align 8
  %118 = inttoptr i64 %116 to i32*
  store i32 %113, i32* %118, align 4
  %119 = load i64, i64* %PC.i, align 8
  %120 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %121 = add i32 %120, -1
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RAX.i116, align 8
  %123 = icmp eq i32 %120, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %12, align 1
  %125 = and i32 %121, 255
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125)
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %13, align 1
  %130 = xor i32 %120, %121
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %14, align 1
  %134 = icmp eq i32 %121, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %15, align 1
  %136 = lshr i32 %121, 31
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %16, align 1
  %138 = lshr i32 %120, 31
  %139 = xor i32 %136, %138
  %140 = add nuw nsw i32 %139, %138
  %141 = icmp eq i32 %140, 2
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %17, align 1
  %143 = sext i32 %121 to i64
  %144 = lshr i64 %143, 32
  store i64 %144, i64* %83, align 8
  %145 = load i32, i32* %EDI.i, align 4
  %146 = add i64 %119, 13
  store i64 %146, i64* %PC.i, align 8
  %147 = sext i32 %145 to i64
  %148 = shl nuw i64 %144, 32
  %149 = or i64 %148, %122
  %150 = sdiv i64 %149, %147
  %151 = shl i64 %150, 32
  %152 = ashr exact i64 %151, 32
  %153 = icmp eq i64 %150, %152
  br i1 %153, label %156, label %154

; <label>:154:                                    ; preds = %routine_idivl__edi.exit583
  %155 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %146, %struct.Memory* %115)
  %EDX.i.phi.trans.insert = bitcast %union.anon* %39 to i32*
  %.pre3 = load i32, i32* %EDX.i.phi.trans.insert, align 4
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %routine_idivl__edi.exit

; <label>:156:                                    ; preds = %routine_idivl__edi.exit583
  %157 = srem i64 %149, %147
  %158 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  %159 = and i64 %150, 4294967295
  store i64 %159, i64* %158, align 8
  %160 = getelementptr inbounds %union.anon, %union.anon* %95, i64 0, i32 0
  %161 = and i64 %157, 4294967295
  store i64 %161, i64* %160, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %162 = trunc i64 %157 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %156, %154
  %163 = phi i64 [ %.pre4, %154 ], [ %146, %156 ]
  %164 = phi i32 [ %.pre3, %154 ], [ %162, %156 ]
  %165 = phi %struct.Memory* [ %155, %154 ], [ %115, %156 ]
  %166 = load i64, i64* %RBP.i, align 8
  %167 = add i64 %166, -56
  %168 = add i64 %163, 3
  store i64 %168, i64* %PC.i, align 8
  %169 = inttoptr i64 %167 to i32*
  store i32 %164, i32* %169, align 4
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -16
  %172 = load i64, i64* %PC.i, align 8
  %173 = add i64 %172, 4
  store i64 %173, i64* %PC.i, align 8
  %174 = inttoptr i64 %171 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %RSI.i242, align 8
  %176 = add i64 %170, -40
  %177 = add i64 %172, 8
  store i64 %177, i64* %PC.i, align 8
  %178 = inttoptr i64 %176 to i64*
  store i64 %175, i64* %178, align 8
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -64
  %181 = load i64, i64* %PC.i, align 8
  %182 = add i64 %181, 7
  store i64 %182, i64* %PC.i, align 8
  %183 = inttoptr i64 %180 to i32*
  store i32 0, i32* %183, align 4
  %RCX.i523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %184 = bitcast [32 x %union.VectorReg]* %30 to double*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %186 = bitcast i64* %185 to double*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %189 = bitcast %union.VectorReg* %188 to double*
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c5e

block_.L_400c5e:                                  ; preds = %block_.L_400f2d, %routine_idivl__edi.exit
  %190 = phi i64 [ %.pre5, %routine_idivl__edi.exit ], [ %1588, %block_.L_400f2d ]
  %MEMORY.0 = phi %struct.Memory* [ %165, %routine_idivl__edi.exit ], [ %1496, %block_.L_400f2d ]
  %191 = load i64, i64* %RBP.i, align 8
  %192 = add i64 %191, -64
  %193 = add i64 %190, 3
  store i64 %193, i64* %PC.i, align 8
  %194 = inttoptr i64 %192 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RAX.i116, align 8
  %197 = add i64 %191, -4
  %198 = add i64 %190, 6
  store i64 %198, i64* %PC.i, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = sub i32 %195, %200
  %202 = icmp ult i32 %195, %200
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %12, align 1
  %204 = and i32 %201, 255
  %205 = tail call i32 @llvm.ctpop.i32(i32 %204)
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  store i8 %208, i8* %13, align 1
  %209 = xor i32 %200, %195
  %210 = xor i32 %209, %201
  %211 = lshr i32 %210, 4
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %14, align 1
  %214 = icmp eq i32 %201, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %15, align 1
  %216 = lshr i32 %201, 31
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %16, align 1
  %218 = lshr i32 %195, 31
  %219 = lshr i32 %200, 31
  %220 = xor i32 %219, %218
  %221 = xor i32 %216, %218
  %222 = add nuw nsw i32 %221, %220
  %223 = icmp eq i32 %222, 2
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %17, align 1
  %225 = icmp ne i8 %217, 0
  %226 = xor i1 %225, %223
  %.v = select i1 %226, i64 12, i64 762
  %227 = add i64 %190, %.v
  store i64 %227, i64* %3, align 8
  br i1 %226, label %block_400c6a, label %block_.L_400f58

block_400c6a:                                     ; preds = %block_.L_400c5e
  %228 = add i64 %191, -48
  %229 = add i64 %227, 7
  store i64 %229, i64* %PC.i, align 8
  %230 = inttoptr i64 %228 to i32*
  store i32 0, i32* %230, align 4
  %231 = load i64, i64* %RBP.i, align 8
  %232 = add i64 %231, -52
  %233 = load i64, i64* %PC.i, align 8
  %234 = add i64 %233, 7
  store i64 %234, i64* %PC.i, align 8
  %235 = inttoptr i64 %232 to i32*
  store i32 0, i32* %235, align 4
  %236 = load i64, i64* %RBP.i, align 8
  %237 = add i64 %236, -68
  %238 = load i64, i64* %PC.i, align 8
  %239 = add i64 %238, 7
  store i64 %239, i64* %PC.i, align 8
  %240 = inttoptr i64 %237 to i32*
  store i32 0, i32* %240, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c7f

block_.L_400c7f:                                  ; preds = %block_.L_400d82, %block_400c6a
  %241 = phi i64 [ %.pre6, %block_400c6a ], [ %764, %block_.L_400d82 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400c6a ], [ %MEMORY.2, %block_.L_400d82 ]
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -68
  %244 = add i64 %241, 3
  store i64 %244, i64* %PC.i, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RAX.i116, align 8
  %248 = add i64 %242, -60
  %249 = add i64 %241, 6
  store i64 %249, i64* %PC.i, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = sub i32 %246, %251
  %253 = icmp ult i32 %246, %251
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %12, align 1
  %255 = and i32 %252, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %13, align 1
  %260 = xor i32 %251, %246
  %261 = xor i32 %260, %252
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  store i8 %264, i8* %14, align 1
  %265 = icmp eq i32 %252, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %15, align 1
  %267 = lshr i32 %252, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %16, align 1
  %269 = lshr i32 %246, 31
  %270 = lshr i32 %251, 31
  %271 = xor i32 %270, %269
  %272 = xor i32 %267, %269
  %273 = add nuw nsw i32 %272, %271
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %17, align 1
  %276 = icmp ne i8 %268, 0
  %277 = xor i1 %276, %274
  %.v31 = select i1 %277, i64 12, i64 278
  %278 = add i64 %241, %.v31
  store i64 %278, i64* %3, align 8
  br i1 %277, label %block_400c8b, label %block_.L_400d95

block_400c8b:                                     ; preds = %block_.L_400c7f
  %279 = add i64 %278, -1579
  %280 = add i64 %278, 5
  %281 = load i64, i64* %6, align 8
  %282 = add i64 %281, -8
  %283 = inttoptr i64 %282 to i64*
  store i64 %280, i64* %283, align 8
  store i64 %282, i64* %6, align 8
  store i64 %279, i64* %3, align 8
  %284 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.1)
  %285 = load i64, i64* %RBP.i, align 8
  %286 = add i64 %285, -80
  %287 = load i64, i64* %RAX.i116, align 8
  %288 = load i64, i64* %PC.i, align 8
  %289 = add i64 %288, 4
  store i64 %289, i64* %PC.i, align 8
  %290 = inttoptr i64 %286 to i64*
  store i64 %287, i64* %290, align 8
  %291 = load i64, i64* %RBP.i, align 8
  %292 = add i64 %291, -72
  %293 = load i64, i64* %PC.i, align 8
  %294 = add i64 %293, 7
  store i64 %294, i64* %PC.i, align 8
  %295 = inttoptr i64 %292 to i32*
  store i32 0, i32* %295, align 4
  %.pre7 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c9b

block_.L_400c9b:                                  ; preds = %block_.L_400d3f, %block_400c8b
  %296 = phi i64 [ %.pre7, %block_400c8b ], [ %733, %block_.L_400d3f ]
  %MEMORY.2 = phi %struct.Memory* [ %284, %block_400c8b ], [ %613, %block_.L_400d3f ]
  %297 = load i64, i64* %RBP.i, align 8
  %298 = add i64 %297, -72
  %299 = add i64 %296, 4
  store i64 %299, i64* %PC.i, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = add i32 %301, -31
  %303 = icmp ult i32 %301, 31
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %12, align 1
  %305 = and i32 %302, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %13, align 1
  %310 = xor i32 %301, 16
  %311 = xor i32 %310, %302
  %312 = lshr i32 %311, 4
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  store i8 %314, i8* %14, align 1
  %315 = icmp eq i32 %302, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %15, align 1
  %317 = lshr i32 %302, 31
  %318 = trunc i32 %317 to i8
  store i8 %318, i8* %16, align 1
  %319 = lshr i32 %301, 31
  %320 = xor i32 %317, %319
  %321 = add nuw nsw i32 %320, %319
  %322 = icmp eq i32 %321, 2
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %17, align 1
  %324 = icmp ne i8 %318, 0
  %325 = xor i1 %324, %322
  %.v32 = select i1 %325, i64 10, i64 231
  %326 = add i64 %296, %.v32
  store i64 %326, i64* %3, align 8
  br i1 %325, label %block_400ca5, label %block_.L_400d82

block_400ca5:                                     ; preds = %block_.L_400c9b
  %327 = add i64 %297, -32
  %328 = add i64 %326, 4
  store i64 %328, i64* %PC.i, align 8
  %329 = inttoptr i64 %327 to i64*
  %330 = load i64, i64* %329, align 8
  store i64 %330, i64* %RAX.i116, align 8
  %331 = add i64 %297, -68
  %332 = add i64 %326, 8
  store i64 %332, i64* %PC.i, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = sext i32 %334 to i64
  %336 = mul nsw i64 %335, 31
  %337 = trunc i64 %336 to i32
  %338 = and i64 %336, 4294967295
  store i64 %338, i64* %RCX.i523, align 8
  %339 = mul i64 %335, 133143986176
  %340 = ashr exact i64 %339, 32
  %341 = icmp ne i64 %340, %336
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %12, align 1
  %343 = and i32 %337, 255
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %348 = lshr i32 %337, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %16, align 1
  store i8 %342, i8* %17, align 1
  %350 = add i64 %326, 11
  store i64 %350, i64* %PC.i, align 8
  %351 = trunc i64 %336 to i32
  %352 = load i32, i32* %300, align 4
  %353 = add i32 %352, %351
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RCX.i523, align 8
  %355 = icmp ult i32 %353, %351
  %356 = icmp ult i32 %353, %352
  %357 = or i1 %355, %356
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %12, align 1
  %359 = and i32 %353, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %13, align 1
  %364 = xor i32 %352, %351
  %365 = xor i32 %364, %353
  %366 = lshr i32 %365, 4
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  store i8 %368, i8* %14, align 1
  %369 = icmp eq i32 %353, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %15, align 1
  %371 = lshr i32 %353, 31
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %16, align 1
  %373 = lshr i32 %351, 31
  %374 = lshr i32 %352, 31
  %375 = xor i32 %371, %373
  %376 = xor i32 %371, %374
  %377 = add nuw nsw i32 %375, %376
  %378 = icmp eq i32 %377, 2
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %17, align 1
  %380 = sext i32 %353 to i64
  store i64 %380, i64* %RDX.i277, align 8
  %381 = add i64 %380, %330
  %382 = add i64 %326, 18
  store i64 %382, i64* %PC.i, align 8
  %383 = inttoptr i64 %381 to i8*
  %384 = load i8, i8* %383, align 1
  %385 = sext i8 %384 to i64
  %386 = and i64 %385, 4294967295
  store i64 %386, i64* %RCX.i523, align 8
  %387 = sext i8 %384 to i32
  %388 = add nsw i32 %387, -49
  %389 = icmp ult i8 %384, 49
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %12, align 1
  %391 = and i32 %388, 255
  %392 = tail call i32 @llvm.ctpop.i32(i32 %391)
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  %395 = xor i8 %394, 1
  store i8 %395, i8* %13, align 1
  %396 = xor i32 %387, 16
  %397 = xor i32 %396, %388
  %398 = lshr i32 %397, 4
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  store i8 %400, i8* %14, align 1
  %401 = icmp eq i32 %388, 0
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %15, align 1
  %403 = lshr i32 %388, 31
  %404 = trunc i32 %403 to i8
  store i8 %404, i8* %16, align 1
  %405 = lshr i32 %387, 31
  %406 = xor i32 %403, %405
  %407 = add nuw nsw i32 %406, %405
  %408 = icmp eq i32 %407, 2
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %17, align 1
  %.v33 = select i1 %401, i64 27, i64 52
  %410 = add i64 %326, %.v33
  store i64 %410, i64* %3, align 8
  br i1 %401, label %block_400cc0, label %block_.L_400cd9

block_400cc0:                                     ; preds = %block_400ca5
  %411 = load i64, i64* %RBP.i, align 8
  %412 = add i64 %411, -40
  %413 = add i64 %410, 4
  store i64 %413, i64* %PC.i, align 8
  %414 = inttoptr i64 %412 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %RAX.i116, align 8
  %416 = add i64 %410, 6
  store i64 %416, i64* %PC.i, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RCX.i523, align 8
  %420 = add i64 %411, -48
  %421 = add i64 %410, 9
  store i64 %421, i64* %PC.i, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = add i32 %423, %418
  %425 = zext i32 %424 to i64
  store i64 %425, i64* %RCX.i523, align 8
  %426 = icmp ult i32 %424, %418
  %427 = icmp ult i32 %424, %423
  %428 = or i1 %426, %427
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %12, align 1
  %430 = and i32 %424, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430)
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %13, align 1
  %435 = xor i32 %423, %418
  %436 = xor i32 %435, %424
  %437 = lshr i32 %436, 4
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  store i8 %439, i8* %14, align 1
  %440 = icmp eq i32 %424, 0
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %15, align 1
  %442 = lshr i32 %424, 31
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %16, align 1
  %444 = lshr i32 %418, 31
  %445 = lshr i32 %423, 31
  %446 = xor i32 %442, %444
  %447 = xor i32 %442, %445
  %448 = add nuw nsw i32 %446, %447
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %17, align 1
  %451 = add i64 %410, 12
  store i64 %451, i64* %PC.i, align 8
  store i32 %424, i32* %422, align 4
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -40
  %454 = load i64, i64* %PC.i, align 8
  %455 = add i64 %454, 4
  store i64 %455, i64* %PC.i, align 8
  %456 = inttoptr i64 %453 to i64*
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %RAX.i116, align 8
  %458 = add i64 %457, 4
  %459 = add i64 %454, 7
  store i64 %459, i64* %PC.i, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = zext i32 %461 to i64
  store i64 %462, i64* %RCX.i523, align 8
  %463 = add i64 %452, -52
  %464 = add i64 %454, 10
  store i64 %464, i64* %PC.i, align 8
  %465 = inttoptr i64 %463 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = add i32 %466, %461
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RCX.i523, align 8
  %469 = icmp ult i32 %467, %461
  %470 = icmp ult i32 %467, %466
  %471 = or i1 %469, %470
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %12, align 1
  %473 = and i32 %467, 255
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473)
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %13, align 1
  %478 = xor i32 %466, %461
  %479 = xor i32 %478, %467
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  store i8 %482, i8* %14, align 1
  %483 = icmp eq i32 %467, 0
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %15, align 1
  %485 = lshr i32 %467, 31
  %486 = trunc i32 %485 to i8
  store i8 %486, i8* %16, align 1
  %487 = lshr i32 %461, 31
  %488 = lshr i32 %466, 31
  %489 = xor i32 %485, %487
  %490 = xor i32 %485, %488
  %491 = add nuw nsw i32 %489, %490
  %492 = icmp eq i32 %491, 2
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %17, align 1
  %494 = add i64 %454, 13
  store i64 %494, i64* %PC.i, align 8
  store i32 %467, i32* %465, align 4
  %.pre8 = load i64, i64* %PC.i, align 8
  br label %block_.L_400cd9

block_.L_400cd9:                                  ; preds = %block_400ca5, %block_400cc0
  %495 = phi i64 [ %.pre8, %block_400cc0 ], [ %410, %block_400ca5 ]
  %496 = load i64, i64* %RBP.i, align 8
  %497 = add i64 %496, -40
  %498 = add i64 %495, 4
  store i64 %498, i64* %PC.i, align 8
  %499 = inttoptr i64 %497 to i64*
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %RAX.i116, align 8
  %501 = add i64 %500, 8
  %502 = add i64 %495, 8
  store i64 %502, i64* %PC.i, align 8
  %503 = inttoptr i64 %501 to i64*
  %504 = load i64, i64* %503, align 8
  store i64 %504, i64* %RAX.i116, align 8
  %505 = add i64 %495, 11
  store i64 %505, i64* %PC.i, align 8
  %506 = inttoptr i64 %504 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = sext i32 %507 to i64
  store i64 %508, i64* %RAX.i116, align 8
  %509 = add i64 %496, -80
  %510 = add i64 %495, 15
  store i64 %510, i64* %PC.i, align 8
  %511 = inttoptr i64 %509 to i64*
  %512 = load i64, i64* %511, align 8
  %513 = add i64 %512, %508
  %514 = and i64 %513, 1
  store i64 %514, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %515 = trunc i64 %514 to i32
  %516 = tail call i32 @llvm.ctpop.i32(i32 %515)
  %517 = trunc i32 %516 to i8
  %518 = xor i8 %517, 1
  store i8 %518, i8* %13, align 1
  %519 = trunc i64 %514 to i8
  %520 = xor i8 %519, 1
  store i8 %520, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %521 = and i64 %513, 1
  store i64 %521, i64* %RCX.i523, align 8
  %522 = add i64 %495, 25
  store i64 %522, i64* %PC.i, align 8
  %523 = load i64, i64* %499, align 8
  store i64 %523, i64* %RAX.i116, align 8
  %524 = trunc i64 %521 to i32
  %525 = add i64 %495, 27
  store i64 %525, i64* %PC.i, align 8
  %526 = inttoptr i64 %523 to i32*
  store i32 %524, i32* %526, align 4
  %527 = load i64, i64* %PC.i, align 8
  %528 = add i64 %527, -1684
  %529 = add i64 %527, 5
  %530 = load i64, i64* %6, align 8
  %531 = add i64 %530, -8
  %532 = inttoptr i64 %531 to i64*
  store i64 %529, i64* %532, align 8
  store i64 %531, i64* %6, align 8
  store i64 %528, i64* %3, align 8
  %533 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.2)
  %534 = load i64, i64* %PC.i, align 8
  %535 = load i64, i64* bitcast (%G_0x39f__rip__type* @G_0x39f__rip_ to i64*), align 8
  %536 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %535, i64* %536, align 1
  store double 0.000000e+00, double* %186, align 1
  store i64 1000, i64* %RCX.i523, align 8
  %537 = load i64, i64* %RBP.i, align 8
  %538 = add i64 %537, -104
  %539 = add i64 %534, 19
  store i64 %539, i64* %PC.i, align 8
  %540 = inttoptr i64 %538 to i64*
  store i64 1000, i64* %540, align 8
  %541 = load i64, i64* %PC.i, align 8
  %542 = load i64, i64* %187, align 8
  %543 = ashr i64 %542, 63
  store i64 %543, i64* %83, align 8
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -104
  %546 = add i64 %541, 6
  store i64 %546, i64* %PC.i, align 8
  %547 = inttoptr i64 %545 to i64*
  %548 = load i64, i64* %547, align 8
  store i64 %548, i64* %RSI.i242, align 8
  %549 = add i64 %541, 9
  store i64 %549, i64* %PC.i, align 8
  %550 = sext i64 %548 to i128
  %551 = and i128 %550, -18446744073709551616
  %552 = zext i64 %543 to i128
  %553 = shl nuw i128 %552, 64
  %554 = zext i64 %542 to i128
  %555 = or i128 %553, %554
  %556 = zext i64 %548 to i128
  %557 = or i128 %551, %556
  %558 = sdiv i128 %555, %557
  %559 = trunc i128 %558 to i64
  %560 = and i128 %558, 18446744073709551615
  %561 = sext i64 %559 to i128
  %562 = and i128 %561, -18446744073709551616
  %563 = or i128 %562, %560
  %564 = icmp eq i128 %558, %563
  br i1 %564, label %567, label %565

; <label>:565:                                    ; preds = %block_.L_400cd9
  %566 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %549, %struct.Memory* %533)
  %.pre9 = load i64, i64* %RDX.i277, align 8
  %.pre10 = load i64, i64* %PC.i, align 8
  %.pre11 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rsi.exit443

; <label>:567:                                    ; preds = %block_.L_400cd9
  %568 = srem i128 %555, %557
  %569 = trunc i128 %568 to i64
  store i64 %559, i64* %187, align 8
  store i64 %569, i64* %83, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rsi.exit443

routine_idivq__rsi.exit443:                       ; preds = %567, %565
  %570 = phi i64 [ %.pre11, %565 ], [ %544, %567 ]
  %571 = phi i64 [ %.pre10, %565 ], [ %549, %567 ]
  %572 = phi i64 [ %.pre9, %565 ], [ %569, %567 ]
  %573 = phi %struct.Memory* [ %566, %565 ], [ %533, %567 ]
  %574 = sitofp i64 %572 to double
  %575 = load double, double* %35, align 1
  %576 = fdiv double %574, %575
  store double %576, double* %189, align 1
  %577 = add i64 %570, -88
  %578 = add i64 %571, 14
  store i64 %578, i64* %PC.i, align 8
  %579 = inttoptr i64 %577 to double*
  store double %576, double* %579, align 8
  %580 = load i64, i64* %RBP.i, align 8
  %581 = add i64 %580, -24
  %582 = load i64, i64* %PC.i, align 8
  %583 = add i64 %582, 5
  store i64 %583, i64* %PC.i, align 8
  %584 = inttoptr i64 %581 to double*
  %585 = load double, double* %584, align 8
  store double %585, double* %184, align 1
  store double 0.000000e+00, double* %186, align 1
  %586 = add i64 %580, -88
  %587 = add i64 %582, 10
  store i64 %587, i64* %PC.i, align 8
  %588 = inttoptr i64 %586 to double*
  %589 = load double, double* %588, align 8
  %590 = fcmp uno double %585, %589
  br i1 %590, label %591, label %601

; <label>:591:                                    ; preds = %routine_idivq__rsi.exit443
  %592 = fadd double %585, %589
  %593 = bitcast double %592 to i64
  %594 = and i64 %593, 9221120237041090560
  %595 = icmp eq i64 %594, 9218868437227405312
  %596 = and i64 %593, 2251799813685247
  %597 = icmp ne i64 %596, 0
  %598 = and i1 %595, %597
  br i1 %598, label %599, label %607

; <label>:599:                                    ; preds = %591
  %600 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %587, %struct.Memory* %573)
  %.pre12 = load i64, i64* %PC.i, align 8
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427

; <label>:601:                                    ; preds = %routine_idivq__rsi.exit443
  %602 = fcmp ogt double %585, %589
  br i1 %602, label %607, label %603

; <label>:603:                                    ; preds = %601
  %604 = fcmp olt double %585, %589
  br i1 %604, label %607, label %605

; <label>:605:                                    ; preds = %603
  %606 = fcmp oeq double %585, %589
  br i1 %606, label %607, label %611

; <label>:607:                                    ; preds = %605, %603, %601, %591
  %608 = phi i8 [ 0, %601 ], [ 0, %603 ], [ 1, %605 ], [ 1, %591 ]
  %609 = phi i8 [ 0, %601 ], [ 0, %603 ], [ 0, %605 ], [ 1, %591 ]
  %610 = phi i8 [ 0, %601 ], [ 1, %603 ], [ 0, %605 ], [ 1, %591 ]
  store i8 %608, i8* %15, align 1
  store i8 %609, i8* %13, align 1
  store i8 %610, i8* %12, align 1
  br label %611

; <label>:611:                                    ; preds = %607, %605
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427

routine_ucomisd_MINUS0x58__rbp____xmm0.exit427:   ; preds = %611, %599
  %612 = phi i64 [ %.pre12, %599 ], [ %587, %611 ]
  %613 = phi %struct.Memory* [ %600, %599 ], [ %573, %611 ]
  %614 = load i8, i8* %12, align 1
  %615 = load i8, i8* %15, align 1
  %616 = or i8 %615, %614
  %617 = icmp ne i8 %616, 0
  %.v34 = select i1 %617, i64 18, i64 6
  %618 = add i64 %612, %.v34
  store i64 %618, i64* %3, align 8
  br i1 %617, label %block_.L_400d3f, label %block_400d33

block_400d33:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427
  %619 = load i64, i64* %RBP.i, align 8
  %620 = add i64 %619, -80
  %621 = add i64 %618, 4
  store i64 %621, i64* %PC.i, align 8
  %622 = inttoptr i64 %620 to i64*
  %623 = load i64, i64* %622, align 8
  %624 = xor i64 %623, 1
  store i64 %624, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %625 = trunc i64 %624 to i32
  %626 = and i32 %625, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %13, align 1
  %631 = icmp eq i64 %624, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %15, align 1
  %633 = lshr i64 %623, 63
  %634 = trunc i64 %633 to i8
  store i8 %634, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %635 = add i64 %618, 12
  store i64 %635, i64* %PC.i, align 8
  store i64 %624, i64* %622, align 8
  %.pre13 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d3f

block_.L_400d3f:                                  ; preds = %block_400d33, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427
  %636 = phi i64 [ %.pre13, %block_400d33 ], [ %618, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427 ]
  %637 = load i64, i64* %RBP.i, align 8
  %638 = add i64 %637, -40
  %639 = add i64 %636, 4
  store i64 %639, i64* %PC.i, align 8
  %640 = inttoptr i64 %638 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %641, i64* %RAX.i116, align 8
  %642 = add i64 %641, 8
  %643 = add i64 %636, 8
  store i64 %643, i64* %PC.i, align 8
  %644 = inttoptr i64 %642 to i64*
  %645 = load i64, i64* %644, align 8
  store i64 %645, i64* %RAX.i116, align 8
  %646 = add i64 %645, 4
  %647 = add i64 %636, 12
  store i64 %647, i64* %PC.i, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = sext i32 %649 to i64
  store i64 %650, i64* %RAX.i116, align 8
  %651 = add i64 %637, -80
  %652 = add i64 %636, 16
  store i64 %652, i64* %PC.i, align 8
  %653 = inttoptr i64 %651 to i64*
  %654 = load i64, i64* %653, align 8
  %655 = add i64 %654, %650
  %656 = and i64 %655, 1
  store i64 %656, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %657 = trunc i64 %656 to i32
  %658 = tail call i32 @llvm.ctpop.i32(i32 %657)
  %659 = trunc i32 %658 to i8
  %660 = xor i8 %659, 1
  store i8 %660, i8* %13, align 1
  %661 = trunc i64 %656 to i8
  %662 = xor i8 %661, 1
  store i8 %662, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %663 = and i64 %655, 1
  store i64 %663, i64* %RCX.i523, align 8
  %664 = add i64 %636, 26
  store i64 %664, i64* %PC.i, align 8
  %665 = load i64, i64* %640, align 8
  store i64 %665, i64* %RAX.i116, align 8
  %666 = add i64 %665, 4
  %667 = trunc i64 %663 to i32
  %668 = add i64 %636, 29
  store i64 %668, i64* %PC.i, align 8
  %669 = inttoptr i64 %666 to i32*
  store i32 %667, i32* %669, align 4
  %670 = load i64, i64* %RBP.i, align 8
  %671 = add i64 %670, -40
  %672 = load i64, i64* %PC.i, align 8
  %673 = add i64 %672, 4
  store i64 %673, i64* %PC.i, align 8
  %674 = inttoptr i64 %671 to i64*
  %675 = load i64, i64* %674, align 8
  store i64 %675, i64* %RAX.i116, align 8
  %676 = add i64 %675, 8
  %677 = add i64 %672, 8
  store i64 %677, i64* %PC.i, align 8
  %678 = inttoptr i64 %676 to i64*
  %679 = load i64, i64* %678, align 8
  store i64 %679, i64* %RAX.i116, align 8
  %680 = add i64 %672, 12
  store i64 %680, i64* %PC.i, align 8
  store i64 %679, i64* %674, align 8
  %681 = load i64, i64* %RBP.i, align 8
  %682 = add i64 %681, -80
  %683 = load i64, i64* %PC.i, align 8
  %684 = add i64 %683, 4
  store i64 %684, i64* %PC.i, align 8
  %685 = inttoptr i64 %682 to i64*
  %686 = load i64, i64* %685, align 8
  %687 = trunc i64 %686 to i8
  %688 = and i8 %687, 1
  %689 = ashr i64 %686, 1
  store i64 %689, i64* %RAX.i116, align 8
  store i8 %688, i8* %12, align 1
  %690 = trunc i64 %689 to i32
  %691 = and i32 %690, 255
  %692 = tail call i32 @llvm.ctpop.i32(i32 %691)
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = xor i8 %694, 1
  store i8 %695, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %696 = icmp eq i64 %689, 0
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %15, align 1
  %698 = lshr i64 %689, 63
  %699 = trunc i64 %698 to i8
  store i8 %699, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %700 = add i64 %683, 11
  store i64 %700, i64* %PC.i, align 8
  store i64 %689, i64* %685, align 8
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -72
  %703 = load i64, i64* %PC.i, align 8
  %704 = add i64 %703, 3
  store i64 %704, i64* %PC.i, align 8
  %705 = inttoptr i64 %702 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = add i32 %706, 1
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RAX.i116, align 8
  %709 = icmp eq i32 %706, -1
  %710 = icmp eq i32 %707, 0
  %711 = or i1 %709, %710
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %12, align 1
  %713 = and i32 %707, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713)
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %13, align 1
  %718 = xor i32 %706, %707
  %719 = lshr i32 %718, 4
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  store i8 %721, i8* %14, align 1
  %722 = icmp eq i32 %707, 0
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %15, align 1
  %724 = lshr i32 %707, 31
  %725 = trunc i32 %724 to i8
  store i8 %725, i8* %16, align 1
  %726 = lshr i32 %706, 31
  %727 = xor i32 %724, %726
  %728 = add nuw nsw i32 %727, %724
  %729 = icmp eq i32 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %17, align 1
  %731 = add i64 %703, 9
  store i64 %731, i64* %PC.i, align 8
  store i32 %707, i32* %705, align 4
  %732 = load i64, i64* %PC.i, align 8
  %733 = add i64 %732, -226
  store i64 %733, i64* %3, align 8
  br label %block_.L_400c9b

block_.L_400d82:                                  ; preds = %block_.L_400c9b
  %734 = add i64 %297, -68
  %735 = add i64 %326, 8
  store i64 %735, i64* %PC.i, align 8
  %736 = inttoptr i64 %734 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = add i32 %737, 1
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %RAX.i116, align 8
  %740 = icmp eq i32 %737, -1
  %741 = icmp eq i32 %738, 0
  %742 = or i1 %740, %741
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %12, align 1
  %744 = and i32 %738, 255
  %745 = tail call i32 @llvm.ctpop.i32(i32 %744)
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  store i8 %748, i8* %13, align 1
  %749 = xor i32 %737, %738
  %750 = lshr i32 %749, 4
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  store i8 %752, i8* %14, align 1
  %753 = icmp eq i32 %738, 0
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %15, align 1
  %755 = lshr i32 %738, 31
  %756 = trunc i32 %755 to i8
  store i8 %756, i8* %16, align 1
  %757 = lshr i32 %737, 31
  %758 = xor i32 %755, %757
  %759 = add nuw nsw i32 %758, %755
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %17, align 1
  %762 = add i64 %326, 14
  store i64 %762, i64* %PC.i, align 8
  store i32 %738, i32* %736, align 4
  %763 = load i64, i64* %PC.i, align 8
  %764 = add i64 %763, -273
  store i64 %764, i64* %3, align 8
  br label %block_.L_400c7f

block_.L_400d95:                                  ; preds = %block_.L_400c7f
  %765 = add i64 %278, -1845
  %766 = add i64 %278, 5
  %767 = load i64, i64* %6, align 8
  %768 = add i64 %767, -8
  %769 = inttoptr i64 %768 to i64*
  store i64 %766, i64* %769, align 8
  store i64 %768, i64* %6, align 8
  store i64 %765, i64* %3, align 8
  %770 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.1)
  %771 = load i64, i64* %RBP.i, align 8
  %772 = add i64 %771, -80
  %773 = load i64, i64* %RAX.i116, align 8
  %774 = load i64, i64* %PC.i, align 8
  %775 = add i64 %774, 4
  store i64 %775, i64* %PC.i, align 8
  %776 = inttoptr i64 %772 to i64*
  store i64 %773, i64* %776, align 8
  %777 = load i64, i64* %RBP.i, align 8
  %778 = add i64 %777, -72
  %779 = load i64, i64* %PC.i, align 8
  %780 = add i64 %779, 7
  store i64 %780, i64* %PC.i, align 8
  %781 = inttoptr i64 %778 to i32*
  store i32 0, i32* %781, align 4
  %.pre14 = load i64, i64* %PC.i, align 8
  br label %block_.L_400da5

block_.L_400da5:                                  ; preds = %block_.L_400e4b, %block_.L_400d95
  %782 = phi i64 [ %.pre14, %block_.L_400d95 ], [ %1226, %block_.L_400e4b ]
  %MEMORY.5 = phi %struct.Memory* [ %770, %block_.L_400d95 ], [ %1106, %block_.L_400e4b ]
  %783 = load i64, i64* %RBP.i, align 8
  %784 = add i64 %783, -72
  %785 = add i64 %782, 3
  store i64 %785, i64* %PC.i, align 8
  %786 = inttoptr i64 %784 to i32*
  %787 = load i32, i32* %786, align 4
  %788 = zext i32 %787 to i64
  store i64 %788, i64* %RAX.i116, align 8
  %789 = add i64 %783, -56
  %790 = add i64 %782, 6
  store i64 %790, i64* %PC.i, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = sub i32 %787, %792
  %794 = icmp ult i32 %787, %792
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %12, align 1
  %796 = and i32 %793, 255
  %797 = tail call i32 @llvm.ctpop.i32(i32 %796)
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  store i8 %800, i8* %13, align 1
  %801 = xor i32 %792, %787
  %802 = xor i32 %801, %793
  %803 = lshr i32 %802, 4
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  store i8 %805, i8* %14, align 1
  %806 = icmp eq i32 %793, 0
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %15, align 1
  %808 = lshr i32 %793, 31
  %809 = trunc i32 %808 to i8
  store i8 %809, i8* %16, align 1
  %810 = lshr i32 %787, 31
  %811 = lshr i32 %792, 31
  %812 = xor i32 %811, %810
  %813 = xor i32 %808, %810
  %814 = add nuw nsw i32 %813, %812
  %815 = icmp eq i32 %814, 2
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %17, align 1
  %817 = icmp ne i8 %809, 0
  %818 = xor i1 %817, %815
  %.v35 = select i1 %818, i64 12, i64 233
  %819 = add i64 %782, %.v35
  store i64 %819, i64* %3, align 8
  br i1 %818, label %block_400db1, label %block_.L_400e8e

block_400db1:                                     ; preds = %block_.L_400da5
  %820 = add i64 %783, -32
  %821 = add i64 %819, 4
  store i64 %821, i64* %PC.i, align 8
  %822 = inttoptr i64 %820 to i64*
  %823 = load i64, i64* %822, align 8
  store i64 %823, i64* %RAX.i116, align 8
  %824 = add i64 %783, -60
  %825 = add i64 %819, 8
  store i64 %825, i64* %PC.i, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = sext i32 %827 to i64
  %829 = mul nsw i64 %828, 31
  %830 = trunc i64 %829 to i32
  %831 = and i64 %829, 4294967295
  store i64 %831, i64* %RCX.i523, align 8
  %832 = mul i64 %828, 133143986176
  %833 = ashr exact i64 %832, 32
  %834 = icmp ne i64 %833, %829
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %12, align 1
  %836 = and i32 %830, 255
  %837 = tail call i32 @llvm.ctpop.i32(i32 %836)
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  %840 = xor i8 %839, 1
  store i8 %840, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %841 = lshr i32 %830, 31
  %842 = trunc i32 %841 to i8
  store i8 %842, i8* %16, align 1
  store i8 %835, i8* %17, align 1
  %843 = add i64 %819, 11
  store i64 %843, i64* %PC.i, align 8
  %844 = trunc i64 %829 to i32
  %845 = load i32, i32* %786, align 4
  %846 = add i32 %845, %844
  %847 = zext i32 %846 to i64
  store i64 %847, i64* %RCX.i523, align 8
  %848 = icmp ult i32 %846, %844
  %849 = icmp ult i32 %846, %845
  %850 = or i1 %848, %849
  %851 = zext i1 %850 to i8
  store i8 %851, i8* %12, align 1
  %852 = and i32 %846, 255
  %853 = tail call i32 @llvm.ctpop.i32(i32 %852)
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  %856 = xor i8 %855, 1
  store i8 %856, i8* %13, align 1
  %857 = xor i32 %845, %844
  %858 = xor i32 %857, %846
  %859 = lshr i32 %858, 4
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  store i8 %861, i8* %14, align 1
  %862 = icmp eq i32 %846, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %15, align 1
  %864 = lshr i32 %846, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %16, align 1
  %866 = lshr i32 %844, 31
  %867 = lshr i32 %845, 31
  %868 = xor i32 %864, %866
  %869 = xor i32 %864, %867
  %870 = add nuw nsw i32 %868, %869
  %871 = icmp eq i32 %870, 2
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %17, align 1
  %873 = sext i32 %846 to i64
  store i64 %873, i64* %RDX.i277, align 8
  %874 = add i64 %873, %823
  %875 = add i64 %819, 18
  store i64 %875, i64* %PC.i, align 8
  %876 = inttoptr i64 %874 to i8*
  %877 = load i8, i8* %876, align 1
  %878 = sext i8 %877 to i64
  %879 = and i64 %878, 4294967295
  store i64 %879, i64* %RCX.i523, align 8
  %880 = sext i8 %877 to i32
  %881 = add nsw i32 %880, -49
  %882 = icmp ult i8 %877, 49
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %12, align 1
  %884 = and i32 %881, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %13, align 1
  %889 = xor i32 %880, 16
  %890 = xor i32 %889, %881
  %891 = lshr i32 %890, 4
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %14, align 1
  %894 = icmp eq i32 %881, 0
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %15, align 1
  %896 = lshr i32 %881, 31
  %897 = trunc i32 %896 to i8
  store i8 %897, i8* %16, align 1
  %898 = lshr i32 %880, 31
  %899 = xor i32 %896, %898
  %900 = add nuw nsw i32 %899, %898
  %901 = icmp eq i32 %900, 2
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %17, align 1
  %.v36 = select i1 %894, i64 27, i64 52
  %903 = add i64 %819, %.v36
  store i64 %903, i64* %3, align 8
  br i1 %894, label %block_400dcc, label %block_.L_400de5

block_400dcc:                                     ; preds = %block_400db1
  %904 = load i64, i64* %RBP.i, align 8
  %905 = add i64 %904, -40
  %906 = add i64 %903, 4
  store i64 %906, i64* %PC.i, align 8
  %907 = inttoptr i64 %905 to i64*
  %908 = load i64, i64* %907, align 8
  store i64 %908, i64* %RAX.i116, align 8
  %909 = add i64 %903, 6
  store i64 %909, i64* %PC.i, align 8
  %910 = inttoptr i64 %908 to i32*
  %911 = load i32, i32* %910, align 4
  %912 = zext i32 %911 to i64
  store i64 %912, i64* %RCX.i523, align 8
  %913 = add i64 %904, -48
  %914 = add i64 %903, 9
  store i64 %914, i64* %PC.i, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = add i32 %916, %911
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RCX.i523, align 8
  %919 = icmp ult i32 %917, %911
  %920 = icmp ult i32 %917, %916
  %921 = or i1 %919, %920
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %12, align 1
  %923 = and i32 %917, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923)
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %13, align 1
  %928 = xor i32 %916, %911
  %929 = xor i32 %928, %917
  %930 = lshr i32 %929, 4
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  store i8 %932, i8* %14, align 1
  %933 = icmp eq i32 %917, 0
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %15, align 1
  %935 = lshr i32 %917, 31
  %936 = trunc i32 %935 to i8
  store i8 %936, i8* %16, align 1
  %937 = lshr i32 %911, 31
  %938 = lshr i32 %916, 31
  %939 = xor i32 %935, %937
  %940 = xor i32 %935, %938
  %941 = add nuw nsw i32 %939, %940
  %942 = icmp eq i32 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %17, align 1
  %944 = add i64 %903, 12
  store i64 %944, i64* %PC.i, align 8
  store i32 %917, i32* %915, align 4
  %945 = load i64, i64* %RBP.i, align 8
  %946 = add i64 %945, -40
  %947 = load i64, i64* %PC.i, align 8
  %948 = add i64 %947, 4
  store i64 %948, i64* %PC.i, align 8
  %949 = inttoptr i64 %946 to i64*
  %950 = load i64, i64* %949, align 8
  store i64 %950, i64* %RAX.i116, align 8
  %951 = add i64 %950, 4
  %952 = add i64 %947, 7
  store i64 %952, i64* %PC.i, align 8
  %953 = inttoptr i64 %951 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %RCX.i523, align 8
  %956 = add i64 %945, -52
  %957 = add i64 %947, 10
  store i64 %957, i64* %PC.i, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = add i32 %959, %954
  %961 = zext i32 %960 to i64
  store i64 %961, i64* %RCX.i523, align 8
  %962 = icmp ult i32 %960, %954
  %963 = icmp ult i32 %960, %959
  %964 = or i1 %962, %963
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %12, align 1
  %966 = and i32 %960, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %13, align 1
  %971 = xor i32 %959, %954
  %972 = xor i32 %971, %960
  %973 = lshr i32 %972, 4
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  store i8 %975, i8* %14, align 1
  %976 = icmp eq i32 %960, 0
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %15, align 1
  %978 = lshr i32 %960, 31
  %979 = trunc i32 %978 to i8
  store i8 %979, i8* %16, align 1
  %980 = lshr i32 %954, 31
  %981 = lshr i32 %959, 31
  %982 = xor i32 %978, %980
  %983 = xor i32 %978, %981
  %984 = add nuw nsw i32 %982, %983
  %985 = icmp eq i32 %984, 2
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %17, align 1
  %987 = add i64 %947, 13
  store i64 %987, i64* %PC.i, align 8
  store i32 %960, i32* %958, align 4
  %.pre15 = load i64, i64* %PC.i, align 8
  br label %block_.L_400de5

block_.L_400de5:                                  ; preds = %block_400db1, %block_400dcc
  %988 = phi i64 [ %.pre15, %block_400dcc ], [ %903, %block_400db1 ]
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -40
  %991 = add i64 %988, 4
  store i64 %991, i64* %PC.i, align 8
  %992 = inttoptr i64 %990 to i64*
  %993 = load i64, i64* %992, align 8
  store i64 %993, i64* %RAX.i116, align 8
  %994 = add i64 %993, 8
  %995 = add i64 %988, 8
  store i64 %995, i64* %PC.i, align 8
  %996 = inttoptr i64 %994 to i64*
  %997 = load i64, i64* %996, align 8
  store i64 %997, i64* %RAX.i116, align 8
  %998 = add i64 %988, 11
  store i64 %998, i64* %PC.i, align 8
  %999 = inttoptr i64 %997 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = sext i32 %1000 to i64
  store i64 %1001, i64* %RAX.i116, align 8
  %1002 = add i64 %989, -80
  %1003 = add i64 %988, 15
  store i64 %1003, i64* %PC.i, align 8
  %1004 = inttoptr i64 %1002 to i64*
  %1005 = load i64, i64* %1004, align 8
  %1006 = add i64 %1005, %1001
  %1007 = and i64 %1006, 1
  store i64 %1007, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1008 = trunc i64 %1007 to i32
  %1009 = tail call i32 @llvm.ctpop.i32(i32 %1008)
  %1010 = trunc i32 %1009 to i8
  %1011 = xor i8 %1010, 1
  store i8 %1011, i8* %13, align 1
  %1012 = trunc i64 %1007 to i8
  %1013 = xor i8 %1012, 1
  store i8 %1013, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1014 = and i64 %1006, 1
  store i64 %1014, i64* %RCX.i523, align 8
  %1015 = add i64 %988, 25
  store i64 %1015, i64* %PC.i, align 8
  %1016 = load i64, i64* %992, align 8
  store i64 %1016, i64* %RAX.i116, align 8
  %1017 = trunc i64 %1014 to i32
  %1018 = add i64 %988, 27
  store i64 %1018, i64* %PC.i, align 8
  %1019 = inttoptr i64 %1016 to i32*
  store i32 %1017, i32* %1019, align 4
  %1020 = load i64, i64* %PC.i, align 8
  %1021 = add i64 %1020, -1952
  %1022 = add i64 %1020, 5
  %1023 = load i64, i64* %6, align 8
  %1024 = add i64 %1023, -8
  %1025 = inttoptr i64 %1024 to i64*
  store i64 %1022, i64* %1025, align 8
  store i64 %1024, i64* %6, align 8
  store i64 %1021, i64* %3, align 8
  %1026 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.5)
  %1027 = load i64, i64* %PC.i, align 8
  %1028 = load i64, i64* bitcast (%G_0x293__rip__type* @G_0x293__rip_ to i64*), align 8
  %1029 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1028, i64* %1029, align 1
  store double 0.000000e+00, double* %186, align 1
  store i64 1000, i64* %RCX.i523, align 8
  %1030 = load i64, i64* %RBP.i, align 8
  %1031 = add i64 %1030, -112
  %1032 = add i64 %1027, 19
  store i64 %1032, i64* %PC.i, align 8
  %1033 = inttoptr i64 %1031 to i64*
  store i64 1000, i64* %1033, align 8
  %1034 = load i64, i64* %PC.i, align 8
  %1035 = load i64, i64* %187, align 8
  %1036 = ashr i64 %1035, 63
  store i64 %1036, i64* %83, align 8
  %1037 = load i64, i64* %RBP.i, align 8
  %1038 = add i64 %1037, -112
  %1039 = add i64 %1034, 6
  store i64 %1039, i64* %PC.i, align 8
  %1040 = inttoptr i64 %1038 to i64*
  %1041 = load i64, i64* %1040, align 8
  store i64 %1041, i64* %RSI.i242, align 8
  %1042 = add i64 %1034, 9
  store i64 %1042, i64* %PC.i, align 8
  %1043 = sext i64 %1041 to i128
  %1044 = and i128 %1043, -18446744073709551616
  %1045 = zext i64 %1036 to i128
  %1046 = shl nuw i128 %1045, 64
  %1047 = zext i64 %1035 to i128
  %1048 = or i128 %1046, %1047
  %1049 = zext i64 %1041 to i128
  %1050 = or i128 %1044, %1049
  %1051 = sdiv i128 %1048, %1050
  %1052 = trunc i128 %1051 to i64
  %1053 = and i128 %1051, 18446744073709551615
  %1054 = sext i64 %1052 to i128
  %1055 = and i128 %1054, -18446744073709551616
  %1056 = or i128 %1055, %1053
  %1057 = icmp eq i128 %1051, %1056
  br i1 %1057, label %1060, label %1058

; <label>:1058:                                   ; preds = %block_.L_400de5
  %1059 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1042, %struct.Memory* %1026)
  %.pre16 = load i64, i64* %RDX.i277, align 8
  %.pre17 = load i64, i64* %PC.i, align 8
  %.pre18 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rsi.exit258

; <label>:1060:                                   ; preds = %block_.L_400de5
  %1061 = srem i128 %1048, %1050
  %1062 = trunc i128 %1061 to i64
  store i64 %1052, i64* %187, align 8
  store i64 %1062, i64* %83, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rsi.exit258

routine_idivq__rsi.exit258:                       ; preds = %1060, %1058
  %1063 = phi i64 [ %.pre18, %1058 ], [ %1037, %1060 ]
  %1064 = phi i64 [ %.pre17, %1058 ], [ %1042, %1060 ]
  %1065 = phi i64 [ %.pre16, %1058 ], [ %1062, %1060 ]
  %1066 = phi %struct.Memory* [ %1059, %1058 ], [ %1026, %1060 ]
  %1067 = sitofp i64 %1065 to double
  %1068 = load double, double* %35, align 1
  %1069 = fdiv double %1067, %1068
  store double %1069, double* %189, align 1
  %1070 = add i64 %1063, -88
  %1071 = add i64 %1064, 14
  store i64 %1071, i64* %PC.i, align 8
  %1072 = inttoptr i64 %1070 to double*
  store double %1069, double* %1072, align 8
  %1073 = load i64, i64* %RBP.i, align 8
  %1074 = add i64 %1073, -24
  %1075 = load i64, i64* %PC.i, align 8
  %1076 = add i64 %1075, 5
  store i64 %1076, i64* %PC.i, align 8
  %1077 = inttoptr i64 %1074 to double*
  %1078 = load double, double* %1077, align 8
  store double %1078, double* %184, align 1
  store double 0.000000e+00, double* %186, align 1
  %1079 = add i64 %1073, -88
  %1080 = add i64 %1075, 10
  store i64 %1080, i64* %PC.i, align 8
  %1081 = inttoptr i64 %1079 to double*
  %1082 = load double, double* %1081, align 8
  %1083 = fcmp uno double %1078, %1082
  br i1 %1083, label %1084, label %1094

; <label>:1084:                                   ; preds = %routine_idivq__rsi.exit258
  %1085 = fadd double %1078, %1082
  %1086 = bitcast double %1085 to i64
  %1087 = and i64 %1086, 9221120237041090560
  %1088 = icmp eq i64 %1087, 9218868437227405312
  %1089 = and i64 %1086, 2251799813685247
  %1090 = icmp ne i64 %1089, 0
  %1091 = and i1 %1088, %1090
  br i1 %1091, label %1092, label %1100

; <label>:1092:                                   ; preds = %1084
  %1093 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1080, %struct.Memory* %1066)
  %.pre19 = load i64, i64* %PC.i, align 8
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240

; <label>:1094:                                   ; preds = %routine_idivq__rsi.exit258
  %1095 = fcmp ogt double %1078, %1082
  br i1 %1095, label %1100, label %1096

; <label>:1096:                                   ; preds = %1094
  %1097 = fcmp olt double %1078, %1082
  br i1 %1097, label %1100, label %1098

; <label>:1098:                                   ; preds = %1096
  %1099 = fcmp oeq double %1078, %1082
  br i1 %1099, label %1100, label %1104

; <label>:1100:                                   ; preds = %1098, %1096, %1094, %1084
  %1101 = phi i8 [ 0, %1094 ], [ 0, %1096 ], [ 1, %1098 ], [ 1, %1084 ]
  %1102 = phi i8 [ 0, %1094 ], [ 0, %1096 ], [ 0, %1098 ], [ 1, %1084 ]
  %1103 = phi i8 [ 0, %1094 ], [ 1, %1096 ], [ 0, %1098 ], [ 1, %1084 ]
  store i8 %1101, i8* %15, align 1
  store i8 %1102, i8* %13, align 1
  store i8 %1103, i8* %12, align 1
  br label %1104

; <label>:1104:                                   ; preds = %1100, %1098
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240

routine_ucomisd_MINUS0x58__rbp____xmm0.exit240:   ; preds = %1104, %1092
  %1105 = phi i64 [ %.pre19, %1092 ], [ %1080, %1104 ]
  %1106 = phi %struct.Memory* [ %1093, %1092 ], [ %1066, %1104 ]
  %1107 = load i8, i8* %12, align 1
  %1108 = load i8, i8* %15, align 1
  %1109 = or i8 %1108, %1107
  %1110 = icmp ne i8 %1109, 0
  %.v37 = select i1 %1110, i64 18, i64 6
  %1111 = add i64 %1105, %.v37
  store i64 %1111, i64* %3, align 8
  br i1 %1110, label %block_.L_400e4b, label %block_400e3f

block_400e3f:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240
  %1112 = load i64, i64* %RBP.i, align 8
  %1113 = add i64 %1112, -80
  %1114 = add i64 %1111, 4
  store i64 %1114, i64* %PC.i, align 8
  %1115 = inttoptr i64 %1113 to i64*
  %1116 = load i64, i64* %1115, align 8
  %1117 = xor i64 %1116, 1
  store i64 %1117, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1118 = trunc i64 %1117 to i32
  %1119 = and i32 %1118, 255
  %1120 = tail call i32 @llvm.ctpop.i32(i32 %1119)
  %1121 = trunc i32 %1120 to i8
  %1122 = and i8 %1121, 1
  %1123 = xor i8 %1122, 1
  store i8 %1123, i8* %13, align 1
  %1124 = icmp eq i64 %1117, 0
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %15, align 1
  %1126 = lshr i64 %1116, 63
  %1127 = trunc i64 %1126 to i8
  store i8 %1127, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1128 = add i64 %1111, 12
  store i64 %1128, i64* %PC.i, align 8
  store i64 %1117, i64* %1115, align 8
  %.pre20 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e4b

block_.L_400e4b:                                  ; preds = %block_400e3f, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240
  %1129 = phi i64 [ %.pre20, %block_400e3f ], [ %1111, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240 ]
  %1130 = load i64, i64* %RBP.i, align 8
  %1131 = add i64 %1130, -40
  %1132 = add i64 %1129, 4
  store i64 %1132, i64* %PC.i, align 8
  %1133 = inttoptr i64 %1131 to i64*
  %1134 = load i64, i64* %1133, align 8
  store i64 %1134, i64* %RAX.i116, align 8
  %1135 = add i64 %1134, 8
  %1136 = add i64 %1129, 8
  store i64 %1136, i64* %PC.i, align 8
  %1137 = inttoptr i64 %1135 to i64*
  %1138 = load i64, i64* %1137, align 8
  store i64 %1138, i64* %RAX.i116, align 8
  %1139 = add i64 %1138, 4
  %1140 = add i64 %1129, 12
  store i64 %1140, i64* %PC.i, align 8
  %1141 = inttoptr i64 %1139 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = sext i32 %1142 to i64
  store i64 %1143, i64* %RAX.i116, align 8
  %1144 = add i64 %1130, -80
  %1145 = add i64 %1129, 16
  store i64 %1145, i64* %PC.i, align 8
  %1146 = inttoptr i64 %1144 to i64*
  %1147 = load i64, i64* %1146, align 8
  %1148 = add i64 %1147, %1143
  %1149 = and i64 %1148, 1
  store i64 %1149, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1150 = trunc i64 %1149 to i32
  %1151 = tail call i32 @llvm.ctpop.i32(i32 %1150)
  %1152 = trunc i32 %1151 to i8
  %1153 = xor i8 %1152, 1
  store i8 %1153, i8* %13, align 1
  %1154 = trunc i64 %1149 to i8
  %1155 = xor i8 %1154, 1
  store i8 %1155, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1156 = and i64 %1148, 1
  store i64 %1156, i64* %RCX.i523, align 8
  %1157 = add i64 %1129, 26
  store i64 %1157, i64* %PC.i, align 8
  %1158 = load i64, i64* %1133, align 8
  store i64 %1158, i64* %RAX.i116, align 8
  %1159 = add i64 %1158, 4
  %1160 = trunc i64 %1156 to i32
  %1161 = add i64 %1129, 29
  store i64 %1161, i64* %PC.i, align 8
  %1162 = inttoptr i64 %1159 to i32*
  store i32 %1160, i32* %1162, align 4
  %1163 = load i64, i64* %RBP.i, align 8
  %1164 = add i64 %1163, -40
  %1165 = load i64, i64* %PC.i, align 8
  %1166 = add i64 %1165, 4
  store i64 %1166, i64* %PC.i, align 8
  %1167 = inttoptr i64 %1164 to i64*
  %1168 = load i64, i64* %1167, align 8
  store i64 %1168, i64* %RAX.i116, align 8
  %1169 = add i64 %1168, 8
  %1170 = add i64 %1165, 8
  store i64 %1170, i64* %PC.i, align 8
  %1171 = inttoptr i64 %1169 to i64*
  %1172 = load i64, i64* %1171, align 8
  store i64 %1172, i64* %RAX.i116, align 8
  %1173 = add i64 %1165, 12
  store i64 %1173, i64* %PC.i, align 8
  store i64 %1172, i64* %1167, align 8
  %1174 = load i64, i64* %RBP.i, align 8
  %1175 = add i64 %1174, -80
  %1176 = load i64, i64* %PC.i, align 8
  %1177 = add i64 %1176, 4
  store i64 %1177, i64* %PC.i, align 8
  %1178 = inttoptr i64 %1175 to i64*
  %1179 = load i64, i64* %1178, align 8
  %1180 = trunc i64 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = ashr i64 %1179, 1
  store i64 %1182, i64* %RAX.i116, align 8
  store i8 %1181, i8* %12, align 1
  %1183 = trunc i64 %1182 to i32
  %1184 = and i32 %1183, 255
  %1185 = tail call i32 @llvm.ctpop.i32(i32 %1184)
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = xor i8 %1187, 1
  store i8 %1188, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1189 = icmp eq i64 %1182, 0
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %15, align 1
  %1191 = lshr i64 %1182, 63
  %1192 = trunc i64 %1191 to i8
  store i8 %1192, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1193 = add i64 %1176, 11
  store i64 %1193, i64* %PC.i, align 8
  store i64 %1182, i64* %1178, align 8
  %1194 = load i64, i64* %RBP.i, align 8
  %1195 = add i64 %1194, -72
  %1196 = load i64, i64* %PC.i, align 8
  %1197 = add i64 %1196, 3
  store i64 %1197, i64* %PC.i, align 8
  %1198 = inttoptr i64 %1195 to i32*
  %1199 = load i32, i32* %1198, align 4
  %1200 = add i32 %1199, 1
  %1201 = zext i32 %1200 to i64
  store i64 %1201, i64* %RAX.i116, align 8
  %1202 = icmp eq i32 %1199, -1
  %1203 = icmp eq i32 %1200, 0
  %1204 = or i1 %1202, %1203
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %12, align 1
  %1206 = and i32 %1200, 255
  %1207 = tail call i32 @llvm.ctpop.i32(i32 %1206)
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = xor i8 %1209, 1
  store i8 %1210, i8* %13, align 1
  %1211 = xor i32 %1199, %1200
  %1212 = lshr i32 %1211, 4
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  store i8 %1214, i8* %14, align 1
  %1215 = icmp eq i32 %1200, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %15, align 1
  %1217 = lshr i32 %1200, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %16, align 1
  %1219 = lshr i32 %1199, 31
  %1220 = xor i32 %1217, %1219
  %1221 = add nuw nsw i32 %1220, %1217
  %1222 = icmp eq i32 %1221, 2
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %17, align 1
  %1224 = add i64 %1196, 9
  store i64 %1224, i64* %PC.i, align 8
  store i32 %1200, i32* %1198, align 4
  %1225 = load i64, i64* %PC.i, align 8
  %1226 = add i64 %1225, -228
  store i64 %1226, i64* %3, align 8
  br label %block_.L_400da5

block_.L_400e8e:                                  ; preds = %block_.L_400da5
  %1227 = add i64 %819, -2094
  %1228 = add i64 %819, 5
  %1229 = load i64, i64* %6, align 8
  %1230 = add i64 %1229, -8
  %1231 = inttoptr i64 %1230 to i64*
  store i64 %1228, i64* %1231, align 8
  store i64 %1230, i64* %6, align 8
  store i64 %1227, i64* %3, align 8
  %1232 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.5)
  %1233 = load i64, i64* %RBP.i, align 8
  %1234 = add i64 %1233, -80
  %1235 = load i64, i64* %RAX.i116, align 8
  %1236 = load i64, i64* %PC.i, align 8
  %1237 = add i64 %1236, 4
  store i64 %1237, i64* %PC.i, align 8
  %1238 = inttoptr i64 %1234 to i64*
  store i64 %1235, i64* %1238, align 8
  %1239 = load i64, i64* %RBP.i, align 8
  %1240 = add i64 %1239, -32
  %1241 = load i64, i64* %PC.i, align 8
  %1242 = add i64 %1241, 4
  store i64 %1242, i64* %PC.i, align 8
  %1243 = inttoptr i64 %1240 to i64*
  %1244 = load i64, i64* %1243, align 8
  store i64 %1244, i64* %RAX.i116, align 8
  %1245 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %1246 = add i32 %1245, -1
  %1247 = zext i32 %1246 to i64
  store i64 %1247, i64* %RCX.i523, align 8
  %1248 = icmp eq i32 %1245, 0
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %12, align 1
  %1250 = and i32 %1246, 255
  %1251 = tail call i32 @llvm.ctpop.i32(i32 %1250)
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = xor i8 %1253, 1
  store i8 %1254, i8* %13, align 1
  %1255 = xor i32 %1245, %1246
  %1256 = lshr i32 %1255, 4
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  store i8 %1258, i8* %14, align 1
  %1259 = icmp eq i32 %1246, 0
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %15, align 1
  %1261 = lshr i32 %1246, 31
  %1262 = trunc i32 %1261 to i8
  store i8 %1262, i8* %16, align 1
  %1263 = lshr i32 %1245, 31
  %1264 = xor i32 %1261, %1263
  %1265 = add nuw nsw i32 %1264, %1263
  %1266 = icmp eq i32 %1265, 2
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %17, align 1
  %1268 = sext i32 %1246 to i64
  store i64 %1268, i64* %RDX.i277, align 8
  %1269 = add i64 %1268, %1244
  %1270 = add i64 %1241, 21
  store i64 %1270, i64* %PC.i, align 8
  %1271 = inttoptr i64 %1269 to i8*
  %1272 = load i8, i8* %1271, align 1
  %1273 = sext i8 %1272 to i64
  %1274 = and i64 %1273, 4294967295
  store i64 %1274, i64* %RCX.i523, align 8
  %1275 = sext i8 %1272 to i32
  %1276 = add nsw i32 %1275, -49
  %1277 = icmp ult i8 %1272, 49
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %12, align 1
  %1279 = and i32 %1276, 255
  %1280 = tail call i32 @llvm.ctpop.i32(i32 %1279)
  %1281 = trunc i32 %1280 to i8
  %1282 = and i8 %1281, 1
  %1283 = xor i8 %1282, 1
  store i8 %1283, i8* %13, align 1
  %1284 = xor i32 %1275, 16
  %1285 = xor i32 %1284, %1276
  %1286 = lshr i32 %1285, 4
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  store i8 %1288, i8* %14, align 1
  %1289 = icmp eq i32 %1276, 0
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %15, align 1
  %1291 = lshr i32 %1276, 31
  %1292 = trunc i32 %1291 to i8
  store i8 %1292, i8* %16, align 1
  %1293 = lshr i32 %1275, 31
  %1294 = xor i32 %1291, %1293
  %1295 = add nuw nsw i32 %1294, %1293
  %1296 = icmp eq i32 %1295, 2
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %17, align 1
  %.v38 = select i1 %1289, i64 30, i64 55
  %1298 = add i64 %1241, %.v38
  store i64 %1298, i64* %3, align 8
  br i1 %1289, label %block_400eb5, label %block_.L_400ece

block_400eb5:                                     ; preds = %block_.L_400e8e
  %1299 = load i64, i64* %RBP.i, align 8
  %1300 = add i64 %1299, -40
  %1301 = add i64 %1298, 4
  store i64 %1301, i64* %PC.i, align 8
  %1302 = inttoptr i64 %1300 to i64*
  %1303 = load i64, i64* %1302, align 8
  store i64 %1303, i64* %RAX.i116, align 8
  %1304 = add i64 %1298, 6
  store i64 %1304, i64* %PC.i, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  %1307 = zext i32 %1306 to i64
  store i64 %1307, i64* %RCX.i523, align 8
  %1308 = add i64 %1299, -48
  %1309 = add i64 %1298, 9
  store i64 %1309, i64* %PC.i, align 8
  %1310 = inttoptr i64 %1308 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = add i32 %1311, %1306
  %1313 = zext i32 %1312 to i64
  store i64 %1313, i64* %RCX.i523, align 8
  %1314 = icmp ult i32 %1312, %1306
  %1315 = icmp ult i32 %1312, %1311
  %1316 = or i1 %1314, %1315
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %12, align 1
  %1318 = and i32 %1312, 255
  %1319 = tail call i32 @llvm.ctpop.i32(i32 %1318)
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  %1322 = xor i8 %1321, 1
  store i8 %1322, i8* %13, align 1
  %1323 = xor i32 %1311, %1306
  %1324 = xor i32 %1323, %1312
  %1325 = lshr i32 %1324, 4
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  store i8 %1327, i8* %14, align 1
  %1328 = icmp eq i32 %1312, 0
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %15, align 1
  %1330 = lshr i32 %1312, 31
  %1331 = trunc i32 %1330 to i8
  store i8 %1331, i8* %16, align 1
  %1332 = lshr i32 %1306, 31
  %1333 = lshr i32 %1311, 31
  %1334 = xor i32 %1330, %1332
  %1335 = xor i32 %1330, %1333
  %1336 = add nuw nsw i32 %1334, %1335
  %1337 = icmp eq i32 %1336, 2
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %17, align 1
  %1339 = add i64 %1298, 12
  store i64 %1339, i64* %PC.i, align 8
  store i32 %1312, i32* %1310, align 4
  %1340 = load i64, i64* %RBP.i, align 8
  %1341 = add i64 %1340, -40
  %1342 = load i64, i64* %PC.i, align 8
  %1343 = add i64 %1342, 4
  store i64 %1343, i64* %PC.i, align 8
  %1344 = inttoptr i64 %1341 to i64*
  %1345 = load i64, i64* %1344, align 8
  store i64 %1345, i64* %RAX.i116, align 8
  %1346 = add i64 %1345, 4
  %1347 = add i64 %1342, 7
  store i64 %1347, i64* %PC.i, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = zext i32 %1349 to i64
  store i64 %1350, i64* %RCX.i523, align 8
  %1351 = add i64 %1340, -52
  %1352 = add i64 %1342, 10
  store i64 %1352, i64* %PC.i, align 8
  %1353 = inttoptr i64 %1351 to i32*
  %1354 = load i32, i32* %1353, align 4
  %1355 = add i32 %1354, %1349
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RCX.i523, align 8
  %1357 = icmp ult i32 %1355, %1349
  %1358 = icmp ult i32 %1355, %1354
  %1359 = or i1 %1357, %1358
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %12, align 1
  %1361 = and i32 %1355, 255
  %1362 = tail call i32 @llvm.ctpop.i32(i32 %1361)
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = xor i8 %1364, 1
  store i8 %1365, i8* %13, align 1
  %1366 = xor i32 %1354, %1349
  %1367 = xor i32 %1366, %1355
  %1368 = lshr i32 %1367, 4
  %1369 = trunc i32 %1368 to i8
  %1370 = and i8 %1369, 1
  store i8 %1370, i8* %14, align 1
  %1371 = icmp eq i32 %1355, 0
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %15, align 1
  %1373 = lshr i32 %1355, 31
  %1374 = trunc i32 %1373 to i8
  store i8 %1374, i8* %16, align 1
  %1375 = lshr i32 %1349, 31
  %1376 = lshr i32 %1354, 31
  %1377 = xor i32 %1373, %1375
  %1378 = xor i32 %1373, %1376
  %1379 = add nuw nsw i32 %1377, %1378
  %1380 = icmp eq i32 %1379, 2
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %17, align 1
  %1382 = add i64 %1342, 13
  store i64 %1382, i64* %PC.i, align 8
  store i32 %1355, i32* %1353, align 4
  %.pre21 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ece

block_.L_400ece:                                  ; preds = %block_.L_400e8e, %block_400eb5
  %1383 = phi i64 [ %.pre21, %block_400eb5 ], [ %1298, %block_.L_400e8e ]
  %1384 = load i64, i64* %RBP.i, align 8
  %1385 = add i64 %1384, -48
  %1386 = add i64 %1383, 4
  store i64 %1386, i64* %PC.i, align 8
  %1387 = inttoptr i64 %1385 to i32*
  %1388 = load i32, i32* %1387, align 4
  %1389 = sext i32 %1388 to i64
  store i64 %1389, i64* %RAX.i116, align 8
  %1390 = add i64 %1384, -80
  %1391 = add i64 %1383, 8
  store i64 %1391, i64* %PC.i, align 8
  %1392 = inttoptr i64 %1390 to i64*
  %1393 = load i64, i64* %1392, align 8
  %1394 = add i64 %1393, %1389
  %1395 = and i64 %1394, 1
  store i64 %1395, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1396 = trunc i64 %1395 to i32
  %1397 = tail call i32 @llvm.ctpop.i32(i32 %1396)
  %1398 = trunc i32 %1397 to i8
  %1399 = xor i8 %1398, 1
  store i8 %1399, i8* %13, align 1
  %1400 = trunc i64 %1395 to i8
  %1401 = xor i8 %1400, 1
  store i8 %1401, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1402 = and i64 %1394, 1
  store i64 %1402, i64* %RCX.i523, align 8
  %1403 = add i64 %1384, -40
  %1404 = add i64 %1383, 18
  store i64 %1404, i64* %PC.i, align 8
  %1405 = inttoptr i64 %1403 to i64*
  %1406 = load i64, i64* %1405, align 8
  store i64 %1406, i64* %RAX.i116, align 8
  %1407 = trunc i64 %1402 to i32
  %1408 = add i64 %1383, 20
  store i64 %1408, i64* %PC.i, align 8
  %1409 = inttoptr i64 %1406 to i32*
  store i32 %1407, i32* %1409, align 4
  %1410 = load i64, i64* %PC.i, align 8
  %1411 = add i64 %1410, -2178
  %1412 = add i64 %1410, 5
  %1413 = load i64, i64* %6, align 8
  %1414 = add i64 %1413, -8
  %1415 = inttoptr i64 %1414 to i64*
  store i64 %1412, i64* %1415, align 8
  store i64 %1414, i64* %6, align 8
  store i64 %1411, i64* %3, align 8
  %1416 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %1232)
  %1417 = load i64, i64* %PC.i, align 8
  %1418 = load i64, i64* bitcast (%G_0x1a9__rip__type* @G_0x1a9__rip_ to i64*), align 8
  %1419 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1418, i64* %1419, align 1
  store double 0.000000e+00, double* %186, align 1
  store i64 10000, i64* %RCX.i523, align 8
  %1420 = load i64, i64* %RBP.i, align 8
  %1421 = add i64 %1420, -120
  %1422 = add i64 %1417, 19
  store i64 %1422, i64* %PC.i, align 8
  %1423 = inttoptr i64 %1421 to i64*
  store i64 10000, i64* %1423, align 8
  %1424 = load i64, i64* %PC.i, align 8
  %1425 = load i64, i64* %187, align 8
  %1426 = ashr i64 %1425, 63
  store i64 %1426, i64* %83, align 8
  %1427 = load i64, i64* %RBP.i, align 8
  %1428 = add i64 %1427, -120
  %1429 = add i64 %1424, 6
  store i64 %1429, i64* %PC.i, align 8
  %1430 = inttoptr i64 %1428 to i64*
  %1431 = load i64, i64* %1430, align 8
  store i64 %1431, i64* %RSI.i242, align 8
  %1432 = add i64 %1424, 9
  store i64 %1432, i64* %PC.i, align 8
  %1433 = sext i64 %1431 to i128
  %1434 = and i128 %1433, -18446744073709551616
  %1435 = zext i64 %1426 to i128
  %1436 = shl nuw i128 %1435, 64
  %1437 = zext i64 %1425 to i128
  %1438 = or i128 %1436, %1437
  %1439 = zext i64 %1431 to i128
  %1440 = or i128 %1434, %1439
  %1441 = sdiv i128 %1438, %1440
  %1442 = trunc i128 %1441 to i64
  %1443 = and i128 %1441, 18446744073709551615
  %1444 = sext i64 %1442 to i128
  %1445 = and i128 %1444, -18446744073709551616
  %1446 = or i128 %1445, %1443
  %1447 = icmp eq i128 %1441, %1446
  br i1 %1447, label %1450, label %1448

; <label>:1448:                                   ; preds = %block_.L_400ece
  %1449 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1432, %struct.Memory* %1416)
  %.pre22 = load i64, i64* %RDX.i277, align 8
  %.pre23 = load i64, i64* %PC.i, align 8
  %.pre24 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rsi.exit

; <label>:1450:                                   ; preds = %block_.L_400ece
  %1451 = srem i128 %1438, %1440
  %1452 = trunc i128 %1451 to i64
  store i64 %1442, i64* %187, align 8
  store i64 %1452, i64* %83, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rsi.exit

routine_idivq__rsi.exit:                          ; preds = %1450, %1448
  %1453 = phi i64 [ %.pre24, %1448 ], [ %1427, %1450 ]
  %1454 = phi i64 [ %.pre23, %1448 ], [ %1432, %1450 ]
  %1455 = phi i64 [ %.pre22, %1448 ], [ %1452, %1450 ]
  %1456 = phi %struct.Memory* [ %1449, %1448 ], [ %1416, %1450 ]
  %1457 = sitofp i64 %1455 to double
  %1458 = load double, double* %35, align 1
  %1459 = fdiv double %1457, %1458
  store double %1459, double* %189, align 1
  %1460 = add i64 %1453, -88
  %1461 = add i64 %1454, 14
  store i64 %1461, i64* %PC.i, align 8
  %1462 = inttoptr i64 %1460 to double*
  store double %1459, double* %1462, align 8
  %1463 = load i64, i64* %RBP.i, align 8
  %1464 = add i64 %1463, -24
  %1465 = load i64, i64* %PC.i, align 8
  %1466 = add i64 %1465, 5
  store i64 %1466, i64* %PC.i, align 8
  %1467 = inttoptr i64 %1464 to double*
  %1468 = load double, double* %1467, align 8
  store double %1468, double* %184, align 1
  store double 0.000000e+00, double* %186, align 1
  %1469 = add i64 %1463, -88
  %1470 = add i64 %1465, 10
  store i64 %1470, i64* %PC.i, align 8
  %1471 = inttoptr i64 %1469 to double*
  %1472 = load double, double* %1471, align 8
  %1473 = fcmp uno double %1468, %1472
  br i1 %1473, label %1474, label %1484

; <label>:1474:                                   ; preds = %routine_idivq__rsi.exit
  %1475 = fadd double %1468, %1472
  %1476 = bitcast double %1475 to i64
  %1477 = and i64 %1476, 9221120237041090560
  %1478 = icmp eq i64 %1477, 9218868437227405312
  %1479 = and i64 %1476, 2251799813685247
  %1480 = icmp ne i64 %1479, 0
  %1481 = and i1 %1478, %1480
  br i1 %1481, label %1482, label %1490

; <label>:1482:                                   ; preds = %1474
  %1483 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1470, %struct.Memory* %1456)
  %.pre25 = load i64, i64* %PC.i, align 8
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit

; <label>:1484:                                   ; preds = %routine_idivq__rsi.exit
  %1485 = fcmp ogt double %1468, %1472
  br i1 %1485, label %1490, label %1486

; <label>:1486:                                   ; preds = %1484
  %1487 = fcmp olt double %1468, %1472
  br i1 %1487, label %1490, label %1488

; <label>:1488:                                   ; preds = %1486
  %1489 = fcmp oeq double %1468, %1472
  br i1 %1489, label %1490, label %1494

; <label>:1490:                                   ; preds = %1488, %1486, %1484, %1474
  %1491 = phi i8 [ 0, %1484 ], [ 0, %1486 ], [ 1, %1488 ], [ 1, %1474 ]
  %1492 = phi i8 [ 0, %1484 ], [ 0, %1486 ], [ 0, %1488 ], [ 1, %1474 ]
  %1493 = phi i8 [ 0, %1484 ], [ 1, %1486 ], [ 0, %1488 ], [ 1, %1474 ]
  store i8 %1491, i8* %15, align 1
  store i8 %1492, i8* %13, align 1
  store i8 %1493, i8* %12, align 1
  br label %1494

; <label>:1494:                                   ; preds = %1490, %1488
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit

routine_ucomisd_MINUS0x58__rbp____xmm0.exit:      ; preds = %1494, %1482
  %1495 = phi i64 [ %.pre25, %1482 ], [ %1470, %1494 ]
  %1496 = phi %struct.Memory* [ %1483, %1482 ], [ %1456, %1494 ]
  %1497 = load i8, i8* %12, align 1
  %1498 = load i8, i8* %15, align 1
  %1499 = or i8 %1498, %1497
  %1500 = icmp ne i8 %1499, 0
  %.v39 = select i1 %1500, i64 18, i64 6
  %1501 = add i64 %1495, %.v39
  store i64 %1501, i64* %3, align 8
  br i1 %1500, label %block_.L_400f2d, label %block_400f21

block_400f21:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit
  %1502 = load i64, i64* %RBP.i, align 8
  %1503 = add i64 %1502, -80
  %1504 = add i64 %1501, 4
  store i64 %1504, i64* %PC.i, align 8
  %1505 = inttoptr i64 %1503 to i64*
  %1506 = load i64, i64* %1505, align 8
  %1507 = xor i64 %1506, 1
  store i64 %1507, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1508 = trunc i64 %1507 to i32
  %1509 = and i32 %1508, 255
  %1510 = tail call i32 @llvm.ctpop.i32(i32 %1509)
  %1511 = trunc i32 %1510 to i8
  %1512 = and i8 %1511, 1
  %1513 = xor i8 %1512, 1
  store i8 %1513, i8* %13, align 1
  %1514 = icmp eq i64 %1507, 0
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %15, align 1
  %1516 = lshr i64 %1506, 63
  %1517 = trunc i64 %1516 to i8
  store i8 %1517, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1518 = add i64 %1501, 12
  store i64 %1518, i64* %PC.i, align 8
  store i64 %1507, i64* %1505, align 8
  %.pre26 = load i64, i64* %PC.i, align 8
  br label %block_.L_400f2d

block_.L_400f2d:                                  ; preds = %block_400f21, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit
  %1519 = phi i64 [ %.pre26, %block_400f21 ], [ %1501, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit ]
  %1520 = load i64, i64* %RBP.i, align 8
  %1521 = add i64 %1520, -52
  %1522 = add i64 %1519, 4
  store i64 %1522, i64* %PC.i, align 8
  %1523 = inttoptr i64 %1521 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = sext i32 %1524 to i64
  store i64 %1525, i64* %RAX.i116, align 8
  %1526 = add i64 %1520, -80
  %1527 = add i64 %1519, 8
  store i64 %1527, i64* %PC.i, align 8
  %1528 = inttoptr i64 %1526 to i64*
  %1529 = load i64, i64* %1528, align 8
  %1530 = add i64 %1529, %1525
  %1531 = and i64 %1530, 1
  store i64 %1531, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1532 = trunc i64 %1531 to i32
  %1533 = tail call i32 @llvm.ctpop.i32(i32 %1532)
  %1534 = trunc i32 %1533 to i8
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %13, align 1
  %1536 = trunc i64 %1531 to i8
  %1537 = xor i8 %1536, 1
  store i8 %1537, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1538 = and i64 %1530, 1
  store i64 %1538, i64* %RCX.i523, align 8
  %1539 = add i64 %1520, -40
  %1540 = add i64 %1519, 18
  store i64 %1540, i64* %PC.i, align 8
  %1541 = inttoptr i64 %1539 to i64*
  %1542 = load i64, i64* %1541, align 8
  store i64 %1542, i64* %RAX.i116, align 8
  %1543 = add i64 %1542, 4
  %1544 = trunc i64 %1538 to i32
  %1545 = add i64 %1519, 21
  store i64 %1545, i64* %PC.i, align 8
  %1546 = inttoptr i64 %1543 to i32*
  store i32 %1544, i32* %1546, align 4
  %1547 = load i64, i64* %RBP.i, align 8
  %1548 = add i64 %1547, -16
  %1549 = load i64, i64* %PC.i, align 8
  %1550 = add i64 %1549, 4
  store i64 %1550, i64* %PC.i, align 8
  %1551 = inttoptr i64 %1548 to i64*
  %1552 = load i64, i64* %1551, align 8
  store i64 %1552, i64* %RAX.i116, align 8
  %1553 = add i64 %1547, -40
  %1554 = add i64 %1549, 8
  store i64 %1554, i64* %PC.i, align 8
  %1555 = inttoptr i64 %1553 to i64*
  store i64 %1552, i64* %1555, align 8
  %1556 = load i64, i64* %RBP.i, align 8
  %1557 = add i64 %1556, -64
  %1558 = load i64, i64* %PC.i, align 8
  %1559 = add i64 %1558, 3
  store i64 %1559, i64* %PC.i, align 8
  %1560 = inttoptr i64 %1557 to i32*
  %1561 = load i32, i32* %1560, align 4
  %1562 = add i32 %1561, 1
  %1563 = zext i32 %1562 to i64
  store i64 %1563, i64* %RAX.i116, align 8
  %1564 = icmp eq i32 %1561, -1
  %1565 = icmp eq i32 %1562, 0
  %1566 = or i1 %1564, %1565
  %1567 = zext i1 %1566 to i8
  store i8 %1567, i8* %12, align 1
  %1568 = and i32 %1562, 255
  %1569 = tail call i32 @llvm.ctpop.i32(i32 %1568)
  %1570 = trunc i32 %1569 to i8
  %1571 = and i8 %1570, 1
  %1572 = xor i8 %1571, 1
  store i8 %1572, i8* %13, align 1
  %1573 = xor i32 %1561, %1562
  %1574 = lshr i32 %1573, 4
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  store i8 %1576, i8* %14, align 1
  %1577 = icmp eq i32 %1562, 0
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %15, align 1
  %1579 = lshr i32 %1562, 31
  %1580 = trunc i32 %1579 to i8
  store i8 %1580, i8* %16, align 1
  %1581 = lshr i32 %1561, 31
  %1582 = xor i32 %1579, %1581
  %1583 = add nuw nsw i32 %1582, %1579
  %1584 = icmp eq i32 %1583, 2
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %17, align 1
  %1586 = add i64 %1558, 9
  store i64 %1586, i64* %PC.i, align 8
  store i32 %1562, i32* %1560, align 4
  %1587 = load i64, i64* %PC.i, align 8
  %1588 = add i64 %1587, -757
  store i64 %1588, i64* %3, align 8
  br label %block_.L_400c5e

block_.L_400f58:                                  ; preds = %block_.L_400c5e
  %1589 = add i64 %191, -68
  %1590 = add i64 %227, 7
  store i64 %1590, i64* %PC.i, align 8
  %1591 = inttoptr i64 %1589 to i32*
  store i32 0, i32* %1591, align 4
  %.pre27 = load i64, i64* %PC.i, align 8
  br label %block_.L_400f5f

block_.L_400f5f:                                  ; preds = %block_.L_400f89, %block_.L_400f58
  %1592 = phi i64 [ %1712, %block_.L_400f89 ], [ %.pre27, %block_.L_400f58 ]
  %1593 = load i64, i64* %RBP.i, align 8
  %1594 = add i64 %1593, -68
  %1595 = add i64 %1592, 3
  store i64 %1595, i64* %PC.i, align 8
  %1596 = inttoptr i64 %1594 to i32*
  %1597 = load i32, i32* %1596, align 4
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RAX.i116, align 8
  %1599 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %1600 = sub i32 %1597, %1599
  %1601 = icmp ult i32 %1597, %1599
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %12, align 1
  %1603 = and i32 %1600, 255
  %1604 = tail call i32 @llvm.ctpop.i32(i32 %1603)
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = xor i8 %1606, 1
  store i8 %1607, i8* %13, align 1
  %1608 = xor i32 %1599, %1597
  %1609 = xor i32 %1608, %1600
  %1610 = lshr i32 %1609, 4
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  store i8 %1612, i8* %14, align 1
  %1613 = icmp eq i32 %1600, 0
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %15, align 1
  %1615 = lshr i32 %1600, 31
  %1616 = trunc i32 %1615 to i8
  store i8 %1616, i8* %16, align 1
  %1617 = lshr i32 %1597, 31
  %1618 = lshr i32 %1599, 31
  %1619 = xor i32 %1618, %1617
  %1620 = xor i32 %1615, %1617
  %1621 = add nuw nsw i32 %1620, %1619
  %1622 = icmp eq i32 %1621, 2
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %17, align 1
  %1624 = icmp ne i8 %1616, 0
  %1625 = xor i1 %1624, %1622
  %.v40 = select i1 %1625, i64 16, i64 68
  %1626 = add i64 %1592, %.v40
  store i64 %1626, i64* %3, align 8
  br i1 %1625, label %block_400f6f, label %block_.L_400fa3

block_400f6f:                                     ; preds = %block_.L_400f5f
  %1627 = add i64 %1593, -40
  %1628 = add i64 %1626, 4
  store i64 %1628, i64* %PC.i, align 8
  %1629 = inttoptr i64 %1627 to i64*
  %1630 = load i64, i64* %1629, align 8
  store i64 %1630, i64* %RAX.i116, align 8
  %1631 = add i64 %1626, 6
  store i64 %1631, i64* %PC.i, align 8
  %1632 = inttoptr i64 %1630 to i32*
  %1633 = load i32, i32* %1632, align 4
  %1634 = zext i32 %1633 to i64
  store i64 %1634, i64* %RCX.i523, align 8
  %1635 = add i64 %1626, 10
  store i64 %1635, i64* %PC.i, align 8
  %1636 = load i64, i64* %1629, align 8
  store i64 %1636, i64* %RAX.i116, align 8
  %1637 = add i64 %1636, 4
  %1638 = add i64 %1626, 13
  store i64 %1638, i64* %PC.i, align 8
  %1639 = inttoptr i64 %1637 to i32*
  %1640 = load i32, i32* %1639, align 4
  %1641 = sub i32 %1633, %1640
  %1642 = icmp ult i32 %1633, %1640
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %12, align 1
  %1644 = and i32 %1641, 255
  %1645 = tail call i32 @llvm.ctpop.i32(i32 %1644)
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = xor i8 %1647, 1
  store i8 %1648, i8* %13, align 1
  %1649 = xor i32 %1640, %1633
  %1650 = xor i32 %1649, %1641
  %1651 = lshr i32 %1650, 4
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  store i8 %1653, i8* %14, align 1
  %1654 = icmp eq i32 %1641, 0
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %15, align 1
  %1656 = lshr i32 %1641, 31
  %1657 = trunc i32 %1656 to i8
  store i8 %1657, i8* %16, align 1
  %1658 = lshr i32 %1633, 31
  %1659 = lshr i32 %1640, 31
  %1660 = xor i32 %1659, %1658
  %1661 = xor i32 %1656, %1658
  %1662 = add nuw nsw i32 %1661, %1660
  %1663 = icmp eq i32 %1662, 2
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %17, align 1
  %.v41 = select i1 %1654, i64 26, i64 19
  %1665 = add i64 %1626, %.v41
  store i64 %1665, i64* %3, align 8
  br i1 %1654, label %block_.L_400f89, label %block_400f82

block_400f82:                                     ; preds = %block_400f6f
  %1666 = add i64 %1593, -44
  %1667 = add i64 %1665, 7
  store i64 %1667, i64* %PC.i, align 8
  %1668 = inttoptr i64 %1666 to i32*
  store i32 1, i32* %1668, align 4
  %.pre28 = load i64, i64* %RBP.i, align 8
  %.pre29 = load i64, i64* %PC.i, align 8
  br label %block_.L_400f89

block_.L_400f89:                                  ; preds = %block_400f82, %block_400f6f
  %1669 = phi i64 [ %.pre29, %block_400f82 ], [ %1665, %block_400f6f ]
  %1670 = phi i64 [ %.pre28, %block_400f82 ], [ %1593, %block_400f6f ]
  %1671 = add i64 %1670, -40
  %1672 = add i64 %1669, 4
  store i64 %1672, i64* %PC.i, align 8
  %1673 = inttoptr i64 %1671 to i64*
  %1674 = load i64, i64* %1673, align 8
  store i64 %1674, i64* %RAX.i116, align 8
  %1675 = add i64 %1674, 8
  %1676 = add i64 %1669, 8
  store i64 %1676, i64* %PC.i, align 8
  %1677 = inttoptr i64 %1675 to i64*
  %1678 = load i64, i64* %1677, align 8
  store i64 %1678, i64* %RAX.i116, align 8
  %1679 = add i64 %1669, 12
  store i64 %1679, i64* %PC.i, align 8
  store i64 %1678, i64* %1673, align 8
  %1680 = load i64, i64* %RBP.i, align 8
  %1681 = add i64 %1680, -68
  %1682 = load i64, i64* %PC.i, align 8
  %1683 = add i64 %1682, 3
  store i64 %1683, i64* %PC.i, align 8
  %1684 = inttoptr i64 %1681 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = add i32 %1685, 1
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %RAX.i116, align 8
  %1688 = icmp eq i32 %1685, -1
  %1689 = icmp eq i32 %1686, 0
  %1690 = or i1 %1688, %1689
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %12, align 1
  %1692 = and i32 %1686, 255
  %1693 = tail call i32 @llvm.ctpop.i32(i32 %1692)
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  store i8 %1696, i8* %13, align 1
  %1697 = xor i32 %1685, %1686
  %1698 = lshr i32 %1697, 4
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  store i8 %1700, i8* %14, align 1
  %1701 = icmp eq i32 %1686, 0
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %15, align 1
  %1703 = lshr i32 %1686, 31
  %1704 = trunc i32 %1703 to i8
  store i8 %1704, i8* %16, align 1
  %1705 = lshr i32 %1685, 31
  %1706 = xor i32 %1703, %1705
  %1707 = add nuw nsw i32 %1706, %1703
  %1708 = icmp eq i32 %1707, 2
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %17, align 1
  %1710 = add i64 %1682, 9
  store i64 %1710, i64* %PC.i, align 8
  store i32 %1686, i32* %1684, align 4
  %1711 = load i64, i64* %PC.i, align 8
  %1712 = add i64 %1711, -63
  store i64 %1712, i64* %3, align 8
  br label %block_.L_400f5f

block_.L_400fa3:                                  ; preds = %block_.L_400f5f
  %1713 = add i64 %1593, -44
  %1714 = add i64 %1626, 3
  store i64 %1714, i64* %PC.i, align 8
  %1715 = inttoptr i64 %1713 to i32*
  %1716 = load i32, i32* %1715, align 4
  %1717 = zext i32 %1716 to i64
  store i64 %1717, i64* %RAX.i116, align 8
  %1718 = load i64, i64* %RSP.i88, align 8
  %1719 = add i64 %1718, 128
  store i64 %1719, i64* %RSP.i88, align 8
  %1720 = icmp ugt i64 %1718, -129
  %1721 = zext i1 %1720 to i8
  store i8 %1721, i8* %12, align 1
  %1722 = trunc i64 %1719 to i32
  %1723 = and i32 %1722, 255
  %1724 = tail call i32 @llvm.ctpop.i32(i32 %1723)
  %1725 = trunc i32 %1724 to i8
  %1726 = and i8 %1725, 1
  %1727 = xor i8 %1726, 1
  store i8 %1727, i8* %13, align 1
  %1728 = xor i64 %1718, %1719
  %1729 = lshr i64 %1728, 4
  %1730 = trunc i64 %1729 to i8
  %1731 = and i8 %1730, 1
  store i8 %1731, i8* %14, align 1
  %1732 = icmp eq i64 %1719, 0
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %15, align 1
  %1734 = lshr i64 %1719, 63
  %1735 = trunc i64 %1734 to i8
  store i8 %1735, i8* %16, align 1
  %1736 = lshr i64 %1718, 63
  %1737 = xor i64 %1734, %1736
  %1738 = add nuw nsw i64 %1737, %1734
  %1739 = icmp eq i64 %1738, 2
  %1740 = zext i1 %1739 to i8
  store i8 %1740, i8* %17, align 1
  %1741 = add i64 %1626, 11
  store i64 %1741, i64* %PC.i, align 8
  %1742 = add i64 %1718, 136
  %1743 = inttoptr i64 %1719 to i64*
  %1744 = load i64, i64* %1743, align 8
  store i64 %1744, i64* %RBP.i, align 8
  store i64 %1742, i64* %6, align 8
  %1745 = add i64 %1626, 12
  store i64 %1745, i64* %PC.i, align 8
  %1746 = inttoptr i64 %1742 to i64*
  %1747 = load i64, i64* %1746, align 8
  store i64 %1747, i64* %3, align 8
  %1748 = add i64 %1718, 144
  store i64 %1748, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_movl__0x1f___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 31, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_0x602074___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cltd(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
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

; <label>:22:                                     ; preds = %block_400478
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_movl_0x602074___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_jge_.L_400f58(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
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

define %struct.Memory* @routine_jge_.L_400d95(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.lrand48_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1f__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %8, 31
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

define %struct.Memory* @routine_jge_.L_400d82(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imull__0x1f__MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %10 = mul nsw i64 %9, 31
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 133143986176
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x31___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -49
  %8 = icmp ult i32 %4, 49
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

define %struct.Memory* @routine_jne_.L_400cd9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %3
  store i64 %10, i64* %RAX, align 8
  %11 = icmp ult i64 %10, %3
  %12 = icmp ult i64 %10, %9
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i64 %10 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %9, %3
  %24 = xor i64 %23, %10
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %10, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %3, 63
  %36 = lshr i64 %9, 63
  %37 = xor i64 %32, %35
  %38 = xor i64 %32, %36
  %39 = add nuw nsw i64 %37, %38
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %6 to i32
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
  %14 = xor i8 %13, 1
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

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x39f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x39f__rip__type* @G_0x39f__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3e8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1000, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cqto(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = ashr i64 %7, 63
  store i64 %8, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivq__rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sext i64 %3 to i128
  %11 = and i128 %10, -18446744073709551616
  %12 = zext i64 %9 to i128
  %13 = shl nuw i128 %12, 64
  %14 = zext i64 %7 to i128
  %15 = or i128 %13, %14
  %16 = zext i64 %3 to i128
  %17 = or i128 %11, %16
  %18 = sdiv i128 %15, %17
  %19 = trunc i128 %18 to i64
  %20 = and i128 %18, 18446744073709551615
  %21 = sext i64 %19 to i128
  %22 = and i128 %21, -18446744073709551616
  %23 = or i128 %22, %20
  %24 = icmp eq i128 %18, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400478
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400478
  %28 = srem i128 %15, %17
  %29 = trunc i128 %28 to i64
  store i64 %19, i64* %6, align 8
  store i64 %29, i64* %8, align 8
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
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %36 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %36
}

define %struct.Memory* @routine_cvtsi2sdq__rdx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = sitofp i64 %4 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

define %struct.Memory* @routine_ucomisd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fcmp uno double %9, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %block_400478
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

; <label>:23:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_jbe_.L_400d3f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_xorq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %6 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i64 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_sarq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i8
  %7 = and i8 %6, 1
  %8 = ashr i64 %3, 1
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %11 = trunc i64 %8 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  store i8 %16, i8* %10, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %19 = icmp eq i64 %8, 0
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %18, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %22 = lshr i64 %8, 63
  %23 = trunc i64 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400c9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d87(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_jmpq_.L_400c7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
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

define %struct.Memory* @routine_jge_.L_400e8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x1f__MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
  %10 = mul nsw i64 %9, 31
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 133143986176
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400de5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x293__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x293__rip__type* @G_0x293__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_400e4b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400da5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x602074___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = trunc i64 %3 to i32
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400ece(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1a9__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x1a9__rip__type* @G_0x1a9__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2710___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10000, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jbe_.L_400f2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %3, %.v
  store i64 %12, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400c5e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x602074___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400fa3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
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

define %struct.Memory* @routine_je_.L_400f89(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400f5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %17 = xor i64 %3, %6
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
