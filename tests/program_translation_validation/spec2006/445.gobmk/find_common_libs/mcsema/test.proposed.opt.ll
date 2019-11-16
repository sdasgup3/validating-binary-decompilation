; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99da04_type = type <{ [4 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a4e7_type = type <{ [8 x i8] }>
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
@G__0x57a4e7 = global %G__0x57a4e7_type zeroinitializer
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
define %struct.Memory* @find_common_libs(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1160
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1152
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
  %ESI.i674 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i674, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i741 = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i32, i32* %EDX.i741, align 4
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i759 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -24
  %61 = load i64, i64* %RCX.i759, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -1012
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 10
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  store i32 0, i32* %69, align 4
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -8
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 7
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, -421
  %77 = icmp ult i32 %75, 421
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %14, align 1
  %79 = and i32 %76, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79)
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %21, align 1
  %84 = xor i32 %76, %75
  %85 = lshr i32 %84, 4
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  store i8 %87, i8* %26, align 1
  %88 = icmp eq i32 %76, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %29, align 1
  %90 = lshr i32 %76, 31
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %32, align 1
  %92 = lshr i32 %75, 31
  %93 = xor i32 %90, %92
  %94 = add nuw nsw i32 %93, %92
  %95 = icmp eq i32 %94, 2
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %38, align 1
  %.v = select i1 %77, i64 13, i64 39
  %97 = add i64 %72, %.v
  store i64 %97, i64* %3, align 8
  br i1 %77, label %block_412acf, label %block_.L_412ae9

block_412acf:                                     ; preds = %entry
  %RAX.i919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %98 = add i64 %97, 4
  store i64 %98, i64* %3, align 8
  %99 = load i32, i32* %74, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %RAX.i919, align 8
  %101 = add nsw i64 %100, 12099168
  %102 = add i64 %97, 12
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i8*
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i64
  store i64 %105, i64* %RCX.i759, align 8
  %106 = zext i8 %104 to i32
  %107 = add nsw i32 %106, -3
  %108 = icmp ult i8 %104, 3
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %14, align 1
  %110 = and i32 %107, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %21, align 1
  %115 = xor i32 %107, %106
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %26, align 1
  %119 = icmp eq i32 %107, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %29, align 1
  %121 = lshr i32 %107, 31
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v116 = select i1 %119, i64 26, i64 21
  %123 = add i64 %97, %.v116
  store i64 %123, i64* %3, align 8
  br i1 %119, label %block_.L_412ae9, label %block_412ae4

block_412ae4:                                     ; preds = %block_412acf
  %124 = add i64 %123, 118
  store i64 %124, i64* %3, align 8
  br label %block_.L_412b5a

block_.L_412ae9:                                  ; preds = %entry, %block_412acf
  %125 = phi i64 [ %123, %block_412acf ], [ %97, %entry ]
  %ECX.i929.pre-phi = bitcast %union.anon* %58 to i32*
  %RDI.i944 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i944, align 8
  %RSI.i942 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 1981, i64* %RSI.i942, align 8
  %RDX.i940 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a504_type* @G__0x57a504 to i64), i64* %RDX.i940, align 8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i938 = getelementptr inbounds %union.anon, %union.anon* %126, i64 0, i32 0
  store i64 20, i64* %RAX.i938, align 8
  %127 = add i64 %125, 33
  store i64 %127, i64* %3, align 8
  %128 = load i32, i32* %74, align 4
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %RCX.i759, align 8
  %EAX.i932 = bitcast %union.anon* %126 to i32*
  %130 = add i64 %70, -1028
  %131 = add i64 %125, 39
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i32*
  store i32 20, i32* %132, align 4
  %133 = load i32, i32* %ECX.i929.pre-phi, align 4
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %3, align 8
  store i64 %134, i64* %RAX.i938, align 8
  %136 = load i64, i64* %RBP.i, align 8
  %137 = add i64 %136, -1040
  %138 = load i64, i64* %RDX.i940, align 8
  %139 = add i64 %135, 9
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %137 to i64*
  store i64 %138, i64* %140, align 8
  %141 = load i64, i64* %3, align 8
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %143 = load i32, i32* %EAX.i932, align 8
  %144 = sext i32 %143 to i64
  %145 = lshr i64 %144, 32
  store i64 %145, i64* %142, align 8
  %146 = load i64, i64* %RBP.i, align 8
  %147 = add i64 %146, -1028
  %148 = add i64 %141, 7
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RCX.i759, align 8
  %152 = add i64 %141, 9
  store i64 %152, i64* %3, align 8
  %153 = zext i32 %143 to i64
  %154 = sext i32 %150 to i64
  %155 = shl nuw i64 %145, 32
  %156 = or i64 %155, %153
  %157 = sdiv i64 %156, %154
  %158 = shl i64 %157, 32
  %159 = ashr exact i64 %158, 32
  %160 = icmp eq i64 %157, %159
  br i1 %160, label %163, label %161

; <label>:161:                                    ; preds = %block_.L_412ae9
  %162 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %152, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i938, align 8
  %.pre35 = load i64, i64* %3, align 8
  %.pre36 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit917

; <label>:163:                                    ; preds = %block_.L_412ae9
  %164 = srem i64 %156, %154
  %165 = and i64 %157, 4294967295
  store i64 %165, i64* %RAX.i938, align 8
  %166 = and i64 %164, 4294967295
  store i64 %166, i64* %RDX.i940, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit917

routine_idivl__ecx.exit917:                       ; preds = %163, %161
  %167 = phi i64 [ %.pre36, %161 ], [ %146, %163 ]
  %168 = phi i64 [ %.pre35, %161 ], [ %152, %163 ]
  %169 = phi i64 [ %.pre, %161 ], [ %165, %163 ]
  %170 = phi %struct.Memory* [ %162, %161 ], [ %2, %163 ]
  %171 = trunc i64 %169 to i32
  %172 = add i32 %171, -1
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX.i938, align 8
  %174 = icmp eq i32 %171, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %14, align 1
  %176 = and i32 %172, 255
  %177 = tail call i32 @llvm.ctpop.i32(i32 %176)
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  store i8 %180, i8* %21, align 1
  %181 = xor i32 %172, %171
  %182 = lshr i32 %181, 4
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  store i8 %184, i8* %26, align 1
  %185 = icmp eq i32 %172, 0
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %29, align 1
  %187 = lshr i32 %172, 31
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* %32, align 1
  %189 = lshr i32 %171, 31
  %190 = xor i32 %187, %189
  %191 = add nuw nsw i32 %190, %189
  %192 = icmp eq i32 %191, 2
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %38, align 1
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i911 = bitcast %union.anon* %194 to i32*
  %195 = getelementptr inbounds %union.anon, %union.anon* %194, i64 0, i32 0
  %196 = add i64 %167, -8
  %197 = add i64 %168, 7
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = zext i32 %199 to i64
  store i64 %200, i64* %195, align 8
  %201 = add i64 %167, -1044
  %202 = add i64 %168, 13
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %201 to i32*
  store i32 %172, i32* %203, align 4
  %204 = load i32, i32* %R8D.i911, align 4
  %205 = zext i32 %204 to i64
  %206 = load i64, i64* %3, align 8
  store i64 %205, i64* %RAX.i938, align 8
  %207 = sext i32 %204 to i64
  %208 = lshr i64 %207, 32
  store i64 %208, i64* %142, align 8
  %209 = load i32, i32* %ECX.i929.pre-phi, align 4
  %210 = add i64 %206, 6
  store i64 %210, i64* %3, align 8
  %211 = sext i32 %209 to i64
  %212 = shl nuw i64 %208, 32
  %213 = or i64 %212, %205
  %214 = sdiv i64 %213, %211
  %215 = shl i64 %214, 32
  %216 = ashr exact i64 %215, 32
  %217 = icmp eq i64 %214, %216
  br i1 %217, label %220, label %218

; <label>:218:                                    ; preds = %routine_idivl__ecx.exit917
  %219 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %210, %struct.Memory* %170)
  %.pre37 = load i64, i64* %RDX.i940, align 8
  %.pre38 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit901

; <label>:220:                                    ; preds = %routine_idivl__ecx.exit917
  %221 = srem i64 %213, %211
  %222 = and i64 %214, 4294967295
  store i64 %222, i64* %RAX.i938, align 8
  %223 = and i64 %221, 4294967295
  store i64 %223, i64* %RDX.i940, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit901

routine_idivl__ecx.exit901:                       ; preds = %220, %218
  %224 = phi i64 [ %.pre38, %218 ], [ %210, %220 ]
  %225 = phi i64 [ %.pre37, %218 ], [ %223, %220 ]
  %226 = phi %struct.Memory* [ %219, %218 ], [ %170, %220 ]
  %227 = trunc i64 %225 to i32
  %228 = add i32 %227, -1
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RDX.i940, align 8
  %230 = icmp eq i32 %227, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %14, align 1
  %232 = and i32 %228, 255
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232)
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  store i8 %236, i8* %21, align 1
  %237 = xor i32 %228, %227
  %238 = lshr i32 %237, 4
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  store i8 %240, i8* %26, align 1
  %241 = icmp eq i32 %228, 0
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %29, align 1
  %243 = lshr i32 %228, 31
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* %32, align 1
  %245 = lshr i32 %227, 31
  %246 = xor i32 %243, %245
  %247 = add nuw nsw i32 %246, %245
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %38, align 1
  %R9.i896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %250 = load i64, i64* %RBP.i, align 8
  %251 = add i64 %250, -1040
  %252 = add i64 %224, 10
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %R9.i896, align 8
  %255 = add i64 %250, -1048
  %256 = add i64 %224, 16
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  store i32 %228, i32* %257, align 4
  %258 = load i64, i64* %R9.i896, align 8
  %259 = load i64, i64* %3, align 8
  store i64 %258, i64* %RDX.i940, align 8
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -1044
  %262 = add i64 %259, 9
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RCX.i759, align 8
  %266 = add i64 %260, -1048
  %267 = add i64 %259, 16
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %195, align 8
  %271 = add i64 %259, 259403
  %272 = add i64 %259, 21
  %273 = load i64, i64* %6, align 8
  %274 = add i64 %273, -8
  %275 = inttoptr i64 %274 to i64*
  store i64 %272, i64* %275, align 8
  store i64 %274, i64* %6, align 8
  store i64 %271, i64* %3, align 8
  %call2_412b55 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %271, %struct.Memory* %226)
  %.pre39 = load i64, i64* %RBP.i, align 8
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_412b5a

block_.L_412b5a:                                  ; preds = %routine_idivl__ecx.exit901, %block_412ae4
  %276 = phi i64 [ %.pre40, %routine_idivl__ecx.exit901 ], [ %124, %block_412ae4 ]
  %277 = phi i64 [ %.pre39, %routine_idivl__ecx.exit901 ], [ %70, %block_412ae4 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_412b55, %routine_idivl__ecx.exit901 ], [ %2, %block_412ae4 ]
  %278 = add i64 %277, -12
  %279 = add i64 %276, 7
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = add i32 %281, -421
  %283 = icmp ult i32 %281, 421
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %14, align 1
  %285 = and i32 %282, 255
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285)
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %21, align 1
  %290 = xor i32 %282, %281
  %291 = lshr i32 %290, 4
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  store i8 %293, i8* %26, align 1
  %294 = icmp eq i32 %282, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %29, align 1
  %296 = lshr i32 %282, 31
  %297 = trunc i32 %296 to i8
  store i8 %297, i8* %32, align 1
  %298 = lshr i32 %281, 31
  %299 = xor i32 %296, %298
  %300 = add nuw nsw i32 %299, %298
  %301 = icmp eq i32 %300, 2
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %38, align 1
  %.v91 = select i1 %283, i64 13, i64 39
  %303 = add i64 %276, %.v91
  store i64 %303, i64* %3, align 8
  br i1 %283, label %block_412b67, label %block_.L_412b5a.block_.L_412b81_crit_edge

block_.L_412b5a.block_.L_412b81_crit_edge:        ; preds = %block_.L_412b5a
  %.pre89 = bitcast %union.anon* %58 to i32*
  br label %block_.L_412b81

block_412b67:                                     ; preds = %block_.L_412b5a
  %RAX.i876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %304 = add i64 %303, 4
  store i64 %304, i64* %3, align 8
  %305 = load i32, i32* %280, align 4
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %RAX.i876, align 8
  %307 = add nsw i64 %306, 12099168
  %308 = add i64 %303, 12
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i8*
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i64
  store i64 %311, i64* %RCX.i759, align 8
  %ECX.i871 = bitcast %union.anon* %58 to i32*
  %312 = zext i8 %310 to i32
  %313 = add nsw i32 %312, -3
  %314 = icmp ult i8 %310, 3
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %14, align 1
  %316 = and i32 %313, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316)
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %21, align 1
  %321 = xor i32 %313, %312
  %322 = lshr i32 %321, 4
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %26, align 1
  %325 = icmp eq i32 %313, 0
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %29, align 1
  %327 = lshr i32 %313, 31
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v115 = select i1 %325, i64 26, i64 21
  %329 = add i64 %303, %.v115
  store i64 %329, i64* %3, align 8
  br i1 %325, label %block_.L_412b81, label %block_412b7c

block_412b7c:                                     ; preds = %block_412b67
  %330 = add i64 %329, 118
  store i64 %330, i64* %3, align 8
  %.pre83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre84 = getelementptr inbounds %union.anon, %union.anon* %.pre83, i64 0, i32 0
  br label %block_.L_412bf2

block_.L_412b81:                                  ; preds = %block_.L_412b5a.block_.L_412b81_crit_edge, %block_412b67
  %ECX.i852.pre-phi = phi i32* [ %.pre89, %block_.L_412b5a.block_.L_412b81_crit_edge ], [ %ECX.i871, %block_412b67 ]
  %331 = phi i64 [ %303, %block_.L_412b5a.block_.L_412b81_crit_edge ], [ %329, %block_412b67 ]
  %RDI.i867 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i867, align 8
  %RSI.i865 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 1982, i64* %RSI.i865, align 8
  %RDX.i863 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a514_type* @G__0x57a514 to i64), i64* %RDX.i863, align 8
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i861 = getelementptr inbounds %union.anon, %union.anon* %332, i64 0, i32 0
  store i64 20, i64* %RAX.i861, align 8
  %333 = add i64 %331, 33
  store i64 %333, i64* %3, align 8
  %334 = load i32, i32* %280, align 4
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RCX.i759, align 8
  %EAX.i855 = bitcast %union.anon* %332 to i32*
  %336 = add i64 %277, -1052
  %337 = add i64 %331, 39
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  store i32 20, i32* %338, align 4
  %339 = load i32, i32* %ECX.i852.pre-phi, align 4
  %340 = zext i32 %339 to i64
  %341 = load i64, i64* %3, align 8
  store i64 %340, i64* %RAX.i861, align 8
  %342 = load i64, i64* %RBP.i, align 8
  %343 = add i64 %342, -1064
  %344 = load i64, i64* %RDX.i863, align 8
  %345 = add i64 %341, 9
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %343 to i64*
  store i64 %344, i64* %346, align 8
  %347 = load i64, i64* %3, align 8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %349 = load i32, i32* %EAX.i855, align 8
  %350 = sext i32 %349 to i64
  %351 = lshr i64 %350, 32
  store i64 %351, i64* %348, align 8
  %352 = load i64, i64* %RBP.i, align 8
  %353 = add i64 %352, -1052
  %354 = add i64 %347, 7
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RCX.i759, align 8
  %358 = add i64 %347, 9
  store i64 %358, i64* %3, align 8
  %359 = zext i32 %349 to i64
  %360 = sext i32 %356 to i64
  %361 = shl nuw i64 %351, 32
  %362 = or i64 %361, %359
  %363 = sdiv i64 %362, %360
  %364 = shl i64 %363, 32
  %365 = ashr exact i64 %364, 32
  %366 = icmp eq i64 %363, %365
  br i1 %366, label %369, label %367

; <label>:367:                                    ; preds = %block_.L_412b81
  %368 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %358, %struct.Memory* %MEMORY.1)
  %.pre41 = load i64, i64* %RAX.i861, align 8
  %.pre42 = load i64, i64* %3, align 8
  %.pre43 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit841

; <label>:369:                                    ; preds = %block_.L_412b81
  %370 = srem i64 %362, %360
  %371 = and i64 %363, 4294967295
  store i64 %371, i64* %RAX.i861, align 8
  %372 = and i64 %370, 4294967295
  store i64 %372, i64* %RDX.i863, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit841

routine_idivl__ecx.exit841:                       ; preds = %369, %367
  %373 = phi i64 [ %.pre43, %367 ], [ %352, %369 ]
  %374 = phi i64 [ %.pre42, %367 ], [ %358, %369 ]
  %375 = phi i64 [ %.pre41, %367 ], [ %371, %369 ]
  %376 = phi %struct.Memory* [ %368, %367 ], [ %MEMORY.1, %369 ]
  %377 = trunc i64 %375 to i32
  %378 = add i32 %377, -1
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RAX.i861, align 8
  %380 = icmp eq i32 %377, 0
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %14, align 1
  %382 = and i32 %378, 255
  %383 = tail call i32 @llvm.ctpop.i32(i32 %382)
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  %386 = xor i8 %385, 1
  store i8 %386, i8* %21, align 1
  %387 = xor i32 %378, %377
  %388 = lshr i32 %387, 4
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  store i8 %390, i8* %26, align 1
  %391 = icmp eq i32 %378, 0
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %29, align 1
  %393 = lshr i32 %378, 31
  %394 = trunc i32 %393 to i8
  store i8 %394, i8* %32, align 1
  %395 = lshr i32 %377, 31
  %396 = xor i32 %393, %395
  %397 = add nuw nsw i32 %396, %395
  %398 = icmp eq i32 %397, 2
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %38, align 1
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i835 = bitcast %union.anon* %400 to i32*
  %401 = getelementptr inbounds %union.anon, %union.anon* %400, i64 0, i32 0
  %402 = add i64 %373, -12
  %403 = add i64 %374, 7
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = zext i32 %405 to i64
  store i64 %406, i64* %401, align 8
  %407 = add i64 %373, -1068
  %408 = add i64 %374, 13
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  store i32 %378, i32* %409, align 4
  %410 = load i32, i32* %R8D.i835, align 4
  %411 = zext i32 %410 to i64
  %412 = load i64, i64* %3, align 8
  store i64 %411, i64* %RAX.i861, align 8
  %413 = sext i32 %410 to i64
  %414 = lshr i64 %413, 32
  store i64 %414, i64* %348, align 8
  %415 = load i32, i32* %ECX.i852.pre-phi, align 4
  %416 = add i64 %412, 6
  store i64 %416, i64* %3, align 8
  %417 = sext i32 %415 to i64
  %418 = shl nuw i64 %414, 32
  %419 = or i64 %418, %411
  %420 = sdiv i64 %419, %417
  %421 = shl i64 %420, 32
  %422 = ashr exact i64 %421, 32
  %423 = icmp eq i64 %420, %422
  br i1 %423, label %426, label %424

; <label>:424:                                    ; preds = %routine_idivl__ecx.exit841
  %425 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %416, %struct.Memory* %376)
  %.pre44 = load i64, i64* %RDX.i863, align 8
  %.pre45 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit824

