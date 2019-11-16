; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
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

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @unRLE_obuf_to_output_SMALL(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %12 = icmp ult i64 %8, 32
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
  %RDI.i2136 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = add i64 %7, -24
  %41 = load i64, i64* %RDI.i2136, align 8
  %42 = add i64 %10, 11
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %RDI.i2136, align 8
  %50 = add i64 %49, 20
  %51 = add i64 %46, 8
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %50 to i8*
  %53 = load i8, i8* %52, align 1
  store i8 0, i8* %14, align 1
  %54 = zext i8 %53 to i32
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54)
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %59 = icmp eq i8 %53, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %29, align 1
  %61 = lshr i8 %53, 7
  store i8 %61, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v153 = select i1 %59, i64 1933, i64 14
  %62 = add i64 %46, %.v153
  %63 = add i64 %62, 5
  store i64 %63, i64* %3, align 8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i858 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL.i837 = bitcast %union.anon* %65 to i8*
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i822 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  %RSI.i814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %EDI.i802 = bitcast %union.anon* %39 to i32*
  %R8.i770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %RCX.i723 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  %ECX.i717 = bitcast %union.anon* %65 to i32*
  %DL.i662 = bitcast %union.anon* %66 to i8*
  br i1 %59, label %block_.L_406e2e.preheader, label %block_.L_4066af.preheader

block_.L_4066af.preheader:                        ; preds = %entry
  %R8.i1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %DIL.i1747 = bitcast %union.anon* %39 to i8*
  %AL.i1902 = bitcast %union.anon* %64 to i8*
  %EAX.i1885 = bitcast %union.anon* %64 to i32*
  br label %block_.L_4066af

block_.L_406e2e.preheader:                        ; preds = %entry
  %RSI.i642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8.i628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %AL.i637 = bitcast %union.anon* %64 to i8*
  %EAX.i621 = bitcast %union.anon* %64 to i32*
  br label %block_.L_406e2e

block_.L_4066af.sink.split:                       ; preds = %block_.L_406b80, %block_.L_406a28, %block_.L_4068d0, %block_406944, %block_406a9c, %block_406bf4, %block_.L_406de8
  %.sink92 = phi i64 [ -1909, %block_.L_406de8 ], [ -1360, %block_406bf4 ], [ -1016, %block_406a9c ], [ -672, %block_406944 ], [ -983, %block_.L_406a28 ], [ -1327, %block_.L_406b80 ], [ -639, %block_.L_4068d0 ]
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, %.sink92
  store i64 %68, i64* %3, align 8
  br label %block_.L_4066af

block_.L_4066af:                                  ; preds = %block_.L_4066af.preheader, %block_.L_4066af.sink.split
  %69 = phi i64 [ %68, %block_.L_4066af.sink.split ], [ %63, %block_.L_4066af.preheader ]
  %70 = add i64 %69, 5
  br label %block_.L_4066b4

block_.L_4066b4:                                  ; preds = %block_.L_40678f, %block_.L_4066af
  %storemerge = phi i64 [ %70, %block_.L_4066af ], [ %447, %block_.L_40678f ]
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -16
  %73 = add i64 %storemerge, 4
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %RAX.i858, align 8
  %76 = add i64 %storemerge, 7
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %75 to i64*
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %RAX.i858, align 8
  %79 = add i64 %78, 32
  %80 = add i64 %storemerge, 11
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %79 to i32*
  %82 = load i32, i32* %81, align 4
  store i8 0, i8* %14, align 1
  %83 = and i32 %82, 255
  %84 = tail call i32 @llvm.ctpop.i32(i32 %83)
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  store i8 %87, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %88 = icmp eq i32 %82, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %29, align 1
  %90 = lshr i32 %82, 31
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v144 = select i1 %88, i64 17, i64 26
  %92 = add i64 %storemerge, %.v144
  store i64 %92, i64* %3, align 8
  br i1 %88, label %block_.L_407333.loopexit227, label %block_.L_4066ce

block_.L_4066ce:                                  ; preds = %block_.L_4066b4
  %93 = add i64 %92, 4
  store i64 %93, i64* %3, align 8
  %94 = load i64, i64* %74, align 8
  store i64 %94, i64* %RAX.i858, align 8
  %95 = add i64 %94, 16
  %96 = add i64 %92, 8
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  store i8 0, i8* %14, align 1
  %99 = and i32 %98, 255
  %100 = tail call i32 @llvm.ctpop.i32(i32 %99)
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  store i8 %103, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %104 = icmp eq i32 %98, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %29, align 1
  %106 = lshr i32 %98, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %104, i64 14, i64 19
  %108 = add i64 %92, %.v
  store i64 %108, i64* %3, align 8
  br i1 %104, label %block_4066dc, label %block_.L_4066e1

block_4066dc:                                     ; preds = %block_.L_4066ce
  %109 = add i64 %108, 188
  store i64 %109, i64* %3, align 8
  %110 = load i64, i64* %74, align 8
  store i64 %110, i64* %RAX.i858, align 8
  %111 = add i64 %110, 1092
  %112 = add i64 %108, 194
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RCX.i723, align 8
  %116 = add i64 %108, 198
  store i64 %116, i64* %3, align 8
  %117 = load i64, i64* %74, align 8
  store i64 %117, i64* %RAX.i858, align 8
  %118 = add i64 %117, 64080
  %119 = add i64 %108, 204
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = add i32 %121, 1
  %123 = zext i32 %122 to i64
  store i64 %123, i64* %RDX.i822, align 8
  %124 = lshr i32 %122, 31
  %125 = sub i32 %114, %122
  %126 = icmp ult i32 %114, %122
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %14, align 1
  %128 = and i32 %125, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128)
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %21, align 1
  %133 = xor i32 %122, %114
  %134 = xor i32 %133, %125
  %135 = lshr i32 %134, 4
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %26, align 1
  %138 = icmp eq i32 %125, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %29, align 1
  %140 = lshr i32 %125, 31
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %32, align 1
  %142 = lshr i32 %114, 31
  %143 = xor i32 %124, %142
  %144 = xor i32 %140, %142
  %145 = add nuw nsw i32 %144, %143
  %146 = icmp eq i32 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %38, align 1
  %.v155 = select i1 %138, i64 215, i64 224
  %148 = add i64 %108, %.v155
  store i64 %148, i64* %3, align 8
  br i1 %138, label %block_.L_407333.loopexit228, label %block_.L_4067bc

block_.L_4066e1:                                  ; preds = %block_.L_4066ce
  %149 = add i64 %108, 4
  store i64 %149, i64* %3, align 8
  %150 = load i64, i64* %74, align 8
  store i64 %150, i64* %RAX.i858, align 8
  %151 = add i64 %150, 12
  %152 = add i64 %108, 7
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i8*
  %154 = load i8, i8* %153, align 1
  store i8 %154, i8* %CL.i837, align 1
  %155 = add i64 %108, 11
  store i64 %155, i64* %3, align 8
  %156 = load i64, i64* %74, align 8
  store i64 %156, i64* %RAX.i858, align 8
  %157 = add i64 %108, 14
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RAX.i858, align 8
  %160 = add i64 %159, 24
  %161 = add i64 %108, 18
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %RAX.i858, align 8
  %164 = add i64 %108, 20
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i8*
  store i8 %154, i8* %165, align 1
  %166 = load i64, i64* %RBP.i, align 8
  %167 = add i64 %166, -16
  %168 = load i64, i64* %3, align 8
  %169 = add i64 %168, 4
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %167 to i64*
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %RAX.i858, align 8
  %172 = add i64 %171, 3184
  %173 = add i64 %168, 10
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = shl i32 %175, 8
  %177 = zext i32 %176 to i64
  store i64 %177, i64* %RDX.i822, align 8
  %178 = lshr i32 %175, 24
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  store i8 %180, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %181 = icmp eq i32 %176, 0
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %29, align 1
  %183 = lshr i32 %175, 23
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  store i8 %185, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %186 = add i64 %168, 17
  store i64 %186, i64* %3, align 8
  %187 = load i64, i64* %170, align 8
  store i64 %187, i64* %RAX.i858, align 8
  %188 = add i64 %187, 3184
  %189 = add i64 %168, 23
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = lshr i32 %191, 23
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = lshr i32 %191, 24
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RSI.i814, align 8
  store i8 %194, i8* %14, align 1
  %197 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %201 = icmp eq i32 %195, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %203 = add i64 %168, 30
  store i64 %203, i64* %3, align 8
  %204 = load i64, i64* %170, align 8
  store i64 %204, i64* %RAX.i858, align 8
  %205 = add i64 %204, 12
  %206 = add i64 %168, 34
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i8*
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i64
  store i64 %209, i64* %RDI.i2136, align 8
  %210 = zext i8 %208 to i64
  %211 = xor i64 %210, %196
  %212 = trunc i64 %211 to i32
  store i8 0, i8* %14, align 1
  %213 = tail call i32 @llvm.ctpop.i32(i32 %212)
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  %216 = xor i8 %215, 1
  store i8 %216, i8* %21, align 1
  %217 = icmp eq i32 %212, 0
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %211, i64* %RSI.i814, align 8
  store i64 %211, i64* %RAX.i858, align 8
  %219 = shl nuw nsw i64 %211, 2
  %220 = add nuw nsw i64 %219, 6390128
  %221 = add i64 %168, 47
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = xor i32 %223, %176
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %RDX.i822, align 8
  store i8 0, i8* %14, align 1
  %226 = and i32 %223, 255
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226)
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %21, align 1
  %231 = icmp eq i32 %224, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %29, align 1
  %233 = lshr i32 %224, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %235 = load i64, i64* %RBP.i, align 8
  %236 = add i64 %235, -16
  %237 = add i64 %168, 51
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i64*
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* %RAX.i858, align 8
  %240 = add i64 %239, 3184
  %241 = add i64 %168, 57
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i32*
  store i32 %224, i32* %242, align 4
  %243 = load i64, i64* %RBP.i, align 8
  %244 = add i64 %243, -16
  %245 = load i64, i64* %3, align 8
  %246 = add i64 %245, 4
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %244 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %RAX.i858, align 8
  %249 = add i64 %248, 16
  %250 = add i64 %245, 7
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = add i32 %252, -1
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RDX.i822, align 8
  %255 = icmp ne i32 %252, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %14, align 1
  %257 = and i32 %253, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %21, align 1
  %262 = xor i32 %252, 16
  %263 = xor i32 %262, %253
  %264 = lshr i32 %263, 4
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %26, align 1
  %267 = icmp eq i32 %253, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %29, align 1
  %269 = lshr i32 %253, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %32, align 1
  %271 = lshr i32 %252, 31
  %272 = xor i32 %269, %271
  %273 = xor i32 %269, 1
  %274 = add nuw nsw i32 %272, %273
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %38, align 1
  %277 = add i64 %245, 13
  store i64 %277, i64* %3, align 8
  store i32 %253, i32* %251, align 4
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -16
  %280 = load i64, i64* %3, align 8
  %281 = add i64 %280, 4
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %279 to i64*
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %RAX.i858, align 8
  %284 = add i64 %280, 7
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %RAX.i858, align 8
  %287 = add i64 %286, 24
  %288 = add i64 %280, 11
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i64*
  %290 = load i64, i64* %289, align 8
  %291 = add i64 %290, 1
  store i64 %291, i64* %R8.i770, align 8
  %292 = icmp eq i64 %290, -1
  %293 = icmp eq i64 %291, 0
  %294 = or i1 %292, %293
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %14, align 1
  %296 = trunc i64 %291 to i32
  %297 = and i32 %296, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %21, align 1
  %302 = xor i64 %291, %290
  %303 = lshr i64 %302, 4
  %304 = trunc i64 %303 to i8
  %305 = and i8 %304, 1
  store i8 %305, i8* %26, align 1
  %306 = zext i1 %293 to i8
  store i8 %306, i8* %29, align 1
  %307 = lshr i64 %291, 63
  %308 = trunc i64 %307 to i8
  store i8 %308, i8* %32, align 1
  %309 = lshr i64 %290, 63
  %310 = xor i64 %307, %309
  %311 = add nuw nsw i64 %310, %307
  %312 = icmp eq i64 %311, 2
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %38, align 1
  %314 = add i64 %280, 19
  store i64 %314, i64* %3, align 8
  store i64 %291, i64* %289, align 8
  %315 = load i64, i64* %RBP.i, align 8
  %316 = add i64 %315, -16
  %317 = load i64, i64* %3, align 8
  %318 = add i64 %317, 4
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %316 to i64*
  %320 = load i64, i64* %319, align 8
  store i64 %320, i64* %RAX.i858, align 8
  %321 = add i64 %317, 7
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i64*
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %RAX.i858, align 8
  %324 = add i64 %323, 32
  %325 = add i64 %317, 10
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = add i32 %327, -1
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RDX.i822, align 8
  %330 = icmp ne i32 %327, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %14, align 1
  %332 = and i32 %328, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %21, align 1
  %337 = xor i32 %327, 16
  %338 = xor i32 %337, %328
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %26, align 1
  %342 = icmp eq i32 %328, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %29, align 1
  %344 = lshr i32 %328, 31
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %32, align 1
  %346 = lshr i32 %327, 31
  %347 = xor i32 %344, %346
  %348 = xor i32 %344, 1
  %349 = add nuw nsw i32 %347, %348
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %38, align 1
  %352 = add i64 %317, 16
  store i64 %352, i64* %3, align 8
  store i32 %328, i32* %326, align 4
  %353 = load i64, i64* %RBP.i, align 8
  %354 = add i64 %353, -16
  %355 = load i64, i64* %3, align 8
  %356 = add i64 %355, 4
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %354 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %RAX.i858, align 8
  %359 = add i64 %355, 7
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %RAX.i858, align 8
  %362 = add i64 %361, 36
  %363 = add i64 %355, 10
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i32 %365, 1
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RDX.i822, align 8
  %368 = icmp eq i32 %365, -1
  %369 = icmp eq i32 %366, 0
  %370 = or i1 %368, %369
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %14, align 1
  %372 = and i32 %366, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %21, align 1
  %377 = xor i32 %366, %365
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %26, align 1
  %381 = zext i1 %369 to i8
  store i8 %381, i8* %29, align 1
  %382 = lshr i32 %366, 31
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %32, align 1
  %384 = lshr i32 %365, 31
  %385 = xor i32 %382, %384
  %386 = add nuw nsw i32 %385, %382
  %387 = icmp eq i32 %386, 2
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %38, align 1
  %389 = add i64 %355, 16
  store i64 %389, i64* %3, align 8
  store i32 %366, i32* %364, align 4
  %390 = load i64, i64* %RBP.i, align 8
  %391 = add i64 %390, -16
  %392 = load i64, i64* %3, align 8
  %393 = add i64 %392, 4
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %391 to i64*
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %RAX.i858, align 8
  %396 = add i64 %392, 7
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %RAX.i858, align 8
  %399 = add i64 %398, 36
  %400 = add i64 %392, 11
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  store i8 0, i8* %14, align 1
  %403 = and i32 %402, 255
  %404 = tail call i32 @llvm.ctpop.i32(i32 %403)
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  store i8 %407, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %408 = icmp eq i32 %402, 0
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %29, align 1
  %410 = lshr i32 %402, 31
  %411 = trunc i32 %410 to i8
  store i8 %411, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v154 = select i1 %408, i64 17, i64 33
  %412 = add i64 %392, %.v154
  store i64 %412, i64* %3, align 8
  br i1 %408, label %block_40677f, label %block_.L_40678f

block_40677f:                                     ; preds = %block_.L_4066e1
  %413 = add i64 %412, 4
  store i64 %413, i64* %3, align 8
  %414 = load i64, i64* %394, align 8
  store i64 %414, i64* %RAX.i858, align 8
  %415 = add i64 %412, 7
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i64*
  %417 = load i64, i64* %416, align 8
  store i64 %417, i64* %RAX.i858, align 8
  %418 = add i64 %417, 40
  %419 = add i64 %412, 10
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = add i32 %421, 1
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RCX.i723, align 8
  %424 = icmp eq i32 %421, -1
  %425 = icmp eq i32 %422, 0
  %426 = or i1 %424, %425
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %14, align 1
  %428 = and i32 %422, 255
  %429 = tail call i32 @llvm.ctpop.i32(i32 %428)
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  %432 = xor i8 %431, 1
  store i8 %432, i8* %21, align 1
  %433 = xor i32 %422, %421
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %26, align 1
  %437 = zext i1 %425 to i8
  store i8 %437, i8* %29, align 1
  %438 = lshr i32 %422, 31
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %32, align 1
  %440 = lshr i32 %421, 31
  %441 = xor i32 %438, %440
  %442 = add nuw nsw i32 %441, %438
  %443 = icmp eq i32 %442, 2
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %38, align 1
  %445 = add i64 %412, 16
  store i64 %445, i64* %3, align 8
  store i32 %422, i32* %420, align 4
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_40678f

block_.L_40678f:                                  ; preds = %block_.L_4066e1, %block_40677f
  %446 = phi i64 [ %.pre137, %block_40677f ], [ %412, %block_.L_4066e1 ]
  %447 = add i64 %446, -219
  %448 = add i64 %446, 5
  store i64 %448, i64* %3, align 8
  br label %block_.L_4066b4

block_.L_4067bc:                                  ; preds = %block_4066dc
  %449 = add i64 %148, 4
  store i64 %449, i64* %3, align 8
  %450 = load i64, i64* %74, align 8
  store i64 %450, i64* %RAX.i858, align 8
  %451 = add i64 %450, 1092
  %452 = add i64 %148, 10
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RCX.i723, align 8
  %456 = add i64 %148, 14
  store i64 %456, i64* %3, align 8
  %457 = load i64, i64* %74, align 8
  store i64 %457, i64* %RAX.i858, align 8
  %458 = add i64 %457, 64080
  %459 = add i64 %148, 20
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = add i32 %461, 1
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RDX.i822, align 8
  %464 = lshr i32 %462, 31
  %465 = sub i32 %454, %462
  %466 = icmp ult i32 %454, %462
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %14, align 1
  %468 = and i32 %465, 255
  %469 = tail call i32 @llvm.ctpop.i32(i32 %468)
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  store i8 %472, i8* %21, align 1
  %473 = xor i32 %462, %454
  %474 = xor i32 %473, %465
  %475 = lshr i32 %474, 4
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  store i8 %477, i8* %26, align 1
  %478 = icmp eq i32 %465, 0
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %29, align 1
  %480 = lshr i32 %465, 31
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %32, align 1
  %482 = lshr i32 %454, 31
  %483 = xor i32 %464, %482
  %484 = xor i32 %480, %482
  %485 = add nuw nsw i32 %484, %483
  %486 = icmp eq i32 %485, 2
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %38, align 1
  %488 = icmp ne i8 %481, 0
  %489 = xor i1 %488, %486
  %490 = or i1 %478, %489
  %.v156 = select i1 %490, i64 40, i64 31
  %491 = add i64 %148, %.v156
  store i64 %491, i64* %3, align 8
  br i1 %490, label %block_.L_4067e4, label %block_.L_407333.loopexit228

block_.L_4067e4:                                  ; preds = %block_.L_4067bc
  %492 = add i64 %491, 4
  store i64 %492, i64* %3, align 8
  %493 = load i64, i64* %74, align 8
  store i64 %493, i64* %RAX.i858, align 8
  %494 = add i64 %493, 16
  %495 = add i64 %491, 11
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i32*
  store i32 1, i32* %496, align 4
  %497 = load i64, i64* %RBP.i, align 8
  %498 = add i64 %497, -16
  %499 = load i64, i64* %3, align 8
  %500 = add i64 %499, 4
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %498 to i64*
  %502 = load i64, i64* %501, align 8
  store i64 %502, i64* %RAX.i858, align 8
  %503 = add i64 %502, 64
  %504 = add i64 %499, 7
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i32*
  %506 = load i32, i32* %505, align 4
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RCX.i723, align 8
  %508 = trunc i32 %506 to i8
  store i8 %508, i8* %DL.i662, align 1
  %509 = add i64 %499, 13
  store i64 %509, i64* %3, align 8
  %510 = load i64, i64* %501, align 8
  store i64 %510, i64* %RAX.i858, align 8
  %511 = add i64 %510, 12
  %512 = add i64 %499, 16
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i8*
  store i8 %508, i8* %513, align 1
  %514 = load i64, i64* %RBP.i, align 8
  %515 = add i64 %514, -16
  %516 = load i64, i64* %3, align 8
  %517 = add i64 %516, 4
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %515 to i64*
  %519 = load i64, i64* %518, align 8
  store i64 %519, i64* %RAX.i858, align 8
  %520 = add i64 %519, 60
  %521 = add i64 %516, 7
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i32*
  %523 = load i32, i32* %522, align 4
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RDI.i2136, align 8
  %525 = add i64 %516, 11
  store i64 %525, i64* %3, align 8
  %526 = load i64, i64* %518, align 8
  %527 = add i64 %526, 1096
  store i64 %527, i64* %RAX.i858, align 8
  %528 = icmp ugt i64 %526, -1097
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %14, align 1
  %530 = trunc i64 %527 to i32
  %531 = and i32 %530, 255
  %532 = tail call i32 @llvm.ctpop.i32(i32 %531)
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = xor i8 %534, 1
  store i8 %535, i8* %21, align 1
  %536 = xor i64 %527, %526
  %537 = lshr i64 %536, 4
  %538 = trunc i64 %537 to i8
  %539 = and i8 %538, 1
  store i8 %539, i8* %26, align 1
  %540 = icmp eq i64 %527, 0
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %29, align 1
  %542 = lshr i64 %527, 63
  %543 = trunc i64 %542 to i8
  store i8 %543, i8* %32, align 1
  %544 = lshr i64 %526, 63
  %545 = xor i64 %542, %544
  %546 = add nuw nsw i64 %545, %542
  %547 = icmp eq i64 %546, 2
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %38, align 1
  store i64 %527, i64* %RSI.i814, align 8
  %549 = add i64 %516, -1199
  %550 = add i64 %516, 25
  %551 = load i64, i64* %6, align 8
  %552 = add i64 %551, -8
  %553 = inttoptr i64 %552 to i64*
  store i64 %550, i64* %553, align 8
  store i64 %552, i64* %6, align 8
  store i64 %549, i64* %3, align 8
  %call2_406813 = tail call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* nonnull %0, i64 %549, %struct.Memory* %2)
  %554 = load i8, i8* %AL.i1902, align 1
  %555 = load i64, i64* %3, align 8
  store i8 %554, i8* %DL.i662, align 1
  %556 = load i64, i64* %RBP.i, align 8
  %557 = add i64 %556, -17
  %558 = add i64 %555, 5
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i8*
  store i8 %554, i8* %559, align 1
  %560 = load i64, i64* %RBP.i, align 8
  %561 = add i64 %560, -16
  %562 = load i64, i64* %3, align 8
  %563 = add i64 %562, 4
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %561 to i64*
  %565 = load i64, i64* %564, align 8
  store i64 %565, i64* %RSI.i814, align 8
  %566 = add i64 %565, 3160
  %567 = add i64 %562, 11
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i64*
  %569 = load i64, i64* %568, align 8
  store i64 %569, i64* %RSI.i814, align 8
  %570 = add i64 %562, 15
  store i64 %570, i64* %3, align 8
  %571 = load i64, i64* %564, align 8
  store i64 %571, i64* %R8.i1892, align 8
  %572 = add i64 %571, 60
  %573 = add i64 %562, 19
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = zext i32 %575 to i64
  store i64 %576, i64* %RAX.i858, align 8
  store i64 %576, i64* %R8.i1892, align 8
  %577 = shl nuw nsw i64 %576, 1
  %578 = add i64 %569, %577
  %579 = add i64 %562, 27
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i16*
  %581 = load i16, i16* %580, align 2
  %582 = zext i16 %581 to i64
  store i64 %582, i64* %RAX.i858, align 8
  %583 = add i64 %562, 31
  store i64 %583, i64* %3, align 8
  %584 = load i64, i64* %564, align 8
  store i64 %584, i64* %RSI.i814, align 8
  %585 = add i64 %584, 3168
  %586 = add i64 %562, 38
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %585 to i64*
  %588 = load i64, i64* %587, align 8
  store i64 %588, i64* %RSI.i814, align 8
  %589 = add i64 %562, 42
  store i64 %589, i64* %3, align 8
  %590 = load i64, i64* %564, align 8
  store i64 %590, i64* %R8.i1892, align 8
  %591 = add i64 %590, 60
  %592 = add i64 %562, 46
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = lshr i32 %594, 31
  %596 = trunc i32 %595 to i8
  %597 = trunc i32 %594 to i8
  %598 = and i8 %597, 1
  %599 = lshr i32 %594, 1
  %600 = zext i32 %599 to i64
  store i8 %598, i8* %14, align 1
  %601 = and i32 %599, 255
  %602 = tail call i32 @llvm.ctpop.i32(i32 %601)
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = xor i8 %604, 1
  store i8 %605, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %606 = icmp eq i32 %599, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %596, i8* %38, align 1
  store i64 %600, i64* %RCX.i723, align 8
  store i64 %600, i64* %R8.i1892, align 8
  %608 = add i64 %588, %600
  %609 = add i64 %562, 58
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i8*
  %611 = load i8, i8* %610, align 1
  %612 = zext i8 %611 to i64
  store i64 %612, i64* %RCX.i723, align 8
  %613 = add i64 %562, 62
  store i64 %613, i64* %3, align 8
  %614 = load i64, i64* %564, align 8
  store i64 %614, i64* %RSI.i814, align 8
  %615 = add i64 %614, 60
  %616 = add i64 %562, 65
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = shl i32 %618, 2
  %620 = and i32 %619, 4
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %RDI.i2136, align 8
  store i8 0, i8* %14, align 1
  %622 = tail call i32 @llvm.ctpop.i32(i32 %620)
  %623 = trunc i32 %622 to i8
  %624 = xor i8 %623, 1
  store i8 %624, i8* %21, align 1
  %.lobit = lshr exact i32 %620, 2
  %625 = trunc i32 %.lobit to i8
  %626 = xor i8 %625, 1
  store i8 %626, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %627 = load i64, i64* %RBP.i, align 8
  %628 = add i64 %627, -24
  %629 = zext i8 %611 to i32
  %630 = add i64 %562, 74
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %628 to i32*
  store i32 %629, i32* %631, align 4
  %632 = load i32, i32* %EDI.i802, align 4
  %633 = zext i32 %632 to i64
  %634 = load i64, i64* %3, align 8
  store i64 %633, i64* %RCX.i723, align 8
  %635 = load i64, i64* %RBP.i, align 8
  %636 = add i64 %635, -24
  %637 = add i64 %634, 5
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i32*
  %639 = load i32, i32* %638, align 4
  %640 = zext i32 %639 to i64
  store i64 %640, i64* %RDI.i2136, align 8
  %641 = add i64 %634, 7
  store i64 %641, i64* %3, align 8
  %642 = trunc i32 %632 to i5
  switch i5 %642, label %646 [
    i5 0, label %routine_shrl__cl___edi.exit1837
    i5 1, label %643
  ]

; <label>:643:                                    ; preds = %block_.L_4067e4
  %644 = lshr i32 %639, 31
  %645 = trunc i32 %644 to i8
  br label %652

; <label>:646:                                    ; preds = %block_.L_4067e4
  %647 = and i32 %632, 31
  %648 = zext i32 %647 to i64
  %649 = add nuw nsw i64 %648, 4294967295
  %650 = and i64 %649, 4294967295
  %651 = lshr i64 %640, %650
  br label %652

; <label>:652:                                    ; preds = %646, %643
  %653 = phi i64 [ %651, %646 ], [ %640, %643 ]
  %654 = phi i8 [ 0, %646 ], [ %645, %643 ]
  %655 = trunc i64 %653 to i8
  %656 = and i8 %655, 1
  %657 = lshr i64 %653, 1
  %658 = trunc i64 %657 to i32
  %659 = and i32 %658, 2147483647
  %660 = zext i32 %659 to i64
  store i64 %660, i64* %RDI.i2136, align 8
  store i8 %656, i8* %14, align 1
  %661 = and i32 %658, 255
  %662 = tail call i32 @llvm.ctpop.i32(i32 %661)
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  store i8 %665, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %666 = icmp eq i32 %659, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %654, i8* %38, align 1
  br label %routine_shrl__cl___edi.exit1837

routine_shrl__cl___edi.exit1837:                  ; preds = %652, %block_.L_4067e4
  %668 = phi i64 [ %660, %652 ], [ %640, %block_.L_4067e4 ]
  %669 = shl nuw nsw i64 %668, 16
  %670 = and i64 %669, 983040
  store i64 %670, i64* %RDI.i2136, align 8
  %671 = load i64, i64* %RAX.i858, align 8
  %672 = or i64 %670, %671
  %673 = trunc i64 %672 to i32
  %674 = and i64 %672, 4294967295
  store i64 %674, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %675 = and i32 %673, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %21, align 1
  %680 = icmp eq i32 %673, 0
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %29, align 1
  %682 = lshr i32 %673, 31
  %683 = trunc i32 %682 to i8
  store i8 %683, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %684 = add i64 %635, -16
  %685 = add i64 %634, 19
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i64*
  %687 = load i64, i64* %686, align 8
  store i64 %687, i64* %RSI.i814, align 8
  %688 = add i64 %687, 60
  %689 = trunc i64 %672 to i32
  %690 = add i64 %634, 22
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %688 to i32*
  store i32 %689, i32* %691, align 4
  %692 = load i64, i64* %RBP.i, align 8
  %693 = add i64 %692, -16
  %694 = load i64, i64* %3, align 8
  %695 = add i64 %694, 4
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %693 to i64*
  %697 = load i64, i64* %696, align 8
  store i64 %697, i64* %RSI.i814, align 8
  %698 = add i64 %697, 24
  %699 = add i64 %694, 8
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  store i8 0, i8* %14, align 1
  %702 = and i32 %701, 255
  %703 = tail call i32 @llvm.ctpop.i32(i32 %702)
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = xor i8 %705, 1
  store i8 %706, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %707 = icmp eq i32 %701, 0
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %29, align 1
  %709 = lshr i32 %701, 31
  %710 = trunc i32 %709 to i8
  store i8 %710, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v157 = select i1 %707, i64 14, i64 82
  %711 = add i64 %694, %.v157
  store i64 %711, i64* %3, align 8
  br i1 %707, label %block_40688c, label %block_.L_4068d0

block_40688c:                                     ; preds = %routine_shrl__cl___edi.exit1837
  %712 = add i64 %711, 4
  store i64 %712, i64* %3, align 8
  %713 = load i64, i64* %696, align 8
  store i64 %713, i64* %RAX.i858, align 8
  %714 = add i64 %713, 28
  %715 = add i64 %711, 8
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  %717 = load i32, i32* %716, align 4
  %718 = sext i32 %717 to i64
  store i64 %718, i64* %RAX.i858, align 8
  %719 = shl nsw i64 %718, 2
  %720 = add nsw i64 %719, 6391152
  %721 = add i64 %711, 15
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i32*
  %723 = load i32, i32* %722, align 4
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %RCX.i723, align 8
  %725 = add i64 %711, 19
  store i64 %725, i64* %3, align 8
  %726 = load i64, i64* %696, align 8
  store i64 %726, i64* %RAX.i858, align 8
  %727 = add i64 %726, 24
  %728 = add i64 %711, 22
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  store i32 %723, i32* %729, align 4
  %730 = load i64, i64* %RBP.i, align 8
  %731 = add i64 %730, -16
  %732 = load i64, i64* %3, align 8
  %733 = add i64 %732, 4
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %731 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %RAX.i858, align 8
  %736 = add i64 %735, 28
  %737 = add i64 %732, 7
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i32*
  %739 = load i32, i32* %738, align 4
  %740 = add i32 %739, 1
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RCX.i723, align 8
  %742 = icmp eq i32 %739, -1
  %743 = icmp eq i32 %740, 0
  %744 = or i1 %742, %743
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %14, align 1
  %746 = and i32 %740, 255
  %747 = tail call i32 @llvm.ctpop.i32(i32 %746)
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = xor i8 %749, 1
  store i8 %750, i8* %21, align 1
  %751 = xor i32 %740, %739
  %752 = lshr i32 %751, 4
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  store i8 %754, i8* %26, align 1
  %755 = zext i1 %743 to i8
  store i8 %755, i8* %29, align 1
  %756 = lshr i32 %740, 31
  %757 = trunc i32 %756 to i8
  store i8 %757, i8* %32, align 1
  %758 = lshr i32 %739, 31
  %759 = xor i32 %756, %758
  %760 = add nuw nsw i32 %759, %756
  %761 = icmp eq i32 %760, 2
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %38, align 1
  %763 = add i64 %732, 13
  store i64 %763, i64* %3, align 8
  store i32 %740, i32* %738, align 4
  %764 = load i64, i64* %RBP.i, align 8
  %765 = add i64 %764, -16
  %766 = load i64, i64* %3, align 8
  %767 = add i64 %766, 4
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %765 to i64*
  %769 = load i64, i64* %768, align 8
  store i64 %769, i64* %RAX.i858, align 8
  %770 = add i64 %769, 28
  %771 = add i64 %766, 11
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = add i32 %773, -512
  %775 = icmp ult i32 %773, 512
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %14, align 1
  %777 = and i32 %774, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %21, align 1
  %782 = xor i32 %774, %773
  %783 = lshr i32 %782, 4
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %26, align 1
  %786 = icmp eq i32 %774, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %29, align 1
  %788 = lshr i32 %774, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %32, align 1
  %790 = lshr i32 %773, 31
  %791 = xor i32 %788, %790
  %792 = add nuw nsw i32 %791, %790
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %38, align 1
  %.v172 = select i1 %786, i64 17, i64 28
  %795 = add i64 %766, %.v172
  store i64 %795, i64* %3, align 8
  br i1 %786, label %block_4068c0, label %block_.L_4068cb

block_4068c0:                                     ; preds = %block_40688c
  %796 = add i64 %795, 4
  store i64 %796, i64* %3, align 8
  %797 = load i64, i64* %768, align 8
  store i64 %797, i64* %RAX.i858, align 8
  %798 = add i64 %797, 28
  %799 = add i64 %795, 11
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i32*
  store i32 0, i32* %800, align 4
  %.pre = load i64, i64* %3, align 8
  %.pre128.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_4068cb

block_.L_4068cb:                                  ; preds = %block_40688c, %block_4068c0
  %.pre128 = phi i64 [ %.pre128.pre, %block_4068c0 ], [ %764, %block_40688c ]
  %801 = phi i64 [ %.pre, %block_4068c0 ], [ %795, %block_40688c ]
  %802 = add i64 %801, 5
  store i64 %802, i64* %3, align 8
  br label %block_.L_4068d0

