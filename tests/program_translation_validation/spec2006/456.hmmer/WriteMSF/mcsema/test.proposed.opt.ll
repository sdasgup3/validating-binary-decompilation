; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x45756f_type = type <{ [8 x i8] }>
%G__0x458d45_type = type <{ [8 x i8] }>
%G__0x458df8_type = type <{ [8 x i8] }>
%G__0x458ea3_type = type <{ [8 x i8] }>
%G__0x458ec0_type = type <{ [8 x i8] }>
%G__0x458edd_type = type <{ [8 x i8] }>
%G__0x458f23_type = type <{ [8 x i8] }>
%G__0x458f4b_type = type <{ [8 x i8] }>
%G__0x458f5b_type = type <{ [8 x i8] }>
%G__0x458f97_type = type <{ [8 x i8] }>
%G__0x458fa1_type = type <{ [8 x i8] }>
%G__0x458fcc_type = type <{ [8 x i8] }>
%G__0x459000_type = type <{ [8 x i8] }>
%G__0x459011_type = type <{ [8 x i8] }>
%G__0x45901c_type = type <{ [8 x i8] }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
%G__0x45a9d4_type = type <{ [8 x i8] }>
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
@G__0x45756f = global %G__0x45756f_type zeroinitializer
@G__0x458d45 = global %G__0x458d45_type zeroinitializer
@G__0x458df8 = global %G__0x458df8_type zeroinitializer
@G__0x458ea3 = global %G__0x458ea3_type zeroinitializer
@G__0x458ec0 = global %G__0x458ec0_type zeroinitializer
@G__0x458edd = global %G__0x458edd_type zeroinitializer
@G__0x458f23 = global %G__0x458f23_type zeroinitializer
@G__0x458f4b = global %G__0x458f4b_type zeroinitializer
@G__0x458f5b = global %G__0x458f5b_type zeroinitializer
@G__0x458f97 = global %G__0x458f97_type zeroinitializer
@G__0x458fa1 = global %G__0x458fa1_type zeroinitializer
@G__0x458fcc = global %G__0x458fcc_type zeroinitializer
@G__0x459000 = global %G__0x459000_type zeroinitializer
@G__0x459011 = global %G__0x459011_type zeroinitializer
@G__0x45901c = global %G__0x45901c_type zeroinitializer
@G__0x45a1f7 = global %G__0x45a1f7_type zeroinitializer
@G__0x45a9d4 = global %G__0x45a9d4_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare extern_weak x86_64_sysvcc i64 @time(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446720.sre_strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_442bb0.GuessAlignmentSeqtype(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401390.localtime_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401620.strftime_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_442b20.GCGMultchecksum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_442a90.GCGchecksum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401520.fputc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446110.Free2DArray(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @WriteMSF(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -424
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 416
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
  %RAX.i178 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x458df8_type* @G__0x458df8 to i64), i64* %RAX.i178, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i204 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 273, i64* %RCX.i204, align 8
  %RDI.i239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %41 = add i64 %7, -16
  %42 = load i64, i64* %RDI.i239, align 8
  %43 = add i64 %10, 29
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %44, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i319 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -16
  %48 = load i64, i64* %RSI.i319, align 8
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i64*
  store i64 %48, i64* %51, align 8
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %53 to i64*
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %RSI.i319, align 8
  %58 = add i64 %57, 28
  %59 = add i64 %54, 8
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 3
  %.lobit = lshr i32 %61, 31
  %64 = trunc i32 %.lobit to i8
  store i8 %64, i8* %14, align 1
  %65 = trunc i64 %63 to i32
  %66 = and i32 %65, 248
  %67 = tail call i32 @llvm.ctpop.i32(i32 %66)
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  store i8 %70, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %71 = icmp eq i32 %61, 0
  %72 = zext i1 %71 to i8
  store i8 %72, i8* %29, align 1
  %73 = lshr i64 %62, 60
  %74 = trunc i64 %73 to i8
  %75 = and i8 %74, 1
  store i8 %75, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %76 = load i64, i64* %RAX.i178, align 8
  store i64 %76, i64* %RDI.i239, align 8
  %77 = add i64 %52, -208
  %78 = add i64 %54, 22
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i64*
  store i64 %63, i64* %79, align 8
  %ECX.i641 = bitcast %union.anon* %40 to i32*
  %80 = load i32, i32* %ECX.i641, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %3, align 8
  store i64 %81, i64* %RSI.i319, align 8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i654 = getelementptr inbounds %union.anon, %union.anon* %83, i64 0, i32 0
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -208
  %86 = add i64 %82, 9
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %RDX.i654, align 8
  %89 = add i64 %82, 86600
  %90 = add i64 %82, 14
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %90, i64* %93, align 8
  store i64 %92, i64* %6, align 8
  store i64 %89, i64* %3, align 8
  %call2_430e21 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %89, %struct.Memory* %2)
  %94 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x458df8_type* @G__0x458df8 to i64), i64* %RDI.i239, align 8
  store i64 274, i64* %RSI.i319, align 8
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -104
  %97 = load i64, i64* %RAX.i178, align 8
  %98 = add i64 %94, 19
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %96 to i64*
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -16
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %RAX.i178, align 8
  %106 = add i64 %105, 28
  %107 = add i64 %102, 8
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = shl nsw i64 %110, 3
  store i64 %111, i64* %RAX.i178, align 8
  %.lobit43 = lshr i32 %109, 31
  %112 = trunc i32 %.lobit43 to i8
  store i8 %112, i8* %14, align 1
  %113 = trunc i64 %111 to i32
  %114 = and i32 %113, 248
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %119 = icmp eq i32 %109, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %29, align 1
  %121 = lshr i64 %110, 60
  %122 = trunc i64 %121 to i8
  %123 = and i8 %122, 1
  store i8 %123, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %111, i64* %RDX.i654, align 8
  %124 = add i64 %102, 86567
  %125 = add i64 %102, 20
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  store i64 %127, i64* %6, align 8
  store i64 %124, i64* %3, align 8
  %call2_430e48 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %124, %struct.Memory* %call2_430e21)
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -112
  %131 = load i64, i64* %RAX.i178, align 8
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 4
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %130 to i64*
  store i64 %131, i64* %134, align 8
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -116
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 7
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %136 to i32*
  store i32 0, i32* %139, align 4
  %EAX.i1438 = bitcast %union.anon* %39 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_430e58

block_.L_430e58:                                  ; preds = %block_430e68, %entry
  %140 = phi i64 [ %295, %block_430e68 ], [ %.pre, %entry ]
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -116
  %143 = add i64 %140, 3
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RAX.i178, align 8
  %147 = add i64 %141, -16
  %148 = add i64 %140, 7
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i64*
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %RCX.i204, align 8
  %151 = add i64 %150, 28
  %152 = add i64 %140, 10
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = sub i32 %145, %154
  %156 = icmp ult i32 %145, %154
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %14, align 1
  %158 = and i32 %155, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %21, align 1
  %163 = xor i32 %154, %145
  %164 = xor i32 %163, %155
  %165 = lshr i32 %164, 4
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %26, align 1
  %168 = icmp eq i32 %155, 0
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %29, align 1
  %170 = lshr i32 %155, 31
  %171 = trunc i32 %170 to i8
  store i8 %171, i8* %32, align 1
  %172 = lshr i32 %145, 31
  %173 = lshr i32 %154, 31
  %174 = xor i32 %173, %172
  %175 = xor i32 %170, %172
  %176 = add nuw nsw i32 %175, %174
  %177 = icmp eq i32 %176, 2
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %38, align 1
  %179 = icmp ne i8 %171, 0
  %180 = xor i1 %179, %177
  %.v118 = select i1 %180, i64 16, i64 107
  %181 = add i64 %140, %.v118
  store i64 %181, i64* %3, align 8
  br i1 %180, label %block_430e68, label %block_.L_430ec3

block_430e68:                                     ; preds = %block_.L_430e58
  %182 = add i64 %181, 4
  store i64 %182, i64* %3, align 8
  %183 = load i64, i64* %149, align 8
  store i64 %183, i64* %RAX.i178, align 8
  %184 = add i64 %181, 7
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RAX.i178, align 8
  %187 = add i64 %181, 11
  store i64 %187, i64* %3, align 8
  %188 = load i32, i32* %144, align 4
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %RCX.i204, align 8
  %190 = shl nsw i64 %189, 3
  %191 = add i64 %190, %186
  %192 = add i64 %181, 15
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i64*
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %RDI.i239, align 8
  %195 = add i64 %181, 19
  store i64 %195, i64* %3, align 8
  %196 = load i64, i64* %149, align 8
  store i64 %196, i64* %RAX.i178, align 8
  %197 = add i64 %196, 24
  %198 = add i64 %181, 22
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RSI.i319, align 8
  %202 = add i64 %181, 88248
  %203 = add i64 %181, 27
  %204 = load i64, i64* %6, align 8
  %205 = add i64 %204, -8
  %206 = inttoptr i64 %205 to i64*
  store i64 %203, i64* %206, align 8
  store i64 %205, i64* %6, align 8
  store i64 %202, i64* %3, align 8
  %call2_430e7e = tail call %struct.Memory* @sub_446720.sre_strdup(%struct.State* nonnull %0, i64 %202, %struct.Memory* %call2_430e48)
  %207 = load i64, i64* %3, align 8
  store i64 4294967295, i64* %RSI.i319, align 8
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -104
  %210 = add i64 %207, 9
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to i64*
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %RCX.i204, align 8
  %213 = add i64 %208, -116
  %214 = add i64 %207, 13
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %RDI.i239, align 8
  %218 = shl nsw i64 %217, 3
  %219 = add i64 %218, %212
  %220 = load i64, i64* %RAX.i178, align 8
  %221 = add i64 %207, 17
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %219 to i64*
  store i64 %220, i64* %222, align 8
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -16
  %225 = load i64, i64* %3, align 8
  %226 = add i64 %225, 4
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %224 to i64*
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %RAX.i178, align 8
  %229 = add i64 %228, 8
  %230 = add i64 %225, 8
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i64*
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %RAX.i178, align 8
  %233 = add i64 %223, -116
  %234 = add i64 %225, 12
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %RCX.i204, align 8
  %238 = shl nsw i64 %237, 3
  %239 = add i64 %238, %232
  %240 = add i64 %225, 16
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %RDI.i239, align 8
  %243 = add i64 %225, 88204
  %244 = add i64 %225, 21
  %245 = load i64, i64* %6, align 8
  %246 = add i64 %245, -8
  %247 = inttoptr i64 %246 to i64*
  store i64 %244, i64* %247, align 8
  store i64 %246, i64* %6, align 8
  store i64 %243, i64* %3, align 8
  %call2_430ea4 = tail call %struct.Memory* @sub_446720.sre_strdup(%struct.State* nonnull %0, i64 %243, %struct.Memory* %call2_430e48)
  %248 = load i64, i64* %RBP.i, align 8
  %249 = add i64 %248, -112
  %250 = load i64, i64* %3, align 8
  %251 = add i64 %250, 4
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %249 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RCX.i204, align 8
  %254 = add i64 %248, -116
  %255 = add i64 %250, 8
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  store i64 %258, i64* %RDI.i239, align 8
  %259 = shl nsw i64 %258, 3
  %260 = add i64 %259, %253
  %261 = load i64, i64* %RAX.i178, align 8
  %262 = add i64 %250, 12
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %260 to i64*
  store i64 %261, i64* %263, align 8
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -116
  %266 = load i64, i64* %3, align 8
  %267 = add i64 %266, 3
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %265 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = add i32 %269, 1
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX.i178, align 8
  %272 = icmp eq i32 %269, -1
  %273 = icmp eq i32 %270, 0
  %274 = or i1 %272, %273
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %14, align 1
  %276 = and i32 %270, 255
  %277 = tail call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  store i8 %280, i8* %21, align 1
  %281 = xor i32 %270, %269
  %282 = lshr i32 %281, 4
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  store i8 %284, i8* %26, align 1
  %285 = zext i1 %273 to i8
  store i8 %285, i8* %29, align 1
  %286 = lshr i32 %270, 31
  %287 = trunc i32 %286 to i8
  store i8 %287, i8* %32, align 1
  %288 = lshr i32 %269, 31
  %289 = xor i32 %286, %288
  %290 = add nuw nsw i32 %289, %286
  %291 = icmp eq i32 %290, 2
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %38, align 1
  %293 = add i64 %266, 9
  store i64 %293, i64* %3, align 8
  store i32 %270, i32* %268, align 4
  %294 = load i64, i64* %3, align 8
  %295 = add i64 %294, -102
  store i64 %295, i64* %3, align 8
  br label %block_.L_430e58

block_.L_430ec3:                                  ; preds = %block_.L_430e58
  %296 = add i64 %181, 7
  store i64 %296, i64* %3, align 8
  store i32 0, i32* %144, align 4
  %297 = bitcast %union.anon* %39 to i64**
  %EDX.i1329 = bitcast %union.anon* %83 to i32*
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_430eca

block_.L_430eca:                                  ; preds = %block_.L_430f59, %block_.L_430ec3
  %298 = phi i64 [ %538, %block_.L_430f59 ], [ %.pre80, %block_.L_430ec3 ]
  %299 = load i64, i64* %RBP.i, align 8
  %300 = add i64 %299, -116
  %301 = add i64 %298, 3
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RAX.i178, align 8
  %305 = add i64 %299, -16
  %306 = add i64 %298, 7
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %RCX.i204, align 8
  %309 = add i64 %308, 28
  %310 = add i64 %298, 10
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = sub i32 %303, %312
  %314 = icmp ult i32 %303, %312
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %14, align 1
  %316 = and i32 %313, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316)
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %21, align 1
  %321 = xor i32 %312, %303
  %322 = xor i32 %321, %313
  %323 = lshr i32 %322, 4
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  store i8 %325, i8* %26, align 1
  %326 = icmp eq i32 %313, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %29, align 1
  %328 = lshr i32 %313, 31
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %32, align 1
  %330 = lshr i32 %303, 31
  %331 = lshr i32 %312, 31
  %332 = xor i32 %331, %330
  %333 = xor i32 %328, %330
  %334 = add nuw nsw i32 %333, %332
  %335 = icmp eq i32 %334, 2
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %38, align 1
  %337 = icmp ne i8 %329, 0
  %338 = xor i1 %337, %335
  %.v119 = select i1 %338, i64 16, i64 162
  %339 = add i64 %298, %.v119
  store i64 %339, i64* %3, align 8
  br i1 %338, label %block_430eda, label %block_.L_430f6c

block_430eda:                                     ; preds = %block_.L_430eca
  %340 = add i64 %299, -112
  %341 = add i64 %339, 4
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %RAX.i178, align 8
  %344 = add i64 %339, 8
  store i64 %344, i64* %3, align 8
  %345 = load i32, i32* %302, align 4
  %346 = sext i32 %345 to i64
  store i64 %346, i64* %RCX.i204, align 8
  %347 = shl nsw i64 %346, 3
  %348 = add i64 %347, %343
  %349 = add i64 %339, 12
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %RAX.i178, align 8
  %352 = add i64 %299, -128
  %353 = add i64 %339, 16
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i64*
  store i64 %351, i64* %354, align 8
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_430eea

block_.L_430eea:                                  ; preds = %block_.L_430f43, %block_430eda
  %355 = phi i64 [ %508, %block_.L_430f43 ], [ %.pre111, %block_430eda ]
  %356 = load i64, i64* %RBP.i, align 8
  %357 = add i64 %356, -128
  %358 = add i64 %355, 4
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i64*
  %360 = load i64, i64* %359, align 8
  store i64 %360, i64* %RAX.i178, align 8
  %361 = add i64 %355, 7
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i8*
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i64
  %365 = and i64 %364, 4294967295
  store i64 %365, i64* %RCX.i204, align 8
  %366 = sext i8 %363 to i32
  store i8 0, i8* %14, align 1
  %367 = and i32 %366, 255
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367)
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  store i8 %371, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %372 = icmp eq i8 %363, 0
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %29, align 1
  %374 = lshr i32 %366, 31
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v117 = select i1 %372, i64 111, i64 16
  %376 = add i64 %355, %.v117
  store i64 %376, i64* %3, align 8
  br i1 %372, label %block_.L_430f59, label %block_430efa

block_430efa:                                     ; preds = %block_.L_430eea
  %377 = add i64 %376, -194538
  %378 = add i64 %376, 5
  %379 = load i64, i64* %6, align 8
  %380 = add i64 %379, -8
  %381 = inttoptr i64 %380 to i64*
  store i64 %378, i64* %381, align 8
  store i64 %380, i64* %6, align 8
  store i64 %377, i64* %3, align 8
  %call2_430efa = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %377, %struct.Memory* %call2_430e48)
  %382 = load i64*, i64** %297, align 8
  %383 = load i64, i64* %3, align 8
  %384 = add i64 %383, 3
  store i64 %384, i64* %3, align 8
  %385 = load i64, i64* %382, align 8
  store i64 %385, i64* %RAX.i178, align 8
  %386 = load i64, i64* %RBP.i, align 8
  %387 = add i64 %386, -128
  %388 = add i64 %383, 7
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i64*
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %RCX.i204, align 8
  %391 = add i64 %383, 10
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i8*
  %393 = load i8, i8* %392, align 1
  %394 = sext i8 %393 to i64
  %395 = and i64 %394, 4294967295
  store i64 %395, i64* %RDX.i654, align 8
  %396 = sext i8 %393 to i64
  store i64 %396, i64* %RCX.i204, align 8
  %397 = shl nsw i64 %396, 1
  %398 = add i64 %385, %397
  %399 = add i64 %383, 17
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i16*
  %401 = load i16, i16* %400, align 2
  %402 = and i16 %401, 8
  %403 = zext i16 %402 to i64
  %404 = zext i16 %402 to i32
  store i64 %403, i64* %RDX.i654, align 8
  store i8 0, i8* %14, align 1
  %405 = tail call i32 @llvm.ctpop.i32(i32 %404)
  %406 = trunc i32 %405 to i8
  %407 = xor i8 %406, 1
  store i8 %407, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit116 = lshr exact i16 %402, 3
  %408 = trunc i16 %.lobit116 to i8
  %409 = xor i8 %408, 1
  store i8 %409, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %410 = icmp eq i8 %409, 0
  %.v142 = select i1 %410, i64 68, i64 29
  %411 = add i64 %383, %.v142
  store i64 %411, i64* %3, align 8
  br i1 %410, label %block_.L_430f43, label %block_430f1c

block_430f1c:                                     ; preds = %block_430efa
  %412 = add i64 %411, 4
  store i64 %412, i64* %3, align 8
  %413 = load i64, i64* %389, align 8
  store i64 %413, i64* %RAX.i178, align 8
  %414 = add i64 %411, 7
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i8*
  %416 = load i8, i8* %415, align 1
  %417 = sext i8 %416 to i64
  %418 = and i64 %417, 4294967295
  store i64 %418, i64* %RCX.i204, align 8
  %419 = sext i8 %416 to i32
  %420 = add nsw i32 %419, -45
  %421 = icmp ult i8 %416, 45
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %14, align 1
  %423 = and i32 %420, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423)
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %21, align 1
  %428 = xor i32 %420, %419
  %429 = lshr i32 %428, 4
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  store i8 %431, i8* %26, align 1
  %432 = icmp eq i32 %420, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %29, align 1
  %434 = lshr i32 %420, 31
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %32, align 1
  %436 = lshr i32 %419, 31
  %437 = xor i32 %434, %436
  %438 = add nuw nsw i32 %437, %436
  %439 = icmp eq i32 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %38, align 1
  %.v143 = select i1 %432, i64 39, i64 16
  %441 = add i64 %411, %.v143
  store i64 %441, i64* %3, align 8
  br i1 %432, label %block_.L_430f43, label %block_430f2c

block_430f2c:                                     ; preds = %block_430f1c
  %442 = add i64 %441, 4
  store i64 %442, i64* %3, align 8
  %443 = load i64, i64* %389, align 8
  store i64 %443, i64* %RAX.i178, align 8
  %444 = add i64 %441, 7
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i8*
  %446 = load i8, i8* %445, align 1
  %447 = sext i8 %446 to i64
  %448 = and i64 %447, 4294967295
  store i64 %448, i64* %RCX.i204, align 8
  %449 = sext i8 %446 to i32
  %450 = add nsw i32 %449, -95
  %451 = icmp ult i8 %446, 95
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %14, align 1
  %453 = and i32 %450, 255
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %21, align 1
  %458 = xor i32 %449, 16
  %459 = xor i32 %458, %450
  %460 = lshr i32 %459, 4
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %26, align 1
  %463 = icmp eq i32 %450, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %29, align 1
  %465 = lshr i32 %450, 31
  %466 = trunc i32 %465 to i8
  store i8 %466, i8* %32, align 1
  %467 = lshr i32 %449, 31
  %468 = xor i32 %465, %467
  %469 = add nuw nsw i32 %468, %467
  %470 = icmp eq i32 %469, 2
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %38, align 1
  %.v144 = select i1 %463, i64 23, i64 16
  %472 = add i64 %441, %.v144
  store i64 %472, i64* %3, align 8
  br i1 %463, label %block_.L_430f43, label %block_430f3c

block_430f3c:                                     ; preds = %block_430f2c
  %473 = add i64 %472, 4
  store i64 %473, i64* %3, align 8
  %474 = load i64, i64* %389, align 8
  store i64 %474, i64* %RAX.i178, align 8
  %475 = add i64 %472, 7
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i8*
  store i8 95, i8* %476, align 1
  %.pre112 = load i64, i64* %3, align 8
  %.pre113 = load i64, i64* %RBP.i, align 8
  br label %block_.L_430f43

block_.L_430f43:                                  ; preds = %block_430f3c, %block_430f2c, %block_430f1c, %block_430efa
  %477 = phi i64 [ %.pre113, %block_430f3c ], [ %386, %block_430f2c ], [ %386, %block_430f1c ], [ %386, %block_430efa ]
  %478 = phi i64 [ %.pre112, %block_430f3c ], [ %472, %block_430f2c ], [ %441, %block_430f1c ], [ %411, %block_430efa ]
  %479 = add i64 %477, -128
  %480 = add i64 %478, 9
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i64*
  %482 = load i64, i64* %481, align 8
  %483 = add i64 %482, 1
  store i64 %483, i64* %RAX.i178, align 8
  %484 = icmp eq i64 %482, -1
  %485 = icmp eq i64 %483, 0
  %486 = or i1 %484, %485
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %14, align 1
  %488 = trunc i64 %483 to i32
  %489 = and i32 %488, 255
  %490 = tail call i32 @llvm.ctpop.i32(i32 %489)
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  store i8 %493, i8* %21, align 1
  %494 = xor i64 %483, %482
  %495 = lshr i64 %494, 4
  %496 = trunc i64 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %26, align 1
  %498 = zext i1 %485 to i8
  store i8 %498, i8* %29, align 1
  %499 = lshr i64 %483, 63
  %500 = trunc i64 %499 to i8
  store i8 %500, i8* %32, align 1
  %501 = lshr i64 %482, 63
  %502 = xor i64 %499, %501
  %503 = add nuw nsw i64 %502, %499
  %504 = icmp eq i64 %503, 2
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %38, align 1
  %506 = add i64 %478, 17
  store i64 %506, i64* %3, align 8
  store i64 %483, i64* %481, align 8
  %507 = load i64, i64* %3, align 8
  %508 = add i64 %507, -106
  store i64 %508, i64* %3, align 8
  br label %block_.L_430eea

block_.L_430f59:                                  ; preds = %block_.L_430eea
  %509 = add i64 %356, -116
  %510 = add i64 %376, 8
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = add i32 %512, 1
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RAX.i178, align 8
  %515 = icmp eq i32 %512, -1
  %516 = icmp eq i32 %513, 0
  %517 = or i1 %515, %516
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %14, align 1
  %519 = and i32 %513, 255
  %520 = tail call i32 @llvm.ctpop.i32(i32 %519)
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  store i8 %523, i8* %21, align 1
  %524 = xor i32 %513, %512
  %525 = lshr i32 %524, 4
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  store i8 %527, i8* %26, align 1
  %528 = zext i1 %516 to i8
  store i8 %528, i8* %29, align 1
  %529 = lshr i32 %513, 31
  %530 = trunc i32 %529 to i8
  store i8 %530, i8* %32, align 1
  %531 = lshr i32 %512, 31
  %532 = xor i32 %529, %531
  %533 = add nuw nsw i32 %532, %529
  %534 = icmp eq i32 %533, 2
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %38, align 1
  %536 = add i64 %376, 14
  store i64 %536, i64* %3, align 8
  store i32 %513, i32* %511, align 4
  %537 = load i64, i64* %3, align 8
  %538 = add i64 %537, -157
  store i64 %538, i64* %3, align 8
  br label %block_.L_430eca

block_.L_430f6c:                                  ; preds = %block_.L_430eca
  %539 = add i64 %339, 7
  store i64 %539, i64* %3, align 8
  store i32 0, i32* %302, align 4
  %AL.i1247 = bitcast %union.anon* %39 to i8*
  %CL.i1248 = bitcast %union.anon* %40 to i8*
  %DL.i1169 = bitcast %union.anon* %83 to i8*
  %SIL.i933 = bitcast %union.anon* %45 to i8*
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_430f73

block_.L_430f73:                                  ; preds = %block_4311df, %block_.L_430f6c
  %540 = phi i64 [ %1479, %block_4311df ], [ %.pre81, %block_.L_430f6c ]
  %541 = load i64, i64* %RBP.i, align 8
  %542 = add i64 %541, -116
  %543 = add i64 %540, 3
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RAX.i178, align 8
  %547 = add i64 %541, -16
  %548 = add i64 %540, 7
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i64*
  %550 = load i64, i64* %549, align 8
  store i64 %550, i64* %RCX.i204, align 8
  %551 = add i64 %550, 28
  %552 = add i64 %540, 10
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to i32*
  %554 = load i32, i32* %553, align 4
  %555 = sub i32 %545, %554
  %556 = icmp ult i32 %545, %554
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %14, align 1
  %558 = and i32 %555, 255
  %559 = tail call i32 @llvm.ctpop.i32(i32 %558)
  %560 = trunc i32 %559 to i8
  %561 = and i8 %560, 1
  %562 = xor i8 %561, 1
  store i8 %562, i8* %21, align 1
  %563 = xor i32 %554, %545
  %564 = xor i32 %563, %555
  %565 = lshr i32 %564, 4
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  store i8 %567, i8* %26, align 1
  %568 = icmp eq i32 %555, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %29, align 1
  %570 = lshr i32 %555, 31
  %571 = trunc i32 %570 to i8
  store i8 %571, i8* %32, align 1
  %572 = lshr i32 %545, 31
  %573 = lshr i32 %554, 31
  %574 = xor i32 %573, %572
  %575 = xor i32 %570, %572
  %576 = add nuw nsw i32 %575, %574
  %577 = icmp eq i32 %576, 2
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %38, align 1
  %579 = icmp ne i8 %571, 0
  %580 = xor i1 %579, %577
  %.v120 = select i1 %580, i64 16, i64 687
  %581 = add i64 %540, %.v120
  store i64 %581, i64* %3, align 8
  br i1 %580, label %block_430f83, label %block_.L_431222