; <label>:426:                                    ; preds = %routine_idivl__ecx.exit841
  %427 = srem i64 %419, %417
  %428 = and i64 %420, 4294967295
  store i64 %428, i64* %RAX.i861, align 8
  %429 = and i64 %427, 4294967295
  store i64 %429, i64* %RDX.i863, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit824

routine_idivl__ecx.exit824:                       ; preds = %426, %424
  %430 = phi i64 [ %.pre45, %424 ], [ %416, %426 ]
  %431 = phi i64 [ %.pre44, %424 ], [ %429, %426 ]
  %432 = phi %struct.Memory* [ %425, %424 ], [ %376, %426 ]
  %433 = trunc i64 %431 to i32
  %434 = add i32 %433, -1
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RDX.i863, align 8
  %436 = icmp eq i32 %433, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %14, align 1
  %438 = and i32 %434, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438)
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %21, align 1
  %443 = xor i32 %434, %433
  %444 = lshr i32 %443, 4
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  store i8 %446, i8* %26, align 1
  %447 = icmp eq i32 %434, 0
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %29, align 1
  %449 = lshr i32 %434, 31
  %450 = trunc i32 %449 to i8
  store i8 %450, i8* %32, align 1
  %451 = lshr i32 %433, 31
  %452 = xor i32 %449, %451
  %453 = add nuw nsw i32 %452, %451
  %454 = icmp eq i32 %453, 2
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %38, align 1
  %R9.i819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %456 = load i64, i64* %RBP.i, align 8
  %457 = add i64 %456, -1064
  %458 = add i64 %430, 10
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %457 to i64*
  %460 = load i64, i64* %459, align 8
  store i64 %460, i64* %R9.i819, align 8
  %461 = add i64 %456, -1072
  %462 = add i64 %430, 16
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i32*
  store i32 %434, i32* %463, align 4
  %464 = load i64, i64* %R9.i819, align 8
  %465 = load i64, i64* %3, align 8
  store i64 %464, i64* %RDX.i863, align 8
  %466 = load i64, i64* %RBP.i, align 8
  %467 = add i64 %466, -1068
  %468 = add i64 %465, 9
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RCX.i759, align 8
  %472 = add i64 %466, -1072
  %473 = add i64 %465, 16
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %401, align 8
  %477 = add i64 %465, 259251
  %478 = add i64 %465, 21
  %479 = load i64, i64* %6, align 8
  %480 = add i64 %479, -8
  %481 = inttoptr i64 %480 to i64*
  store i64 %478, i64* %481, align 8
  store i64 %480, i64* %6, align 8
  store i64 %477, i64* %3, align 8
  %call2_412bed = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %477, %struct.Memory* %432)
  %.pre46 = load i64, i64* %RBP.i, align 8
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_412bf2

block_.L_412bf2:                                  ; preds = %routine_idivl__ecx.exit824, %block_412b7c
  %ECX.i797.pre-phi = phi i32* [ %ECX.i852.pre-phi, %routine_idivl__ecx.exit824 ], [ %ECX.i871, %block_412b7c ]
  %RAX.i802.pre-phi = phi i64* [ %RAX.i861, %routine_idivl__ecx.exit824 ], [ %.pre84, %block_412b7c ]
  %.pre-phi = phi %union.anon* [ %332, %routine_idivl__ecx.exit824 ], [ %.pre83, %block_412b7c ]
  %482 = phi i64 [ %.pre47, %routine_idivl__ecx.exit824 ], [ %330, %block_412b7c ]
  %483 = phi i64 [ %.pre46, %routine_idivl__ecx.exit824 ], [ %277, %block_412b7c ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_412bed, %routine_idivl__ecx.exit824 ], [ %MEMORY.1, %block_412b7c ]
  %484 = add i64 %483, -8
  %485 = add i64 %482, 4
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i32*
  %487 = load i32, i32* %486, align 4
  %488 = sext i32 %487 to i64
  store i64 %488, i64* %RAX.i802.pre-phi, align 8
  %489 = add nsw i64 %488, 12099168
  %490 = add i64 %482, 12
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i8*
  %492 = load i8, i8* %491, align 1
  %493 = zext i8 %492 to i64
  store i64 %493, i64* %RCX.i759, align 8
  %494 = zext i8 %492 to i32
  %495 = add nsw i32 %494, -1
  %496 = icmp eq i8 %492, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %14, align 1
  %498 = and i32 %495, 255
  %499 = tail call i32 @llvm.ctpop.i32(i32 %498)
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  store i8 %502, i8* %21, align 1
  %503 = xor i32 %495, %494
  %504 = lshr i32 %503, 4
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  store i8 %506, i8* %26, align 1
  %507 = icmp eq i32 %495, 0
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %29, align 1
  %509 = lshr i32 %495, 31
  %510 = trunc i32 %509 to i8
  store i8 %510, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v92 = select i1 %507, i64 42, i64 21
  %511 = add i64 %482, %.v92
  store i64 %511, i64* %3, align 8
  br i1 %507, label %block_.L_412c1c, label %block_412c07

block_412c07:                                     ; preds = %block_.L_412bf2
  %512 = add i64 %511, 4
  store i64 %512, i64* %3, align 8
  %513 = load i32, i32* %486, align 4
  %514 = sext i32 %513 to i64
  store i64 %514, i64* %RAX.i802.pre-phi, align 8
  %515 = add nsw i64 %514, 12099168
  %516 = add i64 %511, 12
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i8*
  %518 = load i8, i8* %517, align 1
  %519 = zext i8 %518 to i64
  store i64 %519, i64* %RCX.i759, align 8
  %520 = zext i8 %518 to i32
  %521 = add nsw i32 %520, -2
  %522 = icmp ult i8 %518, 2
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %14, align 1
  %524 = and i32 %521, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %21, align 1
  %529 = xor i32 %521, %520
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %26, align 1
  %533 = icmp eq i32 %521, 0
  %534 = zext i1 %533 to i8
  store i8 %534, i8* %29, align 1
  %535 = lshr i32 %521, 31
  %536 = trunc i32 %535 to i8
  store i8 %536, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v93 = select i1 %533, i64 21, i64 26
  %537 = add i64 %511, %.v93
  store i64 %537, i64* %3, align 8
  br i1 %533, label %block_.L_412c1c, label %block_.L_412c21

block_.L_412c1c:                                  ; preds = %block_412c07, %block_.L_412bf2
  %538 = phi i64 [ %537, %block_412c07 ], [ %511, %block_.L_412bf2 ]
  %539 = add i64 %538, 118
  store i64 %539, i64* %3, align 8
  br label %block_.L_412c92

block_.L_412c21:                                  ; preds = %block_412c07
  %RDI.i784 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i784, align 8
  %RSI.i782 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 1983, i64* %RSI.i782, align 8
  %RDX.i780 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a524_type* @G__0x57a524 to i64), i64* %RDX.i780, align 8
  store i64 20, i64* %RAX.i802.pre-phi, align 8
  %540 = add i64 %537, 33
  store i64 %540, i64* %3, align 8
  %541 = load i32, i32* %486, align 4
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RCX.i759, align 8
  %EAX.i772 = bitcast %union.anon* %.pre-phi to i32*
  %543 = add i64 %483, -1076
  %544 = add i64 %537, 39
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to i32*
  store i32 20, i32* %545, align 4
  %546 = load i32, i32* %ECX.i797.pre-phi, align 4
  %547 = zext i32 %546 to i64
  %548 = load i64, i64* %3, align 8
  store i64 %547, i64* %RAX.i802.pre-phi, align 8
  %549 = load i64, i64* %RBP.i, align 8
  %550 = add i64 %549, -1088
  %551 = load i64, i64* %RDX.i780, align 8
  %552 = add i64 %548, 9
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %550 to i64*
  store i64 %551, i64* %553, align 8
  %554 = load i64, i64* %3, align 8
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %556 = load i32, i32* %EAX.i772, align 8
  %557 = sext i32 %556 to i64
  %558 = lshr i64 %557, 32
  store i64 %558, i64* %555, align 8
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -1076
  %561 = add i64 %554, 7
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RCX.i759, align 8
  %565 = add i64 %554, 9
  store i64 %565, i64* %3, align 8
  %566 = zext i32 %556 to i64
  %567 = sext i32 %563 to i64
  %568 = shl nuw i64 %558, 32
  %569 = or i64 %568, %566
  %570 = sdiv i64 %569, %567
  %571 = shl i64 %570, 32
  %572 = ashr exact i64 %571, 32
  %573 = icmp eq i64 %570, %572
  br i1 %573, label %576, label %574

; <label>:574:                                    ; preds = %block_.L_412c21
  %575 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %565, %struct.Memory* %MEMORY.3)
  %.pre48 = load i64, i64* %RAX.i802.pre-phi, align 8
  %.pre49 = load i64, i64* %3, align 8
  %.pre50 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit757

; <label>:576:                                    ; preds = %block_.L_412c21
  %577 = srem i64 %569, %567
  %578 = and i64 %570, 4294967295
  store i64 %578, i64* %RAX.i802.pre-phi, align 8
  %579 = and i64 %577, 4294967295
  store i64 %579, i64* %RDX.i780, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit757

routine_idivl__ecx.exit757:                       ; preds = %576, %574
  %580 = phi i64 [ %.pre50, %574 ], [ %559, %576 ]
  %581 = phi i64 [ %.pre49, %574 ], [ %565, %576 ]
  %582 = phi i64 [ %.pre48, %574 ], [ %578, %576 ]
  %583 = phi %struct.Memory* [ %575, %574 ], [ %MEMORY.3, %576 ]
  %584 = trunc i64 %582 to i32
  %585 = add i32 %584, -1
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RAX.i802.pre-phi, align 8
  %587 = icmp eq i32 %584, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %14, align 1
  %589 = and i32 %585, 255
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589)
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %21, align 1
  %594 = xor i32 %585, %584
  %595 = lshr i32 %594, 4
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  store i8 %597, i8* %26, align 1
  %598 = icmp eq i32 %585, 0
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %29, align 1
  %600 = lshr i32 %585, 31
  %601 = trunc i32 %600 to i8
  store i8 %601, i8* %32, align 1
  %602 = lshr i32 %584, 31
  %603 = xor i32 %600, %602
  %604 = add nuw nsw i32 %603, %602
  %605 = icmp eq i32 %604, 2
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %38, align 1
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i751 = bitcast %union.anon* %607 to i32*
  %608 = getelementptr inbounds %union.anon, %union.anon* %607, i64 0, i32 0
  %609 = add i64 %580, -8
  %610 = add i64 %581, 7
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i32*
  %612 = load i32, i32* %611, align 4
  %613 = zext i32 %612 to i64
  store i64 %613, i64* %608, align 8
  %614 = add i64 %580, -1092
  %615 = add i64 %581, 13
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  store i32 %585, i32* %616, align 4
  %617 = load i32, i32* %R8D.i751, align 4
  %618 = zext i32 %617 to i64
  %619 = load i64, i64* %3, align 8
  store i64 %618, i64* %RAX.i802.pre-phi, align 8
  %620 = add i64 %619, 4
  store i64 %620, i64* %3, align 8
  %621 = sext i32 %617 to i64
  %622 = lshr i64 %621, 32
  store i64 %622, i64* %555, align 8
  %623 = load i32, i32* %ECX.i797.pre-phi, align 4
  %624 = add i64 %619, 6
  store i64 %624, i64* %3, align 8
  %625 = sext i32 %623 to i64
  %626 = shl nuw i64 %622, 32
  %627 = or i64 %626, %618
  %628 = sdiv i64 %627, %625
  %629 = shl i64 %628, 32
  %630 = ashr exact i64 %629, 32
  %631 = icmp eq i64 %628, %630
  br i1 %631, label %634, label %632

; <label>:632:                                    ; preds = %routine_idivl__ecx.exit757
  %633 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %624, %struct.Memory* %583)
  %.pre51 = load i64, i64* %RDX.i780, align 8
  %.pre52 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit739

; <label>:634:                                    ; preds = %routine_idivl__ecx.exit757
  %635 = srem i64 %627, %625
  %636 = and i64 %628, 4294967295
  store i64 %636, i64* %RAX.i802.pre-phi, align 8
  %637 = and i64 %635, 4294967295
  store i64 %637, i64* %RDX.i780, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit739

routine_idivl__ecx.exit739:                       ; preds = %634, %632
  %638 = phi i64 [ %.pre52, %632 ], [ %624, %634 ]
  %639 = phi i64 [ %.pre51, %632 ], [ %637, %634 ]
  %640 = phi %struct.Memory* [ %633, %632 ], [ %583, %634 ]
  %641 = trunc i64 %639 to i32
  %642 = add i32 %641, -1
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RDX.i780, align 8
  %644 = icmp eq i32 %641, 0
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %14, align 1
  %646 = and i32 %642, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646)
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %21, align 1
  %651 = xor i32 %642, %641
  %652 = lshr i32 %651, 4
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  store i8 %654, i8* %26, align 1
  %655 = icmp eq i32 %642, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %29, align 1
  %657 = lshr i32 %642, 31
  %658 = trunc i32 %657 to i8
  store i8 %658, i8* %32, align 1
  %659 = lshr i32 %641, 31
  %660 = xor i32 %657, %659
  %661 = add nuw nsw i32 %660, %659
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %38, align 1
  %R9.i734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -1088
  %666 = add i64 %638, 10
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i64*
  %668 = load i64, i64* %667, align 8
  store i64 %668, i64* %R9.i734, align 8
  %669 = add i64 %664, -1096
  %670 = add i64 %638, 16
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i32*
  store i32 %642, i32* %671, align 4
  %672 = load i64, i64* %R9.i734, align 8
  %673 = load i64, i64* %3, align 8
  store i64 %672, i64* %RDX.i780, align 8
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -1092
  %676 = add i64 %673, 9
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  %678 = load i32, i32* %677, align 4
  %679 = zext i32 %678 to i64
  store i64 %679, i64* %RCX.i759, align 8
  %680 = add i64 %674, -1096
  %681 = add i64 %673, 16
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = zext i32 %683 to i64
  store i64 %684, i64* %608, align 8
  %685 = add i64 %673, 259091
  %686 = add i64 %673, 21
  %687 = load i64, i64* %6, align 8
  %688 = add i64 %687, -8
  %689 = inttoptr i64 %688 to i64*
  store i64 %686, i64* %689, align 8
  store i64 %688, i64* %6, align 8
  store i64 %685, i64* %3, align 8
  %call2_412c8d = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %685, %struct.Memory* %640)
  %.pre53 = load i64, i64* %RBP.i, align 8
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_412c92

block_.L_412c92:                                  ; preds = %routine_idivl__ecx.exit739, %block_.L_412c1c
  %690 = phi i64 [ %539, %block_.L_412c1c ], [ %.pre54, %routine_idivl__ecx.exit739 ]
  %691 = phi i64 [ %483, %block_.L_412c1c ], [ %.pre53, %routine_idivl__ecx.exit739 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.3, %block_.L_412c1c ], [ %call2_412c8d, %routine_idivl__ecx.exit739 ]
  %692 = add i64 %691, -12
  %693 = add i64 %690, 4
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = sext i32 %695 to i64
  store i64 %696, i64* %RAX.i802.pre-phi, align 8
  %697 = add nsw i64 %696, 12099168
  %698 = add i64 %690, 12
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i8*
  %700 = load i8, i8* %699, align 1
  %701 = zext i8 %700 to i64
  store i64 %701, i64* %RCX.i759, align 8
  %702 = zext i8 %700 to i32
  %703 = add nsw i32 %702, -1
  %704 = icmp eq i8 %700, 0
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %14, align 1
  %706 = and i32 %703, 255
  %707 = tail call i32 @llvm.ctpop.i32(i32 %706)
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  store i8 %710, i8* %21, align 1
  %711 = xor i32 %703, %702
  %712 = lshr i32 %711, 4
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  store i8 %714, i8* %26, align 1
  %715 = icmp eq i32 %703, 0
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %29, align 1
  %717 = lshr i32 %703, 31
  %718 = trunc i32 %717 to i8
  store i8 %718, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v94 = select i1 %715, i64 42, i64 21
  %719 = add i64 %690, %.v94
  store i64 %719, i64* %3, align 8
  br i1 %715, label %block_.L_412cbc, label %block_412ca7

block_412ca7:                                     ; preds = %block_.L_412c92
  %720 = add i64 %719, 4
  store i64 %720, i64* %3, align 8
  %721 = load i32, i32* %694, align 4
  %722 = sext i32 %721 to i64
  store i64 %722, i64* %RAX.i802.pre-phi, align 8
  %723 = add nsw i64 %722, 12099168
  %724 = add i64 %719, 12
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to i8*
  %726 = load i8, i8* %725, align 1
  %727 = zext i8 %726 to i64
  store i64 %727, i64* %RCX.i759, align 8
  %728 = zext i8 %726 to i32
  %729 = add nsw i32 %728, -2
  %730 = icmp ult i8 %726, 2
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %14, align 1
  %732 = and i32 %729, 255
  %733 = tail call i32 @llvm.ctpop.i32(i32 %732)
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  store i8 %736, i8* %21, align 1
  %737 = xor i32 %729, %728
  %738 = lshr i32 %737, 4
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  store i8 %740, i8* %26, align 1
  %741 = icmp eq i32 %729, 0
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %29, align 1
  %743 = lshr i32 %729, 31
  %744 = trunc i32 %743 to i8
  store i8 %744, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v95 = select i1 %741, i64 21, i64 26
  %745 = add i64 %719, %.v95
  store i64 %745, i64* %3, align 8
  br i1 %741, label %block_.L_412cbc, label %block_.L_412cc1

block_.L_412cbc:                                  ; preds = %block_412ca7, %block_.L_412c92
  %746 = phi i64 [ %745, %block_412ca7 ], [ %719, %block_.L_412c92 ]
  %747 = add i64 %746, 118
  store i64 %747, i64* %3, align 8
  br label %block_.L_412d32

block_.L_412cc1:                                  ; preds = %block_412ca7
  %RDI.i699 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i699, align 8
  %RSI.i697 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 1984, i64* %RSI.i697, align 8
  %RDX.i695 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a53a_type* @G__0x57a53a to i64), i64* %RDX.i695, align 8
  store i64 20, i64* %RAX.i802.pre-phi, align 8
  %748 = add i64 %745, 33
  store i64 %748, i64* %3, align 8
  %749 = load i32, i32* %694, align 4
  %750 = zext i32 %749 to i64
  store i64 %750, i64* %RCX.i759, align 8
  %EAX.i687 = bitcast %union.anon* %.pre-phi to i32*
  %751 = add i64 %691, -1100
  %752 = add i64 %745, 39
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i32*
  store i32 20, i32* %753, align 4
  %754 = load i32, i32* %ECX.i797.pre-phi, align 4
  %755 = zext i32 %754 to i64
  %756 = load i64, i64* %3, align 8
  store i64 %755, i64* %RAX.i802.pre-phi, align 8
  %757 = load i64, i64* %RBP.i, align 8
  %758 = add i64 %757, -1112
  %759 = load i64, i64* %RDX.i695, align 8
  %760 = add i64 %756, 9
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %758 to i64*
  store i64 %759, i64* %761, align 8
  %762 = load i64, i64* %3, align 8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %764 = load i32, i32* %EAX.i687, align 8
  %765 = sext i32 %764 to i64
  %766 = lshr i64 %765, 32
  store i64 %766, i64* %763, align 8
  %767 = load i64, i64* %RBP.i, align 8
  %768 = add i64 %767, -1100
  %769 = add i64 %762, 7
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i32*
  %771 = load i32, i32* %770, align 4
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %RCX.i759, align 8
  %773 = add i64 %762, 9
  store i64 %773, i64* %3, align 8
  %774 = zext i32 %764 to i64
  %775 = sext i32 %771 to i64
  %776 = shl nuw i64 %766, 32
  %777 = or i64 %776, %774
  %778 = sdiv i64 %777, %775
  %779 = shl i64 %778, 32
  %780 = ashr exact i64 %779, 32
  %781 = icmp eq i64 %778, %780
  br i1 %781, label %784, label %782

