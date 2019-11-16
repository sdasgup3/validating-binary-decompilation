; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x442970_type = type <{ [8 x i8] }>
%G__0x45a1df_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
%G__0x45a2ac_type = type <{ [8 x i8] }>
%G__0x45a2b2_type = type <{ [8 x i8] }>
%G__0x45a2bd_type = type <{ [8 x i8] }>
%G__0x45a2c5_type = type <{ [8 x i8] }>
%G__0x45a2cc_type = type <{ [8 x i8] }>
%G__0x45a2e4_type = type <{ [8 x i8] }>
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
@G__0x442970 = global %G__0x442970_type zeroinitializer
@G__0x45a1df = global %G__0x45a1df_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer
@G__0x45a2ac = global %G__0x45a2ac_type zeroinitializer
@G__0x45a2b2 = global %G__0x45a2b2_type zeroinitializer
@G__0x45a2bd = global %G__0x45a2bd_type zeroinitializer
@G__0x45a2c5 = global %G__0x45a2c5_type zeroinitializer
@G__0x45a2cc = global %G__0x45a2cc_type zeroinitializer
@G__0x45a2e4 = global %G__0x45a2e4_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_43f8c0.SeqfileGetLine(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401660.strtok_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43fee0.SetSeqinfoString(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401590.feof_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401700.strstr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4426c0.readLoop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @readGenBank(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -56
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 48
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
  %RDI.i518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i518, align 8
  %42 = add i64 %10, 11
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i514 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %EAX.i511 = bitcast %union.anon* %44 to i32*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i512 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i508 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4410ac

block_.L_4410ac:                                  ; preds = %block_4410d3, %entry
  %47 = phi i64 [ %.pre, %entry ], [ %86, %block_4410d3 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %call2_4410d7, %block_4410d3 ]
  store i64 ptrtoint (%G__0x45a2ac_type* @G__0x45a2ac to i64), i64* %RSI.i516, align 8
  store i64 5, i64* %RAX.i514, align 8
  store i64 5, i64* %RDX.i512, align 8
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -8
  %50 = add i64 %47, 21
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %RCX.i508, align 8
  %53 = add i64 %52, 24
  %54 = add i64 %47, 25
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %53 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %RDI.i518, align 8
  %57 = add i64 %47, -261340
  %58 = add i64 %47, 30
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, -8
  %61 = inttoptr i64 %60 to i64*
  store i64 %58, i64* %61, align 8
  store i64 %60, i64* %6, align 8
  store i64 %57, i64* %3, align 8
  %62 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.0)
  %63 = load i32, i32* %EAX.i511, align 4
  %64 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %65 = and i32 %63, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65)
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %70 = icmp eq i32 %63, 0
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %30, align 1
  %72 = lshr i32 %63, 31
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v66 = select i1 %70, i64 23, i64 9
  %74 = add i64 %64, %.v66
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -8
  %77 = add i64 %74, 4
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %76 to i64*
  %79 = load i64, i64* %78, align 8
  br i1 %70, label %block_.L_4410e1, label %block_4410d3

block_4410d3:                                     ; preds = %block_.L_4410ac
  store i64 %79, i64* %RDI.i518, align 8
  %80 = add i64 %74, -6163
  %81 = add i64 %74, 9
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %81, i64* %84, align 8
  store i64 %83, i64* %6, align 8
  store i64 %80, i64* %3, align 8
  %call2_4410d7 = tail call %struct.Memory* @sub_43f8c0.SeqfileGetLine(%struct.State* nonnull %0, i64 %80, %struct.Memory* %62)
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, -48
  store i64 %86, i64* %3, align 8
  br label %block_.L_4410ac

block_.L_4410e1:                                  ; preds = %block_.L_4410ac
  store i64 %79, i64* %RAX.i514, align 8
  %87 = add i64 %79, 36
  %88 = add i64 %74, 8
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  store i8 0, i8* %14, align 1
  %91 = and i32 %90, 255
  %92 = tail call i32 @llvm.ctpop.i32(i32 %91)
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  store i8 %95, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %96 = icmp eq i32 %90, 0
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %30, align 1
  %98 = lshr i32 %90, 31
  %99 = trunc i32 %98 to i8
  store i8 %99, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %100 = icmp ne i8 %99, 0
  %.v = select i1 %100, i64 30, i64 6
  %101 = add i64 %88, %.v
  store i64 %101, i64* %3, align 8
  br i1 %100, label %block_.L_441107, label %block_4410ef

block_4410ef:                                     ; preds = %block_.L_4410e1
  %102 = add i64 %101, 4
  store i64 %102, i64* %3, align 8
  %103 = load i64, i64* %78, align 8
  store i64 %103, i64* %RAX.i514, align 8
  %104 = add i64 %101, 8
  store i64 %104, i64* %3, align 8
  %105 = load i64, i64* %78, align 8
  store i64 %105, i64* %RCX.i508, align 8
  %106 = add i64 %105, 40
  %107 = add i64 %101, 12
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i64*
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %RDX.i512, align 8
  %110 = add i64 %103, 56
  %111 = add i64 %101, 16
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i64*
  store i64 %109, i64* %112, align 8
  %113 = load i64, i64* %RCX.i508, align 8
  %114 = add i64 %113, 48
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, 4
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %114 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %RCX.i508, align 8
  %119 = load i64, i64* %RAX.i514, align 8
  %120 = add i64 %119, 64
  %121 = add i64 %115, 8
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %120 to i64*
  store i64 %118, i64* %122, align 8
  %.pre50 = load i64, i64* %3, align 8
  %.pre51 = load i64, i64* %RBP.i, align 8
  br label %block_.L_441107

block_.L_441107:                                  ; preds = %block_4410ef, %block_.L_4410e1
  %123 = phi i64 [ %.pre51, %block_4410ef ], [ %75, %block_.L_4410e1 ]
  %124 = phi i64 [ %.pre50, %block_4410ef ], [ %101, %block_.L_4410e1 ]
  store i64 ptrtoint (%G__0x45a2e4_type* @G__0x45a2e4 to i64), i64* %RSI.i516, align 8
  %125 = add i64 %123, -8
  %126 = add i64 %124, 14
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %RAX.i514, align 8
  %129 = add i64 %128, 24
  %130 = add i64 %124, 18
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i64*
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 12
  store i64 %133, i64* %RAX.i514, align 8
  %134 = icmp ugt i64 %132, -13
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %14, align 1
  %136 = trunc i64 %133 to i32
  %137 = and i32 %136, 255
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137)
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %21, align 1
  %142 = xor i64 %133, %132
  %143 = lshr i64 %142, 4
  %144 = trunc i64 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %27, align 1
  %146 = icmp eq i64 %133, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %30, align 1
  %148 = lshr i64 %133, 63
  %149 = trunc i64 %148 to i8
  store i8 %149, i8* %33, align 1
  %150 = lshr i64 %132, 63
  %151 = xor i64 %148, %150
  %152 = add nuw nsw i64 %151, %148
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %39, align 1
  store i64 %133, i64* %RDI.i518, align 8
  %155 = add i64 %124, -260775
  %156 = add i64 %124, 30
  %157 = load i64, i64* %6, align 8
  %158 = add i64 %157, -8
  %159 = inttoptr i64 %158 to i64*
  store i64 %156, i64* %159, align 8
  store i64 %158, i64* %6, align 8
  store i64 %155, i64* %3, align 8
  %call2_441120 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %155, %struct.Memory* %62)
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -16
  %162 = load i64, i64* %RAX.i514, align 8
  %163 = load i64, i64* %3, align 8
  %164 = add i64 %163, 4
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %161 to i64*
  store i64 %162, i64* %165, align 8
  %166 = load i64, i64* %RAX.i514, align 8
  %167 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %168 = trunc i64 %166 to i32
  %169 = and i32 %168, 255
  %170 = tail call i32 @llvm.ctpop.i32(i32 %169)
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %174 = icmp eq i64 %166, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %30, align 1
  %176 = lshr i64 %166, 63
  %177 = trunc i64 %176 to i8
  store i8 %177, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v67 = select i1 %174, i64 35, i64 10
  %178 = add i64 %167, %.v67
  store i64 %178, i64* %3, align 8
  br i1 %174, label %block_.L_44114c, label %block_441133

block_441133:                                     ; preds = %block_.L_441107
  store i64 1, i64* %RDX.i512, align 8
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -8
  %181 = add i64 %178, 9
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RAX.i514, align 8
  %184 = add i64 %183, 120
  %185 = add i64 %178, 13
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i64*
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %RDI.i518, align 8
  %188 = add i64 %179, -16
  %189 = add i64 %178, 17
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i64*
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %RSI.i516, align 8
  %192 = add i64 %178, -4691
  %193 = add i64 %178, 22
  %194 = load i64, i64* %6, align 8
  %195 = add i64 %194, -8
  %196 = inttoptr i64 %195 to i64*
  store i64 %193, i64* %196, align 8
  store i64 %195, i64* %6, align 8
  store i64 %192, i64* %3, align 8
  %call2_441144 = tail call %struct.Memory* @sub_43fee0.SetSeqinfoString(%struct.State* nonnull %0, i64 %192, %struct.Memory* %call2_441120)
  %197 = load i64, i64* %RBP.i, align 8
  %198 = add i64 %197, -24
  %199 = load i32, i32* %EAX.i511, align 4
  %200 = load i64, i64* %3, align 8
  %201 = add i64 %200, 3
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %198 to i32*
  store i32 %199, i32* %202, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_44114c