block_430f83:                                     ; preds = %block_.L_430f73
  %582 = add i64 %541, -104
  %583 = add i64 %581, 4
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i64*
  %585 = load i64, i64* %584, align 8
  store i64 %585, i64* %RAX.i178, align 8
  %586 = add i64 %581, 8
  store i64 %586, i64* %3, align 8
  %587 = load i32, i32* %544, align 4
  %588 = sext i32 %587 to i64
  store i64 %588, i64* %RCX.i204, align 8
  %589 = shl nsw i64 %588, 3
  %590 = add i64 %589, %585
  %591 = add i64 %581, 12
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i64*
  %593 = load i64, i64* %592, align 8
  store i64 %593, i64* %RAX.i178, align 8
  %594 = add i64 %541, -128
  %595 = add i64 %581, 16
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i64*
  store i64 %593, i64* %596, align 8
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_430f93

block_.L_430f93:                                  ; preds = %block_.L_43103f, %block_430f83
  %597 = phi i64 [ %879, %block_.L_43103f ], [ %.pre102, %block_430f83 ]
  store i64 0, i64* %RAX.i178, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %CL.i1248, align 1
  %598 = load i64, i64* %RBP.i, align 8
  %599 = add i64 %598, -128
  %600 = add i64 %597, 8
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i64*
  %602 = load i64, i64* %601, align 8
  store i64 %602, i64* %RDX.i654, align 8
  %603 = add i64 %597, 11
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i8*
  %605 = load i8, i8* %604, align 1
  %606 = sext i8 %605 to i64
  %607 = and i64 %606, 4294967295
  store i64 %607, i64* %RAX.i178, align 8
  %608 = sext i8 %605 to i32
  store i8 0, i8* %14, align 1
  %609 = and i32 %608, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609)
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %614 = icmp eq i8 %605, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %29, align 1
  %616 = lshr i32 %608, 31
  %617 = trunc i32 %616 to i8
  store i8 %617, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %618 = add i64 %598, -209
  %619 = add i64 %597, 20
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i8*
  store i8 0, i8* %620, align 1
  %621 = load i64, i64* %3, align 8
  %622 = load i8, i8* %29, align 1
  %623 = icmp ne i8 %622, 0
  %.v175 = select i1 %623, i64 133, i64 6
  %624 = add i64 %621, %.v175
  store i64 %624, i64* %3, align 8
  %cmpBr_430fa7 = icmp eq i8 %622, 1
  br i1 %cmpBr_430fa7, label %block_.L_43102c, label %block_430fad

block_430fad:                                     ; preds = %block_.L_430f93
  store i8 1, i8* %AL.i1247, align 1
  %625 = load i64, i64* %RBP.i, align 8
  %626 = add i64 %625, -128
  %627 = add i64 %624, 6
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %626 to i64*
  %629 = load i64, i64* %628, align 8
  store i64 %629, i64* %RCX.i204, align 8
  %630 = add i64 %624, 9
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i8*
  %632 = load i8, i8* %631, align 1
  %633 = sext i8 %632 to i64
  %634 = and i64 %633, 4294967295
  store i64 %634, i64* %RDX.i654, align 8
  %635 = sext i8 %632 to i32
  %636 = add nsw i32 %635, -32
  %637 = icmp ult i8 %632, 32
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %14, align 1
  %639 = and i32 %636, 255
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %21, align 1
  %644 = xor i32 %636, %635
  %645 = lshr i32 %644, 4
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  store i8 %647, i8* %26, align 1
  %648 = icmp eq i32 %636, 0
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %29, align 1
  %650 = lshr i32 %636, 31
  %651 = trunc i32 %650 to i8
  store i8 %651, i8* %32, align 1
  %652 = lshr i32 %635, 31
  %653 = xor i32 %650, %652
  %654 = add nuw nsw i32 %653, %652
  %655 = icmp eq i32 %654, 2
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %38, align 1
  %657 = add i64 %625, -210
  %658 = add i64 %624, 18
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i8*
  store i8 1, i8* %659, align 1
  %660 = load i64, i64* %3, align 8
  %661 = load i8, i8* %29, align 1
  %662 = icmp ne i8 %661, 0
  %.v176 = select i1 %662, i64 97, i64 6
  %663 = add i64 %660, %.v176
  store i64 %663, i64* %3, align 8
  %cmpBr_430fbf = icmp eq i8 %661, 1
  br i1 %cmpBr_430fbf, label %block_.L_431020, label %block_430fc5

block_430fc5:                                     ; preds = %block_430fad
  store i8 1, i8* %AL.i1247, align 1
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -128
  %666 = add i64 %663, 6
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i64*
  %668 = load i64, i64* %667, align 8
  store i64 %668, i64* %RCX.i204, align 8
  %669 = add i64 %663, 9
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i8*
  %671 = load i8, i8* %670, align 1
  %672 = sext i8 %671 to i64
  %673 = and i64 %672, 4294967295
  store i64 %673, i64* %RDX.i654, align 8
  %674 = sext i8 %671 to i32
  %675 = add nsw i32 %674, -46
  %676 = icmp ult i8 %671, 46
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %14, align 1
  %678 = and i32 %675, 255
  %679 = tail call i32 @llvm.ctpop.i32(i32 %678)
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  store i8 %682, i8* %21, align 1
  %683 = xor i32 %675, %674
  %684 = lshr i32 %683, 4
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  store i8 %686, i8* %26, align 1
  %687 = icmp eq i32 %675, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %29, align 1
  %689 = lshr i32 %675, 31
  %690 = trunc i32 %689 to i8
  store i8 %690, i8* %32, align 1
  %691 = lshr i32 %674, 31
  %692 = xor i32 %689, %691
  %693 = add nuw nsw i32 %692, %691
  %694 = icmp eq i32 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %38, align 1
  %696 = add i64 %664, -210
  %697 = add i64 %663, 18
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i8*
  store i8 1, i8* %698, align 1
  %699 = load i64, i64* %3, align 8
  %700 = load i8, i8* %29, align 1
  %701 = icmp ne i8 %700, 0
  %.v177 = select i1 %701, i64 73, i64 6
  %702 = add i64 %699, %.v177
  store i64 %702, i64* %3, align 8
  %cmpBr_430fd7 = icmp eq i8 %700, 1
  br i1 %cmpBr_430fd7, label %block_.L_431020, label %block_430fdd

block_430fdd:                                     ; preds = %block_430fc5
  store i8 1, i8* %AL.i1247, align 1
  %703 = load i64, i64* %RBP.i, align 8
  %704 = add i64 %703, -128
  %705 = add i64 %702, 6
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i64*
  %707 = load i64, i64* %706, align 8
  store i64 %707, i64* %RCX.i204, align 8
  %708 = add i64 %702, 9
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i8*
  %710 = load i8, i8* %709, align 1
  %711 = sext i8 %710 to i64
  %712 = and i64 %711, 4294967295
  store i64 %712, i64* %RDX.i654, align 8
  %713 = sext i8 %710 to i32
  %714 = add nsw i32 %713, -95
  %715 = icmp ult i8 %710, 95
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %14, align 1
  %717 = and i32 %714, 255
  %718 = tail call i32 @llvm.ctpop.i32(i32 %717)
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  %721 = xor i8 %720, 1
  store i8 %721, i8* %21, align 1
  %722 = xor i32 %713, 16
  %723 = xor i32 %722, %714
  %724 = lshr i32 %723, 4
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  store i8 %726, i8* %26, align 1
  %727 = icmp eq i32 %714, 0
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %29, align 1
  %729 = lshr i32 %714, 31
  %730 = trunc i32 %729 to i8
  store i8 %730, i8* %32, align 1
  %731 = lshr i32 %713, 31
  %732 = xor i32 %729, %731
  %733 = add nuw nsw i32 %732, %731
  %734 = icmp eq i32 %733, 2
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %38, align 1
  %736 = add i64 %703, -210
  %737 = add i64 %702, 18
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i8*
  store i8 1, i8* %738, align 1
  %739 = load i64, i64* %3, align 8
  %740 = load i8, i8* %29, align 1
  %741 = icmp ne i8 %740, 0
  %.v178 = select i1 %741, i64 49, i64 6
  %742 = add i64 %739, %.v178
  store i64 %742, i64* %3, align 8
  %cmpBr_430fef = icmp eq i8 %740, 1
  br i1 %cmpBr_430fef, label %block_.L_431020, label %block_430ff5

block_430ff5:                                     ; preds = %block_430fdd
  store i8 1, i8* %AL.i1247, align 1
  %743 = load i64, i64* %RBP.i, align 8
  %744 = add i64 %743, -128
  %745 = add i64 %742, 6
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i64*
  %747 = load i64, i64* %746, align 8
  store i64 %747, i64* %RCX.i204, align 8
  %748 = add i64 %742, 9
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i8*
  %750 = load i8, i8* %749, align 1
  %751 = sext i8 %750 to i64
  %752 = and i64 %751, 4294967295
  store i64 %752, i64* %RDX.i654, align 8
  %753 = sext i8 %750 to i32
  %754 = add nsw i32 %753, -45
  %755 = icmp ult i8 %750, 45
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %14, align 1
  %757 = and i32 %754, 255
  %758 = tail call i32 @llvm.ctpop.i32(i32 %757)
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  %761 = xor i8 %760, 1
  store i8 %761, i8* %21, align 1
  %762 = xor i32 %754, %753
  %763 = lshr i32 %762, 4
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  store i8 %765, i8* %26, align 1
  %766 = icmp eq i32 %754, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %29, align 1
  %768 = lshr i32 %754, 31
  %769 = trunc i32 %768 to i8
  store i8 %769, i8* %32, align 1
  %770 = lshr i32 %753, 31
  %771 = xor i32 %768, %770
  %772 = add nuw nsw i32 %771, %770
  %773 = icmp eq i32 %772, 2
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %38, align 1
  %775 = add i64 %743, -210
  %776 = add i64 %742, 18
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i8*
  store i8 1, i8* %777, align 1
  %778 = load i64, i64* %3, align 8
  %779 = load i8, i8* %29, align 1
  %780 = icmp ne i8 %779, 0
  %.v179 = select i1 %780, i64 25, i64 6
  %781 = add i64 %778, %.v179
  store i64 %781, i64* %3, align 8
  %cmpBr_431007 = icmp eq i8 %779, 1
  br i1 %cmpBr_431007, label %block_.L_431020, label %block_43100d

block_43100d:                                     ; preds = %block_430ff5
  %782 = load i64, i64* %RBP.i, align 8
  %783 = add i64 %782, -128
  %784 = add i64 %781, 4
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %783 to i64*
  %786 = load i64, i64* %785, align 8
  store i64 %786, i64* %RAX.i178, align 8
  %787 = add i64 %781, 7
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i8*
  %789 = load i8, i8* %788, align 1
  %790 = sext i8 %789 to i64
  %791 = and i64 %790, 4294967295
  store i64 %791, i64* %RCX.i204, align 8
  %792 = sext i8 %789 to i32
  %793 = add nsw i32 %792, -126
  %794 = icmp ult i8 %789, 126
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %14, align 1
  %796 = and i32 %793, 255
  %797 = tail call i32 @llvm.ctpop.i32(i32 %796)
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  store i8 %800, i8* %21, align 1
  %801 = xor i32 %792, 16
  %802 = xor i32 %801, %793
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
  store i8 %807, i8* %DL.i1169, align 1
  %815 = add i64 %782, -210
  %816 = add i64 %781, 19
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i8*
  store i8 %807, i8* %817, align 1
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_431020

block_.L_431020:                                  ; preds = %block_43100d, %block_430ff5, %block_430fdd, %block_430fc5, %block_430fad
  %818 = phi i64 [ %.pre103, %block_43100d ], [ %781, %block_430ff5 ], [ %742, %block_430fdd ], [ %702, %block_430fc5 ], [ %663, %block_430fad ]
  %819 = load i64, i64* %RBP.i, align 8
  %820 = add i64 %819, -210
  %821 = add i64 %818, 6
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i8*
  %823 = load i8, i8* %822, align 1
  store i8 %823, i8* %AL.i1247, align 1
  %824 = add i64 %819, -209
  %825 = add i64 %818, 12
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i8*
  store i8 %823, i8* %826, align 1
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_43102c

block_.L_43102c:                                  ; preds = %block_.L_431020, %block_.L_430f93
  %827 = phi i64 [ %.pre104, %block_.L_431020 ], [ %624, %block_.L_430f93 ]
  %828 = load i64, i64* %RBP.i, align 8
  %829 = add i64 %828, -209
  %830 = add i64 %827, 6
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i8*
  %832 = load i8, i8* %831, align 1
  store i8 %832, i8* %AL.i1247, align 1
  %833 = and i8 %832, 1
  store i8 0, i8* %14, align 1
  %834 = zext i8 %833 to i32
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = xor i8 %836, 1
  store i8 %837, i8* %21, align 1
  %838 = xor i8 %833, 1
  store i8 %838, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %839 = icmp eq i8 %838, 0
  %.v135 = select i1 %839, i64 19, i64 14
  %840 = add i64 %827, %.v135
  store i64 %840, i64* %3, align 8
  br i1 %839, label %block_.L_43103f, label %block_43103a

block_43103a:                                     ; preds = %block_.L_43102c
  %841 = add i64 %840, 34
  br label %block_.L_43105c

block_.L_43103f:                                  ; preds = %block_.L_43102c
  %842 = add i64 %828, -128
  %843 = add i64 %840, 4
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i64*
  %845 = load i64, i64* %844, align 8
  store i64 %845, i64* %RAX.i178, align 8
  %846 = add i64 %840, 7
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i8*
  store i8 126, i8* %847, align 1
  %848 = load i64, i64* %RBP.i, align 8
  %849 = add i64 %848, -128
  %850 = load i64, i64* %3, align 8
  %851 = add i64 %850, 4
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %849 to i64*
  %853 = load i64, i64* %852, align 8
  %854 = add i64 %853, 1
  store i64 %854, i64* %RAX.i178, align 8
  %855 = icmp eq i64 %853, -1
  %856 = icmp eq i64 %854, 0
  %857 = or i1 %855, %856
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %14, align 1
  %859 = trunc i64 %854 to i32
  %860 = and i32 %859, 255
  %861 = tail call i32 @llvm.ctpop.i32(i32 %860)
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  store i8 %864, i8* %21, align 1
  %865 = xor i64 %854, %853
  %866 = lshr i64 %865, 4
  %867 = trunc i64 %866 to i8
  %868 = and i8 %867, 1
  store i8 %868, i8* %26, align 1
  %869 = zext i1 %856 to i8
  store i8 %869, i8* %29, align 1
  %870 = lshr i64 %854, 63
  %871 = trunc i64 %870 to i8
  store i8 %871, i8* %32, align 1
  %872 = lshr i64 %853, 63
  %873 = xor i64 %870, %872
  %874 = add nuw nsw i64 %873, %870
  %875 = icmp eq i64 %874, 2
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %38, align 1
  %877 = add i64 %850, 12
  store i64 %877, i64* %3, align 8
  store i64 %854, i64* %852, align 8
  %878 = load i64, i64* %3, align 8
  %879 = add i64 %878, -191
  store i64 %879, i64* %3, align 8
  br label %block_.L_430f93

block_.L_43105c:                                  ; preds = %block_.L_4310c3, %block_43103a
  %880 = phi i64 [ %828, %block_43103a ], [ %.pre105, %block_.L_4310c3 ]
  %storemerge = phi i64 [ %841, %block_43103a ], [ %1089, %block_.L_4310c3 ]
  %881 = add i64 %880, -128
  %882 = add i64 %storemerge, 4
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i64*
  %884 = load i64, i64* %883, align 8
  store i64 %884, i64* %RAX.i178, align 8
  %885 = add i64 %storemerge, 7
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i8*
  %887 = load i8, i8* %886, align 1
  %888 = sext i8 %887 to i64
  %889 = and i64 %888, 4294967295
  store i64 %889, i64* %RCX.i204, align 8
  %890 = sext i8 %887 to i32
  store i8 0, i8* %14, align 1
  %891 = and i32 %890, 255
  %892 = tail call i32 @llvm.ctpop.i32(i32 %891)
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  %895 = xor i8 %894, 1
  store i8 %895, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %896 = icmp eq i8 %887, 0
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %29, align 1
  %898 = lshr i32 %890, 31
  %899 = trunc i32 %898 to i8
  store i8 %899, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v136 = select i1 %896, i64 125, i64 16
  %900 = add i64 %storemerge, %.v136
  store i64 %900, i64* %3, align 8
  br i1 %896, label %block_.L_4310d9, label %block_43106c

block_43106c:                                     ; preds = %block_.L_43105c
  %901 = add i64 %900, 4
  store i64 %901, i64* %3, align 8
  %902 = load i64, i64* %883, align 8
  store i64 %902, i64* %RAX.i178, align 8
  %903 = add i64 %900, 7
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i8*
  %905 = load i8, i8* %904, align 1
  %906 = sext i8 %905 to i64
  %907 = and i64 %906, 4294967295
  store i64 %907, i64* %RCX.i204, align 8
  %908 = sext i8 %905 to i32
  %909 = add nsw i32 %908, -32
  %910 = icmp ult i8 %905, 32
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %14, align 1
  %912 = and i32 %909, 255
  %913 = tail call i32 @llvm.ctpop.i32(i32 %912)
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = xor i8 %915, 1
  store i8 %916, i8* %21, align 1
  %917 = xor i32 %909, %908
  %918 = lshr i32 %917, 4
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  store i8 %920, i8* %26, align 1
  %921 = icmp eq i32 %909, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %29, align 1
  %923 = lshr i32 %909, 31
  %924 = trunc i32 %923 to i8
  store i8 %924, i8* %32, align 1
  %925 = lshr i32 %908, 31
  %926 = xor i32 %923, %925
  %927 = add nuw nsw i32 %926, %925
  %928 = icmp eq i32 %927, 2
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %38, align 1
  %.v137 = select i1 %921, i64 80, i64 16
  %930 = add i64 %900, %.v137
  store i64 %930, i64* %3, align 8
  br i1 %921, label %block_.L_4310bc, label %block_43107c

block_43107c:                                     ; preds = %block_43106c
  %931 = add i64 %930, 4
  store i64 %931, i64* %3, align 8
  %932 = load i64, i64* %883, align 8
  store i64 %932, i64* %RAX.i178, align 8
  %933 = add i64 %930, 7
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i8*
  %935 = load i8, i8* %934, align 1
  %936 = sext i8 %935 to i64
  %937 = and i64 %936, 4294967295
  store i64 %937, i64* %RCX.i204, align 8
  %938 = sext i8 %935 to i32
  %939 = add nsw i32 %938, -46
  %940 = icmp ult i8 %935, 46
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %14, align 1
  %942 = and i32 %939, 255
  %943 = tail call i32 @llvm.ctpop.i32(i32 %942)
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = xor i8 %945, 1
  store i8 %946, i8* %21, align 1
  %947 = xor i32 %939, %938
  %948 = lshr i32 %947, 4
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  store i8 %950, i8* %26, align 1
  %951 = icmp eq i32 %939, 0
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %29, align 1
  %953 = lshr i32 %939, 31
  %954 = trunc i32 %953 to i8
  store i8 %954, i8* %32, align 1
  %955 = lshr i32 %938, 31
  %956 = xor i32 %953, %955
  %957 = add nuw nsw i32 %956, %955
  %958 = icmp eq i32 %957, 2
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %38, align 1
  %.v138 = select i1 %951, i64 64, i64 16
  %960 = add i64 %930, %.v138
  store i64 %960, i64* %3, align 8
  br i1 %951, label %block_.L_4310bc, label %block_43108c

block_43108c:                                     ; preds = %block_43107c
  %961 = add i64 %960, 4
  store i64 %961, i64* %3, align 8
  %962 = load i64, i64* %883, align 8
  store i64 %962, i64* %RAX.i178, align 8
  %963 = add i64 %960, 7
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i8*
  %965 = load i8, i8* %964, align 1
  %966 = sext i8 %965 to i64
  %967 = and i64 %966, 4294967295
  store i64 %967, i64* %RCX.i204, align 8
  %968 = sext i8 %965 to i32
  %969 = add nsw i32 %968, -95
  %970 = icmp ult i8 %965, 95
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %14, align 1
  %972 = and i32 %969, 255
  %973 = tail call i32 @llvm.ctpop.i32(i32 %972)
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  %976 = xor i8 %975, 1
  store i8 %976, i8* %21, align 1
  %977 = xor i32 %968, 16
  %978 = xor i32 %977, %969
  %979 = lshr i32 %978, 4
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  store i8 %981, i8* %26, align 1
  %982 = icmp eq i32 %969, 0
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %29, align 1
  %984 = lshr i32 %969, 31
  %985 = trunc i32 %984 to i8
  store i8 %985, i8* %32, align 1
  %986 = lshr i32 %968, 31
  %987 = xor i32 %984, %986
  %988 = add nuw nsw i32 %987, %986
  %989 = icmp eq i32 %988, 2
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %38, align 1
  %.v139 = select i1 %982, i64 48, i64 16
  %991 = add i64 %960, %.v139
  store i64 %991, i64* %3, align 8
  br i1 %982, label %block_.L_4310bc, label %block_43109c

block_43109c:                                     ; preds = %block_43108c
  %992 = add i64 %991, 4
  store i64 %992, i64* %3, align 8
  %993 = load i64, i64* %883, align 8
  store i64 %993, i64* %RAX.i178, align 8
  %994 = add i64 %991, 7
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i8*
  %996 = load i8, i8* %995, align 1
  %997 = sext i8 %996 to i64
  %998 = and i64 %997, 4294967295
  store i64 %998, i64* %RCX.i204, align 8
  %999 = sext i8 %996 to i32
  %1000 = add nsw i32 %999, -45
  %1001 = icmp ult i8 %996, 45
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %14, align 1
  %1003 = and i32 %1000, 255
  %1004 = tail call i32 @llvm.ctpop.i32(i32 %1003)
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  store i8 %1007, i8* %21, align 1
  %1008 = xor i32 %1000, %999
  %1009 = lshr i32 %1008, 4
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  store i8 %1011, i8* %26, align 1
  %1012 = icmp eq i32 %1000, 0
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %29, align 1
  %1014 = lshr i32 %1000, 31
  %1015 = trunc i32 %1014 to i8
  store i8 %1015, i8* %32, align 1
  %1016 = lshr i32 %999, 31
  %1017 = xor i32 %1014, %1016
  %1018 = add nuw nsw i32 %1017, %1016
  %1019 = icmp eq i32 %1018, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %38, align 1
  %.v140 = select i1 %1012, i64 32, i64 16
  %1021 = add i64 %991, %.v140
  store i64 %1021, i64* %3, align 8
  br i1 %1012, label %block_.L_4310bc, label %block_4310ac

block_4310ac:                                     ; preds = %block_43109c
  %1022 = add i64 %1021, 4
  store i64 %1022, i64* %3, align 8
  %1023 = load i64, i64* %883, align 8
  store i64 %1023, i64* %RAX.i178, align 8
  %1024 = add i64 %1021, 7
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i8*
  %1026 = load i8, i8* %1025, align 1
  %1027 = sext i8 %1026 to i64
  %1028 = and i64 %1027, 4294967295
  store i64 %1028, i64* %RCX.i204, align 8
  %1029 = sext i8 %1026 to i32
  %1030 = add nsw i32 %1029, -126
  %1031 = icmp ult i8 %1026, 126
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %14, align 1
  %1033 = and i32 %1030, 255
  %1034 = tail call i32 @llvm.ctpop.i32(i32 %1033)
  %1035 = trunc i32 %1034 to i8
  %1036 = and i8 %1035, 1
  %1037 = xor i8 %1036, 1
  store i8 %1037, i8* %21, align 1
  %1038 = xor i32 %1029, 16
  %1039 = xor i32 %1038, %1030
  %1040 = lshr i32 %1039, 4
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  store i8 %1042, i8* %26, align 1
  %1043 = icmp eq i32 %1030, 0
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %29, align 1
  %1045 = lshr i32 %1030, 31
  %1046 = trunc i32 %1045 to i8
  store i8 %1046, i8* %32, align 1
  %1047 = lshr i32 %1029, 31
  %1048 = xor i32 %1045, %1047
  %1049 = add nuw nsw i32 %1048, %1047
  %1050 = icmp eq i32 %1049, 2
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %38, align 1
  %.v141 = select i1 %1043, i64 16, i64 23
  %1052 = add i64 %1021, %.v141
  store i64 %1052, i64* %3, align 8
  br i1 %1043, label %block_.L_4310bc, label %block_.L_4310c3

block_.L_4310bc:                                  ; preds = %block_4310ac, %block_43109c, %block_43108c, %block_43107c, %block_43106c
  %1053 = phi i64 [ %1052, %block_4310ac ], [ %1021, %block_43109c ], [ %991, %block_43108c ], [ %960, %block_43107c ], [ %930, %block_43106c ]
  %1054 = add i64 %1053, 4
  store i64 %1054, i64* %3, align 8
  %1055 = load i64, i64* %883, align 8
  store i64 %1055, i64* %RAX.i178, align 8
  %1056 = add i64 %1053, 7
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to i8*
  store i8 46, i8* %1057, align 1
  %.pre106 = load i64, i64* %3, align 8
  %.pre107 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4310c3

block_.L_4310c3:                                  ; preds = %block_4310ac, %block_.L_4310bc
  %1058 = phi i64 [ %.pre107, %block_.L_4310bc ], [ %880, %block_4310ac ]
  %1059 = phi i64 [ %.pre106, %block_.L_4310bc ], [ %1052, %block_4310ac ]
  %1060 = add i64 %1058, -128
  %1061 = add i64 %1059, 9
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i64*
  %1063 = load i64, i64* %1062, align 8
  %1064 = add i64 %1063, 1
  store i64 %1064, i64* %RAX.i178, align 8
  %1065 = icmp eq i64 %1063, -1
  %1066 = icmp eq i64 %1064, 0
  %1067 = or i1 %1065, %1066
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %14, align 1
  %1069 = trunc i64 %1064 to i32
  %1070 = and i32 %1069, 255
  %1071 = tail call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  store i8 %1074, i8* %21, align 1
  %1075 = xor i64 %1064, %1063
  %1076 = lshr i64 %1075, 4
  %1077 = trunc i64 %1076 to i8
  %1078 = and i8 %1077, 1
  store i8 %1078, i8* %26, align 1
  %1079 = zext i1 %1066 to i8
  store i8 %1079, i8* %29, align 1
  %1080 = lshr i64 %1064, 63
  %1081 = trunc i64 %1080 to i8
  store i8 %1081, i8* %32, align 1
  %1082 = lshr i64 %1063, 63
  %1083 = xor i64 %1080, %1082
  %1084 = add nuw nsw i64 %1083, %1080
  %1085 = icmp eq i64 %1084, 2
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %38, align 1
  %1087 = add i64 %1059, 17
  store i64 %1087, i64* %3, align 8
  store i64 %1064, i64* %1062, align 8
  %1088 = load i64, i64* %3, align 8
  %1089 = add i64 %1088, -120
  %1090 = add i64 %1088, 5
  store i64 %1090, i64* %3, align 8
  %.pre105 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43105c