; <label>:782:                                    ; preds = %block_.L_412cc1
  %783 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %773, %struct.Memory* %MEMORY.5)
  %.pre55 = load i64, i64* %RAX.i802.pre-phi, align 8
  %.pre56 = load i64, i64* %3, align 8
  %.pre57 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit672

; <label>:784:                                    ; preds = %block_.L_412cc1
  %785 = srem i64 %777, %775
  %786 = and i64 %778, 4294967295
  store i64 %786, i64* %RAX.i802.pre-phi, align 8
  %787 = and i64 %785, 4294967295
  store i64 %787, i64* %RDX.i695, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit672

routine_idivl__ecx.exit672:                       ; preds = %784, %782
  %788 = phi i64 [ %.pre57, %782 ], [ %767, %784 ]
  %789 = phi i64 [ %.pre56, %782 ], [ %773, %784 ]
  %790 = phi i64 [ %.pre55, %782 ], [ %786, %784 ]
  %791 = phi %struct.Memory* [ %783, %782 ], [ %MEMORY.5, %784 ]
  %792 = trunc i64 %790 to i32
  %793 = add i32 %792, -1
  %794 = zext i32 %793 to i64
  store i64 %794, i64* %RAX.i802.pre-phi, align 8
  %795 = icmp eq i32 %792, 0
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %14, align 1
  %797 = and i32 %793, 255
  %798 = tail call i32 @llvm.ctpop.i32(i32 %797)
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = xor i8 %800, 1
  store i8 %801, i8* %21, align 1
  %802 = xor i32 %793, %792
  %803 = lshr i32 %802, 4
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  store i8 %805, i8* %26, align 1
  %806 = icmp eq i32 %793, 0
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %29, align 1
  %808 = lshr i32 %793, 31
  %809 = trunc i32 %808 to i8
  store i8 %809, i8* %32, align 1
  %810 = lshr i32 %792, 31
  %811 = xor i32 %808, %810
  %812 = add nuw nsw i32 %811, %810
  %813 = icmp eq i32 %812, 2
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %38, align 1
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i666 = bitcast %union.anon* %815 to i32*
  %816 = getelementptr inbounds %union.anon, %union.anon* %815, i64 0, i32 0
  %817 = add i64 %788, -12
  %818 = add i64 %789, 7
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i32*
  %820 = load i32, i32* %819, align 4
  %821 = zext i32 %820 to i64
  store i64 %821, i64* %816, align 8
  %822 = add i64 %788, -1116
  %823 = add i64 %789, 13
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i32*
  store i32 %793, i32* %824, align 4
  %825 = load i32, i32* %R8D.i666, align 4
  %826 = zext i32 %825 to i64
  %827 = load i64, i64* %3, align 8
  store i64 %826, i64* %RAX.i802.pre-phi, align 8
  %828 = add i64 %827, 4
  store i64 %828, i64* %3, align 8
  %829 = sext i32 %825 to i64
  %830 = lshr i64 %829, 32
  store i64 %830, i64* %763, align 8
  %831 = load i32, i32* %ECX.i797.pre-phi, align 4
  %832 = add i64 %827, 6
  store i64 %832, i64* %3, align 8
  %833 = sext i32 %831 to i64
  %834 = shl nuw i64 %830, 32
  %835 = or i64 %834, %826
  %836 = sdiv i64 %835, %833
  %837 = shl i64 %836, 32
  %838 = ashr exact i64 %837, 32
  %839 = icmp eq i64 %836, %838
  br i1 %839, label %842, label %840

; <label>:840:                                    ; preds = %routine_idivl__ecx.exit672
  %841 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %832, %struct.Memory* %791)
  %.pre58 = load i64, i64* %RDX.i695, align 8
  %.pre59 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit655

; <label>:842:                                    ; preds = %routine_idivl__ecx.exit672
  %843 = srem i64 %835, %833
  %844 = and i64 %836, 4294967295
  store i64 %844, i64* %RAX.i802.pre-phi, align 8
  %845 = and i64 %843, 4294967295
  store i64 %845, i64* %RDX.i695, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit655

routine_idivl__ecx.exit655:                       ; preds = %842, %840
  %846 = phi i64 [ %.pre59, %840 ], [ %832, %842 ]
  %847 = phi i64 [ %.pre58, %840 ], [ %845, %842 ]
  %848 = phi %struct.Memory* [ %841, %840 ], [ %791, %842 ]
  %849 = trunc i64 %847 to i32
  %850 = add i32 %849, -1
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RDX.i695, align 8
  %852 = icmp eq i32 %849, 0
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %14, align 1
  %854 = and i32 %850, 255
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %21, align 1
  %859 = xor i32 %850, %849
  %860 = lshr i32 %859, 4
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %26, align 1
  %863 = icmp eq i32 %850, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %29, align 1
  %865 = lshr i32 %850, 31
  %866 = trunc i32 %865 to i8
  store i8 %866, i8* %32, align 1
  %867 = lshr i32 %849, 31
  %868 = xor i32 %865, %867
  %869 = add nuw nsw i32 %868, %867
  %870 = icmp eq i32 %869, 2
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %38, align 1
  %R9.i650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %872 = load i64, i64* %RBP.i, align 8
  %873 = add i64 %872, -1112
  %874 = add i64 %846, 10
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i64*
  %876 = load i64, i64* %875, align 8
  store i64 %876, i64* %R9.i650, align 8
  %877 = add i64 %872, -1120
  %878 = add i64 %846, 16
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i32*
  store i32 %850, i32* %879, align 4
  %880 = load i64, i64* %R9.i650, align 8
  %881 = load i64, i64* %3, align 8
  store i64 %880, i64* %RDX.i695, align 8
  %882 = load i64, i64* %RBP.i, align 8
  %883 = add i64 %882, -1116
  %884 = add i64 %881, 9
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = zext i32 %886 to i64
  store i64 %887, i64* %RCX.i759, align 8
  %888 = add i64 %882, -1120
  %889 = add i64 %881, 16
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i32*
  %891 = load i32, i32* %890, align 4
  %892 = zext i32 %891 to i64
  store i64 %892, i64* %816, align 8
  %893 = add i64 %881, 258931
  %894 = add i64 %881, 21
  %895 = load i64, i64* %6, align 8
  %896 = add i64 %895, -8
  %897 = inttoptr i64 %896 to i64*
  store i64 %894, i64* %897, align 8
  store i64 %896, i64* %6, align 8
  store i64 %893, i64* %3, align 8
  %call2_412d2d = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %893, %struct.Memory* %848)
  %.pre60 = load i64, i64* %RBP.i, align 8
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_412d32

block_.L_412d32:                                  ; preds = %routine_idivl__ecx.exit655, %block_.L_412cbc
  %898 = phi i64 [ %747, %block_.L_412cbc ], [ %.pre61, %routine_idivl__ecx.exit655 ]
  %899 = phi i64 [ %691, %block_.L_412cbc ], [ %.pre60, %routine_idivl__ecx.exit655 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.5, %block_.L_412cbc ], [ %call2_412d2d, %routine_idivl__ecx.exit655 ]
  %900 = add i64 %899, -24
  %901 = add i64 %898, 5
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i64*
  %903 = load i64, i64* %902, align 8
  store i8 0, i8* %14, align 1
  %904 = trunc i64 %903 to i32
  %905 = and i32 %904, 255
  %906 = tail call i32 @llvm.ctpop.i32(i32 %905)
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = xor i8 %908, 1
  store i8 %909, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %910 = icmp eq i64 %903, 0
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %29, align 1
  %912 = lshr i64 %903, 63
  %913 = trunc i64 %912 to i8
  store i8 %913, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v96 = select i1 %910, i64 16, i64 11
  %914 = add i64 %898, %.v96
  store i64 %914, i64* %3, align 8
  br i1 %910, label %block_.L_412d42, label %block_412d3d

block_412d3d:                                     ; preds = %block_.L_412d32
  %915 = add i64 %914, 118
  store i64 %915, i64* %3, align 8
  %.pre85 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %.pre86 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  br label %block_.L_412db3

block_.L_412d42:                                  ; preds = %block_.L_412d32
  %RDI.i630 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i630, align 8
  %RSI.i628 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 1985, i64* %RSI.i628, align 8
  %RDX.i626 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a4e7_type* @G__0x57a4e7 to i64), i64* %RDX.i626, align 8
  store i64 20, i64* %RAX.i802.pre-phi, align 8
  %916 = add i64 %899, -8
  %917 = add i64 %914, 33
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i32*
  %919 = load i32, i32* %918, align 4
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RCX.i759, align 8
  %EAX.i618 = bitcast %union.anon* %.pre-phi to i32*
  %921 = add i64 %899, -1124
  %922 = add i64 %914, 39
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i32*
  store i32 20, i32* %923, align 4
  %924 = load i32, i32* %ECX.i797.pre-phi, align 4
  %925 = zext i32 %924 to i64
  %926 = load i64, i64* %3, align 8
  store i64 %925, i64* %RAX.i802.pre-phi, align 8
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -1136
  %929 = load i64, i64* %RDX.i626, align 8
  %930 = add i64 %926, 9
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %928 to i64*
  store i64 %929, i64* %931, align 8
  %932 = load i64, i64* %3, align 8
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %934 = load i32, i32* %EAX.i618, align 8
  %935 = sext i32 %934 to i64
  %936 = lshr i64 %935, 32
  store i64 %936, i64* %933, align 8
  %937 = load i64, i64* %RBP.i, align 8
  %938 = add i64 %937, -1124
  %939 = add i64 %932, 7
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RCX.i759, align 8
  %943 = add i64 %932, 9
  store i64 %943, i64* %3, align 8
  %944 = zext i32 %934 to i64
  %945 = sext i32 %941 to i64
  %946 = shl nuw i64 %936, 32
  %947 = or i64 %946, %944
  %948 = sdiv i64 %947, %945
  %949 = shl i64 %948, 32
  %950 = ashr exact i64 %949, 32
  %951 = icmp eq i64 %948, %950
  br i1 %951, label %954, label %952

; <label>:952:                                    ; preds = %block_.L_412d42
  %953 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %943, %struct.Memory* %MEMORY.7)
  %.pre62 = load i64, i64* %RAX.i802.pre-phi, align 8
  %.pre63 = load i64, i64* %3, align 8
  %.pre64 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit604

; <label>:954:                                    ; preds = %block_.L_412d42
  %955 = srem i64 %947, %945
  %956 = and i64 %948, 4294967295
  store i64 %956, i64* %RAX.i802.pre-phi, align 8
  %957 = and i64 %955, 4294967295
  store i64 %957, i64* %RDX.i626, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit604

routine_idivl__ecx.exit604:                       ; preds = %954, %952
  %958 = phi i64 [ %.pre64, %952 ], [ %937, %954 ]
  %959 = phi i64 [ %.pre63, %952 ], [ %943, %954 ]
  %960 = phi i64 [ %.pre62, %952 ], [ %956, %954 ]
  %961 = phi %struct.Memory* [ %953, %952 ], [ %MEMORY.7, %954 ]
  %962 = trunc i64 %960 to i32
  %963 = add i32 %962, -1
  %964 = zext i32 %963 to i64
  store i64 %964, i64* %RAX.i802.pre-phi, align 8
  %965 = icmp eq i32 %962, 0
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %14, align 1
  %967 = and i32 %963, 255
  %968 = tail call i32 @llvm.ctpop.i32(i32 %967)
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  %971 = xor i8 %970, 1
  store i8 %971, i8* %21, align 1
  %972 = xor i32 %963, %962
  %973 = lshr i32 %972, 4
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  store i8 %975, i8* %26, align 1
  %976 = icmp eq i32 %963, 0
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %29, align 1
  %978 = lshr i32 %963, 31
  %979 = trunc i32 %978 to i8
  store i8 %979, i8* %32, align 1
  %980 = lshr i32 %962, 31
  %981 = xor i32 %978, %980
  %982 = add nuw nsw i32 %981, %980
  %983 = icmp eq i32 %982, 2
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %38, align 1
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i598 = bitcast %union.anon* %985 to i32*
  %986 = getelementptr inbounds %union.anon, %union.anon* %985, i64 0, i32 0
  %987 = add i64 %958, -8
  %988 = add i64 %959, 7
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %986, align 8
  %992 = add i64 %958, -1140
  %993 = add i64 %959, 13
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i32*
  store i32 %963, i32* %994, align 4
  %995 = load i32, i32* %R8D.i598, align 4
  %996 = zext i32 %995 to i64
  %997 = load i64, i64* %3, align 8
  store i64 %996, i64* %RAX.i802.pre-phi, align 8
  %998 = add i64 %997, 4
  store i64 %998, i64* %3, align 8
  %999 = sext i32 %995 to i64
  %1000 = lshr i64 %999, 32
  store i64 %1000, i64* %933, align 8
  %1001 = load i32, i32* %ECX.i797.pre-phi, align 4
  %1002 = add i64 %997, 6
  store i64 %1002, i64* %3, align 8
  %1003 = sext i32 %1001 to i64
  %1004 = shl nuw i64 %1000, 32
  %1005 = or i64 %1004, %996
  %1006 = sdiv i64 %1005, %1003
  %1007 = shl i64 %1006, 32
  %1008 = ashr exact i64 %1007, 32
  %1009 = icmp eq i64 %1006, %1008
  br i1 %1009, label %1012, label %1010

; <label>:1010:                                   ; preds = %routine_idivl__ecx.exit604
  %1011 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1002, %struct.Memory* %961)
  %.pre65 = load i64, i64* %RDX.i626, align 8
  %.pre66 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:1012:                                   ; preds = %routine_idivl__ecx.exit604
  %1013 = srem i64 %1005, %1003
  %1014 = and i64 %1006, 4294967295
  store i64 %1014, i64* %RAX.i802.pre-phi, align 8
  %1015 = and i64 %1013, 4294967295
  store i64 %1015, i64* %RDX.i626, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1012, %1010
  %1016 = phi i64 [ %.pre66, %1010 ], [ %1002, %1012 ]
  %1017 = phi i64 [ %.pre65, %1010 ], [ %1015, %1012 ]
  %1018 = phi %struct.Memory* [ %1011, %1010 ], [ %961, %1012 ]
  %1019 = trunc i64 %1017 to i32
  %1020 = add i32 %1019, -1
  %1021 = zext i32 %1020 to i64
  store i64 %1021, i64* %RDX.i626, align 8
  %1022 = icmp eq i32 %1019, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %14, align 1
  %1024 = and i32 %1020, 255
  %1025 = tail call i32 @llvm.ctpop.i32(i32 %1024)
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  %1028 = xor i8 %1027, 1
  store i8 %1028, i8* %21, align 1
  %1029 = xor i32 %1020, %1019
  %1030 = lshr i32 %1029, 4
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  store i8 %1032, i8* %26, align 1
  %1033 = icmp eq i32 %1020, 0
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %29, align 1
  %1035 = lshr i32 %1020, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %32, align 1
  %1037 = lshr i32 %1019, 31
  %1038 = xor i32 %1035, %1037
  %1039 = add nuw nsw i32 %1038, %1037
  %1040 = icmp eq i32 %1039, 2
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %38, align 1
  %R9.i583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1042 = load i64, i64* %RBP.i, align 8
  %1043 = add i64 %1042, -1136
  %1044 = add i64 %1016, 10
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i64*
  %1046 = load i64, i64* %1045, align 8
  store i64 %1046, i64* %R9.i583, align 8
  %1047 = add i64 %1042, -1144
  %1048 = add i64 %1016, 16
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i32*
  store i32 %1020, i32* %1049, align 4
  %1050 = load i64, i64* %R9.i583, align 8
  %1051 = load i64, i64* %3, align 8
  store i64 %1050, i64* %RDX.i626, align 8
  %1052 = load i64, i64* %RBP.i, align 8
  %1053 = add i64 %1052, -1140
  %1054 = add i64 %1051, 9
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  %1056 = load i32, i32* %1055, align 4
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RCX.i759, align 8
  %1058 = add i64 %1052, -1144
  %1059 = add i64 %1051, 16
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to i32*
  %1061 = load i32, i32* %1060, align 4
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %986, align 8
  %1063 = add i64 %1051, 258802
  %1064 = add i64 %1051, 21
  %1065 = load i64, i64* %6, align 8
  %1066 = add i64 %1065, -8
  %1067 = inttoptr i64 %1066 to i64*
  store i64 %1064, i64* %1067, align 8
  store i64 %1066, i64* %6, align 8
  store i64 %1063, i64* %3, align 8
  %call2_412dae = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1063, %struct.Memory* %1018)
  %.pre67 = load i64, i64* %3, align 8
  %.pre68 = load i64, i64* %RBP.i, align 8
  br label %block_.L_412db3

