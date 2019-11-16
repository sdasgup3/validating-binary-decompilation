; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x50233__rip__type = type <{ [8 x i8] }>
%G_0x50375__rip__type = type <{ [8 x i8] }>
%G__0x4559fe_type = type <{ [8 x i8] }>
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
@G_0x50233__rip_ = global %G_0x50233__rip__type zeroinitializer
@G_0x50375__rip_ = global %G_0x50375__rip__type zeroinitializer
@G__0x4559fe = global %G__0x4559fe_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_445400.sre_random(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_440340.SeqinfoCopy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446110.Free2DArray(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @RandomAlignment(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %12 = icmp ult i64 %8, 128
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i622 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RAX.i622, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i = bitcast %union.anon* %40 to i32*
  %41 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 530, i64* %41, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i961 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %43 = add i64 %7, -16
  %44 = load i64, i64* %RDI.i961, align 8
  %45 = add i64 %10, 30
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %46, align 8
  %RSI.i1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -16
  %49 = load i64, i64* %RSI.i1020, align 8
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 4
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i64*
  store i64 %49, i64* %52, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1017 = bitcast %union.anon* %53 to i32*
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -20
  %56 = load i32, i32* %EDX.i1017, align 4
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 3
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %59, align 4
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -24
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 5
  store i64 %64, i64* %3, align 8
  %65 = bitcast [32 x %union.VectorReg]* %60 to <2 x float>*
  %66 = load <2 x float>, <2 x float>* %65, align 1
  %67 = extractelement <2 x float> %66, i32 0
  %68 = inttoptr i64 %62 to float*
  store float %67, float* %68, align 4
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -28
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 5
  store i64 %73, i64* %3, align 8
  %74 = bitcast %union.VectorReg* %69 to <2 x float>*
  %75 = load <2 x float>, <2 x float>* %74, align 1
  %76 = extractelement <2 x float> %75, i32 0
  %77 = inttoptr i64 %71 to float*
  store float %76, float* %77, align 4
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1008 = getelementptr inbounds %union.anon, %union.anon* %78, i64 0, i32 0
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -40
  %81 = load i64, i64* %RCX.i1008, align 8
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 4
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -48
  %87 = load i64, i64* %R8.i, align 8
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90, align 8
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -20
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %92 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = shl nsw i64 %97, 2
  store i64 %98, i64* %RCX.i1008, align 8
  %.lobit = lshr i32 %96, 31
  %99 = trunc i32 %.lobit to i8
  store i8 %99, i8* %14, align 1
  %100 = trunc i64 %98 to i32
  %101 = and i32 %100, 252
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101)
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %106 = icmp eq i32 %96, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %29, align 1
  %108 = lshr i64 %97, 61
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %111 = load i64, i64* %RAX.i622, align 8
  store i64 %111, i64* %RDI.i961, align 8
  %112 = load i32, i32* %R9D.i, align 4
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RSI.i1020, align 8
  %RDX.i993 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  store i64 %98, i64* %RDX.i993, align 8
  %114 = add i64 %93, 269480
  %115 = add i64 %93, 22
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, -8
  %118 = inttoptr i64 %117 to i64*
  store i64 %115, i64* %118, align 8
  store i64 %117, i64* %6, align 8
  store i64 %114, i64* %3, align 8
  %call2_4043c9 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %114, %struct.Memory* %2)
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -72
  %121 = load i64, i64* %RAX.i622, align 8
  %122 = load i64, i64* %3, align 8
  %123 = add i64 %122, 4
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %120 to i64*
  store i64 %121, i64* %124, align 8
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -76
  %127 = load i64, i64* %3, align 8
  %128 = add i64 %127, 7
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %126 to i32*
  store i32 0, i32* %129, align 4
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -120
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 7
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %131 to i32*
  store i32 9999999, i32* %134, align 4
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -108
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 7
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %136 to i32*
  store i32 0, i32* %139, align 4
  %EAX.i976 = bitcast %union.anon* %39 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4043e7

block_.L_4043e7:                                  ; preds = %block_.L_40444f, %entry
  %140 = phi i64 [ %.pre, %entry ], [ %373, %block_.L_40444f ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_4043c9, %entry ], [ %195, %block_.L_40444f ]
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -108
  %143 = add i64 %140, 3
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RAX.i622, align 8
  %147 = add i64 %141, -20
  %148 = add i64 %140, 6
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = sub i32 %145, %150
  %152 = icmp ult i32 %145, %150
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %14, align 1
  %154 = and i32 %151, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154)
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %21, align 1
  %159 = xor i32 %150, %145
  %160 = xor i32 %159, %151
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %26, align 1
  %164 = icmp eq i32 %151, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %29, align 1
  %166 = lshr i32 %151, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %32, align 1
  %168 = lshr i32 %145, 31
  %169 = lshr i32 %150, 31
  %170 = xor i32 %169, %168
  %171 = xor i32 %166, %168
  %172 = add nuw nsw i32 %171, %170
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %38, align 1
  %175 = icmp ne i8 %167, 0
  %176 = xor i1 %175, %173
  %.v85 = select i1 %176, i64 12, i64 124
  %177 = add i64 %140, %.v85
  store i64 %177, i64* %3, align 8
  br i1 %176, label %block_4043f3, label %block_.L_404463

block_4043f3:                                     ; preds = %block_.L_4043e7
  %178 = add i64 %141, -8
  %179 = add i64 %177, 4
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %RAX.i622, align 8
  %182 = add i64 %177, 8
  store i64 %182, i64* %3, align 8
  %183 = load i32, i32* %144, align 4
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %RCX.i1008, align 8
  %185 = shl nsw i64 %184, 3
  %186 = add i64 %185, %181
  %187 = add i64 %177, 12
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to i64*
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %RDI.i961, align 8
  %190 = add i64 %177, -12179
  %191 = add i64 %177, 17
  %192 = load i64, i64* %6, align 8
  %193 = add i64 %192, -8
  %194 = inttoptr i64 %193 to i64*
  store i64 %191, i64* %194, align 8
  store i64 %193, i64* %6, align 8
  store i64 %190, i64* %3, align 8
  %195 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.0)
  %196 = load i32, i32* %EAX.i976, align 4
  %197 = zext i32 %196 to i64
  %198 = load i64, i64* %3, align 8
  store i64 %197, i64* %RDX.i993, align 8
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -72
  %201 = add i64 %198, 6
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %RAX.i622, align 8
  %204 = add i64 %199, -108
  %205 = add i64 %198, 10
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i32*
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %RCX.i1008, align 8
  %209 = shl nsw i64 %208, 2
  %210 = add i64 %209, %203
  %211 = add i64 %198, 13
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i32*
  store i32 %196, i32* %212, align 4
  %213 = load i64, i64* %RBP.i, align 8
  %214 = add i64 %213, -72
  %215 = load i64, i64* %3, align 8
  %216 = add i64 %215, 4
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %214 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %RAX.i622, align 8
  %219 = add i64 %213, -108
  %220 = add i64 %215, 8
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %RCX.i1008, align 8
  %224 = shl nsw i64 %223, 2
  %225 = add i64 %224, %218
  %226 = add i64 %215, 11
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RDX.i993, align 8
  %230 = add i64 %213, -76
  %231 = add i64 %215, 14
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = add i32 %233, %228
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RDX.i993, align 8
  %236 = icmp ult i32 %234, %228
  %237 = icmp ult i32 %234, %233
  %238 = or i1 %236, %237
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %14, align 1
  %240 = and i32 %234, 255
  %241 = tail call i32 @llvm.ctpop.i32(i32 %240)
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  %244 = xor i8 %243, 1
  store i8 %244, i8* %21, align 1
  %245 = xor i32 %233, %228
  %246 = xor i32 %245, %234
  %247 = lshr i32 %246, 4
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  store i8 %249, i8* %26, align 1
  %250 = icmp eq i32 %234, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %29, align 1
  %252 = lshr i32 %234, 31
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %32, align 1
  %254 = lshr i32 %228, 31
  %255 = lshr i32 %233, 31
  %256 = xor i32 %252, %254
  %257 = xor i32 %252, %255
  %258 = add nuw nsw i32 %256, %257
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %38, align 1
  %261 = add i64 %215, 17
  store i64 %261, i64* %3, align 8
  store i32 %234, i32* %232, align 4
  %262 = load i64, i64* %RBP.i, align 8
  %263 = add i64 %262, -72
  %264 = load i64, i64* %3, align 8
  %265 = add i64 %264, 4
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %263 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %RAX.i622, align 8
  %268 = add i64 %262, -108
  %269 = add i64 %264, 8
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  store i64 %272, i64* %RCX.i1008, align 8
  %273 = shl nsw i64 %272, 2
  %274 = add i64 %273, %267
  %275 = add i64 %264, 11
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = zext i32 %277 to i64
  store i64 %278, i64* %RDX.i993, align 8
  %279 = add i64 %262, -120
  %280 = add i64 %264, 14
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = sub i32 %277, %282
  %284 = icmp ult i32 %277, %282
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %14, align 1
  %286 = and i32 %283, 255
  %287 = tail call i32 @llvm.ctpop.i32(i32 %286)
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  store i8 %290, i8* %21, align 1
  %291 = xor i32 %282, %277
  %292 = xor i32 %291, %283
  %293 = lshr i32 %292, 4
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  store i8 %295, i8* %26, align 1
  %296 = icmp eq i32 %283, 0
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %29, align 1
  %298 = lshr i32 %283, 31
  %299 = trunc i32 %298 to i8
  store i8 %299, i8* %32, align 1
  %300 = lshr i32 %277, 31
  %301 = lshr i32 %282, 31
  %302 = xor i32 %301, %300
  %303 = xor i32 %298, %300
  %304 = add nuw nsw i32 %303, %302
  %305 = icmp eq i32 %304, 2
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %38, align 1
  %307 = icmp ne i8 %299, 0
  %308 = xor i1 %307, %305
  %.v101 = select i1 %308, i64 20, i64 39
  %309 = add i64 %264, %.v101
  store i64 %309, i64* %3, align 8
  br i1 %308, label %block_404436, label %block_.L_404449

block_404436:                                     ; preds = %block_4043f3
  %310 = add i64 %309, 4
  store i64 %310, i64* %3, align 8
  %311 = load i64, i64* %266, align 8
  store i64 %311, i64* %RAX.i622, align 8
  %312 = add i64 %309, 8
  store i64 %312, i64* %3, align 8
  %313 = load i32, i32* %270, align 4
  %314 = sext i32 %313 to i64
  store i64 %314, i64* %RCX.i1008, align 8
  %315 = shl nsw i64 %314, 2
  %316 = add i64 %315, %311
  %317 = add i64 %309, 11
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RDX.i993, align 8
  %321 = add i64 %262, -124
  %322 = add i64 %309, 14
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  store i32 %319, i32* %323, align 4
  %324 = load i64, i64* %3, align 8
  %325 = add i64 %324, 11
  store i64 %325, i64* %3, align 8
  br label %block_.L_40444f

block_.L_404449:                                  ; preds = %block_4043f3
  %326 = add i64 %309, 3
  store i64 %326, i64* %3, align 8
  %327 = load i32, i32* %281, align 4
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RAX.i622, align 8
  %329 = add i64 %262, -124
  %330 = add i64 %309, 6
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  store i32 %327, i32* %331, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_40444f

block_.L_40444f:                                  ; preds = %block_.L_404449, %block_404436
  %332 = phi i64 [ %.pre82, %block_.L_404449 ], [ %325, %block_404436 ]
  %333 = load i64, i64* %RBP.i, align 8
  %334 = add i64 %333, -124
  %335 = add i64 %332, 3
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i32*
  %337 = load i32, i32* %336, align 4
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RAX.i622, align 8
  %339 = add i64 %333, -120
  %340 = add i64 %332, 6
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  store i32 %337, i32* %341, align 4
  %342 = load i64, i64* %RBP.i, align 8
  %343 = add i64 %342, -108
  %344 = load i64, i64* %3, align 8
  %345 = add i64 %344, 3
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %343 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = add i32 %347, 1
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RAX.i622, align 8
  %350 = icmp eq i32 %347, -1
  %351 = icmp eq i32 %348, 0
  %352 = or i1 %350, %351
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %14, align 1
  %354 = and i32 %348, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %21, align 1
  %359 = xor i32 %348, %347
  %360 = lshr i32 %359, 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %26, align 1
  %363 = zext i1 %351 to i8
  store i8 %363, i8* %29, align 1
  %364 = lshr i32 %348, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %32, align 1
  %366 = lshr i32 %347, 31
  %367 = xor i32 %364, %366
  %368 = add nuw nsw i32 %367, %364
  %369 = icmp eq i32 %368, 2
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %38, align 1
  %371 = add i64 %344, 9
  store i64 %371, i64* %3, align 8
  store i32 %348, i32* %346, align 4
  %372 = load i64, i64* %3, align 8
  %373 = add i64 %372, -119
  store i64 %373, i64* %3, align 8
  br label %block_.L_4043e7

block_.L_404463:                                  ; preds = %block_.L_4043e7
  %374 = bitcast [32 x %union.VectorReg]* %60 to i8*
  %375 = add i64 %177, ptrtoint (%G_0x50375__rip__type* @G_0x50375__rip_ to i64)
  %376 = add i64 %177, 8
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i64*
  %378 = load i64, i64* %377, align 8
  %379 = bitcast [32 x %union.VectorReg]* %60 to double*
  %380 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %60, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %378, i64* %380, align 1
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %382 = bitcast i64* %381 to double*
  store double 0.000000e+00, double* %382, align 1
  %383 = bitcast %union.VectorReg* %69 to i8*
  %384 = add i64 %141, -76
  %385 = add i64 %177, 13
  store i64 %385, i64* %3, align 8
  %386 = bitcast %union.VectorReg* %69 to <2 x i32>*
  %387 = load <2 x i32>, <2 x i32>* %386, align 1
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %389 = bitcast i64* %388 to <2 x i32>*
  %390 = load <2 x i32>, <2 x i32>* %389, align 1
  %391 = inttoptr i64 %384 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = sitofp i32 %392 to float
  %394 = bitcast %union.VectorReg* %69 to float*
  store float %393, float* %394, align 1
  %395 = extractelement <2 x i32> %387, i32 1
  %396 = getelementptr inbounds i8, i8* %383, i64 4
  %397 = bitcast i8* %396 to i32*
  store i32 %395, i32* %397, align 1
  %398 = extractelement <2 x i32> %390, i32 0
  %399 = bitcast i64* %388 to i32*
  store i32 %398, i32* %399, align 1
  %400 = extractelement <2 x i32> %390, i32 1
  %401 = getelementptr inbounds i8, i8* %383, i64 12
  %402 = bitcast i8* %401 to i32*
  store i32 %400, i32* %402, align 1
  %403 = load <2 x float>, <2 x float>* %74, align 1
  %404 = extractelement <2 x float> %403, i32 0
  %405 = fpext float %404 to double
  %406 = bitcast %union.VectorReg* %69 to double*
  store double %405, double* %406, align 1
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %408 = bitcast %union.VectorReg* %407 to i8*
  %409 = add i64 %141, -24
  %410 = add i64 %177, 22
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to float*
  %412 = load float, float* %411, align 4
  %413 = fpext float %412 to double
  %414 = bitcast %union.VectorReg* %407 to double*
  store double %413, double* %414, align 1
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %416 = bitcast %union.VectorReg* %415 to i8*
  %417 = add i64 %141, -28
  %418 = add i64 %177, 27
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to float*
  %420 = load float, float* %419, align 4
  %421 = fpext float %420 to double
  %422 = bitcast %union.VectorReg* %415 to double*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %424 = bitcast %union.VectorReg* %423 to i8*
  %425 = bitcast [32 x %union.VectorReg]* %60 to <2 x i32>*
  %426 = bitcast i64 %378 to <2 x i32>
  %427 = bitcast i64* %381 to <2 x i32>*
  %428 = extractelement <2 x i32> %426, i32 0
  %429 = bitcast %union.VectorReg* %423 to i32*
  store i32 %428, i32* %429, align 1
  %430 = extractelement <2 x i32> %426, i32 1
  %431 = getelementptr inbounds i8, i8* %424, i64 4
  %432 = bitcast i8* %431 to i32*
  store i32 %430, i32* %432, align 1
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %434 = bitcast i64* %433 to i32*
  %435 = getelementptr inbounds i8, i8* %424, i64 12
  %436 = bitcast i8* %435 to i32*
  %437 = bitcast %union.VectorReg* %423 to double*
  %438 = load double, double* %437, align 1
  %439 = fsub double %438, %421
  %440 = bitcast %union.VectorReg* %415 to i32*
  store i32 %428, i32* %440, align 1
  %441 = getelementptr inbounds i8, i8* %416, i64 4
  %442 = bitcast i8* %441 to i32*
  store i32 %430, i32* %442, align 1
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %444 = bitcast i64* %443 to i32*
  store i32 0, i32* %444, align 1
  %445 = getelementptr inbounds i8, i8* %416, i64 12
  %446 = bitcast i8* %445 to i32*
  store i32 0, i32* %446, align 1
  %447 = load double, double* %422, align 1
  %448 = fdiv double %447, %439
  store double %448, double* %422, align 1
  %449 = load <2 x i32>, <2 x i32>* %425, align 1
  %450 = load <2 x i32>, <2 x i32>* %427, align 1
  %451 = extractelement <2 x i32> %449, i32 0
  store i32 %451, i32* %429, align 1
  %452 = extractelement <2 x i32> %449, i32 1
  store i32 %452, i32* %432, align 1
  %453 = extractelement <2 x i32> %450, i32 0
  store i32 %453, i32* %434, align 1
  %454 = extractelement <2 x i32> %450, i32 1
  store i32 %454, i32* %436, align 1
  %455 = load double, double* %437, align 1
  %456 = fadd double %455, %448
  store double %456, double* %437, align 1
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %458 = fmul double %413, %456
  store double %458, double* %414, align 1
  %459 = bitcast <2 x i32> %449 to double
  %460 = fadd double %459, %458
  store double %460, double* %379, align 1
  %461 = bitcast i64* %381 to <2 x i32>*
  store <2 x i32> %450, <2 x i32>* %461, align 1
  %462 = load double, double* %406, align 1
  %463 = fdiv double %462, %460
  store double %463, double* %406, align 1
  %464 = tail call double @llvm.trunc.f64(double %463)
  %465 = tail call double @llvm.fabs.f64(double %464)
  %466 = fcmp ogt double %465, 0x41DFFFFFFFC00000
  %467 = fptosi double %464 to i32
  %468 = zext i32 %467 to i64
  %469 = select i1 %466, i64 2147483648, i64 %468
  store i64 %469, i64* %RAX.i622, align 8
  %470 = load i64, i64* %RBP.i, align 8
  %471 = add i64 %470, -76
  %472 = trunc i64 %469 to i32
  %473 = add i64 %177, 67
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %471 to i32*
  store i32 %472, i32* %474, align 4
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -20
  %477 = load i64, i64* %3, align 8
  %478 = add i64 %477, 3
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %476 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = zext i32 %480 to i64
  store i64 %481, i64* %RAX.i622, align 8
  %482 = add i64 %475, -76
  %483 = add i64 %477, 6
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = zext i32 %485 to i64
  store i64 %486, i64* %RCX.i1008, align 8
  %487 = add i64 %475, -128
  %488 = add i64 %477, 9
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i32*
  store i32 %480, i32* %489, align 4
  %ECX.i828 = bitcast %union.anon* %78 to i32*
  %490 = load i32, i32* %ECX.i828, align 4
  %491 = zext i32 %490 to i64
  %492 = load i64, i64* %3, align 8
  store i64 %491, i64* %RAX.i622, align 8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %494 = sext i32 %490 to i64
  %495 = lshr i64 %494, 32
  store i64 %495, i64* %493, align 8
  %496 = load i64, i64* %RBP.i, align 8
  %497 = add i64 %496, -128
  %498 = add i64 %492, 6
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RCX.i1008, align 8
  %502 = add i64 %492, 8
  store i64 %502, i64* %3, align 8
  %503 = sext i32 %500 to i64
  %504 = shl nuw i64 %495, 32
  %505 = or i64 %504, %491
  %506 = sdiv i64 %505, %503
  %507 = shl i64 %506, 32
  %508 = ashr exact i64 %507, 32
  %509 = icmp eq i64 %506, %508
  br i1 %509, label %512, label %510

