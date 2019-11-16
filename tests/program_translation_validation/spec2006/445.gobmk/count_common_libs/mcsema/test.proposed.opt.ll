; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99da04_type = type <{ [4 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a504_type = type <{ [8 x i8] }>
%G__0x57a514_type = type <{ [8 x i8] }>
%G__0x57a524_type = type <{ [8 x i8] }>
%G__0x57a53a_type = type <{ [8 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
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
@G_0x99da04 = local_unnamed_addr global %G_0x99da04_type zeroinitializer
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a504 = global %G__0x57a504_type zeroinitializer
@G__0x57a514 = global %G__0x57a514_type zeroinitializer
@G__0x57a524 = global %G__0x57a524_type zeroinitializer
@G__0x57a53a = global %G__0x57a53a_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @count_common_libs(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1128
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1120
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
  %42 = add i64 %10, 13
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i635 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i635, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -996
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 10
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i32*
  store i32 0, i32* %55, align 4
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -8
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 7
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, -421
  %63 = icmp ult i32 %61, 421
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %14, align 1
  %65 = and i32 %62, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65)
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %21, align 1
  %70 = xor i32 %62, %61
  %71 = lshr i32 %70, 4
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  store i8 %73, i8* %26, align 1
  %74 = icmp eq i32 %62, 0
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %29, align 1
  %76 = lshr i32 %62, 31
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %32, align 1
  %78 = lshr i32 %61, 31
  %79 = xor i32 %76, %78
  %80 = add nuw nsw i32 %79, %78
  %81 = icmp eq i32 %80, 2
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %38, align 1
  %.v = select i1 %63, i64 13, i64 39
  %83 = add i64 %58, %.v
  store i64 %83, i64* %3, align 8
  br i1 %63, label %block_410ef8, label %entry.block_.L_410f12_crit_edge

entry.block_.L_410f12_crit_edge:                  ; preds = %entry
  %.pre78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre80 = getelementptr inbounds %union.anon, %union.anon* %.pre78, i64 0, i32 0
  br label %block_.L_410f12

block_410ef8:                                     ; preds = %entry
  %RAX.i795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %84 = add i64 %83, 4
  store i64 %84, i64* %3, align 8
  %85 = load i32, i32* %60, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %RAX.i795, align 8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i827 = getelementptr inbounds %union.anon, %union.anon* %87, i64 0, i32 0
  %88 = add nsw i64 %86, 12099168
  %89 = add i64 %83, 12
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i8*
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i64
  store i64 %92, i64* %RCX.i827, align 8
  %93 = zext i8 %91 to i32
  %94 = add nsw i32 %93, -3
  %95 = icmp ult i8 %91, 3
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %14, align 1
  %97 = and i32 %94, 255
  %98 = tail call i32 @llvm.ctpop.i32(i32 %97)
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  store i8 %101, i8* %21, align 1
  %102 = xor i32 %94, %93
  %103 = lshr i32 %102, 4
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %26, align 1
  %106 = icmp eq i32 %94, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %29, align 1
  %108 = lshr i32 %94, 31
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v109 = select i1 %106, i64 26, i64 21
  %110 = add i64 %83, %.v109
  store i64 %110, i64* %3, align 8
  br i1 %106, label %block_.L_410f12, label %block_410f0d

block_410f0d:                                     ; preds = %block_410ef8
  %111 = add i64 %110, 118
  store i64 %111, i64* %3, align 8
  br label %block_.L_410f83

block_.L_410f12:                                  ; preds = %entry.block_.L_410f12_crit_edge, %block_410ef8
  %ECX.i805.pre-phi.in = phi %union.anon* [ %.pre78, %entry.block_.L_410f12_crit_edge ], [ %87, %block_410ef8 ]
  %RCX.i811.pre-phi = phi i64* [ %.pre80, %entry.block_.L_410f12_crit_edge ], [ %RCX.i827, %block_410ef8 ]
  %112 = phi i64 [ %83, %entry.block_.L_410f12_crit_edge ], [ %110, %block_410ef8 ]
  %ECX.i805.pre-phi = bitcast %union.anon* %ECX.i805.pre-phi.in to i32*
  %RDI.i820 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i820, align 8
  %RSI.i818 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 1914, i64* %RSI.i818, align 8
  %RDX.i816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a504_type* @G__0x57a504 to i64), i64* %RDX.i816, align 8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i814 = getelementptr inbounds %union.anon, %union.anon* %113, i64 0, i32 0
  store i64 20, i64* %RAX.i814, align 8
  %114 = add i64 %112, 33
  store i64 %114, i64* %3, align 8
  %115 = load i32, i32* %60, align 4
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RCX.i811.pre-phi, align 8
  %EAX.i808 = bitcast %union.anon* %113 to i32*
  %117 = add i64 %56, -1012
  %118 = add i64 %112, 39
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i32*
  store i32 20, i32* %119, align 4
  %120 = load i32, i32* %ECX.i805.pre-phi, align 4
  %121 = zext i32 %120 to i64
  %122 = load i64, i64* %3, align 8
  store i64 %121, i64* %RAX.i814, align 8
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -1024
  %125 = load i64, i64* %RDX.i816, align 8
  %126 = add i64 %122, 9
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %124 to i64*
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %3, align 8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %130 = load i32, i32* %EAX.i808, align 8
  %131 = sext i32 %130 to i64
  %132 = lshr i64 %131, 32
  store i64 %132, i64* %129, align 8
  %133 = load i64, i64* %RBP.i, align 8
  %134 = add i64 %133, -1012
  %135 = add i64 %128, 7
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RCX.i811.pre-phi, align 8
  %139 = add i64 %128, 9
  store i64 %139, i64* %3, align 8
  %140 = zext i32 %130 to i64
  %141 = sext i32 %137 to i64
  %142 = shl nuw i64 %132, 32
  %143 = or i64 %142, %140
  %144 = sdiv i64 %143, %141
  %145 = shl i64 %144, 32
  %146 = ashr exact i64 %145, 32
  %147 = icmp eq i64 %144, %146
  br i1 %147, label %150, label %148

; <label>:148:                                    ; preds = %block_.L_410f12
  %149 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %139, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i814, align 8
  %.pre32 = load i64, i64* %3, align 8
  %.pre33 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit793

; <label>:150:                                    ; preds = %block_.L_410f12
  %151 = srem i64 %143, %141
  %152 = and i64 %144, 4294967295
  store i64 %152, i64* %RAX.i814, align 8
  %153 = and i64 %151, 4294967295
  store i64 %153, i64* %RDX.i816, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit793

routine_idivl__ecx.exit793:                       ; preds = %150, %148
  %154 = phi i64 [ %.pre33, %148 ], [ %133, %150 ]
  %155 = phi i64 [ %.pre32, %148 ], [ %139, %150 ]
  %156 = phi i64 [ %.pre, %148 ], [ %152, %150 ]
  %157 = phi %struct.Memory* [ %149, %148 ], [ %2, %150 ]
  %158 = trunc i64 %156 to i32
  %159 = add i32 %158, -1
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RAX.i814, align 8
  %161 = icmp eq i32 %158, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %14, align 1
  %163 = and i32 %159, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %21, align 1
  %168 = xor i32 %159, %158
  %169 = lshr i32 %168, 4
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  store i8 %171, i8* %26, align 1
  %172 = icmp eq i32 %159, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %29, align 1
  %174 = lshr i32 %159, 31
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %32, align 1
  %176 = lshr i32 %158, 31
  %177 = xor i32 %174, %176
  %178 = add nuw nsw i32 %177, %176
  %179 = icmp eq i32 %178, 2
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %38, align 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i787 = bitcast %union.anon* %181 to i32*
  %182 = getelementptr inbounds %union.anon, %union.anon* %181, i64 0, i32 0
  %183 = add i64 %154, -8
  %184 = add i64 %155, 7
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %182, align 8
  %188 = add i64 %154, -1028
  %189 = add i64 %155, 13
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i32*
  store i32 %159, i32* %190, align 4
  %191 = load i32, i32* %R8D.i787, align 4
  %192 = zext i32 %191 to i64
  %193 = load i64, i64* %3, align 8
  store i64 %192, i64* %RAX.i814, align 8
  %194 = sext i32 %191 to i64
  %195 = lshr i64 %194, 32
  store i64 %195, i64* %129, align 8
  %196 = load i32, i32* %ECX.i805.pre-phi, align 4
  %197 = add i64 %193, 6
  store i64 %197, i64* %3, align 8
  %198 = sext i32 %196 to i64
  %199 = shl nuw i64 %195, 32
  %200 = or i64 %199, %192
  %201 = sdiv i64 %200, %198
  %202 = shl i64 %201, 32
  %203 = ashr exact i64 %202, 32
  %204 = icmp eq i64 %201, %203
  br i1 %204, label %207, label %205

; <label>:205:                                    ; preds = %routine_idivl__ecx.exit793
  %206 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %197, %struct.Memory* %157)
  %.pre34 = load i64, i64* %RDX.i816, align 8
  %.pre35 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit777

; <label>:207:                                    ; preds = %routine_idivl__ecx.exit793
  %208 = srem i64 %200, %198
  %209 = and i64 %201, 4294967295
  store i64 %209, i64* %RAX.i814, align 8
  %210 = and i64 %208, 4294967295
  store i64 %210, i64* %RDX.i816, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit777

routine_idivl__ecx.exit777:                       ; preds = %207, %205
  %211 = phi i64 [ %.pre35, %205 ], [ %197, %207 ]
  %212 = phi i64 [ %.pre34, %205 ], [ %210, %207 ]
  %213 = phi %struct.Memory* [ %206, %205 ], [ %157, %207 ]
  %214 = trunc i64 %212 to i32
  %215 = add i32 %214, -1
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RDX.i816, align 8
  %217 = icmp eq i32 %214, 0
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %14, align 1
  %219 = and i32 %215, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219)
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %21, align 1
  %224 = xor i32 %215, %214
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  store i8 %227, i8* %26, align 1
  %228 = icmp eq i32 %215, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %29, align 1
  %230 = lshr i32 %215, 31
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %32, align 1
  %232 = lshr i32 %214, 31
  %233 = xor i32 %230, %232
  %234 = add nuw nsw i32 %233, %232
  %235 = icmp eq i32 %234, 2
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %38, align 1
  %R9.i772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -1024
  %239 = add i64 %211, 10
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %R9.i772, align 8
  %242 = add i64 %237, -1032
  %243 = add i64 %211, 16
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i32*
  store i32 %215, i32* %244, align 4
  %245 = load i64, i64* %R9.i772, align 8
  %246 = load i64, i64* %3, align 8
  store i64 %245, i64* %RDX.i816, align 8
  %247 = load i64, i64* %RBP.i, align 8
  %248 = add i64 %247, -1028
  %249 = add i64 %246, 9
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RCX.i811.pre-phi, align 8
  %253 = add i64 %247, -1032
  %254 = add i64 %246, 16
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %182, align 8
  %258 = add i64 %246, 266530
  %259 = add i64 %246, 21
  %260 = load i64, i64* %6, align 8
  %261 = add i64 %260, -8
  %262 = inttoptr i64 %261 to i64*
  store i64 %259, i64* %262, align 8
  store i64 %261, i64* %6, align 8
  store i64 %258, i64* %3, align 8
  %call2_410f7e = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %258, %struct.Memory* %213)
  %.pre36 = load i64, i64* %RBP.i, align 8
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_410f83

block_.L_410f83:                                  ; preds = %routine_idivl__ecx.exit777, %block_410f0d
  %263 = phi i64 [ %.pre37, %routine_idivl__ecx.exit777 ], [ %111, %block_410f0d ]
  %264 = phi i64 [ %.pre36, %routine_idivl__ecx.exit777 ], [ %56, %block_410f0d ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_410f7e, %routine_idivl__ecx.exit777 ], [ %2, %block_410f0d ]
  %265 = add i64 %264, -12
  %266 = add i64 %263, 7
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = add i32 %268, -421
  %270 = icmp ult i32 %268, 421
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %14, align 1
  %272 = and i32 %269, 255
  %273 = tail call i32 @llvm.ctpop.i32(i32 %272)
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  store i8 %276, i8* %21, align 1
  %277 = xor i32 %269, %268
  %278 = lshr i32 %277, 4
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  store i8 %280, i8* %26, align 1
  %281 = icmp eq i32 %269, 0
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %29, align 1
  %283 = lshr i32 %269, 31
  %284 = trunc i32 %283 to i8
  store i8 %284, i8* %32, align 1
  %285 = lshr i32 %268, 31
  %286 = xor i32 %283, %285
  %287 = add nuw nsw i32 %286, %285
  %288 = icmp eq i32 %287, 2
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %38, align 1
  %.v87 = select i1 %270, i64 13, i64 39
  %290 = add i64 %263, %.v87
  store i64 %290, i64* %3, align 8
  br i1 %270, label %block_410f90, label %block_.L_410f83.block_.L_410faa_crit_edge

block_.L_410f83.block_.L_410faa_crit_edge:        ; preds = %block_.L_410f83
  %.pre82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre84 = getelementptr inbounds %union.anon, %union.anon* %.pre82, i64 0, i32 0
  %.pre85 = bitcast %union.anon* %.pre82 to i32*
  br label %block_.L_410faa

block_410f90:                                     ; preds = %block_.L_410f83
  %RAX.i752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %291 = add i64 %290, 4
  store i64 %291, i64* %3, align 8
  %292 = load i32, i32* %267, align 4
  %293 = sext i32 %292 to i64
  store i64 %293, i64* %RAX.i752, align 8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i750 = getelementptr inbounds %union.anon, %union.anon* %294, i64 0, i32 0
  %295 = add nsw i64 %293, 12099168
  %296 = add i64 %290, 12
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i8*
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i64
  store i64 %299, i64* %RCX.i750, align 8
  %ECX.i747 = bitcast %union.anon* %294 to i32*
  %300 = zext i8 %298 to i32
  %301 = add nsw i32 %300, -3
  %302 = icmp ult i8 %298, 3
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %14, align 1
  %304 = and i32 %301, 255
  %305 = tail call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  store i8 %308, i8* %21, align 1
  %309 = xor i32 %301, %300
  %310 = lshr i32 %309, 4
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  store i8 %312, i8* %26, align 1
  %313 = icmp eq i32 %301, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %29, align 1
  %315 = lshr i32 %301, 31
  %316 = trunc i32 %315 to i8
  store i8 %316, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v108 = select i1 %313, i64 26, i64 21
  %317 = add i64 %290, %.v108
  store i64 %317, i64* %3, align 8
  br i1 %313, label %block_.L_410faa, label %block_410fa5

block_410fa5:                                     ; preds = %block_410f90
  %318 = add i64 %317, 118
  store i64 %318, i64* %3, align 8
  %.pre69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre70 = getelementptr inbounds %union.anon, %union.anon* %.pre69, i64 0, i32 0
  br label %block_.L_41101b

block_.L_410faa:                                  ; preds = %block_.L_410f83.block_.L_410faa_crit_edge, %block_410f90
  %ECX.i728.pre-phi = phi i32* [ %.pre85, %block_.L_410f83.block_.L_410faa_crit_edge ], [ %ECX.i747, %block_410f90 ]
  %RCX.i734.pre-phi = phi i64* [ %.pre84, %block_.L_410f83.block_.L_410faa_crit_edge ], [ %RCX.i750, %block_410f90 ]
  %319 = phi i64 [ %290, %block_.L_410f83.block_.L_410faa_crit_edge ], [ %317, %block_410f90 ]
  %RDI.i743 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i743, align 8
  %RSI.i741 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 1915, i64* %RSI.i741, align 8
  %RDX.i739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a514_type* @G__0x57a514 to i64), i64* %RDX.i739, align 8
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i737 = getelementptr inbounds %union.anon, %union.anon* %320, i64 0, i32 0
  store i64 20, i64* %RAX.i737, align 8
  %321 = add i64 %319, 33
  store i64 %321, i64* %3, align 8
  %322 = load i32, i32* %267, align 4
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RCX.i734.pre-phi, align 8
  %EAX.i731 = bitcast %union.anon* %320 to i32*
  %324 = add i64 %264, -1036
  %325 = add i64 %319, 39
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  store i32 20, i32* %326, align 4
  %327 = load i32, i32* %ECX.i728.pre-phi, align 4
  %328 = zext i32 %327 to i64
  %329 = load i64, i64* %3, align 8
  store i64 %328, i64* %RAX.i737, align 8
  %330 = load i64, i64* %RBP.i, align 8
  %331 = add i64 %330, -1048
  %332 = load i64, i64* %RDX.i739, align 8
  %333 = add i64 %329, 9
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %331 to i64*
  store i64 %332, i64* %334, align 8
  %335 = load i64, i64* %3, align 8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %337 = load i32, i32* %EAX.i731, align 8
  %338 = sext i32 %337 to i64
  %339 = lshr i64 %338, 32
  store i64 %339, i64* %336, align 8
  %340 = load i64, i64* %RBP.i, align 8
  %341 = add i64 %340, -1036
  %342 = add i64 %335, 7
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i32*
  %344 = load i32, i32* %343, align 4
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RCX.i734.pre-phi, align 8
  %346 = add i64 %335, 9
  store i64 %346, i64* %3, align 8
  %347 = zext i32 %337 to i64
  %348 = sext i32 %344 to i64
  %349 = shl nuw i64 %339, 32
  %350 = or i64 %349, %347
  %351 = sdiv i64 %350, %348
  %352 = shl i64 %351, 32
  %353 = ashr exact i64 %352, 32
  %354 = icmp eq i64 %351, %353
  br i1 %354, label %357, label %355

