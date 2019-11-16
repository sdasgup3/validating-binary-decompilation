; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x5800a9_type = type <{ [8 x i8] }>
%G__0x5800c0_type = type <{ [8 x i8] }>
%G__0x5800d7_type = type <{ [8 x i8] }>
%G__0x5800ee_type = type <{ [8 x i8] }>
%G__0x580105_type = type <{ [8 x i8] }>
%G__0x58011c_type = type <{ [8 x i8] }>
%G__0x580133_type = type <{ [8 x i8] }>
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
@G__0x5800a9 = global %G__0x5800a9_type zeroinitializer
@G__0x5800c0 = global %G__0x5800c0_type zeroinitializer
@G__0x5800d7 = global %G__0x5800d7_type zeroinitializer
@G__0x5800ee = global %G__0x5800ee_type zeroinitializer
@G__0x580105 = global %G__0x580105_type zeroinitializer
@G__0x58011c = global %G__0x58011c_type zeroinitializer
@G__0x580133 = global %G__0x580133_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46ada0.defend_both(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @break_through_helper(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i459 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %RBX.i459, align 8
  %13 = add i64 %10, 4
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %7, -72
  store i64 %17, i64* %6, align 8
  %18 = icmp ult i64 %14, 56
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = trunc i64 %17 to i32
  %22 = and i32 %21, 255
  %23 = tail call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = xor i64 %14, 16
  %29 = xor i64 %28, %17
  %30 = lshr i64 %29, 4
  %31 = trunc i64 %30 to i8
  %32 = and i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %32, i8* %33, align 1
  %34 = icmp eq i64 %17, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %36, align 1
  %37 = lshr i64 %17, 63
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = lshr i64 %14, 63
  %41 = xor i64 %37, %40
  %42 = add nuw nsw i64 %41, %40
  %43 = icmp eq i64 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i454 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, 24
  %49 = add i64 %16, 7
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %48 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %RAX.i454, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i451 = bitcast %union.anon* %53 to i32*
  %54 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  %55 = add i64 %47, 16
  %56 = add i64 %16, 11
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %54, align 8
  %R11.i449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  store i64 ptrtoint (%G__0x5800a9_type* @G__0x5800a9 to i64), i64* %R11.i449, align 8
  %EBX.i446 = bitcast %union.anon* %11 to i32*
  store i64 0, i64* %RBX.i459, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %33, align 1
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %60 to i32*
  %61 = add i64 %47, -16
  %62 = load i32, i32* %EDI.i, align 4
  %63 = add i64 %16, 26
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %65 to i32*
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -20
  %68 = load i32, i32* %ESI.i, align 4
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 3
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %67 to i32*
  store i32 %68, i32* %71, align 4
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i = bitcast %union.anon* %72 to i32*
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -24
  %75 = load i32, i32* %EDX.i, align 4
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 3
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %78, align 4
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i437 = bitcast %union.anon* %79 to i32*
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -28
  %82 = load i32, i32* %ECX.i437, align 4
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 3
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %81 to i32*
  store i32 %82, i32* %85, align 4
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i434 = bitcast %union.anon* %86 to i32*
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -32
  %89 = load i32, i32* %R8D.i434, align 4
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, 4
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %88 to i32*
  store i32 %89, i32* %92, align 4
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i431 = bitcast %union.anon* %93 to i32*
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -36
  %96 = load i32, i32* %R9D.i431, align 4
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 4
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %95 to i32*
  store i32 %96, i32* %99, align 4
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -40
  %102 = load i32, i32* %R10D.i451, align 4
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 4
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %105, align 4
  %EAX.i426 = bitcast %union.anon* %46 to i32*
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -44
  %108 = load i32, i32* %EAX.i426, align 4
  %109 = load i64, i64* %3, align 8
  %110 = add i64 %109, 3
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %107 to i32*
  store i32 %108, i32* %111, align 4
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -48
  %114 = load i64, i64* %3, align 8
  %115 = add i64 %114, 7
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %113 to i32*
  store i32 0, i32* %116, align 4
  %RDI.i421 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -28
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 3
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %118 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RDI.i421, align 8
  %RSI.i418 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  %124 = add i64 %117, -44
  %125 = add i64 %119, 6
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RSI.i418, align 8
  %RCX.i415 = getelementptr inbounds %union.anon, %union.anon* %79, i64 0, i32 0
  %129 = add i64 %117, -36
  %130 = add i64 %119, 9
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RCX.i415, align 8
  %RDX.i413 = getelementptr inbounds %union.anon, %union.anon* %72, i64 0, i32 0
  %134 = load i64, i64* %R11.i449, align 8
  store i64 %134, i64* %RDX.i413, align 8
  %135 = getelementptr inbounds %union.anon, %union.anon* %86, i64 0, i32 0
  %136 = load i32, i32* %EBX.i446, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %135, align 8
  %138 = getelementptr inbounds %union.anon, %union.anon* %93, i64 0, i32 0
  store i64 %137, i64* %138, align 8
  %139 = add i64 %119, -404014
  %140 = add i64 %119, 23
  %141 = load i64, i64* %6, align 8
  %142 = add i64 %141, -8
  %143 = inttoptr i64 %142 to i64*
  store i64 %140, i64* %143, align 8
  store i64 %142, i64* %6, align 8
  store i64 %139, i64* %3, align 8
  %call2_46b870 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %139, %struct.Memory* %2)
  %144 = load i32, i32* %EAX.i426, align 4
  %145 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %146 = and i32 %144, 255
  %147 = tail call i32 @llvm.ctpop.i32(i32 %146)
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  store i8 %150, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %151 = icmp eq i32 %144, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %36, align 1
  %153 = lshr i32 %144, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v = select i1 %151, i64 925, i64 9
  %155 = add i64 %145, %.v
  store i64 %155, i64* %3, align 8
  br i1 %151, label %block_.L_46bc12, label %block_46b87e

block_46b87e:                                     ; preds = %entry
  store i64 0, i64* %RAX.i454, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %33, align 1
  store i64 0, i64* %RSI.i418, align 8
  %156 = load i64, i64* %RBP.i, align 8
  %157 = add i64 %156, -36
  %158 = add i64 %155, 7
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %157 to i32*
  %160 = load i32, i32* %159, align 4
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RDI.i421, align 8
  %162 = add i64 %155, -56638
  %163 = add i64 %155, 12
  %164 = load i64, i64* %6, align 8
  %165 = add i64 %164, -8
  %166 = inttoptr i64 %165 to i64*
  store i64 %163, i64* %166, align 8
  store i64 %165, i64* %6, align 8
  store i64 %162, i64* %3, align 8
  %call2_46b885 = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %162, %struct.Memory* %call2_46b870)
  %167 = load i32, i32* %EAX.i426, align 4
  %168 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %169 = and i32 %167, 255
  %170 = tail call i32 @llvm.ctpop.i32(i32 %169)
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %174 = icmp eq i32 %167, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %36, align 1
  %176 = lshr i32 %167, 31
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v45 = select i1 %174, i64 9, i64 899
  %178 = add i64 %168, %.v45
  store i64 %178, i64* %3, align 8
  br i1 %174, label %block_46b893, label %block_.L_46bc0d

block_46b893:                                     ; preds = %block_46b87e
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -52
  store i64 %180, i64* %RSI.i418, align 8
  %181 = add i64 %179, -28
  %182 = add i64 %178, 7
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RDI.i421, align 8
  %186 = add i64 %178, -56659
  %187 = add i64 %178, 12
  %188 = load i64, i64* %6, align 8
  %189 = add i64 %188, -8
  %190 = inttoptr i64 %189 to i64*
  store i64 %187, i64* %190, align 8
  store i64 %189, i64* %6, align 8
  store i64 %186, i64* %3, align 8
  %call2_46b89a = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %186, %struct.Memory* %call2_46b885)
  %191 = load i32, i32* %EAX.i426, align 4
  %192 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %193 = and i32 %191, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193)
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %198 = icmp eq i32 %191, 0
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %36, align 1
  %200 = lshr i32 %191, 31
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v46 = select i1 %198, i64 9, i64 21
  %202 = add i64 %192, %.v46
  store i64 %202, i64* %3, align 8
  br i1 %198, label %block_46b8a8, label %block_.L_46b8b4

block_46b8a8:                                     ; preds = %block_46b893
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -48
  %205 = add i64 %202, 7
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i32*
  store i32 2, i32* %206, align 4
  %207 = load i64, i64* %3, align 8
  %208 = add i64 %207, 387
  br label %block_.L_46ba32

