; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G__0x6d2090_type = type <{ [8 x i8] }>
%G__0x6d32e0_type = type <{ [8 x i8] }>
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
@G__0x6d2090 = global %G__0x6d2090_type zeroinitializer
@G__0x6d32e0 = global %G__0x6d32e0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @StoreNewMotionVectorsBlock8x8(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1218 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = add i64 %7, 8
  %13 = add i64 %10, 6
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %12 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = zext i32 %15 to i64
  store i64 %16, i64* %RAX.i1218, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i1255 = bitcast %union.anon* %17 to i32*
  %18 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  store i64 2, i64* %18, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %19 to i32*
  %20 = add i64 %7, -12
  %21 = load i32, i32* %EDI.i, align 4
  %22 = add i64 %10, 15
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %24 to i32*
  %25 = load i64, i64* %RBP.i, align 8
  %26 = add i64 %25, -8
  %27 = load i32, i32* %ESI.i, align 4
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 3
  store i64 %29, i64* %3, align 8
  %30 = inttoptr i64 %26 to i32*
  store i32 %27, i32* %30, align 4
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1248 = bitcast %union.anon* %31 to i32*
  %32 = load i64, i64* %RBP.i, align 8
  %33 = add i64 %32, -12
  %34 = load i32, i32* %EDX.i1248, align 4
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %3, align 8
  %37 = inttoptr i64 %33 to i32*
  store i32 %34, i32* %37, align 4
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1245 = bitcast %union.anon* %38 to i32*
  %39 = load i64, i64* %RBP.i, align 8
  %40 = add i64 %39, -16
  %41 = load i32, i32* %ECX.i1245, align 4
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 3
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -20
  %48 = load i32, i32* %R8D.i, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %52 to i32*
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -24
  %55 = load i32, i32* %R9D.i, align 4
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %58, align 4
  %EAX.i1238 = bitcast %union.anon* %11 to i32*
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -28
  %61 = load i32, i32* %EAX.i1238, align 4
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 3
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %60 to i32*
  store i32 %61, i32* %64, align 4
  %R11.i1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %66, i64* %R11.i1236, align 8
  %67 = add i64 %66, 71928
  %68 = add i64 %65, 15
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -64
  %73 = add i64 %65, 19
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i64*
  store i64 %70, i64* %74, align 8
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %76, i64* %R11.i1236, align 8
  %77 = add i64 %76, 71920
  %78 = add i64 %75, 15
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %R11.i1236, align 8
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -72
  %83 = add i64 %75, 19
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i64*
  store i64 %80, i64* %84, align 8
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -8
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 3
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %86 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RAX.i1218, align 8
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %93 = sext i32 %90 to i64
  %94 = lshr i64 %93, 32
  store i64 %94, i64* %92, align 8
  %95 = load i32, i32* %R10D.i1255, align 4
  %96 = add i64 %87, 7
  store i64 %96, i64* %3, align 8
  %97 = sext i32 %95 to i64
  %98 = shl nuw i64 %94, 32
  %99 = or i64 %98, %91
  %100 = sdiv i64 %99, %97
  %101 = shl i64 %100, 32
  %102 = ashr exact i64 %101, 32
  %103 = icmp eq i64 %100, %102
  br i1 %103, label %106, label %104

; <label>:104:                                    ; preds = %entry
  %105 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %96, %struct.Memory* %2)
  %RDX.i1213.phi.trans.insert = getelementptr inbounds %union.anon, %union.anon* %31, i64 0, i32 0
  %.pre = load i64, i64* %RDX.i1213.phi.trans.insert, align 8
  %.pre82 = load i64, i64* %3, align 8
  %.pre83 = load i64, i64* %RBP.i, align 8
  %.pre99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.pre100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %.pre102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %.pre104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %.pre106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %.pre108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  br label %routine_idivl__r10d.exit1216

; <label>:106:                                    ; preds = %entry
  %107 = srem i64 %99, %97
  %108 = and i64 %100, 4294967295
  store i64 %108, i64* %RAX.i1218, align 8
  %109 = getelementptr inbounds %union.anon, %union.anon* %31, i64 0, i32 0
  %110 = and i64 %107, 4294967295
  store i64 %110, i64* %109, align 8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %111, align 1
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %112, align 1
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %114, align 1
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %115, align 1
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %116, align 1
  br label %routine_idivl__r10d.exit1216

routine_idivl__r10d.exit1216:                     ; preds = %106, %104
  %.pre-phi109 = phi i8* [ %116, %106 ], [ %.pre108, %104 ]
  %.pre-phi107 = phi i8* [ %115, %106 ], [ %.pre106, %104 ]
  %.pre-phi105 = phi i8* [ %114, %106 ], [ %.pre104, %104 ]
  %.pre-phi103 = phi i8* [ %113, %106 ], [ %.pre102, %104 ]
  %.pre-phi101 = phi i8* [ %112, %106 ], [ %.pre100, %104 ]
  %.pre-phi = phi i8* [ %111, %106 ], [ %.pre99, %104 ]
  %RDX.i1213.pre-phi = phi i64* [ %109, %106 ], [ %RDX.i1213.phi.trans.insert, %104 ]
  %117 = phi i64 [ %85, %106 ], [ %.pre83, %104 ]
  %118 = phi i64 [ %96, %106 ], [ %.pre82, %104 ]
  %119 = phi i64 [ %110, %106 ], [ %.pre, %104 ]
  %120 = phi %struct.Memory* [ %2, %106 ], [ %105, %104 ]
  %121 = trunc i64 %119 to i32
  %122 = shl i32 %121, 1
  %123 = icmp slt i32 %121, 0
  %124 = icmp slt i32 %122, 0
  %125 = xor i1 %123, %124
  %126 = zext i32 %122 to i64
  store i64 %126, i64* %RDX.i1213.pre-phi, align 8
  %.lobit = lshr i32 %121, 31
  %127 = trunc i32 %.lobit to i8
  store i8 %127, i8* %.pre-phi, align 1
  %128 = and i32 %122, 254
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128)
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %.pre-phi101, align 1
  store i8 0, i8* %.pre-phi103, align 1
  %133 = icmp eq i32 %122, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %.pre-phi105, align 1
  %135 = lshr i32 %121, 30
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %.pre-phi107, align 1
  %138 = zext i1 %125 to i8
  store i8 %138, i8* %.pre-phi109, align 1
  %139 = add i64 %117, -40
  %140 = add i64 %118, 5
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i32*
  store i32 %122, i32* %141, align 4
  %RCX.i1208 = getelementptr inbounds %union.anon, %union.anon* %38, i64 0, i32 0
  %142 = load i64, i64* %RBP.i, align 8
  %143 = add i64 %142, -8
  %144 = load i64, i64* %3, align 8
  %145 = add i64 %144, 3
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %143 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RCX.i1208, align 8
  store i64 %148, i64* %RAX.i1218, align 8
  %149 = sext i32 %147 to i64
  %150 = lshr i64 %149, 32
  store i64 %150, i64* %92, align 8
  %151 = load i32, i32* %R10D.i1255, align 4
  %152 = add i64 %144, 9
  store i64 %152, i64* %3, align 8
  %153 = sext i32 %151 to i64
  %154 = shl nuw i64 %150, 32
  %155 = or i64 %154, %148
  %156 = sdiv i64 %155, %153
  %157 = shl i64 %156, 32
  %158 = ashr exact i64 %157, 32
  %159 = icmp eq i64 %156, %158
  br i1 %159, label %162, label %160

; <label>:160:                                    ; preds = %routine_idivl__r10d.exit1216
  %161 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %152, %struct.Memory* %120)
  %.pre84 = load i64, i64* %RAX.i1218, align 8
  %.pre85 = load i64, i64* %3, align 8
  %.pre86 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r10d.exit

; <label>:162:                                    ; preds = %routine_idivl__r10d.exit1216
  %163 = srem i64 %155, %153
  %164 = and i64 %156, 4294967295
  store i64 %164, i64* %RAX.i1218, align 8
  %165 = and i64 %163, 4294967295
  store i64 %165, i64* %RDX.i1213.pre-phi, align 8
  store i8 0, i8* %.pre-phi, align 1
  store i8 0, i8* %.pre-phi101, align 1
  store i8 0, i8* %.pre-phi103, align 1
  store i8 0, i8* %.pre-phi105, align 1
  store i8 0, i8* %.pre-phi107, align 1
  store i8 0, i8* %.pre-phi109, align 1
  br label %routine_idivl__r10d.exit

routine_idivl__r10d.exit:                         ; preds = %162, %160
  %166 = phi i64 [ %.pre86, %160 ], [ %142, %162 ]
  %167 = phi i64 [ %.pre85, %160 ], [ %152, %162 ]
  %168 = phi i64 [ %.pre84, %160 ], [ %164, %162 ]
  %169 = phi %struct.Memory* [ %161, %160 ], [ %120, %162 ]
  %170 = trunc i64 %168 to i32
  %171 = shl i32 %170, 1
  %172 = icmp slt i32 %170, 0
  %173 = icmp slt i32 %171, 0
  %174 = xor i1 %172, %173
  %175 = zext i32 %171 to i64
  store i64 %175, i64* %RAX.i1218, align 8
  %.lobit18 = lshr i32 %170, 31
  %176 = trunc i32 %.lobit18 to i8
  store i8 %176, i8* %.pre-phi, align 1
  %177 = and i32 %171, 254
  %178 = tail call i32 @llvm.ctpop.i32(i32 %177)
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  store i8 %181, i8* %.pre-phi101, align 1
  store i8 0, i8* %.pre-phi103, align 1
  %182 = icmp eq i32 %171, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %.pre-phi105, align 1
  %184 = lshr i32 %170, 30
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  store i8 %186, i8* %.pre-phi107, align 1
  %187 = zext i1 %174 to i8
  store i8 %187, i8* %.pre-phi109, align 1
  %188 = add i64 %166, -44
  %189 = add i64 %167, 5
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i32*
  store i32 %171, i32* %190, align 4
  %191 = load i64, i64* %RBP.i, align 8
  %192 = add i64 %191, -40
  %193 = load i64, i64* %3, align 8
  %194 = add i64 %193, 3
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %192 to i32*
  %196 = load i32, i32* %195, align 4
  %197 = add i32 %196, 2
  %198 = zext i32 %197 to i64
  store i64 %198, i64* %RAX.i1218, align 8
  %199 = icmp ugt i32 %196, -3
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %.pre-phi, align 1
  %201 = and i32 %197, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %.pre-phi101, align 1
  %206 = xor i32 %197, %196
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %.pre-phi103, align 1
  %210 = icmp eq i32 %197, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %.pre-phi105, align 1
  %212 = lshr i32 %197, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %.pre-phi107, align 1
  %214 = lshr i32 %196, 31
  %215 = xor i32 %212, %214
  %216 = add nuw nsw i32 %215, %212
  %217 = icmp eq i32 %216, 2
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %.pre-phi109, align 1
  %219 = add i64 %191, -48
  %220 = add i64 %193, 9
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  store i32 %197, i32* %221, align 4
  %222 = load i64, i64* %RBP.i, align 8
  %223 = add i64 %222, -44
  %224 = load i64, i64* %3, align 8
  %225 = add i64 %224, 3
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %223 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = add i32 %227, 2
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RAX.i1218, align 8
  %230 = icmp ugt i32 %227, -3
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %.pre-phi, align 1
  %232 = and i32 %228, 255
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232)
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  store i8 %236, i8* %.pre-phi101, align 1
  %237 = xor i32 %228, %227
  %238 = lshr i32 %237, 4
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  store i8 %240, i8* %.pre-phi103, align 1
  %241 = icmp eq i32 %228, 0
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %.pre-phi105, align 1
  %243 = lshr i32 %228, 31
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* %.pre-phi107, align 1
  %245 = lshr i32 %227, 31
  %246 = xor i32 %243, %245
  %247 = add nuw nsw i32 %246, %243
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %.pre-phi109, align 1
  %250 = add i64 %222, -52
  %251 = add i64 %224, 9
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  store i32 %228, i32* %252, align 4
  %253 = load i64, i64* %RBP.i, align 8
  %254 = add i64 %253, -24
  %255 = load i64, i64* %3, align 8
  %256 = add i64 %255, 4
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %254 to i32*
  %258 = load i32, i32* %257, align 4
  store i8 0, i8* %.pre-phi, align 1
  %259 = and i32 %258, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %.pre-phi101, align 1
  store i8 0, i8* %.pre-phi103, align 1
  %264 = icmp eq i32 %258, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %.pre-phi105, align 1
  %266 = lshr i32 %258, 31
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %.pre-phi107, align 1
  store i8 0, i8* %.pre-phi109, align 1
  %268 = icmp ne i8 %267, 0
  %.v = select i1 %268, i64 6, i64 237
  %269 = add i64 %256, %.v
  store i64 %269, i64* %3, align 8
  br i1 %268, label %block_490ce2, label %block_.L_490dc9

block_490ce2:                                     ; preds = %routine_idivl__r10d.exit
  %270 = add i64 %253, -44
  %271 = add i64 %269, 3
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RAX.i1218, align 8
  %275 = add i64 %253, -36
  %276 = add i64 %269, 6
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i32*
  store i32 %273, i32* %277, align 4
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_490ce8

block_.L_490ce8:                                  ; preds = %block_.L_490db1, %block_490ce2
  %278 = phi i64 [ %727, %block_.L_490db1 ], [ %.pre97, %block_490ce2 ]
  %279 = load i64, i64* %RBP.i, align 8
  %280 = add i64 %279, -36
  %281 = add i64 %278, 3
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RAX.i1218, align 8
  %285 = add i64 %279, -52
  %286 = add i64 %278, 6
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = sub i32 %283, %288
  %290 = icmp ult i32 %283, %288
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %.pre-phi, align 1
  %292 = and i32 %289, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %.pre-phi101, align 1
  %297 = xor i32 %288, %283
  %298 = xor i32 %297, %289
  %299 = lshr i32 %298, 4
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  store i8 %301, i8* %.pre-phi103, align 1
  %302 = icmp eq i32 %289, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %.pre-phi105, align 1
  %304 = lshr i32 %289, 31
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* %.pre-phi107, align 1
  %306 = lshr i32 %283, 31
  %307 = lshr i32 %288, 31
  %308 = xor i32 %307, %306
  %309 = xor i32 %304, %306
  %310 = add nuw nsw i32 %309, %308
  %311 = icmp eq i32 %310, 2
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %.pre-phi109, align 1
  %313 = icmp ne i8 %305, 0
  %314 = xor i1 %313, %311
  %.v126 = select i1 %314, i64 12, i64 220
  %315 = add i64 %278, %.v126
  store i64 %315, i64* %3, align 8
  br i1 %314, label %block_490cf4, label %block_.L_490dc4

block_490cf4:                                     ; preds = %block_.L_490ce8
  %316 = add i64 %279, -40
  %317 = add i64 %315, 3
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RAX.i1218, align 8
  %321 = add i64 %279, -32
  %322 = add i64 %315, 6
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  store i32 %319, i32* %323, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_490cfa

block_.L_490cfa:                                  ; preds = %block_490d06, %block_490cf4
  %324 = phi i64 [ %697, %block_490d06 ], [ %.pre98, %block_490cf4 ]
  %325 = load i64, i64* %RBP.i, align 8
  %326 = add i64 %325, -32
  %327 = add i64 %324, 3
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX.i1218, align 8
  %331 = add i64 %325, -48
  %332 = add i64 %324, 6
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = sub i32 %329, %334
  %336 = icmp ult i32 %329, %334
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %.pre-phi, align 1
  %338 = and i32 %335, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %.pre-phi101, align 1
  %343 = xor i32 %334, %329
  %344 = xor i32 %343, %335
  %345 = lshr i32 %344, 4
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  store i8 %347, i8* %.pre-phi103, align 1
  %348 = icmp eq i32 %335, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %.pre-phi105, align 1
  %350 = lshr i32 %335, 31
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %.pre-phi107, align 1
  %352 = lshr i32 %329, 31
  %353 = lshr i32 %334, 31
  %354 = xor i32 %353, %352
  %355 = xor i32 %350, %352
  %356 = add nuw nsw i32 %355, %354
  %357 = icmp eq i32 %356, 2
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %.pre-phi109, align 1
  %359 = icmp ne i8 %351, 0
  %360 = xor i1 %359, %357
  %.v115 = select i1 %360, i64 12, i64 183
  %361 = add i64 %324, %.v115
  store i64 %361, i64* %3, align 8
  br i1 %360, label %block_490d06, label %block_.L_490db1

block_490d06:                                     ; preds = %block_.L_490cfa
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RAX.i1218, align 8
  %362 = add i64 %325, -4
  %363 = add i64 %361, 14
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  %367 = shl nsw i64 %366, 7
  store i64 %367, i64* %RCX.i1208, align 8
  %368 = add i64 %367, ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64)
  store i64 %368, i64* %RDX.i1213.pre-phi, align 8
  %369 = icmp ult i64 %368, ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64)
  %370 = icmp ult i64 %368, %367
  %371 = or i1 %369, %370
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %.pre-phi, align 1
  %373 = trunc i64 %368 to i32
  %374 = and i32 %373, 248
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374)
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %.pre-phi101, align 1
  %379 = xor i64 %368, ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64)
  %380 = lshr i64 %379, 4
  %381 = trunc i64 %380 to i8
  %382 = and i8 %381, 1
  store i8 %382, i8* %.pre-phi103, align 1
  %383 = icmp eq i64 %368, 0
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %.pre-phi105, align 1
  %385 = lshr i64 %368, 63
  %386 = trunc i64 %385 to i8
  store i8 %386, i8* %.pre-phi107, align 1
  %387 = lshr i64 %366, 56
  %388 = and i64 %387, 1
  %389 = xor i64 %385, lshr (i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64 63)
  %390 = xor i64 %385, %388
  %391 = add nuw nsw i64 %389, %390
  %392 = icmp eq i64 %391, 2
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %.pre-phi109, align 1
  %394 = add i64 %361, 28
  store i64 %394, i64* %3, align 8
  %395 = load i32, i32* %328, align 4
  %396 = sext i32 %395 to i64
  %397 = shl nsw i64 %396, 4
  store i64 %397, i64* %RCX.i1208, align 8
  %398 = add i64 %397, %368
  store i64 %398, i64* %RDX.i1213.pre-phi, align 8
  %399 = icmp ult i64 %398, %368
  %400 = icmp ult i64 %398, %397
  %401 = or i1 %399, %400
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %.pre-phi, align 1
  %403 = trunc i64 %398 to i32
  %404 = and i32 %403, 248
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = and i8 %406, 1
  %408 = xor i8 %407, 1
  store i8 %408, i8* %.pre-phi101, align 1
  %409 = xor i64 %397, %368
  %410 = xor i64 %409, %398
  %411 = lshr i64 %410, 4
  %412 = trunc i64 %411 to i8
  %413 = and i8 %412, 1
  store i8 %413, i8* %.pre-phi103, align 1
  %414 = icmp eq i64 %398, 0
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %.pre-phi105, align 1
  %416 = lshr i64 %398, 63
  %417 = trunc i64 %416 to i8
  store i8 %417, i8* %.pre-phi107, align 1
  %418 = lshr i64 %396, 59
  %419 = and i64 %418, 1
  %420 = xor i64 %416, %385
  %421 = xor i64 %416, %419
  %422 = add nuw nsw i64 %420, %421
  %423 = icmp eq i64 %422, 2
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %.pre-phi109, align 1
  %425 = load i64, i64* %RBP.i, align 8
  %426 = add i64 %425, -36
  %427 = add i64 %361, 39
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = sext i32 %429 to i64
  store i64 %430, i64* %RCX.i1208, align 8
  %431 = shl nsw i64 %430, 2
  %432 = add i64 %431, %398
  %433 = add i64 %361, 45
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i16*
  store i16 0, i16* %434, align 4
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -4
  %437 = load i64, i64* %3, align 8
  %438 = add i64 %437, 4
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %436 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = sext i32 %440 to i64
  %442 = shl nsw i64 %441, 7
  store i64 %442, i64* %RCX.i1208, align 8
  %443 = load i64, i64* %RAX.i1218, align 8
  %444 = add i64 %442, %443
  store i64 %444, i64* %RDX.i1213.pre-phi, align 8
  %445 = icmp ult i64 %444, %443
  %446 = icmp ult i64 %444, %442
  %447 = or i1 %445, %446
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %.pre-phi, align 1
  %449 = trunc i64 %444 to i32
  %450 = and i32 %449, 255
  %451 = tail call i32 @llvm.ctpop.i32(i32 %450)
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  store i8 %454, i8* %.pre-phi101, align 1
  %455 = xor i64 %443, %444
  %456 = lshr i64 %455, 4
  %457 = trunc i64 %456 to i8
  %458 = and i8 %457, 1
  store i8 %458, i8* %.pre-phi103, align 1
  %459 = icmp eq i64 %444, 0
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %.pre-phi105, align 1
  %461 = lshr i64 %444, 63
  %462 = trunc i64 %461 to i8
  store i8 %462, i8* %.pre-phi107, align 1
  %463 = lshr i64 %443, 63
  %464 = lshr i64 %441, 56
  %465 = and i64 %464, 1
  %466 = xor i64 %461, %463
  %467 = xor i64 %461, %465
  %468 = add nuw nsw i64 %466, %467
  %469 = icmp eq i64 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %.pre-phi109, align 1
  %471 = add i64 %435, -32
  %472 = add i64 %437, 18
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %471 to i32*
  %474 = load i32, i32* %473, align 4
  %475 = sext i32 %474 to i64
  %476 = shl nsw i64 %475, 4
  store i64 %476, i64* %RCX.i1208, align 8
  %477 = add i64 %476, %444
  store i64 %477, i64* %RDX.i1213.pre-phi, align 8
  %478 = icmp ult i64 %477, %444
  %479 = icmp ult i64 %477, %476
  %480 = or i1 %478, %479
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %.pre-phi, align 1
  %482 = trunc i64 %477 to i32
  %483 = and i32 %482, 255
  %484 = tail call i32 @llvm.ctpop.i32(i32 %483)
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  store i8 %487, i8* %.pre-phi101, align 1
  %488 = xor i64 %476, %444
  %489 = xor i64 %488, %477
  %490 = lshr i64 %489, 4
  %491 = trunc i64 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %.pre-phi103, align 1
  %493 = icmp eq i64 %477, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %.pre-phi105, align 1
  %495 = lshr i64 %477, 63
  %496 = trunc i64 %495 to i8
  store i8 %496, i8* %.pre-phi107, align 1
  %497 = lshr i64 %475, 59
  %498 = and i64 %497, 1
  %499 = xor i64 %495, %461
  %500 = xor i64 %495, %498
  %501 = add nuw nsw i64 %499, %500
  %502 = icmp eq i64 %501, 2
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %.pre-phi109, align 1
  %504 = load i64, i64* %RBP.i, align 8
  %505 = add i64 %504, -36
  %506 = add i64 %437, 29
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = sext i32 %508 to i64
  store i64 %509, i64* %RCX.i1208, align 8
  %510 = shl nsw i64 %509, 2
  %511 = add i64 %477, 2
  %512 = add i64 %511, %510
  %513 = add i64 %437, 36
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i16*
  store i16 0, i16* %514, align 2
  %515 = load i64, i64* %RBP.i, align 8
  %516 = add i64 %515, -4
  %517 = load i64, i64* %3, align 8
  %518 = add i64 %517, 4
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %516 to i32*
  %520 = load i32, i32* %519, align 4
  %521 = sext i32 %520 to i64
  %522 = shl nsw i64 %521, 7
  store i64 %522, i64* %RCX.i1208, align 8
  %523 = load i64, i64* %RAX.i1218, align 8
  %524 = add i64 %522, %523
  %525 = lshr i64 %524, 63
  %526 = add i64 %524, 64
  store i64 %526, i64* %RDX.i1213.pre-phi, align 8
  %527 = icmp ugt i64 %524, -65
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %.pre-phi, align 1
  %529 = trunc i64 %526 to i32
  %530 = and i32 %529, 255
  %531 = tail call i32 @llvm.ctpop.i32(i32 %530)
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, i8* %.pre-phi101, align 1
  %535 = xor i64 %526, %524
  %536 = lshr i64 %535, 4
  %537 = trunc i64 %536 to i8
  %538 = and i8 %537, 1
  store i8 %538, i8* %.pre-phi103, align 1
  %539 = icmp eq i64 %526, 0
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %.pre-phi105, align 1
  %541 = lshr i64 %526, 63
  %542 = trunc i64 %541 to i8
  store i8 %542, i8* %.pre-phi107, align 1
  %543 = xor i64 %541, %525
  %544 = add nuw nsw i64 %543, %541
  %545 = icmp eq i64 %544, 2
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %.pre-phi109, align 1
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -32
  %549 = add i64 %517, 22
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i32*
  %551 = load i32, i32* %550, align 4
  %552 = sext i32 %551 to i64
  %553 = shl nsw i64 %552, 4
  store i64 %553, i64* %RCX.i1208, align 8
  %554 = add i64 %553, %526
  store i64 %554, i64* %RDX.i1213.pre-phi, align 8
  %555 = icmp ult i64 %554, %526
  %556 = icmp ult i64 %554, %553
  %557 = or i1 %555, %556
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %.pre-phi, align 1
  %559 = trunc i64 %554 to i32
  %560 = and i32 %559, 255
  %561 = tail call i32 @llvm.ctpop.i32(i32 %560)
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = xor i8 %563, 1
  store i8 %564, i8* %.pre-phi101, align 1
  %565 = xor i64 %553, %526
  %566 = xor i64 %565, %554
  %567 = lshr i64 %566, 4
  %568 = trunc i64 %567 to i8
  %569 = and i8 %568, 1
  store i8 %569, i8* %.pre-phi103, align 1
  %570 = icmp eq i64 %554, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %.pre-phi105, align 1
  %572 = lshr i64 %554, 63
  %573 = trunc i64 %572 to i8
  store i8 %573, i8* %.pre-phi107, align 1
  %574 = lshr i64 %552, 59
  %575 = and i64 %574, 1
  %576 = xor i64 %572, %541
  %577 = xor i64 %572, %575
  %578 = add nuw nsw i64 %576, %577
  %579 = icmp eq i64 %578, 2
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %.pre-phi109, align 1
  %581 = add i64 %547, -36
  %582 = add i64 %517, 33
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = sext i32 %584 to i64
  store i64 %585, i64* %RCX.i1208, align 8
  %586 = shl nsw i64 %585, 2
  %587 = add i64 %586, %554
  %588 = add i64 %517, 39
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i16*
  store i16 0, i16* %589, align 2
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -4
  %592 = load i64, i64* %3, align 8
  %593 = add i64 %592, 4
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %591 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = sext i32 %595 to i64
  %597 = shl nsw i64 %596, 7
  store i64 %597, i64* %RCX.i1208, align 8
  %598 = load i64, i64* %RAX.i1218, align 8
  %599 = add i64 %597, %598
  %600 = lshr i64 %599, 63
  %601 = add i64 %599, 64
  store i64 %601, i64* %RAX.i1218, align 8
  %602 = icmp ugt i64 %599, -65
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %.pre-phi, align 1
  %604 = trunc i64 %601 to i32
  %605 = and i32 %604, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605)
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %.pre-phi101, align 1
  %610 = xor i64 %601, %599
  %611 = lshr i64 %610, 4
  %612 = trunc i64 %611 to i8
  %613 = and i8 %612, 1
  store i8 %613, i8* %.pre-phi103, align 1
  %614 = icmp eq i64 %601, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %.pre-phi105, align 1
  %616 = lshr i64 %601, 63
  %617 = trunc i64 %616 to i8
  store i8 %617, i8* %.pre-phi107, align 1
  %618 = xor i64 %616, %600
  %619 = add nuw nsw i64 %618, %616
  %620 = icmp eq i64 %619, 2
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %.pre-phi109, align 1
  %622 = add i64 %590, -32
  %623 = add i64 %592, 19
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = sext i32 %625 to i64
  %627 = shl nsw i64 %626, 4
  store i64 %627, i64* %RCX.i1208, align 8
  %628 = add i64 %627, %601
  store i64 %628, i64* %RAX.i1218, align 8
  %629 = icmp ult i64 %628, %601
  %630 = icmp ult i64 %628, %627
  %631 = or i1 %629, %630
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %.pre-phi, align 1
  %633 = trunc i64 %628 to i32
  %634 = and i32 %633, 255
  %635 = tail call i32 @llvm.ctpop.i32(i32 %634)
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  %638 = xor i8 %637, 1
  store i8 %638, i8* %.pre-phi101, align 1
  %639 = xor i64 %627, %601
  %640 = xor i64 %639, %628
  %641 = lshr i64 %640, 4
  %642 = trunc i64 %641 to i8
  %643 = and i8 %642, 1
  store i8 %643, i8* %.pre-phi103, align 1
  %644 = icmp eq i64 %628, 0
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %.pre-phi105, align 1
  %646 = lshr i64 %628, 63
  %647 = trunc i64 %646 to i8
  store i8 %647, i8* %.pre-phi107, align 1
  %648 = lshr i64 %626, 59
  %649 = and i64 %648, 1
  %650 = xor i64 %646, %616
  %651 = xor i64 %646, %649
  %652 = add nuw nsw i64 %650, %651
  %653 = icmp eq i64 %652, 2
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %.pre-phi109, align 1
  %655 = load i64, i64* %RBP.i, align 8
  %656 = add i64 %655, -36
  %657 = add i64 %592, 30
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = sext i32 %659 to i64
  store i64 %660, i64* %RCX.i1208, align 8
  %661 = shl nsw i64 %660, 2
  %662 = add i64 %628, 2
  %663 = add i64 %662, %661
  %664 = add i64 %592, 37
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i16*
  store i16 0, i16* %665, align 2
  %666 = load i64, i64* %RBP.i, align 8
  %667 = add i64 %666, -32
  %668 = load i64, i64* %3, align 8
  %669 = add i64 %668, 3
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %667 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = add i32 %671, 1
  %673 = zext i32 %672 to i64
  store i64 %673, i64* %RAX.i1218, align 8
  %674 = icmp eq i32 %671, -1
  %675 = icmp eq i32 %672, 0
  %676 = or i1 %674, %675
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %.pre-phi, align 1
  %678 = and i32 %672, 255
  %679 = tail call i32 @llvm.ctpop.i32(i32 %678)
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  store i8 %682, i8* %.pre-phi101, align 1
  %683 = xor i32 %672, %671
  %684 = lshr i32 %683, 4
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  store i8 %686, i8* %.pre-phi103, align 1
  %687 = zext i1 %675 to i8
  store i8 %687, i8* %.pre-phi105, align 1
  %688 = lshr i32 %672, 31
  %689 = trunc i32 %688 to i8
  store i8 %689, i8* %.pre-phi107, align 1
  %690 = lshr i32 %671, 31
  %691 = xor i32 %688, %690
  %692 = add nuw nsw i32 %691, %688
  %693 = icmp eq i32 %692, 2
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %.pre-phi109, align 1
  %695 = add i64 %668, 9
  store i64 %695, i64* %3, align 8
  store i32 %672, i32* %670, align 4
  %696 = load i64, i64* %3, align 8
  %697 = add i64 %696, -178
  store i64 %697, i64* %3, align 8
  br label %block_.L_490cfa

