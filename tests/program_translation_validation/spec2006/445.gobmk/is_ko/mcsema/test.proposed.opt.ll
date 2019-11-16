; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a466_type = type <{ [8 x i8] }>
%G__0x57a49b_type = type <{ [8 x i8] }>
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
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a466 = global %G__0x57a466_type zeroinitializer
@G__0x57a49b = global %G__0x57a49b_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @is_ko(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -88
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 80
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
  %RAX.i491 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 3, i64* %RAX.i491, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %41 to i32*
  %42 = add i64 %7, -16
  %43 = load i32, i32* %EDI.i, align 4
  %44 = add i64 %10, 15
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %46 to i32*
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -12
  %49 = load i32, i32* %ESI.i, align 4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %RDX.i557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -24
  %55 = load i64, i64* %RDX.i557, align 8
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58, align 8
  %59 = load i64, i64* %RAX.i491, align 8
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -12
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 3
  store i64 %63, i64* %3, align 8
  %64 = trunc i64 %59 to i32
  %65 = inttoptr i64 %61 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %64, %66
  %68 = zext i32 %67 to i64
  store i64 %68, i64* %RAX.i491, align 8
  %69 = icmp ult i32 %64, %66
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %14, align 1
  %71 = and i32 %67, 255
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1
  %76 = xor i32 %66, %64
  %77 = xor i32 %76, %67
  %78 = lshr i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %27, align 1
  %81 = icmp eq i32 %67, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %30, align 1
  %83 = lshr i32 %67, 31
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %33, align 1
  %85 = lshr i32 %64, 31
  %86 = lshr i32 %66, 31
  %87 = xor i32 %86, %85
  %88 = xor i32 %83, %85
  %89 = add nuw nsw i32 %88, %87
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %39, align 1
  %EAX.i551 = bitcast %union.anon* %40 to i32*
  %92 = add i64 %60, -28
  %93 = add i64 %62, 6
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %92 to i32*
  store i32 %67, i32* %94, align 4
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -32
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 7
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %96 to i32*
  store i32 0, i32* %99, align 4
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -36
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 7
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i32*
  store i32 0, i32* %104, align 4
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -8
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 7
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %106 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, -421
  %112 = icmp ult i32 %110, 421
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %14, align 1
  %114 = and i32 %111, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %21, align 1
  %119 = xor i32 %111, %110
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %27, align 1
  %123 = icmp eq i32 %111, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %30, align 1
  %125 = lshr i32 %111, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %33, align 1
  %127 = lshr i32 %110, 31
  %128 = xor i32 %125, %127
  %129 = add nuw nsw i32 %128, %127
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %39, align 1
  %.v = select i1 %112, i64 13, i64 39
  %132 = add i64 %107, %.v
  store i64 %132, i64* %3, align 8
  br i1 %112, label %block_40f238, label %entry.block_.L_40f252_crit_edge

entry.block_.L_40f252_crit_edge:                  ; preds = %entry
  %.pre48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre50 = getelementptr inbounds %union.anon, %union.anon* %.pre48, i64 0, i32 0
  br label %block_.L_40f252

block_40f238:                                     ; preds = %entry
  %133 = add i64 %132, 4
  store i64 %133, i64* %3, align 8
  %134 = load i32, i32* %109, align 4
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %RAX.i491, align 8
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i539 = getelementptr inbounds %union.anon, %union.anon* %136, i64 0, i32 0
  %137 = add nsw i64 %135, 12099168
  %138 = add i64 %132, 12
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i8*
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i64
  store i64 %141, i64* %RCX.i539, align 8
  %142 = zext i8 %140 to i32
  %143 = add nsw i32 %142, -3
  %144 = icmp ult i8 %140, 3
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %14, align 1
  %146 = and i32 %143, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %21, align 1
  %151 = xor i32 %143, %142
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %27, align 1
  %155 = icmp eq i32 %143, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %30, align 1
  %157 = lshr i32 %143, 31
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v72 = select i1 %155, i64 26, i64 21
  %159 = add i64 %132, %.v72
  store i64 %159, i64* %3, align 8
  br i1 %155, label %block_.L_40f252, label %block_40f24d

block_40f24d:                                     ; preds = %block_40f238
  %160 = add i64 %159, 94
  store i64 %160, i64* %3, align 8
  br label %block_.L_40f2ab

block_.L_40f252:                                  ; preds = %entry.block_.L_40f252_crit_edge, %block_40f238
  %ECX.i517.pre-phi.in = phi %union.anon* [ %.pre48, %entry.block_.L_40f252_crit_edge ], [ %136, %block_40f238 ]
  %RCX.i523.pre-phi = phi i64* [ %.pre50, %entry.block_.L_40f252_crit_edge ], [ %RCX.i539, %block_40f238 ]
  %161 = phi i64 [ %132, %entry.block_.L_40f252_crit_edge ], [ %159, %block_40f238 ]
  %ECX.i517.pre-phi = bitcast %union.anon* %ECX.i517.pre-phi.in to i32*
  %RDI.i532 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i532, align 8
  %RSI.i530 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  store i64 2501, i64* %RSI.i530, align 8
  store i64 ptrtoint (%G__0x57a49b_type* @G__0x57a49b to i64), i64* %RDX.i557, align 8
  store i64 20, i64* %RAX.i491, align 8
  %162 = add i64 %161, 33
  store i64 %162, i64* %3, align 8
  %163 = load i32, i32* %109, align 4
  %164 = zext i32 %163 to i64
  store i64 %164, i64* %RCX.i523.pre-phi, align 8
  %165 = add i64 %105, -40
  %166 = add i64 %161, 36
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i32*
  store i32 20, i32* %167, align 4
  %168 = load i32, i32* %ECX.i517.pre-phi, align 4
  %169 = zext i32 %168 to i64
  %170 = load i64, i64* %3, align 8
  store i64 %169, i64* %RAX.i491, align 8
  %171 = load i64, i64* %RBP.i, align 8
  %172 = add i64 %171, -48
  %173 = load i64, i64* %RDX.i557, align 8
  %174 = add i64 %170, 6
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %172 to i64*
  store i64 %173, i64* %175, align 8
  %176 = load i64, i64* %3, align 8
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %178 = load i32, i32* %EAX.i551, align 8
  %179 = sext i32 %178 to i64
  %180 = lshr i64 %179, 32
  store i64 %180, i64* %177, align 8
  %181 = load i64, i64* %RBP.i, align 8
  %182 = add i64 %181, -40
  %183 = add i64 %176, 4
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RCX.i523.pre-phi, align 8
  %187 = add i64 %176, 6
  store i64 %187, i64* %3, align 8
  %188 = zext i32 %178 to i64
  %189 = sext i32 %185 to i64
  %190 = shl nuw i64 %180, 32
  %191 = or i64 %190, %188
  %192 = sdiv i64 %191, %189
  %193 = shl i64 %192, 32
  %194 = ashr exact i64 %193, 32
  %195 = icmp eq i64 %192, %194
  br i1 %195, label %198, label %196

; <label>:196:                                    ; preds = %block_.L_40f252
  %197 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %187, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i491, align 8
  %.pre22 = load i64, i64* %3, align 8
  %.pre23 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit506

; <label>:198:                                    ; preds = %block_.L_40f252
  %199 = srem i64 %191, %189
  %200 = and i64 %192, 4294967295
  store i64 %200, i64* %RAX.i491, align 8
  %201 = and i64 %199, 4294967295
  store i64 %201, i64* %RDX.i557, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit506

routine_idivl__ecx.exit506:                       ; preds = %198, %196
  %202 = phi i64 [ %.pre23, %196 ], [ %181, %198 ]
  %203 = phi i64 [ %.pre22, %196 ], [ %187, %198 ]
  %204 = phi i64 [ %.pre, %196 ], [ %200, %198 ]
  %205 = phi %struct.Memory* [ %197, %196 ], [ %2, %198 ]
  %206 = trunc i64 %204 to i32
  %207 = add i32 %206, -1
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RAX.i491, align 8
  %209 = icmp eq i32 %206, 0
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %14, align 1
  %211 = and i32 %207, 255
  %212 = tail call i32 @llvm.ctpop.i32(i32 %211)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  store i8 %215, i8* %21, align 1
  %216 = xor i32 %207, %206
  %217 = lshr i32 %216, 4
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, i8* %27, align 1
  %220 = icmp eq i32 %207, 0
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %30, align 1
  %222 = lshr i32 %207, 31
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %33, align 1
  %224 = lshr i32 %206, 31
  %225 = xor i32 %222, %224
  %226 = add nuw nsw i32 %225, %224
  %227 = icmp eq i32 %226, 2
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %39, align 1
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i500 = bitcast %union.anon* %229 to i32*
  %230 = getelementptr inbounds %union.anon, %union.anon* %229, i64 0, i32 0
  %231 = add i64 %202, -8
  %232 = add i64 %203, 7
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %230, align 8
  %236 = add i64 %202, -52
  %237 = add i64 %203, 10
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  store i32 %207, i32* %238, align 4
  %239 = load i32, i32* %R8D.i500, align 4
  %240 = zext i32 %239 to i64
  %241 = load i64, i64* %3, align 8
  store i64 %240, i64* %RAX.i491, align 8
  %242 = sext i32 %239 to i64
  %243 = lshr i64 %242, 32
  store i64 %243, i64* %177, align 8
  %244 = load i32, i32* %ECX.i517.pre-phi, align 4
  %245 = add i64 %241, 6
  store i64 %245, i64* %3, align 8
  %246 = sext i32 %244 to i64
  %247 = shl nuw i64 %243, 32
  %248 = or i64 %247, %240
  %249 = sdiv i64 %248, %246
  %250 = shl i64 %249, 32
  %251 = ashr exact i64 %250, 32
  %252 = icmp eq i64 %249, %251
  br i1 %252, label %255, label %253

; <label>:253:                                    ; preds = %routine_idivl__ecx.exit506
  %254 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %245, %struct.Memory* %205)
  %.pre24 = load i64, i64* %RDX.i557, align 8
  %.pre25 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit489

; <label>:255:                                    ; preds = %routine_idivl__ecx.exit506
  %256 = srem i64 %248, %246
  %257 = and i64 %249, 4294967295
  store i64 %257, i64* %RAX.i491, align 8
  %258 = and i64 %256, 4294967295
  store i64 %258, i64* %RDX.i557, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit489

routine_idivl__ecx.exit489:                       ; preds = %255, %253
  %259 = phi i64 [ %.pre25, %253 ], [ %245, %255 ]
  %260 = phi i64 [ %.pre24, %253 ], [ %258, %255 ]
  %261 = phi %struct.Memory* [ %254, %253 ], [ %205, %255 ]
  %262 = trunc i64 %260 to i32
  %263 = add i32 %262, -1
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RDX.i557, align 8
  %265 = icmp eq i32 %262, 0
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %14, align 1
  %267 = and i32 %263, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %21, align 1
  %272 = xor i32 %263, %262
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %27, align 1
  %276 = icmp eq i32 %263, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %30, align 1
  %278 = lshr i32 %263, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %33, align 1
  %280 = lshr i32 %262, 31
  %281 = xor i32 %278, %280
  %282 = add nuw nsw i32 %281, %280
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %39, align 1
  %R9.i484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %285 = load i64, i64* %RBP.i, align 8
  %286 = add i64 %285, -48
  %287 = add i64 %259, 7
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %R9.i484, align 8
  %290 = add i64 %285, -56
  %291 = add i64 %259, 10
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  store i32 %263, i32* %292, align 4
  %293 = load i64, i64* %R9.i484, align 8
  %294 = load i64, i64* %3, align 8
  store i64 %293, i64* %RDX.i557, align 8
  %295 = load i64, i64* %RBP.i, align 8
  %296 = add i64 %295, -52
  %297 = add i64 %294, 6
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RCX.i523.pre-phi, align 8
  %301 = add i64 %295, -56
  %302 = add i64 %294, 10
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %230, align 8
  %306 = add i64 %294, 273908
  %307 = add i64 %294, 15
  %308 = load i64, i64* %6, align 8
  %309 = add i64 %308, -8
  %310 = inttoptr i64 %309 to i64*
  store i64 %307, i64* %310, align 8
  store i64 %309, i64* %6, align 8
  store i64 %306, i64* %3, align 8
  %call2_40f2a6 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %306, %struct.Memory* %261)
  %.pre26 = load i64, i64* %RBP.i, align 8
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_40f2ab

block_.L_40f2ab:                                  ; preds = %routine_idivl__ecx.exit489, %block_40f24d
  %311 = phi i64 [ %.pre27, %routine_idivl__ecx.exit489 ], [ %160, %block_40f24d ]
  %312 = phi i64 [ %.pre26, %routine_idivl__ecx.exit489 ], [ %105, %block_40f24d ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_40f2a6, %routine_idivl__ecx.exit489 ], [ %2, %block_40f24d ]
  %313 = add i64 %312, -12
  %314 = add i64 %311, 4
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = add i32 %316, -1
  %318 = icmp eq i32 %316, 0
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %14, align 1
  %320 = and i32 %317, 255
  %321 = tail call i32 @llvm.ctpop.i32(i32 %320)
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  store i8 %324, i8* %21, align 1
  %325 = xor i32 %317, %316
  %326 = lshr i32 %325, 4
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %27, align 1
  %329 = icmp eq i32 %317, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %30, align 1
  %331 = lshr i32 %317, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %33, align 1
  %333 = lshr i32 %316, 31
  %334 = xor i32 %331, %333
  %335 = add nuw nsw i32 %334, %333
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %39, align 1
  %.v52 = select i1 %329, i64 20, i64 10
  %338 = add i64 %311, %.v52
  store i64 %338, i64* %3, align 8
  br i1 %329, label %block_.L_40f2bf, label %block_40f2b5

