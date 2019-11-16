; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a49b_type = type <{ [8 x i8] }>
%G__0x57a550_type = type <{ [8 x i8] }>
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
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a49b = global %G__0x57a49b_type zeroinitializer
@G__0x57a550 = global %G__0x57a550_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @second_order_liberty_of_string(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -16
  %41 = load i32, i32* %EDI.i, align 4
  %42 = add i64 %10, 10
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 7
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, -421
  %58 = icmp ult i32 %56, 421
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %14, align 1
  %60 = and i32 %57, 255
  %61 = tail call i32 @llvm.ctpop.i32(i32 %60)
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  store i8 %64, i8* %21, align 1
  %65 = xor i32 %57, %56
  %66 = lshr i32 %65, 4
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  store i8 %68, i8* %26, align 1
  %69 = icmp eq i32 %57, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %29, align 1
  %71 = lshr i32 %57, 31
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %32, align 1
  %73 = lshr i32 %56, 31
  %74 = xor i32 %71, %73
  %75 = add nuw nsw i32 %74, %73
  %76 = icmp eq i32 %75, 2
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %38, align 1
  %.v = select i1 %58, i64 13, i64 39
  %78 = add i64 %53, %.v
  store i64 %78, i64* %3, align 8
  br i1 %58, label %block_414d5b, label %entry.block_.L_414d75_crit_edge

entry.block_.L_414d75_crit_edge:                  ; preds = %entry
  %.pre38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre40 = getelementptr inbounds %union.anon, %union.anon* %.pre38, i64 0, i32 0
  br label %block_.L_414d75

block_414d5b:                                     ; preds = %entry
  %RAX.i389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %79 = add i64 %78, 4
  store i64 %79, i64* %3, align 8
  %80 = load i32, i32* %55, align 4
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %RAX.i389, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i387 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  %83 = add nsw i64 %81, 12099168
  %84 = add i64 %78, 12
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i8*
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  store i64 %87, i64* %RCX.i387, align 8
  %88 = zext i8 %86 to i32
  %89 = add nsw i32 %88, -3
  %90 = icmp ult i8 %86, 3
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %14, align 1
  %92 = and i32 %89, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92)
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %21, align 1
  %97 = xor i32 %89, %88
  %98 = lshr i32 %97, 4
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  store i8 %100, i8* %26, align 1
  %101 = icmp eq i32 %89, 0
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %29, align 1
  %103 = lshr i32 %89, 31
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v58 = select i1 %101, i64 26, i64 21
  %105 = add i64 %78, %.v58
  store i64 %105, i64* %3, align 8
  br i1 %101, label %block_.L_414d75, label %block_414d70

block_414d70:                                     ; preds = %block_414d5b
  %106 = add i64 %105, 94
  store i64 %106, i64* %3, align 8
  br label %block_.L_414dce

block_.L_414d75:                                  ; preds = %entry.block_.L_414d75_crit_edge, %block_414d5b
  %ECX.i365.pre-phi.in = phi %union.anon* [ %.pre38, %entry.block_.L_414d75_crit_edge ], [ %82, %block_414d5b ]
  %RCX.i371.pre-phi = phi i64* [ %.pre40, %entry.block_.L_414d75_crit_edge ], [ %RCX.i387, %block_414d5b ]
  %107 = phi i64 [ %78, %entry.block_.L_414d75_crit_edge ], [ %105, %block_414d5b ]
  %ECX.i365.pre-phi = bitcast %union.anon* %ECX.i365.pre-phi.in to i32*
  %RDI.i380 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i380, align 8
  %RSI.i378 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 2397, i64* %RSI.i378, align 8
  %RDX.i376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX.i376, align 8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i374 = getelementptr inbounds %union.anon, %union.anon* %108, i64 0, i32 0
  store i64 20, i64* %RAX.i374, align 8
  %109 = add i64 %107, 33
  store i64 %109, i64* %3, align 8
  %110 = load i32, i32* %55, align 4
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RCX.i371.pre-phi, align 8
  %EAX.i368 = bitcast %union.anon* %108 to i32*
  %112 = add i64 %51, -20
  %113 = add i64 %107, 36
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i32*
  store i32 20, i32* %114, align 4
  %115 = load i32, i32* %ECX.i365.pre-phi, align 4
  %116 = zext i32 %115 to i64
  %117 = load i64, i64* %3, align 8
  store i64 %116, i64* %RAX.i374, align 8
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -32
  %120 = load i64, i64* %RDX.i376, align 8
  %121 = add i64 %117, 6
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %119 to i64*
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %3, align 8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %125 = load i32, i32* %EAX.i368, align 8
  %126 = sext i32 %125 to i64
  %127 = lshr i64 %126, 32
  store i64 %127, i64* %124, align 8
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -20
  %130 = add i64 %123, 4
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RCX.i371.pre-phi, align 8
  %134 = add i64 %123, 6
  store i64 %134, i64* %3, align 8
  %135 = zext i32 %125 to i64
  %136 = sext i32 %132 to i64
  %137 = shl nuw i64 %127, 32
  %138 = or i64 %137, %135
  %139 = sdiv i64 %138, %136
  %140 = shl i64 %139, 32
  %141 = ashr exact i64 %140, 32
  %142 = icmp eq i64 %139, %141
  br i1 %142, label %145, label %143

; <label>:143:                                    ; preds = %block_.L_414d75
  %144 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %134, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i374, align 8
  %.pre16 = load i64, i64* %3, align 8
  %.pre17 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit354

; <label>:145:                                    ; preds = %block_.L_414d75
  %146 = srem i64 %138, %136
  %147 = and i64 %139, 4294967295
  store i64 %147, i64* %RAX.i374, align 8
  %148 = and i64 %146, 4294967295
  store i64 %148, i64* %RDX.i376, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit354

routine_idivl__ecx.exit354:                       ; preds = %145, %143
  %149 = phi i64 [ %.pre17, %143 ], [ %128, %145 ]
  %150 = phi i64 [ %.pre16, %143 ], [ %134, %145 ]
  %151 = phi i64 [ %.pre, %143 ], [ %147, %145 ]
  %152 = phi %struct.Memory* [ %144, %143 ], [ %2, %145 ]
  %153 = trunc i64 %151 to i32
  %154 = add i32 %153, -1
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RAX.i374, align 8
  %156 = icmp eq i32 %153, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %14, align 1
  %158 = and i32 %154, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %21, align 1
  %163 = xor i32 %154, %153
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %26, align 1
  %167 = icmp eq i32 %154, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %29, align 1
  %169 = lshr i32 %154, 31
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %32, align 1
  %171 = lshr i32 %153, 31
  %172 = xor i32 %169, %171
  %173 = add nuw nsw i32 %172, %171
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %38, align 1
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i348 = bitcast %union.anon* %176 to i32*
  %177 = getelementptr inbounds %union.anon, %union.anon* %176, i64 0, i32 0
  %178 = add i64 %149, -8
  %179 = add i64 %150, 7
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %177, align 8
  %183 = add i64 %149, -36
  %184 = add i64 %150, 10
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i32*
  store i32 %154, i32* %185, align 4
  %186 = load i32, i32* %R8D.i348, align 4
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* %3, align 8
  store i64 %187, i64* %RAX.i374, align 8
  %189 = sext i32 %186 to i64
  %190 = lshr i64 %189, 32
  store i64 %190, i64* %124, align 8
  %191 = load i32, i32* %ECX.i365.pre-phi, align 4
  %192 = add i64 %188, 6
  store i64 %192, i64* %3, align 8
  %193 = sext i32 %191 to i64
  %194 = shl nuw i64 %190, 32
  %195 = or i64 %194, %187
  %196 = sdiv i64 %195, %193
  %197 = shl i64 %196, 32
  %198 = ashr exact i64 %197, 32
  %199 = icmp eq i64 %196, %198
  br i1 %199, label %202, label %200