block_.L_4068d0:                                  ; preds = %routine_shrl__cl___edi.exit1837, %block_.L_4068cb
  %803 = phi i64 [ %.pre128, %block_.L_4068cb ], [ %692, %routine_shrl__cl___edi.exit1837 ]
  %804 = phi i64 [ %802, %block_.L_4068cb ], [ %711, %routine_shrl__cl___edi.exit1837 ]
  store i64 0, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1, i64* %RCX.i723, align 8
  %805 = add i64 %803, -16
  %806 = add i64 %804, 11
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i64*
  %808 = load i64, i64* %807, align 8
  store i64 %808, i64* %RDX.i822, align 8
  %809 = add i64 %808, 24
  %810 = add i64 %804, 14
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i32*
  %812 = load i32, i32* %811, align 4
  %813 = add i32 %812, -1
  %814 = zext i32 %813 to i64
  store i64 %814, i64* %RSI.i814, align 8
  %815 = icmp ne i32 %812, 0
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %14, align 1
  %817 = and i32 %813, 255
  %818 = tail call i32 @llvm.ctpop.i32(i32 %817)
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  store i8 %821, i8* %21, align 1
  %822 = xor i32 %812, 16
  %823 = xor i32 %822, %813
  %824 = lshr i32 %823, 4
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  store i8 %826, i8* %26, align 1
  %827 = icmp eq i32 %813, 0
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %29, align 1
  %829 = lshr i32 %813, 31
  %830 = trunc i32 %829 to i8
  store i8 %830, i8* %32, align 1
  %831 = lshr i32 %812, 31
  %832 = xor i32 %829, %831
  %833 = xor i32 %829, 1
  %834 = add nuw nsw i32 %832, %833
  %835 = icmp eq i32 %834, 2
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %38, align 1
  %837 = add i64 %804, 20
  store i64 %837, i64* %3, align 8
  store i32 %813, i32* %811, align 4
  %838 = load i64, i64* %RBP.i, align 8
  %839 = add i64 %838, -16
  %840 = load i64, i64* %3, align 8
  %841 = add i64 %840, 4
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %839 to i64*
  %843 = load i64, i64* %842, align 8
  store i64 %843, i64* %RDX.i822, align 8
  %844 = add i64 %843, 24
  %845 = add i64 %840, 8
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = add i32 %847, -1
  %849 = icmp eq i32 %847, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %14, align 1
  %851 = and i32 %848, 255
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %21, align 1
  %856 = xor i32 %848, %847
  %857 = lshr i32 %856, 4
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  store i8 %859, i8* %26, align 1
  %860 = icmp eq i32 %848, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %29, align 1
  %862 = lshr i32 %848, 31
  %863 = trunc i32 %862 to i8
  store i8 %863, i8* %32, align 1
  %864 = lshr i32 %847, 31
  %865 = xor i32 %862, %864
  %866 = add nuw nsw i32 %865, %864
  %867 = icmp eq i32 %866, 2
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %38, align 1
  %869 = load i32, i32* %ECX.i717, align 4
  %870 = zext i32 %869 to i64
  %871 = load i64, i64* %RAX.i858, align 8
  %872 = select i1 %860, i64 %870, i64 %871
  %873 = and i64 %872, 4294967295
  store i64 %873, i64* %RAX.i858, align 8
  %874 = add i64 %838, -17
  %875 = add i64 %840, 15
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i8*
  %877 = load i8, i8* %876, align 1
  %878 = zext i8 %877 to i64
  %879 = and i64 %872, 4294967295
  %880 = xor i64 %879, %878
  %881 = trunc i64 %880 to i32
  store i64 %880, i64* %RCX.i723, align 8
  store i8 0, i8* %14, align 1
  %882 = and i32 %881, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %21, align 1
  %887 = icmp eq i32 %881, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %29, align 1
  %889 = lshr i32 %881, 31
  %890 = trunc i32 %889 to i8
  store i8 %890, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %891 = trunc i64 %880 to i8
  store i8 %891, i8* %DIL.i1747, align 1
  %892 = add i64 %840, 24
  store i64 %892, i64* %3, align 8
  store i8 %891, i8* %876, align 1
  %893 = load i64, i64* %RBP.i, align 8
  %894 = add i64 %893, -16
  %895 = load i64, i64* %3, align 8
  %896 = add i64 %895, 4
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %894 to i64*
  %898 = load i64, i64* %897, align 8
  store i64 %898, i64* %RDX.i822, align 8
  %899 = add i64 %898, 1092
  %900 = add i64 %895, 10
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = add i32 %902, 1
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RAX.i858, align 8
  %905 = icmp eq i32 %902, -1
  %906 = icmp eq i32 %903, 0
  %907 = or i1 %905, %906
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %14, align 1
  %909 = and i32 %903, 255
  %910 = tail call i32 @llvm.ctpop.i32(i32 %909)
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = xor i8 %912, 1
  store i8 %913, i8* %21, align 1
  %914 = xor i32 %903, %902
  %915 = lshr i32 %914, 4
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %26, align 1
  %918 = zext i1 %906 to i8
  store i8 %918, i8* %29, align 1
  %919 = lshr i32 %903, 31
  %920 = trunc i32 %919 to i8
  store i8 %920, i8* %32, align 1
  %921 = lshr i32 %902, 31
  %922 = xor i32 %919, %921
  %923 = add nuw nsw i32 %922, %919
  %924 = icmp eq i32 %923, 2
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %38, align 1
  %926 = add i64 %895, 19
  store i64 %926, i64* %3, align 8
  store i32 %903, i32* %901, align 4
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -16
  %929 = load i64, i64* %3, align 8
  %930 = add i64 %929, 4
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %928 to i64*
  %932 = load i64, i64* %931, align 8
  store i64 %932, i64* %RDX.i822, align 8
  %933 = add i64 %932, 1092
  %934 = add i64 %929, 10
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RAX.i858, align 8
  %938 = add i64 %929, 14
  store i64 %938, i64* %3, align 8
  %939 = load i64, i64* %931, align 8
  store i64 %939, i64* %RDX.i822, align 8
  %940 = add i64 %939, 64080
  %941 = add i64 %929, 20
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i32*
  %943 = load i32, i32* %942, align 4
  %944 = add i32 %943, 1
  %945 = zext i32 %944 to i64
  store i64 %945, i64* %RCX.i723, align 8
  %946 = lshr i32 %944, 31
  %947 = sub i32 %936, %944
  %948 = icmp ult i32 %936, %944
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %14, align 1
  %950 = and i32 %947, 255
  %951 = tail call i32 @llvm.ctpop.i32(i32 %950)
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  %954 = xor i8 %953, 1
  store i8 %954, i8* %21, align 1
  %955 = xor i32 %944, %936
  %956 = xor i32 %955, %947
  %957 = lshr i32 %956, 4
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  store i8 %959, i8* %26, align 1
  %960 = icmp eq i32 %947, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %29, align 1
  %962 = lshr i32 %947, 31
  %963 = trunc i32 %962 to i8
  store i8 %963, i8* %32, align 1
  %964 = lshr i32 %936, 31
  %965 = xor i32 %946, %964
  %966 = xor i32 %962, %964
  %967 = add nuw nsw i32 %966, %965
  %968 = icmp eq i32 %967, 2
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %38, align 1
  %.v158 = select i1 %960, i64 31, i64 36
  %970 = add i64 %929, %.v158
  store i64 %970, i64* %3, align 8
  br i1 %960, label %block_.L_4066af.sink.split, label %block_.L_406933

block_.L_406933:                                  ; preds = %block_.L_4068d0
  %971 = add i64 %927, -17
  %972 = add i64 %970, 4
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i8*
  %974 = load i8, i8* %973, align 1
  %975 = zext i8 %974 to i64
  store i64 %975, i64* %RAX.i858, align 8
  %976 = add i64 %970, 8
  store i64 %976, i64* %3, align 8
  %977 = load i64, i64* %931, align 8
  store i64 %977, i64* %RCX.i723, align 8
  %978 = zext i8 %974 to i32
  %979 = add i64 %977, 64
  %980 = add i64 %970, 11
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = sub i32 %978, %982
  %984 = icmp ult i32 %978, %982
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %14, align 1
  %986 = and i32 %983, 255
  %987 = tail call i32 @llvm.ctpop.i32(i32 %986)
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = xor i8 %989, 1
  store i8 %990, i8* %21, align 1
  %991 = xor i32 %982, %978
  %992 = xor i32 %991, %983
  %993 = lshr i32 %992, 4
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  store i8 %995, i8* %26, align 1
  %996 = icmp eq i32 %983, 0
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %29, align 1
  %998 = lshr i32 %983, 31
  %999 = trunc i32 %998 to i8
  store i8 %999, i8* %32, align 1
  %1000 = lshr i32 %982, 31
  %1001 = add nuw nsw i32 %998, %1000
  %1002 = icmp eq i32 %1001, 2
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %38, align 1
  %.v159 = select i1 %996, i64 33, i64 17
  %1004 = add i64 %970, %.v159
  %1005 = add i64 %1004, 4
  store i64 %1005, i64* %3, align 8
  br i1 %996, label %block_.L_406954, label %block_406944

block_406944:                                     ; preds = %block_.L_406933
  %1006 = load i8, i8* %973, align 1
  %1007 = zext i8 %1006 to i64
  store i64 %1007, i64* %RAX.i858, align 8
  %1008 = add i64 %1004, 8
  store i64 %1008, i64* %3, align 8
  %1009 = load i64, i64* %931, align 8
  store i64 %1009, i64* %RCX.i723, align 8
  %1010 = add i64 %1009, 64
  %1011 = zext i8 %1006 to i32
  %1012 = add i64 %1004, 11
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1010 to i32*
  store i32 %1011, i32* %1013, align 4
  br label %block_.L_4066af.sink.split

block_.L_406954:                                  ; preds = %block_.L_406933
  %1014 = load i64, i64* %931, align 8
  store i64 %1014, i64* %RAX.i858, align 8
  %1015 = add i64 %1014, 16
  %1016 = add i64 %1004, 11
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  store i32 2, i32* %1017, align 4
  %1018 = load i64, i64* %RBP.i, align 8
  %1019 = add i64 %1018, -16
  %1020 = load i64, i64* %3, align 8
  %1021 = add i64 %1020, 4
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1019 to i64*
  %1023 = load i64, i64* %1022, align 8
  store i64 %1023, i64* %RAX.i858, align 8
  %1024 = add i64 %1023, 60
  %1025 = add i64 %1020, 7
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  %1027 = load i32, i32* %1026, align 4
  %1028 = zext i32 %1027 to i64
  store i64 %1028, i64* %RDI.i2136, align 8
  %1029 = add i64 %1020, 11
  store i64 %1029, i64* %3, align 8
  %1030 = load i64, i64* %1022, align 8
  %1031 = add i64 %1030, 1096
  store i64 %1031, i64* %RAX.i858, align 8
  %1032 = icmp ugt i64 %1030, -1097
  %1033 = zext i1 %1032 to i8
  store i8 %1033, i8* %14, align 1
  %1034 = trunc i64 %1031 to i32
  %1035 = and i32 %1034, 255
  %1036 = tail call i32 @llvm.ctpop.i32(i32 %1035)
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = xor i8 %1038, 1
  store i8 %1039, i8* %21, align 1
  %1040 = xor i64 %1031, %1030
  %1041 = lshr i64 %1040, 4
  %1042 = trunc i64 %1041 to i8
  %1043 = and i8 %1042, 1
  store i8 %1043, i8* %26, align 1
  %1044 = icmp eq i64 %1031, 0
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %29, align 1
  %1046 = lshr i64 %1031, 63
  %1047 = trunc i64 %1046 to i8
  store i8 %1047, i8* %32, align 1
  %1048 = lshr i64 %1030, 63
  %1049 = xor i64 %1046, %1048
  %1050 = add nuw nsw i64 %1049, %1046
  %1051 = icmp eq i64 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %38, align 1
  store i64 %1031, i64* %RSI.i814, align 8
  %1053 = add i64 %1020, -1551
  %1054 = add i64 %1020, 25
  %1055 = load i64, i64* %6, align 8
  %1056 = add i64 %1055, -8
  %1057 = inttoptr i64 %1056 to i64*
  store i64 %1054, i64* %1057, align 8
  store i64 %1056, i64* %6, align 8
  store i64 %1053, i64* %3, align 8
  %call2_406973 = tail call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* nonnull %0, i64 %1053, %struct.Memory* %2)
  %1058 = load i8, i8* %AL.i1902, align 1
  %1059 = load i64, i64* %3, align 8
  store i8 %1058, i8* %CL.i837, align 1
  %1060 = load i64, i64* %RBP.i, align 8
  %1061 = add i64 %1060, -17
  %1062 = add i64 %1059, 5
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i8*
  store i8 %1058, i8* %1063, align 1
  %1064 = load i64, i64* %RBP.i, align 8
  %1065 = add i64 %1064, -16
  %1066 = load i64, i64* %3, align 8
  %1067 = add i64 %1066, 4
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1065 to i64*
  %1069 = load i64, i64* %1068, align 8
  store i64 %1069, i64* %RSI.i814, align 8
  %1070 = add i64 %1069, 3160
  %1071 = add i64 %1066, 11
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i64*
  %1073 = load i64, i64* %1072, align 8
  store i64 %1073, i64* %RSI.i814, align 8
  %1074 = add i64 %1066, 15
  store i64 %1074, i64* %3, align 8
  %1075 = load i64, i64* %1068, align 8
  store i64 %1075, i64* %RDX.i822, align 8
  %1076 = add i64 %1075, 60
  %1077 = add i64 %1066, 18
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i32*
  %1079 = load i32, i32* %1078, align 4
  %1080 = zext i32 %1079 to i64
  store i64 %1080, i64* %RAX.i858, align 8
  store i64 %1080, i64* %RDX.i822, align 8
  %1081 = shl nuw nsw i64 %1080, 1
  %1082 = add i64 %1073, %1081
  %1083 = add i64 %1066, 24
  store i64 %1083, i64* %3, align 8
  %1084 = inttoptr i64 %1082 to i16*
  %1085 = load i16, i16* %1084, align 2
  %1086 = zext i16 %1085 to i64
  store i64 %1086, i64* %RAX.i858, align 8
  %1087 = add i64 %1066, 28
  store i64 %1087, i64* %3, align 8
  %1088 = load i64, i64* %1068, align 8
  store i64 %1088, i64* %RDX.i822, align 8
  %1089 = add i64 %1088, 3168
  %1090 = add i64 %1066, 35
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i64*
  %1092 = load i64, i64* %1091, align 8
  store i64 %1092, i64* %RDX.i822, align 8
  %1093 = add i64 %1066, 39
  store i64 %1093, i64* %3, align 8
  %1094 = load i64, i64* %1068, align 8
  store i64 %1094, i64* %RSI.i814, align 8
  %1095 = add i64 %1094, 60
  %1096 = add i64 %1066, 42
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = lshr i32 %1098, 31
  %1100 = trunc i32 %1099 to i8
  %1101 = trunc i32 %1098 to i8
  %1102 = and i8 %1101, 1
  %1103 = lshr i32 %1098, 1
  %1104 = zext i32 %1103 to i64
  store i8 %1102, i8* %14, align 1
  %1105 = and i32 %1103, 255
  %1106 = tail call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  store i8 %1109, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1110 = icmp eq i32 %1103, 0
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %1100, i8* %38, align 1
  store i64 %1104, i64* %RDI.i2136, align 8
  store i64 %1104, i64* %RSI.i814, align 8
  %1112 = add i64 %1092, %1104
  %1113 = add i64 %1066, 52
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i8*
  %1115 = load i8, i8* %1114, align 1
  %1116 = zext i8 %1115 to i64
  store i64 %1116, i64* %RDI.i2136, align 8
  %1117 = add i64 %1066, 56
  store i64 %1117, i64* %3, align 8
  %1118 = load i64, i64* %1068, align 8
  store i64 %1118, i64* %RDX.i822, align 8
  %1119 = add i64 %1118, 60
  %1120 = add i64 %1066, 60
  store i64 %1120, i64* %3, align 8
  %1121 = inttoptr i64 %1119 to i32*
  %1122 = load i32, i32* %1121, align 4
  %1123 = shl i32 %1122, 2
  %1124 = and i32 %1123, 4
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %R8.i1892, align 8
  store i8 0, i8* %14, align 1
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1127 = trunc i32 %1126 to i8
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %21, align 1
  %.lobit36 = lshr exact i32 %1124, 2
  %1129 = trunc i32 %.lobit36 to i8
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %1125, i64* %RCX.i723, align 8
  %1131 = add i64 %1066, 73
  store i64 %1131, i64* %3, align 8
  %trunc = trunc i32 %1123 to i3
  %cond = icmp eq i3 %trunc, 0
  br i1 %cond, label %routine_shrl__cl___edi.exit1611, label %1132

; <label>:1132:                                   ; preds = %block_.L_406954
  %1133 = zext i32 %1124 to i64
  %1134 = add nuw nsw i64 %1133, 4294967295
  %1135 = and i64 %1134, 4294967295
  %1136 = lshr i64 %1116, %1135
  %1137 = trunc i64 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = lshr i64 %1136, 1
  %1140 = trunc i64 %1139 to i32
  %1141 = and i32 %1140, 2147483647
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RDI.i2136, align 8
  store i8 %1138, i8* %14, align 1
  %1143 = and i32 %1140, 255
  %1144 = tail call i32 @llvm.ctpop.i32(i32 %1143)
  %1145 = trunc i32 %1144 to i8
  %1146 = and i8 %1145, 1
  %1147 = xor i8 %1146, 1
  store i8 %1147, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1148 = icmp eq i32 %1141, 0
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shrl__cl___edi.exit1611

routine_shrl__cl___edi.exit1611:                  ; preds = %block_.L_406954, %1132
  %1150 = phi i64 [ %1142, %1132 ], [ %1116, %block_.L_406954 ]
  %1151 = shl nuw nsw i64 %1150, 16
  %1152 = and i64 %1151, 983040
  store i64 %1152, i64* %RDI.i2136, align 8
  %1153 = load i64, i64* %RAX.i858, align 8
  %1154 = or i64 %1152, %1153
  %1155 = trunc i64 %1154 to i32
  %1156 = and i64 %1154, 4294967295
  store i64 %1156, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %1157 = and i32 %1155, 255
  %1158 = tail call i32 @llvm.ctpop.i32(i32 %1157)
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = xor i8 %1160, 1
  store i8 %1161, i8* %21, align 1
  %1162 = icmp eq i32 %1155, 0
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %29, align 1
  %1164 = lshr i32 %1155, 31
  %1165 = trunc i32 %1164 to i8
  store i8 %1165, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1166 = load i64, i64* %RBP.i, align 8
  %1167 = add i64 %1166, -16
  %1168 = add i64 %1066, 85
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i64*
  %1170 = load i64, i64* %1169, align 8
  store i64 %1170, i64* %RDX.i822, align 8
  %1171 = add i64 %1170, 60
  %1172 = trunc i64 %1154 to i32
  %1173 = add i64 %1066, 88
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1171 to i32*
  store i32 %1172, i32* %1174, align 4
  %1175 = load i64, i64* %RBP.i, align 8
  %1176 = add i64 %1175, -16
  %1177 = load i64, i64* %3, align 8
  %1178 = add i64 %1177, 4
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1176 to i64*
  %1180 = load i64, i64* %1179, align 8
  store i64 %1180, i64* %RDX.i822, align 8
  %1181 = add i64 %1180, 24
  %1182 = add i64 %1177, 8
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  store i8 0, i8* %14, align 1
  %1185 = and i32 %1184, 255
  %1186 = tail call i32 @llvm.ctpop.i32(i32 %1185)
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  %1189 = xor i8 %1188, 1
  store i8 %1189, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1190 = icmp eq i32 %1184, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %29, align 1
  %1192 = lshr i32 %1184, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v160 = select i1 %1190, i64 14, i64 82
  %1194 = add i64 %1177, %.v160
  store i64 %1194, i64* %3, align 8
  br i1 %1190, label %block_4069e4, label %block_.L_406a28

block_4069e4:                                     ; preds = %routine_shrl__cl___edi.exit1611
  %1195 = add i64 %1194, 4
  store i64 %1195, i64* %3, align 8
  %1196 = load i64, i64* %1179, align 8
  store i64 %1196, i64* %RAX.i858, align 8
  %1197 = add i64 %1196, 28
  %1198 = add i64 %1194, 8
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i32*
  %1200 = load i32, i32* %1199, align 4
  %1201 = sext i32 %1200 to i64
  store i64 %1201, i64* %RAX.i858, align 8
  %1202 = shl nsw i64 %1201, 2
  %1203 = add nsw i64 %1202, 6391152
  %1204 = add i64 %1194, 15
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i32*
  %1206 = load i32, i32* %1205, align 4
  %1207 = zext i32 %1206 to i64
  store i64 %1207, i64* %RCX.i723, align 8
  %1208 = add i64 %1194, 19
  store i64 %1208, i64* %3, align 8
  %1209 = load i64, i64* %1179, align 8
  store i64 %1209, i64* %RAX.i858, align 8
  %1210 = add i64 %1209, 24
  %1211 = add i64 %1194, 22
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  store i32 %1206, i32* %1212, align 4
  %1213 = load i64, i64* %RBP.i, align 8
  %1214 = add i64 %1213, -16
  %1215 = load i64, i64* %3, align 8
  %1216 = add i64 %1215, 4
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1214 to i64*
  %1218 = load i64, i64* %1217, align 8
  store i64 %1218, i64* %RAX.i858, align 8
  %1219 = add i64 %1218, 28
  %1220 = add i64 %1215, 7
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = add i32 %1222, 1
  %1224 = zext i32 %1223 to i64
  store i64 %1224, i64* %RCX.i723, align 8
  %1225 = icmp eq i32 %1222, -1
  %1226 = icmp eq i32 %1223, 0
  %1227 = or i1 %1225, %1226
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %14, align 1
  %1229 = and i32 %1223, 255
  %1230 = tail call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  store i8 %1233, i8* %21, align 1
  %1234 = xor i32 %1223, %1222
  %1235 = lshr i32 %1234, 4
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  store i8 %1237, i8* %26, align 1
  %1238 = zext i1 %1226 to i8
  store i8 %1238, i8* %29, align 1
  %1239 = lshr i32 %1223, 31
  %1240 = trunc i32 %1239 to i8
  store i8 %1240, i8* %32, align 1
  %1241 = lshr i32 %1222, 31
  %1242 = xor i32 %1239, %1241
  %1243 = add nuw nsw i32 %1242, %1239
  %1244 = icmp eq i32 %1243, 2
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %38, align 1
  %1246 = add i64 %1215, 13
  store i64 %1246, i64* %3, align 8
  store i32 %1223, i32* %1221, align 4
  %1247 = load i64, i64* %RBP.i, align 8
  %1248 = add i64 %1247, -16
  %1249 = load i64, i64* %3, align 8
  %1250 = add i64 %1249, 4
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1248 to i64*
  %1252 = load i64, i64* %1251, align 8
  store i64 %1252, i64* %RAX.i858, align 8
  %1253 = add i64 %1252, 28
  %1254 = add i64 %1249, 11
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  %1257 = add i32 %1256, -512
  %1258 = icmp ult i32 %1256, 512
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %14, align 1
  %1260 = and i32 %1257, 255
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %21, align 1
  %1265 = xor i32 %1257, %1256
  %1266 = lshr i32 %1265, 4
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  store i8 %1268, i8* %26, align 1
  %1269 = icmp eq i32 %1257, 0
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %29, align 1
  %1271 = lshr i32 %1257, 31
  %1272 = trunc i32 %1271 to i8
  store i8 %1272, i8* %32, align 1
  %1273 = lshr i32 %1256, 31
  %1274 = xor i32 %1271, %1273
  %1275 = add nuw nsw i32 %1274, %1273
  %1276 = icmp eq i32 %1275, 2
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %38, align 1
  %.v171 = select i1 %1269, i64 17, i64 28
  %1278 = add i64 %1249, %.v171
  store i64 %1278, i64* %3, align 8
  br i1 %1269, label %block_406a18, label %block_.L_406a23

block_406a18:                                     ; preds = %block_4069e4
  %1279 = add i64 %1278, 4
  store i64 %1279, i64* %3, align 8
  %1280 = load i64, i64* %1251, align 8
  store i64 %1280, i64* %RAX.i858, align 8
  %1281 = add i64 %1280, 28
  %1282 = add i64 %1278, 11
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  store i32 0, i32* %1283, align 4
  %.pre129 = load i64, i64* %3, align 8
  %.pre130.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_406a23

block_.L_406a23:                                  ; preds = %block_4069e4, %block_406a18
  %.pre130 = phi i64 [ %.pre130.pre, %block_406a18 ], [ %1247, %block_4069e4 ]
  %1284 = phi i64 [ %.pre129, %block_406a18 ], [ %1278, %block_4069e4 ]
  %1285 = add i64 %1284, 5
  store i64 %1285, i64* %3, align 8
  br label %block_.L_406a28

block_.L_406a28:                                  ; preds = %routine_shrl__cl___edi.exit1611, %block_.L_406a23
  %1286 = phi i64 [ %.pre130, %block_.L_406a23 ], [ %1175, %routine_shrl__cl___edi.exit1611 ]
  %1287 = phi i64 [ %1285, %block_.L_406a23 ], [ %1194, %routine_shrl__cl___edi.exit1611 ]
  store i64 0, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1, i64* %RCX.i723, align 8
  %1288 = add i64 %1286, -16
  %1289 = add i64 %1287, 11
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i64*
  %1291 = load i64, i64* %1290, align 8
  store i64 %1291, i64* %RDX.i822, align 8
  %1292 = add i64 %1291, 24
  %1293 = add i64 %1287, 14
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  %1295 = load i32, i32* %1294, align 4
  %1296 = add i32 %1295, -1
  %1297 = zext i32 %1296 to i64
  store i64 %1297, i64* %RSI.i814, align 8
  %1298 = icmp ne i32 %1295, 0
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %14, align 1
  %1300 = and i32 %1296, 255
  %1301 = tail call i32 @llvm.ctpop.i32(i32 %1300)
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  %1304 = xor i8 %1303, 1
  store i8 %1304, i8* %21, align 1
  %1305 = xor i32 %1295, 16
  %1306 = xor i32 %1305, %1296
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  store i8 %1309, i8* %26, align 1
  %1310 = icmp eq i32 %1296, 0
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %29, align 1
  %1312 = lshr i32 %1296, 31
  %1313 = trunc i32 %1312 to i8
  store i8 %1313, i8* %32, align 1
  %1314 = lshr i32 %1295, 31
  %1315 = xor i32 %1312, %1314
  %1316 = xor i32 %1312, 1
  %1317 = add nuw nsw i32 %1315, %1316
  %1318 = icmp eq i32 %1317, 2
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %38, align 1
  %1320 = add i64 %1287, 20
  store i64 %1320, i64* %3, align 8
  store i32 %1296, i32* %1294, align 4
  %1321 = load i64, i64* %RBP.i, align 8
  %1322 = add i64 %1321, -16
  %1323 = load i64, i64* %3, align 8
  %1324 = add i64 %1323, 4
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1322 to i64*
  %1326 = load i64, i64* %1325, align 8
  store i64 %1326, i64* %RDX.i822, align 8
  %1327 = add i64 %1326, 24
  %1328 = add i64 %1323, 8
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i32*
  %1330 = load i32, i32* %1329, align 4
  %1331 = add i32 %1330, -1
  %1332 = icmp eq i32 %1330, 0
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %14, align 1
  %1334 = and i32 %1331, 255
  %1335 = tail call i32 @llvm.ctpop.i32(i32 %1334)
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = xor i8 %1337, 1
  store i8 %1338, i8* %21, align 1
  %1339 = xor i32 %1331, %1330
  %1340 = lshr i32 %1339, 4
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  store i8 %1342, i8* %26, align 1
  %1343 = icmp eq i32 %1331, 0
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %29, align 1
  %1345 = lshr i32 %1331, 31
  %1346 = trunc i32 %1345 to i8
  store i8 %1346, i8* %32, align 1
  %1347 = lshr i32 %1330, 31
  %1348 = xor i32 %1345, %1347
  %1349 = add nuw nsw i32 %1348, %1347
  %1350 = icmp eq i32 %1349, 2
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %38, align 1
  %1352 = load i32, i32* %ECX.i717, align 4
  %1353 = zext i32 %1352 to i64
  %1354 = load i64, i64* %RAX.i858, align 8
  %1355 = select i1 %1343, i64 %1353, i64 %1354
  %1356 = and i64 %1355, 4294967295
  store i64 %1356, i64* %RAX.i858, align 8
  %1357 = add i64 %1321, -17
  %1358 = add i64 %1323, 15
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i8*
  %1360 = load i8, i8* %1359, align 1
  %1361 = zext i8 %1360 to i64
  %1362 = and i64 %1355, 4294967295
  %1363 = xor i64 %1362, %1361
  %1364 = trunc i64 %1363 to i32
  store i64 %1363, i64* %RCX.i723, align 8
  store i8 0, i8* %14, align 1
  %1365 = and i32 %1364, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365)
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %21, align 1
  %1370 = icmp eq i32 %1364, 0
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %29, align 1
  %1372 = lshr i32 %1364, 31
  %1373 = trunc i32 %1372 to i8
  store i8 %1373, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1374 = trunc i64 %1363 to i8
  store i8 %1374, i8* %DIL.i1747, align 1
  %1375 = add i64 %1323, 24
  store i64 %1375, i64* %3, align 8
  store i8 %1374, i8* %1359, align 1
  %1376 = load i64, i64* %RBP.i, align 8
  %1377 = add i64 %1376, -16
  %1378 = load i64, i64* %3, align 8
  %1379 = add i64 %1378, 4
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1377 to i64*
  %1381 = load i64, i64* %1380, align 8
  store i64 %1381, i64* %RDX.i822, align 8
  %1382 = add i64 %1381, 1092
  %1383 = add i64 %1378, 10
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = add i32 %1385, 1
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RAX.i858, align 8
  %1388 = icmp eq i32 %1385, -1
  %1389 = icmp eq i32 %1386, 0
  %1390 = or i1 %1388, %1389
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %14, align 1
  %1392 = and i32 %1386, 255
  %1393 = tail call i32 @llvm.ctpop.i32(i32 %1392)
  %1394 = trunc i32 %1393 to i8
  %1395 = and i8 %1394, 1
  %1396 = xor i8 %1395, 1
  store i8 %1396, i8* %21, align 1
  %1397 = xor i32 %1386, %1385
  %1398 = lshr i32 %1397, 4
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  store i8 %1400, i8* %26, align 1
  %1401 = zext i1 %1389 to i8
  store i8 %1401, i8* %29, align 1
  %1402 = lshr i32 %1386, 31
  %1403 = trunc i32 %1402 to i8
  store i8 %1403, i8* %32, align 1
  %1404 = lshr i32 %1385, 31
  %1405 = xor i32 %1402, %1404
  %1406 = add nuw nsw i32 %1405, %1402
  %1407 = icmp eq i32 %1406, 2
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %38, align 1
  %1409 = add i64 %1378, 19
  store i64 %1409, i64* %3, align 8
  store i32 %1386, i32* %1384, align 4
  %1410 = load i64, i64* %RBP.i, align 8
  %1411 = add i64 %1410, -16
  %1412 = load i64, i64* %3, align 8
  %1413 = add i64 %1412, 4
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1411 to i64*
  %1415 = load i64, i64* %1414, align 8
  store i64 %1415, i64* %RDX.i822, align 8
  %1416 = add i64 %1415, 1092
  %1417 = add i64 %1412, 10
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i32*
  %1419 = load i32, i32* %1418, align 4
  %1420 = zext i32 %1419 to i64
  store i64 %1420, i64* %RAX.i858, align 8
  %1421 = add i64 %1412, 14
  store i64 %1421, i64* %3, align 8
  %1422 = load i64, i64* %1414, align 8
  store i64 %1422, i64* %RDX.i822, align 8
  %1423 = add i64 %1422, 64080
  %1424 = add i64 %1412, 20
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i32*
  %1426 = load i32, i32* %1425, align 4
  %1427 = add i32 %1426, 1
  %1428 = zext i32 %1427 to i64
  store i64 %1428, i64* %RCX.i723, align 8
  %1429 = lshr i32 %1427, 31
  %1430 = sub i32 %1419, %1427
  %1431 = icmp ult i32 %1419, %1427
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %14, align 1
  %1433 = and i32 %1430, 255
  %1434 = tail call i32 @llvm.ctpop.i32(i32 %1433)
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = xor i8 %1436, 1
  store i8 %1437, i8* %21, align 1
  %1438 = xor i32 %1427, %1419
  %1439 = xor i32 %1438, %1430
  %1440 = lshr i32 %1439, 4
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  store i8 %1442, i8* %26, align 1
  %1443 = icmp eq i32 %1430, 0
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %29, align 1
  %1445 = lshr i32 %1430, 31
  %1446 = trunc i32 %1445 to i8
  store i8 %1446, i8* %32, align 1
  %1447 = lshr i32 %1419, 31
  %1448 = xor i32 %1429, %1447
  %1449 = xor i32 %1445, %1447
  %1450 = add nuw nsw i32 %1449, %1448
  %1451 = icmp eq i32 %1450, 2
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %38, align 1
  %.v161 = select i1 %1443, i64 31, i64 36
  %1453 = add i64 %1412, %.v161
  store i64 %1453, i64* %3, align 8
  br i1 %1443, label %block_.L_4066af.sink.split, label %block_.L_406a8b

block_.L_406a8b:                                  ; preds = %block_.L_406a28
  %1454 = add i64 %1410, -17
  %1455 = add i64 %1453, 4
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i8*
  %1457 = load i8, i8* %1456, align 1
  %1458 = zext i8 %1457 to i64
  store i64 %1458, i64* %RAX.i858, align 8
  %1459 = add i64 %1453, 8
  store i64 %1459, i64* %3, align 8
  %1460 = load i64, i64* %1414, align 8
  store i64 %1460, i64* %RCX.i723, align 8
  %1461 = zext i8 %1457 to i32
  %1462 = add i64 %1460, 64
  %1463 = add i64 %1453, 11
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = sub i32 %1461, %1465
  %1467 = icmp ult i32 %1461, %1465
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %14, align 1
  %1469 = and i32 %1466, 255
  %1470 = tail call i32 @llvm.ctpop.i32(i32 %1469)
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %21, align 1
  %1474 = xor i32 %1465, %1461
  %1475 = xor i32 %1474, %1466
  %1476 = lshr i32 %1475, 4
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  store i8 %1478, i8* %26, align 1
  %1479 = icmp eq i32 %1466, 0
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %29, align 1
  %1481 = lshr i32 %1466, 31
  %1482 = trunc i32 %1481 to i8
  store i8 %1482, i8* %32, align 1
  %1483 = lshr i32 %1465, 31
  %1484 = add nuw nsw i32 %1481, %1483
  %1485 = icmp eq i32 %1484, 2
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %38, align 1
  %.v162 = select i1 %1479, i64 33, i64 17
  %1487 = add i64 %1453, %.v162
  %1488 = add i64 %1487, 4
  store i64 %1488, i64* %3, align 8
  br i1 %1479, label %block_.L_406aac, label %block_406a9c