block_.L_4310d9:                                  ; preds = %block_.L_43105c
  %1091 = add i64 %880, -16
  %1092 = add i64 %900, 4
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i64*
  %1094 = load i64, i64* %1093, align 8
  store i64 %1094, i64* %RAX.i178, align 8
  %1095 = add i64 %1094, 24
  %1096 = add i64 %900, 7
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = add i32 %1098, -1
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RCX.i204, align 8
  %1101 = icmp eq i32 %1098, 0
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %14, align 1
  %1103 = and i32 %1099, 255
  %1104 = tail call i32 @llvm.ctpop.i32(i32 %1103)
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  %1107 = xor i8 %1106, 1
  store i8 %1107, i8* %21, align 1
  %1108 = xor i32 %1099, %1098
  %1109 = lshr i32 %1108, 4
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  store i8 %1111, i8* %26, align 1
  %1112 = icmp eq i32 %1099, 0
  %1113 = zext i1 %1112 to i8
  store i8 %1113, i8* %29, align 1
  %1114 = lshr i32 %1099, 31
  %1115 = trunc i32 %1114 to i8
  store i8 %1115, i8* %32, align 1
  %1116 = lshr i32 %1098, 31
  %1117 = xor i32 %1114, %1116
  %1118 = add nuw nsw i32 %1117, %1116
  %1119 = icmp eq i32 %1118, 2
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %38, align 1
  %1121 = add i64 %880, -140
  %1122 = add i64 %900, 16
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i32*
  store i32 %1099, i32* %1123, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_4310e9

block_.L_4310e9:                                  ; preds = %block_.L_4311e4, %block_.L_4310d9
  %1124 = phi i64 [ %1534, %block_.L_4311e4 ], [ %.pre108, %block_.L_4310d9 ]
  store i64 0, i64* %RAX.i178, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %CL.i1248, align 1
  %1125 = load i64, i64* %RBP.i, align 8
  %1126 = add i64 %1125, -140
  %1127 = add i64 %1124, 11
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i32*
  %1129 = load i32, i32* %1128, align 4
  store i8 0, i8* %14, align 1
  %1130 = and i32 %1129, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130)
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1135 = icmp eq i32 %1129, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %29, align 1
  %1137 = lshr i32 %1129, 31
  %1138 = trunc i32 %1137 to i8
  store i8 %1138, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1139 = add i64 %1125, -211
  %1140 = add i64 %1124, 17
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i8*
  store i8 0, i8* %1141, align 1
  %1142 = load i64, i64* %3, align 8
  %1143 = add i64 %1142, 215
  %1144 = add i64 %1142, 6
  %1145 = load i8, i8* %29, align 1
  %1146 = icmp ne i8 %1145, 0
  %1147 = load i8, i8* %32, align 1
  %1148 = icmp ne i8 %1147, 0
  %1149 = load i8, i8* %38, align 1
  %1150 = icmp ne i8 %1149, 0
  %1151 = xor i1 %1148, %1150
  %1152 = or i1 %1146, %1151
  %1153 = select i1 %1152, i64 %1143, i64 %1144
  store i64 %1153, i64* %3, align 8
  br i1 %1152, label %block_.L_4311d1, label %block_431100

block_431100:                                     ; preds = %block_.L_4310e9
  store i8 1, i8* %AL.i1247, align 1
  %1154 = load i64, i64* %RBP.i, align 8
  %1155 = add i64 %1154, -104
  %1156 = add i64 %1153, 6
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i64*
  %1158 = load i64, i64* %1157, align 8
  store i64 %1158, i64* %RCX.i204, align 8
  %1159 = add i64 %1154, -116
  %1160 = add i64 %1153, 10
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i32*
  %1162 = load i32, i32* %1161, align 4
  %1163 = sext i32 %1162 to i64
  store i64 %1163, i64* %RDX.i654, align 8
  %1164 = shl nsw i64 %1163, 3
  %1165 = add i64 %1164, %1158
  %1166 = add i64 %1153, 14
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i64*
  %1168 = load i64, i64* %1167, align 8
  store i64 %1168, i64* %RCX.i204, align 8
  %1169 = add i64 %1154, -140
  %1170 = add i64 %1153, 21
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i32*
  %1172 = load i32, i32* %1171, align 4
  %1173 = sext i32 %1172 to i64
  store i64 %1173, i64* %RDX.i654, align 8
  %1174 = add i64 %1168, %1173
  %1175 = add i64 %1153, 25
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i8*
  %1177 = load i8, i8* %1176, align 1
  %1178 = sext i8 %1177 to i64
  %1179 = and i64 %1178, 4294967295
  store i64 %1179, i64* %RSI.i319, align 8
  %1180 = sext i8 %1177 to i32
  %1181 = add nsw i32 %1180, -32
  %1182 = icmp ult i8 %1177, 32
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %14, align 1
  %1184 = and i32 %1181, 255
  %1185 = tail call i32 @llvm.ctpop.i32(i32 %1184)
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = xor i8 %1187, 1
  store i8 %1188, i8* %21, align 1
  %1189 = xor i32 %1181, %1180
  %1190 = lshr i32 %1189, 4
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  store i8 %1192, i8* %26, align 1
  %1193 = icmp eq i32 %1181, 0
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %29, align 1
  %1195 = lshr i32 %1181, 31
  %1196 = trunc i32 %1195 to i8
  store i8 %1196, i8* %32, align 1
  %1197 = lshr i32 %1180, 31
  %1198 = xor i32 %1195, %1197
  %1199 = add nuw nsw i32 %1198, %1197
  %1200 = icmp eq i32 %1199, 2
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %38, align 1
  %1202 = add i64 %1154, -212
  %1203 = add i64 %1153, 34
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to i8*
  store i8 1, i8* %1204, align 1
  %1205 = load i64, i64* %3, align 8
  %1206 = load i8, i8* %29, align 1
  %1207 = icmp ne i8 %1206, 0
  %.v180 = select i1 %1207, i64 163, i64 6
  %1208 = add i64 %1205, %.v180
  store i64 %1208, i64* %3, align 8
  %cmpBr_431122 = icmp eq i8 %1206, 1
  br i1 %cmpBr_431122, label %block_.L_4311c5, label %block_431128

block_431128:                                     ; preds = %block_431100
  store i8 1, i8* %AL.i1247, align 1
  %1209 = load i64, i64* %RBP.i, align 8
  %1210 = add i64 %1209, -104
  %1211 = add i64 %1208, 6
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i64*
  %1213 = load i64, i64* %1212, align 8
  store i64 %1213, i64* %RCX.i204, align 8
  %1214 = add i64 %1209, -116
  %1215 = add i64 %1208, 10
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = sext i32 %1217 to i64
  store i64 %1218, i64* %RDX.i654, align 8
  %1219 = shl nsw i64 %1218, 3
  %1220 = add i64 %1219, %1213
  %1221 = add i64 %1208, 14
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i64*
  %1223 = load i64, i64* %1222, align 8
  store i64 %1223, i64* %RCX.i204, align 8
  %1224 = add i64 %1209, -140
  %1225 = add i64 %1208, 21
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i32*
  %1227 = load i32, i32* %1226, align 4
  %1228 = sext i32 %1227 to i64
  store i64 %1228, i64* %RDX.i654, align 8
  %1229 = add i64 %1223, %1228
  %1230 = add i64 %1208, 25
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i8*
  %1232 = load i8, i8* %1231, align 1
  %1233 = sext i8 %1232 to i64
  %1234 = and i64 %1233, 4294967295
  store i64 %1234, i64* %RSI.i319, align 8
  %1235 = sext i8 %1232 to i32
  %1236 = add nsw i32 %1235, -46
  %1237 = icmp ult i8 %1232, 46
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %14, align 1
  %1239 = and i32 %1236, 255
  %1240 = tail call i32 @llvm.ctpop.i32(i32 %1239)
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  %1243 = xor i8 %1242, 1
  store i8 %1243, i8* %21, align 1
  %1244 = xor i32 %1236, %1235
  %1245 = lshr i32 %1244, 4
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  store i8 %1247, i8* %26, align 1
  %1248 = icmp eq i32 %1236, 0
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %29, align 1
  %1250 = lshr i32 %1236, 31
  %1251 = trunc i32 %1250 to i8
  store i8 %1251, i8* %32, align 1
  %1252 = lshr i32 %1235, 31
  %1253 = xor i32 %1250, %1252
  %1254 = add nuw nsw i32 %1253, %1252
  %1255 = icmp eq i32 %1254, 2
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %38, align 1
  %1257 = add i64 %1209, -212
  %1258 = add i64 %1208, 34
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i8*
  store i8 1, i8* %1259, align 1
  %1260 = load i64, i64* %3, align 8
  %1261 = load i8, i8* %29, align 1
  %1262 = icmp ne i8 %1261, 0
  %.v181 = select i1 %1262, i64 123, i64 6
  %1263 = add i64 %1260, %.v181
  store i64 %1263, i64* %3, align 8
  %cmpBr_43114a = icmp eq i8 %1261, 1
  br i1 %cmpBr_43114a, label %block_.L_4311c5, label %block_431150

block_431150:                                     ; preds = %block_431128
  store i8 1, i8* %AL.i1247, align 1
  %1264 = load i64, i64* %RBP.i, align 8
  %1265 = add i64 %1264, -104
  %1266 = add i64 %1263, 6
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to i64*
  %1268 = load i64, i64* %1267, align 8
  store i64 %1268, i64* %RCX.i204, align 8
  %1269 = add i64 %1264, -116
  %1270 = add i64 %1263, 10
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1269 to i32*
  %1272 = load i32, i32* %1271, align 4
  %1273 = sext i32 %1272 to i64
  store i64 %1273, i64* %RDX.i654, align 8
  %1274 = shl nsw i64 %1273, 3
  %1275 = add i64 %1274, %1268
  %1276 = add i64 %1263, 14
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i64*
  %1278 = load i64, i64* %1277, align 8
  store i64 %1278, i64* %RCX.i204, align 8
  %1279 = add i64 %1264, -140
  %1280 = add i64 %1263, 21
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to i32*
  %1282 = load i32, i32* %1281, align 4
  %1283 = sext i32 %1282 to i64
  store i64 %1283, i64* %RDX.i654, align 8
  %1284 = add i64 %1278, %1283
  %1285 = add i64 %1263, 25
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i8*
  %1287 = load i8, i8* %1286, align 1
  %1288 = sext i8 %1287 to i64
  %1289 = and i64 %1288, 4294967295
  store i64 %1289, i64* %RSI.i319, align 8
  %1290 = sext i8 %1287 to i32
  %1291 = add nsw i32 %1290, -95
  %1292 = icmp ult i8 %1287, 95
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %14, align 1
  %1294 = and i32 %1291, 255
  %1295 = tail call i32 @llvm.ctpop.i32(i32 %1294)
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  %1298 = xor i8 %1297, 1
  store i8 %1298, i8* %21, align 1
  %1299 = xor i32 %1290, 16
  %1300 = xor i32 %1299, %1291
  %1301 = lshr i32 %1300, 4
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  store i8 %1303, i8* %26, align 1
  %1304 = icmp eq i32 %1291, 0
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %29, align 1
  %1306 = lshr i32 %1291, 31
  %1307 = trunc i32 %1306 to i8
  store i8 %1307, i8* %32, align 1
  %1308 = lshr i32 %1290, 31
  %1309 = xor i32 %1306, %1308
  %1310 = add nuw nsw i32 %1309, %1308
  %1311 = icmp eq i32 %1310, 2
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %38, align 1
  %1313 = add i64 %1264, -212
  %1314 = add i64 %1263, 34
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i8*
  store i8 1, i8* %1315, align 1
  %1316 = load i64, i64* %3, align 8
  %1317 = load i8, i8* %29, align 1
  %1318 = icmp ne i8 %1317, 0
  %.v182 = select i1 %1318, i64 83, i64 6
  %1319 = add i64 %1316, %.v182
  store i64 %1319, i64* %3, align 8
  %cmpBr_431172 = icmp eq i8 %1317, 1
  br i1 %cmpBr_431172, label %block_.L_4311c5, label %block_431178

block_431178:                                     ; preds = %block_431150
  store i8 1, i8* %AL.i1247, align 1
  %1320 = load i64, i64* %RBP.i, align 8
  %1321 = add i64 %1320, -104
  %1322 = add i64 %1319, 6
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1321 to i64*
  %1324 = load i64, i64* %1323, align 8
  store i64 %1324, i64* %RCX.i204, align 8
  %1325 = add i64 %1320, -116
  %1326 = add i64 %1319, 10
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i32*
  %1328 = load i32, i32* %1327, align 4
  %1329 = sext i32 %1328 to i64
  store i64 %1329, i64* %RDX.i654, align 8
  %1330 = shl nsw i64 %1329, 3
  %1331 = add i64 %1330, %1324
  %1332 = add i64 %1319, 14
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i64*
  %1334 = load i64, i64* %1333, align 8
  store i64 %1334, i64* %RCX.i204, align 8
  %1335 = add i64 %1320, -140
  %1336 = add i64 %1319, 21
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = sext i32 %1338 to i64
  store i64 %1339, i64* %RDX.i654, align 8
  %1340 = add i64 %1334, %1339
  %1341 = add i64 %1319, 25
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i8*
  %1343 = load i8, i8* %1342, align 1
  %1344 = sext i8 %1343 to i64
  %1345 = and i64 %1344, 4294967295
  store i64 %1345, i64* %RSI.i319, align 8
  %1346 = sext i8 %1343 to i32
  %1347 = add nsw i32 %1346, -45
  %1348 = icmp ult i8 %1343, 45
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %14, align 1
  %1350 = and i32 %1347, 255
  %1351 = tail call i32 @llvm.ctpop.i32(i32 %1350)
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  %1354 = xor i8 %1353, 1
  store i8 %1354, i8* %21, align 1
  %1355 = xor i32 %1347, %1346
  %1356 = lshr i32 %1355, 4
  %1357 = trunc i32 %1356 to i8
  %1358 = and i8 %1357, 1
  store i8 %1358, i8* %26, align 1
  %1359 = icmp eq i32 %1347, 0
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %29, align 1
  %1361 = lshr i32 %1347, 31
  %1362 = trunc i32 %1361 to i8
  store i8 %1362, i8* %32, align 1
  %1363 = lshr i32 %1346, 31
  %1364 = xor i32 %1361, %1363
  %1365 = add nuw nsw i32 %1364, %1363
  %1366 = icmp eq i32 %1365, 2
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %38, align 1
  %1368 = add i64 %1320, -212
  %1369 = add i64 %1319, 34
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i8*
  store i8 1, i8* %1370, align 1
  %1371 = load i64, i64* %3, align 8
  %1372 = load i8, i8* %29, align 1
  %1373 = icmp ne i8 %1372, 0
  %.v183 = select i1 %1373, i64 43, i64 6
  %1374 = add i64 %1371, %.v183
  store i64 %1374, i64* %3, align 8
  %cmpBr_43119a = icmp eq i8 %1372, 1
  br i1 %cmpBr_43119a, label %block_.L_4311c5, label %block_4311a0

block_4311a0:                                     ; preds = %block_431178
  %1375 = load i64, i64* %RBP.i, align 8
  %1376 = add i64 %1375, -104
  %1377 = add i64 %1374, 4
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to i64*
  %1379 = load i64, i64* %1378, align 8
  store i64 %1379, i64* %RAX.i178, align 8
  %1380 = add i64 %1375, -116
  %1381 = add i64 %1374, 8
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i32*
  %1383 = load i32, i32* %1382, align 4
  %1384 = sext i32 %1383 to i64
  store i64 %1384, i64* %RCX.i204, align 8
  %1385 = shl nsw i64 %1384, 3
  %1386 = add i64 %1385, %1379
  %1387 = add i64 %1374, 12
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i64*
  %1389 = load i64, i64* %1388, align 8
  store i64 %1389, i64* %RAX.i178, align 8
  %1390 = add i64 %1375, -140
  %1391 = add i64 %1374, 19
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = sext i32 %1393 to i64
  store i64 %1394, i64* %RCX.i204, align 8
  %1395 = add i64 %1389, %1394
  %1396 = add i64 %1374, 23
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i8*
  %1398 = load i8, i8* %1397, align 1
  %1399 = sext i8 %1398 to i64
  %1400 = and i64 %1399, 4294967295
  store i64 %1400, i64* %RDX.i654, align 8
  %1401 = sext i8 %1398 to i32
  %1402 = add nsw i32 %1401, -126
  %1403 = icmp ult i8 %1398, 126
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %14, align 1
  %1405 = and i32 %1402, 255
  %1406 = tail call i32 @llvm.ctpop.i32(i32 %1405)
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  %1409 = xor i8 %1408, 1
  store i8 %1409, i8* %21, align 1
  %1410 = xor i32 %1401, 16
  %1411 = xor i32 %1410, %1402
  %1412 = lshr i32 %1411, 4
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  store i8 %1414, i8* %26, align 1
  %1415 = icmp eq i32 %1402, 0
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %29, align 1
  %1417 = lshr i32 %1402, 31
  %1418 = trunc i32 %1417 to i8
  store i8 %1418, i8* %32, align 1
  %1419 = lshr i32 %1401, 31
  %1420 = xor i32 %1417, %1419
  %1421 = add nuw nsw i32 %1420, %1419
  %1422 = icmp eq i32 %1421, 2
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %38, align 1
  store i8 %1416, i8* %SIL.i933, align 1
  %1424 = add i64 %1375, -212
  %1425 = add i64 %1374, 37
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1424 to i8*
  store i8 %1416, i8* %1426, align 1
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_4311c5

block_.L_4311c5:                                  ; preds = %block_4311a0, %block_431178, %block_431150, %block_431128, %block_431100
  %1427 = phi i64 [ %.pre109, %block_4311a0 ], [ %1374, %block_431178 ], [ %1319, %block_431150 ], [ %1263, %block_431128 ], [ %1208, %block_431100 ]
  %1428 = load i64, i64* %RBP.i, align 8
  %1429 = add i64 %1428, -212
  %1430 = add i64 %1427, 6
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i8*
  %1432 = load i8, i8* %1431, align 1
  store i8 %1432, i8* %AL.i1247, align 1
  %1433 = add i64 %1428, -211
  %1434 = add i64 %1427, 12
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i8*
  store i8 %1432, i8* %1435, align 1
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_4311d1

block_.L_4311d1:                                  ; preds = %block_.L_4311c5, %block_.L_4310e9
  %1436 = phi i64 [ %.pre110, %block_.L_4311c5 ], [ %1143, %block_.L_4310e9 ]
  %1437 = load i64, i64* %RBP.i, align 8
  %1438 = add i64 %1437, -211
  %1439 = add i64 %1436, 6
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1438 to i8*
  %1441 = load i8, i8* %1440, align 1
  store i8 %1441, i8* %AL.i1247, align 1
  %1442 = and i8 %1441, 1
  store i8 0, i8* %14, align 1
  %1443 = zext i8 %1442 to i32
  %1444 = tail call i32 @llvm.ctpop.i32(i32 %1443)
  %1445 = trunc i32 %1444 to i8
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %21, align 1
  %1447 = xor i8 %1442, 1
  store i8 %1447, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1448 = icmp eq i8 %1447, 0
  %.v115 = select i1 %1448, i64 19, i64 14
  %1449 = add i64 %1436, %.v115
  store i64 %1449, i64* %3, align 8
  br i1 %1448, label %block_.L_4311e4, label %block_4311df

block_4311df:                                     ; preds = %block_.L_4311d1
  %1450 = add i64 %1437, -116
  %1451 = add i64 %1449, 56
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = add i32 %1453, 1
  %1455 = zext i32 %1454 to i64
  store i64 %1455, i64* %RAX.i178, align 8
  %1456 = icmp eq i32 %1453, -1
  %1457 = icmp eq i32 %1454, 0
  %1458 = or i1 %1456, %1457
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %14, align 1
  %1460 = and i32 %1454, 255
  %1461 = tail call i32 @llvm.ctpop.i32(i32 %1460)
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = xor i8 %1463, 1
  store i8 %1464, i8* %21, align 1
  %1465 = xor i32 %1454, %1453
  %1466 = lshr i32 %1465, 4
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  store i8 %1468, i8* %26, align 1
  %1469 = zext i1 %1457 to i8
  store i8 %1469, i8* %29, align 1
  %1470 = lshr i32 %1454, 31
  %1471 = trunc i32 %1470 to i8
  store i8 %1471, i8* %32, align 1
  %1472 = lshr i32 %1453, 31
  %1473 = xor i32 %1470, %1472
  %1474 = add nuw nsw i32 %1473, %1470
  %1475 = icmp eq i32 %1474, 2
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %38, align 1
  %1477 = add i64 %1449, 62
  store i64 %1477, i64* %3, align 8
  store i32 %1454, i32* %1452, align 4
  %1478 = load i64, i64* %3, align 8
  %1479 = add i64 %1478, -682
  store i64 %1479, i64* %3, align 8
  br label %block_.L_430f73

block_.L_4311e4:                                  ; preds = %block_.L_4311d1
  %1480 = add i64 %1437, -104
  %1481 = add i64 %1449, 4
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i64*
  %1483 = load i64, i64* %1482, align 8
  store i64 %1483, i64* %RAX.i178, align 8
  %1484 = add i64 %1437, -116
  %1485 = add i64 %1449, 8
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = sext i32 %1487 to i64
  store i64 %1488, i64* %RCX.i204, align 8
  %1489 = shl nsw i64 %1488, 3
  %1490 = add i64 %1489, %1483
  %1491 = add i64 %1449, 12
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i64*
  %1493 = load i64, i64* %1492, align 8
  store i64 %1493, i64* %RAX.i178, align 8
  %1494 = add i64 %1437, -140
  %1495 = add i64 %1449, 19
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = sext i32 %1497 to i64
  store i64 %1498, i64* %RCX.i204, align 8
  %1499 = add i64 %1493, %1498
  %1500 = add i64 %1449, 23
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i8*
  store i8 126, i8* %1501, align 1
  %1502 = load i64, i64* %RBP.i, align 8
  %1503 = add i64 %1502, -140
  %1504 = load i64, i64* %3, align 8
  %1505 = add i64 %1504, 6
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1503 to i32*
  %1507 = load i32, i32* %1506, align 4
  %1508 = add i32 %1507, -1
  %1509 = zext i32 %1508 to i64
  store i64 %1509, i64* %RAX.i178, align 8
  %1510 = icmp ne i32 %1507, 0
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %14, align 1
  %1512 = and i32 %1508, 255
  %1513 = tail call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %21, align 1
  %1517 = xor i32 %1507, 16
  %1518 = xor i32 %1517, %1508
  %1519 = lshr i32 %1518, 4
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  store i8 %1521, i8* %26, align 1
  %1522 = icmp eq i32 %1508, 0
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %29, align 1
  %1524 = lshr i32 %1508, 31
  %1525 = trunc i32 %1524 to i8
  store i8 %1525, i8* %32, align 1
  %1526 = lshr i32 %1507, 31
  %1527 = xor i32 %1524, %1526
  %1528 = xor i32 %1524, 1
  %1529 = add nuw nsw i32 %1527, %1528
  %1530 = icmp eq i32 %1529, 2
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %38, align 1
  %1532 = add i64 %1504, 15
  store i64 %1532, i64* %3, align 8
  store i32 %1508, i32* %1506, align 4
  %1533 = load i64, i64* %3, align 8
  %1534 = add i64 %1533, -289
  store i64 %1534, i64* %3, align 8
  br label %block_.L_4310e9

block_.L_431222:                                  ; preds = %block_.L_430f73
  %1535 = add i64 %541, -136
  %1536 = add i64 %581, 10
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  store i32 0, i32* %1537, align 4
  %1538 = load i64, i64* %RBP.i, align 8
  %1539 = add i64 %1538, -116
  %1540 = load i64, i64* %3, align 8
  %1541 = add i64 %1540, 7
  store i64 %1541, i64* %3, align 8
  %1542 = inttoptr i64 %1539 to i32*
  store i32 0, i32* %1542, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_431233

block_.L_431233:                                  ; preds = %block_.L_431278, %block_.L_431222
  %1543 = phi i64 [ %.pre82, %block_.L_431222 ], [ %1684, %block_.L_431278 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_430e48, %block_.L_431222 ], [ %1604, %block_.L_431278 ]
  %1544 = load i64, i64* %RBP.i, align 8
  %1545 = add i64 %1544, -116
  %1546 = add i64 %1543, 3
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i32*
  %1548 = load i32, i32* %1547, align 4
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RAX.i178, align 8
  %1550 = add i64 %1544, -16
  %1551 = add i64 %1543, 7
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i64*
  %1553 = load i64, i64* %1552, align 8
  store i64 %1553, i64* %RCX.i204, align 8
  %1554 = add i64 %1553, 28
  %1555 = add i64 %1543, 10
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1554 to i32*
  %1557 = load i32, i32* %1556, align 4
  %1558 = sub i32 %1548, %1557
  %1559 = icmp ult i32 %1548, %1557
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %14, align 1
  %1561 = and i32 %1558, 255
  %1562 = tail call i32 @llvm.ctpop.i32(i32 %1561)
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  %1565 = xor i8 %1564, 1
  store i8 %1565, i8* %21, align 1
  %1566 = xor i32 %1557, %1548
  %1567 = xor i32 %1566, %1558
  %1568 = lshr i32 %1567, 4
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  store i8 %1570, i8* %26, align 1
  %1571 = icmp eq i32 %1558, 0
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %29, align 1
  %1573 = lshr i32 %1558, 31
  %1574 = trunc i32 %1573 to i8
  store i8 %1574, i8* %32, align 1
  %1575 = lshr i32 %1548, 31
  %1576 = lshr i32 %1557, 31
  %1577 = xor i32 %1576, %1575
  %1578 = xor i32 %1573, %1575
  %1579 = add nuw nsw i32 %1578, %1577
  %1580 = icmp eq i32 %1579, 2
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %38, align 1
  %1582 = icmp ne i8 %1574, 0
  %1583 = xor i1 %1582, %1580
  %.v = select i1 %1583, i64 16, i64 88
  %1584 = add i64 %1543, %.v
  %1585 = add i64 %1584, 4
  store i64 %1585, i64* %3, align 8
  %1586 = load i64, i64* %1552, align 8
  store i64 %1586, i64* %RAX.i178, align 8
  br i1 %1583, label %block_431243, label %block_.L_43128b