; <label>:355:                                    ; preds = %block_.L_410faa
  %356 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %346, %struct.Memory* %MEMORY.1)
  %.pre38 = load i64, i64* %RAX.i737, align 8
  %.pre39 = load i64, i64* %3, align 8
  %.pre40 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit717

; <label>:357:                                    ; preds = %block_.L_410faa
  %358 = srem i64 %350, %348
  %359 = and i64 %351, 4294967295
  store i64 %359, i64* %RAX.i737, align 8
  %360 = and i64 %358, 4294967295
  store i64 %360, i64* %RDX.i739, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit717

routine_idivl__ecx.exit717:                       ; preds = %357, %355
  %361 = phi i64 [ %.pre40, %355 ], [ %340, %357 ]
  %362 = phi i64 [ %.pre39, %355 ], [ %346, %357 ]
  %363 = phi i64 [ %.pre38, %355 ], [ %359, %357 ]
  %364 = phi %struct.Memory* [ %356, %355 ], [ %MEMORY.1, %357 ]
  %365 = trunc i64 %363 to i32
  %366 = add i32 %365, -1
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RAX.i737, align 8
  %368 = icmp eq i32 %365, 0
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %14, align 1
  %370 = and i32 %366, 255
  %371 = tail call i32 @llvm.ctpop.i32(i32 %370)
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  store i8 %374, i8* %21, align 1
  %375 = xor i32 %366, %365
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %26, align 1
  %379 = icmp eq i32 %366, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %29, align 1
  %381 = lshr i32 %366, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %32, align 1
  %383 = lshr i32 %365, 31
  %384 = xor i32 %381, %383
  %385 = add nuw nsw i32 %384, %383
  %386 = icmp eq i32 %385, 2
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %38, align 1
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i711 = bitcast %union.anon* %388 to i32*
  %389 = getelementptr inbounds %union.anon, %union.anon* %388, i64 0, i32 0
  %390 = add i64 %361, -12
  %391 = add i64 %362, 7
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %389, align 8
  %395 = add i64 %361, -1052
  %396 = add i64 %362, 13
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i32*
  store i32 %366, i32* %397, align 4
  %398 = load i32, i32* %R8D.i711, align 4
  %399 = zext i32 %398 to i64
  %400 = load i64, i64* %3, align 8
  store i64 %399, i64* %RAX.i737, align 8
  %401 = sext i32 %398 to i64
  %402 = lshr i64 %401, 32
  store i64 %402, i64* %336, align 8
  %403 = load i32, i32* %ECX.i728.pre-phi, align 4
  %404 = add i64 %400, 6
  store i64 %404, i64* %3, align 8
  %405 = sext i32 %403 to i64
  %406 = shl nuw i64 %402, 32
  %407 = or i64 %406, %399
  %408 = sdiv i64 %407, %405
  %409 = shl i64 %408, 32
  %410 = ashr exact i64 %409, 32
  %411 = icmp eq i64 %408, %410
  br i1 %411, label %414, label %412

; <label>:412:                                    ; preds = %routine_idivl__ecx.exit717
  %413 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %404, %struct.Memory* %364)
  %.pre41 = load i64, i64* %RDX.i739, align 8
  %.pre42 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit700

; <label>:414:                                    ; preds = %routine_idivl__ecx.exit717
  %415 = srem i64 %407, %405
  %416 = and i64 %408, 4294967295
  store i64 %416, i64* %RAX.i737, align 8
  %417 = and i64 %415, 4294967295
  store i64 %417, i64* %RDX.i739, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit700

routine_idivl__ecx.exit700:                       ; preds = %414, %412
  %418 = phi i64 [ %.pre42, %412 ], [ %404, %414 ]
  %419 = phi i64 [ %.pre41, %412 ], [ %417, %414 ]
  %420 = phi %struct.Memory* [ %413, %412 ], [ %364, %414 ]
  %421 = trunc i64 %419 to i32
  %422 = add i32 %421, -1
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RDX.i739, align 8
  %424 = icmp eq i32 %421, 0
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %14, align 1
  %426 = and i32 %422, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426)
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %21, align 1
  %431 = xor i32 %422, %421
  %432 = lshr i32 %431, 4
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %26, align 1
  %435 = icmp eq i32 %422, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %29, align 1
  %437 = lshr i32 %422, 31
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %32, align 1
  %439 = lshr i32 %421, 31
  %440 = xor i32 %437, %439
  %441 = add nuw nsw i32 %440, %439
  %442 = icmp eq i32 %441, 2
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %38, align 1
  %R9.i695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %444 = load i64, i64* %RBP.i, align 8
  %445 = add i64 %444, -1048
  %446 = add i64 %418, 10
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %R9.i695, align 8
  %449 = add i64 %444, -1056
  %450 = add i64 %418, 16
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %449 to i32*
  store i32 %422, i32* %451, align 4
  %452 = load i64, i64* %R9.i695, align 8
  %453 = load i64, i64* %3, align 8
  store i64 %452, i64* %RDX.i739, align 8
  %454 = load i64, i64* %RBP.i, align 8
  %455 = add i64 %454, -1052
  %456 = add i64 %453, 9
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RCX.i734.pre-phi, align 8
  %460 = add i64 %454, -1056
  %461 = add i64 %453, 16
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %389, align 8
  %465 = add i64 %453, 266378
  %466 = add i64 %453, 21
  %467 = load i64, i64* %6, align 8
  %468 = add i64 %467, -8
  %469 = inttoptr i64 %468 to i64*
  store i64 %466, i64* %469, align 8
  store i64 %468, i64* %6, align 8
  store i64 %465, i64* %3, align 8
  %call2_411016 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %465, %struct.Memory* %420)
  %.pre43 = load i64, i64* %RBP.i, align 8
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_41101b

block_.L_41101b:                                  ; preds = %routine_idivl__ecx.exit700, %block_410fa5
  %ECX.i673.pre-phi = phi i32* [ %ECX.i728.pre-phi, %routine_idivl__ecx.exit700 ], [ %ECX.i747, %block_410fa5 ]
  %RCX.i676.pre-phi = phi i64* [ %RCX.i734.pre-phi, %routine_idivl__ecx.exit700 ], [ %RCX.i750, %block_410fa5 ]
  %RAX.i678.pre-phi = phi i64* [ %RAX.i737, %routine_idivl__ecx.exit700 ], [ %.pre70, %block_410fa5 ]
  %.pre-phi = phi %union.anon* [ %320, %routine_idivl__ecx.exit700 ], [ %.pre69, %block_410fa5 ]
  %470 = phi i64 [ %.pre44, %routine_idivl__ecx.exit700 ], [ %318, %block_410fa5 ]
  %471 = phi i64 [ %.pre43, %routine_idivl__ecx.exit700 ], [ %264, %block_410fa5 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_411016, %routine_idivl__ecx.exit700 ], [ %MEMORY.1, %block_410fa5 ]
  %472 = add i64 %471, -8
  %473 = add i64 %470, 4
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = sext i32 %475 to i64
  store i64 %476, i64* %RAX.i678.pre-phi, align 8
  %477 = add nsw i64 %476, 12099168
  %478 = add i64 %470, 12
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i8*
  %480 = load i8, i8* %479, align 1
  %481 = zext i8 %480 to i64
  store i64 %481, i64* %RCX.i676.pre-phi, align 8
  %482 = zext i8 %480 to i32
  %483 = add nsw i32 %482, -1
  %484 = icmp eq i8 %480, 0
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %14, align 1
  %486 = and i32 %483, 255
  %487 = tail call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %21, align 1
  %491 = xor i32 %483, %482
  %492 = lshr i32 %491, 4
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  store i8 %494, i8* %26, align 1
  %495 = icmp eq i32 %483, 0
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %29, align 1
  %497 = lshr i32 %483, 31
  %498 = trunc i32 %497 to i8
  store i8 %498, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v88 = select i1 %495, i64 42, i64 21
  %499 = add i64 %470, %.v88
  store i64 %499, i64* %3, align 8
  br i1 %495, label %block_.L_411045, label %block_411030

block_411030:                                     ; preds = %block_.L_41101b
  %500 = add i64 %499, 4
  store i64 %500, i64* %3, align 8
  %501 = load i32, i32* %474, align 4
  %502 = sext i32 %501 to i64
  store i64 %502, i64* %RAX.i678.pre-phi, align 8
  %503 = add nsw i64 %502, 12099168
  %504 = add i64 %499, 12
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i8*
  %506 = load i8, i8* %505, align 1
  %507 = zext i8 %506 to i64
  store i64 %507, i64* %RCX.i676.pre-phi, align 8
  %508 = zext i8 %506 to i32
  %509 = add nsw i32 %508, -2
  %510 = icmp ult i8 %506, 2
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %14, align 1
  %512 = and i32 %509, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %21, align 1
  %517 = xor i32 %509, %508
  %518 = lshr i32 %517, 4
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %26, align 1
  %521 = icmp eq i32 %509, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %29, align 1
  %523 = lshr i32 %509, 31
  %524 = trunc i32 %523 to i8
  store i8 %524, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v89 = select i1 %521, i64 21, i64 26
  %525 = add i64 %499, %.v89
  store i64 %525, i64* %3, align 8
  br i1 %521, label %block_.L_411045, label %block_.L_41104a

block_.L_411045:                                  ; preds = %block_411030, %block_.L_41101b
  %526 = phi i64 [ %525, %block_411030 ], [ %499, %block_.L_41101b ]
  %527 = add i64 %526, 118
  store i64 %527, i64* %3, align 8
  br label %block_.L_4110bb

block_.L_41104a:                                  ; preds = %block_411030
  %RDI.i660 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i660, align 8
  %RSI.i658 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 1916, i64* %RSI.i658, align 8
  %RDX.i656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a524_type* @G__0x57a524 to i64), i64* %RDX.i656, align 8
  store i64 20, i64* %RAX.i678.pre-phi, align 8
  %528 = add i64 %525, 33
  store i64 %528, i64* %3, align 8
  %529 = load i32, i32* %474, align 4
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RCX.i676.pre-phi, align 8
  %EAX.i648 = bitcast %union.anon* %.pre-phi to i32*
  %531 = add i64 %471, -1060
  %532 = add i64 %525, 39
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  store i32 20, i32* %533, align 4
  %534 = load i32, i32* %ECX.i673.pre-phi, align 4
  %535 = zext i32 %534 to i64
  %536 = load i64, i64* %3, align 8
  store i64 %535, i64* %RAX.i678.pre-phi, align 8
  %537 = load i64, i64* %RBP.i, align 8
  %538 = add i64 %537, -1072
  %539 = load i64, i64* %RDX.i656, align 8
  %540 = add i64 %536, 9
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %538 to i64*
  store i64 %539, i64* %541, align 8
  %542 = load i64, i64* %3, align 8
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %544 = load i32, i32* %EAX.i648, align 8
  %545 = sext i32 %544 to i64
  %546 = lshr i64 %545, 32
  store i64 %546, i64* %543, align 8
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -1060
  %549 = add i64 %542, 7
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i32*
  %551 = load i32, i32* %550, align 4
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RCX.i676.pre-phi, align 8
  %553 = add i64 %542, 9
  store i64 %553, i64* %3, align 8
  %554 = zext i32 %544 to i64
  %555 = sext i32 %551 to i64
  %556 = shl nuw i64 %546, 32
  %557 = or i64 %556, %554
  %558 = sdiv i64 %557, %555
  %559 = shl i64 %558, 32
  %560 = ashr exact i64 %559, 32
  %561 = icmp eq i64 %558, %560
  br i1 %561, label %564, label %562

; <label>:562:                                    ; preds = %block_.L_41104a
  %563 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %553, %struct.Memory* %MEMORY.3)
  %.pre45 = load i64, i64* %RAX.i678.pre-phi, align 8
  %.pre46 = load i64, i64* %3, align 8
  %.pre47 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit633

; <label>:564:                                    ; preds = %block_.L_41104a
  %565 = srem i64 %557, %555
  %566 = and i64 %558, 4294967295
  store i64 %566, i64* %RAX.i678.pre-phi, align 8
  %567 = and i64 %565, 4294967295
  store i64 %567, i64* %RDX.i656, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit633

routine_idivl__ecx.exit633:                       ; preds = %564, %562
  %568 = phi i64 [ %.pre47, %562 ], [ %547, %564 ]
  %569 = phi i64 [ %.pre46, %562 ], [ %553, %564 ]
  %570 = phi i64 [ %.pre45, %562 ], [ %566, %564 ]
  %571 = phi %struct.Memory* [ %563, %562 ], [ %MEMORY.3, %564 ]
  %572 = trunc i64 %570 to i32
  %573 = add i32 %572, -1
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RAX.i678.pre-phi, align 8
  %575 = icmp eq i32 %572, 0
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %14, align 1
  %577 = and i32 %573, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577)
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %21, align 1
  %582 = xor i32 %573, %572
  %583 = lshr i32 %582, 4
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  store i8 %585, i8* %26, align 1
  %586 = icmp eq i32 %573, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %29, align 1
  %588 = lshr i32 %573, 31
  %589 = trunc i32 %588 to i8
  store i8 %589, i8* %32, align 1
  %590 = lshr i32 %572, 31
  %591 = xor i32 %588, %590
  %592 = add nuw nsw i32 %591, %590
  %593 = icmp eq i32 %592, 2
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %38, align 1
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i627 = bitcast %union.anon* %595 to i32*
  %596 = getelementptr inbounds %union.anon, %union.anon* %595, i64 0, i32 0
  %597 = add i64 %568, -8
  %598 = add i64 %569, 7
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = zext i32 %600 to i64
  store i64 %601, i64* %596, align 8
  %602 = add i64 %568, -1076
  %603 = add i64 %569, 13
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i32*
  store i32 %573, i32* %604, align 4
  %605 = load i32, i32* %R8D.i627, align 4
  %606 = zext i32 %605 to i64
  %607 = load i64, i64* %3, align 8
  store i64 %606, i64* %RAX.i678.pre-phi, align 8
  %608 = add i64 %607, 4
  store i64 %608, i64* %3, align 8
  %609 = sext i32 %605 to i64
  %610 = lshr i64 %609, 32
  store i64 %610, i64* %543, align 8
  %611 = load i32, i32* %ECX.i673.pre-phi, align 4
  %612 = add i64 %607, 6
  store i64 %612, i64* %3, align 8
  %613 = sext i32 %611 to i64
  %614 = shl nuw i64 %610, 32
  %615 = or i64 %614, %606
  %616 = sdiv i64 %615, %613
  %617 = shl i64 %616, 32
  %618 = ashr exact i64 %617, 32
  %619 = icmp eq i64 %616, %618
  br i1 %619, label %622, label %620

; <label>:620:                                    ; preds = %routine_idivl__ecx.exit633
  %621 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %612, %struct.Memory* %571)
  %.pre48 = load i64, i64* %RDX.i656, align 8
  %.pre49 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit616

; <label>:622:                                    ; preds = %routine_idivl__ecx.exit633
  %623 = srem i64 %615, %613
  %624 = and i64 %616, 4294967295
  store i64 %624, i64* %RAX.i678.pre-phi, align 8
  %625 = and i64 %623, 4294967295
  store i64 %625, i64* %RDX.i656, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit616

