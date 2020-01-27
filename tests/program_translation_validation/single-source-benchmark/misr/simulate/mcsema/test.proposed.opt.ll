; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1a9__rip__4198127__type = type <{ [16 x i8] }>
%G_0x293__rip__4197901__type = type <{ [16 x i8] }>
%G_0x39f__rip__4197633__type = type <{ [16 x i8] }>
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
@G_0x1a9__rip__4198127_ = local_unnamed_addr global %G_0x1a9__rip__4198127__type zeroinitializer
@G_0x293__rip__4197901_ = local_unnamed_addr global %G_0x293__rip__4197901__type zeroinitializer
@G_0x39f__rip__4197633_ = local_unnamed_addr global %G_0x39f__rip__4197633__type zeroinitializer
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
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %RSI.i242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %RSI.i242, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -24
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 5
  store i64 %34, i64* %3, align 8
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
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -44
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 7
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 0, i32* %50, align 4
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %51 = load i64, i64* %3, align 8
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
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %76 to i32*
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %EDI.i, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %3, align 8
  store i64 %81, i64* %RAX.i116, align 8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %84 = sext i32 %80 to i64
  %85 = lshr i64 %84, 32
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -92
  %88 = add i64 %82, 6
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RDI.i, align 8
  %92 = add i64 %82, 8
  store i64 %92, i64* %3, align 8
  %93 = sext i32 %90 to i64
  %94 = shl nuw i64 %85, 32
  %95 = or i64 %94, %81
  %96 = sdiv i64 %95, %93
  %97 = shl i64 %96, 32
  %98 = ashr exact i64 %97, 32
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %102, label %100

; <label>:100:                                    ; preds = %entry
  %101 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %92, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre1 = load i32, i32* %EAX.i461, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %routine_idivl__edi.exit583

; <label>:102:                                    ; preds = %entry
  %103 = srem i64 %95, %93
  %104 = and i64 %96, 4294967295
  store i64 %104, i64* %RAX.i116, align 8
  %105 = and i64 %103, 4294967295
  store i64 %105, i64* %RDX.i277, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %106 = trunc i64 %96 to i32
  br label %routine_idivl__edi.exit583

routine_idivl__edi.exit583:                       ; preds = %102, %100
  %107 = phi i64 [ %.pre2, %100 ], [ %92, %102 ]
  %108 = phi i32 [ %.pre1, %100 ], [ %106, %102 ]
  %109 = phi i64 [ %.pre, %100 ], [ %86, %102 ]
  %110 = phi %struct.Memory* [ %101, %100 ], [ %2, %102 ]
  %111 = add i64 %109, -60
  %112 = add i64 %107, 3
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i32*
  store i32 %108, i32* %113, align 4
  %114 = load i64, i64* %3, align 8
  %115 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %116 = add i32 %115, -1
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RAX.i116, align 8
  %118 = icmp eq i32 %115, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %12, align 1
  %120 = and i32 %116, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120)
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %13, align 1
  %125 = xor i32 %115, %116
  %126 = lshr i32 %125, 4
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %14, align 1
  %129 = icmp eq i32 %116, 0
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %15, align 1
  %131 = lshr i32 %116, 31
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %16, align 1
  %133 = lshr i32 %115, 31
  %134 = xor i32 %131, %133
  %135 = add nuw nsw i32 %134, %133
  %136 = icmp eq i32 %135, 2
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %17, align 1
  %138 = sext i32 %116 to i64
  %139 = lshr i64 %138, 32
  store i64 %139, i64* %83, align 8
  %140 = load i32, i32* %EDI.i, align 4
  %141 = add i64 %114, 13
  store i64 %141, i64* %3, align 8
  %142 = sext i32 %140 to i64
  %143 = shl nuw i64 %139, 32
  %144 = or i64 %143, %117
  %145 = sdiv i64 %144, %142
  %146 = shl i64 %145, 32
  %147 = ashr exact i64 %146, 32
  %148 = icmp eq i64 %145, %147
  br i1 %148, label %151, label %149

; <label>:149:                                    ; preds = %routine_idivl__edi.exit583
  %150 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %141, %struct.Memory* %110)
  %EDX.i.phi.trans.insert = bitcast %union.anon* %39 to i32*
  %.pre3 = load i32, i32* %EDX.i.phi.trans.insert, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %routine_idivl__edi.exit

; <label>:151:                                    ; preds = %routine_idivl__edi.exit583
  %152 = srem i64 %144, %142
  %153 = and i64 %145, 4294967295
  store i64 %153, i64* %RAX.i116, align 8
  %154 = and i64 %152, 4294967295
  store i64 %154, i64* %RDX.i277, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %155 = trunc i64 %152 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %151, %149
  %156 = phi i64 [ %.pre4, %149 ], [ %141, %151 ]
  %157 = phi i32 [ %.pre3, %149 ], [ %155, %151 ]
  %158 = phi %struct.Memory* [ %150, %149 ], [ %110, %151 ]
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -56
  %161 = add i64 %156, 3
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i32*
  store i32 %157, i32* %162, align 4
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -16
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, 4
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %164 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %RSI.i242, align 8
  %169 = add i64 %163, -40
  %170 = add i64 %165, 8
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i64*
  store i64 %168, i64* %171, align 8
  %172 = load i64, i64* %RBP.i, align 8
  %173 = add i64 %172, -64
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, 7
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %173 to i32*
  store i32 0, i32* %176, align 4
  %RCX.i523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %178 = bitcast i64* %177 to double*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %181 = bitcast %union.VectorReg* %180 to double*
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400c5e

block_.L_400c5e:                                  ; preds = %block_.L_400f2d, %routine_idivl__edi.exit
  %182 = phi i64 [ %.pre5, %routine_idivl__edi.exit ], [ %1556, %block_.L_400f2d ]
  %MEMORY.0 = phi %struct.Memory* [ %158, %routine_idivl__edi.exit ], [ %1467, %block_.L_400f2d ]
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -64
  %185 = add i64 %182, 3
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RAX.i116, align 8
  %189 = add i64 %183, -4
  %190 = add i64 %182, 6
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = sub i32 %187, %192
  %194 = icmp ult i32 %187, %192
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %12, align 1
  %196 = and i32 %193, 255
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %13, align 1
  %201 = xor i32 %192, %187
  %202 = xor i32 %201, %193
  %203 = lshr i32 %202, 4
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  store i8 %205, i8* %14, align 1
  %206 = icmp eq i32 %193, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %15, align 1
  %208 = lshr i32 %193, 31
  %209 = trunc i32 %208 to i8
  store i8 %209, i8* %16, align 1
  %210 = lshr i32 %187, 31
  %211 = lshr i32 %192, 31
  %212 = xor i32 %211, %210
  %213 = xor i32 %208, %210
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %17, align 1
  %217 = icmp ne i8 %209, 0
  %218 = xor i1 %217, %215
  %.v = select i1 %218, i64 12, i64 762
  %219 = add i64 %182, %.v
  store i64 %219, i64* %3, align 8
  br i1 %218, label %block_400c6a, label %block_.L_400f58

block_400c6a:                                     ; preds = %block_.L_400c5e
  %220 = add i64 %183, -48
  %221 = add i64 %219, 7
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i32*
  store i32 0, i32* %222, align 4
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -52
  %225 = load i64, i64* %3, align 8
  %226 = add i64 %225, 7
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %224 to i32*
  store i32 0, i32* %227, align 4
  %228 = load i64, i64* %RBP.i, align 8
  %229 = add i64 %228, -68
  %230 = load i64, i64* %3, align 8
  %231 = add i64 %230, 7
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %229 to i32*
  store i32 0, i32* %232, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400c7f

block_.L_400c7f:                                  ; preds = %block_.L_400d82, %block_400c6a
  %233 = phi i64 [ %.pre6, %block_400c6a ], [ %747, %block_.L_400d82 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400c6a ], [ %MEMORY.2, %block_.L_400d82 ]
  %234 = load i64, i64* %RBP.i, align 8
  %235 = add i64 %234, -68
  %236 = add i64 %233, 3
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RAX.i116, align 8
  %240 = add i64 %234, -60
  %241 = add i64 %233, 6
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = sub i32 %238, %243
  %245 = icmp ult i32 %238, %243
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %12, align 1
  %247 = and i32 %244, 255
  %248 = tail call i32 @llvm.ctpop.i32(i32 %247)
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  store i8 %251, i8* %13, align 1
  %252 = xor i32 %243, %238
  %253 = xor i32 %252, %244
  %254 = lshr i32 %253, 4
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  store i8 %256, i8* %14, align 1
  %257 = icmp eq i32 %244, 0
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %15, align 1
  %259 = lshr i32 %244, 31
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %16, align 1
  %261 = lshr i32 %238, 31
  %262 = lshr i32 %243, 31
  %263 = xor i32 %262, %261
  %264 = xor i32 %259, %261
  %265 = add nuw nsw i32 %264, %263
  %266 = icmp eq i32 %265, 2
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %17, align 1
  %268 = icmp ne i8 %260, 0
  %269 = xor i1 %268, %266
  %.v31 = select i1 %269, i64 12, i64 278
  %270 = add i64 %233, %.v31
  store i64 %270, i64* %3, align 8
  br i1 %269, label %block_400c8b, label %block_.L_400d95

block_400c8b:                                     ; preds = %block_.L_400c7f
  %271 = add i64 %270, -1579
  %272 = add i64 %270, 5
  %273 = load i64, i64* %6, align 8
  %274 = add i64 %273, -8
  %275 = inttoptr i64 %274 to i64*
  store i64 %272, i64* %275, align 8
  store i64 %274, i64* %6, align 8
  store i64 %271, i64* %3, align 8
  %276 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.1)
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -80
  %279 = load i64, i64* %RAX.i116, align 8
  %280 = load i64, i64* %3, align 8
  %281 = add i64 %280, 4
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %278 to i64*
  store i64 %279, i64* %282, align 8
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -72
  %285 = load i64, i64* %3, align 8
  %286 = add i64 %285, 7
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %284 to i32*
  store i32 0, i32* %287, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_400c9b

block_.L_400c9b:                                  ; preds = %block_.L_400d3f, %block_400c8b
  %288 = phi i64 [ %.pre7, %block_400c8b ], [ %717, %block_.L_400d3f ]
  %MEMORY.2 = phi %struct.Memory* [ %276, %block_400c8b ], [ %600, %block_.L_400d3f ]
  %289 = load i64, i64* %RBP.i, align 8
  %290 = add i64 %289, -72
  %291 = add i64 %288, 4
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = add i32 %293, -31
  %295 = icmp ult i32 %293, 31
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %12, align 1
  %297 = and i32 %294, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %13, align 1
  %302 = xor i32 %293, 16
  %303 = xor i32 %302, %294
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %14, align 1
  %307 = icmp eq i32 %294, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %15, align 1
  %309 = lshr i32 %294, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %16, align 1
  %311 = lshr i32 %293, 31
  %312 = xor i32 %309, %311
  %313 = add nuw nsw i32 %312, %311
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %17, align 1
  %316 = icmp ne i8 %310, 0
  %317 = xor i1 %316, %314
  %.v32 = select i1 %317, i64 10, i64 231
  %318 = add i64 %288, %.v32
  store i64 %318, i64* %3, align 8
  br i1 %317, label %block_400ca5, label %block_.L_400d82