; <label>:200:                                    ; preds = %routine_idivl__ecx.exit354
  %201 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %192, %struct.Memory* %152)
  %.pre18 = load i64, i64* %RDX.i376, align 8
  %.pre19 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit337

; <label>:202:                                    ; preds = %routine_idivl__ecx.exit354
  %203 = srem i64 %195, %193
  %204 = and i64 %196, 4294967295
  store i64 %204, i64* %RAX.i374, align 8
  %205 = and i64 %203, 4294967295
  store i64 %205, i64* %RDX.i376, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit337

routine_idivl__ecx.exit337:                       ; preds = %202, %200
  %206 = phi i64 [ %.pre19, %200 ], [ %192, %202 ]
  %207 = phi i64 [ %.pre18, %200 ], [ %205, %202 ]
  %208 = phi %struct.Memory* [ %201, %200 ], [ %152, %202 ]
  %209 = trunc i64 %207 to i32
  %210 = add i32 %209, -1
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RDX.i376, align 8
  %212 = icmp eq i32 %209, 0
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %14, align 1
  %214 = and i32 %210, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214)
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %21, align 1
  %219 = xor i32 %210, %209
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %26, align 1
  %223 = icmp eq i32 %210, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %29, align 1
  %225 = lshr i32 %210, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %32, align 1
  %227 = lshr i32 %209, 31
  %228 = xor i32 %225, %227
  %229 = add nuw nsw i32 %228, %227
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %38, align 1
  %R9.i332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -32
  %234 = add i64 %206, 7
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i64*
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %R9.i332, align 8
  %237 = add i64 %232, -40
  %238 = add i64 %206, 10
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i32*
  store i32 %210, i32* %239, align 4
  %240 = load i64, i64* %R9.i332, align 8
  %241 = load i64, i64* %3, align 8
  store i64 %240, i64* %RDX.i376, align 8
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -36
  %244 = add i64 %241, 6
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RCX.i371.pre-phi, align 8
  %248 = add i64 %242, -40
  %249 = add i64 %241, 10
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %177, align 8
  %253 = add i64 %241, 250577
  %254 = add i64 %241, 15
  %255 = load i64, i64* %6, align 8
  %256 = add i64 %255, -8
  %257 = inttoptr i64 %256 to i64*
  store i64 %254, i64* %257, align 8
  store i64 %256, i64* %6, align 8
  store i64 %253, i64* %3, align 8
  %call2_414dc9 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %253, %struct.Memory* %208)
  %.pre20 = load i64, i64* %RBP.i, align 8
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_414dce

block_.L_414dce:                                  ; preds = %routine_idivl__ecx.exit337, %block_414d70
  %258 = phi i64 [ %.pre21, %routine_idivl__ecx.exit337 ], [ %106, %block_414d70 ]
  %259 = phi i64 [ %.pre20, %routine_idivl__ecx.exit337 ], [ %51, %block_414d70 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_414dc9, %routine_idivl__ecx.exit337 ], [ %2, %block_414d70 ]
  %260 = add i64 %259, -12
  %261 = add i64 %258, 7
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = add i32 %263, -421
  %265 = icmp ult i32 %263, 421
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %14, align 1
  %267 = and i32 %264, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %21, align 1
  %272 = xor i32 %264, %263
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %26, align 1
  %276 = icmp eq i32 %264, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %29, align 1
  %278 = lshr i32 %264, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %32, align 1
  %280 = lshr i32 %263, 31
  %281 = xor i32 %278, %280
  %282 = add nuw nsw i32 %281, %280
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %38, align 1
  %.v46 = select i1 %265, i64 13, i64 39
  %285 = add i64 %258, %.v46
  store i64 %285, i64* %3, align 8
  br i1 %265, label %block_414ddb, label %block_.L_414dce.block_.L_414df5_crit_edge

block_.L_414dce.block_.L_414df5_crit_edge:        ; preds = %block_.L_414dce
  %.pre42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre44 = getelementptr inbounds %union.anon, %union.anon* %.pre42, i64 0, i32 0
  br label %block_.L_414df5

block_414ddb:                                     ; preds = %block_.L_414dce
  %RAX.i312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %286 = add i64 %285, 4
  store i64 %286, i64* %3, align 8
  %287 = load i32, i32* %262, align 4
  %288 = sext i32 %287 to i64
  store i64 %288, i64* %RAX.i312, align 8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i310 = getelementptr inbounds %union.anon, %union.anon* %289, i64 0, i32 0
  %290 = add nsw i64 %288, 12099168
  %291 = add i64 %285, 12
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i8*
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i64
  store i64 %294, i64* %RCX.i310, align 8
  %295 = zext i8 %293 to i32
  %296 = add nsw i32 %295, -3
  %297 = icmp ult i8 %293, 3
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %14, align 1
  %299 = and i32 %296, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299)
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %21, align 1
  %304 = xor i32 %296, %295
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %26, align 1
  %308 = icmp eq i32 %296, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %29, align 1
  %310 = lshr i32 %296, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v57 = select i1 %308, i64 26, i64 21
  %312 = add i64 %285, %.v57
  store i64 %312, i64* %3, align 8
  br i1 %308, label %block_.L_414df5, label %block_414df0

block_414df0:                                     ; preds = %block_414ddb
  %313 = add i64 %312, 94
  store i64 %313, i64* %3, align 8
  %.pre32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  br label %block_.L_414e4e

block_.L_414df5:                                  ; preds = %block_.L_414dce.block_.L_414df5_crit_edge, %block_414ddb
  %ECX.i290.pre-phi.in = phi %union.anon* [ %.pre42, %block_.L_414dce.block_.L_414df5_crit_edge ], [ %289, %block_414ddb ]
  %RCX.i296.pre-phi = phi i64* [ %.pre44, %block_.L_414dce.block_.L_414df5_crit_edge ], [ %RCX.i310, %block_414ddb ]
  %314 = phi i64 [ %285, %block_.L_414dce.block_.L_414df5_crit_edge ], [ %312, %block_414ddb ]
  %ECX.i290.pre-phi = bitcast %union.anon* %ECX.i290.pre-phi.in to i32*
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 2398, i64* %RSI.i, align 8
  %RDX.i301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a550_type* @G__0x57a550 to i64), i64* %RDX.i301, align 8
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i299 = getelementptr inbounds %union.anon, %union.anon* %315, i64 0, i32 0
  store i64 20, i64* %RAX.i299, align 8
  %316 = add i64 %314, 33
  store i64 %316, i64* %3, align 8
  %317 = load i32, i32* %262, align 4
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RCX.i296.pre-phi, align 8
  %EAX.i293 = bitcast %union.anon* %315 to i32*
  %319 = add i64 %259, -44
  %320 = add i64 %314, 36
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  store i32 20, i32* %321, align 4
  %322 = load i32, i32* %ECX.i290.pre-phi, align 4
  %323 = zext i32 %322 to i64
  %324 = load i64, i64* %3, align 8
  store i64 %323, i64* %RAX.i299, align 8
  %325 = load i64, i64* %RBP.i, align 8
  %326 = add i64 %325, -56
  %327 = load i64, i64* %RDX.i301, align 8
  %328 = add i64 %324, 6
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %326 to i64*
  store i64 %327, i64* %329, align 8
  %330 = load i64, i64* %3, align 8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %332 = load i32, i32* %EAX.i293, align 8
  %333 = sext i32 %332 to i64
  %334 = lshr i64 %333, 32
  store i64 %334, i64* %331, align 8
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -44
  %337 = add i64 %330, 4
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RCX.i296.pre-phi, align 8
  %341 = add i64 %330, 6
  store i64 %341, i64* %3, align 8
  %342 = zext i32 %332 to i64
  %343 = sext i32 %339 to i64
  %344 = shl nuw i64 %334, 32
  %345 = or i64 %344, %342
  %346 = sdiv i64 %345, %343
  %347 = shl i64 %346, 32
  %348 = ashr exact i64 %347, 32
  %349 = icmp eq i64 %346, %348
  br i1 %349, label %352, label %350

