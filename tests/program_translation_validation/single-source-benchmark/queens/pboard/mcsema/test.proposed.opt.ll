; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x602060_type = type <{ [8 x i8] }>
%G_0x602090_type = type <{ [1 x i8] }>
%G_0x602098_type = type <{ [8 x i8] }>
%G_0x6020b4_type = type <{ [4 x i8] }>
%G_0x6020c0___rcx_4__type = type <{ [4 x i8] }>
%G_0x602a20_type = type <{ [4 x i8] }>
%G__0x400fc9_type = type <{ [8 x i8] }>
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
@G_0x602060 = local_unnamed_addr global %G_0x602060_type zeroinitializer
@G_0x602090 = local_unnamed_addr global %G_0x602090_type zeroinitializer
@G_0x602098 = local_unnamed_addr global %G_0x602098_type zeroinitializer
@G_0x6020b4 = local_unnamed_addr global %G_0x6020b4_type zeroinitializer
@G_0x6020c0___rcx_4_ = global %G_0x6020c0___rcx_4__type zeroinitializer
@G_0x602a20 = local_unnamed_addr global %G_0x602a20_type zeroinitializer
@G__0x400fc9 = global %G__0x400fc9_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fflush(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: nounwind
declare extern_weak x86_64_sysvcc i64 @putchar(i64) #1

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @pboard(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #2 {
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  store i8 0, i8* %12, align 1
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %24 = icmp eq i32 %18, 0
  %25 = zext i1 %24 to i8
  store i8 %25, i8* %15, align 1
  %26 = lshr i32 %18, 31
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v = select i1 %24, i64 49, i64 21
  %28 = add i64 %10, %.v
  store i64 %28, i64* %3, align 8
  br i1 %24, label %entry.block_.L_400cf2_crit_edge, label %block_400cd6

entry.block_.L_400cf2_crit_edge:                  ; preds = %entry
  %.pre8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre9 = bitcast %union.anon* %.pre8 to i32*
  br label %block_.L_400cf2

block_400cd6:                                     ; preds = %entry
  %RDI.i65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 ptrtoint (%G__0x400fc9_type* @G__0x400fc9 to i64), i64* %RDI.i65, align 8
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %29 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  store i64 %29, i64* %RSI.i, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i = bitcast %union.anon* %30 to i8*
  store i8 0, i8* %AL.i, align 1
  %31 = add i64 %28, -1766
  %32 = add i64 %28, 25
  %33 = add i64 %7, -48
  %34 = inttoptr i64 %33 to i64*
  store i64 %32, i64* %34, align 8
  store i64 %33, i64* %6, align 8
  store i64 %31, i64* %3, align 8
  %35 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  %EAX.i86 = bitcast %union.anon* %30 to i32*
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -12
  %38 = load i32, i32* %EAX.i86, align 4
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 3
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %37 to i32*
  store i32 %38, i32* %41, align 4
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_400cf2

block_.L_400cf2:                                  ; preds = %entry.block_.L_400cf2_crit_edge, %block_400cd6
  %EAX.i79.pre-phi = phi i32* [ %.pre9, %entry.block_.L_400cf2_crit_edge ], [ %EAX.i86, %block_400cd6 ]
  %42 = phi i64 [ %28, %entry.block_.L_400cf2_crit_edge ], [ %.pre4, %block_400cd6 ]
  %43 = phi i64 [ %8, %entry.block_.L_400cf2_crit_edge ], [ %.pre, %block_400cd6 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry.block_.L_400cf2_crit_edge ], [ %35, %block_400cd6 ]
  %44 = add i64 %43, -4
  %45 = add i64 %42, 7
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %44 to i32*
  store i32 0, i32* %46, align 4
  %RAX.i81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI.i27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RCX.i59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400cf9

block_.L_400cf9:                                  ; preds = %block_.L_400d73, %block_.L_400cf2
  %47 = phi i64 [ %.pre5, %block_.L_400cf2 ], [ %278, %block_.L_400d73 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400cf2 ], [ %240, %block_.L_400d73 ]
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -4
  %50 = add i64 %47, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %RAX.i81, align 8
  %54 = load i32, i32* bitcast (%G_0x6020b4_type* @G_0x6020b4 to i32*), align 8
  %55 = sub i32 %52, %54
  %56 = icmp ult i32 %52, %54
  %57 = zext i1 %56 to i8
  store i8 %57, i8* %12, align 1
  %58 = and i32 %55, 255
  %59 = tail call i32 @llvm.ctpop.i32(i32 %58)
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = xor i8 %61, 1
  store i8 %62, i8* %13, align 1
  %63 = xor i32 %54, %52
  %64 = xor i32 %63, %55
  %65 = lshr i32 %64, 4
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  store i8 %67, i8* %14, align 1
  %68 = icmp eq i32 %55, 0
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %15, align 1
  %70 = lshr i32 %55, 31
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %16, align 1
  %72 = lshr i32 %52, 31
  %73 = lshr i32 %54, 31
  %74 = xor i32 %73, %72
  %75 = xor i32 %70, %72
  %76 = add nuw nsw i32 %75, %74
  %77 = icmp eq i32 %76, 2
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %17, align 1
  %79 = icmp ne i8 %71, 0
  %80 = xor i1 %79, %77
  %.v10 = select i1 %80, i64 16, i64 149
  %81 = add i64 %47, %.v10
  store i64 %81, i64* %3, align 8
  br i1 %80, label %block_400d09, label %block_.L_400d8e

block_400d09:                                     ; preds = %block_.L_400cf9
  %82 = add i64 %48, -8
  %83 = add i64 %81, 7
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i32*
  store i32 0, i32* %84, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400d10

block_.L_400d10:                                  ; preds = %block_.L_400d60, %block_400d09
  %85 = phi i64 [ %.pre6, %block_400d09 ], [ %234, %block_.L_400d60 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400d09 ], [ %MEMORY.3, %block_.L_400d60 ]
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -8
  %88 = add i64 %85, 3
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RAX.i81, align 8
  %92 = load i32, i32* bitcast (%G_0x602a20_type* @G_0x602a20 to i32*), align 8
  %93 = sub i32 %90, %92
  %94 = icmp ult i32 %90, %92
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %12, align 1
  %96 = and i32 %93, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96)
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %13, align 1
  %101 = xor i32 %92, %90
  %102 = xor i32 %101, %93
  %103 = lshr i32 %102, 4
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %14, align 1
  %106 = icmp eq i32 %93, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %15, align 1
  %108 = lshr i32 %93, 31
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %16, align 1
  %110 = lshr i32 %90, 31
  %111 = lshr i32 %92, 31
  %112 = xor i32 %111, %110
  %113 = xor i32 %108, %110
  %114 = add nuw nsw i32 %113, %112
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %17, align 1
  %117 = icmp ne i8 %109, 0
  %118 = xor i1 %117, %115
  %.v11 = select i1 %118, i64 16, i64 99
  %119 = add i64 %85, %.v11
  %120 = add i64 %119, 5
  store i64 %120, i64* %3, align 8
  br i1 %118, label %block_400d20, label %block_.L_400d73

block_400d20:                                     ; preds = %block_.L_400d10
  store i64 32, i64* %RDI.i27, align 8
  %121 = add i64 %119, -1856
  %122 = add i64 %119, 10
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, -8
  %125 = inttoptr i64 %124 to i64*
  store i64 %122, i64* %125, align 8
  store i64 %124, i64* %6, align 8
  store i64 %121, i64* %3, align 8
  %126 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @putchar to i64), %struct.Memory* %MEMORY.2)
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -8
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, 3
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %128 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RDI.i27, align 8
  %134 = add i64 %127, -4
  %135 = add i64 %129, 7
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %RCX.i59, align 8
  %139 = shl nsw i64 %138, 2
  %140 = add i64 %139, ptrtoint (%G_0x6020c0___rcx_4__type* @G_0x6020c0___rcx_4_ to i64)
  %141 = add i64 %129, 14
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = sub i32 %132, %143
  %145 = icmp ult i32 %132, %143
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %12, align 1
  %147 = and i32 %144, 255
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147)
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %13, align 1
  %152 = xor i32 %143, %132
  %153 = xor i32 %152, %144
  %154 = lshr i32 %153, 4
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  store i8 %156, i8* %14, align 1
  %157 = icmp eq i32 %144, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %15, align 1
  %159 = lshr i32 %144, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %16, align 1
  %161 = lshr i32 %132, 31
  %162 = lshr i32 %143, 31
  %163 = xor i32 %162, %161
  %164 = xor i32 %159, %161
  %165 = add nuw nsw i32 %164, %163
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %17, align 1
  %168 = add i64 %127, -16
  %169 = load i32, i32* %EAX.i79.pre-phi, align 4
  %170 = add i64 %129, 17
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %168 to i32*
  store i32 %169, i32* %171, align 4
  %172 = load i64, i64* %3, align 8
  %173 = load i8, i8* %15, align 1
  %174 = icmp eq i8 %173, 0
  %.v13 = select i1 %174, i64 24, i64 6
  %175 = add i64 %172, %.v13
  %176 = add i64 %175, 5
  store i64 %176, i64* %3, align 8
  br i1 %174, label %block_.L_400d53, label %block_400d41