; <label>:510:                                    ; preds = %block_.L_404463
  %511 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %502, %struct.Memory* %MEMORY.0)
  %.pre58 = load i64, i64* %RBP.i, align 8
  %.pre59 = load i32, i32* %EAX.i976, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:512:                                    ; preds = %block_.L_404463
  %513 = srem i64 %505, %503
  %514 = and i64 %506, 4294967295
  store i64 %514, i64* %RAX.i622, align 8
  %515 = and i64 %513, 4294967295
  store i64 %515, i64* %RDX.i993, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %516 = trunc i64 %506 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %512, %510
  %517 = phi i64 [ %.pre60, %510 ], [ %502, %512 ]
  %518 = phi i32 [ %.pre59, %510 ], [ %516, %512 ]
  %519 = phi i64 [ %.pre58, %510 ], [ %496, %512 ]
  %520 = phi %struct.Memory* [ %511, %510 ], [ %MEMORY.0, %512 ]
  %521 = add i64 %519, -76
  %522 = add i64 %517, 3
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  store i32 %518, i32* %523, align 4
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -76
  %526 = load i64, i64* %3, align 8
  %527 = add i64 %526, 3
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %525 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RAX.i622, align 8
  %531 = add i64 %524, -120
  %532 = add i64 %526, 6
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = sub i32 %529, %534
  %536 = icmp ult i32 %529, %534
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %14, align 1
  %538 = and i32 %535, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %21, align 1
  %543 = xor i32 %534, %529
  %544 = xor i32 %543, %535
  %545 = lshr i32 %544, 4
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %26, align 1
  %548 = icmp eq i32 %535, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %29, align 1
  %550 = lshr i32 %535, 31
  %551 = trunc i32 %550 to i8
  store i8 %551, i8* %32, align 1
  %552 = lshr i32 %529, 31
  %553 = lshr i32 %534, 31
  %554 = xor i32 %553, %552
  %555 = xor i32 %550, %552
  %556 = add nuw nsw i32 %555, %554
  %557 = icmp eq i32 %556, 2
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %38, align 1
  %559 = icmp ne i8 %551, 0
  %560 = xor i1 %559, %557
  %561 = or i1 %548, %560
  %.v86 = select i1 %561, i64 18, i64 12
  %562 = add i64 %526, %.v86
  store i64 %562, i64* %3, align 8
  br i1 %561, label %block_.L_4044cc, label %block_4044c6

block_4044c6:                                     ; preds = %routine_idivl__ecx.exit
  %563 = add i64 %562, 3
  store i64 %563, i64* %3, align 8
  %564 = load i32, i32* %533, align 4
  %565 = zext i32 %564 to i64
  store i64 %565, i64* %RAX.i622, align 8
  %566 = add i64 %562, 6
  store i64 %566, i64* %3, align 8
  store i32 %564, i32* %528, align 4
  %.pre61 = load i64, i64* %3, align 8
  %.pre62 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4044cc

block_.L_4044cc:                                  ; preds = %block_4044c6, %routine_idivl__ecx.exit
  %567 = phi i64 [ %.pre62, %block_4044c6 ], [ %524, %routine_idivl__ecx.exit ]
  %568 = phi i64 [ %.pre61, %block_4044c6 ], [ %562, %routine_idivl__ecx.exit ]
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI.i961, align 8
  store i64 545, i64* %RSI.i1020, align 8
  %569 = add i64 %567, -20
  %570 = add i64 %568, 19
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = sext i32 %572 to i64
  %574 = shl nsw i64 %573, 3
  store i64 %574, i64* %RAX.i622, align 8
  %.lobit19 = lshr i32 %572, 31
  %575 = trunc i32 %.lobit19 to i8
  store i8 %575, i8* %14, align 1
  %576 = trunc i64 %574 to i32
  %577 = and i32 %576, 248
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577)
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %582 = icmp eq i32 %572, 0
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %29, align 1
  %584 = lshr i64 %573, 60
  %585 = trunc i64 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %574, i64* %RDX.i993, align 8
  %587 = add i64 %568, 269204
  %588 = add i64 %568, 31
  %589 = load i64, i64* %6, align 8
  %590 = add i64 %589, -8
  %591 = inttoptr i64 %590 to i64*
  store i64 %588, i64* %591, align 8
  store i64 %590, i64* %6, align 8
  store i64 %587, i64* %3, align 8
  %call2_4044e6 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %587, %struct.Memory* %520)
  %592 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI.i961, align 8
  store i64 546, i64* %RSI.i1020, align 8
  %593 = load i64, i64* %RBP.i, align 8
  %594 = add i64 %593, -88
  %595 = load i64, i64* %RAX.i622, align 8
  %596 = add i64 %592, 19
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %594 to i64*
  store i64 %595, i64* %597, align 8
  %598 = load i64, i64* %RBP.i, align 8
  %599 = add i64 %598, -76
  %600 = load i64, i64* %3, align 8
  %601 = add i64 %600, 3
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %599 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = add i32 %603, 1
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RCX.i1008, align 8
  %606 = icmp eq i32 %604, 0
  %607 = zext i1 %606 to i8
  %608 = lshr i32 %604, 31
  %609 = trunc i32 %608 to i8
  %610 = sext i32 %604 to i64
  %611 = shl nsw i64 %610, 2
  store i64 %611, i64* %RAX.i622, align 8
  store i8 %609, i8* %14, align 1
  %612 = trunc i64 %611 to i32
  %613 = and i32 %612, 252
  %614 = tail call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %607, i8* %29, align 1
  %618 = lshr i64 %610, 61
  %619 = trunc i64 %618 to i8
  %620 = and i8 %619, 1
  store i8 %620, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %611, i64* %RDX.i993, align 8
  %621 = add i64 %600, 269154
  %622 = add i64 %600, 21
  %623 = load i64, i64* %6, align 8
  %624 = add i64 %623, -8
  %625 = inttoptr i64 %624 to i64*
  store i64 %622, i64* %625, align 8
  store i64 %624, i64* %6, align 8
  store i64 %621, i64* %3, align 8
  %call2_40450e = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %621, %struct.Memory* %call2_4044e6)
  %626 = load i64, i64* %RBP.i, align 8
  %627 = add i64 %626, -96
  %628 = load i64, i64* %RAX.i622, align 8
  %629 = load i64, i64* %3, align 8
  %630 = add i64 %629, 4
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %627 to i64*
  store i64 %628, i64* %631, align 8
  %632 = load i64, i64* %RBP.i, align 8
  %633 = add i64 %632, -108
  %634 = load i64, i64* %3, align 8
  %635 = add i64 %634, 7
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %633 to i32*
  store i32 0, i32* %636, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_40451e

block_.L_40451e:                                  ; preds = %block_.L_404592, %block_.L_4044cc
  %637 = phi i64 [ %842, %block_.L_404592 ], [ %.pre63, %block_.L_4044cc ]
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -108
  %640 = add i64 %637, 3
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RAX.i622, align 8
  %644 = add i64 %638, -20
  %645 = add i64 %637, 6
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = sub i32 %642, %647
  %649 = icmp ult i32 %642, %647
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %14, align 1
  %651 = and i32 %648, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %21, align 1
  %656 = xor i32 %647, %642
  %657 = xor i32 %656, %648
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  store i8 %660, i8* %26, align 1
  %661 = icmp eq i32 %648, 0
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %29, align 1
  %663 = lshr i32 %648, 31
  %664 = trunc i32 %663 to i8
  store i8 %664, i8* %32, align 1
  %665 = lshr i32 %642, 31
  %666 = lshr i32 %647, 31
  %667 = xor i32 %666, %665
  %668 = xor i32 %663, %665
  %669 = add nuw nsw i32 %668, %667
  %670 = icmp eq i32 %669, 2
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %38, align 1
  %672 = icmp ne i8 %664, 0
  %673 = xor i1 %672, %670
  %.v87 = select i1 %673, i64 12, i64 135
  %674 = add i64 %637, %.v87
  store i64 %674, i64* %3, align 8
  br i1 %673, label %block_40452a, label %block_.L_4045a5

block_40452a:                                     ; preds = %block_.L_40451e
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI.i961, align 8
  store i64 549, i64* %RSI.i1020, align 8
  %675 = add i64 %638, -76
  %676 = add i64 %674, 18
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  %678 = load i32, i32* %677, align 4
  %679 = add i32 %678, 1
  %680 = zext i32 %679 to i64
  store i64 %680, i64* %RAX.i622, align 8
  %681 = icmp eq i32 %679, 0
  %682 = zext i1 %681 to i8
  %683 = lshr i32 %679, 31
  %684 = trunc i32 %683 to i8
  %685 = sext i32 %679 to i64
  %686 = shl nsw i64 %685, 2
  store i64 %686, i64* %RCX.i1008, align 8
  store i8 %684, i8* %14, align 1
  %687 = trunc i64 %686 to i32
  %688 = and i32 %687, 252
  %689 = tail call i32 @llvm.ctpop.i32(i32 %688)
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  %692 = xor i8 %691, 1
  store i8 %692, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %682, i8* %29, align 1
  %693 = lshr i64 %685, 61
  %694 = trunc i64 %693 to i8
  %695 = and i8 %694, 1
  store i8 %695, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %686, i64* %RDX.i993, align 8
  %696 = add i64 %674, 269110
  %697 = add i64 %674, 36
  %698 = load i64, i64* %6, align 8
  %699 = add i64 %698, -8
  %700 = inttoptr i64 %699 to i64*
  store i64 %697, i64* %700, align 8
  store i64 %699, i64* %6, align 8
  store i64 %696, i64* %3, align 8
  %call2_404549 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %696, %struct.Memory* %call2_40450e)
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -88
  %703 = load i64, i64* %3, align 8
  %704 = add i64 %703, 4
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %702 to i64*
  %706 = load i64, i64* %705, align 8
  store i64 %706, i64* %RCX.i1008, align 8
  %707 = add i64 %701, -108
  %708 = add i64 %703, 8
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i32*
  %710 = load i32, i32* %709, align 4
  %711 = sext i32 %710 to i64
  store i64 %711, i64* %RDX.i993, align 8
  %712 = shl nsw i64 %711, 3
  %713 = add i64 %712, %706
  %714 = load i64, i64* %RAX.i622, align 8
  %715 = add i64 %703, 12
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %713 to i64*
  store i64 %714, i64* %716, align 8
  %717 = load i64, i64* %RBP.i, align 8
  %718 = add i64 %717, -104
  %719 = load i64, i64* %3, align 8
  %720 = add i64 %719, 7
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %718 to i32*
  store i32 0, i32* %721, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_404561

block_.L_404561:                                  ; preds = %block_40456d, %block_40452a
  %722 = phi i64 [ %812, %block_40456d ], [ %.pre81, %block_40452a ]
  %723 = load i64, i64* %RBP.i, align 8
  %724 = add i64 %723, -104
  %725 = add i64 %722, 3
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i32*
  %727 = load i32, i32* %726, align 4
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RAX.i622, align 8
  %729 = add i64 %723, -76
  %730 = add i64 %722, 6
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i32*
  %732 = load i32, i32* %731, align 4
  %733 = sub i32 %727, %732
  %734 = icmp ult i32 %727, %732
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %14, align 1
  %736 = and i32 %733, 255
  %737 = tail call i32 @llvm.ctpop.i32(i32 %736)
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = xor i8 %739, 1
  store i8 %740, i8* %21, align 1
  %741 = xor i32 %732, %727
  %742 = xor i32 %741, %733
  %743 = lshr i32 %742, 4
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %26, align 1
  %746 = icmp eq i32 %733, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %29, align 1
  %748 = lshr i32 %733, 31
  %749 = trunc i32 %748 to i8
  store i8 %749, i8* %32, align 1
  %750 = lshr i32 %727, 31
  %751 = lshr i32 %732, 31
  %752 = xor i32 %751, %750
  %753 = xor i32 %748, %750
  %754 = add nuw nsw i32 %753, %752
  %755 = icmp eq i32 %754, 2
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %38, align 1
  %757 = icmp ne i8 %749, 0
  %758 = xor i1 %757, %755
  %.demorgan84 = or i1 %746, %758
  %.v = select i1 %.demorgan84, i64 12, i64 49
  %759 = add i64 %722, %.v
  store i64 %759, i64* %3, align 8
  br i1 %.demorgan84, label %block_40456d, label %block_.L_404592

block_40456d:                                     ; preds = %block_.L_404561
  %760 = add i64 %723, -88
  %761 = add i64 %759, 4
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i64*
  %763 = load i64, i64* %762, align 8
  store i64 %763, i64* %RAX.i622, align 8
  %764 = add i64 %723, -108
  %765 = add i64 %759, 8
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = sext i32 %767 to i64
  store i64 %768, i64* %RCX.i1008, align 8
  %769 = shl nsw i64 %768, 3
  %770 = add i64 %769, %763
  %771 = add i64 %759, 12
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i64*
  %773 = load i64, i64* %772, align 8
  store i64 %773, i64* %RAX.i622, align 8
  %774 = add i64 %759, 16
  store i64 %774, i64* %3, align 8
  %775 = load i32, i32* %726, align 4
  %776 = sext i32 %775 to i64
  store i64 %776, i64* %RCX.i1008, align 8
  %777 = shl nsw i64 %776, 2
  %778 = add i64 %777, %773
  %779 = add i64 %759, 23
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i32*
  store i32 0, i32* %780, align 4
  %781 = load i64, i64* %RBP.i, align 8
  %782 = add i64 %781, -104
  %783 = load i64, i64* %3, align 8
  %784 = add i64 %783, 3
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %782 to i32*
  %786 = load i32, i32* %785, align 4
  %787 = add i32 %786, 1
  %788 = zext i32 %787 to i64
  store i64 %788, i64* %RAX.i622, align 8
  %789 = icmp eq i32 %786, -1
  %790 = icmp eq i32 %787, 0
  %791 = or i1 %789, %790
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %14, align 1
  %793 = and i32 %787, 255
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793)
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %21, align 1
  %798 = xor i32 %787, %786
  %799 = lshr i32 %798, 4
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  store i8 %801, i8* %26, align 1
  %802 = zext i1 %790 to i8
  store i8 %802, i8* %29, align 1
  %803 = lshr i32 %787, 31
  %804 = trunc i32 %803 to i8
  store i8 %804, i8* %32, align 1
  %805 = lshr i32 %786, 31
  %806 = xor i32 %803, %805
  %807 = add nuw nsw i32 %806, %803
  %808 = icmp eq i32 %807, 2
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %38, align 1
  %810 = add i64 %783, 9
  store i64 %810, i64* %3, align 8
  store i32 %787, i32* %785, align 4
  %811 = load i64, i64* %3, align 8
  %812 = add i64 %811, -44
  store i64 %812, i64* %3, align 8
  br label %block_.L_404561