; <label>:350:                                    ; preds = %block_.L_414df5
  %351 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %341, %struct.Memory* %MEMORY.1)
  %.pre22 = load i64, i64* %RAX.i299, align 8
  %.pre23 = load i64, i64* %3, align 8
  %.pre24 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit279

; <label>:352:                                    ; preds = %block_.L_414df5
  %353 = srem i64 %345, %343
  %354 = and i64 %346, 4294967295
  store i64 %354, i64* %RAX.i299, align 8
  %355 = and i64 %353, 4294967295
  store i64 %355, i64* %RDX.i301, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit279

routine_idivl__ecx.exit279:                       ; preds = %352, %350
  %356 = phi i64 [ %.pre24, %350 ], [ %335, %352 ]
  %357 = phi i64 [ %.pre23, %350 ], [ %341, %352 ]
  %358 = phi i64 [ %.pre22, %350 ], [ %354, %352 ]
  %359 = phi %struct.Memory* [ %351, %350 ], [ %MEMORY.1, %352 ]
  %360 = trunc i64 %358 to i32
  %361 = add i32 %360, -1
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %RAX.i299, align 8
  %363 = icmp eq i32 %360, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %14, align 1
  %365 = and i32 %361, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365)
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %21, align 1
  %370 = xor i32 %361, %360
  %371 = lshr i32 %370, 4
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  store i8 %373, i8* %26, align 1
  %374 = icmp eq i32 %361, 0
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %29, align 1
  %376 = lshr i32 %361, 31
  %377 = trunc i32 %376 to i8
  store i8 %377, i8* %32, align 1
  %378 = lshr i32 %360, 31
  %379 = xor i32 %376, %378
  %380 = add nuw nsw i32 %379, %378
  %381 = icmp eq i32 %380, 2
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %38, align 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i273 = bitcast %union.anon* %383 to i32*
  %384 = getelementptr inbounds %union.anon, %union.anon* %383, i64 0, i32 0
  %385 = add i64 %356, -12
  %386 = add i64 %357, 7
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %384, align 8
  %390 = add i64 %356, -60
  %391 = add i64 %357, 10
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i32*
  store i32 %361, i32* %392, align 4
  %393 = load i32, i32* %R8D.i273, align 4
  %394 = zext i32 %393 to i64
  %395 = load i64, i64* %3, align 8
  store i64 %394, i64* %RAX.i299, align 8
  %396 = sext i32 %393 to i64
  %397 = lshr i64 %396, 32
  store i64 %397, i64* %331, align 8
  %398 = load i32, i32* %ECX.i290.pre-phi, align 4
  %399 = add i64 %395, 6
  store i64 %399, i64* %3, align 8
  %400 = sext i32 %398 to i64
  %401 = shl nuw i64 %397, 32
  %402 = or i64 %401, %394
  %403 = sdiv i64 %402, %400
  %404 = shl i64 %403, 32
  %405 = ashr exact i64 %404, 32
  %406 = icmp eq i64 %403, %405
  br i1 %406, label %409, label %407

; <label>:407:                                    ; preds = %routine_idivl__ecx.exit279
  %408 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %399, %struct.Memory* %359)
  %.pre25 = load i64, i64* %RDX.i301, align 8
  %.pre26 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:409:                                    ; preds = %routine_idivl__ecx.exit279
  %410 = srem i64 %402, %400
  %411 = and i64 %403, 4294967295
  store i64 %411, i64* %RAX.i299, align 8
  %412 = and i64 %410, 4294967295
  store i64 %412, i64* %RDX.i301, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %409, %407
  %413 = phi i64 [ %.pre26, %407 ], [ %399, %409 ]
  %414 = phi i64 [ %.pre25, %407 ], [ %412, %409 ]
  %415 = phi %struct.Memory* [ %408, %407 ], [ %359, %409 ]
  %416 = trunc i64 %414 to i32
  %417 = add i32 %416, -1
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RDX.i301, align 8
  %419 = icmp eq i32 %416, 0
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %14, align 1
  %421 = and i32 %417, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %21, align 1
  %426 = xor i32 %417, %416
  %427 = lshr i32 %426, 4
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  store i8 %429, i8* %26, align 1
  %430 = icmp eq i32 %417, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %29, align 1
  %432 = lshr i32 %417, 31
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %32, align 1
  %434 = lshr i32 %416, 31
  %435 = xor i32 %432, %434
  %436 = add nuw nsw i32 %435, %434
  %437 = icmp eq i32 %436, 2
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %38, align 1
  %R9.i258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %439 = load i64, i64* %RBP.i, align 8
  %440 = add i64 %439, -56
  %441 = add i64 %413, 7
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %R9.i258, align 8
  %444 = add i64 %439, -64
  %445 = add i64 %413, 10
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  store i32 %417, i32* %446, align 4
  %447 = load i64, i64* %R9.i258, align 8
  %448 = load i64, i64* %3, align 8
  store i64 %447, i64* %RDX.i301, align 8
  %449 = load i64, i64* %RBP.i, align 8
  %450 = add i64 %449, -60
  %451 = add i64 %448, 6
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RCX.i296.pre-phi, align 8
  %455 = add i64 %449, -64
  %456 = add i64 %448, 10
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %384, align 8
  %460 = add i64 %448, 250449
  %461 = add i64 %448, 15
  %462 = load i64, i64* %6, align 8
  %463 = add i64 %462, -8
  %464 = inttoptr i64 %463 to i64*
  store i64 %461, i64* %464, align 8
  store i64 %463, i64* %6, align 8
  store i64 %460, i64* %3, align 8
  %call2_414e49 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %460, %struct.Memory* %415)
  %.pre27 = load i64, i64* %RBP.i, align 8
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_414e4e

block_.L_414e4e:                                  ; preds = %routine_idivl__ecx.exit, %block_414df0
  %RDX.i201.pre-phi = phi i64* [ %RDX.i301, %routine_idivl__ecx.exit ], [ %.pre36, %block_414df0 ]
  %RAX.i238.pre-phi = phi i64* [ %RAX.i299, %routine_idivl__ecx.exit ], [ %.pre32, %block_414df0 ]
  %465 = phi i64 [ %.pre28, %routine_idivl__ecx.exit ], [ %313, %block_414df0 ]
  %466 = phi i64 [ %.pre27, %routine_idivl__ecx.exit ], [ %259, %block_414df0 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_414e49, %routine_idivl__ecx.exit ], [ %MEMORY.1, %block_414df0 ]
  %467 = add i64 %466, -16
  %468 = add i64 %465, 7
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  store i32 0, i32* %469, align 4
  %RCX.i235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_414e55