block_400d41:                                     ; preds = %block_400d20
  store i64 81, i64* %RDI.i27, align 8
  %177 = add i64 %175, -1889
  %178 = add i64 %175, 10
  %179 = load i64, i64* %6, align 8
  %180 = add i64 %179, -8
  %181 = inttoptr i64 %180 to i64*
  store i64 %178, i64* %181, align 8
  store i64 %180, i64* %6, align 8
  store i64 %177, i64* %3, align 8
  %182 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @putchar to i64), %struct.Memory* %126)
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -20
  %185 = load i32, i32* %EAX.i79.pre-phi, align 4
  %186 = load i64, i64* %3, align 8
  %187 = add i64 %186, 3
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %184 to i32*
  store i32 %185, i32* %188, align 4
  %189 = load i64, i64* %3, align 8
  %190 = add i64 %189, 18
  store i64 %190, i64* %3, align 8
  br label %block_.L_400d60

block_.L_400d53:                                  ; preds = %block_400d20
  store i64 45, i64* %RDI.i27, align 8
  %191 = add i64 %175, -1907
  %192 = add i64 %175, 10
  %193 = load i64, i64* %6, align 8
  %194 = add i64 %193, -8
  %195 = inttoptr i64 %194 to i64*
  store i64 %192, i64* %195, align 8
  store i64 %194, i64* %6, align 8
  store i64 %191, i64* %3, align 8
  %196 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @putchar to i64), %struct.Memory* %126)
  %197 = load i64, i64* %RBP.i, align 8
  %198 = add i64 %197, -24
  %199 = load i32, i32* %EAX.i79.pre-phi, align 4
  %200 = load i64, i64* %3, align 8
  %201 = add i64 %200, 3
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %198 to i32*
  store i32 %199, i32* %202, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_400d60