block_400ca5:                                     ; preds = %block_.L_400c9b
  %319 = add i64 %289, -32
  %320 = add i64 %318, 4
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RAX.i116, align 8
  %323 = add i64 %289, -68
  %324 = add i64 %318, 8
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = mul nsw i64 %327, 31
  %329 = trunc i64 %328 to i32
  %330 = and i64 %328, 4294967295
  store i64 %330, i64* %RCX.i523, align 8
  %331 = mul i64 %327, 133143986176
  %332 = ashr exact i64 %331, 32
  %333 = icmp ne i64 %332, %328
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %12, align 1
  %335 = and i32 %329, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335)
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %340 = lshr i32 %329, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %16, align 1
  store i8 %334, i8* %17, align 1
  %342 = add i64 %318, 11
  store i64 %342, i64* %3, align 8
  %343 = load i32, i32* %292, align 4
  %344 = add i32 %343, %329
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RCX.i523, align 8
  %346 = icmp ult i32 %344, %329
  %347 = icmp ult i32 %344, %343
  %348 = or i1 %346, %347
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %12, align 1
  %350 = and i32 %344, 255
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350)
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %13, align 1
  %355 = xor i32 %343, %329
  %356 = xor i32 %355, %344
  %357 = lshr i32 %356, 4
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %14, align 1
  %360 = icmp eq i32 %344, 0
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %15, align 1
  %362 = lshr i32 %344, 31
  %363 = trunc i32 %362 to i8
  store i8 %363, i8* %16, align 1
  %364 = lshr i32 %343, 31
  %365 = xor i32 %362, %340
  %366 = xor i32 %362, %364
  %367 = add nuw nsw i32 %365, %366
  %368 = icmp eq i32 %367, 2
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %17, align 1
  %370 = sext i32 %344 to i64
  store i64 %370, i64* %RDX.i277, align 8
  %371 = add i64 %370, %322
  %372 = add i64 %318, 18
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i8*
  %374 = load i8, i8* %373, align 1
  %375 = sext i8 %374 to i64
  %376 = and i64 %375, 4294967295
  store i64 %376, i64* %RCX.i523, align 8
  %377 = sext i8 %374 to i32
  %378 = add nsw i32 %377, -49
  %379 = icmp ult i8 %374, 49
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %12, align 1
  %381 = and i32 %378, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %13, align 1
  %386 = xor i32 %377, 16
  %387 = xor i32 %386, %378
  %388 = lshr i32 %387, 4
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  store i8 %390, i8* %14, align 1
  %391 = icmp eq i32 %378, 0
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %15, align 1
  %393 = lshr i32 %378, 31
  %394 = trunc i32 %393 to i8
  store i8 %394, i8* %16, align 1
  %395 = lshr i32 %377, 31
  %396 = xor i32 %393, %395
  %397 = add nuw nsw i32 %396, %395
  %398 = icmp eq i32 %397, 2
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %17, align 1
  %.v33 = select i1 %391, i64 27, i64 52
  %400 = add i64 %318, %.v33
  store i64 %400, i64* %3, align 8
  br i1 %391, label %block_400cc0, label %block_.L_400cd9

block_400cc0:                                     ; preds = %block_400ca5
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -40
  %403 = add i64 %400, 4
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i64*
  %405 = load i64, i64* %404, align 8
  store i64 %405, i64* %RAX.i116, align 8
  %406 = add i64 %400, 6
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i32*
  %408 = load i32, i32* %407, align 4
  %409 = zext i32 %408 to i64
  store i64 %409, i64* %RCX.i523, align 8
  %410 = add i64 %401, -48
  %411 = add i64 %400, 9
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = add i32 %413, %408
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RCX.i523, align 8
  %416 = icmp ult i32 %414, %408
  %417 = icmp ult i32 %414, %413
  %418 = or i1 %416, %417
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %12, align 1
  %420 = and i32 %414, 255
  %421 = tail call i32 @llvm.ctpop.i32(i32 %420)
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  store i8 %424, i8* %13, align 1
  %425 = xor i32 %413, %408
  %426 = xor i32 %425, %414
  %427 = lshr i32 %426, 4
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  store i8 %429, i8* %14, align 1
  %430 = icmp eq i32 %414, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %15, align 1
  %432 = lshr i32 %414, 31
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %16, align 1
  %434 = lshr i32 %408, 31
  %435 = lshr i32 %413, 31
  %436 = xor i32 %432, %434
  %437 = xor i32 %432, %435
  %438 = add nuw nsw i32 %436, %437
  %439 = icmp eq i32 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %17, align 1
  %441 = add i64 %400, 12
  store i64 %441, i64* %3, align 8
  store i32 %414, i32* %412, align 4
  %442 = load i64, i64* %RBP.i, align 8
  %443 = add i64 %442, -40
  %444 = load i64, i64* %3, align 8
  %445 = add i64 %444, 4
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %443 to i64*
  %447 = load i64, i64* %446, align 8
  store i64 %447, i64* %RAX.i116, align 8
  %448 = add i64 %447, 4
  %449 = add i64 %444, 7
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RCX.i523, align 8
  %453 = add i64 %442, -52
  %454 = add i64 %444, 10
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = add i32 %456, %451
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RCX.i523, align 8
  %459 = icmp ult i32 %457, %451
  %460 = icmp ult i32 %457, %456
  %461 = or i1 %459, %460
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %12, align 1
  %463 = and i32 %457, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463)
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %13, align 1
  %468 = xor i32 %456, %451
  %469 = xor i32 %468, %457
  %470 = lshr i32 %469, 4
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  store i8 %472, i8* %14, align 1
  %473 = icmp eq i32 %457, 0
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %15, align 1
  %475 = lshr i32 %457, 31
  %476 = trunc i32 %475 to i8
  store i8 %476, i8* %16, align 1
  %477 = lshr i32 %451, 31
  %478 = lshr i32 %456, 31
  %479 = xor i32 %475, %477
  %480 = xor i32 %475, %478
  %481 = add nuw nsw i32 %479, %480
  %482 = icmp eq i32 %481, 2
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %17, align 1
  %484 = add i64 %444, 13
  store i64 %484, i64* %3, align 8
  store i32 %457, i32* %455, align 4
  %.pre8 = load i64, i64* %3, align 8
  br label %block_.L_400cd9

block_.L_400cd9:                                  ; preds = %block_400ca5, %block_400cc0
  %485 = phi i64 [ %.pre8, %block_400cc0 ], [ %400, %block_400ca5 ]
  %486 = load i64, i64* %RBP.i, align 8
  %487 = add i64 %486, -40
  %488 = add i64 %485, 4
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i64*
  %490 = load i64, i64* %489, align 8
  store i64 %490, i64* %RAX.i116, align 8
  %491 = add i64 %490, 8
  %492 = add i64 %485, 8
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i64*
  %494 = load i64, i64* %493, align 8
  store i64 %494, i64* %RAX.i116, align 8
  %495 = add i64 %485, 11
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = sext i32 %497 to i64
  store i64 %498, i64* %RAX.i116, align 8
  %499 = add i64 %486, -80
  %500 = add i64 %485, 15
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i64*
  %502 = load i64, i64* %501, align 8
  %503 = add i64 %502, %498
  %504 = and i64 %503, 1
  store i64 %504, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %505 = trunc i64 %504 to i32
  %506 = tail call i32 @llvm.ctpop.i32(i32 %505)
  %507 = trunc i32 %506 to i8
  %508 = xor i8 %507, 1
  store i8 %508, i8* %13, align 1
  %509 = trunc i64 %504 to i8
  %510 = xor i8 %509, 1
  store i8 %510, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %504, i64* %RCX.i523, align 8
  %511 = add i64 %485, 25
  store i64 %511, i64* %3, align 8
  %512 = load i64, i64* %489, align 8
  store i64 %512, i64* %RAX.i116, align 8
  %513 = add i64 %485, 27
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i32*
  store i32 %505, i32* %514, align 4
  %515 = load i64, i64* %3, align 8
  %516 = add i64 %515, -1684
  %517 = add i64 %515, 5
  %518 = load i64, i64* %6, align 8
  %519 = add i64 %518, -8
  %520 = inttoptr i64 %519 to i64*
  store i64 %517, i64* %520, align 8
  store i64 %519, i64* %6, align 8
  store i64 %516, i64* %3, align 8
  %521 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.2)
  %522 = load i64, i64* %3, align 8
  %523 = load i64, i64* bitcast (%G_0x39f__rip__4197633__type* @G_0x39f__rip__4197633_ to i64*), align 8
  store i64 %523, i64* %36, align 1
  store double 0.000000e+00, double* %178, align 1
  store i64 1000, i64* %RCX.i523, align 8
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -104
  %526 = add i64 %522, 19
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i64*
  store i64 1000, i64* %527, align 8
  %528 = load i64, i64* %3, align 8
  %529 = load i64, i64* %179, align 8
  %530 = ashr i64 %529, 63
  store i64 %530, i64* %83, align 8
  %531 = load i64, i64* %RBP.i, align 8
  %532 = add i64 %531, -104
  %533 = add i64 %528, 6
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i64*
  %535 = load i64, i64* %534, align 8
  store i64 %535, i64* %RSI.i242, align 8
  %536 = add i64 %528, 9
  store i64 %536, i64* %3, align 8
  %537 = sext i64 %535 to i128
  %538 = and i128 %537, -18446744073709551616
  %539 = zext i64 %530 to i128
  %540 = shl nuw i128 %539, 64
  %541 = zext i64 %529 to i128
  %542 = or i128 %540, %541
  %543 = zext i64 %535 to i128
  %544 = or i128 %538, %543
  %545 = sdiv i128 %542, %544
  %546 = trunc i128 %545 to i64
  %547 = and i128 %545, 18446744073709551615
  %548 = sext i64 %546 to i128
  %549 = and i128 %548, -18446744073709551616
  %550 = or i128 %549, %547
  %551 = icmp eq i128 %545, %550
  br i1 %551, label %554, label %552

; <label>:552:                                    ; preds = %block_.L_400cd9
  %553 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %536, %struct.Memory* %521)
  %.pre9 = load i64, i64* %RDX.i277, align 8
  %.pre10 = load i64, i64* %3, align 8
  %.pre11 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rsi.exit443