block_.L_414e55:                                  ; preds = %block_.L_414ffd, %block_.L_414e4e
  %470 = phi i64 [ %1224, %block_.L_414ffd ], [ %.pre29, %block_.L_414e4e ]
  %471 = load i64, i64* %RBP.i, align 8
  %472 = add i64 %471, -16
  %473 = add i64 %470, 4
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = add i32 %475, -4
  %477 = icmp ult i32 %475, 4
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %14, align 1
  %479 = and i32 %476, 255
  %480 = tail call i32 @llvm.ctpop.i32(i32 %479)
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = xor i8 %482, 1
  store i8 %483, i8* %21, align 1
  %484 = xor i32 %476, %475
  %485 = lshr i32 %484, 4
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  store i8 %487, i8* %26, align 1
  %488 = icmp eq i32 %476, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %29, align 1
  %490 = lshr i32 %476, 31
  %491 = trunc i32 %490 to i8
  store i8 %491, i8* %32, align 1
  %492 = lshr i32 %475, 31
  %493 = xor i32 %490, %492
  %494 = add nuw nsw i32 %493, %492
  %495 = icmp eq i32 %494, 2
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %38, align 1
  %497 = icmp ne i8 %491, 0
  %498 = xor i1 %497, %495
  %.v47 = select i1 %498, i64 10, i64 443
  %499 = add i64 %470, %.v47
  store i64 %499, i64* %3, align 8
  br i1 %498, label %block_414e5f, label %block_.L_415010

block_414e5f:                                     ; preds = %block_.L_414e55
  %500 = add i64 %471, -8
  %501 = add i64 %499, 3
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = zext i32 %503 to i64
  store i64 %504, i64* %RAX.i238.pre-phi, align 8
  %505 = add i64 %499, 7
  store i64 %505, i64* %3, align 8
  %506 = load i32, i32* %474, align 4
  %507 = sext i32 %506 to i64
  store i64 %507, i64* %RCX.i235, align 8
  %508 = shl nsw i64 %507, 2
  %509 = add nsw i64 %508, 8053168
  %510 = add i64 %499, 14
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = add i32 %512, %503
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RAX.i238.pre-phi, align 8
  %515 = icmp ult i32 %513, %503
  %516 = icmp ult i32 %513, %512
  %517 = or i1 %515, %516
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %14, align 1
  %519 = and i32 %513, 255
  %520 = tail call i32 @llvm.ctpop.i32(i32 %519)
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  store i8 %523, i8* %21, align 1
  %524 = xor i32 %512, %503
  %525 = xor i32 %524, %513
  %526 = lshr i32 %525, 4
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  store i8 %528, i8* %26, align 1
  %529 = icmp eq i32 %513, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %29, align 1
  %531 = lshr i32 %513, 31
  %532 = trunc i32 %531 to i8
  store i8 %532, i8* %32, align 1
  %533 = lshr i32 %503, 31
  %534 = lshr i32 %512, 31
  %535 = xor i32 %531, %533
  %536 = xor i32 %531, %534
  %537 = add nuw nsw i32 %535, %536
  %538 = icmp eq i32 %537, 2
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %38, align 1
  %540 = sext i32 %513 to i64
  store i64 %540, i64* %RCX.i235, align 8
  %541 = add nsw i64 %540, 12099168
  %542 = add i64 %499, 25
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i8*
  %544 = load i8, i8* %543, align 1
  %545 = zext i8 %544 to i64
  store i64 %545, i64* %RAX.i238.pre-phi, align 8
  %546 = zext i8 %544 to i32
  store i8 0, i8* %14, align 1
  %547 = tail call i32 @llvm.ctpop.i32(i32 %546)
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = xor i8 %549, 1
  store i8 %550, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %551 = icmp eq i8 %544, 0
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v48 = select i1 %551, i64 34, i64 414
  %553 = add i64 %499, %.v48
  store i64 %553, i64* %3, align 8
  br i1 %551, label %block_414e81, label %block_.L_414ffd

block_414e81:                                     ; preds = %block_414e5f
  %554 = add i64 %553, 3
  store i64 %554, i64* %3, align 8
  %555 = load i32, i32* %502, align 4
  %556 = zext i32 %555 to i64
  store i64 %556, i64* %RAX.i238.pre-phi, align 8
  %557 = add i64 %553, 7
  store i64 %557, i64* %3, align 8
  %558 = load i32, i32* %474, align 4
  %559 = sext i32 %558 to i64
  store i64 %559, i64* %RCX.i235, align 8
  %560 = shl nsw i64 %559, 2
  %561 = add nsw i64 %560, 8053168
  %562 = add i64 %553, 14
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = add i32 %564, %555
  %566 = lshr i32 %565, 31
  %567 = add i32 %565, 20
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RAX.i238.pre-phi, align 8
  %569 = icmp ugt i32 %565, -21
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %14, align 1
  %571 = and i32 %567, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571)
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %21, align 1
  %576 = xor i32 %565, 16
  %577 = xor i32 %576, %567
  %578 = lshr i32 %577, 4
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  store i8 %580, i8* %26, align 1
  %581 = icmp eq i32 %567, 0
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %29, align 1
  %583 = lshr i32 %567, 31
  %584 = trunc i32 %583 to i8
  store i8 %584, i8* %32, align 1
  %585 = xor i32 %583, %566
  %586 = add nuw nsw i32 %585, %583
  %587 = icmp eq i32 %586, 2
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %38, align 1
  %589 = sext i32 %567 to i64
  store i64 %589, i64* %RCX.i235, align 8
  %590 = add nsw i64 %589, 12099168
  %591 = add i64 %553, 28
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i8*
  %593 = load i8, i8* %592, align 1
  %594 = zext i8 %593 to i64
  store i64 %594, i64* %RAX.i238.pre-phi, align 8
  %595 = add i64 %471, -12
  %596 = add i64 %553, 32
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  %599 = sext i32 %598 to i64
  store i64 %599, i64* %RCX.i235, align 8
  %600 = add nsw i64 %599, 12099168
  %601 = add i64 %553, 40
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i8*
  %603 = load i8, i8* %602, align 1
  %604 = zext i8 %603 to i64
  store i64 %604, i64* %RDX.i201.pre-phi, align 8
  %605 = zext i8 %593 to i32
  %606 = zext i8 %603 to i32
  %607 = sub nsw i32 %605, %606
  %608 = icmp ult i8 %593, %603
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %14, align 1
  %610 = and i32 %607, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610)
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %21, align 1
  %615 = xor i8 %603, %593
  %616 = zext i8 %615 to i32
  %617 = xor i32 %616, %607
  %618 = lshr i32 %617, 4
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  store i8 %620, i8* %26, align 1
  %621 = icmp eq i32 %607, 0
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %29, align 1
  %623 = lshr i32 %607, 31
  %624 = trunc i32 %623 to i8
  store i8 %624, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v49 = select i1 %621, i64 48, i64 92
  %625 = add i64 %553, %.v49
  store i64 %625, i64* %3, align 8
  br i1 %621, label %block_414eb1, label %block_.L_414edd