block_406a9c:                                     ; preds = %block_.L_406a8b
  %1489 = load i8, i8* %1456, align 1
  %1490 = zext i8 %1489 to i64
  store i64 %1490, i64* %RAX.i858, align 8
  %1491 = add i64 %1487, 8
  store i64 %1491, i64* %3, align 8
  %1492 = load i64, i64* %1414, align 8
  store i64 %1492, i64* %RCX.i723, align 8
  %1493 = add i64 %1492, 64
  %1494 = zext i8 %1489 to i32
  %1495 = add i64 %1487, 11
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1493 to i32*
  store i32 %1494, i32* %1496, align 4
  br label %block_.L_4066af.sink.split

block_.L_406aac:                                  ; preds = %block_.L_406a8b
  %1497 = load i64, i64* %1414, align 8
  store i64 %1497, i64* %RAX.i858, align 8
  %1498 = add i64 %1497, 16
  %1499 = add i64 %1487, 11
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i32*
  store i32 3, i32* %1500, align 4
  %1501 = load i64, i64* %RBP.i, align 8
  %1502 = add i64 %1501, -16
  %1503 = load i64, i64* %3, align 8
  %1504 = add i64 %1503, 4
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1502 to i64*
  %1506 = load i64, i64* %1505, align 8
  store i64 %1506, i64* %RAX.i858, align 8
  %1507 = add i64 %1506, 60
  %1508 = add i64 %1503, 7
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i32*
  %1510 = load i32, i32* %1509, align 4
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RDI.i2136, align 8
  %1512 = add i64 %1503, 11
  store i64 %1512, i64* %3, align 8
  %1513 = load i64, i64* %1505, align 8
  %1514 = add i64 %1513, 1096
  store i64 %1514, i64* %RAX.i858, align 8
  %1515 = icmp ugt i64 %1513, -1097
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %14, align 1
  %1517 = trunc i64 %1514 to i32
  %1518 = and i32 %1517, 255
  %1519 = tail call i32 @llvm.ctpop.i32(i32 %1518)
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  %1522 = xor i8 %1521, 1
  store i8 %1522, i8* %21, align 1
  %1523 = xor i64 %1514, %1513
  %1524 = lshr i64 %1523, 4
  %1525 = trunc i64 %1524 to i8
  %1526 = and i8 %1525, 1
  store i8 %1526, i8* %26, align 1
  %1527 = icmp eq i64 %1514, 0
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %29, align 1
  %1529 = lshr i64 %1514, 63
  %1530 = trunc i64 %1529 to i8
  store i8 %1530, i8* %32, align 1
  %1531 = lshr i64 %1513, 63
  %1532 = xor i64 %1529, %1531
  %1533 = add nuw nsw i64 %1532, %1529
  %1534 = icmp eq i64 %1533, 2
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %38, align 1
  store i64 %1514, i64* %RSI.i814, align 8
  %1536 = add i64 %1503, -1895
  %1537 = add i64 %1503, 25
  %1538 = load i64, i64* %6, align 8
  %1539 = add i64 %1538, -8
  %1540 = inttoptr i64 %1539 to i64*
  store i64 %1537, i64* %1540, align 8
  store i64 %1539, i64* %6, align 8
  store i64 %1536, i64* %3, align 8
  %call2_406acb = tail call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* nonnull %0, i64 %1536, %struct.Memory* %2)
  %1541 = load i8, i8* %AL.i1902, align 1
  %1542 = load i64, i64* %3, align 8
  store i8 %1541, i8* %CL.i837, align 1
  %1543 = load i64, i64* %RBP.i, align 8
  %1544 = add i64 %1543, -17
  %1545 = add i64 %1542, 5
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i8*
  store i8 %1541, i8* %1546, align 1
  %1547 = load i64, i64* %RBP.i, align 8
  %1548 = add i64 %1547, -16
  %1549 = load i64, i64* %3, align 8
  %1550 = add i64 %1549, 4
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1548 to i64*
  %1552 = load i64, i64* %1551, align 8
  store i64 %1552, i64* %RSI.i814, align 8
  %1553 = add i64 %1552, 3160
  %1554 = add i64 %1549, 11
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1553 to i64*
  %1556 = load i64, i64* %1555, align 8
  store i64 %1556, i64* %RSI.i814, align 8
  %1557 = add i64 %1549, 15
  store i64 %1557, i64* %3, align 8
  %1558 = load i64, i64* %1551, align 8
  store i64 %1558, i64* %RDX.i822, align 8
  %1559 = add i64 %1558, 60
  %1560 = add i64 %1549, 18
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i32*
  %1562 = load i32, i32* %1561, align 4
  %1563 = zext i32 %1562 to i64
  store i64 %1563, i64* %RAX.i858, align 8
  store i64 %1563, i64* %RDX.i822, align 8
  %1564 = shl nuw nsw i64 %1563, 1
  %1565 = add i64 %1556, %1564
  %1566 = add i64 %1549, 24
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i16*
  %1568 = load i16, i16* %1567, align 2
  %1569 = zext i16 %1568 to i64
  store i64 %1569, i64* %RAX.i858, align 8
  %1570 = add i64 %1549, 28
  store i64 %1570, i64* %3, align 8
  %1571 = load i64, i64* %1551, align 8
  store i64 %1571, i64* %RDX.i822, align 8
  %1572 = add i64 %1571, 3168
  %1573 = add i64 %1549, 35
  store i64 %1573, i64* %3, align 8
  %1574 = inttoptr i64 %1572 to i64*
  %1575 = load i64, i64* %1574, align 8
  store i64 %1575, i64* %RDX.i822, align 8
  %1576 = add i64 %1549, 39
  store i64 %1576, i64* %3, align 8
  %1577 = load i64, i64* %1551, align 8
  store i64 %1577, i64* %RSI.i814, align 8
  %1578 = add i64 %1577, 60
  %1579 = add i64 %1549, 42
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1578 to i32*
  %1581 = load i32, i32* %1580, align 4
  %1582 = lshr i32 %1581, 31
  %1583 = trunc i32 %1582 to i8
  %1584 = trunc i32 %1581 to i8
  %1585 = and i8 %1584, 1
  %1586 = lshr i32 %1581, 1
  %1587 = zext i32 %1586 to i64
  store i8 %1585, i8* %14, align 1
  %1588 = and i32 %1586, 255
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1593 = icmp eq i32 %1586, 0
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %1583, i8* %38, align 1
  store i64 %1587, i64* %RDI.i2136, align 8
  store i64 %1587, i64* %RSI.i814, align 8
  %1595 = add i64 %1575, %1587
  %1596 = add i64 %1549, 52
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1595 to i8*
  %1598 = load i8, i8* %1597, align 1
  %1599 = zext i8 %1598 to i64
  store i64 %1599, i64* %RDI.i2136, align 8
  %1600 = add i64 %1549, 56
  store i64 %1600, i64* %3, align 8
  %1601 = load i64, i64* %1551, align 8
  store i64 %1601, i64* %RDX.i822, align 8
  %1602 = add i64 %1601, 60
  %1603 = add i64 %1549, 60
  store i64 %1603, i64* %3, align 8
  %1604 = inttoptr i64 %1602 to i32*
  %1605 = load i32, i32* %1604, align 4
  %1606 = shl i32 %1605, 2
  %1607 = and i32 %1606, 4
  %1608 = zext i32 %1607 to i64
  store i64 %1608, i64* %R8.i1892, align 8
  store i8 0, i8* %14, align 1
  %1609 = tail call i32 @llvm.ctpop.i32(i32 %1607)
  %1610 = trunc i32 %1609 to i8
  %1611 = xor i8 %1610, 1
  store i8 %1611, i8* %21, align 1
  %.lobit41 = lshr exact i32 %1607, 2
  %1612 = trunc i32 %.lobit41 to i8
  %1613 = xor i8 %1612, 1
  store i8 %1613, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %1608, i64* %RCX.i723, align 8
  %1614 = add i64 %1549, 73
  store i64 %1614, i64* %3, align 8
  %trunc145 = trunc i32 %1606 to i3
  %cond201 = icmp eq i3 %trunc145, 0
  br i1 %cond201, label %routine_shrl__cl___edi.exit1385, label %1615

; <label>:1615:                                   ; preds = %block_.L_406aac
  %1616 = zext i32 %1607 to i64
  %1617 = add nuw nsw i64 %1616, 4294967295
  %1618 = and i64 %1617, 4294967295
  %1619 = lshr i64 %1599, %1618
  %1620 = trunc i64 %1619 to i8
  %1621 = and i8 %1620, 1
  %1622 = lshr i64 %1619, 1
  %1623 = trunc i64 %1622 to i32
  %1624 = and i32 %1623, 2147483647
  %1625 = zext i32 %1624 to i64
  store i64 %1625, i64* %RDI.i2136, align 8
  store i8 %1621, i8* %14, align 1
  %1626 = and i32 %1623, 255
  %1627 = tail call i32 @llvm.ctpop.i32(i32 %1626)
  %1628 = trunc i32 %1627 to i8
  %1629 = and i8 %1628, 1
  %1630 = xor i8 %1629, 1
  store i8 %1630, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1631 = icmp eq i32 %1624, 0
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shrl__cl___edi.exit1385

routine_shrl__cl___edi.exit1385:                  ; preds = %block_.L_406aac, %1615
  %1633 = phi i64 [ %1625, %1615 ], [ %1599, %block_.L_406aac ]
  %1634 = shl nuw nsw i64 %1633, 16
  %1635 = and i64 %1634, 983040
  store i64 %1635, i64* %RDI.i2136, align 8
  %1636 = load i64, i64* %RAX.i858, align 8
  %1637 = or i64 %1635, %1636
  %1638 = trunc i64 %1637 to i32
  %1639 = and i64 %1637, 4294967295
  store i64 %1639, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %1640 = and i32 %1638, 255
  %1641 = tail call i32 @llvm.ctpop.i32(i32 %1640)
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = xor i8 %1643, 1
  store i8 %1644, i8* %21, align 1
  %1645 = icmp eq i32 %1638, 0
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %29, align 1
  %1647 = lshr i32 %1638, 31
  %1648 = trunc i32 %1647 to i8
  store i8 %1648, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1649 = load i64, i64* %RBP.i, align 8
  %1650 = add i64 %1649, -16
  %1651 = add i64 %1549, 85
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i64*
  %1653 = load i64, i64* %1652, align 8
  store i64 %1653, i64* %RDX.i822, align 8
  %1654 = add i64 %1653, 60
  %1655 = trunc i64 %1637 to i32
  %1656 = add i64 %1549, 88
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1654 to i32*
  store i32 %1655, i32* %1657, align 4
  %1658 = load i64, i64* %RBP.i, align 8
  %1659 = add i64 %1658, -16
  %1660 = load i64, i64* %3, align 8
  %1661 = add i64 %1660, 4
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1659 to i64*
  %1663 = load i64, i64* %1662, align 8
  store i64 %1663, i64* %RDX.i822, align 8
  %1664 = add i64 %1663, 24
  %1665 = add i64 %1660, 8
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i32*
  %1667 = load i32, i32* %1666, align 4
  store i8 0, i8* %14, align 1
  %1668 = and i32 %1667, 255
  %1669 = tail call i32 @llvm.ctpop.i32(i32 %1668)
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  %1672 = xor i8 %1671, 1
  store i8 %1672, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1673 = icmp eq i32 %1667, 0
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %29, align 1
  %1675 = lshr i32 %1667, 31
  %1676 = trunc i32 %1675 to i8
  store i8 %1676, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v163 = select i1 %1673, i64 14, i64 82
  %1677 = add i64 %1660, %.v163
  store i64 %1677, i64* %3, align 8
  br i1 %1673, label %block_406b3c, label %block_.L_406b80

block_406b3c:                                     ; preds = %routine_shrl__cl___edi.exit1385
  %1678 = add i64 %1677, 4
  store i64 %1678, i64* %3, align 8
  %1679 = load i64, i64* %1662, align 8
  store i64 %1679, i64* %RAX.i858, align 8
  %1680 = add i64 %1679, 28
  %1681 = add i64 %1677, 8
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i32*
  %1683 = load i32, i32* %1682, align 4
  %1684 = sext i32 %1683 to i64
  store i64 %1684, i64* %RAX.i858, align 8
  %1685 = shl nsw i64 %1684, 2
  %1686 = add nsw i64 %1685, 6391152
  %1687 = add i64 %1677, 15
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i32*
  %1689 = load i32, i32* %1688, align 4
  %1690 = zext i32 %1689 to i64
  store i64 %1690, i64* %RCX.i723, align 8
  %1691 = add i64 %1677, 19
  store i64 %1691, i64* %3, align 8
  %1692 = load i64, i64* %1662, align 8
  store i64 %1692, i64* %RAX.i858, align 8
  %1693 = add i64 %1692, 24
  %1694 = add i64 %1677, 22
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i32*
  store i32 %1689, i32* %1695, align 4
  %1696 = load i64, i64* %RBP.i, align 8
  %1697 = add i64 %1696, -16
  %1698 = load i64, i64* %3, align 8
  %1699 = add i64 %1698, 4
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1697 to i64*
  %1701 = load i64, i64* %1700, align 8
  store i64 %1701, i64* %RAX.i858, align 8
  %1702 = add i64 %1701, 28
  %1703 = add i64 %1698, 7
  store i64 %1703, i64* %3, align 8
  %1704 = inttoptr i64 %1702 to i32*
  %1705 = load i32, i32* %1704, align 4
  %1706 = add i32 %1705, 1
  %1707 = zext i32 %1706 to i64
  store i64 %1707, i64* %RCX.i723, align 8
  %1708 = icmp eq i32 %1705, -1
  %1709 = icmp eq i32 %1706, 0
  %1710 = or i1 %1708, %1709
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %14, align 1
  %1712 = and i32 %1706, 255
  %1713 = tail call i32 @llvm.ctpop.i32(i32 %1712)
  %1714 = trunc i32 %1713 to i8
  %1715 = and i8 %1714, 1
  %1716 = xor i8 %1715, 1
  store i8 %1716, i8* %21, align 1
  %1717 = xor i32 %1706, %1705
  %1718 = lshr i32 %1717, 4
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  store i8 %1720, i8* %26, align 1
  %1721 = zext i1 %1709 to i8
  store i8 %1721, i8* %29, align 1
  %1722 = lshr i32 %1706, 31
  %1723 = trunc i32 %1722 to i8
  store i8 %1723, i8* %32, align 1
  %1724 = lshr i32 %1705, 31
  %1725 = xor i32 %1722, %1724
  %1726 = add nuw nsw i32 %1725, %1722
  %1727 = icmp eq i32 %1726, 2
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %38, align 1
  %1729 = add i64 %1698, 13
  store i64 %1729, i64* %3, align 8
  store i32 %1706, i32* %1704, align 4
  %1730 = load i64, i64* %RBP.i, align 8
  %1731 = add i64 %1730, -16
  %1732 = load i64, i64* %3, align 8
  %1733 = add i64 %1732, 4
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1731 to i64*
  %1735 = load i64, i64* %1734, align 8
  store i64 %1735, i64* %RAX.i858, align 8
  %1736 = add i64 %1735, 28
  %1737 = add i64 %1732, 11
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to i32*
  %1739 = load i32, i32* %1738, align 4
  %1740 = add i32 %1739, -512
  %1741 = icmp ult i32 %1739, 512
  %1742 = zext i1 %1741 to i8
  store i8 %1742, i8* %14, align 1
  %1743 = and i32 %1740, 255
  %1744 = tail call i32 @llvm.ctpop.i32(i32 %1743)
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  %1747 = xor i8 %1746, 1
  store i8 %1747, i8* %21, align 1
  %1748 = xor i32 %1740, %1739
  %1749 = lshr i32 %1748, 4
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  store i8 %1751, i8* %26, align 1
  %1752 = icmp eq i32 %1740, 0
  %1753 = zext i1 %1752 to i8
  store i8 %1753, i8* %29, align 1
  %1754 = lshr i32 %1740, 31
  %1755 = trunc i32 %1754 to i8
  store i8 %1755, i8* %32, align 1
  %1756 = lshr i32 %1739, 31
  %1757 = xor i32 %1754, %1756
  %1758 = add nuw nsw i32 %1757, %1756
  %1759 = icmp eq i32 %1758, 2
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %38, align 1
  %.v170 = select i1 %1752, i64 17, i64 28
  %1761 = add i64 %1732, %.v170
  store i64 %1761, i64* %3, align 8
  br i1 %1752, label %block_406b70, label %block_.L_406b7b

block_406b70:                                     ; preds = %block_406b3c
  %1762 = add i64 %1761, 4
  store i64 %1762, i64* %3, align 8
  %1763 = load i64, i64* %1734, align 8
  store i64 %1763, i64* %RAX.i858, align 8
  %1764 = add i64 %1763, 28
  %1765 = add i64 %1761, 11
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to i32*
  store i32 0, i32* %1766, align 4
  %.pre131 = load i64, i64* %3, align 8
  %.pre132.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_406b7b

block_.L_406b7b:                                  ; preds = %block_406b3c, %block_406b70
  %.pre132 = phi i64 [ %.pre132.pre, %block_406b70 ], [ %1730, %block_406b3c ]
  %1767 = phi i64 [ %.pre131, %block_406b70 ], [ %1761, %block_406b3c ]
  %1768 = add i64 %1767, 5
  store i64 %1768, i64* %3, align 8
  br label %block_.L_406b80

block_.L_406b80:                                  ; preds = %routine_shrl__cl___edi.exit1385, %block_.L_406b7b
  %1769 = phi i64 [ %.pre132, %block_.L_406b7b ], [ %1658, %routine_shrl__cl___edi.exit1385 ]
  %1770 = phi i64 [ %1768, %block_.L_406b7b ], [ %1677, %routine_shrl__cl___edi.exit1385 ]
  store i64 0, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1, i64* %RCX.i723, align 8
  %1771 = add i64 %1769, -16
  %1772 = add i64 %1770, 11
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i64*
  %1774 = load i64, i64* %1773, align 8
  store i64 %1774, i64* %RDX.i822, align 8
  %1775 = add i64 %1774, 24
  %1776 = add i64 %1770, 14
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i32*
  %1778 = load i32, i32* %1777, align 4
  %1779 = add i32 %1778, -1
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RSI.i814, align 8
  %1781 = icmp ne i32 %1778, 0
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %14, align 1
  %1783 = and i32 %1779, 255
  %1784 = tail call i32 @llvm.ctpop.i32(i32 %1783)
  %1785 = trunc i32 %1784 to i8
  %1786 = and i8 %1785, 1
  %1787 = xor i8 %1786, 1
  store i8 %1787, i8* %21, align 1
  %1788 = xor i32 %1778, 16
  %1789 = xor i32 %1788, %1779
  %1790 = lshr i32 %1789, 4
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  store i8 %1792, i8* %26, align 1
  %1793 = icmp eq i32 %1779, 0
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %29, align 1
  %1795 = lshr i32 %1779, 31
  %1796 = trunc i32 %1795 to i8
  store i8 %1796, i8* %32, align 1
  %1797 = lshr i32 %1778, 31
  %1798 = xor i32 %1795, %1797
  %1799 = xor i32 %1795, 1
  %1800 = add nuw nsw i32 %1798, %1799
  %1801 = icmp eq i32 %1800, 2
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %38, align 1
  %1803 = add i64 %1770, 20
  store i64 %1803, i64* %3, align 8
  store i32 %1779, i32* %1777, align 4
  %1804 = load i64, i64* %RBP.i, align 8
  %1805 = add i64 %1804, -16
  %1806 = load i64, i64* %3, align 8
  %1807 = add i64 %1806, 4
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1805 to i64*
  %1809 = load i64, i64* %1808, align 8
  store i64 %1809, i64* %RDX.i822, align 8
  %1810 = add i64 %1809, 24
  %1811 = add i64 %1806, 8
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1810 to i32*
  %1813 = load i32, i32* %1812, align 4
  %1814 = add i32 %1813, -1
  %1815 = icmp eq i32 %1813, 0
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %14, align 1
  %1817 = and i32 %1814, 255
  %1818 = tail call i32 @llvm.ctpop.i32(i32 %1817)
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  store i8 %1821, i8* %21, align 1
  %1822 = xor i32 %1814, %1813
  %1823 = lshr i32 %1822, 4
  %1824 = trunc i32 %1823 to i8
  %1825 = and i8 %1824, 1
  store i8 %1825, i8* %26, align 1
  %1826 = icmp eq i32 %1814, 0
  %1827 = zext i1 %1826 to i8
  store i8 %1827, i8* %29, align 1
  %1828 = lshr i32 %1814, 31
  %1829 = trunc i32 %1828 to i8
  store i8 %1829, i8* %32, align 1
  %1830 = lshr i32 %1813, 31
  %1831 = xor i32 %1828, %1830
  %1832 = add nuw nsw i32 %1831, %1830
  %1833 = icmp eq i32 %1832, 2
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %38, align 1
  %1835 = load i32, i32* %ECX.i717, align 4
  %1836 = zext i32 %1835 to i64
  %1837 = load i64, i64* %RAX.i858, align 8
  %1838 = select i1 %1826, i64 %1836, i64 %1837
  %1839 = and i64 %1838, 4294967295
  store i64 %1839, i64* %RAX.i858, align 8
  %1840 = add i64 %1804, -17
  %1841 = add i64 %1806, 15
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1840 to i8*
  %1843 = load i8, i8* %1842, align 1
  %1844 = zext i8 %1843 to i64
  %1845 = and i64 %1838, 4294967295
  %1846 = xor i64 %1845, %1844
  %1847 = trunc i64 %1846 to i32
  store i64 %1846, i64* %RCX.i723, align 8
  store i8 0, i8* %14, align 1
  %1848 = and i32 %1847, 255
  %1849 = tail call i32 @llvm.ctpop.i32(i32 %1848)
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = xor i8 %1851, 1
  store i8 %1852, i8* %21, align 1
  %1853 = icmp eq i32 %1847, 0
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %29, align 1
  %1855 = lshr i32 %1847, 31
  %1856 = trunc i32 %1855 to i8
  store i8 %1856, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1857 = trunc i64 %1846 to i8
  store i8 %1857, i8* %DIL.i1747, align 1
  %1858 = add i64 %1806, 24
  store i64 %1858, i64* %3, align 8
  store i8 %1857, i8* %1842, align 1
  %1859 = load i64, i64* %RBP.i, align 8
  %1860 = add i64 %1859, -16
  %1861 = load i64, i64* %3, align 8
  %1862 = add i64 %1861, 4
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1860 to i64*
  %1864 = load i64, i64* %1863, align 8
  store i64 %1864, i64* %RDX.i822, align 8
  %1865 = add i64 %1864, 1092
  %1866 = add i64 %1861, 10
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i32*
  %1868 = load i32, i32* %1867, align 4
  %1869 = add i32 %1868, 1
  %1870 = zext i32 %1869 to i64
  store i64 %1870, i64* %RAX.i858, align 8
  %1871 = icmp eq i32 %1868, -1
  %1872 = icmp eq i32 %1869, 0
  %1873 = or i1 %1871, %1872
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %14, align 1
  %1875 = and i32 %1869, 255
  %1876 = tail call i32 @llvm.ctpop.i32(i32 %1875)
  %1877 = trunc i32 %1876 to i8
  %1878 = and i8 %1877, 1
  %1879 = xor i8 %1878, 1
  store i8 %1879, i8* %21, align 1
  %1880 = xor i32 %1869, %1868
  %1881 = lshr i32 %1880, 4
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  store i8 %1883, i8* %26, align 1
  %1884 = zext i1 %1872 to i8
  store i8 %1884, i8* %29, align 1
  %1885 = lshr i32 %1869, 31
  %1886 = trunc i32 %1885 to i8
  store i8 %1886, i8* %32, align 1
  %1887 = lshr i32 %1868, 31
  %1888 = xor i32 %1885, %1887
  %1889 = add nuw nsw i32 %1888, %1885
  %1890 = icmp eq i32 %1889, 2
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %38, align 1
  %1892 = add i64 %1861, 19
  store i64 %1892, i64* %3, align 8
  store i32 %1869, i32* %1867, align 4
  %1893 = load i64, i64* %RBP.i, align 8
  %1894 = add i64 %1893, -16
  %1895 = load i64, i64* %3, align 8
  %1896 = add i64 %1895, 4
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1894 to i64*
  %1898 = load i64, i64* %1897, align 8
  store i64 %1898, i64* %RDX.i822, align 8
  %1899 = add i64 %1898, 1092
  %1900 = add i64 %1895, 10
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  %1902 = load i32, i32* %1901, align 4
  %1903 = zext i32 %1902 to i64
  store i64 %1903, i64* %RAX.i858, align 8
  %1904 = add i64 %1895, 14
  store i64 %1904, i64* %3, align 8
  %1905 = load i64, i64* %1897, align 8
  store i64 %1905, i64* %RDX.i822, align 8
  %1906 = add i64 %1905, 64080
  %1907 = add i64 %1895, 20
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i32*
  %1909 = load i32, i32* %1908, align 4
  %1910 = add i32 %1909, 1
  %1911 = zext i32 %1910 to i64
  store i64 %1911, i64* %RCX.i723, align 8
  %1912 = lshr i32 %1910, 31
  %1913 = sub i32 %1902, %1910
  %1914 = icmp ult i32 %1902, %1910
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %14, align 1
  %1916 = and i32 %1913, 255
  %1917 = tail call i32 @llvm.ctpop.i32(i32 %1916)
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  %1920 = xor i8 %1919, 1
  store i8 %1920, i8* %21, align 1
  %1921 = xor i32 %1910, %1902
  %1922 = xor i32 %1921, %1913
  %1923 = lshr i32 %1922, 4
  %1924 = trunc i32 %1923 to i8
  %1925 = and i8 %1924, 1
  store i8 %1925, i8* %26, align 1
  %1926 = icmp eq i32 %1913, 0
  %1927 = zext i1 %1926 to i8
  store i8 %1927, i8* %29, align 1
  %1928 = lshr i32 %1913, 31
  %1929 = trunc i32 %1928 to i8
  store i8 %1929, i8* %32, align 1
  %1930 = lshr i32 %1902, 31
  %1931 = xor i32 %1912, %1930
  %1932 = xor i32 %1928, %1930
  %1933 = add nuw nsw i32 %1932, %1931
  %1934 = icmp eq i32 %1933, 2
  %1935 = zext i1 %1934 to i8
  store i8 %1935, i8* %38, align 1
  %.v164 = select i1 %1926, i64 31, i64 36
  %1936 = add i64 %1895, %.v164
  store i64 %1936, i64* %3, align 8
  br i1 %1926, label %block_.L_4066af.sink.split, label %block_.L_406be3

block_.L_406be3:                                  ; preds = %block_.L_406b80
  %1937 = add i64 %1893, -17
  %1938 = add i64 %1936, 4
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1937 to i8*
  %1940 = load i8, i8* %1939, align 1
  %1941 = zext i8 %1940 to i64
  store i64 %1941, i64* %RAX.i858, align 8
  %1942 = add i64 %1936, 8
  store i64 %1942, i64* %3, align 8
  %1943 = load i64, i64* %1897, align 8
  store i64 %1943, i64* %RCX.i723, align 8
  %1944 = zext i8 %1940 to i32
  %1945 = add i64 %1943, 64
  %1946 = add i64 %1936, 11
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = sub i32 %1944, %1948
  %1950 = icmp ult i32 %1944, %1948
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %14, align 1
  %1952 = and i32 %1949, 255
  %1953 = tail call i32 @llvm.ctpop.i32(i32 %1952)
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  %1956 = xor i8 %1955, 1
  store i8 %1956, i8* %21, align 1
  %1957 = xor i32 %1948, %1944
  %1958 = xor i32 %1957, %1949
  %1959 = lshr i32 %1958, 4
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  store i8 %1961, i8* %26, align 1
  %1962 = icmp eq i32 %1949, 0
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %29, align 1
  %1964 = lshr i32 %1949, 31
  %1965 = trunc i32 %1964 to i8
  store i8 %1965, i8* %32, align 1
  %1966 = lshr i32 %1948, 31
  %1967 = add nuw nsw i32 %1964, %1966
  %1968 = icmp eq i32 %1967, 2
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %38, align 1
  %.v165 = select i1 %1962, i64 33, i64 17
  %1970 = add i64 %1936, %.v165
  %1971 = add i64 %1970, 4
  store i64 %1971, i64* %3, align 8
  br i1 %1962, label %block_.L_406c04, label %block_406bf4

block_406bf4:                                     ; preds = %block_.L_406be3
  %1972 = load i8, i8* %1939, align 1
  %1973 = zext i8 %1972 to i64
  store i64 %1973, i64* %RAX.i858, align 8
  %1974 = add i64 %1970, 8
  store i64 %1974, i64* %3, align 8
  %1975 = load i64, i64* %1897, align 8
  store i64 %1975, i64* %RCX.i723, align 8
  %1976 = add i64 %1975, 64
  %1977 = zext i8 %1972 to i32
  %1978 = add i64 %1970, 11
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1976 to i32*
  store i32 %1977, i32* %1979, align 4
  br label %block_.L_4066af.sink.split

block_.L_406c04:                                  ; preds = %block_.L_406be3
  %1980 = load i64, i64* %1897, align 8
  store i64 %1980, i64* %RAX.i858, align 8
  %1981 = add i64 %1980, 60
  %1982 = add i64 %1970, 7
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i32*
  %1984 = load i32, i32* %1983, align 4
  %1985 = zext i32 %1984 to i64
  store i64 %1985, i64* %RDI.i2136, align 8
  %1986 = add i64 %1970, 11
  store i64 %1986, i64* %3, align 8
  %1987 = load i64, i64* %1897, align 8
  %1988 = add i64 %1987, 1096
  store i64 %1988, i64* %RAX.i858, align 8
  %1989 = icmp ugt i64 %1987, -1097
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %14, align 1
  %1991 = trunc i64 %1988 to i32
  %1992 = and i32 %1991, 255
  %1993 = tail call i32 @llvm.ctpop.i32(i32 %1992)
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  store i8 %1996, i8* %21, align 1
  %1997 = xor i64 %1988, %1987
  %1998 = lshr i64 %1997, 4
  %1999 = trunc i64 %1998 to i8
  %2000 = and i8 %1999, 1
  store i8 %2000, i8* %26, align 1
  %2001 = icmp eq i64 %1988, 0
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %29, align 1
  %2003 = lshr i64 %1988, 63
  %2004 = trunc i64 %2003 to i8
  store i8 %2004, i8* %32, align 1
  %2005 = lshr i64 %1987, 63
  %2006 = xor i64 %2003, %2005
  %2007 = add nuw nsw i64 %2006, %2003
  %2008 = icmp eq i64 %2007, 2
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %38, align 1
  store i64 %1988, i64* %RSI.i814, align 8
  %2010 = add i64 %1970, -2228
  %2011 = add i64 %1970, 25
  %2012 = load i64, i64* %6, align 8
  %2013 = add i64 %2012, -8
  %2014 = inttoptr i64 %2013 to i64*
  store i64 %2011, i64* %2014, align 8
  store i64 %2013, i64* %6, align 8
  store i64 %2010, i64* %3, align 8
  %call2_406c18 = tail call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* nonnull %0, i64 %2010, %struct.Memory* %2)
  %2015 = load i8, i8* %AL.i1902, align 1
  %2016 = load i64, i64* %3, align 8
  store i8 %2015, i8* %CL.i837, align 1
  %2017 = load i64, i64* %RBP.i, align 8
  %2018 = add i64 %2017, -17
  %2019 = add i64 %2016, 5
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i8*
  store i8 %2015, i8* %2020, align 1
  %2021 = load i64, i64* %RBP.i, align 8
  %2022 = add i64 %2021, -16
  %2023 = load i64, i64* %3, align 8
  %2024 = add i64 %2023, 4
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2022 to i64*
  %2026 = load i64, i64* %2025, align 8
  store i64 %2026, i64* %RSI.i814, align 8
  %2027 = add i64 %2026, 3160
  %2028 = add i64 %2023, 11
  store i64 %2028, i64* %3, align 8
  %2029 = inttoptr i64 %2027 to i64*
  %2030 = load i64, i64* %2029, align 8
  store i64 %2030, i64* %RSI.i814, align 8
  %2031 = add i64 %2023, 15
  store i64 %2031, i64* %3, align 8
  %2032 = load i64, i64* %2025, align 8
  store i64 %2032, i64* %RDX.i822, align 8
  %2033 = add i64 %2032, 60
  %2034 = add i64 %2023, 18
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i32*
  %2036 = load i32, i32* %2035, align 4
  %2037 = zext i32 %2036 to i64
  store i64 %2037, i64* %RAX.i858, align 8
  store i64 %2037, i64* %RDX.i822, align 8
  %2038 = shl nuw nsw i64 %2037, 1
  %2039 = add i64 %2030, %2038
  %2040 = add i64 %2023, 24
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i16*
  %2042 = load i16, i16* %2041, align 2
  %2043 = zext i16 %2042 to i64
  store i64 %2043, i64* %RAX.i858, align 8
  %2044 = add i64 %2023, 28
  store i64 %2044, i64* %3, align 8
  %2045 = load i64, i64* %2025, align 8
  store i64 %2045, i64* %RDX.i822, align 8
  %2046 = add i64 %2045, 3168
  %2047 = add i64 %2023, 35
  store i64 %2047, i64* %3, align 8
  %2048 = inttoptr i64 %2046 to i64*
  %2049 = load i64, i64* %2048, align 8
  store i64 %2049, i64* %RDX.i822, align 8
  %2050 = add i64 %2023, 39
  store i64 %2050, i64* %3, align 8
  %2051 = load i64, i64* %2025, align 8
  store i64 %2051, i64* %RSI.i814, align 8
  %2052 = add i64 %2051, 60
  %2053 = add i64 %2023, 42
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2052 to i32*
  %2055 = load i32, i32* %2054, align 4
  %2056 = lshr i32 %2055, 31
  %2057 = trunc i32 %2056 to i8
  %2058 = trunc i32 %2055 to i8
  %2059 = and i8 %2058, 1
  %2060 = lshr i32 %2055, 1
  %2061 = zext i32 %2060 to i64
  store i8 %2059, i8* %14, align 1
  %2062 = and i32 %2060, 255
  %2063 = tail call i32 @llvm.ctpop.i32(i32 %2062)
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  store i8 %2066, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2067 = icmp eq i32 %2060, 0
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %2057, i8* %38, align 1
  store i64 %2061, i64* %RDI.i2136, align 8
  store i64 %2061, i64* %RSI.i814, align 8
  %2069 = add i64 %2049, %2061
  %2070 = add i64 %2023, 52
  store i64 %2070, i64* %3, align 8
  %2071 = inttoptr i64 %2069 to i8*
  %2072 = load i8, i8* %2071, align 1
  %2073 = zext i8 %2072 to i64
  store i64 %2073, i64* %RDI.i2136, align 8
  %2074 = add i64 %2023, 56
  store i64 %2074, i64* %3, align 8
  %2075 = load i64, i64* %2025, align 8
  store i64 %2075, i64* %RDX.i822, align 8
  %2076 = add i64 %2075, 60
  %2077 = add i64 %2023, 60
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2076 to i32*
  %2079 = load i32, i32* %2078, align 4
  %2080 = shl i32 %2079, 2
  %2081 = and i32 %2080, 4
  %2082 = zext i32 %2081 to i64
  store i64 %2082, i64* %R8.i1892, align 8
  store i8 0, i8* %14, align 1
  %2083 = tail call i32 @llvm.ctpop.i32(i32 %2081)
  %2084 = trunc i32 %2083 to i8
  %2085 = xor i8 %2084, 1
  store i8 %2085, i8* %21, align 1
  %.lobit46 = lshr exact i32 %2081, 2
  %2086 = trunc i32 %.lobit46 to i8
  %2087 = xor i8 %2086, 1
  store i8 %2087, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %2082, i64* %RCX.i723, align 8
  %2088 = add i64 %2023, 73
  store i64 %2088, i64* %3, align 8
  %trunc146 = trunc i32 %2080 to i3
  %cond202 = icmp eq i3 %trunc146, 0
  br i1 %cond202, label %routine_shrl__cl___edi.exit1164, label %2089