block_.L_412db3:                                  ; preds = %routine_idivl__ecx.exit, %block_412d3d
  %RSI.i553.pre-phi = phi i64* [ %RSI.i628, %routine_idivl__ecx.exit ], [ %.pre86, %block_412d3d ]
  %RDX.i564.pre-phi = phi i64* [ %RDX.i626, %routine_idivl__ecx.exit ], [ %.pre85, %block_412d3d ]
  %1068 = phi i64 [ %.pre68, %routine_idivl__ecx.exit ], [ %899, %block_412d3d ]
  %1069 = phi i64 [ %.pre67, %routine_idivl__ecx.exit ], [ %915, %block_412d3d ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_412dae, %routine_idivl__ecx.exit ], [ %MEMORY.7, %block_412d3d ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i802.pre-phi, align 8
  %1070 = add i64 %1068, -8
  %1071 = add i64 %1069, 14
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = sext i32 %1073 to i64
  store i64 %1074, i64* %RCX.i759, align 8
  %1075 = shl nsw i64 %1074, 2
  %1076 = add nsw i64 %1075, 11187184
  %1077 = add i64 %1069, 21
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i32*
  %1079 = load i32, i32* %1078, align 4
  %1080 = zext i32 %1079 to i64
  store i64 %1080, i64* %RDX.i564.pre-phi, align 8
  %1081 = add i64 %1068, -1020
  %1082 = add i64 %1069, 27
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  store i32 %1079, i32* %1083, align 4
  %1084 = load i64, i64* %RBP.i, align 8
  %1085 = add i64 %1084, -1020
  %1086 = load i64, i64* %3, align 8
  %1087 = add i64 %1086, 7
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1085 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = sext i32 %1089 to i64
  %1091 = mul nsw i64 %1090, 744
  store i64 %1091, i64* %RCX.i759, align 8
  %1092 = lshr i64 %1091, 63
  %1093 = load i64, i64* %RAX.i802.pre-phi, align 8
  %1094 = add i64 %1091, %1093
  store i64 %1094, i64* %RSI.i553.pre-phi, align 8
  %1095 = icmp ult i64 %1094, %1093
  %1096 = icmp ult i64 %1094, %1091
  %1097 = or i1 %1095, %1096
  %1098 = zext i1 %1097 to i8
  store i8 %1098, i8* %14, align 1
  %1099 = trunc i64 %1094 to i32
  %1100 = and i32 %1099, 255
  %1101 = tail call i32 @llvm.ctpop.i32(i32 %1100)
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  store i8 %1104, i8* %21, align 1
  %1105 = xor i64 %1091, %1093
  %1106 = xor i64 %1105, %1094
  %1107 = lshr i64 %1106, 4
  %1108 = trunc i64 %1107 to i8
  %1109 = and i8 %1108, 1
  store i8 %1109, i8* %26, align 1
  %1110 = icmp eq i64 %1094, 0
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %29, align 1
  %1112 = lshr i64 %1094, 63
  %1113 = trunc i64 %1112 to i8
  store i8 %1113, i8* %32, align 1
  %1114 = lshr i64 %1093, 63
  %1115 = xor i64 %1112, %1114
  %1116 = xor i64 %1112, %1092
  %1117 = add nuw nsw i64 %1115, %1116
  %1118 = icmp eq i64 %1117, 2
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %38, align 1
  %1120 = add i64 %1094, 12
  %1121 = add i64 %1086, 23
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = zext i32 %1123 to i64
  store i64 %1124, i64* %RDX.i564.pre-phi, align 8
  %1125 = add i64 %1084, -1004
  %1126 = add i64 %1086, 29
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1125 to i32*
  store i32 %1123, i32* %1127, align 4
  %1128 = load i64, i64* %RBP.i, align 8
  %1129 = add i64 %1128, -1004
  %1130 = load i64, i64* %3, align 8
  %1131 = add i64 %1130, 6
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1129 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = zext i32 %1133 to i64
  store i64 %1134, i64* %RDX.i564.pre-phi, align 8
  %1135 = add i64 %1128, -12
  %1136 = add i64 %1130, 10
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i32*
  %1138 = load i32, i32* %1137, align 4
  %1139 = sext i32 %1138 to i64
  store i64 %1139, i64* %RCX.i759, align 8
  %1140 = shl nsw i64 %1139, 2
  %1141 = add nsw i64 %1140, 11187184
  %1142 = add i64 %1130, 18
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i32*
  %1144 = load i32, i32* %1143, align 4
  %1145 = sext i32 %1144 to i64
  %1146 = mul nsw i64 %1145, 744
  store i64 %1146, i64* %RCX.i759, align 8
  %1147 = lshr i64 %1146, 63
  %1148 = load i64, i64* %RAX.i802.pre-phi, align 8
  %1149 = add i64 %1146, %1148
  store i64 %1149, i64* %RAX.i802.pre-phi, align 8
  %1150 = icmp ult i64 %1149, %1148
  %1151 = icmp ult i64 %1149, %1146
  %1152 = or i1 %1150, %1151
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %14, align 1
  %1154 = trunc i64 %1149 to i32
  %1155 = and i32 %1154, 255
  %1156 = tail call i32 @llvm.ctpop.i32(i32 %1155)
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = xor i8 %1158, 1
  store i8 %1159, i8* %21, align 1
  %1160 = xor i64 %1146, %1148
  %1161 = xor i64 %1160, %1149
  %1162 = lshr i64 %1161, 4
  %1163 = trunc i64 %1162 to i8
  %1164 = and i8 %1163, 1
  store i8 %1164, i8* %26, align 1
  %1165 = icmp eq i64 %1149, 0
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %29, align 1
  %1167 = lshr i64 %1149, 63
  %1168 = trunc i64 %1167 to i8
  store i8 %1168, i8* %32, align 1
  %1169 = lshr i64 %1148, 63
  %1170 = xor i64 %1167, %1169
  %1171 = xor i64 %1167, %1147
  %1172 = add nuw nsw i64 %1170, %1171
  %1173 = icmp eq i64 %1172, 2
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %38, align 1
  %1175 = add i64 %1149, 12
  %1176 = add i64 %1130, 31
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = sub i32 %1133, %1178
  %1180 = icmp ult i32 %1133, %1178
  %1181 = zext i1 %1180 to i8
  store i8 %1181, i8* %14, align 1
  %1182 = and i32 %1179, 255
  %1183 = tail call i32 @llvm.ctpop.i32(i32 %1182)
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  store i8 %1186, i8* %21, align 1
  %1187 = xor i32 %1178, %1133
  %1188 = xor i32 %1187, %1179
  %1189 = lshr i32 %1188, 4
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  store i8 %1191, i8* %26, align 1
  %1192 = icmp eq i32 %1179, 0
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %29, align 1
  %1194 = lshr i32 %1179, 31
  %1195 = trunc i32 %1194 to i8
  store i8 %1195, i8* %32, align 1
  %1196 = lshr i32 %1133, 31
  %1197 = lshr i32 %1178, 31
  %1198 = xor i32 %1197, %1196
  %1199 = xor i32 %1194, %1196
  %1200 = add nuw nsw i32 %1199, %1198
  %1201 = icmp eq i32 %1200, 2
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %38, align 1
  %1203 = icmp ne i8 %1195, 0
  %1204 = xor i1 %1203, %1201
  %1205 = or i1 %1192, %1204
  %.v97 = select i1 %1205, i64 114, i64 37
  %1206 = add i64 %1130, %.v97
  store i64 %1206, i64* %3, align 8
  br i1 %1205, label %block_.L_412e5d, label %block_412e10

block_412e10:                                     ; preds = %block_.L_412db3
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i802.pre-phi, align 8
  %1207 = load i64, i64* %RBP.i, align 8
  %1208 = add i64 %1207, -12
  %1209 = add i64 %1206, 14
  store i64 %1209, i64* %3, align 8
  %1210 = inttoptr i64 %1208 to i32*
  %1211 = load i32, i32* %1210, align 4
  %1212 = sext i32 %1211 to i64
  store i64 %1212, i64* %RCX.i759, align 8
  %1213 = shl nsw i64 %1212, 2
  %1214 = add nsw i64 %1213, 11187184
  %1215 = add i64 %1206, 21
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = zext i32 %1217 to i64
  store i64 %1218, i64* %RDX.i564.pre-phi, align 8
  %1219 = add i64 %1207, -1020
  %1220 = add i64 %1206, 27
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  store i32 %1217, i32* %1221, align 4
  %1222 = load i64, i64* %RBP.i, align 8
  %1223 = add i64 %1222, -1020
  %1224 = load i64, i64* %3, align 8
  %1225 = add i64 %1224, 7
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1223 to i32*
  %1227 = load i32, i32* %1226, align 4
  %1228 = sext i32 %1227 to i64
  %1229 = mul nsw i64 %1228, 744
  store i64 %1229, i64* %RCX.i759, align 8
  %1230 = lshr i64 %1229, 63
  %1231 = load i64, i64* %RAX.i802.pre-phi, align 8
  %1232 = add i64 %1229, %1231
  store i64 %1232, i64* %RAX.i802.pre-phi, align 8
  %1233 = icmp ult i64 %1232, %1231
  %1234 = icmp ult i64 %1232, %1229
  %1235 = or i1 %1233, %1234
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %14, align 1
  %1237 = trunc i64 %1232 to i32
  %1238 = and i32 %1237, 255
  %1239 = tail call i32 @llvm.ctpop.i32(i32 %1238)
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %21, align 1
  %1243 = xor i64 %1229, %1231
  %1244 = xor i64 %1243, %1232
  %1245 = lshr i64 %1244, 4
  %1246 = trunc i64 %1245 to i8
  %1247 = and i8 %1246, 1
  store i8 %1247, i8* %26, align 1
  %1248 = icmp eq i64 %1232, 0
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %29, align 1
  %1250 = lshr i64 %1232, 63
  %1251 = trunc i64 %1250 to i8
  store i8 %1251, i8* %32, align 1
  %1252 = lshr i64 %1231, 63
  %1253 = xor i64 %1250, %1252
  %1254 = xor i64 %1250, %1230
  %1255 = add nuw nsw i64 %1253, %1254
  %1256 = icmp eq i64 %1255, 2
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %38, align 1
  %1258 = add i64 %1232, 12
  %1259 = add i64 %1224, 20
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = zext i32 %1261 to i64
  store i64 %1262, i64* %RDX.i564.pre-phi, align 8
  %1263 = add i64 %1222, -1004
  %1264 = add i64 %1224, 26
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  store i32 %1261, i32* %1265, align 4
  %1266 = load i64, i64* %RBP.i, align 8
  %1267 = add i64 %1266, -8
  %1268 = load i64, i64* %3, align 8
  %1269 = add i64 %1268, 3
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1267 to i32*
  %1271 = load i32, i32* %1270, align 4
  %1272 = zext i32 %1271 to i64
  store i64 %1272, i64* %RDX.i564.pre-phi, align 8
  %1273 = add i64 %1266, -1024
  %1274 = add i64 %1268, 9
  store i64 %1274, i64* %3, align 8
  %1275 = inttoptr i64 %1273 to i32*
  store i32 %1271, i32* %1275, align 4
  %1276 = load i64, i64* %RBP.i, align 8
  %1277 = add i64 %1276, -12
  %1278 = load i64, i64* %3, align 8
  %1279 = add i64 %1278, 3
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1277 to i32*
  %1281 = load i32, i32* %1280, align 4
  %1282 = zext i32 %1281 to i64
  store i64 %1282, i64* %RDX.i564.pre-phi, align 8
  %1283 = add i64 %1276, -8
  %1284 = add i64 %1278, 6
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i32*
  store i32 %1281, i32* %1285, align 4
  %1286 = load i64, i64* %RBP.i, align 8
  %1287 = add i64 %1286, -1024
  %1288 = load i64, i64* %3, align 8
  %1289 = add i64 %1288, 6
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1287 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RDX.i564.pre-phi, align 8
  %1293 = add i64 %1286, -12
  %1294 = add i64 %1288, 9
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  store i32 %1291, i32* %1295, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_412e5d

block_.L_412e5d:                                  ; preds = %block_412e10, %block_.L_412db3
  %1296 = phi i64 [ %.pre69, %block_412e10 ], [ %1206, %block_.L_412db3 ]
  %1297 = load i64, i64* %RBP.i, align 8
  %1298 = add i64 %1297, -1004
  %1299 = add i64 %1296, 7
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1298 to i32*
  %1301 = load i32, i32* %1300, align 4
  %1302 = add i32 %1301, -20
  %1303 = icmp ult i32 %1301, 20
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %14, align 1
  %1305 = and i32 %1302, 255
  %1306 = tail call i32 @llvm.ctpop.i32(i32 %1305)
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = xor i8 %1308, 1
  store i8 %1309, i8* %21, align 1
  %1310 = xor i32 %1301, 16
  %1311 = xor i32 %1310, %1302
  %1312 = lshr i32 %1311, 4
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  store i8 %1314, i8* %26, align 1
  %1315 = icmp eq i32 %1302, 0
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %29, align 1
  %1317 = lshr i32 %1302, 31
  %1318 = trunc i32 %1317 to i8
  store i8 %1318, i8* %32, align 1
  %1319 = lshr i32 %1301, 31
  %1320 = xor i32 %1317, %1319
  %1321 = add nuw nsw i32 %1320, %1319
  %1322 = icmp eq i32 %1321, 2
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %38, align 1
  %1324 = icmp ne i8 %1318, 0
  %1325 = xor i1 %1324, %1322
  %.demorgan = or i1 %1315, %1325
  %.v98 = select i1 %.demorgan, i64 13, i64 451
  %1326 = add i64 %1296, %.v98
  store i64 %1326, i64* %3, align 8
  br i1 %.demorgan, label %block_412e6a, label %block_.L_413020

block_412e6a:                                     ; preds = %block_.L_412e5d
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i802.pre-phi, align 8
  %1327 = add i64 %1297, -1020
  %1328 = add i64 %1326, 17
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i32*
  %1330 = load i32, i32* %1329, align 4
  %1331 = sext i32 %1330 to i64
  %1332 = mul nsw i64 %1331, 744
  store i64 %1332, i64* %RCX.i759, align 8
  %1333 = add i64 %1332, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1334 = lshr i64 %1333, 63
  %1335 = add i64 %1332, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 16)
  store i64 %1335, i64* %RDX.i564.pre-phi, align 8
  %1336 = icmp ugt i64 %1333, -17
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %14, align 1
  %1338 = trunc i64 %1335 to i32
  %1339 = and i32 %1338, 248
  %1340 = tail call i32 @llvm.ctpop.i32(i32 %1339)
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  store i8 %1343, i8* %21, align 1
  %1344 = xor i64 %1333, 16
  %1345 = xor i64 %1344, %1335
  %1346 = lshr i64 %1345, 4
  %1347 = trunc i64 %1346 to i8
  %1348 = and i8 %1347, 1
  store i8 %1348, i8* %26, align 1
  %1349 = icmp eq i64 %1335, 0
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %29, align 1
  %1351 = lshr i64 %1335, 63
  %1352 = trunc i64 %1351 to i8
  store i8 %1352, i8* %32, align 1
  %1353 = xor i64 %1351, %1334
  %1354 = add nuw nsw i64 %1353, %1351
  %1355 = icmp eq i64 %1354, 2
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %38, align 1
  %1357 = load i64, i64* %RBP.i, align 8
  %1358 = add i64 %1357, -1000
  %1359 = add i64 %1326, 41
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i64*
  store i64 %1335, i64* %1360, align 8
  %1361 = load i64, i64* %RBP.i, align 8
  %1362 = add i64 %1361, -12
  %1363 = load i64, i64* %3, align 8
  %1364 = add i64 %1363, 4
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1362 to i32*
  %1366 = load i32, i32* %1365, align 4
  %1367 = sext i32 %1366 to i64
  store i64 %1367, i64* %RCX.i759, align 8
  %1368 = shl nsw i64 %1367, 2
  %1369 = add nsw i64 %1368, 11187184
  %1370 = add i64 %1363, 11
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to i32*
  %1372 = load i32, i32* %1371, align 4
  %1373 = zext i32 %1372 to i64
  store i64 %1373, i64* %RSI.i553.pre-phi, align 8
  %1374 = add i64 %1361, -1020
  %1375 = add i64 %1363, 17
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i32*
  store i32 %1372, i32* %1376, align 4
  %1377 = load i64, i64* %RBP.i, align 8
  %1378 = add i64 %1377, -1020
  %1379 = load i64, i64* %3, align 8
  %1380 = add i64 %1379, 7
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1378 to i32*
  %1382 = load i32, i32* %1381, align 4
  %1383 = sext i32 %1382 to i64
  %1384 = mul nsw i64 %1383, 744
  store i64 %1384, i64* %RCX.i759, align 8
  %1385 = lshr i64 %1384, 63
  %1386 = load i64, i64* %RAX.i802.pre-phi, align 8
  %1387 = add i64 %1384, %1386
  store i64 %1387, i64* %RAX.i802.pre-phi, align 8
  %1388 = icmp ult i64 %1387, %1386
  %1389 = icmp ult i64 %1387, %1384
  %1390 = or i1 %1388, %1389
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %14, align 1
  %1392 = trunc i64 %1387 to i32
  %1393 = and i32 %1392, 255
  %1394 = tail call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  store i8 %1397, i8* %21, align 1
  %1398 = xor i64 %1384, %1386
  %1399 = xor i64 %1398, %1387
  %1400 = lshr i64 %1399, 4
  %1401 = trunc i64 %1400 to i8
  %1402 = and i8 %1401, 1
  store i8 %1402, i8* %26, align 1
  %1403 = icmp eq i64 %1387, 0
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %29, align 1
  %1405 = lshr i64 %1387, 63
  %1406 = trunc i64 %1405 to i8
  store i8 %1406, i8* %32, align 1
  %1407 = lshr i64 %1386, 63
  %1408 = xor i64 %1405, %1407
  %1409 = xor i64 %1405, %1385
  %1410 = add nuw nsw i64 %1408, %1409
  %1411 = icmp eq i64 %1410, 2
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %38, align 1
  %1413 = add i64 %1387, 12
  %1414 = add i64 %1379, 20
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i32*
  %1416 = load i32, i32* %1415, align 4
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RSI.i553.pre-phi, align 8
  %1418 = add i64 %1377, -1008
  %1419 = add i64 %1379, 26
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i32*
  store i32 %1416, i32* %1420, align 4
  %1421 = load i64, i64* %RBP.i, align 8
  %1422 = add i64 %1421, -1008
  %1423 = load i64, i64* %3, align 8
  %1424 = add i64 %1423, 7
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1422 to i32*
  %1426 = load i32, i32* %1425, align 4
  %1427 = add i32 %1426, -20
  %1428 = icmp ult i32 %1426, 20
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %14, align 1
  %1430 = and i32 %1427, 255
  %1431 = tail call i32 @llvm.ctpop.i32(i32 %1430)
  %1432 = trunc i32 %1431 to i8
  %1433 = and i8 %1432, 1
  %1434 = xor i8 %1433, 1
  store i8 %1434, i8* %21, align 1
  %1435 = xor i32 %1426, 16
  %1436 = xor i32 %1435, %1427
  %1437 = lshr i32 %1436, 4
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  store i8 %1439, i8* %26, align 1
  %1440 = icmp eq i32 %1427, 0
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %29, align 1
  %1442 = lshr i32 %1427, 31
  %1443 = trunc i32 %1442 to i8
  store i8 %1443, i8* %32, align 1
  %1444 = lshr i32 %1426, 31
  %1445 = xor i32 %1442, %1444
  %1446 = add nuw nsw i32 %1445, %1444
  %1447 = icmp eq i32 %1446, 2
  %1448 = zext i1 %1447 to i8
  store i8 %1448, i8* %38, align 1
  %1449 = icmp ne i8 %1443, 0
  %1450 = xor i1 %1449, %1447
  %.demorgan90 = or i1 %1440, %1450
  %.v109 = select i1 %.demorgan90, i64 13, i64 349
  %1451 = add i64 %1423, %.v109
  store i64 %1451, i64* %3, align 8
  br i1 %.demorgan90, label %block_412ecb, label %block_.L_41301b