block_414eb1:                                     ; preds = %block_414e81
  %626 = load i64, i64* %RBP.i, align 8
  %627 = add i64 %626, -8
  %628 = add i64 %625, 3
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = zext i32 %630 to i64
  store i64 %631, i64* %RAX.i238.pre-phi, align 8
  %632 = add i64 %626, -16
  %633 = add i64 %625, 7
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = sext i32 %635 to i64
  store i64 %636, i64* %RCX.i235, align 8
  %637 = shl nsw i64 %636, 2
  %638 = add nsw i64 %637, 8053168
  %639 = add i64 %625, 14
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = add i32 %641, %630
  %643 = lshr i32 %642, 31
  %644 = add i32 %642, 20
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX.i238.pre-phi, align 8
  %646 = icmp ugt i32 %642, -21
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %14, align 1
  %648 = and i32 %644, 255
  %649 = tail call i32 @llvm.ctpop.i32(i32 %648)
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = xor i8 %651, 1
  store i8 %652, i8* %21, align 1
  %653 = xor i32 %642, 16
  %654 = xor i32 %653, %644
  %655 = lshr i32 %654, 4
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  store i8 %657, i8* %26, align 1
  %658 = icmp eq i32 %644, 0
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %29, align 1
  %660 = lshr i32 %644, 31
  %661 = trunc i32 %660 to i8
  store i8 %661, i8* %32, align 1
  %662 = xor i32 %660, %643
  %663 = add nuw nsw i32 %662, %660
  %664 = icmp eq i32 %663, 2
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %38, align 1
  %666 = sext i32 %644 to i64
  store i64 %666, i64* %RCX.i235, align 8
  %667 = shl nsw i64 %666, 2
  %668 = add nsw i64 %667, 11187184
  %669 = add i64 %625, 27
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RAX.i238.pre-phi, align 8
  %673 = add i64 %626, -12
  %674 = add i64 %625, 31
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i32*
  %676 = load i32, i32* %675, align 4
  %677 = sext i32 %676 to i64
  store i64 %677, i64* %RCX.i235, align 8
  %678 = shl nsw i64 %677, 2
  %679 = add nsw i64 %678, 11187184
  %680 = add i64 %625, 38
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = sub i32 %671, %682
  %684 = icmp ult i32 %671, %682
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %14, align 1
  %686 = and i32 %683, 255
  %687 = tail call i32 @llvm.ctpop.i32(i32 %686)
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  store i8 %690, i8* %21, align 1
  %691 = xor i32 %682, %671
  %692 = xor i32 %691, %683
  %693 = lshr i32 %692, 4
  %694 = trunc i32 %693 to i8
  %695 = and i8 %694, 1
  store i8 %695, i8* %26, align 1
  %696 = icmp eq i32 %683, 0
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %29, align 1
  %698 = lshr i32 %683, 31
  %699 = trunc i32 %698 to i8
  store i8 %699, i8* %32, align 1
  %700 = lshr i32 %671, 31
  %701 = lshr i32 %682, 31
  %702 = xor i32 %701, %700
  %703 = xor i32 %698, %700
  %704 = add nuw nsw i32 %703, %702
  %705 = icmp eq i32 %704, 2
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %38, align 1
  %.v56 = select i1 %696, i64 320, i64 44
  %707 = add i64 %625, %.v56
  store i64 %707, i64* %3, align 8
  br i1 %696, label %block_.L_414ff1, label %block_.L_414edd

block_.L_414edd:                                  ; preds = %block_414e81, %block_414eb1
  %708 = phi i64 [ %707, %block_414eb1 ], [ %625, %block_414e81 ]
  %709 = load i64, i64* %RBP.i, align 8
  %710 = add i64 %709, -8
  %711 = add i64 %708, 3
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = zext i32 %713 to i64
  store i64 %714, i64* %RAX.i238.pre-phi, align 8
  %715 = add i64 %709, -16
  %716 = add i64 %708, 7
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = sext i32 %718 to i64
  store i64 %719, i64* %RCX.i235, align 8
  %720 = shl nsw i64 %719, 2
  %721 = add nsw i64 %720, 8053168
  %722 = add i64 %708, 14
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = add i32 %724, %713
  %726 = icmp eq i32 %725, 0
  %727 = zext i1 %726 to i8
  %728 = lshr i32 %725, 31
  %729 = add i32 %725, -1
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RAX.i238.pre-phi, align 8
  store i8 %727, i8* %14, align 1
  %731 = and i32 %729, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %21, align 1
  %736 = xor i32 %729, %725
  %737 = lshr i32 %736, 4
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  store i8 %739, i8* %26, align 1
  %740 = icmp eq i32 %729, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %29, align 1
  %742 = lshr i32 %729, 31
  %743 = trunc i32 %742 to i8
  store i8 %743, i8* %32, align 1
  %744 = xor i32 %742, %728
  %745 = add nuw nsw i32 %744, %728
  %746 = icmp eq i32 %745, 2
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %38, align 1
  %748 = sext i32 %729 to i64
  store i64 %748, i64* %RCX.i235, align 8
  %749 = add nsw i64 %748, 12099168
  %750 = add i64 %708, 28
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i8*
  %752 = load i8, i8* %751, align 1
  %753 = zext i8 %752 to i64
  store i64 %753, i64* %RAX.i238.pre-phi, align 8
  %754 = add i64 %709, -12
  %755 = add i64 %708, 32
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = sext i32 %757 to i64
  store i64 %758, i64* %RCX.i235, align 8
  %759 = add nsw i64 %758, 12099168
  %760 = add i64 %708, 40
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i8*
  %762 = load i8, i8* %761, align 1
  %763 = zext i8 %762 to i64
  store i64 %763, i64* %RDX.i201.pre-phi, align 8
  %764 = zext i8 %752 to i32
  %765 = zext i8 %762 to i32
  %766 = sub nsw i32 %764, %765
  %767 = icmp ult i8 %752, %762
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %14, align 1
  %769 = and i32 %766, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769)
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %21, align 1
  %774 = xor i8 %762, %752
  %775 = zext i8 %774 to i32
  %776 = xor i32 %775, %766
  %777 = lshr i32 %776, 4
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  store i8 %779, i8* %26, align 1
  %780 = icmp eq i32 %766, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %29, align 1
  %782 = lshr i32 %766, 31
  %783 = trunc i32 %782 to i8
  store i8 %783, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v50 = select i1 %780, i64 48, i64 92
  %784 = add i64 %708, %.v50
  store i64 %784, i64* %3, align 8
  br i1 %780, label %block_414f0d, label %block_.L_414f39