block_.L_490db1:                                  ; preds = %block_.L_490cfa
  %698 = add i64 %325, -36
  %699 = add i64 %361, 8
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = add i32 %701, 1
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %RAX.i1218, align 8
  %704 = icmp eq i32 %701, -1
  %705 = icmp eq i32 %702, 0
  %706 = or i1 %704, %705
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %.pre-phi, align 1
  %708 = and i32 %702, 255
  %709 = tail call i32 @llvm.ctpop.i32(i32 %708)
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  store i8 %712, i8* %.pre-phi101, align 1
  %713 = xor i32 %702, %701
  %714 = lshr i32 %713, 4
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  store i8 %716, i8* %.pre-phi103, align 1
  %717 = zext i1 %705 to i8
  store i8 %717, i8* %.pre-phi105, align 1
  %718 = lshr i32 %702, 31
  %719 = trunc i32 %718 to i8
  store i8 %719, i8* %.pre-phi107, align 1
  %720 = lshr i32 %701, 31
  %721 = xor i32 %718, %720
  %722 = add nuw nsw i32 %721, %718
  %723 = icmp eq i32 %722, 2
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %.pre-phi109, align 1
  %725 = add i64 %361, 14
  store i64 %725, i64* %3, align 8
  store i32 %702, i32* %700, align 4
  %726 = load i64, i64* %3, align 8
  %727 = add i64 %726, -215
  store i64 %727, i64* %3, align 8
  br label %block_.L_490ce8

block_.L_490dc4:                                  ; preds = %block_.L_490ce8
  %728 = add i64 %315, 1552
  br label %block_.L_4913d4

block_.L_490dc9:                                  ; preds = %routine_idivl__r10d.exit
  %729 = add i64 %253, -28
  %730 = add i64 %269, 4
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i32*
  %732 = load i32, i32* %731, align 4
  store i8 0, i8* %.pre-phi, align 1
  %733 = and i32 %732, 255
  %734 = tail call i32 @llvm.ctpop.i32(i32 %733)
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  store i8 %737, i8* %.pre-phi101, align 1
  store i8 0, i8* %.pre-phi103, align 1
  %738 = icmp eq i32 %732, 0
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %.pre-phi105, align 1
  %740 = lshr i32 %732, 31
  %741 = trunc i32 %740 to i8
  store i8 %741, i8* %.pre-phi107, align 1
  store i8 0, i8* %.pre-phi109, align 1
  %.v116 = select i1 %738, i64 10, i64 386
  %742 = add i64 %269, %.v116
  store i64 %742, i64* %3, align 8
  br i1 %738, label %block_490dd3, label %block_.L_490f4b

block_490dd3:                                     ; preds = %block_.L_490dc9
  %743 = add i64 %253, -44
  %744 = add i64 %742, 3
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i32*
  %746 = load i32, i32* %745, align 4
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RAX.i1218, align 8
  %748 = add i64 %253, -36
  %749 = add i64 %742, 6
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  store i32 %746, i32* %750, align 4
  %RSI.i990 = getelementptr inbounds %union.anon, %union.anon* %24, i64 0, i32 0
  %DI.i968 = bitcast %union.anon* %19 to i16*
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_490dd9

block_.L_490dd9:                                  ; preds = %block_.L_490f33, %block_490dd3
  %751 = phi i64 [ %1390, %block_.L_490f33 ], [ %.pre87, %block_490dd3 ]
  %752 = load i64, i64* %RBP.i, align 8
  %753 = add i64 %752, -36
  %754 = add i64 %751, 3
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = zext i32 %756 to i64
  store i64 %757, i64* %RAX.i1218, align 8
  %758 = add i64 %752, -52
  %759 = add i64 %751, 6
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i32*
  %761 = load i32, i32* %760, align 4
  %762 = sub i32 %756, %761
  %763 = icmp ult i32 %756, %761
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %.pre-phi, align 1
  %765 = and i32 %762, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %.pre-phi101, align 1
  %770 = xor i32 %761, %756
  %771 = xor i32 %770, %762
  %772 = lshr i32 %771, 4
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  store i8 %774, i8* %.pre-phi103, align 1
  %775 = icmp eq i32 %762, 0
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %.pre-phi105, align 1
  %777 = lshr i32 %762, 31
  %778 = trunc i32 %777 to i8
  store i8 %778, i8* %.pre-phi107, align 1
  %779 = lshr i32 %756, 31
  %780 = lshr i32 %761, 31
  %781 = xor i32 %780, %779
  %782 = xor i32 %777, %779
  %783 = add nuw nsw i32 %782, %781
  %784 = icmp eq i32 %783, 2
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %.pre-phi109, align 1
  %786 = icmp ne i8 %778, 0
  %787 = xor i1 %786, %784
  %.v125 = select i1 %787, i64 12, i64 365
  %788 = add i64 %751, %.v125
  store i64 %788, i64* %3, align 8
  br i1 %787, label %block_490de5, label %block_.L_490f46

block_490de5:                                     ; preds = %block_.L_490dd9
  %789 = add i64 %752, -40
  %790 = add i64 %788, 3
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RAX.i1218, align 8
  %794 = add i64 %752, -32
  %795 = add i64 %788, 6
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i32*
  store i32 %792, i32* %796, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_490deb

block_.L_490deb:                                  ; preds = %block_490df7, %block_490de5
  %797 = phi i64 [ %1360, %block_490df7 ], [ %.pre88, %block_490de5 ]
  %798 = load i64, i64* %RBP.i, align 8
  %799 = add i64 %798, -32
  %800 = add i64 %797, 3
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RAX.i1218, align 8
  %804 = add i64 %798, -48
  %805 = add i64 %797, 6
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i32*
  %807 = load i32, i32* %806, align 4
  %808 = sub i32 %802, %807
  %809 = icmp ult i32 %802, %807
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %.pre-phi, align 1
  %811 = and i32 %808, 255
  %812 = tail call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  store i8 %815, i8* %.pre-phi101, align 1
  %816 = xor i32 %807, %802
  %817 = xor i32 %816, %808
  %818 = lshr i32 %817, 4
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  store i8 %820, i8* %.pre-phi103, align 1
  %821 = icmp eq i32 %808, 0
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %.pre-phi105, align 1
  %823 = lshr i32 %808, 31
  %824 = trunc i32 %823 to i8
  store i8 %824, i8* %.pre-phi107, align 1
  %825 = lshr i32 %802, 31
  %826 = lshr i32 %807, 31
  %827 = xor i32 %826, %825
  %828 = xor i32 %823, %825
  %829 = add nuw nsw i32 %828, %827
  %830 = icmp eq i32 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %.pre-phi109, align 1
  %832 = icmp ne i8 %824, 0
  %833 = xor i1 %832, %830
  %.v110 = select i1 %833, i64 12, i64 328
  %834 = add i64 %797, %.v110
  store i64 %834, i64* %3, align 8
  br i1 %833, label %block_490df7, label %block_.L_490f33