block_412ecb:                                     ; preds = %block_412e6a
  %1452 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1453 = add i32 %1452, 1
  %1454 = zext i32 %1453 to i64
  store i64 %1454, i64* %RAX.i802.pre-phi, align 8
  %1455 = icmp eq i32 %1452, -1
  %1456 = icmp eq i32 %1453, 0
  %1457 = or i1 %1455, %1456
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %14, align 1
  %1459 = and i32 %1453, 255
  %1460 = tail call i32 @llvm.ctpop.i32(i32 %1459)
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  %1463 = xor i8 %1462, 1
  store i8 %1463, i8* %21, align 1
  %1464 = xor i32 %1453, %1452
  %1465 = lshr i32 %1464, 4
  %1466 = trunc i32 %1465 to i8
  %1467 = and i8 %1466, 1
  store i8 %1467, i8* %26, align 1
  %1468 = zext i1 %1456 to i8
  store i8 %1468, i8* %29, align 1
  %1469 = lshr i32 %1453, 31
  %1470 = trunc i32 %1469 to i8
  store i8 %1470, i8* %32, align 1
  %1471 = lshr i32 %1452, 31
  %1472 = xor i32 %1469, %1471
  %1473 = add nuw nsw i32 %1472, %1469
  %1474 = icmp eq i32 %1473, 2
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %38, align 1
  store i32 %1453, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1476 = add i64 %1421, -1016
  %1477 = add i64 %1451, 27
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1476 to i32*
  store i32 0, i32* %1478, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_412ee6

block_.L_412ee6:                                  ; preds = %block_412ef8, %block_412ecb
  %1479 = phi i64 [ %1567, %block_412ef8 ], [ %.pre70, %block_412ecb ]
  %1480 = load i64, i64* %RBP.i, align 8
  %1481 = add i64 %1480, -1016
  %1482 = add i64 %1479, 6
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1481 to i32*
  %1484 = load i32, i32* %1483, align 4
  %1485 = zext i32 %1484 to i64
  store i64 %1485, i64* %RAX.i802.pre-phi, align 8
  %1486 = add i64 %1480, -1004
  %1487 = add i64 %1479, 12
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i32*
  %1489 = load i32, i32* %1488, align 4
  %1490 = sub i32 %1484, %1489
  %1491 = icmp ult i32 %1484, %1489
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %14, align 1
  %1493 = and i32 %1490, 255
  %1494 = tail call i32 @llvm.ctpop.i32(i32 %1493)
  %1495 = trunc i32 %1494 to i8
  %1496 = and i8 %1495, 1
  %1497 = xor i8 %1496, 1
  store i8 %1497, i8* %21, align 1
  %1498 = xor i32 %1489, %1484
  %1499 = xor i32 %1498, %1490
  %1500 = lshr i32 %1499, 4
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  store i8 %1502, i8* %26, align 1
  %1503 = icmp eq i32 %1490, 0
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %29, align 1
  %1505 = lshr i32 %1490, 31
  %1506 = trunc i32 %1505 to i8
  store i8 %1506, i8* %32, align 1
  %1507 = lshr i32 %1484, 31
  %1508 = lshr i32 %1489, 31
  %1509 = xor i32 %1508, %1507
  %1510 = xor i32 %1505, %1507
  %1511 = add nuw nsw i32 %1510, %1509
  %1512 = icmp eq i32 %1511, 2
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %38, align 1
  %1514 = icmp ne i8 %1506, 0
  %1515 = xor i1 %1514, %1512
  %.v110 = select i1 %1515, i64 18, i64 70
  %1516 = add i64 %1479, %.v110
  store i64 %1516, i64* %3, align 8
  br i1 %1515, label %block_412ef8, label %block_.L_412f2c

block_412ef8:                                     ; preds = %block_.L_412ee6
  %1517 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1518 = zext i32 %1517 to i64
  store i64 %1518, i64* %RAX.i802.pre-phi, align 8
  %1519 = add i64 %1480, -1000
  %1520 = add i64 %1516, 14
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i64*
  %1522 = load i64, i64* %1521, align 8
  store i64 %1522, i64* %RCX.i759, align 8
  %1523 = add i64 %1516, 21
  store i64 %1523, i64* %3, align 8
  %1524 = load i32, i32* %1483, align 4
  %1525 = sext i32 %1524 to i64
  store i64 %1525, i64* %RDX.i564.pre-phi, align 8
  %1526 = shl nsw i64 %1525, 2
  %1527 = add i64 %1526, %1522
  %1528 = add i64 %1516, 25
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = sext i32 %1530 to i64
  store i64 %1531, i64* %RCX.i759, align 8
  %1532 = shl nsw i64 %1531, 2
  %1533 = add nsw i64 %1532, 11185584
  %1534 = add i64 %1516, 32
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  store i32 %1517, i32* %1535, align 4
  %1536 = load i64, i64* %RBP.i, align 8
  %1537 = add i64 %1536, -1016
  %1538 = load i64, i64* %3, align 8
  %1539 = add i64 %1538, 6
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1537 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = add i32 %1541, 1
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RAX.i802.pre-phi, align 8
  %1544 = icmp eq i32 %1541, -1
  %1545 = icmp eq i32 %1542, 0
  %1546 = or i1 %1544, %1545
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %14, align 1
  %1548 = and i32 %1542, 255
  %1549 = tail call i32 @llvm.ctpop.i32(i32 %1548)
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  %1552 = xor i8 %1551, 1
  store i8 %1552, i8* %21, align 1
  %1553 = xor i32 %1542, %1541
  %1554 = lshr i32 %1553, 4
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  store i8 %1556, i8* %26, align 1
  %1557 = zext i1 %1545 to i8
  store i8 %1557, i8* %29, align 1
  %1558 = lshr i32 %1542, 31
  %1559 = trunc i32 %1558 to i8
  store i8 %1559, i8* %32, align 1
  %1560 = lshr i32 %1541, 31
  %1561 = xor i32 %1558, %1560
  %1562 = add nuw nsw i32 %1561, %1558
  %1563 = icmp eq i32 %1562, 2
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %38, align 1
  %1565 = add i64 %1538, 15
  store i64 %1565, i64* %3, align 8
  store i32 %1542, i32* %1540, align 4
  %1566 = load i64, i64* %3, align 8
  %1567 = add i64 %1566, -65
  store i64 %1567, i64* %3, align 8
  br label %block_.L_412ee6

block_.L_412f2c:                                  ; preds = %block_.L_412ee6
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i802.pre-phi, align 8
  %1568 = add i64 %1480, -1020
  %1569 = add i64 %1516, 17
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = sext i32 %1571 to i64
  %1573 = mul nsw i64 %1572, 744
  store i64 %1573, i64* %RCX.i759, align 8
  %1574 = add i64 %1573, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1575 = lshr i64 %1574, 63
  %1576 = add i64 %1573, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 16)
  store i64 %1576, i64* %RAX.i802.pre-phi, align 8
  %1577 = icmp ugt i64 %1574, -17
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %14, align 1
  %1579 = trunc i64 %1576 to i32
  %1580 = and i32 %1579, 248
  %1581 = tail call i32 @llvm.ctpop.i32(i32 %1580)
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  %1584 = xor i8 %1583, 1
  store i8 %1584, i8* %21, align 1
  %1585 = xor i64 %1574, 16
  %1586 = xor i64 %1585, %1576
  %1587 = lshr i64 %1586, 4
  %1588 = trunc i64 %1587 to i8
  %1589 = and i8 %1588, 1
  store i8 %1589, i8* %26, align 1
  %1590 = icmp eq i64 %1576, 0
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %29, align 1
  %1592 = lshr i64 %1576, 63
  %1593 = trunc i64 %1592 to i8
  store i8 %1593, i8* %32, align 1
  %1594 = xor i64 %1592, %1575
  %1595 = add nuw nsw i64 %1594, %1592
  %1596 = icmp eq i64 %1595, 2
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %38, align 1
  %1598 = load i64, i64* %RBP.i, align 8
  %1599 = add i64 %1598, -1000
  %1600 = add i64 %1516, 38
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i64*
  store i64 %1576, i64* %1601, align 8
  %1602 = load i64, i64* %RBP.i, align 8
  %1603 = add i64 %1602, -1016
  %1604 = load i64, i64* %3, align 8
  %1605 = add i64 %1604, 10
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1603 to i32*
  store i32 0, i32* %1606, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_412f5c

block_.L_412f5c:                                  ; preds = %block_.L_412ff4, %block_.L_412f2c
  %1607 = phi i64 [ %1834, %block_.L_412ff4 ], [ %.pre71, %block_.L_412f2c ]
  %1608 = load i64, i64* %RBP.i, align 8
  %1609 = add i64 %1608, -1016
  %1610 = add i64 %1607, 6
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = zext i32 %1612 to i64
  store i64 %1613, i64* %RAX.i802.pre-phi, align 8
  %1614 = add i64 %1608, -1008
  %1615 = add i64 %1607, 12
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i32*
  %1617 = load i32, i32* %1616, align 4
  %1618 = sub i32 %1612, %1617
  %1619 = icmp ult i32 %1612, %1617
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %14, align 1
  %1621 = and i32 %1618, 255
  %1622 = tail call i32 @llvm.ctpop.i32(i32 %1621)
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  %1625 = xor i8 %1624, 1
  store i8 %1625, i8* %21, align 1
  %1626 = xor i32 %1617, %1612
  %1627 = xor i32 %1626, %1618
  %1628 = lshr i32 %1627, 4
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  store i8 %1630, i8* %26, align 1
  %1631 = icmp eq i32 %1618, 0
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %29, align 1
  %1633 = lshr i32 %1618, 31
  %1634 = trunc i32 %1633 to i8
  store i8 %1634, i8* %32, align 1
  %1635 = lshr i32 %1612, 31
  %1636 = lshr i32 %1617, 31
  %1637 = xor i32 %1636, %1635
  %1638 = xor i32 %1633, %1635
  %1639 = add nuw nsw i32 %1638, %1637
  %1640 = icmp eq i32 %1639, 2
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %38, align 1
  %1642 = icmp ne i8 %1634, 0
  %1643 = xor i1 %1642, %1640
  %.v111 = select i1 %1643, i64 18, i64 177
  %1644 = add i64 %1607, %.v111
  store i64 %1644, i64* %3, align 8
  br i1 %1643, label %block_412f6e, label %block_.L_41300d

block_412f6e:                                     ; preds = %block_.L_412f5c
  %1645 = add i64 %1608, -1000
  %1646 = add i64 %1644, 7
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to i64*
  %1648 = load i64, i64* %1647, align 8
  store i64 %1648, i64* %RAX.i802.pre-phi, align 8
  %1649 = add i64 %1644, 14
  store i64 %1649, i64* %3, align 8
  %1650 = load i32, i32* %1611, align 4
  %1651 = sext i32 %1650 to i64
  store i64 %1651, i64* %RCX.i759, align 8
  %1652 = shl nsw i64 %1651, 2
  %1653 = add i64 %1652, %1648
  %1654 = add i64 %1644, 18
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1653 to i32*
  %1656 = load i32, i32* %1655, align 4
  %1657 = sext i32 %1656 to i64
  store i64 %1657, i64* %RAX.i802.pre-phi, align 8
  %1658 = add nsw i64 %1657, 12099168
  %1659 = add i64 %1644, 26
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i8*
  %1661 = load i8, i8* %1660, align 1
  %1662 = zext i8 %1661 to i64
  store i64 %1662, i64* %RDX.i564.pre-phi, align 8
  %1663 = zext i8 %1661 to i32
  store i8 0, i8* %14, align 1
  %1664 = tail call i32 @llvm.ctpop.i32(i32 %1663)
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  %1667 = xor i8 %1666, 1
  store i8 %1667, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1668 = icmp eq i8 %1661, 0
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v112 = select i1 %1668, i64 35, i64 73
  %1670 = add i64 %1644, %.v112
  store i64 %1670, i64* %3, align 8
  br i1 %1668, label %block_412f91, label %block_.L_412fb7

block_412f91:                                     ; preds = %block_412f6e
  %1671 = add i64 %1670, 7
  store i64 %1671, i64* %3, align 8
  %1672 = load i64, i64* %1647, align 8
  store i64 %1672, i64* %RAX.i802.pre-phi, align 8
  %1673 = add i64 %1670, 14
  store i64 %1673, i64* %3, align 8
  %1674 = load i32, i32* %1611, align 4
  %1675 = sext i32 %1674 to i64
  store i64 %1675, i64* %RCX.i759, align 8
  %1676 = shl nsw i64 %1675, 2
  %1677 = add i64 %1676, %1672
  %1678 = add i64 %1670, 18
  store i64 %1678, i64* %3, align 8
  %1679 = inttoptr i64 %1677 to i32*
  %1680 = load i32, i32* %1679, align 4
  %1681 = sext i32 %1680 to i64
  store i64 %1681, i64* %RAX.i802.pre-phi, align 8
  %1682 = shl nsw i64 %1681, 2
  %1683 = add nsw i64 %1682, 11185584
  %1684 = add i64 %1670, 25
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1683 to i32*
  %1686 = load i32, i32* %1685, align 4
  %1687 = zext i32 %1686 to i64
  store i64 %1687, i64* %RDX.i564.pre-phi, align 8
  %1688 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1689 = sub i32 %1686, %1688
  %1690 = icmp ult i32 %1686, %1688
  %1691 = zext i1 %1690 to i8
  store i8 %1691, i8* %14, align 1
  %1692 = and i32 %1689, 255
  %1693 = tail call i32 @llvm.ctpop.i32(i32 %1692)
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  store i8 %1696, i8* %21, align 1
  %1697 = xor i32 %1688, %1686
  %1698 = xor i32 %1697, %1689
  %1699 = lshr i32 %1698, 4
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  store i8 %1701, i8* %26, align 1
  %1702 = icmp eq i32 %1689, 0
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %29, align 1
  %1704 = lshr i32 %1689, 31
  %1705 = trunc i32 %1704 to i8
  store i8 %1705, i8* %32, align 1
  %1706 = lshr i32 %1686, 31
  %1707 = lshr i32 %1688, 31
  %1708 = xor i32 %1707, %1706
  %1709 = xor i32 %1704, %1706
  %1710 = add nuw nsw i32 %1709, %1708
  %1711 = icmp eq i32 %1710, 2
  %1712 = zext i1 %1711 to i8
  store i8 %1712, i8* %38, align 1
  %.v114 = select i1 %1702, i64 38, i64 99
  %1713 = add i64 %1670, %.v114
  store i64 %1713, i64* %3, align 8
  br i1 %1702, label %block_.L_412fb7, label %block_.L_412ff4

block_.L_412fb7:                                  ; preds = %block_412f91, %block_412f6e
  %1714 = phi i64 [ %1713, %block_412f91 ], [ %1670, %block_412f6e ]
  %1715 = add i64 %1608, -1012
  %1716 = add i64 %1714, 6
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i32*
  %1718 = load i32, i32* %1717, align 4
  %1719 = zext i32 %1718 to i64
  store i64 %1719, i64* %RAX.i802.pre-phi, align 8
  %1720 = add i64 %1608, -16
  %1721 = add i64 %1714, 9
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i32*
  %1723 = load i32, i32* %1722, align 4
  %1724 = sub i32 %1718, %1723
  %1725 = icmp ult i32 %1718, %1723
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %14, align 1
  %1727 = and i32 %1724, 255
  %1728 = tail call i32 @llvm.ctpop.i32(i32 %1727)
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = xor i8 %1730, 1
  store i8 %1731, i8* %21, align 1
  %1732 = xor i32 %1723, %1718
  %1733 = xor i32 %1732, %1724
  %1734 = lshr i32 %1733, 4
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  store i8 %1736, i8* %26, align 1
  %1737 = icmp eq i32 %1724, 0
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %29, align 1
  %1739 = lshr i32 %1724, 31
  %1740 = trunc i32 %1739 to i8
  store i8 %1740, i8* %32, align 1
  %1741 = lshr i32 %1718, 31
  %1742 = lshr i32 %1723, 31
  %1743 = xor i32 %1742, %1741
  %1744 = xor i32 %1739, %1741
  %1745 = add nuw nsw i32 %1744, %1743
  %1746 = icmp eq i32 %1745, 2
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %38, align 1
  %1748 = icmp ne i8 %1740, 0
  %1749 = xor i1 %1748, %1746
  %.v113 = select i1 %1749, i64 15, i64 46
  %1750 = add i64 %1714, %.v113
  store i64 %1750, i64* %3, align 8
  br i1 %1749, label %block_412fc6, label %block_.L_412fe5

block_412fc6:                                     ; preds = %block_.L_412fb7
  %1751 = add i64 %1750, 7
  store i64 %1751, i64* %3, align 8
  %1752 = load i64, i64* %1647, align 8
  store i64 %1752, i64* %RAX.i802.pre-phi, align 8
  %1753 = add i64 %1750, 14
  store i64 %1753, i64* %3, align 8
  %1754 = load i32, i32* %1611, align 4
  %1755 = sext i32 %1754 to i64
  store i64 %1755, i64* %RCX.i759, align 8
  %1756 = shl nsw i64 %1755, 2
  %1757 = add i64 %1756, %1752
  %1758 = add i64 %1750, 17
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i32*
  %1760 = load i32, i32* %1759, align 4
  %1761 = zext i32 %1760 to i64
  store i64 %1761, i64* %RDX.i564.pre-phi, align 8
  %1762 = add i64 %1608, -24
  %1763 = add i64 %1750, 21
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i64*
  %1765 = load i64, i64* %1764, align 8
  store i64 %1765, i64* %RAX.i802.pre-phi, align 8
  %1766 = add i64 %1750, 28
  store i64 %1766, i64* %3, align 8
  %1767 = load i32, i32* %1717, align 4
  %1768 = sext i32 %1767 to i64
  store i64 %1768, i64* %RCX.i759, align 8
  %1769 = shl nsw i64 %1768, 2
  %1770 = add i64 %1769, %1765
  %1771 = add i64 %1750, 31
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1770 to i32*
  store i32 %1760, i32* %1772, align 4
  %.pre72 = load i64, i64* %RBP.i, align 8
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_412fe5

block_.L_412fe5:                                  ; preds = %block_.L_412fb7, %block_412fc6
  %1773 = phi i64 [ %1750, %block_.L_412fb7 ], [ %.pre73, %block_412fc6 ]
  %1774 = phi i64 [ %1608, %block_.L_412fb7 ], [ %.pre72, %block_412fc6 ]
  %1775 = add i64 %1774, -1012
  %1776 = add i64 %1773, 6
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i32*
  %1778 = load i32, i32* %1777, align 4
  %1779 = add i32 %1778, 1
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RAX.i802.pre-phi, align 8
  %1781 = icmp eq i32 %1778, -1
  %1782 = icmp eq i32 %1779, 0
  %1783 = or i1 %1781, %1782
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %14, align 1
  %1785 = and i32 %1779, 255
  %1786 = tail call i32 @llvm.ctpop.i32(i32 %1785)
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  %1789 = xor i8 %1788, 1
  store i8 %1789, i8* %21, align 1
  %1790 = xor i32 %1779, %1778
  %1791 = lshr i32 %1790, 4
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  store i8 %1793, i8* %26, align 1
  %1794 = zext i1 %1782 to i8
  store i8 %1794, i8* %29, align 1
  %1795 = lshr i32 %1779, 31
  %1796 = trunc i32 %1795 to i8
  store i8 %1796, i8* %32, align 1
  %1797 = lshr i32 %1778, 31
  %1798 = xor i32 %1795, %1797
  %1799 = add nuw nsw i32 %1798, %1795
  %1800 = icmp eq i32 %1799, 2
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %38, align 1
  %1802 = add i64 %1773, 15
  store i64 %1802, i64* %3, align 8
  store i32 %1779, i32* %1777, align 4
  %.pre74 = load i64, i64* %3, align 8
  %.pre75 = load i64, i64* %RBP.i, align 8
  br label %block_.L_412ff4