block_.L_46b8b4:                                  ; preds = %block_46b893
  store i64 ptrtoint (%G__0x5800c0_type* @G__0x5800c0 to i64), i64* %RDX.i413, align 8
  store i64 0, i64* %RAX.i454, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %33, align 1
  %209 = load i64, i64* %RBP.i, align 8
  %210 = add i64 %209, -32
  %211 = add i64 %202, 15
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RDI.i421, align 8
  %215 = add i64 %209, -40
  %216 = add i64 %202, 18
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RSI.i418, align 8
  %220 = add i64 %209, -36
  %221 = add i64 %202, 21
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RCX.i415, align 8
  store i64 0, i64* %135, align 8
  store i64 0, i64* %138, align 8
  %225 = add i64 %202, -404100
  %226 = add i64 %202, 32
  %227 = load i64, i64* %6, align 8
  %228 = add i64 %227, -8
  %229 = inttoptr i64 %228 to i64*
  store i64 %226, i64* %229, align 8
  store i64 %228, i64* %6, align 8
  store i64 %225, i64* %3, align 8
  %call2_46b8cf = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %225, %struct.Memory* %call2_46b89a)
  %230 = load i32, i32* %EAX.i426, align 4
  %231 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %232 = and i32 %230, 255
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232)
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  store i8 %236, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %237 = icmp eq i32 %230, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %36, align 1
  %239 = lshr i32 %230, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v47 = select i1 %237, i64 75, i64 9
  %241 = add i64 %231, %.v47
  store i64 %241, i64* %3, align 8
  br i1 %237, label %block_.L_46b91f, label %block_46b8dd

block_46b8dd:                                     ; preds = %block_.L_46b8b4
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -28
  %244 = add i64 %241, 4
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  store i64 %247, i64* %RAX.i454, align 8
  %248 = add nsw i64 %247, 12099168
  %249 = add i64 %241, 12
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i8*
  %251 = load i8, i8* %250, align 1
  store i8 0, i8* %20, align 1
  %252 = zext i8 %251 to i32
  %253 = tail call i32 @llvm.ctpop.i32(i32 %252)
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = xor i8 %255, 1
  store i8 %256, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %257 = icmp eq i8 %251, 0
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %36, align 1
  %259 = lshr i8 %251, 7
  store i8 %259, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v48 = select i1 %257, i64 39, i64 18
  %260 = add i64 %241, %.v48
  store i64 %260, i64* %3, align 8
  br i1 %257, label %block_.L_46b904, label %block_46b8ef

block_46b8ef:                                     ; preds = %block_46b8dd
  %261 = zext i32 %246 to i64
  %262 = xor i64 %261, %247
  %263 = trunc i64 %262 to i32
  %264 = and i64 %262, 4294967295
  store i64 %264, i64* %RAX.i454, align 8
  store i8 0, i8* %20, align 1
  %265 = and i32 %263, 255
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265)
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %27, align 1
  %270 = icmp eq i32 %263, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %36, align 1
  %272 = lshr i32 %263, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %39, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %33, align 1
  %274 = and i64 %262, 4294967295
  store i64 %274, i64* %RSI.i418, align 8
  %275 = add i64 %260, 7
  store i64 %275, i64* %3, align 8
  %276 = load i32, i32* %245, align 4
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RDI.i421, align 8
  %278 = add i64 %260, -4463
  %279 = add i64 %260, 12
  %280 = load i64, i64* %6, align 8
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %6, align 8
  store i64 %278, i64* %3, align 8
  %call2_46b8f6 = tail call %struct.Memory* @sub_46a780.find_defense(%struct.State* nonnull %0, i64 %278, %struct.Memory* %call2_46b8cf)
  %283 = load i32, i32* %EAX.i426, align 4
  %284 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %285 = and i32 %283, 255
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285)
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %290 = icmp eq i32 %283, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %36, align 1
  %292 = lshr i32 %283, 31
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v49 = select i1 %290, i64 9, i64 31
  %294 = add i64 %284, %.v49
  store i64 %294, i64* %3, align 8
  br i1 %290, label %block_.L_46b904, label %block_.L_46b91a

block_.L_46b904:                                  ; preds = %block_46b8ef, %block_46b8dd
  %295 = phi i64 [ %260, %block_46b8dd ], [ %294, %block_46b8ef ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_46b8cf, %block_46b8dd ], [ %call2_46b8f6, %block_46b8ef ]
  %296 = add i64 %295, -383908
  %297 = add i64 %295, 5
  %298 = load i64, i64* %6, align 8
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %300, align 8
  store i64 %299, i64* %6, align 8
  store i64 %296, i64* %3, align 8
  %call2_46b904 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %296, %struct.Memory* %MEMORY.0)
  %301 = load i64, i64* %3, align 8
  %302 = add i64 %301, -383913
  %303 = add i64 %301, 5
  %304 = load i64, i64* %6, align 8
  %305 = add i64 %304, -8
  %306 = inttoptr i64 %305 to i64*
  store i64 %303, i64* %306, align 8
  store i64 %305, i64* %6, align 8
  store i64 %302, i64* %3, align 8
  %call2_46b909 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %302, %struct.Memory* %call2_46b904)
  %307 = load i64, i64* %RBP.i, align 8
  %308 = add i64 %307, -12
  %309 = load i64, i64* %3, align 8
  %310 = add i64 %309, 7
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %308 to i32*
  store i32 0, i32* %311, align 4
  %312 = load i64, i64* %3, align 8
  %313 = add i64 %312, 771
  store i64 %313, i64* %3, align 8
  br label %block_.L_46bc18

block_.L_46b91a:                                  ; preds = %block_46b8ef
  %314 = add i64 %294, -383930
  %315 = add i64 %294, 5
  %316 = load i64, i64* %6, align 8
  %317 = add i64 %316, -8
  %318 = inttoptr i64 %317 to i64*
  store i64 %315, i64* %318, align 8
  store i64 %317, i64* %6, align 8
  store i64 %314, i64* %3, align 8
  %call2_46b91a = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %314, %struct.Memory* %call2_46b8f6)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_46b91f

block_.L_46b91f:                                  ; preds = %block_.L_46b91a, %block_.L_46b8b4
  %319 = phi i64 [ %241, %block_.L_46b8b4 ], [ %.pre, %block_.L_46b91a ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_46b8cf, %block_.L_46b8b4 ], [ %call2_46b91a, %block_.L_46b91a ]
  %320 = load i64, i64* %RBP.i, align 8
  %321 = add i64 %320, -52
  %322 = add i64 %319, 3
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RAX.i454, align 8
  %326 = add i64 %320, -32
  %327 = add i64 %319, 6
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = sub i32 %324, %329
  %331 = icmp ult i32 %324, %329
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %20, align 1
  %333 = and i32 %330, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333)
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %27, align 1
  %338 = xor i32 %329, %324
  %339 = xor i32 %338, %330
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  store i8 %342, i8* %33, align 1
  %343 = icmp eq i32 %330, 0
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %36, align 1
  %345 = lshr i32 %330, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %39, align 1
  %347 = lshr i32 %324, 31
  %348 = lshr i32 %329, 31
  %349 = xor i32 %348, %347
  %350 = xor i32 %345, %347
  %351 = add nuw nsw i32 %350, %349
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %45, align 1
  %.v50 = select i1 %343, i64 12, i64 29
  %354 = add i64 %319, %.v50
  store i64 %354, i64* %3, align 8
  br i1 %343, label %block_46b92b, label %block_.L_46b93c

block_46b92b:                                     ; preds = %block_.L_46b91f
  %355 = add i64 %354, -383947
  %356 = add i64 %354, 5
  %357 = load i64, i64* %6, align 8
  %358 = add i64 %357, -8
  %359 = inttoptr i64 %358 to i64*
  store i64 %356, i64* %359, align 8
  store i64 %358, i64* %6, align 8
  store i64 %355, i64* %3, align 8
  %call2_46b92b = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %355, %struct.Memory* %MEMORY.1)
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -12
  %362 = load i64, i64* %3, align 8
  %363 = add i64 %362, 7
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %361 to i32*
  store i32 0, i32* %364, align 4
  %365 = load i64, i64* %3, align 8
  %366 = add i64 %365, 737
  store i64 %366, i64* %3, align 8
  br label %block_.L_46bc18

