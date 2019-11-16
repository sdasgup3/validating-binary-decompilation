; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x25e41__rip__type = type <{ [4 x i8] }>
%G_0x26449__rip__type = type <{ [8 x i8] }>
%G__0x4588f1_type = type <{ [8 x i8] }>
%G__0x458927_type = type <{ [8 x i8] }>
%G__0x458957_type = type <{ [8 x i8] }>
%G__0x4589a2_type = type <{ [8 x i8] }>
%G__0x4589e3_type = type <{ [8 x i8] }>
%G__0x458a32_type = type <{ [8 x i8] }>
%G__0x458a81_type = type <{ [8 x i8] }>
%G__0x458ace_type = type <{ [8 x i8] }>
%G__0x458b1b_type = type <{ [8 x i8] }>
%G__0x458d45_type = type <{ [8 x i8] }>
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
@G_0x25e41__rip_ = global %G_0x25e41__rip__type zeroinitializer
@G_0x26449__rip_ = global %G_0x26449__rip__type zeroinitializer
@G__0x4588f1 = global %G__0x4588f1_type zeroinitializer
@G__0x458927 = global %G__0x458927_type zeroinitializer
@G__0x458957 = global %G__0x458957_type zeroinitializer
@G__0x4589a2 = global %G__0x4589a2_type zeroinitializer
@G__0x4589e3 = global %G__0x4589e3_type zeroinitializer
@G__0x458a32 = global %G__0x458a32_type zeroinitializer
@G__0x458a81 = global %G__0x458a81_type zeroinitializer
@G__0x458ace = global %G__0x458ace_type zeroinitializer
@G__0x458b1b = global %G__0x458b1b_type zeroinitializer
@G__0x458d45 = global %G__0x458d45_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451f40.FSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @MSAVerifyParse(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -216
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 208
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
  %RDI.i54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i54, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %RDI.i54, align 8
  %50 = add i64 %49, 28
  %51 = add i64 %46, 8
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %50 to i32*
  %53 = load i32, i32* %52, align 4
  store i8 0, i8* %14, align 1
  %54 = and i32 %53, 255
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54)
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %59 = icmp eq i32 %53, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %30, align 1
  %61 = lshr i32 %53, 31
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v70 = select i1 %59, i64 14, i64 89
  %63 = add i64 %46, %.v70
  store i64 %63, i64* %3, align 8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i242 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  br i1 %59, label %block_42e2dd, label %entry.block_.L_42e328_crit_edge

entry.block_.L_42e328_crit_edge:                  ; preds = %entry
  %.pre68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre69 = bitcast %union.anon* %64 to i8*
  br label %block_.L_42e328

block_42e2dd:                                     ; preds = %entry
  %65 = add i64 %63, 4
  store i64 %65, i64* %3, align 8
  %66 = load i64, i64* %48, align 8
  store i64 %66, i64* %RAX.i242, align 8
  %67 = add i64 %66, 40
  %68 = add i64 %63, 9
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i64*
  %70 = load i64, i64* %69, align 8
  store i8 0, i8* %14, align 1
  %71 = trunc i64 %70 to i32
  %72 = and i32 %71, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72)
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %77 = icmp eq i64 %70, 0
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %30, align 1
  %79 = lshr i64 %70, 63
  %80 = trunc i64 %79 to i8
  store i8 %80, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v91 = select i1 %77, i64 32, i64 15
  %81 = add i64 %63, %.v91
  store i64 %81, i64* %3, align 8
  br i1 %77, label %block_.L_42e2fd, label %block_42e2ec

block_42e2ec:                                     ; preds = %block_42e2dd
  %82 = add i64 %81, 4
  store i64 %82, i64* %3, align 8
  %83 = load i64, i64* %48, align 8
  store i64 %83, i64* %RAX.i242, align 8
  %84 = add i64 %83, 40
  %85 = add i64 %81, 8
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RAX.i242, align 8
  %88 = add i64 %44, -24
  %89 = add i64 %81, 12
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i64*
  store i64 %87, i64* %90, align 8
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 24
  br label %block_.L_42e310

block_.L_42e2fd:                                  ; preds = %block_42e2dd
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i242, align 8
  %93 = add i64 %44, -24
  %94 = add i64 %81, 14
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %95, align 8
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 5
  store i64 %97, i64* %3, align 8
  br label %block_.L_42e310

block_.L_42e310:                                  ; preds = %block_.L_42e2fd, %block_42e2ec
  %storemerge = phi i64 [ %92, %block_42e2ec ], [ %97, %block_.L_42e2fd ]
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -24
  %100 = add i64 %storemerge, 4
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i64*
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %RAX.i242, align 8
  store i64 ptrtoint (%G__0x4588f1_type* @G__0x4588f1 to i64), i64* %RDI.i54, align 8
  %RSI.i853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 %102, i64* %RSI.i853, align 8
  %AL.i850 = bitcast %union.anon* %64 to i8*
  store i8 0, i8* %AL.i850, align 1
  %103 = add i64 %storemerge, 67328
  %104 = add i64 %storemerge, 24
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, -8
  %107 = inttoptr i64 %106 to i64*
  store i64 %104, i64* %107, align 8
  store i64 %106, i64* %6, align 8
  store i64 %103, i64* %3, align 8
  %call2_42e323 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %103, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_42e328

block_.L_42e328:                                  ; preds = %entry.block_.L_42e328_crit_edge, %block_.L_42e310
  %AL.i350.pre-phi = phi i8* [ %.pre69, %entry.block_.L_42e328_crit_edge ], [ %AL.i850, %block_.L_42e310 ]
  %RSI.i418.pre-phi = phi i64* [ %.pre68, %entry.block_.L_42e328_crit_edge ], [ %RSI.i853, %block_.L_42e310 ]
  %108 = phi i64 [ %63, %entry.block_.L_42e328_crit_edge ], [ %.pre40, %block_.L_42e310 ]
  %109 = phi i64 [ %44, %entry.block_.L_42e328_crit_edge ], [ %.pre, %block_.L_42e310 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %entry.block_.L_42e328_crit_edge ], [ %call2_42e323, %block_.L_42e310 ]
  %110 = add i64 %109, -8
  %111 = add i64 %108, 4
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RAX.i242, align 8
  %114 = add i64 %113, 328
  %115 = add i64 %108, 11
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i64*
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %RAX.i242, align 8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i842 = getelementptr inbounds %union.anon, %union.anon* %118, i64 0, i32 0
  %119 = add i64 %108, 13
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %117 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RCX.i842, align 8
  %123 = add i64 %108, 17
  store i64 %123, i64* %3, align 8
  %124 = load i64, i64* %112, align 8
  store i64 %124, i64* %RAX.i242, align 8
  %ECX.i835 = bitcast %union.anon* %118 to i32*
  %125 = add i64 %124, 24
  %126 = add i64 %108, 20
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  store i32 %121, i32* %127, align 4
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -12
  %130 = load i64, i64* %3, align 8
  %131 = add i64 %130, 7
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %129 to i32*
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i671 = getelementptr inbounds %union.anon, %union.anon* %133, i64 0, i32 0
  %EDX.i663 = bitcast %union.anon* %133 to i32*
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %136 = bitcast i64* %135 to double*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %138 = bitcast %union.VectorReg* %137 to double*
  %RDX.i685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_42e343

block_.L_42e343:                                  ; preds = %block_.L_42e6ac, %block_.L_42e328
  %139 = phi i64 [ %.pre41, %block_.L_42e328 ], [ %1041, %block_.L_42e6ac ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_42e328 ], [ %MEMORY.12, %block_.L_42e6ac ]
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -12
  %142 = add i64 %139, 3
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = zext i32 %144 to i64
  store i64 %145, i64* %RAX.i242, align 8
  %146 = add i64 %140, -8
  %147 = add i64 %139, 7
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i64*
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %RCX.i842, align 8
  %150 = add i64 %149, 28
  %151 = add i64 %139, 10
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = sub i32 %144, %153
  %155 = icmp ult i32 %144, %153
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %14, align 1
  %157 = and i32 %154, 255
  %158 = tail call i32 @llvm.ctpop.i32(i32 %157)
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  %161 = xor i8 %160, 1
  store i8 %161, i8* %21, align 1
  %162 = xor i32 %153, %144
  %163 = xor i32 %162, %154
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %27, align 1
  %167 = icmp eq i32 %154, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %30, align 1
  %169 = lshr i32 %154, 31
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %33, align 1
  %171 = lshr i32 %144, 31
  %172 = lshr i32 %153, 31
  %173 = xor i32 %172, %171
  %174 = xor i32 %169, %171
  %175 = add nuw nsw i32 %174, %173
  %176 = icmp eq i32 %175, 2
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %39, align 1
  %178 = icmp ne i8 %170, 0
  %179 = xor i1 %178, %176
  %.v = select i1 %179, i64 16, i64 892
  %180 = add i64 %139, %.v
  %181 = add i64 %180, 4
  store i64 %181, i64* %3, align 8
  %182 = load i64, i64* %148, align 8
  store i64 %182, i64* %RAX.i242, align 8
  br i1 %179, label %block_42e353, label %block_.L_42e6bf

block_42e353:                                     ; preds = %block_.L_42e343
  %183 = add i64 %180, 7
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i64*
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %RAX.i242, align 8
  %186 = add i64 %180, 11
  store i64 %186, i64* %3, align 8
  %187 = load i32, i32* %143, align 4
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %RCX.i842, align 8
  %189 = shl nsw i64 %188, 3
  %190 = add i64 %189, %185
  %191 = add i64 %180, 16
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i64*
  %193 = load i64, i64* %192, align 8
  store i8 0, i8* %14, align 1
  %194 = trunc i64 %193 to i32
  %195 = and i32 %194, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %200 = icmp eq i64 %193, 0
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %30, align 1
  %202 = lshr i64 %193, 63
  %203 = trunc i64 %202 to i8
  store i8 %203, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v81 = select i1 %200, i64 22, i64 121
  %204 = add i64 %180, %.v81
  store i64 %204, i64* %3, align 8
  br i1 %200, label %block_42e369, label %block_.L_42e3cc

block_42e369:                                     ; preds = %block_42e353
  %205 = add i64 %204, 4
  store i64 %205, i64* %3, align 8
  %206 = load i64, i64* %148, align 8
  store i64 %206, i64* %RAX.i242, align 8
  %207 = add i64 %206, 8
  %208 = add i64 %204, 8
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i64*
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %RAX.i242, align 8
  %211 = add i64 %204, 12
  store i64 %211, i64* %3, align 8
  %212 = load i32, i32* %143, align 4
  %213 = sext i32 %212 to i64
  store i64 %213, i64* %RCX.i842, align 8
  %214 = shl nsw i64 %213, 3
  %215 = add i64 %214, %210
  %216 = add i64 %204, 16
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %RSI.i418.pre-phi, align 8
  %219 = add i64 %204, 20
  store i64 %219, i64* %3, align 8
  %220 = load i64, i64* %148, align 8
  store i64 %220, i64* %RAX.i242, align 8
  %221 = add i64 %220, 40
  %222 = add i64 %204, 25
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  store i8 0, i8* %14, align 1
  %225 = trunc i64 %224 to i32
  %226 = and i32 %225, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226)
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %231 = icmp eq i64 %224, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %30, align 1
  %233 = lshr i64 %224, 63
  %234 = trunc i64 %233 to i8
  store i8 %234, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %235 = add i64 %140, -32
  %236 = add i64 %204, 29
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i64*
  store i64 %218, i64* %237, align 8
  %238 = load i64, i64* %3, align 8
  %239 = load i8, i8* %30, align 1
  %240 = icmp ne i8 %239, 0
  %.v103 = select i1 %240, i64 23, i64 6
  %241 = add i64 %238, %.v103
  store i64 %241, i64* %3, align 8
  %cmpBr_42e386 = icmp eq i8 %239, 1
  br i1 %cmpBr_42e386, label %block_.L_42e39d, label %block_42e38c

block_42e38c:                                     ; preds = %block_42e369
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -8
  %244 = add i64 %241, 4
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i64*
  %246 = load i64, i64* %245, align 8
  store i64 %246, i64* %RAX.i242, align 8
  %247 = add i64 %246, 40
  %248 = add i64 %241, 8
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %RAX.i242, align 8
  %251 = add i64 %242, -40
  %252 = add i64 %241, 12
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i64*
  store i64 %250, i64* %253, align 8
  %254 = load i64, i64* %3, align 8
  %255 = add i64 %254, 24
  br label %block_.L_42e3b0

block_.L_42e39d:                                  ; preds = %block_42e369
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i242, align 8
  %256 = load i64, i64* %RBP.i, align 8
  %257 = add i64 %256, -40
  %258 = add i64 %241, 14
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %259, align 8
  %260 = load i64, i64* %3, align 8
  %261 = add i64 %260, 5
  store i64 %261, i64* %3, align 8
  br label %block_.L_42e3b0