block_.L_404592:                                  ; preds = %block_.L_404561
  %813 = add i64 %723, -108
  %814 = add i64 %759, 8
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = add i32 %816, 1
  %818 = zext i32 %817 to i64
  store i64 %818, i64* %RAX.i622, align 8
  %819 = icmp eq i32 %816, -1
  %820 = icmp eq i32 %817, 0
  %821 = or i1 %819, %820
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %14, align 1
  %823 = and i32 %817, 255
  %824 = tail call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  store i8 %827, i8* %21, align 1
  %828 = xor i32 %817, %816
  %829 = lshr i32 %828, 4
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  store i8 %831, i8* %26, align 1
  %832 = zext i1 %820 to i8
  store i8 %832, i8* %29, align 1
  %833 = lshr i32 %817, 31
  %834 = trunc i32 %833 to i8
  store i8 %834, i8* %32, align 1
  %835 = lshr i32 %816, 31
  %836 = xor i32 %833, %835
  %837 = add nuw nsw i32 %836, %833
  %838 = icmp eq i32 %837, 2
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %38, align 1
  %840 = add i64 %759, 14
  store i64 %840, i64* %3, align 8
  store i32 %817, i32* %815, align 4
  %841 = load i64, i64* %3, align 8
  %842 = add i64 %841, -130
  store i64 %842, i64* %3, align 8
  br label %block_.L_40451e

block_.L_4045a5:                                  ; preds = %block_.L_40451e
  %843 = add i64 %674, ptrtoint (%G_0x50233__rip__type* @G_0x50233__rip_ to i64)
  %844 = add i64 %674, 8
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i64*
  %846 = load i64, i64* %845, align 8
  store i64 %846, i64* %380, align 1
  store double 0.000000e+00, double* %382, align 1
  %847 = add i64 %638, -24
  %848 = add i64 %674, 13
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = bitcast %union.VectorReg* %69 to i32*
  store i32 %850, i32* %851, align 1
  %852 = bitcast i8* %396 to float*
  store float 0.000000e+00, float* %852, align 1
  %853 = bitcast i64* %388 to float*
  store float 0.000000e+00, float* %853, align 1
  %854 = bitcast i8* %401 to float*
  store float 0.000000e+00, float* %854, align 1
  %855 = add i64 %674, 18
  store i64 %855, i64* %3, align 8
  %856 = load i32, i32* %849, align 4
  %857 = bitcast %union.VectorReg* %407 to float*
  %858 = bitcast %union.VectorReg* %407 to i32*
  store i32 %856, i32* %858, align 1
  %859 = getelementptr inbounds i8, i8* %408, i64 4
  %860 = bitcast i8* %859 to float*
  store float 0.000000e+00, float* %860, align 1
  %861 = bitcast i64* %457 to float*
  store float 0.000000e+00, float* %861, align 1
  %862 = getelementptr inbounds i8, i8* %408, i64 12
  %863 = bitcast i8* %862 to float*
  store float 0.000000e+00, float* %863, align 1
  %864 = add i64 %638, -28
  %865 = add i64 %674, 23
  store i64 %865, i64* %3, align 8
  %866 = bitcast %union.VectorReg* %407 to <2 x float>*
  %867 = load <2 x float>, <2 x float>* %866, align 1
  %868 = bitcast i64* %457 to <2 x i32>*
  %869 = load <2 x i32>, <2 x i32>* %868, align 1
  %870 = inttoptr i64 %864 to float*
  %871 = load float, float* %870, align 4
  %872 = extractelement <2 x float> %867, i32 0
  %873 = fadd float %872, %871
  store float %873, float* %857, align 1
  %874 = bitcast <2 x float> %867 to <2 x i32>
  %875 = extractelement <2 x i32> %874, i32 1
  %876 = bitcast i8* %859 to i32*
  store i32 %875, i32* %876, align 1
  %877 = extractelement <2 x i32> %869, i32 0
  %878 = bitcast i64* %457 to i32*
  store i32 %877, i32* %878, align 1
  %879 = extractelement <2 x i32> %869, i32 1
  %880 = bitcast i8* %862 to i32*
  store i32 %879, i32* %880, align 1
  %881 = load <2 x float>, <2 x float>* %74, align 1
  %882 = load <2 x i32>, <2 x i32>* %389, align 1
  %883 = load <2 x float>, <2 x float>* %866, align 1
  %884 = extractelement <2 x float> %881, i32 0
  %885 = extractelement <2 x float> %883, i32 0
  %886 = fdiv float %884, %885
  store float %886, float* %394, align 1
  %887 = bitcast <2 x float> %881 to <2 x i32>
  %888 = extractelement <2 x i32> %887, i32 1
  store i32 %888, i32* %397, align 1
  %889 = extractelement <2 x i32> %882, i32 0
  store i32 %889, i32* %399, align 1
  %890 = extractelement <2 x i32> %882, i32 1
  store i32 %890, i32* %402, align 1
  %891 = add i64 %674, 32
  store i64 %891, i64* %3, align 8
  %892 = load <2 x float>, <2 x float>* %74, align 1
  %893 = extractelement <2 x float> %892, i32 0
  %894 = inttoptr i64 %847 to float*
  store float %893, float* %894, align 4
  %895 = load i64, i64* %RBP.i, align 8
  %896 = add i64 %895, -24
  %897 = load i64, i64* %3, align 8
  %898 = add i64 %897, 5
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %896 to float*
  %900 = load float, float* %899, align 4
  %901 = fpext float %900 to double
  store double %901, double* %406, align 1
  %902 = load double, double* %379, align 1
  %903 = bitcast i64* %381 to <2 x i32>*
  %904 = load <2 x i32>, <2 x i32>* %903, align 1
  %905 = fsub double %902, %901
  %.cast = bitcast double %905 to <2 x i32>
  %906 = fptrunc double %905 to float
  %907 = bitcast [32 x %union.VectorReg]* %60 to float*
  store float %906, float* %907, align 1
  %908 = extractelement <2 x i32> %.cast, i32 1
  %909 = getelementptr inbounds i8, i8* %374, i64 4
  %910 = bitcast i8* %909 to i32*
  store i32 %908, i32* %910, align 1
  %911 = extractelement <2 x i32> %904, i32 0
  %912 = bitcast i64* %381 to i32*
  store i32 %911, i32* %912, align 1
  %913 = extractelement <2 x i32> %904, i32 1
  %914 = getelementptr inbounds i8, i8* %374, i64 12
  %915 = bitcast i8* %914 to i32*
  store i32 %913, i32* %915, align 1
  %916 = add i64 %895, -28
  %917 = add i64 %897, 18
  store i64 %917, i64* %3, align 8
  %918 = load <2 x float>, <2 x float>* %65, align 1
  %919 = extractelement <2 x float> %918, i32 0
  %920 = inttoptr i64 %916 to float*
  store float %919, float* %920, align 4
  %921 = load i64, i64* %RBP.i, align 8
  %922 = add i64 %921, -108
  %923 = load i64, i64* %3, align 8
  %924 = add i64 %923, 7
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %922 to i32*
  store i32 0, i32* %925, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_4045de

block_.L_4045de:                                  ; preds = %block_.L_404670, %block_.L_4045a5
  %926 = phi i64 [ %.pre64, %block_.L_4045a5 ], [ %1260, %block_.L_404670 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_40450e, %block_.L_4045a5 ], [ %MEMORY.6, %block_.L_404670 ]
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -108
  %929 = add i64 %926, 3
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %928 to i32*
  %931 = load i32, i32* %930, align 4
  %932 = zext i32 %931 to i64
  store i64 %932, i64* %RAX.i622, align 8
  %933 = add i64 %927, -20
  %934 = add i64 %926, 6
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = sub i32 %931, %936
  %938 = icmp ult i32 %931, %936
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %14, align 1
  %940 = and i32 %937, 255
  %941 = tail call i32 @llvm.ctpop.i32(i32 %940)
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  %944 = xor i8 %943, 1
  store i8 %944, i8* %21, align 1
  %945 = xor i32 %936, %931
  %946 = xor i32 %945, %937
  %947 = lshr i32 %946, 4
  %948 = trunc i32 %947 to i8
  %949 = and i8 %948, 1
  store i8 %949, i8* %26, align 1
  %950 = icmp eq i32 %937, 0
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %29, align 1
  %952 = lshr i32 %937, 31
  %953 = trunc i32 %952 to i8
  store i8 %953, i8* %32, align 1
  %954 = lshr i32 %931, 31
  %955 = lshr i32 %936, 31
  %956 = xor i32 %955, %954
  %957 = xor i32 %952, %954
  %958 = add nuw nsw i32 %957, %956
  %959 = icmp eq i32 %958, 2
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %38, align 1
  %961 = icmp ne i8 %953, 0
  %962 = xor i1 %961, %959
  %.v88 = select i1 %962, i64 12, i64 165
  %963 = add i64 %926, %.v88
  store i64 %963, i64* %3, align 8
  br i1 %962, label %block_4045ea, label %block_.L_404683

block_4045ea:                                     ; preds = %block_.L_4045de
  %964 = add i64 %927, -100
  %965 = add i64 %963, 7
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i32*
  store i32 -1, i32* %966, align 4
  %967 = load i64, i64* %RBP.i, align 8
  %968 = add i64 %967, -104
  %969 = load i64, i64* %3, align 8
  %970 = add i64 %969, 7
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %968 to i32*
  store i32 0, i32* %971, align 4
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_4045f8

block_.L_4045f8:                                  ; preds = %block_.L_404649, %block_4045ea
  %972 = phi i64 [ %.pre77, %block_4045ea ], [ %1229, %block_.L_404649 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_4045ea ], [ %MEMORY.8, %block_.L_404649 ]
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -104
  %975 = add i64 %972, 3
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %RAX.i622, align 8
  %979 = add i64 %973, -72
  %980 = add i64 %972, 7
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i64*
  %982 = load i64, i64* %981, align 8
  store i64 %982, i64* %RCX.i1008, align 8
  %983 = add i64 %973, -108
  %984 = add i64 %972, 11
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  %987 = sext i32 %986 to i64
  store i64 %987, i64* %RDX.i993, align 8
  %988 = shl nsw i64 %987, 2
  %989 = add i64 %988, %982
  %990 = add i64 %972, 14
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = zext i32 %992 to i64
  store i64 %993, i64* %RSI.i1020, align 8
  %994 = add i64 %973, -76
  %995 = add i64 %972, 17
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = sub i32 %992, %997
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RSI.i1020, align 8
  %1000 = lshr i32 %998, 31
  %1001 = sub i32 %977, %998
  %1002 = icmp ult i32 %977, %998
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %14, align 1
  %1004 = and i32 %1001, 255
  %1005 = tail call i32 @llvm.ctpop.i32(i32 %1004)
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  store i8 %1008, i8* %21, align 1
  %1009 = xor i32 %998, %977
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
  %1018 = lshr i32 %977, 31
  %1019 = xor i32 %1000, %1018
  %1020 = xor i32 %1016, %1018
  %1021 = add nuw nsw i32 %1020, %1019
  %1022 = icmp eq i32 %1021, 2
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %38, align 1
  %1024 = icmp ne i8 %1017, 0
  %1025 = xor i1 %1024, %1022
  %.v99 = select i1 %1025, i64 25, i64 120
  %1026 = add i64 %972, %.v99
  store i64 %1026, i64* %3, align 8
  br i1 %1025, label %block_404611, label %block_.L_404670

block_404611:                                     ; preds = %block_.L_4045f8
  %1027 = add i64 %1026, 265711
  %1028 = add i64 %1026, 5
  %1029 = load i64, i64* %6, align 8
  %1030 = add i64 %1029, -8
  %1031 = inttoptr i64 %1030 to i64*
  store i64 %1028, i64* %1031, align 8
  store i64 %1030, i64* %6, align 8
  store i64 %1027, i64* %3, align 8
  %call2_404611 = tail call %struct.Memory* @sub_445400.sre_random(%struct.State* nonnull %0, i64 %1027, %struct.Memory* %MEMORY.6)
  %1032 = load i64, i64* %RBP.i, align 8
  %1033 = add i64 %1032, -24
  %1034 = load i64, i64* %3, align 8
  %1035 = add i64 %1034, 5
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1033 to float*
  %1037 = load float, float* %1036, align 4
  %1038 = fpext float %1037 to double
  store double %1038, double* %406, align 1
  %1039 = add i64 %1034, 9
  store i64 %1039, i64* %3, align 8
  %1040 = load double, double* %379, align 1
  %1041 = fcmp uno double %1038, %1040
  br i1 %1041, label %1042, label %1052

; <label>:1042:                                   ; preds = %block_404611
  %1043 = fadd double %1038, %1040
  %1044 = bitcast double %1043 to i64
  %1045 = and i64 %1044, 9221120237041090560
  %1046 = icmp eq i64 %1045, 9218868437227405312
  %1047 = and i64 %1044, 2251799813685247
  %1048 = icmp ne i64 %1047, 0
  %1049 = and i1 %1046, %1048
  br i1 %1049, label %1050, label %1058

; <label>:1050:                                   ; preds = %1042
  %1051 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1039, %struct.Memory* %MEMORY.6)
  %.pre78 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1052:                                   ; preds = %block_404611
  %1053 = fcmp ogt double %1038, %1040
  br i1 %1053, label %1058, label %1054

; <label>:1054:                                   ; preds = %1052
  %1055 = fcmp olt double %1038, %1040
  br i1 %1055, label %1058, label %1056

; <label>:1056:                                   ; preds = %1054
  %1057 = fcmp oeq double %1038, %1040
  br i1 %1057, label %1058, label %1062

; <label>:1058:                                   ; preds = %1056, %1054, %1052, %1042
  %1059 = phi i8 [ 0, %1052 ], [ 0, %1054 ], [ 1, %1056 ], [ 1, %1042 ]
  %1060 = phi i8 [ 0, %1052 ], [ 0, %1054 ], [ 0, %1056 ], [ 1, %1042 ]
  %1061 = phi i8 [ 0, %1052 ], [ 1, %1054 ], [ 0, %1056 ], [ 1, %1042 ]
  store i8 %1059, i8* %29, align 1
  store i8 %1060, i8* %21, align 1
  store i8 %1061, i8* %14, align 1
  br label %1062

; <label>:1062:                                   ; preds = %1058, %1056
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1062, %1050
  %1063 = phi i64 [ %.pre78, %1050 ], [ %1039, %1062 ]
  %1064 = phi %struct.Memory* [ %1051, %1050 ], [ %MEMORY.6, %1062 ]
  %1065 = add i64 %1063, 16
  %1066 = add i64 %1063, 6
  %1067 = load i8, i8* %14, align 1
  %1068 = load i8, i8* %29, align 1
  %1069 = or i8 %1068, %1067
  %1070 = icmp eq i8 %1069, 0
  %1071 = select i1 %1070, i64 %1065, i64 %1066
  store i64 %1071, i64* %3, align 8
  br i1 %1070, label %block_.L_40462f, label %block_404625

block_404625:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1072 = load i64, i64* %RBP.i, align 8
  %1073 = add i64 %1072, -100
  %1074 = add i64 %1071, 4
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = add i32 %1076, 1
  %1078 = icmp ne i32 %1076, -1
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %14, align 1
  %1080 = and i32 %1077, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %21, align 1
  %1085 = xor i32 %1076, 16
  %1086 = xor i32 %1085, %1077
  %1087 = lshr i32 %1086, 4
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  store i8 %1089, i8* %26, align 1
  %1090 = icmp eq i32 %1077, 0
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %29, align 1
  %1092 = lshr i32 %1077, 31
  %1093 = trunc i32 %1092 to i8
  store i8 %1093, i8* %32, align 1
  %1094 = lshr i32 %1076, 31
  %1095 = xor i32 %1094, 1
  %1096 = xor i32 %1092, %1094
  %1097 = add nuw nsw i32 %1096, %1095
  %1098 = icmp eq i32 %1097, 2
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %38, align 1
  %.v100 = select i1 %1090, i64 10, i64 36
  %1100 = add i64 %1071, %.v100
  store i64 %1100, i64* %3, align 8
  br i1 %1090, label %block_.L_40462f, label %block_.L_404649

block_.L_40462f:                                  ; preds = %block_404625, %routine_ucomisd__xmm0___xmm1.exit
  %1101 = phi i64 [ %1100, %block_404625 ], [ %1065, %routine_ucomisd__xmm0___xmm1.exit ]
  %1102 = add i64 %1101, 265681
  %1103 = add i64 %1101, 5
  %1104 = load i64, i64* %6, align 8
  %1105 = add i64 %1104, -8
  %1106 = inttoptr i64 %1105 to i64*
  store i64 %1103, i64* %1106, align 8
  store i64 %1105, i64* %6, align 8
  store i64 %1102, i64* %3, align 8
  %call2_40462f = tail call %struct.Memory* @sub_445400.sre_random(%struct.State* nonnull %0, i64 %1102, %struct.Memory* %1064)
  %1107 = load i64, i64* %RBP.i, align 8
  %1108 = add i64 %1107, -76
  %1109 = load i64, i64* %3, align 8
  %1110 = add i64 %1109, 3
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1108 to i32*
  %1112 = load i32, i32* %1111, align 4
  %1113 = add i32 %1112, 1
  %1114 = icmp eq i32 %1112, -1
  %1115 = icmp eq i32 %1113, 0
  %1116 = or i1 %1114, %1115
  %1117 = zext i1 %1116 to i8
  store i8 %1117, i8* %14, align 1
  %1118 = and i32 %1113, 255
  %1119 = tail call i32 @llvm.ctpop.i32(i32 %1118)
  %1120 = trunc i32 %1119 to i8
  %1121 = and i8 %1120, 1
  %1122 = xor i8 %1121, 1
  store i8 %1122, i8* %21, align 1
  %1123 = xor i32 %1113, %1112
  %1124 = lshr i32 %1123, 4
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  store i8 %1126, i8* %26, align 1
  %1127 = zext i1 %1115 to i8
  store i8 %1127, i8* %29, align 1
  %1128 = lshr i32 %1113, 31
  %1129 = trunc i32 %1128 to i8
  store i8 %1129, i8* %32, align 1
  %1130 = lshr i32 %1112, 31
  %1131 = xor i32 %1128, %1130
  %1132 = add nuw nsw i32 %1131, %1128
  %1133 = icmp eq i32 %1132, 2
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %38, align 1
  %1135 = sitofp i32 %1113 to double
  store double %1135, double* %406, align 1
  %1136 = load double, double* %379, align 1
  %1137 = fmul double %1135, %1136
  store double %1137, double* %379, align 1
  %1138 = tail call double @llvm.trunc.f64(double %1137)
  %1139 = tail call double @llvm.fabs.f64(double %1138)
  %1140 = fcmp ogt double %1139, 0x41DFFFFFFFC00000
  %1141 = fptosi double %1138 to i32
  %1142 = zext i32 %1141 to i64
  %1143 = select i1 %1140, i64 2147483648, i64 %1142
  store i64 %1143, i64* %RAX.i622, align 8
  %1144 = add i64 %1107, -100
  %1145 = trunc i64 %1143 to i32
  %1146 = add i64 %1109, 21
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1144 to i32*
  store i32 %1145, i32* %1147, align 4
  %.pre79 = load i64, i64* %RBP.i, align 8
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_404649