routine_idivl__ecx.exit616:                       ; preds = %622, %620
  %626 = phi i64 [ %.pre49, %620 ], [ %612, %622 ]
  %627 = phi i64 [ %.pre48, %620 ], [ %625, %622 ]
  %628 = phi %struct.Memory* [ %621, %620 ], [ %571, %622 ]
  %629 = trunc i64 %627 to i32
  %630 = add i32 %629, -1
  %631 = zext i32 %630 to i64
  store i64 %631, i64* %RDX.i656, align 8
  %632 = icmp eq i32 %629, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %14, align 1
  %634 = and i32 %630, 255
  %635 = tail call i32 @llvm.ctpop.i32(i32 %634)
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  %638 = xor i8 %637, 1
  store i8 %638, i8* %21, align 1
  %639 = xor i32 %630, %629
  %640 = lshr i32 %639, 4
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  store i8 %642, i8* %26, align 1
  %643 = icmp eq i32 %630, 0
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %29, align 1
  %645 = lshr i32 %630, 31
  %646 = trunc i32 %645 to i8
  store i8 %646, i8* %32, align 1
  %647 = lshr i32 %629, 31
  %648 = xor i32 %645, %647
  %649 = add nuw nsw i32 %648, %647
  %650 = icmp eq i32 %649, 2
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %38, align 1
  %R9.i611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %652 = load i64, i64* %RBP.i, align 8
  %653 = add i64 %652, -1072
  %654 = add i64 %626, 10
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i64*
  %656 = load i64, i64* %655, align 8
  store i64 %656, i64* %R9.i611, align 8
  %657 = add i64 %652, -1080
  %658 = add i64 %626, 16
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  store i32 %630, i32* %659, align 4
  %660 = load i64, i64* %R9.i611, align 8
  %661 = load i64, i64* %3, align 8
  store i64 %660, i64* %RDX.i656, align 8
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -1076
  %664 = add i64 %661, 9
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i32*
  %666 = load i32, i32* %665, align 4
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RCX.i676.pre-phi, align 8
  %668 = add i64 %662, -1080
  %669 = add i64 %661, 16
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %596, align 8
  %673 = add i64 %661, 266218
  %674 = add i64 %661, 21
  %675 = load i64, i64* %6, align 8
  %676 = add i64 %675, -8
  %677 = inttoptr i64 %676 to i64*
  store i64 %674, i64* %677, align 8
  store i64 %676, i64* %6, align 8
  store i64 %673, i64* %3, align 8
  %call2_4110b6 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %673, %struct.Memory* %628)
  %.pre50 = load i64, i64* %RBP.i, align 8
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_4110bb

block_.L_4110bb:                                  ; preds = %routine_idivl__ecx.exit616, %block_.L_411045
  %678 = phi i64 [ %527, %block_.L_411045 ], [ %.pre51, %routine_idivl__ecx.exit616 ]
  %679 = phi i64 [ %471, %block_.L_411045 ], [ %.pre50, %routine_idivl__ecx.exit616 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.3, %block_.L_411045 ], [ %call2_4110b6, %routine_idivl__ecx.exit616 ]
  %680 = add i64 %679, -12
  %681 = add i64 %678, 4
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = sext i32 %683 to i64
  store i64 %684, i64* %RAX.i678.pre-phi, align 8
  %685 = add nsw i64 %684, 12099168
  %686 = add i64 %678, 12
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i8*
  %688 = load i8, i8* %687, align 1
  %689 = zext i8 %688 to i64
  store i64 %689, i64* %RCX.i676.pre-phi, align 8
  %690 = zext i8 %688 to i32
  %691 = add nsw i32 %690, -1
  %692 = icmp eq i8 %688, 0
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %14, align 1
  %694 = and i32 %691, 255
  %695 = tail call i32 @llvm.ctpop.i32(i32 %694)
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  store i8 %698, i8* %21, align 1
  %699 = xor i32 %691, %690
  %700 = lshr i32 %699, 4
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  store i8 %702, i8* %26, align 1
  %703 = icmp eq i32 %691, 0
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %29, align 1
  %705 = lshr i32 %691, 31
  %706 = trunc i32 %705 to i8
  store i8 %706, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v90 = select i1 %703, i64 42, i64 21
  %707 = add i64 %678, %.v90
  store i64 %707, i64* %3, align 8
  br i1 %703, label %block_.L_4110e5, label %block_4110d0

block_4110d0:                                     ; preds = %block_.L_4110bb
  %708 = add i64 %707, 4
  store i64 %708, i64* %3, align 8
  %709 = load i32, i32* %682, align 4
  %710 = sext i32 %709 to i64
  store i64 %710, i64* %RAX.i678.pre-phi, align 8
  %711 = add nsw i64 %710, 12099168
  %712 = add i64 %707, 12
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i8*
  %714 = load i8, i8* %713, align 1
  %715 = zext i8 %714 to i64
  store i64 %715, i64* %RCX.i676.pre-phi, align 8
  %716 = zext i8 %714 to i32
  %717 = add nsw i32 %716, -2
  %718 = icmp ult i8 %714, 2
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %14, align 1
  %720 = and i32 %717, 255
  %721 = tail call i32 @llvm.ctpop.i32(i32 %720)
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  %724 = xor i8 %723, 1
  store i8 %724, i8* %21, align 1
  %725 = xor i32 %717, %716
  %726 = lshr i32 %725, 4
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  store i8 %728, i8* %26, align 1
  %729 = icmp eq i32 %717, 0
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %29, align 1
  %731 = lshr i32 %717, 31
  %732 = trunc i32 %731 to i8
  store i8 %732, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v91 = select i1 %729, i64 21, i64 26
  %733 = add i64 %707, %.v91
  store i64 %733, i64* %3, align 8
  br i1 %729, label %block_.L_4110e5, label %block_.L_4110ea

block_.L_4110e5:                                  ; preds = %block_4110d0, %block_.L_4110bb
  %734 = phi i64 [ %733, %block_4110d0 ], [ %707, %block_.L_4110bb ]
  %735 = add i64 %734, 118
  store i64 %735, i64* %3, align 8
  %.pre74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre76 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  br label %block_.L_41115b

block_.L_4110ea:                                  ; preds = %block_4110d0
  %RDI.i576 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i576, align 8
  %RSI.i574 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 1917, i64* %RSI.i574, align 8
  %RDX.i572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a53a_type* @G__0x57a53a to i64), i64* %RDX.i572, align 8
  store i64 20, i64* %RAX.i678.pre-phi, align 8
  %736 = add i64 %733, 33
  store i64 %736, i64* %3, align 8
  %737 = load i32, i32* %682, align 4
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RCX.i676.pre-phi, align 8
  %EAX.i564 = bitcast %union.anon* %.pre-phi to i32*
  %739 = add i64 %679, -1084
  %740 = add i64 %733, 39
  store i64 %740, i64* %3, align 8
  %741 = inttoptr i64 %739 to i32*
  store i32 20, i32* %741, align 4
  %742 = load i32, i32* %ECX.i673.pre-phi, align 4
  %743 = zext i32 %742 to i64
  %744 = load i64, i64* %3, align 8
  store i64 %743, i64* %RAX.i678.pre-phi, align 8
  %745 = load i64, i64* %RBP.i, align 8
  %746 = add i64 %745, -1096
  %747 = load i64, i64* %RDX.i572, align 8
  %748 = add i64 %744, 9
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %746 to i64*
  store i64 %747, i64* %749, align 8
  %750 = load i64, i64* %3, align 8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %752 = load i32, i32* %EAX.i564, align 8
  %753 = sext i32 %752 to i64
  %754 = lshr i64 %753, 32
  store i64 %754, i64* %751, align 8
  %755 = load i64, i64* %RBP.i, align 8
  %756 = add i64 %755, -1084
  %757 = add i64 %750, 7
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = zext i32 %759 to i64
  store i64 %760, i64* %RCX.i676.pre-phi, align 8
  %761 = add i64 %750, 9
  store i64 %761, i64* %3, align 8
  %762 = zext i32 %752 to i64
  %763 = sext i32 %759 to i64
  %764 = shl nuw i64 %754, 32
  %765 = or i64 %764, %762
  %766 = sdiv i64 %765, %763
  %767 = shl i64 %766, 32
  %768 = ashr exact i64 %767, 32
  %769 = icmp eq i64 %766, %768
  br i1 %769, label %772, label %770

; <label>:770:                                    ; preds = %block_.L_4110ea
  %771 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %761, %struct.Memory* %MEMORY.5)
  %.pre52 = load i64, i64* %RAX.i678.pre-phi, align 8
  %.pre53 = load i64, i64* %3, align 8
  %.pre54 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit550

; <label>:772:                                    ; preds = %block_.L_4110ea
  %773 = srem i64 %765, %763
  %774 = and i64 %766, 4294967295
  store i64 %774, i64* %RAX.i678.pre-phi, align 8
  %775 = and i64 %773, 4294967295
  store i64 %775, i64* %RDX.i572, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit550

routine_idivl__ecx.exit550:                       ; preds = %772, %770
  %776 = phi i64 [ %.pre54, %770 ], [ %755, %772 ]
  %777 = phi i64 [ %.pre53, %770 ], [ %761, %772 ]
  %778 = phi i64 [ %.pre52, %770 ], [ %774, %772 ]
  %779 = phi %struct.Memory* [ %771, %770 ], [ %MEMORY.5, %772 ]
  %780 = trunc i64 %778 to i32
  %781 = add i32 %780, -1
  %782 = zext i32 %781 to i64
  store i64 %782, i64* %RAX.i678.pre-phi, align 8
  %783 = icmp eq i32 %780, 0
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %14, align 1
  %785 = and i32 %781, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %21, align 1
  %790 = xor i32 %781, %780
  %791 = lshr i32 %790, 4
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %26, align 1
  %794 = icmp eq i32 %781, 0
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %29, align 1
  %796 = lshr i32 %781, 31
  %797 = trunc i32 %796 to i8
  store i8 %797, i8* %32, align 1
  %798 = lshr i32 %780, 31
  %799 = xor i32 %796, %798
  %800 = add nuw nsw i32 %799, %798
  %801 = icmp eq i32 %800, 2
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %38, align 1
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i544 = bitcast %union.anon* %803 to i32*
  %804 = getelementptr inbounds %union.anon, %union.anon* %803, i64 0, i32 0
  %805 = add i64 %776, -12
  %806 = add i64 %777, 7
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i32*
  %808 = load i32, i32* %807, align 4
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %804, align 8
  %810 = add i64 %776, -1100
  %811 = add i64 %777, 13
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i32*
  store i32 %781, i32* %812, align 4
  %813 = load i32, i32* %R8D.i544, align 4
  %814 = zext i32 %813 to i64
  %815 = load i64, i64* %3, align 8
  store i64 %814, i64* %RAX.i678.pre-phi, align 8
  %816 = add i64 %815, 4
  store i64 %816, i64* %3, align 8
  %817 = sext i32 %813 to i64
  %818 = lshr i64 %817, 32
  store i64 %818, i64* %751, align 8
  %819 = load i32, i32* %ECX.i673.pre-phi, align 4
  %820 = add i64 %815, 6
  store i64 %820, i64* %3, align 8
  %821 = sext i32 %819 to i64
  %822 = shl nuw i64 %818, 32
  %823 = or i64 %822, %814
  %824 = sdiv i64 %823, %821
  %825 = shl i64 %824, 32
  %826 = ashr exact i64 %825, 32
  %827 = icmp eq i64 %824, %826
  br i1 %827, label %830, label %828

; <label>:828:                                    ; preds = %routine_idivl__ecx.exit550
  %829 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %820, %struct.Memory* %779)
  %.pre55 = load i64, i64* %RDX.i572, align 8
  %.pre56 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:830:                                    ; preds = %routine_idivl__ecx.exit550
  %831 = srem i64 %823, %821
  %832 = and i64 %824, 4294967295
  store i64 %832, i64* %RAX.i678.pre-phi, align 8
  %833 = and i64 %831, 4294967295
  store i64 %833, i64* %RDX.i572, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %830, %828
  %834 = phi i64 [ %.pre56, %828 ], [ %820, %830 ]
  %835 = phi i64 [ %.pre55, %828 ], [ %833, %830 ]
  %836 = phi %struct.Memory* [ %829, %828 ], [ %779, %830 ]
  %837 = trunc i64 %835 to i32
  %838 = add i32 %837, -1
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RDX.i572, align 8
  %840 = icmp eq i32 %837, 0
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %14, align 1
  %842 = and i32 %838, 255
  %843 = tail call i32 @llvm.ctpop.i32(i32 %842)
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  %846 = xor i8 %845, 1
  store i8 %846, i8* %21, align 1
  %847 = xor i32 %838, %837
  %848 = lshr i32 %847, 4
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  store i8 %850, i8* %26, align 1
  %851 = icmp eq i32 %838, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %29, align 1
  %853 = lshr i32 %838, 31
  %854 = trunc i32 %853 to i8
  store i8 %854, i8* %32, align 1
  %855 = lshr i32 %837, 31
  %856 = xor i32 %853, %855
  %857 = add nuw nsw i32 %856, %855
  %858 = icmp eq i32 %857, 2
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %38, align 1
  %R9.i529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %860 = load i64, i64* %RBP.i, align 8
  %861 = add i64 %860, -1096
  %862 = add i64 %834, 10
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i64*
  %864 = load i64, i64* %863, align 8
  store i64 %864, i64* %R9.i529, align 8
  %865 = add i64 %860, -1104
  %866 = add i64 %834, 16
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i32*
  store i32 %838, i32* %867, align 4
  %868 = load i64, i64* %R9.i529, align 8
  %869 = load i64, i64* %3, align 8
  store i64 %868, i64* %RDX.i572, align 8
  %870 = load i64, i64* %RBP.i, align 8
  %871 = add i64 %870, -1100
  %872 = add i64 %869, 9
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = zext i32 %874 to i64
  store i64 %875, i64* %RCX.i676.pre-phi, align 8
  %876 = add i64 %870, -1104
  %877 = add i64 %869, 16
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i32*
  %879 = load i32, i32* %878, align 4
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %804, align 8
  %881 = add i64 %869, 266058
  %882 = add i64 %869, 21
  %883 = load i64, i64* %6, align 8
  %884 = add i64 %883, -8
  %885 = inttoptr i64 %884 to i64*
  store i64 %882, i64* %885, align 8
  store i64 %884, i64* %6, align 8
  store i64 %881, i64* %3, align 8
  %call2_411156 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %881, %struct.Memory* %836)
  %.pre57 = load i64, i64* %3, align 8
  %.pre58 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41115b