block_.L_44114c:                                  ; preds = %block_441133, %block_.L_441107
  %203 = phi i64 [ %178, %block_.L_441107 ], [ %.pre52, %block_441133 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_441120, %block_.L_441107 ], [ %call2_441144, %block_441133 ]
  %204 = load i64, i64* %RBP.i, align 8
  %205 = add i64 %204, -20
  %206 = add i64 %203, 7
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  store i32 0, i32* %207, align 4
  %CL.i424 = bitcast %union.anon* %46 to i8*
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_441153

block_.L_441153:                                  ; preds = %block_.L_441387, %block_.L_44114c
  %208 = phi i64 [ %.pre53, %block_.L_44114c ], [ %800, %block_.L_441387 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_44114c ], [ %MEMORY.13, %block_.L_441387 ]
  %209 = load i64, i64* %RBP.i, align 8
  %210 = add i64 %209, -8
  %211 = add i64 %208, 4
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i64*
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %RAX.i514, align 8
  %214 = add i64 %208, 7
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i64*
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %RDI.i518, align 8
  %217 = add i64 %208, -261059
  %218 = add i64 %208, 12
  %219 = load i64, i64* %6, align 8
  %220 = add i64 %219, -8
  %221 = inttoptr i64 %220 to i64*
  store i64 %218, i64* %221, align 8
  store i64 %220, i64* %6, align 8
  store i64 %217, i64* %3, align 8
  %call2_44115a = tail call %struct.Memory* @sub_401590.feof_plt(%struct.State* nonnull %0, i64 %217, %struct.Memory* %MEMORY.3)
  %222 = load i32, i32* %EAX.i511, align 4
  %223 = load i64, i64* %3, align 8
  %224 = icmp ne i32 %222, 0
  %225 = zext i1 %224 to i8
  %226 = xor i8 %225, -1
  store i8 %226, i8* %CL.i424, align 1
  %227 = and i8 %226, 1
  store i8 0, i8* %14, align 1
  %228 = zext i8 %227 to i32
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = xor i8 %230, 1
  store i8 %231, i8* %21, align 1
  %232 = xor i8 %227, 1
  store i8 %232, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %233 = icmp eq i8 %232, 0
  %.v68 = select i1 %233, i64 23, i64 18
  %234 = add i64 %223, %.v68
  store i64 %234, i64* %3, align 8
  br i1 %233, label %block_.L_441176, label %block_441171

block_441171:                                     ; preds = %block_.L_441153
  %235 = add i64 %234, 539
  br label %block_.L_44138c

block_.L_441176:                                  ; preds = %block_.L_441153
  %236 = load i64, i64* %RBP.i, align 8
  %237 = add i64 %236, -8
  %238 = add i64 %234, 4
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RDI.i518, align 8
  %241 = add i64 %234, -6326
  %242 = add i64 %234, 9
  %243 = load i64, i64* %6, align 8
  %244 = add i64 %243, -8
  %245 = inttoptr i64 %244 to i64*
  store i64 %242, i64* %245, align 8
  store i64 %244, i64* %6, align 8
  store i64 %241, i64* %3, align 8
  %call2_44117a = tail call %struct.Memory* @sub_43f8c0.SeqfileGetLine(%struct.State* nonnull %0, i64 %241, %struct.Memory* %MEMORY.3)
  %246 = load i64, i64* %RBP.i, align 8
  %247 = add i64 %246, -8
  %248 = load i64, i64* %3, align 8
  %249 = add i64 %248, 4
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %247 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %RDI.i518, align 8
  %252 = add i64 %248, 7
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i64*
  %254 = load i64, i64* %253, align 8
  store i64 %254, i64* %RDI.i518, align 8
  %255 = add i64 %248, -261103
  %256 = add i64 %248, 12
  %257 = load i64, i64* %6, align 8
  %258 = add i64 %257, -8
  %259 = inttoptr i64 %258 to i64*
  store i64 %256, i64* %259, align 8
  store i64 %258, i64* %6, align 8
  store i64 %255, i64* %3, align 8
  %call2_441186 = tail call %struct.Memory* @sub_401590.feof_plt(%struct.State* nonnull %0, i64 %255, %struct.Memory* %MEMORY.3)
  %260 = load i32, i32* %EAX.i511, align 4
  %261 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %262 = and i32 %260, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %267 = icmp eq i32 %260, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %30, align 1
  %269 = lshr i32 %260, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v71 = select i1 %267, i64 9, i64 127
  %271 = add i64 %261, %.v71
  store i64 %271, i64* %3, align 8
  br i1 %267, label %block_441194, label %block_.L_441176.block_.L_44120a_crit_edge

block_.L_441176.block_.L_44120a_crit_edge:        ; preds = %block_.L_441176
  %.pre55 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44120a

block_441194:                                     ; preds = %block_.L_441176
  store i64 ptrtoint (%G__0x45a2b2_type* @G__0x45a2b2 to i64), i64* %RSI.i516, align 8
  %272 = load i64, i64* %RBP.i, align 8
  %273 = add i64 %272, -8
  %274 = add i64 %271, 14
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %RAX.i514, align 8
  %277 = add i64 %276, 24
  %278 = add i64 %271, 18
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RDI.i518, align 8
  %281 = add i64 %271, -260756
  %282 = add i64 %271, 23
  %283 = load i64, i64* %6, align 8
  %284 = add i64 %283, -8
  %285 = inttoptr i64 %284 to i64*
  store i64 %282, i64* %285, align 8
  store i64 %284, i64* %6, align 8
  store i64 %281, i64* %3, align 8
  %call2_4411a6 = tail call %struct.Memory* @sub_401700.strstr_plt(%struct.State* nonnull %0, i64 %281, %struct.Memory* %MEMORY.3)
  %286 = load i64, i64* %RBP.i, align 8
  %287 = add i64 %286, -8
  %288 = load i64, i64* %3, align 8
  %289 = add i64 %288, 4
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %287 to i64*
  %291 = load i64, i64* %290, align 8
  store i64 %291, i64* %RSI.i516, align 8
  %292 = load i64, i64* %RAX.i514, align 8
  %293 = add i64 %291, 24
  %294 = add i64 %288, 8
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i64*
  %296 = load i64, i64* %295, align 8
  %297 = sub i64 %292, %296
  %298 = icmp ult i64 %292, %296
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %14, align 1
  %300 = trunc i64 %297 to i32
  %301 = and i32 %300, 255
  %302 = tail call i32 @llvm.ctpop.i32(i32 %301)
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = xor i8 %304, 1
  store i8 %305, i8* %21, align 1
  %306 = xor i64 %296, %292
  %307 = xor i64 %306, %297
  %308 = lshr i64 %307, 4
  %309 = trunc i64 %308 to i8
  %310 = and i8 %309, 1
  store i8 %310, i8* %27, align 1
  %311 = icmp eq i64 %297, 0
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %30, align 1
  %313 = lshr i64 %297, 63
  %314 = trunc i64 %313 to i8
  store i8 %314, i8* %33, align 1
  %315 = lshr i64 %292, 63
  %316 = lshr i64 %296, 63
  %317 = xor i64 %316, %315
  %318 = xor i64 %313, %315
  %319 = add nuw nsw i64 %318, %317
  %320 = icmp eq i64 %319, 2
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %39, align 1
  %.v80 = select i1 %311, i64 14, i64 95
  %322 = add i64 %288, %.v80
  store i64 %322, i64* %3, align 8
  br i1 %311, label %block_4411b9, label %block_.L_44120a