block_.L_404649:                                  ; preds = %block_404625, %block_.L_40462f
  %1148 = phi i64 [ %.pre80, %block_.L_40462f ], [ %1100, %block_404625 ]
  %1149 = phi i64 [ %.pre79, %block_.L_40462f ], [ %1072, %block_404625 ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_40462f, %block_.L_40462f ], [ %1064, %block_404625 ]
  %1150 = add i64 %1149, -88
  %1151 = add i64 %1148, 4
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i64*
  %1153 = load i64, i64* %1152, align 8
  store i64 %1153, i64* %RAX.i622, align 8
  %1154 = add i64 %1149, -108
  %1155 = add i64 %1148, 8
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = sext i32 %1157 to i64
  store i64 %1158, i64* %RCX.i1008, align 8
  %1159 = shl nsw i64 %1158, 3
  %1160 = add i64 %1159, %1153
  %1161 = add i64 %1148, 12
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i64*
  %1163 = load i64, i64* %1162, align 8
  store i64 %1163, i64* %RAX.i622, align 8
  %1164 = add i64 %1149, -100
  %1165 = add i64 %1148, 16
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = sext i32 %1167 to i64
  store i64 %1168, i64* %RCX.i1008, align 8
  %1169 = shl nsw i64 %1168, 2
  %1170 = add i64 %1169, %1163
  %1171 = add i64 %1148, 19
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to i32*
  %1173 = load i32, i32* %1172, align 4
  %1174 = add i32 %1173, 1
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RDX.i993, align 8
  %1176 = icmp eq i32 %1173, -1
  %1177 = icmp eq i32 %1174, 0
  %1178 = or i1 %1176, %1177
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %14, align 1
  %1180 = and i32 %1174, 255
  %1181 = tail call i32 @llvm.ctpop.i32(i32 %1180)
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = xor i8 %1183, 1
  store i8 %1184, i8* %21, align 1
  %1185 = xor i32 %1174, %1173
  %1186 = lshr i32 %1185, 4
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  store i8 %1188, i8* %26, align 1
  %1189 = zext i1 %1177 to i8
  store i8 %1189, i8* %29, align 1
  %1190 = lshr i32 %1174, 31
  %1191 = trunc i32 %1190 to i8
  store i8 %1191, i8* %32, align 1
  %1192 = lshr i32 %1173, 31
  %1193 = xor i32 %1190, %1192
  %1194 = add nuw nsw i32 %1193, %1190
  %1195 = icmp eq i32 %1194, 2
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %38, align 1
  %1197 = add i64 %1148, 25
  store i64 %1197, i64* %3, align 8
  store i32 %1174, i32* %1172, align 4
  %1198 = load i64, i64* %RBP.i, align 8
  %1199 = add i64 %1198, -104
  %1200 = load i64, i64* %3, align 8
  %1201 = add i64 %1200, 3
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1199 to i32*
  %1203 = load i32, i32* %1202, align 4
  %1204 = add i32 %1203, 1
  %1205 = zext i32 %1204 to i64
  store i64 %1205, i64* %RAX.i622, align 8
  %1206 = icmp eq i32 %1203, -1
  %1207 = icmp eq i32 %1204, 0
  %1208 = or i1 %1206, %1207
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %14, align 1
  %1210 = and i32 %1204, 255
  %1211 = tail call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  store i8 %1214, i8* %21, align 1
  %1215 = xor i32 %1204, %1203
  %1216 = lshr i32 %1215, 4
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  store i8 %1218, i8* %26, align 1
  %1219 = zext i1 %1207 to i8
  store i8 %1219, i8* %29, align 1
  %1220 = lshr i32 %1204, 31
  %1221 = trunc i32 %1220 to i8
  store i8 %1221, i8* %32, align 1
  %1222 = lshr i32 %1203, 31
  %1223 = xor i32 %1220, %1222
  %1224 = add nuw nsw i32 %1223, %1220
  %1225 = icmp eq i32 %1224, 2
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %38, align 1
  %1227 = add i64 %1200, 9
  store i64 %1227, i64* %3, align 8
  store i32 %1204, i32* %1202, align 4
  %1228 = load i64, i64* %3, align 8
  %1229 = add i64 %1228, -115
  store i64 %1229, i64* %3, align 8
  br label %block_.L_4045f8

block_.L_404670:                                  ; preds = %block_.L_4045f8
  %1230 = load i64, i64* %RBP.i, align 8
  %1231 = add i64 %1230, -108
  %1232 = add i64 %1026, 8
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to i32*
  %1234 = load i32, i32* %1233, align 4
  %1235 = add i32 %1234, 1
  %1236 = zext i32 %1235 to i64
  store i64 %1236, i64* %RAX.i622, align 8
  %1237 = icmp eq i32 %1234, -1
  %1238 = icmp eq i32 %1235, 0
  %1239 = or i1 %1237, %1238
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %14, align 1
  %1241 = and i32 %1235, 255
  %1242 = tail call i32 @llvm.ctpop.i32(i32 %1241)
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = xor i8 %1244, 1
  store i8 %1245, i8* %21, align 1
  %1246 = xor i32 %1235, %1234
  %1247 = lshr i32 %1246, 4
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  store i8 %1249, i8* %26, align 1
  %1250 = zext i1 %1238 to i8
  store i8 %1250, i8* %29, align 1
  %1251 = lshr i32 %1235, 31
  %1252 = trunc i32 %1251 to i8
  store i8 %1252, i8* %32, align 1
  %1253 = lshr i32 %1234, 31
  %1254 = xor i32 %1251, %1253
  %1255 = add nuw nsw i32 %1254, %1251
  %1256 = icmp eq i32 %1255, 2
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %38, align 1
  %1258 = add i64 %1026, 14
  store i64 %1258, i64* %3, align 8
  store i32 %1235, i32* %1233, align 4
  %1259 = load i64, i64* %3, align 8
  %1260 = add i64 %1259, -160
  store i64 %1260, i64* %3, align 8
  br label %block_.L_4045de

block_.L_404683:                                  ; preds = %block_.L_4045de
  %1261 = add i64 %927, -76
  %1262 = add i64 %963, 3
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1261 to i32*
  %1264 = load i32, i32* %1263, align 4
  %1265 = zext i32 %1264 to i64
  store i64 %1265, i64* %RAX.i622, align 8
  %1266 = add i64 %927, -60
  %1267 = add i64 %963, 6
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i32*
  store i32 %1264, i32* %1268, align 4
  %1269 = load i64, i64* %RBP.i, align 8
  %1270 = add i64 %1269, -100
  %1271 = load i64, i64* %3, align 8
  %1272 = add i64 %1271, 7
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1270 to i32*
  store i32 0, i32* %1273, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_404690

block_.L_404690:                                  ; preds = %block_.L_404713, %block_.L_404683
  %1274 = phi i64 [ %1567, %block_.L_404713 ], [ %.pre65, %block_.L_404683 ]
  %1275 = load i64, i64* %RBP.i, align 8
  %1276 = add i64 %1275, -100
  %1277 = add i64 %1274, 3
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1276 to i32*
  %1279 = load i32, i32* %1278, align 4
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX.i622, align 8
  %1281 = add i64 %1275, -76
  %1282 = add i64 %1274, 6
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = sub i32 %1279, %1284
  %1286 = icmp ult i32 %1279, %1284
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %14, align 1
  %1288 = and i32 %1285, 255
  %1289 = tail call i32 @llvm.ctpop.i32(i32 %1288)
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  store i8 %1292, i8* %21, align 1
  %1293 = xor i32 %1284, %1279
  %1294 = xor i32 %1293, %1285
  %1295 = lshr i32 %1294, 4
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  store i8 %1297, i8* %26, align 1
  %1298 = icmp eq i32 %1285, 0
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %29, align 1
  %1300 = lshr i32 %1285, 31
  %1301 = trunc i32 %1300 to i8
  store i8 %1301, i8* %32, align 1
  %1302 = lshr i32 %1279, 31
  %1303 = lshr i32 %1284, 31
  %1304 = xor i32 %1303, %1302
  %1305 = xor i32 %1300, %1302
  %1306 = add nuw nsw i32 %1305, %1304
  %1307 = icmp eq i32 %1306, 2
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %38, align 1
  %1309 = icmp ne i8 %1301, 0
  %1310 = xor i1 %1309, %1307
  %.demorgan = or i1 %1298, %1310
  %.v89 = select i1 %.demorgan, i64 12, i64 162
  %1311 = add i64 %1274, %.v89
  store i64 %1311, i64* %3, align 8
  br i1 %.demorgan, label %block_40469c, label %block_.L_404732

block_40469c:                                     ; preds = %block_.L_404690
  %1312 = add i64 %1275, -96
  %1313 = add i64 %1311, 4
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1312 to i64*
  %1315 = load i64, i64* %1314, align 8
  store i64 %1315, i64* %RAX.i622, align 8
  %1316 = add i64 %1311, 8
  store i64 %1316, i64* %3, align 8
  %1317 = load i32, i32* %1278, align 4
  %1318 = sext i32 %1317 to i64
  store i64 %1318, i64* %RCX.i1008, align 8
  %1319 = shl nsw i64 %1318, 2
  %1320 = add i64 %1319, %1315
  %1321 = add i64 %1311, 15
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i32*
  store i32 0, i32* %1322, align 4
  %1323 = load i64, i64* %RBP.i, align 8
  %1324 = add i64 %1323, -108
  %1325 = load i64, i64* %3, align 8
  %1326 = add i64 %1325, 7
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1324 to i32*
  store i32 0, i32* %1327, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_4046b2

block_.L_4046b2:                                  ; preds = %block_.L_404700, %block_40469c
  %1328 = phi i64 [ %1488, %block_.L_404700 ], [ %.pre66, %block_40469c ]
  %1329 = load i64, i64* %RBP.i, align 8
  %1330 = add i64 %1329, -108
  %1331 = add i64 %1328, 3
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i32*
  %1333 = load i32, i32* %1332, align 4
  %1334 = zext i32 %1333 to i64
  store i64 %1334, i64* %RAX.i622, align 8
  %1335 = add i64 %1329, -20
  %1336 = add i64 %1328, 6
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = sub i32 %1333, %1338
  %1340 = icmp ult i32 %1333, %1338
  %1341 = zext i1 %1340 to i8
  store i8 %1341, i8* %14, align 1
  %1342 = and i32 %1339, 255
  %1343 = tail call i32 @llvm.ctpop.i32(i32 %1342)
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = xor i8 %1345, 1
  store i8 %1346, i8* %21, align 1
  %1347 = xor i32 %1338, %1333
  %1348 = xor i32 %1347, %1339
  %1349 = lshr i32 %1348, 4
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  store i8 %1351, i8* %26, align 1
  %1352 = icmp eq i32 %1339, 0
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %29, align 1
  %1354 = lshr i32 %1339, 31
  %1355 = trunc i32 %1354 to i8
  store i8 %1355, i8* %32, align 1
  %1356 = lshr i32 %1333, 31
  %1357 = lshr i32 %1338, 31
  %1358 = xor i32 %1357, %1356
  %1359 = xor i32 %1354, %1356
  %1360 = add nuw nsw i32 %1359, %1358
  %1361 = icmp eq i32 %1360, 2
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %38, align 1
  %1363 = icmp ne i8 %1355, 0
  %1364 = xor i1 %1363, %1361
  %.v97 = select i1 %1364, i64 12, i64 97
  %1365 = add i64 %1328, %.v97
  store i64 %1365, i64* %3, align 8
  br i1 %1364, label %block_4046be, label %block_.L_404713

block_4046be:                                     ; preds = %block_.L_4046b2
  %1366 = add i64 %1329, -88
  %1367 = add i64 %1365, 4
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %RAX.i622, align 8
  %1370 = add i64 %1365, 8
  store i64 %1370, i64* %3, align 8
  %1371 = load i32, i32* %1332, align 4
  %1372 = sext i32 %1371 to i64
  store i64 %1372, i64* %RCX.i1008, align 8
  %1373 = shl nsw i64 %1372, 3
  %1374 = add i64 %1373, %1369
  %1375 = add i64 %1365, 12
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i64*
  %1377 = load i64, i64* %1376, align 8
  store i64 %1377, i64* %RAX.i622, align 8
  %1378 = add i64 %1329, -100
  %1379 = add i64 %1365, 16
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i32*
  %1381 = load i32, i32* %1380, align 4
  %1382 = sext i32 %1381 to i64
  store i64 %1382, i64* %RCX.i1008, align 8
  %1383 = shl nsw i64 %1382, 2
  %1384 = add i64 %1383, %1377
  %1385 = add i64 %1365, 19
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = zext i32 %1387 to i64
  store i64 %1388, i64* %RDX.i993, align 8
  %1389 = add i64 %1329, -96
  %1390 = add i64 %1365, 23
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i64*
  %1392 = load i64, i64* %1391, align 8
  store i64 %1392, i64* %RAX.i622, align 8
  %1393 = add i64 %1365, 27
  store i64 %1393, i64* %3, align 8
  %1394 = load i32, i32* %1380, align 4
  %1395 = sext i32 %1394 to i64
  store i64 %1395, i64* %RCX.i1008, align 8
  %1396 = shl nsw i64 %1395, 2
  %1397 = add i64 %1392, %1396
  %1398 = add i64 %1365, 30
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i32*
  %1400 = load i32, i32* %1399, align 4
  %1401 = sub i32 %1387, %1400
  %1402 = icmp ult i32 %1387, %1400
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %14, align 1
  %1404 = and i32 %1401, 255
  %1405 = tail call i32 @llvm.ctpop.i32(i32 %1404)
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = xor i8 %1407, 1
  store i8 %1408, i8* %21, align 1
  %1409 = xor i32 %1400, %1387
  %1410 = xor i32 %1409, %1401
  %1411 = lshr i32 %1410, 4
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  store i8 %1413, i8* %26, align 1
  %1414 = icmp eq i32 %1401, 0
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %29, align 1
  %1416 = lshr i32 %1401, 31
  %1417 = trunc i32 %1416 to i8
  store i8 %1417, i8* %32, align 1
  %1418 = lshr i32 %1387, 31
  %1419 = lshr i32 %1400, 31
  %1420 = xor i32 %1419, %1418
  %1421 = xor i32 %1416, %1418
  %1422 = add nuw nsw i32 %1421, %1420
  %1423 = icmp eq i32 %1422, 2
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %38, align 1
  %1425 = icmp ne i8 %1417, 0
  %1426 = xor i1 %1425, %1423
  %1427 = or i1 %1414, %1426
  %.v98 = select i1 %1427, i64 66, i64 36
  %1428 = add i64 %1365, %.v98
  store i64 %1428, i64* %3, align 8
  br i1 %1427, label %block_.L_404700, label %block_4046e2

block_4046e2:                                     ; preds = %block_4046be
  %1429 = add i64 %1428, 4
  store i64 %1429, i64* %3, align 8
  %1430 = load i64, i64* %1368, align 8
  store i64 %1430, i64* %RAX.i622, align 8
  %1431 = add i64 %1428, 8
  store i64 %1431, i64* %3, align 8
  %1432 = load i32, i32* %1332, align 4
  %1433 = sext i32 %1432 to i64
  store i64 %1433, i64* %RCX.i1008, align 8
  %1434 = shl nsw i64 %1433, 3
  %1435 = add i64 %1434, %1430
  %1436 = add i64 %1428, 12
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i64*
  %1438 = load i64, i64* %1437, align 8
  store i64 %1438, i64* %RAX.i622, align 8
  %1439 = add i64 %1428, 16
  store i64 %1439, i64* %3, align 8
  %1440 = load i32, i32* %1380, align 4
  %1441 = sext i32 %1440 to i64
  store i64 %1441, i64* %RCX.i1008, align 8
  %1442 = shl nsw i64 %1441, 2
  %1443 = add i64 %1442, %1438
  %1444 = add i64 %1428, 19
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RDX.i993, align 8
  %1448 = add i64 %1428, 23
  store i64 %1448, i64* %3, align 8
  %1449 = load i64, i64* %1391, align 8
  store i64 %1449, i64* %RAX.i622, align 8
  %1450 = add i64 %1428, 27
  store i64 %1450, i64* %3, align 8
  %1451 = load i32, i32* %1380, align 4
  %1452 = sext i32 %1451 to i64
  store i64 %1452, i64* %RCX.i1008, align 8
  %1453 = shl nsw i64 %1452, 2
  %1454 = add i64 %1453, %1449
  %1455 = add i64 %1428, 30
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i32*
  store i32 %1446, i32* %1456, align 4
  %.pre67 = load i64, i64* %3, align 8
  %.pre68 = load i64, i64* %RBP.i, align 8
  br label %block_.L_404700