block_414f0d:                                     ; preds = %block_.L_414edd
  %785 = load i64, i64* %RBP.i, align 8
  %786 = add i64 %785, -8
  %787 = add i64 %784, 3
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %RAX.i238.pre-phi, align 8
  %791 = add i64 %785, -16
  %792 = add i64 %784, 7
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = sext i32 %794 to i64
  store i64 %795, i64* %RCX.i235, align 8
  %796 = shl nsw i64 %795, 2
  %797 = add nsw i64 %796, 8053168
  %798 = add i64 %784, 14
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = add i32 %800, %789
  %802 = icmp eq i32 %801, 0
  %803 = zext i1 %802 to i8
  %804 = lshr i32 %801, 31
  %805 = add i32 %801, -1
  %806 = zext i32 %805 to i64
  store i64 %806, i64* %RAX.i238.pre-phi, align 8
  store i8 %803, i8* %14, align 1
  %807 = and i32 %805, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %21, align 1
  %812 = xor i32 %805, %801
  %813 = lshr i32 %812, 4
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  store i8 %815, i8* %26, align 1
  %816 = icmp eq i32 %805, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %29, align 1
  %818 = lshr i32 %805, 31
  %819 = trunc i32 %818 to i8
  store i8 %819, i8* %32, align 1
  %820 = xor i32 %818, %804
  %821 = add nuw nsw i32 %820, %804
  %822 = icmp eq i32 %821, 2
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %38, align 1
  %824 = sext i32 %805 to i64
  store i64 %824, i64* %RCX.i235, align 8
  %825 = shl nsw i64 %824, 2
  %826 = add nsw i64 %825, 11187184
  %827 = add i64 %784, 27
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = zext i32 %829 to i64
  store i64 %830, i64* %RAX.i238.pre-phi, align 8
  %831 = add i64 %785, -12
  %832 = add i64 %784, 31
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i32*
  %834 = load i32, i32* %833, align 4
  %835 = sext i32 %834 to i64
  store i64 %835, i64* %RCX.i235, align 8
  %836 = shl nsw i64 %835, 2
  %837 = add nsw i64 %836, 11187184
  %838 = add i64 %784, 38
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i32*
  %840 = load i32, i32* %839, align 4
  %841 = sub i32 %829, %840
  %842 = icmp ult i32 %829, %840
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %14, align 1
  %844 = and i32 %841, 255
  %845 = tail call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  store i8 %848, i8* %21, align 1
  %849 = xor i32 %840, %829
  %850 = xor i32 %849, %841
  %851 = lshr i32 %850, 4
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  store i8 %853, i8* %26, align 1
  %854 = icmp eq i32 %841, 0
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %29, align 1
  %856 = lshr i32 %841, 31
  %857 = trunc i32 %856 to i8
  store i8 %857, i8* %32, align 1
  %858 = lshr i32 %829, 31
  %859 = lshr i32 %840, 31
  %860 = xor i32 %859, %858
  %861 = xor i32 %856, %858
  %862 = add nuw nsw i32 %861, %860
  %863 = icmp eq i32 %862, 2
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %38, align 1
  %.v55 = select i1 %854, i64 228, i64 44
  %865 = add i64 %784, %.v55
  store i64 %865, i64* %3, align 8
  br i1 %854, label %block_.L_414ff1, label %block_.L_414f39

block_.L_414f39:                                  ; preds = %block_.L_414edd, %block_414f0d
  %866 = phi i64 [ %865, %block_414f0d ], [ %784, %block_.L_414edd ]
  %867 = load i64, i64* %RBP.i, align 8
  %868 = add i64 %867, -8
  %869 = add i64 %866, 3
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RAX.i238.pre-phi, align 8
  %873 = add i64 %867, -16
  %874 = add i64 %866, 7
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = sext i32 %876 to i64
  store i64 %877, i64* %RCX.i235, align 8
  %878 = shl nsw i64 %877, 2
  %879 = add nsw i64 %878, 8053168
  %880 = add i64 %866, 14
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to i32*
  %882 = load i32, i32* %881, align 4
  %883 = add i32 %882, %871
  %884 = lshr i32 %883, 31
  %885 = add i32 %883, -20
  %886 = zext i32 %885 to i64
  store i64 %886, i64* %RAX.i238.pre-phi, align 8
  %887 = icmp ult i32 %883, 20
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %14, align 1
  %889 = and i32 %885, 255
  %890 = tail call i32 @llvm.ctpop.i32(i32 %889)
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  store i8 %893, i8* %21, align 1
  %894 = xor i32 %883, 16
  %895 = xor i32 %894, %885
  %896 = lshr i32 %895, 4
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  store i8 %898, i8* %26, align 1
  %899 = icmp eq i32 %885, 0
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %29, align 1
  %901 = lshr i32 %885, 31
  %902 = trunc i32 %901 to i8
  store i8 %902, i8* %32, align 1
  %903 = xor i32 %901, %884
  %904 = add nuw nsw i32 %903, %884
  %905 = icmp eq i32 %904, 2
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %38, align 1
  %907 = sext i32 %885 to i64
  store i64 %907, i64* %RCX.i235, align 8
  %908 = add nsw i64 %907, 12099168
  %909 = add i64 %866, 28
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i8*
  %911 = load i8, i8* %910, align 1
  %912 = zext i8 %911 to i64
  store i64 %912, i64* %RAX.i238.pre-phi, align 8
  %913 = add i64 %867, -12
  %914 = add i64 %866, 32
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = sext i32 %916 to i64
  store i64 %917, i64* %RCX.i235, align 8
  %918 = add nsw i64 %917, 12099168
  %919 = add i64 %866, 40
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %918 to i8*
  %921 = load i8, i8* %920, align 1
  %922 = zext i8 %921 to i64
  store i64 %922, i64* %RDX.i201.pre-phi, align 8
  %923 = zext i8 %911 to i32
  %924 = zext i8 %921 to i32
  %925 = sub nsw i32 %923, %924
  %926 = icmp ult i8 %911, %921
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %14, align 1
  %928 = and i32 %925, 255
  %929 = tail call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, i8* %21, align 1
  %933 = xor i8 %921, %911
  %934 = zext i8 %933 to i32
  %935 = xor i32 %934, %925
  %936 = lshr i32 %935, 4
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  store i8 %938, i8* %26, align 1
  %939 = icmp eq i32 %925, 0
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %29, align 1
  %941 = lshr i32 %925, 31
  %942 = trunc i32 %941 to i8
  store i8 %942, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v51 = select i1 %939, i64 48, i64 92
  %943 = add i64 %866, %.v51
  store i64 %943, i64* %3, align 8
  br i1 %939, label %block_414f69, label %block_.L_414f95

block_414f69:                                     ; preds = %block_.L_414f39
  %944 = load i64, i64* %RBP.i, align 8
  %945 = add i64 %944, -8
  %946 = add i64 %943, 3
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  %948 = load i32, i32* %947, align 4
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RAX.i238.pre-phi, align 8
  %950 = add i64 %944, -16
  %951 = add i64 %943, 7
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  %953 = load i32, i32* %952, align 4
  %954 = sext i32 %953 to i64
  store i64 %954, i64* %RCX.i235, align 8
  %955 = shl nsw i64 %954, 2
  %956 = add nsw i64 %955, 8053168
  %957 = add i64 %943, 14
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = add i32 %959, %948
  %961 = lshr i32 %960, 31
  %962 = add i32 %960, -20
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RAX.i238.pre-phi, align 8
  %964 = icmp ult i32 %960, 20
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %14, align 1
  %966 = and i32 %962, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %21, align 1
  %971 = xor i32 %960, 16
  %972 = xor i32 %971, %962
  %973 = lshr i32 %972, 4
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  store i8 %975, i8* %26, align 1
  %976 = icmp eq i32 %962, 0
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %29, align 1
  %978 = lshr i32 %962, 31
  %979 = trunc i32 %978 to i8
  store i8 %979, i8* %32, align 1
  %980 = xor i32 %978, %961
  %981 = add nuw nsw i32 %980, %961
  %982 = icmp eq i32 %981, 2
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %38, align 1
  %984 = sext i32 %962 to i64
  store i64 %984, i64* %RCX.i235, align 8
  %985 = shl nsw i64 %984, 2
  %986 = add nsw i64 %985, 11187184
  %987 = add i64 %943, 27
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RAX.i238.pre-phi, align 8
  %991 = add i64 %944, -12
  %992 = add i64 %943, 31
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = sext i32 %994 to i64
  store i64 %995, i64* %RCX.i235, align 8
  %996 = shl nsw i64 %995, 2
  %997 = add nsw i64 %996, 11187184
  %998 = add i64 %943, 38
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = sub i32 %989, %1000
  %1002 = icmp ult i32 %989, %1000
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %14, align 1
  %1004 = and i32 %1001, 255
  %1005 = tail call i32 @llvm.ctpop.i32(i32 %1004)
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  store i8 %1008, i8* %21, align 1
  %1009 = xor i32 %1000, %989
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
  %1018 = lshr i32 %989, 31
  %1019 = lshr i32 %1000, 31
  %1020 = xor i32 %1019, %1018
  %1021 = xor i32 %1016, %1018
  %1022 = add nuw nsw i32 %1021, %1020
  %1023 = icmp eq i32 %1022, 2
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %38, align 1
  %.v54 = select i1 %1014, i64 136, i64 44
  %1025 = add i64 %943, %.v54
  store i64 %1025, i64* %3, align 8
  br i1 %1014, label %block_.L_414ff1, label %block_.L_414f95