block_.L_46b93c:                                  ; preds = %block_.L_46b91f
  store i64 ptrtoint (%G__0x5800d7_type* @G__0x5800d7 to i64), i64* %RDX.i413, align 8
  store i64 0, i64* %RAX.i454, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %33, align 1
  %367 = add i64 %354, 15
  store i64 %367, i64* %3, align 8
  %368 = load i32, i32* %323, align 4
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RDI.i421, align 8
  %370 = add i64 %320, -40
  %371 = add i64 %354, 18
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i32*
  %373 = load i32, i32* %372, align 4
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RSI.i418, align 8
  %375 = add i64 %320, -36
  %376 = add i64 %354, 21
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RCX.i415, align 8
  store i64 0, i64* %135, align 8
  store i64 0, i64* %138, align 8
  %380 = add i64 %354, -404236
  %381 = add i64 %354, 32
  %382 = load i64, i64* %6, align 8
  %383 = add i64 %382, -8
  %384 = inttoptr i64 %383 to i64*
  store i64 %381, i64* %384, align 8
  store i64 %383, i64* %6, align 8
  store i64 %380, i64* %3, align 8
  %call2_46b957 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %380, %struct.Memory* %MEMORY.1)
  %385 = load i32, i32* %EAX.i426, align 4
  %386 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %387 = and i32 %385, 255
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387)
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  store i8 %391, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %392 = icmp eq i32 %385, 0
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %36, align 1
  %394 = lshr i32 %385, 31
  %395 = trunc i32 %394 to i8
  store i8 %395, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v51 = select i1 %392, i64 209, i64 9
  %396 = add i64 %386, %.v51
  store i64 %396, i64* %3, align 8
  br i1 %392, label %block_.L_46ba2d, label %block_46b965

block_46b965:                                     ; preds = %block_.L_46b93c
  store i64 ptrtoint (%G__0x5800ee_type* @G__0x5800ee to i64), i64* %RDX.i413, align 8
  store i64 0, i64* %RAX.i454, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %33, align 1
  %397 = load i64, i64* %RBP.i, align 8
  %398 = add i64 %397, -32
  %399 = add i64 %396, 15
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RDI.i421, align 8
  %403 = add i64 %397, -44
  %404 = add i64 %396, 18
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RSI.i418, align 8
  %408 = add i64 %397, -36
  %409 = add i64 %396, 21
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RCX.i415, align 8
  store i64 0, i64* %135, align 8
  store i64 0, i64* %138, align 8
  %413 = add i64 %396, -404277
  %414 = add i64 %396, 32
  %415 = load i64, i64* %6, align 8
  %416 = add i64 %415, -8
  %417 = inttoptr i64 %416 to i64*
  store i64 %414, i64* %417, align 8
  store i64 %416, i64* %6, align 8
  store i64 %413, i64* %3, align 8
  %call2_46b980 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %413, %struct.Memory* %call2_46b957)
  %418 = load i32, i32* %EAX.i426, align 4
  %419 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %420 = and i32 %418, 255
  %421 = tail call i32 @llvm.ctpop.i32(i32 %420)
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  store i8 %424, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %425 = icmp eq i32 %418, 0
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %36, align 1
  %427 = lshr i32 %418, 31
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v52 = select i1 %425, i64 163, i64 9
  %429 = add i64 %419, %.v52
  store i64 %429, i64* %3, align 8
  br i1 %425, label %block_.L_46ba28, label %block_46b98e

block_46b98e:                                     ; preds = %block_46b965
  store i64 0, i64* %RAX.i454, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %33, align 1
  store i64 0, i64* %RSI.i418, align 8
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -32
  %432 = add i64 %429, 7
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RDI.i421, align 8
  %436 = add i64 %429, -56910
  %437 = add i64 %429, 12
  %438 = load i64, i64* %6, align 8
  %439 = add i64 %438, -8
  %440 = inttoptr i64 %439 to i64*
  store i64 %437, i64* %440, align 8
  store i64 %439, i64* %6, align 8
  store i64 %436, i64* %3, align 8
  %call2_46b995 = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %436, %struct.Memory* %call2_46b980)
  %441 = load i32, i32* %EAX.i426, align 4
  %442 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %443 = and i32 %441, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %448 = icmp eq i32 %441, 0
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %36, align 1
  %450 = lshr i32 %441, 31
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v53 = select i1 %448, i64 9, i64 110
  %452 = add i64 %442, %.v53
  store i64 %452, i64* %3, align 8
  br i1 %448, label %block_46b9a3, label %block_.L_46ba08

block_46b9a3:                                     ; preds = %block_46b98e
  %453 = load i64, i64* %RBP.i, align 8
  %454 = add i64 %453, -48
  %455 = add i64 %452, 7
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  store i32 2, i32* %456, align 4
  %457 = load i64, i64* %RBP.i, align 8
  %458 = add i64 %457, -20
  %459 = load i64, i64* %3, align 8
  %460 = add i64 %459, 4
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %458 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = sext i32 %462 to i64
  store i64 %463, i64* %RAX.i454, align 8
  %464 = add nsw i64 %463, 12099168
  %465 = add i64 %459, 12
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i8*
  %467 = load i8, i8* %466, align 1
  %468 = zext i8 %467 to i64
  store i64 %468, i64* %RCX.i415, align 8
  %469 = zext i8 %467 to i32
  store i8 0, i8* %20, align 1
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469)
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %474 = icmp eq i8 %467, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v54 = select i1 %474, i64 89, i64 21
  %476 = add i64 %459, %.v54
  store i64 %476, i64* %3, align 8
  br i1 %474, label %block_.L_46ba03, label %block_46b9bf

block_46b9bf:                                     ; preds = %block_46b9a3
  %477 = add i64 %457, -24
  %478 = add i64 %476, 4
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = sext i32 %480 to i64
  store i64 %481, i64* %RAX.i454, align 8
  %482 = add nsw i64 %481, 12099168
  %483 = add i64 %476, 12
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i8*
  %485 = load i8, i8* %484, align 1
  %486 = zext i8 %485 to i64
  store i64 %486, i64* %RCX.i415, align 8
  %487 = zext i8 %485 to i32
  store i8 0, i8* %20, align 1
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487)
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %492 = icmp eq i8 %485, 0
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v55 = select i1 %492, i64 68, i64 21
  %494 = add i64 %476, %.v55
  store i64 %494, i64* %3, align 8
  br i1 %492, label %block_.L_46ba03, label %block_46b9d4

block_46b9d4:                                     ; preds = %block_46b9bf
  %495 = add i64 %494, 3
  store i64 %495, i64* %3, align 8
  %496 = load i32, i32* %461, align 4
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RDI.i421, align 8
  %498 = add i64 %494, 6
  store i64 %498, i64* %3, align 8
  %499 = load i32, i32* %479, align 4
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RSI.i418, align 8
  %501 = add i64 %494, -3124
  %502 = add i64 %494, 11
  %503 = load i64, i64* %6, align 8
  %504 = add i64 %503, -8
  %505 = inttoptr i64 %504 to i64*
  store i64 %502, i64* %505, align 8
  store i64 %504, i64* %6, align 8
  store i64 %501, i64* %3, align 8
  %call2_46b9da = tail call %struct.Memory* @sub_46ada0.defend_both(%struct.State* nonnull %0, i64 %501, %struct.Memory* %call2_46b995)
  %506 = load i32, i32* %EAX.i426, align 4
  %507 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %508 = and i32 %506, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %513 = icmp eq i32 %506, 0
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %36, align 1
  %515 = lshr i32 %506, 31
  %516 = trunc i32 %515 to i8
  store i8 %516, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v56 = select i1 %513, i64 36, i64 9
  %517 = add i64 %507, %.v56
  store i64 %517, i64* %3, align 8
  br i1 %513, label %block_.L_46ba03, label %block_46b9e8