block_4411b9:                                     ; preds = %block_441194
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i516, align 8
  %323 = add i64 %322, 14
  store i64 %323, i64* %3, align 8
  %324 = load i64, i64* %290, align 8
  store i64 %324, i64* %RAX.i514, align 8
  %325 = add i64 %324, 24
  %326 = add i64 %322, 18
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i64*
  %328 = load i64, i64* %327, align 8
  %329 = add i64 %328, 12
  store i64 %329, i64* %RAX.i514, align 8
  %330 = icmp ugt i64 %328, -13
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %14, align 1
  %332 = trunc i64 %329 to i32
  %333 = and i32 %332, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333)
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %21, align 1
  %338 = xor i64 %329, %328
  %339 = lshr i64 %338, 4
  %340 = trunc i64 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %27, align 1
  %342 = icmp eq i64 %329, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %30, align 1
  %344 = lshr i64 %329, 63
  %345 = trunc i64 %344 to i8
  store i8 %345, i8* %33, align 1
  %346 = lshr i64 %328, 63
  %347 = xor i64 %344, %346
  %348 = add nuw nsw i64 %347, %344
  %349 = icmp eq i64 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %39, align 1
  store i64 %329, i64* %RDI.i518, align 8
  %351 = add i64 %322, -260953
  %352 = add i64 %322, 30
  %353 = load i64, i64* %6, align 8
  %354 = add i64 %353, -8
  %355 = inttoptr i64 %354 to i64*
  store i64 %352, i64* %355, align 8
  store i64 %354, i64* %6, align 8
  store i64 %351, i64* %3, align 8
  %call2_4411d2 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %351, %struct.Memory* %MEMORY.3)
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -16
  %358 = load i64, i64* %RAX.i514, align 8
  %359 = load i64, i64* %3, align 8
  %360 = add i64 %359, 4
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %357 to i64*
  store i64 %358, i64* %361, align 8
  %362 = load i64, i64* %RAX.i514, align 8
  %363 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %364 = trunc i64 %362 to i32
  %365 = and i32 %364, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365)
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %370 = icmp eq i64 %362, 0
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %30, align 1
  %372 = lshr i64 %362, 63
  %373 = trunc i64 %372 to i8
  store i8 %373, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v81 = select i1 %370, i64 35, i64 10
  %374 = add i64 %363, %.v81
  store i64 %374, i64* %3, align 8
  br i1 %370, label %block_.L_4411fe, label %block_4411e5

block_4411e5:                                     ; preds = %block_4411b9
  store i64 8, i64* %RDX.i512, align 8
  %375 = load i64, i64* %RBP.i, align 8
  %376 = add i64 %375, -8
  %377 = add i64 %374, 9
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RAX.i514, align 8
  %380 = add i64 %379, 120
  %381 = add i64 %374, 13
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i64*
  %383 = load i64, i64* %382, align 8
  store i64 %383, i64* %RDI.i518, align 8
  %384 = add i64 %375, -16
  %385 = add i64 %374, 17
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i64*
  %387 = load i64, i64* %386, align 8
  store i64 %387, i64* %RSI.i516, align 8
  %388 = add i64 %374, -4869
  %389 = add i64 %374, 22
  %390 = load i64, i64* %6, align 8
  %391 = add i64 %390, -8
  %392 = inttoptr i64 %391 to i64*
  store i64 %389, i64* %392, align 8
  store i64 %391, i64* %6, align 8
  store i64 %388, i64* %3, align 8
  %call2_4411f6 = tail call %struct.Memory* @sub_43fee0.SetSeqinfoString(%struct.State* nonnull %0, i64 %388, %struct.Memory* %MEMORY.3)
  %393 = load i64, i64* %RBP.i, align 8
  %394 = add i64 %393, -28
  %395 = load i32, i32* %EAX.i511, align 4
  %396 = load i64, i64* %3, align 8
  %397 = add i64 %396, 3
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %394 to i32*
  store i32 %395, i32* %398, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_4411fe

block_.L_4411fe:                                  ; preds = %block_4411e5, %block_4411b9
  %399 = phi i64 [ %.pre54, %block_4411e5 ], [ %374, %block_4411b9 ]
  %400 = load i64, i64* %RBP.i, align 8
  %401 = add i64 %400, -20
  %402 = add i64 %399, 7
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %401 to i32*
  store i32 1, i32* %403, align 4
  %404 = load i64, i64* %3, align 8
  %405 = add i64 %404, 386
  br label %block_.L_441387

block_.L_44120a:                                  ; preds = %block_441194, %block_.L_441176.block_.L_44120a_crit_edge
  %406 = phi i64 [ %271, %block_.L_441176.block_.L_44120a_crit_edge ], [ %322, %block_441194 ]
  %407 = phi i64 [ %.pre55, %block_.L_441176.block_.L_44120a_crit_edge ], [ %286, %block_441194 ]
  %408 = add i64 %407, -8
  %409 = add i64 %406, 4
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %RAX.i514, align 8
  %412 = add i64 %406, 7
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i64*
  %414 = load i64, i64* %413, align 8
  store i64 %414, i64* %RDI.i518, align 8
  %415 = add i64 %406, -261242
  %416 = add i64 %406, 12
  %417 = load i64, i64* %6, align 8
  %418 = add i64 %417, -8
  %419 = inttoptr i64 %418 to i64*
  store i64 %416, i64* %419, align 8
  store i64 %418, i64* %6, align 8
  store i64 %415, i64* %3, align 8
  %call2_441211 = tail call %struct.Memory* @sub_401590.feof_plt(%struct.State* nonnull %0, i64 %415, %struct.Memory* %MEMORY.3)
  %420 = load i32, i32* %EAX.i511, align 4
  %421 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %422 = and i32 %420, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %427 = icmp eq i32 %420, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %30, align 1
  %429 = lshr i32 %420, 31
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v72 = select i1 %427, i64 9, i64 127
  %431 = add i64 %421, %.v72
  store i64 %431, i64* %3, align 8
  br i1 %427, label %block_44121f, label %block_.L_44120a.block_.L_441295_crit_edge

block_.L_44120a.block_.L_441295_crit_edge:        ; preds = %block_.L_44120a
  %.pre57 = load i64, i64* %RBP.i, align 8
  br label %block_.L_441295

block_44121f:                                     ; preds = %block_.L_44120a
  store i64 ptrtoint (%G__0x45a1df_type* @G__0x45a1df to i64), i64* %RSI.i516, align 8
  %432 = load i64, i64* %RBP.i, align 8
  %433 = add i64 %432, -8
  %434 = add i64 %431, 14
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i64*
  %436 = load i64, i64* %435, align 8
  store i64 %436, i64* %RAX.i514, align 8
  %437 = add i64 %436, 24
  %438 = add i64 %431, 18
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i64*
  %440 = load i64, i64* %439, align 8
  store i64 %440, i64* %RDI.i518, align 8
  %441 = add i64 %431, -260895
  %442 = add i64 %431, 23
  %443 = load i64, i64* %6, align 8
  %444 = add i64 %443, -8
  %445 = inttoptr i64 %444 to i64*
  store i64 %442, i64* %445, align 8
  store i64 %444, i64* %6, align 8
  store i64 %441, i64* %3, align 8
  %call2_441231 = tail call %struct.Memory* @sub_401700.strstr_plt(%struct.State* nonnull %0, i64 %441, %struct.Memory* %call2_441211)
  %446 = load i64, i64* %RBP.i, align 8
  %447 = add i64 %446, -8
  %448 = load i64, i64* %3, align 8
  %449 = add i64 %448, 4
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %447 to i64*
  %451 = load i64, i64* %450, align 8
  store i64 %451, i64* %RSI.i516, align 8
  %452 = load i64, i64* %RAX.i514, align 8
  %453 = add i64 %451, 24
  %454 = add i64 %448, 8
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i64*
  %456 = load i64, i64* %455, align 8
  %457 = sub i64 %452, %456
  %458 = icmp ult i64 %452, %456
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %14, align 1
  %460 = trunc i64 %457 to i32
  %461 = and i32 %460, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %21, align 1
  %466 = xor i64 %456, %452
  %467 = xor i64 %466, %457
  %468 = lshr i64 %467, 4
  %469 = trunc i64 %468 to i8
  %470 = and i8 %469, 1
  store i8 %470, i8* %27, align 1
  %471 = icmp eq i64 %457, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %30, align 1
  %473 = lshr i64 %457, 63
  %474 = trunc i64 %473 to i8
  store i8 %474, i8* %33, align 1
  %475 = lshr i64 %452, 63
  %476 = lshr i64 %456, 63
  %477 = xor i64 %476, %475
  %478 = xor i64 %473, %475
  %479 = add nuw nsw i64 %478, %477
  %480 = icmp eq i64 %479, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %39, align 1
  %.v78 = select i1 %471, i64 14, i64 95
  %482 = add i64 %448, %.v78
  store i64 %482, i64* %3, align 8
  br i1 %471, label %block_441244, label %block_.L_441295