block_.L_414f95:                                  ; preds = %block_.L_414f39, %block_414f69
  %1026 = phi i64 [ %1025, %block_414f69 ], [ %943, %block_.L_414f39 ]
  %1027 = load i64, i64* %RBP.i, align 8
  %1028 = add i64 %1027, -8
  %1029 = add i64 %1026, 3
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = zext i32 %1031 to i64
  store i64 %1032, i64* %RAX.i238.pre-phi, align 8
  %1033 = add i64 %1027, -16
  %1034 = add i64 %1026, 7
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  %1036 = load i32, i32* %1035, align 4
  %1037 = sext i32 %1036 to i64
  store i64 %1037, i64* %RCX.i235, align 8
  %1038 = shl nsw i64 %1037, 2
  %1039 = add nsw i64 %1038, 8053168
  %1040 = add i64 %1026, 14
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = add i32 %1042, %1031
  %1044 = lshr i32 %1043, 31
  %1045 = add i32 %1043, 1
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RAX.i238.pre-phi, align 8
  %1047 = icmp eq i32 %1043, -1
  %1048 = icmp eq i32 %1045, 0
  %1049 = or i1 %1047, %1048
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %14, align 1
  %1051 = and i32 %1045, 255
  %1052 = tail call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %21, align 1
  %1056 = xor i32 %1045, %1043
  %1057 = lshr i32 %1056, 4
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  store i8 %1059, i8* %26, align 1
  %1060 = zext i1 %1048 to i8
  store i8 %1060, i8* %29, align 1
  %1061 = lshr i32 %1045, 31
  %1062 = trunc i32 %1061 to i8
  store i8 %1062, i8* %32, align 1
  %1063 = xor i32 %1061, %1044
  %1064 = add nuw nsw i32 %1063, %1061
  %1065 = icmp eq i32 %1064, 2
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %38, align 1
  %1067 = sext i32 %1045 to i64
  store i64 %1067, i64* %RCX.i235, align 8
  %1068 = add nsw i64 %1067, 12099168
  %1069 = add i64 %1026, 28
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i8*
  %1071 = load i8, i8* %1070, align 1
  %1072 = zext i8 %1071 to i64
  store i64 %1072, i64* %RAX.i238.pre-phi, align 8
  %1073 = add i64 %1027, -12
  %1074 = add i64 %1026, 32
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = sext i32 %1076 to i64
  store i64 %1077, i64* %RCX.i235, align 8
  %1078 = add nsw i64 %1077, 12099168
  %1079 = add i64 %1026, 40
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i8*
  %1081 = load i8, i8* %1080, align 1
  %1082 = zext i8 %1081 to i64
  store i64 %1082, i64* %RDX.i201.pre-phi, align 8
  %1083 = zext i8 %1071 to i32
  %1084 = zext i8 %1081 to i32
  %1085 = sub nsw i32 %1083, %1084
  %1086 = icmp ult i8 %1071, %1081
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %14, align 1
  %1088 = and i32 %1085, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088)
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %21, align 1
  %1093 = xor i8 %1081, %1071
  %1094 = zext i8 %1093 to i32
  %1095 = xor i32 %1094, %1085
  %1096 = lshr i32 %1095, 4
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  store i8 %1098, i8* %26, align 1
  %1099 = icmp eq i32 %1085, 0
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %29, align 1
  %1101 = lshr i32 %1085, 31
  %1102 = trunc i32 %1101 to i8
  store i8 %1102, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v52 = select i1 %1099, i64 48, i64 104
  %1103 = add i64 %1026, %.v52
  store i64 %1103, i64* %3, align 8
  br i1 %1099, label %block_414fc5, label %block_.L_414ffd

block_414fc5:                                     ; preds = %block_.L_414f95
  %1104 = load i64, i64* %RBP.i, align 8
  %1105 = add i64 %1104, -8
  %1106 = add i64 %1103, 3
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i32*
  %1108 = load i32, i32* %1107, align 4
  %1109 = zext i32 %1108 to i64
  store i64 %1109, i64* %RAX.i238.pre-phi, align 8
  %1110 = add i64 %1104, -16
  %1111 = add i64 %1103, 7
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = sext i32 %1113 to i64
  store i64 %1114, i64* %RCX.i235, align 8
  %1115 = shl nsw i64 %1114, 2
  %1116 = add nsw i64 %1115, 8053168
  %1117 = add i64 %1103, 14
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = add i32 %1119, %1108
  %1121 = lshr i32 %1120, 31
  %1122 = add i32 %1120, 1
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RAX.i238.pre-phi, align 8
  %1124 = icmp eq i32 %1120, -1
  %1125 = icmp eq i32 %1122, 0
  %1126 = or i1 %1124, %1125
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %14, align 1
  %1128 = and i32 %1122, 255
  %1129 = tail call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  store i8 %1132, i8* %21, align 1
  %1133 = xor i32 %1122, %1120
  %1134 = lshr i32 %1133, 4
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  store i8 %1136, i8* %26, align 1
  %1137 = zext i1 %1125 to i8
  store i8 %1137, i8* %29, align 1
  %1138 = lshr i32 %1122, 31
  %1139 = trunc i32 %1138 to i8
  store i8 %1139, i8* %32, align 1
  %1140 = xor i32 %1138, %1121
  %1141 = add nuw nsw i32 %1140, %1138
  %1142 = icmp eq i32 %1141, 2
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %38, align 1
  %1144 = sext i32 %1122 to i64
  store i64 %1144, i64* %RCX.i235, align 8
  %1145 = shl nsw i64 %1144, 2
  %1146 = add nsw i64 %1145, 11187184
  %1147 = add i64 %1103, 27
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i32*
  %1149 = load i32, i32* %1148, align 4
  %1150 = zext i32 %1149 to i64
  store i64 %1150, i64* %RAX.i238.pre-phi, align 8
  %1151 = add i64 %1104, -12
  %1152 = add i64 %1103, 31
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = sext i32 %1154 to i64
  store i64 %1155, i64* %RCX.i235, align 8
  %1156 = shl nsw i64 %1155, 2
  %1157 = add nsw i64 %1156, 11187184
  %1158 = add i64 %1103, 38
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = sub i32 %1149, %1160
  %1162 = icmp ult i32 %1149, %1160
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %14, align 1
  %1164 = and i32 %1161, 255
  %1165 = tail call i32 @llvm.ctpop.i32(i32 %1164)
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  %1168 = xor i8 %1167, 1
  store i8 %1168, i8* %21, align 1
  %1169 = xor i32 %1160, %1149
  %1170 = xor i32 %1169, %1161
  %1171 = lshr i32 %1170, 4
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  store i8 %1173, i8* %26, align 1
  %1174 = icmp eq i32 %1161, 0
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %29, align 1
  %1176 = lshr i32 %1161, 31
  %1177 = trunc i32 %1176 to i8
  store i8 %1177, i8* %32, align 1
  %1178 = lshr i32 %1149, 31
  %1179 = lshr i32 %1160, 31
  %1180 = xor i32 %1179, %1178
  %1181 = xor i32 %1176, %1178
  %1182 = add nuw nsw i32 %1181, %1180
  %1183 = icmp eq i32 %1182, 2
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %38, align 1
  %.v53 = select i1 %1174, i64 44, i64 56
  %1185 = add i64 %1103, %.v53
  store i64 %1185, i64* %3, align 8
  br i1 %1174, label %block_.L_414ff1, label %block_.L_414ffd