; <label>:554:                                    ; preds = %block_.L_400cd9
  %555 = srem i128 %542, %544
  %556 = trunc i128 %555 to i64
  store i64 %546, i64* %179, align 8
  store i64 %556, i64* %83, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rsi.exit443

routine_idivq__rsi.exit443:                       ; preds = %554, %552
  %557 = phi i64 [ %.pre11, %552 ], [ %531, %554 ]
  %558 = phi i64 [ %.pre10, %552 ], [ %536, %554 ]
  %559 = phi i64 [ %.pre9, %552 ], [ %556, %554 ]
  %560 = phi %struct.Memory* [ %553, %552 ], [ %521, %554 ]
  %561 = sitofp i64 %559 to double
  %562 = load double, double* %35, align 1
  %563 = fdiv double %561, %562
  store double %563, double* %181, align 1
  %564 = add i64 %557, -88
  %565 = add i64 %558, 14
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to double*
  store double %563, double* %566, align 8
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -24
  %569 = load i64, i64* %3, align 8
  %570 = add i64 %569, 5
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %568 to double*
  %572 = load double, double* %571, align 8
  store double %572, double* %35, align 1
  store double 0.000000e+00, double* %178, align 1
  %573 = add i64 %567, -88
  %574 = add i64 %569, 10
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to double*
  %576 = load double, double* %575, align 8
  %577 = fcmp uno double %572, %576
  br i1 %577, label %578, label %588

; <label>:578:                                    ; preds = %routine_idivq__rsi.exit443
  %579 = fadd double %572, %576
  %580 = bitcast double %579 to i64
  %581 = and i64 %580, 9221120237041090560
  %582 = icmp eq i64 %581, 9218868437227405312
  %583 = and i64 %580, 2251799813685247
  %584 = icmp ne i64 %583, 0
  %585 = and i1 %582, %584
  br i1 %585, label %586, label %594

; <label>:586:                                    ; preds = %578
  %587 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %574, %struct.Memory* %560)
  %.pre12 = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427

; <label>:588:                                    ; preds = %routine_idivq__rsi.exit443
  %589 = fcmp ogt double %572, %576
  br i1 %589, label %594, label %590

; <label>:590:                                    ; preds = %588
  %591 = fcmp olt double %572, %576
  br i1 %591, label %594, label %592

; <label>:592:                                    ; preds = %590
  %593 = fcmp oeq double %572, %576
  br i1 %593, label %594, label %598

; <label>:594:                                    ; preds = %592, %590, %588, %578
  %595 = phi i8 [ 0, %588 ], [ 0, %590 ], [ 1, %592 ], [ 1, %578 ]
  %596 = phi i8 [ 0, %588 ], [ 0, %590 ], [ 0, %592 ], [ 1, %578 ]
  %597 = phi i8 [ 0, %588 ], [ 1, %590 ], [ 0, %592 ], [ 1, %578 ]
  store i8 %595, i8* %15, align 1
  store i8 %596, i8* %13, align 1
  store i8 %597, i8* %12, align 1
  br label %598

; <label>:598:                                    ; preds = %594, %592
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427

routine_ucomisd_MINUS0x58__rbp____xmm0.exit427:   ; preds = %598, %586
  %599 = phi i64 [ %.pre12, %586 ], [ %574, %598 ]
  %600 = phi %struct.Memory* [ %587, %586 ], [ %560, %598 ]
  %601 = load i8, i8* %12, align 1
  %602 = load i8, i8* %15, align 1
  %603 = or i8 %602, %601
  %604 = icmp ne i8 %603, 0
  %.v34 = select i1 %604, i64 18, i64 6
  %605 = add i64 %599, %.v34
  store i64 %605, i64* %3, align 8
  br i1 %604, label %block_.L_400d3f, label %block_400d33

block_400d33:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427
  %606 = load i64, i64* %RBP.i, align 8
  %607 = add i64 %606, -80
  %608 = add i64 %605, 4
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i64*
  %610 = load i64, i64* %609, align 8
  %611 = xor i64 %610, 1
  store i64 %611, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %612 = trunc i64 %611 to i32
  %613 = and i32 %612, 255
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %13, align 1
  %618 = icmp eq i64 %611, 0
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %15, align 1
  %620 = lshr i64 %610, 63
  %621 = trunc i64 %620 to i8
  store i8 %621, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %622 = add i64 %605, 12
  store i64 %622, i64* %3, align 8
  store i64 %611, i64* %609, align 8
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_400d3f

block_.L_400d3f:                                  ; preds = %block_400d33, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427
  %623 = phi i64 [ %.pre13, %block_400d33 ], [ %605, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427 ]
  %624 = load i64, i64* %RBP.i, align 8
  %625 = add i64 %624, -40
  %626 = add i64 %623, 4
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i64*
  %628 = load i64, i64* %627, align 8
  store i64 %628, i64* %RAX.i116, align 8
  %629 = add i64 %628, 8
  %630 = add i64 %623, 8
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i64*
  %632 = load i64, i64* %631, align 8
  store i64 %632, i64* %RAX.i116, align 8
  %633 = add i64 %632, 4
  %634 = add i64 %623, 12
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i32*
  %636 = load i32, i32* %635, align 4
  %637 = sext i32 %636 to i64
  store i64 %637, i64* %RAX.i116, align 8
  %638 = add i64 %624, -80
  %639 = add i64 %623, 16
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i64*
  %641 = load i64, i64* %640, align 8
  %642 = add i64 %641, %637
  %643 = and i64 %642, 1
  store i64 %643, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %644 = trunc i64 %643 to i32
  %645 = tail call i32 @llvm.ctpop.i32(i32 %644)
  %646 = trunc i32 %645 to i8
  %647 = xor i8 %646, 1
  store i8 %647, i8* %13, align 1
  %648 = trunc i64 %643 to i8
  %649 = xor i8 %648, 1
  store i8 %649, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %643, i64* %RCX.i523, align 8
  %650 = add i64 %623, 26
  store i64 %650, i64* %3, align 8
  %651 = load i64, i64* %627, align 8
  store i64 %651, i64* %RAX.i116, align 8
  %652 = add i64 %651, 4
  %653 = add i64 %623, 29
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i32*
  store i32 %644, i32* %654, align 4
  %655 = load i64, i64* %RBP.i, align 8
  %656 = add i64 %655, -40
  %657 = load i64, i64* %3, align 8
  %658 = add i64 %657, 4
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %656 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %RAX.i116, align 8
  %661 = add i64 %660, 8
  %662 = add i64 %657, 8
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i64*
  %664 = load i64, i64* %663, align 8
  store i64 %664, i64* %RAX.i116, align 8
  %665 = add i64 %657, 12
  store i64 %665, i64* %3, align 8
  store i64 %664, i64* %659, align 8
  %666 = load i64, i64* %RBP.i, align 8
  %667 = add i64 %666, -80
  %668 = load i64, i64* %3, align 8
  %669 = add i64 %668, 4
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %667 to i64*
  %671 = load i64, i64* %670, align 8
  %672 = trunc i64 %671 to i8
  %673 = and i8 %672, 1
  %674 = ashr i64 %671, 1
  store i64 %674, i64* %RAX.i116, align 8
  store i8 %673, i8* %12, align 1
  %675 = trunc i64 %674 to i32
  %676 = and i32 %675, 255
  %677 = tail call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  store i8 %680, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %681 = icmp eq i64 %674, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %15, align 1
  %683 = lshr i64 %674, 63
  %684 = trunc i64 %683 to i8
  store i8 %684, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %685 = add i64 %668, 12
  store i64 %685, i64* %3, align 8
  store i64 %674, i64* %670, align 8
  %686 = load i64, i64* %RBP.i, align 8
  %687 = add i64 %686, -72
  %688 = load i64, i64* %3, align 8
  %689 = add i64 %688, 3
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %687 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = add i32 %691, 1
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RAX.i116, align 8
  %694 = icmp eq i32 %691, -1
  %695 = icmp eq i32 %692, 0
  %696 = or i1 %694, %695
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %12, align 1
  %698 = and i32 %692, 255
  %699 = tail call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  store i8 %702, i8* %13, align 1
  %703 = xor i32 %691, %692
  %704 = lshr i32 %703, 4
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  store i8 %706, i8* %14, align 1
  %707 = zext i1 %695 to i8
  store i8 %707, i8* %15, align 1
  %708 = lshr i32 %692, 31
  %709 = trunc i32 %708 to i8
  store i8 %709, i8* %16, align 1
  %710 = lshr i32 %691, 31
  %711 = xor i32 %708, %710
  %712 = add nuw nsw i32 %711, %708
  %713 = icmp eq i32 %712, 2
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %17, align 1
  %715 = add i64 %688, 9
  store i64 %715, i64* %3, align 8
  store i32 %692, i32* %690, align 4
  %716 = load i64, i64* %3, align 8
  %717 = add i64 %716, -226
  store i64 %717, i64* %3, align 8
  br label %block_.L_400c9b

block_.L_400d82:                                  ; preds = %block_.L_400c9b
  %718 = add i64 %289, -68
  %719 = add i64 %318, 8
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i32*
  %721 = load i32, i32* %720, align 4
  %722 = add i32 %721, 1
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RAX.i116, align 8
  %724 = icmp eq i32 %721, -1
  %725 = icmp eq i32 %722, 0
  %726 = or i1 %724, %725
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %12, align 1
  %728 = and i32 %722, 255
  %729 = tail call i32 @llvm.ctpop.i32(i32 %728)
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  store i8 %732, i8* %13, align 1
  %733 = xor i32 %721, %722
  %734 = lshr i32 %733, 4
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  store i8 %736, i8* %14, align 1
  %737 = zext i1 %725 to i8
  store i8 %737, i8* %15, align 1
  %738 = lshr i32 %722, 31
  %739 = trunc i32 %738 to i8
  store i8 %739, i8* %16, align 1
  %740 = lshr i32 %721, 31
  %741 = xor i32 %738, %740
  %742 = add nuw nsw i32 %741, %738
  %743 = icmp eq i32 %742, 2
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %17, align 1
  %745 = add i64 %318, 14
  store i64 %745, i64* %3, align 8
  store i32 %722, i32* %720, align 4
  %746 = load i64, i64* %3, align 8
  %747 = add i64 %746, -273
  store i64 %747, i64* %3, align 8
  br label %block_.L_400c7f