block_431243:                                     ; preds = %block_.L_431233
  %1587 = add i64 %1586, 8
  %1588 = add i64 %1584, 8
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i64*
  %1590 = load i64, i64* %1589, align 8
  store i64 %1590, i64* %RAX.i178, align 8
  %1591 = add i64 %1584, 12
  store i64 %1591, i64* %3, align 8
  %1592 = load i32, i32* %1547, align 4
  %1593 = sext i32 %1592 to i64
  store i64 %1593, i64* %RCX.i204, align 8
  %1594 = shl nsw i64 %1593, 3
  %1595 = add i64 %1594, %1590
  %1596 = add i64 %1584, 16
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1595 to i64*
  %1598 = load i64, i64* %1597, align 8
  store i64 %1598, i64* %RDI.i239, align 8
  %1599 = add i64 %1584, -196067
  %1600 = add i64 %1584, 21
  %1601 = load i64, i64* %6, align 8
  %1602 = add i64 %1601, -8
  %1603 = inttoptr i64 %1602 to i64*
  store i64 %1600, i64* %1603, align 8
  store i64 %1602, i64* %6, align 8
  store i64 %1599, i64* %3, align 8
  %1604 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %MEMORY.14)
  %1605 = load i32, i32* %EAX.i1438, align 4
  %1606 = zext i32 %1605 to i64
  %1607 = load i64, i64* %3, align 8
  store i64 %1606, i64* %RDX.i654, align 8
  %1608 = load i64, i64* %RBP.i, align 8
  %1609 = add i64 %1608, -132
  %1610 = add i64 %1607, 8
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i32*
  store i32 %1605, i32* %1611, align 4
  %1612 = load i32, i32* %EDX.i1329, align 4
  %1613 = load i64, i64* %RBP.i, align 8
  %1614 = add i64 %1613, -136
  %1615 = load i64, i64* %3, align 8
  %1616 = add i64 %1615, 6
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1614 to i32*
  %1618 = load i32, i32* %1617, align 4
  %1619 = sub i32 %1612, %1618
  %1620 = icmp ult i32 %1612, %1618
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %14, align 1
  %1622 = and i32 %1619, 255
  %1623 = tail call i32 @llvm.ctpop.i32(i32 %1622)
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  %1626 = xor i8 %1625, 1
  store i8 %1626, i8* %21, align 1
  %1627 = xor i32 %1618, %1612
  %1628 = xor i32 %1627, %1619
  %1629 = lshr i32 %1628, 4
  %1630 = trunc i32 %1629 to i8
  %1631 = and i8 %1630, 1
  store i8 %1631, i8* %26, align 1
  %1632 = icmp eq i32 %1619, 0
  %1633 = zext i1 %1632 to i8
  store i8 %1633, i8* %29, align 1
  %1634 = lshr i32 %1619, 31
  %1635 = trunc i32 %1634 to i8
  store i8 %1635, i8* %32, align 1
  %1636 = lshr i32 %1612, 31
  %1637 = lshr i32 %1618, 31
  %1638 = xor i32 %1637, %1636
  %1639 = xor i32 %1634, %1636
  %1640 = add nuw nsw i32 %1639, %1638
  %1641 = icmp eq i32 %1640, 2
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %38, align 1
  %1643 = icmp ne i8 %1635, 0
  %1644 = xor i1 %1643, %1641
  %1645 = or i1 %1632, %1644
  %.v134 = select i1 %1645, i64 24, i64 12
  %1646 = add i64 %1615, %.v134
  store i64 %1646, i64* %3, align 8
  br i1 %1645, label %block_.L_431278, label %block_43126c

block_43126c:                                     ; preds = %block_431243
  %1647 = add i64 %1613, -132
  %1648 = add i64 %1646, 6
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i32*
  %1650 = load i32, i32* %1649, align 4
  %1651 = zext i32 %1650 to i64
  store i64 %1651, i64* %RAX.i178, align 8
  %1652 = add i64 %1646, 12
  store i64 %1652, i64* %3, align 8
  store i32 %1650, i32* %1617, align 4
  %.pre100 = load i64, i64* %3, align 8
  %.pre101 = load i64, i64* %RBP.i, align 8
  br label %block_.L_431278

block_.L_431278:                                  ; preds = %block_43126c, %block_431243
  %1653 = phi i64 [ %.pre101, %block_43126c ], [ %1613, %block_431243 ]
  %1654 = phi i64 [ %.pre100, %block_43126c ], [ %1646, %block_431243 ]
  %1655 = add i64 %1653, -116
  %1656 = add i64 %1654, 8
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1655 to i32*
  %1658 = load i32, i32* %1657, align 4
  %1659 = add i32 %1658, 1
  %1660 = zext i32 %1659 to i64
  store i64 %1660, i64* %RAX.i178, align 8
  %1661 = icmp eq i32 %1658, -1
  %1662 = icmp eq i32 %1659, 0
  %1663 = or i1 %1661, %1662
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %14, align 1
  %1665 = and i32 %1659, 255
  %1666 = tail call i32 @llvm.ctpop.i32(i32 %1665)
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = xor i8 %1668, 1
  store i8 %1669, i8* %21, align 1
  %1670 = xor i32 %1659, %1658
  %1671 = lshr i32 %1670, 4
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  store i8 %1673, i8* %26, align 1
  %1674 = zext i1 %1662 to i8
  store i8 %1674, i8* %29, align 1
  %1675 = lshr i32 %1659, 31
  %1676 = trunc i32 %1675 to i8
  store i8 %1676, i8* %32, align 1
  %1677 = lshr i32 %1658, 31
  %1678 = xor i32 %1675, %1677
  %1679 = add nuw nsw i32 %1678, %1675
  %1680 = icmp eq i32 %1679, 2
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %38, align 1
  %1682 = add i64 %1654, 14
  store i64 %1682, i64* %3, align 8
  store i32 %1659, i32* %1657, align 4
  %1683 = load i64, i64* %3, align 8
  %1684 = add i64 %1683, -83
  store i64 %1684, i64* %3, align 8
  br label %block_.L_431233

block_.L_43128b:                                  ; preds = %block_.L_431233
  %1685 = add i64 %1586, 36
  %1686 = add i64 %1584, 8
  store i64 %1686, i64* %3, align 8
  %1687 = inttoptr i64 %1685 to i32*
  %1688 = load i32, i32* %1687, align 4
  store i8 0, i8* %14, align 1
  %1689 = and i32 %1688, 255
  %1690 = tail call i32 @llvm.ctpop.i32(i32 %1689)
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = xor i8 %1692, 1
  store i8 %1693, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1694 = icmp eq i32 %1688, 0
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %29, align 1
  %1696 = lshr i32 %1688, 31
  %1697 = trunc i32 %1696 to i8
  store i8 %1697, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v121 = select i1 %1694, i64 14, i64 40
  %1698 = add i64 %1584, %.v121
  store i64 %1698, i64* %3, align 8
  br i1 %1694, label %block_431299, label %block_.L_4312b3

block_431299:                                     ; preds = %block_.L_43128b
  %1699 = add i64 %1698, 4
  store i64 %1699, i64* %3, align 8
  %1700 = load i64, i64* %1552, align 8
  store i64 %1700, i64* %RAX.i178, align 8
  %1701 = add i64 %1698, 7
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to i64*
  %1703 = load i64, i64* %1702, align 8
  store i64 %1703, i64* %RDI.i239, align 8
  %1704 = add i64 %1698, 11
  store i64 %1704, i64* %3, align 8
  %1705 = load i64, i64* %1552, align 8
  store i64 %1705, i64* %RAX.i178, align 8
  %1706 = add i64 %1705, 28
  %1707 = add i64 %1698, 14
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1706 to i32*
  %1709 = load i32, i32* %1708, align 4
  %1710 = zext i32 %1709 to i64
  store i64 %1710, i64* %RSI.i319, align 8
  %1711 = add i64 %1698, 71959
  %1712 = add i64 %1698, 19
  %1713 = load i64, i64* %6, align 8
  %1714 = add i64 %1713, -8
  %1715 = inttoptr i64 %1714 to i64*
  store i64 %1712, i64* %1715, align 8
  store i64 %1714, i64* %6, align 8
  store i64 %1711, i64* %3, align 8
  %call2_4312a7 = tail call %struct.Memory* @sub_442bb0.GuessAlignmentSeqtype(%struct.State* nonnull %0, i64 %1711, %struct.Memory* %MEMORY.14)
  %1716 = load i64, i64* %RBP.i, align 8
  %1717 = add i64 %1716, -16
  %1718 = load i64, i64* %3, align 8
  %1719 = add i64 %1718, 4
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1717 to i64*
  %1721 = load i64, i64* %1720, align 8
  store i64 %1721, i64* %RDI.i239, align 8
  %1722 = add i64 %1721, 36
  %1723 = load i32, i32* %EAX.i1438, align 4
  %1724 = add i64 %1718, 7
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1722 to i32*
  store i32 %1723, i32* %1725, align 4
  %.pre83 = load i64, i64* %RBP.i, align 8
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_4312b3

block_.L_4312b3:                                  ; preds = %block_.L_43128b, %block_431299
  %1726 = phi i64 [ %1698, %block_.L_43128b ], [ %.pre84, %block_431299 ]
  %1727 = phi i64 [ %1544, %block_.L_43128b ], [ %.pre83, %block_431299 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.14, %block_.L_43128b ], [ %call2_4312a7, %block_431299 ]
  %1728 = add i64 %1727, -16
  %1729 = add i64 %1726, 4
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i64*
  %1731 = load i64, i64* %1730, align 8
  store i64 %1731, i64* %RAX.i178, align 8
  %1732 = add i64 %1731, 36
  %1733 = add i64 %1726, 8
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i32*
  %1735 = load i32, i32* %1734, align 4
  %1736 = add i32 %1735, -2
  %1737 = icmp ult i32 %1735, 2
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %14, align 1
  %1739 = and i32 %1736, 255
  %1740 = tail call i32 @llvm.ctpop.i32(i32 %1739)
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  %1743 = xor i8 %1742, 1
  store i8 %1743, i8* %21, align 1
  %1744 = xor i32 %1736, %1735
  %1745 = lshr i32 %1744, 4
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  store i8 %1747, i8* %26, align 1
  %1748 = icmp eq i32 %1736, 0
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %29, align 1
  %1750 = lshr i32 %1736, 31
  %1751 = trunc i32 %1750 to i8
  store i8 %1751, i8* %32, align 1
  %1752 = lshr i32 %1735, 31
  %1753 = xor i32 %1750, %1752
  %1754 = add nuw nsw i32 %1753, %1752
  %1755 = icmp eq i32 %1754, 2
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %38, align 1
  %.v122 = select i1 %1748, i64 14, i64 46
  %1757 = add i64 %1726, %.v122
  store i64 %1757, i64* %3, align 8
  br i1 %1748, label %block_4312c1, label %block_.L_4312e1

block_4312c1:                                     ; preds = %block_.L_4312b3
  store i64 ptrtoint (%G__0x458ea3_type* @G__0x458ea3 to i64), i64* %RSI.i319, align 8
  %1758 = add i64 %1727, -8
  %1759 = add i64 %1757, 14
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i64*
  %1761 = load i64, i64* %1760, align 8
  store i64 %1761, i64* %RDI.i239, align 8
  store i8 0, i8* %AL.i1247, align 1
  %1762 = add i64 %1757, -195921
  %1763 = add i64 %1757, 21
  %1764 = load i64, i64* %6, align 8
  %1765 = add i64 %1764, -8
  %1766 = inttoptr i64 %1765 to i64*
  store i64 %1763, i64* %1766, align 8
  store i64 %1765, i64* %6, align 8
  store i64 %1762, i64* %3, align 8
  %1767 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.16)
  %1768 = load i64, i64* %RBP.i, align 8
  %1769 = add i64 %1768, -216
  %1770 = load i32, i32* %EAX.i1438, align 4
  %1771 = load i64, i64* %3, align 8
  %1772 = add i64 %1771, 6
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1769 to i32*
  store i32 %1770, i32* %1773, align 4
  %1774 = load i64, i64* %3, align 8
  %1775 = add i64 %1774, 172
  br label %block_.L_431388

block_.L_4312e1:                                  ; preds = %block_.L_4312b3
  %1776 = add i64 %1757, 4
  store i64 %1776, i64* %3, align 8
  %1777 = load i64, i64* %1730, align 8
  store i64 %1777, i64* %RAX.i178, align 8
  %1778 = add i64 %1777, 36
  %1779 = add i64 %1757, 8
  store i64 %1779, i64* %3, align 8
  %1780 = inttoptr i64 %1778 to i32*
  %1781 = load i32, i32* %1780, align 4
  %1782 = add i32 %1781, -1
  %1783 = icmp eq i32 %1781, 0
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %14, align 1
  %1785 = and i32 %1782, 255
  %1786 = tail call i32 @llvm.ctpop.i32(i32 %1785)
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  %1789 = xor i8 %1788, 1
  store i8 %1789, i8* %21, align 1
  %1790 = xor i32 %1782, %1781
  %1791 = lshr i32 %1790, 4
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  store i8 %1793, i8* %26, align 1
  %1794 = icmp eq i32 %1782, 0
  %1795 = zext i1 %1794 to i8
  store i8 %1795, i8* %29, align 1
  %1796 = lshr i32 %1782, 31
  %1797 = trunc i32 %1796 to i8
  store i8 %1797, i8* %32, align 1
  %1798 = lshr i32 %1781, 31
  %1799 = xor i32 %1796, %1798
  %1800 = add nuw nsw i32 %1799, %1798
  %1801 = icmp eq i32 %1800, 2
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %38, align 1
  %.v123 = select i1 %1794, i64 14, i64 46
  %1803 = add i64 %1757, %.v123
  store i64 %1803, i64* %3, align 8
  br i1 %1794, label %block_4312ef, label %block_.L_43130f

block_4312ef:                                     ; preds = %block_.L_4312e1
  store i64 ptrtoint (%G__0x458ea3_type* @G__0x458ea3 to i64), i64* %RSI.i319, align 8
  %1804 = add i64 %1727, -8
  %1805 = add i64 %1803, 14
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i64*
  %1807 = load i64, i64* %1806, align 8
  store i64 %1807, i64* %RDI.i239, align 8
  store i8 0, i8* %AL.i1247, align 1
  %1808 = add i64 %1803, -195967
  %1809 = add i64 %1803, 21
  %1810 = load i64, i64* %6, align 8
  %1811 = add i64 %1810, -8
  %1812 = inttoptr i64 %1811 to i64*
  store i64 %1809, i64* %1812, align 8
  store i64 %1811, i64* %6, align 8
  store i64 %1808, i64* %3, align 8
  %1813 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.16)
  %1814 = load i64, i64* %RBP.i, align 8
  %1815 = add i64 %1814, -220
  %1816 = load i32, i32* %EAX.i1438, align 4
  %1817 = load i64, i64* %3, align 8
  %1818 = add i64 %1817, 6
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1815 to i32*
  store i32 %1816, i32* %1819, align 4
  %1820 = load i64, i64* %3, align 8
  %1821 = add i64 %1820, 121
  br label %block_.L_431383

block_.L_43130f:                                  ; preds = %block_.L_4312e1
  %1822 = add i64 %1803, 4
  store i64 %1822, i64* %3, align 8
  %1823 = load i64, i64* %1730, align 8
  store i64 %1823, i64* %RAX.i178, align 8
  %1824 = add i64 %1823, 36
  %1825 = add i64 %1803, 8
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i32*
  %1827 = load i32, i32* %1826, align 4
  %1828 = add i32 %1827, -3
  %1829 = icmp ult i32 %1827, 3
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %14, align 1
  %1831 = and i32 %1828, 255
  %1832 = tail call i32 @llvm.ctpop.i32(i32 %1831)
  %1833 = trunc i32 %1832 to i8
  %1834 = and i8 %1833, 1
  %1835 = xor i8 %1834, 1
  store i8 %1835, i8* %21, align 1
  %1836 = xor i32 %1828, %1827
  %1837 = lshr i32 %1836, 4
  %1838 = trunc i32 %1837 to i8
  %1839 = and i8 %1838, 1
  store i8 %1839, i8* %26, align 1
  %1840 = icmp eq i32 %1828, 0
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %29, align 1
  %1842 = lshr i32 %1828, 31
  %1843 = trunc i32 %1842 to i8
  store i8 %1843, i8* %32, align 1
  %1844 = lshr i32 %1827, 31
  %1845 = xor i32 %1842, %1844
  %1846 = add nuw nsw i32 %1845, %1844
  %1847 = icmp eq i32 %1846, 2
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %38, align 1
  %.v124 = select i1 %1840, i64 14, i64 46
  %1849 = add i64 %1803, %.v124
  store i64 %1849, i64* %3, align 8
  br i1 %1840, label %block_43131d, label %block_.L_43133d

block_43131d:                                     ; preds = %block_.L_43130f
  store i64 ptrtoint (%G__0x458ec0_type* @G__0x458ec0 to i64), i64* %RSI.i319, align 8
  %1850 = add i64 %1727, -8
  %1851 = add i64 %1849, 14
  store i64 %1851, i64* %3, align 8
  %1852 = inttoptr i64 %1850 to i64*
  %1853 = load i64, i64* %1852, align 8
  store i64 %1853, i64* %RDI.i239, align 8
  store i8 0, i8* %AL.i1247, align 1
  %1854 = add i64 %1849, -196013
  %1855 = add i64 %1849, 21
  %1856 = load i64, i64* %6, align 8
  %1857 = add i64 %1856, -8
  %1858 = inttoptr i64 %1857 to i64*
  store i64 %1855, i64* %1858, align 8
  store i64 %1857, i64* %6, align 8
  store i64 %1854, i64* %3, align 8
  %1859 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.16)
  %1860 = load i64, i64* %RBP.i, align 8
  %1861 = add i64 %1860, -224
  %1862 = load i32, i32* %EAX.i1438, align 4
  %1863 = load i64, i64* %3, align 8
  %1864 = add i64 %1863, 6
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1861 to i32*
  store i32 %1862, i32* %1865, align 4
  %1866 = load i64, i64* %3, align 8
  %1867 = add i64 %1866, 70
  br label %block_.L_43137e

block_.L_43133d:                                  ; preds = %block_.L_43130f
  %1868 = add i64 %1849, 4
  store i64 %1868, i64* %3, align 8
  %1869 = load i64, i64* %1730, align 8
  store i64 %1869, i64* %RAX.i178, align 8
  %1870 = add i64 %1869, 36
  %1871 = add i64 %1849, 8
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i32*
  %1873 = load i32, i32* %1872, align 4
  store i8 0, i8* %14, align 1
  %1874 = and i32 %1873, 255
  %1875 = tail call i32 @llvm.ctpop.i32(i32 %1874)
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = xor i8 %1877, 1
  store i8 %1878, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1879 = icmp eq i32 %1873, 0
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %29, align 1
  %1881 = lshr i32 %1873, 31
  %1882 = trunc i32 %1881 to i8
  store i8 %1882, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v125 = select i1 %1879, i64 14, i64 36
  %1883 = add i64 %1849, %.v125
  %1884 = add i64 %1883, 10
  store i64 %1884, i64* %3, align 8
  br i1 %1879, label %block_43134b, label %block_.L_431361

block_43134b:                                     ; preds = %block_.L_43133d
  store i64 ptrtoint (%G__0x458edd_type* @G__0x458edd to i64), i64* %RDI.i239, align 8
  store i8 0, i8* %AL.i1247, align 1
  %1885 = add i64 %1883, 54981
  %1886 = add i64 %1883, 17
  %1887 = load i64, i64* %6, align 8
  %1888 = add i64 %1887, -8
  %1889 = inttoptr i64 %1888 to i64*
  store i64 %1886, i64* %1889, align 8
  store i64 %1888, i64* %6, align 8
  store i64 %1885, i64* %3, align 8
  %call2_431357 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1885, %struct.Memory* %MEMORY.16)
  %1890 = load i64, i64* %3, align 8
  %1891 = add i64 %1890, 29
  store i64 %1891, i64* %3, align 8
  br label %block_.L_431379

block_.L_431361:                                  ; preds = %block_.L_43133d
  store i64 ptrtoint (%G__0x458f23_type* @G__0x458f23 to i64), i64* %RDI.i239, align 8
  %1892 = add i64 %1883, 14
  store i64 %1892, i64* %3, align 8
  %1893 = load i64, i64* %1730, align 8
  store i64 %1893, i64* %RAX.i178, align 8
  %1894 = add i64 %1893, 36
  %1895 = add i64 %1883, 17
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  %1897 = load i32, i32* %1896, align 4
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RSI.i319, align 8
  store i8 0, i8* %AL.i1247, align 1
  %1899 = add i64 %1883, 54959
  %1900 = add i64 %1883, 24
  %1901 = load i64, i64* %6, align 8
  %1902 = add i64 %1901, -8
  %1903 = inttoptr i64 %1902 to i64*
  store i64 %1900, i64* %1903, align 8
  store i64 %1902, i64* %6, align 8
  store i64 %1899, i64* %3, align 8
  %call2_431374 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1899, %struct.Memory* %MEMORY.16)
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_431379

block_.L_431379:                                  ; preds = %block_.L_431361, %block_43134b
  %1904 = phi i64 [ %.pre85, %block_.L_431361 ], [ %1891, %block_43134b ]
  %MEMORY.17 = phi %struct.Memory* [ %call2_431374, %block_.L_431361 ], [ %call2_431357, %block_43134b ]
  %1905 = add i64 %1904, 5
  store i64 %1905, i64* %3, align 8
  br label %block_.L_43137e

block_.L_43137e:                                  ; preds = %block_.L_431379, %block_43131d
  %storemerge49 = phi i64 [ %1867, %block_43131d ], [ %1905, %block_.L_431379 ]
  %MEMORY.18 = phi %struct.Memory* [ %1859, %block_43131d ], [ %MEMORY.17, %block_.L_431379 ]
  %1906 = add i64 %storemerge49, 5
  store i64 %1906, i64* %3, align 8
  br label %block_.L_431383

block_.L_431383:                                  ; preds = %block_.L_43137e, %block_4312ef
  %storemerge48 = phi i64 [ %1821, %block_4312ef ], [ %1906, %block_.L_43137e ]
  %MEMORY.19 = phi %struct.Memory* [ %1813, %block_4312ef ], [ %MEMORY.18, %block_.L_43137e ]
  %1907 = add i64 %storemerge48, 5
  store i64 %1907, i64* %3, align 8
  br label %block_.L_431388

block_.L_431388:                                  ; preds = %block_.L_431383, %block_4312c1
  %storemerge45 = phi i64 [ %1775, %block_4312c1 ], [ %1907, %block_.L_431383 ]
  %MEMORY.20 = phi %struct.Memory* [ %1767, %block_4312c1 ], [ %MEMORY.19, %block_.L_431383 ]
  %1908 = load i64, i64* %RBP.i, align 8
  %1909 = add i64 %1908, -16
  %1910 = add i64 %storemerge45, 4
  store i64 %1910, i64* %3, align 8
  %1911 = inttoptr i64 %1909 to i64*
  %1912 = load i64, i64* %1911, align 8
  store i64 %1912, i64* %RAX.i178, align 8
  %1913 = add i64 %1912, 184
  %1914 = add i64 %storemerge45, 11
  store i64 %1914, i64* %3, align 8
  %1915 = inttoptr i64 %1913 to i32*
  %1916 = load i32, i32* %1915, align 4
  store i8 0, i8* %14, align 1
  %1917 = and i32 %1916, 255
  %1918 = tail call i32 @llvm.ctpop.i32(i32 %1917)
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  %1921 = xor i8 %1920, 1
  store i8 %1921, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1922 = icmp eq i32 %1916, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %29, align 1
  %1924 = lshr i32 %1916, 31
  %1925 = trunc i32 %1924 to i8
  store i8 %1925, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1926 = icmp ne i8 %1925, 0
  %1927 = or i1 %1922, %1926
  %.v126 = select i1 %1927, i64 130, i64 17
  %1928 = add i64 %storemerge45, %.v126
  store i64 %1928, i64* %3, align 8
  br i1 %1927, label %block_.L_43140a, label %block_431399

block_431399:                                     ; preds = %block_.L_431388
  %1929 = add i64 %1908, -116
  %1930 = add i64 %1928, 7
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i32*
  store i32 0, i32* %1931, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_4313a0

block_.L_4313a0:                                  ; preds = %block_4313b3, %block_431399
  %1932 = phi i64 [ %.pre86, %block_431399 ], [ %2036, %block_4313b3 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_431399 ], [ %1998, %block_4313b3 ]
  %1933 = load i64, i64* %RBP.i, align 8
  %1934 = add i64 %1933, -116
  %1935 = add i64 %1932, 3
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1934 to i32*
  %1937 = load i32, i32* %1936, align 4
  %1938 = zext i32 %1937 to i64
  store i64 %1938, i64* %RAX.i178, align 8
  %1939 = add i64 %1933, -16
  %1940 = add i64 %1932, 7
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1939 to i64*
  %1942 = load i64, i64* %1941, align 8
  store i64 %1942, i64* %RCX.i204, align 8
  %1943 = add i64 %1942, 184
  %1944 = add i64 %1932, 13
  store i64 %1944, i64* %3, align 8
  %1945 = inttoptr i64 %1943 to i32*
  %1946 = load i32, i32* %1945, align 4
  %1947 = sub i32 %1937, %1946
  %1948 = icmp ult i32 %1937, %1946
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %14, align 1
  %1950 = and i32 %1947, 255
  %1951 = tail call i32 @llvm.ctpop.i32(i32 %1950)
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  %1954 = xor i8 %1953, 1
  store i8 %1954, i8* %21, align 1
  %1955 = xor i32 %1946, %1937
  %1956 = xor i32 %1955, %1947
  %1957 = lshr i32 %1956, 4
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  store i8 %1959, i8* %26, align 1
  %1960 = icmp eq i32 %1947, 0
  %1961 = zext i1 %1960 to i8
  store i8 %1961, i8* %29, align 1
  %1962 = lshr i32 %1947, 31
  %1963 = trunc i32 %1962 to i8
  store i8 %1963, i8* %32, align 1
  %1964 = lshr i32 %1937, 31
  %1965 = lshr i32 %1946, 31
  %1966 = xor i32 %1965, %1964
  %1967 = xor i32 %1962, %1964
  %1968 = add nuw nsw i32 %1967, %1966
  %1969 = icmp eq i32 %1968, 2
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %38, align 1
  %1971 = icmp ne i8 %1963, 0
  %1972 = xor i1 %1971, %1969
  %.v127 = select i1 %1972, i64 19, i64 79
  %1973 = add i64 %1932, %.v127
  %1974 = add i64 %1973, 10
  store i64 %1974, i64* %3, align 8
  br i1 %1972, label %block_4313b3, label %block_.L_4313ef