block_.L_412ff4:                                  ; preds = %block_412f91, %block_.L_412fe5
  %1803 = phi i64 [ %.pre75, %block_.L_412fe5 ], [ %1608, %block_412f91 ]
  %1804 = phi i64 [ %.pre74, %block_.L_412fe5 ], [ %1713, %block_412f91 ]
  %1805 = add i64 %1803, -1016
  %1806 = add i64 %1804, 11
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i32*
  %1808 = load i32, i32* %1807, align 4
  %1809 = add i32 %1808, 1
  %1810 = zext i32 %1809 to i64
  store i64 %1810, i64* %RAX.i802.pre-phi, align 8
  %1811 = icmp eq i32 %1808, -1
  %1812 = icmp eq i32 %1809, 0
  %1813 = or i1 %1811, %1812
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %14, align 1
  %1815 = and i32 %1809, 255
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %21, align 1
  %1820 = xor i32 %1809, %1808
  %1821 = lshr i32 %1820, 4
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  store i8 %1823, i8* %26, align 1
  %1824 = zext i1 %1812 to i8
  store i8 %1824, i8* %29, align 1
  %1825 = lshr i32 %1809, 31
  %1826 = trunc i32 %1825 to i8
  store i8 %1826, i8* %32, align 1
  %1827 = lshr i32 %1808, 31
  %1828 = xor i32 %1825, %1827
  %1829 = add nuw nsw i32 %1828, %1825
  %1830 = icmp eq i32 %1829, 2
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %38, align 1
  %1832 = add i64 %1804, 20
  store i64 %1832, i64* %3, align 8
  store i32 %1809, i32* %1807, align 4
  %1833 = load i64, i64* %3, align 8
  %1834 = add i64 %1833, -172
  store i64 %1834, i64* %3, align 8
  br label %block_.L_412f5c

block_.L_41300d:                                  ; preds = %block_.L_412f5c
  %1835 = add i64 %1608, -1012
  %1836 = add i64 %1644, 6
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i32*
  %1838 = load i32, i32* %1837, align 4
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %RAX.i802.pre-phi, align 8
  %1840 = add i64 %1608, -4
  %1841 = add i64 %1644, 9
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1840 to i32*
  store i32 %1838, i32* %1842, align 4
  %1843 = load i64, i64* %3, align 8
  %1844 = add i64 %1843, 565
  store i64 %1844, i64* %3, align 8
  br label %block_.L_41324b

block_.L_41301b:                                  ; preds = %block_412e6a
  %1845 = add i64 %1451, 45
  store i64 %1845, i64* %3, align 8
  br label %block_.L_413048

block_.L_413020:                                  ; preds = %block_.L_412e5d
  store i64 241, i64* %RSI.i553.pre-phi, align 8
  %1846 = add i64 %1297, -992
  store i64 %1846, i64* %RDX.i564.pre-phi, align 8
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %1847 = add i64 %1297, -8
  %1848 = add i64 %1326, 15
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to i32*
  %1850 = load i32, i32* %1849, align 4
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RDI.i, align 8
  %1852 = add i64 %1326, -14304
  %1853 = add i64 %1326, 20
  %1854 = load i64, i64* %6, align 8
  %1855 = add i64 %1854, -8
  %1856 = inttoptr i64 %1855 to i64*
  store i64 %1853, i64* %1856, align 8
  store i64 %1855, i64* %6, align 8
  store i64 %1852, i64* %3, align 8
  %call2_41302f = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %1852, %struct.Memory* %MEMORY.8)
  %1857 = load i64, i64* %RBP.i, align 8
  %1858 = add i64 %1857, -992
  %1859 = load i64, i64* %3, align 8
  store i64 %1858, i64* %RDX.i564.pre-phi, align 8
  %1860 = add i64 %1857, -1000
  %1861 = add i64 %1859, 14
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i64*
  store i64 %1858, i64* %1862, align 8
  %EAX.i274 = bitcast %union.anon* %.pre-phi to i32*
  %1863 = load i64, i64* %RBP.i, align 8
  %1864 = add i64 %1863, -1148
  %1865 = load i32, i32* %EAX.i274, align 4
  %1866 = load i64, i64* %3, align 8
  %1867 = add i64 %1866, 6
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1864 to i32*
  store i32 %1865, i32* %1868, align 4
  %.pre76 = load i64, i64* %RBP.i, align 8
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_413048

block_.L_413048:                                  ; preds = %block_.L_413020, %block_.L_41301b
  %1869 = phi i64 [ %.pre77, %block_.L_413020 ], [ %1845, %block_.L_41301b ]
  %1870 = phi i64 [ %.pre76, %block_.L_413020 ], [ %1421, %block_.L_41301b ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_41302f, %block_.L_413020 ], [ %MEMORY.8, %block_.L_41301b ]
  %1871 = add i64 %1870, -1016
  %1872 = add i64 %1869, 10
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1871 to i32*
  store i32 0, i32* %1873, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_413052

block_.L_413052:                                  ; preds = %block_.L_413229, %block_.L_413048
  %1874 = phi i64 [ %2655, %block_.L_413229 ], [ %.pre78, %block_.L_413048 ]
  %1875 = load i64, i64* %RBP.i, align 8
  %1876 = add i64 %1875, -1016
  %1877 = add i64 %1874, 6
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i32*
  %1879 = load i32, i32* %1878, align 4
  %1880 = zext i32 %1879 to i64
  store i64 %1880, i64* %RAX.i802.pre-phi, align 8
  %1881 = add i64 %1875, -1004
  %1882 = add i64 %1874, 12
  store i64 %1882, i64* %3, align 8
  %1883 = inttoptr i64 %1881 to i32*
  %1884 = load i32, i32* %1883, align 4
  %1885 = sub i32 %1879, %1884
  %1886 = icmp ult i32 %1879, %1884
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %14, align 1
  %1888 = and i32 %1885, 255
  %1889 = tail call i32 @llvm.ctpop.i32(i32 %1888)
  %1890 = trunc i32 %1889 to i8
  %1891 = and i8 %1890, 1
  %1892 = xor i8 %1891, 1
  store i8 %1892, i8* %21, align 1
  %1893 = xor i32 %1884, %1879
  %1894 = xor i32 %1893, %1885
  %1895 = lshr i32 %1894, 4
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  store i8 %1897, i8* %26, align 1
  %1898 = icmp eq i32 %1885, 0
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %29, align 1
  %1900 = lshr i32 %1885, 31
  %1901 = trunc i32 %1900 to i8
  store i8 %1901, i8* %32, align 1
  %1902 = lshr i32 %1879, 31
  %1903 = lshr i32 %1884, 31
  %1904 = xor i32 %1903, %1902
  %1905 = xor i32 %1900, %1902
  %1906 = add nuw nsw i32 %1905, %1904
  %1907 = icmp eq i32 %1906, 2
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %38, align 1
  %1909 = icmp ne i8 %1901, 0
  %1910 = xor i1 %1909, %1907
  %.v99 = select i1 %1910, i64 18, i64 496
  %1911 = add i64 %1874, %.v99
  store i64 %1911, i64* %3, align 8
  br i1 %1910, label %block_413064, label %block_.L_413242

block_413064:                                     ; preds = %block_.L_413052
  %1912 = add i64 %1875, -1000
  %1913 = add i64 %1911, 7
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to i64*
  %1915 = load i64, i64* %1914, align 8
  store i64 %1915, i64* %RAX.i802.pre-phi, align 8
  %1916 = add i64 %1911, 14
  store i64 %1916, i64* %3, align 8
  %1917 = load i32, i32* %1878, align 4
  %1918 = sext i32 %1917 to i64
  store i64 %1918, i64* %RCX.i759, align 8
  %1919 = shl nsw i64 %1918, 2
  %1920 = add i64 %1919, %1915
  %1921 = add i64 %1911, 17
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1920 to i32*
  %1923 = load i32, i32* %1922, align 4
  %1924 = add i32 %1923, 20
  %1925 = zext i32 %1924 to i64
  store i64 %1925, i64* %RDX.i564.pre-phi, align 8
  %1926 = icmp ugt i32 %1923, -21
  %1927 = zext i1 %1926 to i8
  store i8 %1927, i8* %14, align 1
  %1928 = and i32 %1924, 255
  %1929 = tail call i32 @llvm.ctpop.i32(i32 %1928)
  %1930 = trunc i32 %1929 to i8
  %1931 = and i8 %1930, 1
  %1932 = xor i8 %1931, 1
  store i8 %1932, i8* %21, align 1
  %1933 = xor i32 %1923, 16
  %1934 = xor i32 %1933, %1924
  %1935 = lshr i32 %1934, 4
  %1936 = trunc i32 %1935 to i8
  %1937 = and i8 %1936, 1
  store i8 %1937, i8* %26, align 1
  %1938 = icmp eq i32 %1924, 0
  %1939 = zext i1 %1938 to i8
  store i8 %1939, i8* %29, align 1
  %1940 = lshr i32 %1924, 31
  %1941 = trunc i32 %1940 to i8
  store i8 %1941, i8* %32, align 1
  %1942 = lshr i32 %1923, 31
  %1943 = xor i32 %1940, %1942
  %1944 = add nuw nsw i32 %1943, %1940
  %1945 = icmp eq i32 %1944, 2
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %38, align 1
  %1947 = sext i32 %1924 to i64
  store i64 %1947, i64* %RAX.i802.pre-phi, align 8
  %1948 = add nsw i64 %1947, 12099168
  %1949 = add i64 %1911, 31
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1948 to i8*
  %1951 = load i8, i8* %1950, align 1
  %1952 = zext i8 %1951 to i64
  store i64 %1952, i64* %RDX.i564.pre-phi, align 8
  %1953 = add i64 %1875, -12
  %1954 = add i64 %1911, 35
  store i64 %1954, i64* %3, align 8
  %1955 = inttoptr i64 %1953 to i32*
  %1956 = load i32, i32* %1955, align 4
  %1957 = sext i32 %1956 to i64
  store i64 %1957, i64* %RAX.i802.pre-phi, align 8
  %1958 = add nsw i64 %1957, 12099168
  %1959 = add i64 %1911, 43
  store i64 %1959, i64* %3, align 8
  %1960 = inttoptr i64 %1958 to i8*
  %1961 = load i8, i8* %1960, align 1
  %1962 = zext i8 %1961 to i64
  store i64 %1962, i64* %RSI.i553.pre-phi, align 8
  %1963 = zext i8 %1951 to i32
  %1964 = zext i8 %1961 to i32
  %1965 = sub nsw i32 %1963, %1964
  %1966 = icmp ult i8 %1951, %1961
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %14, align 1
  %1968 = and i32 %1965, 255
  %1969 = tail call i32 @llvm.ctpop.i32(i32 %1968)
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  %1972 = xor i8 %1971, 1
  store i8 %1972, i8* %21, align 1
  %1973 = xor i8 %1961, %1951
  %1974 = zext i8 %1973 to i32
  %1975 = xor i32 %1974, %1965
  %1976 = lshr i32 %1975, 4
  %1977 = trunc i32 %1976 to i8
  %1978 = and i8 %1977, 1
  store i8 %1978, i8* %26, align 1
  %1979 = icmp eq i32 %1965, 0
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %29, align 1
  %1981 = lshr i32 %1965, 31
  %1982 = trunc i32 %1981 to i8
  store i8 %1982, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v100 = select i1 %1979, i64 51, i64 98
  %1983 = add i64 %1911, %.v100
  store i64 %1983, i64* %3, align 8
  br i1 %1979, label %block_413097, label %block_.L_4130c6

block_413097:                                     ; preds = %block_413064
  %1984 = load i64, i64* %RBP.i, align 8
  %1985 = add i64 %1984, -1000
  %1986 = add i64 %1983, 7
  store i64 %1986, i64* %3, align 8
  %1987 = inttoptr i64 %1985 to i64*
  %1988 = load i64, i64* %1987, align 8
  store i64 %1988, i64* %RAX.i802.pre-phi, align 8
  %1989 = add i64 %1984, -1016
  %1990 = add i64 %1983, 14
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1989 to i32*
  %1992 = load i32, i32* %1991, align 4
  %1993 = sext i32 %1992 to i64
  store i64 %1993, i64* %RCX.i759, align 8
  %1994 = shl nsw i64 %1993, 2
  %1995 = add i64 %1994, %1988
  %1996 = add i64 %1983, 17
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1995 to i32*
  %1998 = load i32, i32* %1997, align 4
  %1999 = add i32 %1998, 20
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %RDX.i564.pre-phi, align 8
  %2001 = icmp ugt i32 %1998, -21
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %14, align 1
  %2003 = and i32 %1999, 255
  %2004 = tail call i32 @llvm.ctpop.i32(i32 %2003)
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = xor i8 %2006, 1
  store i8 %2007, i8* %21, align 1
  %2008 = xor i32 %1998, 16
  %2009 = xor i32 %2008, %1999
  %2010 = lshr i32 %2009, 4
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  store i8 %2012, i8* %26, align 1
  %2013 = icmp eq i32 %1999, 0
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %29, align 1
  %2015 = lshr i32 %1999, 31
  %2016 = trunc i32 %2015 to i8
  store i8 %2016, i8* %32, align 1
  %2017 = lshr i32 %1998, 31
  %2018 = xor i32 %2015, %2017
  %2019 = add nuw nsw i32 %2018, %2015
  %2020 = icmp eq i32 %2019, 2
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %38, align 1
  %2022 = sext i32 %1999 to i64
  store i64 %2022, i64* %RAX.i802.pre-phi, align 8
  %2023 = shl nsw i64 %2022, 2
  %2024 = add nsw i64 %2023, 11187184
  %2025 = add i64 %1983, 30
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2024 to i32*
  %2027 = load i32, i32* %2026, align 4
  %2028 = zext i32 %2027 to i64
  store i64 %2028, i64* %RDX.i564.pre-phi, align 8
  %2029 = add i64 %1984, -12
  %2030 = add i64 %1983, 34
  store i64 %2030, i64* %3, align 8
  %2031 = inttoptr i64 %2029 to i32*
  %2032 = load i32, i32* %2031, align 4
  %2033 = sext i32 %2032 to i64
  store i64 %2033, i64* %RAX.i802.pre-phi, align 8
  %2034 = shl nsw i64 %2033, 2
  %2035 = add nsw i64 %2034, 11187184
  %2036 = add i64 %1983, 41
  store i64 %2036, i64* %3, align 8
  %2037 = inttoptr i64 %2035 to i32*
  %2038 = load i32, i32* %2037, align 4
  %2039 = sub i32 %2027, %2038
  %2040 = icmp ult i32 %2027, %2038
  %2041 = zext i1 %2040 to i8
  store i8 %2041, i8* %14, align 1
  %2042 = and i32 %2039, 255
  %2043 = tail call i32 @llvm.ctpop.i32(i32 %2042)
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  %2046 = xor i8 %2045, 1
  store i8 %2046, i8* %21, align 1
  %2047 = xor i32 %2038, %2027
  %2048 = xor i32 %2047, %2039
  %2049 = lshr i32 %2048, 4
  %2050 = trunc i32 %2049 to i8
  %2051 = and i8 %2050, 1
  store i8 %2051, i8* %26, align 1
  %2052 = icmp eq i32 %2039, 0
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %29, align 1
  %2054 = lshr i32 %2039, 31
  %2055 = trunc i32 %2054 to i8
  store i8 %2055, i8* %32, align 1
  %2056 = lshr i32 %2027, 31
  %2057 = lshr i32 %2038, 31
  %2058 = xor i32 %2057, %2056
  %2059 = xor i32 %2054, %2056
  %2060 = add nuw nsw i32 %2059, %2058
  %2061 = icmp eq i32 %2060, 2
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %38, align 1
  %.v108 = select i1 %2052, i64 341, i64 47
  %2063 = add i64 %1983, %.v108
  store i64 %2063, i64* %3, align 8
  br i1 %2052, label %block_.L_4131ec, label %block_.L_4130c6

block_.L_4130c6:                                  ; preds = %block_413064, %block_413097
  %2064 = phi i64 [ %2063, %block_413097 ], [ %1983, %block_413064 ]
  %2065 = load i64, i64* %RBP.i, align 8
  %2066 = add i64 %2065, -1000
  %2067 = add i64 %2064, 7
  store i64 %2067, i64* %3, align 8
  %2068 = inttoptr i64 %2066 to i64*
  %2069 = load i64, i64* %2068, align 8
  store i64 %2069, i64* %RAX.i802.pre-phi, align 8
  %2070 = add i64 %2065, -1016
  %2071 = add i64 %2064, 14
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = sext i32 %2073 to i64
  store i64 %2074, i64* %RCX.i759, align 8
  %2075 = shl nsw i64 %2074, 2
  %2076 = add i64 %2075, %2069
  %2077 = add i64 %2064, 17
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2076 to i32*
  %2079 = load i32, i32* %2078, align 4
  %2080 = add i32 %2079, -1
  %2081 = zext i32 %2080 to i64
  store i64 %2081, i64* %RDX.i564.pre-phi, align 8
  %2082 = icmp eq i32 %2079, 0
  %2083 = zext i1 %2082 to i8
  store i8 %2083, i8* %14, align 1
  %2084 = and i32 %2080, 255
  %2085 = tail call i32 @llvm.ctpop.i32(i32 %2084)
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  %2088 = xor i8 %2087, 1
  store i8 %2088, i8* %21, align 1
  %2089 = xor i32 %2080, %2079
  %2090 = lshr i32 %2089, 4
  %2091 = trunc i32 %2090 to i8
  %2092 = and i8 %2091, 1
  store i8 %2092, i8* %26, align 1
  %2093 = icmp eq i32 %2080, 0
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %29, align 1
  %2095 = lshr i32 %2080, 31
  %2096 = trunc i32 %2095 to i8
  store i8 %2096, i8* %32, align 1
  %2097 = lshr i32 %2079, 31
  %2098 = xor i32 %2095, %2097
  %2099 = add nuw nsw i32 %2098, %2097
  %2100 = icmp eq i32 %2099, 2
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %38, align 1
  %2102 = sext i32 %2080 to i64
  store i64 %2102, i64* %RAX.i802.pre-phi, align 8
  %2103 = add nsw i64 %2102, 12099168
  %2104 = add i64 %2064, 31
  store i64 %2104, i64* %3, align 8
  %2105 = inttoptr i64 %2103 to i8*
  %2106 = load i8, i8* %2105, align 1
  %2107 = zext i8 %2106 to i64
  store i64 %2107, i64* %RDX.i564.pre-phi, align 8
  %2108 = add i64 %2065, -12
  %2109 = add i64 %2064, 35
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i32*
  %2111 = load i32, i32* %2110, align 4
  %2112 = sext i32 %2111 to i64
  store i64 %2112, i64* %RAX.i802.pre-phi, align 8
  %2113 = add nsw i64 %2112, 12099168
  %2114 = add i64 %2064, 43
  store i64 %2114, i64* %3, align 8
  %2115 = inttoptr i64 %2113 to i8*
  %2116 = load i8, i8* %2115, align 1
  %2117 = zext i8 %2116 to i64
  store i64 %2117, i64* %RSI.i553.pre-phi, align 8
  %2118 = zext i8 %2106 to i32
  %2119 = zext i8 %2116 to i32
  %2120 = sub nsw i32 %2118, %2119
  %2121 = icmp ult i8 %2106, %2116
  %2122 = zext i1 %2121 to i8
  store i8 %2122, i8* %14, align 1
  %2123 = and i32 %2120, 255
  %2124 = tail call i32 @llvm.ctpop.i32(i32 %2123)
  %2125 = trunc i32 %2124 to i8
  %2126 = and i8 %2125, 1
  %2127 = xor i8 %2126, 1
  store i8 %2127, i8* %21, align 1
  %2128 = xor i8 %2116, %2106
  %2129 = zext i8 %2128 to i32
  %2130 = xor i32 %2129, %2120
  %2131 = lshr i32 %2130, 4
  %2132 = trunc i32 %2131 to i8
  %2133 = and i8 %2132, 1
  store i8 %2133, i8* %26, align 1
  %2134 = icmp eq i32 %2120, 0
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %29, align 1
  %2136 = lshr i32 %2120, 31
  %2137 = trunc i32 %2136 to i8
  store i8 %2137, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v101 = select i1 %2134, i64 51, i64 98
  %2138 = add i64 %2064, %.v101
  store i64 %2138, i64* %3, align 8
  br i1 %2134, label %block_4130f9, label %block_.L_413128