block_40f2b5:                                     ; preds = %block_.L_40f2ab
  %339 = add i64 %338, 4
  store i64 %339, i64* %3, align 8
  %340 = load i32, i32* %315, align 4
  %341 = add i32 %340, -2
  %342 = icmp ult i32 %340, 2
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %14, align 1
  %344 = and i32 %341, 255
  %345 = tail call i32 @llvm.ctpop.i32(i32 %344)
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %21, align 1
  %349 = xor i32 %341, %340
  %350 = lshr i32 %349, 4
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %27, align 1
  %353 = icmp eq i32 %341, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %30, align 1
  %355 = lshr i32 %341, 31
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %33, align 1
  %357 = lshr i32 %340, 31
  %358 = xor i32 %355, %357
  %359 = add nuw nsw i32 %358, %357
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %39, align 1
  %.v53 = select i1 %353, i64 10, i64 15
  %362 = add i64 %338, %.v53
  store i64 %362, i64* %3, align 8
  br i1 %353, label %block_.L_40f2bf, label %block_.L_40f2c4

block_.L_40f2bf:                                  ; preds = %block_40f2b5, %block_.L_40f2ab
  %363 = phi i64 [ %362, %block_40f2b5 ], [ %338, %block_.L_40f2ab ]
  %364 = add i64 %363, 94
  store i64 %364, i64* %3, align 8
  %.pre47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  br label %block_.L_40f31d

block_.L_40f2c4:                                  ; preds = %block_40f2b5
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  store i64 2502, i64* %RSI.i, align 8
  store i64 ptrtoint (%G__0x57a466_type* @G__0x57a466 to i64), i64* %RDX.i557, align 8
  store i64 20, i64* %RAX.i491, align 8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i454 = getelementptr inbounds %union.anon, %union.anon* %365, i64 0, i32 0
  %366 = add i64 %312, -8
  %367 = add i64 %362, 33
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RCX.i454, align 8
  %371 = add i64 %312, -60
  %372 = add i64 %362, 36
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i32*
  store i32 20, i32* %373, align 4
  %ECX.i448 = bitcast %union.anon* %365 to i32*
  %374 = load i32, i32* %ECX.i448, align 4
  %375 = zext i32 %374 to i64
  %376 = load i64, i64* %3, align 8
  store i64 %375, i64* %RAX.i491, align 8
  %377 = load i64, i64* %RBP.i, align 8
  %378 = add i64 %377, -72
  %379 = load i64, i64* %RDX.i557, align 8
  %380 = add i64 %376, 6
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %378 to i64*
  store i64 %379, i64* %381, align 8
  %382 = load i64, i64* %3, align 8
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %384 = load i32, i32* %EAX.i551, align 8
  %385 = sext i32 %384 to i64
  %386 = lshr i64 %385, 32
  store i64 %386, i64* %383, align 8
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -60
  %389 = add i64 %382, 4
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RCX.i454, align 8
  %393 = add i64 %382, 6
  store i64 %393, i64* %3, align 8
  %394 = zext i32 %384 to i64
  %395 = sext i32 %391 to i64
  %396 = shl nuw i64 %386, 32
  %397 = or i64 %396, %394
  %398 = sdiv i64 %397, %395
  %399 = shl i64 %398, 32
  %400 = ashr exact i64 %399, 32
  %401 = icmp eq i64 %398, %400
  br i1 %401, label %404, label %402

; <label>:402:                                    ; preds = %block_.L_40f2c4
  %403 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %393, %struct.Memory* %MEMORY.1)
  %.pre28 = load i64, i64* %RAX.i491, align 8
  %.pre29 = load i64, i64* %3, align 8
  %.pre30 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit437

; <label>:404:                                    ; preds = %block_.L_40f2c4
  %405 = srem i64 %397, %395
  %406 = and i64 %398, 4294967295
  store i64 %406, i64* %RAX.i491, align 8
  %407 = and i64 %405, 4294967295
  store i64 %407, i64* %RDX.i557, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit437

routine_idivl__ecx.exit437:                       ; preds = %404, %402
  %408 = phi i64 [ %.pre30, %402 ], [ %387, %404 ]
  %409 = phi i64 [ %.pre29, %402 ], [ %393, %404 ]
  %410 = phi i64 [ %.pre28, %402 ], [ %406, %404 ]
  %411 = phi %struct.Memory* [ %403, %402 ], [ %MEMORY.1, %404 ]
  %412 = trunc i64 %410 to i32
  %413 = add i32 %412, -1
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %RAX.i491, align 8
  %415 = icmp eq i32 %412, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %14, align 1
  %417 = and i32 %413, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %21, align 1
  %422 = xor i32 %413, %412
  %423 = lshr i32 %422, 4
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  store i8 %425, i8* %27, align 1
  %426 = icmp eq i32 %413, 0
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %30, align 1
  %428 = lshr i32 %413, 31
  %429 = trunc i32 %428 to i8
  store i8 %429, i8* %33, align 1
  %430 = lshr i32 %412, 31
  %431 = xor i32 %428, %430
  %432 = add nuw nsw i32 %431, %430
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %39, align 1
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i431 = bitcast %union.anon* %435 to i32*
  %436 = getelementptr inbounds %union.anon, %union.anon* %435, i64 0, i32 0
  %437 = add i64 %408, -8
  %438 = add i64 %409, 7
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %436, align 8
  %442 = add i64 %408, -76
  %443 = add i64 %409, 10
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i32*
  store i32 %413, i32* %444, align 4
  %445 = load i32, i32* %R8D.i431, align 4
  %446 = zext i32 %445 to i64
  %447 = load i64, i64* %3, align 8
  store i64 %446, i64* %RAX.i491, align 8
  %448 = sext i32 %445 to i64
  %449 = lshr i64 %448, 32
  store i64 %449, i64* %383, align 8
  %450 = load i32, i32* %ECX.i448, align 4
  %451 = add i64 %447, 6
  store i64 %451, i64* %3, align 8
  %452 = sext i32 %450 to i64
  %453 = shl nuw i64 %449, 32
  %454 = or i64 %453, %446
  %455 = sdiv i64 %454, %452
  %456 = shl i64 %455, 32
  %457 = ashr exact i64 %456, 32
  %458 = icmp eq i64 %455, %457
  br i1 %458, label %461, label %459

; <label>:459:                                    ; preds = %routine_idivl__ecx.exit437
  %460 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %451, %struct.Memory* %411)
  %.pre31 = load i64, i64* %RDX.i557, align 8
  %.pre32 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:461:                                    ; preds = %routine_idivl__ecx.exit437
  %462 = srem i64 %454, %452
  %463 = and i64 %455, 4294967295
  store i64 %463, i64* %RAX.i491, align 8
  %464 = and i64 %462, 4294967295
  store i64 %464, i64* %RDX.i557, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %461, %459
  %465 = phi i64 [ %.pre32, %459 ], [ %451, %461 ]
  %466 = phi i64 [ %.pre31, %459 ], [ %464, %461 ]
  %467 = phi %struct.Memory* [ %460, %459 ], [ %411, %461 ]
  %468 = trunc i64 %466 to i32
  %469 = add i32 %468, -1
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RDX.i557, align 8
  %471 = icmp eq i32 %468, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %14, align 1
  %473 = and i32 %469, 255
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473)
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %21, align 1
  %478 = xor i32 %469, %468
  %479 = lshr i32 %478, 4
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  store i8 %481, i8* %27, align 1
  %482 = icmp eq i32 %469, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %30, align 1
  %484 = lshr i32 %469, 31
  %485 = trunc i32 %484 to i8
  store i8 %485, i8* %33, align 1
  %486 = lshr i32 %468, 31
  %487 = xor i32 %484, %486
  %488 = add nuw nsw i32 %487, %486
  %489 = icmp eq i32 %488, 2
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %39, align 1
  %R9.i415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %491 = load i64, i64* %RBP.i, align 8
  %492 = add i64 %491, -72
  %493 = add i64 %465, 7
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i64*
  %495 = load i64, i64* %494, align 8
  store i64 %495, i64* %R9.i415, align 8
  %496 = add i64 %491, -80
  %497 = add i64 %465, 10
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  store i32 %469, i32* %498, align 4
  %499 = load i64, i64* %R9.i415, align 8
  %500 = load i64, i64* %3, align 8
  store i64 %499, i64* %RDX.i557, align 8
  %501 = load i64, i64* %RBP.i, align 8
  %502 = add i64 %501, -76
  %503 = add i64 %500, 6
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RCX.i454, align 8
  %507 = add i64 %501, -80
  %508 = add i64 %500, 10
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = zext i32 %510 to i64
  store i64 %511, i64* %436, align 8
  %512 = add i64 %500, 273794
  %513 = add i64 %500, 15
  %514 = load i64, i64* %6, align 8
  %515 = add i64 %514, -8
  %516 = inttoptr i64 %515 to i64*
  store i64 %513, i64* %516, align 8
  store i64 %515, i64* %6, align 8
  store i64 %512, i64* %3, align 8
  %call2_40f318 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %512, %struct.Memory* %467)
  %.pre33 = load i64, i64* %RBP.i, align 8
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_40f31d

block_.L_40f31d:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_40f2bf
  %RCX.i397.pre-phi = phi i64* [ %RCX.i454, %routine_idivl__ecx.exit ], [ %.pre47, %block_.L_40f2bf ]
  %517 = phi i64 [ %.pre34, %routine_idivl__ecx.exit ], [ %364, %block_.L_40f2bf ]
  %518 = phi i64 [ %.pre33, %routine_idivl__ecx.exit ], [ %312, %block_.L_40f2bf ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_40f318, %routine_idivl__ecx.exit ], [ %MEMORY.1, %block_.L_40f2bf ]
  %519 = add i64 %518, -8
  %520 = add i64 %517, 3
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = add i32 %522, 20
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RAX.i491, align 8
  %525 = icmp ugt i32 %522, -21
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %14, align 1
  %527 = and i32 %523, 255
  %528 = tail call i32 @llvm.ctpop.i32(i32 %527)
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = xor i8 %530, 1
  store i8 %531, i8* %21, align 1
  %532 = xor i32 %522, 16
  %533 = xor i32 %532, %523
  %534 = lshr i32 %533, 4
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  store i8 %536, i8* %27, align 1
  %537 = icmp eq i32 %523, 0
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %30, align 1
  %539 = lshr i32 %523, 31
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %33, align 1
  %541 = lshr i32 %522, 31
  %542 = xor i32 %539, %541
  %543 = add nuw nsw i32 %542, %539
  %544 = icmp eq i32 %543, 2
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %39, align 1
  %546 = sext i32 %523 to i64
  store i64 %546, i64* %RCX.i397.pre-phi, align 8
  %547 = add nsw i64 %546, 12099168
  %548 = add i64 %517, 17
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i8*
  %550 = load i8, i8* %549, align 1
  %551 = zext i8 %550 to i64
  store i64 %551, i64* %RAX.i491, align 8
  %552 = zext i8 %550 to i32
  %553 = add nsw i32 %552, -3
  %554 = icmp ult i8 %550, 3
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %14, align 1
  %556 = and i32 %553, 255
  %557 = tail call i32 @llvm.ctpop.i32(i32 %556)
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  store i8 %560, i8* %21, align 1
  %561 = xor i32 %553, %552
  %562 = lshr i32 %561, 4
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  store i8 %564, i8* %27, align 1
  %565 = icmp eq i32 %553, 0
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %30, align 1
  %567 = lshr i32 %553, 31
  %568 = trunc i32 %567 to i8
  store i8 %568, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v54 = select i1 %565, i64 203, i64 26
  %569 = add i64 %517, %.v54
  store i64 %569, i64* %3, align 8
  br i1 %565, label %block_.L_40f3e8, label %block_40f337