block_441244:                                     ; preds = %block_44121f
  store i64 ptrtoint (%G__0x45a2e4_type* @G__0x45a2e4 to i64), i64* %RSI.i516, align 8
  %483 = add i64 %482, 14
  store i64 %483, i64* %3, align 8
  %484 = load i64, i64* %450, align 8
  store i64 %484, i64* %RAX.i514, align 8
  %485 = add i64 %484, 24
  %486 = add i64 %482, 18
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i64*
  %488 = load i64, i64* %487, align 8
  %489 = add i64 %488, 12
  store i64 %489, i64* %RAX.i514, align 8
  %490 = icmp ugt i64 %488, -13
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %14, align 1
  %492 = trunc i64 %489 to i32
  %493 = and i32 %492, 255
  %494 = tail call i32 @llvm.ctpop.i32(i32 %493)
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = xor i8 %496, 1
  store i8 %497, i8* %21, align 1
  %498 = xor i64 %489, %488
  %499 = lshr i64 %498, 4
  %500 = trunc i64 %499 to i8
  %501 = and i8 %500, 1
  store i8 %501, i8* %27, align 1
  %502 = icmp eq i64 %489, 0
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %30, align 1
  %504 = lshr i64 %489, 63
  %505 = trunc i64 %504 to i8
  store i8 %505, i8* %33, align 1
  %506 = lshr i64 %488, 63
  %507 = xor i64 %504, %506
  %508 = add nuw nsw i64 %507, %504
  %509 = icmp eq i64 %508, 2
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %39, align 1
  store i64 %489, i64* %RDI.i518, align 8
  %511 = add i64 %482, -261092
  %512 = add i64 %482, 30
  %513 = load i64, i64* %6, align 8
  %514 = add i64 %513, -8
  %515 = inttoptr i64 %514 to i64*
  store i64 %512, i64* %515, align 8
  store i64 %514, i64* %6, align 8
  store i64 %511, i64* %3, align 8
  %call2_44125d = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %511, %struct.Memory* %call2_441231)
  %516 = load i64, i64* %RBP.i, align 8
  %517 = add i64 %516, -16
  %518 = load i64, i64* %RAX.i514, align 8
  %519 = load i64, i64* %3, align 8
  %520 = add i64 %519, 4
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %517 to i64*
  store i64 %518, i64* %521, align 8
  %522 = load i64, i64* %RAX.i514, align 8
  %523 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %524 = trunc i64 %522 to i32
  %525 = and i32 %524, 255
  %526 = tail call i32 @llvm.ctpop.i32(i32 %525)
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  store i8 %529, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %530 = icmp eq i64 %522, 0
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %30, align 1
  %532 = lshr i64 %522, 63
  %533 = trunc i64 %532 to i8
  store i8 %533, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v79 = select i1 %530, i64 35, i64 10
  %534 = add i64 %523, %.v79
  store i64 %534, i64* %3, align 8
  br i1 %530, label %block_.L_441289, label %block_441270

block_441270:                                     ; preds = %block_441244
  store i64 4, i64* %RDX.i512, align 8
  %535 = load i64, i64* %RBP.i, align 8
  %536 = add i64 %535, -8
  %537 = add i64 %534, 9
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %RAX.i514, align 8
  %540 = add i64 %539, 120
  %541 = add i64 %534, 13
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i64*
  %543 = load i64, i64* %542, align 8
  store i64 %543, i64* %RDI.i518, align 8
  %544 = add i64 %535, -16
  %545 = add i64 %534, 17
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i64*
  %547 = load i64, i64* %546, align 8
  store i64 %547, i64* %RSI.i516, align 8
  %548 = add i64 %534, -5008
  %549 = add i64 %534, 22
  %550 = load i64, i64* %6, align 8
  %551 = add i64 %550, -8
  %552 = inttoptr i64 %551 to i64*
  store i64 %549, i64* %552, align 8
  store i64 %551, i64* %6, align 8
  store i64 %548, i64* %3, align 8
  %call2_441281 = tail call %struct.Memory* @sub_43fee0.SetSeqinfoString(%struct.State* nonnull %0, i64 %548, %struct.Memory* %call2_44125d)
  %553 = load i64, i64* %RBP.i, align 8
  %554 = add i64 %553, -32
  %555 = load i32, i32* %EAX.i511, align 4
  %556 = load i64, i64* %3, align 8
  %557 = add i64 %556, 3
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %554 to i32*
  store i32 %555, i32* %558, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_441289

block_.L_441289:                                  ; preds = %block_441270, %block_441244
  %559 = phi i64 [ %534, %block_441244 ], [ %.pre56, %block_441270 ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_44125d, %block_441244 ], [ %call2_441281, %block_441270 ]
  %560 = load i64, i64* %RBP.i, align 8
  %561 = add i64 %560, -20
  %562 = add i64 %559, 7
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  store i32 0, i32* %563, align 4
  %564 = load i64, i64* %3, align 8
  %565 = add i64 %564, 242
  br label %block_.L_441382

block_.L_441295:                                  ; preds = %block_44121f, %block_.L_44120a.block_.L_441295_crit_edge
  %566 = phi i64 [ %431, %block_.L_44120a.block_.L_441295_crit_edge ], [ %482, %block_44121f ]
  %567 = phi i64 [ %.pre57, %block_.L_44120a.block_.L_441295_crit_edge ], [ %446, %block_44121f ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_441211, %block_.L_44120a.block_.L_441295_crit_edge ], [ %call2_441231, %block_44121f ]
  %568 = add i64 %567, -8
  %569 = add i64 %566, 4
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i64*
  %571 = load i64, i64* %570, align 8
  store i64 %571, i64* %RAX.i514, align 8
  %572 = add i64 %566, 7
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i64*
  %574 = load i64, i64* %573, align 8
  store i64 %574, i64* %RDI.i518, align 8
  %575 = add i64 %566, -261381
  %576 = add i64 %566, 12
  %577 = load i64, i64* %6, align 8
  %578 = add i64 %577, -8
  %579 = inttoptr i64 %578 to i64*
  store i64 %576, i64* %579, align 8
  store i64 %578, i64* %6, align 8
  store i64 %575, i64* %3, align 8
  %call2_44129c = tail call %struct.Memory* @sub_401590.feof_plt(%struct.State* nonnull %0, i64 %575, %struct.Memory* %MEMORY.7)
  %580 = load i32, i32* %EAX.i511, align 4
  %581 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %582 = and i32 %580, 255
  %583 = tail call i32 @llvm.ctpop.i32(i32 %582)
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = xor i8 %585, 1
  store i8 %586, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %587 = icmp eq i32 %580, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %30, align 1
  %589 = lshr i32 %580, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v73 = select i1 %587, i64 9, i64 127
  %591 = add i64 %581, %.v73
  store i64 %591, i64* %3, align 8
  br i1 %587, label %block_4412aa, label %block_.L_441295.block_.L_441320_crit_edge

block_.L_441295.block_.L_441320_crit_edge:        ; preds = %block_.L_441295
  %.pre59 = load i64, i64* %RBP.i, align 8
  br label %block_.L_441320

block_4412aa:                                     ; preds = %block_.L_441295
  store i64 ptrtoint (%G__0x45a2bd_type* @G__0x45a2bd to i64), i64* %RSI.i516, align 8
  %592 = load i64, i64* %RBP.i, align 8
  %593 = add i64 %592, -8
  %594 = add i64 %591, 14
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i64*
  %596 = load i64, i64* %595, align 8
  store i64 %596, i64* %RAX.i514, align 8
  %597 = add i64 %596, 24
  %598 = add i64 %591, 18
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i64*
  %600 = load i64, i64* %599, align 8
  store i64 %600, i64* %RDI.i518, align 8
  %601 = add i64 %591, -261034
  %602 = add i64 %591, 23
  %603 = load i64, i64* %6, align 8
  %604 = add i64 %603, -8
  %605 = inttoptr i64 %604 to i64*
  store i64 %602, i64* %605, align 8
  store i64 %604, i64* %6, align 8
  store i64 %601, i64* %3, align 8
  %call2_4412bc = tail call %struct.Memory* @sub_401700.strstr_plt(%struct.State* nonnull %0, i64 %601, %struct.Memory* %call2_44129c)
  %606 = load i64, i64* %RBP.i, align 8
  %607 = add i64 %606, -8
  %608 = load i64, i64* %3, align 8
  %609 = add i64 %608, 4
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %607 to i64*
  %611 = load i64, i64* %610, align 8
  store i64 %611, i64* %RSI.i516, align 8
  %612 = load i64, i64* %RAX.i514, align 8
  %613 = add i64 %611, 24
  %614 = add i64 %608, 8
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i64*
  %616 = load i64, i64* %615, align 8
  %617 = sub i64 %612, %616
  %618 = icmp ult i64 %612, %616
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %14, align 1
  %620 = trunc i64 %617 to i32
  %621 = and i32 %620, 255
  %622 = tail call i32 @llvm.ctpop.i32(i32 %621)
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  store i8 %625, i8* %21, align 1
  %626 = xor i64 %616, %612
  %627 = xor i64 %626, %617
  %628 = lshr i64 %627, 4
  %629 = trunc i64 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %27, align 1
  %631 = icmp eq i64 %617, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %30, align 1
  %633 = lshr i64 %617, 63
  %634 = trunc i64 %633 to i8
  store i8 %634, i8* %33, align 1
  %635 = lshr i64 %612, 63
  %636 = lshr i64 %616, 63
  %637 = xor i64 %636, %635
  %638 = xor i64 %633, %635
  %639 = add nuw nsw i64 %638, %637
  %640 = icmp eq i64 %639, 2
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %39, align 1
  %.v76 = select i1 %631, i64 14, i64 95
  %642 = add i64 %608, %.v76
  store i64 %642, i64* %3, align 8
  br i1 %631, label %block_4412cf, label %block_.L_441320