block_46b9e8:                                     ; preds = %block_46b9d4
  %518 = add i64 %517, -384136
  %519 = add i64 %517, 5
  %520 = load i64, i64* %6, align 8
  %521 = add i64 %520, -8
  %522 = inttoptr i64 %521 to i64*
  store i64 %519, i64* %522, align 8
  store i64 %521, i64* %6, align 8
  store i64 %518, i64* %3, align 8
  %call2_46b9e8 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %518, %struct.Memory* %call2_46b9da)
  %523 = load i64, i64* %3, align 8
  %524 = add i64 %523, -384141
  %525 = add i64 %523, 5
  %526 = load i64, i64* %6, align 8
  %527 = add i64 %526, -8
  %528 = inttoptr i64 %527 to i64*
  store i64 %525, i64* %528, align 8
  store i64 %527, i64* %6, align 8
  store i64 %524, i64* %3, align 8
  %call2_46b9ed = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %524, %struct.Memory* %call2_46b9e8)
  %529 = load i64, i64* %3, align 8
  %530 = add i64 %529, -384146
  %531 = add i64 %529, 5
  %532 = load i64, i64* %6, align 8
  %533 = add i64 %532, -8
  %534 = inttoptr i64 %533 to i64*
  store i64 %531, i64* %534, align 8
  store i64 %533, i64* %6, align 8
  store i64 %530, i64* %3, align 8
  %call2_46b9f2 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %530, %struct.Memory* %call2_46b9ed)
  %535 = load i64, i64* %RBP.i, align 8
  %536 = add i64 %535, -12
  %537 = load i64, i64* %3, align 8
  %538 = add i64 %537, 7
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %536 to i32*
  store i32 2, i32* %539, align 4
  %540 = load i64, i64* %3, align 8
  %541 = add i64 %540, 538
  store i64 %541, i64* %3, align 8
  br label %block_.L_46bc18

block_.L_46ba03:                                  ; preds = %block_46b9d4, %block_46b9bf, %block_46b9a3
  %542 = phi i64 [ %476, %block_46b9a3 ], [ %494, %block_46b9bf ], [ %517, %block_46b9d4 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_46b995, %block_46b9a3 ], [ %call2_46b995, %block_46b9bf ], [ %call2_46b9da, %block_46b9d4 ]
  %543 = add i64 %542, -384163
  %544 = add i64 %542, 37
  %545 = load i64, i64* %6, align 8
  %546 = add i64 %545, -8
  %547 = inttoptr i64 %546 to i64*
  store i64 %544, i64* %547, align 8
  store i64 %546, i64* %6, align 8
  store i64 %543, i64* %3, align 8
  %call2_46ba23 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %543, %struct.Memory* %MEMORY.2)
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_46ba28

block_.L_46ba08:                                  ; preds = %block_46b98e
  %548 = add i64 %452, -384168
  %549 = add i64 %452, 5
  %550 = load i64, i64* %6, align 8
  %551 = add i64 %550, -8
  %552 = inttoptr i64 %551 to i64*
  store i64 %549, i64* %552, align 8
  store i64 %551, i64* %6, align 8
  store i64 %548, i64* %3, align 8
  %call2_46ba08 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %548, %struct.Memory* %call2_46b995)
  %553 = load i64, i64* %3, align 8
  %554 = add i64 %553, -384173
  %555 = add i64 %553, 5
  %556 = load i64, i64* %6, align 8
  %557 = add i64 %556, -8
  %558 = inttoptr i64 %557 to i64*
  store i64 %555, i64* %558, align 8
  store i64 %557, i64* %6, align 8
  store i64 %554, i64* %3, align 8
  %call2_46ba0d = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %554, %struct.Memory* %call2_46ba08)
  %559 = load i64, i64* %3, align 8
  %560 = add i64 %559, -384178
  %561 = add i64 %559, 5
  %562 = load i64, i64* %6, align 8
  %563 = add i64 %562, -8
  %564 = inttoptr i64 %563 to i64*
  store i64 %561, i64* %564, align 8
  store i64 %563, i64* %6, align 8
  store i64 %560, i64* %3, align 8
  %call2_46ba12 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %560, %struct.Memory* %call2_46ba0d)
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -12
  %567 = load i64, i64* %3, align 8
  %568 = add i64 %567, 7
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %566 to i32*
  store i32 0, i32* %569, align 4
  %570 = load i64, i64* %3, align 8
  %571 = add i64 %570, 506
  store i64 %571, i64* %3, align 8
  br label %block_.L_46bc18

block_.L_46ba28:                                  ; preds = %block_.L_46ba03, %block_46b965
  %572 = phi i64 [ %429, %block_46b965 ], [ %.pre33, %block_.L_46ba03 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_46b980, %block_46b965 ], [ %call2_46ba23, %block_.L_46ba03 ]
  %573 = add i64 %572, -384200
  %574 = add i64 %572, 5
  %575 = load i64, i64* %6, align 8
  %576 = add i64 %575, -8
  %577 = inttoptr i64 %576 to i64*
  store i64 %574, i64* %577, align 8
  store i64 %576, i64* %6, align 8
  store i64 %573, i64* %3, align 8
  %call2_46ba28 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %573, %struct.Memory* %MEMORY.3)
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_46ba2d

block_.L_46ba2d:                                  ; preds = %block_.L_46ba28, %block_.L_46b93c
  %578 = phi i64 [ %396, %block_.L_46b93c ], [ %.pre34, %block_.L_46ba28 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_46b957, %block_.L_46b93c ], [ %call2_46ba28, %block_.L_46ba28 ]
  %579 = add i64 %578, 5
  store i64 %579, i64* %3, align 8
  br label %block_.L_46ba32

block_.L_46ba32:                                  ; preds = %block_.L_46ba2d, %block_46b8a8
  %storemerge = phi i64 [ %208, %block_46b8a8 ], [ %579, %block_.L_46ba2d ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_46b89a, %block_46b8a8 ], [ %MEMORY.4, %block_.L_46ba2d ]
  %580 = load i64, i64* %RBP.i, align 8
  %581 = add i64 %580, -16
  %582 = add i64 %storemerge, 4
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = sext i32 %584 to i64
  store i64 %585, i64* %RAX.i454, align 8
  %586 = add nsw i64 %585, 12099168
  %587 = add i64 %storemerge, 12
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i8*
  %589 = load i8, i8* %588, align 1
  store i8 0, i8* %20, align 1
  %590 = zext i8 %589 to i32
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %595 = icmp eq i8 %589, 0
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %36, align 1
  %597 = lshr i8 %589, 7
  store i8 %597, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v57 = select i1 %595, i64 56, i64 18
  %598 = add i64 %storemerge, %.v57
  store i64 %598, i64* %3, align 8
  br i1 %595, label %block_.L_46ba6a, label %block_46ba44

block_46ba44:                                     ; preds = %block_.L_46ba32
  %599 = add i64 %580, -20
  %600 = add i64 %598, 4
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i32*
  %602 = load i32, i32* %601, align 4
  %603 = sext i32 %602 to i64
  store i64 %603, i64* %RAX.i454, align 8
  %604 = add nsw i64 %603, 12099168
  %605 = add i64 %598, 12
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i8*
  %607 = load i8, i8* %606, align 1
  store i8 0, i8* %20, align 1
  %608 = zext i8 %607 to i32
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608)
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %613 = icmp eq i8 %607, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %36, align 1
  %615 = lshr i8 %607, 7
  store i8 %615, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v58 = select i1 %613, i64 38, i64 18
  %616 = add i64 %598, %.v58
  store i64 %616, i64* %3, align 8
  br i1 %613, label %block_.L_46ba6a, label %block_46ba56

block_46ba56:                                     ; preds = %block_46ba44
  %617 = add i64 %616, 3
  store i64 %617, i64* %3, align 8
  %618 = load i32, i32* %583, align 4
  %619 = zext i32 %618 to i64
  store i64 %619, i64* %RDI.i421, align 8
  %620 = add i64 %616, 6
  store i64 %620, i64* %3, align 8
  %621 = load i32, i32* %601, align 4
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RSI.i418, align 8
  %623 = add i64 %616, -3254
  %624 = add i64 %616, 11
  %625 = load i64, i64* %6, align 8
  %626 = add i64 %625, -8
  %627 = inttoptr i64 %626 to i64*
  store i64 %624, i64* %627, align 8
  store i64 %626, i64* %6, align 8
  store i64 %623, i64* %3, align 8
  %call2_46ba5c = tail call %struct.Memory* @sub_46ada0.defend_both(%struct.State* nonnull %0, i64 %623, %struct.Memory* %MEMORY.5)
  %628 = load i32, i32* %EAX.i426, align 4
  %629 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %630 = and i32 %628, 255
  %631 = tail call i32 @llvm.ctpop.i32(i32 %630)
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  %634 = xor i8 %633, 1
  store i8 %634, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %635 = icmp eq i32 %628, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %36, align 1
  %637 = lshr i32 %628, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v59 = select i1 %635, i64 9, i64 21
  %639 = add i64 %629, %.v59
  store i64 %639, i64* %3, align 8
  br i1 %635, label %block_46ba56.block_.L_46ba6a_crit_edge, label %block_.L_46ba76

block_46ba56.block_.L_46ba6a_crit_edge:           ; preds = %block_46ba56
  %.pre42 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46ba6a