block_490df7:                                     ; preds = %block_.L_490deb
  store i64 ptrtoint (%G__0x6d32e0_type* @G__0x6d32e0 to i64), i64* %RAX.i1218, align 8
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RCX.i1208, align 8
  %835 = add i64 %798, -64
  %836 = add i64 %834, 24
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i64*
  %838 = load i64, i64* %837, align 8
  store i64 %838, i64* %RDX.i1213.pre-phi, align 8
  %839 = add i64 %834, 28
  store i64 %839, i64* %3, align 8
  %840 = load i32, i32* %801, align 4
  %841 = sext i32 %840 to i64
  store i64 %841, i64* %RSI.i990, align 8
  %842 = shl nsw i64 %841, 3
  %843 = add i64 %842, %838
  %844 = add i64 %834, 32
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i64*
  %846 = load i64, i64* %845, align 8
  store i64 %846, i64* %RDX.i1213.pre-phi, align 8
  %847 = add i64 %798, -36
  %848 = add i64 %834, 36
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = sext i32 %850 to i64
  store i64 %851, i64* %RSI.i990, align 8
  %852 = shl nsw i64 %851, 3
  %853 = add i64 %852, %846
  %854 = add i64 %834, 40
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i64*
  %856 = load i64, i64* %855, align 8
  store i64 %856, i64* %RDX.i1213.pre-phi, align 8
  %857 = add i64 %834, 43
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i64*
  %859 = load i64, i64* %858, align 8
  store i64 %859, i64* %RDX.i1213.pre-phi, align 8
  %860 = add i64 %798, -16
  %861 = add i64 %834, 47
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i32*
  %863 = load i32, i32* %862, align 4
  %864 = sext i32 %863 to i64
  store i64 %864, i64* %RSI.i990, align 8
  %865 = shl nsw i64 %864, 3
  %866 = add i64 %865, %859
  %867 = add i64 %834, 51
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i64*
  %869 = load i64, i64* %868, align 8
  store i64 %869, i64* %RDX.i1213.pre-phi, align 8
  %870 = add i64 %869, 32
  %871 = add i64 %834, 55
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i64*
  %873 = load i64, i64* %872, align 8
  store i64 %873, i64* %RDX.i1213.pre-phi, align 8
  %874 = add i64 %834, 58
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i16*
  %876 = load i16, i16* %875, align 2
  store i16 %876, i16* %DI.i968, align 2
  %877 = add i64 %798, -4
  %878 = add i64 %834, 62
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = sext i32 %880 to i64
  %882 = shl nsw i64 %881, 7
  store i64 %882, i64* %RDX.i1213.pre-phi, align 8
  %883 = add i64 %882, ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64)
  store i64 %883, i64* %RSI.i990, align 8
  %884 = icmp ult i64 %883, ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64)
  %885 = icmp ult i64 %883, %882
  %886 = or i1 %884, %885
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %.pre-phi, align 1
  %888 = trunc i64 %883 to i32
  %889 = and i32 %888, 248
  %890 = tail call i32 @llvm.ctpop.i32(i32 %889)
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  store i8 %893, i8* %.pre-phi101, align 1
  %894 = xor i64 %883, ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64)
  %895 = lshr i64 %894, 4
  %896 = trunc i64 %895 to i8
  %897 = and i8 %896, 1
  store i8 %897, i8* %.pre-phi103, align 1
  %898 = icmp eq i64 %883, 0
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %.pre-phi105, align 1
  %900 = lshr i64 %883, 63
  %901 = trunc i64 %900 to i8
  store i8 %901, i8* %.pre-phi107, align 1
  %902 = lshr i64 %881, 56
  %903 = and i64 %902, 1
  %904 = xor i64 %900, lshr (i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64 63)
  %905 = xor i64 %900, %903
  %906 = add nuw nsw i64 %904, %905
  %907 = icmp eq i64 %906, 2
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %.pre-phi109, align 1
  %909 = load i64, i64* %RBP.i, align 8
  %910 = add i64 %909, -32
  %911 = add i64 %834, 76
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = sext i32 %913 to i64
  %915 = shl nsw i64 %914, 4
  store i64 %915, i64* %RDX.i1213.pre-phi, align 8
  %916 = add i64 %915, %883
  store i64 %916, i64* %RSI.i990, align 8
  %917 = icmp ult i64 %916, %883
  %918 = icmp ult i64 %916, %915
  %919 = or i1 %917, %918
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %.pre-phi, align 1
  %921 = trunc i64 %916 to i32
  %922 = and i32 %921, 248
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %.pre-phi101, align 1
  %927 = xor i64 %915, %883
  %928 = xor i64 %927, %916
  %929 = lshr i64 %928, 4
  %930 = trunc i64 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %.pre-phi103, align 1
  %932 = icmp eq i64 %916, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %.pre-phi105, align 1
  %934 = lshr i64 %916, 63
  %935 = trunc i64 %934 to i8
  store i8 %935, i8* %.pre-phi107, align 1
  %936 = lshr i64 %914, 59
  %937 = and i64 %936, 1
  %938 = xor i64 %934, %900
  %939 = xor i64 %934, %937
  %940 = add nuw nsw i64 %938, %939
  %941 = icmp eq i64 %940, 2
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %.pre-phi109, align 1
  %943 = add i64 %909, -36
  %944 = add i64 %834, 87
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  %947 = sext i32 %946 to i64
  store i64 %947, i64* %RDX.i1213.pre-phi, align 8
  %948 = shl nsw i64 %947, 2
  %949 = add i64 %948, %916
  %950 = load i16, i16* %DI.i968, align 2
  %951 = add i64 %834, 91
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %949 to i16*
  store i16 %950, i16* %952, align 4
  %953 = load i64, i64* %RBP.i, align 8
  %954 = add i64 %953, -64
  %955 = load i64, i64* %3, align 8
  %956 = add i64 %955, 4
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %954 to i64*
  %958 = load i64, i64* %957, align 8
  store i64 %958, i64* %RDX.i1213.pre-phi, align 8
  %959 = add i64 %953, -32
  %960 = add i64 %955, 8
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = sext i32 %962 to i64
  store i64 %963, i64* %RSI.i990, align 8
  %964 = shl nsw i64 %963, 3
  %965 = add i64 %964, %958
  %966 = add i64 %955, 12
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i64*
  %968 = load i64, i64* %967, align 8
  store i64 %968, i64* %RDX.i1213.pre-phi, align 8
  %969 = add i64 %953, -36
  %970 = add i64 %955, 16
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = sext i32 %972 to i64
  store i64 %973, i64* %RSI.i990, align 8
  %974 = shl nsw i64 %973, 3
  %975 = add i64 %974, %968
  %976 = add i64 %955, 20
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i64*
  %978 = load i64, i64* %977, align 8
  store i64 %978, i64* %RDX.i1213.pre-phi, align 8
  %979 = add i64 %955, 23
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i64*
  %981 = load i64, i64* %980, align 8
  store i64 %981, i64* %RDX.i1213.pre-phi, align 8
  %982 = add i64 %953, -16
  %983 = add i64 %955, 27
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i32*
  %985 = load i32, i32* %984, align 4
  %986 = sext i32 %985 to i64
  store i64 %986, i64* %RSI.i990, align 8
  %987 = shl nsw i64 %986, 3
  %988 = add i64 %987, %981
  %989 = add i64 %955, 31
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %988 to i64*
  %991 = load i64, i64* %990, align 8
  store i64 %991, i64* %RDX.i1213.pre-phi, align 8
  %992 = add i64 %991, 32
  %993 = add i64 %955, 35
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i64*
  %995 = load i64, i64* %994, align 8
  store i64 %995, i64* %RDX.i1213.pre-phi, align 8
  %996 = add i64 %995, 2
  %997 = add i64 %955, 39
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i16*
  %999 = load i16, i16* %998, align 2
  store i16 %999, i16* %DI.i968, align 2
  %1000 = add i64 %953, -4
  %1001 = add i64 %955, 43
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = sext i32 %1003 to i64
  %1005 = shl nsw i64 %1004, 7
  store i64 %1005, i64* %RDX.i1213.pre-phi, align 8
  %1006 = load i64, i64* %RCX.i1208, align 8
  %1007 = add i64 %1005, %1006
  store i64 %1007, i64* %RCX.i1208, align 8
  %1008 = icmp ult i64 %1007, %1006
  %1009 = icmp ult i64 %1007, %1005
  %1010 = or i1 %1008, %1009
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %.pre-phi, align 1
  %1012 = trunc i64 %1007 to i32
  %1013 = and i32 %1012, 255
  %1014 = tail call i32 @llvm.ctpop.i32(i32 %1013)
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  %1017 = xor i8 %1016, 1
  store i8 %1017, i8* %.pre-phi101, align 1
  %1018 = xor i64 %1006, %1007
  %1019 = lshr i64 %1018, 4
  %1020 = trunc i64 %1019 to i8
  %1021 = and i8 %1020, 1
  store i8 %1021, i8* %.pre-phi103, align 1
  %1022 = icmp eq i64 %1007, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %.pre-phi105, align 1
  %1024 = lshr i64 %1007, 63
  %1025 = trunc i64 %1024 to i8
  store i8 %1025, i8* %.pre-phi107, align 1
  %1026 = lshr i64 %1006, 63
  %1027 = lshr i64 %1004, 56
  %1028 = and i64 %1027, 1
  %1029 = xor i64 %1024, %1026
  %1030 = xor i64 %1024, %1028
  %1031 = add nuw nsw i64 %1029, %1030
  %1032 = icmp eq i64 %1031, 2
  %1033 = zext i1 %1032 to i8
  store i8 %1033, i8* %.pre-phi109, align 1
  %1034 = load i64, i64* %RBP.i, align 8
  %1035 = add i64 %1034, -32
  %1036 = add i64 %955, 54
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i32*
  %1038 = load i32, i32* %1037, align 4
  %1039 = sext i32 %1038 to i64
  %1040 = shl nsw i64 %1039, 4
  store i64 %1040, i64* %RDX.i1213.pre-phi, align 8
  %1041 = add i64 %1040, %1007
  store i64 %1041, i64* %RCX.i1208, align 8
  %1042 = icmp ult i64 %1041, %1007
  %1043 = icmp ult i64 %1041, %1040
  %1044 = or i1 %1042, %1043
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %.pre-phi, align 1
  %1046 = trunc i64 %1041 to i32
  %1047 = and i32 %1046, 255
  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %.pre-phi101, align 1
  %1052 = xor i64 %1040, %1007
  %1053 = xor i64 %1052, %1041
  %1054 = lshr i64 %1053, 4
  %1055 = trunc i64 %1054 to i8
  %1056 = and i8 %1055, 1
  store i8 %1056, i8* %.pre-phi103, align 1
  %1057 = icmp eq i64 %1041, 0
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %.pre-phi105, align 1
  %1059 = lshr i64 %1041, 63
  %1060 = trunc i64 %1059 to i8
  store i8 %1060, i8* %.pre-phi107, align 1
  %1061 = lshr i64 %1039, 59
  %1062 = and i64 %1061, 1
  %1063 = xor i64 %1059, %1024
  %1064 = xor i64 %1059, %1062
  %1065 = add nuw nsw i64 %1063, %1064
  %1066 = icmp eq i64 %1065, 2
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %.pre-phi109, align 1
  %1068 = add i64 %1034, -36
  %1069 = add i64 %955, 65
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i32*
  %1071 = load i32, i32* %1070, align 4
  %1072 = sext i32 %1071 to i64
  store i64 %1072, i64* %RDX.i1213.pre-phi, align 8
  %1073 = shl nsw i64 %1072, 2
  %1074 = add i64 %1041, 2
  %1075 = add i64 %1074, %1073
  %1076 = load i16, i16* %DI.i968, align 2
  %1077 = add i64 %955, 70
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1075 to i16*
  store i16 %1076, i16* %1078, align 2
  %1079 = load i64, i64* %RBP.i, align 8
  %1080 = add i64 %1079, -72
  %1081 = load i64, i64* %3, align 8
  %1082 = add i64 %1081, 4
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1080 to i64*
  %1084 = load i64, i64* %1083, align 8
  store i64 %1084, i64* %RCX.i1208, align 8
  %1085 = add i64 %1079, -32
  %1086 = add i64 %1081, 8
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = sext i32 %1088 to i64
  store i64 %1089, i64* %RDX.i1213.pre-phi, align 8
  %1090 = shl nsw i64 %1089, 3
  %1091 = add i64 %1090, %1084
  %1092 = add i64 %1081, 12
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i64*
  %1094 = load i64, i64* %1093, align 8
  store i64 %1094, i64* %RCX.i1208, align 8
  %1095 = add i64 %1079, -36
  %1096 = add i64 %1081, 16
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = sext i32 %1098 to i64
  store i64 %1099, i64* %RDX.i1213.pre-phi, align 8
  %1100 = shl nsw i64 %1099, 3
  %1101 = add i64 %1100, %1094
  %1102 = add i64 %1081, 20
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i64*
  %1104 = load i64, i64* %1103, align 8
  store i64 %1104, i64* %RCX.i1208, align 8
  %1105 = add i64 %1081, 23
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i64*
  %1107 = load i64, i64* %1106, align 8
  store i64 %1107, i64* %RCX.i1208, align 8
  %1108 = add i64 %1079, -16
  %1109 = add i64 %1081, 27
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = sext i32 %1111 to i64
  store i64 %1112, i64* %RDX.i1213.pre-phi, align 8
  %1113 = shl nsw i64 %1112, 3
  %1114 = add i64 %1113, %1107
  %1115 = add i64 %1081, 31
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %RCX.i1208, align 8
  %1118 = add i64 %1117, 32
  %1119 = add i64 %1081, 35
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %RCX.i1208, align 8
  %1122 = add i64 %1081, 38
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i16*
  %1124 = load i16, i16* %1123, align 2
  store i16 %1124, i16* %DI.i968, align 2
  %1125 = add i64 %1079, -4
  %1126 = add i64 %1081, 42
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1125 to i32*
  %1128 = load i32, i32* %1127, align 4
  %1129 = sext i32 %1128 to i64
  %1130 = shl nsw i64 %1129, 7
  store i64 %1130, i64* %RCX.i1208, align 8
  %1131 = load i64, i64* %RAX.i1218, align 8
  %1132 = add i64 %1130, %1131
  store i64 %1132, i64* %RDX.i1213.pre-phi, align 8
  %1133 = icmp ult i64 %1132, %1131
  %1134 = icmp ult i64 %1132, %1130
  %1135 = or i1 %1133, %1134
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %.pre-phi, align 1
  %1137 = trunc i64 %1132 to i32
  %1138 = and i32 %1137, 255
  %1139 = tail call i32 @llvm.ctpop.i32(i32 %1138)
  %1140 = trunc i32 %1139 to i8
  %1141 = and i8 %1140, 1
  %1142 = xor i8 %1141, 1
  store i8 %1142, i8* %.pre-phi101, align 1
  %1143 = xor i64 %1131, %1132
  %1144 = lshr i64 %1143, 4
  %1145 = trunc i64 %1144 to i8
  %1146 = and i8 %1145, 1
  store i8 %1146, i8* %.pre-phi103, align 1
  %1147 = icmp eq i64 %1132, 0
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %.pre-phi105, align 1
  %1149 = lshr i64 %1132, 63
  %1150 = trunc i64 %1149 to i8
  store i8 %1150, i8* %.pre-phi107, align 1
  %1151 = lshr i64 %1131, 63
  %1152 = lshr i64 %1129, 56
  %1153 = and i64 %1152, 1
  %1154 = xor i64 %1149, %1151
  %1155 = xor i64 %1149, %1153
  %1156 = add nuw nsw i64 %1154, %1155
  %1157 = icmp eq i64 %1156, 2
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %.pre-phi109, align 1
  %1159 = load i64, i64* %RBP.i, align 8
  %1160 = add i64 %1159, -32
  %1161 = add i64 %1081, 56
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i32*
  %1163 = load i32, i32* %1162, align 4
  %1164 = sext i32 %1163 to i64
  %1165 = shl nsw i64 %1164, 4
  store i64 %1165, i64* %RCX.i1208, align 8
  %1166 = add i64 %1165, %1132
  store i64 %1166, i64* %RDX.i1213.pre-phi, align 8
  %1167 = icmp ult i64 %1166, %1132
  %1168 = icmp ult i64 %1166, %1165
  %1169 = or i1 %1167, %1168
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %.pre-phi, align 1
  %1171 = trunc i64 %1166 to i32
  %1172 = and i32 %1171, 255
  %1173 = tail call i32 @llvm.ctpop.i32(i32 %1172)
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  %1176 = xor i8 %1175, 1
  store i8 %1176, i8* %.pre-phi101, align 1
  %1177 = xor i64 %1165, %1132
  %1178 = xor i64 %1177, %1166
  %1179 = lshr i64 %1178, 4
  %1180 = trunc i64 %1179 to i8
  %1181 = and i8 %1180, 1
  store i8 %1181, i8* %.pre-phi103, align 1
  %1182 = icmp eq i64 %1166, 0
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %.pre-phi105, align 1
  %1184 = lshr i64 %1166, 63
  %1185 = trunc i64 %1184 to i8
  store i8 %1185, i8* %.pre-phi107, align 1
  %1186 = lshr i64 %1164, 59
  %1187 = and i64 %1186, 1
  %1188 = xor i64 %1184, %1149
  %1189 = xor i64 %1184, %1187
  %1190 = add nuw nsw i64 %1188, %1189
  %1191 = icmp eq i64 %1190, 2
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %.pre-phi109, align 1
  %1193 = add i64 %1159, -36
  %1194 = add i64 %1081, 67
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1193 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = sext i32 %1196 to i64
  store i64 %1197, i64* %RCX.i1208, align 8
  %1198 = shl nsw i64 %1197, 2
  %1199 = add i64 %1198, %1166
  %1200 = load i16, i16* %DI.i968, align 2
  %1201 = add i64 %1081, 71
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1199 to i16*
  store i16 %1200, i16* %1202, align 2
  %1203 = load i64, i64* %RBP.i, align 8
  %1204 = add i64 %1203, -72
  %1205 = load i64, i64* %3, align 8
  %1206 = add i64 %1205, 4
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1204 to i64*
  %1208 = load i64, i64* %1207, align 8
  store i64 %1208, i64* %RCX.i1208, align 8
  %1209 = add i64 %1203, -32
  %1210 = add i64 %1205, 8
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i32*
  %1212 = load i32, i32* %1211, align 4
  %1213 = sext i32 %1212 to i64
  store i64 %1213, i64* %RDX.i1213.pre-phi, align 8
  %1214 = shl nsw i64 %1213, 3
  %1215 = add i64 %1214, %1208
  %1216 = add i64 %1205, 12
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i64*
  %1218 = load i64, i64* %1217, align 8
  store i64 %1218, i64* %RCX.i1208, align 8
  %1219 = add i64 %1203, -36
  %1220 = add i64 %1205, 16
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = sext i32 %1222 to i64
  store i64 %1223, i64* %RDX.i1213.pre-phi, align 8
  %1224 = shl nsw i64 %1223, 3
  %1225 = add i64 %1224, %1218
  %1226 = add i64 %1205, 20
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i64*
  %1228 = load i64, i64* %1227, align 8
  store i64 %1228, i64* %RCX.i1208, align 8
  %1229 = add i64 %1205, 23
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to i64*
  %1231 = load i64, i64* %1230, align 8
  store i64 %1231, i64* %RCX.i1208, align 8
  %1232 = add i64 %1203, -16
  %1233 = add i64 %1205, 27
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = sext i32 %1235 to i64
  store i64 %1236, i64* %RDX.i1213.pre-phi, align 8
  %1237 = shl nsw i64 %1236, 3
  %1238 = add i64 %1237, %1231
  %1239 = add i64 %1205, 31
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1238 to i64*
  %1241 = load i64, i64* %1240, align 8
  store i64 %1241, i64* %RCX.i1208, align 8
  %1242 = add i64 %1241, 32
  %1243 = add i64 %1205, 35
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RCX.i1208, align 8
  %1246 = add i64 %1245, 2
  %1247 = add i64 %1205, 39
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i16*
  %1249 = load i16, i16* %1248, align 2
  store i16 %1249, i16* %DI.i968, align 2
  %1250 = add i64 %1203, -4
  %1251 = add i64 %1205, 43
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = shl nsw i64 %1254, 7
  store i64 %1255, i64* %RCX.i1208, align 8
  %1256 = load i64, i64* %RAX.i1218, align 8
  %1257 = add i64 %1255, %1256
  store i64 %1257, i64* %RAX.i1218, align 8
  %1258 = icmp ult i64 %1257, %1256
  %1259 = icmp ult i64 %1257, %1255
  %1260 = or i1 %1258, %1259
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %.pre-phi, align 1
  %1262 = trunc i64 %1257 to i32
  %1263 = and i32 %1262, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %.pre-phi101, align 1
  %1268 = xor i64 %1256, %1257
  %1269 = lshr i64 %1268, 4
  %1270 = trunc i64 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %.pre-phi103, align 1
  %1272 = icmp eq i64 %1257, 0
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %.pre-phi105, align 1
  %1274 = lshr i64 %1257, 63
  %1275 = trunc i64 %1274 to i8
  store i8 %1275, i8* %.pre-phi107, align 1
  %1276 = lshr i64 %1256, 63
  %1277 = lshr i64 %1254, 56
  %1278 = and i64 %1277, 1
  %1279 = xor i64 %1274, %1276
  %1280 = xor i64 %1274, %1278
  %1281 = add nuw nsw i64 %1279, %1280
  %1282 = icmp eq i64 %1281, 2
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %.pre-phi109, align 1
  %1284 = load i64, i64* %RBP.i, align 8
  %1285 = add i64 %1284, -32
  %1286 = add i64 %1205, 54
  store i64 %1286, i64* %3, align 8
  %1287 = inttoptr i64 %1285 to i32*
  %1288 = load i32, i32* %1287, align 4
  %1289 = sext i32 %1288 to i64
  %1290 = shl nsw i64 %1289, 4
  store i64 %1290, i64* %RCX.i1208, align 8
  %1291 = add i64 %1290, %1257
  store i64 %1291, i64* %RAX.i1218, align 8
  %1292 = icmp ult i64 %1291, %1257
  %1293 = icmp ult i64 %1291, %1290
  %1294 = or i1 %1292, %1293
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %.pre-phi, align 1
  %1296 = trunc i64 %1291 to i32
  %1297 = and i32 %1296, 255
  %1298 = tail call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  store i8 %1301, i8* %.pre-phi101, align 1
  %1302 = xor i64 %1290, %1257
  %1303 = xor i64 %1302, %1291
  %1304 = lshr i64 %1303, 4
  %1305 = trunc i64 %1304 to i8
  %1306 = and i8 %1305, 1
  store i8 %1306, i8* %.pre-phi103, align 1
  %1307 = icmp eq i64 %1291, 0
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %.pre-phi105, align 1
  %1309 = lshr i64 %1291, 63
  %1310 = trunc i64 %1309 to i8
  store i8 %1310, i8* %.pre-phi107, align 1
  %1311 = lshr i64 %1289, 59
  %1312 = and i64 %1311, 1
  %1313 = xor i64 %1309, %1274
  %1314 = xor i64 %1309, %1312
  %1315 = add nuw nsw i64 %1313, %1314
  %1316 = icmp eq i64 %1315, 2
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %.pre-phi109, align 1
  %1318 = add i64 %1284, -36
  %1319 = add i64 %1205, 65
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i32*
  %1321 = load i32, i32* %1320, align 4
  %1322 = sext i32 %1321 to i64
  store i64 %1322, i64* %RCX.i1208, align 8
  %1323 = shl nsw i64 %1322, 2
  %1324 = add i64 %1291, 2
  %1325 = add i64 %1324, %1323
  %1326 = load i16, i16* %DI.i968, align 2
  %1327 = add i64 %1205, 70
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1325 to i16*
  store i16 %1326, i16* %1328, align 2
  %1329 = load i64, i64* %RBP.i, align 8
  %1330 = add i64 %1329, -32
  %1331 = load i64, i64* %3, align 8
  %1332 = add i64 %1331, 3
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1330 to i32*
  %1334 = load i32, i32* %1333, align 4
  %1335 = add i32 %1334, 1
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RAX.i1218, align 8
  %1337 = icmp eq i32 %1334, -1
  %1338 = icmp eq i32 %1335, 0
  %1339 = or i1 %1337, %1338
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %.pre-phi, align 1
  %1341 = and i32 %1335, 255
  %1342 = tail call i32 @llvm.ctpop.i32(i32 %1341)
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = xor i8 %1344, 1
  store i8 %1345, i8* %.pre-phi101, align 1
  %1346 = xor i32 %1335, %1334
  %1347 = lshr i32 %1346, 4
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  store i8 %1349, i8* %.pre-phi103, align 1
  %1350 = zext i1 %1338 to i8
  store i8 %1350, i8* %.pre-phi105, align 1
  %1351 = lshr i32 %1335, 31
  %1352 = trunc i32 %1351 to i8
  store i8 %1352, i8* %.pre-phi107, align 1
  %1353 = lshr i32 %1334, 31
  %1354 = xor i32 %1351, %1353
  %1355 = add nuw nsw i32 %1354, %1351
  %1356 = icmp eq i32 %1355, 2
  %1357 = zext i1 %1356 to i8
  store i8 %1357, i8* %.pre-phi109, align 1
  %1358 = add i64 %1331, 9
  store i64 %1358, i64* %3, align 8
  store i32 %1335, i32* %1333, align 4
  %1359 = load i64, i64* %3, align 8
  %1360 = add i64 %1359, -323
  store i64 %1360, i64* %3, align 8
  br label %block_.L_490deb

block_.L_490f33:                                  ; preds = %block_.L_490deb
  %1361 = add i64 %798, -36
  %1362 = add i64 %834, 8
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i32*
  %1364 = load i32, i32* %1363, align 4
  %1365 = add i32 %1364, 1
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RAX.i1218, align 8
  %1367 = icmp eq i32 %1364, -1
  %1368 = icmp eq i32 %1365, 0
  %1369 = or i1 %1367, %1368
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %.pre-phi, align 1
  %1371 = and i32 %1365, 255
  %1372 = tail call i32 @llvm.ctpop.i32(i32 %1371)
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  %1375 = xor i8 %1374, 1
  store i8 %1375, i8* %.pre-phi101, align 1
  %1376 = xor i32 %1365, %1364
  %1377 = lshr i32 %1376, 4
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  store i8 %1379, i8* %.pre-phi103, align 1
  %1380 = zext i1 %1368 to i8
  store i8 %1380, i8* %.pre-phi105, align 1
  %1381 = lshr i32 %1365, 31
  %1382 = trunc i32 %1381 to i8
  store i8 %1382, i8* %.pre-phi107, align 1
  %1383 = lshr i32 %1364, 31
  %1384 = xor i32 %1381, %1383
  %1385 = add nuw nsw i32 %1384, %1381
  %1386 = icmp eq i32 %1385, 2
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %.pre-phi109, align 1
  %1388 = add i64 %834, 14
  store i64 %1388, i64* %3, align 8
  store i32 %1365, i32* %1363, align 4
  %1389 = load i64, i64* %3, align 8
  %1390 = add i64 %1389, -360
  store i64 %1390, i64* %3, align 8
  br label %block_.L_490dd9

block_.L_490f46:                                  ; preds = %block_.L_490dd9
  %1391 = add i64 %788, 1166
  br label %block_.L_4913d4

block_.L_490f4b:                                  ; preds = %block_.L_490dc9
  %1392 = add i64 %742, 4
  store i64 %1392, i64* %3, align 8
  %1393 = load i32, i32* %257, align 4
  store i8 0, i8* %.pre-phi, align 1
  %1394 = and i32 %1393, 255
  %1395 = tail call i32 @llvm.ctpop.i32(i32 %1394)
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  %1398 = xor i8 %1397, 1
  store i8 %1398, i8* %.pre-phi101, align 1
  store i8 0, i8* %.pre-phi103, align 1
  %1399 = icmp eq i32 %1393, 0
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %.pre-phi105, align 1
  %1401 = lshr i32 %1393, 31
  %1402 = trunc i32 %1401 to i8
  store i8 %1402, i8* %.pre-phi107, align 1
  store i8 0, i8* %.pre-phi109, align 1
  %.v117 = select i1 %1399, i64 20, i64 10
  %1403 = add i64 %742, %.v117
  store i64 %1403, i64* %3, align 8
  br i1 %1399, label %block_.L_490f5f, label %block_490f55

block_490f55:                                     ; preds = %block_.L_490f4b
  %1404 = add i64 %1403, 4
  store i64 %1404, i64* %3, align 8
  %1405 = load i32, i32* %257, align 4
  %1406 = add i32 %1405, -2
  %1407 = icmp ult i32 %1405, 2
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %.pre-phi, align 1
  %1409 = and i32 %1406, 255
  %1410 = tail call i32 @llvm.ctpop.i32(i32 %1409)
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  %1413 = xor i8 %1412, 1
  store i8 %1413, i8* %.pre-phi101, align 1
  %1414 = xor i32 %1406, %1405
  %1415 = lshr i32 %1414, 4
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  store i8 %1417, i8* %.pre-phi103, align 1
  %1418 = icmp eq i32 %1406, 0
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %.pre-phi105, align 1
  %1420 = lshr i32 %1406, 31
  %1421 = trunc i32 %1420 to i8
  store i8 %1421, i8* %.pre-phi107, align 1
  %1422 = lshr i32 %1405, 31
  %1423 = xor i32 %1420, %1422
  %1424 = add nuw nsw i32 %1423, %1422
  %1425 = icmp eq i32 %1424, 2
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %.pre-phi109, align 1
  %.v118 = select i1 %1418, i64 10, i64 402
  %1427 = add i64 %1403, %.v118
  store i64 %1427, i64* %3, align 8
  br i1 %1418, label %block_.L_490f5f, label %block_.L_4910e7

block_.L_490f5f:                                  ; preds = %block_490f55, %block_.L_490f4b
  %1428 = phi i64 [ %1427, %block_490f55 ], [ %1403, %block_.L_490f4b ]
  %1429 = add i64 %253, -44
  %1430 = add i64 %1428, 3
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i32*
  %1432 = load i32, i32* %1431, align 4
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RAX.i1218, align 8
  %1434 = add i64 %253, -36
  %1435 = add i64 %1428, 6
  store i64 %1435, i64* %3, align 8
  %1436 = inttoptr i64 %1434 to i32*
  store i32 %1432, i32* %1436, align 4
  %RSI.i724 = getelementptr inbounds %union.anon, %union.anon* %24, i64 0, i32 0
  %DI.i698 = bitcast %union.anon* %19 to i16*
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_490f65

block_.L_490f65:                                  ; preds = %block_.L_4910cf, %block_.L_490f5f
  %1437 = phi i64 [ %2102, %block_.L_4910cf ], [ %.pre91, %block_.L_490f5f ]
  %1438 = load i64, i64* %RBP.i, align 8
  %1439 = add i64 %1438, -36
  %1440 = add i64 %1437, 3
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i32*
  %1442 = load i32, i32* %1441, align 4
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RAX.i1218, align 8
  %1444 = add i64 %1438, -52
  %1445 = add i64 %1437, 6
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1444 to i32*
  %1447 = load i32, i32* %1446, align 4
  %1448 = sub i32 %1442, %1447
  %1449 = icmp ult i32 %1442, %1447
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %.pre-phi, align 1
  %1451 = and i32 %1448, 255
  %1452 = tail call i32 @llvm.ctpop.i32(i32 %1451)
  %1453 = trunc i32 %1452 to i8
  %1454 = and i8 %1453, 1
  %1455 = xor i8 %1454, 1
  store i8 %1455, i8* %.pre-phi101, align 1
  %1456 = xor i32 %1447, %1442
  %1457 = xor i32 %1456, %1448
  %1458 = lshr i32 %1457, 4
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  store i8 %1460, i8* %.pre-phi103, align 1
  %1461 = icmp eq i32 %1448, 0
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %.pre-phi105, align 1
  %1463 = lshr i32 %1448, 31
  %1464 = trunc i32 %1463 to i8
  store i8 %1464, i8* %.pre-phi107, align 1
  %1465 = lshr i32 %1442, 31
  %1466 = lshr i32 %1447, 31
  %1467 = xor i32 %1466, %1465
  %1468 = xor i32 %1463, %1465
  %1469 = add nuw nsw i32 %1468, %1467
  %1470 = icmp eq i32 %1469, 2
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %.pre-phi109, align 1
  %1472 = icmp ne i8 %1464, 0
  %1473 = xor i1 %1472, %1470
  %.v124 = select i1 %1473, i64 12, i64 381
  %1474 = add i64 %1437, %.v124
  store i64 %1474, i64* %3, align 8
  br i1 %1473, label %block_490f71, label %block_.L_4910e2

block_490f71:                                     ; preds = %block_.L_490f65
  %1475 = add i64 %1438, -40
  %1476 = add i64 %1474, 3
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1475 to i32*
  %1478 = load i32, i32* %1477, align 4
  %1479 = zext i32 %1478 to i64
  store i64 %1479, i64* %RAX.i1218, align 8
  %1480 = add i64 %1438, -32
  %1481 = add i64 %1474, 6
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i32*
  store i32 %1478, i32* %1482, align 4
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_490f77