block_4412cf:                                     ; preds = %block_4412aa
  store i64 ptrtoint (%G__0x45a2e4_type* @G__0x45a2e4 to i64), i64* %RSI.i516, align 8
  %643 = add i64 %642, 14
  store i64 %643, i64* %3, align 8
  %644 = load i64, i64* %610, align 8
  store i64 %644, i64* %RAX.i514, align 8
  %645 = add i64 %644, 24
  %646 = add i64 %642, 18
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i64*
  %648 = load i64, i64* %647, align 8
  %649 = add i64 %648, 12
  store i64 %649, i64* %RAX.i514, align 8
  %650 = icmp ugt i64 %648, -13
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %14, align 1
  %652 = trunc i64 %649 to i32
  %653 = and i32 %652, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %21, align 1
  %658 = xor i64 %649, %648
  %659 = lshr i64 %658, 4
  %660 = trunc i64 %659 to i8
  %661 = and i8 %660, 1
  store i8 %661, i8* %27, align 1
  %662 = icmp eq i64 %649, 0
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %30, align 1
  %664 = lshr i64 %649, 63
  %665 = trunc i64 %664 to i8
  store i8 %665, i8* %33, align 1
  %666 = lshr i64 %648, 63
  %667 = xor i64 %664, %666
  %668 = add nuw nsw i64 %667, %664
  %669 = icmp eq i64 %668, 2
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %39, align 1
  store i64 %649, i64* %RDI.i518, align 8
  %671 = add i64 %642, -261231
  %672 = add i64 %642, 30
  %673 = load i64, i64* %6, align 8
  %674 = add i64 %673, -8
  %675 = inttoptr i64 %674 to i64*
  store i64 %672, i64* %675, align 8
  store i64 %674, i64* %6, align 8
  store i64 %671, i64* %3, align 8
  %call2_4412e8 = tail call %struct.Memory* @sub_401660.strtok_plt(%struct.State* nonnull %0, i64 %671, %struct.Memory* %call2_4412bc)
  %676 = load i64, i64* %RBP.i, align 8
  %677 = add i64 %676, -16
  %678 = load i64, i64* %RAX.i514, align 8
  %679 = load i64, i64* %3, align 8
  %680 = add i64 %679, 4
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %677 to i64*
  store i64 %678, i64* %681, align 8
  %682 = load i64, i64* %RAX.i514, align 8
  %683 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %684 = trunc i64 %682 to i32
  %685 = and i32 %684, 255
  %686 = tail call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  store i8 %689, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %690 = icmp eq i64 %682, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %30, align 1
  %692 = lshr i64 %682, 63
  %693 = trunc i64 %692 to i8
  store i8 %693, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v77 = select i1 %690, i64 35, i64 10
  %694 = add i64 %683, %.v77
  store i64 %694, i64* %3, align 8
  br i1 %690, label %block_.L_441314, label %block_4412fb

block_4412fb:                                     ; preds = %block_4412cf
  store i64 2, i64* %RDX.i512, align 8
  %695 = load i64, i64* %RBP.i, align 8
  %696 = add i64 %695, -8
  %697 = add i64 %694, 9
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %RAX.i514, align 8
  %700 = add i64 %699, 120
  %701 = add i64 %694, 13
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i64*
  %703 = load i64, i64* %702, align 8
  store i64 %703, i64* %RDI.i518, align 8
  %704 = add i64 %695, -16
  %705 = add i64 %694, 17
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i64*
  %707 = load i64, i64* %706, align 8
  store i64 %707, i64* %RSI.i516, align 8
  %708 = add i64 %694, -5147
  %709 = add i64 %694, 22
  %710 = load i64, i64* %6, align 8
  %711 = add i64 %710, -8
  %712 = inttoptr i64 %711 to i64*
  store i64 %709, i64* %712, align 8
  store i64 %711, i64* %6, align 8
  store i64 %708, i64* %3, align 8
  %call2_44130c = tail call %struct.Memory* @sub_43fee0.SetSeqinfoString(%struct.State* nonnull %0, i64 %708, %struct.Memory* %call2_4412e8)
  %713 = load i64, i64* %RBP.i, align 8
  %714 = add i64 %713, -36
  %715 = load i32, i32* %EAX.i511, align 4
  %716 = load i64, i64* %3, align 8
  %717 = add i64 %716, 3
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %714 to i32*
  store i32 %715, i32* %718, align 4
  %.pre58 = load i64, i64* %3, align 8
  br label %block_.L_441314

block_.L_441314:                                  ; preds = %block_4412fb, %block_4412cf
  %719 = phi i64 [ %694, %block_4412cf ], [ %.pre58, %block_4412fb ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_4412e8, %block_4412cf ], [ %call2_44130c, %block_4412fb ]
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -20
  %722 = add i64 %719, 7
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  store i32 0, i32* %723, align 4
  %724 = load i64, i64* %3, align 8
  %725 = add i64 %724, 98
  br label %block_.L_44137d

block_.L_441320:                                  ; preds = %block_4412aa, %block_.L_441295.block_.L_441320_crit_edge
  %726 = phi i64 [ %.pre59, %block_.L_441295.block_.L_441320_crit_edge ], [ %606, %block_4412aa ]
  %727 = phi i64 [ %591, %block_.L_441295.block_.L_441320_crit_edge ], [ %642, %block_4412aa ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_44129c, %block_.L_441295.block_.L_441320_crit_edge ], [ %call2_4412bc, %block_4412aa ]
  store i64 ptrtoint (%G__0x45a2c5_type* @G__0x45a2c5 to i64), i64* %RSI.i516, align 8
  store i64 6, i64* %RAX.i514, align 8
  store i64 6, i64* %RDX.i512, align 8
  %728 = add i64 %726, -8
  %729 = add i64 %727, 21
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %731, i64* %RCX.i508, align 8
  %732 = add i64 %731, 24
  %733 = add i64 %727, 25
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %RDI.i518, align 8
  %736 = add i64 %727, -261968
  %737 = add i64 %727, 30
  %738 = load i64, i64* %6, align 8
  %739 = add i64 %738, -8
  %740 = inttoptr i64 %739 to i64*
  store i64 %737, i64* %740, align 8
  store i64 %739, i64* %6, align 8
  store i64 %736, i64* %3, align 8
  %741 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.9)
  %742 = load i32, i32* %EAX.i511, align 4
  %743 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %744 = and i32 %742, 255
  %745 = tail call i32 @llvm.ctpop.i32(i32 %744)
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  store i8 %748, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %749 = icmp eq i32 %742, 0
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %30, align 1
  %751 = lshr i32 %742, 31
  %752 = trunc i32 %751 to i8
  store i8 %752, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v74 = select i1 %749, i64 53, i64 9
  %753 = add i64 %743, %.v74
  store i64 %753, i64* %3, align 8
  br i1 %749, label %block_.L_441373, label %block_441347

block_441347:                                     ; preds = %block_.L_441320
  %754 = load i64, i64* %RBP.i, align 8
  %755 = add i64 %754, -20
  %756 = add i64 %753, 4
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  store i8 0, i8* %14, align 1
  %759 = and i32 %758, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %764 = icmp eq i32 %758, 0
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %30, align 1
  %766 = lshr i32 %758, 31
  %767 = trunc i32 %766 to i8
  store i8 %767, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v75 = select i1 %764, i64 39, i64 10
  %768 = add i64 %753, %.v75
  store i64 %768, i64* %3, align 8
  br i1 %764, label %block_.L_44136e, label %block_441351

block_441351:                                     ; preds = %block_441347
  store i64 8, i64* %RDX.i512, align 8
  %769 = add i64 %754, -8
  %770 = add i64 %768, 9
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i64*
  %772 = load i64, i64* %771, align 8
  store i64 %772, i64* %RAX.i514, align 8
  %773 = add i64 %772, 120
  %774 = add i64 %768, 13
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i64*
  %776 = load i64, i64* %775, align 8
  store i64 %776, i64* %RDI.i518, align 8
  %777 = add i64 %768, 17
  store i64 %777, i64* %3, align 8
  %778 = load i64, i64* %771, align 8
  store i64 %778, i64* %RAX.i514, align 8
  %779 = add i64 %778, 24
  %780 = add i64 %768, 21
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i64*
  %782 = load i64, i64* %781, align 8
  store i64 %782, i64* %RSI.i516, align 8
  %783 = add i64 %768, -5233
  %784 = add i64 %768, 26
  %785 = load i64, i64* %6, align 8
  %786 = add i64 %785, -8
  %787 = inttoptr i64 %786 to i64*
  store i64 %784, i64* %787, align 8
  store i64 %786, i64* %6, align 8
  store i64 %783, i64* %3, align 8
  %call2_441366 = tail call %struct.Memory* @sub_43fee0.SetSeqinfoString(%struct.State* nonnull %0, i64 %783, %struct.Memory* %741)
  %788 = load i64, i64* %RBP.i, align 8
  %789 = add i64 %788, -40
  %790 = load i32, i32* %EAX.i511, align 4
  %791 = load i64, i64* %3, align 8
  %792 = add i64 %791, 3
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %789 to i32*
  store i32 %790, i32* %793, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_44136e

block_.L_44136e:                                  ; preds = %block_441351, %block_441347
  %794 = phi i64 [ %768, %block_441347 ], [ %.pre60, %block_441351 ]
  %MEMORY.10 = phi %struct.Memory* [ %741, %block_441347 ], [ %call2_441366, %block_441351 ]
  %795 = add i64 %794, 15
  store i64 %795, i64* %3, align 8
  br label %block_.L_44137d