block_.L_404700:                                  ; preds = %block_4046e2, %block_4046be
  %1457 = phi i64 [ %.pre68, %block_4046e2 ], [ %1329, %block_4046be ]
  %1458 = phi i64 [ %.pre67, %block_4046e2 ], [ %1428, %block_4046be ]
  %1459 = add i64 %1457, -108
  %1460 = add i64 %1458, 8
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i32*
  %1462 = load i32, i32* %1461, align 4
  %1463 = add i32 %1462, 1
  %1464 = zext i32 %1463 to i64
  store i64 %1464, i64* %RAX.i622, align 8
  %1465 = icmp eq i32 %1462, -1
  %1466 = icmp eq i32 %1463, 0
  %1467 = or i1 %1465, %1466
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %14, align 1
  %1469 = and i32 %1463, 255
  %1470 = tail call i32 @llvm.ctpop.i32(i32 %1469)
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %21, align 1
  %1474 = xor i32 %1463, %1462
  %1475 = lshr i32 %1474, 4
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  store i8 %1477, i8* %26, align 1
  %1478 = zext i1 %1466 to i8
  store i8 %1478, i8* %29, align 1
  %1479 = lshr i32 %1463, 31
  %1480 = trunc i32 %1479 to i8
  store i8 %1480, i8* %32, align 1
  %1481 = lshr i32 %1462, 31
  %1482 = xor i32 %1479, %1481
  %1483 = add nuw nsw i32 %1482, %1479
  %1484 = icmp eq i32 %1483, 2
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %38, align 1
  %1486 = add i64 %1458, 14
  store i64 %1486, i64* %3, align 8
  store i32 %1463, i32* %1461, align 4
  %1487 = load i64, i64* %3, align 8
  %1488 = add i64 %1487, -92
  store i64 %1488, i64* %3, align 8
  br label %block_.L_4046b2

block_.L_404713:                                  ; preds = %block_.L_4046b2
  %1489 = add i64 %1329, -96
  %1490 = add i64 %1365, 4
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i64*
  %1492 = load i64, i64* %1491, align 8
  store i64 %1492, i64* %RAX.i622, align 8
  %1493 = add i64 %1329, -100
  %1494 = add i64 %1365, 8
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i32*
  %1496 = load i32, i32* %1495, align 4
  %1497 = sext i32 %1496 to i64
  store i64 %1497, i64* %RCX.i1008, align 8
  %1498 = shl nsw i64 %1497, 2
  %1499 = add i64 %1498, %1492
  %1500 = add i64 %1365, 11
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i32*
  %1502 = load i32, i32* %1501, align 4
  %1503 = zext i32 %1502 to i64
  store i64 %1503, i64* %RDX.i993, align 8
  %1504 = add i64 %1329, -60
  %1505 = add i64 %1365, 14
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i32*
  %1507 = load i32, i32* %1506, align 4
  %1508 = add i32 %1507, %1502
  %1509 = zext i32 %1508 to i64
  store i64 %1509, i64* %RDX.i993, align 8
  %1510 = icmp ult i32 %1508, %1502
  %1511 = icmp ult i32 %1508, %1507
  %1512 = or i1 %1510, %1511
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %14, align 1
  %1514 = and i32 %1508, 255
  %1515 = tail call i32 @llvm.ctpop.i32(i32 %1514)
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  %1518 = xor i8 %1517, 1
  store i8 %1518, i8* %21, align 1
  %1519 = xor i32 %1507, %1502
  %1520 = xor i32 %1519, %1508
  %1521 = lshr i32 %1520, 4
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  store i8 %1523, i8* %26, align 1
  %1524 = icmp eq i32 %1508, 0
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %29, align 1
  %1526 = lshr i32 %1508, 31
  %1527 = trunc i32 %1526 to i8
  store i8 %1527, i8* %32, align 1
  %1528 = lshr i32 %1502, 31
  %1529 = lshr i32 %1507, 31
  %1530 = xor i32 %1526, %1528
  %1531 = xor i32 %1526, %1529
  %1532 = add nuw nsw i32 %1530, %1531
  %1533 = icmp eq i32 %1532, 2
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %38, align 1
  %1535 = add i64 %1365, 17
  store i64 %1535, i64* %3, align 8
  store i32 %1508, i32* %1506, align 4
  %1536 = load i64, i64* %RBP.i, align 8
  %1537 = add i64 %1536, -100
  %1538 = load i64, i64* %3, align 8
  %1539 = add i64 %1538, 3
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1537 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = add i32 %1541, 1
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RAX.i622, align 8
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
  %1565 = add i64 %1538, 9
  store i64 %1565, i64* %3, align 8
  store i32 %1542, i32* %1540, align 4
  %1566 = load i64, i64* %3, align 8
  %1567 = add i64 %1566, -157
  store i64 %1567, i64* %3, align 8
  br label %block_.L_404690

block_.L_404732:                                  ; preds = %block_.L_404690
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI.i961, align 8
  store i64 581, i64* %RSI.i1020, align 8
  %1568 = add i64 %1275, -20
  %1569 = add i64 %1311, 19
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = sext i32 %1571 to i64
  %1573 = shl nsw i64 %1572, 3
  store i64 %1573, i64* %RAX.i622, align 8
  %.lobit23 = lshr i32 %1571, 31
  %1574 = trunc i32 %.lobit23 to i8
  store i8 %1574, i8* %14, align 1
  %1575 = trunc i64 %1573 to i32
  %1576 = and i32 %1575, 248
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1581 = icmp eq i32 %1571, 0
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %29, align 1
  %1583 = lshr i64 %1572, 60
  %1584 = trunc i64 %1583 to i8
  %1585 = and i8 %1584, 1
  store i8 %1585, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1573, i64* %RDX.i993, align 8
  %1586 = add i64 %1311, 268590
  %1587 = add i64 %1311, 31
  %1588 = load i64, i64* %6, align 8
  %1589 = add i64 %1588, -8
  %1590 = inttoptr i64 %1589 to i64*
  store i64 %1587, i64* %1590, align 8
  store i64 %1589, i64* %6, align 8
  store i64 %1586, i64* %3, align 8
  %call2_40474c = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %1586, %struct.Memory* %MEMORY.5)
  %1591 = load i64, i64* %RBP.i, align 8
  %1592 = add i64 %1591, -56
  %1593 = load i64, i64* %RAX.i622, align 8
  %1594 = load i64, i64* %3, align 8
  %1595 = add i64 %1594, 4
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1592 to i64*
  store i64 %1593, i64* %1596, align 8
  %1597 = load i64, i64* %RBP.i, align 8
  %1598 = add i64 %1597, -108
  %1599 = load i64, i64* %3, align 8
  %1600 = add i64 %1599, 7
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1598 to i32*
  store i32 0, i32* %1601, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_40475c

block_.L_40475c:                                  ; preds = %block_404768, %block_.L_404732
  %1602 = phi i64 [ %1720, %block_404768 ], [ %.pre69, %block_.L_404732 ]
  %1603 = load i64, i64* %RBP.i, align 8
  %1604 = add i64 %1603, -108
  %1605 = add i64 %1602, 3
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = zext i32 %1607 to i64
  store i64 %1608, i64* %RAX.i622, align 8
  %1609 = add i64 %1603, -20
  %1610 = add i64 %1602, 6
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = sub i32 %1607, %1612
  %1614 = icmp ult i32 %1607, %1612
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %14, align 1
  %1616 = and i32 %1613, 255
  %1617 = tail call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %21, align 1
  %1621 = xor i32 %1612, %1607
  %1622 = xor i32 %1621, %1613
  %1623 = lshr i32 %1622, 4
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  store i8 %1625, i8* %26, align 1
  %1626 = icmp eq i32 %1613, 0
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %29, align 1
  %1628 = lshr i32 %1613, 31
  %1629 = trunc i32 %1628 to i8
  store i8 %1629, i8* %32, align 1
  %1630 = lshr i32 %1607, 31
  %1631 = lshr i32 %1612, 31
  %1632 = xor i32 %1631, %1630
  %1633 = xor i32 %1628, %1630
  %1634 = add nuw nsw i32 %1633, %1632
  %1635 = icmp eq i32 %1634, 2
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %38, align 1
  %1637 = icmp ne i8 %1629, 0
  %1638 = xor i1 %1637, %1635
  %.v90 = select i1 %1638, i64 12, i64 74
  %1639 = add i64 %1602, %.v90
  store i64 %1639, i64* %3, align 8
  br i1 %1638, label %block_404768, label %block_.L_4047a6

block_404768:                                     ; preds = %block_.L_40475c
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI.i961, align 8
  store i64 583, i64* %RSI.i1020, align 8
  %1640 = add i64 %1603, -60
  %1641 = add i64 %1639, 18
  store i64 %1641, i64* %3, align 8
  %1642 = inttoptr i64 %1640 to i32*
  %1643 = load i32, i32* %1642, align 4
  %1644 = add i32 %1643, 1
  %1645 = zext i32 %1644 to i64
  store i64 %1645, i64* %RAX.i622, align 8
  %1646 = icmp eq i32 %1643, -1
  %1647 = icmp eq i32 %1644, 0
  %1648 = or i1 %1646, %1647
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %14, align 1
  %1650 = and i32 %1644, 255
  %1651 = tail call i32 @llvm.ctpop.i32(i32 %1650)
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = xor i8 %1653, 1
  store i8 %1654, i8* %21, align 1
  %1655 = xor i32 %1644, %1643
  %1656 = lshr i32 %1655, 4
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  store i8 %1658, i8* %26, align 1
  %1659 = zext i1 %1647 to i8
  store i8 %1659, i8* %29, align 1
  %1660 = lshr i32 %1644, 31
  %1661 = trunc i32 %1660 to i8
  store i8 %1661, i8* %32, align 1
  %1662 = lshr i32 %1643, 31
  %1663 = xor i32 %1660, %1662
  %1664 = add nuw nsw i32 %1663, %1660
  %1665 = icmp eq i32 %1664, 2
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %38, align 1
  %1667 = sext i32 %1644 to i64
  store i64 %1667, i64* %RCX.i1008, align 8
  store i64 %1667, i64* %RDX.i993, align 8
  %1668 = add i64 %1639, 268536
  %1669 = add i64 %1639, 36
  %1670 = load i64, i64* %6, align 8
  %1671 = add i64 %1670, -8
  %1672 = inttoptr i64 %1671 to i64*
  store i64 %1669, i64* %1672, align 8
  store i64 %1671, i64* %6, align 8
  store i64 %1668, i64* %3, align 8
  %call2_404787 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %1668, %struct.Memory* %call2_40474c)
  %1673 = load i64, i64* %RBP.i, align 8
  %1674 = add i64 %1673, -56
  %1675 = load i64, i64* %3, align 8
  %1676 = add i64 %1675, 4
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1674 to i64*
  %1678 = load i64, i64* %1677, align 8
  store i64 %1678, i64* %RCX.i1008, align 8
  %1679 = add i64 %1673, -108
  %1680 = add i64 %1675, 8
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i32*
  %1682 = load i32, i32* %1681, align 4
  %1683 = sext i32 %1682 to i64
  store i64 %1683, i64* %RDX.i993, align 8
  %1684 = shl nsw i64 %1683, 3
  %1685 = add i64 %1684, %1678
  %1686 = load i64, i64* %RAX.i622, align 8
  %1687 = add i64 %1675, 12
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1685 to i64*
  store i64 %1686, i64* %1688, align 8
  %1689 = load i64, i64* %RBP.i, align 8
  %1690 = add i64 %1689, -108
  %1691 = load i64, i64* %3, align 8
  %1692 = add i64 %1691, 3
  store i64 %1692, i64* %3, align 8
  %1693 = inttoptr i64 %1690 to i32*
  %1694 = load i32, i32* %1693, align 4
  %1695 = add i32 %1694, 1
  %1696 = zext i32 %1695 to i64
  store i64 %1696, i64* %RAX.i622, align 8
  %1697 = icmp eq i32 %1694, -1
  %1698 = icmp eq i32 %1695, 0
  %1699 = or i1 %1697, %1698
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %14, align 1
  %1701 = and i32 %1695, 255
  %1702 = tail call i32 @llvm.ctpop.i32(i32 %1701)
  %1703 = trunc i32 %1702 to i8
  %1704 = and i8 %1703, 1
  %1705 = xor i8 %1704, 1
  store i8 %1705, i8* %21, align 1
  %1706 = xor i32 %1695, %1694
  %1707 = lshr i32 %1706, 4
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  store i8 %1709, i8* %26, align 1
  %1710 = zext i1 %1698 to i8
  store i8 %1710, i8* %29, align 1
  %1711 = lshr i32 %1695, 31
  %1712 = trunc i32 %1711 to i8
  store i8 %1712, i8* %32, align 1
  %1713 = lshr i32 %1694, 31
  %1714 = xor i32 %1711, %1713
  %1715 = add nuw nsw i32 %1714, %1711
  %1716 = icmp eq i32 %1715, 2
  %1717 = zext i1 %1716 to i8
  store i8 %1717, i8* %38, align 1
  %1718 = add i64 %1691, 9
  store i64 %1718, i64* %3, align 8
  store i32 %1695, i32* %1693, align 4
  %1719 = load i64, i64* %3, align 8
  %1720 = add i64 %1719, -69
  store i64 %1720, i64* %3, align 8
  br label %block_.L_40475c

block_.L_4047a6:                                  ; preds = %block_.L_40475c
  %1721 = add i64 %1639, 7
  store i64 %1721, i64* %3, align 8
  store i32 0, i32* %1606, align 4
  %DIL.i306 = bitcast %union.anon* %42 to i8*
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_4047ad

block_.L_4047ad:                                  ; preds = %block_.L_4048e7, %block_.L_4047a6
  %1722 = phi i64 [ %2356, %block_.L_4048e7 ], [ %.pre70, %block_.L_4047a6 ]
  %1723 = load i64, i64* %RBP.i, align 8
  %1724 = add i64 %1723, -108
  %1725 = add i64 %1722, 3
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i32*
  %1727 = load i32, i32* %1726, align 4
  %1728 = zext i32 %1727 to i64
  store i64 %1728, i64* %RAX.i622, align 8
  %1729 = add i64 %1723, -20
  %1730 = add i64 %1722, 6
  store i64 %1730, i64* %3, align 8
  %1731 = inttoptr i64 %1729 to i32*
  %1732 = load i32, i32* %1731, align 4
  %1733 = sub i32 %1727, %1732
  %1734 = icmp ult i32 %1727, %1732
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %14, align 1
  %1736 = and i32 %1733, 255
  %1737 = tail call i32 @llvm.ctpop.i32(i32 %1736)
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  %1740 = xor i8 %1739, 1
  store i8 %1740, i8* %21, align 1
  %1741 = xor i32 %1732, %1727
  %1742 = xor i32 %1741, %1733
  %1743 = lshr i32 %1742, 4
  %1744 = trunc i32 %1743 to i8
  %1745 = and i8 %1744, 1
  store i8 %1745, i8* %26, align 1
  %1746 = icmp eq i32 %1733, 0
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %29, align 1
  %1748 = lshr i32 %1733, 31
  %1749 = trunc i32 %1748 to i8
  store i8 %1749, i8* %32, align 1
  %1750 = lshr i32 %1727, 31
  %1751 = lshr i32 %1732, 31
  %1752 = xor i32 %1751, %1750
  %1753 = xor i32 %1748, %1750
  %1754 = add nuw nsw i32 %1753, %1752
  %1755 = icmp eq i32 %1754, 2
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %38, align 1
  %1757 = icmp ne i8 %1749, 0
  %1758 = xor i1 %1757, %1755
  %.v91 = select i1 %1758, i64 12, i64 348
  %1759 = add i64 %1722, %.v91
  store i64 %1759, i64* %3, align 8
  br i1 %1758, label %block_4047b9, label %block_.L_404909

block_4047b9:                                     ; preds = %block_.L_4047ad
  %1760 = add i64 %1723, -104
  %1761 = add i64 %1759, 7
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i32*
  store i32 0, i32* %1762, align 4
  %1763 = load i64, i64* %RBP.i, align 8
  %1764 = add i64 %1763, -100
  %1765 = load i64, i64* %3, align 8
  %1766 = add i64 %1765, 7
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1764 to i32*
  store i32 0, i32* %1767, align 4
  %1768 = load i64, i64* %RBP.i, align 8
  %1769 = add i64 %1768, -112
  %1770 = load i64, i64* %3, align 8
  %1771 = add i64 %1770, 7
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1769 to i32*
  store i32 0, i32* %1772, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_4047ce

block_.L_4047ce:                                  ; preds = %block_.L_4048d4, %block_4047b9
  %1773 = phi i64 [ %2302, %block_.L_4048d4 ], [ %.pre72, %block_4047b9 ]
  %1774 = load i64, i64* %RBP.i, align 8
  %1775 = add i64 %1774, -112
  %1776 = add i64 %1773, 3
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i32*
  %1778 = load i32, i32* %1777, align 4
  %1779 = zext i32 %1778 to i64
  store i64 %1779, i64* %RAX.i622, align 8
  %1780 = add i64 %1774, -76
  %1781 = add i64 %1773, 6
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i32*
  %1783 = load i32, i32* %1782, align 4
  %1784 = sub i32 %1778, %1783
  %1785 = icmp ult i32 %1778, %1783
  %1786 = zext i1 %1785 to i8
  store i8 %1786, i8* %14, align 1
  %1787 = and i32 %1784, 255
  %1788 = tail call i32 @llvm.ctpop.i32(i32 %1787)
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  %1791 = xor i8 %1790, 1
  store i8 %1791, i8* %21, align 1
  %1792 = xor i32 %1783, %1778
  %1793 = xor i32 %1792, %1784
  %1794 = lshr i32 %1793, 4
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  store i8 %1796, i8* %26, align 1
  %1797 = icmp eq i32 %1784, 0
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %29, align 1
  %1799 = lshr i32 %1784, 31
  %1800 = trunc i32 %1799 to i8
  store i8 %1800, i8* %32, align 1
  %1801 = lshr i32 %1778, 31
  %1802 = lshr i32 %1783, 31
  %1803 = xor i32 %1802, %1801
  %1804 = xor i32 %1799, %1801
  %1805 = add nuw nsw i32 %1804, %1803
  %1806 = icmp eq i32 %1805, 2
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %38, align 1
  %1808 = icmp ne i8 %1800, 0
  %1809 = xor i1 %1808, %1806
  %.demorgan83 = or i1 %1797, %1809
  %.v93 = select i1 %.demorgan83, i64 12, i64 281
  %1810 = add i64 %1773, %.v93
  store i64 %1810, i64* %3, align 8
  br i1 %.demorgan83, label %block_4047da, label %block_.L_4048e7