block_.L_400d95:                                  ; preds = %block_.L_400c7f
  %748 = add i64 %270, -1845
  %749 = add i64 %270, 5
  %750 = load i64, i64* %6, align 8
  %751 = add i64 %750, -8
  %752 = inttoptr i64 %751 to i64*
  store i64 %749, i64* %752, align 8
  store i64 %751, i64* %6, align 8
  store i64 %748, i64* %3, align 8
  %753 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.1)
  %754 = load i64, i64* %RBP.i, align 8
  %755 = add i64 %754, -80
  %756 = load i64, i64* %RAX.i116, align 8
  %757 = load i64, i64* %3, align 8
  %758 = add i64 %757, 4
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %755 to i64*
  store i64 %756, i64* %759, align 8
  %760 = load i64, i64* %RBP.i, align 8
  %761 = add i64 %760, -72
  %762 = load i64, i64* %3, align 8
  %763 = add i64 %762, 7
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %761 to i32*
  store i32 0, i32* %764, align 4
  %.pre14 = load i64, i64* %3, align 8
  br label %block_.L_400da5

block_.L_400da5:                                  ; preds = %block_.L_400e4b, %block_.L_400d95
  %765 = phi i64 [ %.pre14, %block_.L_400d95 ], [ %1201, %block_.L_400e4b ]
  %MEMORY.5 = phi %struct.Memory* [ %753, %block_.L_400d95 ], [ %1084, %block_.L_400e4b ]
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -72
  %768 = add i64 %765, 3
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %RAX.i116, align 8
  %772 = add i64 %766, -56
  %773 = add i64 %765, 6
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = sub i32 %770, %775
  %777 = icmp ult i32 %770, %775
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %12, align 1
  %779 = and i32 %776, 255
  %780 = tail call i32 @llvm.ctpop.i32(i32 %779)
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  store i8 %783, i8* %13, align 1
  %784 = xor i32 %775, %770
  %785 = xor i32 %784, %776
  %786 = lshr i32 %785, 4
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  store i8 %788, i8* %14, align 1
  %789 = icmp eq i32 %776, 0
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %15, align 1
  %791 = lshr i32 %776, 31
  %792 = trunc i32 %791 to i8
  store i8 %792, i8* %16, align 1
  %793 = lshr i32 %770, 31
  %794 = lshr i32 %775, 31
  %795 = xor i32 %794, %793
  %796 = xor i32 %791, %793
  %797 = add nuw nsw i32 %796, %795
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %17, align 1
  %800 = icmp ne i8 %792, 0
  %801 = xor i1 %800, %798
  %.v35 = select i1 %801, i64 12, i64 233
  %802 = add i64 %765, %.v35
  store i64 %802, i64* %3, align 8
  br i1 %801, label %block_400db1, label %block_.L_400e8e

block_400db1:                                     ; preds = %block_.L_400da5
  %803 = add i64 %766, -32
  %804 = add i64 %802, 4
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RAX.i116, align 8
  %807 = add i64 %766, -60
  %808 = add i64 %802, 8
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = sext i32 %810 to i64
  %812 = mul nsw i64 %811, 31
  %813 = trunc i64 %812 to i32
  %814 = and i64 %812, 4294967295
  store i64 %814, i64* %RCX.i523, align 8
  %815 = mul i64 %811, 133143986176
  %816 = ashr exact i64 %815, 32
  %817 = icmp ne i64 %816, %812
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %12, align 1
  %819 = and i32 %813, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819)
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %824 = lshr i32 %813, 31
  %825 = trunc i32 %824 to i8
  store i8 %825, i8* %16, align 1
  store i8 %818, i8* %17, align 1
  %826 = add i64 %802, 11
  store i64 %826, i64* %3, align 8
  %827 = load i32, i32* %769, align 4
  %828 = add i32 %827, %813
  %829 = zext i32 %828 to i64
  store i64 %829, i64* %RCX.i523, align 8
  %830 = icmp ult i32 %828, %813
  %831 = icmp ult i32 %828, %827
  %832 = or i1 %830, %831
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %12, align 1
  %834 = and i32 %828, 255
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  store i8 %838, i8* %13, align 1
  %839 = xor i32 %827, %813
  %840 = xor i32 %839, %828
  %841 = lshr i32 %840, 4
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  store i8 %843, i8* %14, align 1
  %844 = icmp eq i32 %828, 0
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %15, align 1
  %846 = lshr i32 %828, 31
  %847 = trunc i32 %846 to i8
  store i8 %847, i8* %16, align 1
  %848 = lshr i32 %827, 31
  %849 = xor i32 %846, %824
  %850 = xor i32 %846, %848
  %851 = add nuw nsw i32 %849, %850
  %852 = icmp eq i32 %851, 2
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %17, align 1
  %854 = sext i32 %828 to i64
  store i64 %854, i64* %RDX.i277, align 8
  %855 = add i64 %854, %806
  %856 = add i64 %802, 18
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i8*
  %858 = load i8, i8* %857, align 1
  %859 = sext i8 %858 to i64
  %860 = and i64 %859, 4294967295
  store i64 %860, i64* %RCX.i523, align 8
  %861 = sext i8 %858 to i32
  %862 = add nsw i32 %861, -49
  %863 = icmp ult i8 %858, 49
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %12, align 1
  %865 = and i32 %862, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %13, align 1
  %870 = xor i32 %861, 16
  %871 = xor i32 %870, %862
  %872 = lshr i32 %871, 4
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  store i8 %874, i8* %14, align 1
  %875 = icmp eq i32 %862, 0
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %15, align 1
  %877 = lshr i32 %862, 31
  %878 = trunc i32 %877 to i8
  store i8 %878, i8* %16, align 1
  %879 = lshr i32 %861, 31
  %880 = xor i32 %877, %879
  %881 = add nuw nsw i32 %880, %879
  %882 = icmp eq i32 %881, 2
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %17, align 1
  %.v36 = select i1 %875, i64 27, i64 52
  %884 = add i64 %802, %.v36
  store i64 %884, i64* %3, align 8
  br i1 %875, label %block_400dcc, label %block_.L_400de5

block_400dcc:                                     ; preds = %block_400db1
  %885 = load i64, i64* %RBP.i, align 8
  %886 = add i64 %885, -40
  %887 = add i64 %884, 4
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i64*
  %889 = load i64, i64* %888, align 8
  store i64 %889, i64* %RAX.i116, align 8
  %890 = add i64 %884, 6
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = zext i32 %892 to i64
  store i64 %893, i64* %RCX.i523, align 8
  %894 = add i64 %885, -48
  %895 = add i64 %884, 9
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i32*
  %897 = load i32, i32* %896, align 4
  %898 = add i32 %897, %892
  %899 = zext i32 %898 to i64
  store i64 %899, i64* %RCX.i523, align 8
  %900 = icmp ult i32 %898, %892
  %901 = icmp ult i32 %898, %897
  %902 = or i1 %900, %901
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %12, align 1
  %904 = and i32 %898, 255
  %905 = tail call i32 @llvm.ctpop.i32(i32 %904)
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  %908 = xor i8 %907, 1
  store i8 %908, i8* %13, align 1
  %909 = xor i32 %897, %892
  %910 = xor i32 %909, %898
  %911 = lshr i32 %910, 4
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  store i8 %913, i8* %14, align 1
  %914 = icmp eq i32 %898, 0
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %15, align 1
  %916 = lshr i32 %898, 31
  %917 = trunc i32 %916 to i8
  store i8 %917, i8* %16, align 1
  %918 = lshr i32 %892, 31
  %919 = lshr i32 %897, 31
  %920 = xor i32 %916, %918
  %921 = xor i32 %916, %919
  %922 = add nuw nsw i32 %920, %921
  %923 = icmp eq i32 %922, 2
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %17, align 1
  %925 = add i64 %884, 12
  store i64 %925, i64* %3, align 8
  store i32 %898, i32* %896, align 4
  %926 = load i64, i64* %RBP.i, align 8
  %927 = add i64 %926, -40
  %928 = load i64, i64* %3, align 8
  %929 = add i64 %928, 4
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %927 to i64*
  %931 = load i64, i64* %930, align 8
  store i64 %931, i64* %RAX.i116, align 8
  %932 = add i64 %931, 4
  %933 = add i64 %928, 7
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RCX.i523, align 8
  %937 = add i64 %926, -52
  %938 = add i64 %928, 10
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  %941 = add i32 %940, %935
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RCX.i523, align 8
  %943 = icmp ult i32 %941, %935
  %944 = icmp ult i32 %941, %940
  %945 = or i1 %943, %944
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %12, align 1
  %947 = and i32 %941, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %13, align 1
  %952 = xor i32 %940, %935
  %953 = xor i32 %952, %941
  %954 = lshr i32 %953, 4
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  store i8 %956, i8* %14, align 1
  %957 = icmp eq i32 %941, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %15, align 1
  %959 = lshr i32 %941, 31
  %960 = trunc i32 %959 to i8
  store i8 %960, i8* %16, align 1
  %961 = lshr i32 %935, 31
  %962 = lshr i32 %940, 31
  %963 = xor i32 %959, %961
  %964 = xor i32 %959, %962
  %965 = add nuw nsw i32 %963, %964
  %966 = icmp eq i32 %965, 2
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %17, align 1
  %968 = add i64 %928, 13
  store i64 %968, i64* %3, align 8
  store i32 %941, i32* %939, align 4
  %.pre15 = load i64, i64* %3, align 8
  br label %block_.L_400de5