block_.L_46ba6a:                                  ; preds = %block_46ba56.block_.L_46ba6a_crit_edge, %block_46ba44, %block_.L_46ba32
  %640 = phi i64 [ %598, %block_.L_46ba32 ], [ %616, %block_46ba44 ], [ %639, %block_46ba56.block_.L_46ba6a_crit_edge ]
  %641 = phi i64 [ %580, %block_.L_46ba32 ], [ %580, %block_46ba44 ], [ %.pre42, %block_46ba56.block_.L_46ba6a_crit_edge ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_46ba32 ], [ %MEMORY.5, %block_46ba44 ], [ %call2_46ba5c, %block_46ba56.block_.L_46ba6a_crit_edge ]
  %642 = add i64 %641, -48
  %643 = add i64 %640, 7
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  store i32 5, i32* %644, align 4
  %645 = load i64, i64* %3, align 8
  %646 = add i64 %645, 407
  br label %block_.L_46bc08

block_.L_46ba76:                                  ; preds = %block_46ba56
  store i64 ptrtoint (%G__0x580105_type* @G__0x580105 to i64), i64* %RDX.i413, align 8
  store i64 0, i64* %RAX.i454, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %33, align 1
  %647 = load i64, i64* %RBP.i, align 8
  %648 = add i64 %647, -56
  %649 = add i64 %639, 19
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i32*
  store i32 0, i32* %650, align 4
  %651 = load i64, i64* %RBP.i, align 8
  %652 = add i64 %651, -60
  %653 = load i64, i64* %3, align 8
  %654 = add i64 %653, 7
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %652 to i32*
  store i32 0, i32* %655, align 4
  %656 = load i64, i64* %RBP.i, align 8
  %657 = add i64 %656, -32
  %658 = load i64, i64* %3, align 8
  %659 = add i64 %658, 3
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %657 to i32*
  %661 = load i32, i32* %660, align 4
  %662 = zext i32 %661 to i64
  store i64 %662, i64* %RDI.i421, align 8
  %663 = add i64 %656, -40
  %664 = add i64 %658, 6
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i32*
  %666 = load i32, i32* %665, align 4
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RSI.i418, align 8
  %668 = add i64 %656, -36
  %669 = add i64 %658, 9
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RCX.i415, align 8
  %673 = load i32, i32* %EAX.i426, align 4
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %135, align 8
  store i64 %674, i64* %138, align 8
  %675 = add i64 %658, -404576
  %676 = add i64 %658, 20
  %677 = load i64, i64* %6, align 8
  %678 = add i64 %677, -8
  %679 = inttoptr i64 %678 to i64*
  store i64 %676, i64* %679, align 8
  store i64 %678, i64* %6, align 8
  store i64 %675, i64* %3, align 8
  %call2_46ba9f = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %675, %struct.Memory* %call2_46ba5c)
  %680 = load i32, i32* %EAX.i426, align 4
  %681 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %682 = and i32 %680, 255
  %683 = tail call i32 @llvm.ctpop.i32(i32 %682)
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = xor i8 %685, 1
  store i8 %686, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %687 = icmp eq i32 %680, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %36, align 1
  %689 = lshr i32 %680, 31
  %690 = trunc i32 %689 to i8
  store i8 %690, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v60 = select i1 %687, i64 80, i64 9
  %691 = add i64 %681, %.v60
  store i64 %691, i64* %3, align 8
  br i1 %687, label %block_.L_46baf4, label %block_46baad

block_46baad:                                     ; preds = %block_.L_46ba76
  store i64 0, i64* %RAX.i454, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %33, align 1
  store i64 0, i64* %RSI.i418, align 8
  %692 = load i64, i64* %RBP.i, align 8
  %693 = add i64 %692, -20
  %694 = add i64 %691, 7
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RDI.i421, align 8
  %698 = add i64 %691, -57197
  %699 = add i64 %691, 12
  %700 = load i64, i64* %6, align 8
  %701 = add i64 %700, -8
  %702 = inttoptr i64 %701 to i64*
  store i64 %699, i64* %702, align 8
  store i64 %701, i64* %6, align 8
  store i64 %698, i64* %3, align 8
  %call2_46bab4 = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %698, %struct.Memory* %call2_46ba9f)
  %703 = load i32, i32* %EAX.i426, align 4
  %704 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %705 = and i32 %703, 255
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %710 = icmp eq i32 %703, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %36, align 1
  %712 = lshr i32 %703, 31
  %713 = trunc i32 %712 to i8
  store i8 %713, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v61 = select i1 %710, i64 21, i64 9
  %714 = add i64 %704, %.v61
  store i64 %714, i64* %3, align 8
  br i1 %710, label %block_.L_46bace, label %block_46bac2

block_46bac2:                                     ; preds = %block_46baad
  %715 = load i64, i64* %RBP.i, align 8
  %716 = add i64 %715, -56
  %717 = add i64 %714, 7
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i32*
  store i32 1, i32* %718, align 4
  %719 = load i64, i64* %3, align 8
  %720 = add i64 %719, 38
  br label %block_.L_46baef

block_.L_46bace:                                  ; preds = %block_46baad
  store i64 0, i64* %RAX.i454, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %33, align 1
  store i64 0, i64* %RSI.i418, align 8
  %721 = load i64, i64* %RBP.i, align 8
  %722 = add i64 %721, -16
  %723 = add i64 %714, 7
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i32*
  %725 = load i32, i32* %724, align 4
  %726 = zext i32 %725 to i64
  store i64 %726, i64* %RDI.i421, align 8
  %727 = add i64 %714, -57230
  %728 = add i64 %714, 12
  %729 = load i64, i64* %6, align 8
  %730 = add i64 %729, -8
  %731 = inttoptr i64 %730 to i64*
  store i64 %728, i64* %731, align 8
  store i64 %730, i64* %6, align 8
  store i64 %727, i64* %3, align 8
  %call2_46bad5 = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %727, %struct.Memory* %call2_46bab4)
  %732 = load i32, i32* %EAX.i426, align 4
  %733 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %734 = and i32 %732, 255
  %735 = tail call i32 @llvm.ctpop.i32(i32 %734)
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  store i8 %738, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %739 = icmp eq i32 %732, 0
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %36, align 1
  %741 = lshr i32 %732, 31
  %742 = trunc i32 %741 to i8
  store i8 %742, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v74 = select i1 %739, i64 16, i64 9
  %743 = add i64 %733, %.v74
  store i64 %743, i64* %3, align 8
  br i1 %739, label %block_.L_46baea, label %block_46bae3

block_46bae3:                                     ; preds = %block_.L_46bace
  %744 = load i64, i64* %RBP.i, align 8
  %745 = add i64 %744, -60
  %746 = add i64 %743, 7
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i32*
  store i32 1, i32* %747, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_46baea

block_.L_46baea:                                  ; preds = %block_46bae3, %block_.L_46bace
  %748 = phi i64 [ %.pre35, %block_46bae3 ], [ %743, %block_.L_46bace ]
  %749 = add i64 %748, 5
  store i64 %749, i64* %3, align 8
  br label %block_.L_46baef

block_.L_46baef:                                  ; preds = %block_.L_46baea, %block_46bac2
  %storemerge32 = phi i64 [ %720, %block_46bac2 ], [ %749, %block_.L_46baea ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_46bab4, %block_46bac2 ], [ %call2_46bad5, %block_.L_46baea ]
  %750 = add i64 %storemerge32, -384399
  %751 = add i64 %storemerge32, 5
  %752 = load i64, i64* %6, align 8
  %753 = add i64 %752, -8
  %754 = inttoptr i64 %753 to i64*
  store i64 %751, i64* %754, align 8
  store i64 %753, i64* %6, align 8
  store i64 %750, i64* %3, align 8
  %call2_46baef = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %750, %struct.Memory* %MEMORY.8)
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_46baf4

block_.L_46baf4:                                  ; preds = %block_.L_46baef, %block_.L_46ba76
  %755 = phi i64 [ %691, %block_.L_46ba76 ], [ %.pre36, %block_.L_46baef ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_46ba9f, %block_.L_46ba76 ], [ %call2_46baef, %block_.L_46baef ]
  %756 = load i64, i64* %RBP.i, align 8
  %757 = add i64 %756, -60
  %758 = add i64 %755, 4
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to i32*
  %760 = load i32, i32* %759, align 4
  store i8 0, i8* %20, align 1
  %761 = and i32 %760, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %766 = icmp eq i32 %760, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %36, align 1
  %768 = lshr i32 %760, 31
  %769 = trunc i32 %768 to i8
  store i8 %769, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v62 = select i1 %766, i64 10, i64 20
  %770 = add i64 %755, %.v62
  store i64 %770, i64* %3, align 8
  br i1 %766, label %block_46bafe, label %block_.L_46bb08