block_4313b3:                                     ; preds = %block_.L_4313a0
  store i64 ptrtoint (%G__0x45a9d4_type* @G__0x45a9d4 to i64), i64* %RSI.i319, align 8
  %1975 = add i64 %1933, -8
  %1976 = add i64 %1973, 14
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i64*
  %1978 = load i64, i64* %1977, align 8
  store i64 %1978, i64* %RDI.i239, align 8
  %1979 = add i64 %1973, 18
  store i64 %1979, i64* %3, align 8
  %1980 = load i64, i64* %1941, align 8
  store i64 %1980, i64* %RAX.i178, align 8
  %1981 = add i64 %1980, 176
  %1982 = add i64 %1973, 25
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i64*
  %1984 = load i64, i64* %1983, align 8
  store i64 %1984, i64* %RAX.i178, align 8
  %1985 = add i64 %1973, 29
  store i64 %1985, i64* %3, align 8
  %1986 = load i32, i32* %1936, align 4
  %1987 = sext i32 %1986 to i64
  store i64 %1987, i64* %RCX.i204, align 8
  %1988 = shl nsw i64 %1987, 3
  %1989 = add i64 %1988, %1984
  %1990 = add i64 %1973, 33
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1989 to i64*
  %1992 = load i64, i64* %1991, align 8
  store i64 %1992, i64* %RDX.i654, align 8
  store i8 0, i8* %AL.i1247, align 1
  %1993 = add i64 %1973, -196163
  %1994 = add i64 %1973, 40
  %1995 = load i64, i64* %6, align 8
  %1996 = add i64 %1995, -8
  %1997 = inttoptr i64 %1996 to i64*
  store i64 %1994, i64* %1997, align 8
  store i64 %1996, i64* %6, align 8
  store i64 %1993, i64* %3, align 8
  %1998 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.21)
  %1999 = load i64, i64* %RBP.i, align 8
  %2000 = add i64 %1999, -228
  %2001 = load i32, i32* %EAX.i1438, align 4
  %2002 = load i64, i64* %3, align 8
  %2003 = add i64 %2002, 6
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2000 to i32*
  store i32 %2001, i32* %2004, align 4
  %2005 = load i64, i64* %RBP.i, align 8
  %2006 = add i64 %2005, -116
  %2007 = load i64, i64* %3, align 8
  %2008 = add i64 %2007, 3
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2006 to i32*
  %2010 = load i32, i32* %2009, align 4
  %2011 = add i32 %2010, 1
  %2012 = zext i32 %2011 to i64
  store i64 %2012, i64* %RAX.i178, align 8
  %2013 = icmp eq i32 %2010, -1
  %2014 = icmp eq i32 %2011, 0
  %2015 = or i1 %2013, %2014
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %14, align 1
  %2017 = and i32 %2011, 255
  %2018 = tail call i32 @llvm.ctpop.i32(i32 %2017)
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  %2021 = xor i8 %2020, 1
  store i8 %2021, i8* %21, align 1
  %2022 = xor i32 %2011, %2010
  %2023 = lshr i32 %2022, 4
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  store i8 %2025, i8* %26, align 1
  %2026 = zext i1 %2014 to i8
  store i8 %2026, i8* %29, align 1
  %2027 = lshr i32 %2011, 31
  %2028 = trunc i32 %2027 to i8
  store i8 %2028, i8* %32, align 1
  %2029 = lshr i32 %2010, 31
  %2030 = xor i32 %2027, %2029
  %2031 = add nuw nsw i32 %2030, %2027
  %2032 = icmp eq i32 %2031, 2
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %38, align 1
  %2034 = add i64 %2007, 9
  store i64 %2034, i64* %3, align 8
  store i32 %2011, i32* %2009, align 4
  %2035 = load i64, i64* %3, align 8
  %2036 = add i64 %2035, -74
  store i64 %2036, i64* %3, align 8
  br label %block_.L_4313a0

block_.L_4313ef:                                  ; preds = %block_.L_4313a0
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i319, align 8
  %2037 = add i64 %1933, -8
  %2038 = add i64 %1973, 14
  store i64 %2038, i64* %3, align 8
  %2039 = inttoptr i64 %2037 to i64*
  %2040 = load i64, i64* %2039, align 8
  store i64 %2040, i64* %RDI.i239, align 8
  store i8 0, i8* %AL.i1247, align 1
  %2041 = add i64 %1973, -196223
  %2042 = add i64 %1973, 21
  %2043 = load i64, i64* %6, align 8
  %2044 = add i64 %2043, -8
  %2045 = inttoptr i64 %2044 to i64*
  store i64 %2042, i64* %2045, align 8
  store i64 %2044, i64* %6, align 8
  store i64 %2041, i64* %3, align 8
  %2046 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.21)
  %2047 = load i64, i64* %RBP.i, align 8
  %2048 = add i64 %2047, -232
  %2049 = load i32, i32* %EAX.i1438, align 4
  %2050 = load i64, i64* %3, align 8
  %2051 = add i64 %2050, 6
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2048 to i32*
  store i32 %2049, i32* %2052, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_43140a

block_.L_43140a:                                  ; preds = %block_.L_4313ef, %block_.L_431388
  %2053 = phi i64 [ %1928, %block_.L_431388 ], [ %.pre88, %block_.L_4313ef ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.20, %block_.L_431388 ], [ %2046, %block_.L_4313ef ]
  store i64 0, i64* %RAX.i178, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDI.i239, align 8
  %2054 = add i64 %2053, -196186
  %2055 = add i64 %2053, 9
  %2056 = load i64, i64* %6, align 8
  %2057 = add i64 %2056, -8
  %2058 = inttoptr i64 %2057 to i64*
  store i64 %2055, i64* %2058, align 8
  store i64 %2057, i64* %6, align 8
  store i64 %2054, i64* %3, align 8
  %2059 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @time to i64), %struct.Memory* %MEMORY.22)
  %2060 = load i64, i64* %RBP.i, align 8
  %2061 = add i64 %2060, -24
  %2062 = load i64, i64* %3, align 8
  store i64 %2061, i64* %RDI.i239, align 8
  %2063 = add i64 %2060, -96
  store i64 %2063, i64* %RCX.i204, align 8
  %2064 = load i64, i64* %RAX.i178, align 8
  %2065 = add i64 %2062, 12
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2061 to i64*
  store i64 %2064, i64* %2066, align 8
  %2067 = load i64, i64* %RBP.i, align 8
  %2068 = add i64 %2067, -240
  %2069 = load i64, i64* %RCX.i204, align 8
  %2070 = load i64, i64* %3, align 8
  %2071 = add i64 %2070, 7
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2068 to i64*
  store i64 %2069, i64* %2072, align 8
  %2073 = load i64, i64* %3, align 8
  %2074 = add i64 %2073, -196758
  %2075 = add i64 %2073, 5
  %2076 = load i64, i64* %6, align 8
  %2077 = add i64 %2076, -8
  %2078 = inttoptr i64 %2077 to i64*
  store i64 %2075, i64* %2078, align 8
  store i64 %2077, i64* %6, align 8
  store i64 %2074, i64* %3, align 8
  %call2_431426 = tail call %struct.Memory* @sub_401390.localtime_plt(%struct.State* nonnull %0, i64 %2074, %struct.Memory* %2059)
  %2079 = load i64, i64* %3, align 8
  store i64 64, i64* %RSI.i319, align 8
  store i64 ptrtoint (%G__0x458f4b_type* @G__0x458f4b to i64), i64* %RDX.i654, align 8
  %2080 = load i64, i64* %RBP.i, align 8
  %2081 = add i64 %2080, -240
  %2082 = add i64 %2079, 24
  store i64 %2082, i64* %3, align 8
  %2083 = inttoptr i64 %2081 to i64*
  %2084 = load i64, i64* %2083, align 8
  store i64 %2084, i64* %RDI.i239, align 8
  %2085 = load i64, i64* %RAX.i178, align 8
  store i64 %2085, i64* %RCX.i204, align 8
  %2086 = add i64 %2079, -196107
  %2087 = add i64 %2079, 32
  %2088 = load i64, i64* %6, align 8
  %2089 = add i64 %2088, -8
  %2090 = inttoptr i64 %2089 to i64*
  store i64 %2087, i64* %2090, align 8
  store i64 %2089, i64* %6, align 8
  store i64 %2086, i64* %3, align 8
  %call2_431446 = tail call %struct.Memory* @sub_401620.strftime_plt(%struct.State* nonnull %0, i64 %2086, %struct.Memory* %call2_431426)
  %2091 = load i64, i64* %RAX.i178, align 8
  %2092 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2093 = trunc i64 %2091 to i32
  %2094 = and i32 %2093, 255
  %2095 = tail call i32 @llvm.ctpop.i32(i32 %2094)
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = xor i8 %2097, 1
  store i8 %2098, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2099 = icmp eq i64 %2091, 0
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %29, align 1
  %2101 = lshr i64 %2091, 63
  %2102 = trunc i64 %2101 to i8
  store i8 %2102, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v128 = select i1 %2099, i64 10, i64 27
  %2103 = add i64 %2092, %.v128
  store i64 %2103, i64* %3, align 8
  br i1 %2099, label %block_431455, label %block_.L_431466

block_431455:                                     ; preds = %block_.L_43140a
  store i64 ptrtoint (%G__0x458f5b_type* @G__0x458f5b to i64), i64* %RDI.i239, align 8
  store i8 0, i8* %AL.i1247, align 1
  %2104 = add i64 %2103, 54715
  %2105 = add i64 %2103, 17
  %2106 = load i64, i64* %6, align 8
  %2107 = add i64 %2106, -8
  %2108 = inttoptr i64 %2107 to i64*
  store i64 %2105, i64* %2108, align 8
  store i64 %2107, i64* %6, align 8
  store i64 %2104, i64* %3, align 8
  %call2_431461 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %2104, %struct.Memory* %call2_431446)
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_431466

block_.L_431466:                                  ; preds = %block_.L_43140a, %block_431455
  %2109 = phi i64 [ %2103, %block_.L_43140a ], [ %.pre89, %block_431455 ]
  %MEMORY.23 = phi %struct.Memory* [ %call2_431446, %block_.L_43140a ], [ %call2_431461, %block_431455 ]
  %2110 = load i64, i64* %RBP.i, align 8
  %2111 = add i64 %2110, -8
  %2112 = add i64 %2109, 4
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2111 to i64*
  %2114 = load i64, i64* %2113, align 8
  store i64 %2114, i64* %RDI.i239, align 8
  %2115 = add i64 %2110, -16
  %2116 = add i64 %2109, 8
  store i64 %2116, i64* %3, align 8
  %2117 = inttoptr i64 %2115 to i64*
  %2118 = load i64, i64* %2117, align 8
  store i64 %2118, i64* %RAX.i178, align 8
  %2119 = add i64 %2118, 40
  %2120 = add i64 %2109, 13
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i64*
  %2122 = load i64, i64* %2121, align 8
  store i8 0, i8* %14, align 1
  %2123 = trunc i64 %2122 to i32
  %2124 = and i32 %2123, 255
  %2125 = tail call i32 @llvm.ctpop.i32(i32 %2124)
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  %2128 = xor i8 %2127, 1
  store i8 %2128, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2129 = icmp eq i64 %2122, 0
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %29, align 1
  %2131 = lshr i64 %2122, 63
  %2132 = trunc i64 %2131 to i8
  store i8 %2132, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2133 = add i64 %2110, -248
  %2134 = add i64 %2109, 20
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i64*
  store i64 %2114, i64* %2135, align 8
  %2136 = load i64, i64* %3, align 8
  %2137 = load i8, i8* %29, align 1
  %2138 = icmp ne i8 %2137, 0
  %.v173 = select i1 %2138, i64 26, i64 6
  %2139 = add i64 %2136, %.v173
  store i64 %2139, i64* %3, align 8
  %cmpBr_43147a = icmp eq i8 %2137, 1
  br i1 %cmpBr_43147a, label %block_.L_431494, label %block_431480

block_431480:                                     ; preds = %block_.L_431466
  %2140 = load i64, i64* %RBP.i, align 8
  %2141 = add i64 %2140, -16
  %2142 = add i64 %2139, 4
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i64*
  %2144 = load i64, i64* %2143, align 8
  store i64 %2144, i64* %RAX.i178, align 8
  %2145 = add i64 %2144, 40
  %2146 = add i64 %2139, 8
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i64*
  %2148 = load i64, i64* %2147, align 8
  store i64 %2148, i64* %RAX.i178, align 8
  %2149 = add i64 %2140, -256
  %2150 = add i64 %2139, 15
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i64*
  store i64 %2148, i64* %2151, align 8
  %2152 = load i64, i64* %3, align 8
  %2153 = add i64 %2152, 27
  br label %block_.L_4314aa

block_.L_431494:                                  ; preds = %block_.L_431466
  store i64 ptrtoint (%G__0x458f97_type* @G__0x458f97 to i64), i64* %RAX.i178, align 8
  %2154 = load i64, i64* %RBP.i, align 8
  %2155 = add i64 %2154, -256
  %2156 = add i64 %2139, 17
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2155 to i64*
  store i64 ptrtoint (%G__0x458f97_type* @G__0x458f97 to i64), i64* %2157, align 8
  %2158 = load i64, i64* %3, align 8
  %2159 = add i64 %2158, 5
  store i64 %2159, i64* %3, align 8
  br label %block_.L_4314aa

block_.L_4314aa:                                  ; preds = %block_.L_431494, %block_431480
  %storemerge46 = phi i64 [ %2153, %block_431480 ], [ %2159, %block_.L_431494 ]
  %2160 = load i64, i64* %RBP.i, align 8
  %2161 = add i64 %2160, -256
  %2162 = add i64 %storemerge46, 7
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i64*
  %2164 = load i64, i64* %2163, align 8
  store i64 %2164, i64* %RAX.i178, align 8
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9.i574 = getelementptr inbounds %union.anon, %union.anon* %2165, i64 0, i32 0
  %2166 = add i64 %2160, -96
  store i64 %2166, i64* %R9.i574, align 8
  store i64 80, i64* %RCX.i204, align 8
  store i64 78, i64* %RDX.i654, align 8
  %2167 = add i64 %2160, -16
  %2168 = add i64 %storemerge46, 25
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i64*
  %2170 = load i64, i64* %2169, align 8
  store i64 %2170, i64* %RSI.i319, align 8
  %2171 = add i64 %2170, 24
  %2172 = add i64 %storemerge46, 28
  store i64 %2172, i64* %3, align 8
  %2173 = inttoptr i64 %2171 to i32*
  %2174 = load i32, i32* %2173, align 4
  %2175 = zext i32 %2174 to i64
  store i64 %2175, i64* %RDI.i239, align 8
  %2176 = add i64 %storemerge46, 32
  store i64 %2176, i64* %3, align 8
  %2177 = load i64, i64* %2169, align 8
  store i64 %2177, i64* %RSI.i319, align 8
  %2178 = add i64 %2177, 36
  %2179 = add i64 %storemerge46, 36
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i32*
  %2181 = load i32, i32* %2180, align 4
  %2182 = add i32 %2181, -2
  %2183 = icmp ult i32 %2181, 2
  %2184 = zext i1 %2183 to i8
  store i8 %2184, i8* %14, align 1
  %2185 = and i32 %2182, 255
  %2186 = tail call i32 @llvm.ctpop.i32(i32 %2185)
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = xor i8 %2188, 1
  store i8 %2189, i8* %21, align 1
  %2190 = xor i32 %2182, %2181
  %2191 = lshr i32 %2190, 4
  %2192 = trunc i32 %2191 to i8
  %2193 = and i8 %2192, 1
  store i8 %2193, i8* %26, align 1
  %2194 = icmp eq i32 %2182, 0
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %29, align 1
  %2196 = lshr i32 %2182, 31
  %2197 = trunc i32 %2196 to i8
  store i8 %2197, i8* %32, align 1
  %2198 = lshr i32 %2181, 31
  %2199 = xor i32 %2196, %2198
  %2200 = add nuw nsw i32 %2199, %2198
  %2201 = icmp eq i32 %2200, 2
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %38, align 1
  %2203 = select i1 %2194, i64 78, i64 80
  store i64 %2203, i64* %RCX.i204, align 8
  %2204 = add i64 %2160, -104
  %2205 = add i64 %storemerge46, 43
  store i64 %2205, i64* %3, align 8
  %2206 = inttoptr i64 %2204 to i64*
  %2207 = load i64, i64* %2206, align 8
  store i64 %2207, i64* %RSI.i319, align 8
  %R8.i550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %2208 = add i64 %storemerge46, 47
  store i64 %2208, i64* %3, align 8
  %2209 = load i64, i64* %2169, align 8
  store i64 %2209, i64* %R8.i550, align 8
  %2210 = add i64 %2209, 28
  %2211 = add i64 %storemerge46, 51
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i32*
  %2213 = load i32, i32* %2212, align 4
  %2214 = zext i32 %2213 to i64
  store i64 %2214, i64* %RDX.i654, align 8
  %2215 = add i64 %2160, -260
  %2216 = add i64 %storemerge46, 57
  store i64 %2216, i64* %3, align 8
  %2217 = inttoptr i64 %2215 to i32*
  store i32 %2174, i32* %2217, align 4
  %2218 = load i64, i64* %RSI.i319, align 8
  %2219 = load i64, i64* %3, align 8
  store i64 %2218, i64* %RDI.i239, align 8
  %2220 = load i32, i32* %EDX.i1329, align 4
  %2221 = zext i32 %2220 to i64
  store i64 %2221, i64* %RSI.i319, align 8
  %2222 = load i64, i64* %RBP.i, align 8
  %2223 = add i64 %2222, -272
  %2224 = load i64, i64* %RAX.i178, align 8
  %2225 = add i64 %2219, 12
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2223 to i64*
  store i64 %2224, i64* %2226, align 8
  %2227 = load i64, i64* %RBP.i, align 8
  %2228 = add i64 %2227, -280
  %2229 = load i64, i64* %R9.i574, align 8
  %2230 = load i64, i64* %3, align 8
  %2231 = add i64 %2230, 7
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2228 to i64*
  store i64 %2229, i64* %2232, align 8
  %2233 = load i64, i64* %RBP.i, align 8
  %2234 = add i64 %2233, -284
  %2235 = load i32, i32* %ECX.i641, align 4
  %2236 = load i64, i64* %3, align 8
  %2237 = add i64 %2236, 6
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2234 to i32*
  store i32 %2235, i32* %2238, align 4
  %2239 = load i64, i64* %3, align 8
  %2240 = add i64 %2239, 71204
  %2241 = add i64 %2239, 5
  %2242 = load i64, i64* %6, align 8
  %2243 = add i64 %2242, -8
  %2244 = inttoptr i64 %2243 to i64*
  store i64 %2241, i64* %2244, align 8
  store i64 %2243, i64* %6, align 8
  store i64 %2240, i64* %3, align 8
  %call2_4314fc = tail call %struct.Memory* @sub_442b20.GCGMultchecksum(%struct.State* nonnull %0, i64 %2240, %struct.Memory* %MEMORY.23)
  %2245 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x458fa1_type* @G__0x458fa1 to i64), i64* %RSI.i319, align 8
  %2246 = load i64, i64* %RBP.i, align 8
  %2247 = add i64 %2246, -248
  %2248 = add i64 %2245, 17
  store i64 %2248, i64* %3, align 8
  %2249 = inttoptr i64 %2247 to i64*
  %2250 = load i64, i64* %2249, align 8
  store i64 %2250, i64* %RDI.i239, align 8
  %2251 = add i64 %2246, -272
  %2252 = add i64 %2245, 24
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i64*
  %2254 = load i64, i64* %2253, align 8
  store i64 %2254, i64* %RDX.i654, align 8
  %2255 = add i64 %2246, -260
  %2256 = add i64 %2245, 30
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i32*
  %2258 = load i32, i32* %2257, align 4
  %2259 = zext i32 %2258 to i64
  store i64 %2259, i64* %RCX.i204, align 8
  %2260 = add i64 %2246, -284
  %2261 = add i64 %2245, 37
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  %2263 = load i32, i32* %2262, align 4
  %2264 = zext i32 %2263 to i64
  store i64 %2264, i64* %R8.i550, align 8
  %2265 = add i64 %2246, -280
  %2266 = add i64 %2245, 44
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i64*
  %2268 = load i64, i64* %2267, align 8
  store i64 %2268, i64* %R9.i574, align 8
  %2269 = bitcast i64* %6 to i32**
  %2270 = load i32*, i32** %2269, align 8
  %2271 = load i32, i32* %EAX.i1438, align 4
  %2272 = add i64 %2245, 47
  store i64 %2272, i64* %3, align 8
  store i32 %2271, i32* %2270, align 4
  %2273 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1247, align 1
  %2274 = add i64 %2273, -196544
  %2275 = add i64 %2273, 7
  %2276 = load i64, i64* %6, align 8
  %2277 = add i64 %2276, -8
  %2278 = inttoptr i64 %2277 to i64*
  store i64 %2275, i64* %2278, align 8
  store i64 %2277, i64* %6, align 8
  store i64 %2274, i64* %3, align 8
  %2279 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %call2_4314fc)
  %2280 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i319, align 8
  %2281 = load i64, i64* %RBP.i, align 8
  %2282 = add i64 %2281, -8
  %2283 = add i64 %2280, 14
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i64*
  %2285 = load i64, i64* %2284, align 8
  store i64 %2285, i64* %RDI.i239, align 8
  %2286 = add i64 %2281, -288
  %2287 = load i32, i32* %EAX.i1438, align 4
  %2288 = add i64 %2280, 20
  store i64 %2288, i64* %3, align 8
  %2289 = inttoptr i64 %2286 to i32*
  store i32 %2287, i32* %2289, align 4
  %2290 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1247, align 1
  %2291 = add i64 %2290, -196571
  %2292 = add i64 %2290, 7
  %2293 = load i64, i64* %6, align 8
  %2294 = add i64 %2293, -8
  %2295 = inttoptr i64 %2294 to i64*
  store i64 %2292, i64* %2295, align 8
  store i64 %2294, i64* %6, align 8
  store i64 %2291, i64* %3, align 8
  %2296 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2279)
  %2297 = load i64, i64* %RBP.i, align 8
  %2298 = add i64 %2297, -116
  %2299 = load i64, i64* %3, align 8
  %2300 = add i64 %2299, 7
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2298 to i32*
  store i32 0, i32* %2301, align 4
  %2302 = load i64, i64* %RBP.i, align 8
  %2303 = add i64 %2302, -292
  %2304 = load i32, i32* %EAX.i1438, align 4
  %2305 = load i64, i64* %3, align 8
  %2306 = add i64 %2305, 6
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2303 to i32*
  store i32 %2304, i32* %2307, align 4
  %R9D.i449 = bitcast %union.anon* %2165 to i32*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %2309 = bitcast %union.VectorReg* %2308 to double*
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_43155f

block_.L_43155f:                                  ; preds = %block_43156f, %block_.L_4314aa
  %2310 = phi i64 [ %.pre90, %block_.L_4314aa ], [ %2527, %block_43156f ]
  %MEMORY.25 = phi %struct.Memory* [ %2296, %block_.L_4314aa ], [ %2489, %block_43156f ]
  %2311 = load i64, i64* %RBP.i, align 8
  %2312 = add i64 %2311, -116
  %2313 = add i64 %2310, 3
  store i64 %2313, i64* %3, align 8
  %2314 = inttoptr i64 %2312 to i32*
  %2315 = load i32, i32* %2314, align 4
  %2316 = zext i32 %2315 to i64
  store i64 %2316, i64* %RAX.i178, align 8
  %2317 = add i64 %2311, -16
  %2318 = add i64 %2310, 7
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2317 to i64*
  %2320 = load i64, i64* %2319, align 8
  store i64 %2320, i64* %RCX.i204, align 8
  %2321 = add i64 %2320, 28
  %2322 = add i64 %2310, 10
  store i64 %2322, i64* %3, align 8
  %2323 = inttoptr i64 %2321 to i32*
  %2324 = load i32, i32* %2323, align 4
  %2325 = sub i32 %2315, %2324
  %2326 = icmp ult i32 %2315, %2324
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %14, align 1
  %2328 = and i32 %2325, 255
  %2329 = tail call i32 @llvm.ctpop.i32(i32 %2328)
  %2330 = trunc i32 %2329 to i8
  %2331 = and i8 %2330, 1
  %2332 = xor i8 %2331, 1
  store i8 %2332, i8* %21, align 1
  %2333 = xor i32 %2324, %2315
  %2334 = xor i32 %2333, %2325
  %2335 = lshr i32 %2334, 4
  %2336 = trunc i32 %2335 to i8
  %2337 = and i8 %2336, 1
  store i8 %2337, i8* %26, align 1
  %2338 = icmp eq i32 %2325, 0
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %29, align 1
  %2340 = lshr i32 %2325, 31
  %2341 = trunc i32 %2340 to i8
  store i8 %2341, i8* %32, align 1
  %2342 = lshr i32 %2315, 31
  %2343 = lshr i32 %2324, 31
  %2344 = xor i32 %2343, %2342
  %2345 = xor i32 %2340, %2342
  %2346 = add nuw nsw i32 %2345, %2344
  %2347 = icmp eq i32 %2346, 2
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %38, align 1
  %2349 = icmp ne i8 %2341, 0
  %2350 = xor i1 %2349, %2347
  %.v129 = select i1 %2350, i64 16, i64 203
  %2351 = add i64 %2310, %.v129
  store i64 %2351, i64* %3, align 8
  br i1 %2350, label %block_43156f, label %block_.L_43162a