block_4047da:                                     ; preds = %block_.L_4047ce
  %1811 = add i64 %1774, -116
  %1812 = add i64 %1810, 7
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1811 to i32*
  store i32 0, i32* %1813, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_4047e1

block_.L_4047e1:                                  ; preds = %block_4047fd, %block_4047da
  %1814 = phi i64 [ %2004, %block_4047fd ], [ %.pre73, %block_4047da ]
  %1815 = load i64, i64* %RBP.i, align 8
  %1816 = add i64 %1815, -116
  %1817 = add i64 %1814, 3
  store i64 %1817, i64* %3, align 8
  %1818 = inttoptr i64 %1816 to i32*
  %1819 = load i32, i32* %1818, align 4
  %1820 = zext i32 %1819 to i64
  store i64 %1820, i64* %RAX.i622, align 8
  %1821 = add i64 %1815, -88
  %1822 = add i64 %1814, 7
  store i64 %1822, i64* %3, align 8
  %1823 = inttoptr i64 %1821 to i64*
  %1824 = load i64, i64* %1823, align 8
  store i64 %1824, i64* %RCX.i1008, align 8
  %1825 = add i64 %1815, -108
  %1826 = add i64 %1814, 11
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1825 to i32*
  %1828 = load i32, i32* %1827, align 4
  %1829 = sext i32 %1828 to i64
  store i64 %1829, i64* %RDX.i993, align 8
  %1830 = shl nsw i64 %1829, 3
  %1831 = add i64 %1830, %1824
  %1832 = add i64 %1814, 15
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i64*
  %1834 = load i64, i64* %1833, align 8
  store i64 %1834, i64* %RCX.i1008, align 8
  %1835 = add i64 %1815, -112
  %1836 = add i64 %1814, 19
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i32*
  %1838 = load i32, i32* %1837, align 4
  %1839 = sext i32 %1838 to i64
  store i64 %1839, i64* %RDX.i993, align 8
  %1840 = shl nsw i64 %1839, 2
  %1841 = add i64 %1834, %1840
  %1842 = add i64 %1814, 22
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i32*
  %1844 = load i32, i32* %1843, align 4
  %1845 = sub i32 %1819, %1844
  %1846 = icmp ult i32 %1819, %1844
  %1847 = zext i1 %1846 to i8
  store i8 %1847, i8* %14, align 1
  %1848 = and i32 %1845, 255
  %1849 = tail call i32 @llvm.ctpop.i32(i32 %1848)
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = xor i8 %1851, 1
  store i8 %1852, i8* %21, align 1
  %1853 = xor i32 %1844, %1819
  %1854 = xor i32 %1853, %1845
  %1855 = lshr i32 %1854, 4
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  store i8 %1857, i8* %26, align 1
  %1858 = icmp eq i32 %1845, 0
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %29, align 1
  %1860 = lshr i32 %1845, 31
  %1861 = trunc i32 %1860 to i8
  store i8 %1861, i8* %32, align 1
  %1862 = lshr i32 %1819, 31
  %1863 = lshr i32 %1844, 31
  %1864 = xor i32 %1863, %1862
  %1865 = xor i32 %1860, %1862
  %1866 = add nuw nsw i32 %1865, %1864
  %1867 = icmp eq i32 %1866, 2
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %38, align 1
  %1869 = icmp ne i8 %1861, 0
  %1870 = xor i1 %1869, %1867
  %.v94 = select i1 %1870, i64 28, i64 102
  %1871 = add i64 %1814, %.v94
  store i64 %1871, i64* %3, align 8
  br i1 %1870, label %block_4047fd, label %block_.L_404847

block_4047fd:                                     ; preds = %block_.L_4047e1
  %1872 = add i64 %1815, -8
  %1873 = add i64 %1871, 4
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1872 to i64*
  %1875 = load i64, i64* %1874, align 8
  store i64 %1875, i64* %RAX.i622, align 8
  %1876 = add i64 %1871, 8
  store i64 %1876, i64* %3, align 8
  %1877 = load i32, i32* %1827, align 4
  %1878 = sext i32 %1877 to i64
  store i64 %1878, i64* %RCX.i1008, align 8
  %1879 = shl nsw i64 %1878, 3
  %1880 = add i64 %1879, %1875
  %1881 = add i64 %1871, 12
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i64*
  %1883 = load i64, i64* %1882, align 8
  store i64 %1883, i64* %RAX.i622, align 8
  %1884 = add i64 %1815, -104
  %1885 = add i64 %1871, 15
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i32*
  %1887 = load i32, i32* %1886, align 4
  %1888 = zext i32 %1887 to i64
  store i64 %1888, i64* %RDX.i993, align 8
  %1889 = add i32 %1887, 1
  %1890 = zext i32 %1889 to i64
  store i64 %1890, i64* %RSI.i1020, align 8
  %1891 = icmp eq i32 %1887, -1
  %1892 = icmp eq i32 %1889, 0
  %1893 = or i1 %1891, %1892
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %14, align 1
  %1895 = and i32 %1889, 255
  %1896 = tail call i32 @llvm.ctpop.i32(i32 %1895)
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  %1899 = xor i8 %1898, 1
  store i8 %1899, i8* %21, align 1
  %1900 = xor i32 %1889, %1887
  %1901 = lshr i32 %1900, 4
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  store i8 %1903, i8* %26, align 1
  %1904 = zext i1 %1892 to i8
  store i8 %1904, i8* %29, align 1
  %1905 = lshr i32 %1889, 31
  %1906 = trunc i32 %1905 to i8
  store i8 %1906, i8* %32, align 1
  %1907 = lshr i32 %1887, 31
  %1908 = xor i32 %1905, %1907
  %1909 = add nuw nsw i32 %1908, %1905
  %1910 = icmp eq i32 %1909, 2
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %38, align 1
  %1912 = add i64 %1871, 23
  store i64 %1912, i64* %3, align 8
  store i32 %1889, i32* %1886, align 4
  %1913 = load i32, i32* %EDX.i1017, align 4
  %1914 = load i64, i64* %3, align 8
  %1915 = sext i32 %1913 to i64
  store i64 %1915, i64* %RCX.i1008, align 8
  %1916 = load i64, i64* %RAX.i622, align 8
  %1917 = add i64 %1916, %1915
  %1918 = add i64 %1914, 7
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1917 to i8*
  %1920 = load i8, i8* %1919, align 1
  store i8 %1920, i8* %DIL.i306, align 1
  %1921 = load i64, i64* %RBP.i, align 8
  %1922 = add i64 %1921, -56
  %1923 = add i64 %1914, 11
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1922 to i64*
  %1925 = load i64, i64* %1924, align 8
  store i64 %1925, i64* %RAX.i622, align 8
  %1926 = add i64 %1921, -108
  %1927 = add i64 %1914, 15
  store i64 %1927, i64* %3, align 8
  %1928 = inttoptr i64 %1926 to i32*
  %1929 = load i32, i32* %1928, align 4
  %1930 = sext i32 %1929 to i64
  store i64 %1930, i64* %RCX.i1008, align 8
  %1931 = shl nsw i64 %1930, 3
  %1932 = add i64 %1931, %1925
  %1933 = add i64 %1914, 19
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i64*
  %1935 = load i64, i64* %1934, align 8
  store i64 %1935, i64* %RAX.i622, align 8
  %1936 = add i64 %1921, -100
  %1937 = add i64 %1914, 22
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  %1939 = load i32, i32* %1938, align 4
  %1940 = zext i32 %1939 to i64
  store i64 %1940, i64* %RDX.i993, align 8
  %1941 = add i32 %1939, 1
  %1942 = zext i32 %1941 to i64
  store i64 %1942, i64* %RSI.i1020, align 8
  %1943 = icmp eq i32 %1939, -1
  %1944 = icmp eq i32 %1941, 0
  %1945 = or i1 %1943, %1944
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %14, align 1
  %1947 = and i32 %1941, 255
  %1948 = tail call i32 @llvm.ctpop.i32(i32 %1947)
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  %1951 = xor i8 %1950, 1
  store i8 %1951, i8* %21, align 1
  %1952 = xor i32 %1941, %1939
  %1953 = lshr i32 %1952, 4
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  store i8 %1955, i8* %26, align 1
  %1956 = zext i1 %1944 to i8
  store i8 %1956, i8* %29, align 1
  %1957 = lshr i32 %1941, 31
  %1958 = trunc i32 %1957 to i8
  store i8 %1958, i8* %32, align 1
  %1959 = lshr i32 %1939, 31
  %1960 = xor i32 %1957, %1959
  %1961 = add nuw nsw i32 %1960, %1957
  %1962 = icmp eq i32 %1961, 2
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %38, align 1
  %1964 = add i64 %1914, 30
  store i64 %1964, i64* %3, align 8
  store i32 %1941, i32* %1938, align 4
  %1965 = load i32, i32* %EDX.i1017, align 4
  %1966 = load i64, i64* %3, align 8
  %1967 = sext i32 %1965 to i64
  store i64 %1967, i64* %RCX.i1008, align 8
  %1968 = load i64, i64* %RAX.i622, align 8
  %1969 = add i64 %1968, %1967
  %1970 = load i8, i8* %DIL.i306, align 1
  %1971 = add i64 %1966, 7
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1969 to i8*
  store i8 %1970, i8* %1972, align 1
  %1973 = load i64, i64* %RBP.i, align 8
  %1974 = add i64 %1973, -116
  %1975 = load i64, i64* %3, align 8
  %1976 = add i64 %1975, 3
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1974 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = add i32 %1978, 1
  %1980 = zext i32 %1979 to i64
  store i64 %1980, i64* %RAX.i622, align 8
  %1981 = icmp eq i32 %1978, -1
  %1982 = icmp eq i32 %1979, 0
  %1983 = or i1 %1981, %1982
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %14, align 1
  %1985 = and i32 %1979, 255
  %1986 = tail call i32 @llvm.ctpop.i32(i32 %1985)
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = xor i8 %1988, 1
  store i8 %1989, i8* %21, align 1
  %1990 = xor i32 %1979, %1978
  %1991 = lshr i32 %1990, 4
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  store i8 %1993, i8* %26, align 1
  %1994 = zext i1 %1982 to i8
  store i8 %1994, i8* %29, align 1
  %1995 = lshr i32 %1979, 31
  %1996 = trunc i32 %1995 to i8
  store i8 %1996, i8* %32, align 1
  %1997 = lshr i32 %1978, 31
  %1998 = xor i32 %1995, %1997
  %1999 = add nuw nsw i32 %1998, %1995
  %2000 = icmp eq i32 %1999, 2
  %2001 = zext i1 %2000 to i8
  store i8 %2001, i8* %38, align 1
  %2002 = add i64 %1975, 9
  store i64 %2002, i64* %3, align 8
  store i32 %1979, i32* %1977, align 4
  %2003 = load i64, i64* %3, align 8
  %2004 = add i64 %2003, -97
  store i64 %2004, i64* %3, align 8
  br label %block_.L_4047e1

block_.L_404847:                                  ; preds = %block_.L_4047e1
  %2005 = add i64 %1871, 5
  br label %block_.L_40484c

block_.L_40484c:                                  ; preds = %block_404860, %block_.L_404847
  %2006 = phi i64 [ %1815, %block_.L_404847 ], [ %.pre74, %block_404860 ]
  %storemerge = phi i64 [ %2005, %block_.L_404847 ], [ %2134, %block_404860 ]
  %2007 = add i64 %2006, -116
  %2008 = add i64 %storemerge, 3
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2007 to i32*
  %2010 = load i32, i32* %2009, align 4
  %2011 = zext i32 %2010 to i64
  store i64 %2011, i64* %RAX.i622, align 8
  %2012 = add i64 %2006, -96
  %2013 = add i64 %storemerge, 7
  store i64 %2013, i64* %3, align 8
  %2014 = inttoptr i64 %2012 to i64*
  %2015 = load i64, i64* %2014, align 8
  store i64 %2015, i64* %RCX.i1008, align 8
  %2016 = add i64 %2006, -112
  %2017 = add i64 %storemerge, 11
  store i64 %2017, i64* %3, align 8
  %2018 = inttoptr i64 %2016 to i32*
  %2019 = load i32, i32* %2018, align 4
  %2020 = sext i32 %2019 to i64
  store i64 %2020, i64* %RDX.i993, align 8
  %2021 = shl nsw i64 %2020, 2
  %2022 = add i64 %2015, %2021
  %2023 = add i64 %storemerge, 14
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2022 to i32*
  %2025 = load i32, i32* %2024, align 4
  %2026 = sub i32 %2010, %2025
  %2027 = icmp ult i32 %2010, %2025
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %14, align 1
  %2029 = and i32 %2026, 255
  %2030 = tail call i32 @llvm.ctpop.i32(i32 %2029)
  %2031 = trunc i32 %2030 to i8
  %2032 = and i8 %2031, 1
  %2033 = xor i8 %2032, 1
  store i8 %2033, i8* %21, align 1
  %2034 = xor i32 %2025, %2010
  %2035 = xor i32 %2034, %2026
  %2036 = lshr i32 %2035, 4
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  store i8 %2038, i8* %26, align 1
  %2039 = icmp eq i32 %2026, 0
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %29, align 1
  %2041 = lshr i32 %2026, 31
  %2042 = trunc i32 %2041 to i8
  store i8 %2042, i8* %32, align 1
  %2043 = lshr i32 %2010, 31
  %2044 = lshr i32 %2025, 31
  %2045 = xor i32 %2044, %2043
  %2046 = xor i32 %2041, %2043
  %2047 = add nuw nsw i32 %2046, %2045
  %2048 = icmp eq i32 %2047, 2
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %38, align 1
  %2050 = icmp ne i8 %2042, 0
  %2051 = xor i1 %2050, %2048
  %.v95 = select i1 %2051, i64 20, i64 64
  %2052 = add i64 %storemerge, %.v95
  store i64 %2052, i64* %3, align 8
  br i1 %2051, label %block_404860, label %block_.L_40488c

block_404860:                                     ; preds = %block_.L_40484c
  %2053 = add i64 %2006, -56
  %2054 = add i64 %2052, 4
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i64*
  %2056 = load i64, i64* %2055, align 8
  store i64 %2056, i64* %RAX.i622, align 8
  %2057 = add i64 %2006, -108
  %2058 = add i64 %2052, 8
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to i32*
  %2060 = load i32, i32* %2059, align 4
  %2061 = sext i32 %2060 to i64
  store i64 %2061, i64* %RCX.i1008, align 8
  %2062 = shl nsw i64 %2061, 3
  %2063 = add i64 %2062, %2056
  %2064 = add i64 %2052, 12
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i64*
  %2066 = load i64, i64* %2065, align 8
  store i64 %2066, i64* %RAX.i622, align 8
  %2067 = add i64 %2006, -100
  %2068 = add i64 %2052, 15
  store i64 %2068, i64* %3, align 8
  %2069 = inttoptr i64 %2067 to i32*
  %2070 = load i32, i32* %2069, align 4
  %2071 = zext i32 %2070 to i64
  store i64 %2071, i64* %RDX.i993, align 8
  %2072 = add i32 %2070, 1
  %2073 = zext i32 %2072 to i64
  store i64 %2073, i64* %RSI.i1020, align 8
  %2074 = icmp eq i32 %2070, -1
  %2075 = icmp eq i32 %2072, 0
  %2076 = or i1 %2074, %2075
  %2077 = zext i1 %2076 to i8
  store i8 %2077, i8* %14, align 1
  %2078 = and i32 %2072, 255
  %2079 = tail call i32 @llvm.ctpop.i32(i32 %2078)
  %2080 = trunc i32 %2079 to i8
  %2081 = and i8 %2080, 1
  %2082 = xor i8 %2081, 1
  store i8 %2082, i8* %21, align 1
  %2083 = xor i32 %2072, %2070
  %2084 = lshr i32 %2083, 4
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  store i8 %2086, i8* %26, align 1
  %2087 = zext i1 %2075 to i8
  store i8 %2087, i8* %29, align 1
  %2088 = lshr i32 %2072, 31
  %2089 = trunc i32 %2088 to i8
  store i8 %2089, i8* %32, align 1
  %2090 = lshr i32 %2070, 31
  %2091 = xor i32 %2088, %2090
  %2092 = add nuw nsw i32 %2091, %2088
  %2093 = icmp eq i32 %2092, 2
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %38, align 1
  %2095 = add i64 %2052, 23
  store i64 %2095, i64* %3, align 8
  store i32 %2072, i32* %2069, align 4
  %2096 = load i32, i32* %EDX.i1017, align 4
  %2097 = load i64, i64* %3, align 8
  %2098 = sext i32 %2096 to i64
  store i64 %2098, i64* %RCX.i1008, align 8
  %2099 = load i64, i64* %RAX.i622, align 8
  %2100 = add i64 %2099, %2098
  %2101 = add i64 %2097, 7
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2100 to i8*
  store i8 32, i8* %2102, align 1
  %2103 = load i64, i64* %RBP.i, align 8
  %2104 = add i64 %2103, -116
  %2105 = load i64, i64* %3, align 8
  %2106 = add i64 %2105, 3
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2104 to i32*
  %2108 = load i32, i32* %2107, align 4
  %2109 = add i32 %2108, 1
  %2110 = zext i32 %2109 to i64
  store i64 %2110, i64* %RAX.i622, align 8
  %2111 = icmp eq i32 %2108, -1
  %2112 = icmp eq i32 %2109, 0
  %2113 = or i1 %2111, %2112
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %14, align 1
  %2115 = and i32 %2109, 255
  %2116 = tail call i32 @llvm.ctpop.i32(i32 %2115)
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  %2119 = xor i8 %2118, 1
  store i8 %2119, i8* %21, align 1
  %2120 = xor i32 %2109, %2108
  %2121 = lshr i32 %2120, 4
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  store i8 %2123, i8* %26, align 1
  %2124 = zext i1 %2112 to i8
  store i8 %2124, i8* %29, align 1
  %2125 = lshr i32 %2109, 31
  %2126 = trunc i32 %2125 to i8
  store i8 %2126, i8* %32, align 1
  %2127 = lshr i32 %2108, 31
  %2128 = xor i32 %2125, %2127
  %2129 = add nuw nsw i32 %2128, %2125
  %2130 = icmp eq i32 %2129, 2
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %38, align 1
  %2132 = add i64 %2105, 9
  store i64 %2132, i64* %3, align 8
  store i32 %2109, i32* %2107, align 4
  %2133 = load i64, i64* %3, align 8
  %2134 = add i64 %2133, -59
  %2135 = add i64 %2133, 5
  store i64 %2135, i64* %3, align 8
  %.pre74 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40484c