block_.L_400d60:                                  ; preds = %block_.L_400d53, %block_400d41
  %203 = phi i64 [ %.pre7, %block_.L_400d53 ], [ %190, %block_400d41 ]
  %MEMORY.3 = phi %struct.Memory* [ %196, %block_.L_400d53 ], [ %182, %block_400d41 ]
  %204 = load i64, i64* %RBP.i, align 8
  %205 = add i64 %204, -8
  %206 = add i64 %203, 8
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  %208 = load i32, i32* %207, align 4
  %209 = add i32 %208, 1
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RAX.i81, align 8
  %211 = icmp eq i32 %208, -1
  %212 = icmp eq i32 %209, 0
  %213 = or i1 %211, %212
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %12, align 1
  %215 = and i32 %209, 255
  %216 = tail call i32 @llvm.ctpop.i32(i32 %215)
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  store i8 %219, i8* %13, align 1
  %220 = xor i32 %209, %208
  %221 = lshr i32 %220, 4
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %14, align 1
  %224 = zext i1 %212 to i8
  store i8 %224, i8* %15, align 1
  %225 = lshr i32 %209, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %16, align 1
  %227 = lshr i32 %208, 31
  %228 = xor i32 %225, %227
  %229 = add nuw nsw i32 %228, %225
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %17, align 1
  %232 = add i64 %203, 14
  store i64 %232, i64* %3, align 8
  store i32 %209, i32* %207, align 4
  %233 = load i64, i64* %3, align 8
  %234 = add i64 %233, -94
  store i64 %234, i64* %3, align 8
  br label %block_.L_400d10