block_.L_441373:                                  ; preds = %block_.L_441320
  %796 = add i64 %753, 25
  %797 = add i64 %753, 5
  store i64 %797, i64* %3, align 8
  br label %block_.L_44138c

block_.L_44137d:                                  ; preds = %block_.L_44136e, %block_.L_441314
  %storemerge23 = phi i64 [ %725, %block_.L_441314 ], [ %795, %block_.L_44136e ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.8, %block_.L_441314 ], [ %MEMORY.10, %block_.L_44136e ]
  %798 = add i64 %storemerge23, 5
  store i64 %798, i64* %3, align 8
  br label %block_.L_441382

block_.L_441382:                                  ; preds = %block_.L_44137d, %block_.L_441289
  %storemerge22 = phi i64 [ %565, %block_.L_441289 ], [ %798, %block_.L_44137d ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.6, %block_.L_441289 ], [ %MEMORY.11, %block_.L_44137d ]
  %799 = add i64 %storemerge22, 5
  store i64 %799, i64* %3, align 8
  br label %block_.L_441387

block_.L_441387:                                  ; preds = %block_.L_441382, %block_.L_4411fe
  %storemerge21 = phi i64 [ %405, %block_.L_4411fe ], [ %799, %block_.L_441382 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.3, %block_.L_4411fe ], [ %MEMORY.12, %block_.L_441382 ]
  %800 = add i64 %storemerge21, -564
  store i64 %800, i64* %3, align 8
  br label %block_.L_441153

block_.L_44138c:                                  ; preds = %block_.L_441373, %block_441171
  %storemerge = phi i64 [ %235, %block_441171 ], [ %796, %block_.L_441373 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.3, %block_441171 ], [ %741, %block_.L_441373 ]
  store i64 0, i64* %RDI.i518, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 ptrtoint (%G__0x442970_type* @G__0x442970 to i64), i64* %RSI.i516, align 8
  %801 = load i64, i64* %RBP.i, align 8
  %802 = add i64 %801, -8
  %803 = add i64 %storemerge, 16
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i64*
  %805 = load i64, i64* %804, align 8
  store i64 %805, i64* %RDX.i512, align 8
  %806 = add i64 %storemerge, 4916
  %807 = add i64 %storemerge, 21
  %808 = load i64, i64* %6, align 8
  %809 = add i64 %808, -8
  %810 = inttoptr i64 %809 to i64*
  store i64 %807, i64* %810, align 8
  store i64 %809, i64* %6, align 8
  store i64 %806, i64* %3, align 8
  %call2_44139c = tail call %struct.Memory* @sub_4426c0.readLoop(%struct.State* nonnull %0, i64 %806, %struct.Memory* %MEMORY.14)
  %811 = load i64, i64* %RBP.i, align 8
  %812 = add i64 %811, -8
  %813 = load i64, i64* %3, align 8
  %814 = add i64 %813, 4
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %812 to i64*
  %816 = load i64, i64* %815, align 8
  store i64 %816, i64* %RDX.i512, align 8
  %817 = add i64 %816, 120
  %818 = add i64 %813, 8
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i64*
  %820 = load i64, i64* %819, align 8
  store i64 %820, i64* %RDX.i512, align 8
  %821 = add i64 %820, 328
  %822 = add i64 %813, 18
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  store i32 1, i32* %823, align 4
  %824 = load i64, i64* %RBP.i, align 8
  %825 = add i64 %824, -8
  %826 = load i64, i64* %3, align 8
  %827 = add i64 %826, 4
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %825 to i64*
  %829 = load i64, i64* %828, align 8
  store i64 %829, i64* %RDX.i512, align 8
  %830 = add i64 %829, 136
  %831 = add i64 %826, 10
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RDI.i518, align 8
  %835 = add i64 %826, 14
  store i64 %835, i64* %3, align 8
  %836 = load i64, i64* %828, align 8
  store i64 %836, i64* %RDX.i512, align 8
  %837 = add i64 %836, 120
  %838 = add i64 %826, 18
  store i64 %838, i64* %3, align 8
  %839 = inttoptr i64 %837 to i64*
  %840 = load i64, i64* %839, align 8
  store i64 %840, i64* %RDX.i512, align 8
  %841 = add i64 %840, 332
  %842 = add i64 %826, 24
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  store i32 %833, i32* %843, align 4
  %844 = load i64, i64* %RBP.i, align 8
  %845 = add i64 %844, -8
  %846 = load i64, i64* %3, align 8
  %847 = add i64 %846, 4
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %845 to i64*
  %849 = load i64, i64* %848, align 8
  store i64 %849, i64* %RDX.i512, align 8
  %850 = add i64 %849, 136
  %851 = add i64 %846, 10
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RDI.i518, align 8
  %855 = add i64 %846, 14
  store i64 %855, i64* %3, align 8
  %856 = load i64, i64* %848, align 8
  store i64 %856, i64* %RDX.i512, align 8
  %857 = add i64 %856, 120
  %858 = add i64 %846, 18
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i64*
  %860 = load i64, i64* %859, align 8
  store i64 %860, i64* %RDX.i512, align 8
  %861 = add i64 %860, 336
  %862 = add i64 %846, 24
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  store i32 %853, i32* %863, align 4
  %864 = load i64, i64* %RBP.i, align 8
  %865 = add i64 %864, -8
  %866 = load i64, i64* %3, align 8
  %867 = add i64 %866, 4
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %865 to i64*
  %869 = load i64, i64* %868, align 8
  store i64 %869, i64* %RDX.i512, align 8
  %870 = add i64 %869, 120
  %871 = add i64 %866, 8
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i64*
  %873 = load i64, i64* %872, align 8
  store i64 %873, i64* %RDX.i512, align 8
  %874 = add i64 %866, 10
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = or i32 %876, 304
  %878 = zext i32 %877 to i64
  store i64 %878, i64* %RDI.i518, align 8
  store i8 0, i8* %14, align 1
  %879 = and i32 %877, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879)
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %884 = lshr i32 %876, 31
  %885 = trunc i32 %884 to i8
  store i8 %885, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %886 = add i64 %866, 18
  store i64 %886, i64* %3, align 8
  store i32 %877, i32* %875, align 4
  %AL.i60 = bitcast %union.anon* %44 to i8*
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_4413f5

block_.L_4413f5:                                  ; preds = %block_.L_441467, %block_.L_44138c
  %887 = phi i64 [ %.pre61, %block_.L_44138c ], [ %1041, %block_.L_441467 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_44139c, %block_.L_44138c ], [ %call2_44146b, %block_.L_441467 ]
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -8
  %890 = add i64 %887, 4
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i64*
  %892 = load i64, i64* %891, align 8
  store i64 %892, i64* %RAX.i514, align 8
  %893 = add i64 %887, 7
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i64*
  %895 = load i64, i64* %894, align 8
  store i64 %895, i64* %RDI.i518, align 8
  %896 = add i64 %887, -261733
  %897 = add i64 %887, 12
  %898 = load i64, i64* %6, align 8
  %899 = add i64 %898, -8
  %900 = inttoptr i64 %899 to i64*
  store i64 %897, i64* %900, align 8
  store i64 %899, i64* %6, align 8
  store i64 %896, i64* %3, align 8
  %call2_4413fc = tail call %struct.Memory* @sub_401590.feof_plt(%struct.State* nonnull %0, i64 %896, %struct.Memory* %MEMORY.15)
  %901 = load i64, i64* %3, align 8
  store i8 1, i8* %CL.i424, align 1
  %902 = load i32, i32* %EAX.i511, align 4
  store i8 0, i8* %14, align 1
  %903 = and i32 %902, 255
  %904 = tail call i32 @llvm.ctpop.i32(i32 %903)
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = xor i8 %906, 1
  store i8 %907, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %908 = icmp eq i32 %902, 0
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %30, align 1
  %910 = lshr i32 %902, 31
  %911 = trunc i32 %910 to i8
  store i8 %911, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %912 = load i64, i64* %RBP.i, align 8
  %913 = add i64 %912, -41
  %914 = add i64 %901, 8
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i8*
  store i8 1, i8* %915, align 1
  %916 = load i64, i64* %3, align 8
  %917 = add i64 %916, 76
  %918 = add i64 %916, 6
  %919 = load i8, i8* %30, align 1
  %920 = icmp eq i8 %919, 0
  %921 = select i1 %920, i64 %917, i64 %918
  store i64 %921, i64* %3, align 8
  br i1 %920, label %block_.L_441455, label %block_44140f