block_.L_42e3b0:                                  ; preds = %block_.L_42e39d, %block_42e38c
  %storemerge32 = phi i64 [ %255, %block_42e38c ], [ %261, %block_.L_42e39d ]
  %262 = load i64, i64* %RBP.i, align 8
  %263 = add i64 %262, -40
  %264 = add i64 %storemerge32, 4
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i64*
  %266 = load i64, i64* %265, align 8
  store i64 %266, i64* %RAX.i242, align 8
  store i64 ptrtoint (%G__0x458927_type* @G__0x458927 to i64), i64* %RDI.i54, align 8
  %267 = add i64 %262, -32
  %268 = add i64 %storemerge32, 18
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i64*
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %RSI.i418.pre-phi, align 8
  store i64 %266, i64* %RDX.i685, align 8
  store i8 0, i8* %AL.i350.pre-phi, align 1
  %271 = add i64 %storemerge32, 67168
  %272 = add i64 %storemerge32, 28
  %273 = load i64, i64* %6, align 8
  %274 = add i64 %273, -8
  %275 = inttoptr i64 %274 to i64*
  store i64 %272, i64* %275, align 8
  store i64 %274, i64* %6, align 8
  store i64 %271, i64* %3, align 8
  %call2_42e3c7 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %271, %struct.Memory* %MEMORY.2)
  %.pre55 = load i64, i64* %RBP.i, align 8
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_42e3cc

block_.L_42e3cc:                                  ; preds = %block_42e353, %block_.L_42e3b0
  %276 = phi i64 [ %.pre56, %block_.L_42e3b0 ], [ %204, %block_42e353 ]
  %277 = phi i64 [ %.pre55, %block_.L_42e3b0 ], [ %140, %block_42e353 ]
  %278 = add i64 %277, -8
  %279 = add i64 %276, 4
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i64*
  %281 = load i64, i64* %280, align 8
  store i64 %281, i64* %RAX.i242, align 8
  %282 = add i64 %281, 32
  %283 = add i64 %276, 7
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %282 to i32*
  %285 = load i32, i32* %284, align 4
  %286 = and i32 %285, 1
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RCX.i842, align 8
  store i8 0, i8* %14, align 1
  %288 = tail call i32 @llvm.ctpop.i32(i32 %286)
  %289 = trunc i32 %288 to i8
  %290 = xor i8 %289, 1
  store i8 %290, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %291 = icmp eq i32 %286, 0
  %292 = trunc i32 %286 to i8
  %293 = xor i8 %292, 1
  store i8 %293, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v82 = select i1 %291, i64 159, i64 19
  %294 = add i64 %276, %.v82
  store i64 %294, i64* %3, align 8
  br i1 %291, label %block_.L_42e46b, label %block_42e3df

block_42e3df:                                     ; preds = %block_.L_42e3cc
  %295 = add i64 %294, ptrtoint (%G_0x26449__rip__type* @G_0x26449__rip_ to i64)
  %296 = add i64 %294, 8
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i64*
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %134, align 1
  store double 0.000000e+00, double* %136, align 1
  %299 = add i64 %294, 12
  store i64 %299, i64* %3, align 8
  %300 = load i64, i64* %280, align 8
  store i64 %300, i64* %RAX.i242, align 8
  %301 = add i64 %300, 16
  %302 = add i64 %294, 16
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %RAX.i242, align 8
  %305 = add i64 %277, -12
  %306 = add i64 %294, 20
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  store i64 %309, i64* %RCX.i842, align 8
  %310 = shl nsw i64 %309, 2
  %311 = add i64 %310, %304
  %312 = add i64 %294, 25
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to float*
  %314 = load float, float* %313, align 4
  %315 = fpext float %314 to double
  store double %315, double* %138, align 1
  %316 = add i64 %294, 29
  store i64 %316, i64* %3, align 8
  %317 = bitcast i64 %298 to double
  %318 = fcmp uno double %315, %317
  br i1 %318, label %319, label %329

; <label>:319:                                    ; preds = %block_42e3df
  %320 = fadd double %315, %317
  %321 = bitcast double %320 to i64
  %322 = and i64 %321, 9221120237041090560
  %323 = icmp eq i64 %322, 9218868437227405312
  %324 = and i64 %321, 2251799813685247
  %325 = icmp ne i64 %324, 0
  %326 = and i1 %323, %325
  br i1 %326, label %327, label %335

; <label>:327:                                    ; preds = %319
  %328 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %316, %struct.Memory* %MEMORY.2)
  %.pre57 = load i64, i64* %3, align 8
  %.pre58 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:329:                                    ; preds = %block_42e3df
  %330 = fcmp ogt double %315, %317
  br i1 %330, label %335, label %331

; <label>:331:                                    ; preds = %329
  %332 = fcmp olt double %315, %317
  br i1 %332, label %335, label %333

; <label>:333:                                    ; preds = %331
  %334 = fcmp oeq double %315, %317
  br i1 %334, label %335, label %339

; <label>:335:                                    ; preds = %333, %331, %329, %319
  %336 = phi i8 [ 0, %329 ], [ 0, %331 ], [ 1, %333 ], [ 1, %319 ]
  %337 = phi i8 [ 0, %329 ], [ 0, %331 ], [ 0, %333 ], [ 1, %319 ]
  %338 = phi i8 [ 0, %329 ], [ 1, %331 ], [ 0, %333 ], [ 1, %319 ]
  store i8 %336, i8* %30, align 1
  store i8 %337, i8* %21, align 1
  store i8 %338, i8* %14, align 1
  br label %339

; <label>:339:                                    ; preds = %335, %333
  %340 = phi i8 [ %336, %335 ], [ %293, %333 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %339, %327
  %341 = phi i8 [ %.pre58, %327 ], [ %340, %339 ]
  %342 = phi i64 [ %.pre57, %327 ], [ %316, %339 ]
  %343 = phi %struct.Memory* [ %328, %327 ], [ %MEMORY.2, %339 ]
  %344 = icmp eq i8 %341, 0
  %.v83 = select i1 %344, i64 111, i64 6
  %345 = add i64 %342, %.v83
  store i64 %345, i64* %3, align 8
  br i1 %344, label %block_.L_42e46b, label %block_42e402

block_42e402:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %346 = load i8, i8* %21, align 1
  %347 = icmp ne i8 %346, 0
  %.v98 = select i1 %347, i64 105, i64 6
  %348 = add i64 %345, %.v98
  store i64 %348, i64* %3, align 8
  %cmpBr_42e402 = icmp eq i8 %346, 1
  br i1 %cmpBr_42e402, label %block_.L_42e46b, label %block_42e408

block_42e408:                                     ; preds = %block_42e402
  %349 = load i64, i64* %RBP.i, align 8
  %350 = add i64 %349, -8
  %351 = add i64 %348, 4
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i64*
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %RAX.i242, align 8
  %354 = add i64 %353, 8
  %355 = add i64 %348, 8
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i64*
  %357 = load i64, i64* %356, align 8
  store i64 %357, i64* %RAX.i242, align 8
  %358 = add i64 %349, -12
  %359 = add i64 %348, 12
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  store i64 %362, i64* %RCX.i842, align 8
  %363 = shl nsw i64 %362, 3
  %364 = add i64 %363, %357
  %365 = add i64 %348, 16
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %364 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %RSI.i418.pre-phi, align 8
  %368 = add i64 %348, 20
  store i64 %368, i64* %3, align 8
  %369 = load i64, i64* %352, align 8
  store i64 %369, i64* %RAX.i242, align 8
  %370 = add i64 %369, 40
  %371 = add i64 %348, 25
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i64*
  %373 = load i64, i64* %372, align 8
  store i8 0, i8* %14, align 1
  %374 = trunc i64 %373 to i32
  %375 = and i32 %374, 255
  %376 = tail call i32 @llvm.ctpop.i32(i32 %375)
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = xor i8 %378, 1
  store i8 %379, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %380 = icmp eq i64 %373, 0
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %30, align 1
  %382 = lshr i64 %373, 63
  %383 = trunc i64 %382 to i8
  store i8 %383, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %384 = add i64 %349, -48
  %385 = add i64 %348, 29
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i64*
  store i64 %367, i64* %386, align 8
  %387 = load i64, i64* %3, align 8
  %388 = load i8, i8* %30, align 1
  %389 = icmp ne i8 %388, 0
  %.v99 = select i1 %389, i64 23, i64 6
  %390 = add i64 %387, %.v99
  store i64 %390, i64* %3, align 8
  %cmpBr_42e425 = icmp eq i8 %388, 1
  br i1 %cmpBr_42e425, label %block_.L_42e43c, label %block_42e42b

block_42e42b:                                     ; preds = %block_42e408
  %391 = load i64, i64* %RBP.i, align 8
  %392 = add i64 %391, -8
  %393 = add i64 %390, 4
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i64*
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %RAX.i242, align 8
  %396 = add i64 %395, 40
  %397 = add i64 %390, 8
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RAX.i242, align 8
  %400 = add i64 %391, -56
  %401 = add i64 %390, 12
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i64*
  store i64 %399, i64* %402, align 8
  %403 = load i64, i64* %3, align 8
  %404 = add i64 %403, 24
  br label %block_.L_42e44f

block_.L_42e43c:                                  ; preds = %block_42e408
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i242, align 8
  %405 = load i64, i64* %RBP.i, align 8
  %406 = add i64 %405, -56
  %407 = add i64 %390, 14
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %408, align 8
  %409 = load i64, i64* %3, align 8
  %410 = add i64 %409, 5
  store i64 %410, i64* %3, align 8
  br label %block_.L_42e44f

block_.L_42e44f:                                  ; preds = %block_.L_42e43c, %block_42e42b
  %storemerge33 = phi i64 [ %404, %block_42e42b ], [ %410, %block_.L_42e43c ]
  %411 = load i64, i64* %RBP.i, align 8
  %412 = add i64 %411, -56
  %413 = add i64 %storemerge33, 4
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i64*
  %415 = load i64, i64* %414, align 8
  store i64 %415, i64* %RAX.i242, align 8
  store i64 ptrtoint (%G__0x458957_type* @G__0x458957 to i64), i64* %RDI.i54, align 8
  %416 = add i64 %411, -48
  %417 = add i64 %storemerge33, 18
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i64*
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %RSI.i418.pre-phi, align 8
  store i64 %415, i64* %RDX.i685, align 8
  store i8 0, i8* %AL.i350.pre-phi, align 1
  %420 = add i64 %storemerge33, 67009
  %421 = add i64 %storemerge33, 28
  %422 = load i64, i64* %6, align 8
  %423 = add i64 %422, -8
  %424 = inttoptr i64 %423 to i64*
  store i64 %421, i64* %424, align 8
  store i64 %423, i64* %6, align 8
  store i64 %420, i64* %3, align 8
  %call2_42e466 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %420, %struct.Memory* %343)
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_42e46b

block_.L_42e46b:                                  ; preds = %block_.L_42e44f, %block_42e402, %routine_ucomisd__xmm0___xmm1.exit, %block_.L_42e3cc
  %425 = phi i64 [ %294, %block_.L_42e3cc ], [ %345, %routine_ucomisd__xmm0___xmm1.exit ], [ %348, %block_42e402 ], [ %.pre59, %block_.L_42e44f ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.2, %block_.L_42e3cc ], [ %343, %routine_ucomisd__xmm0___xmm1.exit ], [ %343, %block_42e402 ], [ %call2_42e466, %block_.L_42e44f ]
  %426 = load i64, i64* %RBP.i, align 8
  %427 = add i64 %426, -8
  %428 = add i64 %425, 4
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %RAX.i242, align 8
  %431 = add i64 %430, 328
  %432 = add i64 %425, 11
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i64*
  %434 = load i64, i64* %433, align 8
  store i64 %434, i64* %RAX.i242, align 8
  %435 = add i64 %426, -12
  %436 = add i64 %425, 15
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = sext i32 %438 to i64
  store i64 %439, i64* %RCX.i842, align 8
  %440 = shl nsw i64 %439, 2
  %441 = add i64 %440, %434
  %442 = add i64 %425, 18
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RDX.i671, align 8
  %446 = add i64 %425, 22
  store i64 %446, i64* %3, align 8
  %447 = load i64, i64* %429, align 8
  store i64 %447, i64* %RAX.i242, align 8
  %448 = add i64 %447, 24
  %449 = add i64 %425, 25
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = sub i32 %444, %451
  %453 = icmp ult i32 %444, %451
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %14, align 1
  %455 = and i32 %452, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %21, align 1
  %460 = xor i32 %451, %444
  %461 = xor i32 %460, %452
  %462 = lshr i32 %461, 4
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  store i8 %464, i8* %27, align 1
  %465 = icmp eq i32 %452, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %30, align 1
  %467 = lshr i32 %452, 31
  %468 = trunc i32 %467 to i8
  store i8 %468, i8* %33, align 1
  %469 = lshr i32 %444, 31
  %470 = lshr i32 %451, 31
  %471 = xor i32 %470, %469
  %472 = xor i32 %467, %469
  %473 = add nuw nsw i32 %472, %471
  %474 = icmp eq i32 %473, 2
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %39, align 1
  %.v84 = select i1 %465, i64 167, i64 31
  %476 = add i64 %425, %.v84
  store i64 %476, i64* %3, align 8
  br i1 %465, label %block_.L_42e512, label %block_42e48a