block_40f337:                                     ; preds = %block_.L_40f31d
  %570 = add i64 %569, 3
  store i64 %570, i64* %3, align 8
  %571 = load i32, i32* %521, align 4
  %572 = add i32 %571, 20
  %573 = zext i32 %572 to i64
  store i64 %573, i64* %RAX.i491, align 8
  %574 = icmp ugt i32 %571, -21
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %14, align 1
  %576 = and i32 %572, 255
  %577 = tail call i32 @llvm.ctpop.i32(i32 %576)
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  store i8 %580, i8* %21, align 1
  %581 = xor i32 %571, 16
  %582 = xor i32 %581, %572
  %583 = lshr i32 %582, 4
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  store i8 %585, i8* %27, align 1
  %586 = icmp eq i32 %572, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %30, align 1
  %588 = lshr i32 %572, 31
  %589 = trunc i32 %588 to i8
  store i8 %589, i8* %33, align 1
  %590 = lshr i32 %571, 31
  %591 = xor i32 %588, %590
  %592 = add nuw nsw i32 %591, %588
  %593 = icmp eq i32 %592, 2
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %39, align 1
  %595 = sext i32 %572 to i64
  store i64 %595, i64* %RCX.i397.pre-phi, align 8
  %596 = add nsw i64 %595, 12099168
  %597 = add i64 %569, 17
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i8*
  %599 = load i8, i8* %598, align 1
  %600 = zext i8 %599 to i64
  store i64 %600, i64* %RAX.i491, align 8
  %601 = zext i8 %599 to i32
  %602 = add i64 %518, -28
  %603 = add i64 %569, 20
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = sub i32 %601, %605
  %607 = icmp ult i32 %601, %605
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %14, align 1
  %609 = and i32 %606, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609)
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %21, align 1
  %614 = xor i32 %605, %601
  %615 = xor i32 %614, %606
  %616 = lshr i32 %615, 4
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  store i8 %618, i8* %27, align 1
  %619 = icmp eq i32 %606, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %30, align 1
  %621 = lshr i32 %606, 31
  %622 = trunc i32 %621 to i8
  store i8 %622, i8* %33, align 1
  %623 = lshr i32 %605, 31
  %624 = add nuw nsw i32 %621, %623
  %625 = icmp eq i32 %624, 2
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %39, align 1
  %.v55 = select i1 %619, i64 38, i64 26
  %627 = add i64 %569, %.v55
  store i64 %627, i64* %3, align 8
  br i1 %619, label %block_.L_40f35d, label %block_40f351

block_40f351:                                     ; preds = %block_40f337
  %628 = add i64 %518, -4
  %629 = add i64 %627, 7
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  store i32 0, i32* %630, align 4
  %631 = load i64, i64* %3, align 8
  %632 = add i64 %631, 802
  store i64 %632, i64* %3, align 8
  br label %block_.L_40f67a

block_.L_40f35d:                                  ; preds = %block_40f337
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i491, align 8
  %633 = add i64 %627, 13
  store i64 %633, i64* %3, align 8
  %634 = load i32, i32* %521, align 4
  %635 = add i32 %634, 20
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RCX.i397.pre-phi, align 8
  %637 = icmp ugt i32 %634, -21
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %14, align 1
  %639 = and i32 %635, 255
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %21, align 1
  %644 = xor i32 %634, 16
  %645 = xor i32 %644, %635
  %646 = lshr i32 %645, 4
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  store i8 %648, i8* %27, align 1
  %649 = icmp eq i32 %635, 0
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %30, align 1
  %651 = lshr i32 %635, 31
  %652 = trunc i32 %651 to i8
  store i8 %652, i8* %33, align 1
  %653 = lshr i32 %634, 31
  %654 = xor i32 %651, %653
  %655 = add nuw nsw i32 %654, %651
  %656 = icmp eq i32 %655, 2
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %39, align 1
  %658 = sext i32 %635 to i64
  store i64 %658, i64* %RDX.i557, align 8
  %659 = shl nsw i64 %658, 2
  %660 = add nsw i64 %659, 11187184
  %661 = add i64 %627, 27
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = sext i32 %663 to i64
  %665 = mul nsw i64 %664, 744
  store i64 %665, i64* %RDX.i557, align 8
  %666 = lshr i64 %665, 63
  %667 = add i64 %665, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %667, i64* %RAX.i491, align 8
  %668 = icmp ult i64 %667, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %669 = icmp ult i64 %667, %665
  %670 = or i1 %668, %669
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %14, align 1
  %672 = trunc i64 %667 to i32
  %673 = and i32 %672, 248
  %674 = tail call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  store i8 %677, i8* %21, align 1
  %678 = xor i64 %665, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %679 = xor i64 %678, %667
  %680 = lshr i64 %679, 4
  %681 = trunc i64 %680 to i8
  %682 = and i8 %681, 1
  store i8 %682, i8* %27, align 1
  %683 = icmp eq i64 %667, 0
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %30, align 1
  %685 = lshr i64 %667, 63
  %686 = trunc i64 %685 to i8
  store i8 %686, i8* %33, align 1
  %687 = xor i64 %685, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %688 = xor i64 %685, %666
  %689 = add nuw nsw i64 %687, %688
  %690 = icmp eq i64 %689, 2
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %39, align 1
  %692 = add i64 %665, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %693 = add i64 %627, 41
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = add i32 %695, -1
  %697 = icmp eq i32 %695, 0
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %14, align 1
  %699 = and i32 %696, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699)
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %21, align 1
  %704 = xor i32 %696, %695
  %705 = lshr i32 %704, 4
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  store i8 %707, i8* %27, align 1
  %708 = icmp eq i32 %696, 0
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %30, align 1
  %710 = lshr i32 %696, 31
  %711 = trunc i32 %710 to i8
  store i8 %711, i8* %33, align 1
  %712 = lshr i32 %695, 31
  %713 = xor i32 %710, %712
  %714 = add nuw nsw i32 %713, %712
  %715 = icmp eq i32 %714, 2
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %39, align 1
  %.v56 = select i1 %708, i64 47, i64 129
  %717 = add i64 %627, %.v56
  store i64 %717, i64* %3, align 8
  br i1 %708, label %block_40f38c, label %block_.L_40f35d.block_.L_40f3de_crit_edge

block_.L_40f35d.block_.L_40f3de_crit_edge:        ; preds = %block_.L_40f35d
  %.pre35.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_40f3de

block_40f38c:                                     ; preds = %block_.L_40f35d
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i491, align 8
  %718 = load i64, i64* %RBP.i, align 8
  %719 = add i64 %718, -8
  %720 = add i64 %717, 13
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = add i32 %722, 20
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %RCX.i397.pre-phi, align 8
  %725 = icmp ugt i32 %722, -21
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %14, align 1
  %727 = and i32 %723, 255
  %728 = tail call i32 @llvm.ctpop.i32(i32 %727)
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = xor i8 %730, 1
  store i8 %731, i8* %21, align 1
  %732 = xor i32 %722, 16
  %733 = xor i32 %732, %723
  %734 = lshr i32 %733, 4
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  store i8 %736, i8* %27, align 1
  %737 = icmp eq i32 %723, 0
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %30, align 1
  %739 = lshr i32 %723, 31
  %740 = trunc i32 %739 to i8
  store i8 %740, i8* %33, align 1
  %741 = lshr i32 %722, 31
  %742 = xor i32 %739, %741
  %743 = add nuw nsw i32 %742, %739
  %744 = icmp eq i32 %743, 2
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %39, align 1
  %746 = add i64 %718, -36
  %747 = add i64 %717, 19
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i32*
  store i32 %723, i32* %748, align 4
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -8
  %751 = load i64, i64* %3, align 8
  %752 = add i64 %751, 3
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %750 to i32*
  %754 = load i32, i32* %753, align 4
  %755 = add i32 %754, 20
  %756 = zext i32 %755 to i64
  store i64 %756, i64* %RCX.i397.pre-phi, align 8
  %757 = icmp ugt i32 %754, -21
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %14, align 1
  %759 = and i32 %755, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %21, align 1
  %764 = xor i32 %754, 16
  %765 = xor i32 %764, %755
  %766 = lshr i32 %765, 4
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %27, align 1
  %769 = icmp eq i32 %755, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %30, align 1
  %771 = lshr i32 %755, 31
  %772 = trunc i32 %771 to i8
  store i8 %772, i8* %33, align 1
  %773 = lshr i32 %754, 31
  %774 = xor i32 %771, %773
  %775 = add nuw nsw i32 %774, %771
  %776 = icmp eq i32 %775, 2
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %39, align 1
  %778 = sext i32 %755 to i64
  store i64 %778, i64* %RDX.i557, align 8
  %779 = shl nsw i64 %778, 2
  %780 = add nsw i64 %779, 11187184
  %781 = add i64 %751, 17
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i32*
  %783 = load i32, i32* %782, align 4
  %784 = sext i32 %783 to i64
  %785 = mul nsw i64 %784, 744
  store i64 %785, i64* %RDX.i557, align 8
  %786 = lshr i64 %785, 63
  %787 = load i64, i64* %RAX.i491, align 8
  %788 = add i64 %785, %787
  store i64 %788, i64* %RAX.i491, align 8
  %789 = icmp ult i64 %788, %787
  %790 = icmp ult i64 %788, %785
  %791 = or i1 %789, %790
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %14, align 1
  %793 = trunc i64 %788 to i32
  %794 = and i32 %793, 255
  %795 = tail call i32 @llvm.ctpop.i32(i32 %794)
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  %798 = xor i8 %797, 1
  store i8 %798, i8* %21, align 1
  %799 = xor i64 %785, %787
  %800 = xor i64 %799, %788
  %801 = lshr i64 %800, 4
  %802 = trunc i64 %801 to i8
  %803 = and i8 %802, 1
  store i8 %803, i8* %27, align 1
  %804 = icmp eq i64 %788, 0
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %30, align 1
  %806 = lshr i64 %788, 63
  %807 = trunc i64 %806 to i8
  store i8 %807, i8* %33, align 1
  %808 = lshr i64 %787, 63
  %809 = xor i64 %806, %808
  %810 = xor i64 %806, %786
  %811 = add nuw nsw i64 %809, %810
  %812 = icmp eq i64 %811, 2
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %39, align 1
  %814 = add i64 %788, 4
  %815 = add i64 %751, 30
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i32*
  %817 = load i32, i32* %816, align 4
  %818 = zext i32 %817 to i64
  store i64 %818, i64* %RCX.i397.pre-phi, align 8
  %819 = load i64, i64* %RBP.i, align 8
  %820 = add i64 %819, -32
  %821 = add i64 %751, 33
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = add i32 %823, %817
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RCX.i397.pre-phi, align 8
  %826 = icmp ult i32 %824, %817
  %827 = icmp ult i32 %824, %823
  %828 = or i1 %826, %827
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %14, align 1
  %830 = and i32 %824, 255
  %831 = tail call i32 @llvm.ctpop.i32(i32 %830)
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  %834 = xor i8 %833, 1
  store i8 %834, i8* %21, align 1
  %835 = xor i32 %823, %817
  %836 = xor i32 %835, %824
  %837 = lshr i32 %836, 4
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  store i8 %839, i8* %27, align 1
  %840 = icmp eq i32 %824, 0
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %30, align 1
  %842 = lshr i32 %824, 31
  %843 = trunc i32 %842 to i8
  store i8 %843, i8* %33, align 1
  %844 = lshr i32 %817, 31
  %845 = lshr i32 %823, 31
  %846 = xor i32 %842, %844
  %847 = xor i32 %842, %845
  %848 = add nuw nsw i32 %846, %847
  %849 = icmp eq i32 %848, 2
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %39, align 1
  %851 = add i64 %751, 36
  store i64 %851, i64* %3, align 8
  store i32 %824, i32* %822, align 4
  %852 = load i64, i64* %RBP.i, align 8
  %853 = add i64 %852, -32
  %854 = load i64, i64* %3, align 8
  %855 = add i64 %854, 4
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %853 to i32*
  %857 = load i32, i32* %856, align 4
  %858 = add i32 %857, -1
  %859 = icmp eq i32 %857, 0
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %14, align 1
  %861 = and i32 %858, 255
  %862 = tail call i32 @llvm.ctpop.i32(i32 %861)
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  %865 = xor i8 %864, 1
  store i8 %865, i8* %21, align 1
  %866 = xor i32 %858, %857
  %867 = lshr i32 %866, 4
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  store i8 %869, i8* %27, align 1
  %870 = icmp eq i32 %858, 0
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %30, align 1
  %872 = lshr i32 %858, 31
  %873 = trunc i32 %872 to i8
  store i8 %873, i8* %33, align 1
  %874 = lshr i32 %857, 31
  %875 = xor i32 %872, %874
  %876 = add nuw nsw i32 %875, %874
  %877 = icmp eq i32 %876, 2
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %39, align 1
  %879 = icmp ne i8 %873, 0
  %880 = xor i1 %879, %877
  %881 = or i1 %870, %880
  %.v71 = select i1 %881, i64 22, i64 10
  %882 = add i64 %854, %.v71
  store i64 %882, i64* %3, align 8
  br i1 %881, label %block_.L_40f3d9, label %block_40f3cd

block_40f3cd:                                     ; preds = %block_40f38c
  %883 = add i64 %852, -4
  %884 = add i64 %882, 7
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  store i32 0, i32* %885, align 4
  %886 = load i64, i64* %3, align 8
  %887 = add i64 %886, 678
  store i64 %887, i64* %3, align 8
  br label %block_.L_40f67a

block_.L_40f3d9:                                  ; preds = %block_40f38c
  %888 = add i64 %882, 5
  store i64 %888, i64* %3, align 8
  br label %block_.L_40f3de