block_.L_41115b:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_4110e5
  %RSI.i499.pre-phi = phi i64* [ %RSI.i574, %routine_idivl__ecx.exit ], [ %.pre76, %block_.L_4110e5 ]
  %RDX.i510.pre-phi = phi i64* [ %RDX.i572, %routine_idivl__ecx.exit ], [ %.pre74, %block_.L_4110e5 ]
  %886 = phi i64 [ %.pre58, %routine_idivl__ecx.exit ], [ %679, %block_.L_4110e5 ]
  %887 = phi i64 [ %.pre57, %routine_idivl__ecx.exit ], [ %735, %block_.L_4110e5 ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_411156, %routine_idivl__ecx.exit ], [ %MEMORY.5, %block_.L_4110e5 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i678.pre-phi, align 8
  %888 = add i64 %886, -8
  %889 = add i64 %887, 14
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i32*
  %891 = load i32, i32* %890, align 4
  %892 = sext i32 %891 to i64
  store i64 %892, i64* %RCX.i676.pre-phi, align 8
  %893 = shl nsw i64 %892, 2
  %894 = add nsw i64 %893, 11187184
  %895 = add i64 %887, 21
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i32*
  %897 = load i32, i32* %896, align 4
  %898 = zext i32 %897 to i64
  store i64 %898, i64* %RDX.i510.pre-phi, align 8
  %899 = add i64 %886, -1004
  %900 = add i64 %887, 27
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i32*
  store i32 %897, i32* %901, align 4
  %902 = load i64, i64* %RBP.i, align 8
  %903 = add i64 %902, -1004
  %904 = load i64, i64* %3, align 8
  %905 = add i64 %904, 7
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %903 to i32*
  %907 = load i32, i32* %906, align 4
  %908 = sext i32 %907 to i64
  %909 = mul nsw i64 %908, 744
  store i64 %909, i64* %RCX.i676.pre-phi, align 8
  %910 = lshr i64 %909, 63
  %911 = load i64, i64* %RAX.i678.pre-phi, align 8
  %912 = add i64 %909, %911
  store i64 %912, i64* %RSI.i499.pre-phi, align 8
  %913 = icmp ult i64 %912, %911
  %914 = icmp ult i64 %912, %909
  %915 = or i1 %913, %914
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %14, align 1
  %917 = trunc i64 %912 to i32
  %918 = and i32 %917, 255
  %919 = tail call i32 @llvm.ctpop.i32(i32 %918)
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  %922 = xor i8 %921, 1
  store i8 %922, i8* %21, align 1
  %923 = xor i64 %909, %911
  %924 = xor i64 %923, %912
  %925 = lshr i64 %924, 4
  %926 = trunc i64 %925 to i8
  %927 = and i8 %926, 1
  store i8 %927, i8* %26, align 1
  %928 = icmp eq i64 %912, 0
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %29, align 1
  %930 = lshr i64 %912, 63
  %931 = trunc i64 %930 to i8
  store i8 %931, i8* %32, align 1
  %932 = lshr i64 %911, 63
  %933 = xor i64 %930, %932
  %934 = xor i64 %930, %910
  %935 = add nuw nsw i64 %933, %934
  %936 = icmp eq i64 %935, 2
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %38, align 1
  %938 = add i64 %912, 12
  %939 = add i64 %904, 23
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RDX.i510.pre-phi, align 8
  %943 = add i64 %902, -988
  %944 = add i64 %904, 29
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  store i32 %941, i32* %945, align 4
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -988
  %948 = load i64, i64* %3, align 8
  %949 = add i64 %948, 6
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %947 to i32*
  %951 = load i32, i32* %950, align 4
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RDX.i510.pre-phi, align 8
  %953 = add i64 %946, -12
  %954 = add i64 %948, 10
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i32*
  %956 = load i32, i32* %955, align 4
  %957 = sext i32 %956 to i64
  store i64 %957, i64* %RCX.i676.pre-phi, align 8
  %958 = shl nsw i64 %957, 2
  %959 = add nsw i64 %958, 11187184
  %960 = add i64 %948, 18
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = sext i32 %962 to i64
  %964 = mul nsw i64 %963, 744
  store i64 %964, i64* %RCX.i676.pre-phi, align 8
  %965 = lshr i64 %964, 63
  %966 = load i64, i64* %RAX.i678.pre-phi, align 8
  %967 = add i64 %964, %966
  store i64 %967, i64* %RAX.i678.pre-phi, align 8
  %968 = icmp ult i64 %967, %966
  %969 = icmp ult i64 %967, %964
  %970 = or i1 %968, %969
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %14, align 1
  %972 = trunc i64 %967 to i32
  %973 = and i32 %972, 255
  %974 = tail call i32 @llvm.ctpop.i32(i32 %973)
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  %977 = xor i8 %976, 1
  store i8 %977, i8* %21, align 1
  %978 = xor i64 %964, %966
  %979 = xor i64 %978, %967
  %980 = lshr i64 %979, 4
  %981 = trunc i64 %980 to i8
  %982 = and i8 %981, 1
  store i8 %982, i8* %26, align 1
  %983 = icmp eq i64 %967, 0
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %29, align 1
  %985 = lshr i64 %967, 63
  %986 = trunc i64 %985 to i8
  store i8 %986, i8* %32, align 1
  %987 = lshr i64 %966, 63
  %988 = xor i64 %985, %987
  %989 = xor i64 %985, %965
  %990 = add nuw nsw i64 %988, %989
  %991 = icmp eq i64 %990, 2
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %38, align 1
  %993 = add i64 %967, 12
  %994 = add i64 %948, 31
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i32*
  %996 = load i32, i32* %995, align 4
  %997 = sub i32 %951, %996
  %998 = icmp ult i32 %951, %996
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %14, align 1
  %1000 = and i32 %997, 255
  %1001 = tail call i32 @llvm.ctpop.i32(i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  %1004 = xor i8 %1003, 1
  store i8 %1004, i8* %21, align 1
  %1005 = xor i32 %996, %951
  %1006 = xor i32 %1005, %997
  %1007 = lshr i32 %1006, 4
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  store i8 %1009, i8* %26, align 1
  %1010 = icmp eq i32 %997, 0
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %29, align 1
  %1012 = lshr i32 %997, 31
  %1013 = trunc i32 %1012 to i8
  store i8 %1013, i8* %32, align 1
  %1014 = lshr i32 %951, 31
  %1015 = lshr i32 %996, 31
  %1016 = xor i32 %1015, %1014
  %1017 = xor i32 %1012, %1014
  %1018 = add nuw nsw i32 %1017, %1016
  %1019 = icmp eq i32 %1018, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %38, align 1
  %1021 = icmp ne i8 %1013, 0
  %1022 = xor i1 %1021, %1019
  %1023 = or i1 %1010, %1022
  %.v92 = select i1 %1023, i64 114, i64 37
  %1024 = add i64 %948, %.v92
  store i64 %1024, i64* %3, align 8
  br i1 %1023, label %block_.L_411205, label %block_4111b8

block_4111b8:                                     ; preds = %block_.L_41115b
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i678.pre-phi, align 8
  %1025 = load i64, i64* %RBP.i, align 8
  %1026 = add i64 %1025, -12
  %1027 = add i64 %1024, 14
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = sext i32 %1029 to i64
  store i64 %1030, i64* %RCX.i676.pre-phi, align 8
  %1031 = shl nsw i64 %1030, 2
  %1032 = add nsw i64 %1031, 11187184
  %1033 = add i64 %1024, 21
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i32*
  %1035 = load i32, i32* %1034, align 4
  %1036 = zext i32 %1035 to i64
  store i64 %1036, i64* %RDX.i510.pre-phi, align 8
  %1037 = add i64 %1025, -1004
  %1038 = add i64 %1024, 27
  store i64 %1038, i64* %3, align 8
  %1039 = inttoptr i64 %1037 to i32*
  store i32 %1035, i32* %1039, align 4
  %1040 = load i64, i64* %RBP.i, align 8
  %1041 = add i64 %1040, -1004
  %1042 = load i64, i64* %3, align 8
  %1043 = add i64 %1042, 7
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1041 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = sext i32 %1045 to i64
  %1047 = mul nsw i64 %1046, 744
  store i64 %1047, i64* %RCX.i676.pre-phi, align 8
  %1048 = lshr i64 %1047, 63
  %1049 = load i64, i64* %RAX.i678.pre-phi, align 8
  %1050 = add i64 %1047, %1049
  store i64 %1050, i64* %RAX.i678.pre-phi, align 8
  %1051 = icmp ult i64 %1050, %1049
  %1052 = icmp ult i64 %1050, %1047
  %1053 = or i1 %1051, %1052
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %14, align 1
  %1055 = trunc i64 %1050 to i32
  %1056 = and i32 %1055, 255
  %1057 = tail call i32 @llvm.ctpop.i32(i32 %1056)
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = xor i8 %1059, 1
  store i8 %1060, i8* %21, align 1
  %1061 = xor i64 %1047, %1049
  %1062 = xor i64 %1061, %1050
  %1063 = lshr i64 %1062, 4
  %1064 = trunc i64 %1063 to i8
  %1065 = and i8 %1064, 1
  store i8 %1065, i8* %26, align 1
  %1066 = icmp eq i64 %1050, 0
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %29, align 1
  %1068 = lshr i64 %1050, 63
  %1069 = trunc i64 %1068 to i8
  store i8 %1069, i8* %32, align 1
  %1070 = lshr i64 %1049, 63
  %1071 = xor i64 %1068, %1070
  %1072 = xor i64 %1068, %1048
  %1073 = add nuw nsw i64 %1071, %1072
  %1074 = icmp eq i64 %1073, 2
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %38, align 1
  %1076 = add i64 %1050, 12
  %1077 = add i64 %1042, 20
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i32*
  %1079 = load i32, i32* %1078, align 4
  %1080 = zext i32 %1079 to i64
  store i64 %1080, i64* %RDX.i510.pre-phi, align 8
  %1081 = add i64 %1040, -988
  %1082 = add i64 %1042, 26
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  store i32 %1079, i32* %1083, align 4
  %1084 = load i64, i64* %RBP.i, align 8
  %1085 = add i64 %1084, -8
  %1086 = load i64, i64* %3, align 8
  %1087 = add i64 %1086, 3
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1085 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RDX.i510.pre-phi, align 8
  %1091 = add i64 %1084, -1008
  %1092 = add i64 %1086, 9
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i32*
  store i32 %1089, i32* %1093, align 4
  %1094 = load i64, i64* %RBP.i, align 8
  %1095 = add i64 %1094, -12
  %1096 = load i64, i64* %3, align 8
  %1097 = add i64 %1096, 3
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1095 to i32*
  %1099 = load i32, i32* %1098, align 4
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RDX.i510.pre-phi, align 8
  %1101 = add i64 %1094, -8
  %1102 = add i64 %1096, 6
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  store i32 %1099, i32* %1103, align 4
  %1104 = load i64, i64* %RBP.i, align 8
  %1105 = add i64 %1104, -1008
  %1106 = load i64, i64* %3, align 8
  %1107 = add i64 %1106, 6
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1105 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = zext i32 %1109 to i64
  store i64 %1110, i64* %RDX.i510.pre-phi, align 8
  %1111 = add i64 %1104, -12
  %1112 = add i64 %1106, 9
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  store i32 %1109, i32* %1113, align 4
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_411205

block_.L_411205:                                  ; preds = %block_4111b8, %block_.L_41115b
  %1114 = phi i64 [ %.pre59, %block_4111b8 ], [ %1024, %block_.L_41115b ]
  %1115 = load i64, i64* %RBP.i, align 8
  %1116 = add i64 %1115, -988
  %1117 = add i64 %1114, 7
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = add i32 %1119, -20
  %1121 = icmp ult i32 %1119, 20
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %14, align 1
  %1123 = and i32 %1120, 255
  %1124 = tail call i32 @llvm.ctpop.i32(i32 %1123)
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = xor i8 %1126, 1
  store i8 %1127, i8* %21, align 1
  %1128 = xor i32 %1119, 16
  %1129 = xor i32 %1128, %1120
  %1130 = lshr i32 %1129, 4
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  store i8 %1132, i8* %26, align 1
  %1133 = icmp eq i32 %1120, 0
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %29, align 1
  %1135 = lshr i32 %1120, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %32, align 1
  %1137 = lshr i32 %1119, 31
  %1138 = xor i32 %1135, %1137
  %1139 = add nuw nsw i32 %1138, %1137
  %1140 = icmp eq i32 %1139, 2
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %38, align 1
  %1142 = icmp ne i8 %1136, 0
  %1143 = xor i1 %1142, %1140
  %.demorgan = or i1 %1133, %1143
  %.v93 = select i1 %.demorgan, i64 13, i64 405
  %1144 = add i64 %1114, %.v93
  store i64 %1144, i64* %3, align 8
  br i1 %.demorgan, label %block_411212, label %block_.L_41139a

block_411212:                                     ; preds = %block_.L_411205
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i678.pre-phi, align 8
  %1145 = add i64 %1115, -1004
  %1146 = add i64 %1144, 17
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = sext i32 %1148 to i64
  %1150 = mul nsw i64 %1149, 744
  store i64 %1150, i64* %RCX.i676.pre-phi, align 8
  %1151 = add i64 %1150, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1152 = lshr i64 %1151, 63
  %1153 = add i64 %1150, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 16)
  store i64 %1153, i64* %RDX.i510.pre-phi, align 8
  %1154 = icmp ugt i64 %1151, -17
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %14, align 1
  %1156 = trunc i64 %1153 to i32
  %1157 = and i32 %1156, 248
  %1158 = tail call i32 @llvm.ctpop.i32(i32 %1157)
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = xor i8 %1160, 1
  store i8 %1161, i8* %21, align 1
  %1162 = xor i64 %1151, 16
  %1163 = xor i64 %1162, %1153
  %1164 = lshr i64 %1163, 4
  %1165 = trunc i64 %1164 to i8
  %1166 = and i8 %1165, 1
  store i8 %1166, i8* %26, align 1
  %1167 = icmp eq i64 %1153, 0
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %29, align 1
  %1169 = lshr i64 %1153, 63
  %1170 = trunc i64 %1169 to i8
  store i8 %1170, i8* %32, align 1
  %1171 = xor i64 %1169, %1152
  %1172 = add nuw nsw i64 %1171, %1169
  %1173 = icmp eq i64 %1172, 2
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %38, align 1
  %1175 = load i64, i64* %RBP.i, align 8
  %1176 = add i64 %1175, -984
  %1177 = add i64 %1144, 41
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i64*
  store i64 %1153, i64* %1178, align 8
  %1179 = load i64, i64* %RBP.i, align 8
  %1180 = add i64 %1179, -12
  %1181 = load i64, i64* %3, align 8
  %1182 = add i64 %1181, 4
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1180 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = sext i32 %1184 to i64
  store i64 %1185, i64* %RCX.i676.pre-phi, align 8
  %1186 = shl nsw i64 %1185, 2
  %1187 = add nsw i64 %1186, 11187184
  %1188 = add i64 %1181, 11
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = zext i32 %1190 to i64
  store i64 %1191, i64* %RSI.i499.pre-phi, align 8
  %1192 = add i64 %1179, -1004
  %1193 = add i64 %1181, 17
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i32*
  store i32 %1190, i32* %1194, align 4
  %1195 = load i64, i64* %RBP.i, align 8
  %1196 = add i64 %1195, -1004
  %1197 = load i64, i64* %3, align 8
  %1198 = add i64 %1197, 7
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1196 to i32*
  %1200 = load i32, i32* %1199, align 4
  %1201 = sext i32 %1200 to i64
  %1202 = mul nsw i64 %1201, 744
  store i64 %1202, i64* %RCX.i676.pre-phi, align 8
  %1203 = lshr i64 %1202, 63
  %1204 = load i64, i64* %RAX.i678.pre-phi, align 8
  %1205 = add i64 %1202, %1204
  store i64 %1205, i64* %RAX.i678.pre-phi, align 8
  %1206 = icmp ult i64 %1205, %1204
  %1207 = icmp ult i64 %1205, %1202
  %1208 = or i1 %1206, %1207
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %14, align 1
  %1210 = trunc i64 %1205 to i32
  %1211 = and i32 %1210, 255
  %1212 = tail call i32 @llvm.ctpop.i32(i32 %1211)
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  store i8 %1215, i8* %21, align 1
  %1216 = xor i64 %1202, %1204
  %1217 = xor i64 %1216, %1205
  %1218 = lshr i64 %1217, 4
  %1219 = trunc i64 %1218 to i8
  %1220 = and i8 %1219, 1
  store i8 %1220, i8* %26, align 1
  %1221 = icmp eq i64 %1205, 0
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %29, align 1
  %1223 = lshr i64 %1205, 63
  %1224 = trunc i64 %1223 to i8
  store i8 %1224, i8* %32, align 1
  %1225 = lshr i64 %1204, 63
  %1226 = xor i64 %1223, %1225
  %1227 = xor i64 %1223, %1203
  %1228 = add nuw nsw i64 %1226, %1227
  %1229 = icmp eq i64 %1228, 2
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %38, align 1
  %1231 = add i64 %1205, 12
  %1232 = add i64 %1197, 20
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to i32*
  %1234 = load i32, i32* %1233, align 4
  %1235 = zext i32 %1234 to i64
  store i64 %1235, i64* %RSI.i499.pre-phi, align 8
  %1236 = add i64 %1195, -992
  %1237 = add i64 %1197, 26
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i32*
  store i32 %1234, i32* %1238, align 4
  %1239 = load i64, i64* %RBP.i, align 8
  %1240 = add i64 %1239, -992
  %1241 = load i64, i64* %3, align 8
  %1242 = add i64 %1241, 7
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1240 to i32*
  %1244 = load i32, i32* %1243, align 4
  %1245 = add i32 %1244, -20
  %1246 = icmp ult i32 %1244, 20
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %14, align 1
  %1248 = and i32 %1245, 255
  %1249 = tail call i32 @llvm.ctpop.i32(i32 %1248)
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  %1252 = xor i8 %1251, 1
  store i8 %1252, i8* %21, align 1
  %1253 = xor i32 %1244, 16
  %1254 = xor i32 %1253, %1245
  %1255 = lshr i32 %1254, 4
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  store i8 %1257, i8* %26, align 1
  %1258 = icmp eq i32 %1245, 0
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %29, align 1
  %1260 = lshr i32 %1245, 31
  %1261 = trunc i32 %1260 to i8
  store i8 %1261, i8* %32, align 1
  %1262 = lshr i32 %1244, 31
  %1263 = xor i32 %1260, %1262
  %1264 = add nuw nsw i32 %1263, %1262
  %1265 = icmp eq i32 %1264, 2
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %38, align 1
  %1267 = icmp ne i8 %1261, 0
  %1268 = xor i1 %1267, %1265
  %.demorgan86 = or i1 %1258, %1268
  %.v103 = select i1 %.demorgan86, i64 13, i64 303
  %1269 = add i64 %1241, %.v103
  store i64 %1269, i64* %3, align 8
  br i1 %.demorgan86, label %block_411273, label %block_.L_411395

block_411273:                                     ; preds = %block_411212
  %1270 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1271 = add i32 %1270, 1
  %1272 = zext i32 %1271 to i64
  store i64 %1272, i64* %RAX.i678.pre-phi, align 8
  %1273 = icmp eq i32 %1270, -1
  %1274 = icmp eq i32 %1271, 0
  %1275 = or i1 %1273, %1274
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %14, align 1
  %1277 = and i32 %1271, 255
  %1278 = tail call i32 @llvm.ctpop.i32(i32 %1277)
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  %1281 = xor i8 %1280, 1
  store i8 %1281, i8* %21, align 1
  %1282 = xor i32 %1271, %1270
  %1283 = lshr i32 %1282, 4
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  store i8 %1285, i8* %26, align 1
  %1286 = zext i1 %1274 to i8
  store i8 %1286, i8* %29, align 1
  %1287 = lshr i32 %1271, 31
  %1288 = trunc i32 %1287 to i8
  store i8 %1288, i8* %32, align 1
  %1289 = lshr i32 %1270, 31
  %1290 = xor i32 %1287, %1289
  %1291 = add nuw nsw i32 %1290, %1287
  %1292 = icmp eq i32 %1291, 2
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %38, align 1
  store i32 %1271, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1294 = add i64 %1239, -1000
  %1295 = add i64 %1269, 27
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  store i32 0, i32* %1296, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_41128e

block_.L_41128e:                                  ; preds = %block_4112a0, %block_411273
  %1297 = phi i64 [ %1385, %block_4112a0 ], [ %.pre60, %block_411273 ]
  %1298 = load i64, i64* %RBP.i, align 8
  %1299 = add i64 %1298, -1000
  %1300 = add i64 %1297, 6
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = zext i32 %1302 to i64
  store i64 %1303, i64* %RAX.i678.pre-phi, align 8
  %1304 = add i64 %1298, -988
  %1305 = add i64 %1297, 12
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i32*
  %1307 = load i32, i32* %1306, align 4
  %1308 = sub i32 %1302, %1307
  %1309 = icmp ult i32 %1302, %1307
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %14, align 1
  %1311 = and i32 %1308, 255
  %1312 = tail call i32 @llvm.ctpop.i32(i32 %1311)
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = xor i8 %1314, 1
  store i8 %1315, i8* %21, align 1
  %1316 = xor i32 %1307, %1302
  %1317 = xor i32 %1316, %1308
  %1318 = lshr i32 %1317, 4
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  store i8 %1320, i8* %26, align 1
  %1321 = icmp eq i32 %1308, 0
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %29, align 1
  %1323 = lshr i32 %1308, 31
  %1324 = trunc i32 %1323 to i8
  store i8 %1324, i8* %32, align 1
  %1325 = lshr i32 %1302, 31
  %1326 = lshr i32 %1307, 31
  %1327 = xor i32 %1326, %1325
  %1328 = xor i32 %1323, %1325
  %1329 = add nuw nsw i32 %1328, %1327
  %1330 = icmp eq i32 %1329, 2
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %38, align 1
  %1332 = icmp ne i8 %1324, 0
  %1333 = xor i1 %1332, %1330
  %.v104 = select i1 %1333, i64 18, i64 70
  %1334 = add i64 %1297, %.v104
  store i64 %1334, i64* %3, align 8
  br i1 %1333, label %block_4112a0, label %block_.L_4112d4

block_4112a0:                                     ; preds = %block_.L_41128e
  %1335 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RAX.i678.pre-phi, align 8
  %1337 = add i64 %1298, -984
  %1338 = add i64 %1334, 14
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i64*
  %1340 = load i64, i64* %1339, align 8
  store i64 %1340, i64* %RCX.i676.pre-phi, align 8
  %1341 = add i64 %1334, 21
  store i64 %1341, i64* %3, align 8
  %1342 = load i32, i32* %1301, align 4
  %1343 = sext i32 %1342 to i64
  store i64 %1343, i64* %RDX.i510.pre-phi, align 8
  %1344 = shl nsw i64 %1343, 2
  %1345 = add i64 %1344, %1340
  %1346 = add i64 %1334, 25
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = sext i32 %1348 to i64
  store i64 %1349, i64* %RCX.i676.pre-phi, align 8
  %1350 = shl nsw i64 %1349, 2
  %1351 = add nsw i64 %1350, 11185584
  %1352 = add i64 %1334, 32
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i32*
  store i32 %1335, i32* %1353, align 4
  %1354 = load i64, i64* %RBP.i, align 8
  %1355 = add i64 %1354, -1000
  %1356 = load i64, i64* %3, align 8
  %1357 = add i64 %1356, 6
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1355 to i32*
  %1359 = load i32, i32* %1358, align 4
  %1360 = add i32 %1359, 1
  %1361 = zext i32 %1360 to i64
  store i64 %1361, i64* %RAX.i678.pre-phi, align 8
  %1362 = icmp eq i32 %1359, -1
  %1363 = icmp eq i32 %1360, 0
  %1364 = or i1 %1362, %1363
  %1365 = zext i1 %1364 to i8
  store i8 %1365, i8* %14, align 1
  %1366 = and i32 %1360, 255
  %1367 = tail call i32 @llvm.ctpop.i32(i32 %1366)
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  store i8 %1370, i8* %21, align 1
  %1371 = xor i32 %1360, %1359
  %1372 = lshr i32 %1371, 4
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  store i8 %1374, i8* %26, align 1
  %1375 = zext i1 %1363 to i8
  store i8 %1375, i8* %29, align 1
  %1376 = lshr i32 %1360, 31
  %1377 = trunc i32 %1376 to i8
  store i8 %1377, i8* %32, align 1
  %1378 = lshr i32 %1359, 31
  %1379 = xor i32 %1376, %1378
  %1380 = add nuw nsw i32 %1379, %1376
  %1381 = icmp eq i32 %1380, 2
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %38, align 1
  %1383 = add i64 %1356, 15
  store i64 %1383, i64* %3, align 8
  store i32 %1360, i32* %1358, align 4
  %1384 = load i64, i64* %3, align 8
  %1385 = add i64 %1384, -65
  store i64 %1385, i64* %3, align 8
  br label %block_.L_41128e

block_.L_4112d4:                                  ; preds = %block_.L_41128e
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i678.pre-phi, align 8
  %1386 = add i64 %1298, -1004
  %1387 = add i64 %1334, 17
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i32*
  %1389 = load i32, i32* %1388, align 4
  %1390 = sext i32 %1389 to i64
  %1391 = mul nsw i64 %1390, 744
  store i64 %1391, i64* %RCX.i676.pre-phi, align 8
  %1392 = add i64 %1391, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1393 = lshr i64 %1392, 63
  %1394 = add i64 %1391, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 16)
  store i64 %1394, i64* %RAX.i678.pre-phi, align 8
  %1395 = icmp ugt i64 %1392, -17
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %14, align 1
  %1397 = trunc i64 %1394 to i32
  %1398 = and i32 %1397, 248
  %1399 = tail call i32 @llvm.ctpop.i32(i32 %1398)
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  store i8 %1402, i8* %21, align 1
  %1403 = xor i64 %1392, 16
  %1404 = xor i64 %1403, %1394
  %1405 = lshr i64 %1404, 4
  %1406 = trunc i64 %1405 to i8
  %1407 = and i8 %1406, 1
  store i8 %1407, i8* %26, align 1
  %1408 = icmp eq i64 %1394, 0
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %29, align 1
  %1410 = lshr i64 %1394, 63
  %1411 = trunc i64 %1410 to i8
  store i8 %1411, i8* %32, align 1
  %1412 = xor i64 %1410, %1393
  %1413 = add nuw nsw i64 %1412, %1410
  %1414 = icmp eq i64 %1413, 2
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %38, align 1
  %1416 = load i64, i64* %RBP.i, align 8
  %1417 = add i64 %1416, -984
  %1418 = add i64 %1334, 38
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1417 to i64*
  store i64 %1394, i64* %1419, align 8
  %1420 = load i64, i64* %RBP.i, align 8
  %1421 = add i64 %1420, -1000
  %1422 = load i64, i64* %3, align 8
  %1423 = add i64 %1422, 10
  store i64 %1423, i64* %3, align 8
  %1424 = inttoptr i64 %1421 to i32*
  store i32 0, i32* %1424, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_411304