block_43156f:                                     ; preds = %block_.L_43155f
  %2352 = add i64 %2311, -8
  %2353 = add i64 %2351, 4
  store i64 %2353, i64* %3, align 8
  %2354 = inttoptr i64 %2352 to i64*
  %2355 = load i64, i64* %2354, align 8
  store i64 %2355, i64* %RDI.i239, align 8
  %2356 = add i64 %2311, -136
  %2357 = add i64 %2351, 10
  store i64 %2357, i64* %3, align 8
  %2358 = inttoptr i64 %2356 to i32*
  %2359 = load i32, i32* %2358, align 4
  %2360 = zext i32 %2359 to i64
  store i64 %2360, i64* %RDX.i654, align 8
  %2361 = add i64 %2351, 16
  store i64 %2361, i64* %3, align 8
  %2362 = load i32, i32* %2358, align 4
  %2363 = zext i32 %2362 to i64
  store i64 %2363, i64* %RCX.i204, align 8
  %2364 = add i64 %2311, -112
  %2365 = add i64 %2351, 20
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2364 to i64*
  %2367 = load i64, i64* %2366, align 8
  store i64 %2367, i64* %RAX.i178, align 8
  %2368 = add i64 %2351, 24
  store i64 %2368, i64* %3, align 8
  %2369 = load i32, i32* %2314, align 4
  %2370 = sext i32 %2369 to i64
  store i64 %2370, i64* %RSI.i319, align 8
  %2371 = shl nsw i64 %2370, 3
  %2372 = add i64 %2371, %2367
  %2373 = add i64 %2351, 28
  store i64 %2373, i64* %3, align 8
  %2374 = inttoptr i64 %2372 to i64*
  %2375 = load i64, i64* %2374, align 8
  store i64 %2375, i64* %R8.i550, align 8
  %2376 = add i64 %2351, 32
  store i64 %2376, i64* %3, align 8
  %2377 = load i64, i64* %2319, align 8
  store i64 %2377, i64* %RAX.i178, align 8
  %2378 = add i64 %2377, 24
  %2379 = add i64 %2351, 36
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2378 to i32*
  %2381 = load i32, i32* %2380, align 4
  %2382 = zext i32 %2381 to i64
  store i64 %2382, i64* %R9.i574, align 8
  %2383 = add i64 %2311, -104
  %2384 = add i64 %2351, 40
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2383 to i64*
  %2386 = load i64, i64* %2385, align 8
  store i64 %2386, i64* %RAX.i178, align 8
  %2387 = add i64 %2351, 44
  store i64 %2387, i64* %3, align 8
  %2388 = load i32, i32* %2314, align 4
  %2389 = sext i32 %2388 to i64
  store i64 %2389, i64* %RSI.i319, align 8
  %2390 = shl nsw i64 %2389, 3
  %2391 = add i64 %2390, %2386
  %2392 = add i64 %2351, 48
  store i64 %2392, i64* %3, align 8
  %2393 = inttoptr i64 %2391 to i64*
  %2394 = load i64, i64* %2393, align 8
  store i64 %2394, i64* %RAX.i178, align 8
  %2395 = add i64 %2351, 52
  store i64 %2395, i64* %3, align 8
  %2396 = load i64, i64* %2319, align 8
  store i64 %2396, i64* %RSI.i319, align 8
  %2397 = add i64 %2396, 24
  %2398 = add i64 %2351, 55
  store i64 %2398, i64* %3, align 8
  %2399 = inttoptr i64 %2397 to i32*
  %2400 = load i32, i32* %2399, align 4
  %2401 = zext i32 %2400 to i64
  store i64 %2401, i64* %RSI.i319, align 8
  %2402 = add i64 %2311, -304
  %2403 = add i64 %2351, 62
  store i64 %2403, i64* %3, align 8
  %2404 = inttoptr i64 %2402 to i64*
  store i64 %2355, i64* %2404, align 8
  %2405 = load i64, i64* %RAX.i178, align 8
  %2406 = load i64, i64* %3, align 8
  store i64 %2405, i64* %RDI.i239, align 8
  %2407 = load i64, i64* %RBP.i, align 8
  %2408 = add i64 %2407, -308
  %2409 = load i32, i32* %R9D.i449, align 4
  %2410 = add i64 %2406, 10
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2408 to i32*
  store i32 %2409, i32* %2411, align 4
  %2412 = load i64, i64* %RBP.i, align 8
  %2413 = add i64 %2412, -312
  %2414 = load i32, i32* %EDX.i1329, align 4
  %2415 = load i64, i64* %3, align 8
  %2416 = add i64 %2415, 6
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2413 to i32*
  store i32 %2414, i32* %2417, align 4
  %2418 = load i64, i64* %RBP.i, align 8
  %2419 = add i64 %2418, -316
  %2420 = load i32, i32* %ECX.i641, align 4
  %2421 = load i64, i64* %3, align 8
  %2422 = add i64 %2421, 6
  store i64 %2422, i64* %3, align 8
  %2423 = inttoptr i64 %2419 to i32*
  store i32 %2420, i32* %2423, align 4
  %2424 = load i64, i64* %RBP.i, align 8
  %2425 = add i64 %2424, -328
  %2426 = load i64, i64* %R8.i550, align 8
  %2427 = load i64, i64* %3, align 8
  %2428 = add i64 %2427, 7
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2425 to i64*
  store i64 %2426, i64* %2429, align 8
  %2430 = load i64, i64* %3, align 8
  %2431 = add i64 %2430, 70854
  %2432 = add i64 %2430, 5
  %2433 = load i64, i64* %6, align 8
  %2434 = add i64 %2433, -8
  %2435 = inttoptr i64 %2434 to i64*
  store i64 %2432, i64* %2435, align 8
  store i64 %2434, i64* %6, align 8
  store i64 %2431, i64* %3, align 8
  %call2_4315ca = tail call %struct.Memory* @sub_442a90.GCGchecksum(%struct.State* nonnull %0, i64 %2431, %struct.Memory* %MEMORY.25)
  %2436 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x458fcc_type* @G__0x458fcc to i64), i64* %RSI.i319, align 8
  %2437 = load i64, i64* %RBP.i, align 8
  %2438 = add i64 %2437, -16
  %2439 = add i64 %2436, 14
  store i64 %2439, i64* %3, align 8
  %2440 = inttoptr i64 %2438 to i64*
  %2441 = load i64, i64* %2440, align 8
  store i64 %2441, i64* %RDI.i239, align 8
  %2442 = add i64 %2441, 16
  %2443 = add i64 %2436, 18
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to i64*
  %2445 = load i64, i64* %2444, align 8
  store i64 %2445, i64* %RDI.i239, align 8
  %2446 = add i64 %2437, -116
  %2447 = add i64 %2436, 22
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2446 to i32*
  %2449 = load i32, i32* %2448, align 4
  %2450 = sext i32 %2449 to i64
  store i64 %2450, i64* %R8.i550, align 8
  %2451 = shl nsw i64 %2450, 2
  %2452 = add i64 %2451, %2445
  %2453 = add i64 %2436, 28
  store i64 %2453, i64* %3, align 8
  %2454 = inttoptr i64 %2452 to float*
  %2455 = load float, float* %2454, align 4
  %2456 = fpext float %2455 to double
  store double %2456, double* %2309, align 1
  %2457 = add i64 %2437, -304
  %2458 = add i64 %2436, 35
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i64*
  %2460 = load i64, i64* %2459, align 8
  store i64 %2460, i64* %RDI.i239, align 8
  %2461 = add i64 %2437, -312
  %2462 = add i64 %2436, 41
  store i64 %2462, i64* %3, align 8
  %2463 = inttoptr i64 %2461 to i32*
  %2464 = load i32, i32* %2463, align 4
  %2465 = zext i32 %2464 to i64
  store i64 %2465, i64* %RDX.i654, align 8
  %2466 = add i64 %2437, -316
  %2467 = add i64 %2436, 47
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2466 to i32*
  %2469 = load i32, i32* %2468, align 4
  %2470 = zext i32 %2469 to i64
  store i64 %2470, i64* %RCX.i204, align 8
  %2471 = add i64 %2437, -328
  %2472 = add i64 %2436, 54
  store i64 %2472, i64* %3, align 8
  %2473 = inttoptr i64 %2471 to i64*
  %2474 = load i64, i64* %2473, align 8
  store i64 %2474, i64* %R8.i550, align 8
  %2475 = add i64 %2437, -308
  %2476 = add i64 %2436, 61
  store i64 %2476, i64* %3, align 8
  %2477 = inttoptr i64 %2475 to i32*
  %2478 = load i32, i32* %2477, align 4
  %2479 = zext i32 %2478 to i64
  store i64 %2479, i64* %R9.i574, align 8
  %2480 = load i32*, i32** %2269, align 8
  %2481 = load i32, i32* %EAX.i1438, align 4
  %2482 = add i64 %2436, 64
  store i64 %2482, i64* %3, align 8
  store i32 %2481, i32* %2480, align 4
  %2483 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i1247, align 1
  %2484 = add i64 %2483, -196767
  %2485 = add i64 %2483, 7
  %2486 = load i64, i64* %6, align 8
  %2487 = add i64 %2486, -8
  %2488 = inttoptr i64 %2487 to i64*
  store i64 %2485, i64* %2488, align 8
  store i64 %2487, i64* %6, align 8
  store i64 %2484, i64* %3, align 8
  %2489 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.25)
  %2490 = load i64, i64* %RBP.i, align 8
  %2491 = add i64 %2490, -332
  %2492 = load i32, i32* %EAX.i1438, align 4
  %2493 = load i64, i64* %3, align 8
  %2494 = add i64 %2493, 6
  store i64 %2494, i64* %3, align 8
  %2495 = inttoptr i64 %2491 to i32*
  store i32 %2492, i32* %2495, align 4
  %2496 = load i64, i64* %RBP.i, align 8
  %2497 = add i64 %2496, -116
  %2498 = load i64, i64* %3, align 8
  %2499 = add i64 %2498, 3
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2497 to i32*
  %2501 = load i32, i32* %2500, align 4
  %2502 = add i32 %2501, 1
  %2503 = zext i32 %2502 to i64
  store i64 %2503, i64* %RAX.i178, align 8
  %2504 = icmp eq i32 %2501, -1
  %2505 = icmp eq i32 %2502, 0
  %2506 = or i1 %2504, %2505
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %14, align 1
  %2508 = and i32 %2502, 255
  %2509 = tail call i32 @llvm.ctpop.i32(i32 %2508)
  %2510 = trunc i32 %2509 to i8
  %2511 = and i8 %2510, 1
  %2512 = xor i8 %2511, 1
  store i8 %2512, i8* %21, align 1
  %2513 = xor i32 %2502, %2501
  %2514 = lshr i32 %2513, 4
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  store i8 %2516, i8* %26, align 1
  %2517 = zext i1 %2505 to i8
  store i8 %2517, i8* %29, align 1
  %2518 = lshr i32 %2502, 31
  %2519 = trunc i32 %2518 to i8
  store i8 %2519, i8* %32, align 1
  %2520 = lshr i32 %2501, 31
  %2521 = xor i32 %2518, %2520
  %2522 = add nuw nsw i32 %2521, %2518
  %2523 = icmp eq i32 %2522, 2
  %2524 = zext i1 %2523 to i8
  store i8 %2524, i8* %38, align 1
  %2525 = add i64 %2498, 9
  store i64 %2525, i64* %3, align 8
  store i32 %2502, i32* %2500, align 4
  %2526 = load i64, i64* %3, align 8
  %2527 = add i64 %2526, -198
  store i64 %2527, i64* %3, align 8
  br label %block_.L_43155f

block_.L_43162a:                                  ; preds = %block_.L_43155f
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i319, align 8
  %2528 = add i64 %2311, -8
  %2529 = add i64 %2351, 14
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i64*
  %2531 = load i64, i64* %2530, align 8
  store i64 %2531, i64* %RDI.i239, align 8
  store i8 0, i8* %AL.i1247, align 1
  %2532 = add i64 %2351, -196794
  %2533 = add i64 %2351, 21
  %2534 = load i64, i64* %6, align 8
  %2535 = add i64 %2534, -8
  %2536 = inttoptr i64 %2535 to i64*
  store i64 %2533, i64* %2536, align 8
  store i64 %2535, i64* %6, align 8
  store i64 %2532, i64* %3, align 8
  %2537 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.25)
  %2538 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45756f_type* @G__0x45756f to i64), i64* %RSI.i319, align 8
  %2539 = load i64, i64* %RBP.i, align 8
  %2540 = add i64 %2539, -8
  %2541 = add i64 %2538, 14
  store i64 %2541, i64* %3, align 8
  %2542 = inttoptr i64 %2540 to i64*
  %2543 = load i64, i64* %2542, align 8
  store i64 %2543, i64* %RDI.i239, align 8
  %2544 = add i64 %2539, -336
  %2545 = load i32, i32* %EAX.i1438, align 4
  %2546 = add i64 %2538, 20
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2544 to i32*
  store i32 %2545, i32* %2547, align 4
  %2548 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1247, align 1
  %2549 = add i64 %2548, -196835
  %2550 = add i64 %2548, 7
  %2551 = load i64, i64* %6, align 8
  %2552 = add i64 %2551, -8
  %2553 = inttoptr i64 %2552 to i64*
  store i64 %2550, i64* %2553, align 8
  store i64 %2552, i64* %6, align 8
  store i64 %2549, i64* %3, align 8
  %2554 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2537)
  %2555 = load i64, i64* %RBP.i, align 8
  %2556 = add i64 %2555, -140
  %2557 = load i64, i64* %3, align 8
  %2558 = add i64 %2557, 10
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2556 to i32*
  store i32 0, i32* %2559, align 4
  %2560 = load i64, i64* %RBP.i, align 8
  %2561 = add i64 %2560, -340
  %2562 = load i32, i32* %EAX.i1438, align 4
  %2563 = load i64, i64* %3, align 8
  %2564 = add i64 %2563, 6
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2561 to i32*
  store i32 %2562, i32* %2565, align 4
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i253 = bitcast %union.anon* %2567 to i32*
  %2568 = getelementptr inbounds %union.anon, %union.anon* %2567, i64 0, i32 0
  %R11.i215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %2569 = bitcast i64* %6 to i64**
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_43166a

block_.L_43166a:                                  ; preds = %block_.L_4318e1, %block_.L_43162a
  %2570 = phi i64 [ %.pre91, %block_.L_43162a ], [ %3416, %block_.L_4318e1 ]
  %MEMORY.26 = phi %struct.Memory* [ %2554, %block_.L_43162a ], [ %MEMORY.29, %block_.L_4318e1 ]
  %2571 = load i64, i64* %RBP.i, align 8
  %2572 = add i64 %2571, -140
  %2573 = add i64 %2570, 6
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2572 to i32*
  %2575 = load i32, i32* %2574, align 4
  %2576 = zext i32 %2575 to i64
  store i64 %2576, i64* %RAX.i178, align 8
  %2577 = add i64 %2571, -16
  %2578 = add i64 %2570, 10
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2577 to i64*
  %2580 = load i64, i64* %2579, align 8
  store i64 %2580, i64* %RCX.i204, align 8
  %2581 = add i64 %2580, 24
  %2582 = add i64 %2570, 13
  store i64 %2582, i64* %3, align 8
  %2583 = inttoptr i64 %2581 to i32*
  %2584 = load i32, i32* %2583, align 4
  %2585 = sub i32 %2575, %2584
  %2586 = icmp ult i32 %2575, %2584
  %2587 = zext i1 %2586 to i8
  store i8 %2587, i8* %14, align 1
  %2588 = and i32 %2585, 255
  %2589 = tail call i32 @llvm.ctpop.i32(i32 %2588)
  %2590 = trunc i32 %2589 to i8
  %2591 = and i8 %2590, 1
  %2592 = xor i8 %2591, 1
  store i8 %2592, i8* %21, align 1
  %2593 = xor i32 %2584, %2575
  %2594 = xor i32 %2593, %2585
  %2595 = lshr i32 %2594, 4
  %2596 = trunc i32 %2595 to i8
  %2597 = and i8 %2596, 1
  store i8 %2597, i8* %26, align 1
  %2598 = icmp eq i32 %2585, 0
  %2599 = zext i1 %2598 to i8
  store i8 %2599, i8* %29, align 1
  %2600 = lshr i32 %2585, 31
  %2601 = trunc i32 %2600 to i8
  store i8 %2601, i8* %32, align 1
  %2602 = lshr i32 %2575, 31
  %2603 = lshr i32 %2584, 31
  %2604 = xor i32 %2603, %2602
  %2605 = xor i32 %2600, %2602
  %2606 = add nuw nsw i32 %2605, %2604
  %2607 = icmp eq i32 %2606, 2
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %38, align 1
  %2609 = icmp ne i8 %2601, 0
  %2610 = xor i1 %2609, %2607
  %.v130 = select i1 %2610, i64 19, i64 656
  %2611 = add i64 %2570, %.v130
  store i64 %2611, i64* %3, align 8
  br i1 %2610, label %block_43167d, label %block_.L_4318fa

block_43167d:                                     ; preds = %block_.L_43166a
  store i64 ptrtoint (%G__0x45a1f7_type* @G__0x45a1f7 to i64), i64* %RSI.i319, align 8
  %2612 = add i64 %2571, -8
  %2613 = add i64 %2611, 14
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2612 to i64*
  %2615 = load i64, i64* %2614, align 8
  store i64 %2615, i64* %RDI.i239, align 8
  store i8 0, i8* %AL.i1247, align 1
  %2616 = add i64 %2611, -196877
  %2617 = add i64 %2611, 21
  %2618 = load i64, i64* %6, align 8
  %2619 = add i64 %2618, -8
  %2620 = inttoptr i64 %2619 to i64*
  store i64 %2617, i64* %2620, align 8
  store i64 %2619, i64* %6, align 8
  store i64 %2616, i64* %3, align 8
  %2621 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.26)
  %2622 = load i64, i64* %RBP.i, align 8
  %2623 = add i64 %2622, -140
  %2624 = load i64, i64* %3, align 8
  %2625 = add i64 %2624, 6
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2623 to i32*
  %2627 = load i32, i32* %2626, align 4
  %2628 = add i32 %2627, 50
  %2629 = zext i32 %2628 to i64
  store i64 %2629, i64* %RCX.i204, align 8
  %2630 = icmp ugt i32 %2627, -51
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %14, align 1
  %2632 = and i32 %2628, 255
  %2633 = tail call i32 @llvm.ctpop.i32(i32 %2632)
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  %2636 = xor i8 %2635, 1
  store i8 %2636, i8* %21, align 1
  %2637 = xor i32 %2627, 16
  %2638 = xor i32 %2637, %2628
  %2639 = lshr i32 %2638, 4
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  store i8 %2641, i8* %26, align 1
  %2642 = icmp eq i32 %2628, 0
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %29, align 1
  %2644 = lshr i32 %2628, 31
  %2645 = trunc i32 %2644 to i8
  store i8 %2645, i8* %32, align 1
  %2646 = lshr i32 %2627, 31
  %2647 = xor i32 %2644, %2646
  %2648 = add nuw nsw i32 %2647, %2644
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %38, align 1
  %2651 = add i64 %2622, -16
  %2652 = add i64 %2624, 13
  store i64 %2652, i64* %3, align 8
  %2653 = inttoptr i64 %2651 to i64*
  %2654 = load i64, i64* %2653, align 8
  store i64 %2654, i64* %RSI.i319, align 8
  %2655 = add i64 %2654, 24
  %2656 = add i64 %2624, 16
  store i64 %2656, i64* %3, align 8
  %2657 = inttoptr i64 %2655 to i32*
  %2658 = load i32, i32* %2657, align 4
  %2659 = sub i32 %2628, %2658
  %2660 = icmp ult i32 %2628, %2658
  %2661 = zext i1 %2660 to i8
  store i8 %2661, i8* %14, align 1
  %2662 = and i32 %2659, 255
  %2663 = tail call i32 @llvm.ctpop.i32(i32 %2662)
  %2664 = trunc i32 %2663 to i8
  %2665 = and i8 %2664, 1
  %2666 = xor i8 %2665, 1
  store i8 %2666, i8* %21, align 1
  %2667 = xor i32 %2658, %2628
  %2668 = xor i32 %2667, %2659
  %2669 = lshr i32 %2668, 4
  %2670 = trunc i32 %2669 to i8
  %2671 = and i8 %2670, 1
  store i8 %2671, i8* %26, align 1
  %2672 = icmp eq i32 %2659, 0
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %29, align 1
  %2674 = lshr i32 %2659, 31
  %2675 = trunc i32 %2674 to i8
  store i8 %2675, i8* %32, align 1
  %2676 = lshr i32 %2658, 31
  %2677 = xor i32 %2676, %2644
  %2678 = xor i32 %2674, %2644
  %2679 = add nuw nsw i32 %2678, %2677
  %2680 = icmp eq i32 %2679, 2
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %38, align 1
  %2682 = add i64 %2622, -344
  %2683 = load i32, i32* %EAX.i1438, align 4
  %2684 = add i64 %2624, 22
  store i64 %2684, i64* %3, align 8
  %2685 = inttoptr i64 %2682 to i32*
  store i32 %2683, i32* %2685, align 4
  %2686 = load i64, i64* %3, align 8
  %2687 = load i8, i8* %29, align 1
  %2688 = icmp ne i8 %2687, 0
  %2689 = load i8, i8* %32, align 1
  %2690 = icmp ne i8 %2689, 0
  %2691 = load i8, i8* %38, align 1
  %2692 = icmp ne i8 %2691, 0
  %2693 = xor i1 %2690, %2692
  %2694 = or i1 %2688, %2693
  %.v174 = select i1 %2694, i64 30, i64 6
  %2695 = add i64 %2686, %.v174
  store i64 %2695, i64* %3, align 8
  br i1 %2694, label %block_.L_4316c6, label %block_4316ae

block_4316ae:                                     ; preds = %block_43167d
  %2696 = load i64, i64* %RBP.i, align 8
  %2697 = add i64 %2696, -16
  %2698 = add i64 %2695, 4
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to i64*
  %2700 = load i64, i64* %2699, align 8
  store i64 %2700, i64* %RAX.i178, align 8
  %2701 = add i64 %2700, 24
  %2702 = add i64 %2695, 7
  store i64 %2702, i64* %3, align 8
  %2703 = inttoptr i64 %2701 to i32*
  %2704 = load i32, i32* %2703, align 4
  %2705 = zext i32 %2704 to i64
  store i64 %2705, i64* %RCX.i204, align 8
  %2706 = add i64 %2696, -140
  %2707 = add i64 %2695, 13
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i32*
  %2709 = load i32, i32* %2708, align 4
  %2710 = sub i32 %2704, %2709
  %2711 = zext i32 %2710 to i64
  store i64 %2711, i64* %RCX.i204, align 8
  %2712 = icmp ult i32 %2704, %2709
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %14, align 1
  %2714 = and i32 %2710, 255
  %2715 = tail call i32 @llvm.ctpop.i32(i32 %2714)
  %2716 = trunc i32 %2715 to i8
  %2717 = and i8 %2716, 1
  %2718 = xor i8 %2717, 1
  store i8 %2718, i8* %21, align 1
  %2719 = xor i32 %2709, %2704
  %2720 = xor i32 %2719, %2710
  %2721 = lshr i32 %2720, 4
  %2722 = trunc i32 %2721 to i8
  %2723 = and i8 %2722, 1
  store i8 %2723, i8* %26, align 1
  %2724 = icmp eq i32 %2710, 0
  %2725 = zext i1 %2724 to i8
  store i8 %2725, i8* %29, align 1
  %2726 = lshr i32 %2710, 31
  %2727 = trunc i32 %2726 to i8
  store i8 %2727, i8* %32, align 1
  %2728 = lshr i32 %2704, 31
  %2729 = lshr i32 %2709, 31
  %2730 = xor i32 %2729, %2728
  %2731 = xor i32 %2726, %2728
  %2732 = add nuw nsw i32 %2731, %2730
  %2733 = icmp eq i32 %2732, 2
  %2734 = zext i1 %2733 to i8
  store i8 %2734, i8* %38, align 1
  %2735 = add i64 %2696, -348
  %2736 = add i64 %2695, 19
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2735 to i32*
  store i32 %2710, i32* %2737, align 4
  %2738 = load i64, i64* %3, align 8
  %2739 = add i64 %2738, 21
  br label %block_.L_4316d6

block_.L_4316c6:                                  ; preds = %block_43167d
  store i64 50, i64* %RAX.i178, align 8
  %2740 = load i64, i64* %RBP.i, align 8
  %2741 = add i64 %2740, -348
  %2742 = add i64 %2695, 11
  store i64 %2742, i64* %3, align 8
  %2743 = inttoptr i64 %2741 to i32*
  store i32 50, i32* %2743, align 4
  %2744 = load i64, i64* %3, align 8
  %2745 = add i64 %2744, 5
  store i64 %2745, i64* %3, align 8
  br label %block_.L_4316d6

block_.L_4316d6:                                  ; preds = %block_.L_4316c6, %block_4316ae
  %storemerge47 = phi i64 [ %2739, %block_4316ae ], [ %2745, %block_.L_4316c6 ]
  %2746 = load i64, i64* %RBP.i, align 8
  %2747 = add i64 %2746, -348
  %2748 = add i64 %storemerge47, 6
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2747 to i32*
  %2750 = load i32, i32* %2749, align 4
  %2751 = zext i32 %2750 to i64
  store i64 %2751, i64* %RAX.i178, align 8
  %2752 = add i64 %2746, -132
  %2753 = add i64 %storemerge47, 12
  store i64 %2753, i64* %3, align 8
  %2754 = inttoptr i64 %2752 to i32*
  store i32 %2750, i32* %2754, align 4
  %2755 = load i64, i64* %RBP.i, align 8
  %2756 = add i64 %2755, -132
  %2757 = load i64, i64* %3, align 8
  %2758 = add i64 %2757, 7
  store i64 %2758, i64* %3, align 8
  %2759 = inttoptr i64 %2756 to i32*
  %2760 = load i32, i32* %2759, align 4
  %2761 = add i32 %2760, -10
  %2762 = icmp ult i32 %2760, 10
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %14, align 1
  %2764 = and i32 %2761, 255
  %2765 = tail call i32 @llvm.ctpop.i32(i32 %2764)
  %2766 = trunc i32 %2765 to i8
  %2767 = and i8 %2766, 1
  %2768 = xor i8 %2767, 1
  store i8 %2768, i8* %21, align 1
  %2769 = xor i32 %2761, %2760
  %2770 = lshr i32 %2769, 4
  %2771 = trunc i32 %2770 to i8
  %2772 = and i8 %2771, 1
  store i8 %2772, i8* %26, align 1
  %2773 = icmp eq i32 %2761, 0
  %2774 = zext i1 %2773 to i8
  store i8 %2774, i8* %29, align 1
  %2775 = lshr i32 %2761, 31
  %2776 = trunc i32 %2775 to i8
  store i8 %2776, i8* %32, align 1
  %2777 = lshr i32 %2760, 31
  %2778 = xor i32 %2775, %2777
  %2779 = add nuw nsw i32 %2778, %2777
  %2780 = icmp eq i32 %2779, 2
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %38, align 1
  %2782 = icmp ne i8 %2776, 0
  %2783 = xor i1 %2782, %2780
  %2784 = or i1 %2773, %2783
  %.v131 = select i1 %2784, i64 163, i64 13
  %2785 = add i64 %2757, %.v131
  %2786 = add i64 %2785, 10
  store i64 %2786, i64* %3, align 8
  br i1 %2784, label %block_.L_431785, label %block_4316ef