block_.L_40f3de:                                  ; preds = %block_.L_40f35d.block_.L_40f3de_crit_edge, %block_.L_40f3d9
  %.pre35 = phi i64 [ %852, %block_.L_40f3d9 ], [ %.pre35.pre, %block_.L_40f35d.block_.L_40f3de_crit_edge ]
  %889 = phi i64 [ %888, %block_.L_40f3d9 ], [ %717, %block_.L_40f35d.block_.L_40f3de_crit_edge ]
  %890 = add i64 %889, 10
  store i64 %890, i64* %3, align 8
  br label %block_.L_40f3e8

block_.L_40f3e8:                                  ; preds = %block_.L_40f3de, %block_.L_40f31d
  %891 = phi i64 [ %890, %block_.L_40f3de ], [ %569, %block_.L_40f31d ]
  %892 = phi i64 [ %.pre35, %block_.L_40f3de ], [ %518, %block_.L_40f31d ]
  %893 = add i64 %892, -8
  %894 = add i64 %891, 3
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i32*
  %896 = load i32, i32* %895, align 4
  %897 = add i32 %896, -1
  %898 = zext i32 %897 to i64
  store i64 %898, i64* %RAX.i491, align 8
  %899 = icmp eq i32 %896, 0
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %14, align 1
  %901 = and i32 %897, 255
  %902 = tail call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  store i8 %905, i8* %21, align 1
  %906 = xor i32 %897, %896
  %907 = lshr i32 %906, 4
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  store i8 %909, i8* %27, align 1
  %910 = icmp eq i32 %897, 0
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %30, align 1
  %912 = lshr i32 %897, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %33, align 1
  %914 = lshr i32 %896, 31
  %915 = xor i32 %912, %914
  %916 = add nuw nsw i32 %915, %914
  %917 = icmp eq i32 %916, 2
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %39, align 1
  %919 = sext i32 %897 to i64
  store i64 %919, i64* %RCX.i397.pre-phi, align 8
  %920 = add nsw i64 %919, 12099168
  %921 = add i64 %891, 17
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i8*
  %923 = load i8, i8* %922, align 1
  %924 = zext i8 %923 to i64
  store i64 %924, i64* %RAX.i491, align 8
  %925 = zext i8 %923 to i32
  %926 = add nsw i32 %925, -3
  %927 = icmp ult i8 %923, 3
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %14, align 1
  %929 = and i32 %926, 255
  %930 = tail call i32 @llvm.ctpop.i32(i32 %929)
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = xor i8 %932, 1
  store i8 %933, i8* %21, align 1
  %934 = xor i32 %926, %925
  %935 = lshr i32 %934, 4
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  store i8 %937, i8* %27, align 1
  %938 = icmp eq i32 %926, 0
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %30, align 1
  %940 = lshr i32 %926, 31
  %941 = trunc i32 %940 to i8
  store i8 %941, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v57 = select i1 %938, i64 203, i64 26
  %942 = add i64 %891, %.v57
  store i64 %942, i64* %3, align 8
  br i1 %938, label %block_.L_40f4b3, label %block_40f402

block_40f402:                                     ; preds = %block_.L_40f3e8
  %943 = add i64 %942, 3
  store i64 %943, i64* %3, align 8
  %944 = load i32, i32* %895, align 4
  %945 = add i32 %944, -1
  %946 = zext i32 %945 to i64
  store i64 %946, i64* %RAX.i491, align 8
  %947 = icmp eq i32 %944, 0
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %14, align 1
  %949 = and i32 %945, 255
  %950 = tail call i32 @llvm.ctpop.i32(i32 %949)
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  store i8 %953, i8* %21, align 1
  %954 = xor i32 %945, %944
  %955 = lshr i32 %954, 4
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  store i8 %957, i8* %27, align 1
  %958 = icmp eq i32 %945, 0
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %30, align 1
  %960 = lshr i32 %945, 31
  %961 = trunc i32 %960 to i8
  store i8 %961, i8* %33, align 1
  %962 = lshr i32 %944, 31
  %963 = xor i32 %960, %962
  %964 = add nuw nsw i32 %963, %962
  %965 = icmp eq i32 %964, 2
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %39, align 1
  %967 = sext i32 %945 to i64
  store i64 %967, i64* %RCX.i397.pre-phi, align 8
  %968 = add nsw i64 %967, 12099168
  %969 = add i64 %942, 17
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i8*
  %971 = load i8, i8* %970, align 1
  %972 = zext i8 %971 to i64
  store i64 %972, i64* %RAX.i491, align 8
  %973 = zext i8 %971 to i32
  %974 = add i64 %892, -28
  %975 = add i64 %942, 20
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = sub i32 %973, %977
  %979 = icmp ult i32 %973, %977
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %14, align 1
  %981 = and i32 %978, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981)
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %21, align 1
  %986 = xor i32 %977, %973
  %987 = xor i32 %986, %978
  %988 = lshr i32 %987, 4
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  store i8 %990, i8* %27, align 1
  %991 = icmp eq i32 %978, 0
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %30, align 1
  %993 = lshr i32 %978, 31
  %994 = trunc i32 %993 to i8
  store i8 %994, i8* %33, align 1
  %995 = lshr i32 %977, 31
  %996 = add nuw nsw i32 %993, %995
  %997 = icmp eq i32 %996, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %39, align 1
  %.v58 = select i1 %991, i64 38, i64 26
  %999 = add i64 %942, %.v58
  store i64 %999, i64* %3, align 8
  br i1 %991, label %block_.L_40f428, label %block_40f41c

block_40f41c:                                     ; preds = %block_40f402
  %1000 = add i64 %892, -4
  %1001 = add i64 %999, 7
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  store i32 0, i32* %1002, align 4
  %1003 = load i64, i64* %3, align 8
  %1004 = add i64 %1003, 599
  store i64 %1004, i64* %3, align 8
  br label %block_.L_40f67a

block_.L_40f428:                                  ; preds = %block_40f402
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i491, align 8
  %1005 = add i64 %999, 13
  store i64 %1005, i64* %3, align 8
  %1006 = load i32, i32* %895, align 4
  %1007 = add i32 %1006, -1
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %RCX.i397.pre-phi, align 8
  %1009 = icmp eq i32 %1006, 0
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %14, align 1
  %1011 = and i32 %1007, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %21, align 1
  %1016 = xor i32 %1007, %1006
  %1017 = lshr i32 %1016, 4
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  store i8 %1019, i8* %27, align 1
  %1020 = icmp eq i32 %1007, 0
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %30, align 1
  %1022 = lshr i32 %1007, 31
  %1023 = trunc i32 %1022 to i8
  store i8 %1023, i8* %33, align 1
  %1024 = lshr i32 %1006, 31
  %1025 = xor i32 %1022, %1024
  %1026 = add nuw nsw i32 %1025, %1024
  %1027 = icmp eq i32 %1026, 2
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %39, align 1
  %1029 = sext i32 %1007 to i64
  store i64 %1029, i64* %RDX.i557, align 8
  %1030 = shl nsw i64 %1029, 2
  %1031 = add nsw i64 %1030, 11187184
  %1032 = add i64 %999, 27
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = mul nsw i64 %1035, 744
  store i64 %1036, i64* %RDX.i557, align 8
  %1037 = lshr i64 %1036, 63
  %1038 = add i64 %1036, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1038, i64* %RAX.i491, align 8
  %1039 = icmp ult i64 %1038, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1040 = icmp ult i64 %1038, %1036
  %1041 = or i1 %1039, %1040
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %14, align 1
  %1043 = trunc i64 %1038 to i32
  %1044 = and i32 %1043, 248
  %1045 = tail call i32 @llvm.ctpop.i32(i32 %1044)
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  %1048 = xor i8 %1047, 1
  store i8 %1048, i8* %21, align 1
  %1049 = xor i64 %1036, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1050 = xor i64 %1049, %1038
  %1051 = lshr i64 %1050, 4
  %1052 = trunc i64 %1051 to i8
  %1053 = and i8 %1052, 1
  store i8 %1053, i8* %27, align 1
  %1054 = icmp eq i64 %1038, 0
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %30, align 1
  %1056 = lshr i64 %1038, 63
  %1057 = trunc i64 %1056 to i8
  store i8 %1057, i8* %33, align 1
  %1058 = xor i64 %1056, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1059 = xor i64 %1056, %1037
  %1060 = add nuw nsw i64 %1058, %1059
  %1061 = icmp eq i64 %1060, 2
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %39, align 1
  %1063 = add i64 %1036, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1064 = add i64 %999, 41
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1063 to i32*
  %1066 = load i32, i32* %1065, align 4
  %1067 = add i32 %1066, -1
  %1068 = icmp eq i32 %1066, 0
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %14, align 1
  %1070 = and i32 %1067, 255
  %1071 = tail call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  store i8 %1074, i8* %21, align 1
  %1075 = xor i32 %1067, %1066
  %1076 = lshr i32 %1075, 4
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  store i8 %1078, i8* %27, align 1
  %1079 = icmp eq i32 %1067, 0
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %30, align 1
  %1081 = lshr i32 %1067, 31
  %1082 = trunc i32 %1081 to i8
  store i8 %1082, i8* %33, align 1
  %1083 = lshr i32 %1066, 31
  %1084 = xor i32 %1081, %1083
  %1085 = add nuw nsw i32 %1084, %1083
  %1086 = icmp eq i32 %1085, 2
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %39, align 1
  %.v59 = select i1 %1079, i64 47, i64 129
  %1088 = add i64 %999, %.v59
  store i64 %1088, i64* %3, align 8
  br i1 %1079, label %block_40f457, label %block_.L_40f428.block_.L_40f4a9_crit_edge

block_.L_40f428.block_.L_40f4a9_crit_edge:        ; preds = %block_.L_40f428
  %.pre36.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_40f4a9