block_.L_414ff1:                                  ; preds = %block_414fc5, %block_414f69, %block_414f0d, %block_414eb1
  %1186 = phi i64 [ %1185, %block_414fc5 ], [ %1025, %block_414f69 ], [ %865, %block_414f0d ], [ %707, %block_414eb1 ]
  %1187 = load i64, i64* %RBP.i, align 8
  %1188 = add i64 %1187, -4
  %1189 = add i64 %1186, 7
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1188 to i32*
  store i32 1, i32* %1190, align 4
  %1191 = load i64, i64* %3, align 8
  %1192 = add i64 %1191, 31
  store i64 %1192, i64* %3, align 8
  br label %block_.L_415017

block_.L_414ffd:                                  ; preds = %block_414fc5, %block_.L_414f95, %block_414e5f
  %1193 = phi i64 [ %1185, %block_414fc5 ], [ %1103, %block_.L_414f95 ], [ %553, %block_414e5f ]
  %1194 = load i64, i64* %RBP.i, align 8
  %1195 = add i64 %1194, -16
  %1196 = add i64 %1193, 8
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i32*
  %1198 = load i32, i32* %1197, align 4
  %1199 = add i32 %1198, 1
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RAX.i238.pre-phi, align 8
  %1201 = icmp eq i32 %1198, -1
  %1202 = icmp eq i32 %1199, 0
  %1203 = or i1 %1201, %1202
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %14, align 1
  %1205 = and i32 %1199, 255
  %1206 = tail call i32 @llvm.ctpop.i32(i32 %1205)
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  store i8 %1209, i8* %21, align 1
  %1210 = xor i32 %1199, %1198
  %1211 = lshr i32 %1210, 4
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  store i8 %1213, i8* %26, align 1
  %1214 = zext i1 %1202 to i8
  store i8 %1214, i8* %29, align 1
  %1215 = lshr i32 %1199, 31
  %1216 = trunc i32 %1215 to i8
  store i8 %1216, i8* %32, align 1
  %1217 = lshr i32 %1198, 31
  %1218 = xor i32 %1215, %1217
  %1219 = add nuw nsw i32 %1218, %1215
  %1220 = icmp eq i32 %1219, 2
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %38, align 1
  %1222 = add i64 %1193, 14
  store i64 %1222, i64* %3, align 8
  store i32 %1199, i32* %1197, align 4
  %1223 = load i64, i64* %3, align 8
  %1224 = add i64 %1223, -438
  store i64 %1224, i64* %3, align 8
  br label %block_.L_414e55

block_.L_415010:                                  ; preds = %block_.L_414e55
  %1225 = add i64 %471, -4
  %1226 = add i64 %499, 7
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i32*
  store i32 0, i32* %1227, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_415017

block_.L_415017:                                  ; preds = %block_.L_415010, %block_.L_414ff1
  %1228 = phi i64 [ %.pre30, %block_.L_415010 ], [ %1192, %block_.L_414ff1 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %1229 = load i64, i64* %RBP.i, align 8
  %1230 = add i64 %1229, -4
  %1231 = add i64 %1228, 3
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = zext i32 %1233 to i64
  store i64 %1234, i64* %RAX.i, align 8
  %1235 = load i64, i64* %6, align 8
  %1236 = add i64 %1235, 64
  store i64 %1236, i64* %6, align 8
  %1237 = icmp ugt i64 %1235, -65
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %14, align 1
  %1239 = trunc i64 %1236 to i32
  %1240 = and i32 %1239, 255
  %1241 = tail call i32 @llvm.ctpop.i32(i32 %1240)
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  %1244 = xor i8 %1243, 1
  store i8 %1244, i8* %21, align 1
  %1245 = xor i64 %1236, %1235
  %1246 = lshr i64 %1245, 4
  %1247 = trunc i64 %1246 to i8
  %1248 = and i8 %1247, 1
  store i8 %1248, i8* %26, align 1
  %1249 = icmp eq i64 %1236, 0
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %29, align 1
  %1251 = lshr i64 %1236, 63
  %1252 = trunc i64 %1251 to i8
  store i8 %1252, i8* %32, align 1
  %1253 = lshr i64 %1235, 63
  %1254 = xor i64 %1251, %1253
  %1255 = add nuw nsw i64 %1254, %1251
  %1256 = icmp eq i64 %1255, 2
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %38, align 1
  %1258 = add i64 %1228, 8
  store i64 %1258, i64* %3, align 8
  %1259 = add i64 %1235, 72
  %1260 = inttoptr i64 %1236 to i64*
  %1261 = load i64, i64* %1260, align 8
  store i64 %1261, i64* %RBP.i, align 8
  store i64 %1259, i64* %6, align 8
  %1262 = add i64 %1228, 9
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1259 to i64*
  %1264 = load i64, i64* %1263, align 8
  store i64 %1264, i64* %3, align 8
  %1265 = add i64 %1235, 80
  store i64 %1265, i64* %6, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -421
  %10 = icmp ult i32 %8, 421
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
define %struct.Memory* @routine_jae_.L_414d75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
define %struct.Memory* @routine_je_.L_414d75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_414dce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x95d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2397, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a49b___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
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
define %struct.Memory* @routine_movl__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
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
define %struct.Memory* @routine_movq__r9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1a5__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -421
  %10 = icmp ult i32 %8, 421
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
define %struct.Memory* @routine_jae_.L_414df5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_je_.L_414df5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_414e4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x95e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2398, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a550___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a550_type* @G__0x57a550 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movq__rdx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
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
define %struct.Memory* @routine_jge_.L_415010(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_414ffd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -21
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jne_.L_414edd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xaab3f0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 11187184
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %4, %11
  %13 = icmp ult i32 %4, %11
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, %4
  %23 = xor i32 %22, %12
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %4, 31
  %35 = lshr i32 %11, 31
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
define %struct.Memory* @routine_je_.L_414ff1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_414f39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 20
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_414f95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_415017(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_415002(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_414e55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