block_.L_40488c:                                  ; preds = %block_.L_40484c
  %2136 = add i64 %2052, 3
  store i64 %2136, i64* %3, align 8
  %2137 = load i32, i32* %2018, align 4
  %2138 = zext i32 %2137 to i64
  store i64 %2138, i64* %RAX.i622, align 8
  %2139 = add i64 %2006, -76
  %2140 = add i64 %2052, 6
  store i64 %2140, i64* %3, align 8
  %2141 = inttoptr i64 %2139 to i32*
  %2142 = load i32, i32* %2141, align 4
  %2143 = sub i32 %2137, %2142
  %2144 = icmp ult i32 %2137, %2142
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %14, align 1
  %2146 = and i32 %2143, 255
  %2147 = tail call i32 @llvm.ctpop.i32(i32 %2146)
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  store i8 %2150, i8* %21, align 1
  %2151 = xor i32 %2142, %2137
  %2152 = xor i32 %2151, %2143
  %2153 = lshr i32 %2152, 4
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  store i8 %2155, i8* %26, align 1
  %2156 = icmp eq i32 %2143, 0
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %29, align 1
  %2158 = lshr i32 %2143, 31
  %2159 = trunc i32 %2158 to i8
  store i8 %2159, i8* %32, align 1
  %2160 = lshr i32 %2137, 31
  %2161 = lshr i32 %2142, 31
  %2162 = xor i32 %2161, %2160
  %2163 = xor i32 %2158, %2160
  %2164 = add nuw nsw i32 %2163, %2162
  %2165 = icmp eq i32 %2164, 2
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %38, align 1
  %.v96 = select i1 %2156, i64 72, i64 12
  %2167 = add i64 %2052, %.v96
  store i64 %2167, i64* %3, align 8
  br i1 %2156, label %block_.L_4048d4, label %block_404898

block_404898:                                     ; preds = %block_.L_40488c
  %2168 = add i64 %2006, -8
  %2169 = add i64 %2167, 4
  store i64 %2169, i64* %3, align 8
  %2170 = inttoptr i64 %2168 to i64*
  %2171 = load i64, i64* %2170, align 8
  store i64 %2171, i64* %RAX.i622, align 8
  %2172 = add i64 %2006, -108
  %2173 = add i64 %2167, 8
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i32*
  %2175 = load i32, i32* %2174, align 4
  %2176 = sext i32 %2175 to i64
  store i64 %2176, i64* %RCX.i1008, align 8
  %2177 = shl nsw i64 %2176, 3
  %2178 = add i64 %2177, %2171
  %2179 = add i64 %2167, 12
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i64*
  %2181 = load i64, i64* %2180, align 8
  store i64 %2181, i64* %RAX.i622, align 8
  %2182 = add i64 %2006, -104
  %2183 = add i64 %2167, 15
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2182 to i32*
  %2185 = load i32, i32* %2184, align 4
  %2186 = zext i32 %2185 to i64
  store i64 %2186, i64* %RDX.i993, align 8
  %2187 = add i32 %2185, 1
  %2188 = zext i32 %2187 to i64
  store i64 %2188, i64* %RSI.i1020, align 8
  %2189 = icmp eq i32 %2185, -1
  %2190 = icmp eq i32 %2187, 0
  %2191 = or i1 %2189, %2190
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %14, align 1
  %2193 = and i32 %2187, 255
  %2194 = tail call i32 @llvm.ctpop.i32(i32 %2193)
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  %2197 = xor i8 %2196, 1
  store i8 %2197, i8* %21, align 1
  %2198 = xor i32 %2187, %2185
  %2199 = lshr i32 %2198, 4
  %2200 = trunc i32 %2199 to i8
  %2201 = and i8 %2200, 1
  store i8 %2201, i8* %26, align 1
  %2202 = zext i1 %2190 to i8
  store i8 %2202, i8* %29, align 1
  %2203 = lshr i32 %2187, 31
  %2204 = trunc i32 %2203 to i8
  store i8 %2204, i8* %32, align 1
  %2205 = lshr i32 %2185, 31
  %2206 = xor i32 %2203, %2205
  %2207 = add nuw nsw i32 %2206, %2203
  %2208 = icmp eq i32 %2207, 2
  %2209 = zext i1 %2208 to i8
  store i8 %2209, i8* %38, align 1
  %2210 = add i64 %2167, 23
  store i64 %2210, i64* %3, align 8
  store i32 %2187, i32* %2184, align 4
  %2211 = load i32, i32* %EDX.i1017, align 4
  %2212 = load i64, i64* %3, align 8
  %2213 = sext i32 %2211 to i64
  store i64 %2213, i64* %RCX.i1008, align 8
  %2214 = load i64, i64* %RAX.i622, align 8
  %2215 = add i64 %2214, %2213
  %2216 = add i64 %2212, 7
  store i64 %2216, i64* %3, align 8
  %2217 = inttoptr i64 %2215 to i8*
  %2218 = load i8, i8* %2217, align 1
  store i8 %2218, i8* %DIL.i306, align 1
  %2219 = load i64, i64* %RBP.i, align 8
  %2220 = add i64 %2219, -56
  %2221 = add i64 %2212, 11
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i64*
  %2223 = load i64, i64* %2222, align 8
  store i64 %2223, i64* %RAX.i622, align 8
  %2224 = add i64 %2219, -108
  %2225 = add i64 %2212, 15
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2224 to i32*
  %2227 = load i32, i32* %2226, align 4
  %2228 = sext i32 %2227 to i64
  store i64 %2228, i64* %RCX.i1008, align 8
  %2229 = shl nsw i64 %2228, 3
  %2230 = add i64 %2229, %2223
  %2231 = add i64 %2212, 19
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2230 to i64*
  %2233 = load i64, i64* %2232, align 8
  store i64 %2233, i64* %RAX.i622, align 8
  %2234 = add i64 %2219, -100
  %2235 = add i64 %2212, 22
  store i64 %2235, i64* %3, align 8
  %2236 = inttoptr i64 %2234 to i32*
  %2237 = load i32, i32* %2236, align 4
  %2238 = zext i32 %2237 to i64
  store i64 %2238, i64* %RDX.i993, align 8
  %2239 = add i32 %2237, 1
  %2240 = zext i32 %2239 to i64
  store i64 %2240, i64* %RSI.i1020, align 8
  %2241 = icmp eq i32 %2237, -1
  %2242 = icmp eq i32 %2239, 0
  %2243 = or i1 %2241, %2242
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %14, align 1
  %2245 = and i32 %2239, 255
  %2246 = tail call i32 @llvm.ctpop.i32(i32 %2245)
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  %2249 = xor i8 %2248, 1
  store i8 %2249, i8* %21, align 1
  %2250 = xor i32 %2239, %2237
  %2251 = lshr i32 %2250, 4
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  store i8 %2253, i8* %26, align 1
  %2254 = zext i1 %2242 to i8
  store i8 %2254, i8* %29, align 1
  %2255 = lshr i32 %2239, 31
  %2256 = trunc i32 %2255 to i8
  store i8 %2256, i8* %32, align 1
  %2257 = lshr i32 %2237, 31
  %2258 = xor i32 %2255, %2257
  %2259 = add nuw nsw i32 %2258, %2255
  %2260 = icmp eq i32 %2259, 2
  %2261 = zext i1 %2260 to i8
  store i8 %2261, i8* %38, align 1
  %2262 = add i64 %2212, 30
  store i64 %2262, i64* %3, align 8
  store i32 %2239, i32* %2236, align 4
  %2263 = load i32, i32* %EDX.i1017, align 4
  %2264 = load i64, i64* %3, align 8
  %2265 = sext i32 %2263 to i64
  store i64 %2265, i64* %RCX.i1008, align 8
  %2266 = load i64, i64* %RAX.i622, align 8
  %2267 = add i64 %2266, %2265
  %2268 = load i8, i8* %DIL.i306, align 1
  %2269 = add i64 %2264, 7
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2267 to i8*
  store i8 %2268, i8* %2270, align 1
  %.pre75 = load i64, i64* %3, align 8
  %.pre76 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4048d4

block_.L_4048d4:                                  ; preds = %block_404898, %block_.L_40488c
  %2271 = phi i64 [ %.pre76, %block_404898 ], [ %2006, %block_.L_40488c ]
  %2272 = phi i64 [ %.pre75, %block_404898 ], [ %2167, %block_.L_40488c ]
  %2273 = add i64 %2271, -112
  %2274 = add i64 %2272, 8
  store i64 %2274, i64* %3, align 8
  %2275 = inttoptr i64 %2273 to i32*
  %2276 = load i32, i32* %2275, align 4
  %2277 = add i32 %2276, 1
  %2278 = zext i32 %2277 to i64
  store i64 %2278, i64* %RAX.i622, align 8
  %2279 = icmp eq i32 %2276, -1
  %2280 = icmp eq i32 %2277, 0
  %2281 = or i1 %2279, %2280
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %14, align 1
  %2283 = and i32 %2277, 255
  %2284 = tail call i32 @llvm.ctpop.i32(i32 %2283)
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  %2287 = xor i8 %2286, 1
  store i8 %2287, i8* %21, align 1
  %2288 = xor i32 %2277, %2276
  %2289 = lshr i32 %2288, 4
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  store i8 %2291, i8* %26, align 1
  %2292 = zext i1 %2280 to i8
  store i8 %2292, i8* %29, align 1
  %2293 = lshr i32 %2277, 31
  %2294 = trunc i32 %2293 to i8
  store i8 %2294, i8* %32, align 1
  %2295 = lshr i32 %2276, 31
  %2296 = xor i32 %2293, %2295
  %2297 = add nuw nsw i32 %2296, %2293
  %2298 = icmp eq i32 %2297, 2
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %38, align 1
  %2300 = add i64 %2272, 14
  store i64 %2300, i64* %3, align 8
  store i32 %2277, i32* %2275, align 4
  %2301 = load i64, i64* %3, align 8
  %2302 = add i64 %2301, -276
  store i64 %2302, i64* %3, align 8
  br label %block_.L_4047ce

block_.L_4048e7:                                  ; preds = %block_.L_4047ce
  %2303 = add i64 %1774, -56
  %2304 = add i64 %1810, 4
  store i64 %2304, i64* %3, align 8
  %2305 = inttoptr i64 %2303 to i64*
  %2306 = load i64, i64* %2305, align 8
  store i64 %2306, i64* %RAX.i622, align 8
  %2307 = add i64 %1774, -108
  %2308 = add i64 %1810, 8
  store i64 %2308, i64* %3, align 8
  %2309 = inttoptr i64 %2307 to i32*
  %2310 = load i32, i32* %2309, align 4
  %2311 = sext i32 %2310 to i64
  store i64 %2311, i64* %RCX.i1008, align 8
  %2312 = shl nsw i64 %2311, 3
  %2313 = add i64 %2312, %2306
  %2314 = add i64 %1810, 12
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2313 to i64*
  %2316 = load i64, i64* %2315, align 8
  store i64 %2316, i64* %RAX.i622, align 8
  %2317 = add i64 %1774, -60
  %2318 = add i64 %1810, 16
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2317 to i32*
  %2320 = load i32, i32* %2319, align 4
  %2321 = sext i32 %2320 to i64
  store i64 %2321, i64* %RCX.i1008, align 8
  %2322 = add i64 %2316, %2321
  %2323 = add i64 %1810, 20
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to i8*
  store i8 0, i8* %2324, align 1
  %2325 = load i64, i64* %RBP.i, align 8
  %2326 = add i64 %2325, -108
  %2327 = load i64, i64* %3, align 8
  %2328 = add i64 %2327, 3
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2326 to i32*
  %2330 = load i32, i32* %2329, align 4
  %2331 = add i32 %2330, 1
  %2332 = zext i32 %2331 to i64
  store i64 %2332, i64* %RAX.i622, align 8
  %2333 = icmp eq i32 %2330, -1
  %2334 = icmp eq i32 %2331, 0
  %2335 = or i1 %2333, %2334
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %14, align 1
  %2337 = and i32 %2331, 255
  %2338 = tail call i32 @llvm.ctpop.i32(i32 %2337)
  %2339 = trunc i32 %2338 to i8
  %2340 = and i8 %2339, 1
  %2341 = xor i8 %2340, 1
  store i8 %2341, i8* %21, align 1
  %2342 = xor i32 %2331, %2330
  %2343 = lshr i32 %2342, 4
  %2344 = trunc i32 %2343 to i8
  %2345 = and i8 %2344, 1
  store i8 %2345, i8* %26, align 1
  %2346 = zext i1 %2334 to i8
  store i8 %2346, i8* %29, align 1
  %2347 = lshr i32 %2331, 31
  %2348 = trunc i32 %2347 to i8
  store i8 %2348, i8* %32, align 1
  %2349 = lshr i32 %2330, 31
  %2350 = xor i32 %2347, %2349
  %2351 = add nuw nsw i32 %2350, %2347
  %2352 = icmp eq i32 %2351, 2
  %2353 = zext i1 %2352 to i8
  store i8 %2353, i8* %38, align 1
  %2354 = add i64 %2327, 9
  store i64 %2354, i64* %3, align 8
  store i32 %2331, i32* %2329, align 4
  %2355 = load i64, i64* %3, align 8
  %2356 = add i64 %2355, -343
  store i64 %2356, i64* %3, align 8
  br label %block_.L_4047ad

block_.L_404909:                                  ; preds = %block_.L_4047ad
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI.i961, align 8
  store i64 603, i64* %RSI.i1020, align 8
  %2357 = add i64 %1723, -48
  %2358 = add i64 %1759, 19
  store i64 %2358, i64* %3, align 8
  %2359 = inttoptr i64 %2357 to i64*
  %2360 = load i64, i64* %2359, align 8
  store i64 %2360, i64* %RAX.i622, align 8
  %2361 = add i64 %1759, 25
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i32*
  store i32 0, i32* %2362, align 4
  %2363 = load i64, i64* %RBP.i, align 8
  %2364 = add i64 %2363, -60
  %2365 = load i64, i64* %3, align 8
  %2366 = add i64 %2365, 3
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2364 to i32*
  %2368 = load i32, i32* %2367, align 4
  %2369 = zext i32 %2368 to i64
  store i64 %2369, i64* %RCX.i1008, align 8
  %2370 = add i64 %2363, -48
  %2371 = add i64 %2365, 7
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i64*
  %2373 = load i64, i64* %2372, align 8
  store i64 %2373, i64* %RAX.i622, align 8
  %2374 = add i64 %2373, 4
  %2375 = add i64 %2365, 10
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2374 to i32*
  store i32 %2368, i32* %2376, align 4
  %2377 = load i64, i64* %RBP.i, align 8
  %2378 = add i64 %2377, -20
  %2379 = load i64, i64* %3, align 8
  %2380 = add i64 %2379, 3
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2378 to i32*
  %2382 = load i32, i32* %2381, align 4
  %2383 = zext i32 %2382 to i64
  store i64 %2383, i64* %RCX.i1008, align 8
  %2384 = add i64 %2377, -48
  %2385 = add i64 %2379, 7
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i64*
  %2387 = load i64, i64* %2386, align 8
  store i64 %2387, i64* %RAX.i622, align 8
  %2388 = add i64 %2387, 8
  %2389 = add i64 %2379, 10
  store i64 %2389, i64* %3, align 8
  %2390 = inttoptr i64 %2388 to i32*
  store i32 %2382, i32* %2390, align 4
  %2391 = load i64, i64* %RBP.i, align 8
  %2392 = add i64 %2391, -20
  %2393 = load i64, i64* %3, align 8
  %2394 = add i64 %2393, 4
  store i64 %2394, i64* %3, align 8
  %2395 = inttoptr i64 %2392 to i32*
  %2396 = load i32, i32* %2395, align 4
  %2397 = sext i32 %2396 to i64
  store i64 %2397, i64* %RAX.i622, align 8
  %2398 = sext i32 %2396 to i128
  %2399 = and i128 %2398, -18446744073709551616
  %2400 = zext i64 %2397 to i128
  %2401 = or i128 %2399, %2400
  %2402 = mul nsw i128 %2401, 360
  %2403 = trunc i128 %2402 to i64
  store i64 %2403, i64* %RDX.i993, align 8
  %2404 = sext i64 %2403 to i128
  %2405 = icmp ne i128 %2404, %2402
  %2406 = zext i1 %2405 to i8
  store i8 %2406, i8* %14, align 1
  %2407 = trunc i128 %2402 to i32
  %2408 = and i32 %2407, 248
  %2409 = tail call i32 @llvm.ctpop.i32(i32 %2408)
  %2410 = trunc i32 %2409 to i8
  %2411 = and i8 %2410, 1
  %2412 = xor i8 %2411, 1
  store i8 %2412, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2413 = lshr i64 %2403, 63
  %2414 = trunc i64 %2413 to i8
  store i8 %2414, i8* %32, align 1
  store i8 %2406, i8* %38, align 1
  %2415 = add i64 %2393, 268074
  %2416 = add i64 %2393, 16
  %2417 = load i64, i64* %6, align 8
  %2418 = add i64 %2417, -8
  %2419 = inttoptr i64 %2418 to i64*
  store i64 %2416, i64* %2419, align 8
  store i64 %2418, i64* %6, align 8
  store i64 %2415, i64* %3, align 8
  %call2_404941 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %2415, %struct.Memory* %call2_40474c)
  %2420 = load i64, i64* %RBP.i, align 8
  %2421 = add i64 %2420, -48
  %2422 = load i64, i64* %3, align 8
  %2423 = add i64 %2422, 4
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2421 to i64*
  %2425 = load i64, i64* %2424, align 8
  store i64 %2425, i64* %RDX.i993, align 8
  %2426 = add i64 %2425, 40
  %2427 = load i64, i64* %RAX.i622, align 8
  %2428 = add i64 %2422, 8
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2426 to i64*
  store i64 %2427, i64* %2429, align 8
  %2430 = load i64, i64* %RBP.i, align 8
  %2431 = add i64 %2430, -108
  %2432 = load i64, i64* %3, align 8
  %2433 = add i64 %2432, 7
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2431 to i32*
  store i32 0, i32* %2434, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_404955