block_46bafe:                                     ; preds = %block_.L_46baf4
  %771 = add i64 %756, -56
  %772 = add i64 %770, 4
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i32*
  %774 = load i32, i32* %773, align 4
  store i8 0, i8* %20, align 1
  %775 = and i32 %774, 255
  %776 = tail call i32 @llvm.ctpop.i32(i32 %775)
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  store i8 %779, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %780 = icmp eq i32 %774, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %36, align 1
  %782 = lshr i32 %774, 31
  %783 = trunc i32 %782 to i8
  store i8 %783, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v73 = select i1 %780, i64 261, i64 10
  %784 = add i64 %770, %.v73
  store i64 %784, i64* %3, align 8
  br i1 %780, label %block_.L_46bc03, label %block_.L_46bb08

block_.L_46bb08:                                  ; preds = %block_.L_46baf4, %block_46bafe
  %785 = phi i64 [ %784, %block_46bafe ], [ %770, %block_.L_46baf4 ]
  %786 = add i64 %756, -64
  %787 = add i64 %785, 7
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  store i32 0, i32* %788, align 4
  %789 = load i64, i64* %RBP.i, align 8
  %790 = add i64 %789, -60
  %791 = load i64, i64* %3, align 8
  %792 = add i64 %791, 4
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %790 to i32*
  %794 = load i32, i32* %793, align 4
  store i8 0, i8* %20, align 1
  %795 = and i32 %794, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %800 = icmp eq i32 %794, 0
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %36, align 1
  %802 = lshr i32 %794, 31
  %803 = trunc i32 %802 to i8
  store i8 %803, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v63 = select i1 %800, i64 31, i64 10
  %804 = add i64 %791, %.v63
  store i64 %804, i64* %3, align 8
  br i1 %800, label %block_.L_46bb2e, label %block_46bb19

block_46bb19:                                     ; preds = %block_.L_46bb08
  %805 = add i64 %789, -64
  store i64 %805, i64* %RSI.i418, align 8
  %806 = add i64 %789, -16
  %807 = add i64 %804, 7
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i32*
  %809 = load i32, i32* %808, align 4
  %810 = zext i32 %809 to i64
  store i64 %810, i64* %RDI.i421, align 8
  %811 = add i64 %804, -5017
  %812 = add i64 %804, 12
  %813 = load i64, i64* %6, align 8
  %814 = add i64 %813, -8
  %815 = inttoptr i64 %814 to i64*
  store i64 %812, i64* %815, align 8
  store i64 %814, i64* %6, align 8
  store i64 %811, i64* %3, align 8
  %call2_46bb20 = tail call %struct.Memory* @sub_46a780.find_defense(%struct.State* nonnull %0, i64 %811, %struct.Memory* %MEMORY.9)
  %816 = load i32, i32* %EAX.i426, align 4
  %817 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %818 = and i32 %816, 255
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %823 = icmp eq i32 %816, 0
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %36, align 1
  %825 = lshr i32 %816, 31
  %826 = trunc i32 %825 to i8
  store i8 %826, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v64 = select i1 %823, i64 9, i64 40
  %827 = add i64 %817, %.v64
  store i64 %827, i64* %3, align 8
  br i1 %823, label %block_46bb19.block_.L_46bb2e_crit_edge, label %block_.L_46bb4d

block_46bb19.block_.L_46bb2e_crit_edge:           ; preds = %block_46bb19
  %.pre37 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46bb2e

block_.L_46bb2e:                                  ; preds = %block_46bb19.block_.L_46bb2e_crit_edge, %block_.L_46bb08
  %828 = phi i64 [ %804, %block_.L_46bb08 ], [ %827, %block_46bb19.block_.L_46bb2e_crit_edge ]
  %829 = phi i64 [ %789, %block_.L_46bb08 ], [ %.pre37, %block_46bb19.block_.L_46bb2e_crit_edge ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.9, %block_.L_46bb08 ], [ %call2_46bb20, %block_46bb19.block_.L_46bb2e_crit_edge ]
  %830 = add i64 %829, -56
  %831 = add i64 %828, 4
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  store i8 0, i8* %20, align 1
  %834 = and i32 %833, 255
  %835 = tail call i32 @llvm.ctpop.i32(i32 %834)
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  %838 = xor i8 %837, 1
  store i8 %838, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %839 = icmp eq i32 %833, 0
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %36, align 1
  %841 = lshr i32 %833, 31
  %842 = trunc i32 %841 to i8
  store i8 %842, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v71 = select i1 %839, i64 201, i64 10
  %843 = add i64 %828, %.v71
  store i64 %843, i64* %3, align 8
  br i1 %839, label %block_.L_46bbf7, label %block_46bb38

block_46bb38:                                     ; preds = %block_.L_46bb2e
  %844 = add i64 %829, -64
  store i64 %844, i64* %RSI.i418, align 8
  %845 = add i64 %829, -20
  %846 = add i64 %843, 7
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RDI.i421, align 8
  %850 = add i64 %843, -5048
  %851 = add i64 %843, 12
  %852 = load i64, i64* %6, align 8
  %853 = add i64 %852, -8
  %854 = inttoptr i64 %853 to i64*
  store i64 %851, i64* %854, align 8
  store i64 %853, i64* %6, align 8
  store i64 %850, i64* %3, align 8
  %call2_46bb3f = tail call %struct.Memory* @sub_46a780.find_defense(%struct.State* nonnull %0, i64 %850, %struct.Memory* %MEMORY.11)
  %855 = load i32, i32* %EAX.i426, align 4
  %856 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %857 = and i32 %855, 255
  %858 = tail call i32 @llvm.ctpop.i32(i32 %857)
  %859 = trunc i32 %858 to i8
  %860 = and i8 %859, 1
  %861 = xor i8 %860, 1
  store i8 %861, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %862 = icmp eq i32 %855, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %36, align 1
  %864 = lshr i32 %855, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v72 = select i1 %862, i64 179, i64 9
  %866 = add i64 %856, %.v72
  store i64 %866, i64* %3, align 8
  br i1 %862, label %block_.L_46bbf7, label %block_.L_46bb4d

block_.L_46bb4d:                                  ; preds = %block_46bb19, %block_46bb38
  %867 = phi i64 [ %866, %block_46bb38 ], [ %827, %block_46bb19 ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_46bb3f, %block_46bb38 ], [ %call2_46bb20, %block_46bb19 ]
  %868 = load i64, i64* %RBP.i, align 8
  %869 = add i64 %868, -64
  %870 = add i64 %867, 4
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  %872 = load i32, i32* %871, align 4
  store i8 0, i8* %20, align 1
  %873 = and i32 %872, 255
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %878 = icmp eq i32 %872, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %36, align 1
  %880 = lshr i32 %872, 31
  %881 = trunc i32 %880 to i8
  store i8 %881, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v65 = select i1 %878, i64 170, i64 10
  %882 = add i64 %867, %.v65
  store i64 %882, i64* %3, align 8
  br i1 %878, label %block_.L_46bbf7, label %block_46bb57

block_46bb57:                                     ; preds = %block_.L_46bb4d
  store i64 ptrtoint (%G__0x58011c_type* @G__0x58011c to i64), i64* %RDX.i413, align 8
  store i64 0, i64* %RAX.i454, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %33, align 1
  %883 = add i64 %882, 15
  store i64 %883, i64* %3, align 8
  %884 = load i32, i32* %871, align 4
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RDI.i421, align 8
  %886 = add i64 %868, -40
  %887 = add i64 %882, 18
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i32*
  %889 = load i32, i32* %888, align 4
  %890 = zext i32 %889 to i64
  store i64 %890, i64* %RSI.i418, align 8
  %891 = add i64 %868, -36
  %892 = add i64 %882, 21
  store i64 %892, i64* %3, align 8
  %893 = inttoptr i64 %891 to i32*
  %894 = load i32, i32* %893, align 4
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RCX.i415, align 8
  store i64 0, i64* %135, align 8
  store i64 0, i64* %138, align 8
  %896 = add i64 %882, -404775
  %897 = add i64 %882, 32
  %898 = load i64, i64* %6, align 8
  %899 = add i64 %898, -8
  %900 = inttoptr i64 %899 to i64*
  store i64 %897, i64* %900, align 8
  store i64 %899, i64* %6, align 8
  store i64 %896, i64* %3, align 8
  %call2_46bb72 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %896, %struct.Memory* %MEMORY.12)
  %901 = load i32, i32* %EAX.i426, align 4
  %902 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %903 = and i32 %901, 255
  %904 = tail call i32 @llvm.ctpop.i32(i32 %903)
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = xor i8 %906, 1
  store i8 %907, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %908 = icmp eq i32 %901, 0
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %36, align 1
  %910 = lshr i32 %901, 31
  %911 = trunc i32 %910 to i8
  store i8 %911, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v66 = select i1 %908, i64 128, i64 9
  %912 = add i64 %902, %.v66
  store i64 %912, i64* %3, align 8
  br i1 %908, label %block_.L_46bbf7, label %block_46bb80