; <label>:2089:                                   ; preds = %block_.L_406c04
  %2090 = zext i32 %2081 to i64
  %2091 = add nuw nsw i64 %2090, 4294967295
  %2092 = and i64 %2091, 4294967295
  %2093 = lshr i64 %2073, %2092
  %2094 = trunc i64 %2093 to i8
  %2095 = and i8 %2094, 1
  %2096 = lshr i64 %2093, 1
  %2097 = trunc i64 %2096 to i32
  %2098 = and i32 %2097, 2147483647
  %2099 = zext i32 %2098 to i64
  store i64 %2099, i64* %RDI.i2136, align 8
  store i8 %2095, i8* %14, align 1
  %2100 = and i32 %2097, 255
  %2101 = tail call i32 @llvm.ctpop.i32(i32 %2100)
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = xor i8 %2103, 1
  store i8 %2104, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2105 = icmp eq i32 %2098, 0
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shrl__cl___edi.exit1164

routine_shrl__cl___edi.exit1164:                  ; preds = %block_.L_406c04, %2089
  %2107 = phi i64 [ %2099, %2089 ], [ %2073, %block_.L_406c04 ]
  %2108 = shl nuw nsw i64 %2107, 16
  %2109 = and i64 %2108, 983040
  store i64 %2109, i64* %RDI.i2136, align 8
  %2110 = load i64, i64* %RAX.i858, align 8
  %2111 = or i64 %2109, %2110
  %2112 = trunc i64 %2111 to i32
  %2113 = and i64 %2111, 4294967295
  store i64 %2113, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %2114 = and i32 %2112, 255
  %2115 = tail call i32 @llvm.ctpop.i32(i32 %2114)
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  store i8 %2118, i8* %21, align 1
  %2119 = icmp eq i32 %2112, 0
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %29, align 1
  %2121 = lshr i32 %2112, 31
  %2122 = trunc i32 %2121 to i8
  store i8 %2122, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2123 = load i64, i64* %RBP.i, align 8
  %2124 = add i64 %2123, -16
  %2125 = add i64 %2023, 85
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i64*
  %2127 = load i64, i64* %2126, align 8
  store i64 %2127, i64* %RDX.i822, align 8
  %2128 = add i64 %2127, 60
  %2129 = trunc i64 %2111 to i32
  %2130 = add i64 %2023, 88
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2128 to i32*
  store i32 %2129, i32* %2131, align 4
  %2132 = load i64, i64* %RBP.i, align 8
  %2133 = add i64 %2132, -16
  %2134 = load i64, i64* %3, align 8
  %2135 = add i64 %2134, 4
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2133 to i64*
  %2137 = load i64, i64* %2136, align 8
  store i64 %2137, i64* %RDX.i822, align 8
  %2138 = add i64 %2137, 24
  %2139 = add i64 %2134, 8
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2138 to i32*
  %2141 = load i32, i32* %2140, align 4
  store i8 0, i8* %14, align 1
  %2142 = and i32 %2141, 255
  %2143 = tail call i32 @llvm.ctpop.i32(i32 %2142)
  %2144 = trunc i32 %2143 to i8
  %2145 = and i8 %2144, 1
  %2146 = xor i8 %2145, 1
  store i8 %2146, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2147 = icmp eq i32 %2141, 0
  %2148 = zext i1 %2147 to i8
  store i8 %2148, i8* %29, align 1
  %2149 = lshr i32 %2141, 31
  %2150 = trunc i32 %2149 to i8
  store i8 %2150, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v166 = select i1 %2147, i64 14, i64 82
  %2151 = add i64 %2134, %.v166
  store i64 %2151, i64* %3, align 8
  br i1 %2147, label %block_406c89, label %block_.L_406ccd

block_406c89:                                     ; preds = %routine_shrl__cl___edi.exit1164
  %2152 = add i64 %2151, 4
  store i64 %2152, i64* %3, align 8
  %2153 = load i64, i64* %2136, align 8
  store i64 %2153, i64* %RAX.i858, align 8
  %2154 = add i64 %2153, 28
  %2155 = add i64 %2151, 8
  store i64 %2155, i64* %3, align 8
  %2156 = inttoptr i64 %2154 to i32*
  %2157 = load i32, i32* %2156, align 4
  %2158 = sext i32 %2157 to i64
  store i64 %2158, i64* %RAX.i858, align 8
  %2159 = shl nsw i64 %2158, 2
  %2160 = add nsw i64 %2159, 6391152
  %2161 = add i64 %2151, 15
  store i64 %2161, i64* %3, align 8
  %2162 = inttoptr i64 %2160 to i32*
  %2163 = load i32, i32* %2162, align 4
  %2164 = zext i32 %2163 to i64
  store i64 %2164, i64* %RCX.i723, align 8
  %2165 = add i64 %2151, 19
  store i64 %2165, i64* %3, align 8
  %2166 = load i64, i64* %2136, align 8
  store i64 %2166, i64* %RAX.i858, align 8
  %2167 = add i64 %2166, 24
  %2168 = add i64 %2151, 22
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i32*
  store i32 %2163, i32* %2169, align 4
  %2170 = load i64, i64* %RBP.i, align 8
  %2171 = add i64 %2170, -16
  %2172 = load i64, i64* %3, align 8
  %2173 = add i64 %2172, 4
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2171 to i64*
  %2175 = load i64, i64* %2174, align 8
  store i64 %2175, i64* %RAX.i858, align 8
  %2176 = add i64 %2175, 28
  %2177 = add i64 %2172, 7
  store i64 %2177, i64* %3, align 8
  %2178 = inttoptr i64 %2176 to i32*
  %2179 = load i32, i32* %2178, align 4
  %2180 = add i32 %2179, 1
  %2181 = zext i32 %2180 to i64
  store i64 %2181, i64* %RCX.i723, align 8
  %2182 = icmp eq i32 %2179, -1
  %2183 = icmp eq i32 %2180, 0
  %2184 = or i1 %2182, %2183
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %14, align 1
  %2186 = and i32 %2180, 255
  %2187 = tail call i32 @llvm.ctpop.i32(i32 %2186)
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = xor i8 %2189, 1
  store i8 %2190, i8* %21, align 1
  %2191 = xor i32 %2180, %2179
  %2192 = lshr i32 %2191, 4
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  store i8 %2194, i8* %26, align 1
  %2195 = zext i1 %2183 to i8
  store i8 %2195, i8* %29, align 1
  %2196 = lshr i32 %2180, 31
  %2197 = trunc i32 %2196 to i8
  store i8 %2197, i8* %32, align 1
  %2198 = lshr i32 %2179, 31
  %2199 = xor i32 %2196, %2198
  %2200 = add nuw nsw i32 %2199, %2196
  %2201 = icmp eq i32 %2200, 2
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %38, align 1
  %2203 = add i64 %2172, 13
  store i64 %2203, i64* %3, align 8
  store i32 %2180, i32* %2178, align 4
  %2204 = load i64, i64* %RBP.i, align 8
  %2205 = add i64 %2204, -16
  %2206 = load i64, i64* %3, align 8
  %2207 = add i64 %2206, 4
  store i64 %2207, i64* %3, align 8
  %2208 = inttoptr i64 %2205 to i64*
  %2209 = load i64, i64* %2208, align 8
  store i64 %2209, i64* %RAX.i858, align 8
  %2210 = add i64 %2209, 28
  %2211 = add i64 %2206, 11
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i32*
  %2213 = load i32, i32* %2212, align 4
  %2214 = add i32 %2213, -512
  %2215 = icmp ult i32 %2213, 512
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %14, align 1
  %2217 = and i32 %2214, 255
  %2218 = tail call i32 @llvm.ctpop.i32(i32 %2217)
  %2219 = trunc i32 %2218 to i8
  %2220 = and i8 %2219, 1
  %2221 = xor i8 %2220, 1
  store i8 %2221, i8* %21, align 1
  %2222 = xor i32 %2214, %2213
  %2223 = lshr i32 %2222, 4
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  store i8 %2225, i8* %26, align 1
  %2226 = icmp eq i32 %2214, 0
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %29, align 1
  %2228 = lshr i32 %2214, 31
  %2229 = trunc i32 %2228 to i8
  store i8 %2229, i8* %32, align 1
  %2230 = lshr i32 %2213, 31
  %2231 = xor i32 %2228, %2230
  %2232 = add nuw nsw i32 %2231, %2230
  %2233 = icmp eq i32 %2232, 2
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %38, align 1
  %.v169 = select i1 %2226, i64 17, i64 28
  %2235 = add i64 %2206, %.v169
  store i64 %2235, i64* %3, align 8
  br i1 %2226, label %block_406cbd, label %block_.L_406cc8

block_406cbd:                                     ; preds = %block_406c89
  %2236 = add i64 %2235, 4
  store i64 %2236, i64* %3, align 8
  %2237 = load i64, i64* %2208, align 8
  store i64 %2237, i64* %RAX.i858, align 8
  %2238 = add i64 %2237, 28
  %2239 = add i64 %2235, 11
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2238 to i32*
  store i32 0, i32* %2240, align 4
  %.pre133 = load i64, i64* %3, align 8
  %.pre134.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_406cc8

block_.L_406cc8:                                  ; preds = %block_406c89, %block_406cbd
  %.pre134 = phi i64 [ %.pre134.pre, %block_406cbd ], [ %2204, %block_406c89 ]
  %2241 = phi i64 [ %.pre133, %block_406cbd ], [ %2235, %block_406c89 ]
  %2242 = add i64 %2241, 5
  store i64 %2242, i64* %3, align 8
  br label %block_.L_406ccd

block_.L_406ccd:                                  ; preds = %routine_shrl__cl___edi.exit1164, %block_.L_406cc8
  %2243 = phi i64 [ %.pre134, %block_.L_406cc8 ], [ %2132, %routine_shrl__cl___edi.exit1164 ]
  %2244 = phi i64 [ %2242, %block_.L_406cc8 ], [ %2151, %routine_shrl__cl___edi.exit1164 ]
  store i64 0, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1, i64* %RCX.i723, align 8
  %2245 = add i64 %2243, -16
  %2246 = add i64 %2244, 11
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2245 to i64*
  %2248 = load i64, i64* %2247, align 8
  store i64 %2248, i64* %RDX.i822, align 8
  %2249 = add i64 %2248, 24
  %2250 = add i64 %2244, 14
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i32*
  %2252 = load i32, i32* %2251, align 4
  %2253 = add i32 %2252, -1
  %2254 = zext i32 %2253 to i64
  store i64 %2254, i64* %RSI.i814, align 8
  %2255 = icmp ne i32 %2252, 0
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %14, align 1
  %2257 = and i32 %2253, 255
  %2258 = tail call i32 @llvm.ctpop.i32(i32 %2257)
  %2259 = trunc i32 %2258 to i8
  %2260 = and i8 %2259, 1
  %2261 = xor i8 %2260, 1
  store i8 %2261, i8* %21, align 1
  %2262 = xor i32 %2252, 16
  %2263 = xor i32 %2262, %2253
  %2264 = lshr i32 %2263, 4
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  store i8 %2266, i8* %26, align 1
  %2267 = icmp eq i32 %2253, 0
  %2268 = zext i1 %2267 to i8
  store i8 %2268, i8* %29, align 1
  %2269 = lshr i32 %2253, 31
  %2270 = trunc i32 %2269 to i8
  store i8 %2270, i8* %32, align 1
  %2271 = lshr i32 %2252, 31
  %2272 = xor i32 %2269, %2271
  %2273 = xor i32 %2269, 1
  %2274 = add nuw nsw i32 %2272, %2273
  %2275 = icmp eq i32 %2274, 2
  %2276 = zext i1 %2275 to i8
  store i8 %2276, i8* %38, align 1
  %2277 = add i64 %2244, 20
  store i64 %2277, i64* %3, align 8
  store i32 %2253, i32* %2251, align 4
  %2278 = load i64, i64* %RBP.i, align 8
  %2279 = add i64 %2278, -16
  %2280 = load i64, i64* %3, align 8
  %2281 = add i64 %2280, 4
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2279 to i64*
  %2283 = load i64, i64* %2282, align 8
  store i64 %2283, i64* %RDX.i822, align 8
  %2284 = add i64 %2283, 24
  %2285 = add i64 %2280, 8
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to i32*
  %2287 = load i32, i32* %2286, align 4
  %2288 = add i32 %2287, -1
  %2289 = icmp eq i32 %2287, 0
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %14, align 1
  %2291 = and i32 %2288, 255
  %2292 = tail call i32 @llvm.ctpop.i32(i32 %2291)
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  %2295 = xor i8 %2294, 1
  store i8 %2295, i8* %21, align 1
  %2296 = xor i32 %2288, %2287
  %2297 = lshr i32 %2296, 4
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  store i8 %2299, i8* %26, align 1
  %2300 = icmp eq i32 %2288, 0
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %29, align 1
  %2302 = lshr i32 %2288, 31
  %2303 = trunc i32 %2302 to i8
  store i8 %2303, i8* %32, align 1
  %2304 = lshr i32 %2287, 31
  %2305 = xor i32 %2302, %2304
  %2306 = add nuw nsw i32 %2305, %2304
  %2307 = icmp eq i32 %2306, 2
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %38, align 1
  %2309 = load i32, i32* %ECX.i717, align 4
  %2310 = zext i32 %2309 to i64
  %2311 = load i64, i64* %RAX.i858, align 8
  %2312 = select i1 %2300, i64 %2310, i64 %2311
  %2313 = and i64 %2312, 4294967295
  store i64 %2313, i64* %RAX.i858, align 8
  %2314 = add i64 %2278, -17
  %2315 = add i64 %2280, 15
  store i64 %2315, i64* %3, align 8
  %2316 = inttoptr i64 %2314 to i8*
  %2317 = load i8, i8* %2316, align 1
  %2318 = zext i8 %2317 to i64
  %2319 = and i64 %2312, 4294967295
  %2320 = xor i64 %2319, %2318
  %2321 = trunc i64 %2320 to i32
  store i64 %2320, i64* %RCX.i723, align 8
  store i8 0, i8* %14, align 1
  %2322 = and i32 %2321, 255
  %2323 = tail call i32 @llvm.ctpop.i32(i32 %2322)
  %2324 = trunc i32 %2323 to i8
  %2325 = and i8 %2324, 1
  %2326 = xor i8 %2325, 1
  store i8 %2326, i8* %21, align 1
  %2327 = icmp eq i32 %2321, 0
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %29, align 1
  %2329 = lshr i32 %2321, 31
  %2330 = trunc i32 %2329 to i8
  store i8 %2330, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2331 = trunc i64 %2320 to i8
  store i8 %2331, i8* %DIL.i1747, align 1
  %2332 = add i64 %2280, 24
  store i64 %2332, i64* %3, align 8
  store i8 %2331, i8* %2316, align 1
  %2333 = load i64, i64* %RBP.i, align 8
  %2334 = add i64 %2333, -16
  %2335 = load i64, i64* %3, align 8
  %2336 = add i64 %2335, 4
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2334 to i64*
  %2338 = load i64, i64* %2337, align 8
  store i64 %2338, i64* %RDX.i822, align 8
  %2339 = add i64 %2338, 1092
  %2340 = add i64 %2335, 10
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2339 to i32*
  %2342 = load i32, i32* %2341, align 4
  %2343 = add i32 %2342, 1
  %2344 = zext i32 %2343 to i64
  store i64 %2344, i64* %RAX.i858, align 8
  %2345 = icmp eq i32 %2342, -1
  %2346 = icmp eq i32 %2343, 0
  %2347 = or i1 %2345, %2346
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %14, align 1
  %2349 = and i32 %2343, 255
  %2350 = tail call i32 @llvm.ctpop.i32(i32 %2349)
  %2351 = trunc i32 %2350 to i8
  %2352 = and i8 %2351, 1
  %2353 = xor i8 %2352, 1
  store i8 %2353, i8* %21, align 1
  %2354 = xor i32 %2343, %2342
  %2355 = lshr i32 %2354, 4
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  store i8 %2357, i8* %26, align 1
  %2358 = zext i1 %2346 to i8
  store i8 %2358, i8* %29, align 1
  %2359 = lshr i32 %2343, 31
  %2360 = trunc i32 %2359 to i8
  store i8 %2360, i8* %32, align 1
  %2361 = lshr i32 %2342, 31
  %2362 = xor i32 %2359, %2361
  %2363 = add nuw nsw i32 %2362, %2359
  %2364 = icmp eq i32 %2363, 2
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %38, align 1
  %2366 = add i64 %2335, 19
  store i64 %2366, i64* %3, align 8
  store i32 %2343, i32* %2341, align 4
  %2367 = load i64, i64* %RBP.i, align 8
  %2368 = add i64 %2367, -17
  %2369 = load i64, i64* %3, align 8
  %2370 = add i64 %2369, 4
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2368 to i8*
  %2372 = load i8, i8* %2371, align 1
  %2373 = zext i8 %2372 to i32
  %2374 = add nuw nsw i32 %2373, 4
  %2375 = zext i32 %2374 to i64
  store i64 %2375, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %2376 = and i32 %2374, 255
  %2377 = tail call i32 @llvm.ctpop.i32(i32 %2376)
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = xor i8 %2379, 1
  store i8 %2380, i8* %21, align 1
  %2381 = xor i32 %2374, %2373
  %2382 = lshr i32 %2381, 4
  %2383 = trunc i32 %2382 to i8
  %2384 = and i8 %2383, 1
  store i8 %2384, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2385 = add i64 %2367, -16
  %2386 = add i64 %2369, 11
  store i64 %2386, i64* %3, align 8
  %2387 = inttoptr i64 %2385 to i64*
  %2388 = load i64, i64* %2387, align 8
  store i64 %2388, i64* %RDX.i822, align 8
  %2389 = add i64 %2388, 16
  %2390 = add i64 %2369, 14
  store i64 %2390, i64* %3, align 8
  %2391 = inttoptr i64 %2389 to i32*
  store i32 %2374, i32* %2391, align 4
  %2392 = load i64, i64* %RBP.i, align 8
  %2393 = add i64 %2392, -16
  %2394 = load i64, i64* %3, align 8
  %2395 = add i64 %2394, 4
  store i64 %2395, i64* %3, align 8
  %2396 = inttoptr i64 %2393 to i64*
  %2397 = load i64, i64* %2396, align 8
  store i64 %2397, i64* %RDX.i822, align 8
  %2398 = add i64 %2397, 60
  %2399 = add i64 %2394, 7
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i32*
  %2401 = load i32, i32* %2400, align 4
  %2402 = zext i32 %2401 to i64
  store i64 %2402, i64* %RDI.i2136, align 8
  %2403 = add i64 %2394, 11
  store i64 %2403, i64* %3, align 8
  %2404 = load i64, i64* %2396, align 8
  %2405 = add i64 %2404, 1096
  store i64 %2405, i64* %RDX.i822, align 8
  %2406 = icmp ugt i64 %2404, -1097
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %14, align 1
  %2408 = trunc i64 %2405 to i32
  %2409 = and i32 %2408, 255
  %2410 = tail call i32 @llvm.ctpop.i32(i32 %2409)
  %2411 = trunc i32 %2410 to i8
  %2412 = and i8 %2411, 1
  %2413 = xor i8 %2412, 1
  store i8 %2413, i8* %21, align 1
  %2414 = xor i64 %2405, %2404
  %2415 = lshr i64 %2414, 4
  %2416 = trunc i64 %2415 to i8
  %2417 = and i8 %2416, 1
  store i8 %2417, i8* %26, align 1
  %2418 = icmp eq i64 %2405, 0
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %29, align 1
  %2420 = lshr i64 %2405, 63
  %2421 = trunc i64 %2420 to i8
  store i8 %2421, i8* %32, align 1
  %2422 = lshr i64 %2404, 63
  %2423 = xor i64 %2420, %2422
  %2424 = add nuw nsw i64 %2423, %2420
  %2425 = icmp eq i64 %2424, 2
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %38, align 1
  store i64 %2405, i64* %RSI.i814, align 8
  %2427 = add i64 %2394, -2506
  %2428 = add i64 %2394, 26
  %2429 = load i64, i64* %6, align 8
  %2430 = add i64 %2429, -8
  %2431 = inttoptr i64 %2430 to i64*
  store i64 %2428, i64* %2431, align 8
  store i64 %2430, i64* %6, align 8
  store i64 %2427, i64* %3, align 8
  %call2_406d2f = tail call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* nonnull %0, i64 %2427, %struct.Memory* %2)
  %2432 = load i64, i64* %RBP.i, align 8
  %2433 = add i64 %2432, -16
  %2434 = load i64, i64* %3, align 8
  %2435 = add i64 %2434, 4
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2433 to i64*
  %2437 = load i64, i64* %2436, align 8
  store i64 %2437, i64* %RDX.i822, align 8
  %2438 = add i64 %2437, 64
  %2439 = load i32, i32* %EAX.i1885, align 4
  %2440 = add i64 %2434, 7
  store i64 %2440, i64* %3, align 8
  %2441 = inttoptr i64 %2438 to i32*
  store i32 %2439, i32* %2441, align 4
  %2442 = load i64, i64* %RBP.i, align 8
  %2443 = add i64 %2442, -16
  %2444 = load i64, i64* %3, align 8
  %2445 = add i64 %2444, 4
  store i64 %2445, i64* %3, align 8
  %2446 = inttoptr i64 %2443 to i64*
  %2447 = load i64, i64* %2446, align 8
  store i64 %2447, i64* %RDX.i822, align 8
  %2448 = add i64 %2447, 3160
  %2449 = add i64 %2444, 11
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2448 to i64*
  %2451 = load i64, i64* %2450, align 8
  store i64 %2451, i64* %RDX.i822, align 8
  %2452 = add i64 %2444, 15
  store i64 %2452, i64* %3, align 8
  %2453 = load i64, i64* %2446, align 8
  store i64 %2453, i64* %RSI.i814, align 8
  %2454 = add i64 %2453, 60
  %2455 = add i64 %2444, 18
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i32*
  %2457 = load i32, i32* %2456, align 4
  %2458 = zext i32 %2457 to i64
  store i64 %2458, i64* %RAX.i858, align 8
  store i64 %2458, i64* %RSI.i814, align 8
  %2459 = shl nuw nsw i64 %2458, 1
  %2460 = add i64 %2451, %2459
  %2461 = add i64 %2444, 24
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i16*
  %2463 = load i16, i16* %2462, align 2
  %2464 = zext i16 %2463 to i64
  store i64 %2464, i64* %RAX.i858, align 8
  %2465 = add i64 %2444, 28
  store i64 %2465, i64* %3, align 8
  %2466 = load i64, i64* %2446, align 8
  store i64 %2466, i64* %RDX.i822, align 8
  %2467 = add i64 %2466, 3168
  %2468 = add i64 %2444, 35
  store i64 %2468, i64* %3, align 8
  %2469 = inttoptr i64 %2467 to i64*
  %2470 = load i64, i64* %2469, align 8
  store i64 %2470, i64* %RDX.i822, align 8
  %2471 = add i64 %2444, 39
  store i64 %2471, i64* %3, align 8
  %2472 = load i64, i64* %2446, align 8
  store i64 %2472, i64* %RSI.i814, align 8
  %2473 = add i64 %2472, 60
  %2474 = add i64 %2444, 42
  store i64 %2474, i64* %3, align 8
  %2475 = inttoptr i64 %2473 to i32*
  %2476 = load i32, i32* %2475, align 4
  %2477 = lshr i32 %2476, 31
  %2478 = trunc i32 %2477 to i8
  %2479 = trunc i32 %2476 to i8
  %2480 = and i8 %2479, 1
  %2481 = lshr i32 %2476, 1
  %2482 = zext i32 %2481 to i64
  store i8 %2480, i8* %14, align 1
  %2483 = and i32 %2481, 255
  %2484 = tail call i32 @llvm.ctpop.i32(i32 %2483)
  %2485 = trunc i32 %2484 to i8
  %2486 = and i8 %2485, 1
  %2487 = xor i8 %2486, 1
  store i8 %2487, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2488 = icmp eq i32 %2481, 0
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %2478, i8* %38, align 1
  store i64 %2482, i64* %RCX.i723, align 8
  store i64 %2482, i64* %RSI.i814, align 8
  %2490 = add i64 %2470, %2482
  %2491 = add i64 %2444, 52
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i8*
  %2493 = load i8, i8* %2492, align 1
  %2494 = zext i8 %2493 to i64
  store i64 %2494, i64* %RCX.i723, align 8
  %2495 = add i64 %2444, 56
  store i64 %2495, i64* %3, align 8
  %2496 = load i64, i64* %2446, align 8
  store i64 %2496, i64* %RDX.i822, align 8
  %2497 = add i64 %2496, 60
  %2498 = add i64 %2444, 59
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2497 to i32*
  %2500 = load i32, i32* %2499, align 4
  %2501 = shl i32 %2500, 2
  %2502 = and i32 %2501, 4
  %2503 = zext i32 %2502 to i64
  store i64 %2503, i64* %RDI.i2136, align 8
  store i8 0, i8* %14, align 1
  %2504 = tail call i32 @llvm.ctpop.i32(i32 %2502)
  %2505 = trunc i32 %2504 to i8
  %2506 = xor i8 %2505, 1
  store i8 %2506, i8* %21, align 1
  %.lobit51 = lshr exact i32 %2502, 2
  %2507 = trunc i32 %.lobit51 to i8
  %2508 = xor i8 %2507, 1
  store i8 %2508, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2509 = load i64, i64* %RBP.i, align 8
  %2510 = add i64 %2509, -28
  %2511 = zext i8 %2493 to i32
  %2512 = add i64 %2444, 68
  store i64 %2512, i64* %3, align 8
  %2513 = inttoptr i64 %2510 to i32*
  store i32 %2511, i32* %2513, align 4
  %2514 = load i32, i32* %EDI.i802, align 4
  %2515 = zext i32 %2514 to i64
  %2516 = load i64, i64* %3, align 8
  store i64 %2515, i64* %RCX.i723, align 8
  %2517 = load i64, i64* %RBP.i, align 8
  %2518 = add i64 %2517, -28
  %2519 = add i64 %2516, 5
  store i64 %2519, i64* %3, align 8
  %2520 = inttoptr i64 %2518 to i32*
  %2521 = load i32, i32* %2520, align 4
  %2522 = zext i32 %2521 to i64
  store i64 %2522, i64* %RDI.i2136, align 8
  %2523 = add i64 %2516, 7
  store i64 %2523, i64* %3, align 8
  %2524 = trunc i32 %2514 to i5
  switch i5 %2524, label %2528 [
    i5 0, label %routine_shrl__cl___edi.exit966
    i5 1, label %2525
  ]

; <label>:2525:                                   ; preds = %block_.L_406ccd
  %2526 = lshr i32 %2521, 31
  %2527 = trunc i32 %2526 to i8
  br label %2534

; <label>:2528:                                   ; preds = %block_.L_406ccd
  %2529 = and i32 %2514, 31
  %2530 = zext i32 %2529 to i64
  %2531 = add nuw nsw i64 %2530, 4294967295
  %2532 = and i64 %2531, 4294967295
  %2533 = lshr i64 %2522, %2532
  br label %2534

; <label>:2534:                                   ; preds = %2528, %2525
  %2535 = phi i64 [ %2533, %2528 ], [ %2522, %2525 ]
  %2536 = phi i8 [ 0, %2528 ], [ %2527, %2525 ]
  %2537 = trunc i64 %2535 to i8
  %2538 = and i8 %2537, 1
  %2539 = lshr i64 %2535, 1
  %2540 = trunc i64 %2539 to i32
  %2541 = and i32 %2540, 2147483647
  %2542 = zext i32 %2541 to i64
  store i64 %2542, i64* %RDI.i2136, align 8
  store i8 %2538, i8* %14, align 1
  %2543 = and i32 %2540, 255
  %2544 = tail call i32 @llvm.ctpop.i32(i32 %2543)
  %2545 = trunc i32 %2544 to i8
  %2546 = and i8 %2545, 1
  %2547 = xor i8 %2546, 1
  store i8 %2547, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2548 = icmp eq i32 %2541, 0
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %2536, i8* %38, align 1
  br label %routine_shrl__cl___edi.exit966

routine_shrl__cl___edi.exit966:                   ; preds = %2534, %block_.L_406ccd
  %2550 = phi i64 [ %2542, %2534 ], [ %2522, %block_.L_406ccd ]
  %2551 = shl nuw nsw i64 %2550, 16
  %2552 = and i64 %2551, 983040
  store i64 %2552, i64* %RDI.i2136, align 8
  %2553 = load i64, i64* %RAX.i858, align 8
  %2554 = or i64 %2552, %2553
  %2555 = trunc i64 %2554 to i32
  %2556 = and i64 %2554, 4294967295
  store i64 %2556, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %2557 = and i32 %2555, 255
  %2558 = tail call i32 @llvm.ctpop.i32(i32 %2557)
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  %2561 = xor i8 %2560, 1
  store i8 %2561, i8* %21, align 1
  %2562 = icmp eq i32 %2555, 0
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %29, align 1
  %2564 = lshr i32 %2555, 31
  %2565 = trunc i32 %2564 to i8
  store i8 %2565, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2566 = add i64 %2517, -16
  %2567 = add i64 %2516, 19
  store i64 %2567, i64* %3, align 8
  %2568 = inttoptr i64 %2566 to i64*
  %2569 = load i64, i64* %2568, align 8
  store i64 %2569, i64* %RDX.i822, align 8
  %2570 = add i64 %2569, 60
  %2571 = trunc i64 %2554 to i32
  %2572 = add i64 %2516, 22
  store i64 %2572, i64* %3, align 8
  %2573 = inttoptr i64 %2570 to i32*
  store i32 %2571, i32* %2573, align 4
  %2574 = load i64, i64* %RBP.i, align 8
  %2575 = add i64 %2574, -16
  %2576 = load i64, i64* %3, align 8
  %2577 = add i64 %2576, 4
  store i64 %2577, i64* %3, align 8
  %2578 = inttoptr i64 %2575 to i64*
  %2579 = load i64, i64* %2578, align 8
  store i64 %2579, i64* %RDX.i822, align 8
  %2580 = add i64 %2579, 24
  %2581 = add i64 %2576, 8
  store i64 %2581, i64* %3, align 8
  %2582 = inttoptr i64 %2580 to i32*
  %2583 = load i32, i32* %2582, align 4
  store i8 0, i8* %14, align 1
  %2584 = and i32 %2583, 255
  %2585 = tail call i32 @llvm.ctpop.i32(i32 %2584)
  %2586 = trunc i32 %2585 to i8
  %2587 = and i8 %2586, 1
  %2588 = xor i8 %2587, 1
  store i8 %2588, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2589 = icmp eq i32 %2583, 0
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %29, align 1
  %2591 = lshr i32 %2583, 31
  %2592 = trunc i32 %2591 to i8
  store i8 %2592, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v167 = select i1 %2589, i64 14, i64 82
  %2593 = add i64 %2576, %.v167
  store i64 %2593, i64* %3, align 8
  br i1 %2589, label %block_406da4, label %block_.L_406de8

block_406da4:                                     ; preds = %routine_shrl__cl___edi.exit966
  %2594 = add i64 %2593, 4
  store i64 %2594, i64* %3, align 8
  %2595 = load i64, i64* %2578, align 8
  store i64 %2595, i64* %RAX.i858, align 8
  %2596 = add i64 %2595, 28
  %2597 = add i64 %2593, 8
  store i64 %2597, i64* %3, align 8
  %2598 = inttoptr i64 %2596 to i32*
  %2599 = load i32, i32* %2598, align 4
  %2600 = sext i32 %2599 to i64
  store i64 %2600, i64* %RAX.i858, align 8
  %2601 = shl nsw i64 %2600, 2
  %2602 = add nsw i64 %2601, 6391152
  %2603 = add i64 %2593, 15
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i32*
  %2605 = load i32, i32* %2604, align 4
  %2606 = zext i32 %2605 to i64
  store i64 %2606, i64* %RCX.i723, align 8
  %2607 = add i64 %2593, 19
  store i64 %2607, i64* %3, align 8
  %2608 = load i64, i64* %2578, align 8
  store i64 %2608, i64* %RAX.i858, align 8
  %2609 = add i64 %2608, 24
  %2610 = add i64 %2593, 22
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i32*
  store i32 %2605, i32* %2611, align 4
  %2612 = load i64, i64* %RBP.i, align 8
  %2613 = add i64 %2612, -16
  %2614 = load i64, i64* %3, align 8
  %2615 = add i64 %2614, 4
  store i64 %2615, i64* %3, align 8
  %2616 = inttoptr i64 %2613 to i64*
  %2617 = load i64, i64* %2616, align 8
  store i64 %2617, i64* %RAX.i858, align 8
  %2618 = add i64 %2617, 28
  %2619 = add i64 %2614, 7
  store i64 %2619, i64* %3, align 8
  %2620 = inttoptr i64 %2618 to i32*
  %2621 = load i32, i32* %2620, align 4
  %2622 = add i32 %2621, 1
  %2623 = zext i32 %2622 to i64
  store i64 %2623, i64* %RCX.i723, align 8
  %2624 = icmp eq i32 %2621, -1
  %2625 = icmp eq i32 %2622, 0
  %2626 = or i1 %2624, %2625
  %2627 = zext i1 %2626 to i8
  store i8 %2627, i8* %14, align 1
  %2628 = and i32 %2622, 255
  %2629 = tail call i32 @llvm.ctpop.i32(i32 %2628)
  %2630 = trunc i32 %2629 to i8
  %2631 = and i8 %2630, 1
  %2632 = xor i8 %2631, 1
  store i8 %2632, i8* %21, align 1
  %2633 = xor i32 %2622, %2621
  %2634 = lshr i32 %2633, 4
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  store i8 %2636, i8* %26, align 1
  %2637 = zext i1 %2625 to i8
  store i8 %2637, i8* %29, align 1
  %2638 = lshr i32 %2622, 31
  %2639 = trunc i32 %2638 to i8
  store i8 %2639, i8* %32, align 1
  %2640 = lshr i32 %2621, 31
  %2641 = xor i32 %2638, %2640
  %2642 = add nuw nsw i32 %2641, %2638
  %2643 = icmp eq i32 %2642, 2
  %2644 = zext i1 %2643 to i8
  store i8 %2644, i8* %38, align 1
  %2645 = add i64 %2614, 13
  store i64 %2645, i64* %3, align 8
  store i32 %2622, i32* %2620, align 4
  %2646 = load i64, i64* %RBP.i, align 8
  %2647 = add i64 %2646, -16
  %2648 = load i64, i64* %3, align 8
  %2649 = add i64 %2648, 4
  store i64 %2649, i64* %3, align 8
  %2650 = inttoptr i64 %2647 to i64*
  %2651 = load i64, i64* %2650, align 8
  store i64 %2651, i64* %RAX.i858, align 8
  %2652 = add i64 %2651, 28
  %2653 = add i64 %2648, 11
  store i64 %2653, i64* %3, align 8
  %2654 = inttoptr i64 %2652 to i32*
  %2655 = load i32, i32* %2654, align 4
  %2656 = add i32 %2655, -512
  %2657 = icmp ult i32 %2655, 512
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %14, align 1
  %2659 = and i32 %2656, 255
  %2660 = tail call i32 @llvm.ctpop.i32(i32 %2659)
  %2661 = trunc i32 %2660 to i8
  %2662 = and i8 %2661, 1
  %2663 = xor i8 %2662, 1
  store i8 %2663, i8* %21, align 1
  %2664 = xor i32 %2656, %2655
  %2665 = lshr i32 %2664, 4
  %2666 = trunc i32 %2665 to i8
  %2667 = and i8 %2666, 1
  store i8 %2667, i8* %26, align 1
  %2668 = icmp eq i32 %2656, 0
  %2669 = zext i1 %2668 to i8
  store i8 %2669, i8* %29, align 1
  %2670 = lshr i32 %2656, 31
  %2671 = trunc i32 %2670 to i8
  store i8 %2671, i8* %32, align 1
  %2672 = lshr i32 %2655, 31
  %2673 = xor i32 %2670, %2672
  %2674 = add nuw nsw i32 %2673, %2672
  %2675 = icmp eq i32 %2674, 2
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %38, align 1
  %.v168 = select i1 %2668, i64 17, i64 28
  %2677 = add i64 %2648, %.v168
  store i64 %2677, i64* %3, align 8
  br i1 %2668, label %block_406dd8, label %block_.L_406de3