block_.L_400de5:                                  ; preds = %block_400db1, %block_400dcc
  %969 = phi i64 [ %.pre15, %block_400dcc ], [ %884, %block_400db1 ]
  %970 = load i64, i64* %RBP.i, align 8
  %971 = add i64 %970, -40
  %972 = add i64 %969, 4
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i64*
  %974 = load i64, i64* %973, align 8
  store i64 %974, i64* %RAX.i116, align 8
  %975 = add i64 %974, 8
  %976 = add i64 %969, 8
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i64*
  %978 = load i64, i64* %977, align 8
  store i64 %978, i64* %RAX.i116, align 8
  %979 = add i64 %969, 11
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i32*
  %981 = load i32, i32* %980, align 4
  %982 = sext i32 %981 to i64
  store i64 %982, i64* %RAX.i116, align 8
  %983 = add i64 %970, -80
  %984 = add i64 %969, 15
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i64*
  %986 = load i64, i64* %985, align 8
  %987 = add i64 %986, %982
  %988 = and i64 %987, 1
  store i64 %988, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %989 = trunc i64 %988 to i32
  %990 = tail call i32 @llvm.ctpop.i32(i32 %989)
  %991 = trunc i32 %990 to i8
  %992 = xor i8 %991, 1
  store i8 %992, i8* %13, align 1
  %993 = trunc i64 %988 to i8
  %994 = xor i8 %993, 1
  store i8 %994, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %988, i64* %RCX.i523, align 8
  %995 = add i64 %969, 25
  store i64 %995, i64* %3, align 8
  %996 = load i64, i64* %973, align 8
  store i64 %996, i64* %RAX.i116, align 8
  %997 = add i64 %969, 27
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i32*
  store i32 %989, i32* %998, align 4
  %999 = load i64, i64* %3, align 8
  %1000 = add i64 %999, -1952
  %1001 = add i64 %999, 5
  %1002 = load i64, i64* %6, align 8
  %1003 = add i64 %1002, -8
  %1004 = inttoptr i64 %1003 to i64*
  store i64 %1001, i64* %1004, align 8
  store i64 %1003, i64* %6, align 8
  store i64 %1000, i64* %3, align 8
  %1005 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.5)
  %1006 = load i64, i64* %3, align 8
  %1007 = load i64, i64* bitcast (%G_0x293__rip__4197901__type* @G_0x293__rip__4197901_ to i64*), align 8
  store i64 %1007, i64* %36, align 1
  store double 0.000000e+00, double* %178, align 1
  store i64 1000, i64* %RCX.i523, align 8
  %1008 = load i64, i64* %RBP.i, align 8
  %1009 = add i64 %1008, -112
  %1010 = add i64 %1006, 19
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i64*
  store i64 1000, i64* %1011, align 8
  %1012 = load i64, i64* %3, align 8
  %1013 = load i64, i64* %179, align 8
  %1014 = ashr i64 %1013, 63
  store i64 %1014, i64* %83, align 8
  %1015 = load i64, i64* %RBP.i, align 8
  %1016 = add i64 %1015, -112
  %1017 = add i64 %1012, 6
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i64*
  %1019 = load i64, i64* %1018, align 8
  store i64 %1019, i64* %RSI.i242, align 8
  %1020 = add i64 %1012, 9
  store i64 %1020, i64* %3, align 8
  %1021 = sext i64 %1019 to i128
  %1022 = and i128 %1021, -18446744073709551616
  %1023 = zext i64 %1014 to i128
  %1024 = shl nuw i128 %1023, 64
  %1025 = zext i64 %1013 to i128
  %1026 = or i128 %1024, %1025
  %1027 = zext i64 %1019 to i128
  %1028 = or i128 %1022, %1027
  %1029 = sdiv i128 %1026, %1028
  %1030 = trunc i128 %1029 to i64
  %1031 = and i128 %1029, 18446744073709551615
  %1032 = sext i64 %1030 to i128
  %1033 = and i128 %1032, -18446744073709551616
  %1034 = or i128 %1033, %1031
  %1035 = icmp eq i128 %1029, %1034
  br i1 %1035, label %1038, label %1036

; <label>:1036:                                   ; preds = %block_.L_400de5
  %1037 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1020, %struct.Memory* %1005)
  %.pre16 = load i64, i64* %RDX.i277, align 8
  %.pre17 = load i64, i64* %3, align 8
  %.pre18 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rsi.exit258

; <label>:1038:                                   ; preds = %block_.L_400de5
  %1039 = srem i128 %1026, %1028
  %1040 = trunc i128 %1039 to i64
  store i64 %1030, i64* %179, align 8
  store i64 %1040, i64* %83, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rsi.exit258

routine_idivq__rsi.exit258:                       ; preds = %1038, %1036
  %1041 = phi i64 [ %.pre18, %1036 ], [ %1015, %1038 ]
  %1042 = phi i64 [ %.pre17, %1036 ], [ %1020, %1038 ]
  %1043 = phi i64 [ %.pre16, %1036 ], [ %1040, %1038 ]
  %1044 = phi %struct.Memory* [ %1037, %1036 ], [ %1005, %1038 ]
  %1045 = sitofp i64 %1043 to double
  %1046 = load double, double* %35, align 1
  %1047 = fdiv double %1045, %1046
  store double %1047, double* %181, align 1
  %1048 = add i64 %1041, -88
  %1049 = add i64 %1042, 14
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to double*
  store double %1047, double* %1050, align 8
  %1051 = load i64, i64* %RBP.i, align 8
  %1052 = add i64 %1051, -24
  %1053 = load i64, i64* %3, align 8
  %1054 = add i64 %1053, 5
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1052 to double*
  %1056 = load double, double* %1055, align 8
  store double %1056, double* %35, align 1
  store double 0.000000e+00, double* %178, align 1
  %1057 = add i64 %1051, -88
  %1058 = add i64 %1053, 10
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to double*
  %1060 = load double, double* %1059, align 8
  %1061 = fcmp uno double %1056, %1060
  br i1 %1061, label %1062, label %1072

; <label>:1062:                                   ; preds = %routine_idivq__rsi.exit258
  %1063 = fadd double %1056, %1060
  %1064 = bitcast double %1063 to i64
  %1065 = and i64 %1064, 9221120237041090560
  %1066 = icmp eq i64 %1065, 9218868437227405312
  %1067 = and i64 %1064, 2251799813685247
  %1068 = icmp ne i64 %1067, 0
  %1069 = and i1 %1066, %1068
  br i1 %1069, label %1070, label %1078

; <label>:1070:                                   ; preds = %1062
  %1071 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1058, %struct.Memory* %1044)
  %.pre19 = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240

; <label>:1072:                                   ; preds = %routine_idivq__rsi.exit258
  %1073 = fcmp ogt double %1056, %1060
  br i1 %1073, label %1078, label %1074

; <label>:1074:                                   ; preds = %1072
  %1075 = fcmp olt double %1056, %1060
  br i1 %1075, label %1078, label %1076

; <label>:1076:                                   ; preds = %1074
  %1077 = fcmp oeq double %1056, %1060
  br i1 %1077, label %1078, label %1082

; <label>:1078:                                   ; preds = %1076, %1074, %1072, %1062
  %1079 = phi i8 [ 0, %1072 ], [ 0, %1074 ], [ 1, %1076 ], [ 1, %1062 ]
  %1080 = phi i8 [ 0, %1072 ], [ 0, %1074 ], [ 0, %1076 ], [ 1, %1062 ]
  %1081 = phi i8 [ 0, %1072 ], [ 1, %1074 ], [ 0, %1076 ], [ 1, %1062 ]
  store i8 %1079, i8* %15, align 1
  store i8 %1080, i8* %13, align 1
  store i8 %1081, i8* %12, align 1
  br label %1082

; <label>:1082:                                   ; preds = %1078, %1076
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240

routine_ucomisd_MINUS0x58__rbp____xmm0.exit240:   ; preds = %1082, %1070
  %1083 = phi i64 [ %.pre19, %1070 ], [ %1058, %1082 ]
  %1084 = phi %struct.Memory* [ %1071, %1070 ], [ %1044, %1082 ]
  %1085 = load i8, i8* %12, align 1
  %1086 = load i8, i8* %15, align 1
  %1087 = or i8 %1086, %1085
  %1088 = icmp ne i8 %1087, 0
  %.v37 = select i1 %1088, i64 18, i64 6
  %1089 = add i64 %1083, %.v37
  store i64 %1089, i64* %3, align 8
  br i1 %1088, label %block_.L_400e4b, label %block_400e3f

block_400e3f:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -80
  %1092 = add i64 %1089, 4
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i64*
  %1094 = load i64, i64* %1093, align 8
  %1095 = xor i64 %1094, 1
  store i64 %1095, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1096 = trunc i64 %1095 to i32
  %1097 = and i32 %1096, 255
  %1098 = tail call i32 @llvm.ctpop.i32(i32 %1097)
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  %1101 = xor i8 %1100, 1
  store i8 %1101, i8* %13, align 1
  %1102 = icmp eq i64 %1095, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %15, align 1
  %1104 = lshr i64 %1094, 63
  %1105 = trunc i64 %1104 to i8
  store i8 %1105, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1106 = add i64 %1089, 12
  store i64 %1106, i64* %3, align 8
  store i64 %1095, i64* %1093, align 8
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_400e4b

block_.L_400e4b:                                  ; preds = %block_400e3f, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240
  %1107 = phi i64 [ %.pre20, %block_400e3f ], [ %1089, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240 ]
  %1108 = load i64, i64* %RBP.i, align 8
  %1109 = add i64 %1108, -40
  %1110 = add i64 %1107, 4
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to i64*
  %1112 = load i64, i64* %1111, align 8
  store i64 %1112, i64* %RAX.i116, align 8
  %1113 = add i64 %1112, 8
  %1114 = add i64 %1107, 8
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i64*
  %1116 = load i64, i64* %1115, align 8
  store i64 %1116, i64* %RAX.i116, align 8
  %1117 = add i64 %1116, 4
  %1118 = add i64 %1107, 12
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i32*
  %1120 = load i32, i32* %1119, align 4
  %1121 = sext i32 %1120 to i64
  store i64 %1121, i64* %RAX.i116, align 8
  %1122 = add i64 %1108, -80
  %1123 = add i64 %1107, 16
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i64*
  %1125 = load i64, i64* %1124, align 8
  %1126 = add i64 %1125, %1121
  %1127 = and i64 %1126, 1
  store i64 %1127, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1128 = trunc i64 %1127 to i32
  %1129 = tail call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = xor i8 %1130, 1
  store i8 %1131, i8* %13, align 1
  %1132 = trunc i64 %1127 to i8
  %1133 = xor i8 %1132, 1
  store i8 %1133, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %1127, i64* %RCX.i523, align 8
  %1134 = add i64 %1107, 26
  store i64 %1134, i64* %3, align 8
  %1135 = load i64, i64* %1111, align 8
  store i64 %1135, i64* %RAX.i116, align 8
  %1136 = add i64 %1135, 4
  %1137 = add i64 %1107, 29
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  store i32 %1128, i32* %1138, align 4
  %1139 = load i64, i64* %RBP.i, align 8
  %1140 = add i64 %1139, -40
  %1141 = load i64, i64* %3, align 8
  %1142 = add i64 %1141, 4
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1140 to i64*
  %1144 = load i64, i64* %1143, align 8
  store i64 %1144, i64* %RAX.i116, align 8
  %1145 = add i64 %1144, 8
  %1146 = add i64 %1141, 8
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i64*
  %1148 = load i64, i64* %1147, align 8
  store i64 %1148, i64* %RAX.i116, align 8
  %1149 = add i64 %1141, 12
  store i64 %1149, i64* %3, align 8
  store i64 %1148, i64* %1143, align 8
  %1150 = load i64, i64* %RBP.i, align 8
  %1151 = add i64 %1150, -80
  %1152 = load i64, i64* %3, align 8
  %1153 = add i64 %1152, 4
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1151 to i64*
  %1155 = load i64, i64* %1154, align 8
  %1156 = trunc i64 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = ashr i64 %1155, 1
  store i64 %1158, i64* %RAX.i116, align 8
  store i8 %1157, i8* %12, align 1
  %1159 = trunc i64 %1158 to i32
  %1160 = and i32 %1159, 255
  %1161 = tail call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  store i8 %1164, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1165 = icmp eq i64 %1158, 0
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %15, align 1
  %1167 = lshr i64 %1158, 63
  %1168 = trunc i64 %1167 to i8
  store i8 %1168, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1169 = add i64 %1152, 12
  store i64 %1169, i64* %3, align 8
  store i64 %1158, i64* %1154, align 8
  %1170 = load i64, i64* %RBP.i, align 8
  %1171 = add i64 %1170, -72
  %1172 = load i64, i64* %3, align 8
  %1173 = add i64 %1172, 3
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1171 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = add i32 %1175, 1
  %1177 = zext i32 %1176 to i64
  store i64 %1177, i64* %RAX.i116, align 8
  %1178 = icmp eq i32 %1175, -1
  %1179 = icmp eq i32 %1176, 0
  %1180 = or i1 %1178, %1179
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %12, align 1
  %1182 = and i32 %1176, 255
  %1183 = tail call i32 @llvm.ctpop.i32(i32 %1182)
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  store i8 %1186, i8* %13, align 1
  %1187 = xor i32 %1175, %1176
  %1188 = lshr i32 %1187, 4
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  store i8 %1190, i8* %14, align 1
  %1191 = zext i1 %1179 to i8
  store i8 %1191, i8* %15, align 1
  %1192 = lshr i32 %1176, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %16, align 1
  %1194 = lshr i32 %1175, 31
  %1195 = xor i32 %1192, %1194
  %1196 = add nuw nsw i32 %1195, %1192
  %1197 = icmp eq i32 %1196, 2
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %17, align 1
  %1199 = add i64 %1172, 9
  store i64 %1199, i64* %3, align 8
  store i32 %1176, i32* %1174, align 4
  %1200 = load i64, i64* %3, align 8
  %1201 = add i64 %1200, -228
  store i64 %1201, i64* %3, align 8
  br label %block_.L_400da5