block_.L_490f77:                                  ; preds = %block_490f83, %block_490f71
  %1483 = phi i64 [ %2072, %block_490f83 ], [ %.pre96, %block_490f71 ]
  %1484 = load i64, i64* %RBP.i, align 8
  %1485 = add i64 %1484, -32
  %1486 = add i64 %1483, 3
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1485 to i32*
  %1488 = load i32, i32* %1487, align 4
  %1489 = zext i32 %1488 to i64
  store i64 %1489, i64* %RAX.i1218, align 8
  %1490 = add i64 %1484, -48
  %1491 = add i64 %1483, 6
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i32*
  %1493 = load i32, i32* %1492, align 4
  %1494 = sub i32 %1488, %1493
  %1495 = icmp ult i32 %1488, %1493
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %.pre-phi, align 1
  %1497 = and i32 %1494, 255
  %1498 = tail call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  store i8 %1501, i8* %.pre-phi101, align 1
  %1502 = xor i32 %1493, %1488
  %1503 = xor i32 %1502, %1494
  %1504 = lshr i32 %1503, 4
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  store i8 %1506, i8* %.pre-phi103, align 1
  %1507 = icmp eq i32 %1494, 0
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %.pre-phi105, align 1
  %1509 = lshr i32 %1494, 31
  %1510 = trunc i32 %1509 to i8
  store i8 %1510, i8* %.pre-phi107, align 1
  %1511 = lshr i32 %1488, 31
  %1512 = lshr i32 %1493, 31
  %1513 = xor i32 %1512, %1511
  %1514 = xor i32 %1509, %1511
  %1515 = add nuw nsw i32 %1514, %1513
  %1516 = icmp eq i32 %1515, 2
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %.pre-phi109, align 1
  %1518 = icmp ne i8 %1510, 0
  %1519 = xor i1 %1518, %1516
  %.v113 = select i1 %1519, i64 12, i64 344
  %1520 = add i64 %1483, %.v113
  store i64 %1520, i64* %3, align 8
  br i1 %1519, label %block_490f83, label %block_.L_4910cf

block_490f83:                                     ; preds = %block_.L_490f77
  store i64 ptrtoint (%G__0x6d32e0_type* @G__0x6d32e0 to i64), i64* %RAX.i1218, align 8
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RCX.i1208, align 8
  %1521 = add i64 %1484, -64
  %1522 = add i64 %1520, 24
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i64*
  %1524 = load i64, i64* %1523, align 8
  store i64 %1524, i64* %RDX.i1213.pre-phi, align 8
  %1525 = add i64 %1520, 28
  store i64 %1525, i64* %3, align 8
  %1526 = load i32, i32* %1487, align 4
  %1527 = sext i32 %1526 to i64
  store i64 %1527, i64* %RSI.i724, align 8
  %1528 = shl nsw i64 %1527, 3
  %1529 = add i64 %1528, %1524
  %1530 = add i64 %1520, 32
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1529 to i64*
  %1532 = load i64, i64* %1531, align 8
  store i64 %1532, i64* %RDX.i1213.pre-phi, align 8
  %1533 = add i64 %1484, -36
  %1534 = add i64 %1520, 36
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = sext i32 %1536 to i64
  store i64 %1537, i64* %RSI.i724, align 8
  %1538 = shl nsw i64 %1537, 3
  %1539 = add i64 %1538, %1532
  %1540 = add i64 %1520, 40
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i64*
  %1542 = load i64, i64* %1541, align 8
  store i64 %1542, i64* %RDX.i1213.pre-phi, align 8
  %1543 = add i64 %1520, 43
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1542 to i64*
  %1545 = load i64, i64* %1544, align 8
  store i64 %1545, i64* %RDX.i1213.pre-phi, align 8
  %1546 = add i64 %1484, -16
  %1547 = add i64 %1520, 47
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i32*
  %1549 = load i32, i32* %1548, align 4
  %1550 = sext i32 %1549 to i64
  store i64 %1550, i64* %RSI.i724, align 8
  %1551 = shl nsw i64 %1550, 3
  %1552 = add i64 %1551, %1545
  %1553 = add i64 %1520, 51
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i64*
  %1555 = load i64, i64* %1554, align 8
  store i64 %1555, i64* %RDX.i1213.pre-phi, align 8
  %1556 = add i64 %1484, -12
  %1557 = add i64 %1520, 55
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1556 to i32*
  %1559 = load i32, i32* %1558, align 4
  %1560 = sext i32 %1559 to i64
  store i64 %1560, i64* %RSI.i724, align 8
  %1561 = shl nsw i64 %1560, 3
  %1562 = add i64 %1561, %1555
  %1563 = add i64 %1520, 59
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i64*
  %1565 = load i64, i64* %1564, align 8
  store i64 %1565, i64* %RDX.i1213.pre-phi, align 8
  %1566 = add i64 %1520, 62
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i16*
  %1568 = load i16, i16* %1567, align 2
  store i16 %1568, i16* %DI.i698, align 2
  %1569 = add i64 %1484, -4
  %1570 = add i64 %1520, 66
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = sext i32 %1572 to i64
  %1574 = shl nsw i64 %1573, 7
  store i64 %1574, i64* %RDX.i1213.pre-phi, align 8
  %1575 = load i64, i64* %RCX.i1208, align 8
  %1576 = add i64 %1574, %1575
  store i64 %1576, i64* %RSI.i724, align 8
  %1577 = icmp ult i64 %1576, %1575
  %1578 = icmp ult i64 %1576, %1574
  %1579 = or i1 %1577, %1578
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %.pre-phi, align 1
  %1581 = trunc i64 %1576 to i32
  %1582 = and i32 %1581, 255
  %1583 = tail call i32 @llvm.ctpop.i32(i32 %1582)
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  %1586 = xor i8 %1585, 1
  store i8 %1586, i8* %.pre-phi101, align 1
  %1587 = xor i64 %1575, %1576
  %1588 = lshr i64 %1587, 4
  %1589 = trunc i64 %1588 to i8
  %1590 = and i8 %1589, 1
  store i8 %1590, i8* %.pre-phi103, align 1
  %1591 = icmp eq i64 %1576, 0
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %.pre-phi105, align 1
  %1593 = lshr i64 %1576, 63
  %1594 = trunc i64 %1593 to i8
  store i8 %1594, i8* %.pre-phi107, align 1
  %1595 = lshr i64 %1575, 63
  %1596 = lshr i64 %1573, 56
  %1597 = and i64 %1596, 1
  %1598 = xor i64 %1593, %1595
  %1599 = xor i64 %1593, %1597
  %1600 = add nuw nsw i64 %1598, %1599
  %1601 = icmp eq i64 %1600, 2
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %.pre-phi109, align 1
  %1603 = load i64, i64* %RBP.i, align 8
  %1604 = add i64 %1603, -32
  %1605 = add i64 %1520, 80
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = sext i32 %1607 to i64
  %1609 = shl nsw i64 %1608, 4
  store i64 %1609, i64* %RDX.i1213.pre-phi, align 8
  %1610 = add i64 %1609, %1576
  store i64 %1610, i64* %RSI.i724, align 8
  %1611 = icmp ult i64 %1610, %1576
  %1612 = icmp ult i64 %1610, %1609
  %1613 = or i1 %1611, %1612
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %.pre-phi, align 1
  %1615 = trunc i64 %1610 to i32
  %1616 = and i32 %1615, 255
  %1617 = tail call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %.pre-phi101, align 1
  %1621 = xor i64 %1609, %1576
  %1622 = xor i64 %1621, %1610
  %1623 = lshr i64 %1622, 4
  %1624 = trunc i64 %1623 to i8
  %1625 = and i8 %1624, 1
  store i8 %1625, i8* %.pre-phi103, align 1
  %1626 = icmp eq i64 %1610, 0
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %.pre-phi105, align 1
  %1628 = lshr i64 %1610, 63
  %1629 = trunc i64 %1628 to i8
  store i8 %1629, i8* %.pre-phi107, align 1
  %1630 = lshr i64 %1608, 59
  %1631 = and i64 %1630, 1
  %1632 = xor i64 %1628, %1593
  %1633 = xor i64 %1628, %1631
  %1634 = add nuw nsw i64 %1632, %1633
  %1635 = icmp eq i64 %1634, 2
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %.pre-phi109, align 1
  %1637 = add i64 %1603, -36
  %1638 = add i64 %1520, 91
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i32*
  %1640 = load i32, i32* %1639, align 4
  %1641 = sext i32 %1640 to i64
  store i64 %1641, i64* %RDX.i1213.pre-phi, align 8
  %1642 = shl nsw i64 %1641, 2
  %1643 = add i64 %1642, %1610
  %1644 = load i16, i16* %DI.i698, align 2
  %1645 = add i64 %1520, 95
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1643 to i16*
  store i16 %1644, i16* %1646, align 2
  %1647 = load i64, i64* %RBP.i, align 8
  %1648 = add i64 %1647, -64
  %1649 = load i64, i64* %3, align 8
  %1650 = add i64 %1649, 4
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1648 to i64*
  %1652 = load i64, i64* %1651, align 8
  store i64 %1652, i64* %RDX.i1213.pre-phi, align 8
  %1653 = add i64 %1647, -32
  %1654 = add i64 %1649, 8
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1653 to i32*
  %1656 = load i32, i32* %1655, align 4
  %1657 = sext i32 %1656 to i64
  store i64 %1657, i64* %RSI.i724, align 8
  %1658 = shl nsw i64 %1657, 3
  %1659 = add i64 %1658, %1652
  %1660 = add i64 %1649, 12
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1659 to i64*
  %1662 = load i64, i64* %1661, align 8
  store i64 %1662, i64* %RDX.i1213.pre-phi, align 8
  %1663 = add i64 %1647, -36
  %1664 = add i64 %1649, 16
  store i64 %1664, i64* %3, align 8
  %1665 = inttoptr i64 %1663 to i32*
  %1666 = load i32, i32* %1665, align 4
  %1667 = sext i32 %1666 to i64
  store i64 %1667, i64* %RSI.i724, align 8
  %1668 = shl nsw i64 %1667, 3
  %1669 = add i64 %1668, %1662
  %1670 = add i64 %1649, 20
  store i64 %1670, i64* %3, align 8
  %1671 = inttoptr i64 %1669 to i64*
  %1672 = load i64, i64* %1671, align 8
  store i64 %1672, i64* %RDX.i1213.pre-phi, align 8
  %1673 = add i64 %1649, 23
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i64*
  %1675 = load i64, i64* %1674, align 8
  store i64 %1675, i64* %RDX.i1213.pre-phi, align 8
  %1676 = add i64 %1647, -16
  %1677 = add i64 %1649, 27
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i32*
  %1679 = load i32, i32* %1678, align 4
  %1680 = sext i32 %1679 to i64
  store i64 %1680, i64* %RSI.i724, align 8
  %1681 = shl nsw i64 %1680, 3
  %1682 = add i64 %1681, %1675
  %1683 = add i64 %1649, 31
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i64*
  %1685 = load i64, i64* %1684, align 8
  store i64 %1685, i64* %RDX.i1213.pre-phi, align 8
  %1686 = add i64 %1647, -12
  %1687 = add i64 %1649, 35
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i32*
  %1689 = load i32, i32* %1688, align 4
  %1690 = sext i32 %1689 to i64
  store i64 %1690, i64* %RSI.i724, align 8
  %1691 = shl nsw i64 %1690, 3
  %1692 = add i64 %1691, %1685
  %1693 = add i64 %1649, 39
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i64*
  %1695 = load i64, i64* %1694, align 8
  store i64 %1695, i64* %RDX.i1213.pre-phi, align 8
  %1696 = add i64 %1695, 2
  %1697 = add i64 %1649, 43
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1696 to i16*
  %1699 = load i16, i16* %1698, align 2
  store i16 %1699, i16* %DI.i698, align 2
  %1700 = add i64 %1647, -4
  %1701 = add i64 %1649, 47
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to i32*
  %1703 = load i32, i32* %1702, align 4
  %1704 = sext i32 %1703 to i64
  %1705 = shl nsw i64 %1704, 7
  store i64 %1705, i64* %RDX.i1213.pre-phi, align 8
  %1706 = load i64, i64* %RCX.i1208, align 8
  %1707 = add i64 %1705, %1706
  store i64 %1707, i64* %RCX.i1208, align 8
  %1708 = icmp ult i64 %1707, %1706
  %1709 = icmp ult i64 %1707, %1705
  %1710 = or i1 %1708, %1709
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %.pre-phi, align 1
  %1712 = trunc i64 %1707 to i32
  %1713 = and i32 %1712, 255
  %1714 = tail call i32 @llvm.ctpop.i32(i32 %1713)
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = xor i8 %1716, 1
  store i8 %1717, i8* %.pre-phi101, align 1
  %1718 = xor i64 %1706, %1707
  %1719 = lshr i64 %1718, 4
  %1720 = trunc i64 %1719 to i8
  %1721 = and i8 %1720, 1
  store i8 %1721, i8* %.pre-phi103, align 1
  %1722 = icmp eq i64 %1707, 0
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %.pre-phi105, align 1
  %1724 = lshr i64 %1707, 63
  %1725 = trunc i64 %1724 to i8
  store i8 %1725, i8* %.pre-phi107, align 1
  %1726 = lshr i64 %1706, 63
  %1727 = lshr i64 %1704, 56
  %1728 = and i64 %1727, 1
  %1729 = xor i64 %1724, %1726
  %1730 = xor i64 %1724, %1728
  %1731 = add nuw nsw i64 %1729, %1730
  %1732 = icmp eq i64 %1731, 2
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %.pre-phi109, align 1
  %1734 = load i64, i64* %RBP.i, align 8
  %1735 = add i64 %1734, -32
  %1736 = add i64 %1649, 58
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i32*
  %1738 = load i32, i32* %1737, align 4
  %1739 = sext i32 %1738 to i64
  %1740 = shl nsw i64 %1739, 4
  store i64 %1740, i64* %RDX.i1213.pre-phi, align 8
  %1741 = add i64 %1740, %1707
  store i64 %1741, i64* %RCX.i1208, align 8
  %1742 = icmp ult i64 %1741, %1707
  %1743 = icmp ult i64 %1741, %1740
  %1744 = or i1 %1742, %1743
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %.pre-phi, align 1
  %1746 = trunc i64 %1741 to i32
  %1747 = and i32 %1746, 255
  %1748 = tail call i32 @llvm.ctpop.i32(i32 %1747)
  %1749 = trunc i32 %1748 to i8
  %1750 = and i8 %1749, 1
  %1751 = xor i8 %1750, 1
  store i8 %1751, i8* %.pre-phi101, align 1
  %1752 = xor i64 %1740, %1707
  %1753 = xor i64 %1752, %1741
  %1754 = lshr i64 %1753, 4
  %1755 = trunc i64 %1754 to i8
  %1756 = and i8 %1755, 1
  store i8 %1756, i8* %.pre-phi103, align 1
  %1757 = icmp eq i64 %1741, 0
  %1758 = zext i1 %1757 to i8
  store i8 %1758, i8* %.pre-phi105, align 1
  %1759 = lshr i64 %1741, 63
  %1760 = trunc i64 %1759 to i8
  store i8 %1760, i8* %.pre-phi107, align 1
  %1761 = lshr i64 %1739, 59
  %1762 = and i64 %1761, 1
  %1763 = xor i64 %1759, %1724
  %1764 = xor i64 %1759, %1762
  %1765 = add nuw nsw i64 %1763, %1764
  %1766 = icmp eq i64 %1765, 2
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %.pre-phi109, align 1
  %1768 = add i64 %1734, -36
  %1769 = add i64 %1649, 69
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i32*
  %1771 = load i32, i32* %1770, align 4
  %1772 = sext i32 %1771 to i64
  store i64 %1772, i64* %RDX.i1213.pre-phi, align 8
  %1773 = shl nsw i64 %1772, 2
  %1774 = add i64 %1741, 2
  %1775 = add i64 %1774, %1773
  %1776 = load i16, i16* %DI.i698, align 2
  %1777 = add i64 %1649, 74
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1775 to i16*
  store i16 %1776, i16* %1778, align 2
  %1779 = load i64, i64* %RBP.i, align 8
  %1780 = add i64 %1779, -72
  %1781 = load i64, i64* %3, align 8
  %1782 = add i64 %1781, 4
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1780 to i64*
  %1784 = load i64, i64* %1783, align 8
  store i64 %1784, i64* %RCX.i1208, align 8
  %1785 = add i64 %1779, -32
  %1786 = add i64 %1781, 8
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i32*
  %1788 = load i32, i32* %1787, align 4
  %1789 = sext i32 %1788 to i64
  store i64 %1789, i64* %RDX.i1213.pre-phi, align 8
  %1790 = shl nsw i64 %1789, 3
  %1791 = add i64 %1790, %1784
  %1792 = add i64 %1781, 12
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to i64*
  %1794 = load i64, i64* %1793, align 8
  store i64 %1794, i64* %RCX.i1208, align 8
  %1795 = add i64 %1779, -36
  %1796 = add i64 %1781, 16
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = sext i32 %1798 to i64
  store i64 %1799, i64* %RDX.i1213.pre-phi, align 8
  %1800 = shl nsw i64 %1799, 3
  %1801 = add i64 %1800, %1794
  %1802 = add i64 %1781, 20
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1801 to i64*
  %1804 = load i64, i64* %1803, align 8
  store i64 %1804, i64* %RCX.i1208, align 8
  %1805 = add i64 %1781, 23
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i64*
  %1807 = load i64, i64* %1806, align 8
  store i64 %1807, i64* %RCX.i1208, align 8
  %1808 = add i64 %1779, -16
  %1809 = add i64 %1781, 27
  store i64 %1809, i64* %3, align 8
  %1810 = inttoptr i64 %1808 to i32*
  %1811 = load i32, i32* %1810, align 4
  %1812 = sext i32 %1811 to i64
  store i64 %1812, i64* %RDX.i1213.pre-phi, align 8
  %1813 = shl nsw i64 %1812, 3
  %1814 = add i64 %1813, %1807
  %1815 = add i64 %1781, 31
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i64*
  %1817 = load i64, i64* %1816, align 8
  store i64 %1817, i64* %RCX.i1208, align 8
  %1818 = add i64 %1779, -12
  %1819 = add i64 %1781, 35
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i32*
  %1821 = load i32, i32* %1820, align 4
  %1822 = sext i32 %1821 to i64
  store i64 %1822, i64* %RDX.i1213.pre-phi, align 8
  %1823 = shl nsw i64 %1822, 3
  %1824 = add i64 %1823, %1817
  %1825 = add i64 %1781, 39
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i64*
  %1827 = load i64, i64* %1826, align 8
  store i64 %1827, i64* %RCX.i1208, align 8
  %1828 = add i64 %1781, 42
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1827 to i16*
  %1830 = load i16, i16* %1829, align 2
  store i16 %1830, i16* %DI.i698, align 2
  %1831 = add i64 %1779, -4
  %1832 = add i64 %1781, 46
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i32*
  %1834 = load i32, i32* %1833, align 4
  %1835 = sext i32 %1834 to i64
  %1836 = shl nsw i64 %1835, 7
  store i64 %1836, i64* %RCX.i1208, align 8
  %1837 = load i64, i64* %RAX.i1218, align 8
  %1838 = add i64 %1836, %1837
  store i64 %1838, i64* %RDX.i1213.pre-phi, align 8
  %1839 = icmp ult i64 %1838, %1837
  %1840 = icmp ult i64 %1838, %1836
  %1841 = or i1 %1839, %1840
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %.pre-phi, align 1
  %1843 = trunc i64 %1838 to i32
  %1844 = and i32 %1843, 255
  %1845 = tail call i32 @llvm.ctpop.i32(i32 %1844)
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  store i8 %1848, i8* %.pre-phi101, align 1
  %1849 = xor i64 %1837, %1838
  %1850 = lshr i64 %1849, 4
  %1851 = trunc i64 %1850 to i8
  %1852 = and i8 %1851, 1
  store i8 %1852, i8* %.pre-phi103, align 1
  %1853 = icmp eq i64 %1838, 0
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %.pre-phi105, align 1
  %1855 = lshr i64 %1838, 63
  %1856 = trunc i64 %1855 to i8
  store i8 %1856, i8* %.pre-phi107, align 1
  %1857 = lshr i64 %1837, 63
  %1858 = lshr i64 %1835, 56
  %1859 = and i64 %1858, 1
  %1860 = xor i64 %1855, %1857
  %1861 = xor i64 %1855, %1859
  %1862 = add nuw nsw i64 %1860, %1861
  %1863 = icmp eq i64 %1862, 2
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %.pre-phi109, align 1
  %1865 = load i64, i64* %RBP.i, align 8
  %1866 = add i64 %1865, -32
  %1867 = add i64 %1781, 60
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i32*
  %1869 = load i32, i32* %1868, align 4
  %1870 = sext i32 %1869 to i64
  %1871 = shl nsw i64 %1870, 4
  store i64 %1871, i64* %RCX.i1208, align 8
  %1872 = add i64 %1871, %1838
  store i64 %1872, i64* %RDX.i1213.pre-phi, align 8
  %1873 = icmp ult i64 %1872, %1838
  %1874 = icmp ult i64 %1872, %1871
  %1875 = or i1 %1873, %1874
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %.pre-phi, align 1
  %1877 = trunc i64 %1872 to i32
  %1878 = and i32 %1877, 255
  %1879 = tail call i32 @llvm.ctpop.i32(i32 %1878)
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  %1882 = xor i8 %1881, 1
  store i8 %1882, i8* %.pre-phi101, align 1
  %1883 = xor i64 %1871, %1838
  %1884 = xor i64 %1883, %1872
  %1885 = lshr i64 %1884, 4
  %1886 = trunc i64 %1885 to i8
  %1887 = and i8 %1886, 1
  store i8 %1887, i8* %.pre-phi103, align 1
  %1888 = icmp eq i64 %1872, 0
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %.pre-phi105, align 1
  %1890 = lshr i64 %1872, 63
  %1891 = trunc i64 %1890 to i8
  store i8 %1891, i8* %.pre-phi107, align 1
  %1892 = lshr i64 %1870, 59
  %1893 = and i64 %1892, 1
  %1894 = xor i64 %1890, %1855
  %1895 = xor i64 %1890, %1893
  %1896 = add nuw nsw i64 %1894, %1895
  %1897 = icmp eq i64 %1896, 2
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %.pre-phi109, align 1
  %1899 = add i64 %1865, -36
  %1900 = add i64 %1781, 71
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  %1902 = load i32, i32* %1901, align 4
  %1903 = sext i32 %1902 to i64
  store i64 %1903, i64* %RCX.i1208, align 8
  %1904 = shl nsw i64 %1903, 2
  %1905 = add i64 %1904, %1872
  %1906 = load i16, i16* %DI.i698, align 2
  %1907 = add i64 %1781, 75
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1905 to i16*
  store i16 %1906, i16* %1908, align 2
  %1909 = load i64, i64* %RBP.i, align 8
  %1910 = add i64 %1909, -72
  %1911 = load i64, i64* %3, align 8
  %1912 = add i64 %1911, 4
  store i64 %1912, i64* %3, align 8
  %1913 = inttoptr i64 %1910 to i64*
  %1914 = load i64, i64* %1913, align 8
  store i64 %1914, i64* %RCX.i1208, align 8
  %1915 = add i64 %1909, -32
  %1916 = add i64 %1911, 8
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i32*
  %1918 = load i32, i32* %1917, align 4
  %1919 = sext i32 %1918 to i64
  store i64 %1919, i64* %RDX.i1213.pre-phi, align 8
  %1920 = shl nsw i64 %1919, 3
  %1921 = add i64 %1920, %1914
  %1922 = add i64 %1911, 12
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to i64*
  %1924 = load i64, i64* %1923, align 8
  store i64 %1924, i64* %RCX.i1208, align 8
  %1925 = add i64 %1909, -36
  %1926 = add i64 %1911, 16
  store i64 %1926, i64* %3, align 8
  %1927 = inttoptr i64 %1925 to i32*
  %1928 = load i32, i32* %1927, align 4
  %1929 = sext i32 %1928 to i64
  store i64 %1929, i64* %RDX.i1213.pre-phi, align 8
  %1930 = shl nsw i64 %1929, 3
  %1931 = add i64 %1930, %1924
  %1932 = add i64 %1911, 20
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i64*
  %1934 = load i64, i64* %1933, align 8
  store i64 %1934, i64* %RCX.i1208, align 8
  %1935 = add i64 %1911, 23
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1934 to i64*
  %1937 = load i64, i64* %1936, align 8
  store i64 %1937, i64* %RCX.i1208, align 8
  %1938 = add i64 %1909, -16
  %1939 = add i64 %1911, 27
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1938 to i32*
  %1941 = load i32, i32* %1940, align 4
  %1942 = sext i32 %1941 to i64
  store i64 %1942, i64* %RDX.i1213.pre-phi, align 8
  %1943 = shl nsw i64 %1942, 3
  %1944 = add i64 %1943, %1937
  %1945 = add i64 %1911, 31
  store i64 %1945, i64* %3, align 8
  %1946 = inttoptr i64 %1944 to i64*
  %1947 = load i64, i64* %1946, align 8
  store i64 %1947, i64* %RCX.i1208, align 8
  %1948 = add i64 %1909, -12
  %1949 = add i64 %1911, 35
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1948 to i32*
  %1951 = load i32, i32* %1950, align 4
  %1952 = sext i32 %1951 to i64
  store i64 %1952, i64* %RDX.i1213.pre-phi, align 8
  %1953 = shl nsw i64 %1952, 3
  %1954 = add i64 %1953, %1947
  %1955 = add i64 %1911, 39
  store i64 %1955, i64* %3, align 8
  %1956 = inttoptr i64 %1954 to i64*
  %1957 = load i64, i64* %1956, align 8
  store i64 %1957, i64* %RCX.i1208, align 8
  %1958 = add i64 %1957, 2
  %1959 = add i64 %1911, 43
  store i64 %1959, i64* %3, align 8
  %1960 = inttoptr i64 %1958 to i16*
  %1961 = load i16, i16* %1960, align 2
  store i16 %1961, i16* %DI.i698, align 2
  %1962 = add i64 %1909, -4
  %1963 = add i64 %1911, 47
  store i64 %1963, i64* %3, align 8
  %1964 = inttoptr i64 %1962 to i32*
  %1965 = load i32, i32* %1964, align 4
  %1966 = sext i32 %1965 to i64
  %1967 = shl nsw i64 %1966, 7
  store i64 %1967, i64* %RCX.i1208, align 8
  %1968 = load i64, i64* %RAX.i1218, align 8
  %1969 = add i64 %1967, %1968
  store i64 %1969, i64* %RAX.i1218, align 8
  %1970 = icmp ult i64 %1969, %1968
  %1971 = icmp ult i64 %1969, %1967
  %1972 = or i1 %1970, %1971
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %.pre-phi, align 1
  %1974 = trunc i64 %1969 to i32
  %1975 = and i32 %1974, 255
  %1976 = tail call i32 @llvm.ctpop.i32(i32 %1975)
  %1977 = trunc i32 %1976 to i8
  %1978 = and i8 %1977, 1
  %1979 = xor i8 %1978, 1
  store i8 %1979, i8* %.pre-phi101, align 1
  %1980 = xor i64 %1968, %1969
  %1981 = lshr i64 %1980, 4
  %1982 = trunc i64 %1981 to i8
  %1983 = and i8 %1982, 1
  store i8 %1983, i8* %.pre-phi103, align 1
  %1984 = icmp eq i64 %1969, 0
  %1985 = zext i1 %1984 to i8
  store i8 %1985, i8* %.pre-phi105, align 1
  %1986 = lshr i64 %1969, 63
  %1987 = trunc i64 %1986 to i8
  store i8 %1987, i8* %.pre-phi107, align 1
  %1988 = lshr i64 %1968, 63
  %1989 = lshr i64 %1966, 56
  %1990 = and i64 %1989, 1
  %1991 = xor i64 %1986, %1988
  %1992 = xor i64 %1986, %1990
  %1993 = add nuw nsw i64 %1991, %1992
  %1994 = icmp eq i64 %1993, 2
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %.pre-phi109, align 1
  %1996 = load i64, i64* %RBP.i, align 8
  %1997 = add i64 %1996, -32
  %1998 = add i64 %1911, 58
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i32*
  %2000 = load i32, i32* %1999, align 4
  %2001 = sext i32 %2000 to i64
  %2002 = shl nsw i64 %2001, 4
  store i64 %2002, i64* %RCX.i1208, align 8
  %2003 = add i64 %2002, %1969
  store i64 %2003, i64* %RAX.i1218, align 8
  %2004 = icmp ult i64 %2003, %1969
  %2005 = icmp ult i64 %2003, %2002
  %2006 = or i1 %2004, %2005
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %.pre-phi, align 1
  %2008 = trunc i64 %2003 to i32
  %2009 = and i32 %2008, 255
  %2010 = tail call i32 @llvm.ctpop.i32(i32 %2009)
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  %2013 = xor i8 %2012, 1
  store i8 %2013, i8* %.pre-phi101, align 1
  %2014 = xor i64 %2002, %1969
  %2015 = xor i64 %2014, %2003
  %2016 = lshr i64 %2015, 4
  %2017 = trunc i64 %2016 to i8
  %2018 = and i8 %2017, 1
  store i8 %2018, i8* %.pre-phi103, align 1
  %2019 = icmp eq i64 %2003, 0
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %.pre-phi105, align 1
  %2021 = lshr i64 %2003, 63
  %2022 = trunc i64 %2021 to i8
  store i8 %2022, i8* %.pre-phi107, align 1
  %2023 = lshr i64 %2001, 59
  %2024 = and i64 %2023, 1
  %2025 = xor i64 %2021, %1986
  %2026 = xor i64 %2021, %2024
  %2027 = add nuw nsw i64 %2025, %2026
  %2028 = icmp eq i64 %2027, 2
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %.pre-phi109, align 1
  %2030 = add i64 %1996, -36
  %2031 = add i64 %1911, 69
  store i64 %2031, i64* %3, align 8
  %2032 = inttoptr i64 %2030 to i32*
  %2033 = load i32, i32* %2032, align 4
  %2034 = sext i32 %2033 to i64
  store i64 %2034, i64* %RCX.i1208, align 8
  %2035 = shl nsw i64 %2034, 2
  %2036 = add i64 %2003, 2
  %2037 = add i64 %2036, %2035
  %2038 = load i16, i16* %DI.i698, align 2
  %2039 = add i64 %1911, 74
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2037 to i16*
  store i16 %2038, i16* %2040, align 2
  %2041 = load i64, i64* %RBP.i, align 8
  %2042 = add i64 %2041, -32
  %2043 = load i64, i64* %3, align 8
  %2044 = add i64 %2043, 3
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2042 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = add i32 %2046, 1
  %2048 = zext i32 %2047 to i64
  store i64 %2048, i64* %RAX.i1218, align 8
  %2049 = icmp eq i32 %2046, -1
  %2050 = icmp eq i32 %2047, 0
  %2051 = or i1 %2049, %2050
  %2052 = zext i1 %2051 to i8
  store i8 %2052, i8* %.pre-phi, align 1
  %2053 = and i32 %2047, 255
  %2054 = tail call i32 @llvm.ctpop.i32(i32 %2053)
  %2055 = trunc i32 %2054 to i8
  %2056 = and i8 %2055, 1
  %2057 = xor i8 %2056, 1
  store i8 %2057, i8* %.pre-phi101, align 1
  %2058 = xor i32 %2047, %2046
  %2059 = lshr i32 %2058, 4
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  store i8 %2061, i8* %.pre-phi103, align 1
  %2062 = zext i1 %2050 to i8
  store i8 %2062, i8* %.pre-phi105, align 1
  %2063 = lshr i32 %2047, 31
  %2064 = trunc i32 %2063 to i8
  store i8 %2064, i8* %.pre-phi107, align 1
  %2065 = lshr i32 %2046, 31
  %2066 = xor i32 %2063, %2065
  %2067 = add nuw nsw i32 %2066, %2063
  %2068 = icmp eq i32 %2067, 2
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %.pre-phi109, align 1
  %2070 = add i64 %2043, 9
  store i64 %2070, i64* %3, align 8
  store i32 %2047, i32* %2045, align 4
  %2071 = load i64, i64* %3, align 8
  %2072 = add i64 %2071, -339
  store i64 %2072, i64* %3, align 8
  br label %block_.L_490f77