block_.L_411304:                                  ; preds = %block_.L_41136e, %block_.L_4112d4
  %1425 = phi i64 [ %1592, %block_.L_41136e ], [ %.pre61, %block_.L_4112d4 ]
  %1426 = load i64, i64* %RBP.i, align 8
  %1427 = add i64 %1426, -1000
  %1428 = add i64 %1425, 6
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = zext i32 %1430 to i64
  store i64 %1431, i64* %RAX.i678.pre-phi, align 8
  %1432 = add i64 %1426, -992
  %1433 = add i64 %1425, 12
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i32*
  %1435 = load i32, i32* %1434, align 4
  %1436 = sub i32 %1430, %1435
  %1437 = icmp ult i32 %1430, %1435
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %14, align 1
  %1439 = and i32 %1436, 255
  %1440 = tail call i32 @llvm.ctpop.i32(i32 %1439)
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = xor i8 %1442, 1
  store i8 %1443, i8* %21, align 1
  %1444 = xor i32 %1435, %1430
  %1445 = xor i32 %1444, %1436
  %1446 = lshr i32 %1445, 4
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  store i8 %1448, i8* %26, align 1
  %1449 = icmp eq i32 %1436, 0
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %29, align 1
  %1451 = lshr i32 %1436, 31
  %1452 = trunc i32 %1451 to i8
  store i8 %1452, i8* %32, align 1
  %1453 = lshr i32 %1430, 31
  %1454 = lshr i32 %1435, 31
  %1455 = xor i32 %1454, %1453
  %1456 = xor i32 %1451, %1453
  %1457 = add nuw nsw i32 %1456, %1455
  %1458 = icmp eq i32 %1457, 2
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %38, align 1
  %1460 = icmp ne i8 %1452, 0
  %1461 = xor i1 %1460, %1458
  %.v105 = select i1 %1461, i64 18, i64 131
  %1462 = add i64 %1425, %.v105
  store i64 %1462, i64* %3, align 8
  br i1 %1461, label %block_411316, label %block_.L_411387

block_411316:                                     ; preds = %block_.L_411304
  %1463 = add i64 %1426, -984
  %1464 = add i64 %1462, 7
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1463 to i64*
  %1466 = load i64, i64* %1465, align 8
  store i64 %1466, i64* %RAX.i678.pre-phi, align 8
  %1467 = add i64 %1462, 14
  store i64 %1467, i64* %3, align 8
  %1468 = load i32, i32* %1429, align 4
  %1469 = sext i32 %1468 to i64
  store i64 %1469, i64* %RCX.i676.pre-phi, align 8
  %1470 = shl nsw i64 %1469, 2
  %1471 = add i64 %1470, %1466
  %1472 = add i64 %1462, 18
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i32*
  %1474 = load i32, i32* %1473, align 4
  %1475 = sext i32 %1474 to i64
  store i64 %1475, i64* %RAX.i678.pre-phi, align 8
  %1476 = add nsw i64 %1475, 12099168
  %1477 = add i64 %1462, 26
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1476 to i8*
  %1479 = load i8, i8* %1478, align 1
  %1480 = zext i8 %1479 to i64
  store i64 %1480, i64* %RDX.i510.pre-phi, align 8
  %1481 = zext i8 %1479 to i32
  store i8 0, i8* %14, align 1
  %1482 = tail call i32 @llvm.ctpop.i32(i32 %1481)
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  %1485 = xor i8 %1484, 1
  store i8 %1485, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1486 = icmp eq i8 %1479, 0
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v106 = select i1 %1486, i64 35, i64 73
  %1488 = add i64 %1462, %.v106
  store i64 %1488, i64* %3, align 8
  br i1 %1486, label %block_411339, label %block_.L_41135f

block_411339:                                     ; preds = %block_411316
  %1489 = add i64 %1488, 7
  store i64 %1489, i64* %3, align 8
  %1490 = load i64, i64* %1465, align 8
  store i64 %1490, i64* %RAX.i678.pre-phi, align 8
  %1491 = add i64 %1488, 14
  store i64 %1491, i64* %3, align 8
  %1492 = load i32, i32* %1429, align 4
  %1493 = sext i32 %1492 to i64
  store i64 %1493, i64* %RCX.i676.pre-phi, align 8
  %1494 = shl nsw i64 %1493, 2
  %1495 = add i64 %1494, %1490
  %1496 = add i64 %1488, 18
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i32*
  %1498 = load i32, i32* %1497, align 4
  %1499 = sext i32 %1498 to i64
  store i64 %1499, i64* %RAX.i678.pre-phi, align 8
  %1500 = shl nsw i64 %1499, 2
  %1501 = add nsw i64 %1500, 11185584
  %1502 = add i64 %1488, 25
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i32*
  %1504 = load i32, i32* %1503, align 4
  %1505 = zext i32 %1504 to i64
  store i64 %1505, i64* %RDX.i510.pre-phi, align 8
  %1506 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1507 = sub i32 %1504, %1506
  %1508 = icmp ult i32 %1504, %1506
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %14, align 1
  %1510 = and i32 %1507, 255
  %1511 = tail call i32 @llvm.ctpop.i32(i32 %1510)
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  %1514 = xor i8 %1513, 1
  store i8 %1514, i8* %21, align 1
  %1515 = xor i32 %1506, %1504
  %1516 = xor i32 %1515, %1507
  %1517 = lshr i32 %1516, 4
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  store i8 %1519, i8* %26, align 1
  %1520 = icmp eq i32 %1507, 0
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %29, align 1
  %1522 = lshr i32 %1507, 31
  %1523 = trunc i32 %1522 to i8
  store i8 %1523, i8* %32, align 1
  %1524 = lshr i32 %1504, 31
  %1525 = lshr i32 %1506, 31
  %1526 = xor i32 %1525, %1524
  %1527 = xor i32 %1522, %1524
  %1528 = add nuw nsw i32 %1527, %1526
  %1529 = icmp eq i32 %1528, 2
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %38, align 1
  %.v107 = select i1 %1520, i64 38, i64 53
  %1531 = add i64 %1488, %.v107
  store i64 %1531, i64* %3, align 8
  br i1 %1520, label %block_.L_41135f, label %block_.L_41136e

block_.L_41135f:                                  ; preds = %block_411339, %block_411316
  %1532 = phi i64 [ %1531, %block_411339 ], [ %1488, %block_411316 ]
  %1533 = add i64 %1426, -996
  %1534 = add i64 %1532, 6
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = add i32 %1536, 1
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RAX.i678.pre-phi, align 8
  %1539 = icmp eq i32 %1536, -1
  %1540 = icmp eq i32 %1537, 0
  %1541 = or i1 %1539, %1540
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %14, align 1
  %1543 = and i32 %1537, 255
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %21, align 1
  %1548 = xor i32 %1537, %1536
  %1549 = lshr i32 %1548, 4
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  store i8 %1551, i8* %26, align 1
  %1552 = zext i1 %1540 to i8
  store i8 %1552, i8* %29, align 1
  %1553 = lshr i32 %1537, 31
  %1554 = trunc i32 %1553 to i8
  store i8 %1554, i8* %32, align 1
  %1555 = lshr i32 %1536, 31
  %1556 = xor i32 %1553, %1555
  %1557 = add nuw nsw i32 %1556, %1553
  %1558 = icmp eq i32 %1557, 2
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %38, align 1
  %1560 = add i64 %1532, 15
  store i64 %1560, i64* %3, align 8
  store i32 %1537, i32* %1535, align 4
  %.pre62 = load i64, i64* %3, align 8
  %.pre63 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41136e

block_.L_41136e:                                  ; preds = %block_411339, %block_.L_41135f
  %1561 = phi i64 [ %.pre63, %block_.L_41135f ], [ %1426, %block_411339 ]
  %1562 = phi i64 [ %.pre62, %block_.L_41135f ], [ %1531, %block_411339 ]
  %1563 = add i64 %1561, -1000
  %1564 = add i64 %1562, 11
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = add i32 %1566, 1
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RAX.i678.pre-phi, align 8
  %1569 = icmp eq i32 %1566, -1
  %1570 = icmp eq i32 %1567, 0
  %1571 = or i1 %1569, %1570
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %14, align 1
  %1573 = and i32 %1567, 255
  %1574 = tail call i32 @llvm.ctpop.i32(i32 %1573)
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  %1577 = xor i8 %1576, 1
  store i8 %1577, i8* %21, align 1
  %1578 = xor i32 %1567, %1566
  %1579 = lshr i32 %1578, 4
  %1580 = trunc i32 %1579 to i8
  %1581 = and i8 %1580, 1
  store i8 %1581, i8* %26, align 1
  %1582 = zext i1 %1570 to i8
  store i8 %1582, i8* %29, align 1
  %1583 = lshr i32 %1567, 31
  %1584 = trunc i32 %1583 to i8
  store i8 %1584, i8* %32, align 1
  %1585 = lshr i32 %1566, 31
  %1586 = xor i32 %1583, %1585
  %1587 = add nuw nsw i32 %1586, %1583
  %1588 = icmp eq i32 %1587, 2
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %38, align 1
  %1590 = add i64 %1562, 20
  store i64 %1590, i64* %3, align 8
  store i32 %1567, i32* %1565, align 4
  %1591 = load i64, i64* %3, align 8
  %1592 = add i64 %1591, -126
  store i64 %1592, i64* %3, align 8
  br label %block_.L_411304