block_.L_400d73:                                  ; preds = %block_.L_400d10
  store i64 10, i64* %RDI.i27, align 8
  %235 = add i64 %119, -1939
  %236 = add i64 %119, 10
  %237 = load i64, i64* %6, align 8
  %238 = add i64 %237, -8
  %239 = inttoptr i64 %238 to i64*
  store i64 %236, i64* %239, align 8
  store i64 %238, i64* %6, align 8
  store i64 %235, i64* %3, align 8
  %240 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @putchar to i64), %struct.Memory* %MEMORY.2)
  %241 = load i64, i64* %RBP.i, align 8
  %242 = add i64 %241, -28
  %243 = load i32, i32* %EAX.i79.pre-phi, align 4
  %244 = load i64, i64* %3, align 8
  %245 = add i64 %244, 3
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %242 to i32*
  store i32 %243, i32* %246, align 4
  %247 = load i64, i64* %RBP.i, align 8
  %248 = add i64 %247, -4
  %249 = load i64, i64* %3, align 8
  %250 = add i64 %249, 3
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %248 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = add i32 %252, 1
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RAX.i81, align 8
  %255 = icmp eq i32 %252, -1
  %256 = icmp eq i32 %253, 0
  %257 = or i1 %255, %256
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %12, align 1
  %259 = and i32 %253, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %13, align 1
  %264 = xor i32 %253, %252
  %265 = lshr i32 %264, 4
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  store i8 %267, i8* %14, align 1
  %268 = zext i1 %256 to i8
  store i8 %268, i8* %15, align 1
  %269 = lshr i32 %253, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %16, align 1
  %271 = lshr i32 %252, 31
  %272 = xor i32 %269, %271
  %273 = add nuw nsw i32 %272, %269
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %17, align 1
  %276 = add i64 %249, 9
  store i64 %276, i64* %3, align 8
  store i32 %253, i32* %251, align 4
  %277 = load i64, i64* %3, align 8
  %278 = add i64 %277, -144
  store i64 %278, i64* %3, align 8
  br label %block_.L_400cf9

block_.L_400d8e:                                  ; preds = %block_.L_400cf9
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %279 = load i64, i64* bitcast (%G_0x602060_type* @G_0x602060 to i64*), align 8
  store i64 %279, i64* %RDI.i, align 8
  %280 = add i64 %81, -1918
  %281 = add i64 %81, 13
  %282 = load i64, i64* %6, align 8
  %283 = add i64 %282, -8
  %284 = inttoptr i64 %283 to i64*
  store i64 %281, i64* %284, align 8
  store i64 %283, i64* %6, align 8
  store i64 %280, i64* %3, align 8
  %285 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %MEMORY.1)
  %286 = load i64, i64* %RBP.i, align 8
  %287 = add i64 %286, -32
  %288 = load i32, i32* %EAX.i79.pre-phi, align 4
  %289 = load i64, i64* %3, align 8
  %290 = add i64 %289, 3
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %287 to i32*
  store i32 %288, i32* %291, align 4
  %292 = load i64, i64* %6, align 8
  %293 = load i64, i64* %3, align 8
  %294 = add i64 %292, 32
  store i64 %294, i64* %6, align 8
  %295 = icmp ugt i64 %292, -33
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %12, align 1
  %297 = trunc i64 %294 to i32
  %298 = and i32 %297, 255
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298)
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %13, align 1
  %303 = xor i64 %294, %292
  %304 = lshr i64 %303, 4
  %305 = trunc i64 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %14, align 1
  %307 = icmp eq i64 %294, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %15, align 1
  %309 = lshr i64 %294, 63
  %310 = trunc i64 %309 to i8
  store i8 %310, i8* %16, align 1
  %311 = lshr i64 %292, 63
  %312 = xor i64 %309, %311
  %313 = add nuw nsw i64 %312, %309
  %314 = icmp eq i64 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %17, align 1
  %316 = add i64 %293, 5
  store i64 %316, i64* %3, align 8
  %317 = add i64 %292, 40
  %318 = inttoptr i64 %294 to i64*
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %RBP.i, align 8
  store i64 %317, i64* %6, align 8
  %320 = add i64 %293, 6
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %317 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %3, align 8
  %323 = add i64 %292, 48
  store i64 %323, i64* %6, align 8
  ret %struct.Memory* %285
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #4 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 32
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x0__0x602090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #4 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602090_type* @G_0x602090 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_400cf2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__0x400fc9___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400fc9_type* @G__0x400fc9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_0x602098___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602098_type* @G_0x602098 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_0x6020b4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #4 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x6020b4_type* @G_0x6020b4 to i32*), align 8
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_0x602a20___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #4 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x602a20_type* @G_0x602a20 to i32*), align 8
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400d73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x20___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 32, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_callq_.putchar_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_0x6020c0___rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #4 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, ptrtoint (%G_0x6020c0___rcx_4__type* @G_0x6020c0___rcx_4_ to i64)
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_400d53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x51___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 81, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x2d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 45, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #4 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0xa___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400cf9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_0x602060___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602060_type* @G_0x602060 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_callq_.fflush_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #4 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSP, align 8
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
attributes #1 = { nounwind }
attributes #2 = { alwaysinline }
attributes #3 = { alwaysinline norecurse nounwind }
attributes #4 = { alwaysinline nounwind }