block_46bb80:                                     ; preds = %block_46bb57
  store i64 ptrtoint (%G__0x580133_type* @G__0x580133 to i64), i64* %RDX.i413, align 8
  store i64 0, i64* %RAX.i454, align 8
  store i8 0, i8* %20, align 1
  store i8 1, i8* %27, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %33, align 1
  %913 = load i64, i64* %RBP.i, align 8
  %914 = add i64 %913, -32
  %915 = add i64 %912, 15
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RDI.i421, align 8
  %919 = add i64 %913, -44
  %920 = add i64 %912, 18
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = zext i32 %922 to i64
  store i64 %923, i64* %RSI.i418, align 8
  %924 = add i64 %913, -36
  %925 = add i64 %912, 21
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = zext i32 %927 to i64
  store i64 %928, i64* %RCX.i415, align 8
  store i64 0, i64* %135, align 8
  store i64 0, i64* %138, align 8
  %929 = add i64 %912, -404816
  %930 = add i64 %912, 32
  %931 = load i64, i64* %6, align 8
  %932 = add i64 %931, -8
  %933 = inttoptr i64 %932 to i64*
  store i64 %930, i64* %933, align 8
  store i64 %932, i64* %6, align 8
  store i64 %929, i64* %3, align 8
  %call2_46bb9b = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %929, %struct.Memory* %call2_46bb72)
  %934 = load i32, i32* %EAX.i426, align 4
  %935 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %936 = and i32 %934, 255
  %937 = tail call i32 @llvm.ctpop.i32(i32 %936)
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  %940 = xor i8 %939, 1
  store i8 %940, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %941 = icmp eq i32 %934, 0
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %36, align 1
  %943 = lshr i32 %934, 31
  %944 = trunc i32 %943 to i8
  store i8 %944, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v67 = select i1 %941, i64 77, i64 9
  %945 = add i64 %935, %.v67
  store i64 %945, i64* %3, align 8
  br i1 %941, label %block_.L_46bbed, label %block_46bba9

block_46bba9:                                     ; preds = %block_46bb80
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -20
  %948 = add i64 %945, 4
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = sext i32 %950 to i64
  store i64 %951, i64* %RAX.i454, align 8
  %952 = add nsw i64 %951, 12099168
  %953 = add i64 %945, 12
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i8*
  %955 = load i8, i8* %954, align 1
  store i8 0, i8* %20, align 1
  %956 = zext i8 %955 to i32
  %957 = tail call i32 @llvm.ctpop.i32(i32 %956)
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = xor i8 %959, 1
  store i8 %960, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %961 = icmp eq i8 %955, 0
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %36, align 1
  %963 = lshr i8 %955, 7
  store i8 %963, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v68 = select i1 %961, i64 56, i64 18
  %964 = add i64 %945, %.v68
  store i64 %964, i64* %3, align 8
  br i1 %961, label %block_.L_46bbe1, label %block_46bbbb

block_46bbbb:                                     ; preds = %block_46bba9
  %965 = add i64 %946, -24
  %966 = add i64 %964, 4
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = sext i32 %968 to i64
  store i64 %969, i64* %RAX.i454, align 8
  %970 = add nsw i64 %969, 12099168
  %971 = add i64 %964, 12
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i8*
  %973 = load i8, i8* %972, align 1
  store i8 0, i8* %20, align 1
  %974 = zext i8 %973 to i32
  %975 = tail call i32 @llvm.ctpop.i32(i32 %974)
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  %978 = xor i8 %977, 1
  store i8 %978, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %979 = icmp eq i8 %973, 0
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %36, align 1
  %981 = lshr i8 %973, 7
  store i8 %981, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v69 = select i1 %979, i64 38, i64 18
  %982 = add i64 %964, %.v69
  store i64 %982, i64* %3, align 8
  br i1 %979, label %block_.L_46bbe1, label %block_46bbcd

block_46bbcd:                                     ; preds = %block_46bbbb
  %983 = add i64 %982, 3
  store i64 %983, i64* %3, align 8
  %984 = load i32, i32* %949, align 4
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RDI.i421, align 8
  %986 = add i64 %982, 6
  store i64 %986, i64* %3, align 8
  %987 = load i32, i32* %967, align 4
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RSI.i418, align 8
  %989 = add i64 %982, -3629
  %990 = add i64 %982, 11
  %991 = load i64, i64* %6, align 8
  %992 = add i64 %991, -8
  %993 = inttoptr i64 %992 to i64*
  store i64 %990, i64* %993, align 8
  store i64 %992, i64* %6, align 8
  store i64 %989, i64* %3, align 8
  %call2_46bbd3 = tail call %struct.Memory* @sub_46ada0.defend_both(%struct.State* nonnull %0, i64 %989, %struct.Memory* %call2_46bb9b)
  %994 = load i32, i32* %EAX.i426, align 4
  %995 = load i64, i64* %3, align 8
  store i8 0, i8* %20, align 1
  %996 = and i32 %994, 255
  %997 = tail call i32 @llvm.ctpop.i32(i32 %996)
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = xor i8 %999, 1
  store i8 %1000, i8* %27, align 1
  store i8 0, i8* %33, align 1
  %1001 = icmp eq i32 %994, 0
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %36, align 1
  %1003 = lshr i32 %994, 31
  %1004 = trunc i32 %1003 to i8
  store i8 %1004, i8* %39, align 1
  store i8 0, i8* %45, align 1
  %.v70 = select i1 %1001, i64 9, i64 16
  %1005 = add i64 %995, %.v70
  store i64 %1005, i64* %3, align 8
  br i1 %1001, label %block_46bbcd.block_.L_46bbe1_crit_edge, label %block_.L_46bbe8

block_46bbcd.block_.L_46bbe1_crit_edge:           ; preds = %block_46bbcd
  %.pre38 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46bbe1

block_.L_46bbe1:                                  ; preds = %block_46bbcd.block_.L_46bbe1_crit_edge, %block_46bbbb, %block_46bba9
  %1006 = phi i64 [ %964, %block_46bba9 ], [ %982, %block_46bbbb ], [ %1005, %block_46bbcd.block_.L_46bbe1_crit_edge ]
  %1007 = phi i64 [ %946, %block_46bba9 ], [ %946, %block_46bbbb ], [ %.pre38, %block_46bbcd.block_.L_46bbe1_crit_edge ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_46bb9b, %block_46bba9 ], [ %call2_46bb9b, %block_46bbbb ], [ %call2_46bbd3, %block_46bbcd.block_.L_46bbe1_crit_edge ]
  %1008 = add i64 %1007, -48
  %1009 = add i64 %1006, 7
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to i32*
  store i32 5, i32* %1010, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_46bbe8

block_.L_46bbe8:                                  ; preds = %block_46bbcd, %block_.L_46bbe1
  %1011 = phi i64 [ %.pre39, %block_.L_46bbe1 ], [ %1005, %block_46bbcd ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.13, %block_.L_46bbe1 ], [ %call2_46bbd3, %block_46bbcd ]
  %1012 = add i64 %1011, -384648
  %1013 = add i64 %1011, 5
  %1014 = load i64, i64* %6, align 8
  %1015 = add i64 %1014, -8
  %1016 = inttoptr i64 %1015 to i64*
  store i64 %1013, i64* %1016, align 8
  store i64 %1015, i64* %6, align 8
  store i64 %1012, i64* %3, align 8
  %call2_46bbe8 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1012, %struct.Memory* %MEMORY.14)
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_46bbed