block_42e48a:                                     ; preds = %block_.L_42e46b
  %477 = add i64 %476, 4
  store i64 %477, i64* %3, align 8
  %478 = load i64, i64* %429, align 8
  store i64 %478, i64* %RAX.i242, align 8
  %479 = add i64 %478, 8
  %480 = add i64 %476, 8
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i64*
  %482 = load i64, i64* %481, align 8
  store i64 %482, i64* %RAX.i242, align 8
  %483 = add i64 %476, 12
  store i64 %483, i64* %3, align 8
  %484 = load i32, i32* %437, align 4
  %485 = sext i32 %484 to i64
  store i64 %485, i64* %RCX.i842, align 8
  %486 = shl nsw i64 %485, 3
  %487 = add i64 %486, %482
  %488 = add i64 %476, 16
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i64*
  %490 = load i64, i64* %489, align 8
  store i64 %490, i64* %RSI.i418.pre-phi, align 8
  %491 = add i64 %476, 20
  store i64 %491, i64* %3, align 8
  %492 = load i64, i64* %429, align 8
  store i64 %492, i64* %RAX.i242, align 8
  %493 = add i64 %492, 328
  %494 = add i64 %476, 27
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %RAX.i242, align 8
  %497 = add i64 %476, 31
  store i64 %497, i64* %3, align 8
  %498 = load i32, i32* %437, align 4
  %499 = sext i32 %498 to i64
  store i64 %499, i64* %RCX.i842, align 8
  %500 = shl nsw i64 %499, 2
  %501 = add i64 %500, %496
  %502 = add i64 %476, 34
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RDX.i671, align 8
  %506 = add i64 %476, 38
  store i64 %506, i64* %3, align 8
  %507 = load i64, i64* %429, align 8
  store i64 %507, i64* %RAX.i242, align 8
  %508 = add i64 %507, 24
  %509 = add i64 %476, 41
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RCX.i842, align 8
  %513 = add i64 %476, 45
  store i64 %513, i64* %3, align 8
  %514 = load i64, i64* %429, align 8
  store i64 %514, i64* %RAX.i242, align 8
  %515 = add i64 %514, 40
  %516 = add i64 %476, 50
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i64*
  %518 = load i64, i64* %517, align 8
  store i8 0, i8* %14, align 1
  %519 = trunc i64 %518 to i32
  %520 = and i32 %519, 255
  %521 = tail call i32 @llvm.ctpop.i32(i32 %520)
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  store i8 %524, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %525 = icmp eq i64 %518, 0
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %30, align 1
  %527 = lshr i64 %518, 63
  %528 = trunc i64 %527 to i8
  store i8 %528, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %529 = add i64 %426, -64
  %530 = add i64 %476, 54
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i64*
  store i64 %490, i64* %531, align 8
  %532 = load i64, i64* %RBP.i, align 8
  %533 = add i64 %532, -68
  %534 = load i32, i32* %EDX.i663, align 4
  %535 = load i64, i64* %3, align 8
  %536 = add i64 %535, 3
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %533 to i32*
  store i32 %534, i32* %537, align 4
  %538 = load i64, i64* %RBP.i, align 8
  %539 = add i64 %538, -72
  %540 = load i32, i32* %ECX.i835, align 4
  %541 = load i64, i64* %3, align 8
  %542 = add i64 %541, 3
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %539 to i32*
  store i32 %540, i32* %543, align 4
  %544 = load i64, i64* %3, align 8
  %545 = load i8, i8* %30, align 1
  %546 = icmp ne i8 %545, 0
  %.v100 = select i1 %546, i64 23, i64 6
  %547 = add i64 %544, %.v100
  store i64 %547, i64* %3, align 8
  %cmpBr_42e4c6 = icmp eq i8 %545, 1
  br i1 %cmpBr_42e4c6, label %block_.L_42e4dd, label %block_42e4cc

block_42e4cc:                                     ; preds = %block_42e48a
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -8
  %550 = add i64 %547, 4
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RAX.i242, align 8
  %553 = add i64 %552, 40
  %554 = add i64 %547, 8
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i64*
  %556 = load i64, i64* %555, align 8
  store i64 %556, i64* %RAX.i242, align 8
  %557 = add i64 %548, -80
  %558 = add i64 %547, 12
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i64*
  store i64 %556, i64* %559, align 8
  %560 = load i64, i64* %3, align 8
  %561 = add i64 %560, 24
  br label %block_.L_42e4f0

block_.L_42e4dd:                                  ; preds = %block_42e48a
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i242, align 8
  %562 = load i64, i64* %RBP.i, align 8
  %563 = add i64 %562, -80
  %564 = add i64 %547, 14
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %565, align 8
  %566 = load i64, i64* %3, align 8
  %567 = add i64 %566, 5
  store i64 %567, i64* %3, align 8
  br label %block_.L_42e4f0

block_.L_42e4f0:                                  ; preds = %block_.L_42e4dd, %block_42e4cc
  %storemerge34 = phi i64 [ %561, %block_42e4cc ], [ %567, %block_.L_42e4dd ]
  %568 = load i64, i64* %RBP.i, align 8
  %569 = add i64 %568, -80
  %570 = add i64 %storemerge34, 4
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i64*
  %572 = load i64, i64* %571, align 8
  store i64 %572, i64* %RAX.i242, align 8
  store i64 ptrtoint (%G__0x4589a2_type* @G__0x4589a2 to i64), i64* %RDI.i54, align 8
  %573 = add i64 %568, -64
  %574 = add i64 %storemerge34, 18
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i64*
  %576 = load i64, i64* %575, align 8
  store i64 %576, i64* %RSI.i418.pre-phi, align 8
  %577 = add i64 %568, -68
  %578 = add i64 %storemerge34, 21
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = zext i32 %580 to i64
  store i64 %581, i64* %RDX.i671, align 8
  %582 = add i64 %568, -72
  %583 = add i64 %storemerge34, 24
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RCX.i842, align 8
  store i64 %572, i64* %R8.i, align 8
  store i8 0, i8* %AL.i350.pre-phi, align 1
  %587 = add i64 %storemerge34, 66848
  %588 = add i64 %storemerge34, 34
  %589 = load i64, i64* %6, align 8
  %590 = add i64 %589, -8
  %591 = inttoptr i64 %590 to i64*
  store i64 %588, i64* %591, align 8
  store i64 %590, i64* %6, align 8
  store i64 %587, i64* %3, align 8
  %call2_42e50d = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %587, %struct.Memory* %MEMORY.6)
  %.pre60 = load i64, i64* %RBP.i, align 8
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_42e512

block_.L_42e512:                                  ; preds = %block_.L_42e4f0, %block_.L_42e46b
  %592 = phi i64 [ %476, %block_.L_42e46b ], [ %.pre61, %block_.L_42e4f0 ]
  %593 = phi i64 [ %426, %block_.L_42e46b ], [ %.pre60, %block_.L_42e4f0 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.6, %block_.L_42e46b ], [ %call2_42e50d, %block_.L_42e4f0 ]
  %594 = add i64 %593, -8
  %595 = add i64 %592, 4
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i64*
  %597 = load i64, i64* %596, align 8
  store i64 %597, i64* %RAX.i242, align 8
  %598 = add i64 %597, 112
  %599 = add i64 %592, 9
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i64*
  %601 = load i64, i64* %600, align 8
  store i8 0, i8* %14, align 1
  %602 = trunc i64 %601 to i32
  %603 = and i32 %602, 255
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %608 = icmp eq i64 %601, 0
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %30, align 1
  %610 = lshr i64 %601, 63
  %611 = trunc i64 %610 to i8
  store i8 %611, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v85 = select i1 %608, i64 205, i64 15
  %612 = add i64 %592, %.v85
  store i64 %612, i64* %3, align 8
  br i1 %608, label %block_.L_42e5df, label %block_42e521

block_42e521:                                     ; preds = %block_.L_42e512
  %613 = add i64 %612, 4
  store i64 %613, i64* %3, align 8
  %614 = load i64, i64* %596, align 8
  store i64 %614, i64* %RAX.i242, align 8
  %615 = add i64 %614, 112
  %616 = add i64 %612, 8
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i64*
  %618 = load i64, i64* %617, align 8
  store i64 %618, i64* %RAX.i242, align 8
  %619 = add i64 %593, -12
  %620 = add i64 %612, 12
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = sext i32 %622 to i64
  store i64 %623, i64* %RCX.i842, align 8
  %624 = shl nsw i64 %623, 3
  %625 = add i64 %624, %618
  %626 = add i64 %612, 17
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i64*
  %628 = load i64, i64* %627, align 8
  store i8 0, i8* %14, align 1
  %629 = trunc i64 %628 to i32
  %630 = and i32 %629, 255
  %631 = tail call i32 @llvm.ctpop.i32(i32 %630)
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  %634 = xor i8 %633, 1
  store i8 %634, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %635 = icmp eq i64 %628, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %30, align 1
  %637 = lshr i64 %628, 63
  %638 = trunc i64 %637 to i8
  store i8 %638, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v86 = select i1 %635, i64 190, i64 23
  %639 = add i64 %612, %.v86
  store i64 %639, i64* %3, align 8
  br i1 %635, label %block_.L_42e5df, label %block_42e538

block_42e538:                                     ; preds = %block_42e521
  %640 = add i64 %639, 4
  store i64 %640, i64* %3, align 8
  %641 = load i64, i64* %596, align 8
  store i64 %641, i64* %RAX.i242, align 8
  %642 = add i64 %641, 336
  %643 = add i64 %639, 11
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i64*
  %645 = load i64, i64* %644, align 8
  store i64 %645, i64* %RAX.i242, align 8
  %646 = add i64 %639, 15
  store i64 %646, i64* %3, align 8
  %647 = load i32, i32* %621, align 4
  %648 = sext i32 %647 to i64
  store i64 %648, i64* %RCX.i842, align 8
  %649 = shl nsw i64 %648, 2
  %650 = add i64 %649, %645
  %651 = add i64 %639, 18
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = zext i32 %653 to i64
  store i64 %654, i64* %RDX.i671, align 8
  %655 = add i64 %639, 22
  store i64 %655, i64* %3, align 8
  %656 = load i64, i64* %596, align 8
  store i64 %656, i64* %RAX.i242, align 8
  %657 = add i64 %656, 24
  %658 = add i64 %639, 25
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = sub i32 %653, %660
  %662 = icmp ult i32 %653, %660
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %14, align 1
  %664 = and i32 %661, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664)
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %21, align 1
  %669 = xor i32 %660, %653
  %670 = xor i32 %669, %661
  %671 = lshr i32 %670, 4
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  store i8 %673, i8* %27, align 1
  %674 = icmp eq i32 %661, 0
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %30, align 1
  %676 = lshr i32 %661, 31
  %677 = trunc i32 %676 to i8
  store i8 %677, i8* %33, align 1
  %678 = lshr i32 %653, 31
  %679 = lshr i32 %660, 31
  %680 = xor i32 %679, %678
  %681 = xor i32 %676, %678
  %682 = add nuw nsw i32 %681, %680
  %683 = icmp eq i32 %682, 2
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %39, align 1
  %.v87 = select i1 %674, i64 167, i64 31
  %685 = add i64 %639, %.v87
  store i64 %685, i64* %3, align 8
  br i1 %674, label %block_.L_42e5df, label %block_42e557

block_42e557:                                     ; preds = %block_42e538
  %686 = add i64 %685, 4
  store i64 %686, i64* %3, align 8
  %687 = load i64, i64* %596, align 8
  store i64 %687, i64* %RAX.i242, align 8
  %688 = add i64 %687, 8
  %689 = add i64 %685, 8
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i64*
  %691 = load i64, i64* %690, align 8
  store i64 %691, i64* %RAX.i242, align 8
  %692 = add i64 %685, 12
  store i64 %692, i64* %3, align 8
  %693 = load i32, i32* %621, align 4
  %694 = sext i32 %693 to i64
  store i64 %694, i64* %RCX.i842, align 8
  %695 = shl nsw i64 %694, 3
  %696 = add i64 %695, %691
  %697 = add i64 %685, 16
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %RSI.i418.pre-phi, align 8
  %700 = add i64 %685, 20
  store i64 %700, i64* %3, align 8
  %701 = load i64, i64* %596, align 8
  store i64 %701, i64* %RAX.i242, align 8
  %702 = add i64 %701, 336
  %703 = add i64 %685, 27
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i64*
  %705 = load i64, i64* %704, align 8
  store i64 %705, i64* %RAX.i242, align 8
  %706 = add i64 %685, 31
  store i64 %706, i64* %3, align 8
  %707 = load i32, i32* %621, align 4
  %708 = sext i32 %707 to i64
  store i64 %708, i64* %RCX.i842, align 8
  %709 = shl nsw i64 %708, 2
  %710 = add i64 %709, %705
  %711 = add i64 %685, 34
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = zext i32 %713 to i64
  store i64 %714, i64* %RDX.i671, align 8
  %715 = add i64 %685, 38
  store i64 %715, i64* %3, align 8
  %716 = load i64, i64* %596, align 8
  store i64 %716, i64* %RAX.i242, align 8
  %717 = add i64 %716, 24
  %718 = add i64 %685, 41
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i32*
  %720 = load i32, i32* %719, align 4
  %721 = zext i32 %720 to i64
  store i64 %721, i64* %RCX.i842, align 8
  %722 = add i64 %685, 45
  store i64 %722, i64* %3, align 8
  %723 = load i64, i64* %596, align 8
  store i64 %723, i64* %RAX.i242, align 8
  %724 = add i64 %723, 40
  %725 = add i64 %685, 50
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i64*
  %727 = load i64, i64* %726, align 8
  store i8 0, i8* %14, align 1
  %728 = trunc i64 %727 to i32
  %729 = and i32 %728, 255
  %730 = tail call i32 @llvm.ctpop.i32(i32 %729)
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  %733 = xor i8 %732, 1
  store i8 %733, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %734 = icmp eq i64 %727, 0
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %30, align 1
  %736 = lshr i64 %727, 63
  %737 = trunc i64 %736 to i8
  store i8 %737, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %738 = add i64 %593, -88
  %739 = add i64 %685, 54
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i64*
  store i64 %699, i64* %740, align 8
  %741 = load i64, i64* %RBP.i, align 8
  %742 = add i64 %741, -92
  %743 = load i32, i32* %EDX.i663, align 4
  %744 = load i64, i64* %3, align 8
  %745 = add i64 %744, 3
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %742 to i32*
  store i32 %743, i32* %746, align 4
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -96
  %749 = load i32, i32* %ECX.i835, align 4
  %750 = load i64, i64* %3, align 8
  %751 = add i64 %750, 3
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %748 to i32*
  store i32 %749, i32* %752, align 4
  %753 = load i64, i64* %3, align 8
  %754 = load i8, i8* %30, align 1
  %755 = icmp ne i8 %754, 0
  %.v101 = select i1 %755, i64 23, i64 6
  %756 = add i64 %753, %.v101
  store i64 %756, i64* %3, align 8
  %cmpBr_42e593 = icmp eq i8 %754, 1
  br i1 %cmpBr_42e593, label %block_.L_42e5aa, label %block_42e599