block_406dd8:                                     ; preds = %block_406da4
  %2678 = add i64 %2677, 4
  store i64 %2678, i64* %3, align 8
  %2679 = load i64, i64* %2650, align 8
  store i64 %2679, i64* %RAX.i858, align 8
  %2680 = add i64 %2679, 28
  %2681 = add i64 %2677, 11
  store i64 %2681, i64* %3, align 8
  %2682 = inttoptr i64 %2680 to i32*
  store i32 0, i32* %2682, align 4
  %.pre135 = load i64, i64* %3, align 8
  %.pre136.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_406de3

block_.L_406de3:                                  ; preds = %block_406da4, %block_406dd8
  %.pre136 = phi i64 [ %.pre136.pre, %block_406dd8 ], [ %2646, %block_406da4 ]
  %2683 = phi i64 [ %.pre135, %block_406dd8 ], [ %2677, %block_406da4 ]
  %2684 = add i64 %2683, 5
  store i64 %2684, i64* %3, align 8
  br label %block_.L_406de8

block_.L_406de8:                                  ; preds = %routine_shrl__cl___edi.exit966, %block_.L_406de3
  %2685 = phi i64 [ %.pre136, %block_.L_406de3 ], [ %2574, %routine_shrl__cl___edi.exit966 ]
  %2686 = phi i64 [ %2684, %block_.L_406de3 ], [ %2593, %routine_shrl__cl___edi.exit966 ]
  store i64 0, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1, i64* %RCX.i723, align 8
  %2687 = add i64 %2685, -16
  %2688 = add i64 %2686, 11
  store i64 %2688, i64* %3, align 8
  %2689 = inttoptr i64 %2687 to i64*
  %2690 = load i64, i64* %2689, align 8
  store i64 %2690, i64* %RDX.i822, align 8
  %2691 = add i64 %2690, 24
  %2692 = add i64 %2686, 14
  store i64 %2692, i64* %3, align 8
  %2693 = inttoptr i64 %2691 to i32*
  %2694 = load i32, i32* %2693, align 4
  %2695 = add i32 %2694, -1
  %2696 = zext i32 %2695 to i64
  store i64 %2696, i64* %RSI.i814, align 8
  %2697 = icmp ne i32 %2694, 0
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %14, align 1
  %2699 = and i32 %2695, 255
  %2700 = tail call i32 @llvm.ctpop.i32(i32 %2699)
  %2701 = trunc i32 %2700 to i8
  %2702 = and i8 %2701, 1
  %2703 = xor i8 %2702, 1
  store i8 %2703, i8* %21, align 1
  %2704 = xor i32 %2694, 16
  %2705 = xor i32 %2704, %2695
  %2706 = lshr i32 %2705, 4
  %2707 = trunc i32 %2706 to i8
  %2708 = and i8 %2707, 1
  store i8 %2708, i8* %26, align 1
  %2709 = icmp eq i32 %2695, 0
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %29, align 1
  %2711 = lshr i32 %2695, 31
  %2712 = trunc i32 %2711 to i8
  store i8 %2712, i8* %32, align 1
  %2713 = lshr i32 %2694, 31
  %2714 = xor i32 %2711, %2713
  %2715 = xor i32 %2711, 1
  %2716 = add nuw nsw i32 %2714, %2715
  %2717 = icmp eq i32 %2716, 2
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %38, align 1
  %2719 = add i64 %2686, 20
  store i64 %2719, i64* %3, align 8
  store i32 %2695, i32* %2693, align 4
  %2720 = load i64, i64* %RBP.i, align 8
  %2721 = add i64 %2720, -16
  %2722 = load i64, i64* %3, align 8
  %2723 = add i64 %2722, 4
  store i64 %2723, i64* %3, align 8
  %2724 = inttoptr i64 %2721 to i64*
  %2725 = load i64, i64* %2724, align 8
  store i64 %2725, i64* %RDX.i822, align 8
  %2726 = add i64 %2725, 24
  %2727 = add i64 %2722, 8
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i32*
  %2729 = load i32, i32* %2728, align 4
  %2730 = add i32 %2729, -1
  %2731 = icmp eq i32 %2729, 0
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %14, align 1
  %2733 = and i32 %2730, 255
  %2734 = tail call i32 @llvm.ctpop.i32(i32 %2733)
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  %2737 = xor i8 %2736, 1
  store i8 %2737, i8* %21, align 1
  %2738 = xor i32 %2730, %2729
  %2739 = lshr i32 %2738, 4
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  store i8 %2741, i8* %26, align 1
  %2742 = icmp eq i32 %2730, 0
  %2743 = zext i1 %2742 to i8
  store i8 %2743, i8* %29, align 1
  %2744 = lshr i32 %2730, 31
  %2745 = trunc i32 %2744 to i8
  store i8 %2745, i8* %32, align 1
  %2746 = lshr i32 %2729, 31
  %2747 = xor i32 %2744, %2746
  %2748 = add nuw nsw i32 %2747, %2746
  %2749 = icmp eq i32 %2748, 2
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %38, align 1
  %2751 = load i32, i32* %ECX.i717, align 4
  %2752 = zext i32 %2751 to i64
  %2753 = load i64, i64* %RAX.i858, align 8
  %2754 = select i1 %2742, i64 %2752, i64 %2753
  %2755 = and i64 %2754, 4294967295
  store i64 %2755, i64* %RAX.i858, align 8
  %2756 = add i64 %2722, 15
  store i64 %2756, i64* %3, align 8
  %2757 = load i64, i64* %2724, align 8
  store i64 %2757, i64* %RDX.i822, align 8
  %2758 = add i64 %2757, 64
  %2759 = add i64 %2722, 18
  store i64 %2759, i64* %3, align 8
  %2760 = trunc i64 %2754 to i32
  %2761 = inttoptr i64 %2758 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = xor i32 %2762, %2760
  %2764 = zext i32 %2763 to i64
  store i64 %2764, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %2765 = and i32 %2763, 255
  %2766 = tail call i32 @llvm.ctpop.i32(i32 %2765)
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = xor i8 %2768, 1
  store i8 %2769, i8* %21, align 1
  %2770 = icmp eq i32 %2763, 0
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %29, align 1
  %2772 = lshr i32 %2763, 31
  %2773 = trunc i32 %2772 to i8
  store i8 %2773, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2774 = add i64 %2722, 21
  store i64 %2774, i64* %3, align 8
  store i32 %2763, i32* %2761, align 4
  %2775 = load i64, i64* %RBP.i, align 8
  %2776 = add i64 %2775, -16
  %2777 = load i64, i64* %3, align 8
  %2778 = add i64 %2777, 4
  store i64 %2778, i64* %3, align 8
  %2779 = inttoptr i64 %2776 to i64*
  %2780 = load i64, i64* %2779, align 8
  store i64 %2780, i64* %RDX.i822, align 8
  %2781 = add i64 %2780, 1092
  %2782 = add i64 %2777, 10
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2781 to i32*
  %2784 = load i32, i32* %2783, align 4
  %2785 = add i32 %2784, 1
  %2786 = zext i32 %2785 to i64
  store i64 %2786, i64* %RAX.i858, align 8
  %2787 = icmp eq i32 %2784, -1
  %2788 = icmp eq i32 %2785, 0
  %2789 = or i1 %2787, %2788
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %14, align 1
  %2791 = and i32 %2785, 255
  %2792 = tail call i32 @llvm.ctpop.i32(i32 %2791)
  %2793 = trunc i32 %2792 to i8
  %2794 = and i8 %2793, 1
  %2795 = xor i8 %2794, 1
  store i8 %2795, i8* %21, align 1
  %2796 = xor i32 %2785, %2784
  %2797 = lshr i32 %2796, 4
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  store i8 %2799, i8* %26, align 1
  %2800 = zext i1 %2788 to i8
  store i8 %2800, i8* %29, align 1
  %2801 = lshr i32 %2785, 31
  %2802 = trunc i32 %2801 to i8
  store i8 %2802, i8* %32, align 1
  %2803 = lshr i32 %2784, 31
  %2804 = xor i32 %2801, %2803
  %2805 = add nuw nsw i32 %2804, %2801
  %2806 = icmp eq i32 %2805, 2
  %2807 = zext i1 %2806 to i8
  store i8 %2807, i8* %38, align 1
  %2808 = add i64 %2777, 19
  store i64 %2808, i64* %3, align 8
  store i32 %2785, i32* %2783, align 4
  br label %block_.L_4066af.sink.split

block_.L_406e2e.sink.split:                       ; preds = %routine_shrl__cl___edi.exit281, %routine_shrl__cl___edi.exit428, %routine_shrl__cl___edi.exit575, %block_407045, %block_40711f, %block_4071f9, %routine_shrl__cl___edi.exit
  %.sink95 = phi i64 [ -1280, %routine_shrl__cl___edi.exit ], [ -982, %block_4071f9 ], [ -764, %block_40711f ], [ -546, %block_407045 ], [ -731, %routine_shrl__cl___edi.exit428 ], [ -949, %routine_shrl__cl___edi.exit281 ], [ -513, %routine_shrl__cl___edi.exit575 ]
  %2809 = load i64, i64* %3, align 8
  %2810 = add i64 %2809, %.sink95
  store i64 %2810, i64* %3, align 8
  br label %block_.L_406e2e

block_.L_406e2e:                                  ; preds = %block_.L_406e2e.preheader, %block_.L_406e2e.sink.split
  %2811 = phi i64 [ %2810, %block_.L_406e2e.sink.split ], [ %63, %block_.L_406e2e.preheader ]
  %2812 = add i64 %2811, 5
  br label %block_.L_406e33

block_.L_406e33:                                  ; preds = %block_.L_406f0e, %block_.L_406e2e
  %storemerge56 = phi i64 [ %2812, %block_.L_406e2e ], [ %3189, %block_.L_406f0e ]
  %2813 = load i64, i64* %RBP.i, align 8
  %2814 = add i64 %2813, -16
  %2815 = add i64 %storemerge56, 4
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2814 to i64*
  %2817 = load i64, i64* %2816, align 8
  store i64 %2817, i64* %RAX.i858, align 8
  %2818 = add i64 %storemerge56, 7
  store i64 %2818, i64* %3, align 8
  %2819 = inttoptr i64 %2817 to i64*
  %2820 = load i64, i64* %2819, align 8
  store i64 %2820, i64* %RAX.i858, align 8
  %2821 = add i64 %2820, 32
  %2822 = add i64 %storemerge56, 11
  store i64 %2822, i64* %3, align 8
  %2823 = inttoptr i64 %2821 to i32*
  %2824 = load i32, i32* %2823, align 4
  store i8 0, i8* %14, align 1
  %2825 = and i32 %2824, 255
  %2826 = tail call i32 @llvm.ctpop.i32(i32 %2825)
  %2827 = trunc i32 %2826 to i8
  %2828 = and i8 %2827, 1
  %2829 = xor i8 %2828, 1
  store i8 %2829, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2830 = icmp eq i32 %2824, 0
  %2831 = zext i1 %2830 to i8
  store i8 %2831, i8* %29, align 1
  %2832 = lshr i32 %2824, 31
  %2833 = trunc i32 %2832 to i8
  store i8 %2833, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v148 = select i1 %2830, i64 17, i64 26
  %2834 = add i64 %storemerge56, %.v148
  store i64 %2834, i64* %3, align 8
  br i1 %2830, label %block_.L_407333.loopexit, label %block_.L_406e4d

block_.L_406e4d:                                  ; preds = %block_.L_406e33
  %2835 = add i64 %2834, 4
  store i64 %2835, i64* %3, align 8
  %2836 = load i64, i64* %2816, align 8
  store i64 %2836, i64* %RAX.i858, align 8
  %2837 = add i64 %2836, 16
  %2838 = add i64 %2834, 8
  store i64 %2838, i64* %3, align 8
  %2839 = inttoptr i64 %2837 to i32*
  %2840 = load i32, i32* %2839, align 4
  store i8 0, i8* %14, align 1
  %2841 = and i32 %2840, 255
  %2842 = tail call i32 @llvm.ctpop.i32(i32 %2841)
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  %2845 = xor i8 %2844, 1
  store i8 %2845, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2846 = icmp eq i32 %2840, 0
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %29, align 1
  %2848 = lshr i32 %2840, 31
  %2849 = trunc i32 %2848 to i8
  store i8 %2849, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v147 = select i1 %2846, i64 14, i64 19
  %2850 = add i64 %2834, %.v147
  store i64 %2850, i64* %3, align 8
  br i1 %2846, label %block_406e5b, label %block_.L_406e60

block_406e5b:                                     ; preds = %block_.L_406e4d
  %2851 = add i64 %2850, 188
  store i64 %2851, i64* %3, align 8
  %2852 = load i64, i64* %2816, align 8
  store i64 %2852, i64* %RAX.i858, align 8
  %2853 = add i64 %2852, 1092
  %2854 = add i64 %2850, 194
  store i64 %2854, i64* %3, align 8
  %2855 = inttoptr i64 %2853 to i32*
  %2856 = load i32, i32* %2855, align 4
  %2857 = zext i32 %2856 to i64
  store i64 %2857, i64* %RCX.i723, align 8
  %2858 = add i64 %2850, 198
  store i64 %2858, i64* %3, align 8
  %2859 = load i64, i64* %2816, align 8
  store i64 %2859, i64* %RAX.i858, align 8
  %2860 = add i64 %2859, 64080
  %2861 = add i64 %2850, 204
  store i64 %2861, i64* %3, align 8
  %2862 = inttoptr i64 %2860 to i32*
  %2863 = load i32, i32* %2862, align 4
  %2864 = add i32 %2863, 1
  %2865 = zext i32 %2864 to i64
  store i64 %2865, i64* %RDX.i822, align 8
  %2866 = lshr i32 %2864, 31
  %2867 = sub i32 %2856, %2864
  %2868 = icmp ult i32 %2856, %2864
  %2869 = zext i1 %2868 to i8
  store i8 %2869, i8* %14, align 1
  %2870 = and i32 %2867, 255
  %2871 = tail call i32 @llvm.ctpop.i32(i32 %2870)
  %2872 = trunc i32 %2871 to i8
  %2873 = and i8 %2872, 1
  %2874 = xor i8 %2873, 1
  store i8 %2874, i8* %21, align 1
  %2875 = xor i32 %2864, %2856
  %2876 = xor i32 %2875, %2867
  %2877 = lshr i32 %2876, 4
  %2878 = trunc i32 %2877 to i8
  %2879 = and i8 %2878, 1
  store i8 %2879, i8* %26, align 1
  %2880 = icmp eq i32 %2867, 0
  %2881 = zext i1 %2880 to i8
  store i8 %2881, i8* %29, align 1
  %2882 = lshr i32 %2867, 31
  %2883 = trunc i32 %2882 to i8
  store i8 %2883, i8* %32, align 1
  %2884 = lshr i32 %2856, 31
  %2885 = xor i32 %2866, %2884
  %2886 = xor i32 %2882, %2884
  %2887 = add nuw nsw i32 %2886, %2885
  %2888 = icmp eq i32 %2887, 2
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %38, align 1
  %.v174 = select i1 %2880, i64 215, i64 224
  %2890 = add i64 %2850, %.v174
  store i64 %2890, i64* %3, align 8
  br i1 %2880, label %block_.L_407333.loopexit226, label %block_.L_406f3b

block_.L_406e60:                                  ; preds = %block_.L_406e4d
  %2891 = add i64 %2850, 4
  store i64 %2891, i64* %3, align 8
  %2892 = load i64, i64* %2816, align 8
  store i64 %2892, i64* %RAX.i858, align 8
  %2893 = add i64 %2892, 12
  %2894 = add i64 %2850, 7
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2893 to i8*
  %2896 = load i8, i8* %2895, align 1
  store i8 %2896, i8* %CL.i837, align 1
  %2897 = add i64 %2850, 11
  store i64 %2897, i64* %3, align 8
  %2898 = load i64, i64* %2816, align 8
  store i64 %2898, i64* %RAX.i858, align 8
  %2899 = add i64 %2850, 14
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2898 to i64*
  %2901 = load i64, i64* %2900, align 8
  store i64 %2901, i64* %RAX.i858, align 8
  %2902 = add i64 %2901, 24
  %2903 = add i64 %2850, 18
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i64*
  %2905 = load i64, i64* %2904, align 8
  store i64 %2905, i64* %RAX.i858, align 8
  %2906 = add i64 %2850, 20
  store i64 %2906, i64* %3, align 8
  %2907 = inttoptr i64 %2905 to i8*
  store i8 %2896, i8* %2907, align 1
  %2908 = load i64, i64* %RBP.i, align 8
  %2909 = add i64 %2908, -16
  %2910 = load i64, i64* %3, align 8
  %2911 = add i64 %2910, 4
  store i64 %2911, i64* %3, align 8
  %2912 = inttoptr i64 %2909 to i64*
  %2913 = load i64, i64* %2912, align 8
  store i64 %2913, i64* %RAX.i858, align 8
  %2914 = add i64 %2913, 3184
  %2915 = add i64 %2910, 10
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2914 to i32*
  %2917 = load i32, i32* %2916, align 4
  %2918 = shl i32 %2917, 8
  %2919 = zext i32 %2918 to i64
  store i64 %2919, i64* %RDX.i822, align 8
  %2920 = lshr i32 %2917, 24
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  store i8 %2922, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2923 = icmp eq i32 %2918, 0
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %29, align 1
  %2925 = lshr i32 %2917, 23
  %2926 = trunc i32 %2925 to i8
  %2927 = and i8 %2926, 1
  store i8 %2927, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2928 = add i64 %2910, 17
  store i64 %2928, i64* %3, align 8
  %2929 = load i64, i64* %2912, align 8
  store i64 %2929, i64* %RAX.i858, align 8
  %2930 = add i64 %2929, 3184
  %2931 = add i64 %2910, 23
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to i32*
  %2933 = load i32, i32* %2932, align 4
  %2934 = lshr i32 %2933, 23
  %2935 = trunc i32 %2934 to i8
  %2936 = and i8 %2935, 1
  %2937 = lshr i32 %2933, 24
  %2938 = zext i32 %2937 to i64
  store i64 %2938, i64* %RSI.i814, align 8
  store i8 %2936, i8* %14, align 1
  %2939 = tail call i32 @llvm.ctpop.i32(i32 %2937)
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  %2942 = xor i8 %2941, 1
  store i8 %2942, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2943 = icmp eq i32 %2937, 0
  %2944 = zext i1 %2943 to i8
  store i8 %2944, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2945 = add i64 %2910, 30
  store i64 %2945, i64* %3, align 8
  %2946 = load i64, i64* %2912, align 8
  store i64 %2946, i64* %RAX.i858, align 8
  %2947 = add i64 %2946, 12
  %2948 = add i64 %2910, 34
  store i64 %2948, i64* %3, align 8
  %2949 = inttoptr i64 %2947 to i8*
  %2950 = load i8, i8* %2949, align 1
  %2951 = zext i8 %2950 to i64
  store i64 %2951, i64* %RDI.i2136, align 8
  %2952 = zext i8 %2950 to i64
  %2953 = xor i64 %2952, %2938
  %2954 = trunc i64 %2953 to i32
  store i8 0, i8* %14, align 1
  %2955 = tail call i32 @llvm.ctpop.i32(i32 %2954)
  %2956 = trunc i32 %2955 to i8
  %2957 = and i8 %2956, 1
  %2958 = xor i8 %2957, 1
  store i8 %2958, i8* %21, align 1
  %2959 = icmp eq i32 %2954, 0
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %2953, i64* %RSI.i814, align 8
  store i64 %2953, i64* %RAX.i858, align 8
  %2961 = shl nuw nsw i64 %2953, 2
  %2962 = add nuw nsw i64 %2961, 6390128
  %2963 = add i64 %2910, 47
  store i64 %2963, i64* %3, align 8
  %2964 = inttoptr i64 %2962 to i32*
  %2965 = load i32, i32* %2964, align 4
  %2966 = xor i32 %2965, %2918
  %2967 = zext i32 %2966 to i64
  store i64 %2967, i64* %RDX.i822, align 8
  store i8 0, i8* %14, align 1
  %2968 = and i32 %2965, 255
  %2969 = tail call i32 @llvm.ctpop.i32(i32 %2968)
  %2970 = trunc i32 %2969 to i8
  %2971 = and i8 %2970, 1
  %2972 = xor i8 %2971, 1
  store i8 %2972, i8* %21, align 1
  %2973 = icmp eq i32 %2966, 0
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %29, align 1
  %2975 = lshr i32 %2966, 31
  %2976 = trunc i32 %2975 to i8
  store i8 %2976, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2977 = load i64, i64* %RBP.i, align 8
  %2978 = add i64 %2977, -16
  %2979 = add i64 %2910, 51
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2978 to i64*
  %2981 = load i64, i64* %2980, align 8
  store i64 %2981, i64* %RAX.i858, align 8
  %2982 = add i64 %2981, 3184
  %2983 = add i64 %2910, 57
  store i64 %2983, i64* %3, align 8
  %2984 = inttoptr i64 %2982 to i32*
  store i32 %2966, i32* %2984, align 4
  %2985 = load i64, i64* %RBP.i, align 8
  %2986 = add i64 %2985, -16
  %2987 = load i64, i64* %3, align 8
  %2988 = add i64 %2987, 4
  store i64 %2988, i64* %3, align 8
  %2989 = inttoptr i64 %2986 to i64*
  %2990 = load i64, i64* %2989, align 8
  store i64 %2990, i64* %RAX.i858, align 8
  %2991 = add i64 %2990, 16
  %2992 = add i64 %2987, 7
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2991 to i32*
  %2994 = load i32, i32* %2993, align 4
  %2995 = add i32 %2994, -1
  %2996 = zext i32 %2995 to i64
  store i64 %2996, i64* %RDX.i822, align 8
  %2997 = icmp ne i32 %2994, 0
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %14, align 1
  %2999 = and i32 %2995, 255
  %3000 = tail call i32 @llvm.ctpop.i32(i32 %2999)
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  %3003 = xor i8 %3002, 1
  store i8 %3003, i8* %21, align 1
  %3004 = xor i32 %2994, 16
  %3005 = xor i32 %3004, %2995
  %3006 = lshr i32 %3005, 4
  %3007 = trunc i32 %3006 to i8
  %3008 = and i8 %3007, 1
  store i8 %3008, i8* %26, align 1
  %3009 = icmp eq i32 %2995, 0
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %29, align 1
  %3011 = lshr i32 %2995, 31
  %3012 = trunc i32 %3011 to i8
  store i8 %3012, i8* %32, align 1
  %3013 = lshr i32 %2994, 31
  %3014 = xor i32 %3011, %3013
  %3015 = xor i32 %3011, 1
  %3016 = add nuw nsw i32 %3014, %3015
  %3017 = icmp eq i32 %3016, 2
  %3018 = zext i1 %3017 to i8
  store i8 %3018, i8* %38, align 1
  %3019 = add i64 %2987, 13
  store i64 %3019, i64* %3, align 8
  store i32 %2995, i32* %2993, align 4
  %3020 = load i64, i64* %RBP.i, align 8
  %3021 = add i64 %3020, -16
  %3022 = load i64, i64* %3, align 8
  %3023 = add i64 %3022, 4
  store i64 %3023, i64* %3, align 8
  %3024 = inttoptr i64 %3021 to i64*
  %3025 = load i64, i64* %3024, align 8
  store i64 %3025, i64* %RAX.i858, align 8
  %3026 = add i64 %3022, 7
  store i64 %3026, i64* %3, align 8
  %3027 = inttoptr i64 %3025 to i64*
  %3028 = load i64, i64* %3027, align 8
  store i64 %3028, i64* %RAX.i858, align 8
  %3029 = add i64 %3028, 24
  %3030 = add i64 %3022, 11
  store i64 %3030, i64* %3, align 8
  %3031 = inttoptr i64 %3029 to i64*
  %3032 = load i64, i64* %3031, align 8
  %3033 = add i64 %3032, 1
  store i64 %3033, i64* %R8.i770, align 8
  %3034 = icmp eq i64 %3032, -1
  %3035 = icmp eq i64 %3033, 0
  %3036 = or i1 %3034, %3035
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %14, align 1
  %3038 = trunc i64 %3033 to i32
  %3039 = and i32 %3038, 255
  %3040 = tail call i32 @llvm.ctpop.i32(i32 %3039)
  %3041 = trunc i32 %3040 to i8
  %3042 = and i8 %3041, 1
  %3043 = xor i8 %3042, 1
  store i8 %3043, i8* %21, align 1
  %3044 = xor i64 %3033, %3032
  %3045 = lshr i64 %3044, 4
  %3046 = trunc i64 %3045 to i8
  %3047 = and i8 %3046, 1
  store i8 %3047, i8* %26, align 1
  %3048 = zext i1 %3035 to i8
  store i8 %3048, i8* %29, align 1
  %3049 = lshr i64 %3033, 63
  %3050 = trunc i64 %3049 to i8
  store i8 %3050, i8* %32, align 1
  %3051 = lshr i64 %3032, 63
  %3052 = xor i64 %3049, %3051
  %3053 = add nuw nsw i64 %3052, %3049
  %3054 = icmp eq i64 %3053, 2
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %38, align 1
  %3056 = add i64 %3022, 19
  store i64 %3056, i64* %3, align 8
  store i64 %3033, i64* %3031, align 8
  %3057 = load i64, i64* %RBP.i, align 8
  %3058 = add i64 %3057, -16
  %3059 = load i64, i64* %3, align 8
  %3060 = add i64 %3059, 4
  store i64 %3060, i64* %3, align 8
  %3061 = inttoptr i64 %3058 to i64*
  %3062 = load i64, i64* %3061, align 8
  store i64 %3062, i64* %RAX.i858, align 8
  %3063 = add i64 %3059, 7
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3062 to i64*
  %3065 = load i64, i64* %3064, align 8
  store i64 %3065, i64* %RAX.i858, align 8
  %3066 = add i64 %3065, 32
  %3067 = add i64 %3059, 10
  store i64 %3067, i64* %3, align 8
  %3068 = inttoptr i64 %3066 to i32*
  %3069 = load i32, i32* %3068, align 4
  %3070 = add i32 %3069, -1
  %3071 = zext i32 %3070 to i64
  store i64 %3071, i64* %RDX.i822, align 8
  %3072 = icmp ne i32 %3069, 0
  %3073 = zext i1 %3072 to i8
  store i8 %3073, i8* %14, align 1
  %3074 = and i32 %3070, 255
  %3075 = tail call i32 @llvm.ctpop.i32(i32 %3074)
  %3076 = trunc i32 %3075 to i8
  %3077 = and i8 %3076, 1
  %3078 = xor i8 %3077, 1
  store i8 %3078, i8* %21, align 1
  %3079 = xor i32 %3069, 16
  %3080 = xor i32 %3079, %3070
  %3081 = lshr i32 %3080, 4
  %3082 = trunc i32 %3081 to i8
  %3083 = and i8 %3082, 1
  store i8 %3083, i8* %26, align 1
  %3084 = icmp eq i32 %3070, 0
  %3085 = zext i1 %3084 to i8
  store i8 %3085, i8* %29, align 1
  %3086 = lshr i32 %3070, 31
  %3087 = trunc i32 %3086 to i8
  store i8 %3087, i8* %32, align 1
  %3088 = lshr i32 %3069, 31
  %3089 = xor i32 %3086, %3088
  %3090 = xor i32 %3086, 1
  %3091 = add nuw nsw i32 %3089, %3090
  %3092 = icmp eq i32 %3091, 2
  %3093 = zext i1 %3092 to i8
  store i8 %3093, i8* %38, align 1
  %3094 = add i64 %3059, 16
  store i64 %3094, i64* %3, align 8
  store i32 %3070, i32* %3068, align 4
  %3095 = load i64, i64* %RBP.i, align 8
  %3096 = add i64 %3095, -16
  %3097 = load i64, i64* %3, align 8
  %3098 = add i64 %3097, 4
  store i64 %3098, i64* %3, align 8
  %3099 = inttoptr i64 %3096 to i64*
  %3100 = load i64, i64* %3099, align 8
  store i64 %3100, i64* %RAX.i858, align 8
  %3101 = add i64 %3097, 7
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i64*
  %3103 = load i64, i64* %3102, align 8
  store i64 %3103, i64* %RAX.i858, align 8
  %3104 = add i64 %3103, 36
  %3105 = add i64 %3097, 10
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i32*
  %3107 = load i32, i32* %3106, align 4
  %3108 = add i32 %3107, 1
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RDX.i822, align 8
  %3110 = icmp eq i32 %3107, -1
  %3111 = icmp eq i32 %3108, 0
  %3112 = or i1 %3110, %3111
  %3113 = zext i1 %3112 to i8
  store i8 %3113, i8* %14, align 1
  %3114 = and i32 %3108, 255
  %3115 = tail call i32 @llvm.ctpop.i32(i32 %3114)
  %3116 = trunc i32 %3115 to i8
  %3117 = and i8 %3116, 1
  %3118 = xor i8 %3117, 1
  store i8 %3118, i8* %21, align 1
  %3119 = xor i32 %3108, %3107
  %3120 = lshr i32 %3119, 4
  %3121 = trunc i32 %3120 to i8
  %3122 = and i8 %3121, 1
  store i8 %3122, i8* %26, align 1
  %3123 = zext i1 %3111 to i8
  store i8 %3123, i8* %29, align 1
  %3124 = lshr i32 %3108, 31
  %3125 = trunc i32 %3124 to i8
  store i8 %3125, i8* %32, align 1
  %3126 = lshr i32 %3107, 31
  %3127 = xor i32 %3124, %3126
  %3128 = add nuw nsw i32 %3127, %3124
  %3129 = icmp eq i32 %3128, 2
  %3130 = zext i1 %3129 to i8
  store i8 %3130, i8* %38, align 1
  %3131 = add i64 %3097, 16
  store i64 %3131, i64* %3, align 8
  store i32 %3108, i32* %3106, align 4
  %3132 = load i64, i64* %RBP.i, align 8
  %3133 = add i64 %3132, -16
  %3134 = load i64, i64* %3, align 8
  %3135 = add i64 %3134, 4
  store i64 %3135, i64* %3, align 8
  %3136 = inttoptr i64 %3133 to i64*
  %3137 = load i64, i64* %3136, align 8
  store i64 %3137, i64* %RAX.i858, align 8
  %3138 = add i64 %3134, 7
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i64*
  %3140 = load i64, i64* %3139, align 8
  store i64 %3140, i64* %RAX.i858, align 8
  %3141 = add i64 %3140, 36
  %3142 = add i64 %3134, 11
  store i64 %3142, i64* %3, align 8
  %3143 = inttoptr i64 %3141 to i32*
  %3144 = load i32, i32* %3143, align 4
  store i8 0, i8* %14, align 1
  %3145 = and i32 %3144, 255
  %3146 = tail call i32 @llvm.ctpop.i32(i32 %3145)
  %3147 = trunc i32 %3146 to i8
  %3148 = and i8 %3147, 1
  %3149 = xor i8 %3148, 1
  store i8 %3149, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3150 = icmp eq i32 %3144, 0
  %3151 = zext i1 %3150 to i8
  store i8 %3151, i8* %29, align 1
  %3152 = lshr i32 %3144, 31
  %3153 = trunc i32 %3152 to i8
  store i8 %3153, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v173 = select i1 %3150, i64 17, i64 33
  %3154 = add i64 %3134, %.v173
  store i64 %3154, i64* %3, align 8
  br i1 %3150, label %block_406efe, label %block_.L_406f0e

block_406efe:                                     ; preds = %block_.L_406e60
  %3155 = add i64 %3154, 4
  store i64 %3155, i64* %3, align 8
  %3156 = load i64, i64* %3136, align 8
  store i64 %3156, i64* %RAX.i858, align 8
  %3157 = add i64 %3154, 7
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i64*
  %3159 = load i64, i64* %3158, align 8
  store i64 %3159, i64* %RAX.i858, align 8
  %3160 = add i64 %3159, 40
  %3161 = add i64 %3154, 10
  store i64 %3161, i64* %3, align 8
  %3162 = inttoptr i64 %3160 to i32*
  %3163 = load i32, i32* %3162, align 4
  %3164 = add i32 %3163, 1
  %3165 = zext i32 %3164 to i64
  store i64 %3165, i64* %RCX.i723, align 8
  %3166 = icmp eq i32 %3163, -1
  %3167 = icmp eq i32 %3164, 0
  %3168 = or i1 %3166, %3167
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %14, align 1
  %3170 = and i32 %3164, 255
  %3171 = tail call i32 @llvm.ctpop.i32(i32 %3170)
  %3172 = trunc i32 %3171 to i8
  %3173 = and i8 %3172, 1
  %3174 = xor i8 %3173, 1
  store i8 %3174, i8* %21, align 1
  %3175 = xor i32 %3164, %3163
  %3176 = lshr i32 %3175, 4
  %3177 = trunc i32 %3176 to i8
  %3178 = and i8 %3177, 1
  store i8 %3178, i8* %26, align 1
  %3179 = zext i1 %3167 to i8
  store i8 %3179, i8* %29, align 1
  %3180 = lshr i32 %3164, 31
  %3181 = trunc i32 %3180 to i8
  store i8 %3181, i8* %32, align 1
  %3182 = lshr i32 %3163, 31
  %3183 = xor i32 %3180, %3182
  %3184 = add nuw nsw i32 %3183, %3180
  %3185 = icmp eq i32 %3184, 2
  %3186 = zext i1 %3185 to i8
  store i8 %3186, i8* %38, align 1
  %3187 = add i64 %3154, 16
  store i64 %3187, i64* %3, align 8
  store i32 %3164, i32* %3162, align 4
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_406f0e