block_.L_4910cf:                                  ; preds = %block_.L_490f77
  %2073 = add i64 %1484, -36
  %2074 = add i64 %1520, 8
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2073 to i32*
  %2076 = load i32, i32* %2075, align 4
  %2077 = add i32 %2076, 1
  %2078 = zext i32 %2077 to i64
  store i64 %2078, i64* %RAX.i1218, align 8
  %2079 = icmp eq i32 %2076, -1
  %2080 = icmp eq i32 %2077, 0
  %2081 = or i1 %2079, %2080
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %.pre-phi, align 1
  %2083 = and i32 %2077, 255
  %2084 = tail call i32 @llvm.ctpop.i32(i32 %2083)
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  %2087 = xor i8 %2086, 1
  store i8 %2087, i8* %.pre-phi101, align 1
  %2088 = xor i32 %2077, %2076
  %2089 = lshr i32 %2088, 4
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  store i8 %2091, i8* %.pre-phi103, align 1
  %2092 = zext i1 %2080 to i8
  store i8 %2092, i8* %.pre-phi105, align 1
  %2093 = lshr i32 %2077, 31
  %2094 = trunc i32 %2093 to i8
  store i8 %2094, i8* %.pre-phi107, align 1
  %2095 = lshr i32 %2076, 31
  %2096 = xor i32 %2093, %2095
  %2097 = add nuw nsw i32 %2096, %2093
  %2098 = icmp eq i32 %2097, 2
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %.pre-phi109, align 1
  %2100 = add i64 %1520, 14
  store i64 %2100, i64* %3, align 8
  store i32 %2077, i32* %2075, align 4
  %2101 = load i64, i64* %3, align 8
  %2102 = add i64 %2101, -376
  store i64 %2102, i64* %3, align 8
  br label %block_.L_490f65

block_.L_4910e2:                                  ; preds = %block_.L_490f65
  %2103 = add i64 %1474, 157
  br label %block_.L_49117f

block_.L_4910e7:                                  ; preds = %block_490f55
  %2104 = add i64 %253, -44
  %2105 = add i64 %1427, 3
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to i32*
  %2107 = load i32, i32* %2106, align 4
  %2108 = zext i32 %2107 to i64
  store i64 %2108, i64* %RAX.i1218, align 8
  %2109 = add i64 %253, -36
  %2110 = add i64 %1427, 6
  store i64 %2110, i64* %3, align 8
  %2111 = inttoptr i64 %2109 to i32*
  store i32 %2107, i32* %2111, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_4910ed

block_.L_4910ed:                                  ; preds = %block_.L_491167, %block_.L_4910e7
  %2112 = phi i64 [ %2410, %block_.L_491167 ], [ %.pre89, %block_.L_4910e7 ]
  %2113 = load i64, i64* %RBP.i, align 8
  %2114 = add i64 %2113, -36
  %2115 = add i64 %2112, 3
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2114 to i32*
  %2117 = load i32, i32* %2116, align 4
  %2118 = zext i32 %2117 to i64
  store i64 %2118, i64* %RAX.i1218, align 8
  %2119 = add i64 %2113, -52
  %2120 = add i64 %2112, 6
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i32*
  %2122 = load i32, i32* %2121, align 4
  %2123 = sub i32 %2117, %2122
  %2124 = icmp ult i32 %2117, %2122
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %.pre-phi, align 1
  %2126 = and i32 %2123, 255
  %2127 = tail call i32 @llvm.ctpop.i32(i32 %2126)
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  store i8 %2130, i8* %.pre-phi101, align 1
  %2131 = xor i32 %2122, %2117
  %2132 = xor i32 %2131, %2123
  %2133 = lshr i32 %2132, 4
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  store i8 %2135, i8* %.pre-phi103, align 1
  %2136 = icmp eq i32 %2123, 0
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %.pre-phi105, align 1
  %2138 = lshr i32 %2123, 31
  %2139 = trunc i32 %2138 to i8
  store i8 %2139, i8* %.pre-phi107, align 1
  %2140 = lshr i32 %2117, 31
  %2141 = lshr i32 %2122, 31
  %2142 = xor i32 %2141, %2140
  %2143 = xor i32 %2138, %2140
  %2144 = add nuw nsw i32 %2143, %2142
  %2145 = icmp eq i32 %2144, 2
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %.pre-phi109, align 1
  %2147 = icmp ne i8 %2139, 0
  %2148 = xor i1 %2147, %2145
  %.v119 = select i1 %2148, i64 12, i64 141
  %2149 = add i64 %2112, %.v119
  store i64 %2149, i64* %3, align 8
  br i1 %2148, label %block_4910f9, label %block_.L_49117a

block_4910f9:                                     ; preds = %block_.L_4910ed
  %2150 = add i64 %2113, -40
  %2151 = add i64 %2149, 3
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to i32*
  %2153 = load i32, i32* %2152, align 4
  %2154 = zext i32 %2153 to i64
  store i64 %2154, i64* %RAX.i1218, align 8
  %2155 = add i64 %2113, -32
  %2156 = add i64 %2149, 6
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2155 to i32*
  store i32 %2153, i32* %2157, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_4910ff

block_.L_4910ff:                                  ; preds = %block_49110b, %block_4910f9
  %2158 = phi i64 [ %2380, %block_49110b ], [ %.pre90, %block_4910f9 ]
  %2159 = load i64, i64* %RBP.i, align 8
  %2160 = add i64 %2159, -32
  %2161 = add i64 %2158, 3
  store i64 %2161, i64* %3, align 8
  %2162 = inttoptr i64 %2160 to i32*
  %2163 = load i32, i32* %2162, align 4
  %2164 = zext i32 %2163 to i64
  store i64 %2164, i64* %RAX.i1218, align 8
  %2165 = add i64 %2159, -48
  %2166 = add i64 %2158, 6
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i32*
  %2168 = load i32, i32* %2167, align 4
  %2169 = sub i32 %2163, %2168
  %2170 = icmp ult i32 %2163, %2168
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %.pre-phi, align 1
  %2172 = and i32 %2169, 255
  %2173 = tail call i32 @llvm.ctpop.i32(i32 %2172)
  %2174 = trunc i32 %2173 to i8
  %2175 = and i8 %2174, 1
  %2176 = xor i8 %2175, 1
  store i8 %2176, i8* %.pre-phi101, align 1
  %2177 = xor i32 %2168, %2163
  %2178 = xor i32 %2177, %2169
  %2179 = lshr i32 %2178, 4
  %2180 = trunc i32 %2179 to i8
  %2181 = and i8 %2180, 1
  store i8 %2181, i8* %.pre-phi103, align 1
  %2182 = icmp eq i32 %2169, 0
  %2183 = zext i1 %2182 to i8
  store i8 %2183, i8* %.pre-phi105, align 1
  %2184 = lshr i32 %2169, 31
  %2185 = trunc i32 %2184 to i8
  store i8 %2185, i8* %.pre-phi107, align 1
  %2186 = lshr i32 %2163, 31
  %2187 = lshr i32 %2168, 31
  %2188 = xor i32 %2187, %2186
  %2189 = xor i32 %2184, %2186
  %2190 = add nuw nsw i32 %2189, %2188
  %2191 = icmp eq i32 %2190, 2
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %.pre-phi109, align 1
  %2193 = icmp ne i8 %2185, 0
  %2194 = xor i1 %2193, %2191
  %.v114 = select i1 %2194, i64 12, i64 104
  %2195 = add i64 %2158, %.v114
  store i64 %2195, i64* %3, align 8
  br i1 %2194, label %block_49110b, label %block_.L_491167

block_49110b:                                     ; preds = %block_.L_4910ff
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RAX.i1218, align 8
  %2196 = add i64 %2159, -4
  %2197 = add i64 %2195, 14
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i32*
  %2199 = load i32, i32* %2198, align 4
  %2200 = sext i32 %2199 to i64
  %2201 = shl nsw i64 %2200, 7
  store i64 %2201, i64* %RCX.i1208, align 8
  %2202 = add i64 %2201, ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64)
  store i64 %2202, i64* %RDX.i1213.pre-phi, align 8
  %2203 = icmp ult i64 %2202, ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64)
  %2204 = icmp ult i64 %2202, %2201
  %2205 = or i1 %2203, %2204
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %.pre-phi, align 1
  %2207 = trunc i64 %2202 to i32
  %2208 = and i32 %2207, 248
  %2209 = tail call i32 @llvm.ctpop.i32(i32 %2208)
  %2210 = trunc i32 %2209 to i8
  %2211 = and i8 %2210, 1
  %2212 = xor i8 %2211, 1
  store i8 %2212, i8* %.pre-phi101, align 1
  %2213 = xor i64 %2202, ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64)
  %2214 = lshr i64 %2213, 4
  %2215 = trunc i64 %2214 to i8
  %2216 = and i8 %2215, 1
  store i8 %2216, i8* %.pre-phi103, align 1
  %2217 = icmp eq i64 %2202, 0
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %.pre-phi105, align 1
  %2219 = lshr i64 %2202, 63
  %2220 = trunc i64 %2219 to i8
  store i8 %2220, i8* %.pre-phi107, align 1
  %2221 = lshr i64 %2200, 56
  %2222 = and i64 %2221, 1
  %2223 = xor i64 %2219, lshr (i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64 63)
  %2224 = xor i64 %2219, %2222
  %2225 = add nuw nsw i64 %2223, %2224
  %2226 = icmp eq i64 %2225, 2
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %.pre-phi109, align 1
  %2228 = add i64 %2195, 28
  store i64 %2228, i64* %3, align 8
  %2229 = load i32, i32* %2162, align 4
  %2230 = sext i32 %2229 to i64
  %2231 = shl nsw i64 %2230, 4
  store i64 %2231, i64* %RCX.i1208, align 8
  %2232 = add i64 %2231, %2202
  store i64 %2232, i64* %RDX.i1213.pre-phi, align 8
  %2233 = icmp ult i64 %2232, %2202
  %2234 = icmp ult i64 %2232, %2231
  %2235 = or i1 %2233, %2234
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %.pre-phi, align 1
  %2237 = trunc i64 %2232 to i32
  %2238 = and i32 %2237, 248
  %2239 = tail call i32 @llvm.ctpop.i32(i32 %2238)
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  %2242 = xor i8 %2241, 1
  store i8 %2242, i8* %.pre-phi101, align 1
  %2243 = xor i64 %2231, %2202
  %2244 = xor i64 %2243, %2232
  %2245 = lshr i64 %2244, 4
  %2246 = trunc i64 %2245 to i8
  %2247 = and i8 %2246, 1
  store i8 %2247, i8* %.pre-phi103, align 1
  %2248 = icmp eq i64 %2232, 0
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %.pre-phi105, align 1
  %2250 = lshr i64 %2232, 63
  %2251 = trunc i64 %2250 to i8
  store i8 %2251, i8* %.pre-phi107, align 1
  %2252 = lshr i64 %2230, 59
  %2253 = and i64 %2252, 1
  %2254 = xor i64 %2250, %2219
  %2255 = xor i64 %2250, %2253
  %2256 = add nuw nsw i64 %2254, %2255
  %2257 = icmp eq i64 %2256, 2
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %.pre-phi109, align 1
  %2259 = load i64, i64* %RBP.i, align 8
  %2260 = add i64 %2259, -36
  %2261 = add i64 %2195, 39
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  %2263 = load i32, i32* %2262, align 4
  %2264 = sext i32 %2263 to i64
  store i64 %2264, i64* %RCX.i1208, align 8
  %2265 = shl nsw i64 %2264, 2
  %2266 = add i64 %2265, %2232
  %2267 = add i64 %2195, 45
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2266 to i16*
  store i16 0, i16* %2268, align 4
  %2269 = load i64, i64* %RBP.i, align 8
  %2270 = add i64 %2269, -4
  %2271 = load i64, i64* %3, align 8
  %2272 = add i64 %2271, 4
  store i64 %2272, i64* %3, align 8
  %2273 = inttoptr i64 %2270 to i32*
  %2274 = load i32, i32* %2273, align 4
  %2275 = sext i32 %2274 to i64
  %2276 = shl nsw i64 %2275, 7
  store i64 %2276, i64* %RCX.i1208, align 8
  %2277 = load i64, i64* %RAX.i1218, align 8
  %2278 = add i64 %2276, %2277
  store i64 %2278, i64* %RAX.i1218, align 8
  %2279 = icmp ult i64 %2278, %2277
  %2280 = icmp ult i64 %2278, %2276
  %2281 = or i1 %2279, %2280
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %.pre-phi, align 1
  %2283 = trunc i64 %2278 to i32
  %2284 = and i32 %2283, 255
  %2285 = tail call i32 @llvm.ctpop.i32(i32 %2284)
  %2286 = trunc i32 %2285 to i8
  %2287 = and i8 %2286, 1
  %2288 = xor i8 %2287, 1
  store i8 %2288, i8* %.pre-phi101, align 1
  %2289 = xor i64 %2277, %2278
  %2290 = lshr i64 %2289, 4
  %2291 = trunc i64 %2290 to i8
  %2292 = and i8 %2291, 1
  store i8 %2292, i8* %.pre-phi103, align 1
  %2293 = icmp eq i64 %2278, 0
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %.pre-phi105, align 1
  %2295 = lshr i64 %2278, 63
  %2296 = trunc i64 %2295 to i8
  store i8 %2296, i8* %.pre-phi107, align 1
  %2297 = lshr i64 %2277, 63
  %2298 = lshr i64 %2275, 56
  %2299 = and i64 %2298, 1
  %2300 = xor i64 %2295, %2297
  %2301 = xor i64 %2295, %2299
  %2302 = add nuw nsw i64 %2300, %2301
  %2303 = icmp eq i64 %2302, 2
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %.pre-phi109, align 1
  %2305 = add i64 %2269, -32
  %2306 = add i64 %2271, 15
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  %2308 = load i32, i32* %2307, align 4
  %2309 = sext i32 %2308 to i64
  %2310 = shl nsw i64 %2309, 4
  store i64 %2310, i64* %RCX.i1208, align 8
  %2311 = add i64 %2310, %2278
  store i64 %2311, i64* %RAX.i1218, align 8
  %2312 = icmp ult i64 %2311, %2278
  %2313 = icmp ult i64 %2311, %2310
  %2314 = or i1 %2312, %2313
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %.pre-phi, align 1
  %2316 = trunc i64 %2311 to i32
  %2317 = and i32 %2316, 255
  %2318 = tail call i32 @llvm.ctpop.i32(i32 %2317)
  %2319 = trunc i32 %2318 to i8
  %2320 = and i8 %2319, 1
  %2321 = xor i8 %2320, 1
  store i8 %2321, i8* %.pre-phi101, align 1
  %2322 = xor i64 %2310, %2278
  %2323 = xor i64 %2322, %2311
  %2324 = lshr i64 %2323, 4
  %2325 = trunc i64 %2324 to i8
  %2326 = and i8 %2325, 1
  store i8 %2326, i8* %.pre-phi103, align 1
  %2327 = icmp eq i64 %2311, 0
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %.pre-phi105, align 1
  %2329 = lshr i64 %2311, 63
  %2330 = trunc i64 %2329 to i8
  store i8 %2330, i8* %.pre-phi107, align 1
  %2331 = lshr i64 %2309, 59
  %2332 = and i64 %2331, 1
  %2333 = xor i64 %2329, %2295
  %2334 = xor i64 %2329, %2332
  %2335 = add nuw nsw i64 %2333, %2334
  %2336 = icmp eq i64 %2335, 2
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %.pre-phi109, align 1
  %2338 = load i64, i64* %RBP.i, align 8
  %2339 = add i64 %2338, -36
  %2340 = add i64 %2271, 26
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2339 to i32*
  %2342 = load i32, i32* %2341, align 4
  %2343 = sext i32 %2342 to i64
  store i64 %2343, i64* %RCX.i1208, align 8
  %2344 = shl nsw i64 %2343, 2
  %2345 = add i64 %2311, 2
  %2346 = add i64 %2345, %2344
  %2347 = add i64 %2271, 33
  store i64 %2347, i64* %3, align 8
  %2348 = inttoptr i64 %2346 to i16*
  store i16 0, i16* %2348, align 2
  %2349 = load i64, i64* %RBP.i, align 8
  %2350 = add i64 %2349, -32
  %2351 = load i64, i64* %3, align 8
  %2352 = add i64 %2351, 3
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2350 to i32*
  %2354 = load i32, i32* %2353, align 4
  %2355 = add i32 %2354, 1
  %2356 = zext i32 %2355 to i64
  store i64 %2356, i64* %RAX.i1218, align 8
  %2357 = icmp eq i32 %2354, -1
  %2358 = icmp eq i32 %2355, 0
  %2359 = or i1 %2357, %2358
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %.pre-phi, align 1
  %2361 = and i32 %2355, 255
  %2362 = tail call i32 @llvm.ctpop.i32(i32 %2361)
  %2363 = trunc i32 %2362 to i8
  %2364 = and i8 %2363, 1
  %2365 = xor i8 %2364, 1
  store i8 %2365, i8* %.pre-phi101, align 1
  %2366 = xor i32 %2355, %2354
  %2367 = lshr i32 %2366, 4
  %2368 = trunc i32 %2367 to i8
  %2369 = and i8 %2368, 1
  store i8 %2369, i8* %.pre-phi103, align 1
  %2370 = zext i1 %2358 to i8
  store i8 %2370, i8* %.pre-phi105, align 1
  %2371 = lshr i32 %2355, 31
  %2372 = trunc i32 %2371 to i8
  store i8 %2372, i8* %.pre-phi107, align 1
  %2373 = lshr i32 %2354, 31
  %2374 = xor i32 %2371, %2373
  %2375 = add nuw nsw i32 %2374, %2371
  %2376 = icmp eq i32 %2375, 2
  %2377 = zext i1 %2376 to i8
  store i8 %2377, i8* %.pre-phi109, align 1
  %2378 = add i64 %2351, 9
  store i64 %2378, i64* %3, align 8
  store i32 %2355, i32* %2353, align 4
  %2379 = load i64, i64* %3, align 8
  %2380 = add i64 %2379, -99
  store i64 %2380, i64* %3, align 8
  br label %block_.L_4910ff