block_.L_404955:                                  ; preds = %block_404961, %block_.L_404909
  %2435 = phi i64 [ %2584, %block_404961 ], [ %.pre71, %block_.L_404909 ]
  %2436 = load i64, i64* %RBP.i, align 8
  %2437 = add i64 %2436, -108
  %2438 = add i64 %2435, 3
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2437 to i32*
  %2440 = load i32, i32* %2439, align 4
  %2441 = zext i32 %2440 to i64
  store i64 %2441, i64* %RAX.i622, align 8
  %2442 = add i64 %2436, -20
  %2443 = add i64 %2435, 6
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to i32*
  %2445 = load i32, i32* %2444, align 4
  %2446 = sub i32 %2440, %2445
  %2447 = icmp ult i32 %2440, %2445
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %14, align 1
  %2449 = and i32 %2446, 255
  %2450 = tail call i32 @llvm.ctpop.i32(i32 %2449)
  %2451 = trunc i32 %2450 to i8
  %2452 = and i8 %2451, 1
  %2453 = xor i8 %2452, 1
  store i8 %2453, i8* %21, align 1
  %2454 = xor i32 %2445, %2440
  %2455 = xor i32 %2454, %2446
  %2456 = lshr i32 %2455, 4
  %2457 = trunc i32 %2456 to i8
  %2458 = and i8 %2457, 1
  store i8 %2458, i8* %26, align 1
  %2459 = icmp eq i32 %2446, 0
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %29, align 1
  %2461 = lshr i32 %2446, 31
  %2462 = trunc i32 %2461 to i8
  store i8 %2462, i8* %32, align 1
  %2463 = lshr i32 %2440, 31
  %2464 = lshr i32 %2445, 31
  %2465 = xor i32 %2464, %2463
  %2466 = xor i32 %2461, %2463
  %2467 = add nuw nsw i32 %2466, %2465
  %2468 = icmp eq i32 %2467, 2
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %38, align 1
  %2470 = icmp ne i8 %2462, 0
  %2471 = xor i1 %2470, %2468
  %.v92 = select i1 %2471, i64 12, i64 77
  %2472 = add i64 %2435, %.v92
  store i64 %2472, i64* %3, align 8
  br i1 %2471, label %block_404961, label %block_.L_4049a2

block_404961:                                     ; preds = %block_.L_404955
  %2473 = add i64 %2436, -48
  %2474 = add i64 %2472, 4
  store i64 %2474, i64* %3, align 8
  %2475 = inttoptr i64 %2473 to i64*
  %2476 = load i64, i64* %2475, align 8
  store i64 %2476, i64* %RAX.i622, align 8
  %2477 = add i64 %2476, 40
  %2478 = add i64 %2472, 8
  store i64 %2478, i64* %3, align 8
  %2479 = inttoptr i64 %2477 to i64*
  %2480 = load i64, i64* %2479, align 8
  store i64 %2480, i64* %RAX.i622, align 8
  %2481 = add i64 %2472, 12
  store i64 %2481, i64* %3, align 8
  %2482 = load i32, i32* %2439, align 4
  %2483 = sext i32 %2482 to i64
  %2484 = mul nsw i64 %2483, 360
  store i64 %2484, i64* %RCX.i1008, align 8
  %2485 = lshr i64 %2484, 63
  %2486 = add i64 %2484, %2480
  store i64 %2486, i64* %RAX.i622, align 8
  %2487 = icmp ult i64 %2486, %2480
  %2488 = icmp ult i64 %2486, %2484
  %2489 = or i1 %2487, %2488
  %2490 = zext i1 %2489 to i8
  store i8 %2490, i8* %14, align 1
  %2491 = trunc i64 %2486 to i32
  %2492 = and i32 %2491, 255
  %2493 = tail call i32 @llvm.ctpop.i32(i32 %2492)
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  %2496 = xor i8 %2495, 1
  store i8 %2496, i8* %21, align 1
  %2497 = xor i64 %2484, %2480
  %2498 = xor i64 %2497, %2486
  %2499 = lshr i64 %2498, 4
  %2500 = trunc i64 %2499 to i8
  %2501 = and i8 %2500, 1
  store i8 %2501, i8* %26, align 1
  %2502 = icmp eq i64 %2486, 0
  %2503 = zext i1 %2502 to i8
  store i8 %2503, i8* %29, align 1
  %2504 = lshr i64 %2486, 63
  %2505 = trunc i64 %2504 to i8
  store i8 %2505, i8* %32, align 1
  %2506 = lshr i64 %2480, 63
  %2507 = xor i64 %2504, %2506
  %2508 = xor i64 %2504, %2485
  %2509 = add nuw nsw i64 %2507, %2508
  %2510 = icmp eq i64 %2509, 2
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %38, align 1
  %2512 = add i64 %2436, -16
  %2513 = add i64 %2472, 26
  store i64 %2513, i64* %3, align 8
  %2514 = inttoptr i64 %2512 to i64*
  %2515 = load i64, i64* %2514, align 8
  store i64 %2515, i64* %RCX.i1008, align 8
  %2516 = add i64 %2472, 30
  store i64 %2516, i64* %3, align 8
  %2517 = load i32, i32* %2439, align 4
  %2518 = sext i32 %2517 to i64
  %2519 = mul nsw i64 %2518, 360
  store i64 %2519, i64* %RDX.i993, align 8
  %2520 = lshr i64 %2519, 63
  %2521 = add i64 %2519, %2515
  store i64 %2521, i64* %RCX.i1008, align 8
  %2522 = icmp ult i64 %2521, %2515
  %2523 = icmp ult i64 %2521, %2519
  %2524 = or i1 %2522, %2523
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %14, align 1
  %2526 = trunc i64 %2521 to i32
  %2527 = and i32 %2526, 255
  %2528 = tail call i32 @llvm.ctpop.i32(i32 %2527)
  %2529 = trunc i32 %2528 to i8
  %2530 = and i8 %2529, 1
  %2531 = xor i8 %2530, 1
  store i8 %2531, i8* %21, align 1
  %2532 = xor i64 %2519, %2515
  %2533 = xor i64 %2532, %2521
  %2534 = lshr i64 %2533, 4
  %2535 = trunc i64 %2534 to i8
  %2536 = and i8 %2535, 1
  store i8 %2536, i8* %26, align 1
  %2537 = icmp eq i64 %2521, 0
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %29, align 1
  %2539 = lshr i64 %2521, 63
  %2540 = trunc i64 %2539 to i8
  store i8 %2540, i8* %32, align 1
  %2541 = lshr i64 %2515, 63
  %2542 = xor i64 %2539, %2541
  %2543 = xor i64 %2539, %2520
  %2544 = add nuw nsw i64 %2542, %2543
  %2545 = icmp eq i64 %2544, 2
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %38, align 1
  %2547 = load i64, i64* %RAX.i622, align 8
  store i64 %2547, i64* %RDI.i961, align 8
  store i64 %2521, i64* %RSI.i1020, align 8
  %2548 = add i64 %2472, 244191
  %2549 = add i64 %2472, 51
  %2550 = load i64, i64* %6, align 8
  %2551 = add i64 %2550, -8
  %2552 = inttoptr i64 %2551 to i64*
  store i64 %2549, i64* %2552, align 8
  store i64 %2551, i64* %6, align 8
  store i64 %2548, i64* %3, align 8
  %call2_40498f = tail call %struct.Memory* @sub_440340.SeqinfoCopy(%struct.State* nonnull %0, i64 %2548, %struct.Memory* %call2_404941)
  %2553 = load i64, i64* %RBP.i, align 8
  %2554 = add i64 %2553, -108
  %2555 = load i64, i64* %3, align 8
  %2556 = add i64 %2555, 3
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2554 to i32*
  %2558 = load i32, i32* %2557, align 4
  %2559 = add i32 %2558, 1
  %2560 = zext i32 %2559 to i64
  store i64 %2560, i64* %RAX.i622, align 8
  %2561 = icmp eq i32 %2558, -1
  %2562 = icmp eq i32 %2559, 0
  %2563 = or i1 %2561, %2562
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %14, align 1
  %2565 = and i32 %2559, 255
  %2566 = tail call i32 @llvm.ctpop.i32(i32 %2565)
  %2567 = trunc i32 %2566 to i8
  %2568 = and i8 %2567, 1
  %2569 = xor i8 %2568, 1
  store i8 %2569, i8* %21, align 1
  %2570 = xor i32 %2559, %2558
  %2571 = lshr i32 %2570, 4
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  store i8 %2573, i8* %26, align 1
  %2574 = zext i1 %2562 to i8
  store i8 %2574, i8* %29, align 1
  %2575 = lshr i32 %2559, 31
  %2576 = trunc i32 %2575 to i8
  store i8 %2576, i8* %32, align 1
  %2577 = lshr i32 %2558, 31
  %2578 = xor i32 %2575, %2577
  %2579 = add nuw nsw i32 %2578, %2575
  %2580 = icmp eq i32 %2579, 2
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %38, align 1
  %2582 = add i64 %2555, 9
  store i64 %2582, i64* %3, align 8
  store i32 %2559, i32* %2557, align 4
  %2583 = load i64, i64* %3, align 8
  %2584 = add i64 %2583, -72
  store i64 %2584, i64* %3, align 8
  br label %block_.L_404955

block_.L_4049a2:                                  ; preds = %block_.L_404955
  %2585 = add i64 %2436, -72
  %2586 = add i64 %2472, 4
  store i64 %2586, i64* %3, align 8
  %2587 = inttoptr i64 %2585 to i64*
  %2588 = load i64, i64* %2587, align 8
  store i64 %2588, i64* %RAX.i622, align 8
  store i64 %2588, i64* %RDI.i961, align 8
  %2589 = add i64 %2472, -13858
  %2590 = add i64 %2472, 12
  %2591 = load i64, i64* %6, align 8
  %2592 = add i64 %2591, -8
  %2593 = inttoptr i64 %2592 to i64*
  store i64 %2590, i64* %2593, align 8
  store i64 %2592, i64* %6, align 8
  store i64 %2589, i64* %3, align 8
  %2594 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_404941)
  %2595 = load i64, i64* %RBP.i, align 8
  %2596 = add i64 %2595, -96
  %2597 = load i64, i64* %3, align 8
  %2598 = add i64 %2597, 4
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2596 to i64*
  %2600 = load i64, i64* %2599, align 8
  store i64 %2600, i64* %RAX.i622, align 8
  store i64 %2600, i64* %RDI.i961, align 8
  %2601 = add i64 %2597, -13870
  %2602 = add i64 %2597, 12
  %2603 = load i64, i64* %6, align 8
  %2604 = add i64 %2603, -8
  %2605 = inttoptr i64 %2604 to i64*
  store i64 %2602, i64* %2605, align 8
  store i64 %2604, i64* %6, align 8
  store i64 %2601, i64* %3, align 8
  %2606 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2594)
  %2607 = load i64, i64* %RBP.i, align 8
  %2608 = add i64 %2607, -88
  %2609 = load i64, i64* %3, align 8
  %2610 = add i64 %2609, 4
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2608 to i64*
  %2612 = load i64, i64* %2611, align 8
  store i64 %2612, i64* %RAX.i622, align 8
  %2613 = add i64 %2607, -20
  %2614 = add i64 %2609, 7
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i32*
  %2616 = load i32, i32* %2615, align 4
  %2617 = zext i32 %2616 to i64
  store i64 %2617, i64* %RSI.i1020, align 8
  store i64 %2612, i64* %RDI.i961, align 8
  %2618 = add i64 %2609, 268118
  %2619 = add i64 %2609, 15
  %2620 = load i64, i64* %6, align 8
  %2621 = add i64 %2620, -8
  %2622 = inttoptr i64 %2621 to i64*
  store i64 %2619, i64* %2622, align 8
  store i64 %2621, i64* %6, align 8
  store i64 %2618, i64* %3, align 8
  %call2_4049c4 = tail call %struct.Memory* @sub_446110.Free2DArray(%struct.State* nonnull %0, i64 %2618, %struct.Memory* %2606)
  %2623 = load i64, i64* %3, align 8
  store i64 1, i64* %RAX.i622, align 8
  %2624 = load i64, i64* %RBP.i, align 8
  %2625 = add i64 %2624, -56
  %2626 = add i64 %2623, 9
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2625 to i64*
  %2628 = load i64, i64* %2627, align 8
  store i64 %2628, i64* %RDI.i961, align 8
  %2629 = add i64 %2624, -40
  %2630 = add i64 %2623, 13
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2629 to i64*
  %2632 = load i64, i64* %2631, align 8
  store i64 %2632, i64* %RCX.i1008, align 8
  %2633 = add i64 %2623, 16
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2632 to i64*
  store i64 %2628, i64* %2634, align 8
  %2635 = load i64, i64* %6, align 8
  %2636 = load i64, i64* %3, align 8
  %2637 = add i64 %2635, 128
  store i64 %2637, i64* %6, align 8
  %2638 = icmp ugt i64 %2635, -129
  %2639 = zext i1 %2638 to i8
  store i8 %2639, i8* %14, align 1
  %2640 = trunc i64 %2637 to i32
  %2641 = and i32 %2640, 255
  %2642 = tail call i32 @llvm.ctpop.i32(i32 %2641)
  %2643 = trunc i32 %2642 to i8
  %2644 = and i8 %2643, 1
  %2645 = xor i8 %2644, 1
  store i8 %2645, i8* %21, align 1
  %2646 = xor i64 %2637, %2635
  %2647 = lshr i64 %2646, 4
  %2648 = trunc i64 %2647 to i8
  %2649 = and i8 %2648, 1
  store i8 %2649, i8* %26, align 1
  %2650 = icmp eq i64 %2637, 0
  %2651 = zext i1 %2650 to i8
  store i8 %2651, i8* %29, align 1
  %2652 = lshr i64 %2637, 63
  %2653 = trunc i64 %2652 to i8
  store i8 %2653, i8* %32, align 1
  %2654 = lshr i64 %2635, 63
  %2655 = xor i64 %2652, %2654
  %2656 = add nuw nsw i64 %2655, %2652
  %2657 = icmp eq i64 %2656, 2
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %38, align 1
  %2659 = add i64 %2636, 8
  store i64 %2659, i64* %3, align 8
  %2660 = add i64 %2635, 136
  %2661 = inttoptr i64 %2637 to i64*
  %2662 = load i64, i64* %2661, align 8
  store i64 %2662, i64* %RBP.i, align 8
  store i64 %2660, i64* %6, align 8
  %2663 = add i64 %2636, 9
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2660 to i64*
  %2665 = load i64, i64* %2664, align 8
  store i64 %2665, i64* %3, align 8
  %2666 = add i64 %2635, 144
  store i64 %2666, i64* %6, align 8
  ret %struct.Memory* %call2_4049c4
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
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movq__0x4559fe___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x212___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 530, i64* %3, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movl__r9d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x98967f__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 9999999, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_jge_.L_404463(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x78__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -120
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
define %struct.Memory* @routine_jge_.L_404449(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40444f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4043e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x50375__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x50375__rip__type* @G_0x50375__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x4c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm3___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm4___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm3___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm4___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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
define %struct.Memory* @routine_movl_MINUS0x80__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_cmpl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -120
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
define %struct.Memory* @routine_jle_.L_4044cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4559fe___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4559fe_type* @G__0x4559fe to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x221___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 545, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movl__0x222___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 546, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4045a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x225___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 549, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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
define %struct.Memory* @routine_jg_.L_404592(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_404561(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_404597(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40451e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x50233__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x50233__rip__type* @G_0x50233__rip_ to i64)
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
define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x1c__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_404683(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
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
define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_404670(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.sre_random(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_ja_.L_40462f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp ne i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_404649(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_jmpq_.L_4045f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_404675(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4045de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_jg_.L_404732(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_404713(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_404700(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_404705(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4046b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_404690(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x245___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 581, i64* %RSI, align 8
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
define %struct.Memory* @routine_jge_.L_4047a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x247___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 583, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_shlq__0x0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40475c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_404909(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_jg_.L_4048e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movslq_MINUS0x70__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_cmpl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_404847(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb___rax__rcx_1____dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %DIL, align 1
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
define %struct.Memory* @routine_movl_MINUS0x64__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_movl__esi__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dil____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %DIL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4047e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40484c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40488c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x20____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 32, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4048d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4048d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4047ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 0, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4047ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x25b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 603, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
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
define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x168___rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 360
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x28__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4049a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x168___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 360
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x168___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 360
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SeqinfoCopy(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_404955(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_callq_.Free2DArray(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