block_.L_406f0e:                                  ; preds = %block_.L_406e60, %block_406efe
  %3188 = phi i64 [ %.pre138, %block_406efe ], [ %3154, %block_.L_406e60 ]
  %3189 = add i64 %3188, -219
  %3190 = add i64 %3188, 5
  store i64 %3190, i64* %3, align 8
  br label %block_.L_406e33

block_.L_406f3b:                                  ; preds = %block_406e5b
  %3191 = add i64 %2890, 4
  store i64 %3191, i64* %3, align 8
  %3192 = load i64, i64* %2816, align 8
  store i64 %3192, i64* %RAX.i858, align 8
  %3193 = add i64 %3192, 1092
  %3194 = add i64 %2890, 10
  store i64 %3194, i64* %3, align 8
  %3195 = inttoptr i64 %3193 to i32*
  %3196 = load i32, i32* %3195, align 4
  %3197 = zext i32 %3196 to i64
  store i64 %3197, i64* %RCX.i723, align 8
  %3198 = add i64 %2890, 14
  store i64 %3198, i64* %3, align 8
  %3199 = load i64, i64* %2816, align 8
  store i64 %3199, i64* %RAX.i858, align 8
  %3200 = add i64 %3199, 64080
  %3201 = add i64 %2890, 20
  store i64 %3201, i64* %3, align 8
  %3202 = inttoptr i64 %3200 to i32*
  %3203 = load i32, i32* %3202, align 4
  %3204 = add i32 %3203, 1
  %3205 = zext i32 %3204 to i64
  store i64 %3205, i64* %RDX.i822, align 8
  %3206 = lshr i32 %3204, 31
  %3207 = sub i32 %3196, %3204
  %3208 = icmp ult i32 %3196, %3204
  %3209 = zext i1 %3208 to i8
  store i8 %3209, i8* %14, align 1
  %3210 = and i32 %3207, 255
  %3211 = tail call i32 @llvm.ctpop.i32(i32 %3210)
  %3212 = trunc i32 %3211 to i8
  %3213 = and i8 %3212, 1
  %3214 = xor i8 %3213, 1
  store i8 %3214, i8* %21, align 1
  %3215 = xor i32 %3204, %3196
  %3216 = xor i32 %3215, %3207
  %3217 = lshr i32 %3216, 4
  %3218 = trunc i32 %3217 to i8
  %3219 = and i8 %3218, 1
  store i8 %3219, i8* %26, align 1
  %3220 = icmp eq i32 %3207, 0
  %3221 = zext i1 %3220 to i8
  store i8 %3221, i8* %29, align 1
  %3222 = lshr i32 %3207, 31
  %3223 = trunc i32 %3222 to i8
  store i8 %3223, i8* %32, align 1
  %3224 = lshr i32 %3196, 31
  %3225 = xor i32 %3206, %3224
  %3226 = xor i32 %3222, %3224
  %3227 = add nuw nsw i32 %3226, %3225
  %3228 = icmp eq i32 %3227, 2
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %38, align 1
  %3230 = icmp ne i8 %3223, 0
  %3231 = xor i1 %3230, %3228
  %3232 = or i1 %3220, %3231
  %.v175 = select i1 %3232, i64 40, i64 31
  %3233 = add i64 %2890, %.v175
  store i64 %3233, i64* %3, align 8
  br i1 %3232, label %block_.L_406f63, label %block_.L_407333.loopexit226

block_.L_406f63:                                  ; preds = %block_.L_406f3b
  %3234 = add i64 %3233, 4
  store i64 %3234, i64* %3, align 8
  %3235 = load i64, i64* %2816, align 8
  store i64 %3235, i64* %RAX.i858, align 8
  %3236 = add i64 %3235, 16
  %3237 = add i64 %3233, 11
  store i64 %3237, i64* %3, align 8
  %3238 = inttoptr i64 %3236 to i32*
  store i32 1, i32* %3238, align 4
  %3239 = load i64, i64* %RBP.i, align 8
  %3240 = add i64 %3239, -16
  %3241 = load i64, i64* %3, align 8
  %3242 = add i64 %3241, 4
  store i64 %3242, i64* %3, align 8
  %3243 = inttoptr i64 %3240 to i64*
  %3244 = load i64, i64* %3243, align 8
  store i64 %3244, i64* %RAX.i858, align 8
  %3245 = add i64 %3244, 64
  %3246 = add i64 %3241, 7
  store i64 %3246, i64* %3, align 8
  %3247 = inttoptr i64 %3245 to i32*
  %3248 = load i32, i32* %3247, align 4
  %3249 = zext i32 %3248 to i64
  store i64 %3249, i64* %RCX.i723, align 8
  %3250 = trunc i32 %3248 to i8
  store i8 %3250, i8* %DL.i662, align 1
  %3251 = add i64 %3241, 13
  store i64 %3251, i64* %3, align 8
  %3252 = load i64, i64* %3243, align 8
  store i64 %3252, i64* %RAX.i858, align 8
  %3253 = add i64 %3252, 12
  %3254 = add i64 %3241, 16
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3253 to i8*
  store i8 %3250, i8* %3255, align 1
  %3256 = load i64, i64* %RBP.i, align 8
  %3257 = add i64 %3256, -16
  %3258 = load i64, i64* %3, align 8
  %3259 = add i64 %3258, 4
  store i64 %3259, i64* %3, align 8
  %3260 = inttoptr i64 %3257 to i64*
  %3261 = load i64, i64* %3260, align 8
  store i64 %3261, i64* %RAX.i858, align 8
  %3262 = add i64 %3261, 60
  %3263 = add i64 %3258, 7
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3262 to i32*
  %3265 = load i32, i32* %3264, align 4
  %3266 = zext i32 %3265 to i64
  store i64 %3266, i64* %RDI.i2136, align 8
  %3267 = add i64 %3258, 11
  store i64 %3267, i64* %3, align 8
  %3268 = load i64, i64* %3260, align 8
  %3269 = add i64 %3268, 1096
  store i64 %3269, i64* %RAX.i858, align 8
  %3270 = icmp ugt i64 %3268, -1097
  %3271 = zext i1 %3270 to i8
  store i8 %3271, i8* %14, align 1
  %3272 = trunc i64 %3269 to i32
  %3273 = and i32 %3272, 255
  %3274 = tail call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  store i8 %3277, i8* %21, align 1
  %3278 = xor i64 %3269, %3268
  %3279 = lshr i64 %3278, 4
  %3280 = trunc i64 %3279 to i8
  %3281 = and i8 %3280, 1
  store i8 %3281, i8* %26, align 1
  %3282 = icmp eq i64 %3269, 0
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %29, align 1
  %3284 = lshr i64 %3269, 63
  %3285 = trunc i64 %3284 to i8
  store i8 %3285, i8* %32, align 1
  %3286 = lshr i64 %3268, 63
  %3287 = xor i64 %3284, %3286
  %3288 = add nuw nsw i64 %3287, %3284
  %3289 = icmp eq i64 %3288, 2
  %3290 = zext i1 %3289 to i8
  store i8 %3290, i8* %38, align 1
  store i64 %3269, i64* %RSI.i642, align 8
  %3291 = add i64 %3258, -3118
  %3292 = add i64 %3258, 25
  %3293 = load i64, i64* %6, align 8
  %3294 = add i64 %3293, -8
  %3295 = inttoptr i64 %3294 to i64*
  store i64 %3292, i64* %3295, align 8
  store i64 %3294, i64* %6, align 8
  store i64 %3291, i64* %3, align 8
  %call2_406f92 = tail call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* nonnull %0, i64 %3291, %struct.Memory* %2)
  %3296 = load i8, i8* %AL.i637, align 1
  %3297 = load i64, i64* %3, align 8
  store i8 %3296, i8* %DL.i662, align 1
  %3298 = load i64, i64* %RBP.i, align 8
  %3299 = add i64 %3298, -17
  %3300 = add i64 %3297, 5
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3299 to i8*
  store i8 %3296, i8* %3301, align 1
  %3302 = load i64, i64* %RBP.i, align 8
  %3303 = add i64 %3302, -16
  %3304 = load i64, i64* %3, align 8
  %3305 = add i64 %3304, 4
  store i64 %3305, i64* %3, align 8
  %3306 = inttoptr i64 %3303 to i64*
  %3307 = load i64, i64* %3306, align 8
  store i64 %3307, i64* %RSI.i642, align 8
  %3308 = add i64 %3307, 3160
  %3309 = add i64 %3304, 11
  store i64 %3309, i64* %3, align 8
  %3310 = inttoptr i64 %3308 to i64*
  %3311 = load i64, i64* %3310, align 8
  store i64 %3311, i64* %RSI.i642, align 8
  %3312 = add i64 %3304, 15
  store i64 %3312, i64* %3, align 8
  %3313 = load i64, i64* %3306, align 8
  store i64 %3313, i64* %R8.i628, align 8
  %3314 = add i64 %3313, 60
  %3315 = add i64 %3304, 19
  store i64 %3315, i64* %3, align 8
  %3316 = inttoptr i64 %3314 to i32*
  %3317 = load i32, i32* %3316, align 4
  %3318 = zext i32 %3317 to i64
  store i64 %3318, i64* %RAX.i858, align 8
  store i64 %3318, i64* %R8.i628, align 8
  %3319 = shl nuw nsw i64 %3318, 1
  %3320 = add i64 %3311, %3319
  %3321 = add i64 %3304, 27
  store i64 %3321, i64* %3, align 8
  %3322 = inttoptr i64 %3320 to i16*
  %3323 = load i16, i16* %3322, align 2
  %3324 = zext i16 %3323 to i64
  store i64 %3324, i64* %RAX.i858, align 8
  %3325 = add i64 %3304, 31
  store i64 %3325, i64* %3, align 8
  %3326 = load i64, i64* %3306, align 8
  store i64 %3326, i64* %RSI.i642, align 8
  %3327 = add i64 %3326, 3168
  %3328 = add i64 %3304, 38
  store i64 %3328, i64* %3, align 8
  %3329 = inttoptr i64 %3327 to i64*
  %3330 = load i64, i64* %3329, align 8
  store i64 %3330, i64* %RSI.i642, align 8
  %3331 = add i64 %3304, 42
  store i64 %3331, i64* %3, align 8
  %3332 = load i64, i64* %3306, align 8
  store i64 %3332, i64* %R8.i628, align 8
  %3333 = add i64 %3332, 60
  %3334 = add i64 %3304, 46
  store i64 %3334, i64* %3, align 8
  %3335 = inttoptr i64 %3333 to i32*
  %3336 = load i32, i32* %3335, align 4
  %3337 = lshr i32 %3336, 31
  %3338 = trunc i32 %3337 to i8
  %3339 = trunc i32 %3336 to i8
  %3340 = and i8 %3339, 1
  %3341 = lshr i32 %3336, 1
  %3342 = zext i32 %3341 to i64
  store i8 %3340, i8* %14, align 1
  %3343 = and i32 %3341, 255
  %3344 = tail call i32 @llvm.ctpop.i32(i32 %3343)
  %3345 = trunc i32 %3344 to i8
  %3346 = and i8 %3345, 1
  %3347 = xor i8 %3346, 1
  store i8 %3347, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3348 = icmp eq i32 %3341, 0
  %3349 = zext i1 %3348 to i8
  store i8 %3349, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %3338, i8* %38, align 1
  store i64 %3342, i64* %RCX.i723, align 8
  store i64 %3342, i64* %R8.i628, align 8
  %3350 = add i64 %3330, %3342
  %3351 = add i64 %3304, 58
  store i64 %3351, i64* %3, align 8
  %3352 = inttoptr i64 %3350 to i8*
  %3353 = load i8, i8* %3352, align 1
  %3354 = zext i8 %3353 to i64
  store i64 %3354, i64* %RCX.i723, align 8
  %3355 = add i64 %3304, 62
  store i64 %3355, i64* %3, align 8
  %3356 = load i64, i64* %3306, align 8
  store i64 %3356, i64* %RSI.i642, align 8
  %3357 = add i64 %3356, 60
  %3358 = add i64 %3304, 65
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i32*
  %3360 = load i32, i32* %3359, align 4
  %3361 = shl i32 %3360, 2
  %3362 = and i32 %3361, 4
  %3363 = zext i32 %3362 to i64
  store i64 %3363, i64* %RDI.i2136, align 8
  store i8 0, i8* %14, align 1
  %3364 = tail call i32 @llvm.ctpop.i32(i32 %3362)
  %3365 = trunc i32 %3364 to i8
  %3366 = xor i8 %3365, 1
  store i8 %3366, i8* %21, align 1
  %.lobit58 = lshr exact i32 %3362, 2
  %3367 = trunc i32 %.lobit58 to i8
  %3368 = xor i8 %3367, 1
  store i8 %3368, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3369 = load i64, i64* %RBP.i, align 8
  %3370 = add i64 %3369, -32
  %3371 = zext i8 %3353 to i32
  %3372 = add i64 %3304, 74
  store i64 %3372, i64* %3, align 8
  %3373 = inttoptr i64 %3370 to i32*
  store i32 %3371, i32* %3373, align 4
  %3374 = load i32, i32* %EDI.i802, align 4
  %3375 = zext i32 %3374 to i64
  %3376 = load i64, i64* %3, align 8
  store i64 %3375, i64* %RCX.i723, align 8
  %3377 = load i64, i64* %RBP.i, align 8
  %3378 = add i64 %3377, -32
  %3379 = add i64 %3376, 5
  store i64 %3379, i64* %3, align 8
  %3380 = inttoptr i64 %3378 to i32*
  %3381 = load i32, i32* %3380, align 4
  %3382 = zext i32 %3381 to i64
  store i64 %3382, i64* %RDI.i2136, align 8
  %3383 = add i64 %3376, 7
  store i64 %3383, i64* %3, align 8
  %3384 = trunc i32 %3374 to i5
  switch i5 %3384, label %3388 [
    i5 0, label %routine_shrl__cl___edi.exit575
    i5 1, label %3385
  ]

; <label>:3385:                                   ; preds = %block_.L_406f63
  %3386 = lshr i32 %3381, 31
  %3387 = trunc i32 %3386 to i8
  br label %3394

; <label>:3388:                                   ; preds = %block_.L_406f63
  %3389 = and i32 %3374, 31
  %3390 = zext i32 %3389 to i64
  %3391 = add nuw nsw i64 %3390, 4294967295
  %3392 = and i64 %3391, 4294967295
  %3393 = lshr i64 %3382, %3392
  br label %3394

; <label>:3394:                                   ; preds = %3388, %3385
  %3395 = phi i64 [ %3393, %3388 ], [ %3382, %3385 ]
  %3396 = phi i8 [ 0, %3388 ], [ %3387, %3385 ]
  %3397 = trunc i64 %3395 to i8
  %3398 = and i8 %3397, 1
  %3399 = lshr i64 %3395, 1
  %3400 = trunc i64 %3399 to i32
  %3401 = and i32 %3400, 2147483647
  %3402 = zext i32 %3401 to i64
  store i64 %3402, i64* %RDI.i2136, align 8
  store i8 %3398, i8* %14, align 1
  %3403 = and i32 %3400, 255
  %3404 = tail call i32 @llvm.ctpop.i32(i32 %3403)
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = xor i8 %3406, 1
  store i8 %3407, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3408 = icmp eq i32 %3401, 0
  %3409 = zext i1 %3408 to i8
  store i8 %3409, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %3396, i8* %38, align 1
  br label %routine_shrl__cl___edi.exit575

routine_shrl__cl___edi.exit575:                   ; preds = %3394, %block_.L_406f63
  %3410 = phi i64 [ %3402, %3394 ], [ %3382, %block_.L_406f63 ]
  %3411 = shl nuw nsw i64 %3410, 16
  %3412 = and i64 %3411, 983040
  store i64 %3412, i64* %RDI.i2136, align 8
  %3413 = load i64, i64* %RAX.i858, align 8
  %3414 = or i64 %3412, %3413
  %3415 = trunc i64 %3414 to i32
  %3416 = and i64 %3414, 4294967295
  store i64 %3416, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %3417 = and i32 %3415, 255
  %3418 = tail call i32 @llvm.ctpop.i32(i32 %3417)
  %3419 = trunc i32 %3418 to i8
  %3420 = and i8 %3419, 1
  %3421 = xor i8 %3420, 1
  store i8 %3421, i8* %21, align 1
  %3422 = icmp eq i32 %3415, 0
  %3423 = zext i1 %3422 to i8
  store i8 %3423, i8* %29, align 1
  %3424 = lshr i32 %3415, 31
  %3425 = trunc i32 %3424 to i8
  store i8 %3425, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3426 = add i64 %3377, -16
  %3427 = add i64 %3376, 19
  store i64 %3427, i64* %3, align 8
  %3428 = inttoptr i64 %3426 to i64*
  %3429 = load i64, i64* %3428, align 8
  store i64 %3429, i64* %RSI.i642, align 8
  %3430 = add i64 %3429, 60
  %3431 = trunc i64 %3414 to i32
  %3432 = add i64 %3376, 22
  store i64 %3432, i64* %3, align 8
  %3433 = inttoptr i64 %3430 to i32*
  store i32 %3431, i32* %3433, align 4
  %3434 = load i64, i64* %RBP.i, align 8
  %3435 = add i64 %3434, -16
  %3436 = load i64, i64* %3, align 8
  %3437 = add i64 %3436, 4
  store i64 %3437, i64* %3, align 8
  %3438 = inttoptr i64 %3435 to i64*
  %3439 = load i64, i64* %3438, align 8
  store i64 %3439, i64* %RSI.i642, align 8
  %3440 = add i64 %3439, 1092
  %3441 = add i64 %3436, 10
  store i64 %3441, i64* %3, align 8
  %3442 = inttoptr i64 %3440 to i32*
  %3443 = load i32, i32* %3442, align 4
  %3444 = add i32 %3443, 1
  %3445 = zext i32 %3444 to i64
  store i64 %3445, i64* %RAX.i858, align 8
  %3446 = icmp eq i32 %3443, -1
  %3447 = icmp eq i32 %3444, 0
  %3448 = or i1 %3446, %3447
  %3449 = zext i1 %3448 to i8
  store i8 %3449, i8* %14, align 1
  %3450 = and i32 %3444, 255
  %3451 = tail call i32 @llvm.ctpop.i32(i32 %3450)
  %3452 = trunc i32 %3451 to i8
  %3453 = and i8 %3452, 1
  %3454 = xor i8 %3453, 1
  store i8 %3454, i8* %21, align 1
  %3455 = xor i32 %3444, %3443
  %3456 = lshr i32 %3455, 4
  %3457 = trunc i32 %3456 to i8
  %3458 = and i8 %3457, 1
  store i8 %3458, i8* %26, align 1
  %3459 = zext i1 %3447 to i8
  store i8 %3459, i8* %29, align 1
  %3460 = lshr i32 %3444, 31
  %3461 = trunc i32 %3460 to i8
  store i8 %3461, i8* %32, align 1
  %3462 = lshr i32 %3443, 31
  %3463 = xor i32 %3460, %3462
  %3464 = add nuw nsw i32 %3463, %3460
  %3465 = icmp eq i32 %3464, 2
  %3466 = zext i1 %3465 to i8
  store i8 %3466, i8* %38, align 1
  %3467 = add i64 %3436, 19
  store i64 %3467, i64* %3, align 8
  store i32 %3444, i32* %3442, align 4
  %3468 = load i64, i64* %RBP.i, align 8
  %3469 = add i64 %3468, -16
  %3470 = load i64, i64* %3, align 8
  %3471 = add i64 %3470, 4
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3469 to i64*
  %3473 = load i64, i64* %3472, align 8
  store i64 %3473, i64* %RSI.i642, align 8
  %3474 = add i64 %3473, 1092
  %3475 = add i64 %3470, 10
  store i64 %3475, i64* %3, align 8
  %3476 = inttoptr i64 %3474 to i32*
  %3477 = load i32, i32* %3476, align 4
  %3478 = zext i32 %3477 to i64
  store i64 %3478, i64* %RAX.i858, align 8
  %3479 = add i64 %3470, 14
  store i64 %3479, i64* %3, align 8
  %3480 = load i64, i64* %3472, align 8
  store i64 %3480, i64* %RSI.i642, align 8
  %3481 = add i64 %3480, 64080
  %3482 = add i64 %3470, 20
  store i64 %3482, i64* %3, align 8
  %3483 = inttoptr i64 %3481 to i32*
  %3484 = load i32, i32* %3483, align 4
  %3485 = add i32 %3484, 1
  %3486 = zext i32 %3485 to i64
  store i64 %3486, i64* %RDI.i2136, align 8
  %3487 = lshr i32 %3485, 31
  %3488 = sub i32 %3477, %3485
  %3489 = icmp ult i32 %3477, %3485
  %3490 = zext i1 %3489 to i8
  store i8 %3490, i8* %14, align 1
  %3491 = and i32 %3488, 255
  %3492 = tail call i32 @llvm.ctpop.i32(i32 %3491)
  %3493 = trunc i32 %3492 to i8
  %3494 = and i8 %3493, 1
  %3495 = xor i8 %3494, 1
  store i8 %3495, i8* %21, align 1
  %3496 = xor i32 %3485, %3477
  %3497 = xor i32 %3496, %3488
  %3498 = lshr i32 %3497, 4
  %3499 = trunc i32 %3498 to i8
  %3500 = and i8 %3499, 1
  store i8 %3500, i8* %26, align 1
  %3501 = icmp eq i32 %3488, 0
  %3502 = zext i1 %3501 to i8
  store i8 %3502, i8* %29, align 1
  %3503 = lshr i32 %3488, 31
  %3504 = trunc i32 %3503 to i8
  store i8 %3504, i8* %32, align 1
  %3505 = lshr i32 %3477, 31
  %3506 = xor i32 %3487, %3505
  %3507 = xor i32 %3503, %3505
  %3508 = add nuw nsw i32 %3507, %3506
  %3509 = icmp eq i32 %3508, 2
  %3510 = zext i1 %3509 to i8
  store i8 %3510, i8* %38, align 1
  %.v176 = select i1 %3501, i64 31, i64 36
  %3511 = add i64 %3470, %.v176
  store i64 %3511, i64* %3, align 8
  br i1 %3501, label %block_.L_406e2e.sink.split, label %block_.L_407034

block_.L_407034:                                  ; preds = %routine_shrl__cl___edi.exit575
  %3512 = add i64 %3468, -17
  %3513 = add i64 %3511, 4
  store i64 %3513, i64* %3, align 8
  %3514 = inttoptr i64 %3512 to i8*
  %3515 = load i8, i8* %3514, align 1
  %3516 = zext i8 %3515 to i64
  store i64 %3516, i64* %RAX.i858, align 8
  %3517 = add i64 %3511, 8
  store i64 %3517, i64* %3, align 8
  %3518 = load i64, i64* %3472, align 8
  store i64 %3518, i64* %RCX.i723, align 8
  %3519 = zext i8 %3515 to i32
  %3520 = add i64 %3518, 64
  %3521 = add i64 %3511, 11
  store i64 %3521, i64* %3, align 8
  %3522 = inttoptr i64 %3520 to i32*
  %3523 = load i32, i32* %3522, align 4
  %3524 = sub i32 %3519, %3523
  %3525 = icmp ult i32 %3519, %3523
  %3526 = zext i1 %3525 to i8
  store i8 %3526, i8* %14, align 1
  %3527 = and i32 %3524, 255
  %3528 = tail call i32 @llvm.ctpop.i32(i32 %3527)
  %3529 = trunc i32 %3528 to i8
  %3530 = and i8 %3529, 1
  %3531 = xor i8 %3530, 1
  store i8 %3531, i8* %21, align 1
  %3532 = xor i32 %3523, %3519
  %3533 = xor i32 %3532, %3524
  %3534 = lshr i32 %3533, 4
  %3535 = trunc i32 %3534 to i8
  %3536 = and i8 %3535, 1
  store i8 %3536, i8* %26, align 1
  %3537 = icmp eq i32 %3524, 0
  %3538 = zext i1 %3537 to i8
  store i8 %3538, i8* %29, align 1
  %3539 = lshr i32 %3524, 31
  %3540 = trunc i32 %3539 to i8
  store i8 %3540, i8* %32, align 1
  %3541 = lshr i32 %3523, 31
  %3542 = add nuw nsw i32 %3539, %3541
  %3543 = icmp eq i32 %3542, 2
  %3544 = zext i1 %3543 to i8
  store i8 %3544, i8* %38, align 1
  %.v177 = select i1 %3537, i64 33, i64 17
  %3545 = add i64 %3511, %.v177
  %3546 = add i64 %3545, 4
  store i64 %3546, i64* %3, align 8
  br i1 %3537, label %block_.L_407055, label %block_407045

block_407045:                                     ; preds = %block_.L_407034
  %3547 = load i8, i8* %3514, align 1
  %3548 = zext i8 %3547 to i64
  store i64 %3548, i64* %RAX.i858, align 8
  %3549 = add i64 %3545, 8
  store i64 %3549, i64* %3, align 8
  %3550 = load i64, i64* %3472, align 8
  store i64 %3550, i64* %RCX.i723, align 8
  %3551 = add i64 %3550, 64
  %3552 = zext i8 %3547 to i32
  %3553 = add i64 %3545, 11
  store i64 %3553, i64* %3, align 8
  %3554 = inttoptr i64 %3551 to i32*
  store i32 %3552, i32* %3554, align 4
  br label %block_.L_406e2e.sink.split

block_.L_407055:                                  ; preds = %block_.L_407034
  %3555 = load i64, i64* %3472, align 8
  store i64 %3555, i64* %RAX.i858, align 8
  %3556 = add i64 %3555, 16
  %3557 = add i64 %3545, 11
  store i64 %3557, i64* %3, align 8
  %3558 = inttoptr i64 %3556 to i32*
  store i32 2, i32* %3558, align 4
  %3559 = load i64, i64* %RBP.i, align 8
  %3560 = add i64 %3559, -16
  %3561 = load i64, i64* %3, align 8
  %3562 = add i64 %3561, 4
  store i64 %3562, i64* %3, align 8
  %3563 = inttoptr i64 %3560 to i64*
  %3564 = load i64, i64* %3563, align 8
  store i64 %3564, i64* %RAX.i858, align 8
  %3565 = add i64 %3564, 60
  %3566 = add i64 %3561, 7
  store i64 %3566, i64* %3, align 8
  %3567 = inttoptr i64 %3565 to i32*
  %3568 = load i32, i32* %3567, align 4
  %3569 = zext i32 %3568 to i64
  store i64 %3569, i64* %RDI.i2136, align 8
  %3570 = add i64 %3561, 11
  store i64 %3570, i64* %3, align 8
  %3571 = load i64, i64* %3563, align 8
  %3572 = add i64 %3571, 1096
  store i64 %3572, i64* %RAX.i858, align 8
  %3573 = icmp ugt i64 %3571, -1097
  %3574 = zext i1 %3573 to i8
  store i8 %3574, i8* %14, align 1
  %3575 = trunc i64 %3572 to i32
  %3576 = and i32 %3575, 255
  %3577 = tail call i32 @llvm.ctpop.i32(i32 %3576)
  %3578 = trunc i32 %3577 to i8
  %3579 = and i8 %3578, 1
  %3580 = xor i8 %3579, 1
  store i8 %3580, i8* %21, align 1
  %3581 = xor i64 %3572, %3571
  %3582 = lshr i64 %3581, 4
  %3583 = trunc i64 %3582 to i8
  %3584 = and i8 %3583, 1
  store i8 %3584, i8* %26, align 1
  %3585 = icmp eq i64 %3572, 0
  %3586 = zext i1 %3585 to i8
  store i8 %3586, i8* %29, align 1
  %3587 = lshr i64 %3572, 63
  %3588 = trunc i64 %3587 to i8
  store i8 %3588, i8* %32, align 1
  %3589 = lshr i64 %3571, 63
  %3590 = xor i64 %3587, %3589
  %3591 = add nuw nsw i64 %3590, %3587
  %3592 = icmp eq i64 %3591, 2
  %3593 = zext i1 %3592 to i8
  store i8 %3593, i8* %38, align 1
  store i64 %3572, i64* %RSI.i642, align 8
  %3594 = add i64 %3561, -3344
  %3595 = add i64 %3561, 25
  %3596 = load i64, i64* %6, align 8
  %3597 = add i64 %3596, -8
  %3598 = inttoptr i64 %3597 to i64*
  store i64 %3595, i64* %3598, align 8
  store i64 %3597, i64* %6, align 8
  store i64 %3594, i64* %3, align 8
  %call2_407074 = tail call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* nonnull %0, i64 %3594, %struct.Memory* %2)
  %3599 = load i8, i8* %AL.i637, align 1
  %3600 = load i64, i64* %3, align 8
  store i8 %3599, i8* %CL.i837, align 1
  %3601 = load i64, i64* %RBP.i, align 8
  %3602 = add i64 %3601, -17
  %3603 = add i64 %3600, 5
  store i64 %3603, i64* %3, align 8
  %3604 = inttoptr i64 %3602 to i8*
  store i8 %3599, i8* %3604, align 1
  %3605 = load i64, i64* %RBP.i, align 8
  %3606 = add i64 %3605, -16
  %3607 = load i64, i64* %3, align 8
  %3608 = add i64 %3607, 4
  store i64 %3608, i64* %3, align 8
  %3609 = inttoptr i64 %3606 to i64*
  %3610 = load i64, i64* %3609, align 8
  store i64 %3610, i64* %RSI.i642, align 8
  %3611 = add i64 %3610, 3160
  %3612 = add i64 %3607, 11
  store i64 %3612, i64* %3, align 8
  %3613 = inttoptr i64 %3611 to i64*
  %3614 = load i64, i64* %3613, align 8
  store i64 %3614, i64* %RSI.i642, align 8
  %3615 = add i64 %3607, 15
  store i64 %3615, i64* %3, align 8
  %3616 = load i64, i64* %3609, align 8
  store i64 %3616, i64* %RDX.i822, align 8
  %3617 = add i64 %3616, 60
  %3618 = add i64 %3607, 18
  store i64 %3618, i64* %3, align 8
  %3619 = inttoptr i64 %3617 to i32*
  %3620 = load i32, i32* %3619, align 4
  %3621 = zext i32 %3620 to i64
  store i64 %3621, i64* %RAX.i858, align 8
  store i64 %3621, i64* %RDX.i822, align 8
  %3622 = shl nuw nsw i64 %3621, 1
  %3623 = add i64 %3614, %3622
  %3624 = add i64 %3607, 24
  store i64 %3624, i64* %3, align 8
  %3625 = inttoptr i64 %3623 to i16*
  %3626 = load i16, i16* %3625, align 2
  %3627 = zext i16 %3626 to i64
  store i64 %3627, i64* %RAX.i858, align 8
  %3628 = add i64 %3607, 28
  store i64 %3628, i64* %3, align 8
  %3629 = load i64, i64* %3609, align 8
  store i64 %3629, i64* %RDX.i822, align 8
  %3630 = add i64 %3629, 3168
  %3631 = add i64 %3607, 35
  store i64 %3631, i64* %3, align 8
  %3632 = inttoptr i64 %3630 to i64*
  %3633 = load i64, i64* %3632, align 8
  store i64 %3633, i64* %RDX.i822, align 8
  %3634 = add i64 %3607, 39
  store i64 %3634, i64* %3, align 8
  %3635 = load i64, i64* %3609, align 8
  store i64 %3635, i64* %RSI.i642, align 8
  %3636 = add i64 %3635, 60
  %3637 = add i64 %3607, 42
  store i64 %3637, i64* %3, align 8
  %3638 = inttoptr i64 %3636 to i32*
  %3639 = load i32, i32* %3638, align 4
  %3640 = lshr i32 %3639, 31
  %3641 = trunc i32 %3640 to i8
  %3642 = trunc i32 %3639 to i8
  %3643 = and i8 %3642, 1
  %3644 = lshr i32 %3639, 1
  %3645 = zext i32 %3644 to i64
  store i8 %3643, i8* %14, align 1
  %3646 = and i32 %3644, 255
  %3647 = tail call i32 @llvm.ctpop.i32(i32 %3646)
  %3648 = trunc i32 %3647 to i8
  %3649 = and i8 %3648, 1
  %3650 = xor i8 %3649, 1
  store i8 %3650, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3651 = icmp eq i32 %3644, 0
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %3641, i8* %38, align 1
  store i64 %3645, i64* %RDI.i2136, align 8
  store i64 %3645, i64* %RSI.i642, align 8
  %3653 = add i64 %3633, %3645
  %3654 = add i64 %3607, 52
  store i64 %3654, i64* %3, align 8
  %3655 = inttoptr i64 %3653 to i8*
  %3656 = load i8, i8* %3655, align 1
  %3657 = zext i8 %3656 to i64
  store i64 %3657, i64* %RDI.i2136, align 8
  %3658 = add i64 %3607, 56
  store i64 %3658, i64* %3, align 8
  %3659 = load i64, i64* %3609, align 8
  store i64 %3659, i64* %RDX.i822, align 8
  %3660 = add i64 %3659, 60
  %3661 = add i64 %3607, 60
  store i64 %3661, i64* %3, align 8
  %3662 = inttoptr i64 %3660 to i32*
  %3663 = load i32, i32* %3662, align 4
  %3664 = shl i32 %3663, 2
  %3665 = and i32 %3664, 4
  %3666 = zext i32 %3665 to i64
  store i64 %3666, i64* %R8.i628, align 8
  store i8 0, i8* %14, align 1
  %3667 = tail call i32 @llvm.ctpop.i32(i32 %3665)
  %3668 = trunc i32 %3667 to i8
  %3669 = xor i8 %3668, 1
  store i8 %3669, i8* %21, align 1
  %.lobit63 = lshr exact i32 %3665, 2
  %3670 = trunc i32 %.lobit63 to i8
  %3671 = xor i8 %3670, 1
  store i8 %3671, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %3666, i64* %RCX.i723, align 8
  %3672 = add i64 %3607, 73
  store i64 %3672, i64* %3, align 8
  %trunc149 = trunc i32 %3664 to i3
  %cond203 = icmp eq i3 %trunc149, 0
  br i1 %cond203, label %routine_shrl__cl___edi.exit428, label %3673