block_42e599:                                     ; preds = %block_42e557
  %757 = load i64, i64* %RBP.i, align 8
  %758 = add i64 %757, -8
  %759 = add i64 %756, 4
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i64*
  %761 = load i64, i64* %760, align 8
  store i64 %761, i64* %RAX.i242, align 8
  %762 = add i64 %761, 40
  %763 = add i64 %756, 8
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i64*
  %765 = load i64, i64* %764, align 8
  store i64 %765, i64* %RAX.i242, align 8
  %766 = add i64 %757, -104
  %767 = add i64 %756, 12
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %766 to i64*
  store i64 %765, i64* %768, align 8
  %769 = load i64, i64* %3, align 8
  %770 = add i64 %769, 24
  br label %block_.L_42e5bd

block_.L_42e5aa:                                  ; preds = %block_42e557
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i242, align 8
  %771 = load i64, i64* %RBP.i, align 8
  %772 = add i64 %771, -104
  %773 = add i64 %756, 14
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %774, align 8
  %775 = load i64, i64* %3, align 8
  %776 = add i64 %775, 5
  store i64 %776, i64* %3, align 8
  br label %block_.L_42e5bd

block_.L_42e5bd:                                  ; preds = %block_.L_42e5aa, %block_42e599
  %storemerge35 = phi i64 [ %770, %block_42e599 ], [ %776, %block_.L_42e5aa ]
  %777 = load i64, i64* %RBP.i, align 8
  %778 = add i64 %777, -104
  %779 = add i64 %storemerge35, 4
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i64*
  %781 = load i64, i64* %780, align 8
  store i64 %781, i64* %RAX.i242, align 8
  store i64 ptrtoint (%G__0x4589e3_type* @G__0x4589e3 to i64), i64* %RDI.i54, align 8
  %782 = add i64 %777, -88
  %783 = add i64 %storemerge35, 18
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i64*
  %785 = load i64, i64* %784, align 8
  store i64 %785, i64* %RSI.i418.pre-phi, align 8
  %786 = add i64 %777, -92
  %787 = add i64 %storemerge35, 21
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %RDX.i671, align 8
  %791 = add i64 %777, -96
  %792 = add i64 %storemerge35, 24
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = zext i32 %794 to i64
  store i64 %795, i64* %RCX.i842, align 8
  store i64 %781, i64* %R8.i, align 8
  store i8 0, i8* %AL.i350.pre-phi, align 1
  %796 = add i64 %storemerge35, 66643
  %797 = add i64 %storemerge35, 34
  %798 = load i64, i64* %6, align 8
  %799 = add i64 %798, -8
  %800 = inttoptr i64 %799 to i64*
  store i64 %797, i64* %800, align 8
  store i64 %799, i64* %6, align 8
  store i64 %796, i64* %3, align 8
  %call2_42e5da = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %796, %struct.Memory* %MEMORY.8)
  %.pre62 = load i64, i64* %RBP.i, align 8
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_42e5df

block_.L_42e5df:                                  ; preds = %block_.L_42e5bd, %block_42e538, %block_42e521, %block_.L_42e512
  %801 = phi i64 [ %612, %block_.L_42e512 ], [ %639, %block_42e521 ], [ %685, %block_42e538 ], [ %.pre63, %block_.L_42e5bd ]
  %802 = phi i64 [ %593, %block_.L_42e512 ], [ %593, %block_42e521 ], [ %593, %block_42e538 ], [ %.pre62, %block_.L_42e5bd ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.8, %block_.L_42e512 ], [ %MEMORY.8, %block_42e521 ], [ %MEMORY.8, %block_42e538 ], [ %call2_42e5da, %block_.L_42e5bd ]
  %803 = add i64 %802, -8
  %804 = add i64 %801, 4
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RAX.i242, align 8
  %807 = add i64 %806, 120
  %808 = add i64 %801, 9
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i64*
  %810 = load i64, i64* %809, align 8
  store i8 0, i8* %14, align 1
  %811 = trunc i64 %810 to i32
  %812 = and i32 %811, 255
  %813 = tail call i32 @llvm.ctpop.i32(i32 %812)
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  store i8 %816, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %817 = icmp eq i64 %810, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %30, align 1
  %819 = lshr i64 %810, 63
  %820 = trunc i64 %819 to i8
  store i8 %820, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v88 = select i1 %817, i64 205, i64 15
  %821 = add i64 %801, %.v88
  store i64 %821, i64* %3, align 8
  br i1 %817, label %block_.L_42e6ac, label %block_42e5ee

block_42e5ee:                                     ; preds = %block_.L_42e5df
  %822 = add i64 %821, 4
  store i64 %822, i64* %3, align 8
  %823 = load i64, i64* %805, align 8
  store i64 %823, i64* %RAX.i242, align 8
  %824 = add i64 %823, 120
  %825 = add i64 %821, 8
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i64*
  %827 = load i64, i64* %826, align 8
  store i64 %827, i64* %RAX.i242, align 8
  %828 = add i64 %802, -12
  %829 = add i64 %821, 12
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i32*
  %831 = load i32, i32* %830, align 4
  %832 = sext i32 %831 to i64
  store i64 %832, i64* %RCX.i842, align 8
  %833 = shl nsw i64 %832, 3
  %834 = add i64 %833, %827
  %835 = add i64 %821, 17
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i64*
  %837 = load i64, i64* %836, align 8
  store i8 0, i8* %14, align 1
  %838 = trunc i64 %837 to i32
  %839 = and i32 %838, 255
  %840 = tail call i32 @llvm.ctpop.i32(i32 %839)
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  store i8 %843, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %844 = icmp eq i64 %837, 0
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %30, align 1
  %846 = lshr i64 %837, 63
  %847 = trunc i64 %846 to i8
  store i8 %847, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v89 = select i1 %844, i64 190, i64 23
  %848 = add i64 %821, %.v89
  store i64 %848, i64* %3, align 8
  br i1 %844, label %block_.L_42e6ac, label %block_42e605

block_42e605:                                     ; preds = %block_42e5ee
  %849 = add i64 %848, 4
  store i64 %849, i64* %3, align 8
  %850 = load i64, i64* %805, align 8
  store i64 %850, i64* %RAX.i242, align 8
  %851 = add i64 %850, 344
  %852 = add i64 %848, 11
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i64*
  %854 = load i64, i64* %853, align 8
  store i64 %854, i64* %RAX.i242, align 8
  %855 = add i64 %848, 15
  store i64 %855, i64* %3, align 8
  %856 = load i32, i32* %830, align 4
  %857 = sext i32 %856 to i64
  store i64 %857, i64* %RCX.i842, align 8
  %858 = shl nsw i64 %857, 2
  %859 = add i64 %858, %854
  %860 = add i64 %848, 18
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = zext i32 %862 to i64
  store i64 %863, i64* %RDX.i671, align 8
  %864 = add i64 %848, 22
  store i64 %864, i64* %3, align 8
  %865 = load i64, i64* %805, align 8
  store i64 %865, i64* %RAX.i242, align 8
  %866 = add i64 %865, 24
  %867 = add i64 %848, 25
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i32*
  %869 = load i32, i32* %868, align 4
  %870 = sub i32 %862, %869
  %871 = icmp ult i32 %862, %869
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %14, align 1
  %873 = and i32 %870, 255
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %21, align 1
  %878 = xor i32 %869, %862
  %879 = xor i32 %878, %870
  %880 = lshr i32 %879, 4
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  store i8 %882, i8* %27, align 1
  %883 = icmp eq i32 %870, 0
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %30, align 1
  %885 = lshr i32 %870, 31
  %886 = trunc i32 %885 to i8
  store i8 %886, i8* %33, align 1
  %887 = lshr i32 %862, 31
  %888 = lshr i32 %869, 31
  %889 = xor i32 %888, %887
  %890 = xor i32 %885, %887
  %891 = add nuw nsw i32 %890, %889
  %892 = icmp eq i32 %891, 2
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %39, align 1
  %.v90 = select i1 %883, i64 167, i64 31
  %894 = add i64 %848, %.v90
  store i64 %894, i64* %3, align 8
  br i1 %883, label %block_.L_42e6ac, label %block_42e624

block_42e624:                                     ; preds = %block_42e605
  %895 = add i64 %894, 4
  store i64 %895, i64* %3, align 8
  %896 = load i64, i64* %805, align 8
  store i64 %896, i64* %RAX.i242, align 8
  %897 = add i64 %896, 8
  %898 = add i64 %894, 8
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i64*
  %900 = load i64, i64* %899, align 8
  store i64 %900, i64* %RAX.i242, align 8
  %901 = add i64 %894, 12
  store i64 %901, i64* %3, align 8
  %902 = load i32, i32* %830, align 4
  %903 = sext i32 %902 to i64
  store i64 %903, i64* %RCX.i842, align 8
  %904 = shl nsw i64 %903, 3
  %905 = add i64 %904, %900
  %906 = add i64 %894, 16
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i64*
  %908 = load i64, i64* %907, align 8
  store i64 %908, i64* %RSI.i418.pre-phi, align 8
  %909 = add i64 %894, 20
  store i64 %909, i64* %3, align 8
  %910 = load i64, i64* %805, align 8
  store i64 %910, i64* %RAX.i242, align 8
  %911 = add i64 %910, 344
  %912 = add i64 %894, 27
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i64*
  %914 = load i64, i64* %913, align 8
  store i64 %914, i64* %RAX.i242, align 8
  %915 = add i64 %894, 31
  store i64 %915, i64* %3, align 8
  %916 = load i32, i32* %830, align 4
  %917 = sext i32 %916 to i64
  store i64 %917, i64* %RCX.i842, align 8
  %918 = shl nsw i64 %917, 2
  %919 = add i64 %918, %914
  %920 = add i64 %894, 34
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = zext i32 %922 to i64
  store i64 %923, i64* %RDX.i671, align 8
  %924 = add i64 %894, 38
  store i64 %924, i64* %3, align 8
  %925 = load i64, i64* %805, align 8
  store i64 %925, i64* %RAX.i242, align 8
  %926 = add i64 %925, 24
  %927 = add i64 %894, 41
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %926 to i32*
  %929 = load i32, i32* %928, align 4
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RCX.i842, align 8
  %931 = add i64 %894, 45
  store i64 %931, i64* %3, align 8
  %932 = load i64, i64* %805, align 8
  store i64 %932, i64* %RAX.i242, align 8
  %933 = add i64 %932, 40
  %934 = add i64 %894, 50
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i64*
  %936 = load i64, i64* %935, align 8
  store i8 0, i8* %14, align 1
  %937 = trunc i64 %936 to i32
  %938 = and i32 %937, 255
  %939 = tail call i32 @llvm.ctpop.i32(i32 %938)
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  store i8 %942, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %943 = icmp eq i64 %936, 0
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %30, align 1
  %945 = lshr i64 %936, 63
  %946 = trunc i64 %945 to i8
  store i8 %946, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %947 = add i64 %802, -112
  %948 = add i64 %894, 54
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i64*
  store i64 %908, i64* %949, align 8
  %950 = load i64, i64* %RBP.i, align 8
  %951 = add i64 %950, -116
  %952 = load i32, i32* %EDX.i663, align 4
  %953 = load i64, i64* %3, align 8
  %954 = add i64 %953, 3
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %951 to i32*
  store i32 %952, i32* %955, align 4
  %956 = load i64, i64* %RBP.i, align 8
  %957 = add i64 %956, -120
  %958 = load i32, i32* %ECX.i835, align 4
  %959 = load i64, i64* %3, align 8
  %960 = add i64 %959, 3
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %957 to i32*
  store i32 %958, i32* %961, align 4
  %962 = load i64, i64* %3, align 8
  %963 = load i8, i8* %30, align 1
  %964 = icmp ne i8 %963, 0
  %.v102 = select i1 %964, i64 23, i64 6
  %965 = add i64 %962, %.v102
  store i64 %965, i64* %3, align 8
  %cmpBr_42e660 = icmp eq i8 %963, 1
  br i1 %cmpBr_42e660, label %block_.L_42e677, label %block_42e666