block_.L_491167:                                  ; preds = %block_.L_4910ff
  %2381 = add i64 %2159, -36
  %2382 = add i64 %2195, 8
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2381 to i32*
  %2384 = load i32, i32* %2383, align 4
  %2385 = add i32 %2384, 1
  %2386 = zext i32 %2385 to i64
  store i64 %2386, i64* %RAX.i1218, align 8
  %2387 = icmp eq i32 %2384, -1
  %2388 = icmp eq i32 %2385, 0
  %2389 = or i1 %2387, %2388
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %.pre-phi, align 1
  %2391 = and i32 %2385, 255
  %2392 = tail call i32 @llvm.ctpop.i32(i32 %2391)
  %2393 = trunc i32 %2392 to i8
  %2394 = and i8 %2393, 1
  %2395 = xor i8 %2394, 1
  store i8 %2395, i8* %.pre-phi101, align 1
  %2396 = xor i32 %2385, %2384
  %2397 = lshr i32 %2396, 4
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  store i8 %2399, i8* %.pre-phi103, align 1
  %2400 = zext i1 %2388 to i8
  store i8 %2400, i8* %.pre-phi105, align 1
  %2401 = lshr i32 %2385, 31
  %2402 = trunc i32 %2401 to i8
  store i8 %2402, i8* %.pre-phi107, align 1
  %2403 = lshr i32 %2384, 31
  %2404 = xor i32 %2401, %2403
  %2405 = add nuw nsw i32 %2404, %2401
  %2406 = icmp eq i32 %2405, 2
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %.pre-phi109, align 1
  %2408 = add i64 %2195, 14
  store i64 %2408, i64* %3, align 8
  store i32 %2385, i32* %2383, align 4
  %2409 = load i64, i64* %3, align 8
  %2410 = add i64 %2409, -136
  store i64 %2410, i64* %3, align 8
  br label %block_.L_4910ed

block_.L_49117a:                                  ; preds = %block_.L_4910ed
  %2411 = add i64 %2149, 5
  store i64 %2411, i64* %3, align 8
  br label %block_.L_49117f

block_.L_49117f:                                  ; preds = %block_.L_49117a, %block_.L_4910e2
  %2412 = phi i64 [ %1438, %block_.L_4910e2 ], [ %2113, %block_.L_49117a ]
  %storemerge = phi i64 [ %2103, %block_.L_4910e2 ], [ %2411, %block_.L_49117a ]
  %2413 = add i64 %2412, -24
  %2414 = add i64 %storemerge, 4
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i32*
  %2416 = load i32, i32* %2415, align 4
  %2417 = add i32 %2416, -1
  %2418 = icmp eq i32 %2416, 0
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %.pre-phi, align 1
  %2420 = and i32 %2417, 255
  %2421 = tail call i32 @llvm.ctpop.i32(i32 %2420)
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  %2424 = xor i8 %2423, 1
  store i8 %2424, i8* %.pre-phi101, align 1
  %2425 = xor i32 %2417, %2416
  %2426 = lshr i32 %2425, 4
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  store i8 %2428, i8* %.pre-phi103, align 1
  %2429 = icmp eq i32 %2417, 0
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %.pre-phi105, align 1
  %2431 = lshr i32 %2417, 31
  %2432 = trunc i32 %2431 to i8
  store i8 %2432, i8* %.pre-phi107, align 1
  %2433 = lshr i32 %2416, 31
  %2434 = xor i32 %2431, %2433
  %2435 = add nuw nsw i32 %2434, %2433
  %2436 = icmp eq i32 %2435, 2
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %.pre-phi109, align 1
  %.v120 = select i1 %2429, i64 20, i64 10
  %2438 = add i64 %storemerge, %.v120
  store i64 %2438, i64* %3, align 8
  br i1 %2429, label %block_.L_491193, label %block_491189

block_491189:                                     ; preds = %block_.L_49117f
  %2439 = add i64 %2438, 4
  store i64 %2439, i64* %3, align 8
  %2440 = load i32, i32* %2415, align 4
  %2441 = add i32 %2440, -2
  %2442 = icmp ult i32 %2440, 2
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %.pre-phi, align 1
  %2444 = and i32 %2441, 255
  %2445 = tail call i32 @llvm.ctpop.i32(i32 %2444)
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = xor i8 %2447, 1
  store i8 %2448, i8* %.pre-phi101, align 1
  %2449 = xor i32 %2441, %2440
  %2450 = lshr i32 %2449, 4
  %2451 = trunc i32 %2450 to i8
  %2452 = and i8 %2451, 1
  store i8 %2452, i8* %.pre-phi103, align 1
  %2453 = icmp eq i32 %2441, 0
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %.pre-phi105, align 1
  %2455 = lshr i32 %2441, 31
  %2456 = trunc i32 %2455 to i8
  store i8 %2456, i8* %.pre-phi107, align 1
  %2457 = lshr i32 %2440, 31
  %2458 = xor i32 %2455, %2457
  %2459 = add nuw nsw i32 %2458, %2457
  %2460 = icmp eq i32 %2459, 2
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %.pre-phi109, align 1
  %.v121 = select i1 %2453, i64 10, i64 422
  %2462 = add i64 %2438, %.v121
  store i64 %2462, i64* %3, align 8
  br i1 %2453, label %block_.L_491193, label %block_.L_49132f

block_.L_491193:                                  ; preds = %block_491189, %block_.L_49117f
  %2463 = phi i64 [ %2462, %block_491189 ], [ %2438, %block_.L_49117f ]
  %2464 = add i64 %2412, -44
  %2465 = add i64 %2463, 3
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2464 to i32*
  %2467 = load i32, i32* %2466, align 4
  %2468 = zext i32 %2467 to i64
  store i64 %2468, i64* %RAX.i1218, align 8
  %2469 = add i64 %2412, -36
  %2470 = add i64 %2463, 6
  store i64 %2470, i64* %3, align 8
  %2471 = inttoptr i64 %2469 to i32*
  store i32 %2467, i32* %2471, align 4
  %RSI.i347 = getelementptr inbounds %union.anon, %union.anon* %24, i64 0, i32 0
  %DI.i321 = bitcast %union.anon* %19 to i16*
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_491199

block_.L_491199:                                  ; preds = %block_.L_491317, %block_.L_491193
  %2472 = phi i64 [ %3125, %block_.L_491317 ], [ %.pre94, %block_.L_491193 ]
  %2473 = load i64, i64* %RBP.i, align 8
  %2474 = add i64 %2473, -36
  %2475 = add i64 %2472, 3
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i32*
  %2477 = load i32, i32* %2476, align 4
  %2478 = zext i32 %2477 to i64
  store i64 %2478, i64* %RAX.i1218, align 8
  %2479 = add i64 %2473, -52
  %2480 = add i64 %2472, 6
  store i64 %2480, i64* %3, align 8
  %2481 = inttoptr i64 %2479 to i32*
  %2482 = load i32, i32* %2481, align 4
  %2483 = sub i32 %2477, %2482
  %2484 = icmp ult i32 %2477, %2482
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %.pre-phi, align 1
  %2486 = and i32 %2483, 255
  %2487 = tail call i32 @llvm.ctpop.i32(i32 %2486)
  %2488 = trunc i32 %2487 to i8
  %2489 = and i8 %2488, 1
  %2490 = xor i8 %2489, 1
  store i8 %2490, i8* %.pre-phi101, align 1
  %2491 = xor i32 %2482, %2477
  %2492 = xor i32 %2491, %2483
  %2493 = lshr i32 %2492, 4
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  store i8 %2495, i8* %.pre-phi103, align 1
  %2496 = icmp eq i32 %2483, 0
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %.pre-phi105, align 1
  %2498 = lshr i32 %2483, 31
  %2499 = trunc i32 %2498 to i8
  store i8 %2499, i8* %.pre-phi107, align 1
  %2500 = lshr i32 %2477, 31
  %2501 = lshr i32 %2482, 31
  %2502 = xor i32 %2501, %2500
  %2503 = xor i32 %2498, %2500
  %2504 = add nuw nsw i32 %2503, %2502
  %2505 = icmp eq i32 %2504, 2
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %.pre-phi109, align 1
  %2507 = icmp ne i8 %2499, 0
  %2508 = xor i1 %2507, %2505
  %.v123 = select i1 %2508, i64 12, i64 401
  %2509 = add i64 %2472, %.v123
  store i64 %2509, i64* %3, align 8
  br i1 %2508, label %block_4911a5, label %block_.L_49132a

block_4911a5:                                     ; preds = %block_.L_491199
  %2510 = add i64 %2473, -40
  %2511 = add i64 %2509, 3
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2510 to i32*
  %2513 = load i32, i32* %2512, align 4
  %2514 = zext i32 %2513 to i64
  store i64 %2514, i64* %RAX.i1218, align 8
  %2515 = add i64 %2473, -32
  %2516 = add i64 %2509, 6
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i32*
  store i32 %2513, i32* %2517, align 4
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_4911ab

block_.L_4911ab:                                  ; preds = %block_4911b7, %block_4911a5
  %2518 = phi i64 [ %3095, %block_4911b7 ], [ %.pre95, %block_4911a5 ]
  %2519 = load i64, i64* %RBP.i, align 8
  %2520 = add i64 %2519, -32
  %2521 = add i64 %2518, 3
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i32*
  %2523 = load i32, i32* %2522, align 4
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RAX.i1218, align 8
  %2525 = add i64 %2519, -48
  %2526 = add i64 %2518, 6
  store i64 %2526, i64* %3, align 8
  %2527 = inttoptr i64 %2525 to i32*
  %2528 = load i32, i32* %2527, align 4
  %2529 = sub i32 %2523, %2528
  %2530 = icmp ult i32 %2523, %2528
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %.pre-phi, align 1
  %2532 = and i32 %2529, 255
  %2533 = tail call i32 @llvm.ctpop.i32(i32 %2532)
  %2534 = trunc i32 %2533 to i8
  %2535 = and i8 %2534, 1
  %2536 = xor i8 %2535, 1
  store i8 %2536, i8* %.pre-phi101, align 1
  %2537 = xor i32 %2528, %2523
  %2538 = xor i32 %2537, %2529
  %2539 = lshr i32 %2538, 4
  %2540 = trunc i32 %2539 to i8
  %2541 = and i8 %2540, 1
  store i8 %2541, i8* %.pre-phi103, align 1
  %2542 = icmp eq i32 %2529, 0
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %.pre-phi105, align 1
  %2544 = lshr i32 %2529, 31
  %2545 = trunc i32 %2544 to i8
  store i8 %2545, i8* %.pre-phi107, align 1
  %2546 = lshr i32 %2523, 31
  %2547 = lshr i32 %2528, 31
  %2548 = xor i32 %2547, %2546
  %2549 = xor i32 %2544, %2546
  %2550 = add nuw nsw i32 %2549, %2548
  %2551 = icmp eq i32 %2550, 2
  %2552 = zext i1 %2551 to i8
  store i8 %2552, i8* %.pre-phi109, align 1
  %2553 = icmp ne i8 %2545, 0
  %2554 = xor i1 %2553, %2551
  %.v111 = select i1 %2554, i64 12, i64 364
  %2555 = add i64 %2518, %.v111
  store i64 %2555, i64* %3, align 8
  br i1 %2554, label %block_4911b7, label %block_.L_491317