block_4130f9:                                     ; preds = %block_.L_4130c6
  %2139 = load i64, i64* %RBP.i, align 8
  %2140 = add i64 %2139, -1000
  %2141 = add i64 %2138, 7
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i64*
  %2143 = load i64, i64* %2142, align 8
  store i64 %2143, i64* %RAX.i802.pre-phi, align 8
  %2144 = add i64 %2139, -1016
  %2145 = add i64 %2138, 14
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2144 to i32*
  %2147 = load i32, i32* %2146, align 4
  %2148 = sext i32 %2147 to i64
  store i64 %2148, i64* %RCX.i759, align 8
  %2149 = shl nsw i64 %2148, 2
  %2150 = add i64 %2149, %2143
  %2151 = add i64 %2138, 17
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to i32*
  %2153 = load i32, i32* %2152, align 4
  %2154 = add i32 %2153, -1
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RDX.i564.pre-phi, align 8
  %2156 = icmp eq i32 %2153, 0
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %14, align 1
  %2158 = and i32 %2154, 255
  %2159 = tail call i32 @llvm.ctpop.i32(i32 %2158)
  %2160 = trunc i32 %2159 to i8
  %2161 = and i8 %2160, 1
  %2162 = xor i8 %2161, 1
  store i8 %2162, i8* %21, align 1
  %2163 = xor i32 %2154, %2153
  %2164 = lshr i32 %2163, 4
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  store i8 %2166, i8* %26, align 1
  %2167 = icmp eq i32 %2154, 0
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %29, align 1
  %2169 = lshr i32 %2154, 31
  %2170 = trunc i32 %2169 to i8
  store i8 %2170, i8* %32, align 1
  %2171 = lshr i32 %2153, 31
  %2172 = xor i32 %2169, %2171
  %2173 = add nuw nsw i32 %2172, %2171
  %2174 = icmp eq i32 %2173, 2
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %38, align 1
  %2176 = sext i32 %2154 to i64
  store i64 %2176, i64* %RAX.i802.pre-phi, align 8
  %2177 = shl nsw i64 %2176, 2
  %2178 = add nsw i64 %2177, 11187184
  %2179 = add i64 %2138, 30
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i32*
  %2181 = load i32, i32* %2180, align 4
  %2182 = zext i32 %2181 to i64
  store i64 %2182, i64* %RDX.i564.pre-phi, align 8
  %2183 = add i64 %2139, -12
  %2184 = add i64 %2138, 34
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2183 to i32*
  %2186 = load i32, i32* %2185, align 4
  %2187 = sext i32 %2186 to i64
  store i64 %2187, i64* %RAX.i802.pre-phi, align 8
  %2188 = shl nsw i64 %2187, 2
  %2189 = add nsw i64 %2188, 11187184
  %2190 = add i64 %2138, 41
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2189 to i32*
  %2192 = load i32, i32* %2191, align 4
  %2193 = sub i32 %2181, %2192
  %2194 = icmp ult i32 %2181, %2192
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %14, align 1
  %2196 = and i32 %2193, 255
  %2197 = tail call i32 @llvm.ctpop.i32(i32 %2196)
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  %2200 = xor i8 %2199, 1
  store i8 %2200, i8* %21, align 1
  %2201 = xor i32 %2192, %2181
  %2202 = xor i32 %2201, %2193
  %2203 = lshr i32 %2202, 4
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  store i8 %2205, i8* %26, align 1
  %2206 = icmp eq i32 %2193, 0
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %29, align 1
  %2208 = lshr i32 %2193, 31
  %2209 = trunc i32 %2208 to i8
  store i8 %2209, i8* %32, align 1
  %2210 = lshr i32 %2181, 31
  %2211 = lshr i32 %2192, 31
  %2212 = xor i32 %2211, %2210
  %2213 = xor i32 %2208, %2210
  %2214 = add nuw nsw i32 %2213, %2212
  %2215 = icmp eq i32 %2214, 2
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %38, align 1
  %.v107 = select i1 %2206, i64 243, i64 47
  %2217 = add i64 %2138, %.v107
  store i64 %2217, i64* %3, align 8
  br i1 %2206, label %block_.L_4131ec, label %block_.L_413128

block_.L_413128:                                  ; preds = %block_.L_4130c6, %block_4130f9
  %2218 = phi i64 [ %2217, %block_4130f9 ], [ %2138, %block_.L_4130c6 ]
  %2219 = load i64, i64* %RBP.i, align 8
  %2220 = add i64 %2219, -1000
  %2221 = add i64 %2218, 7
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i64*
  %2223 = load i64, i64* %2222, align 8
  store i64 %2223, i64* %RAX.i802.pre-phi, align 8
  %2224 = add i64 %2219, -1016
  %2225 = add i64 %2218, 14
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2224 to i32*
  %2227 = load i32, i32* %2226, align 4
  %2228 = sext i32 %2227 to i64
  store i64 %2228, i64* %RCX.i759, align 8
  %2229 = shl nsw i64 %2228, 2
  %2230 = add i64 %2229, %2223
  %2231 = add i64 %2218, 17
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2230 to i32*
  %2233 = load i32, i32* %2232, align 4
  %2234 = add i32 %2233, -20
  %2235 = zext i32 %2234 to i64
  store i64 %2235, i64* %RDX.i564.pre-phi, align 8
  %2236 = icmp ult i32 %2233, 20
  %2237 = zext i1 %2236 to i8
  store i8 %2237, i8* %14, align 1
  %2238 = and i32 %2234, 255
  %2239 = tail call i32 @llvm.ctpop.i32(i32 %2238)
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  %2242 = xor i8 %2241, 1
  store i8 %2242, i8* %21, align 1
  %2243 = xor i32 %2233, 16
  %2244 = xor i32 %2243, %2234
  %2245 = lshr i32 %2244, 4
  %2246 = trunc i32 %2245 to i8
  %2247 = and i8 %2246, 1
  store i8 %2247, i8* %26, align 1
  %2248 = icmp eq i32 %2234, 0
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %29, align 1
  %2250 = lshr i32 %2234, 31
  %2251 = trunc i32 %2250 to i8
  store i8 %2251, i8* %32, align 1
  %2252 = lshr i32 %2233, 31
  %2253 = xor i32 %2250, %2252
  %2254 = add nuw nsw i32 %2253, %2252
  %2255 = icmp eq i32 %2254, 2
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %38, align 1
  %2257 = sext i32 %2234 to i64
  store i64 %2257, i64* %RAX.i802.pre-phi, align 8
  %2258 = add nsw i64 %2257, 12099168
  %2259 = add i64 %2218, 31
  store i64 %2259, i64* %3, align 8
  %2260 = inttoptr i64 %2258 to i8*
  %2261 = load i8, i8* %2260, align 1
  %2262 = zext i8 %2261 to i64
  store i64 %2262, i64* %RDX.i564.pre-phi, align 8
  %2263 = add i64 %2219, -12
  %2264 = add i64 %2218, 35
  store i64 %2264, i64* %3, align 8
  %2265 = inttoptr i64 %2263 to i32*
  %2266 = load i32, i32* %2265, align 4
  %2267 = sext i32 %2266 to i64
  store i64 %2267, i64* %RAX.i802.pre-phi, align 8
  %2268 = add nsw i64 %2267, 12099168
  %2269 = add i64 %2218, 43
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i8*
  %2271 = load i8, i8* %2270, align 1
  %2272 = zext i8 %2271 to i64
  store i64 %2272, i64* %RSI.i553.pre-phi, align 8
  %2273 = zext i8 %2261 to i32
  %2274 = zext i8 %2271 to i32
  %2275 = sub nsw i32 %2273, %2274
  %2276 = icmp ult i8 %2261, %2271
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %14, align 1
  %2278 = and i32 %2275, 255
  %2279 = tail call i32 @llvm.ctpop.i32(i32 %2278)
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  %2282 = xor i8 %2281, 1
  store i8 %2282, i8* %21, align 1
  %2283 = xor i8 %2271, %2261
  %2284 = zext i8 %2283 to i32
  %2285 = xor i32 %2284, %2275
  %2286 = lshr i32 %2285, 4
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  store i8 %2288, i8* %26, align 1
  %2289 = icmp eq i32 %2275, 0
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %29, align 1
  %2291 = lshr i32 %2275, 31
  %2292 = trunc i32 %2291 to i8
  store i8 %2292, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v102 = select i1 %2289, i64 51, i64 98
  %2293 = add i64 %2218, %.v102
  store i64 %2293, i64* %3, align 8
  br i1 %2289, label %block_41315b, label %block_.L_41318a

block_41315b:                                     ; preds = %block_.L_413128
  %2294 = load i64, i64* %RBP.i, align 8
  %2295 = add i64 %2294, -1000
  %2296 = add i64 %2293, 7
  store i64 %2296, i64* %3, align 8
  %2297 = inttoptr i64 %2295 to i64*
  %2298 = load i64, i64* %2297, align 8
  store i64 %2298, i64* %RAX.i802.pre-phi, align 8
  %2299 = add i64 %2294, -1016
  %2300 = add i64 %2293, 14
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2299 to i32*
  %2302 = load i32, i32* %2301, align 4
  %2303 = sext i32 %2302 to i64
  store i64 %2303, i64* %RCX.i759, align 8
  %2304 = shl nsw i64 %2303, 2
  %2305 = add i64 %2304, %2298
  %2306 = add i64 %2293, 17
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  %2308 = load i32, i32* %2307, align 4
  %2309 = add i32 %2308, -20
  %2310 = zext i32 %2309 to i64
  store i64 %2310, i64* %RDX.i564.pre-phi, align 8
  %2311 = icmp ult i32 %2308, 20
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %14, align 1
  %2313 = and i32 %2309, 255
  %2314 = tail call i32 @llvm.ctpop.i32(i32 %2313)
  %2315 = trunc i32 %2314 to i8
  %2316 = and i8 %2315, 1
  %2317 = xor i8 %2316, 1
  store i8 %2317, i8* %21, align 1
  %2318 = xor i32 %2308, 16
  %2319 = xor i32 %2318, %2309
  %2320 = lshr i32 %2319, 4
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  store i8 %2322, i8* %26, align 1
  %2323 = icmp eq i32 %2309, 0
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %29, align 1
  %2325 = lshr i32 %2309, 31
  %2326 = trunc i32 %2325 to i8
  store i8 %2326, i8* %32, align 1
  %2327 = lshr i32 %2308, 31
  %2328 = xor i32 %2325, %2327
  %2329 = add nuw nsw i32 %2328, %2327
  %2330 = icmp eq i32 %2329, 2
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %38, align 1
  %2332 = sext i32 %2309 to i64
  store i64 %2332, i64* %RAX.i802.pre-phi, align 8
  %2333 = shl nsw i64 %2332, 2
  %2334 = add nsw i64 %2333, 11187184
  %2335 = add i64 %2293, 30
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i32*
  %2337 = load i32, i32* %2336, align 4
  %2338 = zext i32 %2337 to i64
  store i64 %2338, i64* %RDX.i564.pre-phi, align 8
  %2339 = add i64 %2294, -12
  %2340 = add i64 %2293, 34
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2339 to i32*
  %2342 = load i32, i32* %2341, align 4
  %2343 = sext i32 %2342 to i64
  store i64 %2343, i64* %RAX.i802.pre-phi, align 8
  %2344 = shl nsw i64 %2343, 2
  %2345 = add nsw i64 %2344, 11187184
  %2346 = add i64 %2293, 41
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i32*
  %2348 = load i32, i32* %2347, align 4
  %2349 = sub i32 %2337, %2348
  %2350 = icmp ult i32 %2337, %2348
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %14, align 1
  %2352 = and i32 %2349, 255
  %2353 = tail call i32 @llvm.ctpop.i32(i32 %2352)
  %2354 = trunc i32 %2353 to i8
  %2355 = and i8 %2354, 1
  %2356 = xor i8 %2355, 1
  store i8 %2356, i8* %21, align 1
  %2357 = xor i32 %2348, %2337
  %2358 = xor i32 %2357, %2349
  %2359 = lshr i32 %2358, 4
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  store i8 %2361, i8* %26, align 1
  %2362 = icmp eq i32 %2349, 0
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %29, align 1
  %2364 = lshr i32 %2349, 31
  %2365 = trunc i32 %2364 to i8
  store i8 %2365, i8* %32, align 1
  %2366 = lshr i32 %2337, 31
  %2367 = lshr i32 %2348, 31
  %2368 = xor i32 %2367, %2366
  %2369 = xor i32 %2364, %2366
  %2370 = add nuw nsw i32 %2369, %2368
  %2371 = icmp eq i32 %2370, 2
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %38, align 1
  %.v106 = select i1 %2362, i64 145, i64 47
  %2373 = add i64 %2293, %.v106
  store i64 %2373, i64* %3, align 8
  br i1 %2362, label %block_.L_4131ec, label %block_.L_41318a

block_.L_41318a:                                  ; preds = %block_.L_413128, %block_41315b
  %2374 = phi i64 [ %2373, %block_41315b ], [ %2293, %block_.L_413128 ]
  %2375 = load i64, i64* %RBP.i, align 8
  %2376 = add i64 %2375, -1000
  %2377 = add i64 %2374, 7
  store i64 %2377, i64* %3, align 8
  %2378 = inttoptr i64 %2376 to i64*
  %2379 = load i64, i64* %2378, align 8
  store i64 %2379, i64* %RAX.i802.pre-phi, align 8
  %2380 = add i64 %2375, -1016
  %2381 = add i64 %2374, 14
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2380 to i32*
  %2383 = load i32, i32* %2382, align 4
  %2384 = sext i32 %2383 to i64
  store i64 %2384, i64* %RCX.i759, align 8
  %2385 = shl nsw i64 %2384, 2
  %2386 = add i64 %2385, %2379
  %2387 = add i64 %2374, 17
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2386 to i32*
  %2389 = load i32, i32* %2388, align 4
  %2390 = add i32 %2389, 1
  %2391 = zext i32 %2390 to i64
  store i64 %2391, i64* %RDX.i564.pre-phi, align 8
  %2392 = icmp eq i32 %2389, -1
  %2393 = icmp eq i32 %2390, 0
  %2394 = or i1 %2392, %2393
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %14, align 1
  %2396 = and i32 %2390, 255
  %2397 = tail call i32 @llvm.ctpop.i32(i32 %2396)
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  %2400 = xor i8 %2399, 1
  store i8 %2400, i8* %21, align 1
  %2401 = xor i32 %2390, %2389
  %2402 = lshr i32 %2401, 4
  %2403 = trunc i32 %2402 to i8
  %2404 = and i8 %2403, 1
  store i8 %2404, i8* %26, align 1
  %2405 = zext i1 %2393 to i8
  store i8 %2405, i8* %29, align 1
  %2406 = lshr i32 %2390, 31
  %2407 = trunc i32 %2406 to i8
  store i8 %2407, i8* %32, align 1
  %2408 = lshr i32 %2389, 31
  %2409 = xor i32 %2406, %2408
  %2410 = add nuw nsw i32 %2409, %2406
  %2411 = icmp eq i32 %2410, 2
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %38, align 1
  %2413 = sext i32 %2390 to i64
  store i64 %2413, i64* %RAX.i802.pre-phi, align 8
  %2414 = add nsw i64 %2413, 12099168
  %2415 = add i64 %2374, 31
  store i64 %2415, i64* %3, align 8
  %2416 = inttoptr i64 %2414 to i8*
  %2417 = load i8, i8* %2416, align 1
  %2418 = zext i8 %2417 to i64
  store i64 %2418, i64* %RDX.i564.pre-phi, align 8
  %2419 = add i64 %2375, -12
  %2420 = add i64 %2374, 35
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2419 to i32*
  %2422 = load i32, i32* %2421, align 4
  %2423 = sext i32 %2422 to i64
  store i64 %2423, i64* %RAX.i802.pre-phi, align 8
  %2424 = add nsw i64 %2423, 12099168
  %2425 = add i64 %2374, 43
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2424 to i8*
  %2427 = load i8, i8* %2426, align 1
  %2428 = zext i8 %2427 to i64
  store i64 %2428, i64* %RSI.i553.pre-phi, align 8
  %2429 = zext i8 %2417 to i32
  %2430 = zext i8 %2427 to i32
  %2431 = sub nsw i32 %2429, %2430
  %2432 = icmp ult i8 %2417, %2427
  %2433 = zext i1 %2432 to i8
  store i8 %2433, i8* %14, align 1
  %2434 = and i32 %2431, 255
  %2435 = tail call i32 @llvm.ctpop.i32(i32 %2434)
  %2436 = trunc i32 %2435 to i8
  %2437 = and i8 %2436, 1
  %2438 = xor i8 %2437, 1
  store i8 %2438, i8* %21, align 1
  %2439 = xor i8 %2427, %2417
  %2440 = zext i8 %2439 to i32
  %2441 = xor i32 %2440, %2431
  %2442 = lshr i32 %2441, 4
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  store i8 %2444, i8* %26, align 1
  %2445 = icmp eq i32 %2431, 0
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %29, align 1
  %2447 = lshr i32 %2431, 31
  %2448 = trunc i32 %2447 to i8
  store i8 %2448, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v103 = select i1 %2445, i64 51, i64 159
  %2449 = add i64 %2374, %.v103
  store i64 %2449, i64* %3, align 8
  br i1 %2445, label %block_4131bd, label %block_.L_413229