block_42e666:                                     ; preds = %block_42e624
  %966 = load i64, i64* %RBP.i, align 8
  %967 = add i64 %966, -8
  %968 = add i64 %965, 4
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i64*
  %970 = load i64, i64* %969, align 8
  store i64 %970, i64* %RAX.i242, align 8
  %971 = add i64 %970, 40
  %972 = add i64 %965, 8
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i64*
  %974 = load i64, i64* %973, align 8
  store i64 %974, i64* %RAX.i242, align 8
  %975 = add i64 %966, -128
  %976 = add i64 %965, 12
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i64*
  store i64 %974, i64* %977, align 8
  %978 = load i64, i64* %3, align 8
  %979 = add i64 %978, 24
  br label %block_.L_42e68a

block_.L_42e677:                                  ; preds = %block_42e624
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i242, align 8
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -128
  %982 = add i64 %965, 14
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %983, align 8
  %984 = load i64, i64* %3, align 8
  %985 = add i64 %984, 5
  store i64 %985, i64* %3, align 8
  br label %block_.L_42e68a

block_.L_42e68a:                                  ; preds = %block_.L_42e677, %block_42e666
  %storemerge36 = phi i64 [ %979, %block_42e666 ], [ %985, %block_.L_42e677 ]
  %986 = load i64, i64* %RBP.i, align 8
  %987 = add i64 %986, -128
  %988 = add i64 %storemerge36, 4
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i64*
  %990 = load i64, i64* %989, align 8
  store i64 %990, i64* %RAX.i242, align 8
  store i64 ptrtoint (%G__0x458a32_type* @G__0x458a32 to i64), i64* %RDI.i54, align 8
  %991 = add i64 %986, -112
  %992 = add i64 %storemerge36, 18
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i64*
  %994 = load i64, i64* %993, align 8
  store i64 %994, i64* %RSI.i418.pre-phi, align 8
  %995 = add i64 %986, -116
  %996 = add i64 %storemerge36, 21
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RDX.i671, align 8
  %1000 = add i64 %986, -120
  %1001 = add i64 %storemerge36, 24
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = zext i32 %1003 to i64
  store i64 %1004, i64* %RCX.i842, align 8
  store i64 %990, i64* %R8.i, align 8
  store i8 0, i8* %AL.i350.pre-phi, align 1
  %1005 = add i64 %storemerge36, 66438
  %1006 = add i64 %storemerge36, 34
  %1007 = load i64, i64* %6, align 8
  %1008 = add i64 %1007, -8
  %1009 = inttoptr i64 %1008 to i64*
  store i64 %1006, i64* %1009, align 8
  store i64 %1008, i64* %6, align 8
  store i64 %1005, i64* %3, align 8
  %call2_42e6a7 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1005, %struct.Memory* %MEMORY.10)
  %.pre64 = load i64, i64* %3, align 8
  %.pre65 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42e6ac

block_.L_42e6ac:                                  ; preds = %block_.L_42e68a, %block_42e605, %block_42e5ee, %block_.L_42e5df
  %1010 = phi i64 [ %802, %block_.L_42e5df ], [ %802, %block_42e5ee ], [ %802, %block_42e605 ], [ %.pre65, %block_.L_42e68a ]
  %1011 = phi i64 [ %821, %block_.L_42e5df ], [ %848, %block_42e5ee ], [ %894, %block_42e605 ], [ %.pre64, %block_.L_42e68a ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.10, %block_.L_42e5df ], [ %MEMORY.10, %block_42e5ee ], [ %MEMORY.10, %block_42e605 ], [ %call2_42e6a7, %block_.L_42e68a ]
  %1012 = add i64 %1010, -12
  %1013 = add i64 %1011, 8
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i32*
  %1015 = load i32, i32* %1014, align 4
  %1016 = add i32 %1015, 1
  %1017 = zext i32 %1016 to i64
  store i64 %1017, i64* %RAX.i242, align 8
  %1018 = icmp eq i32 %1015, -1
  %1019 = icmp eq i32 %1016, 0
  %1020 = or i1 %1018, %1019
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %14, align 1
  %1022 = and i32 %1016, 255
  %1023 = tail call i32 @llvm.ctpop.i32(i32 %1022)
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  %1026 = xor i8 %1025, 1
  store i8 %1026, i8* %21, align 1
  %1027 = xor i32 %1016, %1015
  %1028 = lshr i32 %1027, 4
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  store i8 %1030, i8* %27, align 1
  %1031 = zext i1 %1019 to i8
  store i8 %1031, i8* %30, align 1
  %1032 = lshr i32 %1016, 31
  %1033 = trunc i32 %1032 to i8
  store i8 %1033, i8* %33, align 1
  %1034 = lshr i32 %1015, 31
  %1035 = xor i32 %1032, %1034
  %1036 = add nuw nsw i32 %1035, %1032
  %1037 = icmp eq i32 %1036, 2
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %39, align 1
  %1039 = add i64 %1011, 14
  store i64 %1039, i64* %3, align 8
  store i32 %1016, i32* %1014, align 4
  %1040 = load i64, i64* %3, align 8
  %1041 = add i64 %1040, -887
  store i64 %1041, i64* %3, align 8
  br label %block_.L_42e343

block_.L_42e6bf:                                  ; preds = %block_.L_42e343
  %1042 = add i64 %182, 72
  %1043 = add i64 %180, 9
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i8 0, i8* %14, align 1
  %1046 = trunc i64 %1045 to i32
  %1047 = and i32 %1046, 255
  %1048 = tail call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1052 = icmp eq i64 %1045, 0
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %30, align 1
  %1054 = lshr i64 %1045, 63
  %1055 = trunc i64 %1054 to i8
  store i8 %1055, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v71 = select i1 %1052, i64 175, i64 15
  %1056 = add i64 %180, %.v71
  store i64 %1056, i64* %3, align 8
  br i1 %1052, label %block_.L_42e76e, label %block_42e6ce

block_42e6ce:                                     ; preds = %block_.L_42e6bf
  %1057 = add i64 %1056, 4
  store i64 %1057, i64* %3, align 8
  %1058 = load i64, i64* %148, align 8
  store i64 %1058, i64* %RAX.i242, align 8
  %1059 = add i64 %1058, 72
  %1060 = add i64 %1056, 8
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i64*
  %1062 = load i64, i64* %1061, align 8
  store i64 %1062, i64* %RDI.i54, align 8
  %1063 = add i64 %1056, -184942
  %1064 = add i64 %1056, 13
  %1065 = load i64, i64* %6, align 8
  %1066 = add i64 %1065, -8
  %1067 = inttoptr i64 %1066 to i64*
  store i64 %1064, i64* %1067, align 8
  store i64 %1066, i64* %6, align 8
  store i64 %1063, i64* %3, align 8
  %1068 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.2)
  %1069 = load i64, i64* %RBP.i, align 8
  %1070 = add i64 %1069, -8
  %1071 = load i64, i64* %3, align 8
  %1072 = add i64 %1071, 4
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1070 to i64*
  %1074 = load i64, i64* %1073, align 8
  store i64 %1074, i64* %RDI.i54, align 8
  %1075 = add i64 %1074, 24
  %1076 = add i64 %1071, 8
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = sext i32 %1078 to i64
  store i64 %1079, i64* %RDI.i54, align 8
  %1080 = load i64, i64* %RAX.i242, align 8
  %1081 = sub i64 %1080, %1079
  %1082 = icmp ult i64 %1080, %1079
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %14, align 1
  %1084 = trunc i64 %1081 to i32
  %1085 = and i32 %1084, 255
  %1086 = tail call i32 @llvm.ctpop.i32(i32 %1085)
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  store i8 %1089, i8* %21, align 1
  %1090 = xor i64 %1080, %1079
  %1091 = xor i64 %1090, %1081
  %1092 = lshr i64 %1091, 4
  %1093 = trunc i64 %1092 to i8
  %1094 = and i8 %1093, 1
  store i8 %1094, i8* %27, align 1
  %1095 = icmp eq i64 %1081, 0
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %30, align 1
  %1097 = lshr i64 %1081, 63
  %1098 = trunc i64 %1097 to i8
  store i8 %1098, i8* %33, align 1
  %1099 = lshr i64 %1080, 63
  %1100 = lshr i64 %1079, 63
  %1101 = xor i64 %1099, %1100
  %1102 = xor i64 %1097, %1099
  %1103 = add nuw nsw i64 %1102, %1101
  %1104 = icmp eq i64 %1103, 2
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %39, align 1
  %.v72 = select i1 %1095, i64 147, i64 17
  %1106 = add i64 %1071, %.v72
  store i64 %1106, i64* %3, align 8
  br i1 %1095, label %block_.L_42e76e, label %block_42e6ec

block_42e6ec:                                     ; preds = %block_42e6ce
  %1107 = add i64 %1106, 4
  store i64 %1107, i64* %3, align 8
  %1108 = load i64, i64* %1073, align 8
  store i64 %1108, i64* %RAX.i242, align 8
  %1109 = add i64 %1108, 72
  %1110 = add i64 %1106, 8
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to i64*
  %1112 = load i64, i64* %1111, align 8
  store i64 %1112, i64* %RDI.i54, align 8
  %1113 = add i64 %1106, -184972
  %1114 = add i64 %1106, 13
  %1115 = load i64, i64* %6, align 8
  %1116 = add i64 %1115, -8
  %1117 = inttoptr i64 %1116 to i64*
  store i64 %1114, i64* %1117, align 8
  store i64 %1116, i64* %6, align 8
  store i64 %1113, i64* %3, align 8
  %1118 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1068)
  %1119 = load i64, i64* %RBP.i, align 8
  %1120 = add i64 %1119, -8
  %1121 = load i64, i64* %3, align 8
  %1122 = add i64 %1121, 4
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1120 to i64*
  %1124 = load i64, i64* %1123, align 8
  store i64 %1124, i64* %RDI.i54, align 8
  %1125 = add i64 %1124, 24
  %1126 = add i64 %1121, 7
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1125 to i32*
  %1128 = load i32, i32* %1127, align 4
  %1129 = zext i32 %1128 to i64
  store i64 %1129, i64* %RDX.i671, align 8
  %1130 = add i64 %1121, 11
  store i64 %1130, i64* %3, align 8
  %1131 = load i64, i64* %1123, align 8
  store i64 %1131, i64* %RDI.i54, align 8
  %1132 = add i64 %1131, 40
  %1133 = add i64 %1121, 16
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i64*
  %1135 = load i64, i64* %1134, align 8
  store i8 0, i8* %14, align 1
  %1136 = trunc i64 %1135 to i32
  %1137 = and i32 %1136, 255
  %1138 = tail call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1142 = icmp eq i64 %1135, 0
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %30, align 1
  %1144 = lshr i64 %1135, 63
  %1145 = trunc i64 %1144 to i8
  store i8 %1145, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1146 = add i64 %1119, -136
  %1147 = load i64, i64* %RAX.i242, align 8
  %1148 = add i64 %1121, 23
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1146 to i64*
  store i64 %1147, i64* %1149, align 8
  %1150 = load i64, i64* %RBP.i, align 8
  %1151 = add i64 %1150, -140
  %1152 = load i32, i32* %EDX.i663, align 4
  %1153 = load i64, i64* %3, align 8
  %1154 = add i64 %1153, 6
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1151 to i32*
  store i32 %1152, i32* %1155, align 4
  %1156 = load i64, i64* %3, align 8
  %1157 = load i8, i8* %30, align 1
  %1158 = icmp ne i8 %1157, 0
  %.v95 = select i1 %1158, i64 26, i64 6
  %1159 = add i64 %1156, %.v95
  store i64 %1159, i64* %3, align 8
  %cmpBr_42e716 = icmp eq i8 %1157, 1
  br i1 %cmpBr_42e716, label %block_.L_42e730, label %block_42e71c

block_42e71c:                                     ; preds = %block_42e6ec
  %1160 = load i64, i64* %RBP.i, align 8
  %1161 = add i64 %1160, -8
  %1162 = add i64 %1159, 4
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1161 to i64*
  %1164 = load i64, i64* %1163, align 8
  store i64 %1164, i64* %RAX.i242, align 8
  %1165 = add i64 %1164, 40
  %1166 = add i64 %1159, 8
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i64*
  %1168 = load i64, i64* %1167, align 8
  store i64 %1168, i64* %RAX.i242, align 8
  %1169 = add i64 %1160, -152
  %1170 = add i64 %1159, 15
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i64*
  store i64 %1168, i64* %1171, align 8
  %1172 = load i64, i64* %3, align 8
  %1173 = add i64 %1172, 27
  br label %block_.L_42e746

block_.L_42e730:                                  ; preds = %block_42e6ec
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i242, align 8
  %1174 = load i64, i64* %RBP.i, align 8
  %1175 = add i64 %1174, -152
  %1176 = add i64 %1159, 17
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %1177, align 8
  %1178 = load i64, i64* %3, align 8
  %1179 = add i64 %1178, 5
  store i64 %1179, i64* %3, align 8
  br label %block_.L_42e746