block_4316ef:                                     ; preds = %block_.L_4316d6
  store i64 ptrtoint (%G__0x459000_type* @G__0x459000 to i64), i64* %RSI.i319, align 8
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RAX.i178, align 8
  store i64 10, i64* %RCX.i204, align 8
  %2787 = add i64 %2755, -8
  %2788 = add i64 %2785, 29
  store i64 %2788, i64* %3, align 8
  %2789 = inttoptr i64 %2787 to i64*
  %2790 = load i64, i64* %2789, align 8
  store i64 %2790, i64* %RDI.i239, align 8
  %2791 = add i64 %2755, -136
  %2792 = add i64 %2785, 35
  store i64 %2792, i64* %3, align 8
  %2793 = inttoptr i64 %2791 to i32*
  %2794 = load i32, i32* %2793, align 4
  %2795 = zext i32 %2794 to i64
  store i64 %2795, i64* %RDX.i654, align 8
  %2796 = add i64 %2755, -140
  %2797 = add i64 %2785, 42
  store i64 %2797, i64* %3, align 8
  %2798 = inttoptr i64 %2796 to i32*
  %2799 = load i32, i32* %2798, align 4
  %2800 = add i32 %2799, 1
  %2801 = zext i32 %2800 to i64
  store i64 %2801, i64* %R8.i550, align 8
  %2802 = icmp eq i32 %2799, -1
  %2803 = icmp eq i32 %2800, 0
  %2804 = or i1 %2802, %2803
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %14, align 1
  %2806 = and i32 %2800, 255
  %2807 = tail call i32 @llvm.ctpop.i32(i32 %2806)
  %2808 = trunc i32 %2807 to i8
  %2809 = and i8 %2808, 1
  %2810 = xor i8 %2809, 1
  store i8 %2810, i8* %21, align 1
  %2811 = xor i32 %2800, %2799
  %2812 = lshr i32 %2811, 4
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  store i8 %2814, i8* %26, align 1
  %2815 = zext i1 %2803 to i8
  store i8 %2815, i8* %29, align 1
  %2816 = lshr i32 %2800, 31
  %2817 = trunc i32 %2816 to i8
  store i8 %2817, i8* %32, align 1
  %2818 = lshr i32 %2799, 31
  %2819 = xor i32 %2816, %2818
  %2820 = add nuw nsw i32 %2819, %2816
  %2821 = icmp eq i32 %2820, 2
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %38, align 1
  %2823 = add i64 %2785, 53
  store i64 %2823, i64* %3, align 8
  %2824 = load i32, i32* %2759, align 4
  %2825 = zext i32 %2824 to i64
  store i64 %2825, i64* %R9.i574, align 8
  %2826 = add i64 %2785, 60
  store i64 %2826, i64* %3, align 8
  %2827 = load i32, i32* %2759, align 4
  %2828 = add i32 %2827, -1
  %2829 = zext i32 %2828 to i64
  store i64 %2829, i64* %2568, align 8
  %2830 = icmp eq i32 %2827, 0
  %2831 = zext i1 %2830 to i8
  store i8 %2831, i8* %14, align 1
  %2832 = and i32 %2828, 255
  %2833 = tail call i32 @llvm.ctpop.i32(i32 %2832)
  %2834 = trunc i32 %2833 to i8
  %2835 = and i8 %2834, 1
  %2836 = xor i8 %2835, 1
  store i8 %2836, i8* %21, align 1
  %2837 = xor i32 %2828, %2827
  %2838 = lshr i32 %2837, 4
  %2839 = trunc i32 %2838 to i8
  %2840 = and i8 %2839, 1
  store i8 %2840, i8* %26, align 1
  %2841 = icmp eq i32 %2828, 0
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %29, align 1
  %2843 = lshr i32 %2828, 31
  %2844 = trunc i32 %2843 to i8
  store i8 %2844, i8* %32, align 1
  %2845 = lshr i32 %2827, 31
  %2846 = xor i32 %2843, %2845
  %2847 = add nuw nsw i32 %2846, %2845
  %2848 = icmp eq i32 %2847, 2
  %2849 = zext i1 %2848 to i8
  store i8 %2849, i8* %38, align 1
  %2850 = load i64, i64* %RBP.i, align 8
  %2851 = add i64 %2850, -360
  %2852 = load i64, i64* %RAX.i178, align 8
  %2853 = add i64 %2785, 71
  store i64 %2853, i64* %3, align 8
  %2854 = inttoptr i64 %2851 to i64*
  store i64 %2852, i64* %2854, align 8
  %2855 = load i32, i32* %R10D.i253, align 4
  %2856 = zext i32 %2855 to i64
  %2857 = load i64, i64* %3, align 8
  store i64 %2856, i64* %RAX.i178, align 8
  %2858 = load i64, i64* %RBP.i, align 8
  %2859 = add i64 %2858, -364
  %2860 = load i32, i32* %EDX.i1329, align 4
  %2861 = add i64 %2857, 9
  store i64 %2861, i64* %3, align 8
  %2862 = inttoptr i64 %2859 to i32*
  store i32 %2860, i32* %2862, align 4
  %2863 = load i64, i64* %3, align 8
  %2864 = load i32, i32* %EAX.i1438, align 8
  %2865 = sext i32 %2864 to i64
  %2866 = lshr i64 %2865, 32
  store i64 %2866, i64* %2566, align 8
  %2867 = load i32, i32* %ECX.i641, align 4
  %2868 = add i64 %2863, 3
  store i64 %2868, i64* %3, align 8
  %2869 = zext i32 %2864 to i64
  %2870 = sext i32 %2867 to i64
  %2871 = shl nuw i64 %2866, 32
  %2872 = or i64 %2871, %2869
  %2873 = sdiv i64 %2872, %2870
  %2874 = shl i64 %2873, 32
  %2875 = ashr exact i64 %2874, 32
  %2876 = icmp eq i64 %2873, %2875
  br i1 %2876, label %2879, label %2877

; <label>:2877:                                   ; preds = %block_4316ef
  %2878 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2868, %struct.Memory* %2621)
  %.pre92 = load i32, i32* %EAX.i1438, align 4
  %.pre93 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit237

; <label>:2879:                                   ; preds = %block_4316ef
  %2880 = srem i64 %2872, %2870
  %2881 = and i64 %2873, 4294967295
  store i64 %2881, i64* %RAX.i178, align 8
  %2882 = and i64 %2880, 4294967295
  store i64 %2882, i64* %RDX.i654, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2883 = trunc i64 %2873 to i32
  br label %routine_idivl__ecx.exit237

routine_idivl__ecx.exit237:                       ; preds = %2879, %2877
  %2884 = phi i64 [ %.pre93, %2877 ], [ %2868, %2879 ]
  %2885 = phi i32 [ %.pre92, %2877 ], [ %2883, %2879 ]
  %2886 = phi %struct.Memory* [ %2878, %2877 ], [ %2621, %2879 ]
  %2887 = load i32, i32* %R9D.i449, align 4
  %2888 = add i32 %2885, %2887
  %2889 = lshr i32 %2888, 31
  %2890 = add i32 %2888, -12
  %2891 = zext i32 %2890 to i64
  store i64 %2891, i64* %R9.i574, align 8
  %2892 = icmp ult i32 %2888, 12
  %2893 = zext i1 %2892 to i8
  store i8 %2893, i8* %14, align 1
  %2894 = and i32 %2890, 255
  %2895 = tail call i32 @llvm.ctpop.i32(i32 %2894)
  %2896 = trunc i32 %2895 to i8
  %2897 = and i8 %2896, 1
  %2898 = xor i8 %2897, 1
  store i8 %2898, i8* %21, align 1
  %2899 = xor i32 %2890, %2888
  %2900 = lshr i32 %2899, 4
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  store i8 %2902, i8* %26, align 1
  %2903 = icmp eq i32 %2890, 0
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %29, align 1
  %2905 = lshr i32 %2890, 31
  %2906 = trunc i32 %2905 to i8
  store i8 %2906, i8* %32, align 1
  %2907 = xor i32 %2905, %2889
  %2908 = add nuw nsw i32 %2907, %2889
  %2909 = icmp eq i32 %2908, 2
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %38, align 1
  %2911 = load i64, i64* %RBP.i, align 8
  %2912 = add i64 %2911, -140
  %2913 = add i64 %2884, 13
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i32*
  %2915 = load i32, i32* %2914, align 4
  %2916 = zext i32 %2915 to i64
  store i64 %2916, i64* %RAX.i178, align 8
  %2917 = add i64 %2911, -132
  %2918 = add i64 %2884, 19
  store i64 %2918, i64* %3, align 8
  %2919 = inttoptr i64 %2917 to i32*
  %2920 = load i32, i32* %2919, align 4
  %2921 = add i32 %2920, %2915
  %2922 = zext i32 %2921 to i64
  store i64 %2922, i64* %RAX.i178, align 8
  %2923 = icmp ult i32 %2921, %2915
  %2924 = icmp ult i32 %2921, %2920
  %2925 = or i1 %2923, %2924
  %2926 = zext i1 %2925 to i8
  store i8 %2926, i8* %14, align 1
  %2927 = and i32 %2921, 255
  %2928 = tail call i32 @llvm.ctpop.i32(i32 %2927)
  %2929 = trunc i32 %2928 to i8
  %2930 = and i8 %2929, 1
  %2931 = xor i8 %2930, 1
  store i8 %2931, i8* %21, align 1
  %2932 = xor i32 %2920, %2915
  %2933 = xor i32 %2932, %2921
  %2934 = lshr i32 %2933, 4
  %2935 = trunc i32 %2934 to i8
  %2936 = and i8 %2935, 1
  store i8 %2936, i8* %26, align 1
  %2937 = icmp eq i32 %2921, 0
  %2938 = zext i1 %2937 to i8
  store i8 %2938, i8* %29, align 1
  %2939 = lshr i32 %2921, 31
  %2940 = trunc i32 %2939 to i8
  store i8 %2940, i8* %32, align 1
  %2941 = lshr i32 %2915, 31
  %2942 = lshr i32 %2920, 31
  %2943 = xor i32 %2939, %2941
  %2944 = xor i32 %2939, %2942
  %2945 = add nuw nsw i32 %2943, %2944
  %2946 = icmp eq i32 %2945, 2
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %38, align 1
  %2948 = add i64 %2911, -364
  %2949 = add i64 %2884, 25
  store i64 %2949, i64* %3, align 8
  %2950 = inttoptr i64 %2948 to i32*
  %2951 = load i32, i32* %2950, align 4
  %2952 = zext i32 %2951 to i64
  store i64 %2952, i64* %RCX.i204, align 8
  store i64 %2952, i64* %RDX.i654, align 8
  %2953 = add i64 %2911, -360
  %2954 = add i64 %2884, 34
  store i64 %2954, i64* %3, align 8
  %2955 = inttoptr i64 %2953 to i64*
  %2956 = load i64, i64* %2955, align 8
  store i64 %2956, i64* %RCX.i204, align 8
  %2957 = add i64 %2884, 41
  store i64 %2957, i64* %3, align 8
  %2958 = load i64, i64* %2955, align 8
  store i64 %2958, i64* %R11.i215, align 8
  %2959 = load i64*, i64** %2569, align 8
  %2960 = add i64 %2884, 45
  store i64 %2960, i64* %3, align 8
  store i64 %2958, i64* %2959, align 8
  %2961 = load i64, i64* %6, align 8
  %2962 = add i64 %2961, 8
  %2963 = load i32, i32* %EAX.i1438, align 4
  %2964 = load i64, i64* %3, align 8
  %2965 = add i64 %2964, 4
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2962 to i32*
  store i32 %2963, i32* %2966, align 4
  %2967 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i1247, align 1
  %2968 = add i64 %2967, -197123
  %2969 = add i64 %2967, 7
  %2970 = load i64, i64* %6, align 8
  %2971 = add i64 %2970, -8
  %2972 = inttoptr i64 %2971 to i64*
  store i64 %2969, i64* %2972, align 8
  store i64 %2971, i64* %6, align 8
  store i64 %2968, i64* %3, align 8
  %2973 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2886)
  %2974 = load i64, i64* %RBP.i, align 8
  %2975 = add i64 %2974, -368
  %2976 = load i32, i32* %EAX.i1438, align 4
  %2977 = load i64, i64* %3, align 8
  %2978 = add i64 %2977, 6
  store i64 %2978, i64* %3, align 8
  %2979 = inttoptr i64 %2975 to i32*
  store i32 %2976, i32* %2979, align 4
  %2980 = load i64, i64* %3, align 8
  %2981 = add i64 %2980, 60
  store i64 %2981, i64* %3, align 8
  br label %block_.L_4317bc

block_.L_431785:                                  ; preds = %block_.L_4316d6
  store i64 ptrtoint (%G__0x459011_type* @G__0x459011 to i64), i64* %RSI.i319, align 8
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RCX.i204, align 8
  %2982 = add i64 %2755, -8
  %2983 = add i64 %2785, 24
  store i64 %2983, i64* %3, align 8
  %2984 = inttoptr i64 %2982 to i64*
  %2985 = load i64, i64* %2984, align 8
  store i64 %2985, i64* %RDI.i239, align 8
  %2986 = add i64 %2755, -136
  %2987 = add i64 %2785, 30
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2986 to i32*
  %2989 = load i32, i32* %2988, align 4
  %2990 = zext i32 %2989 to i64
  store i64 %2990, i64* %RDX.i654, align 8
  %2991 = add i64 %2755, -140
  %2992 = add i64 %2785, 36
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2991 to i32*
  %2994 = load i32, i32* %2993, align 4
  %2995 = add i32 %2994, 1
  %2996 = zext i32 %2995 to i64
  store i64 %2996, i64* %RAX.i178, align 8
  %2997 = icmp eq i32 %2994, -1
  %2998 = icmp eq i32 %2995, 0
  %2999 = or i1 %2997, %2998
  %3000 = zext i1 %2999 to i8
  store i8 %3000, i8* %14, align 1
  %3001 = and i32 %2995, 255
  %3002 = tail call i32 @llvm.ctpop.i32(i32 %3001)
  %3003 = trunc i32 %3002 to i8
  %3004 = and i8 %3003, 1
  %3005 = xor i8 %3004, 1
  store i8 %3005, i8* %21, align 1
  %3006 = xor i32 %2995, %2994
  %3007 = lshr i32 %3006, 4
  %3008 = trunc i32 %3007 to i8
  %3009 = and i8 %3008, 1
  store i8 %3009, i8* %26, align 1
  %3010 = zext i1 %2998 to i8
  store i8 %3010, i8* %29, align 1
  %3011 = lshr i32 %2995, 31
  %3012 = trunc i32 %3011 to i8
  store i8 %3012, i8* %32, align 1
  %3013 = lshr i32 %2994, 31
  %3014 = xor i32 %3011, %3013
  %3015 = add nuw nsw i32 %3014, %3011
  %3016 = icmp eq i32 %3015, 2
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %38, align 1
  store i64 %2996, i64* %R8.i550, align 8
  store i8 0, i8* %AL.i1247, align 1
  %3018 = add i64 %2785, -197141
  %3019 = add i64 %2785, 49
  %3020 = load i64, i64* %6, align 8
  %3021 = add i64 %3020, -8
  %3022 = inttoptr i64 %3021 to i64*
  store i64 %3019, i64* %3022, align 8
  store i64 %3021, i64* %6, align 8
  store i64 %3018, i64* %3, align 8
  %3023 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2621)
  %3024 = load i64, i64* %RBP.i, align 8
  %3025 = add i64 %3024, -372
  %3026 = load i32, i32* %EAX.i1438, align 4
  %3027 = load i64, i64* %3, align 8
  %3028 = add i64 %3027, 6
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3025 to i32*
  store i32 %3026, i32* %3029, align 4
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_4317bc

block_.L_4317bc:                                  ; preds = %block_.L_431785, %routine_idivl__ecx.exit237
  %3030 = phi i64 [ %.pre94, %block_.L_431785 ], [ %2981, %routine_idivl__ecx.exit237 ]
  %MEMORY.28 = phi %struct.Memory* [ %3023, %block_.L_431785 ], [ %2973, %routine_idivl__ecx.exit237 ]
  %3031 = load i64, i64* %RBP.i, align 8
  %3032 = add i64 %3031, -116
  %3033 = add i64 %3030, 7
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3032 to i32*
  store i32 0, i32* %3034, align 4
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_4317c3

block_.L_4317c3:                                  ; preds = %block_.L_4318bf, %block_.L_4317bc
  %3035 = phi i64 [ %.pre95, %block_.L_4317bc ], [ %3386, %block_.L_4318bf ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.28, %block_.L_4317bc ], [ %call2_4318c8, %block_.L_4318bf ]
  %3036 = load i64, i64* %RBP.i, align 8
  %3037 = add i64 %3036, -116
  %3038 = add i64 %3035, 3
  store i64 %3038, i64* %3, align 8
  %3039 = inttoptr i64 %3037 to i32*
  %3040 = load i32, i32* %3039, align 4
  %3041 = zext i32 %3040 to i64
  store i64 %3041, i64* %RAX.i178, align 8
  %3042 = add i64 %3036, -16
  %3043 = add i64 %3035, 7
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i64*
  %3045 = load i64, i64* %3044, align 8
  store i64 %3045, i64* %RCX.i204, align 8
  %3046 = add i64 %3045, 28
  %3047 = add i64 %3035, 10
  store i64 %3047, i64* %3, align 8
  %3048 = inttoptr i64 %3046 to i32*
  %3049 = load i32, i32* %3048, align 4
  %3050 = sub i32 %3040, %3049
  %3051 = icmp ult i32 %3040, %3049
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %14, align 1
  %3053 = and i32 %3050, 255
  %3054 = tail call i32 @llvm.ctpop.i32(i32 %3053)
  %3055 = trunc i32 %3054 to i8
  %3056 = and i8 %3055, 1
  %3057 = xor i8 %3056, 1
  store i8 %3057, i8* %21, align 1
  %3058 = xor i32 %3049, %3040
  %3059 = xor i32 %3058, %3050
  %3060 = lshr i32 %3059, 4
  %3061 = trunc i32 %3060 to i8
  %3062 = and i8 %3061, 1
  store i8 %3062, i8* %26, align 1
  %3063 = icmp eq i32 %3050, 0
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %29, align 1
  %3065 = lshr i32 %3050, 31
  %3066 = trunc i32 %3065 to i8
  store i8 %3066, i8* %32, align 1
  %3067 = lshr i32 %3040, 31
  %3068 = lshr i32 %3049, 31
  %3069 = xor i32 %3068, %3067
  %3070 = xor i32 %3065, %3067
  %3071 = add nuw nsw i32 %3070, %3069
  %3072 = icmp eq i32 %3071, 2
  %3073 = zext i1 %3072 to i8
  store i8 %3073, i8* %38, align 1
  %3074 = icmp ne i8 %3066, 0
  %3075 = xor i1 %3074, %3072
  %.v114 = select i1 %3075, i64 16, i64 286
  %3076 = add i64 %3035, %.v114
  store i64 %3076, i64* %3, align 8
  br i1 %3075, label %block_4317d3, label %block_.L_4318e1

block_4317d3:                                     ; preds = %block_.L_4317c3
  store i64 ptrtoint (%G__0x45901c_type* @G__0x45901c to i64), i64* %RSI.i319, align 8
  %3077 = add i64 %3036, -8
  %3078 = add i64 %3076, 14
  store i64 %3078, i64* %3, align 8
  %3079 = inttoptr i64 %3077 to i64*
  %3080 = load i64, i64* %3079, align 8
  store i64 %3080, i64* %RDI.i239, align 8
  %3081 = add i64 %3036, -136
  %3082 = add i64 %3076, 20
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i32*
  %3084 = load i32, i32* %3083, align 4
  %3085 = zext i32 %3084 to i64
  store i64 %3085, i64* %RDX.i654, align 8
  %3086 = add i64 %3036, -112
  %3087 = add i64 %3076, 24
  store i64 %3087, i64* %3, align 8
  %3088 = inttoptr i64 %3086 to i64*
  %3089 = load i64, i64* %3088, align 8
  store i64 %3089, i64* %RAX.i178, align 8
  %3090 = add i64 %3076, 28
  store i64 %3090, i64* %3, align 8
  %3091 = load i32, i32* %3039, align 4
  %3092 = sext i32 %3091 to i64
  store i64 %3092, i64* %RCX.i204, align 8
  %3093 = shl nsw i64 %3092, 3
  %3094 = add i64 %3093, %3089
  %3095 = add i64 %3076, 32
  store i64 %3095, i64* %3, align 8
  %3096 = inttoptr i64 %3094 to i64*
  %3097 = load i64, i64* %3096, align 8
  store i64 %3097, i64* %RCX.i204, align 8
  store i8 0, i8* %AL.i1247, align 1
  %3098 = add i64 %3076, -197219
  %3099 = add i64 %3076, 39
  %3100 = load i64, i64* %6, align 8
  %3101 = add i64 %3100, -8
  %3102 = inttoptr i64 %3101 to i64*
  store i64 %3099, i64* %3102, align 8
  store i64 %3101, i64* %6, align 8
  store i64 %3098, i64* %3, align 8
  %3103 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.29)
  %3104 = load i64, i64* %3, align 8
  store i64 50, i64* %RDX.i654, align 8
  %3105 = load i64, i64* %RBP.i, align 8
  %3106 = add i64 %3105, -192
  store i64 %3106, i64* %RDI.i239, align 8
  %3107 = add i64 %3105, -104
  %3108 = add i64 %3104, 16
  store i64 %3108, i64* %3, align 8
  %3109 = inttoptr i64 %3107 to i64*
  %3110 = load i64, i64* %3109, align 8
  store i64 %3110, i64* %RCX.i204, align 8
  %3111 = add i64 %3105, -116
  %3112 = add i64 %3104, 20
  store i64 %3112, i64* %3, align 8
  %3113 = inttoptr i64 %3111 to i32*
  %3114 = load i32, i32* %3113, align 4
  %3115 = sext i32 %3114 to i64
  store i64 %3115, i64* %RSI.i319, align 8
  %3116 = shl nsw i64 %3115, 3
  %3117 = add i64 %3116, %3110
  %3118 = add i64 %3104, 24
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to i64*
  %3120 = load i64, i64* %3119, align 8
  store i64 %3120, i64* %RCX.i204, align 8
  %3121 = add i64 %3105, -140
  %3122 = add i64 %3104, 31
  store i64 %3122, i64* %3, align 8
  %3123 = inttoptr i64 %3121 to i32*
  %3124 = load i32, i32* %3123, align 4
  %3125 = sext i32 %3124 to i64
  %3126 = add i64 %3120, %3125
  store i64 %3126, i64* %RCX.i204, align 8
  %3127 = icmp ult i64 %3126, %3120
  %3128 = icmp ult i64 %3126, %3125
  %3129 = or i1 %3127, %3128
  %3130 = zext i1 %3129 to i8
  store i8 %3130, i8* %14, align 1
  %3131 = trunc i64 %3126 to i32
  %3132 = and i32 %3131, 255
  %3133 = tail call i32 @llvm.ctpop.i32(i32 %3132)
  %3134 = trunc i32 %3133 to i8
  %3135 = and i8 %3134, 1
  %3136 = xor i8 %3135, 1
  store i8 %3136, i8* %21, align 1
  %3137 = xor i64 %3120, %3125
  %3138 = xor i64 %3137, %3126
  %3139 = lshr i64 %3138, 4
  %3140 = trunc i64 %3139 to i8
  %3141 = and i8 %3140, 1
  store i8 %3141, i8* %26, align 1
  %3142 = icmp eq i64 %3126, 0
  %3143 = zext i1 %3142 to i8
  store i8 %3143, i8* %29, align 1
  %3144 = lshr i64 %3126, 63
  %3145 = trunc i64 %3144 to i8
  store i8 %3145, i8* %32, align 1
  %3146 = lshr i64 %3120, 63
  %3147 = lshr i64 %3125, 63
  %3148 = xor i64 %3144, %3146
  %3149 = xor i64 %3144, %3147
  %3150 = add nuw nsw i64 %3148, %3149
  %3151 = icmp eq i64 %3150, 2
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %38, align 1
  store i64 %3126, i64* %RSI.i319, align 8
  %3153 = add i64 %3105, -376
  %3154 = load i32, i32* %EAX.i1438, align 4
  %3155 = add i64 %3104, 43
  store i64 %3155, i64* %3, align 8
  %3156 = inttoptr i64 %3153 to i32*
  store i32 %3154, i32* %3156, align 4
  %3157 = load i64, i64* %3, align 8
  %3158 = add i64 %3157, -197749
  %3159 = add i64 %3157, 5
  %3160 = load i64, i64* %6, align 8
  %3161 = add i64 %3160, -8
  %3162 = inttoptr i64 %3161 to i64*
  store i64 %3159, i64* %3162, align 8
  store i64 %3161, i64* %6, align 8
  store i64 %3158, i64* %3, align 8
  %call2_431825 = tail call %struct.Memory* @sub_4013b0.strncpy_plt(%struct.State* nonnull %0, i64 %3158, %struct.Memory* %3103)
  %3163 = load i64, i64* %RBP.i, align 8
  %3164 = add i64 %3163, -142
  %3165 = load i64, i64* %3, align 8
  %3166 = add i64 %3165, 7
  store i64 %3166, i64* %3, align 8
  %3167 = inttoptr i64 %3164 to i8*
  store i8 0, i8* %3167, align 1
  %3168 = load i64, i64* %RBP.i, align 8
  %3169 = add i64 %3168, -196
  %3170 = load i64, i64* %3, align 8
  %3171 = add i64 %3170, 10
  store i64 %3171, i64* %3, align 8
  %3172 = inttoptr i64 %3169 to i32*
  store i32 0, i32* %3172, align 4
  %3173 = load i64, i64* %RBP.i, align 8
  %3174 = add i64 %3173, -384
  %3175 = load i64, i64* %RAX.i178, align 8
  %3176 = load i64, i64* %3, align 8
  %3177 = add i64 %3176, 7
  store i64 %3177, i64* %3, align 8
  %3178 = inttoptr i64 %3174 to i64*
  store i64 %3175, i64* %3178, align 8
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_431842

block_.L_431842:                                  ; preds = %block_.L_43188d, %block_4317d3
  %3179 = phi i64 [ %.pre96, %block_4317d3 ], [ %3339, %block_.L_43188d ]
  %MEMORY.30 = phi %struct.Memory* [ %call2_431825, %block_4317d3 ], [ %call2_4318a0, %block_.L_43188d ]
  %3180 = load i64, i64* %RBP.i, align 8
  %3181 = add i64 %3180, -196
  %3182 = add i64 %3179, 6
  store i64 %3182, i64* %3, align 8
  %3183 = inttoptr i64 %3181 to i32*
  %3184 = load i32, i32* %3183, align 4
  %3185 = zext i32 %3184 to i64
  store i64 %3185, i64* %RAX.i178, align 8
  %3186 = add i64 %3180, -132
  %3187 = add i64 %3179, 12
  store i64 %3187, i64* %3, align 8
  %3188 = inttoptr i64 %3186 to i32*
  %3189 = load i32, i32* %3188, align 4
  %3190 = sub i32 %3184, %3189
  %3191 = icmp ult i32 %3184, %3189
  %3192 = zext i1 %3191 to i8
  store i8 %3192, i8* %14, align 1
  %3193 = and i32 %3190, 255
  %3194 = tail call i32 @llvm.ctpop.i32(i32 %3193)
  %3195 = trunc i32 %3194 to i8
  %3196 = and i8 %3195, 1
  %3197 = xor i8 %3196, 1
  store i8 %3197, i8* %21, align 1
  %3198 = xor i32 %3189, %3184
  %3199 = xor i32 %3198, %3190
  %3200 = lshr i32 %3199, 4
  %3201 = trunc i32 %3200 to i8
  %3202 = and i8 %3201, 1
  store i8 %3202, i8* %26, align 1
  %3203 = icmp eq i32 %3190, 0
  %3204 = zext i1 %3203 to i8
  store i8 %3204, i8* %29, align 1
  %3205 = lshr i32 %3190, 31
  %3206 = trunc i32 %3205 to i8
  store i8 %3206, i8* %32, align 1
  %3207 = lshr i32 %3184, 31
  %3208 = lshr i32 %3189, 31
  %3209 = xor i32 %3208, %3207
  %3210 = xor i32 %3205, %3207
  %3211 = add nuw nsw i32 %3210, %3209
  %3212 = icmp eq i32 %3211, 2
  %3213 = zext i1 %3212 to i8
  store i8 %3213, i8* %38, align 1
  %3214 = icmp ne i8 %3206, 0
  %3215 = xor i1 %3214, %3212
  %.v132 = select i1 %3215, i64 18, i64 125
  %3216 = add i64 %3179, %.v132
  %3217 = add i64 %3216, 5
  store i64 %3217, i64* %3, align 8
  br i1 %3215, label %block_431854, label %block_.L_4318bf