; <label>:3673:                                   ; preds = %block_.L_407055
  %3674 = zext i32 %3665 to i64
  %3675 = add nuw nsw i64 %3674, 4294967295
  %3676 = and i64 %3675, 4294967295
  %3677 = lshr i64 %3657, %3676
  %3678 = trunc i64 %3677 to i8
  %3679 = and i8 %3678, 1
  %3680 = lshr i64 %3677, 1
  %3681 = trunc i64 %3680 to i32
  %3682 = and i32 %3681, 2147483647
  %3683 = zext i32 %3682 to i64
  store i64 %3683, i64* %RDI.i2136, align 8
  store i8 %3679, i8* %14, align 1
  %3684 = and i32 %3681, 255
  %3685 = tail call i32 @llvm.ctpop.i32(i32 %3684)
  %3686 = trunc i32 %3685 to i8
  %3687 = and i8 %3686, 1
  %3688 = xor i8 %3687, 1
  store i8 %3688, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3689 = icmp eq i32 %3682, 0
  %3690 = zext i1 %3689 to i8
  store i8 %3690, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shrl__cl___edi.exit428

routine_shrl__cl___edi.exit428:                   ; preds = %block_.L_407055, %3673
  %3691 = phi i64 [ %3683, %3673 ], [ %3657, %block_.L_407055 ]
  %3692 = shl nuw nsw i64 %3691, 16
  %3693 = and i64 %3692, 983040
  store i64 %3693, i64* %RDI.i2136, align 8
  %3694 = load i64, i64* %RAX.i858, align 8
  %3695 = or i64 %3693, %3694
  %3696 = trunc i64 %3695 to i32
  %3697 = and i64 %3695, 4294967295
  store i64 %3697, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %3698 = and i32 %3696, 255
  %3699 = tail call i32 @llvm.ctpop.i32(i32 %3698)
  %3700 = trunc i32 %3699 to i8
  %3701 = and i8 %3700, 1
  %3702 = xor i8 %3701, 1
  store i8 %3702, i8* %21, align 1
  %3703 = icmp eq i32 %3696, 0
  %3704 = zext i1 %3703 to i8
  store i8 %3704, i8* %29, align 1
  %3705 = lshr i32 %3696, 31
  %3706 = trunc i32 %3705 to i8
  store i8 %3706, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3707 = load i64, i64* %RBP.i, align 8
  %3708 = add i64 %3707, -16
  %3709 = add i64 %3607, 85
  store i64 %3709, i64* %3, align 8
  %3710 = inttoptr i64 %3708 to i64*
  %3711 = load i64, i64* %3710, align 8
  store i64 %3711, i64* %RDX.i822, align 8
  %3712 = add i64 %3711, 60
  %3713 = trunc i64 %3695 to i32
  %3714 = add i64 %3607, 88
  store i64 %3714, i64* %3, align 8
  %3715 = inttoptr i64 %3712 to i32*
  store i32 %3713, i32* %3715, align 4
  %3716 = load i64, i64* %RBP.i, align 8
  %3717 = add i64 %3716, -16
  %3718 = load i64, i64* %3, align 8
  %3719 = add i64 %3718, 4
  store i64 %3719, i64* %3, align 8
  %3720 = inttoptr i64 %3717 to i64*
  %3721 = load i64, i64* %3720, align 8
  store i64 %3721, i64* %RDX.i822, align 8
  %3722 = add i64 %3721, 1092
  %3723 = add i64 %3718, 10
  store i64 %3723, i64* %3, align 8
  %3724 = inttoptr i64 %3722 to i32*
  %3725 = load i32, i32* %3724, align 4
  %3726 = add i32 %3725, 1
  %3727 = zext i32 %3726 to i64
  store i64 %3727, i64* %RAX.i858, align 8
  %3728 = icmp eq i32 %3725, -1
  %3729 = icmp eq i32 %3726, 0
  %3730 = or i1 %3728, %3729
  %3731 = zext i1 %3730 to i8
  store i8 %3731, i8* %14, align 1
  %3732 = and i32 %3726, 255
  %3733 = tail call i32 @llvm.ctpop.i32(i32 %3732)
  %3734 = trunc i32 %3733 to i8
  %3735 = and i8 %3734, 1
  %3736 = xor i8 %3735, 1
  store i8 %3736, i8* %21, align 1
  %3737 = xor i32 %3726, %3725
  %3738 = lshr i32 %3737, 4
  %3739 = trunc i32 %3738 to i8
  %3740 = and i8 %3739, 1
  store i8 %3740, i8* %26, align 1
  %3741 = zext i1 %3729 to i8
  store i8 %3741, i8* %29, align 1
  %3742 = lshr i32 %3726, 31
  %3743 = trunc i32 %3742 to i8
  store i8 %3743, i8* %32, align 1
  %3744 = lshr i32 %3725, 31
  %3745 = xor i32 %3742, %3744
  %3746 = add nuw nsw i32 %3745, %3742
  %3747 = icmp eq i32 %3746, 2
  %3748 = zext i1 %3747 to i8
  store i8 %3748, i8* %38, align 1
  %3749 = add i64 %3718, 19
  store i64 %3749, i64* %3, align 8
  store i32 %3726, i32* %3724, align 4
  %3750 = load i64, i64* %RBP.i, align 8
  %3751 = add i64 %3750, -16
  %3752 = load i64, i64* %3, align 8
  %3753 = add i64 %3752, 4
  store i64 %3753, i64* %3, align 8
  %3754 = inttoptr i64 %3751 to i64*
  %3755 = load i64, i64* %3754, align 8
  store i64 %3755, i64* %RDX.i822, align 8
  %3756 = add i64 %3755, 1092
  %3757 = add i64 %3752, 10
  store i64 %3757, i64* %3, align 8
  %3758 = inttoptr i64 %3756 to i32*
  %3759 = load i32, i32* %3758, align 4
  %3760 = zext i32 %3759 to i64
  store i64 %3760, i64* %RAX.i858, align 8
  %3761 = add i64 %3752, 14
  store i64 %3761, i64* %3, align 8
  %3762 = load i64, i64* %3754, align 8
  store i64 %3762, i64* %RDX.i822, align 8
  %3763 = add i64 %3762, 64080
  %3764 = add i64 %3752, 20
  store i64 %3764, i64* %3, align 8
  %3765 = inttoptr i64 %3763 to i32*
  %3766 = load i32, i32* %3765, align 4
  %3767 = add i32 %3766, 1
  %3768 = zext i32 %3767 to i64
  store i64 %3768, i64* %RDI.i2136, align 8
  %3769 = lshr i32 %3767, 31
  %3770 = sub i32 %3759, %3767
  %3771 = icmp ult i32 %3759, %3767
  %3772 = zext i1 %3771 to i8
  store i8 %3772, i8* %14, align 1
  %3773 = and i32 %3770, 255
  %3774 = tail call i32 @llvm.ctpop.i32(i32 %3773)
  %3775 = trunc i32 %3774 to i8
  %3776 = and i8 %3775, 1
  %3777 = xor i8 %3776, 1
  store i8 %3777, i8* %21, align 1
  %3778 = xor i32 %3767, %3759
  %3779 = xor i32 %3778, %3770
  %3780 = lshr i32 %3779, 4
  %3781 = trunc i32 %3780 to i8
  %3782 = and i8 %3781, 1
  store i8 %3782, i8* %26, align 1
  %3783 = icmp eq i32 %3770, 0
  %3784 = zext i1 %3783 to i8
  store i8 %3784, i8* %29, align 1
  %3785 = lshr i32 %3770, 31
  %3786 = trunc i32 %3785 to i8
  store i8 %3786, i8* %32, align 1
  %3787 = lshr i32 %3759, 31
  %3788 = xor i32 %3769, %3787
  %3789 = xor i32 %3785, %3787
  %3790 = add nuw nsw i32 %3789, %3788
  %3791 = icmp eq i32 %3790, 2
  %3792 = zext i1 %3791 to i8
  store i8 %3792, i8* %38, align 1
  %.v178 = select i1 %3783, i64 31, i64 36
  %3793 = add i64 %3752, %.v178
  store i64 %3793, i64* %3, align 8
  br i1 %3783, label %block_.L_406e2e.sink.split, label %block_.L_40710e

block_.L_40710e:                                  ; preds = %routine_shrl__cl___edi.exit428
  %3794 = add i64 %3750, -17
  %3795 = add i64 %3793, 4
  store i64 %3795, i64* %3, align 8
  %3796 = inttoptr i64 %3794 to i8*
  %3797 = load i8, i8* %3796, align 1
  %3798 = zext i8 %3797 to i64
  store i64 %3798, i64* %RAX.i858, align 8
  %3799 = add i64 %3793, 8
  store i64 %3799, i64* %3, align 8
  %3800 = load i64, i64* %3754, align 8
  store i64 %3800, i64* %RCX.i723, align 8
  %3801 = zext i8 %3797 to i32
  %3802 = add i64 %3800, 64
  %3803 = add i64 %3793, 11
  store i64 %3803, i64* %3, align 8
  %3804 = inttoptr i64 %3802 to i32*
  %3805 = load i32, i32* %3804, align 4
  %3806 = sub i32 %3801, %3805
  %3807 = icmp ult i32 %3801, %3805
  %3808 = zext i1 %3807 to i8
  store i8 %3808, i8* %14, align 1
  %3809 = and i32 %3806, 255
  %3810 = tail call i32 @llvm.ctpop.i32(i32 %3809)
  %3811 = trunc i32 %3810 to i8
  %3812 = and i8 %3811, 1
  %3813 = xor i8 %3812, 1
  store i8 %3813, i8* %21, align 1
  %3814 = xor i32 %3805, %3801
  %3815 = xor i32 %3814, %3806
  %3816 = lshr i32 %3815, 4
  %3817 = trunc i32 %3816 to i8
  %3818 = and i8 %3817, 1
  store i8 %3818, i8* %26, align 1
  %3819 = icmp eq i32 %3806, 0
  %3820 = zext i1 %3819 to i8
  store i8 %3820, i8* %29, align 1
  %3821 = lshr i32 %3806, 31
  %3822 = trunc i32 %3821 to i8
  store i8 %3822, i8* %32, align 1
  %3823 = lshr i32 %3805, 31
  %3824 = add nuw nsw i32 %3821, %3823
  %3825 = icmp eq i32 %3824, 2
  %3826 = zext i1 %3825 to i8
  store i8 %3826, i8* %38, align 1
  %.v179 = select i1 %3819, i64 33, i64 17
  %3827 = add i64 %3793, %.v179
  %3828 = add i64 %3827, 4
  store i64 %3828, i64* %3, align 8
  br i1 %3819, label %block_.L_40712f, label %block_40711f

block_40711f:                                     ; preds = %block_.L_40710e
  %3829 = load i8, i8* %3796, align 1
  %3830 = zext i8 %3829 to i64
  store i64 %3830, i64* %RAX.i858, align 8
  %3831 = add i64 %3827, 8
  store i64 %3831, i64* %3, align 8
  %3832 = load i64, i64* %3754, align 8
  store i64 %3832, i64* %RCX.i723, align 8
  %3833 = add i64 %3832, 64
  %3834 = zext i8 %3829 to i32
  %3835 = add i64 %3827, 11
  store i64 %3835, i64* %3, align 8
  %3836 = inttoptr i64 %3833 to i32*
  store i32 %3834, i32* %3836, align 4
  br label %block_.L_406e2e.sink.split

block_.L_40712f:                                  ; preds = %block_.L_40710e
  %3837 = load i64, i64* %3754, align 8
  store i64 %3837, i64* %RAX.i858, align 8
  %3838 = add i64 %3837, 16
  %3839 = add i64 %3827, 11
  store i64 %3839, i64* %3, align 8
  %3840 = inttoptr i64 %3838 to i32*
  store i32 3, i32* %3840, align 4
  %3841 = load i64, i64* %RBP.i, align 8
  %3842 = add i64 %3841, -16
  %3843 = load i64, i64* %3, align 8
  %3844 = add i64 %3843, 4
  store i64 %3844, i64* %3, align 8
  %3845 = inttoptr i64 %3842 to i64*
  %3846 = load i64, i64* %3845, align 8
  store i64 %3846, i64* %RAX.i858, align 8
  %3847 = add i64 %3846, 60
  %3848 = add i64 %3843, 7
  store i64 %3848, i64* %3, align 8
  %3849 = inttoptr i64 %3847 to i32*
  %3850 = load i32, i32* %3849, align 4
  %3851 = zext i32 %3850 to i64
  store i64 %3851, i64* %RDI.i2136, align 8
  %3852 = add i64 %3843, 11
  store i64 %3852, i64* %3, align 8
  %3853 = load i64, i64* %3845, align 8
  %3854 = add i64 %3853, 1096
  store i64 %3854, i64* %RAX.i858, align 8
  %3855 = icmp ugt i64 %3853, -1097
  %3856 = zext i1 %3855 to i8
  store i8 %3856, i8* %14, align 1
  %3857 = trunc i64 %3854 to i32
  %3858 = and i32 %3857, 255
  %3859 = tail call i32 @llvm.ctpop.i32(i32 %3858)
  %3860 = trunc i32 %3859 to i8
  %3861 = and i8 %3860, 1
  %3862 = xor i8 %3861, 1
  store i8 %3862, i8* %21, align 1
  %3863 = xor i64 %3854, %3853
  %3864 = lshr i64 %3863, 4
  %3865 = trunc i64 %3864 to i8
  %3866 = and i8 %3865, 1
  store i8 %3866, i8* %26, align 1
  %3867 = icmp eq i64 %3854, 0
  %3868 = zext i1 %3867 to i8
  store i8 %3868, i8* %29, align 1
  %3869 = lshr i64 %3854, 63
  %3870 = trunc i64 %3869 to i8
  store i8 %3870, i8* %32, align 1
  %3871 = lshr i64 %3853, 63
  %3872 = xor i64 %3869, %3871
  %3873 = add nuw nsw i64 %3872, %3869
  %3874 = icmp eq i64 %3873, 2
  %3875 = zext i1 %3874 to i8
  store i8 %3875, i8* %38, align 1
  store i64 %3854, i64* %RSI.i642, align 8
  %3876 = add i64 %3843, -3562
  %3877 = add i64 %3843, 25
  %3878 = load i64, i64* %6, align 8
  %3879 = add i64 %3878, -8
  %3880 = inttoptr i64 %3879 to i64*
  store i64 %3877, i64* %3880, align 8
  store i64 %3879, i64* %6, align 8
  store i64 %3876, i64* %3, align 8
  %call2_40714e = tail call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* nonnull %0, i64 %3876, %struct.Memory* %2)
  %3881 = load i8, i8* %AL.i637, align 1
  %3882 = load i64, i64* %3, align 8
  store i8 %3881, i8* %CL.i837, align 1
  %3883 = load i64, i64* %RBP.i, align 8
  %3884 = add i64 %3883, -17
  %3885 = add i64 %3882, 5
  store i64 %3885, i64* %3, align 8
  %3886 = inttoptr i64 %3884 to i8*
  store i8 %3881, i8* %3886, align 1
  %3887 = load i64, i64* %RBP.i, align 8
  %3888 = add i64 %3887, -16
  %3889 = load i64, i64* %3, align 8
  %3890 = add i64 %3889, 4
  store i64 %3890, i64* %3, align 8
  %3891 = inttoptr i64 %3888 to i64*
  %3892 = load i64, i64* %3891, align 8
  store i64 %3892, i64* %RSI.i642, align 8
  %3893 = add i64 %3892, 3160
  %3894 = add i64 %3889, 11
  store i64 %3894, i64* %3, align 8
  %3895 = inttoptr i64 %3893 to i64*
  %3896 = load i64, i64* %3895, align 8
  store i64 %3896, i64* %RSI.i642, align 8
  %3897 = add i64 %3889, 15
  store i64 %3897, i64* %3, align 8
  %3898 = load i64, i64* %3891, align 8
  store i64 %3898, i64* %RDX.i822, align 8
  %3899 = add i64 %3898, 60
  %3900 = add i64 %3889, 18
  store i64 %3900, i64* %3, align 8
  %3901 = inttoptr i64 %3899 to i32*
  %3902 = load i32, i32* %3901, align 4
  %3903 = zext i32 %3902 to i64
  store i64 %3903, i64* %RAX.i858, align 8
  store i64 %3903, i64* %RDX.i822, align 8
  %3904 = shl nuw nsw i64 %3903, 1
  %3905 = add i64 %3896, %3904
  %3906 = add i64 %3889, 24
  store i64 %3906, i64* %3, align 8
  %3907 = inttoptr i64 %3905 to i16*
  %3908 = load i16, i16* %3907, align 2
  %3909 = zext i16 %3908 to i64
  store i64 %3909, i64* %RAX.i858, align 8
  %3910 = add i64 %3889, 28
  store i64 %3910, i64* %3, align 8
  %3911 = load i64, i64* %3891, align 8
  store i64 %3911, i64* %RDX.i822, align 8
  %3912 = add i64 %3911, 3168
  %3913 = add i64 %3889, 35
  store i64 %3913, i64* %3, align 8
  %3914 = inttoptr i64 %3912 to i64*
  %3915 = load i64, i64* %3914, align 8
  store i64 %3915, i64* %RDX.i822, align 8
  %3916 = add i64 %3889, 39
  store i64 %3916, i64* %3, align 8
  %3917 = load i64, i64* %3891, align 8
  store i64 %3917, i64* %RSI.i642, align 8
  %3918 = add i64 %3917, 60
  %3919 = add i64 %3889, 42
  store i64 %3919, i64* %3, align 8
  %3920 = inttoptr i64 %3918 to i32*
  %3921 = load i32, i32* %3920, align 4
  %3922 = lshr i32 %3921, 31
  %3923 = trunc i32 %3922 to i8
  %3924 = trunc i32 %3921 to i8
  %3925 = and i8 %3924, 1
  %3926 = lshr i32 %3921, 1
  %3927 = zext i32 %3926 to i64
  store i8 %3925, i8* %14, align 1
  %3928 = and i32 %3926, 255
  %3929 = tail call i32 @llvm.ctpop.i32(i32 %3928)
  %3930 = trunc i32 %3929 to i8
  %3931 = and i8 %3930, 1
  %3932 = xor i8 %3931, 1
  store i8 %3932, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3933 = icmp eq i32 %3926, 0
  %3934 = zext i1 %3933 to i8
  store i8 %3934, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %3923, i8* %38, align 1
  store i64 %3927, i64* %RDI.i2136, align 8
  store i64 %3927, i64* %RSI.i642, align 8
  %3935 = add i64 %3915, %3927
  %3936 = add i64 %3889, 52
  store i64 %3936, i64* %3, align 8
  %3937 = inttoptr i64 %3935 to i8*
  %3938 = load i8, i8* %3937, align 1
  %3939 = zext i8 %3938 to i64
  store i64 %3939, i64* %RDI.i2136, align 8
  %3940 = add i64 %3889, 56
  store i64 %3940, i64* %3, align 8
  %3941 = load i64, i64* %3891, align 8
  store i64 %3941, i64* %RDX.i822, align 8
  %3942 = add i64 %3941, 60
  %3943 = add i64 %3889, 60
  store i64 %3943, i64* %3, align 8
  %3944 = inttoptr i64 %3942 to i32*
  %3945 = load i32, i32* %3944, align 4
  %3946 = shl i32 %3945, 2
  %3947 = and i32 %3946, 4
  %3948 = zext i32 %3947 to i64
  store i64 %3948, i64* %R8.i628, align 8
  store i8 0, i8* %14, align 1
  %3949 = tail call i32 @llvm.ctpop.i32(i32 %3947)
  %3950 = trunc i32 %3949 to i8
  %3951 = xor i8 %3950, 1
  store i8 %3951, i8* %21, align 1
  %.lobit68 = lshr exact i32 %3947, 2
  %3952 = trunc i32 %.lobit68 to i8
  %3953 = xor i8 %3952, 1
  store i8 %3953, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %3948, i64* %RCX.i723, align 8
  %3954 = add i64 %3889, 73
  store i64 %3954, i64* %3, align 8
  %trunc150 = trunc i32 %3946 to i3
  %cond204 = icmp eq i3 %trunc150, 0
  br i1 %cond204, label %routine_shrl__cl___edi.exit281, label %3955

; <label>:3955:                                   ; preds = %block_.L_40712f
  %3956 = zext i32 %3947 to i64
  %3957 = add nuw nsw i64 %3956, 4294967295
  %3958 = and i64 %3957, 4294967295
  %3959 = lshr i64 %3939, %3958
  %3960 = trunc i64 %3959 to i8
  %3961 = and i8 %3960, 1
  %3962 = lshr i64 %3959, 1
  %3963 = trunc i64 %3962 to i32
  %3964 = and i32 %3963, 2147483647
  %3965 = zext i32 %3964 to i64
  store i64 %3965, i64* %RDI.i2136, align 8
  store i8 %3961, i8* %14, align 1
  %3966 = and i32 %3963, 255
  %3967 = tail call i32 @llvm.ctpop.i32(i32 %3966)
  %3968 = trunc i32 %3967 to i8
  %3969 = and i8 %3968, 1
  %3970 = xor i8 %3969, 1
  store i8 %3970, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3971 = icmp eq i32 %3964, 0
  %3972 = zext i1 %3971 to i8
  store i8 %3972, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shrl__cl___edi.exit281

routine_shrl__cl___edi.exit281:                   ; preds = %block_.L_40712f, %3955
  %3973 = phi i64 [ %3965, %3955 ], [ %3939, %block_.L_40712f ]
  %3974 = shl nuw nsw i64 %3973, 16
  %3975 = and i64 %3974, 983040
  store i64 %3975, i64* %RDI.i2136, align 8
  %3976 = load i64, i64* %RAX.i858, align 8
  %3977 = or i64 %3975, %3976
  %3978 = trunc i64 %3977 to i32
  %3979 = and i64 %3977, 4294967295
  store i64 %3979, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %3980 = and i32 %3978, 255
  %3981 = tail call i32 @llvm.ctpop.i32(i32 %3980)
  %3982 = trunc i32 %3981 to i8
  %3983 = and i8 %3982, 1
  %3984 = xor i8 %3983, 1
  store i8 %3984, i8* %21, align 1
  %3985 = icmp eq i32 %3978, 0
  %3986 = zext i1 %3985 to i8
  store i8 %3986, i8* %29, align 1
  %3987 = lshr i32 %3978, 31
  %3988 = trunc i32 %3987 to i8
  store i8 %3988, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3989 = load i64, i64* %RBP.i, align 8
  %3990 = add i64 %3989, -16
  %3991 = add i64 %3889, 85
  store i64 %3991, i64* %3, align 8
  %3992 = inttoptr i64 %3990 to i64*
  %3993 = load i64, i64* %3992, align 8
  store i64 %3993, i64* %RDX.i822, align 8
  %3994 = add i64 %3993, 60
  %3995 = trunc i64 %3977 to i32
  %3996 = add i64 %3889, 88
  store i64 %3996, i64* %3, align 8
  %3997 = inttoptr i64 %3994 to i32*
  store i32 %3995, i32* %3997, align 4
  %3998 = load i64, i64* %RBP.i, align 8
  %3999 = add i64 %3998, -16
  %4000 = load i64, i64* %3, align 8
  %4001 = add i64 %4000, 4
  store i64 %4001, i64* %3, align 8
  %4002 = inttoptr i64 %3999 to i64*
  %4003 = load i64, i64* %4002, align 8
  store i64 %4003, i64* %RDX.i822, align 8
  %4004 = add i64 %4003, 1092
  %4005 = add i64 %4000, 10
  store i64 %4005, i64* %3, align 8
  %4006 = inttoptr i64 %4004 to i32*
  %4007 = load i32, i32* %4006, align 4
  %4008 = add i32 %4007, 1
  %4009 = zext i32 %4008 to i64
  store i64 %4009, i64* %RAX.i858, align 8
  %4010 = icmp eq i32 %4007, -1
  %4011 = icmp eq i32 %4008, 0
  %4012 = or i1 %4010, %4011
  %4013 = zext i1 %4012 to i8
  store i8 %4013, i8* %14, align 1
  %4014 = and i32 %4008, 255
  %4015 = tail call i32 @llvm.ctpop.i32(i32 %4014)
  %4016 = trunc i32 %4015 to i8
  %4017 = and i8 %4016, 1
  %4018 = xor i8 %4017, 1
  store i8 %4018, i8* %21, align 1
  %4019 = xor i32 %4008, %4007
  %4020 = lshr i32 %4019, 4
  %4021 = trunc i32 %4020 to i8
  %4022 = and i8 %4021, 1
  store i8 %4022, i8* %26, align 1
  %4023 = zext i1 %4011 to i8
  store i8 %4023, i8* %29, align 1
  %4024 = lshr i32 %4008, 31
  %4025 = trunc i32 %4024 to i8
  store i8 %4025, i8* %32, align 1
  %4026 = lshr i32 %4007, 31
  %4027 = xor i32 %4024, %4026
  %4028 = add nuw nsw i32 %4027, %4024
  %4029 = icmp eq i32 %4028, 2
  %4030 = zext i1 %4029 to i8
  store i8 %4030, i8* %38, align 1
  %4031 = add i64 %4000, 19
  store i64 %4031, i64* %3, align 8
  store i32 %4008, i32* %4006, align 4
  %4032 = load i64, i64* %RBP.i, align 8
  %4033 = add i64 %4032, -16
  %4034 = load i64, i64* %3, align 8
  %4035 = add i64 %4034, 4
  store i64 %4035, i64* %3, align 8
  %4036 = inttoptr i64 %4033 to i64*
  %4037 = load i64, i64* %4036, align 8
  store i64 %4037, i64* %RDX.i822, align 8
  %4038 = add i64 %4037, 1092
  %4039 = add i64 %4034, 10
  store i64 %4039, i64* %3, align 8
  %4040 = inttoptr i64 %4038 to i32*
  %4041 = load i32, i32* %4040, align 4
  %4042 = zext i32 %4041 to i64
  store i64 %4042, i64* %RAX.i858, align 8
  %4043 = add i64 %4034, 14
  store i64 %4043, i64* %3, align 8
  %4044 = load i64, i64* %4036, align 8
  store i64 %4044, i64* %RDX.i822, align 8
  %4045 = add i64 %4044, 64080
  %4046 = add i64 %4034, 20
  store i64 %4046, i64* %3, align 8
  %4047 = inttoptr i64 %4045 to i32*
  %4048 = load i32, i32* %4047, align 4
  %4049 = add i32 %4048, 1
  %4050 = zext i32 %4049 to i64
  store i64 %4050, i64* %RDI.i2136, align 8
  %4051 = lshr i32 %4049, 31
  %4052 = sub i32 %4041, %4049
  %4053 = icmp ult i32 %4041, %4049
  %4054 = zext i1 %4053 to i8
  store i8 %4054, i8* %14, align 1
  %4055 = and i32 %4052, 255
  %4056 = tail call i32 @llvm.ctpop.i32(i32 %4055)
  %4057 = trunc i32 %4056 to i8
  %4058 = and i8 %4057, 1
  %4059 = xor i8 %4058, 1
  store i8 %4059, i8* %21, align 1
  %4060 = xor i32 %4049, %4041
  %4061 = xor i32 %4060, %4052
  %4062 = lshr i32 %4061, 4
  %4063 = trunc i32 %4062 to i8
  %4064 = and i8 %4063, 1
  store i8 %4064, i8* %26, align 1
  %4065 = icmp eq i32 %4052, 0
  %4066 = zext i1 %4065 to i8
  store i8 %4066, i8* %29, align 1
  %4067 = lshr i32 %4052, 31
  %4068 = trunc i32 %4067 to i8
  store i8 %4068, i8* %32, align 1
  %4069 = lshr i32 %4041, 31
  %4070 = xor i32 %4051, %4069
  %4071 = xor i32 %4067, %4069
  %4072 = add nuw nsw i32 %4071, %4070
  %4073 = icmp eq i32 %4072, 2
  %4074 = zext i1 %4073 to i8
  store i8 %4074, i8* %38, align 1
  %.v180 = select i1 %4065, i64 31, i64 36
  %4075 = add i64 %4034, %.v180
  store i64 %4075, i64* %3, align 8
  br i1 %4065, label %block_.L_406e2e.sink.split, label %block_.L_4071e8

block_.L_4071e8:                                  ; preds = %routine_shrl__cl___edi.exit281
  %4076 = add i64 %4032, -17
  %4077 = add i64 %4075, 4
  store i64 %4077, i64* %3, align 8
  %4078 = inttoptr i64 %4076 to i8*
  %4079 = load i8, i8* %4078, align 1
  %4080 = zext i8 %4079 to i64
  store i64 %4080, i64* %RAX.i858, align 8
  %4081 = add i64 %4075, 8
  store i64 %4081, i64* %3, align 8
  %4082 = load i64, i64* %4036, align 8
  store i64 %4082, i64* %RCX.i723, align 8
  %4083 = zext i8 %4079 to i32
  %4084 = add i64 %4082, 64
  %4085 = add i64 %4075, 11
  store i64 %4085, i64* %3, align 8
  %4086 = inttoptr i64 %4084 to i32*
  %4087 = load i32, i32* %4086, align 4
  %4088 = sub i32 %4083, %4087
  %4089 = icmp ult i32 %4083, %4087
  %4090 = zext i1 %4089 to i8
  store i8 %4090, i8* %14, align 1
  %4091 = and i32 %4088, 255
  %4092 = tail call i32 @llvm.ctpop.i32(i32 %4091)
  %4093 = trunc i32 %4092 to i8
  %4094 = and i8 %4093, 1
  %4095 = xor i8 %4094, 1
  store i8 %4095, i8* %21, align 1
  %4096 = xor i32 %4087, %4083
  %4097 = xor i32 %4096, %4088
  %4098 = lshr i32 %4097, 4
  %4099 = trunc i32 %4098 to i8
  %4100 = and i8 %4099, 1
  store i8 %4100, i8* %26, align 1
  %4101 = icmp eq i32 %4088, 0
  %4102 = zext i1 %4101 to i8
  store i8 %4102, i8* %29, align 1
  %4103 = lshr i32 %4088, 31
  %4104 = trunc i32 %4103 to i8
  store i8 %4104, i8* %32, align 1
  %4105 = lshr i32 %4087, 31
  %4106 = add nuw nsw i32 %4103, %4105
  %4107 = icmp eq i32 %4106, 2
  %4108 = zext i1 %4107 to i8
  store i8 %4108, i8* %38, align 1
  %.v181 = select i1 %4101, i64 33, i64 17
  %4109 = add i64 %4075, %.v181
  %4110 = add i64 %4109, 4
  store i64 %4110, i64* %3, align 8
  br i1 %4101, label %block_.L_407209, label %block_4071f9

block_4071f9:                                     ; preds = %block_.L_4071e8
  %4111 = load i8, i8* %4078, align 1
  %4112 = zext i8 %4111 to i64
  store i64 %4112, i64* %RAX.i858, align 8
  %4113 = add i64 %4109, 8
  store i64 %4113, i64* %3, align 8
  %4114 = load i64, i64* %4036, align 8
  store i64 %4114, i64* %RCX.i723, align 8
  %4115 = add i64 %4114, 64
  %4116 = zext i8 %4111 to i32
  %4117 = add i64 %4109, 11
  store i64 %4117, i64* %3, align 8
  %4118 = inttoptr i64 %4115 to i32*
  store i32 %4116, i32* %4118, align 4
  br label %block_.L_406e2e.sink.split