block_.L_411387:                                  ; preds = %block_.L_411304
  %1593 = add i64 %1426, -996
  %1594 = add i64 %1462, 6
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1593 to i32*
  %1596 = load i32, i32* %1595, align 4
  %1597 = zext i32 %1596 to i64
  store i64 %1597, i64* %RAX.i678.pre-phi, align 8
  %1598 = add i64 %1426, -4
  %1599 = add i64 %1462, 9
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  store i32 %1596, i32* %1600, align 4
  %1601 = load i64, i64* %3, align 8
  %1602 = add i64 %1601, 519
  store i64 %1602, i64* %3, align 8
  br label %block_.L_411597

block_.L_411395:                                  ; preds = %block_411212
  %1603 = add i64 %1269, 45
  store i64 %1603, i64* %3, align 8
  br label %block_.L_4113c2

block_.L_41139a:                                  ; preds = %block_.L_411205
  store i64 241, i64* %RSI.i499.pre-phi, align 8
  %1604 = add i64 %1115, -976
  store i64 %1604, i64* %RDX.i510.pre-phi, align 8
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %1605 = add i64 %1115, -8
  %1606 = add i64 %1144, 15
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1605 to i32*
  %1608 = load i32, i32* %1607, align 4
  %1609 = zext i32 %1608 to i64
  store i64 %1609, i64* %RDI.i, align 8
  %1610 = add i64 %1144, -7002
  %1611 = add i64 %1144, 20
  %1612 = load i64, i64* %6, align 8
  %1613 = add i64 %1612, -8
  %1614 = inttoptr i64 %1613 to i64*
  store i64 %1611, i64* %1614, align 8
  store i64 %1613, i64* %6, align 8
  store i64 %1610, i64* %3, align 8
  %call2_4113a9 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %1610, %struct.Memory* %MEMORY.7)
  %1615 = load i64, i64* %RBP.i, align 8
  %1616 = add i64 %1615, -976
  %1617 = load i64, i64* %3, align 8
  store i64 %1616, i64* %RDX.i510.pre-phi, align 8
  %1618 = add i64 %1615, -984
  %1619 = add i64 %1617, 14
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i64*
  store i64 %1616, i64* %1620, align 8
  %EAX.i247 = bitcast %union.anon* %.pre-phi to i32*
  %1621 = load i64, i64* %RBP.i, align 8
  %1622 = add i64 %1621, -1108
  %1623 = load i32, i32* %EAX.i247, align 4
  %1624 = load i64, i64* %3, align 8
  %1625 = add i64 %1624, 6
  store i64 %1625, i64* %3, align 8
  %1626 = inttoptr i64 %1622 to i32*
  store i32 %1623, i32* %1626, align 4
  %.pre64 = load i64, i64* %RBP.i, align 8
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_4113c2

block_.L_4113c2:                                  ; preds = %block_.L_41139a, %block_.L_411395
  %1627 = phi i64 [ %.pre65, %block_.L_41139a ], [ %1603, %block_.L_411395 ]
  %1628 = phi i64 [ %.pre64, %block_.L_41139a ], [ %1239, %block_.L_411395 ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_4113a9, %block_.L_41139a ], [ %MEMORY.7, %block_.L_411395 ]
  %1629 = add i64 %1628, -1000
  %1630 = add i64 %1627, 10
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i32*
  store i32 0, i32* %1631, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_4113cc

block_.L_4113cc:                                  ; preds = %block_.L_411575, %block_.L_4113c2
  %1632 = phi i64 [ %2349, %block_.L_411575 ], [ %.pre66, %block_.L_4113c2 ]
  %1633 = load i64, i64* %RBP.i, align 8
  %1634 = add i64 %1633, -1000
  %1635 = add i64 %1632, 6
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1634 to i32*
  %1637 = load i32, i32* %1636, align 4
  %1638 = zext i32 %1637 to i64
  store i64 %1638, i64* %RAX.i678.pre-phi, align 8
  %1639 = add i64 %1633, -988
  %1640 = add i64 %1632, 12
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i32*
  %1642 = load i32, i32* %1641, align 4
  %1643 = sub i32 %1637, %1642
  %1644 = icmp ult i32 %1637, %1642
  %1645 = zext i1 %1644 to i8
  store i8 %1645, i8* %14, align 1
  %1646 = and i32 %1643, 255
  %1647 = tail call i32 @llvm.ctpop.i32(i32 %1646)
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  %1650 = xor i8 %1649, 1
  store i8 %1650, i8* %21, align 1
  %1651 = xor i32 %1642, %1637
  %1652 = xor i32 %1651, %1643
  %1653 = lshr i32 %1652, 4
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  store i8 %1655, i8* %26, align 1
  %1656 = icmp eq i32 %1643, 0
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %29, align 1
  %1658 = lshr i32 %1643, 31
  %1659 = trunc i32 %1658 to i8
  store i8 %1659, i8* %32, align 1
  %1660 = lshr i32 %1637, 31
  %1661 = lshr i32 %1642, 31
  %1662 = xor i32 %1661, %1660
  %1663 = xor i32 %1658, %1660
  %1664 = add nuw nsw i32 %1663, %1662
  %1665 = icmp eq i32 %1664, 2
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %38, align 1
  %1667 = icmp ne i8 %1659, 0
  %1668 = xor i1 %1667, %1665
  %.v94 = select i1 %1668, i64 18, i64 450
  %1669 = add i64 %1632, %.v94
  store i64 %1669, i64* %3, align 8
  br i1 %1668, label %block_4113de, label %block_.L_41158e

block_4113de:                                     ; preds = %block_.L_4113cc
  %1670 = add i64 %1633, -984
  %1671 = add i64 %1669, 7
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i64*
  %1673 = load i64, i64* %1672, align 8
  store i64 %1673, i64* %RAX.i678.pre-phi, align 8
  %1674 = add i64 %1669, 14
  store i64 %1674, i64* %3, align 8
  %1675 = load i32, i32* %1636, align 4
  %1676 = sext i32 %1675 to i64
  store i64 %1676, i64* %RCX.i676.pre-phi, align 8
  %1677 = shl nsw i64 %1676, 2
  %1678 = add i64 %1677, %1673
  %1679 = add i64 %1669, 17
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  %1681 = load i32, i32* %1680, align 4
  %1682 = add i32 %1681, 20
  %1683 = zext i32 %1682 to i64
  store i64 %1683, i64* %RDX.i510.pre-phi, align 8
  %1684 = icmp ugt i32 %1681, -21
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %14, align 1
  %1686 = and i32 %1682, 255
  %1687 = tail call i32 @llvm.ctpop.i32(i32 %1686)
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  %1690 = xor i8 %1689, 1
  store i8 %1690, i8* %21, align 1
  %1691 = xor i32 %1681, 16
  %1692 = xor i32 %1691, %1682
  %1693 = lshr i32 %1692, 4
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  store i8 %1695, i8* %26, align 1
  %1696 = icmp eq i32 %1682, 0
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %29, align 1
  %1698 = lshr i32 %1682, 31
  %1699 = trunc i32 %1698 to i8
  store i8 %1699, i8* %32, align 1
  %1700 = lshr i32 %1681, 31
  %1701 = xor i32 %1698, %1700
  %1702 = add nuw nsw i32 %1701, %1698
  %1703 = icmp eq i32 %1702, 2
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %38, align 1
  %1705 = sext i32 %1682 to i64
  store i64 %1705, i64* %RAX.i678.pre-phi, align 8
  %1706 = add nsw i64 %1705, 12099168
  %1707 = add i64 %1669, 31
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1706 to i8*
  %1709 = load i8, i8* %1708, align 1
  %1710 = zext i8 %1709 to i64
  store i64 %1710, i64* %RDX.i510.pre-phi, align 8
  %1711 = add i64 %1633, -12
  %1712 = add i64 %1669, 35
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i32*
  %1714 = load i32, i32* %1713, align 4
  %1715 = sext i32 %1714 to i64
  store i64 %1715, i64* %RAX.i678.pre-phi, align 8
  %1716 = add nsw i64 %1715, 12099168
  %1717 = add i64 %1669, 43
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to i8*
  %1719 = load i8, i8* %1718, align 1
  %1720 = zext i8 %1719 to i64
  store i64 %1720, i64* %RSI.i499.pre-phi, align 8
  %1721 = zext i8 %1709 to i32
  %1722 = zext i8 %1719 to i32
  %1723 = sub nsw i32 %1721, %1722
  %1724 = icmp ult i8 %1709, %1719
  %1725 = zext i1 %1724 to i8
  store i8 %1725, i8* %14, align 1
  %1726 = and i32 %1723, 255
  %1727 = tail call i32 @llvm.ctpop.i32(i32 %1726)
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  %1730 = xor i8 %1729, 1
  store i8 %1730, i8* %21, align 1
  %1731 = xor i8 %1719, %1709
  %1732 = zext i8 %1731 to i32
  %1733 = xor i32 %1732, %1723
  %1734 = lshr i32 %1733, 4
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  store i8 %1736, i8* %26, align 1
  %1737 = icmp eq i32 %1723, 0
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %29, align 1
  %1739 = lshr i32 %1723, 31
  %1740 = trunc i32 %1739 to i8
  store i8 %1740, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v95 = select i1 %1737, i64 51, i64 98
  %1741 = add i64 %1669, %.v95
  store i64 %1741, i64* %3, align 8
  br i1 %1737, label %block_411411, label %block_.L_411440

block_411411:                                     ; preds = %block_4113de
  %1742 = load i64, i64* %RBP.i, align 8
  %1743 = add i64 %1742, -984
  %1744 = add i64 %1741, 7
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i64*
  %1746 = load i64, i64* %1745, align 8
  store i64 %1746, i64* %RAX.i678.pre-phi, align 8
  %1747 = add i64 %1742, -1000
  %1748 = add i64 %1741, 14
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = sext i32 %1750 to i64
  store i64 %1751, i64* %RCX.i676.pre-phi, align 8
  %1752 = shl nsw i64 %1751, 2
  %1753 = add i64 %1752, %1746
  %1754 = add i64 %1741, 17
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = add i32 %1756, 20
  %1758 = zext i32 %1757 to i64
  store i64 %1758, i64* %RDX.i510.pre-phi, align 8
  %1759 = icmp ugt i32 %1756, -21
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %14, align 1
  %1761 = and i32 %1757, 255
  %1762 = tail call i32 @llvm.ctpop.i32(i32 %1761)
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  %1765 = xor i8 %1764, 1
  store i8 %1765, i8* %21, align 1
  %1766 = xor i32 %1756, 16
  %1767 = xor i32 %1766, %1757
  %1768 = lshr i32 %1767, 4
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  store i8 %1770, i8* %26, align 1
  %1771 = icmp eq i32 %1757, 0
  %1772 = zext i1 %1771 to i8
  store i8 %1772, i8* %29, align 1
  %1773 = lshr i32 %1757, 31
  %1774 = trunc i32 %1773 to i8
  store i8 %1774, i8* %32, align 1
  %1775 = lshr i32 %1756, 31
  %1776 = xor i32 %1773, %1775
  %1777 = add nuw nsw i32 %1776, %1773
  %1778 = icmp eq i32 %1777, 2
  %1779 = zext i1 %1778 to i8
  store i8 %1779, i8* %38, align 1
  %1780 = sext i32 %1757 to i64
  store i64 %1780, i64* %RAX.i678.pre-phi, align 8
  %1781 = shl nsw i64 %1780, 2
  %1782 = add nsw i64 %1781, 11187184
  %1783 = add i64 %1741, 30
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i32*
  %1785 = load i32, i32* %1784, align 4
  %1786 = zext i32 %1785 to i64
  store i64 %1786, i64* %RDX.i510.pre-phi, align 8
  %1787 = add i64 %1742, -12
  %1788 = add i64 %1741, 34
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i32*
  %1790 = load i32, i32* %1789, align 4
  %1791 = sext i32 %1790 to i64
  store i64 %1791, i64* %RAX.i678.pre-phi, align 8
  %1792 = shl nsw i64 %1791, 2
  %1793 = add nsw i64 %1792, 11187184
  %1794 = add i64 %1741, 41
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1793 to i32*
  %1796 = load i32, i32* %1795, align 4
  %1797 = sub i32 %1785, %1796
  %1798 = icmp ult i32 %1785, %1796
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %14, align 1
  %1800 = and i32 %1797, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800)
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %21, align 1
  %1805 = xor i32 %1796, %1785
  %1806 = xor i32 %1805, %1797
  %1807 = lshr i32 %1806, 4
  %1808 = trunc i32 %1807 to i8
  %1809 = and i8 %1808, 1
  store i8 %1809, i8* %26, align 1
  %1810 = icmp eq i32 %1797, 0
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %29, align 1
  %1812 = lshr i32 %1797, 31
  %1813 = trunc i32 %1812 to i8
  store i8 %1813, i8* %32, align 1
  %1814 = lshr i32 %1785, 31
  %1815 = lshr i32 %1796, 31
  %1816 = xor i32 %1815, %1814
  %1817 = xor i32 %1812, %1814
  %1818 = add nuw nsw i32 %1817, %1816
  %1819 = icmp eq i32 %1818, 2
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %38, align 1
  %.v102 = select i1 %1810, i64 341, i64 47
  %1821 = add i64 %1741, %.v102
  store i64 %1821, i64* %3, align 8
  br i1 %1810, label %block_.L_411566, label %block_.L_411440

block_.L_411440:                                  ; preds = %block_4113de, %block_411411
  %1822 = phi i64 [ %1821, %block_411411 ], [ %1741, %block_4113de ]
  %1823 = load i64, i64* %RBP.i, align 8
  %1824 = add i64 %1823, -984
  %1825 = add i64 %1822, 7
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i64*
  %1827 = load i64, i64* %1826, align 8
  store i64 %1827, i64* %RAX.i678.pre-phi, align 8
  %1828 = add i64 %1823, -1000
  %1829 = add i64 %1822, 14
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i32*
  %1831 = load i32, i32* %1830, align 4
  %1832 = sext i32 %1831 to i64
  store i64 %1832, i64* %RCX.i676.pre-phi, align 8
  %1833 = shl nsw i64 %1832, 2
  %1834 = add i64 %1833, %1827
  %1835 = add i64 %1822, 17
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to i32*
  %1837 = load i32, i32* %1836, align 4
  %1838 = add i32 %1837, -1
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %RDX.i510.pre-phi, align 8
  %1840 = icmp eq i32 %1837, 0
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %14, align 1
  %1842 = and i32 %1838, 255
  %1843 = tail call i32 @llvm.ctpop.i32(i32 %1842)
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  %1846 = xor i8 %1845, 1
  store i8 %1846, i8* %21, align 1
  %1847 = xor i32 %1838, %1837
  %1848 = lshr i32 %1847, 4
  %1849 = trunc i32 %1848 to i8
  %1850 = and i8 %1849, 1
  store i8 %1850, i8* %26, align 1
  %1851 = icmp eq i32 %1838, 0
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %29, align 1
  %1853 = lshr i32 %1838, 31
  %1854 = trunc i32 %1853 to i8
  store i8 %1854, i8* %32, align 1
  %1855 = lshr i32 %1837, 31
  %1856 = xor i32 %1853, %1855
  %1857 = add nuw nsw i32 %1856, %1855
  %1858 = icmp eq i32 %1857, 2
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %38, align 1
  %1860 = sext i32 %1838 to i64
  store i64 %1860, i64* %RAX.i678.pre-phi, align 8
  %1861 = add nsw i64 %1860, 12099168
  %1862 = add i64 %1822, 31
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1861 to i8*
  %1864 = load i8, i8* %1863, align 1
  %1865 = zext i8 %1864 to i64
  store i64 %1865, i64* %RDX.i510.pre-phi, align 8
  %1866 = add i64 %1823, -12
  %1867 = add i64 %1822, 35
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1866 to i32*
  %1869 = load i32, i32* %1868, align 4
  %1870 = sext i32 %1869 to i64
  store i64 %1870, i64* %RAX.i678.pre-phi, align 8
  %1871 = add nsw i64 %1870, 12099168
  %1872 = add i64 %1822, 43
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1871 to i8*
  %1874 = load i8, i8* %1873, align 1
  %1875 = zext i8 %1874 to i64
  store i64 %1875, i64* %RSI.i499.pre-phi, align 8
  %1876 = zext i8 %1864 to i32
  %1877 = zext i8 %1874 to i32
  %1878 = sub nsw i32 %1876, %1877
  %1879 = icmp ult i8 %1864, %1874
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %14, align 1
  %1881 = and i32 %1878, 255
  %1882 = tail call i32 @llvm.ctpop.i32(i32 %1881)
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  %1885 = xor i8 %1884, 1
  store i8 %1885, i8* %21, align 1
  %1886 = xor i8 %1874, %1864
  %1887 = zext i8 %1886 to i32
  %1888 = xor i32 %1887, %1878
  %1889 = lshr i32 %1888, 4
  %1890 = trunc i32 %1889 to i8
  %1891 = and i8 %1890, 1
  store i8 %1891, i8* %26, align 1
  %1892 = icmp eq i32 %1878, 0
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %29, align 1
  %1894 = lshr i32 %1878, 31
  %1895 = trunc i32 %1894 to i8
  store i8 %1895, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v96 = select i1 %1892, i64 51, i64 98
  %1896 = add i64 %1822, %.v96
  store i64 %1896, i64* %3, align 8
  br i1 %1892, label %block_411473, label %block_.L_4114a2