block_44140f:                                     ; preds = %block_.L_4413f5
  store i64 0, i64* %RAX.i514, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i424, align 1
  %922 = load i64, i64* %RBP.i, align 8
  %923 = add i64 %922, -8
  %924 = add i64 %921, 8
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i64*
  %926 = load i64, i64* %925, align 8
  store i64 %926, i64* %RDX.i512, align 8
  %927 = add i64 %926, 24
  %928 = add i64 %921, 12
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i64*
  %930 = load i64, i64* %929, align 8
  store i64 %930, i64* %RDX.i512, align 8
  %931 = add i64 %921, 15
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i8*
  %933 = load i8, i8* %932, align 1
  %934 = sext i8 %933 to i64
  %935 = and i64 %934, 4294967295
  store i64 %935, i64* %RAX.i514, align 8
  %936 = sext i8 %933 to i32
  store i8 0, i8* %14, align 1
  %937 = and i32 %936, 255
  %938 = tail call i32 @llvm.ctpop.i32(i32 %937)
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  store i8 %941, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %942 = icmp eq i8 %933, 0
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %30, align 1
  %944 = lshr i32 %936, 31
  %945 = trunc i32 %944 to i8
  store i8 %945, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %946 = add i64 %922, -42
  %947 = add i64 %921, 21
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i8*
  store i8 0, i8* %948, align 1
  %949 = load i64, i64* %3, align 8
  %950 = load i8, i8* %30, align 1
  %951 = icmp ne i8 %950, 0
  %.v94 = select i1 %951, i64 43, i64 6
  %952 = add i64 %949, %.v94
  store i64 %952, i64* %3, align 8
  %cmpBr_441424 = icmp eq i8 %950, 1
  br i1 %cmpBr_441424, label %block_.L_44144f, label %block_44142a

block_44142a:                                     ; preds = %block_44140f
  store i64 ptrtoint (%G__0x45a2ac_type* @G__0x45a2ac to i64), i64* %RSI.i516, align 8
  %953 = load i64, i64* %RBP.i, align 8
  %954 = add i64 %953, -8
  %955 = add i64 %952, 14
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i64*
  %957 = load i64, i64* %956, align 8
  store i64 %957, i64* %RAX.i514, align 8
  %958 = add i64 %957, 24
  %959 = add i64 %952, 18
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %RDI.i518, align 8
  %962 = add i64 %952, -261418
  %963 = add i64 %952, 23
  %964 = load i64, i64* %6, align 8
  %965 = add i64 %964, -8
  %966 = inttoptr i64 %965 to i64*
  store i64 %963, i64* %966, align 8
  store i64 %965, i64* %6, align 8
  store i64 %962, i64* %3, align 8
  %call2_44143c = tail call %struct.Memory* @sub_401700.strstr_plt(%struct.State* nonnull %0, i64 %962, %struct.Memory* %MEMORY.15)
  %967 = load i64, i64* %RBP.i, align 8
  %968 = add i64 %967, -8
  %969 = load i64, i64* %3, align 8
  %970 = add i64 %969, 4
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %968 to i64*
  %972 = load i64, i64* %971, align 8
  store i64 %972, i64* %RSI.i516, align 8
  %973 = load i64, i64* %RAX.i514, align 8
  %974 = add i64 %972, 24
  %975 = add i64 %969, 8
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i64*
  %977 = load i64, i64* %976, align 8
  %978 = sub i64 %973, %977
  %979 = icmp ult i64 %973, %977
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %14, align 1
  %981 = trunc i64 %978 to i32
  %982 = and i32 %981, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982)
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %21, align 1
  %987 = xor i64 %977, %973
  %988 = xor i64 %987, %978
  %989 = lshr i64 %988, 4
  %990 = trunc i64 %989 to i8
  %991 = and i8 %990, 1
  store i8 %991, i8* %27, align 1
  %992 = icmp eq i64 %978, 0
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %30, align 1
  %994 = lshr i64 %978, 63
  %995 = trunc i64 %994 to i8
  store i8 %995, i8* %33, align 1
  %996 = lshr i64 %973, 63
  %997 = lshr i64 %977, 63
  %998 = xor i64 %997, %996
  %999 = xor i64 %994, %996
  %1000 = add nuw nsw i64 %999, %998
  %1001 = icmp eq i64 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %39, align 1
  store i8 %993, i8* %CL.i424, align 1
  %1003 = add i64 %967, -42
  %1004 = add i64 %969, 14
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i8*
  store i8 %993, i8* %1005, align 1
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_44144f

block_.L_44144f:                                  ; preds = %block_44142a, %block_44140f
  %1006 = phi i64 [ %.pre62, %block_44142a ], [ %952, %block_44140f ]
  %1007 = load i64, i64* %RBP.i, align 8
  %1008 = add i64 %1007, -42
  %1009 = add i64 %1006, 3
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i8*
  %1011 = load i8, i8* %1010, align 1
  store i8 %1011, i8* %AL.i60, align 1
  %1012 = add i64 %1007, -41
  %1013 = add i64 %1006, 6
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i8*
  store i8 %1011, i8* %1014, align 1
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_441455

block_.L_441455:                                  ; preds = %block_.L_44144f, %block_.L_4413f5
  %1015 = phi i64 [ %.pre63, %block_.L_44144f ], [ %917, %block_.L_4413f5 ]
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -41
  %1018 = add i64 %1015, 3
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i8*
  %1020 = load i8, i8* %1019, align 1
  %1021 = xor i8 %1020, -1
  store i8 %1021, i8* %AL.i60, align 1
  %1022 = and i8 %1021, 1
  store i8 0, i8* %14, align 1
  %1023 = zext i8 %1022 to i32
  %1024 = tail call i32 @llvm.ctpop.i32(i32 %1023)
  %1025 = trunc i32 %1024 to i8
  %1026 = xor i8 %1025, 1
  store i8 %1026, i8* %21, align 1
  %1027 = xor i8 %1022, 1
  store i8 %1027, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1028 = icmp eq i8 %1027, 0
  %.v69 = select i1 %1028, i64 18, i64 13
  %1029 = add i64 %1015, %.v69
  store i64 %1029, i64* %3, align 8
  br i1 %1028, label %block_.L_441467, label %block_441462

block_441462:                                     ; preds = %block_.L_441455
  %1030 = add i64 %1029, 24
  %DL.i38 = bitcast %union.anon* %45 to i8*
  br label %block_.L_44147a

block_.L_441467:                                  ; preds = %block_.L_441455
  %1031 = add i64 %1016, -8
  %1032 = add i64 %1029, 4
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i64*
  %1034 = load i64, i64* %1033, align 8
  store i64 %1034, i64* %RDI.i518, align 8
  %1035 = add i64 %1029, -7079
  %1036 = add i64 %1029, 9
  %1037 = load i64, i64* %6, align 8
  %1038 = add i64 %1037, -8
  %1039 = inttoptr i64 %1038 to i64*
  store i64 %1036, i64* %1039, align 8
  store i64 %1038, i64* %6, align 8
  store i64 %1035, i64* %3, align 8
  %call2_44146b = tail call %struct.Memory* @sub_43f8c0.SeqfileGetLine(%struct.State* nonnull %0, i64 %1035, %struct.Memory* %MEMORY.15)
  %1040 = load i64, i64* %3, align 8
  %1041 = add i64 %1040, -123
  store i64 %1041, i64* %3, align 8
  br label %block_.L_4413f5

block_.L_44147a:                                  ; preds = %block_.L_4414cb, %block_441462
  %1042 = phi i64 [ %1016, %block_441462 ], [ %.pre64, %block_.L_4414cb ]
  %storemerge20 = phi i64 [ %1030, %block_441462 ], [ %1187, %block_.L_4414cb ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.15, %block_441462 ], [ %call2_4414cf, %block_.L_4414cb ]
  %1043 = add i64 %1042, -8
  %1044 = add i64 %storemerge20, 4
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i64*
  %1046 = load i64, i64* %1045, align 8
  store i64 %1046, i64* %RAX.i514, align 8
  %1047 = add i64 %storemerge20, 7
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i64*
  %1049 = load i64, i64* %1048, align 8
  store i64 %1049, i64* %RDI.i518, align 8
  %1050 = add i64 %storemerge20, -261866
  %1051 = add i64 %storemerge20, 12
  %1052 = load i64, i64* %6, align 8
  %1053 = add i64 %1052, -8
  %1054 = inttoptr i64 %1053 to i64*
  store i64 %1051, i64* %1054, align 8
  store i64 %1053, i64* %6, align 8
  store i64 %1050, i64* %3, align 8
  %call2_441481 = tail call %struct.Memory* @sub_401590.feof_plt(%struct.State* nonnull %0, i64 %1050, %struct.Memory* %MEMORY.18)
  %1055 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i508, align 8
  store i8 0, i8* %DL.i38, align 1
  %1056 = load i32, i32* %EAX.i511, align 4
  store i8 0, i8* %14, align 1
  %1057 = and i32 %1056, 255
  %1058 = tail call i32 @llvm.ctpop.i32(i32 %1057)
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  %1061 = xor i8 %1060, 1
  store i8 %1061, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1062 = icmp eq i32 %1056, 0
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %30, align 1
  %1064 = lshr i32 %1056, 31
  %1065 = trunc i32 %1064 to i8
  store i8 %1065, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1066 = load i64, i64* %RBP.i, align 8
  %1067 = add i64 %1066, -43
  %1068 = add i64 %1055, 10
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i8*
  store i8 0, i8* %1069, align 1
  %1070 = load i64, i64* %3, align 8
  %1071 = add i64 %1070, 43
  %1072 = add i64 %1070, 6
  %1073 = load i8, i8* %30, align 1
  %1074 = icmp eq i8 %1073, 0
  %1075 = select i1 %1074, i64 %1071, i64 %1072
  store i64 %1075, i64* %3, align 8
  br i1 %1074, label %block_.L_4414bb, label %block_441496