block_.L_42e746:                                  ; preds = %block_.L_42e730, %block_42e71c
  %storemerge37 = phi i64 [ %1173, %block_42e71c ], [ %1179, %block_.L_42e730 ]
  %1180 = load i64, i64* %RBP.i, align 8
  %1181 = add i64 %1180, -152
  %1182 = add i64 %storemerge37, 7
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i64*
  %1184 = load i64, i64* %1183, align 8
  store i64 %1184, i64* %RAX.i242, align 8
  store i64 ptrtoint (%G__0x458a81_type* @G__0x458a81 to i64), i64* %RDI.i54, align 8
  %1185 = add i64 %1180, -136
  %1186 = add i64 %storemerge37, 24
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i64*
  %1188 = load i64, i64* %1187, align 8
  store i64 %1188, i64* %RSI.i418.pre-phi, align 8
  %1189 = add i64 %1180, -140
  %1190 = add i64 %storemerge37, 30
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i32*
  %1192 = load i32, i32* %1191, align 4
  %1193 = zext i32 %1192 to i64
  store i64 %1193, i64* %RDX.i671, align 8
  store i64 %1184, i64* %RCX.i842, align 8
  store i8 0, i8* %AL.i350.pre-phi, align 1
  %1194 = add i64 %storemerge37, 66250
  %1195 = add i64 %storemerge37, 40
  %1196 = load i64, i64* %6, align 8
  %1197 = add i64 %1196, -8
  %1198 = inttoptr i64 %1197 to i64*
  store i64 %1195, i64* %1198, align 8
  store i64 %1197, i64* %6, align 8
  store i64 %1194, i64* %3, align 8
  %call2_42e769 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1194, %struct.Memory* %1118)
  %.pre42 = load i64, i64* %RBP.i, align 8
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_42e76e

block_.L_42e76e:                                  ; preds = %block_.L_42e746, %block_42e6ce, %block_.L_42e6bf
  %1199 = phi i64 [ %1056, %block_.L_42e6bf ], [ %1106, %block_42e6ce ], [ %.pre43, %block_.L_42e746 ]
  %1200 = phi i64 [ %140, %block_.L_42e6bf ], [ %1069, %block_42e6ce ], [ %.pre42, %block_.L_42e746 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.2, %block_.L_42e6bf ], [ %1068, %block_42e6ce ], [ %call2_42e769, %block_.L_42e746 ]
  %1201 = add i64 %1200, -8
  %1202 = add i64 %1199, 4
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i64*
  %1204 = load i64, i64* %1203, align 8
  store i64 %1204, i64* %RAX.i242, align 8
  %1205 = add i64 %1204, 80
  %1206 = add i64 %1199, 9
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i64*
  %1208 = load i64, i64* %1207, align 8
  store i8 0, i8* %14, align 1
  %1209 = trunc i64 %1208 to i32
  %1210 = and i32 %1209, 255
  %1211 = tail call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  store i8 %1214, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1215 = icmp eq i64 %1208, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %30, align 1
  %1217 = lshr i64 %1208, 63
  %1218 = trunc i64 %1217 to i8
  store i8 %1218, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v73 = select i1 %1215, i64 175, i64 15
  %1219 = add i64 %1199, %.v73
  store i64 %1219, i64* %3, align 8
  br i1 %1215, label %block_.L_42e81d, label %block_42e77d

block_42e77d:                                     ; preds = %block_.L_42e76e
  %1220 = add i64 %1219, 4
  store i64 %1220, i64* %3, align 8
  %1221 = load i64, i64* %1203, align 8
  store i64 %1221, i64* %RAX.i242, align 8
  %1222 = add i64 %1221, 80
  %1223 = add i64 %1219, 8
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1222 to i64*
  %1225 = load i64, i64* %1224, align 8
  store i64 %1225, i64* %RDI.i54, align 8
  %1226 = add i64 %1219, -185117
  %1227 = add i64 %1219, 13
  %1228 = load i64, i64* %6, align 8
  %1229 = add i64 %1228, -8
  %1230 = inttoptr i64 %1229 to i64*
  store i64 %1227, i64* %1230, align 8
  store i64 %1229, i64* %6, align 8
  store i64 %1226, i64* %3, align 8
  %1231 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.14)
  %1232 = load i64, i64* %RBP.i, align 8
  %1233 = add i64 %1232, -8
  %1234 = load i64, i64* %3, align 8
  %1235 = add i64 %1234, 4
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1233 to i64*
  %1237 = load i64, i64* %1236, align 8
  store i64 %1237, i64* %RDI.i54, align 8
  %1238 = add i64 %1237, 24
  %1239 = add i64 %1234, 8
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  %1242 = sext i32 %1241 to i64
  store i64 %1242, i64* %RDI.i54, align 8
  %1243 = load i64, i64* %RAX.i242, align 8
  %1244 = sub i64 %1243, %1242
  %1245 = icmp ult i64 %1243, %1242
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %14, align 1
  %1247 = trunc i64 %1244 to i32
  %1248 = and i32 %1247, 255
  %1249 = tail call i32 @llvm.ctpop.i32(i32 %1248)
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  %1252 = xor i8 %1251, 1
  store i8 %1252, i8* %21, align 1
  %1253 = xor i64 %1243, %1242
  %1254 = xor i64 %1253, %1244
  %1255 = lshr i64 %1254, 4
  %1256 = trunc i64 %1255 to i8
  %1257 = and i8 %1256, 1
  store i8 %1257, i8* %27, align 1
  %1258 = icmp eq i64 %1244, 0
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %30, align 1
  %1260 = lshr i64 %1244, 63
  %1261 = trunc i64 %1260 to i8
  store i8 %1261, i8* %33, align 1
  %1262 = lshr i64 %1243, 63
  %1263 = lshr i64 %1242, 63
  %1264 = xor i64 %1262, %1263
  %1265 = xor i64 %1260, %1262
  %1266 = add nuw nsw i64 %1265, %1264
  %1267 = icmp eq i64 %1266, 2
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %39, align 1
  %.v74 = select i1 %1258, i64 147, i64 17
  %1269 = add i64 %1234, %.v74
  store i64 %1269, i64* %3, align 8
  br i1 %1258, label %block_.L_42e81d, label %block_42e79b

block_42e79b:                                     ; preds = %block_42e77d
  %1270 = add i64 %1269, 4
  store i64 %1270, i64* %3, align 8
  %1271 = load i64, i64* %1236, align 8
  store i64 %1271, i64* %RAX.i242, align 8
  %1272 = add i64 %1271, 80
  %1273 = add i64 %1269, 8
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i64*
  %1275 = load i64, i64* %1274, align 8
  store i64 %1275, i64* %RDI.i54, align 8
  %1276 = add i64 %1269, -185147
  %1277 = add i64 %1269, 13
  %1278 = load i64, i64* %6, align 8
  %1279 = add i64 %1278, -8
  %1280 = inttoptr i64 %1279 to i64*
  store i64 %1277, i64* %1280, align 8
  store i64 %1279, i64* %6, align 8
  store i64 %1276, i64* %3, align 8
  %1281 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1231)
  %1282 = load i64, i64* %RBP.i, align 8
  %1283 = add i64 %1282, -8
  %1284 = load i64, i64* %3, align 8
  %1285 = add i64 %1284, 4
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1283 to i64*
  %1287 = load i64, i64* %1286, align 8
  store i64 %1287, i64* %RDI.i54, align 8
  %1288 = add i64 %1287, 24
  %1289 = add i64 %1284, 7
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RDX.i671, align 8
  %1293 = add i64 %1284, 11
  store i64 %1293, i64* %3, align 8
  %1294 = load i64, i64* %1286, align 8
  store i64 %1294, i64* %RDI.i54, align 8
  %1295 = add i64 %1294, 40
  %1296 = add i64 %1284, 16
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i64*
  %1298 = load i64, i64* %1297, align 8
  store i8 0, i8* %14, align 1
  %1299 = trunc i64 %1298 to i32
  %1300 = and i32 %1299, 255
  %1301 = tail call i32 @llvm.ctpop.i32(i32 %1300)
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  %1304 = xor i8 %1303, 1
  store i8 %1304, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1305 = icmp eq i64 %1298, 0
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %30, align 1
  %1307 = lshr i64 %1298, 63
  %1308 = trunc i64 %1307 to i8
  store i8 %1308, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1309 = add i64 %1282, -160
  %1310 = load i64, i64* %RAX.i242, align 8
  %1311 = add i64 %1284, 23
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1309 to i64*
  store i64 %1310, i64* %1312, align 8
  %1313 = load i64, i64* %RBP.i, align 8
  %1314 = add i64 %1313, -164
  %1315 = load i32, i32* %EDX.i663, align 4
  %1316 = load i64, i64* %3, align 8
  %1317 = add i64 %1316, 6
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1314 to i32*
  store i32 %1315, i32* %1318, align 4
  %1319 = load i64, i64* %3, align 8
  %1320 = load i8, i8* %30, align 1
  %1321 = icmp ne i8 %1320, 0
  %.v96 = select i1 %1321, i64 26, i64 6
  %1322 = add i64 %1319, %.v96
  store i64 %1322, i64* %3, align 8
  %cmpBr_42e7c5 = icmp eq i8 %1320, 1
  br i1 %cmpBr_42e7c5, label %block_.L_42e7df, label %block_42e7cb

block_42e7cb:                                     ; preds = %block_42e79b
  %1323 = load i64, i64* %RBP.i, align 8
  %1324 = add i64 %1323, -8
  %1325 = add i64 %1322, 4
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i64*
  %1327 = load i64, i64* %1326, align 8
  store i64 %1327, i64* %RAX.i242, align 8
  %1328 = add i64 %1327, 40
  %1329 = add i64 %1322, 8
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i64*
  %1331 = load i64, i64* %1330, align 8
  store i64 %1331, i64* %RAX.i242, align 8
  %1332 = add i64 %1323, -176
  %1333 = add i64 %1322, 15
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i64*
  store i64 %1331, i64* %1334, align 8
  %1335 = load i64, i64* %3, align 8
  %1336 = add i64 %1335, 27
  br label %block_.L_42e7f5

block_.L_42e7df:                                  ; preds = %block_42e79b
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i242, align 8
  %1337 = load i64, i64* %RBP.i, align 8
  %1338 = add i64 %1337, -176
  %1339 = add i64 %1322, 17
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1338 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %1340, align 8
  %1341 = load i64, i64* %3, align 8
  %1342 = add i64 %1341, 5
  store i64 %1342, i64* %3, align 8
  br label %block_.L_42e7f5

block_.L_42e7f5:                                  ; preds = %block_.L_42e7df, %block_42e7cb
  %storemerge38 = phi i64 [ %1336, %block_42e7cb ], [ %1342, %block_.L_42e7df ]
  %1343 = load i64, i64* %RBP.i, align 8
  %1344 = add i64 %1343, -176
  %1345 = add i64 %storemerge38, 7
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1344 to i64*
  %1347 = load i64, i64* %1346, align 8
  store i64 %1347, i64* %RAX.i242, align 8
  store i64 ptrtoint (%G__0x458ace_type* @G__0x458ace to i64), i64* %RDI.i54, align 8
  %1348 = add i64 %1343, -160
  %1349 = add i64 %storemerge38, 24
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i64*
  %1351 = load i64, i64* %1350, align 8
  store i64 %1351, i64* %RSI.i418.pre-phi, align 8
  %1352 = add i64 %1343, -164
  %1353 = add i64 %storemerge38, 30
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RDX.i671, align 8
  store i64 %1347, i64* %RCX.i842, align 8
  store i8 0, i8* %AL.i350.pre-phi, align 1
  %1357 = add i64 %storemerge38, 66075
  %1358 = add i64 %storemerge38, 40
  %1359 = load i64, i64* %6, align 8
  %1360 = add i64 %1359, -8
  %1361 = inttoptr i64 %1360 to i64*
  store i64 %1358, i64* %1361, align 8
  store i64 %1360, i64* %6, align 8
  store i64 %1357, i64* %3, align 8
  %call2_42e818 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1357, %struct.Memory* %1281)
  %.pre44 = load i64, i64* %RBP.i, align 8
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_42e81d

block_.L_42e81d:                                  ; preds = %block_.L_42e7f5, %block_42e77d, %block_.L_42e76e
  %1362 = phi i64 [ %1219, %block_.L_42e76e ], [ %1269, %block_42e77d ], [ %.pre45, %block_.L_42e7f5 ]
  %1363 = phi i64 [ %1200, %block_.L_42e76e ], [ %1232, %block_42e77d ], [ %.pre44, %block_.L_42e7f5 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.14, %block_.L_42e76e ], [ %1231, %block_42e77d ], [ %call2_42e818, %block_.L_42e7f5 ]
  %1364 = add i64 %1363, -8
  %1365 = add i64 %1362, 4
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i64*
  %1367 = load i64, i64* %1366, align 8
  store i64 %1367, i64* %RAX.i242, align 8
  %1368 = add i64 %1367, 88
  %1369 = add i64 %1362, 9
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i64*
  %1371 = load i64, i64* %1370, align 8
  store i8 0, i8* %14, align 1
  %1372 = trunc i64 %1371 to i32
  %1373 = and i32 %1372, 255
  %1374 = tail call i32 @llvm.ctpop.i32(i32 %1373)
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  store i8 %1377, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1378 = icmp eq i64 %1371, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %30, align 1
  %1380 = lshr i64 %1371, 63
  %1381 = trunc i64 %1380 to i8
  store i8 %1381, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v75 = select i1 %1378, i64 175, i64 15
  %1382 = add i64 %1362, %.v75
  store i64 %1382, i64* %3, align 8
  br i1 %1378, label %block_.L_42e8cc, label %block_42e82c