block_411473:                                     ; preds = %block_.L_411440
  %1897 = load i64, i64* %RBP.i, align 8
  %1898 = add i64 %1897, -984
  %1899 = add i64 %1896, 7
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1898 to i64*
  %1901 = load i64, i64* %1900, align 8
  store i64 %1901, i64* %RAX.i678.pre-phi, align 8
  %1902 = add i64 %1897, -1000
  %1903 = add i64 %1896, 14
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i32*
  %1905 = load i32, i32* %1904, align 4
  %1906 = sext i32 %1905 to i64
  store i64 %1906, i64* %RCX.i676.pre-phi, align 8
  %1907 = shl nsw i64 %1906, 2
  %1908 = add i64 %1907, %1901
  %1909 = add i64 %1896, 17
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i32*
  %1911 = load i32, i32* %1910, align 4
  %1912 = add i32 %1911, -1
  %1913 = zext i32 %1912 to i64
  store i64 %1913, i64* %RDX.i510.pre-phi, align 8
  %1914 = icmp eq i32 %1911, 0
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %14, align 1
  %1916 = and i32 %1912, 255
  %1917 = tail call i32 @llvm.ctpop.i32(i32 %1916)
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  %1920 = xor i8 %1919, 1
  store i8 %1920, i8* %21, align 1
  %1921 = xor i32 %1912, %1911
  %1922 = lshr i32 %1921, 4
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  store i8 %1924, i8* %26, align 1
  %1925 = icmp eq i32 %1912, 0
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %29, align 1
  %1927 = lshr i32 %1912, 31
  %1928 = trunc i32 %1927 to i8
  store i8 %1928, i8* %32, align 1
  %1929 = lshr i32 %1911, 31
  %1930 = xor i32 %1927, %1929
  %1931 = add nuw nsw i32 %1930, %1929
  %1932 = icmp eq i32 %1931, 2
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %38, align 1
  %1934 = sext i32 %1912 to i64
  store i64 %1934, i64* %RAX.i678.pre-phi, align 8
  %1935 = shl nsw i64 %1934, 2
  %1936 = add nsw i64 %1935, 11187184
  %1937 = add i64 %1896, 30
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  %1939 = load i32, i32* %1938, align 4
  %1940 = zext i32 %1939 to i64
  store i64 %1940, i64* %RDX.i510.pre-phi, align 8
  %1941 = add i64 %1897, -12
  %1942 = add i64 %1896, 34
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i32*
  %1944 = load i32, i32* %1943, align 4
  %1945 = sext i32 %1944 to i64
  store i64 %1945, i64* %RAX.i678.pre-phi, align 8
  %1946 = shl nsw i64 %1945, 2
  %1947 = add nsw i64 %1946, 11187184
  %1948 = add i64 %1896, 41
  store i64 %1948, i64* %3, align 8
  %1949 = inttoptr i64 %1947 to i32*
  %1950 = load i32, i32* %1949, align 4
  %1951 = sub i32 %1939, %1950
  %1952 = icmp ult i32 %1939, %1950
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %14, align 1
  %1954 = and i32 %1951, 255
  %1955 = tail call i32 @llvm.ctpop.i32(i32 %1954)
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = xor i8 %1957, 1
  store i8 %1958, i8* %21, align 1
  %1959 = xor i32 %1950, %1939
  %1960 = xor i32 %1959, %1951
  %1961 = lshr i32 %1960, 4
  %1962 = trunc i32 %1961 to i8
  %1963 = and i8 %1962, 1
  store i8 %1963, i8* %26, align 1
  %1964 = icmp eq i32 %1951, 0
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %29, align 1
  %1966 = lshr i32 %1951, 31
  %1967 = trunc i32 %1966 to i8
  store i8 %1967, i8* %32, align 1
  %1968 = lshr i32 %1939, 31
  %1969 = lshr i32 %1950, 31
  %1970 = xor i32 %1969, %1968
  %1971 = xor i32 %1966, %1968
  %1972 = add nuw nsw i32 %1971, %1970
  %1973 = icmp eq i32 %1972, 2
  %1974 = zext i1 %1973 to i8
  store i8 %1974, i8* %38, align 1
  %.v101 = select i1 %1964, i64 243, i64 47
  %1975 = add i64 %1896, %.v101
  store i64 %1975, i64* %3, align 8
  br i1 %1964, label %block_.L_411566, label %block_.L_4114a2

block_.L_4114a2:                                  ; preds = %block_.L_411440, %block_411473
  %1976 = phi i64 [ %1975, %block_411473 ], [ %1896, %block_.L_411440 ]
  %1977 = load i64, i64* %RBP.i, align 8
  %1978 = add i64 %1977, -984
  %1979 = add i64 %1976, 7
  store i64 %1979, i64* %3, align 8
  %1980 = inttoptr i64 %1978 to i64*
  %1981 = load i64, i64* %1980, align 8
  store i64 %1981, i64* %RAX.i678.pre-phi, align 8
  %1982 = add i64 %1977, -1000
  %1983 = add i64 %1976, 14
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to i32*
  %1985 = load i32, i32* %1984, align 4
  %1986 = sext i32 %1985 to i64
  store i64 %1986, i64* %RCX.i676.pre-phi, align 8
  %1987 = shl nsw i64 %1986, 2
  %1988 = add i64 %1987, %1981
  %1989 = add i64 %1976, 17
  store i64 %1989, i64* %3, align 8
  %1990 = inttoptr i64 %1988 to i32*
  %1991 = load i32, i32* %1990, align 4
  %1992 = add i32 %1991, -20
  %1993 = zext i32 %1992 to i64
  store i64 %1993, i64* %RDX.i510.pre-phi, align 8
  %1994 = icmp ult i32 %1991, 20
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %14, align 1
  %1996 = and i32 %1992, 255
  %1997 = tail call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  store i8 %2000, i8* %21, align 1
  %2001 = xor i32 %1991, 16
  %2002 = xor i32 %2001, %1992
  %2003 = lshr i32 %2002, 4
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %26, align 1
  %2006 = icmp eq i32 %1992, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %29, align 1
  %2008 = lshr i32 %1992, 31
  %2009 = trunc i32 %2008 to i8
  store i8 %2009, i8* %32, align 1
  %2010 = lshr i32 %1991, 31
  %2011 = xor i32 %2008, %2010
  %2012 = add nuw nsw i32 %2011, %2010
  %2013 = icmp eq i32 %2012, 2
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %38, align 1
  %2015 = sext i32 %1992 to i64
  store i64 %2015, i64* %RAX.i678.pre-phi, align 8
  %2016 = add nsw i64 %2015, 12099168
  %2017 = add i64 %1976, 31
  store i64 %2017, i64* %3, align 8
  %2018 = inttoptr i64 %2016 to i8*
  %2019 = load i8, i8* %2018, align 1
  %2020 = zext i8 %2019 to i64
  store i64 %2020, i64* %RDX.i510.pre-phi, align 8
  %2021 = add i64 %1977, -12
  %2022 = add i64 %1976, 35
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2021 to i32*
  %2024 = load i32, i32* %2023, align 4
  %2025 = sext i32 %2024 to i64
  store i64 %2025, i64* %RAX.i678.pre-phi, align 8
  %2026 = add nsw i64 %2025, 12099168
  %2027 = add i64 %1976, 43
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i8*
  %2029 = load i8, i8* %2028, align 1
  %2030 = zext i8 %2029 to i64
  store i64 %2030, i64* %RSI.i499.pre-phi, align 8
  %2031 = zext i8 %2019 to i32
  %2032 = zext i8 %2029 to i32
  %2033 = sub nsw i32 %2031, %2032
  %2034 = icmp ult i8 %2019, %2029
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %14, align 1
  %2036 = and i32 %2033, 255
  %2037 = tail call i32 @llvm.ctpop.i32(i32 %2036)
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  store i8 %2040, i8* %21, align 1
  %2041 = xor i8 %2029, %2019
  %2042 = zext i8 %2041 to i32
  %2043 = xor i32 %2042, %2033
  %2044 = lshr i32 %2043, 4
  %2045 = trunc i32 %2044 to i8
  %2046 = and i8 %2045, 1
  store i8 %2046, i8* %26, align 1
  %2047 = icmp eq i32 %2033, 0
  %2048 = zext i1 %2047 to i8
  store i8 %2048, i8* %29, align 1
  %2049 = lshr i32 %2033, 31
  %2050 = trunc i32 %2049 to i8
  store i8 %2050, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v97 = select i1 %2047, i64 51, i64 98
  %2051 = add i64 %1976, %.v97
  store i64 %2051, i64* %3, align 8
  br i1 %2047, label %block_4114d5, label %block_.L_411504

block_4114d5:                                     ; preds = %block_.L_4114a2
  %2052 = load i64, i64* %RBP.i, align 8
  %2053 = add i64 %2052, -984
  %2054 = add i64 %2051, 7
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i64*
  %2056 = load i64, i64* %2055, align 8
  store i64 %2056, i64* %RAX.i678.pre-phi, align 8
  %2057 = add i64 %2052, -1000
  %2058 = add i64 %2051, 14
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to i32*
  %2060 = load i32, i32* %2059, align 4
  %2061 = sext i32 %2060 to i64
  store i64 %2061, i64* %RCX.i676.pre-phi, align 8
  %2062 = shl nsw i64 %2061, 2
  %2063 = add i64 %2062, %2056
  %2064 = add i64 %2051, 17
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i32*
  %2066 = load i32, i32* %2065, align 4
  %2067 = add i32 %2066, -20
  %2068 = zext i32 %2067 to i64
  store i64 %2068, i64* %RDX.i510.pre-phi, align 8
  %2069 = icmp ult i32 %2066, 20
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %14, align 1
  %2071 = and i32 %2067, 255
  %2072 = tail call i32 @llvm.ctpop.i32(i32 %2071)
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  %2075 = xor i8 %2074, 1
  store i8 %2075, i8* %21, align 1
  %2076 = xor i32 %2066, 16
  %2077 = xor i32 %2076, %2067
  %2078 = lshr i32 %2077, 4
  %2079 = trunc i32 %2078 to i8
  %2080 = and i8 %2079, 1
  store i8 %2080, i8* %26, align 1
  %2081 = icmp eq i32 %2067, 0
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %29, align 1
  %2083 = lshr i32 %2067, 31
  %2084 = trunc i32 %2083 to i8
  store i8 %2084, i8* %32, align 1
  %2085 = lshr i32 %2066, 31
  %2086 = xor i32 %2083, %2085
  %2087 = add nuw nsw i32 %2086, %2085
  %2088 = icmp eq i32 %2087, 2
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %38, align 1
  %2090 = sext i32 %2067 to i64
  store i64 %2090, i64* %RAX.i678.pre-phi, align 8
  %2091 = shl nsw i64 %2090, 2
  %2092 = add nsw i64 %2091, 11187184
  %2093 = add i64 %2051, 30
  store i64 %2093, i64* %3, align 8
  %2094 = inttoptr i64 %2092 to i32*
  %2095 = load i32, i32* %2094, align 4
  %2096 = zext i32 %2095 to i64
  store i64 %2096, i64* %RDX.i510.pre-phi, align 8
  %2097 = add i64 %2052, -12
  %2098 = add i64 %2051, 34
  store i64 %2098, i64* %3, align 8
  %2099 = inttoptr i64 %2097 to i32*
  %2100 = load i32, i32* %2099, align 4
  %2101 = sext i32 %2100 to i64
  store i64 %2101, i64* %RAX.i678.pre-phi, align 8
  %2102 = shl nsw i64 %2101, 2
  %2103 = add nsw i64 %2102, 11187184
  %2104 = add i64 %2051, 41
  store i64 %2104, i64* %3, align 8
  %2105 = inttoptr i64 %2103 to i32*
  %2106 = load i32, i32* %2105, align 4
  %2107 = sub i32 %2095, %2106
  %2108 = icmp ult i32 %2095, %2106
  %2109 = zext i1 %2108 to i8
  store i8 %2109, i8* %14, align 1
  %2110 = and i32 %2107, 255
  %2111 = tail call i32 @llvm.ctpop.i32(i32 %2110)
  %2112 = trunc i32 %2111 to i8
  %2113 = and i8 %2112, 1
  %2114 = xor i8 %2113, 1
  store i8 %2114, i8* %21, align 1
  %2115 = xor i32 %2106, %2095
  %2116 = xor i32 %2115, %2107
  %2117 = lshr i32 %2116, 4
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  store i8 %2119, i8* %26, align 1
  %2120 = icmp eq i32 %2107, 0
  %2121 = zext i1 %2120 to i8
  store i8 %2121, i8* %29, align 1
  %2122 = lshr i32 %2107, 31
  %2123 = trunc i32 %2122 to i8
  store i8 %2123, i8* %32, align 1
  %2124 = lshr i32 %2095, 31
  %2125 = lshr i32 %2106, 31
  %2126 = xor i32 %2125, %2124
  %2127 = xor i32 %2122, %2124
  %2128 = add nuw nsw i32 %2127, %2126
  %2129 = icmp eq i32 %2128, 2
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %38, align 1
  %.v100 = select i1 %2120, i64 145, i64 47
  %2131 = add i64 %2051, %.v100
  store i64 %2131, i64* %3, align 8
  br i1 %2120, label %block_.L_411566, label %block_.L_411504