block_431854:                                     ; preds = %block_.L_431842
  store i64 10, i64* %RAX.i178, align 8
  %3218 = add i64 %3216, 11
  store i64 %3218, i64* %3, align 8
  %3219 = load i32, i32* %3183, align 4
  %3220 = zext i32 %3219 to i64
  store i64 %3220, i64* %RCX.i204, align 8
  %3221 = add i64 %3180, -388
  %3222 = add i64 %3216, 17
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to i32*
  store i32 10, i32* %3223, align 4
  %3224 = load i32, i32* %ECX.i641, align 4
  %3225 = zext i32 %3224 to i64
  %3226 = load i64, i64* %3, align 8
  store i64 %3225, i64* %RAX.i178, align 8
  %3227 = sext i32 %3224 to i64
  %3228 = lshr i64 %3227, 32
  store i64 %3228, i64* %2566, align 8
  %3229 = load i64, i64* %RBP.i, align 8
  %3230 = add i64 %3229, -388
  %3231 = add i64 %3226, 9
  store i64 %3231, i64* %3, align 8
  %3232 = inttoptr i64 %3230 to i32*
  %3233 = load i32, i32* %3232, align 4
  %3234 = zext i32 %3233 to i64
  store i64 %3234, i64* %RCX.i204, align 8
  %3235 = add i64 %3226, 11
  store i64 %3235, i64* %3, align 8
  %3236 = sext i32 %3233 to i64
  %3237 = shl nuw i64 %3228, 32
  %3238 = or i64 %3237, %3225
  %3239 = sdiv i64 %3238, %3236
  %3240 = shl i64 %3239, 32
  %3241 = ashr exact i64 %3240, 32
  %3242 = icmp eq i64 %3239, %3241
  br i1 %3242, label %3245, label %3243

; <label>:3243:                                   ; preds = %block_431854
  %3244 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3235, %struct.Memory* %MEMORY.30)
  %.pre97 = load i32, i32* %EDX.i1329, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:3245:                                   ; preds = %block_431854
  %3246 = srem i64 %3238, %3236
  %3247 = and i64 %3239, 4294967295
  store i64 %3247, i64* %RAX.i178, align 8
  %3248 = and i64 %3246, 4294967295
  store i64 %3248, i64* %RDX.i654, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3249 = trunc i64 %3246 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3245, %3243
  %3250 = phi i64 [ %.pre98, %3243 ], [ %3235, %3245 ]
  %3251 = phi i32 [ %.pre97, %3243 ], [ %3249, %3245 ]
  %3252 = phi %struct.Memory* [ %3244, %3243 ], [ %MEMORY.30, %3245 ]
  store i8 0, i8* %14, align 1
  %3253 = and i32 %3251, 255
  %3254 = tail call i32 @llvm.ctpop.i32(i32 %3253)
  %3255 = trunc i32 %3254 to i8
  %3256 = and i8 %3255, 1
  %3257 = xor i8 %3256, 1
  store i8 %3257, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3258 = icmp eq i32 %3251, 0
  %3259 = zext i1 %3258 to i8
  store i8 %3259, i8* %29, align 1
  %3260 = lshr i32 %3251, 31
  %3261 = trunc i32 %3260 to i8
  store i8 %3261, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v133 = select i1 %3258, i64 9, i64 29
  %3262 = add i64 %3250, %.v133
  store i64 %3262, i64* %3, align 8
  br i1 %3258, label %block_431879, label %block_.L_43188d

block_431879:                                     ; preds = %routine_idivl__ecx.exit
  store i64 32, i64* %RDI.i239, align 8
  %3263 = load i64, i64* %RBP.i, align 8
  %3264 = add i64 %3263, -8
  %3265 = add i64 %3262, 9
  store i64 %3265, i64* %3, align 8
  %3266 = inttoptr i64 %3264 to i64*
  %3267 = load i64, i64* %3266, align 8
  store i64 %3267, i64* %RSI.i319, align 8
  %3268 = add i64 %3262, -197465
  %3269 = add i64 %3262, 14
  %3270 = load i64, i64* %6, align 8
  %3271 = add i64 %3270, -8
  %3272 = inttoptr i64 %3271 to i64*
  store i64 %3269, i64* %3272, align 8
  store i64 %3271, i64* %6, align 8
  store i64 %3268, i64* %3, align 8
  %call2_431882 = tail call %struct.Memory* @sub_401520.fputc_plt(%struct.State* nonnull %0, i64 %3268, %struct.Memory* %3252)
  %3273 = load i64, i64* %RBP.i, align 8
  %3274 = add i64 %3273, -392
  %3275 = load i32, i32* %EAX.i1438, align 4
  %3276 = load i64, i64* %3, align 8
  %3277 = add i64 %3276, 6
  store i64 %3277, i64* %3, align 8
  %3278 = inttoptr i64 %3274 to i32*
  store i32 %3275, i32* %3278, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_43188d

block_.L_43188d:                                  ; preds = %routine_idivl__ecx.exit, %block_431879
  %3279 = phi i64 [ %3262, %routine_idivl__ecx.exit ], [ %.pre99, %block_431879 ]
  %MEMORY.31 = phi %struct.Memory* [ %3252, %routine_idivl__ecx.exit ], [ %call2_431882, %block_431879 ]
  %3280 = load i64, i64* %RBP.i, align 8
  %3281 = add i64 %3280, -196
  %3282 = add i64 %3279, 7
  store i64 %3282, i64* %3, align 8
  %3283 = inttoptr i64 %3281 to i32*
  %3284 = load i32, i32* %3283, align 4
  %3285 = sext i32 %3284 to i64
  store i64 %3285, i64* %RAX.i178, align 8
  %3286 = add nsw i64 %3285, -192
  %3287 = add i64 %3286, %3280
  %3288 = add i64 %3279, 15
  store i64 %3288, i64* %3, align 8
  %3289 = inttoptr i64 %3287 to i8*
  %3290 = load i8, i8* %3289, align 1
  %3291 = sext i8 %3290 to i64
  %3292 = and i64 %3291, 4294967295
  store i64 %3292, i64* %RDI.i239, align 8
  %3293 = add i64 %3280, -8
  %3294 = add i64 %3279, 19
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3293 to i64*
  %3296 = load i64, i64* %3295, align 8
  store i64 %3296, i64* %RSI.i319, align 8
  %3297 = add i64 %3279, -197485
  %3298 = add i64 %3279, 24
  %3299 = load i64, i64* %6, align 8
  %3300 = add i64 %3299, -8
  %3301 = inttoptr i64 %3300 to i64*
  store i64 %3298, i64* %3301, align 8
  store i64 %3300, i64* %6, align 8
  store i64 %3297, i64* %3, align 8
  %call2_4318a0 = tail call %struct.Memory* @sub_401520.fputc_plt(%struct.State* nonnull %0, i64 %3297, %struct.Memory* %MEMORY.31)
  %3302 = load i64, i64* %RBP.i, align 8
  %3303 = add i64 %3302, -396
  %3304 = load i32, i32* %EAX.i1438, align 4
  %3305 = load i64, i64* %3, align 8
  %3306 = add i64 %3305, 6
  store i64 %3306, i64* %3, align 8
  %3307 = inttoptr i64 %3303 to i32*
  store i32 %3304, i32* %3307, align 4
  %3308 = load i64, i64* %RBP.i, align 8
  %3309 = add i64 %3308, -196
  %3310 = load i64, i64* %3, align 8
  %3311 = add i64 %3310, 6
  store i64 %3311, i64* %3, align 8
  %3312 = inttoptr i64 %3309 to i32*
  %3313 = load i32, i32* %3312, align 4
  %3314 = add i32 %3313, 1
  %3315 = zext i32 %3314 to i64
  store i64 %3315, i64* %RAX.i178, align 8
  %3316 = icmp eq i32 %3313, -1
  %3317 = icmp eq i32 %3314, 0
  %3318 = or i1 %3316, %3317
  %3319 = zext i1 %3318 to i8
  store i8 %3319, i8* %14, align 1
  %3320 = and i32 %3314, 255
  %3321 = tail call i32 @llvm.ctpop.i32(i32 %3320)
  %3322 = trunc i32 %3321 to i8
  %3323 = and i8 %3322, 1
  %3324 = xor i8 %3323, 1
  store i8 %3324, i8* %21, align 1
  %3325 = xor i32 %3314, %3313
  %3326 = lshr i32 %3325, 4
  %3327 = trunc i32 %3326 to i8
  %3328 = and i8 %3327, 1
  store i8 %3328, i8* %26, align 1
  %3329 = zext i1 %3317 to i8
  store i8 %3329, i8* %29, align 1
  %3330 = lshr i32 %3314, 31
  %3331 = trunc i32 %3330 to i8
  store i8 %3331, i8* %32, align 1
  %3332 = lshr i32 %3313, 31
  %3333 = xor i32 %3330, %3332
  %3334 = add nuw nsw i32 %3333, %3330
  %3335 = icmp eq i32 %3334, 2
  %3336 = zext i1 %3335 to i8
  store i8 %3336, i8* %38, align 1
  %3337 = add i64 %3310, 15
  store i64 %3337, i64* %3, align 8
  store i32 %3314, i32* %3312, align 4
  %3338 = load i64, i64* %3, align 8
  %3339 = add i64 %3338, -120
  store i64 %3339, i64* %3, align 8
  br label %block_.L_431842

block_.L_4318bf:                                  ; preds = %block_.L_431842
  store i64 10, i64* %RDI.i239, align 8
  %3340 = add i64 %3180, -8
  %3341 = add i64 %3216, 9
  store i64 %3341, i64* %3, align 8
  %3342 = inttoptr i64 %3340 to i64*
  %3343 = load i64, i64* %3342, align 8
  store i64 %3343, i64* %RSI.i319, align 8
  %3344 = add i64 %3216, -197535
  %3345 = add i64 %3216, 14
  %3346 = load i64, i64* %6, align 8
  %3347 = add i64 %3346, -8
  %3348 = inttoptr i64 %3347 to i64*
  store i64 %3345, i64* %3348, align 8
  store i64 %3347, i64* %6, align 8
  store i64 %3344, i64* %3, align 8
  %call2_4318c8 = tail call %struct.Memory* @sub_401520.fputc_plt(%struct.State* nonnull %0, i64 %3344, %struct.Memory* %MEMORY.30)
  %3349 = load i64, i64* %RBP.i, align 8
  %3350 = add i64 %3349, -400
  %3351 = load i32, i32* %EAX.i1438, align 4
  %3352 = load i64, i64* %3, align 8
  %3353 = add i64 %3352, 6
  store i64 %3353, i64* %3, align 8
  %3354 = inttoptr i64 %3350 to i32*
  store i32 %3351, i32* %3354, align 4
  %3355 = load i64, i64* %RBP.i, align 8
  %3356 = add i64 %3355, -116
  %3357 = load i64, i64* %3, align 8
  %3358 = add i64 %3357, 3
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3356 to i32*
  %3360 = load i32, i32* %3359, align 4
  %3361 = add i32 %3360, 1
  %3362 = zext i32 %3361 to i64
  store i64 %3362, i64* %RAX.i178, align 8
  %3363 = icmp eq i32 %3360, -1
  %3364 = icmp eq i32 %3361, 0
  %3365 = or i1 %3363, %3364
  %3366 = zext i1 %3365 to i8
  store i8 %3366, i8* %14, align 1
  %3367 = and i32 %3361, 255
  %3368 = tail call i32 @llvm.ctpop.i32(i32 %3367)
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = xor i8 %3370, 1
  store i8 %3371, i8* %21, align 1
  %3372 = xor i32 %3361, %3360
  %3373 = lshr i32 %3372, 4
  %3374 = trunc i32 %3373 to i8
  %3375 = and i8 %3374, 1
  store i8 %3375, i8* %26, align 1
  %3376 = zext i1 %3364 to i8
  store i8 %3376, i8* %29, align 1
  %3377 = lshr i32 %3361, 31
  %3378 = trunc i32 %3377 to i8
  store i8 %3378, i8* %32, align 1
  %3379 = lshr i32 %3360, 31
  %3380 = xor i32 %3377, %3379
  %3381 = add nuw nsw i32 %3380, %3377
  %3382 = icmp eq i32 %3381, 2
  %3383 = zext i1 %3382 to i8
  store i8 %3383, i8* %38, align 1
  %3384 = add i64 %3357, 9
  store i64 %3384, i64* %3, align 8
  store i32 %3361, i32* %3359, align 4
  %3385 = load i64, i64* %3, align 8
  %3386 = add i64 %3385, -281
  store i64 %3386, i64* %3, align 8
  br label %block_.L_4317c3

block_.L_4318e1:                                  ; preds = %block_.L_4317c3
  %3387 = add i64 %3036, -140
  %3388 = add i64 %3076, 11
  store i64 %3388, i64* %3, align 8
  %3389 = inttoptr i64 %3387 to i32*
  %3390 = load i32, i32* %3389, align 4
  %3391 = add i32 %3390, 50
  %3392 = zext i32 %3391 to i64
  store i64 %3392, i64* %RAX.i178, align 8
  %3393 = icmp ugt i32 %3390, -51
  %3394 = zext i1 %3393 to i8
  store i8 %3394, i8* %14, align 1
  %3395 = and i32 %3391, 255
  %3396 = tail call i32 @llvm.ctpop.i32(i32 %3395)
  %3397 = trunc i32 %3396 to i8
  %3398 = and i8 %3397, 1
  %3399 = xor i8 %3398, 1
  store i8 %3399, i8* %21, align 1
  %3400 = xor i32 %3390, 16
  %3401 = xor i32 %3400, %3391
  %3402 = lshr i32 %3401, 4
  %3403 = trunc i32 %3402 to i8
  %3404 = and i8 %3403, 1
  store i8 %3404, i8* %26, align 1
  %3405 = icmp eq i32 %3391, 0
  %3406 = zext i1 %3405 to i8
  store i8 %3406, i8* %29, align 1
  %3407 = lshr i32 %3391, 31
  %3408 = trunc i32 %3407 to i8
  store i8 %3408, i8* %32, align 1
  %3409 = lshr i32 %3390, 31
  %3410 = xor i32 %3407, %3409
  %3411 = add nuw nsw i32 %3410, %3407
  %3412 = icmp eq i32 %3411, 2
  %3413 = zext i1 %3412 to i8
  store i8 %3413, i8* %38, align 1
  %3414 = add i64 %3076, 20
  store i64 %3414, i64* %3, align 8
  store i32 %3391, i32* %3389, align 4
  %3415 = load i64, i64* %3, align 8
  %3416 = add i64 %3415, -651
  store i64 %3416, i64* %3, align 8
  br label %block_.L_43166a

block_.L_4318fa:                                  ; preds = %block_.L_43166a
  %3417 = add i64 %2571, -104
  %3418 = add i64 %2611, 4
  store i64 %3418, i64* %3, align 8
  %3419 = inttoptr i64 %3417 to i64*
  %3420 = load i64, i64* %3419, align 8
  store i64 %3420, i64* %RDI.i239, align 8
  %3421 = add i64 %2611, 8
  store i64 %3421, i64* %3, align 8
  %3422 = load i64, i64* %2579, align 8
  store i64 %3422, i64* %RAX.i178, align 8
  %3423 = add i64 %3422, 28
  %3424 = add i64 %2611, 11
  store i64 %3424, i64* %3, align 8
  %3425 = inttoptr i64 %3423 to i32*
  %3426 = load i32, i32* %3425, align 4
  %3427 = zext i32 %3426 to i64
  store i64 %3427, i64* %RSI.i319, align 8
  %3428 = add i64 %2611, 83990
  %3429 = add i64 %2611, 16
  %3430 = load i64, i64* %6, align 8
  %3431 = add i64 %3430, -8
  %3432 = inttoptr i64 %3431 to i64*
  store i64 %3429, i64* %3432, align 8
  store i64 %3431, i64* %6, align 8
  store i64 %3428, i64* %3, align 8
  %call2_431905 = tail call %struct.Memory* @sub_446110.Free2DArray(%struct.State* nonnull %0, i64 %3428, %struct.Memory* %MEMORY.26)
  %3433 = load i64, i64* %RBP.i, align 8
  %3434 = add i64 %3433, -112
  %3435 = load i64, i64* %3, align 8
  %3436 = add i64 %3435, 4
  store i64 %3436, i64* %3, align 8
  %3437 = inttoptr i64 %3434 to i64*
  %3438 = load i64, i64* %3437, align 8
  store i64 %3438, i64* %RDI.i239, align 8
  %3439 = add i64 %3433, -16
  %3440 = add i64 %3435, 8
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3439 to i64*
  %3442 = load i64, i64* %3441, align 8
  store i64 %3442, i64* %RAX.i178, align 8
  %3443 = add i64 %3442, 28
  %3444 = add i64 %3435, 11
  store i64 %3444, i64* %3, align 8
  %3445 = inttoptr i64 %3443 to i32*
  %3446 = load i32, i32* %3445, align 4
  %3447 = zext i32 %3446 to i64
  store i64 %3447, i64* %RSI.i319, align 8
  %3448 = add i64 %3435, 83974
  %3449 = add i64 %3435, 16
  %3450 = load i64, i64* %6, align 8
  %3451 = add i64 %3450, -8
  %3452 = inttoptr i64 %3451 to i64*
  store i64 %3449, i64* %3452, align 8
  store i64 %3451, i64* %6, align 8
  store i64 %3448, i64* %3, align 8
  %call2_431915 = tail call %struct.Memory* @sub_446110.Free2DArray(%struct.State* nonnull %0, i64 %3448, %struct.Memory* %call2_431905)
  %3453 = load i64, i64* %6, align 8
  %3454 = load i64, i64* %3, align 8
  %3455 = add i64 %3453, 416
  store i64 %3455, i64* %6, align 8
  %3456 = icmp ugt i64 %3453, -417
  %3457 = zext i1 %3456 to i8
  store i8 %3457, i8* %14, align 1
  %3458 = trunc i64 %3455 to i32
  %3459 = and i32 %3458, 255
  %3460 = tail call i32 @llvm.ctpop.i32(i32 %3459)
  %3461 = trunc i32 %3460 to i8
  %3462 = and i8 %3461, 1
  %3463 = xor i8 %3462, 1
  store i8 %3463, i8* %21, align 1
  %3464 = xor i64 %3455, %3453
  %3465 = lshr i64 %3464, 4
  %3466 = trunc i64 %3465 to i8
  %3467 = and i8 %3466, 1
  store i8 %3467, i8* %26, align 1
  %3468 = icmp eq i64 %3455, 0
  %3469 = zext i1 %3468 to i8
  store i8 %3469, i8* %29, align 1
  %3470 = lshr i64 %3455, 63
  %3471 = trunc i64 %3470 to i8
  store i8 %3471, i8* %32, align 1
  %3472 = lshr i64 %3453, 63
  %3473 = xor i64 %3470, %3472
  %3474 = add nuw nsw i64 %3473, %3470
  %3475 = icmp eq i64 %3474, 2
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %38, align 1
  %3477 = add i64 %3454, 8
  store i64 %3477, i64* %3, align 8
  %3478 = add i64 %3453, 424
  %3479 = inttoptr i64 %3455 to i64*
  %3480 = load i64, i64* %3479, align 8
  store i64 %3480, i64* %RBP.i, align 8
  store i64 %3478, i64* %6, align 8
  %3481 = add i64 %3454, 9
  store i64 %3481, i64* %3, align 8
  %3482 = inttoptr i64 %3478 to i64*
  %3483 = load i64, i64* %3482, align 8
  store i64 %3483, i64* %3, align 8
  %3484 = add i64 %3453, 432
  store i64 %3484, i64* %6, align 8
  ret %struct.Memory* %call2_431915
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
define %struct.Memory* @routine_subq__0x1a0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -416
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 416
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
define %struct.Memory* @routine_movq__0x458df8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458df8_type* @G__0x458df8 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x111___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 273, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_0x1c__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_shlq__0x3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__0x458df8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458df8_type* @G__0x458df8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x112___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 274, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_jge_.L_430ec3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movl_0x18__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_callq_.sre_strdup(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x74__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx__rdi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_430e58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_430f6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_430f59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 8
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 3
  %13 = trunc i32 %.lobit to i8
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
define %struct.Memory* @routine_jne_.L_430f43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -45
  %8 = icmp ult i32 %4, 45
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
define %struct.Memory* @routine_je_.L_430f43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5f___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -95
  %8 = icmp ult i32 %4, 95
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x5f____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 95, i8* %4, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430f48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_jmpq_.L_430eea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430f5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430eca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_431222(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movb__cl__MINUS0xd1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -209
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43102c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -32
  %8 = icmp ult i32 %4, 32
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
define %struct.Memory* @routine_movb__al__MINUS0xd2__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -210
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_431020(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -46
  %8 = icmp ult i32 %4, 46
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -95
  %8 = icmp ult i32 %4, 95
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -45
  %8 = icmp ult i32 %4, 45
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7e___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -126
  %8 = icmp ult i32 %4, 126
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_sete__dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0xd2__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -210
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xd2__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -210
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0xd1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -209
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xd1__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -209
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
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
define %struct.Memory* @routine_jne_.L_43103f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_431057(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x7e____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 126, i8* %4, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430f93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43105c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4310d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -32
  %8 = icmp ult i32 %4, 32
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
define %struct.Memory* @routine_je_.L_4310bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2e___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -46
  %8 = icmp ult i32 %4, 46
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
define %struct.Memory* @routine_jne_.L_4310c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x2e____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 46, i8* %4, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4310c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movb__cl__MINUS0xd3__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -211
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4311d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x74__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movslq_MINUS0x8c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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
define %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x20___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -32
  %8 = icmp ult i32 %4, 32
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
define %struct.Memory* @routine_movb__al__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4311c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -46
  %8 = icmp ult i32 %4, 46
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -95
  %8 = icmp ult i32 %4, 95
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -45
  %8 = icmp ult i32 %4, 45
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
define %struct.Memory* @routine_movslq_MINUS0x8c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -126
  %8 = icmp ult i32 %4, 126
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_sete__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xd4__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0xd3__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -211
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xd3__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -211
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4311e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43120f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x7e____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i8 126, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ne i32 %6, 0
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4310e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_431214(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_430f73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43128b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x88__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -136
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
define %struct.Memory* @routine_jle_.L_431278(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43127d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_431233(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_4312b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.GuessAlignmentSeqtype(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x24__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_4312e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x458ea3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458ea3_type* @G__0x458ea3 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_431388(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_43130f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_431383(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
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
define %struct.Memory* @routine_jne_.L_43133d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x458ec0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458ec0_type* @G__0x458ec0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43137e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_431361(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x458edd___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458edd_type* @G__0x458edd to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_431379(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458f23___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458f23_type* @G__0x458f23 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xb8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jle_.L_43140a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 184
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
define %struct.Memory* @routine_jge_.L_4313ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a9d4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a9d4_type* @G__0x45a9d4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xb0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4313a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.time_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.localtime_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x40___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 64, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458f4b___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458f4b_type* @G__0x458f4b to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strftime_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_431466(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x458f5b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458f5b_type* @G__0x458f5b to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rdi__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_431494(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4314aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458f97___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458f97_type* @G__0x458f97 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x100__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x60__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x50___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 80, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 78, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x24__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_cmovel__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %RCX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c__r8____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -260
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x11c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -284
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.GCGMultchecksum(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x458fa1___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458fa1_type* @G__0x458fa1 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x110__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x104__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -260
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
define %struct.Memory* @routine_movl_MINUS0x11c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -284
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
define %struct.Memory* @routine_movq_MINUS0x118__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x124__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -292
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43162a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x88__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_movl_MINUS0x88__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_movslq_MINUS0x74__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movq___rax__rsi_8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rax____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 24
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
define %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x18__rsi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movq__rdi__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.GCGchecksum(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x458fcc___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458fcc_type* @G__0x458fcc to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x74__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd___rdi__r8_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 6
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x130__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x138__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
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
define %struct.Memory* @routine_movl_MINUS0x13c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
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
define %struct.Memory* @routine_movq_MINUS0x148__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x134__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
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
define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43155f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45756f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45756f_type* @G__0x45756f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -336
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -340
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_4318fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x32___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 50
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -51
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x18__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -344
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4316c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x8c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x15c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -348
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4316d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x32___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 50, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x15c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -348
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x15c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -348
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
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
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
define %struct.Memory* @routine_jle_.L_431785(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x459000___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459000_type* @G__0x459000 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0xa___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
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
define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %8, %5
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x84__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
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
define %struct.Memory* @routine_movl_MINUS0x84__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
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
define %struct.Memory* @routine_subl__0x1___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, -1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %5
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
  %30 = lshr i32 %5, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x16c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -364
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_addl__eax___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %6 = load i32, i32* %R9D, align 4
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = add i32 %7, %6
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = icmp ult i32 %10, %6
  %13 = icmp ult i32 %10, %7
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %7, %6
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %6, 31
  %36 = lshr i32 %7, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0xc___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, -12
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp ult i32 %5, 12
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %5
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
  %30 = lshr i32 %5, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x16c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -364
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
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x168__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x168__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -360
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -368
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4317bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459011___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459011_type* @G__0x459011 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458d45___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458d45_type* @G__0x458d45 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x174__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -372
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4318e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45901c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45901c_type* @G__0x45901c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x32___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 50, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xc0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x8c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -376
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strncpy_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x0__MINUS0x8e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -142
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x180__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -384
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
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
define %struct.Memory* @routine_cmpl_MINUS0x84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -132
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
define %struct.Memory* @routine_jge_.L_4318bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xa___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
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
define %struct.Memory* @routine_movl__eax__MINUS0x184__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -388
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
define %struct.Memory* @routine_movl_MINUS0x184__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -388
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
define %struct.Memory* @routine_jne_.L_43188d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x20___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 32, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fputc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x188__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -392
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0xc0__rbp__rax_1____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -192
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -396
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_431842(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x190__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -400
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4317c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4318e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x32___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 50
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -51
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
define %struct.Memory* @routine_jmpq_.L_43166a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1a0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 416
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -417
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