block_.L_407209:                                  ; preds = %block_.L_4071e8
  %4119 = load i64, i64* %4036, align 8
  store i64 %4119, i64* %RAX.i858, align 8
  %4120 = add i64 %4119, 60
  %4121 = add i64 %4109, 7
  store i64 %4121, i64* %3, align 8
  %4122 = inttoptr i64 %4120 to i32*
  %4123 = load i32, i32* %4122, align 4
  %4124 = zext i32 %4123 to i64
  store i64 %4124, i64* %RDI.i2136, align 8
  %4125 = add i64 %4109, 11
  store i64 %4125, i64* %3, align 8
  %4126 = load i64, i64* %4036, align 8
  %4127 = add i64 %4126, 1096
  store i64 %4127, i64* %RAX.i858, align 8
  %4128 = icmp ugt i64 %4126, -1097
  %4129 = zext i1 %4128 to i8
  store i8 %4129, i8* %14, align 1
  %4130 = trunc i64 %4127 to i32
  %4131 = and i32 %4130, 255
  %4132 = tail call i32 @llvm.ctpop.i32(i32 %4131)
  %4133 = trunc i32 %4132 to i8
  %4134 = and i8 %4133, 1
  %4135 = xor i8 %4134, 1
  store i8 %4135, i8* %21, align 1
  %4136 = xor i64 %4127, %4126
  %4137 = lshr i64 %4136, 4
  %4138 = trunc i64 %4137 to i8
  %4139 = and i8 %4138, 1
  store i8 %4139, i8* %26, align 1
  %4140 = icmp eq i64 %4127, 0
  %4141 = zext i1 %4140 to i8
  store i8 %4141, i8* %29, align 1
  %4142 = lshr i64 %4127, 63
  %4143 = trunc i64 %4142 to i8
  store i8 %4143, i8* %32, align 1
  %4144 = lshr i64 %4126, 63
  %4145 = xor i64 %4142, %4144
  %4146 = add nuw nsw i64 %4145, %4142
  %4147 = icmp eq i64 %4146, 2
  %4148 = zext i1 %4147 to i8
  store i8 %4148, i8* %38, align 1
  store i64 %4127, i64* %RSI.i642, align 8
  %4149 = add i64 %4109, -3769
  %4150 = add i64 %4109, 25
  %4151 = load i64, i64* %6, align 8
  %4152 = add i64 %4151, -8
  %4153 = inttoptr i64 %4152 to i64*
  store i64 %4150, i64* %4153, align 8
  store i64 %4152, i64* %6, align 8
  store i64 %4149, i64* %3, align 8
  %call2_40721d = tail call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* nonnull %0, i64 %4149, %struct.Memory* %2)
  %4154 = load i8, i8* %AL.i637, align 1
  %4155 = load i64, i64* %3, align 8
  store i8 %4154, i8* %CL.i837, align 1
  %4156 = load i64, i64* %RBP.i, align 8
  %4157 = add i64 %4156, -17
  %4158 = add i64 %4155, 5
  store i64 %4158, i64* %3, align 8
  %4159 = inttoptr i64 %4157 to i8*
  store i8 %4154, i8* %4159, align 1
  %4160 = load i64, i64* %RBP.i, align 8
  %4161 = add i64 %4160, -16
  %4162 = load i64, i64* %3, align 8
  %4163 = add i64 %4162, 4
  store i64 %4163, i64* %3, align 8
  %4164 = inttoptr i64 %4161 to i64*
  %4165 = load i64, i64* %4164, align 8
  store i64 %4165, i64* %RSI.i642, align 8
  %4166 = add i64 %4165, 3160
  %4167 = add i64 %4162, 11
  store i64 %4167, i64* %3, align 8
  %4168 = inttoptr i64 %4166 to i64*
  %4169 = load i64, i64* %4168, align 8
  store i64 %4169, i64* %RSI.i642, align 8
  %4170 = add i64 %4162, 15
  store i64 %4170, i64* %3, align 8
  %4171 = load i64, i64* %4164, align 8
  store i64 %4171, i64* %RDX.i822, align 8
  %4172 = add i64 %4171, 60
  %4173 = add i64 %4162, 18
  store i64 %4173, i64* %3, align 8
  %4174 = inttoptr i64 %4172 to i32*
  %4175 = load i32, i32* %4174, align 4
  %4176 = zext i32 %4175 to i64
  store i64 %4176, i64* %RAX.i858, align 8
  store i64 %4176, i64* %RDX.i822, align 8
  %4177 = shl nuw nsw i64 %4176, 1
  %4178 = add i64 %4169, %4177
  %4179 = add i64 %4162, 24
  store i64 %4179, i64* %3, align 8
  %4180 = inttoptr i64 %4178 to i16*
  %4181 = load i16, i16* %4180, align 2
  %4182 = zext i16 %4181 to i64
  store i64 %4182, i64* %RAX.i858, align 8
  %4183 = add i64 %4162, 28
  store i64 %4183, i64* %3, align 8
  %4184 = load i64, i64* %4164, align 8
  store i64 %4184, i64* %RDX.i822, align 8
  %4185 = add i64 %4184, 3168
  %4186 = add i64 %4162, 35
  store i64 %4186, i64* %3, align 8
  %4187 = inttoptr i64 %4185 to i64*
  %4188 = load i64, i64* %4187, align 8
  store i64 %4188, i64* %RDX.i822, align 8
  %4189 = add i64 %4162, 39
  store i64 %4189, i64* %3, align 8
  %4190 = load i64, i64* %4164, align 8
  store i64 %4190, i64* %RSI.i642, align 8
  %4191 = add i64 %4190, 60
  %4192 = add i64 %4162, 42
  store i64 %4192, i64* %3, align 8
  %4193 = inttoptr i64 %4191 to i32*
  %4194 = load i32, i32* %4193, align 4
  %4195 = lshr i32 %4194, 31
  %4196 = trunc i32 %4195 to i8
  %4197 = trunc i32 %4194 to i8
  %4198 = and i8 %4197, 1
  %4199 = lshr i32 %4194, 1
  %4200 = zext i32 %4199 to i64
  store i8 %4198, i8* %14, align 1
  %4201 = and i32 %4199, 255
  %4202 = tail call i32 @llvm.ctpop.i32(i32 %4201)
  %4203 = trunc i32 %4202 to i8
  %4204 = and i8 %4203, 1
  %4205 = xor i8 %4204, 1
  store i8 %4205, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4206 = icmp eq i32 %4199, 0
  %4207 = zext i1 %4206 to i8
  store i8 %4207, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %4196, i8* %38, align 1
  store i64 %4200, i64* %RDI.i2136, align 8
  store i64 %4200, i64* %RSI.i642, align 8
  %4208 = add i64 %4188, %4200
  %4209 = add i64 %4162, 52
  store i64 %4209, i64* %3, align 8
  %4210 = inttoptr i64 %4208 to i8*
  %4211 = load i8, i8* %4210, align 1
  %4212 = zext i8 %4211 to i64
  store i64 %4212, i64* %RDI.i2136, align 8
  %4213 = add i64 %4162, 56
  store i64 %4213, i64* %3, align 8
  %4214 = load i64, i64* %4164, align 8
  store i64 %4214, i64* %RDX.i822, align 8
  %4215 = add i64 %4214, 60
  %4216 = add i64 %4162, 60
  store i64 %4216, i64* %3, align 8
  %4217 = inttoptr i64 %4215 to i32*
  %4218 = load i32, i32* %4217, align 4
  %4219 = shl i32 %4218, 2
  %4220 = and i32 %4219, 4
  %4221 = zext i32 %4220 to i64
  store i64 %4221, i64* %R8.i628, align 8
  store i8 0, i8* %14, align 1
  %4222 = tail call i32 @llvm.ctpop.i32(i32 %4220)
  %4223 = trunc i32 %4222 to i8
  %4224 = xor i8 %4223, 1
  store i8 %4224, i8* %21, align 1
  %.lobit73 = lshr exact i32 %4220, 2
  %4225 = trunc i32 %.lobit73 to i8
  %4226 = xor i8 %4225, 1
  store i8 %4226, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %4221, i64* %RCX.i723, align 8
  %4227 = add i64 %4162, 73
  store i64 %4227, i64* %3, align 8
  %trunc151 = trunc i32 %4219 to i3
  %cond205 = icmp eq i3 %trunc151, 0
  br i1 %cond205, label %routine_shrl__cl___edi.exit140, label %4228

; <label>:4228:                                   ; preds = %block_.L_407209
  %4229 = zext i32 %4220 to i64
  %4230 = add nuw nsw i64 %4229, 4294967295
  %4231 = and i64 %4230, 4294967295
  %4232 = lshr i64 %4212, %4231
  %4233 = trunc i64 %4232 to i8
  %4234 = and i8 %4233, 1
  %4235 = lshr i64 %4232, 1
  %4236 = trunc i64 %4235 to i32
  %4237 = and i32 %4236, 2147483647
  %4238 = zext i32 %4237 to i64
  store i64 %4238, i64* %RDI.i2136, align 8
  store i8 %4234, i8* %14, align 1
  %4239 = and i32 %4236, 255
  %4240 = tail call i32 @llvm.ctpop.i32(i32 %4239)
  %4241 = trunc i32 %4240 to i8
  %4242 = and i8 %4241, 1
  %4243 = xor i8 %4242, 1
  store i8 %4243, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4244 = icmp eq i32 %4237, 0
  %4245 = zext i1 %4244 to i8
  store i8 %4245, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shrl__cl___edi.exit140

routine_shrl__cl___edi.exit140:                   ; preds = %block_.L_407209, %4228
  %4246 = phi i64 [ %4238, %4228 ], [ %4212, %block_.L_407209 ]
  %4247 = shl nuw nsw i64 %4246, 16
  %4248 = and i64 %4247, 983040
  store i64 %4248, i64* %RDI.i2136, align 8
  %4249 = load i64, i64* %RAX.i858, align 8
  %4250 = or i64 %4248, %4249
  %4251 = trunc i64 %4250 to i32
  %4252 = and i64 %4250, 4294967295
  store i64 %4252, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %4253 = and i32 %4251, 255
  %4254 = tail call i32 @llvm.ctpop.i32(i32 %4253)
  %4255 = trunc i32 %4254 to i8
  %4256 = and i8 %4255, 1
  %4257 = xor i8 %4256, 1
  store i8 %4257, i8* %21, align 1
  %4258 = icmp eq i32 %4251, 0
  %4259 = zext i1 %4258 to i8
  store i8 %4259, i8* %29, align 1
  %4260 = lshr i32 %4251, 31
  %4261 = trunc i32 %4260 to i8
  store i8 %4261, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4262 = load i64, i64* %RBP.i, align 8
  %4263 = add i64 %4262, -16
  %4264 = add i64 %4162, 85
  store i64 %4264, i64* %3, align 8
  %4265 = inttoptr i64 %4263 to i64*
  %4266 = load i64, i64* %4265, align 8
  store i64 %4266, i64* %RDX.i822, align 8
  %4267 = add i64 %4266, 60
  %4268 = trunc i64 %4250 to i32
  %4269 = add i64 %4162, 88
  store i64 %4269, i64* %3, align 8
  %4270 = inttoptr i64 %4267 to i32*
  store i32 %4268, i32* %4270, align 4
  %4271 = load i64, i64* %RBP.i, align 8
  %4272 = add i64 %4271, -16
  %4273 = load i64, i64* %3, align 8
  %4274 = add i64 %4273, 4
  store i64 %4274, i64* %3, align 8
  %4275 = inttoptr i64 %4272 to i64*
  %4276 = load i64, i64* %4275, align 8
  store i64 %4276, i64* %RDX.i822, align 8
  %4277 = add i64 %4276, 1092
  %4278 = add i64 %4273, 10
  store i64 %4278, i64* %3, align 8
  %4279 = inttoptr i64 %4277 to i32*
  %4280 = load i32, i32* %4279, align 4
  %4281 = add i32 %4280, 1
  %4282 = zext i32 %4281 to i64
  store i64 %4282, i64* %RAX.i858, align 8
  %4283 = icmp eq i32 %4280, -1
  %4284 = icmp eq i32 %4281, 0
  %4285 = or i1 %4283, %4284
  %4286 = zext i1 %4285 to i8
  store i8 %4286, i8* %14, align 1
  %4287 = and i32 %4281, 255
  %4288 = tail call i32 @llvm.ctpop.i32(i32 %4287)
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  %4291 = xor i8 %4290, 1
  store i8 %4291, i8* %21, align 1
  %4292 = xor i32 %4281, %4280
  %4293 = lshr i32 %4292, 4
  %4294 = trunc i32 %4293 to i8
  %4295 = and i8 %4294, 1
  store i8 %4295, i8* %26, align 1
  %4296 = zext i1 %4284 to i8
  store i8 %4296, i8* %29, align 1
  %4297 = lshr i32 %4281, 31
  %4298 = trunc i32 %4297 to i8
  store i8 %4298, i8* %32, align 1
  %4299 = lshr i32 %4280, 31
  %4300 = xor i32 %4297, %4299
  %4301 = add nuw nsw i32 %4300, %4297
  %4302 = icmp eq i32 %4301, 2
  %4303 = zext i1 %4302 to i8
  store i8 %4303, i8* %38, align 1
  %4304 = add i64 %4273, 19
  store i64 %4304, i64* %3, align 8
  store i32 %4281, i32* %4279, align 4
  %4305 = load i64, i64* %RBP.i, align 8
  %4306 = add i64 %4305, -17
  %4307 = load i64, i64* %3, align 8
  %4308 = add i64 %4307, 4
  store i64 %4308, i64* %3, align 8
  %4309 = inttoptr i64 %4306 to i8*
  %4310 = load i8, i8* %4309, align 1
  %4311 = zext i8 %4310 to i32
  %4312 = add nuw nsw i32 %4311, 4
  %4313 = zext i32 %4312 to i64
  store i64 %4313, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %4314 = and i32 %4312, 255
  %4315 = tail call i32 @llvm.ctpop.i32(i32 %4314)
  %4316 = trunc i32 %4315 to i8
  %4317 = and i8 %4316, 1
  %4318 = xor i8 %4317, 1
  store i8 %4318, i8* %21, align 1
  %4319 = xor i32 %4312, %4311
  %4320 = lshr i32 %4319, 4
  %4321 = trunc i32 %4320 to i8
  %4322 = and i8 %4321, 1
  store i8 %4322, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4323 = add i64 %4305, -16
  %4324 = add i64 %4307, 11
  store i64 %4324, i64* %3, align 8
  %4325 = inttoptr i64 %4323 to i64*
  %4326 = load i64, i64* %4325, align 8
  store i64 %4326, i64* %RDX.i822, align 8
  %4327 = add i64 %4326, 16
  %4328 = add i64 %4307, 14
  store i64 %4328, i64* %3, align 8
  %4329 = inttoptr i64 %4327 to i32*
  store i32 %4312, i32* %4329, align 4
  %4330 = load i64, i64* %RBP.i, align 8
  %4331 = add i64 %4330, -16
  %4332 = load i64, i64* %3, align 8
  %4333 = add i64 %4332, 4
  store i64 %4333, i64* %3, align 8
  %4334 = inttoptr i64 %4331 to i64*
  %4335 = load i64, i64* %4334, align 8
  store i64 %4335, i64* %RDX.i822, align 8
  %4336 = add i64 %4335, 60
  %4337 = add i64 %4332, 7
  store i64 %4337, i64* %3, align 8
  %4338 = inttoptr i64 %4336 to i32*
  %4339 = load i32, i32* %4338, align 4
  %4340 = zext i32 %4339 to i64
  store i64 %4340, i64* %RDI.i2136, align 8
  %4341 = add i64 %4332, 11
  store i64 %4341, i64* %3, align 8
  %4342 = load i64, i64* %4334, align 8
  %4343 = add i64 %4342, 1096
  store i64 %4343, i64* %RDX.i822, align 8
  %4344 = icmp ugt i64 %4342, -1097
  %4345 = zext i1 %4344 to i8
  store i8 %4345, i8* %14, align 1
  %4346 = trunc i64 %4343 to i32
  %4347 = and i32 %4346, 255
  %4348 = tail call i32 @llvm.ctpop.i32(i32 %4347)
  %4349 = trunc i32 %4348 to i8
  %4350 = and i8 %4349, 1
  %4351 = xor i8 %4350, 1
  store i8 %4351, i8* %21, align 1
  %4352 = xor i64 %4343, %4342
  %4353 = lshr i64 %4352, 4
  %4354 = trunc i64 %4353 to i8
  %4355 = and i8 %4354, 1
  store i8 %4355, i8* %26, align 1
  %4356 = icmp eq i64 %4343, 0
  %4357 = zext i1 %4356 to i8
  store i8 %4357, i8* %29, align 1
  %4358 = lshr i64 %4343, 63
  %4359 = trunc i64 %4358 to i8
  store i8 %4359, i8* %32, align 1
  %4360 = lshr i64 %4342, 63
  %4361 = xor i64 %4358, %4360
  %4362 = add nuw nsw i64 %4361, %4358
  %4363 = icmp eq i64 %4362, 2
  %4364 = zext i1 %4363 to i8
  store i8 %4364, i8* %38, align 1
  store i64 %4343, i64* %RSI.i642, align 8
  %4365 = add i64 %4332, -3921
  %4366 = add i64 %4332, 26
  %4367 = load i64, i64* %6, align 8
  %4368 = add i64 %4367, -8
  %4369 = inttoptr i64 %4368 to i64*
  store i64 %4366, i64* %4369, align 8
  store i64 %4368, i64* %6, align 8
  store i64 %4365, i64* %3, align 8
  %call2_4072b6 = tail call %struct.Memory* @sub_406350.BZ2_indexIntoF(%struct.State* nonnull %0, i64 %4365, %struct.Memory* %2)
  %4370 = load i64, i64* %RBP.i, align 8
  %4371 = add i64 %4370, -16
  %4372 = load i64, i64* %3, align 8
  %4373 = add i64 %4372, 4
  store i64 %4373, i64* %3, align 8
  %4374 = inttoptr i64 %4371 to i64*
  %4375 = load i64, i64* %4374, align 8
  store i64 %4375, i64* %RDX.i822, align 8
  %4376 = add i64 %4375, 64
  %4377 = load i32, i32* %EAX.i621, align 4
  %4378 = add i64 %4372, 7
  store i64 %4378, i64* %3, align 8
  %4379 = inttoptr i64 %4376 to i32*
  store i32 %4377, i32* %4379, align 4
  %4380 = load i64, i64* %RBP.i, align 8
  %4381 = add i64 %4380, -16
  %4382 = load i64, i64* %3, align 8
  %4383 = add i64 %4382, 4
  store i64 %4383, i64* %3, align 8
  %4384 = inttoptr i64 %4381 to i64*
  %4385 = load i64, i64* %4384, align 8
  store i64 %4385, i64* %RDX.i822, align 8
  %4386 = add i64 %4385, 3160
  %4387 = add i64 %4382, 11
  store i64 %4387, i64* %3, align 8
  %4388 = inttoptr i64 %4386 to i64*
  %4389 = load i64, i64* %4388, align 8
  store i64 %4389, i64* %RDX.i822, align 8
  %4390 = add i64 %4382, 15
  store i64 %4390, i64* %3, align 8
  %4391 = load i64, i64* %4384, align 8
  store i64 %4391, i64* %RSI.i642, align 8
  %4392 = add i64 %4391, 60
  %4393 = add i64 %4382, 18
  store i64 %4393, i64* %3, align 8
  %4394 = inttoptr i64 %4392 to i32*
  %4395 = load i32, i32* %4394, align 4
  %4396 = zext i32 %4395 to i64
  store i64 %4396, i64* %RAX.i858, align 8
  store i64 %4396, i64* %RSI.i642, align 8
  %4397 = shl nuw nsw i64 %4396, 1
  %4398 = add i64 %4389, %4397
  %4399 = add i64 %4382, 24
  store i64 %4399, i64* %3, align 8
  %4400 = inttoptr i64 %4398 to i16*
  %4401 = load i16, i16* %4400, align 2
  %4402 = zext i16 %4401 to i64
  store i64 %4402, i64* %RAX.i858, align 8
  %4403 = add i64 %4382, 28
  store i64 %4403, i64* %3, align 8
  %4404 = load i64, i64* %4384, align 8
  store i64 %4404, i64* %RDX.i822, align 8
  %4405 = add i64 %4404, 3168
  %4406 = add i64 %4382, 35
  store i64 %4406, i64* %3, align 8
  %4407 = inttoptr i64 %4405 to i64*
  %4408 = load i64, i64* %4407, align 8
  store i64 %4408, i64* %RDX.i822, align 8
  %4409 = add i64 %4382, 39
  store i64 %4409, i64* %3, align 8
  %4410 = load i64, i64* %4384, align 8
  store i64 %4410, i64* %RSI.i642, align 8
  %4411 = add i64 %4410, 60
  %4412 = add i64 %4382, 42
  store i64 %4412, i64* %3, align 8
  %4413 = inttoptr i64 %4411 to i32*
  %4414 = load i32, i32* %4413, align 4
  %4415 = lshr i32 %4414, 31
  %4416 = trunc i32 %4415 to i8
  %4417 = trunc i32 %4414 to i8
  %4418 = and i8 %4417, 1
  %4419 = lshr i32 %4414, 1
  %4420 = zext i32 %4419 to i64
  store i8 %4418, i8* %14, align 1
  %4421 = and i32 %4419, 255
  %4422 = tail call i32 @llvm.ctpop.i32(i32 %4421)
  %4423 = trunc i32 %4422 to i8
  %4424 = and i8 %4423, 1
  %4425 = xor i8 %4424, 1
  store i8 %4425, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4426 = icmp eq i32 %4419, 0
  %4427 = zext i1 %4426 to i8
  store i8 %4427, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 %4416, i8* %38, align 1
  store i64 %4420, i64* %RDI.i2136, align 8
  store i64 %4420, i64* %RSI.i642, align 8
  %4428 = add i64 %4408, %4420
  %4429 = add i64 %4382, 52
  store i64 %4429, i64* %3, align 8
  %4430 = inttoptr i64 %4428 to i8*
  %4431 = load i8, i8* %4430, align 1
  %4432 = zext i8 %4431 to i64
  store i64 %4432, i64* %RDI.i2136, align 8
  %4433 = add i64 %4382, 56
  store i64 %4433, i64* %3, align 8
  %4434 = load i64, i64* %4384, align 8
  store i64 %4434, i64* %RDX.i822, align 8
  %4435 = add i64 %4434, 60
  %4436 = add i64 %4382, 60
  store i64 %4436, i64* %3, align 8
  %4437 = inttoptr i64 %4435 to i32*
  %4438 = load i32, i32* %4437, align 4
  %4439 = shl i32 %4438, 2
  %4440 = and i32 %4439, 4
  %4441 = zext i32 %4440 to i64
  store i64 %4441, i64* %R8.i628, align 8
  store i8 0, i8* %14, align 1
  %4442 = tail call i32 @llvm.ctpop.i32(i32 %4440)
  %4443 = trunc i32 %4442 to i8
  %4444 = xor i8 %4443, 1
  store i8 %4444, i8* %21, align 1
  %.lobit78 = lshr exact i32 %4440, 2
  %4445 = trunc i32 %.lobit78 to i8
  %4446 = xor i8 %4445, 1
  store i8 %4446, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %4441, i64* %RCX.i723, align 8
  %4447 = add i64 %4382, 73
  store i64 %4447, i64* %3, align 8
  %trunc152 = trunc i32 %4439 to i3
  %cond206 = icmp eq i3 %trunc152, 0
  br i1 %cond206, label %routine_shrl__cl___edi.exit, label %4448

; <label>:4448:                                   ; preds = %routine_shrl__cl___edi.exit140
  %4449 = zext i32 %4440 to i64
  %4450 = add nuw nsw i64 %4449, 4294967295
  %4451 = and i64 %4450, 4294967295
  %4452 = lshr i64 %4432, %4451
  %4453 = trunc i64 %4452 to i8
  %4454 = and i8 %4453, 1
  %4455 = lshr i64 %4452, 1
  %4456 = trunc i64 %4455 to i32
  %4457 = and i32 %4456, 2147483647
  %4458 = zext i32 %4457 to i64
  store i64 %4458, i64* %RDI.i2136, align 8
  store i8 %4454, i8* %14, align 1
  %4459 = and i32 %4456, 255
  %4460 = tail call i32 @llvm.ctpop.i32(i32 %4459)
  %4461 = trunc i32 %4460 to i8
  %4462 = and i8 %4461, 1
  %4463 = xor i8 %4462, 1
  store i8 %4463, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4464 = icmp eq i32 %4457, 0
  %4465 = zext i1 %4464 to i8
  store i8 %4465, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shrl__cl___edi.exit

routine_shrl__cl___edi.exit:                      ; preds = %routine_shrl__cl___edi.exit140, %4448
  %4466 = phi i64 [ %4458, %4448 ], [ %4432, %routine_shrl__cl___edi.exit140 ]
  %4467 = shl nuw nsw i64 %4466, 16
  %4468 = and i64 %4467, 983040
  store i64 %4468, i64* %RDI.i2136, align 8
  %4469 = load i64, i64* %RAX.i858, align 8
  %4470 = or i64 %4468, %4469
  %4471 = trunc i64 %4470 to i32
  %4472 = and i64 %4470, 4294967295
  store i64 %4472, i64* %RAX.i858, align 8
  store i8 0, i8* %14, align 1
  %4473 = and i32 %4471, 255
  %4474 = tail call i32 @llvm.ctpop.i32(i32 %4473)
  %4475 = trunc i32 %4474 to i8
  %4476 = and i8 %4475, 1
  %4477 = xor i8 %4476, 1
  store i8 %4477, i8* %21, align 1
  %4478 = icmp eq i32 %4471, 0
  %4479 = zext i1 %4478 to i8
  store i8 %4479, i8* %29, align 1
  %4480 = lshr i32 %4471, 31
  %4481 = trunc i32 %4480 to i8
  store i8 %4481, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4482 = load i64, i64* %RBP.i, align 8
  %4483 = add i64 %4482, -16
  %4484 = add i64 %4382, 85
  store i64 %4484, i64* %3, align 8
  %4485 = inttoptr i64 %4483 to i64*
  %4486 = load i64, i64* %4485, align 8
  store i64 %4486, i64* %RDX.i822, align 8
  %4487 = add i64 %4486, 60
  %4488 = trunc i64 %4470 to i32
  %4489 = add i64 %4382, 88
  store i64 %4489, i64* %3, align 8
  %4490 = inttoptr i64 %4487 to i32*
  store i32 %4488, i32* %4490, align 4
  %4491 = load i64, i64* %RBP.i, align 8
  %4492 = add i64 %4491, -16
  %4493 = load i64, i64* %3, align 8
  %4494 = add i64 %4493, 4
  store i64 %4494, i64* %3, align 8
  %4495 = inttoptr i64 %4492 to i64*
  %4496 = load i64, i64* %4495, align 8
  store i64 %4496, i64* %RDX.i822, align 8
  %4497 = add i64 %4496, 1092
  %4498 = add i64 %4493, 10
  store i64 %4498, i64* %3, align 8
  %4499 = inttoptr i64 %4497 to i32*
  %4500 = load i32, i32* %4499, align 4
  %4501 = add i32 %4500, 1
  %4502 = zext i32 %4501 to i64
  store i64 %4502, i64* %RAX.i858, align 8
  %4503 = icmp eq i32 %4500, -1
  %4504 = icmp eq i32 %4501, 0
  %4505 = or i1 %4503, %4504
  %4506 = zext i1 %4505 to i8
  store i8 %4506, i8* %14, align 1
  %4507 = and i32 %4501, 255
  %4508 = tail call i32 @llvm.ctpop.i32(i32 %4507)
  %4509 = trunc i32 %4508 to i8
  %4510 = and i8 %4509, 1
  %4511 = xor i8 %4510, 1
  store i8 %4511, i8* %21, align 1
  %4512 = xor i32 %4501, %4500
  %4513 = lshr i32 %4512, 4
  %4514 = trunc i32 %4513 to i8
  %4515 = and i8 %4514, 1
  store i8 %4515, i8* %26, align 1
  %4516 = zext i1 %4504 to i8
  store i8 %4516, i8* %29, align 1
  %4517 = lshr i32 %4501, 31
  %4518 = trunc i32 %4517 to i8
  store i8 %4518, i8* %32, align 1
  %4519 = lshr i32 %4500, 31
  %4520 = xor i32 %4517, %4519
  %4521 = add nuw nsw i32 %4520, %4517
  %4522 = icmp eq i32 %4521, 2
  %4523 = zext i1 %4522 to i8
  store i8 %4523, i8* %38, align 1
  %4524 = add i64 %4493, 19
  store i64 %4524, i64* %3, align 8
  store i32 %4501, i32* %4499, align 4
  br label %block_.L_406e2e.sink.split

block_.L_407333.loopexit:                         ; preds = %block_.L_406e33
  br label %block_.L_407333

block_.L_407333.loopexit226:                      ; preds = %block_406e5b, %block_.L_406f3b
  %.ph = phi i64 [ %3233, %block_.L_406f3b ], [ %2890, %block_406e5b ]
  %.sink.ph = phi i8 [ 1, %block_.L_406f3b ], [ 0, %block_406e5b ]
  %.sink84.ph = phi i64 [ 981, %block_.L_406f3b ], [ 1021, %block_406e5b ]
  br label %block_.L_407333

block_.L_407333.loopexit227:                      ; preds = %block_.L_4066b4
  br label %block_.L_407333

block_.L_407333.loopexit228:                      ; preds = %block_4066dc, %block_.L_4067bc
  %.ph229 = phi i64 [ %491, %block_.L_4067bc ], [ %148, %block_4066dc ]
  %.sink.ph230 = phi i8 [ 1, %block_.L_4067bc ], [ 0, %block_4066dc ]
  %.sink84.ph231 = phi i64 [ 2900, %block_.L_4067bc ], [ 2940, %block_4066dc ]
  br label %block_.L_407333

block_.L_407333:                                  ; preds = %block_.L_407333.loopexit228, %block_.L_407333.loopexit227, %block_.L_407333.loopexit226, %block_.L_407333.loopexit
  %4525 = phi i64 [ %2834, %block_.L_407333.loopexit ], [ %.ph, %block_.L_407333.loopexit226 ], [ %92, %block_.L_407333.loopexit227 ], [ %.ph229, %block_.L_407333.loopexit228 ]
  %.sink89 = phi i64 [ %2813, %block_.L_407333.loopexit ], [ %2813, %block_.L_407333.loopexit226 ], [ %71, %block_.L_407333.loopexit227 ], [ %71, %block_.L_407333.loopexit228 ]
  %.sink = phi i8 [ 0, %block_.L_407333.loopexit ], [ %.sink.ph, %block_.L_407333.loopexit226 ], [ 0, %block_.L_407333.loopexit227 ], [ %.sink.ph230, %block_.L_407333.loopexit228 ]
  %.sink84 = phi i64 [ 1259, %block_.L_407333.loopexit ], [ %.sink84.ph, %block_.L_407333.loopexit226 ], [ 3178, %block_.L_407333.loopexit227 ], [ %.sink84.ph231, %block_.L_407333.loopexit228 ]
  %4526 = add i64 %.sink89, -1
  %4527 = add i64 %4525, 4
  store i64 %4527, i64* %3, align 8
  %4528 = inttoptr i64 %4526 to i8*
  store i8 %.sink, i8* %4528, align 1
  %4529 = load i64, i64* %3, align 8
  %4530 = add i64 %4529, %.sink84
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4531 = load i64, i64* %RBP.i, align 8
  %4532 = add i64 %4531, -1
  %4533 = add i64 %4530, 4
  store i64 %4533, i64* %3, align 8
  %4534 = inttoptr i64 %4532 to i8*
  %4535 = load i8, i8* %4534, align 1
  %4536 = zext i8 %4535 to i64
  store i64 %4536, i64* %RAX.i, align 8
  %4537 = load i64, i64* %6, align 8
  %4538 = add i64 %4537, 32
  store i64 %4538, i64* %6, align 8
  %4539 = icmp ugt i64 %4537, -33
  %4540 = zext i1 %4539 to i8
  store i8 %4540, i8* %14, align 1
  %4541 = trunc i64 %4538 to i32
  %4542 = and i32 %4541, 255
  %4543 = tail call i32 @llvm.ctpop.i32(i32 %4542)
  %4544 = trunc i32 %4543 to i8
  %4545 = and i8 %4544, 1
  %4546 = xor i8 %4545, 1
  store i8 %4546, i8* %21, align 1
  %4547 = xor i64 %4538, %4537
  %4548 = lshr i64 %4547, 4
  %4549 = trunc i64 %4548 to i8
  %4550 = and i8 %4549, 1
  store i8 %4550, i8* %26, align 1
  %4551 = icmp eq i64 %4538, 0
  %4552 = zext i1 %4551 to i8
  store i8 %4552, i8* %29, align 1
  %4553 = lshr i64 %4538, 63
  %4554 = trunc i64 %4553 to i8
  store i8 %4554, i8* %32, align 1
  %4555 = lshr i64 %4537, 63
  %4556 = xor i64 %4553, %4555
  %4557 = add nuw nsw i64 %4556, %4553
  %4558 = icmp eq i64 %4557, 2
  %4559 = zext i1 %4558 to i8
  store i8 %4559, i8* %38, align 1
  %4560 = add i64 %4530, 9
  store i64 %4560, i64* %3, align 8
  %4561 = add i64 %4537, 40
  %4562 = inttoptr i64 %4538 to i64*
  %4563 = load i64, i64* %4562, align 8
  store i64 %4563, i64* %RBP.i, align 8
  store i64 %4561, i64* %6, align 8
  %4564 = add i64 %4530, 10
  store i64 %4564, i64* %3, align 8
  %4565 = inttoptr i64 %4561 to i64*
  %4566 = load i64, i64* %4565, align 8
  store i64 %4566, i64* %3, align 8
  %4567 = add i64 %4537, 48
  store i64 %4567, i64* %6, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__0x14__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_je_.L_406e29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4066af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4066b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_jne_.L_4066ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x0__MINUS0x1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407333(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_jne_.L_4066e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_406794(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_0xc__rax____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %CL, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i8 %6, i8* %5, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc70__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3184
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
define %struct.Memory* @routine_shll__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 24
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = icmp eq i32 %6, 0
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %18 = lshr i32 %.tr, 23
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  store i8 %20, i8* %17, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc70__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrl__0x18___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 23
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 24
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 255
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %14, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %11, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xc__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = xor i64 %6, %4
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RSI, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl_0x618170___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6390128
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %12, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %12, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0xc70__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 3184
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl__edx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rax____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %R8, align 8
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
define %struct.Memory* @routine_movq__r8__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movl__edx__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 32
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_movl__edx__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 36
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jne_.L_40678f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x444__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1092
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
define %struct.Memory* @routine_movl_0xfa50__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64080
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
define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_4067bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4067e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1__MINUS0x1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 1, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_movb__dl__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_addq__0x448___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1096
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -1097
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
define %struct.Memory* @routine_callq_.BZ2_indexIntoF(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x11__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -17
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
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
define %struct.Memory* @routine_movq_0xc58__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 3160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movl_0x3c__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_movzwl___rsi__r8_2____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xc60__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 3168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__r8____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = lshr i32 %6, 31
  %8 = trunc i32 %7 to i8
  %9 = trunc i64 %3 to i8
  %10 = and i8 %9, 1
  %11 = lshr i64 %3, 1
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 2147483647
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %16, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %24 = icmp eq i32 %13, 0
  %25 = zext i1 %24 to i8
  store i8 %25, i8* %23, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rsi__r8_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_shll__0x2___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 30
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 29
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x4___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_shrl__cl___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %13 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = lshr i32 %10, 31
  %12 = trunc i32 %11 to i8
  br label %20

; <label>:13:                                     ; preds = %block_400488
  %14 = and i8 %5, 31
  %15 = zext i8 %14 to i64
  %16 = add nuw nsw i64 %15, 4294967295
  %17 = and i64 %4, 4294967295
  %18 = and i64 %16, 4294967295
  %19 = lshr i64 %17, %18
  br label %20

; <label>:20:                                     ; preds = %13, %9
  %21 = phi i64 [ %19, %13 ], [ %4, %9 ]
  %22 = phi i8 [ 0, %13 ], [ %12, %9 ]
  %23 = trunc i64 %21 to i8
  %24 = and i8 %23, 1
  %25 = lshr i64 %21, 1
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 2147483647
  %28 = zext i32 %27 to i64
  store i64 %28, i64* %RDI, align 8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %31 = and i32 %26, 255
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31)
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  store i8 %35, i8* %30, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %38 = icmp eq i32 %27, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %37, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %22, i8* %41, align 1
  br label %_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHRI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %20, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xf___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 15
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shll__0x10___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 16
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 16
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = icmp eq i32 %6, 0
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %18 = lshr i32 %.tr, 15
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  store i8 %20, i8* %17, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = or i64 %6, %4
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x3c__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_jne_.L_4068d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6391152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -512
  %10 = icmp ult i32 %8, 512
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
define %struct.Memory* @routine_jne_.L_4068cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4068d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 24
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x11__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -17
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = xor i64 %6, %4
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dil__MINUS0x11__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -17
  %6 = load i8, i8* %DIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1092
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
define %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 1092
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xfa50__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 64080
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
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_406933(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -17
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
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
define %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 64
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
define %struct.Memory* @routine_je_.L_406954(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
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
define %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -17
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movzwl___rsi__rdx_2____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xc60__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 3168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = lshr i32 %6, 31
  %8 = trunc i32 %7 to i8
  %9 = trunc i64 %3 to i8
  %10 = and i8 %9, 1
  %11 = lshr i64 %3, 1
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 2147483647
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %16, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %24 = icmp eq i32 %13, 0
  %25 = zext i1 %24 to i8
  store i8 %25, i8* %23, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rdx__rsi_1____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rdx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x2___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = shl i32 %5, 2
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %11 = lshr i32 %5, 30
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  store i8 %13, i8* %10, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %8, 252
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %8, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %5, 29
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x4___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = and i32 %5, 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %12 = trunc i32 %11 to i8
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %.lobit = lshr exact i32 %8, 2
  %15 = trunc i32 %.lobit to i8
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_jne_.L_406a28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_406a23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_406a28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_406a8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_406aac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_406b80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_406b7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_406b80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_406be3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_406c04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_406ccd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_406cc8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_406ccd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -5
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x10__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_addq__0x448___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1096
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -1097
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
define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x40__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xc58__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 3160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movzwl___rdx__rsi_2____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movzbl___rdx__rsi_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_406de8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_406de3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_406de8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl_0x40__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406e2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406e33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_406e4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_406e60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_406f13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_406f0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_406f3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_406f63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x444__rsi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 1092
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
define %struct.Memory* @routine_movl__eax__0x444__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 1092
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xfa50__rsi____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 64080
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_jne_.L_407034(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_407055(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xfa50__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 64080
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
define %struct.Memory* @routine_jne_.L_40710e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40712f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4071e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_407209(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_MINUS0x1__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