block_.L_411504:                                  ; preds = %block_.L_4114a2, %block_4114d5
  %2132 = phi i64 [ %2131, %block_4114d5 ], [ %2051, %block_.L_4114a2 ]
  %2133 = load i64, i64* %RBP.i, align 8
  %2134 = add i64 %2133, -984
  %2135 = add i64 %2132, 7
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i64*
  %2137 = load i64, i64* %2136, align 8
  store i64 %2137, i64* %RAX.i678.pre-phi, align 8
  %2138 = add i64 %2133, -1000
  %2139 = add i64 %2132, 14
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2138 to i32*
  %2141 = load i32, i32* %2140, align 4
  %2142 = sext i32 %2141 to i64
  store i64 %2142, i64* %RCX.i676.pre-phi, align 8
  %2143 = shl nsw i64 %2142, 2
  %2144 = add i64 %2143, %2137
  %2145 = add i64 %2132, 17
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2144 to i32*
  %2147 = load i32, i32* %2146, align 4
  %2148 = add i32 %2147, 1
  %2149 = zext i32 %2148 to i64
  store i64 %2149, i64* %RDX.i510.pre-phi, align 8
  %2150 = icmp eq i32 %2147, -1
  %2151 = icmp eq i32 %2148, 0
  %2152 = or i1 %2150, %2151
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %14, align 1
  %2154 = and i32 %2148, 255
  %2155 = tail call i32 @llvm.ctpop.i32(i32 %2154)
  %2156 = trunc i32 %2155 to i8
  %2157 = and i8 %2156, 1
  %2158 = xor i8 %2157, 1
  store i8 %2158, i8* %21, align 1
  %2159 = xor i32 %2148, %2147
  %2160 = lshr i32 %2159, 4
  %2161 = trunc i32 %2160 to i8
  %2162 = and i8 %2161, 1
  store i8 %2162, i8* %26, align 1
  %2163 = zext i1 %2151 to i8
  store i8 %2163, i8* %29, align 1
  %2164 = lshr i32 %2148, 31
  %2165 = trunc i32 %2164 to i8
  store i8 %2165, i8* %32, align 1
  %2166 = lshr i32 %2147, 31
  %2167 = xor i32 %2164, %2166
  %2168 = add nuw nsw i32 %2167, %2164
  %2169 = icmp eq i32 %2168, 2
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %38, align 1
  %2171 = sext i32 %2148 to i64
  store i64 %2171, i64* %RAX.i678.pre-phi, align 8
  %2172 = add nsw i64 %2171, 12099168
  %2173 = add i64 %2132, 31
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i8*
  %2175 = load i8, i8* %2174, align 1
  %2176 = zext i8 %2175 to i64
  store i64 %2176, i64* %RDX.i510.pre-phi, align 8
  %2177 = add i64 %2133, -12
  %2178 = add i64 %2132, 35
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2177 to i32*
  %2180 = load i32, i32* %2179, align 4
  %2181 = sext i32 %2180 to i64
  store i64 %2181, i64* %RAX.i678.pre-phi, align 8
  %2182 = add nsw i64 %2181, 12099168
  %2183 = add i64 %2132, 43
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2182 to i8*
  %2185 = load i8, i8* %2184, align 1
  %2186 = zext i8 %2185 to i64
  store i64 %2186, i64* %RSI.i499.pre-phi, align 8
  %2187 = zext i8 %2175 to i32
  %2188 = zext i8 %2185 to i32
  %2189 = sub nsw i32 %2187, %2188
  %2190 = icmp ult i8 %2175, %2185
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %14, align 1
  %2192 = and i32 %2189, 255
  %2193 = tail call i32 @llvm.ctpop.i32(i32 %2192)
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = xor i8 %2195, 1
  store i8 %2196, i8* %21, align 1
  %2197 = xor i8 %2185, %2175
  %2198 = zext i8 %2197 to i32
  %2199 = xor i32 %2198, %2189
  %2200 = lshr i32 %2199, 4
  %2201 = trunc i32 %2200 to i8
  %2202 = and i8 %2201, 1
  store i8 %2202, i8* %26, align 1
  %2203 = icmp eq i32 %2189, 0
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %29, align 1
  %2205 = lshr i32 %2189, 31
  %2206 = trunc i32 %2205 to i8
  store i8 %2206, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v98 = select i1 %2203, i64 51, i64 113
  %2207 = add i64 %2132, %.v98
  store i64 %2207, i64* %3, align 8
  br i1 %2203, label %block_411537, label %block_.L_411575

block_411537:                                     ; preds = %block_.L_411504
  %2208 = load i64, i64* %RBP.i, align 8
  %2209 = add i64 %2208, -984
  %2210 = add i64 %2207, 7
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2209 to i64*
  %2212 = load i64, i64* %2211, align 8
  store i64 %2212, i64* %RAX.i678.pre-phi, align 8
  %2213 = add i64 %2208, -1000
  %2214 = add i64 %2207, 14
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2213 to i32*
  %2216 = load i32, i32* %2215, align 4
  %2217 = sext i32 %2216 to i64
  store i64 %2217, i64* %RCX.i676.pre-phi, align 8
  %2218 = shl nsw i64 %2217, 2
  %2219 = add i64 %2218, %2212
  %2220 = add i64 %2207, 17
  store i64 %2220, i64* %3, align 8
  %2221 = inttoptr i64 %2219 to i32*
  %2222 = load i32, i32* %2221, align 4
  %2223 = add i32 %2222, 1
  %2224 = zext i32 %2223 to i64
  store i64 %2224, i64* %RDX.i510.pre-phi, align 8
  %2225 = icmp eq i32 %2222, -1
  %2226 = icmp eq i32 %2223, 0
  %2227 = or i1 %2225, %2226
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %14, align 1
  %2229 = and i32 %2223, 255
  %2230 = tail call i32 @llvm.ctpop.i32(i32 %2229)
  %2231 = trunc i32 %2230 to i8
  %2232 = and i8 %2231, 1
  %2233 = xor i8 %2232, 1
  store i8 %2233, i8* %21, align 1
  %2234 = xor i32 %2223, %2222
  %2235 = lshr i32 %2234, 4
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  store i8 %2237, i8* %26, align 1
  %2238 = zext i1 %2226 to i8
  store i8 %2238, i8* %29, align 1
  %2239 = lshr i32 %2223, 31
  %2240 = trunc i32 %2239 to i8
  store i8 %2240, i8* %32, align 1
  %2241 = lshr i32 %2222, 31
  %2242 = xor i32 %2239, %2241
  %2243 = add nuw nsw i32 %2242, %2239
  %2244 = icmp eq i32 %2243, 2
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %38, align 1
  %2246 = sext i32 %2223 to i64
  store i64 %2246, i64* %RAX.i678.pre-phi, align 8
  %2247 = shl nsw i64 %2246, 2
  %2248 = add nsw i64 %2247, 11187184
  %2249 = add i64 %2207, 30
  store i64 %2249, i64* %3, align 8
  %2250 = inttoptr i64 %2248 to i32*
  %2251 = load i32, i32* %2250, align 4
  %2252 = zext i32 %2251 to i64
  store i64 %2252, i64* %RDX.i510.pre-phi, align 8
  %2253 = add i64 %2208, -12
  %2254 = add i64 %2207, 34
  store i64 %2254, i64* %3, align 8
  %2255 = inttoptr i64 %2253 to i32*
  %2256 = load i32, i32* %2255, align 4
  %2257 = sext i32 %2256 to i64
  store i64 %2257, i64* %RAX.i678.pre-phi, align 8
  %2258 = shl nsw i64 %2257, 2
  %2259 = add nsw i64 %2258, 11187184
  %2260 = add i64 %2207, 41
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i32*
  %2262 = load i32, i32* %2261, align 4
  %2263 = sub i32 %2251, %2262
  %2264 = icmp ult i32 %2251, %2262
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %14, align 1
  %2266 = and i32 %2263, 255
  %2267 = tail call i32 @llvm.ctpop.i32(i32 %2266)
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  %2270 = xor i8 %2269, 1
  store i8 %2270, i8* %21, align 1
  %2271 = xor i32 %2262, %2251
  %2272 = xor i32 %2271, %2263
  %2273 = lshr i32 %2272, 4
  %2274 = trunc i32 %2273 to i8
  %2275 = and i8 %2274, 1
  store i8 %2275, i8* %26, align 1
  %2276 = icmp eq i32 %2263, 0
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %29, align 1
  %2278 = lshr i32 %2263, 31
  %2279 = trunc i32 %2278 to i8
  store i8 %2279, i8* %32, align 1
  %2280 = lshr i32 %2251, 31
  %2281 = lshr i32 %2262, 31
  %2282 = xor i32 %2281, %2280
  %2283 = xor i32 %2278, %2280
  %2284 = add nuw nsw i32 %2283, %2282
  %2285 = icmp eq i32 %2284, 2
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %38, align 1
  %.v99 = select i1 %2276, i64 47, i64 62
  %2287 = add i64 %2207, %.v99
  store i64 %2287, i64* %3, align 8
  br i1 %2276, label %block_.L_411566, label %block_.L_411575

block_.L_411566:                                  ; preds = %block_411537, %block_4114d5, %block_411473, %block_411411
  %2288 = phi i64 [ %2287, %block_411537 ], [ %2131, %block_4114d5 ], [ %1975, %block_411473 ], [ %1821, %block_411411 ]
  %2289 = load i64, i64* %RBP.i, align 8
  %2290 = add i64 %2289, -996
  %2291 = add i64 %2288, 6
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2290 to i32*
  %2293 = load i32, i32* %2292, align 4
  %2294 = add i32 %2293, 1
  %2295 = zext i32 %2294 to i64
  store i64 %2295, i64* %RAX.i678.pre-phi, align 8
  %2296 = icmp eq i32 %2293, -1
  %2297 = icmp eq i32 %2294, 0
  %2298 = or i1 %2296, %2297
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %14, align 1
  %2300 = and i32 %2294, 255
  %2301 = tail call i32 @llvm.ctpop.i32(i32 %2300)
  %2302 = trunc i32 %2301 to i8
  %2303 = and i8 %2302, 1
  %2304 = xor i8 %2303, 1
  store i8 %2304, i8* %21, align 1
  %2305 = xor i32 %2294, %2293
  %2306 = lshr i32 %2305, 4
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  store i8 %2308, i8* %26, align 1
  %2309 = zext i1 %2297 to i8
  store i8 %2309, i8* %29, align 1
  %2310 = lshr i32 %2294, 31
  %2311 = trunc i32 %2310 to i8
  store i8 %2311, i8* %32, align 1
  %2312 = lshr i32 %2293, 31
  %2313 = xor i32 %2310, %2312
  %2314 = add nuw nsw i32 %2313, %2310
  %2315 = icmp eq i32 %2314, 2
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %38, align 1
  %2317 = add i64 %2288, 15
  store i64 %2317, i64* %3, align 8
  store i32 %2294, i32* %2292, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_411575

block_.L_411575:                                  ; preds = %block_411537, %block_.L_411504, %block_.L_411566
  %2318 = phi i64 [ %.pre68, %block_.L_411566 ], [ %2287, %block_411537 ], [ %2207, %block_.L_411504 ]
  %2319 = load i64, i64* %RBP.i, align 8
  %2320 = add i64 %2319, -1000
  %2321 = add i64 %2318, 11
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i32*
  %2323 = load i32, i32* %2322, align 4
  %2324 = add i32 %2323, 1
  %2325 = zext i32 %2324 to i64
  store i64 %2325, i64* %RAX.i678.pre-phi, align 8
  %2326 = icmp eq i32 %2323, -1
  %2327 = icmp eq i32 %2324, 0
  %2328 = or i1 %2326, %2327
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %14, align 1
  %2330 = and i32 %2324, 255
  %2331 = tail call i32 @llvm.ctpop.i32(i32 %2330)
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = xor i8 %2333, 1
  store i8 %2334, i8* %21, align 1
  %2335 = xor i32 %2324, %2323
  %2336 = lshr i32 %2335, 4
  %2337 = trunc i32 %2336 to i8
  %2338 = and i8 %2337, 1
  store i8 %2338, i8* %26, align 1
  %2339 = zext i1 %2327 to i8
  store i8 %2339, i8* %29, align 1
  %2340 = lshr i32 %2324, 31
  %2341 = trunc i32 %2340 to i8
  store i8 %2341, i8* %32, align 1
  %2342 = lshr i32 %2323, 31
  %2343 = xor i32 %2340, %2342
  %2344 = add nuw nsw i32 %2343, %2340
  %2345 = icmp eq i32 %2344, 2
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %38, align 1
  %2347 = add i64 %2318, 20
  store i64 %2347, i64* %3, align 8
  store i32 %2324, i32* %2322, align 4
  %2348 = load i64, i64* %3, align 8
  %2349 = add i64 %2348, -445
  store i64 %2349, i64* %3, align 8
  br label %block_.L_4113cc

block_.L_41158e:                                  ; preds = %block_.L_4113cc
  %2350 = add i64 %1633, -996
  %2351 = add i64 %1669, 6
  store i64 %2351, i64* %3, align 8
  %2352 = inttoptr i64 %2350 to i32*
  %2353 = load i32, i32* %2352, align 4
  %2354 = zext i32 %2353 to i64
  store i64 %2354, i64* %RAX.i678.pre-phi, align 8
  %2355 = add i64 %1633, -4
  %2356 = add i64 %1669, 9
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  store i32 %2353, i32* %2357, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_411597

block_.L_411597:                                  ; preds = %block_.L_41158e, %block_.L_411387
  %2358 = phi i64 [ %.pre67, %block_.L_41158e ], [ %1602, %block_.L_411387 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.13, %block_.L_41158e ], [ %MEMORY.7, %block_.L_411387 ]
  %2359 = load i64, i64* %RBP.i, align 8
  %2360 = add i64 %2359, -4
  %2361 = add i64 %2358, 3
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i32*
  %2363 = load i32, i32* %2362, align 4
  %2364 = zext i32 %2363 to i64
  store i64 %2364, i64* %RAX.i678.pre-phi, align 8
  %2365 = load i64, i64* %6, align 8
  %2366 = add i64 %2365, 1120
  store i64 %2366, i64* %6, align 8
  %2367 = icmp ugt i64 %2365, -1121
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %14, align 1
  %2369 = trunc i64 %2366 to i32
  %2370 = and i32 %2369, 255
  %2371 = tail call i32 @llvm.ctpop.i32(i32 %2370)
  %2372 = trunc i32 %2371 to i8
  %2373 = and i8 %2372, 1
  %2374 = xor i8 %2373, 1
  store i8 %2374, i8* %21, align 1
  %2375 = xor i64 %2366, %2365
  %2376 = lshr i64 %2375, 4
  %2377 = trunc i64 %2376 to i8
  %2378 = and i8 %2377, 1
  store i8 %2378, i8* %26, align 1
  %2379 = icmp eq i64 %2366, 0
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %29, align 1
  %2381 = lshr i64 %2366, 63
  %2382 = trunc i64 %2381 to i8
  store i8 %2382, i8* %32, align 1
  %2383 = lshr i64 %2365, 63
  %2384 = xor i64 %2381, %2383
  %2385 = add nuw nsw i64 %2384, %2381
  %2386 = icmp eq i64 %2385, 2
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %38, align 1
  %2388 = add i64 %2358, 11
  store i64 %2388, i64* %3, align 8
  %2389 = add i64 %2365, 1128
  %2390 = inttoptr i64 %2366 to i64*
  %2391 = load i64, i64* %2390, align 8
  store i64 %2391, i64* %RBP.i, align 8
  store i64 %2389, i64* %6, align 8
  %2392 = add i64 %2358, 12
  store i64 %2392, i64* %3, align 8
  %2393 = inttoptr i64 %2389 to i64*
  %2394 = load i64, i64* %2393, align 8
  store i64 %2394, i64* %3, align 8
  %2395 = add i64 %2365, 1136
  store i64 %2395, i64* %6, align 8
  ret %struct.Memory* %MEMORY.20
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
define %struct.Memory* @routine_subq__0x460___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1120
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1120
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -996
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jae_.L_410f12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_410f12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_410f83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x77a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1914, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a504___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a504_type* @G__0x57a504 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x3f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1012
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_movq__rdx__MINUS0x400__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1024
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_movl_MINUS0x3f4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1012
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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
define %struct.Memory* @routine_movl__eax__MINUS0x404__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1028
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_movq_MINUS0x400__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1024
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x408__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1032
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_movl_MINUS0x404__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1028
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x408__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1032
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_jae_.L_410faa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_410faa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41101b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x77b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1915, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a514___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a514_type* @G__0x57a514 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x40c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1036
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x418__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1048
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1036
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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
define %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1052
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x418__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1048
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x420__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1056
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x41c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1052
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x420__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1056
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_je_.L_411045(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_jne_.L_41104a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4110bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x77c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1916, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a524___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a524_type* @G__0x57a524 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1060
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x430__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1072
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x424__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1060
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x434__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1076
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x430__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1072
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x438__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1080
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x434__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1076
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x438__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1080
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4110e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4110ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41115b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x77d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1917, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a53a___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a53a_type* @G__0x57a53a to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x43c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1084
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x448__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1096
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x43c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1084
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x448__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1096
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x450__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1104
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x450__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x3ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1004
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3ec__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1004
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 744
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0xc__rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__edx__MINUS0x3dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -988
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3dc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -988
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
define %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_jle_.L_411205(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__edx__MINUS0x3f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1008
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__edx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3f0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1008
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x14__MINUS0x3dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -988
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -20
  %10 = icmp ult i32 %8, 20
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
define %struct.Memory* @routine_jg_.L_41139a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -17
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
define %struct.Memory* @routine_movq__rdx__MINUS0x3d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -984
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x3ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1004
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__esi__MINUS0x3e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -992
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x14__MINUS0x3e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -992
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -20
  %10 = icmp ult i32 %8, 20
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
define %struct.Memory* @routine_jg_.L_411395(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da04___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__0x99da04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1000
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3e8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1000
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3dc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -988
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jge_.L_4112d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x3d8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -984
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3e8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1000
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq___rcx__rdx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xaaadb0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11185584
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1000
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41128e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -17
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
define %struct.Memory* @routine_movq__rax__MINUS0x3d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -984
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3e0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -992
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jge_.L_411387(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x3d8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -984
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3e8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1000
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jne_.L_41135f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaaadb0___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11185584
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x99da04___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41136e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3e4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -996
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
define %struct.Memory* @routine_movl__eax__MINUS0x3e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -996
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411373(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411304(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_411597(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4113c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 241, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x3d0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -976
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_callq_.findlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x454__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41158e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__edx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDX, align 4
  %6 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jne_.L_411440(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaab3f0___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xaab3f0___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_411566(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4114a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jne_.L_411504(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jne_.L_411575(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41157a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4113cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_addq__0x460___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1120
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1121
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