block_42e82c:                                     ; preds = %block_.L_42e81d
  %1383 = add i64 %1382, 4
  store i64 %1383, i64* %3, align 8
  %1384 = load i64, i64* %1366, align 8
  store i64 %1384, i64* %RAX.i242, align 8
  %1385 = add i64 %1384, 88
  %1386 = add i64 %1382, 8
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i64*
  %1388 = load i64, i64* %1387, align 8
  store i64 %1388, i64* %RDI.i54, align 8
  %1389 = add i64 %1382, -185292
  %1390 = add i64 %1382, 13
  %1391 = load i64, i64* %6, align 8
  %1392 = add i64 %1391, -8
  %1393 = inttoptr i64 %1392 to i64*
  store i64 %1390, i64* %1393, align 8
  store i64 %1392, i64* %6, align 8
  store i64 %1389, i64* %3, align 8
  %1394 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.16)
  %1395 = load i64, i64* %RBP.i, align 8
  %1396 = add i64 %1395, -8
  %1397 = load i64, i64* %3, align 8
  %1398 = add i64 %1397, 4
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1396 to i64*
  %1400 = load i64, i64* %1399, align 8
  store i64 %1400, i64* %RDI.i54, align 8
  %1401 = add i64 %1400, 24
  %1402 = add i64 %1397, 8
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i32*
  %1404 = load i32, i32* %1403, align 4
  %1405 = sext i32 %1404 to i64
  store i64 %1405, i64* %RDI.i54, align 8
  %1406 = load i64, i64* %RAX.i242, align 8
  %1407 = sub i64 %1406, %1405
  %1408 = icmp ult i64 %1406, %1405
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %14, align 1
  %1410 = trunc i64 %1407 to i32
  %1411 = and i32 %1410, 255
  %1412 = tail call i32 @llvm.ctpop.i32(i32 %1411)
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  store i8 %1415, i8* %21, align 1
  %1416 = xor i64 %1406, %1405
  %1417 = xor i64 %1416, %1407
  %1418 = lshr i64 %1417, 4
  %1419 = trunc i64 %1418 to i8
  %1420 = and i8 %1419, 1
  store i8 %1420, i8* %27, align 1
  %1421 = icmp eq i64 %1407, 0
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %30, align 1
  %1423 = lshr i64 %1407, 63
  %1424 = trunc i64 %1423 to i8
  store i8 %1424, i8* %33, align 1
  %1425 = lshr i64 %1406, 63
  %1426 = lshr i64 %1405, 63
  %1427 = xor i64 %1425, %1426
  %1428 = xor i64 %1423, %1425
  %1429 = add nuw nsw i64 %1428, %1427
  %1430 = icmp eq i64 %1429, 2
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %39, align 1
  %.v76 = select i1 %1421, i64 147, i64 17
  %1432 = add i64 %1397, %.v76
  store i64 %1432, i64* %3, align 8
  br i1 %1421, label %block_.L_42e8cc, label %block_42e84a

block_42e84a:                                     ; preds = %block_42e82c
  %1433 = add i64 %1432, 4
  store i64 %1433, i64* %3, align 8
  %1434 = load i64, i64* %1399, align 8
  store i64 %1434, i64* %RAX.i242, align 8
  %1435 = add i64 %1434, 88
  %1436 = add i64 %1432, 8
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i64*
  %1438 = load i64, i64* %1437, align 8
  store i64 %1438, i64* %RDI.i54, align 8
  %1439 = add i64 %1432, -185322
  %1440 = add i64 %1432, 13
  %1441 = load i64, i64* %6, align 8
  %1442 = add i64 %1441, -8
  %1443 = inttoptr i64 %1442 to i64*
  store i64 %1440, i64* %1443, align 8
  store i64 %1442, i64* %6, align 8
  store i64 %1439, i64* %3, align 8
  %1444 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %1394)
  %1445 = load i64, i64* %RBP.i, align 8
  %1446 = add i64 %1445, -8
  %1447 = load i64, i64* %3, align 8
  %1448 = add i64 %1447, 4
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1446 to i64*
  %1450 = load i64, i64* %1449, align 8
  store i64 %1450, i64* %RDI.i54, align 8
  %1451 = add i64 %1450, 24
  %1452 = add i64 %1447, 7
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i32*
  %1454 = load i32, i32* %1453, align 4
  %1455 = zext i32 %1454 to i64
  store i64 %1455, i64* %RDX.i671, align 8
  %1456 = add i64 %1447, 11
  store i64 %1456, i64* %3, align 8
  %1457 = load i64, i64* %1449, align 8
  store i64 %1457, i64* %RDI.i54, align 8
  %1458 = add i64 %1457, 40
  %1459 = add i64 %1447, 16
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to i64*
  %1461 = load i64, i64* %1460, align 8
  store i8 0, i8* %14, align 1
  %1462 = trunc i64 %1461 to i32
  %1463 = and i32 %1462, 255
  %1464 = tail call i32 @llvm.ctpop.i32(i32 %1463)
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  %1467 = xor i8 %1466, 1
  store i8 %1467, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1468 = icmp eq i64 %1461, 0
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %30, align 1
  %1470 = lshr i64 %1461, 63
  %1471 = trunc i64 %1470 to i8
  store i8 %1471, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1472 = add i64 %1445, -184
  %1473 = load i64, i64* %RAX.i242, align 8
  %1474 = add i64 %1447, 23
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1472 to i64*
  store i64 %1473, i64* %1475, align 8
  %1476 = load i64, i64* %RBP.i, align 8
  %1477 = add i64 %1476, -188
  %1478 = load i32, i32* %EDX.i663, align 4
  %1479 = load i64, i64* %3, align 8
  %1480 = add i64 %1479, 6
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1477 to i32*
  store i32 %1478, i32* %1481, align 4
  %1482 = load i64, i64* %3, align 8
  %1483 = load i8, i8* %30, align 1
  %1484 = icmp ne i8 %1483, 0
  %.v97 = select i1 %1484, i64 26, i64 6
  %1485 = add i64 %1482, %.v97
  store i64 %1485, i64* %3, align 8
  %cmpBr_42e874 = icmp eq i8 %1483, 1
  br i1 %cmpBr_42e874, label %block_.L_42e88e, label %block_42e87a

block_42e87a:                                     ; preds = %block_42e84a
  %1486 = load i64, i64* %RBP.i, align 8
  %1487 = add i64 %1486, -8
  %1488 = add i64 %1485, 4
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i64*
  %1490 = load i64, i64* %1489, align 8
  store i64 %1490, i64* %RAX.i242, align 8
  %1491 = add i64 %1490, 40
  %1492 = add i64 %1485, 8
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i64*
  %1494 = load i64, i64* %1493, align 8
  store i64 %1494, i64* %RAX.i242, align 8
  %1495 = add i64 %1486, -200
  %1496 = add i64 %1485, 15
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i64*
  store i64 %1494, i64* %1497, align 8
  %1498 = load i64, i64* %3, align 8
  %1499 = add i64 %1498, 27
  br label %block_.L_42e8a4

block_.L_42e88e:                                  ; preds = %block_42e84a
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i242, align 8
  %1500 = load i64, i64* %RBP.i, align 8
  %1501 = add i64 %1500, -200
  %1502 = add i64 %1485, 17
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i64*
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %1503, align 8
  %1504 = load i64, i64* %3, align 8
  %1505 = add i64 %1504, 5
  store i64 %1505, i64* %3, align 8
  br label %block_.L_42e8a4

block_.L_42e8a4:                                  ; preds = %block_.L_42e88e, %block_42e87a
  %storemerge39 = phi i64 [ %1499, %block_42e87a ], [ %1505, %block_.L_42e88e ]
  %1506 = load i64, i64* %RBP.i, align 8
  %1507 = add i64 %1506, -200
  %1508 = add i64 %storemerge39, 7
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i64*
  %1510 = load i64, i64* %1509, align 8
  store i64 %1510, i64* %RAX.i242, align 8
  store i64 ptrtoint (%G__0x458b1b_type* @G__0x458b1b to i64), i64* %RDI.i54, align 8
  %1511 = add i64 %1506, -184
  %1512 = add i64 %storemerge39, 24
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i64*
  %1514 = load i64, i64* %1513, align 8
  store i64 %1514, i64* %RSI.i418.pre-phi, align 8
  %1515 = add i64 %1506, -188
  %1516 = add i64 %storemerge39, 30
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i32*
  %1518 = load i32, i32* %1517, align 4
  %1519 = zext i32 %1518 to i64
  store i64 %1519, i64* %RDX.i671, align 8
  store i64 %1510, i64* %RCX.i842, align 8
  store i8 0, i8* %AL.i350.pre-phi, align 1
  %1520 = add i64 %storemerge39, 65900
  %1521 = add i64 %storemerge39, 40
  %1522 = load i64, i64* %6, align 8
  %1523 = add i64 %1522, -8
  %1524 = inttoptr i64 %1523 to i64*
  store i64 %1521, i64* %1524, align 8
  store i64 %1523, i64* %6, align 8
  store i64 %1520, i64* %3, align 8
  %call2_42e8c7 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1520, %struct.Memory* %1444)
  %.pre46 = load i64, i64* %RBP.i, align 8
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_42e8cc

block_.L_42e8cc:                                  ; preds = %block_.L_42e8a4, %block_42e82c, %block_.L_42e81d
  %1525 = phi i64 [ %1382, %block_.L_42e81d ], [ %1432, %block_42e82c ], [ %.pre47, %block_.L_42e8a4 ]
  %1526 = phi i64 [ %1363, %block_.L_42e81d ], [ %1395, %block_42e82c ], [ %.pre46, %block_.L_42e8a4 ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.16, %block_.L_42e81d ], [ %1394, %block_42e82c ], [ %call2_42e8c7, %block_.L_42e8a4 ]
  %1527 = add i64 %1526, -8
  %1528 = add i64 %1525, 4
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i64*
  %1530 = load i64, i64* %1529, align 8
  store i64 %1530, i64* %RAX.i242, align 8
  %1531 = add i64 %1530, 32
  %1532 = add i64 %1525, 7
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1531 to i32*
  %1534 = load i32, i32* %1533, align 4
  %1535 = and i32 %1534, 1
  %1536 = zext i32 %1535 to i64
  store i64 %1536, i64* %RCX.i842, align 8
  store i8 0, i8* %14, align 1
  %1537 = tail call i32 @llvm.ctpop.i32(i32 %1535)
  %1538 = trunc i32 %1537 to i8
  %1539 = xor i8 %1538, 1
  store i8 %1539, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1540 = trunc i32 %1535 to i8
  %1541 = xor i8 %1540, 1
  store i8 %1541, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1542 = icmp eq i8 %1541, 0
  %.v77 = select i1 %1542, i64 47, i64 19
  %1543 = add i64 %1525, %.v77
  store i64 %1543, i64* %3, align 8
  br i1 %1542, label %block_.L_42e8fb, label %block_42e8df

block_42e8df:                                     ; preds = %block_.L_42e8cc
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %1545 = bitcast %union.VectorReg* %1544 to i8*
  %1546 = add i64 %1543, ptrtoint (%G_0x25e41__rip__type* @G_0x25e41__rip_ to i64)
  %1547 = add i64 %1543, 8
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1546 to i32*
  %1549 = load i32, i32* %1548, align 4
  %1550 = bitcast %union.VectorReg* %1544 to i32*
  store i32 %1549, i32* %1550, align 1
  %1551 = getelementptr inbounds i8, i8* %1545, i64 4
  %1552 = bitcast i8* %1551 to float*
  store float 0.000000e+00, float* %1552, align 1
  %1553 = bitcast i64* %135 to float*
  store float 0.000000e+00, float* %1553, align 1
  %1554 = getelementptr inbounds i8, i8* %1545, i64 12
  %1555 = bitcast i8* %1554 to float*
  store float 0.000000e+00, float* %1555, align 1
  %1556 = add i64 %1543, 12
  store i64 %1556, i64* %3, align 8
  %1557 = load i64, i64* %1529, align 8
  store i64 %1557, i64* %RAX.i242, align 8
  %1558 = add i64 %1557, 16
  %1559 = add i64 %1543, 16
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i64*
  %1561 = load i64, i64* %1560, align 8
  store i64 %1561, i64* %RDI.i54, align 8
  %1562 = add i64 %1543, 20
  store i64 %1562, i64* %3, align 8
  %1563 = load i64, i64* %1529, align 8
  store i64 %1563, i64* %RAX.i242, align 8
  %1564 = add i64 %1563, 28
  %1565 = add i64 %1543, 23
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RSI.i418.pre-phi, align 8
  %1569 = add i64 %1543, 144993
  %1570 = add i64 %1543, 28
  %1571 = load i64, i64* %6, align 8
  %1572 = add i64 %1571, -8
  %1573 = inttoptr i64 %1572 to i64*
  store i64 %1570, i64* %1573, align 8
  store i64 %1572, i64* %6, align 8
  store i64 %1569, i64* %3, align 8
  %call2_42e8f6 = tail call %struct.Memory* @sub_451f40.FSet(%struct.State* nonnull %0, i64 %1569, %struct.Memory* %MEMORY.18)
  %.pre48 = load i64, i64* %RBP.i, align 8
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_42e8fb