block_40f457:                                     ; preds = %block_.L_40f428
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i491, align 8
  %1089 = load i64, i64* %RBP.i, align 8
  %1090 = add i64 %1089, -8
  %1091 = add i64 %1088, 13
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i32*
  %1093 = load i32, i32* %1092, align 4
  %1094 = add i32 %1093, -1
  %1095 = zext i32 %1094 to i64
  store i64 %1095, i64* %RCX.i397.pre-phi, align 8
  %1096 = icmp eq i32 %1093, 0
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %14, align 1
  %1098 = and i32 %1094, 255
  %1099 = tail call i32 @llvm.ctpop.i32(i32 %1098)
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  store i8 %1102, i8* %21, align 1
  %1103 = xor i32 %1094, %1093
  %1104 = lshr i32 %1103, 4
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %27, align 1
  %1107 = icmp eq i32 %1094, 0
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %30, align 1
  %1109 = lshr i32 %1094, 31
  %1110 = trunc i32 %1109 to i8
  store i8 %1110, i8* %33, align 1
  %1111 = lshr i32 %1093, 31
  %1112 = xor i32 %1109, %1111
  %1113 = add nuw nsw i32 %1112, %1111
  %1114 = icmp eq i32 %1113, 2
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %39, align 1
  %1116 = add i64 %1089, -36
  %1117 = add i64 %1088, 19
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  store i32 %1094, i32* %1118, align 4
  %1119 = load i64, i64* %RBP.i, align 8
  %1120 = add i64 %1119, -8
  %1121 = load i64, i64* %3, align 8
  %1122 = add i64 %1121, 3
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1120 to i32*
  %1124 = load i32, i32* %1123, align 4
  %1125 = add i32 %1124, -1
  %1126 = zext i32 %1125 to i64
  store i64 %1126, i64* %RCX.i397.pre-phi, align 8
  %1127 = icmp eq i32 %1124, 0
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %14, align 1
  %1129 = and i32 %1125, 255
  %1130 = tail call i32 @llvm.ctpop.i32(i32 %1129)
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  %1133 = xor i8 %1132, 1
  store i8 %1133, i8* %21, align 1
  %1134 = xor i32 %1125, %1124
  %1135 = lshr i32 %1134, 4
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  store i8 %1137, i8* %27, align 1
  %1138 = icmp eq i32 %1125, 0
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %30, align 1
  %1140 = lshr i32 %1125, 31
  %1141 = trunc i32 %1140 to i8
  store i8 %1141, i8* %33, align 1
  %1142 = lshr i32 %1124, 31
  %1143 = xor i32 %1140, %1142
  %1144 = add nuw nsw i32 %1143, %1142
  %1145 = icmp eq i32 %1144, 2
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %39, align 1
  %1147 = sext i32 %1125 to i64
  store i64 %1147, i64* %RDX.i557, align 8
  %1148 = shl nsw i64 %1147, 2
  %1149 = add nsw i64 %1148, 11187184
  %1150 = add i64 %1121, 17
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = sext i32 %1152 to i64
  %1154 = mul nsw i64 %1153, 744
  store i64 %1154, i64* %RDX.i557, align 8
  %1155 = lshr i64 %1154, 63
  %1156 = load i64, i64* %RAX.i491, align 8
  %1157 = add i64 %1154, %1156
  store i64 %1157, i64* %RAX.i491, align 8
  %1158 = icmp ult i64 %1157, %1156
  %1159 = icmp ult i64 %1157, %1154
  %1160 = or i1 %1158, %1159
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %14, align 1
  %1162 = trunc i64 %1157 to i32
  %1163 = and i32 %1162, 255
  %1164 = tail call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  store i8 %1167, i8* %21, align 1
  %1168 = xor i64 %1154, %1156
  %1169 = xor i64 %1168, %1157
  %1170 = lshr i64 %1169, 4
  %1171 = trunc i64 %1170 to i8
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %27, align 1
  %1173 = icmp eq i64 %1157, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %30, align 1
  %1175 = lshr i64 %1157, 63
  %1176 = trunc i64 %1175 to i8
  store i8 %1176, i8* %33, align 1
  %1177 = lshr i64 %1156, 63
  %1178 = xor i64 %1175, %1177
  %1179 = xor i64 %1175, %1155
  %1180 = add nuw nsw i64 %1178, %1179
  %1181 = icmp eq i64 %1180, 2
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %39, align 1
  %1183 = add i64 %1157, 4
  %1184 = add i64 %1121, 30
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %RCX.i397.pre-phi, align 8
  %1188 = load i64, i64* %RBP.i, align 8
  %1189 = add i64 %1188, -32
  %1190 = add i64 %1121, 33
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i32*
  %1192 = load i32, i32* %1191, align 4
  %1193 = add i32 %1192, %1186
  %1194 = zext i32 %1193 to i64
  store i64 %1194, i64* %RCX.i397.pre-phi, align 8
  %1195 = icmp ult i32 %1193, %1186
  %1196 = icmp ult i32 %1193, %1192
  %1197 = or i1 %1195, %1196
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %14, align 1
  %1199 = and i32 %1193, 255
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  store i8 %1203, i8* %21, align 1
  %1204 = xor i32 %1192, %1186
  %1205 = xor i32 %1204, %1193
  %1206 = lshr i32 %1205, 4
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  store i8 %1208, i8* %27, align 1
  %1209 = icmp eq i32 %1193, 0
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %30, align 1
  %1211 = lshr i32 %1193, 31
  %1212 = trunc i32 %1211 to i8
  store i8 %1212, i8* %33, align 1
  %1213 = lshr i32 %1186, 31
  %1214 = lshr i32 %1192, 31
  %1215 = xor i32 %1211, %1213
  %1216 = xor i32 %1211, %1214
  %1217 = add nuw nsw i32 %1215, %1216
  %1218 = icmp eq i32 %1217, 2
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %39, align 1
  %1220 = add i64 %1121, 36
  store i64 %1220, i64* %3, align 8
  store i32 %1193, i32* %1191, align 4
  %1221 = load i64, i64* %RBP.i, align 8
  %1222 = add i64 %1221, -32
  %1223 = load i64, i64* %3, align 8
  %1224 = add i64 %1223, 4
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1222 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = add i32 %1226, -1
  %1228 = icmp eq i32 %1226, 0
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %14, align 1
  %1230 = and i32 %1227, 255
  %1231 = tail call i32 @llvm.ctpop.i32(i32 %1230)
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = xor i8 %1233, 1
  store i8 %1234, i8* %21, align 1
  %1235 = xor i32 %1227, %1226
  %1236 = lshr i32 %1235, 4
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  store i8 %1238, i8* %27, align 1
  %1239 = icmp eq i32 %1227, 0
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %30, align 1
  %1241 = lshr i32 %1227, 31
  %1242 = trunc i32 %1241 to i8
  store i8 %1242, i8* %33, align 1
  %1243 = lshr i32 %1226, 31
  %1244 = xor i32 %1241, %1243
  %1245 = add nuw nsw i32 %1244, %1243
  %1246 = icmp eq i32 %1245, 2
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %39, align 1
  %1248 = icmp ne i8 %1242, 0
  %1249 = xor i1 %1248, %1246
  %1250 = or i1 %1239, %1249
  %.v70 = select i1 %1250, i64 22, i64 10
  %1251 = add i64 %1223, %.v70
  store i64 %1251, i64* %3, align 8
  br i1 %1250, label %block_.L_40f4a4, label %block_40f498

block_40f498:                                     ; preds = %block_40f457
  %1252 = add i64 %1221, -4
  %1253 = add i64 %1251, 7
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i32*
  store i32 0, i32* %1254, align 4
  %1255 = load i64, i64* %3, align 8
  %1256 = add i64 %1255, 475
  store i64 %1256, i64* %3, align 8
  br label %block_.L_40f67a

block_.L_40f4a4:                                  ; preds = %block_40f457
  %1257 = add i64 %1251, 5
  store i64 %1257, i64* %3, align 8
  br label %block_.L_40f4a9

block_.L_40f4a9:                                  ; preds = %block_.L_40f428.block_.L_40f4a9_crit_edge, %block_.L_40f4a4
  %.pre36 = phi i64 [ %1221, %block_.L_40f4a4 ], [ %.pre36.pre, %block_.L_40f428.block_.L_40f4a9_crit_edge ]
  %1258 = phi i64 [ %1257, %block_.L_40f4a4 ], [ %1088, %block_.L_40f428.block_.L_40f4a9_crit_edge ]
  %1259 = add i64 %1258, 10
  store i64 %1259, i64* %3, align 8
  br label %block_.L_40f4b3

block_.L_40f4b3:                                  ; preds = %block_.L_40f4a9, %block_.L_40f3e8
  %1260 = phi i64 [ %1259, %block_.L_40f4a9 ], [ %942, %block_.L_40f3e8 ]
  %1261 = phi i64 [ %.pre36, %block_.L_40f4a9 ], [ %892, %block_.L_40f3e8 ]
  %1262 = add i64 %1261, -8
  %1263 = add i64 %1260, 3
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1262 to i32*
  %1265 = load i32, i32* %1264, align 4
  %1266 = add i32 %1265, -20
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RAX.i491, align 8
  %1268 = icmp ult i32 %1265, 20
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %14, align 1
  %1270 = and i32 %1266, 255
  %1271 = tail call i32 @llvm.ctpop.i32(i32 %1270)
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  %1274 = xor i8 %1273, 1
  store i8 %1274, i8* %21, align 1
  %1275 = xor i32 %1265, 16
  %1276 = xor i32 %1275, %1266
  %1277 = lshr i32 %1276, 4
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  store i8 %1279, i8* %27, align 1
  %1280 = icmp eq i32 %1266, 0
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %30, align 1
  %1282 = lshr i32 %1266, 31
  %1283 = trunc i32 %1282 to i8
  store i8 %1283, i8* %33, align 1
  %1284 = lshr i32 %1265, 31
  %1285 = xor i32 %1282, %1284
  %1286 = add nuw nsw i32 %1285, %1284
  %1287 = icmp eq i32 %1286, 2
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %39, align 1
  %1289 = sext i32 %1266 to i64
  store i64 %1289, i64* %RCX.i397.pre-phi, align 8
  %1290 = add nsw i64 %1289, 12099168
  %1291 = add i64 %1260, 17
  store i64 %1291, i64* %3, align 8
  %1292 = inttoptr i64 %1290 to i8*
  %1293 = load i8, i8* %1292, align 1
  %1294 = zext i8 %1293 to i64
  store i64 %1294, i64* %RAX.i491, align 8
  %1295 = zext i8 %1293 to i32
  %1296 = add nsw i32 %1295, -3
  %1297 = icmp ult i8 %1293, 3
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %14, align 1
  %1299 = and i32 %1296, 255
  %1300 = tail call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  store i8 %1303, i8* %21, align 1
  %1304 = xor i32 %1296, %1295
  %1305 = lshr i32 %1304, 4
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  store i8 %1307, i8* %27, align 1
  %1308 = icmp eq i32 %1296, 0
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %30, align 1
  %1310 = lshr i32 %1296, 31
  %1311 = trunc i32 %1310 to i8
  store i8 %1311, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v60 = select i1 %1308, i64 203, i64 26
  %1312 = add i64 %1260, %.v60
  store i64 %1312, i64* %3, align 8
  br i1 %1308, label %block_.L_40f57e, label %block_40f4cd

block_40f4cd:                                     ; preds = %block_.L_40f4b3
  %1313 = add i64 %1312, 3
  store i64 %1313, i64* %3, align 8
  %1314 = load i32, i32* %1264, align 4
  %1315 = add i32 %1314, -20
  %1316 = zext i32 %1315 to i64
  store i64 %1316, i64* %RAX.i491, align 8
  %1317 = icmp ult i32 %1314, 20
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %14, align 1
  %1319 = and i32 %1315, 255
  %1320 = tail call i32 @llvm.ctpop.i32(i32 %1319)
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  %1323 = xor i8 %1322, 1
  store i8 %1323, i8* %21, align 1
  %1324 = xor i32 %1314, 16
  %1325 = xor i32 %1324, %1315
  %1326 = lshr i32 %1325, 4
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  store i8 %1328, i8* %27, align 1
  %1329 = icmp eq i32 %1315, 0
  %1330 = zext i1 %1329 to i8
  store i8 %1330, i8* %30, align 1
  %1331 = lshr i32 %1315, 31
  %1332 = trunc i32 %1331 to i8
  store i8 %1332, i8* %33, align 1
  %1333 = lshr i32 %1314, 31
  %1334 = xor i32 %1331, %1333
  %1335 = add nuw nsw i32 %1334, %1333
  %1336 = icmp eq i32 %1335, 2
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %39, align 1
  %1338 = sext i32 %1315 to i64
  store i64 %1338, i64* %RCX.i397.pre-phi, align 8
  %1339 = add nsw i64 %1338, 12099168
  %1340 = add i64 %1312, 17
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i8*
  %1342 = load i8, i8* %1341, align 1
  %1343 = zext i8 %1342 to i64
  store i64 %1343, i64* %RAX.i491, align 8
  %1344 = zext i8 %1342 to i32
  %1345 = add i64 %1261, -28
  %1346 = add i64 %1312, 20
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = sub i32 %1344, %1348
  %1350 = icmp ult i32 %1344, %1348
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %14, align 1
  %1352 = and i32 %1349, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352)
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %21, align 1
  %1357 = xor i32 %1348, %1344
  %1358 = xor i32 %1357, %1349
  %1359 = lshr i32 %1358, 4
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  store i8 %1361, i8* %27, align 1
  %1362 = icmp eq i32 %1349, 0
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %30, align 1
  %1364 = lshr i32 %1349, 31
  %1365 = trunc i32 %1364 to i8
  store i8 %1365, i8* %33, align 1
  %1366 = lshr i32 %1348, 31
  %1367 = add nuw nsw i32 %1364, %1366
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %39, align 1
  %.v61 = select i1 %1362, i64 38, i64 26
  %1370 = add i64 %1312, %.v61
  store i64 %1370, i64* %3, align 8
  br i1 %1362, label %block_.L_40f4f3, label %block_40f4e7

block_40f4e7:                                     ; preds = %block_40f4cd
  %1371 = add i64 %1261, -4
  %1372 = add i64 %1370, 7
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i32*
  store i32 0, i32* %1373, align 4
  %1374 = load i64, i64* %3, align 8
  %1375 = add i64 %1374, 396
  store i64 %1375, i64* %3, align 8
  br label %block_.L_40f67a