block_.L_400e8e:                                  ; preds = %block_.L_400da5
  %1202 = add i64 %802, -2094
  %1203 = add i64 %802, 5
  %1204 = load i64, i64* %6, align 8
  %1205 = add i64 %1204, -8
  %1206 = inttoptr i64 %1205 to i64*
  store i64 %1203, i64* %1206, align 8
  store i64 %1205, i64* %6, align 8
  store i64 %1202, i64* %3, align 8
  %1207 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.5)
  %1208 = load i64, i64* %RBP.i, align 8
  %1209 = add i64 %1208, -80
  %1210 = load i64, i64* %RAX.i116, align 8
  %1211 = load i64, i64* %3, align 8
  %1212 = add i64 %1211, 4
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1209 to i64*
  store i64 %1210, i64* %1213, align 8
  %1214 = load i64, i64* %RBP.i, align 8
  %1215 = add i64 %1214, -32
  %1216 = load i64, i64* %3, align 8
  %1217 = add i64 %1216, 4
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1215 to i64*
  %1219 = load i64, i64* %1218, align 8
  store i64 %1219, i64* %RAX.i116, align 8
  %1220 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %1221 = add i32 %1220, -1
  %1222 = zext i32 %1221 to i64
  store i64 %1222, i64* %RCX.i523, align 8
  %1223 = icmp eq i32 %1220, 0
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %12, align 1
  %1225 = and i32 %1221, 255
  %1226 = tail call i32 @llvm.ctpop.i32(i32 %1225)
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  store i8 %1229, i8* %13, align 1
  %1230 = xor i32 %1220, %1221
  %1231 = lshr i32 %1230, 4
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  store i8 %1233, i8* %14, align 1
  %1234 = icmp eq i32 %1221, 0
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %15, align 1
  %1236 = lshr i32 %1221, 31
  %1237 = trunc i32 %1236 to i8
  store i8 %1237, i8* %16, align 1
  %1238 = lshr i32 %1220, 31
  %1239 = xor i32 %1236, %1238
  %1240 = add nuw nsw i32 %1239, %1238
  %1241 = icmp eq i32 %1240, 2
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %17, align 1
  %1243 = sext i32 %1221 to i64
  store i64 %1243, i64* %RDX.i277, align 8
  %1244 = add i64 %1243, %1219
  %1245 = add i64 %1216, 21
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i8*
  %1247 = load i8, i8* %1246, align 1
  %1248 = sext i8 %1247 to i64
  %1249 = and i64 %1248, 4294967295
  store i64 %1249, i64* %RCX.i523, align 8
  %1250 = sext i8 %1247 to i32
  %1251 = add nsw i32 %1250, -49
  %1252 = icmp ult i8 %1247, 49
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %12, align 1
  %1254 = and i32 %1251, 255
  %1255 = tail call i32 @llvm.ctpop.i32(i32 %1254)
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  %1258 = xor i8 %1257, 1
  store i8 %1258, i8* %13, align 1
  %1259 = xor i32 %1250, 16
  %1260 = xor i32 %1259, %1251
  %1261 = lshr i32 %1260, 4
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  store i8 %1263, i8* %14, align 1
  %1264 = icmp eq i32 %1251, 0
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %15, align 1
  %1266 = lshr i32 %1251, 31
  %1267 = trunc i32 %1266 to i8
  store i8 %1267, i8* %16, align 1
  %1268 = lshr i32 %1250, 31
  %1269 = xor i32 %1266, %1268
  %1270 = add nuw nsw i32 %1269, %1268
  %1271 = icmp eq i32 %1270, 2
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %17, align 1
  %.v38 = select i1 %1264, i64 30, i64 55
  %1273 = add i64 %1216, %.v38
  store i64 %1273, i64* %3, align 8
  br i1 %1264, label %block_400eb5, label %block_.L_400ece

block_400eb5:                                     ; preds = %block_.L_400e8e
  %1274 = add i64 %1214, -40
  %1275 = add i64 %1273, 4
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i64*
  %1277 = load i64, i64* %1276, align 8
  store i64 %1277, i64* %RAX.i116, align 8
  %1278 = add i64 %1273, 6
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1277 to i32*
  %1280 = load i32, i32* %1279, align 4
  %1281 = zext i32 %1280 to i64
  store i64 %1281, i64* %RCX.i523, align 8
  %1282 = add i64 %1214, -48
  %1283 = add i64 %1273, 9
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i32*
  %1285 = load i32, i32* %1284, align 4
  %1286 = add i32 %1285, %1280
  %1287 = zext i32 %1286 to i64
  store i64 %1287, i64* %RCX.i523, align 8
  %1288 = icmp ult i32 %1286, %1280
  %1289 = icmp ult i32 %1286, %1285
  %1290 = or i1 %1288, %1289
  %1291 = zext i1 %1290 to i8
  store i8 %1291, i8* %12, align 1
  %1292 = and i32 %1286, 255
  %1293 = tail call i32 @llvm.ctpop.i32(i32 %1292)
  %1294 = trunc i32 %1293 to i8
  %1295 = and i8 %1294, 1
  %1296 = xor i8 %1295, 1
  store i8 %1296, i8* %13, align 1
  %1297 = xor i32 %1285, %1280
  %1298 = xor i32 %1297, %1286
  %1299 = lshr i32 %1298, 4
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  store i8 %1301, i8* %14, align 1
  %1302 = icmp eq i32 %1286, 0
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %15, align 1
  %1304 = lshr i32 %1286, 31
  %1305 = trunc i32 %1304 to i8
  store i8 %1305, i8* %16, align 1
  %1306 = lshr i32 %1280, 31
  %1307 = lshr i32 %1285, 31
  %1308 = xor i32 %1304, %1306
  %1309 = xor i32 %1304, %1307
  %1310 = add nuw nsw i32 %1308, %1309
  %1311 = icmp eq i32 %1310, 2
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %17, align 1
  %1313 = add i64 %1273, 12
  store i64 %1313, i64* %3, align 8
  store i32 %1286, i32* %1284, align 4
  %1314 = load i64, i64* %RBP.i, align 8
  %1315 = add i64 %1314, -40
  %1316 = load i64, i64* %3, align 8
  %1317 = add i64 %1316, 4
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1315 to i64*
  %1319 = load i64, i64* %1318, align 8
  store i64 %1319, i64* %RAX.i116, align 8
  %1320 = add i64 %1319, 4
  %1321 = add i64 %1316, 7
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i32*
  %1323 = load i32, i32* %1322, align 4
  %1324 = zext i32 %1323 to i64
  store i64 %1324, i64* %RCX.i523, align 8
  %1325 = add i64 %1314, -52
  %1326 = add i64 %1316, 10
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = add i32 %1328, %1323
  %1330 = zext i32 %1329 to i64
  store i64 %1330, i64* %RCX.i523, align 8
  %1331 = icmp ult i32 %1329, %1323
  %1332 = icmp ult i32 %1329, %1328
  %1333 = or i1 %1331, %1332
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %12, align 1
  %1335 = and i32 %1329, 255
  %1336 = tail call i32 @llvm.ctpop.i32(i32 %1335)
  %1337 = trunc i32 %1336 to i8
  %1338 = and i8 %1337, 1
  %1339 = xor i8 %1338, 1
  store i8 %1339, i8* %13, align 1
  %1340 = xor i32 %1328, %1323
  %1341 = xor i32 %1340, %1329
  %1342 = lshr i32 %1341, 4
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  store i8 %1344, i8* %14, align 1
  %1345 = icmp eq i32 %1329, 0
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %15, align 1
  %1347 = lshr i32 %1329, 31
  %1348 = trunc i32 %1347 to i8
  store i8 %1348, i8* %16, align 1
  %1349 = lshr i32 %1323, 31
  %1350 = lshr i32 %1328, 31
  %1351 = xor i32 %1347, %1349
  %1352 = xor i32 %1347, %1350
  %1353 = add nuw nsw i32 %1351, %1352
  %1354 = icmp eq i32 %1353, 2
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %17, align 1
  %1356 = add i64 %1316, 13
  store i64 %1356, i64* %3, align 8
  store i32 %1329, i32* %1327, align 4
  %.pre21 = load i64, i64* %3, align 8
  %.pre42 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400ece