block_4911b7:                                     ; preds = %block_.L_4911ab
  store i64 ptrtoint (%G__0x6d32e0_type* @G__0x6d32e0 to i64), i64* %RAX.i1218, align 8
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RCX.i1208, align 8
  %2556 = add i64 %2519, -64
  %2557 = add i64 %2555, 24
  store i64 %2557, i64* %3, align 8
  %2558 = inttoptr i64 %2556 to i64*
  %2559 = load i64, i64* %2558, align 8
  store i64 %2559, i64* %RDX.i1213.pre-phi, align 8
  %2560 = add i64 %2555, 28
  store i64 %2560, i64* %3, align 8
  %2561 = load i32, i32* %2522, align 4
  %2562 = sext i32 %2561 to i64
  store i64 %2562, i64* %RSI.i347, align 8
  %2563 = shl nsw i64 %2562, 3
  %2564 = add i64 %2563, %2559
  %2565 = add i64 %2555, 32
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i64*
  %2567 = load i64, i64* %2566, align 8
  store i64 %2567, i64* %RDX.i1213.pre-phi, align 8
  %2568 = add i64 %2519, -36
  %2569 = add i64 %2555, 36
  store i64 %2569, i64* %3, align 8
  %2570 = inttoptr i64 %2568 to i32*
  %2571 = load i32, i32* %2570, align 4
  %2572 = sext i32 %2571 to i64
  store i64 %2572, i64* %RSI.i347, align 8
  %2573 = shl nsw i64 %2572, 3
  %2574 = add i64 %2573, %2567
  %2575 = add i64 %2555, 40
  store i64 %2575, i64* %3, align 8
  %2576 = inttoptr i64 %2574 to i64*
  %2577 = load i64, i64* %2576, align 8
  store i64 %2577, i64* %RDX.i1213.pre-phi, align 8
  %2578 = add i64 %2577, 8
  %2579 = add i64 %2555, 44
  store i64 %2579, i64* %3, align 8
  %2580 = inttoptr i64 %2578 to i64*
  %2581 = load i64, i64* %2580, align 8
  store i64 %2581, i64* %RDX.i1213.pre-phi, align 8
  %2582 = add i64 %2519, -20
  %2583 = add i64 %2555, 48
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i32*
  %2585 = load i32, i32* %2584, align 4
  %2586 = sext i32 %2585 to i64
  store i64 %2586, i64* %RSI.i347, align 8
  %2587 = shl nsw i64 %2586, 3
  %2588 = add i64 %2587, %2581
  %2589 = add i64 %2555, 52
  store i64 %2589, i64* %3, align 8
  %2590 = inttoptr i64 %2588 to i64*
  %2591 = load i64, i64* %2590, align 8
  store i64 %2591, i64* %RDX.i1213.pre-phi, align 8
  %2592 = add i64 %2519, -12
  %2593 = add i64 %2555, 56
  store i64 %2593, i64* %3, align 8
  %2594 = inttoptr i64 %2592 to i32*
  %2595 = load i32, i32* %2594, align 4
  %2596 = sext i32 %2595 to i64
  store i64 %2596, i64* %RSI.i347, align 8
  %2597 = shl nsw i64 %2596, 3
  %2598 = add i64 %2597, %2591
  %2599 = add i64 %2555, 60
  store i64 %2599, i64* %3, align 8
  %2600 = inttoptr i64 %2598 to i64*
  %2601 = load i64, i64* %2600, align 8
  store i64 %2601, i64* %RDX.i1213.pre-phi, align 8
  %2602 = add i64 %2555, 63
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i16*
  %2604 = load i16, i16* %2603, align 2
  store i16 %2604, i16* %DI.i321, align 2
  %2605 = add i64 %2519, -4
  %2606 = add i64 %2555, 67
  store i64 %2606, i64* %3, align 8
  %2607 = inttoptr i64 %2605 to i32*
  %2608 = load i32, i32* %2607, align 4
  %2609 = sext i32 %2608 to i64
  %2610 = shl nsw i64 %2609, 7
  store i64 %2610, i64* %RDX.i1213.pre-phi, align 8
  %2611 = load i64, i64* %RCX.i1208, align 8
  %2612 = add i64 %2610, %2611
  %2613 = lshr i64 %2612, 63
  %2614 = add i64 %2612, 64
  store i64 %2614, i64* %RSI.i347, align 8
  %2615 = icmp ugt i64 %2612, -65
  %2616 = zext i1 %2615 to i8
  store i8 %2616, i8* %.pre-phi, align 1
  %2617 = trunc i64 %2614 to i32
  %2618 = and i32 %2617, 255
  %2619 = tail call i32 @llvm.ctpop.i32(i32 %2618)
  %2620 = trunc i32 %2619 to i8
  %2621 = and i8 %2620, 1
  %2622 = xor i8 %2621, 1
  store i8 %2622, i8* %.pre-phi101, align 1
  %2623 = xor i64 %2614, %2612
  %2624 = lshr i64 %2623, 4
  %2625 = trunc i64 %2624 to i8
  %2626 = and i8 %2625, 1
  store i8 %2626, i8* %.pre-phi103, align 1
  %2627 = icmp eq i64 %2614, 0
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %.pre-phi105, align 1
  %2629 = lshr i64 %2614, 63
  %2630 = trunc i64 %2629 to i8
  store i8 %2630, i8* %.pre-phi107, align 1
  %2631 = xor i64 %2629, %2613
  %2632 = add nuw nsw i64 %2631, %2629
  %2633 = icmp eq i64 %2632, 2
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %.pre-phi109, align 1
  %2635 = load i64, i64* %RBP.i, align 8
  %2636 = add i64 %2635, -32
  %2637 = add i64 %2555, 85
  store i64 %2637, i64* %3, align 8
  %2638 = inttoptr i64 %2636 to i32*
  %2639 = load i32, i32* %2638, align 4
  %2640 = sext i32 %2639 to i64
  %2641 = shl nsw i64 %2640, 4
  store i64 %2641, i64* %RDX.i1213.pre-phi, align 8
  %2642 = add i64 %2641, %2614
  store i64 %2642, i64* %RSI.i347, align 8
  %2643 = icmp ult i64 %2642, %2614
  %2644 = icmp ult i64 %2642, %2641
  %2645 = or i1 %2643, %2644
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %.pre-phi, align 1
  %2647 = trunc i64 %2642 to i32
  %2648 = and i32 %2647, 255
  %2649 = tail call i32 @llvm.ctpop.i32(i32 %2648)
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  %2652 = xor i8 %2651, 1
  store i8 %2652, i8* %.pre-phi101, align 1
  %2653 = xor i64 %2641, %2614
  %2654 = xor i64 %2653, %2642
  %2655 = lshr i64 %2654, 4
  %2656 = trunc i64 %2655 to i8
  %2657 = and i8 %2656, 1
  store i8 %2657, i8* %.pre-phi103, align 1
  %2658 = icmp eq i64 %2642, 0
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %.pre-phi105, align 1
  %2660 = lshr i64 %2642, 63
  %2661 = trunc i64 %2660 to i8
  store i8 %2661, i8* %.pre-phi107, align 1
  %2662 = lshr i64 %2640, 59
  %2663 = and i64 %2662, 1
  %2664 = xor i64 %2660, %2629
  %2665 = xor i64 %2660, %2663
  %2666 = add nuw nsw i64 %2664, %2665
  %2667 = icmp eq i64 %2666, 2
  %2668 = zext i1 %2667 to i8
  store i8 %2668, i8* %.pre-phi109, align 1
  %2669 = add i64 %2635, -36
  %2670 = add i64 %2555, 96
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i32*
  %2672 = load i32, i32* %2671, align 4
  %2673 = sext i32 %2672 to i64
  store i64 %2673, i64* %RDX.i1213.pre-phi, align 8
  %2674 = shl nsw i64 %2673, 2
  %2675 = add i64 %2674, %2642
  %2676 = load i16, i16* %DI.i321, align 2
  %2677 = add i64 %2555, 100
  store i64 %2677, i64* %3, align 8
  %2678 = inttoptr i64 %2675 to i16*
  store i16 %2676, i16* %2678, align 2
  %2679 = load i64, i64* %RBP.i, align 8
  %2680 = add i64 %2679, -64
  %2681 = load i64, i64* %3, align 8
  %2682 = add i64 %2681, 4
  store i64 %2682, i64* %3, align 8
  %2683 = inttoptr i64 %2680 to i64*
  %2684 = load i64, i64* %2683, align 8
  store i64 %2684, i64* %RDX.i1213.pre-phi, align 8
  %2685 = add i64 %2679, -32
  %2686 = add i64 %2681, 8
  store i64 %2686, i64* %3, align 8
  %2687 = inttoptr i64 %2685 to i32*
  %2688 = load i32, i32* %2687, align 4
  %2689 = sext i32 %2688 to i64
  store i64 %2689, i64* %RSI.i347, align 8
  %2690 = shl nsw i64 %2689, 3
  %2691 = add i64 %2690, %2684
  %2692 = add i64 %2681, 12
  store i64 %2692, i64* %3, align 8
  %2693 = inttoptr i64 %2691 to i64*
  %2694 = load i64, i64* %2693, align 8
  store i64 %2694, i64* %RDX.i1213.pre-phi, align 8
  %2695 = add i64 %2679, -36
  %2696 = add i64 %2681, 16
  store i64 %2696, i64* %3, align 8
  %2697 = inttoptr i64 %2695 to i32*
  %2698 = load i32, i32* %2697, align 4
  %2699 = sext i32 %2698 to i64
  store i64 %2699, i64* %RSI.i347, align 8
  %2700 = shl nsw i64 %2699, 3
  %2701 = add i64 %2700, %2694
  %2702 = add i64 %2681, 20
  store i64 %2702, i64* %3, align 8
  %2703 = inttoptr i64 %2701 to i64*
  %2704 = load i64, i64* %2703, align 8
  store i64 %2704, i64* %RDX.i1213.pre-phi, align 8
  %2705 = add i64 %2704, 8
  %2706 = add i64 %2681, 24
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2705 to i64*
  %2708 = load i64, i64* %2707, align 8
  store i64 %2708, i64* %RDX.i1213.pre-phi, align 8
  %2709 = add i64 %2679, -20
  %2710 = add i64 %2681, 28
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2709 to i32*
  %2712 = load i32, i32* %2711, align 4
  %2713 = sext i32 %2712 to i64
  store i64 %2713, i64* %RSI.i347, align 8
  %2714 = shl nsw i64 %2713, 3
  %2715 = add i64 %2714, %2708
  %2716 = add i64 %2681, 32
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i64*
  %2718 = load i64, i64* %2717, align 8
  store i64 %2718, i64* %RDX.i1213.pre-phi, align 8
  %2719 = add i64 %2679, -12
  %2720 = add i64 %2681, 36
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i32*
  %2722 = load i32, i32* %2721, align 4
  %2723 = sext i32 %2722 to i64
  store i64 %2723, i64* %RSI.i347, align 8
  %2724 = shl nsw i64 %2723, 3
  %2725 = add i64 %2724, %2718
  %2726 = add i64 %2681, 40
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i64*
  %2728 = load i64, i64* %2727, align 8
  store i64 %2728, i64* %RDX.i1213.pre-phi, align 8
  %2729 = add i64 %2728, 2
  %2730 = add i64 %2681, 44
  store i64 %2730, i64* %3, align 8
  %2731 = inttoptr i64 %2729 to i16*
  %2732 = load i16, i16* %2731, align 2
  store i16 %2732, i16* %DI.i321, align 2
  %2733 = add i64 %2679, -4
  %2734 = add i64 %2681, 48
  store i64 %2734, i64* %3, align 8
  %2735 = inttoptr i64 %2733 to i32*
  %2736 = load i32, i32* %2735, align 4
  %2737 = sext i32 %2736 to i64
  %2738 = shl nsw i64 %2737, 7
  store i64 %2738, i64* %RDX.i1213.pre-phi, align 8
  %2739 = load i64, i64* %RCX.i1208, align 8
  %2740 = add i64 %2738, %2739
  %2741 = lshr i64 %2740, 63
  %2742 = add i64 %2740, 64
  store i64 %2742, i64* %RCX.i1208, align 8
  %2743 = icmp ugt i64 %2740, -65
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %.pre-phi, align 1
  %2745 = trunc i64 %2742 to i32
  %2746 = and i32 %2745, 255
  %2747 = tail call i32 @llvm.ctpop.i32(i32 %2746)
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  %2750 = xor i8 %2749, 1
  store i8 %2750, i8* %.pre-phi101, align 1
  %2751 = xor i64 %2742, %2740
  %2752 = lshr i64 %2751, 4
  %2753 = trunc i64 %2752 to i8
  %2754 = and i8 %2753, 1
  store i8 %2754, i8* %.pre-phi103, align 1
  %2755 = icmp eq i64 %2742, 0
  %2756 = zext i1 %2755 to i8
  store i8 %2756, i8* %.pre-phi105, align 1
  %2757 = lshr i64 %2742, 63
  %2758 = trunc i64 %2757 to i8
  store i8 %2758, i8* %.pre-phi107, align 1
  %2759 = xor i64 %2757, %2741
  %2760 = add nuw nsw i64 %2759, %2757
  %2761 = icmp eq i64 %2760, 2
  %2762 = zext i1 %2761 to i8
  store i8 %2762, i8* %.pre-phi109, align 1
  %2763 = load i64, i64* %RBP.i, align 8
  %2764 = add i64 %2763, -32
  %2765 = add i64 %2681, 63
  store i64 %2765, i64* %3, align 8
  %2766 = inttoptr i64 %2764 to i32*
  %2767 = load i32, i32* %2766, align 4
  %2768 = sext i32 %2767 to i64
  %2769 = shl nsw i64 %2768, 4
  store i64 %2769, i64* %RDX.i1213.pre-phi, align 8
  %2770 = add i64 %2769, %2742
  store i64 %2770, i64* %RCX.i1208, align 8
  %2771 = icmp ult i64 %2770, %2742
  %2772 = icmp ult i64 %2770, %2769
  %2773 = or i1 %2771, %2772
  %2774 = zext i1 %2773 to i8
  store i8 %2774, i8* %.pre-phi, align 1
  %2775 = trunc i64 %2770 to i32
  %2776 = and i32 %2775, 255
  %2777 = tail call i32 @llvm.ctpop.i32(i32 %2776)
  %2778 = trunc i32 %2777 to i8
  %2779 = and i8 %2778, 1
  %2780 = xor i8 %2779, 1
  store i8 %2780, i8* %.pre-phi101, align 1
  %2781 = xor i64 %2769, %2742
  %2782 = xor i64 %2781, %2770
  %2783 = lshr i64 %2782, 4
  %2784 = trunc i64 %2783 to i8
  %2785 = and i8 %2784, 1
  store i8 %2785, i8* %.pre-phi103, align 1
  %2786 = icmp eq i64 %2770, 0
  %2787 = zext i1 %2786 to i8
  store i8 %2787, i8* %.pre-phi105, align 1
  %2788 = lshr i64 %2770, 63
  %2789 = trunc i64 %2788 to i8
  store i8 %2789, i8* %.pre-phi107, align 1
  %2790 = lshr i64 %2768, 59
  %2791 = and i64 %2790, 1
  %2792 = xor i64 %2788, %2757
  %2793 = xor i64 %2788, %2791
  %2794 = add nuw nsw i64 %2792, %2793
  %2795 = icmp eq i64 %2794, 2
  %2796 = zext i1 %2795 to i8
  store i8 %2796, i8* %.pre-phi109, align 1
  %2797 = add i64 %2763, -36
  %2798 = add i64 %2681, 74
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2797 to i32*
  %2800 = load i32, i32* %2799, align 4
  %2801 = sext i32 %2800 to i64
  store i64 %2801, i64* %RDX.i1213.pre-phi, align 8
  %2802 = shl nsw i64 %2801, 2
  %2803 = add i64 %2770, 2
  %2804 = add i64 %2803, %2802
  %2805 = load i16, i16* %DI.i321, align 2
  %2806 = add i64 %2681, 79
  store i64 %2806, i64* %3, align 8
  %2807 = inttoptr i64 %2804 to i16*
  store i16 %2805, i16* %2807, align 2
  %2808 = load i64, i64* %RBP.i, align 8
  %2809 = add i64 %2808, -72
  %2810 = load i64, i64* %3, align 8
  %2811 = add i64 %2810, 4
  store i64 %2811, i64* %3, align 8
  %2812 = inttoptr i64 %2809 to i64*
  %2813 = load i64, i64* %2812, align 8
  store i64 %2813, i64* %RCX.i1208, align 8
  %2814 = add i64 %2808, -32
  %2815 = add i64 %2810, 8
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2814 to i32*
  %2817 = load i32, i32* %2816, align 4
  %2818 = sext i32 %2817 to i64
  store i64 %2818, i64* %RDX.i1213.pre-phi, align 8
  %2819 = shl nsw i64 %2818, 3
  %2820 = add i64 %2819, %2813
  %2821 = add i64 %2810, 12
  store i64 %2821, i64* %3, align 8
  %2822 = inttoptr i64 %2820 to i64*
  %2823 = load i64, i64* %2822, align 8
  store i64 %2823, i64* %RCX.i1208, align 8
  %2824 = add i64 %2808, -36
  %2825 = add i64 %2810, 16
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2824 to i32*
  %2827 = load i32, i32* %2826, align 4
  %2828 = sext i32 %2827 to i64
  store i64 %2828, i64* %RDX.i1213.pre-phi, align 8
  %2829 = shl nsw i64 %2828, 3
  %2830 = add i64 %2829, %2823
  %2831 = add i64 %2810, 20
  store i64 %2831, i64* %3, align 8
  %2832 = inttoptr i64 %2830 to i64*
  %2833 = load i64, i64* %2832, align 8
  store i64 %2833, i64* %RCX.i1208, align 8
  %2834 = add i64 %2833, 8
  %2835 = add i64 %2810, 24
  store i64 %2835, i64* %3, align 8
  %2836 = inttoptr i64 %2834 to i64*
  %2837 = load i64, i64* %2836, align 8
  store i64 %2837, i64* %RCX.i1208, align 8
  %2838 = add i64 %2808, -20
  %2839 = add i64 %2810, 28
  store i64 %2839, i64* %3, align 8
  %2840 = inttoptr i64 %2838 to i32*
  %2841 = load i32, i32* %2840, align 4
  %2842 = sext i32 %2841 to i64
  store i64 %2842, i64* %RDX.i1213.pre-phi, align 8
  %2843 = shl nsw i64 %2842, 3
  %2844 = add i64 %2843, %2837
  %2845 = add i64 %2810, 32
  store i64 %2845, i64* %3, align 8
  %2846 = inttoptr i64 %2844 to i64*
  %2847 = load i64, i64* %2846, align 8
  store i64 %2847, i64* %RCX.i1208, align 8
  %2848 = add i64 %2808, -12
  %2849 = add i64 %2810, 36
  store i64 %2849, i64* %3, align 8
  %2850 = inttoptr i64 %2848 to i32*
  %2851 = load i32, i32* %2850, align 4
  %2852 = sext i32 %2851 to i64
  store i64 %2852, i64* %RDX.i1213.pre-phi, align 8
  %2853 = shl nsw i64 %2852, 3
  %2854 = add i64 %2853, %2847
  %2855 = add i64 %2810, 40
  store i64 %2855, i64* %3, align 8
  %2856 = inttoptr i64 %2854 to i64*
  %2857 = load i64, i64* %2856, align 8
  store i64 %2857, i64* %RCX.i1208, align 8
  %2858 = add i64 %2810, 43
  store i64 %2858, i64* %3, align 8
  %2859 = inttoptr i64 %2857 to i16*
  %2860 = load i16, i16* %2859, align 2
  store i16 %2860, i16* %DI.i321, align 2
  %2861 = add i64 %2808, -4
  %2862 = add i64 %2810, 47
  store i64 %2862, i64* %3, align 8
  %2863 = inttoptr i64 %2861 to i32*
  %2864 = load i32, i32* %2863, align 4
  %2865 = sext i32 %2864 to i64
  %2866 = shl nsw i64 %2865, 7
  store i64 %2866, i64* %RCX.i1208, align 8
  %2867 = load i64, i64* %RAX.i1218, align 8
  %2868 = add i64 %2866, %2867
  %2869 = lshr i64 %2868, 63
  %2870 = add i64 %2868, 64
  store i64 %2870, i64* %RDX.i1213.pre-phi, align 8
  %2871 = icmp ugt i64 %2868, -65
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %.pre-phi, align 1
  %2873 = trunc i64 %2870 to i32
  %2874 = and i32 %2873, 255
  %2875 = tail call i32 @llvm.ctpop.i32(i32 %2874)
  %2876 = trunc i32 %2875 to i8
  %2877 = and i8 %2876, 1
  %2878 = xor i8 %2877, 1
  store i8 %2878, i8* %.pre-phi101, align 1
  %2879 = xor i64 %2870, %2868
  %2880 = lshr i64 %2879, 4
  %2881 = trunc i64 %2880 to i8
  %2882 = and i8 %2881, 1
  store i8 %2882, i8* %.pre-phi103, align 1
  %2883 = icmp eq i64 %2870, 0
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %.pre-phi105, align 1
  %2885 = lshr i64 %2870, 63
  %2886 = trunc i64 %2885 to i8
  store i8 %2886, i8* %.pre-phi107, align 1
  %2887 = xor i64 %2885, %2869
  %2888 = add nuw nsw i64 %2887, %2885
  %2889 = icmp eq i64 %2888, 2
  %2890 = zext i1 %2889 to i8
  store i8 %2890, i8* %.pre-phi109, align 1
  %2891 = load i64, i64* %RBP.i, align 8
  %2892 = add i64 %2891, -32
  %2893 = add i64 %2810, 65
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i32*
  %2895 = load i32, i32* %2894, align 4
  %2896 = sext i32 %2895 to i64
  %2897 = shl nsw i64 %2896, 4
  store i64 %2897, i64* %RCX.i1208, align 8
  %2898 = add i64 %2897, %2870
  store i64 %2898, i64* %RDX.i1213.pre-phi, align 8
  %2899 = icmp ult i64 %2898, %2870
  %2900 = icmp ult i64 %2898, %2897
  %2901 = or i1 %2899, %2900
  %2902 = zext i1 %2901 to i8
  store i8 %2902, i8* %.pre-phi, align 1
  %2903 = trunc i64 %2898 to i32
  %2904 = and i32 %2903, 255
  %2905 = tail call i32 @llvm.ctpop.i32(i32 %2904)
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  %2908 = xor i8 %2907, 1
  store i8 %2908, i8* %.pre-phi101, align 1
  %2909 = xor i64 %2897, %2870
  %2910 = xor i64 %2909, %2898
  %2911 = lshr i64 %2910, 4
  %2912 = trunc i64 %2911 to i8
  %2913 = and i8 %2912, 1
  store i8 %2913, i8* %.pre-phi103, align 1
  %2914 = icmp eq i64 %2898, 0
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %.pre-phi105, align 1
  %2916 = lshr i64 %2898, 63
  %2917 = trunc i64 %2916 to i8
  store i8 %2917, i8* %.pre-phi107, align 1
  %2918 = lshr i64 %2896, 59
  %2919 = and i64 %2918, 1
  %2920 = xor i64 %2916, %2885
  %2921 = xor i64 %2916, %2919
  %2922 = add nuw nsw i64 %2920, %2921
  %2923 = icmp eq i64 %2922, 2
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %.pre-phi109, align 1
  %2925 = add i64 %2891, -36
  %2926 = add i64 %2810, 76
  store i64 %2926, i64* %3, align 8
  %2927 = inttoptr i64 %2925 to i32*
  %2928 = load i32, i32* %2927, align 4
  %2929 = sext i32 %2928 to i64
  store i64 %2929, i64* %RCX.i1208, align 8
  %2930 = shl nsw i64 %2929, 2
  %2931 = add i64 %2930, %2898
  %2932 = load i16, i16* %DI.i321, align 2
  %2933 = add i64 %2810, 80
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2931 to i16*
  store i16 %2932, i16* %2934, align 2
  %2935 = load i64, i64* %RBP.i, align 8
  %2936 = add i64 %2935, -72
  %2937 = load i64, i64* %3, align 8
  %2938 = add i64 %2937, 4
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2936 to i64*
  %2940 = load i64, i64* %2939, align 8
  store i64 %2940, i64* %RCX.i1208, align 8
  %2941 = add i64 %2935, -32
  %2942 = add i64 %2937, 8
  store i64 %2942, i64* %3, align 8
  %2943 = inttoptr i64 %2941 to i32*
  %2944 = load i32, i32* %2943, align 4
  %2945 = sext i32 %2944 to i64
  store i64 %2945, i64* %RDX.i1213.pre-phi, align 8
  %2946 = shl nsw i64 %2945, 3
  %2947 = add i64 %2946, %2940
  %2948 = add i64 %2937, 12
  store i64 %2948, i64* %3, align 8
  %2949 = inttoptr i64 %2947 to i64*
  %2950 = load i64, i64* %2949, align 8
  store i64 %2950, i64* %RCX.i1208, align 8
  %2951 = add i64 %2935, -36
  %2952 = add i64 %2937, 16
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2951 to i32*
  %2954 = load i32, i32* %2953, align 4
  %2955 = sext i32 %2954 to i64
  store i64 %2955, i64* %RDX.i1213.pre-phi, align 8
  %2956 = shl nsw i64 %2955, 3
  %2957 = add i64 %2956, %2950
  %2958 = add i64 %2937, 20
  store i64 %2958, i64* %3, align 8
  %2959 = inttoptr i64 %2957 to i64*
  %2960 = load i64, i64* %2959, align 8
  store i64 %2960, i64* %RCX.i1208, align 8
  %2961 = add i64 %2960, 8
  %2962 = add i64 %2937, 24
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2961 to i64*
  %2964 = load i64, i64* %2963, align 8
  store i64 %2964, i64* %RCX.i1208, align 8
  %2965 = add i64 %2935, -20
  %2966 = add i64 %2937, 28
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2965 to i32*
  %2968 = load i32, i32* %2967, align 4
  %2969 = sext i32 %2968 to i64
  store i64 %2969, i64* %RDX.i1213.pre-phi, align 8
  %2970 = shl nsw i64 %2969, 3
  %2971 = add i64 %2970, %2964
  %2972 = add i64 %2937, 32
  store i64 %2972, i64* %3, align 8
  %2973 = inttoptr i64 %2971 to i64*
  %2974 = load i64, i64* %2973, align 8
  store i64 %2974, i64* %RCX.i1208, align 8
  %2975 = add i64 %2935, -12
  %2976 = add i64 %2937, 36
  store i64 %2976, i64* %3, align 8
  %2977 = inttoptr i64 %2975 to i32*
  %2978 = load i32, i32* %2977, align 4
  %2979 = sext i32 %2978 to i64
  store i64 %2979, i64* %RDX.i1213.pre-phi, align 8
  %2980 = shl nsw i64 %2979, 3
  %2981 = add i64 %2980, %2974
  %2982 = add i64 %2937, 40
  store i64 %2982, i64* %3, align 8
  %2983 = inttoptr i64 %2981 to i64*
  %2984 = load i64, i64* %2983, align 8
  store i64 %2984, i64* %RCX.i1208, align 8
  %2985 = add i64 %2984, 2
  %2986 = add i64 %2937, 44
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2985 to i16*
  %2988 = load i16, i16* %2987, align 2
  store i16 %2988, i16* %DI.i321, align 2
  %2989 = add i64 %2935, -4
  %2990 = add i64 %2937, 48
  store i64 %2990, i64* %3, align 8
  %2991 = inttoptr i64 %2989 to i32*
  %2992 = load i32, i32* %2991, align 4
  %2993 = sext i32 %2992 to i64
  %2994 = shl nsw i64 %2993, 7
  store i64 %2994, i64* %RCX.i1208, align 8
  %2995 = load i64, i64* %RAX.i1218, align 8
  %2996 = add i64 %2994, %2995
  %2997 = lshr i64 %2996, 63
  %2998 = add i64 %2996, 64
  store i64 %2998, i64* %RAX.i1218, align 8
  %2999 = icmp ugt i64 %2996, -65
  %3000 = zext i1 %2999 to i8
  store i8 %3000, i8* %.pre-phi, align 1
  %3001 = trunc i64 %2998 to i32
  %3002 = and i32 %3001, 255
  %3003 = tail call i32 @llvm.ctpop.i32(i32 %3002)
  %3004 = trunc i32 %3003 to i8
  %3005 = and i8 %3004, 1
  %3006 = xor i8 %3005, 1
  store i8 %3006, i8* %.pre-phi101, align 1
  %3007 = xor i64 %2998, %2996
  %3008 = lshr i64 %3007, 4
  %3009 = trunc i64 %3008 to i8
  %3010 = and i8 %3009, 1
  store i8 %3010, i8* %.pre-phi103, align 1
  %3011 = icmp eq i64 %2998, 0
  %3012 = zext i1 %3011 to i8
  store i8 %3012, i8* %.pre-phi105, align 1
  %3013 = lshr i64 %2998, 63
  %3014 = trunc i64 %3013 to i8
  store i8 %3014, i8* %.pre-phi107, align 1
  %3015 = xor i64 %3013, %2997
  %3016 = add nuw nsw i64 %3015, %3013
  %3017 = icmp eq i64 %3016, 2
  %3018 = zext i1 %3017 to i8
  store i8 %3018, i8* %.pre-phi109, align 1
  %3019 = load i64, i64* %RBP.i, align 8
  %3020 = add i64 %3019, -32
  %3021 = add i64 %2937, 63
  store i64 %3021, i64* %3, align 8
  %3022 = inttoptr i64 %3020 to i32*
  %3023 = load i32, i32* %3022, align 4
  %3024 = sext i32 %3023 to i64
  %3025 = shl nsw i64 %3024, 4
  store i64 %3025, i64* %RCX.i1208, align 8
  %3026 = add i64 %3025, %2998
  store i64 %3026, i64* %RAX.i1218, align 8
  %3027 = icmp ult i64 %3026, %2998
  %3028 = icmp ult i64 %3026, %3025
  %3029 = or i1 %3027, %3028
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %.pre-phi, align 1
  %3031 = trunc i64 %3026 to i32
  %3032 = and i32 %3031, 255
  %3033 = tail call i32 @llvm.ctpop.i32(i32 %3032)
  %3034 = trunc i32 %3033 to i8
  %3035 = and i8 %3034, 1
  %3036 = xor i8 %3035, 1
  store i8 %3036, i8* %.pre-phi101, align 1
  %3037 = xor i64 %3025, %2998
  %3038 = xor i64 %3037, %3026
  %3039 = lshr i64 %3038, 4
  %3040 = trunc i64 %3039 to i8
  %3041 = and i8 %3040, 1
  store i8 %3041, i8* %.pre-phi103, align 1
  %3042 = icmp eq i64 %3026, 0
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %.pre-phi105, align 1
  %3044 = lshr i64 %3026, 63
  %3045 = trunc i64 %3044 to i8
  store i8 %3045, i8* %.pre-phi107, align 1
  %3046 = lshr i64 %3024, 59
  %3047 = and i64 %3046, 1
  %3048 = xor i64 %3044, %3013
  %3049 = xor i64 %3044, %3047
  %3050 = add nuw nsw i64 %3048, %3049
  %3051 = icmp eq i64 %3050, 2
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %.pre-phi109, align 1
  %3053 = add i64 %3019, -36
  %3054 = add i64 %2937, 74
  store i64 %3054, i64* %3, align 8
  %3055 = inttoptr i64 %3053 to i32*
  %3056 = load i32, i32* %3055, align 4
  %3057 = sext i32 %3056 to i64
  store i64 %3057, i64* %RCX.i1208, align 8
  %3058 = shl nsw i64 %3057, 2
  %3059 = add i64 %3026, 2
  %3060 = add i64 %3059, %3058
  %3061 = load i16, i16* %DI.i321, align 2
  %3062 = add i64 %2937, 79
  store i64 %3062, i64* %3, align 8
  %3063 = inttoptr i64 %3060 to i16*
  store i16 %3061, i16* %3063, align 2
  %3064 = load i64, i64* %RBP.i, align 8
  %3065 = add i64 %3064, -32
  %3066 = load i64, i64* %3, align 8
  %3067 = add i64 %3066, 3
  store i64 %3067, i64* %3, align 8
  %3068 = inttoptr i64 %3065 to i32*
  %3069 = load i32, i32* %3068, align 4
  %3070 = add i32 %3069, 1
  %3071 = zext i32 %3070 to i64
  store i64 %3071, i64* %RAX.i1218, align 8
  %3072 = icmp eq i32 %3069, -1
  %3073 = icmp eq i32 %3070, 0
  %3074 = or i1 %3072, %3073
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %.pre-phi, align 1
  %3076 = and i32 %3070, 255
  %3077 = tail call i32 @llvm.ctpop.i32(i32 %3076)
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  %3080 = xor i8 %3079, 1
  store i8 %3080, i8* %.pre-phi101, align 1
  %3081 = xor i32 %3070, %3069
  %3082 = lshr i32 %3081, 4
  %3083 = trunc i32 %3082 to i8
  %3084 = and i8 %3083, 1
  store i8 %3084, i8* %.pre-phi103, align 1
  %3085 = zext i1 %3073 to i8
  store i8 %3085, i8* %.pre-phi105, align 1
  %3086 = lshr i32 %3070, 31
  %3087 = trunc i32 %3086 to i8
  store i8 %3087, i8* %.pre-phi107, align 1
  %3088 = lshr i32 %3069, 31
  %3089 = xor i32 %3086, %3088
  %3090 = add nuw nsw i32 %3089, %3086
  %3091 = icmp eq i32 %3090, 2
  %3092 = zext i1 %3091 to i8
  store i8 %3092, i8* %.pre-phi109, align 1
  %3093 = add i64 %3066, 9
  store i64 %3093, i64* %3, align 8
  store i32 %3070, i32* %3068, align 4
  %3094 = load i64, i64* %3, align 8
  %3095 = add i64 %3094, -359
  store i64 %3095, i64* %3, align 8
  br label %block_.L_4911ab

block_.L_491317:                                  ; preds = %block_.L_4911ab
  %3096 = add i64 %2519, -36
  %3097 = add i64 %2555, 8
  store i64 %3097, i64* %3, align 8
  %3098 = inttoptr i64 %3096 to i32*
  %3099 = load i32, i32* %3098, align 4
  %3100 = add i32 %3099, 1
  %3101 = zext i32 %3100 to i64
  store i64 %3101, i64* %RAX.i1218, align 8
  %3102 = icmp eq i32 %3099, -1
  %3103 = icmp eq i32 %3100, 0
  %3104 = or i1 %3102, %3103
  %3105 = zext i1 %3104 to i8
  store i8 %3105, i8* %.pre-phi, align 1
  %3106 = and i32 %3100, 255
  %3107 = tail call i32 @llvm.ctpop.i32(i32 %3106)
  %3108 = trunc i32 %3107 to i8
  %3109 = and i8 %3108, 1
  %3110 = xor i8 %3109, 1
  store i8 %3110, i8* %.pre-phi101, align 1
  %3111 = xor i32 %3100, %3099
  %3112 = lshr i32 %3111, 4
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  store i8 %3114, i8* %.pre-phi103, align 1
  %3115 = zext i1 %3103 to i8
  store i8 %3115, i8* %.pre-phi105, align 1
  %3116 = lshr i32 %3100, 31
  %3117 = trunc i32 %3116 to i8
  store i8 %3117, i8* %.pre-phi107, align 1
  %3118 = lshr i32 %3099, 31
  %3119 = xor i32 %3116, %3118
  %3120 = add nuw nsw i32 %3119, %3116
  %3121 = icmp eq i32 %3120, 2
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %.pre-phi109, align 1
  %3123 = add i64 %2555, 14
  store i64 %3123, i64* %3, align 8
  store i32 %3100, i32* %3098, align 4
  %3124 = load i64, i64* %3, align 8
  %3125 = add i64 %3124, -396
  store i64 %3125, i64* %3, align 8
  br label %block_.L_491199