block_.L_40f4f3:                                  ; preds = %block_40f4cd
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i491, align 8
  %1376 = add i64 %1370, 13
  store i64 %1376, i64* %3, align 8
  %1377 = load i32, i32* %1264, align 4
  %1378 = add i32 %1377, -20
  %1379 = zext i32 %1378 to i64
  store i64 %1379, i64* %RCX.i397.pre-phi, align 8
  %1380 = icmp ult i32 %1377, 20
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %14, align 1
  %1382 = and i32 %1378, 255
  %1383 = tail call i32 @llvm.ctpop.i32(i32 %1382)
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = xor i8 %1385, 1
  store i8 %1386, i8* %21, align 1
  %1387 = xor i32 %1377, 16
  %1388 = xor i32 %1387, %1378
  %1389 = lshr i32 %1388, 4
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  store i8 %1391, i8* %27, align 1
  %1392 = icmp eq i32 %1378, 0
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %30, align 1
  %1394 = lshr i32 %1378, 31
  %1395 = trunc i32 %1394 to i8
  store i8 %1395, i8* %33, align 1
  %1396 = lshr i32 %1377, 31
  %1397 = xor i32 %1394, %1396
  %1398 = add nuw nsw i32 %1397, %1396
  %1399 = icmp eq i32 %1398, 2
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %39, align 1
  %1401 = sext i32 %1378 to i64
  store i64 %1401, i64* %RDX.i557, align 8
  %1402 = shl nsw i64 %1401, 2
  %1403 = add nsw i64 %1402, 11187184
  %1404 = add i64 %1370, 27
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1403 to i32*
  %1406 = load i32, i32* %1405, align 4
  %1407 = sext i32 %1406 to i64
  %1408 = mul nsw i64 %1407, 744
  store i64 %1408, i64* %RDX.i557, align 8
  %1409 = lshr i64 %1408, 63
  %1410 = add i64 %1408, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1410, i64* %RAX.i491, align 8
  %1411 = icmp ult i64 %1410, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1412 = icmp ult i64 %1410, %1408
  %1413 = or i1 %1411, %1412
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %14, align 1
  %1415 = trunc i64 %1410 to i32
  %1416 = and i32 %1415, 248
  %1417 = tail call i32 @llvm.ctpop.i32(i32 %1416)
  %1418 = trunc i32 %1417 to i8
  %1419 = and i8 %1418, 1
  %1420 = xor i8 %1419, 1
  store i8 %1420, i8* %21, align 1
  %1421 = xor i64 %1408, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1422 = xor i64 %1421, %1410
  %1423 = lshr i64 %1422, 4
  %1424 = trunc i64 %1423 to i8
  %1425 = and i8 %1424, 1
  store i8 %1425, i8* %27, align 1
  %1426 = icmp eq i64 %1410, 0
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %30, align 1
  %1428 = lshr i64 %1410, 63
  %1429 = trunc i64 %1428 to i8
  store i8 %1429, i8* %33, align 1
  %1430 = xor i64 %1428, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1431 = xor i64 %1428, %1409
  %1432 = add nuw nsw i64 %1430, %1431
  %1433 = icmp eq i64 %1432, 2
  %1434 = zext i1 %1433 to i8
  store i8 %1434, i8* %39, align 1
  %1435 = add i64 %1408, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1436 = add i64 %1370, 41
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = add i32 %1438, -1
  %1440 = icmp eq i32 %1438, 0
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %14, align 1
  %1442 = and i32 %1439, 255
  %1443 = tail call i32 @llvm.ctpop.i32(i32 %1442)
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %21, align 1
  %1447 = xor i32 %1439, %1438
  %1448 = lshr i32 %1447, 4
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  store i8 %1450, i8* %27, align 1
  %1451 = icmp eq i32 %1439, 0
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %30, align 1
  %1453 = lshr i32 %1439, 31
  %1454 = trunc i32 %1453 to i8
  store i8 %1454, i8* %33, align 1
  %1455 = lshr i32 %1438, 31
  %1456 = xor i32 %1453, %1455
  %1457 = add nuw nsw i32 %1456, %1455
  %1458 = icmp eq i32 %1457, 2
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %39, align 1
  %.v62 = select i1 %1451, i64 47, i64 129
  %1460 = add i64 %1370, %.v62
  store i64 %1460, i64* %3, align 8
  br i1 %1451, label %block_40f522, label %block_.L_40f4f3.block_.L_40f574_crit_edge

block_.L_40f4f3.block_.L_40f574_crit_edge:        ; preds = %block_.L_40f4f3
  %.pre37.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_40f574

block_40f522:                                     ; preds = %block_.L_40f4f3
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i491, align 8
  %1461 = load i64, i64* %RBP.i, align 8
  %1462 = add i64 %1461, -8
  %1463 = add i64 %1460, 13
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = add i32 %1465, -20
  %1467 = zext i32 %1466 to i64
  store i64 %1467, i64* %RCX.i397.pre-phi, align 8
  %1468 = icmp ult i32 %1465, 20
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %14, align 1
  %1470 = and i32 %1466, 255
  %1471 = tail call i32 @llvm.ctpop.i32(i32 %1470)
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  %1474 = xor i8 %1473, 1
  store i8 %1474, i8* %21, align 1
  %1475 = xor i32 %1465, 16
  %1476 = xor i32 %1475, %1466
  %1477 = lshr i32 %1476, 4
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  store i8 %1479, i8* %27, align 1
  %1480 = icmp eq i32 %1466, 0
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %30, align 1
  %1482 = lshr i32 %1466, 31
  %1483 = trunc i32 %1482 to i8
  store i8 %1483, i8* %33, align 1
  %1484 = lshr i32 %1465, 31
  %1485 = xor i32 %1482, %1484
  %1486 = add nuw nsw i32 %1485, %1484
  %1487 = icmp eq i32 %1486, 2
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %39, align 1
  %1489 = add i64 %1461, -36
  %1490 = add i64 %1460, 19
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i32*
  store i32 %1466, i32* %1491, align 4
  %1492 = load i64, i64* %RBP.i, align 8
  %1493 = add i64 %1492, -8
  %1494 = load i64, i64* %3, align 8
  %1495 = add i64 %1494, 3
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1493 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = add i32 %1497, -20
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RCX.i397.pre-phi, align 8
  %1500 = icmp ult i32 %1497, 20
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %14, align 1
  %1502 = and i32 %1498, 255
  %1503 = tail call i32 @llvm.ctpop.i32(i32 %1502)
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %21, align 1
  %1507 = xor i32 %1497, 16
  %1508 = xor i32 %1507, %1498
  %1509 = lshr i32 %1508, 4
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  store i8 %1511, i8* %27, align 1
  %1512 = icmp eq i32 %1498, 0
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %30, align 1
  %1514 = lshr i32 %1498, 31
  %1515 = trunc i32 %1514 to i8
  store i8 %1515, i8* %33, align 1
  %1516 = lshr i32 %1497, 31
  %1517 = xor i32 %1514, %1516
  %1518 = add nuw nsw i32 %1517, %1516
  %1519 = icmp eq i32 %1518, 2
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %39, align 1
  %1521 = sext i32 %1498 to i64
  store i64 %1521, i64* %RDX.i557, align 8
  %1522 = shl nsw i64 %1521, 2
  %1523 = add nsw i64 %1522, 11187184
  %1524 = add i64 %1494, 17
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = sext i32 %1526 to i64
  %1528 = mul nsw i64 %1527, 744
  store i64 %1528, i64* %RDX.i557, align 8
  %1529 = lshr i64 %1528, 63
  %1530 = load i64, i64* %RAX.i491, align 8
  %1531 = add i64 %1528, %1530
  store i64 %1531, i64* %RAX.i491, align 8
  %1532 = icmp ult i64 %1531, %1530
  %1533 = icmp ult i64 %1531, %1528
  %1534 = or i1 %1532, %1533
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %14, align 1
  %1536 = trunc i64 %1531 to i32
  %1537 = and i32 %1536, 255
  %1538 = tail call i32 @llvm.ctpop.i32(i32 %1537)
  %1539 = trunc i32 %1538 to i8
  %1540 = and i8 %1539, 1
  %1541 = xor i8 %1540, 1
  store i8 %1541, i8* %21, align 1
  %1542 = xor i64 %1528, %1530
  %1543 = xor i64 %1542, %1531
  %1544 = lshr i64 %1543, 4
  %1545 = trunc i64 %1544 to i8
  %1546 = and i8 %1545, 1
  store i8 %1546, i8* %27, align 1
  %1547 = icmp eq i64 %1531, 0
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %30, align 1
  %1549 = lshr i64 %1531, 63
  %1550 = trunc i64 %1549 to i8
  store i8 %1550, i8* %33, align 1
  %1551 = lshr i64 %1530, 63
  %1552 = xor i64 %1549, %1551
  %1553 = xor i64 %1549, %1529
  %1554 = add nuw nsw i64 %1552, %1553
  %1555 = icmp eq i64 %1554, 2
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %39, align 1
  %1557 = add i64 %1531, 4
  %1558 = add i64 %1494, 30
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i32*
  %1560 = load i32, i32* %1559, align 4
  %1561 = zext i32 %1560 to i64
  store i64 %1561, i64* %RCX.i397.pre-phi, align 8
  %1562 = load i64, i64* %RBP.i, align 8
  %1563 = add i64 %1562, -32
  %1564 = add i64 %1494, 33
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = add i32 %1566, %1560
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RCX.i397.pre-phi, align 8
  %1569 = icmp ult i32 %1567, %1560
  %1570 = icmp ult i32 %1567, %1566
  %1571 = or i1 %1569, %1570
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %14, align 1
  %1573 = and i32 %1567, 255
  %1574 = tail call i32 @llvm.ctpop.i32(i32 %1573)
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  %1577 = xor i8 %1576, 1
  store i8 %1577, i8* %21, align 1
  %1578 = xor i32 %1566, %1560
  %1579 = xor i32 %1578, %1567
  %1580 = lshr i32 %1579, 4
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  store i8 %1582, i8* %27, align 1
  %1583 = icmp eq i32 %1567, 0
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %30, align 1
  %1585 = lshr i32 %1567, 31
  %1586 = trunc i32 %1585 to i8
  store i8 %1586, i8* %33, align 1
  %1587 = lshr i32 %1560, 31
  %1588 = lshr i32 %1566, 31
  %1589 = xor i32 %1585, %1587
  %1590 = xor i32 %1585, %1588
  %1591 = add nuw nsw i32 %1589, %1590
  %1592 = icmp eq i32 %1591, 2
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %39, align 1
  %1594 = add i64 %1494, 36
  store i64 %1594, i64* %3, align 8
  store i32 %1567, i32* %1565, align 4
  %1595 = load i64, i64* %RBP.i, align 8
  %1596 = add i64 %1595, -32
  %1597 = load i64, i64* %3, align 8
  %1598 = add i64 %1597, 4
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1596 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = add i32 %1600, -1
  %1602 = icmp eq i32 %1600, 0
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %14, align 1
  %1604 = and i32 %1601, 255
  %1605 = tail call i32 @llvm.ctpop.i32(i32 %1604)
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  store i8 %1608, i8* %21, align 1
  %1609 = xor i32 %1601, %1600
  %1610 = lshr i32 %1609, 4
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  store i8 %1612, i8* %27, align 1
  %1613 = icmp eq i32 %1601, 0
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %30, align 1
  %1615 = lshr i32 %1601, 31
  %1616 = trunc i32 %1615 to i8
  store i8 %1616, i8* %33, align 1
  %1617 = lshr i32 %1600, 31
  %1618 = xor i32 %1615, %1617
  %1619 = add nuw nsw i32 %1618, %1617
  %1620 = icmp eq i32 %1619, 2
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %39, align 1
  %1622 = icmp ne i8 %1616, 0
  %1623 = xor i1 %1622, %1620
  %1624 = or i1 %1613, %1623
  %.v69 = select i1 %1624, i64 22, i64 10
  %1625 = add i64 %1597, %.v69
  store i64 %1625, i64* %3, align 8
  br i1 %1624, label %block_.L_40f56f, label %block_40f563

block_40f563:                                     ; preds = %block_40f522
  %1626 = add i64 %1595, -4
  %1627 = add i64 %1625, 7
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1626 to i32*
  store i32 0, i32* %1628, align 4
  %1629 = load i64, i64* %3, align 8
  %1630 = add i64 %1629, 272
  store i64 %1630, i64* %3, align 8
  br label %block_.L_40f67a

block_.L_40f56f:                                  ; preds = %block_40f522
  %1631 = add i64 %1625, 5
  store i64 %1631, i64* %3, align 8
  br label %block_.L_40f574

block_.L_40f574:                                  ; preds = %block_.L_40f4f3.block_.L_40f574_crit_edge, %block_.L_40f56f
  %.pre37 = phi i64 [ %1595, %block_.L_40f56f ], [ %.pre37.pre, %block_.L_40f4f3.block_.L_40f574_crit_edge ]
  %1632 = phi i64 [ %1631, %block_.L_40f56f ], [ %1460, %block_.L_40f4f3.block_.L_40f574_crit_edge ]
  %1633 = add i64 %1632, 10
  store i64 %1633, i64* %3, align 8
  br label %block_.L_40f57e

block_.L_40f57e:                                  ; preds = %block_.L_40f574, %block_.L_40f4b3
  %1634 = phi i64 [ %1633, %block_.L_40f574 ], [ %1312, %block_.L_40f4b3 ]
  %1635 = phi i64 [ %.pre37, %block_.L_40f574 ], [ %1261, %block_.L_40f4b3 ]
  %1636 = add i64 %1635, -8
  %1637 = add i64 %1634, 3
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = add i32 %1639, 1
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RAX.i491, align 8
  %1642 = icmp eq i32 %1639, -1
  %1643 = icmp eq i32 %1640, 0
  %1644 = or i1 %1642, %1643
  %1645 = zext i1 %1644 to i8
  store i8 %1645, i8* %14, align 1
  %1646 = and i32 %1640, 255
  %1647 = tail call i32 @llvm.ctpop.i32(i32 %1646)
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  %1650 = xor i8 %1649, 1
  store i8 %1650, i8* %21, align 1
  %1651 = xor i32 %1640, %1639
  %1652 = lshr i32 %1651, 4
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  store i8 %1654, i8* %27, align 1
  %1655 = zext i1 %1643 to i8
  store i8 %1655, i8* %30, align 1
  %1656 = lshr i32 %1640, 31
  %1657 = trunc i32 %1656 to i8
  store i8 %1657, i8* %33, align 1
  %1658 = lshr i32 %1639, 31
  %1659 = xor i32 %1656, %1658
  %1660 = add nuw nsw i32 %1659, %1656
  %1661 = icmp eq i32 %1660, 2
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %39, align 1
  %1663 = sext i32 %1640 to i64
  store i64 %1663, i64* %RCX.i397.pre-phi, align 8
  %1664 = add nsw i64 %1663, 12099168
  %1665 = add i64 %1634, 17
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i8*
  %1667 = load i8, i8* %1666, align 1
  %1668 = zext i8 %1667 to i64
  store i64 %1668, i64* %RAX.i491, align 8
  %1669 = zext i8 %1667 to i32
  %1670 = add nsw i32 %1669, -3
  %1671 = icmp ult i8 %1667, 3
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %14, align 1
  %1673 = and i32 %1670, 255
  %1674 = tail call i32 @llvm.ctpop.i32(i32 %1673)
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  %1677 = xor i8 %1676, 1
  store i8 %1677, i8* %21, align 1
  %1678 = xor i32 %1670, %1669
  %1679 = lshr i32 %1678, 4
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  store i8 %1681, i8* %27, align 1
  %1682 = icmp eq i32 %1670, 0
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %30, align 1
  %1684 = lshr i32 %1670, 31
  %1685 = trunc i32 %1684 to i8
  store i8 %1685, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v63 = select i1 %1682, i64 203, i64 26
  %1686 = add i64 %1634, %.v63
  store i64 %1686, i64* %3, align 8
  br i1 %1682, label %block_.L_40f649, label %block_40f598