block_.L_400ece:                                  ; preds = %block_.L_400e8e, %block_400eb5
  %1357 = phi i64 [ %.pre42, %block_400eb5 ], [ %1214, %block_.L_400e8e ]
  %1358 = phi i64 [ %.pre21, %block_400eb5 ], [ %1273, %block_.L_400e8e ]
  %1359 = add i64 %1357, -48
  %1360 = add i64 %1358, 4
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i32*
  %1362 = load i32, i32* %1361, align 4
  %1363 = sext i32 %1362 to i64
  store i64 %1363, i64* %RAX.i116, align 8
  %1364 = add i64 %1357, -80
  %1365 = add i64 %1358, 8
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i64*
  %1367 = load i64, i64* %1366, align 8
  %1368 = add i64 %1367, %1363
  %1369 = and i64 %1368, 1
  store i64 %1369, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1370 = trunc i64 %1369 to i32
  %1371 = tail call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %13, align 1
  %1374 = trunc i64 %1369 to i8
  %1375 = xor i8 %1374, 1
  store i8 %1375, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %1369, i64* %RCX.i523, align 8
  %1376 = add i64 %1357, -40
  %1377 = add i64 %1358, 18
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to i64*
  %1379 = load i64, i64* %1378, align 8
  store i64 %1379, i64* %RAX.i116, align 8
  %1380 = add i64 %1358, 20
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  store i32 %1370, i32* %1381, align 4
  %1382 = load i64, i64* %3, align 8
  %1383 = add i64 %1382, -2178
  %1384 = add i64 %1382, 5
  %1385 = load i64, i64* %6, align 8
  %1386 = add i64 %1385, -8
  %1387 = inttoptr i64 %1386 to i64*
  store i64 %1384, i64* %1387, align 8
  store i64 %1386, i64* %6, align 8
  store i64 %1383, i64* %3, align 8
  %1388 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %1207)
  %1389 = load i64, i64* %3, align 8
  %1390 = load i64, i64* bitcast (%G_0x1a9__rip__4198127__type* @G_0x1a9__rip__4198127_ to i64*), align 8
  store i64 %1390, i64* %36, align 1
  store double 0.000000e+00, double* %178, align 1
  store i64 10000, i64* %RCX.i523, align 8
  %1391 = load i64, i64* %RBP.i, align 8
  %1392 = add i64 %1391, -120
  %1393 = add i64 %1389, 19
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i64*
  store i64 10000, i64* %1394, align 8
  %1395 = load i64, i64* %3, align 8
  %1396 = load i64, i64* %179, align 8
  %1397 = ashr i64 %1396, 63
  store i64 %1397, i64* %83, align 8
  %1398 = load i64, i64* %RBP.i, align 8
  %1399 = add i64 %1398, -120
  %1400 = add i64 %1395, 6
  store i64 %1400, i64* %3, align 8
  %1401 = inttoptr i64 %1399 to i64*
  %1402 = load i64, i64* %1401, align 8
  store i64 %1402, i64* %RSI.i242, align 8
  %1403 = add i64 %1395, 9
  store i64 %1403, i64* %3, align 8
  %1404 = sext i64 %1402 to i128
  %1405 = and i128 %1404, -18446744073709551616
  %1406 = zext i64 %1397 to i128
  %1407 = shl nuw i128 %1406, 64
  %1408 = zext i64 %1396 to i128
  %1409 = or i128 %1407, %1408
  %1410 = zext i64 %1402 to i128
  %1411 = or i128 %1405, %1410
  %1412 = sdiv i128 %1409, %1411
  %1413 = trunc i128 %1412 to i64
  %1414 = and i128 %1412, 18446744073709551615
  %1415 = sext i64 %1413 to i128
  %1416 = and i128 %1415, -18446744073709551616
  %1417 = or i128 %1416, %1414
  %1418 = icmp eq i128 %1412, %1417
  br i1 %1418, label %1421, label %1419

; <label>:1419:                                   ; preds = %block_.L_400ece
  %1420 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1403, %struct.Memory* %1388)
  %.pre22 = load i64, i64* %RDX.i277, align 8
  %.pre23 = load i64, i64* %3, align 8
  %.pre24 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rsi.exit

; <label>:1421:                                   ; preds = %block_.L_400ece
  %1422 = srem i128 %1409, %1411
  %1423 = trunc i128 %1422 to i64
  store i64 %1413, i64* %179, align 8
  store i64 %1423, i64* %83, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rsi.exit

routine_idivq__rsi.exit:                          ; preds = %1421, %1419
  %1424 = phi i64 [ %.pre24, %1419 ], [ %1398, %1421 ]
  %1425 = phi i64 [ %.pre23, %1419 ], [ %1403, %1421 ]
  %1426 = phi i64 [ %.pre22, %1419 ], [ %1423, %1421 ]
  %1427 = phi %struct.Memory* [ %1420, %1419 ], [ %1388, %1421 ]
  %1428 = sitofp i64 %1426 to double
  %1429 = load double, double* %35, align 1
  %1430 = fdiv double %1428, %1429
  store double %1430, double* %181, align 1
  %1431 = add i64 %1424, -88
  %1432 = add i64 %1425, 14
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to double*
  store double %1430, double* %1433, align 8
  %1434 = load i64, i64* %RBP.i, align 8
  %1435 = add i64 %1434, -24
  %1436 = load i64, i64* %3, align 8
  %1437 = add i64 %1436, 5
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1435 to double*
  %1439 = load double, double* %1438, align 8
  store double %1439, double* %35, align 1
  store double 0.000000e+00, double* %178, align 1
  %1440 = add i64 %1434, -88
  %1441 = add i64 %1436, 10
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to double*
  %1443 = load double, double* %1442, align 8
  %1444 = fcmp uno double %1439, %1443
  br i1 %1444, label %1445, label %1455

; <label>:1445:                                   ; preds = %routine_idivq__rsi.exit
  %1446 = fadd double %1439, %1443
  %1447 = bitcast double %1446 to i64
  %1448 = and i64 %1447, 9221120237041090560
  %1449 = icmp eq i64 %1448, 9218868437227405312
  %1450 = and i64 %1447, 2251799813685247
  %1451 = icmp ne i64 %1450, 0
  %1452 = and i1 %1449, %1451
  br i1 %1452, label %1453, label %1461

; <label>:1453:                                   ; preds = %1445
  %1454 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1441, %struct.Memory* %1427)
  %.pre25 = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit

; <label>:1455:                                   ; preds = %routine_idivq__rsi.exit
  %1456 = fcmp ogt double %1439, %1443
  br i1 %1456, label %1461, label %1457

; <label>:1457:                                   ; preds = %1455
  %1458 = fcmp olt double %1439, %1443
  br i1 %1458, label %1461, label %1459

; <label>:1459:                                   ; preds = %1457
  %1460 = fcmp oeq double %1439, %1443
  br i1 %1460, label %1461, label %1465

; <label>:1461:                                   ; preds = %1459, %1457, %1455, %1445
  %1462 = phi i8 [ 0, %1455 ], [ 0, %1457 ], [ 1, %1459 ], [ 1, %1445 ]
  %1463 = phi i8 [ 0, %1455 ], [ 0, %1457 ], [ 0, %1459 ], [ 1, %1445 ]
  %1464 = phi i8 [ 0, %1455 ], [ 1, %1457 ], [ 0, %1459 ], [ 1, %1445 ]
  store i8 %1462, i8* %15, align 1
  store i8 %1463, i8* %13, align 1
  store i8 %1464, i8* %12, align 1
  br label %1465

; <label>:1465:                                   ; preds = %1461, %1459
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit

routine_ucomisd_MINUS0x58__rbp____xmm0.exit:      ; preds = %1465, %1453
  %1466 = phi i64 [ %.pre25, %1453 ], [ %1441, %1465 ]
  %1467 = phi %struct.Memory* [ %1454, %1453 ], [ %1427, %1465 ]
  %1468 = load i8, i8* %12, align 1
  %1469 = load i8, i8* %15, align 1
  %1470 = or i8 %1469, %1468
  %1471 = icmp ne i8 %1470, 0
  %.v39 = select i1 %1471, i64 18, i64 6
  %1472 = add i64 %1466, %.v39
  store i64 %1472, i64* %3, align 8
  br i1 %1471, label %block_.L_400f2d, label %block_400f21

block_400f21:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit
  %1473 = load i64, i64* %RBP.i, align 8
  %1474 = add i64 %1473, -80
  %1475 = add i64 %1472, 4
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i64*
  %1477 = load i64, i64* %1476, align 8
  %1478 = xor i64 %1477, 1
  store i64 %1478, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1479 = trunc i64 %1478 to i32
  %1480 = and i32 %1479, 255
  %1481 = tail call i32 @llvm.ctpop.i32(i32 %1480)
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = xor i8 %1483, 1
  store i8 %1484, i8* %13, align 1
  %1485 = icmp eq i64 %1478, 0
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %15, align 1
  %1487 = lshr i64 %1477, 63
  %1488 = trunc i64 %1487 to i8
  store i8 %1488, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1489 = add i64 %1472, 12
  store i64 %1489, i64* %3, align 8
  store i64 %1478, i64* %1476, align 8
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_400f2d

block_.L_400f2d:                                  ; preds = %block_400f21, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit
  %1490 = phi i64 [ %.pre26, %block_400f21 ], [ %1472, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit ]
  %1491 = load i64, i64* %RBP.i, align 8
  %1492 = add i64 %1491, -52
  %1493 = add i64 %1490, 4
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1492 to i32*
  %1495 = load i32, i32* %1494, align 4
  %1496 = sext i32 %1495 to i64
  store i64 %1496, i64* %RAX.i116, align 8
  %1497 = add i64 %1491, -80
  %1498 = add i64 %1490, 8
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i64*
  %1500 = load i64, i64* %1499, align 8
  %1501 = add i64 %1500, %1496
  %1502 = and i64 %1501, 1
  store i64 %1502, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1503 = trunc i64 %1502 to i32
  %1504 = tail call i32 @llvm.ctpop.i32(i32 %1503)
  %1505 = trunc i32 %1504 to i8
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %13, align 1
  %1507 = trunc i64 %1502 to i8
  %1508 = xor i8 %1507, 1
  store i8 %1508, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %1502, i64* %RCX.i523, align 8
  %1509 = add i64 %1491, -40
  %1510 = add i64 %1490, 18
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i64*
  %1512 = load i64, i64* %1511, align 8
  store i64 %1512, i64* %RAX.i116, align 8
  %1513 = add i64 %1512, 4
  %1514 = add i64 %1490, 21
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i32*
  store i32 %1503, i32* %1515, align 4
  %1516 = load i64, i64* %RBP.i, align 8
  %1517 = add i64 %1516, -16
  %1518 = load i64, i64* %3, align 8
  %1519 = add i64 %1518, 4
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1517 to i64*
  %1521 = load i64, i64* %1520, align 8
  store i64 %1521, i64* %RAX.i116, align 8
  %1522 = add i64 %1516, -40
  %1523 = add i64 %1518, 8
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i64*
  store i64 %1521, i64* %1524, align 8
  %1525 = load i64, i64* %RBP.i, align 8
  %1526 = add i64 %1525, -64
  %1527 = load i64, i64* %3, align 8
  %1528 = add i64 %1527, 3
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1526 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = add i32 %1530, 1
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RAX.i116, align 8
  %1533 = icmp eq i32 %1530, -1
  %1534 = icmp eq i32 %1531, 0
  %1535 = or i1 %1533, %1534
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %12, align 1
  %1537 = and i32 %1531, 255
  %1538 = tail call i32 @llvm.ctpop.i32(i32 %1537)
  %1539 = trunc i32 %1538 to i8
  %1540 = and i8 %1539, 1
  %1541 = xor i8 %1540, 1
  store i8 %1541, i8* %13, align 1
  %1542 = xor i32 %1530, %1531
  %1543 = lshr i32 %1542, 4
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  store i8 %1545, i8* %14, align 1
  %1546 = zext i1 %1534 to i8
  store i8 %1546, i8* %15, align 1
  %1547 = lshr i32 %1531, 31
  %1548 = trunc i32 %1547 to i8
  store i8 %1548, i8* %16, align 1
  %1549 = lshr i32 %1530, 31
  %1550 = xor i32 %1547, %1549
  %1551 = add nuw nsw i32 %1550, %1547
  %1552 = icmp eq i32 %1551, 2
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %17, align 1
  %1554 = add i64 %1527, 9
  store i64 %1554, i64* %3, align 8
  store i32 %1531, i32* %1529, align 4
  %1555 = load i64, i64* %3, align 8
  %1556 = add i64 %1555, -757
  store i64 %1556, i64* %3, align 8
  br label %block_.L_400c5e