block_.L_42e8fb:                                  ; preds = %block_42e8df, %block_.L_42e8cc
  %1574 = phi i64 [ %1543, %block_.L_42e8cc ], [ %.pre49, %block_42e8df ]
  %1575 = phi i64 [ %1526, %block_.L_42e8cc ], [ %.pre48, %block_42e8df ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_.L_42e8cc ], [ %call2_42e8f6, %block_42e8df ]
  %1576 = add i64 %1575, -8
  %1577 = add i64 %1574, 4
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i64*
  %1579 = load i64, i64* %1578, align 8
  store i64 %1579, i64* %RAX.i242, align 8
  %1580 = add i64 %1579, 328
  %1581 = add i64 %1574, 12
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i64*
  %1583 = load i64, i64* %1582, align 8
  store i8 0, i8* %14, align 1
  %1584 = trunc i64 %1583 to i32
  %1585 = and i32 %1584, 255
  %1586 = tail call i32 @llvm.ctpop.i32(i32 %1585)
  %1587 = trunc i32 %1586 to i8
  %1588 = and i8 %1587, 1
  %1589 = xor i8 %1588, 1
  store i8 %1589, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1590 = icmp eq i64 %1583, 0
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %30, align 1
  %1592 = lshr i64 %1583, 63
  %1593 = trunc i64 %1592 to i8
  store i8 %1593, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v78 = select i1 %1590, i64 52, i64 18
  %1594 = add i64 %1574, %.v78
  store i64 %1594, i64* %3, align 8
  br i1 %1590, label %block_.L_42e92f, label %block_42e90d

block_42e90d:                                     ; preds = %block_.L_42e8fb
  %1595 = add i64 %1594, 4
  store i64 %1595, i64* %3, align 8
  %1596 = load i64, i64* %1578, align 8
  store i64 %1596, i64* %RAX.i242, align 8
  %1597 = add i64 %1596, 328
  %1598 = add i64 %1594, 11
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i64*
  %1600 = load i64, i64* %1599, align 8
  store i64 %1600, i64* %RAX.i242, align 8
  store i64 %1600, i64* %RDI.i54, align 8
  %1601 = add i64 %1594, -185741
  %1602 = add i64 %1594, 19
  %1603 = load i64, i64* %6, align 8
  %1604 = add i64 %1603, -8
  %1605 = inttoptr i64 %1604 to i64*
  store i64 %1602, i64* %1605, align 8
  store i64 %1604, i64* %6, align 8
  store i64 %1601, i64* %3, align 8
  %1606 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.19)
  %1607 = load i64, i64* %RBP.i, align 8
  %1608 = add i64 %1607, -8
  %1609 = load i64, i64* %3, align 8
  %1610 = add i64 %1609, 4
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1608 to i64*
  %1612 = load i64, i64* %1611, align 8
  store i64 %1612, i64* %RAX.i242, align 8
  %1613 = add i64 %1612, 328
  %1614 = add i64 %1609, 15
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1613 to i64*
  store i64 0, i64* %1615, align 8
  %.pre50 = load i64, i64* %RBP.i, align 8
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_42e92f

block_.L_42e92f:                                  ; preds = %block_42e90d, %block_.L_42e8fb
  %1616 = phi i64 [ %1594, %block_.L_42e8fb ], [ %.pre51, %block_42e90d ]
  %1617 = phi i64 [ %1575, %block_.L_42e8fb ], [ %.pre50, %block_42e90d ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.19, %block_.L_42e8fb ], [ %1606, %block_42e90d ]
  %1618 = add i64 %1617, -8
  %1619 = add i64 %1616, 4
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i64*
  %1621 = load i64, i64* %1620, align 8
  store i64 %1621, i64* %RAX.i242, align 8
  %1622 = add i64 %1621, 336
  %1623 = add i64 %1616, 12
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i64*
  %1625 = load i64, i64* %1624, align 8
  store i8 0, i8* %14, align 1
  %1626 = trunc i64 %1625 to i32
  %1627 = and i32 %1626, 255
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627)
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1632 = icmp eq i64 %1625, 0
  %1633 = zext i1 %1632 to i8
  store i8 %1633, i8* %30, align 1
  %1634 = lshr i64 %1625, 63
  %1635 = trunc i64 %1634 to i8
  store i8 %1635, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v79 = select i1 %1632, i64 52, i64 18
  %1636 = add i64 %1616, %.v79
  store i64 %1636, i64* %3, align 8
  br i1 %1632, label %block_.L_42e963, label %block_42e941

block_42e941:                                     ; preds = %block_.L_42e92f
  %1637 = add i64 %1636, 4
  store i64 %1637, i64* %3, align 8
  %1638 = load i64, i64* %1620, align 8
  store i64 %1638, i64* %RAX.i242, align 8
  %1639 = add i64 %1638, 336
  %1640 = add i64 %1636, 11
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i64*
  %1642 = load i64, i64* %1641, align 8
  store i64 %1642, i64* %RAX.i242, align 8
  store i64 %1642, i64* %RDI.i54, align 8
  %1643 = add i64 %1636, -185793
  %1644 = add i64 %1636, 19
  %1645 = load i64, i64* %6, align 8
  %1646 = add i64 %1645, -8
  %1647 = inttoptr i64 %1646 to i64*
  store i64 %1644, i64* %1647, align 8
  store i64 %1646, i64* %6, align 8
  store i64 %1643, i64* %3, align 8
  %1648 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.20)
  %1649 = load i64, i64* %RBP.i, align 8
  %1650 = add i64 %1649, -8
  %1651 = load i64, i64* %3, align 8
  %1652 = add i64 %1651, 4
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1650 to i64*
  %1654 = load i64, i64* %1653, align 8
  store i64 %1654, i64* %RAX.i242, align 8
  %1655 = add i64 %1654, 336
  %1656 = add i64 %1651, 15
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1655 to i64*
  store i64 0, i64* %1657, align 8
  %.pre52 = load i64, i64* %RBP.i, align 8
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_42e963

block_.L_42e963:                                  ; preds = %block_42e941, %block_.L_42e92f
  %1658 = phi i64 [ %1636, %block_.L_42e92f ], [ %.pre53, %block_42e941 ]
  %1659 = phi i64 [ %1617, %block_.L_42e92f ], [ %.pre52, %block_42e941 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_.L_42e92f ], [ %1648, %block_42e941 ]
  %1660 = add i64 %1659, -8
  %1661 = add i64 %1658, 4
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1660 to i64*
  %1663 = load i64, i64* %1662, align 8
  store i64 %1663, i64* %RAX.i242, align 8
  %1664 = add i64 %1663, 344
  %1665 = add i64 %1658, 12
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i64*
  %1667 = load i64, i64* %1666, align 8
  store i8 0, i8* %14, align 1
  %1668 = trunc i64 %1667 to i32
  %1669 = and i32 %1668, 255
  %1670 = tail call i32 @llvm.ctpop.i32(i32 %1669)
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  %1673 = xor i8 %1672, 1
  store i8 %1673, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1674 = icmp eq i64 %1667, 0
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %30, align 1
  %1676 = lshr i64 %1667, 63
  %1677 = trunc i64 %1676 to i8
  store i8 %1677, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v80 = select i1 %1674, i64 52, i64 18
  %1678 = add i64 %1658, %.v80
  store i64 %1678, i64* %3, align 8
  br i1 %1674, label %block_.L_42e997, label %block_42e975

block_42e975:                                     ; preds = %block_.L_42e963
  %1679 = add i64 %1678, 4
  store i64 %1679, i64* %3, align 8
  %1680 = load i64, i64* %1662, align 8
  store i64 %1680, i64* %RAX.i242, align 8
  %1681 = add i64 %1680, 344
  %1682 = add i64 %1678, 11
  store i64 %1682, i64* %3, align 8
  %1683 = inttoptr i64 %1681 to i64*
  %1684 = load i64, i64* %1683, align 8
  store i64 %1684, i64* %RAX.i242, align 8
  store i64 %1684, i64* %RDI.i54, align 8
  %1685 = add i64 %1678, -185845
  %1686 = add i64 %1678, 19
  %1687 = load i64, i64* %6, align 8
  %1688 = add i64 %1687, -8
  %1689 = inttoptr i64 %1688 to i64*
  store i64 %1686, i64* %1689, align 8
  store i64 %1688, i64* %6, align 8
  store i64 %1685, i64* %3, align 8
  %1690 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.21)
  %1691 = load i64, i64* %RBP.i, align 8
  %1692 = add i64 %1691, -8
  %1693 = load i64, i64* %3, align 8
  %1694 = add i64 %1693, 4
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1692 to i64*
  %1696 = load i64, i64* %1695, align 8
  store i64 %1696, i64* %RAX.i242, align 8
  %1697 = add i64 %1696, 344
  %1698 = add i64 %1693, 15
  store i64 %1698, i64* %3, align 8
  %1699 = inttoptr i64 %1697 to i64*
  store i64 0, i64* %1699, align 8
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_42e997

block_.L_42e997:                                  ; preds = %block_42e975, %block_.L_42e963
  %1700 = phi i64 [ %1678, %block_.L_42e963 ], [ %.pre54, %block_42e975 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.21, %block_.L_42e963 ], [ %1690, %block_42e975 ]
  %1701 = load i64, i64* %6, align 8
  %1702 = add i64 %1701, 208
  store i64 %1702, i64* %6, align 8
  %1703 = icmp ugt i64 %1701, -209
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %14, align 1
  %1705 = trunc i64 %1702 to i32
  %1706 = and i32 %1705, 255
  %1707 = tail call i32 @llvm.ctpop.i32(i32 %1706)
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  %1710 = xor i8 %1709, 1
  store i8 %1710, i8* %21, align 1
  %1711 = xor i64 %1701, 16
  %1712 = xor i64 %1711, %1702
  %1713 = lshr i64 %1712, 4
  %1714 = trunc i64 %1713 to i8
  %1715 = and i8 %1714, 1
  store i8 %1715, i8* %27, align 1
  %1716 = icmp eq i64 %1702, 0
  %1717 = zext i1 %1716 to i8
  store i8 %1717, i8* %30, align 1
  %1718 = lshr i64 %1702, 63
  %1719 = trunc i64 %1718 to i8
  store i8 %1719, i8* %33, align 1
  %1720 = lshr i64 %1701, 63
  %1721 = xor i64 %1718, %1720
  %1722 = add nuw nsw i64 %1721, %1718
  %1723 = icmp eq i64 %1722, 2
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %39, align 1
  %1725 = add i64 %1700, 8
  store i64 %1725, i64* %3, align 8
  %1726 = add i64 %1701, 216
  %1727 = inttoptr i64 %1702 to i64*
  %1728 = load i64, i64* %1727, align 8
  store i64 %1728, i64* %RBP.i, align 8
  store i64 %1726, i64* %6, align 8
  %1729 = add i64 %1700, 9
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1726 to i64*
  %1731 = load i64, i64* %1730, align 8
  store i64 %1731, i64* %3, align 8
  %1732 = add i64 %1701, 224
  store i64 %1732, i64* %6, align 8
  ret %struct.Memory* %MEMORY.22
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
define %struct.Memory* @routine_subq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 208
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x1c__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_jne_.L_42e328(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42e2fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42e310(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458d45___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__0x4588f1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4588f1_type* @G__0x4588f1 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.Die(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 28
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
define %struct.Memory* @routine_jge_.L_42e6bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = trunc i64 %10 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i64 %10, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i64 %10, 63
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42e3cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42e39d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42e3b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458927___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458927_type* @G__0x458927 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_42e46b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x26449__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x26449__rip__type* @G_0x26449__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42e46b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_42e46b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42e43c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42e44f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458957___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458957_type* @G__0x458957 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_cmpl_0x18__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 24
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
define %struct.Memory* @routine_je_.L_42e512(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movq__rsi__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42e4dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42e4f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4589a2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4589a2_type* @G__0x4589a2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movq__rax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
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
define %struct.Memory* @routine_je_.L_42e5df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x150__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42e5aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42e5bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4589e3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4589e3_type* @G__0x4589e3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
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
define %struct.Memory* @routine_je_.L_42e6ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x158__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42e677(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42e68a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458a32___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458a32_type* @G__0x458a32 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_jmpq_.L_42e6b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42e343(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_je_.L_42e76e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x48__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x18__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_cmpq__rdi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  %8 = icmp ult i64 %3, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %4, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %4, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rdi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x28__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42e730(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42e746(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458a81___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458a81_type* @G__0x458a81 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_je_.L_42e81d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x50__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42e7df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42e7f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458ace___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458ace_type* @G__0x458ace to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
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
define %struct.Memory* @routine_je_.L_42e8cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x58__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42e88e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42e8a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458b1b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458b1b_type* @G__0x458b1b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_jne_.L_42e8fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x25e41__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x25e41__rip__type* @G_0x25e41__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_callq_.FSet(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0__0x148__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_je_.L_42e92f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.free_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x0__0x148__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x150__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_je_.L_42e963(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x0__0x150__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x158__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_je_.L_42e997(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x0__0x158__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -209
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