block_40f598:                                     ; preds = %block_.L_40f57e
  %1687 = add i64 %1686, 3
  store i64 %1687, i64* %3, align 8
  %1688 = load i32, i32* %1638, align 4
  %1689 = add i32 %1688, 1
  %1690 = zext i32 %1689 to i64
  store i64 %1690, i64* %RAX.i491, align 8
  %1691 = icmp eq i32 %1688, -1
  %1692 = icmp eq i32 %1689, 0
  %1693 = or i1 %1691, %1692
  %1694 = zext i1 %1693 to i8
  store i8 %1694, i8* %14, align 1
  %1695 = and i32 %1689, 255
  %1696 = tail call i32 @llvm.ctpop.i32(i32 %1695)
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  %1699 = xor i8 %1698, 1
  store i8 %1699, i8* %21, align 1
  %1700 = xor i32 %1689, %1688
  %1701 = lshr i32 %1700, 4
  %1702 = trunc i32 %1701 to i8
  %1703 = and i8 %1702, 1
  store i8 %1703, i8* %27, align 1
  %1704 = zext i1 %1692 to i8
  store i8 %1704, i8* %30, align 1
  %1705 = lshr i32 %1689, 31
  %1706 = trunc i32 %1705 to i8
  store i8 %1706, i8* %33, align 1
  %1707 = lshr i32 %1688, 31
  %1708 = xor i32 %1705, %1707
  %1709 = add nuw nsw i32 %1708, %1705
  %1710 = icmp eq i32 %1709, 2
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %39, align 1
  %1712 = sext i32 %1689 to i64
  store i64 %1712, i64* %RCX.i397.pre-phi, align 8
  %1713 = add nsw i64 %1712, 12099168
  %1714 = add i64 %1686, 17
  store i64 %1714, i64* %3, align 8
  %1715 = inttoptr i64 %1713 to i8*
  %1716 = load i8, i8* %1715, align 1
  %1717 = zext i8 %1716 to i64
  store i64 %1717, i64* %RAX.i491, align 8
  %1718 = zext i8 %1716 to i32
  %1719 = add i64 %1635, -28
  %1720 = add i64 %1686, 20
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1719 to i32*
  %1722 = load i32, i32* %1721, align 4
  %1723 = sub i32 %1718, %1722
  %1724 = icmp ult i32 %1718, %1722
  %1725 = zext i1 %1724 to i8
  store i8 %1725, i8* %14, align 1
  %1726 = and i32 %1723, 255
  %1727 = tail call i32 @llvm.ctpop.i32(i32 %1726)
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  %1730 = xor i8 %1729, 1
  store i8 %1730, i8* %21, align 1
  %1731 = xor i32 %1722, %1718
  %1732 = xor i32 %1731, %1723
  %1733 = lshr i32 %1732, 4
  %1734 = trunc i32 %1733 to i8
  %1735 = and i8 %1734, 1
  store i8 %1735, i8* %27, align 1
  %1736 = icmp eq i32 %1723, 0
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %30, align 1
  %1738 = lshr i32 %1723, 31
  %1739 = trunc i32 %1738 to i8
  store i8 %1739, i8* %33, align 1
  %1740 = lshr i32 %1722, 31
  %1741 = add nuw nsw i32 %1738, %1740
  %1742 = icmp eq i32 %1741, 2
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %39, align 1
  %.v64 = select i1 %1736, i64 38, i64 26
  %1744 = add i64 %1686, %.v64
  store i64 %1744, i64* %3, align 8
  br i1 %1736, label %block_.L_40f5be, label %block_40f5b2

block_40f5b2:                                     ; preds = %block_40f598
  %1745 = add i64 %1635, -4
  %1746 = add i64 %1744, 7
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i32*
  store i32 0, i32* %1747, align 4
  %1748 = load i64, i64* %3, align 8
  %1749 = add i64 %1748, 193
  store i64 %1749, i64* %3, align 8
  br label %block_.L_40f67a

block_.L_40f5be:                                  ; preds = %block_40f598
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i491, align 8
  %1750 = add i64 %1744, 13
  store i64 %1750, i64* %3, align 8
  %1751 = load i32, i32* %1638, align 4
  %1752 = add i32 %1751, 1
  %1753 = zext i32 %1752 to i64
  store i64 %1753, i64* %RCX.i397.pre-phi, align 8
  %1754 = icmp eq i32 %1751, -1
  %1755 = icmp eq i32 %1752, 0
  %1756 = or i1 %1754, %1755
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %14, align 1
  %1758 = and i32 %1752, 255
  %1759 = tail call i32 @llvm.ctpop.i32(i32 %1758)
  %1760 = trunc i32 %1759 to i8
  %1761 = and i8 %1760, 1
  %1762 = xor i8 %1761, 1
  store i8 %1762, i8* %21, align 1
  %1763 = xor i32 %1752, %1751
  %1764 = lshr i32 %1763, 4
  %1765 = trunc i32 %1764 to i8
  %1766 = and i8 %1765, 1
  store i8 %1766, i8* %27, align 1
  %1767 = zext i1 %1755 to i8
  store i8 %1767, i8* %30, align 1
  %1768 = lshr i32 %1752, 31
  %1769 = trunc i32 %1768 to i8
  store i8 %1769, i8* %33, align 1
  %1770 = lshr i32 %1751, 31
  %1771 = xor i32 %1768, %1770
  %1772 = add nuw nsw i32 %1771, %1768
  %1773 = icmp eq i32 %1772, 2
  %1774 = zext i1 %1773 to i8
  store i8 %1774, i8* %39, align 1
  %1775 = sext i32 %1752 to i64
  store i64 %1775, i64* %RDX.i557, align 8
  %1776 = shl nsw i64 %1775, 2
  %1777 = add nsw i64 %1776, 11187184
  %1778 = add i64 %1744, 27
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to i32*
  %1780 = load i32, i32* %1779, align 4
  %1781 = sext i32 %1780 to i64
  %1782 = mul nsw i64 %1781, 744
  store i64 %1782, i64* %RDX.i557, align 8
  %1783 = lshr i64 %1782, 63
  %1784 = add i64 %1782, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1784, i64* %RAX.i491, align 8
  %1785 = icmp ult i64 %1784, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1786 = icmp ult i64 %1784, %1782
  %1787 = or i1 %1785, %1786
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %14, align 1
  %1789 = trunc i64 %1784 to i32
  %1790 = and i32 %1789, 248
  %1791 = tail call i32 @llvm.ctpop.i32(i32 %1790)
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  %1794 = xor i8 %1793, 1
  store i8 %1794, i8* %21, align 1
  %1795 = xor i64 %1782, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1796 = xor i64 %1795, %1784
  %1797 = lshr i64 %1796, 4
  %1798 = trunc i64 %1797 to i8
  %1799 = and i8 %1798, 1
  store i8 %1799, i8* %27, align 1
  %1800 = icmp eq i64 %1784, 0
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %30, align 1
  %1802 = lshr i64 %1784, 63
  %1803 = trunc i64 %1802 to i8
  store i8 %1803, i8* %33, align 1
  %1804 = xor i64 %1802, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1805 = xor i64 %1802, %1783
  %1806 = add nuw nsw i64 %1804, %1805
  %1807 = icmp eq i64 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %39, align 1
  %1809 = add i64 %1782, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1810 = add i64 %1744, 41
  store i64 %1810, i64* %3, align 8
  %1811 = inttoptr i64 %1809 to i32*
  %1812 = load i32, i32* %1811, align 4
  %1813 = add i32 %1812, -1
  %1814 = icmp eq i32 %1812, 0
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %14, align 1
  %1816 = and i32 %1813, 255
  %1817 = tail call i32 @llvm.ctpop.i32(i32 %1816)
  %1818 = trunc i32 %1817 to i8
  %1819 = and i8 %1818, 1
  %1820 = xor i8 %1819, 1
  store i8 %1820, i8* %21, align 1
  %1821 = xor i32 %1813, %1812
  %1822 = lshr i32 %1821, 4
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  store i8 %1824, i8* %27, align 1
  %1825 = icmp eq i32 %1813, 0
  %1826 = zext i1 %1825 to i8
  store i8 %1826, i8* %30, align 1
  %1827 = lshr i32 %1813, 31
  %1828 = trunc i32 %1827 to i8
  store i8 %1828, i8* %33, align 1
  %1829 = lshr i32 %1812, 31
  %1830 = xor i32 %1827, %1829
  %1831 = add nuw nsw i32 %1830, %1829
  %1832 = icmp eq i32 %1831, 2
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %39, align 1
  %.v65 = select i1 %1825, i64 47, i64 129
  %1834 = add i64 %1744, %.v65
  store i64 %1834, i64* %3, align 8
  br i1 %1825, label %block_40f5ed, label %block_.L_40f5be.block_.L_40f63f_crit_edge

block_.L_40f5be.block_.L_40f63f_crit_edge:        ; preds = %block_.L_40f5be
  %.pre38.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_40f63f