block_441496:                                     ; preds = %block_.L_44147a
  store i64 ptrtoint (%G__0x45a2cc_type* @G__0x45a2cc to i64), i64* %RSI.i516, align 8
  %1076 = load i64, i64* %RBP.i, align 8
  %1077 = add i64 %1076, -8
  %1078 = add i64 %1075, 14
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1077 to i64*
  %1080 = load i64, i64* %1079, align 8
  store i64 %1080, i64* %RAX.i514, align 8
  %1081 = add i64 %1080, 24
  %1082 = add i64 %1075, 18
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i64*
  %1084 = load i64, i64* %1083, align 8
  store i64 %1084, i64* %RDI.i518, align 8
  %1085 = add i64 %1075, -261526
  %1086 = add i64 %1075, 23
  %1087 = load i64, i64* %6, align 8
  %1088 = add i64 %1087, -8
  %1089 = inttoptr i64 %1088 to i64*
  store i64 %1086, i64* %1089, align 8
  store i64 %1088, i64* %6, align 8
  store i64 %1085, i64* %3, align 8
  %call2_4414a8 = tail call %struct.Memory* @sub_401700.strstr_plt(%struct.State* nonnull %0, i64 %1085, %struct.Memory* %MEMORY.18)
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -8
  %1092 = load i64, i64* %3, align 8
  %1093 = add i64 %1092, 4
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1091 to i64*
  %1095 = load i64, i64* %1094, align 8
  store i64 %1095, i64* %RSI.i516, align 8
  %1096 = load i64, i64* %RAX.i514, align 8
  %1097 = add i64 %1095, 24
  %1098 = add i64 %1092, 8
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i64*
  %1100 = load i64, i64* %1099, align 8
  %1101 = sub i64 %1096, %1100
  %1102 = icmp ult i64 %1096, %1100
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %14, align 1
  %1104 = trunc i64 %1101 to i32
  %1105 = and i32 %1104, 255
  %1106 = tail call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  store i8 %1109, i8* %21, align 1
  %1110 = xor i64 %1100, %1096
  %1111 = xor i64 %1110, %1101
  %1112 = lshr i64 %1111, 4
  %1113 = trunc i64 %1112 to i8
  %1114 = and i8 %1113, 1
  store i8 %1114, i8* %27, align 1
  %1115 = icmp eq i64 %1101, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %30, align 1
  %1117 = lshr i64 %1101, 63
  %1118 = trunc i64 %1117 to i8
  store i8 %1118, i8* %33, align 1
  %1119 = lshr i64 %1096, 63
  %1120 = lshr i64 %1100, 63
  %1121 = xor i64 %1120, %1119
  %1122 = xor i64 %1117, %1119
  %1123 = add nuw nsw i64 %1122, %1121
  %1124 = icmp eq i64 %1123, 2
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %39, align 1
  %1126 = xor i1 %1115, true
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %CL.i424, align 1
  %1128 = add i64 %1090, -43
  %1129 = add i64 %1092, 14
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1128 to i8*
  store i8 %1127, i8* %1130, align 1
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_4414bb

block_.L_4414bb:                                  ; preds = %block_441496, %block_.L_44147a
  %1131 = phi i64 [ %.pre65, %block_441496 ], [ %1071, %block_.L_44147a ]
  %1132 = load i64, i64* %RBP.i, align 8
  %1133 = add i64 %1132, -43
  %1134 = add i64 %1131, 3
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i8*
  %1136 = load i8, i8* %1135, align 1
  store i8 %1136, i8* %AL.i60, align 1
  %1137 = and i8 %1136, 1
  store i8 0, i8* %14, align 1
  %1138 = zext i8 %1137 to i32
  %1139 = tail call i32 @llvm.ctpop.i32(i32 %1138)
  %1140 = trunc i32 %1139 to i8
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %21, align 1
  %1142 = xor i8 %1137, 1
  store i8 %1142, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1143 = icmp eq i8 %1142, 0
  %.v70 = select i1 %1143, i64 16, i64 11
  %1144 = add i64 %1131, %.v70
  store i64 %1144, i64* %3, align 8
  br i1 %1143, label %block_.L_4414cb, label %block_4414c6

block_4414c6:                                     ; preds = %block_.L_4414bb
  %1145 = load i64, i64* %6, align 8
  %1146 = add i64 %1145, 48
  store i64 %1146, i64* %6, align 8
  %1147 = icmp ugt i64 %1145, -49
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %14, align 1
  %1149 = trunc i64 %1146 to i32
  %1150 = and i32 %1149, 255
  %1151 = tail call i32 @llvm.ctpop.i32(i32 %1150)
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  store i8 %1154, i8* %21, align 1
  %1155 = xor i64 %1145, 16
  %1156 = xor i64 %1155, %1146
  %1157 = lshr i64 %1156, 4
  %1158 = trunc i64 %1157 to i8
  %1159 = and i8 %1158, 1
  store i8 %1159, i8* %27, align 1
  %1160 = icmp eq i64 %1146, 0
  %1161 = zext i1 %1160 to i8
  store i8 %1161, i8* %30, align 1
  %1162 = lshr i64 %1146, 63
  %1163 = trunc i64 %1162 to i8
  store i8 %1163, i8* %33, align 1
  %1164 = lshr i64 %1145, 63
  %1165 = xor i64 %1162, %1164
  %1166 = add nuw nsw i64 %1165, %1162
  %1167 = icmp eq i64 %1166, 2
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %39, align 1
  %1169 = add i64 %1144, 24
  store i64 %1169, i64* %3, align 8
  %1170 = add i64 %1145, 56
  %1171 = inttoptr i64 %1146 to i64*
  %1172 = load i64, i64* %1171, align 8
  store i64 %1172, i64* %RBP.i, align 8
  store i64 %1170, i64* %6, align 8
  %1173 = add i64 %1144, 25
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1170 to i64*
  %1175 = load i64, i64* %1174, align 8
  store i64 %1175, i64* %3, align 8
  %1176 = add i64 %1145, 64
  store i64 %1176, i64* %6, align 8
  ret %struct.Memory* %MEMORY.18

block_.L_4414cb:                                  ; preds = %block_.L_4414bb
  %1177 = add i64 %1132, -8
  %1178 = add i64 %1144, 4
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i64*
  %1180 = load i64, i64* %1179, align 8
  store i64 %1180, i64* %RDI.i518, align 8
  %1181 = add i64 %1144, -7179
  %1182 = add i64 %1144, 9
  %1183 = load i64, i64* %6, align 8
  %1184 = add i64 %1183, -8
  %1185 = inttoptr i64 %1184 to i64*
  store i64 %1182, i64* %1185, align 8
  store i64 %1184, i64* %6, align 8
  store i64 %1181, i64* %3, align 8
  %call2_4414cf = tail call %struct.Memory* @sub_43f8c0.SeqfileGetLine(%struct.State* nonnull %0, i64 %1181, %struct.Memory* %MEMORY.18)
  %1186 = load i64, i64* %3, align 8
  %1187 = add i64 %1186, -90
  %1188 = add i64 %1186, 5
  store i64 %1188, i64* %3, align 8
  %.pre64 = load i64, i64* %RBP.i, align 8
  br label %block_.L_44147a
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
define %struct.Memory* @routine_subq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 48
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
define %struct.Memory* @routine_movq__0x45a2ac___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a2ac_type* @G__0x45a2ac to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4410e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.SeqfileGetLine(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4410ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_jl_.L_441107(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rcx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45a2e4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a2e4_type* @G__0x45a2e4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -13
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
define %struct.Memory* @routine_callq_.strtok_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %3 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %3, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44114c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x78__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SetSeqinfoString(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.feof_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_setne__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %CL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %4, -1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %7, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_441176(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44138c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_44120a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a2b2___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a2b2_type* @G__0x45a2b2 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strstr_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_0x18__rsi____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4411fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441387(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_441295(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a1df___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a1df_type* @G__0x45a1df to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_441289(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_441382(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_441320(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a2bd___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a2bd_type* @G__0x45a2bd to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_441314(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_44137d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45a2c5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a2c5_type* @G__0x45a2c5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_441373(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_je_.L_44136e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x18__rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_441378(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_441153(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x442970___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x442970_type* @G__0x442970 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.readLoop(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x78__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x148__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__0x14c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 332
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__0x150__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 336
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x130___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 304
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RDI, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x29__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_441455(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x2a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -42
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44144f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_sete__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x2a__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -42
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x29__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x29__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %AL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %4, -1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %7, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_441467(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_441475(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4413f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44147a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x2b__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -43
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4414bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a2cc___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a2cc_type* @G__0x45a2cc to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x2b__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -43
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x2b__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -43
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4414cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4414d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -49
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