block_4131bd:                                     ; preds = %block_.L_41318a
  %2450 = load i64, i64* %RBP.i, align 8
  %2451 = add i64 %2450, -1000
  %2452 = add i64 %2449, 7
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i64*
  %2454 = load i64, i64* %2453, align 8
  store i64 %2454, i64* %RAX.i802.pre-phi, align 8
  %2455 = add i64 %2450, -1016
  %2456 = add i64 %2449, 14
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i32*
  %2458 = load i32, i32* %2457, align 4
  %2459 = sext i32 %2458 to i64
  store i64 %2459, i64* %RCX.i759, align 8
  %2460 = shl nsw i64 %2459, 2
  %2461 = add i64 %2460, %2454
  %2462 = add i64 %2449, 17
  store i64 %2462, i64* %3, align 8
  %2463 = inttoptr i64 %2461 to i32*
  %2464 = load i32, i32* %2463, align 4
  %2465 = add i32 %2464, 1
  %2466 = zext i32 %2465 to i64
  store i64 %2466, i64* %RDX.i564.pre-phi, align 8
  %2467 = icmp eq i32 %2464, -1
  %2468 = icmp eq i32 %2465, 0
  %2469 = or i1 %2467, %2468
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %14, align 1
  %2471 = and i32 %2465, 255
  %2472 = tail call i32 @llvm.ctpop.i32(i32 %2471)
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  %2475 = xor i8 %2474, 1
  store i8 %2475, i8* %21, align 1
  %2476 = xor i32 %2465, %2464
  %2477 = lshr i32 %2476, 4
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  store i8 %2479, i8* %26, align 1
  %2480 = zext i1 %2468 to i8
  store i8 %2480, i8* %29, align 1
  %2481 = lshr i32 %2465, 31
  %2482 = trunc i32 %2481 to i8
  store i8 %2482, i8* %32, align 1
  %2483 = lshr i32 %2464, 31
  %2484 = xor i32 %2481, %2483
  %2485 = add nuw nsw i32 %2484, %2481
  %2486 = icmp eq i32 %2485, 2
  %2487 = zext i1 %2486 to i8
  store i8 %2487, i8* %38, align 1
  %2488 = sext i32 %2465 to i64
  store i64 %2488, i64* %RAX.i802.pre-phi, align 8
  %2489 = shl nsw i64 %2488, 2
  %2490 = add nsw i64 %2489, 11187184
  %2491 = add i64 %2449, 30
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i32*
  %2493 = load i32, i32* %2492, align 4
  %2494 = zext i32 %2493 to i64
  store i64 %2494, i64* %RDX.i564.pre-phi, align 8
  %2495 = add i64 %2450, -12
  %2496 = add i64 %2449, 34
  store i64 %2496, i64* %3, align 8
  %2497 = inttoptr i64 %2495 to i32*
  %2498 = load i32, i32* %2497, align 4
  %2499 = sext i32 %2498 to i64
  store i64 %2499, i64* %RAX.i802.pre-phi, align 8
  %2500 = shl nsw i64 %2499, 2
  %2501 = add nsw i64 %2500, 11187184
  %2502 = add i64 %2449, 41
  store i64 %2502, i64* %3, align 8
  %2503 = inttoptr i64 %2501 to i32*
  %2504 = load i32, i32* %2503, align 4
  %2505 = sub i32 %2493, %2504
  %2506 = icmp ult i32 %2493, %2504
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %14, align 1
  %2508 = and i32 %2505, 255
  %2509 = tail call i32 @llvm.ctpop.i32(i32 %2508)
  %2510 = trunc i32 %2509 to i8
  %2511 = and i8 %2510, 1
  %2512 = xor i8 %2511, 1
  store i8 %2512, i8* %21, align 1
  %2513 = xor i32 %2504, %2493
  %2514 = xor i32 %2513, %2505
  %2515 = lshr i32 %2514, 4
  %2516 = trunc i32 %2515 to i8
  %2517 = and i8 %2516, 1
  store i8 %2517, i8* %26, align 1
  %2518 = icmp eq i32 %2505, 0
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %29, align 1
  %2520 = lshr i32 %2505, 31
  %2521 = trunc i32 %2520 to i8
  store i8 %2521, i8* %32, align 1
  %2522 = lshr i32 %2493, 31
  %2523 = lshr i32 %2504, 31
  %2524 = xor i32 %2523, %2522
  %2525 = xor i32 %2520, %2522
  %2526 = add nuw nsw i32 %2525, %2524
  %2527 = icmp eq i32 %2526, 2
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %38, align 1
  %.v104 = select i1 %2518, i64 47, i64 108
  %2529 = add i64 %2449, %.v104
  store i64 %2529, i64* %3, align 8
  br i1 %2518, label %block_.L_4131ec, label %block_.L_413229

block_.L_4131ec:                                  ; preds = %block_4131bd, %block_41315b, %block_4130f9, %block_413097
  %2530 = phi i64 [ %2529, %block_4131bd ], [ %2373, %block_41315b ], [ %2217, %block_4130f9 ], [ %2063, %block_413097 ]
  %2531 = load i64, i64* %RBP.i, align 8
  %2532 = add i64 %2531, -1012
  %2533 = add i64 %2530, 6
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i32*
  %2535 = load i32, i32* %2534, align 4
  %2536 = zext i32 %2535 to i64
  store i64 %2536, i64* %RAX.i802.pre-phi, align 8
  %2537 = add i64 %2531, -16
  %2538 = add i64 %2530, 9
  store i64 %2538, i64* %3, align 8
  %2539 = inttoptr i64 %2537 to i32*
  %2540 = load i32, i32* %2539, align 4
  %2541 = sub i32 %2535, %2540
  %2542 = icmp ult i32 %2535, %2540
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %14, align 1
  %2544 = and i32 %2541, 255
  %2545 = tail call i32 @llvm.ctpop.i32(i32 %2544)
  %2546 = trunc i32 %2545 to i8
  %2547 = and i8 %2546, 1
  %2548 = xor i8 %2547, 1
  store i8 %2548, i8* %21, align 1
  %2549 = xor i32 %2540, %2535
  %2550 = xor i32 %2549, %2541
  %2551 = lshr i32 %2550, 4
  %2552 = trunc i32 %2551 to i8
  %2553 = and i8 %2552, 1
  store i8 %2553, i8* %26, align 1
  %2554 = icmp eq i32 %2541, 0
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %29, align 1
  %2556 = lshr i32 %2541, 31
  %2557 = trunc i32 %2556 to i8
  store i8 %2557, i8* %32, align 1
  %2558 = lshr i32 %2535, 31
  %2559 = lshr i32 %2540, 31
  %2560 = xor i32 %2559, %2558
  %2561 = xor i32 %2556, %2558
  %2562 = add nuw nsw i32 %2561, %2560
  %2563 = icmp eq i32 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %38, align 1
  %2565 = icmp ne i8 %2557, 0
  %2566 = xor i1 %2565, %2563
  %.v105 = select i1 %2566, i64 15, i64 46
  %2567 = add i64 %2530, %.v105
  store i64 %2567, i64* %3, align 8
  br i1 %2566, label %block_4131fb, label %block_.L_41321a

block_4131fb:                                     ; preds = %block_.L_4131ec
  %2568 = add i64 %2531, -1000
  %2569 = add i64 %2567, 7
  store i64 %2569, i64* %3, align 8
  %2570 = inttoptr i64 %2568 to i64*
  %2571 = load i64, i64* %2570, align 8
  store i64 %2571, i64* %RAX.i802.pre-phi, align 8
  %2572 = add i64 %2531, -1016
  %2573 = add i64 %2567, 14
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2572 to i32*
  %2575 = load i32, i32* %2574, align 4
  %2576 = sext i32 %2575 to i64
  store i64 %2576, i64* %RCX.i759, align 8
  %2577 = shl nsw i64 %2576, 2
  %2578 = add i64 %2577, %2571
  %2579 = add i64 %2567, 17
  store i64 %2579, i64* %3, align 8
  %2580 = inttoptr i64 %2578 to i32*
  %2581 = load i32, i32* %2580, align 4
  %2582 = zext i32 %2581 to i64
  store i64 %2582, i64* %RDX.i564.pre-phi, align 8
  %2583 = add i64 %2531, -24
  %2584 = add i64 %2567, 21
  store i64 %2584, i64* %3, align 8
  %2585 = inttoptr i64 %2583 to i64*
  %2586 = load i64, i64* %2585, align 8
  store i64 %2586, i64* %RAX.i802.pre-phi, align 8
  %2587 = add i64 %2567, 28
  store i64 %2587, i64* %3, align 8
  %2588 = load i32, i32* %2534, align 4
  %2589 = sext i32 %2588 to i64
  store i64 %2589, i64* %RCX.i759, align 8
  %2590 = shl nsw i64 %2589, 2
  %2591 = add i64 %2590, %2586
  %2592 = add i64 %2567, 31
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i32*
  store i32 %2581, i32* %2593, align 4
  %.pre80 = load i64, i64* %RBP.i, align 8
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_41321a

block_.L_41321a:                                  ; preds = %block_.L_4131ec, %block_4131fb
  %2594 = phi i64 [ %2567, %block_.L_4131ec ], [ %.pre81, %block_4131fb ]
  %2595 = phi i64 [ %2531, %block_.L_4131ec ], [ %.pre80, %block_4131fb ]
  %2596 = add i64 %2595, -1012
  %2597 = add i64 %2594, 6
  store i64 %2597, i64* %3, align 8
  %2598 = inttoptr i64 %2596 to i32*
  %2599 = load i32, i32* %2598, align 4
  %2600 = add i32 %2599, 1
  %2601 = zext i32 %2600 to i64
  store i64 %2601, i64* %RAX.i802.pre-phi, align 8
  %2602 = icmp eq i32 %2599, -1
  %2603 = icmp eq i32 %2600, 0
  %2604 = or i1 %2602, %2603
  %2605 = zext i1 %2604 to i8
  store i8 %2605, i8* %14, align 1
  %2606 = and i32 %2600, 255
  %2607 = tail call i32 @llvm.ctpop.i32(i32 %2606)
  %2608 = trunc i32 %2607 to i8
  %2609 = and i8 %2608, 1
  %2610 = xor i8 %2609, 1
  store i8 %2610, i8* %21, align 1
  %2611 = xor i32 %2600, %2599
  %2612 = lshr i32 %2611, 4
  %2613 = trunc i32 %2612 to i8
  %2614 = and i8 %2613, 1
  store i8 %2614, i8* %26, align 1
  %2615 = zext i1 %2603 to i8
  store i8 %2615, i8* %29, align 1
  %2616 = lshr i32 %2600, 31
  %2617 = trunc i32 %2616 to i8
  store i8 %2617, i8* %32, align 1
  %2618 = lshr i32 %2599, 31
  %2619 = xor i32 %2616, %2618
  %2620 = add nuw nsw i32 %2619, %2616
  %2621 = icmp eq i32 %2620, 2
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %38, align 1
  %2623 = add i64 %2594, 15
  store i64 %2623, i64* %3, align 8
  store i32 %2600, i32* %2598, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_413229

block_.L_413229:                                  ; preds = %block_4131bd, %block_.L_41318a, %block_.L_41321a
  %2624 = phi i64 [ %.pre82, %block_.L_41321a ], [ %2529, %block_4131bd ], [ %2449, %block_.L_41318a ]
  %2625 = load i64, i64* %RBP.i, align 8
  %2626 = add i64 %2625, -1016
  %2627 = add i64 %2624, 11
  store i64 %2627, i64* %3, align 8
  %2628 = inttoptr i64 %2626 to i32*
  %2629 = load i32, i32* %2628, align 4
  %2630 = add i32 %2629, 1
  %2631 = zext i32 %2630 to i64
  store i64 %2631, i64* %RAX.i802.pre-phi, align 8
  %2632 = icmp eq i32 %2629, -1
  %2633 = icmp eq i32 %2630, 0
  %2634 = or i1 %2632, %2633
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %14, align 1
  %2636 = and i32 %2630, 255
  %2637 = tail call i32 @llvm.ctpop.i32(i32 %2636)
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = xor i8 %2639, 1
  store i8 %2640, i8* %21, align 1
  %2641 = xor i32 %2630, %2629
  %2642 = lshr i32 %2641, 4
  %2643 = trunc i32 %2642 to i8
  %2644 = and i8 %2643, 1
  store i8 %2644, i8* %26, align 1
  %2645 = zext i1 %2633 to i8
  store i8 %2645, i8* %29, align 1
  %2646 = lshr i32 %2630, 31
  %2647 = trunc i32 %2646 to i8
  store i8 %2647, i8* %32, align 1
  %2648 = lshr i32 %2629, 31
  %2649 = xor i32 %2646, %2648
  %2650 = add nuw nsw i32 %2649, %2646
  %2651 = icmp eq i32 %2650, 2
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %38, align 1
  %2653 = add i64 %2624, 20
  store i64 %2653, i64* %3, align 8
  store i32 %2630, i32* %2628, align 4
  %2654 = load i64, i64* %3, align 8
  %2655 = add i64 %2654, -491
  store i64 %2655, i64* %3, align 8
  br label %block_.L_413052

block_.L_413242:                                  ; preds = %block_.L_413052
  %2656 = add i64 %1875, -1012
  %2657 = add i64 %1911, 6
  store i64 %2657, i64* %3, align 8
  %2658 = inttoptr i64 %2656 to i32*
  %2659 = load i32, i32* %2658, align 4
  %2660 = zext i32 %2659 to i64
  store i64 %2660, i64* %RAX.i802.pre-phi, align 8
  %2661 = add i64 %1875, -4
  %2662 = add i64 %1911, 9
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2661 to i32*
  store i32 %2659, i32* %2663, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_41324b

block_.L_41324b:                                  ; preds = %block_.L_413242, %block_.L_41300d
  %2664 = phi i64 [ %.pre79, %block_.L_413242 ], [ %1844, %block_.L_41300d ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.15, %block_.L_413242 ], [ %MEMORY.8, %block_.L_41300d ]
  %2665 = load i64, i64* %RBP.i, align 8
  %2666 = add i64 %2665, -4
  %2667 = add i64 %2664, 3
  store i64 %2667, i64* %3, align 8
  %2668 = inttoptr i64 %2666 to i32*
  %2669 = load i32, i32* %2668, align 4
  %2670 = zext i32 %2669 to i64
  store i64 %2670, i64* %RAX.i802.pre-phi, align 8
  %2671 = load i64, i64* %6, align 8
  %2672 = add i64 %2671, 1152
  store i64 %2672, i64* %6, align 8
  %2673 = icmp ugt i64 %2671, -1153
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %14, align 1
  %2675 = trunc i64 %2672 to i32
  %2676 = and i32 %2675, 255
  %2677 = tail call i32 @llvm.ctpop.i32(i32 %2676)
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  %2680 = xor i8 %2679, 1
  store i8 %2680, i8* %21, align 1
  %2681 = xor i64 %2672, %2671
  %2682 = lshr i64 %2681, 4
  %2683 = trunc i64 %2682 to i8
  %2684 = and i8 %2683, 1
  store i8 %2684, i8* %26, align 1
  %2685 = icmp eq i64 %2672, 0
  %2686 = zext i1 %2685 to i8
  store i8 %2686, i8* %29, align 1
  %2687 = lshr i64 %2672, 63
  %2688 = trunc i64 %2687 to i8
  store i8 %2688, i8* %32, align 1
  %2689 = lshr i64 %2671, 63
  %2690 = xor i64 %2687, %2689
  %2691 = add nuw nsw i64 %2690, %2687
  %2692 = icmp eq i64 %2691, 2
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %38, align 1
  %2694 = add i64 %2664, 11
  store i64 %2694, i64* %3, align 8
  %2695 = add i64 %2671, 1160
  %2696 = inttoptr i64 %2672 to i64*
  %2697 = load i64, i64* %2696, align 8
  store i64 %2697, i64* %RBP.i, align 8
  store i64 %2695, i64* %6, align 8
  %2698 = add i64 %2664, 12
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2695 to i64*
  %2700 = load i64, i64* %2699, align 8
  store i64 %2700, i64* %3, align 8
  %2701 = add i64 %2671, 1168
  store i64 %2701, i64* %6, align 8
  ret %struct.Memory* %MEMORY.23
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
define %struct.Memory* @routine_subq__0x480___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1152
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1152
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
define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1012
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
define %struct.Memory* @routine_jae_.L_412ae9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_412ae9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412b5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x7bd___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1981, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x410__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1040
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
define %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1044
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
define %struct.Memory* @routine_movq_MINUS0x410__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1040
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x418__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1048
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
define %struct.Memory* @routine_movl_MINUS0x414__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1044
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
define %struct.Memory* @routine_movl_MINUS0x418__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1048
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
define %struct.Memory* @routine_jae_.L_412b81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_412b81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412bf2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7be___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1982, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x428__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1064
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x42c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1068
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x428__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1064
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x430__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1072
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x42c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1068
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
define %struct.Memory* @routine_movl_MINUS0x430__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1072
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
define %struct.Memory* @routine_je_.L_412c1c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_412c21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412c92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7bf___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1983, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x440__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1088
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x444__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1092
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x440__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1088
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x448__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1096
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x444__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1092
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
define %struct.Memory* @routine_movl_MINUS0x448__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1096
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
define %struct.Memory* @routine_je_.L_412cbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_412cc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412d32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7c0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1984, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x458__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1112
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x45c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x458__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x460__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1120
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x45c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1116
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
define %struct.Memory* @routine_movl_MINUS0x460__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1120
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
define %struct.Memory* @routine_je_.L_412d42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412db3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7c1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1985, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a4e7___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a4e7_type* @G__0x57a4e7 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x464__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1124
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x470__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1136
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x464__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1124
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
define %struct.Memory* @routine_movl__eax__MINUS0x474__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x470__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x478__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1144
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x474__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1140
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
define %struct.Memory* @routine_movl_MINUS0x478__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1144
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
define %struct.Memory* @routine_movl__edx__MINUS0x3fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1020
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3fc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1020
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
define %struct.Memory* @routine_movl_MINUS0x3ec__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1004
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
define %struct.Memory* @routine_jle_.L_412e5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x400__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1024
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
define %struct.Memory* @routine_movl_MINUS0x400__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1024
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
define %struct.Memory* @routine_cmpl__0x14__MINUS0x3ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1004
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
define %struct.Memory* @routine_jg_.L_413020(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rdx__MINUS0x3e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1000
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
define %struct.Memory* @routine_movl__esi__MINUS0x3fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1020
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
define %struct.Memory* @routine_movl__esi__MINUS0x3f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1008
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x14__MINUS0x3f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1008
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
define %struct.Memory* @routine_jg_.L_41301b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1016
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1016
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
define %struct.Memory* @routine_cmpl_MINUS0x3ec__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1004
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
define %struct.Memory* @routine_jge_.L_412f2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x3e8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1000
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1016
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
define %struct.Memory* @routine_movl__eax__MINUS0x3f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1016
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412ee6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x3e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1000
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3f0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1008
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
define %struct.Memory* @routine_jge_.L_41300d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x3e8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1000
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3f8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1016
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
define %struct.Memory* @routine_jne_.L_412fb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_412ff4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3f4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1012
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
define %struct.Memory* @routine_jge_.L_412fe5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x3f4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1012
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
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_jmpq_.L_412ff9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412f5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41324b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413048(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x3e0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -992
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
define %struct.Memory* @routine_movl__eax__MINUS0x47c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_413242(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4130c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4131ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_413128(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41318a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_413229(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41321a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41322e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413052(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x480___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1152
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1153
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