block_40f5ed:                                     ; preds = %block_.L_40f5be
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i491, align 8
  %1835 = load i64, i64* %RBP.i, align 8
  %1836 = add i64 %1835, -8
  %1837 = add i64 %1834, 13
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i32*
  %1839 = load i32, i32* %1838, align 4
  %1840 = add i32 %1839, 1
  %1841 = zext i32 %1840 to i64
  store i64 %1841, i64* %RCX.i397.pre-phi, align 8
  %1842 = icmp eq i32 %1839, -1
  %1843 = icmp eq i32 %1840, 0
  %1844 = or i1 %1842, %1843
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %14, align 1
  %1846 = and i32 %1840, 255
  %1847 = tail call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  store i8 %1850, i8* %21, align 1
  %1851 = xor i32 %1840, %1839
  %1852 = lshr i32 %1851, 4
  %1853 = trunc i32 %1852 to i8
  %1854 = and i8 %1853, 1
  store i8 %1854, i8* %27, align 1
  %1855 = zext i1 %1843 to i8
  store i8 %1855, i8* %30, align 1
  %1856 = lshr i32 %1840, 31
  %1857 = trunc i32 %1856 to i8
  store i8 %1857, i8* %33, align 1
  %1858 = lshr i32 %1839, 31
  %1859 = xor i32 %1856, %1858
  %1860 = add nuw nsw i32 %1859, %1856
  %1861 = icmp eq i32 %1860, 2
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %39, align 1
  %1863 = add i64 %1835, -36
  %1864 = add i64 %1834, 19
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1863 to i32*
  store i32 %1840, i32* %1865, align 4
  %1866 = load i64, i64* %RBP.i, align 8
  %1867 = add i64 %1866, -8
  %1868 = load i64, i64* %3, align 8
  %1869 = add i64 %1868, 3
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1867 to i32*
  %1871 = load i32, i32* %1870, align 4
  %1872 = add i32 %1871, 1
  %1873 = zext i32 %1872 to i64
  store i64 %1873, i64* %RCX.i397.pre-phi, align 8
  %1874 = icmp eq i32 %1871, -1
  %1875 = icmp eq i32 %1872, 0
  %1876 = or i1 %1874, %1875
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %14, align 1
  %1878 = and i32 %1872, 255
  %1879 = tail call i32 @llvm.ctpop.i32(i32 %1878)
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  %1882 = xor i8 %1881, 1
  store i8 %1882, i8* %21, align 1
  %1883 = xor i32 %1872, %1871
  %1884 = lshr i32 %1883, 4
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  store i8 %1886, i8* %27, align 1
  %1887 = zext i1 %1875 to i8
  store i8 %1887, i8* %30, align 1
  %1888 = lshr i32 %1872, 31
  %1889 = trunc i32 %1888 to i8
  store i8 %1889, i8* %33, align 1
  %1890 = lshr i32 %1871, 31
  %1891 = xor i32 %1888, %1890
  %1892 = add nuw nsw i32 %1891, %1888
  %1893 = icmp eq i32 %1892, 2
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %39, align 1
  %1895 = sext i32 %1872 to i64
  store i64 %1895, i64* %RDX.i557, align 8
  %1896 = shl nsw i64 %1895, 2
  %1897 = add nsw i64 %1896, 11187184
  %1898 = add i64 %1868, 17
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i32*
  %1900 = load i32, i32* %1899, align 4
  %1901 = sext i32 %1900 to i64
  %1902 = mul nsw i64 %1901, 744
  store i64 %1902, i64* %RDX.i557, align 8
  %1903 = lshr i64 %1902, 63
  %1904 = load i64, i64* %RAX.i491, align 8
  %1905 = add i64 %1902, %1904
  store i64 %1905, i64* %RAX.i491, align 8
  %1906 = icmp ult i64 %1905, %1904
  %1907 = icmp ult i64 %1905, %1902
  %1908 = or i1 %1906, %1907
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %14, align 1
  %1910 = trunc i64 %1905 to i32
  %1911 = and i32 %1910, 255
  %1912 = tail call i32 @llvm.ctpop.i32(i32 %1911)
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  %1915 = xor i8 %1914, 1
  store i8 %1915, i8* %21, align 1
  %1916 = xor i64 %1902, %1904
  %1917 = xor i64 %1916, %1905
  %1918 = lshr i64 %1917, 4
  %1919 = trunc i64 %1918 to i8
  %1920 = and i8 %1919, 1
  store i8 %1920, i8* %27, align 1
  %1921 = icmp eq i64 %1905, 0
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %30, align 1
  %1923 = lshr i64 %1905, 63
  %1924 = trunc i64 %1923 to i8
  store i8 %1924, i8* %33, align 1
  %1925 = lshr i64 %1904, 63
  %1926 = xor i64 %1923, %1925
  %1927 = xor i64 %1923, %1903
  %1928 = add nuw nsw i64 %1926, %1927
  %1929 = icmp eq i64 %1928, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %39, align 1
  %1931 = add i64 %1905, 4
  %1932 = add i64 %1868, 30
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i32*
  %1934 = load i32, i32* %1933, align 4
  %1935 = zext i32 %1934 to i64
  store i64 %1935, i64* %RCX.i397.pre-phi, align 8
  %1936 = load i64, i64* %RBP.i, align 8
  %1937 = add i64 %1936, -32
  %1938 = add i64 %1868, 33
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1937 to i32*
  %1940 = load i32, i32* %1939, align 4
  %1941 = add i32 %1940, %1934
  %1942 = zext i32 %1941 to i64
  store i64 %1942, i64* %RCX.i397.pre-phi, align 8
  %1943 = icmp ult i32 %1941, %1934
  %1944 = icmp ult i32 %1941, %1940
  %1945 = or i1 %1943, %1944
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %14, align 1
  %1947 = and i32 %1941, 255
  %1948 = tail call i32 @llvm.ctpop.i32(i32 %1947)
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  %1951 = xor i8 %1950, 1
  store i8 %1951, i8* %21, align 1
  %1952 = xor i32 %1940, %1934
  %1953 = xor i32 %1952, %1941
  %1954 = lshr i32 %1953, 4
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  store i8 %1956, i8* %27, align 1
  %1957 = icmp eq i32 %1941, 0
  %1958 = zext i1 %1957 to i8
  store i8 %1958, i8* %30, align 1
  %1959 = lshr i32 %1941, 31
  %1960 = trunc i32 %1959 to i8
  store i8 %1960, i8* %33, align 1
  %1961 = lshr i32 %1934, 31
  %1962 = lshr i32 %1940, 31
  %1963 = xor i32 %1959, %1961
  %1964 = xor i32 %1959, %1962
  %1965 = add nuw nsw i32 %1963, %1964
  %1966 = icmp eq i32 %1965, 2
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %39, align 1
  %1968 = add i64 %1868, 36
  store i64 %1968, i64* %3, align 8
  store i32 %1941, i32* %1939, align 4
  %1969 = load i64, i64* %RBP.i, align 8
  %1970 = add i64 %1969, -32
  %1971 = load i64, i64* %3, align 8
  %1972 = add i64 %1971, 4
  store i64 %1972, i64* %3, align 8
  %1973 = inttoptr i64 %1970 to i32*
  %1974 = load i32, i32* %1973, align 4
  %1975 = add i32 %1974, -1
  %1976 = icmp eq i32 %1974, 0
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %14, align 1
  %1978 = and i32 %1975, 255
  %1979 = tail call i32 @llvm.ctpop.i32(i32 %1978)
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  store i8 %1982, i8* %21, align 1
  %1983 = xor i32 %1975, %1974
  %1984 = lshr i32 %1983, 4
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  store i8 %1986, i8* %27, align 1
  %1987 = icmp eq i32 %1975, 0
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %30, align 1
  %1989 = lshr i32 %1975, 31
  %1990 = trunc i32 %1989 to i8
  store i8 %1990, i8* %33, align 1
  %1991 = lshr i32 %1974, 31
  %1992 = xor i32 %1989, %1991
  %1993 = add nuw nsw i32 %1992, %1991
  %1994 = icmp eq i32 %1993, 2
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %39, align 1
  %1996 = icmp ne i8 %1990, 0
  %1997 = xor i1 %1996, %1994
  %1998 = or i1 %1987, %1997
  %.v68 = select i1 %1998, i64 22, i64 10
  %1999 = add i64 %1971, %.v68
  store i64 %1999, i64* %3, align 8
  br i1 %1998, label %block_.L_40f63a, label %block_40f62e

block_40f62e:                                     ; preds = %block_40f5ed
  %2000 = add i64 %1969, -4
  %2001 = add i64 %1999, 7
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i32*
  store i32 0, i32* %2002, align 4
  %2003 = load i64, i64* %3, align 8
  %2004 = add i64 %2003, 69
  store i64 %2004, i64* %3, align 8
  br label %block_.L_40f67a

block_.L_40f63a:                                  ; preds = %block_40f5ed
  %2005 = add i64 %1999, 5
  store i64 %2005, i64* %3, align 8
  br label %block_.L_40f63f

block_.L_40f63f:                                  ; preds = %block_.L_40f5be.block_.L_40f63f_crit_edge, %block_.L_40f63a
  %.pre38 = phi i64 [ %1969, %block_.L_40f63a ], [ %.pre38.pre, %block_.L_40f5be.block_.L_40f63f_crit_edge ]
  %2006 = phi i64 [ %2005, %block_.L_40f63a ], [ %1834, %block_.L_40f5be.block_.L_40f63f_crit_edge ]
  %2007 = add i64 %2006, 10
  store i64 %2007, i64* %3, align 8
  br label %block_.L_40f649

block_.L_40f649:                                  ; preds = %block_.L_40f63f, %block_.L_40f57e
  %2008 = phi i64 [ %2007, %block_.L_40f63f ], [ %1686, %block_.L_40f57e ]
  %2009 = phi i64 [ %.pre38, %block_.L_40f63f ], [ %1635, %block_.L_40f57e ]
  %2010 = add i64 %2009, -32
  %2011 = add i64 %2008, 4
  store i64 %2011, i64* %3, align 8
  %2012 = inttoptr i64 %2010 to i32*
  %2013 = load i32, i32* %2012, align 4
  %2014 = add i32 %2013, -1
  %2015 = icmp eq i32 %2013, 0
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %14, align 1
  %2017 = and i32 %2014, 255
  %2018 = tail call i32 @llvm.ctpop.i32(i32 %2017)
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  %2021 = xor i8 %2020, 1
  store i8 %2021, i8* %21, align 1
  %2022 = xor i32 %2014, %2013
  %2023 = lshr i32 %2022, 4
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  store i8 %2025, i8* %27, align 1
  %2026 = icmp eq i32 %2014, 0
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %30, align 1
  %2028 = lshr i32 %2014, 31
  %2029 = trunc i32 %2028 to i8
  store i8 %2029, i8* %33, align 1
  %2030 = lshr i32 %2013, 31
  %2031 = xor i32 %2028, %2030
  %2032 = add nuw nsw i32 %2031, %2030
  %2033 = icmp eq i32 %2032, 2
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %39, align 1
  %.v66 = select i1 %2026, i64 10, i64 42
  %2035 = add i64 %2008, %.v66
  store i64 %2035, i64* %3, align 8
  br i1 %2026, label %block_40f653, label %block_.L_40f673

block_40f653:                                     ; preds = %block_.L_40f649
  %2036 = add i64 %2009, -24
  %2037 = add i64 %2035, 5
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i64*
  %2039 = load i64, i64* %2038, align 8
  store i8 0, i8* %14, align 1
  %2040 = trunc i64 %2039 to i32
  %2041 = and i32 %2040, 255
  %2042 = tail call i32 @llvm.ctpop.i32(i32 %2041)
  %2043 = trunc i32 %2042 to i8
  %2044 = and i8 %2043, 1
  %2045 = xor i8 %2044, 1
  store i8 %2045, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2046 = icmp eq i64 %2039, 0
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %30, align 1
  %2048 = lshr i64 %2039, 63
  %2049 = trunc i64 %2048 to i8
  store i8 %2049, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v67 = select i1 %2046, i64 20, i64 11
  %2050 = add i64 %2035, %.v67
  store i64 %2050, i64* %3, align 8
  br i1 %2046, label %block_.L_40f667, label %block_40f65e

block_40f65e:                                     ; preds = %block_40f653
  %2051 = add i64 %2009, -36
  %2052 = add i64 %2050, 3
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i32*
  %2054 = load i32, i32* %2053, align 4
  %2055 = zext i32 %2054 to i64
  store i64 %2055, i64* %RAX.i491, align 8
  %2056 = add i64 %2050, 7
  store i64 %2056, i64* %3, align 8
  %2057 = load i64, i64* %2038, align 8
  store i64 %2057, i64* %RCX.i397.pre-phi, align 8
  %2058 = add i64 %2050, 9
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to i32*
  store i32 %2054, i32* %2059, align 4
  %.pre39 = load i64, i64* %RBP.i, align 8
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_40f667

block_.L_40f667:                                  ; preds = %block_40f65e, %block_40f653
  %2060 = phi i64 [ %.pre40, %block_40f65e ], [ %2050, %block_40f653 ]
  %2061 = phi i64 [ %.pre39, %block_40f65e ], [ %2009, %block_40f653 ]
  %2062 = add i64 %2061, -4
  %2063 = add i64 %2060, 7
  store i64 %2063, i64* %3, align 8
  %2064 = inttoptr i64 %2062 to i32*
  store i32 1, i32* %2064, align 4
  %2065 = load i64, i64* %3, align 8
  %2066 = add i64 %2065, 12
  store i64 %2066, i64* %3, align 8
  br label %block_.L_40f67a

block_.L_40f673:                                  ; preds = %block_.L_40f649
  %2067 = add i64 %2009, -4
  %2068 = add i64 %2035, 7
  store i64 %2068, i64* %3, align 8
  %2069 = inttoptr i64 %2067 to i32*
  store i32 0, i32* %2069, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_40f67a

block_.L_40f67a:                                  ; preds = %block_.L_40f673, %block_.L_40f667, %block_40f62e, %block_40f5b2, %block_40f563, %block_40f4e7, %block_40f498, %block_40f41c, %block_40f3cd, %block_40f351
  %2070 = phi i64 [ %.pre41, %block_.L_40f673 ], [ %2066, %block_.L_40f667 ], [ %2004, %block_40f62e ], [ %1749, %block_40f5b2 ], [ %1630, %block_40f563 ], [ %1375, %block_40f4e7 ], [ %1256, %block_40f498 ], [ %1004, %block_40f41c ], [ %887, %block_40f3cd ], [ %632, %block_40f351 ]
  %2071 = load i64, i64* %RBP.i, align 8
  %2072 = add i64 %2071, -4
  %2073 = add i64 %2070, 3
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2072 to i32*
  %2075 = load i32, i32* %2074, align 4
  %2076 = zext i32 %2075 to i64
  store i64 %2076, i64* %RAX.i491, align 8
  %2077 = load i64, i64* %6, align 8
  %2078 = add i64 %2077, 80
  store i64 %2078, i64* %6, align 8
  %2079 = icmp ugt i64 %2077, -81
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
  %2101 = add i64 %2070, 8
  store i64 %2101, i64* %3, align 8
  %2102 = add i64 %2077, 88
  %2103 = inttoptr i64 %2078 to i64*
  %2104 = load i64, i64* %2103, align 8
  store i64 %2104, i64* %RBP.i, align 8
  store i64 %2102, i64* %6, align 8
  %2105 = add i64 %2070, 9
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2102 to i64*
  %2107 = load i64, i64* %2106, align 8
  store i64 %2107, i64* %3, align 8
  %2108 = add i64 %2077, 96
  store i64 %2108, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 80
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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
define %struct.Memory* @routine_jae_.L_40f252(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40f252(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40f2ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x9c5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2501, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_je_.L_40f2bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jne_.L_40f2c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40f31d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x9c6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2502, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a466___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a466_type* @G__0x57a466 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_je_.L_40f3e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_je_.L_40f35d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40f67a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
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
define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 744
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_jne_.L_40f3de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jle_.L_40f3d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40f3de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f3e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f3e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40f4b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40f428(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40f4a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_40f4a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40f4a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f4ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f4b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_40f57e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40f4f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_40f574(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_40f56f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40f574(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f579(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f57e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_40f649(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40f5be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40f63f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_40f63a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40f63f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f644(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f649(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40f673(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_je_.L_40f667(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -81
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