block_.L_46bbed:                                  ; preds = %block_.L_46bbe8, %block_46bb80
  %1017 = phi i64 [ %945, %block_46bb80 ], [ %.pre40, %block_.L_46bbe8 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_46bb9b, %block_46bb80 ], [ %call2_46bbe8, %block_.L_46bbe8 ]
  %1018 = add i64 %1017, -384653
  %1019 = add i64 %1017, 5
  %1020 = load i64, i64* %6, align 8
  %1021 = add i64 %1020, -8
  %1022 = inttoptr i64 %1021 to i64*
  store i64 %1019, i64* %1022, align 8
  store i64 %1021, i64* %6, align 8
  store i64 %1018, i64* %3, align 8
  %call2_46bbed = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1018, %struct.Memory* %MEMORY.15)
  %1023 = load i64, i64* %3, align 8
  %1024 = add i64 %1023, 12
  store i64 %1024, i64* %3, align 8
  br label %block_.L_46bbfe

block_.L_46bbf7:                                  ; preds = %block_46bb57, %block_.L_46bb4d, %block_46bb38, %block_.L_46bb2e
  %1025 = phi i64 [ %843, %block_.L_46bb2e ], [ %866, %block_46bb38 ], [ %882, %block_.L_46bb4d ], [ %912, %block_46bb57 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.11, %block_.L_46bb2e ], [ %call2_46bb3f, %block_46bb38 ], [ %MEMORY.12, %block_.L_46bb4d ], [ %call2_46bb72, %block_46bb57 ]
  %1026 = load i64, i64* %RBP.i, align 8
  %1027 = add i64 %1026, -48
  %1028 = add i64 %1025, 7
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i32*
  store i32 5, i32* %1029, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_46bbfe

block_.L_46bbfe:                                  ; preds = %block_.L_46bbf7, %block_.L_46bbed
  %1030 = phi i64 [ %.pre41, %block_.L_46bbf7 ], [ %1024, %block_.L_46bbed ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.16, %block_.L_46bbf7 ], [ %call2_46bbed, %block_.L_46bbed ]
  %1031 = add i64 %1030, 5
  store i64 %1031, i64* %3, align 8
  br label %block_.L_46bc03

block_.L_46bc03:                                  ; preds = %block_.L_46bbfe, %block_46bafe
  %1032 = phi i64 [ %1031, %block_.L_46bbfe ], [ %784, %block_46bafe ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.17, %block_.L_46bbfe ], [ %MEMORY.9, %block_46bafe ]
  %1033 = add i64 %1032, 5
  store i64 %1033, i64* %3, align 8
  br label %block_.L_46bc08

block_.L_46bc08:                                  ; preds = %block_.L_46bc03, %block_.L_46ba6a
  %storemerge31 = phi i64 [ %646, %block_.L_46ba6a ], [ %1033, %block_.L_46bc03 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.6, %block_.L_46ba6a ], [ %MEMORY.18, %block_.L_46bc03 ]
  %1034 = add i64 %storemerge31, 5
  store i64 %1034, i64* %3, align 8
  br label %block_.L_46bc0d

block_.L_46bc0d:                                  ; preds = %block_46b87e, %block_.L_46bc08
  %1035 = phi i64 [ %178, %block_46b87e ], [ %1034, %block_.L_46bc08 ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_46b885, %block_46b87e ], [ %MEMORY.19, %block_.L_46bc08 ]
  %1036 = add i64 %1035, -384685
  %1037 = add i64 %1035, 5
  %1038 = load i64, i64* %6, align 8
  %1039 = add i64 %1038, -8
  %1040 = inttoptr i64 %1039 to i64*
  store i64 %1037, i64* %1040, align 8
  store i64 %1039, i64* %6, align 8
  store i64 %1036, i64* %3, align 8
  %call2_46bc0d = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1036, %struct.Memory* %MEMORY.20)
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_46bc12

block_.L_46bc12:                                  ; preds = %block_.L_46bc0d, %entry
  %1041 = phi i64 [ %155, %entry ], [ %.pre43, %block_.L_46bc0d ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_46b870, %entry ], [ %call2_46bc0d, %block_.L_46bc0d ]
  %1042 = load i64, i64* %RBP.i, align 8
  %1043 = add i64 %1042, -48
  %1044 = add i64 %1041, 3
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i32*
  %1046 = load i32, i32* %1045, align 4
  %1047 = zext i32 %1046 to i64
  store i64 %1047, i64* %RAX.i454, align 8
  %1048 = add i64 %1042, -12
  %1049 = add i64 %1041, 6
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i32*
  store i32 %1046, i32* %1050, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_46bc18

block_.L_46bc18:                                  ; preds = %block_.L_46bc12, %block_.L_46ba08, %block_46b9e8, %block_46b92b, %block_.L_46b904
  %1051 = phi i64 [ %.pre44, %block_.L_46bc12 ], [ %571, %block_.L_46ba08 ], [ %541, %block_46b9e8 ], [ %366, %block_46b92b ], [ %313, %block_.L_46b904 ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.21, %block_.L_46bc12 ], [ %call2_46ba12, %block_.L_46ba08 ], [ %call2_46b9f2, %block_46b9e8 ], [ %call2_46b92b, %block_46b92b ], [ %call2_46b909, %block_.L_46b904 ]
  %1052 = load i64, i64* %RBP.i, align 8
  %1053 = add i64 %1052, -12
  %1054 = add i64 %1051, 3
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  %1056 = load i32, i32* %1055, align 4
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RAX.i454, align 8
  %1058 = load i64, i64* %6, align 8
  %1059 = add i64 %1058, 56
  store i64 %1059, i64* %6, align 8
  %1060 = icmp ugt i64 %1058, -57
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %20, align 1
  %1062 = trunc i64 %1059 to i32
  %1063 = and i32 %1062, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %27, align 1
  %1068 = xor i64 %1058, 16
  %1069 = xor i64 %1068, %1059
  %1070 = lshr i64 %1069, 4
  %1071 = trunc i64 %1070 to i8
  %1072 = and i8 %1071, 1
  store i8 %1072, i8* %33, align 1
  %1073 = icmp eq i64 %1059, 0
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %36, align 1
  %1075 = lshr i64 %1059, 63
  %1076 = trunc i64 %1075 to i8
  store i8 %1076, i8* %39, align 1
  %1077 = lshr i64 %1058, 63
  %1078 = xor i64 %1075, %1077
  %1079 = add nuw nsw i64 %1078, %1075
  %1080 = icmp eq i64 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %45, align 1
  %1082 = add i64 %1051, 8
  store i64 %1082, i64* %3, align 8
  %1083 = add i64 %1058, 64
  %1084 = inttoptr i64 %1059 to i64*
  %1085 = load i64, i64* %1084, align 8
  store i64 %1085, i64* %RBX.i459, align 8
  store i64 %1083, i64* %6, align 8
  %1086 = add i64 %1051, 9
  store i64 %1086, i64* %3, align 8
  %1087 = add i64 %1058, 72
  %1088 = inttoptr i64 %1083 to i64*
  %1089 = load i64, i64* %1088, align 8
  store i64 %1089, i64* %RBP.i, align 8
  store i64 %1087, i64* %6, align 8
  %1090 = add i64 %1051, 10
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1087 to i64*
  %1092 = load i64, i64* %1091, align 8
  store i64 %1092, i64* %3, align 8
  %1093 = add i64 %1058, 80
  store i64 %1093, i64* %6, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x38___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -56
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 56
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
define %struct.Memory* @routine_movl_0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movl_0x10__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 16
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
define %struct.Memory* @routine_movq__0x5800a9___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5800a9_type* @G__0x5800a9 to i64), i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ebx___ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RBX, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movq__r11___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ebx___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EBX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ebx___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %EBX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.trymove(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46bc12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_callq_.attack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46bc0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x34__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46b8b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46ba32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5800c0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5800c0_type* @G__0x5800c0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__eax___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46b91f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_cmpb__0x0__0xb89e60___rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = zext i8 %8 to i32
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i8 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i8 %8, 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46b904(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.find_defense(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46b91a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.popgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46bc18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
define %struct.Memory* @routine_jne_.L_46b93c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x5800d7___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5800d7_type* @G__0x5800d7 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_je_.L_46ba2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x5800ee___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5800ee_type* @G__0x5800ee to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46ba28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46ba08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46ba03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_callq_.defend_both(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46ba23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_je_.L_46ba6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jne_.L_46ba76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 5, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46bc08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x580105___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580105_type* @G__0x580105 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46baf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46bace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46baef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46baea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jne_.L_46bb08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_je_.L_46bc03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46bb2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46bb4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46bbf7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movq__0x58011c___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58011c_type* @G__0x58011c to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movq__0x580133___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580133_type* @G__0x580133 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46bbed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46bbe1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46bbe8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46bbfe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46bc03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46bc0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x38___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 56
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -57
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
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