block_.L_49132a:                                  ; preds = %block_.L_491199
  %3126 = add i64 %2509, 165
  br label %block_.L_4913cf

block_.L_49132f:                                  ; preds = %block_491189
  %3127 = add i64 %2412, -44
  %3128 = add i64 %2462, 3
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i32*
  %3130 = load i32, i32* %3129, align 4
  %3131 = zext i32 %3130 to i64
  store i64 %3131, i64* %RAX.i1218, align 8
  %3132 = add i64 %2412, -36
  %3133 = add i64 %2462, 6
  store i64 %3133, i64* %3, align 8
  %3134 = inttoptr i64 %3132 to i32*
  store i32 %3130, i32* %3134, align 4
  %.pre92 = load i64, i64* %3, align 8
  br label %block_.L_491335

block_.L_491335:                                  ; preds = %block_.L_4913b7, %block_.L_49132f
  %3135 = phi i64 [ %3428, %block_.L_4913b7 ], [ %.pre92, %block_.L_49132f ]
  %3136 = load i64, i64* %RBP.i, align 8
  %3137 = add i64 %3136, -36
  %3138 = add i64 %3135, 3
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i32*
  %3140 = load i32, i32* %3139, align 4
  %3141 = zext i32 %3140 to i64
  store i64 %3141, i64* %RAX.i1218, align 8
  %3142 = add i64 %3136, -52
  %3143 = add i64 %3135, 6
  store i64 %3143, i64* %3, align 8
  %3144 = inttoptr i64 %3142 to i32*
  %3145 = load i32, i32* %3144, align 4
  %3146 = sub i32 %3140, %3145
  %3147 = icmp ult i32 %3140, %3145
  %3148 = zext i1 %3147 to i8
  store i8 %3148, i8* %.pre-phi, align 1
  %3149 = and i32 %3146, 255
  %3150 = tail call i32 @llvm.ctpop.i32(i32 %3149)
  %3151 = trunc i32 %3150 to i8
  %3152 = and i8 %3151, 1
  %3153 = xor i8 %3152, 1
  store i8 %3153, i8* %.pre-phi101, align 1
  %3154 = xor i32 %3145, %3140
  %3155 = xor i32 %3154, %3146
  %3156 = lshr i32 %3155, 4
  %3157 = trunc i32 %3156 to i8
  %3158 = and i8 %3157, 1
  store i8 %3158, i8* %.pre-phi103, align 1
  %3159 = icmp eq i32 %3146, 0
  %3160 = zext i1 %3159 to i8
  store i8 %3160, i8* %.pre-phi105, align 1
  %3161 = lshr i32 %3146, 31
  %3162 = trunc i32 %3161 to i8
  store i8 %3162, i8* %.pre-phi107, align 1
  %3163 = lshr i32 %3140, 31
  %3164 = lshr i32 %3145, 31
  %3165 = xor i32 %3164, %3163
  %3166 = xor i32 %3161, %3163
  %3167 = add nuw nsw i32 %3166, %3165
  %3168 = icmp eq i32 %3167, 2
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %.pre-phi109, align 1
  %3170 = icmp ne i8 %3162, 0
  %3171 = xor i1 %3170, %3168
  %.v122 = select i1 %3171, i64 12, i64 149
  %3172 = add i64 %3135, %.v122
  store i64 %3172, i64* %3, align 8
  br i1 %3171, label %block_491341, label %block_.L_4913ca

block_491341:                                     ; preds = %block_.L_491335
  %3173 = add i64 %3136, -40
  %3174 = add i64 %3172, 3
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3173 to i32*
  %3176 = load i32, i32* %3175, align 4
  %3177 = zext i32 %3176 to i64
  store i64 %3177, i64* %RAX.i1218, align 8
  %3178 = add i64 %3136, -32
  %3179 = add i64 %3172, 6
  store i64 %3179, i64* %3, align 8
  %3180 = inttoptr i64 %3178 to i32*
  store i32 %3176, i32* %3180, align 4
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_491347

block_.L_491347:                                  ; preds = %block_491353, %block_491341
  %3181 = phi i64 [ %3398, %block_491353 ], [ %.pre93, %block_491341 ]
  %3182 = load i64, i64* %RBP.i, align 8
  %3183 = add i64 %3182, -32
  %3184 = add i64 %3181, 3
  store i64 %3184, i64* %3, align 8
  %3185 = inttoptr i64 %3183 to i32*
  %3186 = load i32, i32* %3185, align 4
  %3187 = zext i32 %3186 to i64
  store i64 %3187, i64* %RAX.i1218, align 8
  %3188 = add i64 %3182, -48
  %3189 = add i64 %3181, 6
  store i64 %3189, i64* %3, align 8
  %3190 = inttoptr i64 %3188 to i32*
  %3191 = load i32, i32* %3190, align 4
  %3192 = sub i32 %3186, %3191
  %3193 = icmp ult i32 %3186, %3191
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %.pre-phi, align 1
  %3195 = and i32 %3192, 255
  %3196 = tail call i32 @llvm.ctpop.i32(i32 %3195)
  %3197 = trunc i32 %3196 to i8
  %3198 = and i8 %3197, 1
  %3199 = xor i8 %3198, 1
  store i8 %3199, i8* %.pre-phi101, align 1
  %3200 = xor i32 %3191, %3186
  %3201 = xor i32 %3200, %3192
  %3202 = lshr i32 %3201, 4
  %3203 = trunc i32 %3202 to i8
  %3204 = and i8 %3203, 1
  store i8 %3204, i8* %.pre-phi103, align 1
  %3205 = icmp eq i32 %3192, 0
  %3206 = zext i1 %3205 to i8
  store i8 %3206, i8* %.pre-phi105, align 1
  %3207 = lshr i32 %3192, 31
  %3208 = trunc i32 %3207 to i8
  store i8 %3208, i8* %.pre-phi107, align 1
  %3209 = lshr i32 %3186, 31
  %3210 = lshr i32 %3191, 31
  %3211 = xor i32 %3210, %3209
  %3212 = xor i32 %3207, %3209
  %3213 = add nuw nsw i32 %3212, %3211
  %3214 = icmp eq i32 %3213, 2
  %3215 = zext i1 %3214 to i8
  store i8 %3215, i8* %.pre-phi109, align 1
  %3216 = icmp ne i8 %3208, 0
  %3217 = xor i1 %3216, %3214
  %.v112 = select i1 %3217, i64 12, i64 112
  %3218 = add i64 %3181, %.v112
  store i64 %3218, i64* %3, align 8
  br i1 %3217, label %block_491353, label %block_.L_4913b7

block_491353:                                     ; preds = %block_.L_491347
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RAX.i1218, align 8
  %3219 = add i64 %3182, -4
  %3220 = add i64 %3218, 14
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3219 to i32*
  %3222 = load i32, i32* %3221, align 4
  %3223 = sext i32 %3222 to i64
  %3224 = shl nsw i64 %3223, 7
  store i64 %3224, i64* %RCX.i1208, align 8
  %3225 = add i64 %3224, ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64)
  %3226 = lshr i64 %3225, 63
  %3227 = add i64 %3224, add (i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64 64)
  store i64 %3227, i64* %RDX.i1213.pre-phi, align 8
  %3228 = icmp ugt i64 %3225, -65
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %.pre-phi, align 1
  %3230 = trunc i64 %3227 to i32
  %3231 = and i32 %3230, 248
  %3232 = tail call i32 @llvm.ctpop.i32(i32 %3231)
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  %3235 = xor i8 %3234, 1
  store i8 %3235, i8* %.pre-phi101, align 1
  %3236 = xor i64 %3227, %3225
  %3237 = lshr i64 %3236, 4
  %3238 = trunc i64 %3237 to i8
  %3239 = and i8 %3238, 1
  store i8 %3239, i8* %.pre-phi103, align 1
  %3240 = icmp eq i64 %3227, 0
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %.pre-phi105, align 1
  %3242 = lshr i64 %3227, 63
  %3243 = trunc i64 %3242 to i8
  store i8 %3243, i8* %.pre-phi107, align 1
  %3244 = xor i64 %3242, %3226
  %3245 = add nuw nsw i64 %3244, %3242
  %3246 = icmp eq i64 %3245, 2
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %.pre-phi109, align 1
  %3248 = load i64, i64* %RBP.i, align 8
  %3249 = add i64 %3248, -32
  %3250 = add i64 %3218, 32
  store i64 %3250, i64* %3, align 8
  %3251 = inttoptr i64 %3249 to i32*
  %3252 = load i32, i32* %3251, align 4
  %3253 = sext i32 %3252 to i64
  %3254 = shl nsw i64 %3253, 4
  store i64 %3254, i64* %RCX.i1208, align 8
  %3255 = add i64 %3254, %3227
  store i64 %3255, i64* %RDX.i1213.pre-phi, align 8
  %3256 = icmp ult i64 %3255, %3227
  %3257 = icmp ult i64 %3255, %3254
  %3258 = or i1 %3256, %3257
  %3259 = zext i1 %3258 to i8
  store i8 %3259, i8* %.pre-phi, align 1
  %3260 = trunc i64 %3255 to i32
  %3261 = and i32 %3260, 255
  %3262 = tail call i32 @llvm.ctpop.i32(i32 %3261)
  %3263 = trunc i32 %3262 to i8
  %3264 = and i8 %3263, 1
  %3265 = xor i8 %3264, 1
  store i8 %3265, i8* %.pre-phi101, align 1
  %3266 = xor i64 %3254, %3227
  %3267 = xor i64 %3266, %3255
  %3268 = lshr i64 %3267, 4
  %3269 = trunc i64 %3268 to i8
  %3270 = and i8 %3269, 1
  store i8 %3270, i8* %.pre-phi103, align 1
  %3271 = icmp eq i64 %3255, 0
  %3272 = zext i1 %3271 to i8
  store i8 %3272, i8* %.pre-phi105, align 1
  %3273 = lshr i64 %3255, 63
  %3274 = trunc i64 %3273 to i8
  store i8 %3274, i8* %.pre-phi107, align 1
  %3275 = lshr i64 %3253, 59
  %3276 = and i64 %3275, 1
  %3277 = xor i64 %3273, %3242
  %3278 = xor i64 %3273, %3276
  %3279 = add nuw nsw i64 %3277, %3278
  %3280 = icmp eq i64 %3279, 2
  %3281 = zext i1 %3280 to i8
  store i8 %3281, i8* %.pre-phi109, align 1
  %3282 = add i64 %3248, -36
  %3283 = add i64 %3218, 43
  store i64 %3283, i64* %3, align 8
  %3284 = inttoptr i64 %3282 to i32*
  %3285 = load i32, i32* %3284, align 4
  %3286 = sext i32 %3285 to i64
  store i64 %3286, i64* %RCX.i1208, align 8
  %3287 = shl nsw i64 %3286, 2
  %3288 = add i64 %3287, %3255
  %3289 = add i64 %3218, 49
  store i64 %3289, i64* %3, align 8
  %3290 = inttoptr i64 %3288 to i16*
  store i16 0, i16* %3290, align 2
  %3291 = load i64, i64* %RBP.i, align 8
  %3292 = add i64 %3291, -4
  %3293 = load i64, i64* %3, align 8
  %3294 = add i64 %3293, 4
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3292 to i32*
  %3296 = load i32, i32* %3295, align 4
  %3297 = sext i32 %3296 to i64
  %3298 = shl nsw i64 %3297, 7
  store i64 %3298, i64* %RCX.i1208, align 8
  %3299 = load i64, i64* %RAX.i1218, align 8
  %3300 = add i64 %3298, %3299
  %3301 = lshr i64 %3300, 63
  %3302 = add i64 %3300, 64
  store i64 %3302, i64* %RAX.i1218, align 8
  %3303 = icmp ugt i64 %3300, -65
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %.pre-phi, align 1
  %3305 = trunc i64 %3302 to i32
  %3306 = and i32 %3305, 255
  %3307 = tail call i32 @llvm.ctpop.i32(i32 %3306)
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = xor i8 %3309, 1
  store i8 %3310, i8* %.pre-phi101, align 1
  %3311 = xor i64 %3302, %3300
  %3312 = lshr i64 %3311, 4
  %3313 = trunc i64 %3312 to i8
  %3314 = and i8 %3313, 1
  store i8 %3314, i8* %.pre-phi103, align 1
  %3315 = icmp eq i64 %3302, 0
  %3316 = zext i1 %3315 to i8
  store i8 %3316, i8* %.pre-phi105, align 1
  %3317 = lshr i64 %3302, 63
  %3318 = trunc i64 %3317 to i8
  store i8 %3318, i8* %.pre-phi107, align 1
  %3319 = xor i64 %3317, %3301
  %3320 = add nuw nsw i64 %3319, %3317
  %3321 = icmp eq i64 %3320, 2
  %3322 = zext i1 %3321 to i8
  store i8 %3322, i8* %.pre-phi109, align 1
  %3323 = add i64 %3291, -32
  %3324 = add i64 %3293, 19
  store i64 %3324, i64* %3, align 8
  %3325 = inttoptr i64 %3323 to i32*
  %3326 = load i32, i32* %3325, align 4
  %3327 = sext i32 %3326 to i64
  %3328 = shl nsw i64 %3327, 4
  store i64 %3328, i64* %RCX.i1208, align 8
  %3329 = add i64 %3328, %3302
  store i64 %3329, i64* %RAX.i1218, align 8
  %3330 = icmp ult i64 %3329, %3302
  %3331 = icmp ult i64 %3329, %3328
  %3332 = or i1 %3330, %3331
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %.pre-phi, align 1
  %3334 = trunc i64 %3329 to i32
  %3335 = and i32 %3334, 255
  %3336 = tail call i32 @llvm.ctpop.i32(i32 %3335)
  %3337 = trunc i32 %3336 to i8
  %3338 = and i8 %3337, 1
  %3339 = xor i8 %3338, 1
  store i8 %3339, i8* %.pre-phi101, align 1
  %3340 = xor i64 %3328, %3302
  %3341 = xor i64 %3340, %3329
  %3342 = lshr i64 %3341, 4
  %3343 = trunc i64 %3342 to i8
  %3344 = and i8 %3343, 1
  store i8 %3344, i8* %.pre-phi103, align 1
  %3345 = icmp eq i64 %3329, 0
  %3346 = zext i1 %3345 to i8
  store i8 %3346, i8* %.pre-phi105, align 1
  %3347 = lshr i64 %3329, 63
  %3348 = trunc i64 %3347 to i8
  store i8 %3348, i8* %.pre-phi107, align 1
  %3349 = lshr i64 %3327, 59
  %3350 = and i64 %3349, 1
  %3351 = xor i64 %3347, %3317
  %3352 = xor i64 %3347, %3350
  %3353 = add nuw nsw i64 %3351, %3352
  %3354 = icmp eq i64 %3353, 2
  %3355 = zext i1 %3354 to i8
  store i8 %3355, i8* %.pre-phi109, align 1
  %3356 = load i64, i64* %RBP.i, align 8
  %3357 = add i64 %3356, -36
  %3358 = add i64 %3293, 30
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i32*
  %3360 = load i32, i32* %3359, align 4
  %3361 = sext i32 %3360 to i64
  store i64 %3361, i64* %RCX.i1208, align 8
  %3362 = shl nsw i64 %3361, 2
  %3363 = add i64 %3329, 2
  %3364 = add i64 %3363, %3362
  %3365 = add i64 %3293, 37
  store i64 %3365, i64* %3, align 8
  %3366 = inttoptr i64 %3364 to i16*
  store i16 0, i16* %3366, align 2
  %3367 = load i64, i64* %RBP.i, align 8
  %3368 = add i64 %3367, -32
  %3369 = load i64, i64* %3, align 8
  %3370 = add i64 %3369, 3
  store i64 %3370, i64* %3, align 8
  %3371 = inttoptr i64 %3368 to i32*
  %3372 = load i32, i32* %3371, align 4
  %3373 = add i32 %3372, 1
  %3374 = zext i32 %3373 to i64
  store i64 %3374, i64* %RAX.i1218, align 8
  %3375 = icmp eq i32 %3372, -1
  %3376 = icmp eq i32 %3373, 0
  %3377 = or i1 %3375, %3376
  %3378 = zext i1 %3377 to i8
  store i8 %3378, i8* %.pre-phi, align 1
  %3379 = and i32 %3373, 255
  %3380 = tail call i32 @llvm.ctpop.i32(i32 %3379)
  %3381 = trunc i32 %3380 to i8
  %3382 = and i8 %3381, 1
  %3383 = xor i8 %3382, 1
  store i8 %3383, i8* %.pre-phi101, align 1
  %3384 = xor i32 %3373, %3372
  %3385 = lshr i32 %3384, 4
  %3386 = trunc i32 %3385 to i8
  %3387 = and i8 %3386, 1
  store i8 %3387, i8* %.pre-phi103, align 1
  %3388 = zext i1 %3376 to i8
  store i8 %3388, i8* %.pre-phi105, align 1
  %3389 = lshr i32 %3373, 31
  %3390 = trunc i32 %3389 to i8
  store i8 %3390, i8* %.pre-phi107, align 1
  %3391 = lshr i32 %3372, 31
  %3392 = xor i32 %3389, %3391
  %3393 = add nuw nsw i32 %3392, %3389
  %3394 = icmp eq i32 %3393, 2
  %3395 = zext i1 %3394 to i8
  store i8 %3395, i8* %.pre-phi109, align 1
  %3396 = add i64 %3369, 9
  store i64 %3396, i64* %3, align 8
  store i32 %3373, i32* %3371, align 4
  %3397 = load i64, i64* %3, align 8
  %3398 = add i64 %3397, -107
  store i64 %3398, i64* %3, align 8
  br label %block_.L_491347

block_.L_4913b7:                                  ; preds = %block_.L_491347
  %3399 = add i64 %3182, -36
  %3400 = add i64 %3218, 8
  store i64 %3400, i64* %3, align 8
  %3401 = inttoptr i64 %3399 to i32*
  %3402 = load i32, i32* %3401, align 4
  %3403 = add i32 %3402, 1
  %3404 = zext i32 %3403 to i64
  store i64 %3404, i64* %RAX.i1218, align 8
  %3405 = icmp eq i32 %3402, -1
  %3406 = icmp eq i32 %3403, 0
  %3407 = or i1 %3405, %3406
  %3408 = zext i1 %3407 to i8
  store i8 %3408, i8* %.pre-phi, align 1
  %3409 = and i32 %3403, 255
  %3410 = tail call i32 @llvm.ctpop.i32(i32 %3409)
  %3411 = trunc i32 %3410 to i8
  %3412 = and i8 %3411, 1
  %3413 = xor i8 %3412, 1
  store i8 %3413, i8* %.pre-phi101, align 1
  %3414 = xor i32 %3403, %3402
  %3415 = lshr i32 %3414, 4
  %3416 = trunc i32 %3415 to i8
  %3417 = and i8 %3416, 1
  store i8 %3417, i8* %.pre-phi103, align 1
  %3418 = zext i1 %3406 to i8
  store i8 %3418, i8* %.pre-phi105, align 1
  %3419 = lshr i32 %3403, 31
  %3420 = trunc i32 %3419 to i8
  store i8 %3420, i8* %.pre-phi107, align 1
  %3421 = lshr i32 %3402, 31
  %3422 = xor i32 %3419, %3421
  %3423 = add nuw nsw i32 %3422, %3419
  %3424 = icmp eq i32 %3423, 2
  %3425 = zext i1 %3424 to i8
  store i8 %3425, i8* %.pre-phi109, align 1
  %3426 = add i64 %3218, 14
  store i64 %3426, i64* %3, align 8
  store i32 %3403, i32* %3401, align 4
  %3427 = load i64, i64* %3, align 8
  %3428 = add i64 %3427, -144
  store i64 %3428, i64* %3, align 8
  br label %block_.L_491335

block_.L_4913ca:                                  ; preds = %block_.L_491335
  %3429 = add i64 %3172, 5
  store i64 %3429, i64* %3, align 8
  br label %block_.L_4913cf

block_.L_4913cf:                                  ; preds = %block_.L_4913ca, %block_.L_49132a
  %storemerge51 = phi i64 [ %3126, %block_.L_49132a ], [ %3429, %block_.L_4913ca ]
  %3430 = add i64 %storemerge51, 5
  br label %block_.L_4913d4

block_.L_4913d4:                                  ; preds = %block_.L_4913cf, %block_.L_490f46, %block_.L_490dc4
  %.sink = phi i64 [ %3430, %block_.L_4913cf ], [ %1391, %block_.L_490f46 ], [ %728, %block_.L_490dc4 ]
  %3431 = add i64 %.sink, 1
  store i64 %3431, i64* %3, align 8
  %3432 = load i64, i64* %6, align 8
  %3433 = add i64 %3432, 8
  %3434 = inttoptr i64 %3432 to i64*
  %3435 = load i64, i64* %3434, align 8
  store i64 %3435, i64* %RBP.i, align 8
  store i64 %3433, i64* %6, align 8
  %3436 = add i64 %.sink, 2
  store i64 %3436, i64* %3, align 8
  %3437 = inttoptr i64 %3433 to i64*
  %3438 = load i64, i64* %3437, align 8
  store i64 %3438, i64* %3, align 8
  %3439 = add i64 %3432, 16
  store i64 %3439, i64* %6, align 8
  ret %struct.Memory* %169
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl__0x2___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 2, i64* %3, align 8
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
define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq_0x6cb900___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x118f8__r11____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = add i64 %3, 71928
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x118f0__r11____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = add i64 %3, 71920
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

define %struct.Memory* @routine_idivl__r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R10D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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
define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jge_.L_490dc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_jge_.L_490dc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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
define %struct.Memory* @routine_jge_.L_490db1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6d2090___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 7
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 57
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 128
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = xor i8 %15, 1
  store i8 %16, i8* %11, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %19 = icmp eq i64 %6, 0
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %18, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %22 = lshr i64 %3, 56
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  store i8 %24, i8* %21, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movw__0x0____rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  store i16 0, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0x0__0x2__rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 2
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  store i16 0, i16* %10, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_addq__0x40___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movw__0x0__0x2__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 2
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i16*
  store i16 0, i16* %10, align 2
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
define %struct.Memory* @routine_jmpq_.L_490cfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490db6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490ce8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4913d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jne_.L_490f4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_490f46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_490f33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6d32e0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d32e0_type* @G__0x6d32e0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x6d2090___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d2090_type* @G__0x6d2090 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movq___rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw___rdx____di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i16, i16* %5, align 2
  store i16 %8, i16* %DI, align 2
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
define %struct.Memory* @routine_shlq__0x7___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 7
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 57
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 128
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = xor i8 %15, 1
  store i8 %16, i8* %11, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %19 = icmp eq i64 %6, 0
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %18, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %22 = lshr i64 %3, 56
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  store i8 %24, i8* %21, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di____rsi__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x2__rdx____di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %DI, align 2
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
define %struct.Memory* @routine_movw__di__0x2__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 2
  %8 = add i64 %7, %6
  %9 = load i16, i16* %DI, align 2
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i16*
  store i16 %9, i16* %12, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw___rcx____di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i16, i16* %5, align 2
  store i16 %8, i16* %DI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di____rdx__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x2__rcx____di(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %DI, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__di__0x2__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 2
  %8 = add i64 %7, %6
  %9 = load i16, i16* %DI, align 2
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i16*
  store i16 %9, i16* %12, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490deb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490f38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490dd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_490f5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jne_.L_4910e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4910e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4910cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jmpq_.L_490f77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4910d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490f65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49117f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_49117a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_491167(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4910ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49116c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4910ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_je_.L_491193(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_49132f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_49132a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_491317(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_addq__0x40___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_4911ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49131c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_491199(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4913cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4913ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4913b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_491347(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4913bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_491335(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