block_.L_400f58:                                  ; preds = %block_.L_400c5e
  %1557 = add i64 %183, -68
  %1558 = add i64 %219, 7
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i32*
  store i32 0, i32* %1559, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_400f5f

block_.L_400f5f:                                  ; preds = %block_.L_400f89, %block_.L_400f58
  %1560 = phi i64 [ %1679, %block_.L_400f89 ], [ %.pre27, %block_.L_400f58 ]
  %1561 = load i64, i64* %RBP.i, align 8
  %1562 = add i64 %1561, -68
  %1563 = add i64 %1560, 3
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i32*
  %1565 = load i32, i32* %1564, align 4
  %1566 = zext i32 %1565 to i64
  store i64 %1566, i64* %RAX.i116, align 8
  %1567 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %1568 = sub i32 %1565, %1567
  %1569 = icmp ult i32 %1565, %1567
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %12, align 1
  %1571 = and i32 %1568, 255
  %1572 = tail call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %13, align 1
  %1576 = xor i32 %1567, %1565
  %1577 = xor i32 %1576, %1568
  %1578 = lshr i32 %1577, 4
  %1579 = trunc i32 %1578 to i8
  %1580 = and i8 %1579, 1
  store i8 %1580, i8* %14, align 1
  %1581 = icmp eq i32 %1568, 0
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %15, align 1
  %1583 = lshr i32 %1568, 31
  %1584 = trunc i32 %1583 to i8
  store i8 %1584, i8* %16, align 1
  %1585 = lshr i32 %1565, 31
  %1586 = lshr i32 %1567, 31
  %1587 = xor i32 %1586, %1585
  %1588 = xor i32 %1583, %1585
  %1589 = add nuw nsw i32 %1588, %1587
  %1590 = icmp eq i32 %1589, 2
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %17, align 1
  %1592 = icmp ne i8 %1584, 0
  %1593 = xor i1 %1592, %1590
  %.v40 = select i1 %1593, i64 16, i64 68
  %1594 = add i64 %1560, %.v40
  store i64 %1594, i64* %3, align 8
  br i1 %1593, label %block_400f6f, label %block_.L_400fa3

block_400f6f:                                     ; preds = %block_.L_400f5f
  %1595 = add i64 %1561, -40
  %1596 = add i64 %1594, 4
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1595 to i64*
  %1598 = load i64, i64* %1597, align 8
  store i64 %1598, i64* %RAX.i116, align 8
  %1599 = add i64 %1594, 6
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  %1601 = load i32, i32* %1600, align 4
  %1602 = zext i32 %1601 to i64
  store i64 %1602, i64* %RCX.i523, align 8
  %1603 = add i64 %1594, 10
  store i64 %1603, i64* %3, align 8
  %1604 = load i64, i64* %1597, align 8
  store i64 %1604, i64* %RAX.i116, align 8
  %1605 = add i64 %1604, 4
  %1606 = add i64 %1594, 13
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1605 to i32*
  %1608 = load i32, i32* %1607, align 4
  %1609 = sub i32 %1601, %1608
  %1610 = icmp ult i32 %1601, %1608
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %12, align 1
  %1612 = and i32 %1609, 255
  %1613 = tail call i32 @llvm.ctpop.i32(i32 %1612)
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  store i8 %1616, i8* %13, align 1
  %1617 = xor i32 %1608, %1601
  %1618 = xor i32 %1617, %1609
  %1619 = lshr i32 %1618, 4
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  store i8 %1621, i8* %14, align 1
  %1622 = icmp eq i32 %1609, 0
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %15, align 1
  %1624 = lshr i32 %1609, 31
  %1625 = trunc i32 %1624 to i8
  store i8 %1625, i8* %16, align 1
  %1626 = lshr i32 %1601, 31
  %1627 = lshr i32 %1608, 31
  %1628 = xor i32 %1627, %1626
  %1629 = xor i32 %1624, %1626
  %1630 = add nuw nsw i32 %1629, %1628
  %1631 = icmp eq i32 %1630, 2
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %17, align 1
  %.v41 = select i1 %1622, i64 26, i64 19
  %1633 = add i64 %1594, %.v41
  store i64 %1633, i64* %3, align 8
  br i1 %1622, label %block_.L_400f89, label %block_400f82

block_400f82:                                     ; preds = %block_400f6f
  %1634 = add i64 %1561, -44
  %1635 = add i64 %1633, 7
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1634 to i32*
  store i32 1, i32* %1636, align 4
  %.pre28 = load i64, i64* %RBP.i, align 8
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_400f89

block_.L_400f89:                                  ; preds = %block_400f82, %block_400f6f
  %1637 = phi i64 [ %.pre29, %block_400f82 ], [ %1633, %block_400f6f ]
  %1638 = phi i64 [ %.pre28, %block_400f82 ], [ %1561, %block_400f6f ]
  %1639 = add i64 %1638, -40
  %1640 = add i64 %1637, 4
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i64*
  %1642 = load i64, i64* %1641, align 8
  store i64 %1642, i64* %RAX.i116, align 8
  %1643 = add i64 %1642, 8
  %1644 = add i64 %1637, 8
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1643 to i64*
  %1646 = load i64, i64* %1645, align 8
  store i64 %1646, i64* %RAX.i116, align 8
  %1647 = add i64 %1637, 12
  store i64 %1647, i64* %3, align 8
  store i64 %1646, i64* %1641, align 8
  %1648 = load i64, i64* %RBP.i, align 8
  %1649 = add i64 %1648, -68
  %1650 = load i64, i64* %3, align 8
  %1651 = add i64 %1650, 3
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1649 to i32*
  %1653 = load i32, i32* %1652, align 4
  %1654 = add i32 %1653, 1
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RAX.i116, align 8
  %1656 = icmp eq i32 %1653, -1
  %1657 = icmp eq i32 %1654, 0
  %1658 = or i1 %1656, %1657
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %12, align 1
  %1660 = and i32 %1654, 255
  %1661 = tail call i32 @llvm.ctpop.i32(i32 %1660)
  %1662 = trunc i32 %1661 to i8
  %1663 = and i8 %1662, 1
  %1664 = xor i8 %1663, 1
  store i8 %1664, i8* %13, align 1
  %1665 = xor i32 %1653, %1654
  %1666 = lshr i32 %1665, 4
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  store i8 %1668, i8* %14, align 1
  %1669 = zext i1 %1657 to i8
  store i8 %1669, i8* %15, align 1
  %1670 = lshr i32 %1654, 31
  %1671 = trunc i32 %1670 to i8
  store i8 %1671, i8* %16, align 1
  %1672 = lshr i32 %1653, 31
  %1673 = xor i32 %1670, %1672
  %1674 = add nuw nsw i32 %1673, %1670
  %1675 = icmp eq i32 %1674, 2
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %17, align 1
  %1677 = add i64 %1650, 9
  store i64 %1677, i64* %3, align 8
  store i32 %1654, i32* %1652, align 4
  %1678 = load i64, i64* %3, align 8
  %1679 = add i64 %1678, -63
  store i64 %1679, i64* %3, align 8
  br label %block_.L_400f5f

block_.L_400fa3:                                  ; preds = %block_.L_400f5f
  %1680 = add i64 %1561, -44
  %1681 = add i64 %1594, 3
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i32*
  %1683 = load i32, i32* %1682, align 4
  %1684 = zext i32 %1683 to i64
  store i64 %1684, i64* %RAX.i116, align 8
  %1685 = load i64, i64* %6, align 8
  %1686 = add i64 %1685, 128
  store i64 %1686, i64* %6, align 8
  %1687 = icmp ugt i64 %1685, -129
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %12, align 1
  %1689 = trunc i64 %1686 to i32
  %1690 = and i32 %1689, 255
  %1691 = tail call i32 @llvm.ctpop.i32(i32 %1690)
  %1692 = trunc i32 %1691 to i8
  %1693 = and i8 %1692, 1
  %1694 = xor i8 %1693, 1
  store i8 %1694, i8* %13, align 1
  %1695 = xor i64 %1685, %1686
  %1696 = lshr i64 %1695, 4
  %1697 = trunc i64 %1696 to i8
  %1698 = and i8 %1697, 1
  store i8 %1698, i8* %14, align 1
  %1699 = icmp eq i64 %1686, 0
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %15, align 1
  %1701 = lshr i64 %1686, 63
  %1702 = trunc i64 %1701 to i8
  store i8 %1702, i8* %16, align 1
  %1703 = lshr i64 %1685, 63
  %1704 = xor i64 %1701, %1703
  %1705 = add nuw nsw i64 %1704, %1701
  %1706 = icmp eq i64 %1705, 2
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %17, align 1
  %1708 = add i64 %1594, 11
  store i64 %1708, i64* %3, align 8
  %1709 = add i64 %1685, 136
  %1710 = inttoptr i64 %1686 to i64*
  %1711 = load i64, i64* %1710, align 8
  store i64 %1711, i64* %RBP.i, align 8
  store i64 %1709, i64* %6, align 8
  %1712 = add i64 %1594, 12
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1709 to i64*
  %1714 = load i64, i64* %1713, align 8
  store i64 %1714, i64* %3, align 8
  %1715 = add i64 %1685, 144
  store i64 %1715, i64* %6, align 8
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %5 = load i64, i64* bitcast (%G_0x39f__rip__4197633__type* @G_0x39f__rip__4197633_ to i64*), align 8
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
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %3, %.v
  store i64 %11, i64* %PC, align 8
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
  %5 = add i64 %4, 4
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d87(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x293__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x293__rip__4197901__type* @G_0x293__rip__4197901_ to i64*), align 8
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
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %3, %.v
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400da5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
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
  %5 = load i64, i64* bitcast (%G_0x1a9__rip__4198127__type* @G_0x1a9__rip__4198127_ to i64*), align 8
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
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %3, %.v
  store i64 %11, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
