; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6f9698_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G__0x6cbd50_type = type <{ [8 x i8] }>
%G__0x6cbda0_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6f9698 = local_unnamed_addr global %G_0x6f9698_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G__0x6cbd50 = global %G__0x6cbd50_type zeroinitializer
@G__0x6cbda0 = global %G__0x6cbda0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_46e520.BlockMotionSearch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @PartitionMotionSearch(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RBX.i560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %11 = load i64, i64* %RBX.i560, align 8
  %12 = add i64 %10, 4
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %7, -168
  store i64 %16, i64* %6, align 8
  %17 = icmp ult i64 %13, 152
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 %13, 16
  %28 = xor i64 %27, %16
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i64 %16, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %16, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %13, 63
  %40 = xor i64 %36, %39
  %41 = add nuw nsw i64 %40, %39
  %42 = icmp eq i64 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i801 = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -12
  %48 = load i32, i32* %EDI.i801, align 4
  %49 = add i64 %15, 10
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i798 = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i32, i32* %ESI.i798, align 4
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 5
  store i64 %61, i64* %3, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %63 = load i64, i64* %62, align 1
  %64 = inttoptr i64 %59 to i64*
  store i64 %63, i64* %64, align 8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i794 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %67, i64* %RAX.i794, align 8
  %68 = add i64 %67, 24
  %69 = add i64 %66, 12
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %68 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 1
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL.i790 = bitcast %union.anon* %74 to i8*
  store i8 %73, i8* %CL.i790, align 1
  store i8 0, i8* %19, align 1
  %75 = zext i1 %72 to i32
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = xor i8 %77, 1
  store i8 %78, i8* %26, align 1
  %79 = xor i8 %73, 1
  store i8 %79, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  store i8 0, i8* %32, align 1
  %RSI.i786 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %80 = zext i1 %72 to i64
  store i64 %80, i64* %RSI.i786, align 8
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -80
  %83 = zext i1 %72 to i32
  %84 = add i64 %66, 24
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %82 to i32*
  store i32 %83, i32* %85, align 4
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -12
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %87 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %91, -4
  %93 = icmp ult i32 %91, 4
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %19, align 1
  %95 = and i32 %92, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95)
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %26, align 1
  %100 = xor i32 %92, %91
  %101 = lshr i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %32, align 1
  %104 = icmp eq i32 %92, 0
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %35, align 1
  %106 = lshr i32 %92, 31
  %107 = trunc i32 %106 to i8
  store i8 %107, i8* %38, align 1
  %108 = lshr i32 %91, 31
  %109 = xor i32 %106, %108
  %110 = add nuw nsw i32 %109, %108
  %111 = icmp eq i32 %110, 2
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %44, align 1
  %113 = icmp ne i8 %107, 0
  %114 = xor i1 %113, %111
  %.v55 = select i1 %114, i64 10, i64 21
  %115 = add i64 %88, %.v55
  store i64 %115, i64* %3, align 8
  br i1 %114, label %block_472819, label %block_.L_472824

block_472819:                                     ; preds = %entry
  %116 = add i64 %115, 3
  store i64 %116, i64* %3, align 8
  %117 = load i32, i32* %90, align 4
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX.i794, align 8
  %119 = add i64 %86, -116
  %120 = add i64 %115, 6
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  store i32 %117, i32* %121, align 4
  %122 = load i64, i64* %3, align 8
  %123 = add i64 %122, 18
  br label %block_.L_472831

block_.L_472824:                                  ; preds = %entry
  store i64 4, i64* %RAX.i794, align 8
  %124 = add i64 %86, -116
  %125 = add i64 %115, 8
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i32*
  store i32 4, i32* %126, align 4
  %127 = load i64, i64* %3, align 8
  %128 = add i64 %127, 5
  store i64 %128, i64* %3, align 8
  br label %block_.L_472831

block_.L_472831:                                  ; preds = %block_.L_472824, %block_472819
  %storemerge = phi i64 [ %123, %block_472819 ], [ %128, %block_.L_472824 ]
  %EAX.i761.pre-phi = bitcast %union.anon* %65 to i32*
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -116
  %131 = add i64 %storemerge, 3
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = zext i32 %133 to i64
  store i64 %134, i64* %RAX.i794, align 8
  %135 = add i64 %129, -84
  %136 = add i64 %storemerge, 6
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  store i32 %133, i32* %137, align 4
  %RCX.i759 = getelementptr inbounds %union.anon, %union.anon* %74, i64 0, i32 0
  %138 = load i64, i64* %3, align 8
  %139 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %139, i64* %RCX.i759, align 8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i756 = getelementptr inbounds %union.anon, %union.anon* %140, i64 0, i32 0
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -84
  %143 = add i64 %138, 12
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %RDX.i756, align 8
  %147 = shl nsw i64 %146, 3
  %148 = add i64 %139, 144
  %149 = add i64 %148, %147
  %150 = add i64 %138, 19
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RAX.i794, align 8
  %154 = add i64 %141, -88
  %155 = add i64 %138, 22
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i32*
  store i32 %152, i32* %156, align 4
  %157 = load i64, i64* %3, align 8
  %158 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %158, i64* %RCX.i759, align 8
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -84
  %161 = add i64 %157, 12
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  store i64 %164, i64* %RDX.i756, align 8
  %165 = shl nsw i64 %164, 3
  %166 = add i64 %158, 148
  %167 = add i64 %166, %165
  %168 = add i64 %157, 19
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RAX.i794, align 8
  %172 = add i64 %159, -92
  %173 = add i64 %157, 22
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i32*
  store i32 %170, i32* %174, align 4
  %175 = load i64, i64* %3, align 8
  %176 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %176, i64* %RCX.i759, align 8
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -12
  %179 = add i64 %175, 12
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  store i64 %182, i64* %RDX.i756, align 8
  %183 = shl nsw i64 %182, 3
  %184 = add i64 %176, 144
  %185 = add i64 %184, %183
  %186 = add i64 %175, 19
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RAX.i794, align 8
  %190 = add i64 %177, -96
  %191 = add i64 %175, 22
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  store i32 %188, i32* %192, align 4
  %193 = load i64, i64* %3, align 8
  %194 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %194, i64* %RCX.i759, align 8
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -12
  %197 = add i64 %193, 12
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  store i64 %200, i64* %RDX.i756, align 8
  %201 = shl nsw i64 %200, 3
  %202 = add i64 %194, 148
  %203 = add i64 %202, %201
  %204 = add i64 %193, 19
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RAX.i794, align 8
  %208 = add i64 %195, -100
  %209 = add i64 %193, 22
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i32*
  store i32 %206, i32* %210, align 4
  %211 = load i64, i64* %3, align 8
  %212 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %212, i64* %RCX.i759, align 8
  %213 = add i64 %212, 14168
  %214 = add i64 %211, 15
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i64*
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %RCX.i759, align 8
  store i64 %212, i64* %RDX.i756, align 8
  %217 = add i64 %212, 12
  %218 = add i64 %211, 27
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = mul nsw i64 %221, 632
  store i64 %222, i64* %RDX.i756, align 8
  %223 = lshr i64 %222, 63
  %224 = add i64 %222, %216
  store i64 %224, i64* %RCX.i759, align 8
  %225 = icmp ult i64 %224, %216
  %226 = icmp ult i64 %224, %222
  %227 = or i1 %225, %226
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %19, align 1
  %229 = trunc i64 %224 to i32
  %230 = and i32 %229, 255
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230)
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %26, align 1
  %235 = xor i64 %222, %216
  %236 = xor i64 %235, %224
  %237 = lshr i64 %236, 4
  %238 = trunc i64 %237 to i8
  %239 = and i8 %238, 1
  store i8 %239, i8* %32, align 1
  %240 = icmp eq i64 %224, 0
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %35, align 1
  %242 = lshr i64 %224, 63
  %243 = trunc i64 %242 to i8
  store i8 %243, i8* %38, align 1
  %244 = lshr i64 %216, 63
  %245 = xor i64 %242, %244
  %246 = xor i64 %242, %223
  %247 = add nuw nsw i64 %245, %246
  %248 = icmp eq i64 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %44, align 1
  %250 = add i64 %224, 532
  %251 = add i64 %211, 44
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  store i8 0, i8* %19, align 1
  %254 = and i32 %253, 255
  %255 = tail call i32 @llvm.ctpop.i32(i32 %254)
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  store i8 %258, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %259 = icmp eq i32 %253, 0
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %35, align 1
  %261 = lshr i32 %253, 31
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v56 = select i1 %259, i64 110, i64 50
  %263 = add i64 %211, %.v56
  store i64 %263, i64* %3, align 8
  br i1 %259, label %block_.L_4728fd, label %block_4728c1

block_4728c1:                                     ; preds = %block_.L_472831
  store i64 2, i64* %RAX.i794, align 8
  %264 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %264, i64* %RCX.i759, align 8
  %265 = add i64 %264, 12
  %266 = add i64 %263, 16
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %RDX.i756, align 8
  %270 = load i64, i64* %RBP.i, align 8
  %271 = add i64 %270, -120
  %272 = add i64 %263, 19
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  store i32 2, i32* %273, align 4
  %EDX.i684 = bitcast %union.anon* %140 to i32*
  %274 = load i32, i32* %EDX.i684, align 4
  %275 = zext i32 %274 to i64
  %276 = load i64, i64* %3, align 8
  store i64 %275, i64* %RAX.i794, align 8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %278 = sext i32 %274 to i64
  %279 = lshr i64 %278, 32
  store i64 %279, i64* %277, align 8
  %280 = load i64, i64* %RBP.i, align 8
  %281 = add i64 %280, -120
  %282 = add i64 %276, 6
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RSI.i786, align 8
  %286 = add i64 %276, 8
  store i64 %286, i64* %3, align 8
  %287 = sext i32 %284 to i64
  %288 = shl nuw i64 %279, 32
  %289 = or i64 %288, %275
  %290 = sdiv i64 %289, %287
  %291 = shl i64 %290, 32
  %292 = ashr exact i64 %291, 32
  %293 = icmp eq i64 %290, %292
  br i1 %293, label %296, label %294

; <label>:294:                                    ; preds = %block_4728c1
  %295 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %286, %struct.Memory* %2)
  %.pre = load i32, i32* %EDX.i684, align 4
  %.pre32 = load i64, i64* %3, align 8
  %.pre33 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit676

; <label>:296:                                    ; preds = %block_4728c1
  %297 = srem i64 %289, %287
  %298 = and i64 %290, 4294967295
  store i64 %298, i64* %RAX.i794, align 8
  %299 = and i64 %297, 4294967295
  store i64 %299, i64* %RDX.i756, align 8
  store i8 0, i8* %19, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %300 = trunc i64 %297 to i32
  br label %routine_idivl__esi.exit676

routine_idivl__esi.exit676:                       ; preds = %296, %294
  %301 = phi i64 [ %.pre33, %294 ], [ %280, %296 ]
  %302 = phi i64 [ %.pre32, %294 ], [ %286, %296 ]
  %303 = phi i32 [ %.pre, %294 ], [ %300, %296 ]
  %304 = phi %struct.Memory* [ %295, %294 ], [ %2, %296 ]
  store i8 0, i8* %19, align 1
  %305 = and i32 %303, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %310 = icmp eq i32 %303, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %35, align 1
  %312 = lshr i32 %303, 31
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %.v = select i1 %310, i64 21, i64 9
  %314 = add i64 %302, %.v
  %315 = add i64 %301, -112
  %316 = add i64 %314, 7
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i32*
  br i1 %310, label %block_.L_4728f1, label %block_4728e5

block_4728e5:                                     ; preds = %routine_idivl__esi.exit676
  store i32 4, i32* %317, align 4
  %318 = load i64, i64* %3, align 8
  %319 = add i64 %318, 12
  store i64 %319, i64* %3, align 8
  br label %block_.L_4728f8

block_.L_4728f1:                                  ; preds = %routine_idivl__esi.exit676
  store i32 2, i32* %317, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_4728f8

block_.L_4728f8:                                  ; preds = %block_.L_4728f1, %block_4728e5
  %320 = phi i64 [ %.pre34, %block_.L_4728f1 ], [ %319, %block_4728e5 ]
  %321 = add i64 %320, 12
  store i64 %321, i64* %3, align 8
  br label %block_.L_472904

block_.L_4728fd:                                  ; preds = %block_.L_472831
  %322 = load i64, i64* %RBP.i, align 8
  %323 = add i64 %322, -112
  %324 = add i64 %263, 7
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i32*
  store i32 0, i32* %325, align 4
  %.pre35 = load i64, i64* %3, align 8
  %.pre50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  br label %block_.L_472904

block_.L_472904:                                  ; preds = %block_.L_4728fd, %block_.L_4728f8
  %.pre-phi = phi i64* [ %.pre50, %block_.L_4728fd ], [ %277, %block_.L_4728f8 ]
  %326 = phi i64 [ %.pre35, %block_.L_4728fd ], [ %321, %block_.L_4728f8 ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_4728fd ], [ %304, %block_.L_4728f8 ]
  store i64 1, i64* %RAX.i794, align 8
  store i64 2, i64* %RCX.i759, align 8
  %327 = load i64, i64* %RBP.i, align 8
  %328 = add i64 %327, -80
  %329 = add i64 %326, 14
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i32*
  %331 = load i32, i32* %330, align 4
  store i8 0, i8* %19, align 1
  %332 = and i32 %331, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %337 = icmp eq i32 %331, 0
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %35, align 1
  %339 = lshr i32 %331, 31
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %ECX.i655 = bitcast %union.anon* %74 to i32*
  %341 = select i1 %337, i64 1, i64 2
  store i64 %341, i64* %RAX.i794, align 8
  %342 = add i64 %327, -108
  %343 = trunc i64 %341 to i32
  %344 = add i64 %326, 20
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %342 to i32*
  store i32 %343, i32* %345, align 4
  %346 = load i64, i64* %RBP.i, align 8
  %347 = add i64 %346, -104
  %348 = load i64, i64* %3, align 8
  %349 = add i64 %348, 7
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %347 to i32*
  store i32 0, i32* %350, align 4
  %DX.i310 = bitcast %union.anon* %140 to i16*
  %RDI.i299 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %354 = bitcast i64* %353 to double*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i289 = bitcast %union.anon* %355 to i32*
  %356 = getelementptr inbounds %union.anon, %union.anon* %355, i64 0, i32 0
  %R11.i272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %AX.i20 = bitcast %union.anon* %65 to i16*
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_47291f

block_.L_47291f:                                  ; preds = %block_.L_472d59, %block_.L_472904
  %357 = phi i64 [ %.pre36, %block_.L_472904 ], [ %2121, %block_.L_472d59 ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_472904 ], [ %MEMORY.4, %block_.L_472d59 ]
  %358 = load i64, i64* %RBP.i, align 8
  %359 = add i64 %358, -104
  %360 = add i64 %357, 3
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i32*
  %362 = load i32, i32* %361, align 4
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RAX.i794, align 8
  %364 = add i64 %358, -108
  %365 = add i64 %357, 6
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %364 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = sub i32 %362, %367
  %369 = icmp ult i32 %362, %367
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %19, align 1
  %371 = and i32 %368, 255
  %372 = tail call i32 @llvm.ctpop.i32(i32 %371)
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  store i8 %375, i8* %26, align 1
  %376 = xor i32 %367, %362
  %377 = xor i32 %376, %368
  %378 = lshr i32 %377, 4
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  store i8 %380, i8* %32, align 1
  %381 = icmp eq i32 %368, 0
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %35, align 1
  %383 = lshr i32 %368, 31
  %384 = trunc i32 %383 to i8
  store i8 %384, i8* %38, align 1
  %385 = lshr i32 %362, 31
  %386 = lshr i32 %367, 31
  %387 = xor i32 %386, %385
  %388 = xor i32 %383, %385
  %389 = add nuw nsw i32 %388, %387
  %390 = icmp eq i32 %389, 2
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %44, align 1
  %392 = icmp ne i8 %384, 0
  %393 = xor i1 %392, %390
  %.v57 = select i1 %393, i64 12, i64 1101
  %394 = add i64 %357, %.v57
  store i64 %394, i64* %3, align 8
  br i1 %393, label %block_47292b, label %block_.L_472d6c

block_47292b:                                     ; preds = %block_.L_47291f
  %395 = add i64 %358, -42
  %396 = add i64 %394, 6
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i16*
  store i16 0, i16* %397, align 2
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_472931

block_.L_472931:                                  ; preds = %block_.L_472d43, %block_47292b
  %398 = phi i64 [ %.pre37, %block_47292b ], [ %2090, %block_.L_472d43 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_47292b ], [ %MEMORY.9, %block_.L_472d43 ]
  %399 = load i64, i64* %RBP.i, align 8
  %400 = add i64 %399, -42
  %401 = add i64 %398, 4
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i16*
  %403 = load i16, i16* %402, align 2
  %404 = sext i16 %403 to i64
  %405 = and i64 %404, 4294967295
  store i64 %405, i64* %RAX.i794, align 8
  %406 = add i64 %399, -104
  %407 = add i64 %398, 7
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RCX.i759, align 8
  %411 = add i64 %399, -112
  %412 = add i64 %398, 10
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = add i32 %414, %409
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %RCX.i759, align 8
  %417 = icmp ult i32 %415, %409
  %418 = icmp ult i32 %415, %414
  %419 = or i1 %417, %418
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %19, align 1
  %421 = and i32 %415, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %26, align 1
  %426 = xor i32 %414, %409
  %427 = xor i32 %426, %415
  %428 = lshr i32 %427, 4
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  store i8 %430, i8* %32, align 1
  %431 = icmp eq i32 %415, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %35, align 1
  %433 = lshr i32 %415, 31
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* %38, align 1
  %435 = lshr i32 %409, 31
  %436 = lshr i32 %414, 31
  %437 = xor i32 %433, %435
  %438 = xor i32 %433, %436
  %439 = add nuw nsw i32 %437, %438
  %440 = icmp eq i32 %439, 2
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %44, align 1
  %442 = sext i32 %415 to i64
  store i64 %442, i64* %RDX.i756, align 8
  %443 = sext i16 %403 to i32
  %444 = shl nsw i64 %442, 2
  %445 = add nsw i64 %444, 7489456
  %446 = add i64 %398, 20
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = sub i32 %443, %448
  %450 = icmp ult i32 %443, %448
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %19, align 1
  %452 = and i32 %449, 255
  %453 = tail call i32 @llvm.ctpop.i32(i32 %452)
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  %456 = xor i8 %455, 1
  store i8 %456, i8* %26, align 1
  %457 = xor i32 %448, %443
  %458 = xor i32 %457, %449
  %459 = lshr i32 %458, 4
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  store i8 %461, i8* %32, align 1
  %462 = icmp eq i32 %449, 0
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %35, align 1
  %464 = lshr i32 %449, 31
  %465 = trunc i32 %464 to i8
  store i8 %465, i8* %38, align 1
  %466 = lshr i32 %443, 31
  %467 = lshr i32 %448, 31
  %468 = xor i32 %467, %466
  %469 = xor i32 %464, %466
  %470 = add nuw nsw i32 %469, %468
  %471 = icmp eq i32 %470, 2
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %44, align 1
  %473 = icmp ne i8 %465, 0
  %474 = xor i1 %473, %471
  %.v58 = select i1 %474, i64 26, i64 1064
  %475 = add i64 %398, %.v58
  store i64 %475, i64* %3, align 8
  br i1 %474, label %block_47294b, label %block_.L_472d59

block_47294b:                                     ; preds = %block_.L_472931
  %476 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %476, i64* %RAX.i794, align 8
  %477 = add i64 %476, 2436
  %478 = add i64 %475, 15
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  %480 = load i32, i32* %479, align 4
  %481 = add i32 %480, -2
  %482 = icmp ult i32 %480, 2
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %19, align 1
  %484 = and i32 %481, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %26, align 1
  %489 = xor i32 %481, %480
  %490 = lshr i32 %489, 4
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %32, align 1
  %493 = icmp eq i32 %481, 0
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %35, align 1
  %495 = lshr i32 %481, 31
  %496 = trunc i32 %495 to i8
  store i8 %496, i8* %38, align 1
  %497 = lshr i32 %480, 31
  %498 = xor i32 %495, %497
  %499 = add nuw nsw i32 %498, %497
  %500 = icmp eq i32 %499, 2
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %44, align 1
  %.v59 = select i1 %493, i64 21, i64 40
  %502 = add i64 %475, %.v59
  %503 = add i64 %502, 8
  store i64 %503, i64* %3, align 8
  store i64 %476, i64* %RAX.i794, align 8
  br i1 %493, label %block_472960, label %block_.L_472973

block_472960:                                     ; preds = %block_47294b
  %504 = add i64 %476, 32
  %505 = add i64 %502, 11
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = zext i32 %507 to i64
  store i64 %508, i64* %RCX.i759, align 8
  %509 = load i64, i64* %RBP.i, align 8
  %510 = add i64 %509, -60
  %511 = add i64 %502, 14
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %510 to i32*
  store i32 %507, i32* %512, align 4
  %513 = load i64, i64* %3, align 8
  %514 = add i64 %513, 259
  br label %block_.L_472a71

block_.L_472973:                                  ; preds = %block_47294b
  %515 = add i64 %502, 15
  store i64 %515, i64* %3, align 8
  %516 = load i32, i32* %479, align 4
  %517 = add i32 %516, -1
  %518 = icmp eq i32 %516, 0
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %19, align 1
  %520 = and i32 %517, 255
  %521 = tail call i32 @llvm.ctpop.i32(i32 %520)
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  store i8 %524, i8* %26, align 1
  %525 = xor i32 %517, %516
  %526 = lshr i32 %525, 4
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  store i8 %528, i8* %32, align 1
  %529 = icmp eq i32 %517, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %35, align 1
  %531 = lshr i32 %517, 31
  %532 = trunc i32 %531 to i8
  store i8 %532, i8* %38, align 1
  %533 = lshr i32 %516, 31
  %534 = xor i32 %531, %533
  %535 = add nuw nsw i32 %534, %533
  %536 = icmp eq i32 %535, 2
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %44, align 1
  %.v60 = select i1 %529, i64 21, i64 107
  %538 = add i64 %502, %.v60
  store i64 %476, i64* %RAX.i794, align 8
  %539 = add i64 %476, 32
  %540 = add i64 %538, 11
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RAX.i794, align 8
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -42
  %546 = add i64 %538, 15
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i16*
  %548 = load i16, i16* %547, align 2
  %549 = sext i16 %548 to i64
  %550 = and i64 %549, 4294967295
  store i64 %550, i64* %RCX.i759, align 8
  %551 = sext i16 %548 to i32
  %552 = add i64 %538, 18
  store i64 %552, i64* %3, align 8
  %553 = add nsw i32 %551, -1
  %554 = icmp eq i16 %548, 0
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %19, align 1
  %556 = and i32 %553, 255
  %557 = tail call i32 @llvm.ctpop.i32(i32 %556)
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  store i8 %560, i8* %26, align 1
  %561 = xor i32 %553, %551
  %562 = lshr i32 %561, 4
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  store i8 %564, i8* %32, align 1
  %565 = icmp eq i32 %553, 0
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %35, align 1
  %567 = lshr i32 %553, 31
  %568 = trunc i32 %567 to i8
  store i8 %568, i8* %38, align 1
  %569 = lshr i32 %551, 31
  %570 = xor i32 %567, %569
  %571 = add nuw nsw i32 %570, %569
  %572 = icmp eq i32 %571, 2
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %44, align 1
  br i1 %529, label %block_472988, label %block_.L_4729de

block_472988:                                     ; preds = %block_.L_472973
  %574 = add i64 %544, -124
  %575 = add i64 %538, 21
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i32*
  store i32 %542, i32* %576, align 4
  %577 = load i64, i64* %3, align 8
  %578 = load i8, i8* %38, align 1
  %579 = icmp ne i8 %578, 0
  %580 = load i8, i8* %44, align 1
  %581 = icmp ne i8 %580, 0
  %582 = xor i1 %579, %581
  %.v72 = select i1 %582, i64 6, i64 18
  %583 = add i64 %577, %.v72
  store i64 %583, i64* %3, align 8
  br i1 %582, label %block_4729a3, label %block_.L_4729af

block_4729a3:                                     ; preds = %block_472988
  %584 = load i64, i64* %RBP.i, align 8
  %585 = add i64 %584, -42
  %586 = add i64 %583, 4
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %585 to i16*
  %588 = load i16, i16* %587, align 2
  %589 = sext i16 %588 to i64
  %590 = and i64 %589, 4294967295
  store i64 %590, i64* %RAX.i794, align 8
  %591 = add i64 %584, -128
  %592 = sext i16 %588 to i32
  %593 = add i64 %583, 7
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %591 to i32*
  store i32 %592, i32* %594, align 4
  %595 = load i64, i64* %3, align 8
  %596 = add i64 %595, 18
  br label %block_.L_4729bc

block_.L_4729af:                                  ; preds = %block_472988
  store i64 1, i64* %RAX.i794, align 8
  %597 = load i64, i64* %RBP.i, align 8
  %598 = add i64 %597, -128
  %599 = add i64 %583, 8
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  store i32 1, i32* %600, align 4
  %601 = load i64, i64* %3, align 8
  %602 = add i64 %601, 5
  store i64 %602, i64* %3, align 8
  br label %block_.L_4729bc

block_.L_4729bc:                                  ; preds = %block_.L_4729af, %block_4729a3
  %storemerge20 = phi i64 [ %596, %block_4729a3 ], [ %602, %block_.L_4729af ]
  %603 = load i64, i64* %RBP.i, align 8
  %604 = add i64 %603, -128
  %605 = add i64 %storemerge20, 3
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i32*
  %607 = load i32, i32* %606, align 4
  %608 = add i32 %607, 1
  %609 = zext i32 %608 to i64
  store i64 %609, i64* %RAX.i794, align 8
  %610 = icmp eq i32 %607, -1
  %611 = icmp eq i32 %608, 0
  %612 = or i1 %610, %611
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %19, align 1
  %614 = and i32 %608, 255
  %615 = tail call i32 @llvm.ctpop.i32(i32 %614)
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = xor i8 %617, 1
  store i8 %618, i8* %26, align 1
  %619 = xor i32 %608, %607
  %620 = lshr i32 %619, 4
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  store i8 %622, i8* %32, align 1
  %623 = zext i1 %611 to i8
  store i8 %623, i8* %35, align 1
  %624 = lshr i32 %608, 31
  %625 = trunc i32 %624 to i8
  store i8 %625, i8* %38, align 1
  %626 = lshr i32 %607, 31
  %627 = xor i32 %624, %626
  %628 = add nuw nsw i32 %627, %624
  %629 = icmp eq i32 %628, 2
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %44, align 1
  %631 = add i64 %603, -124
  %632 = add i64 %storemerge20, 9
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i32*
  %634 = load i32, i32* %633, align 4
  %635 = zext i32 %634 to i64
  store i64 %635, i64* %RCX.i759, align 8
  %636 = add i64 %603, -132
  %637 = add i64 %storemerge20, 15
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i32*
  store i32 %608, i32* %638, align 4
  %639 = load i32, i32* %ECX.i655, align 4
  %640 = zext i32 %639 to i64
  %641 = load i64, i64* %3, align 8
  store i64 %640, i64* %RAX.i794, align 8
  %642 = sext i32 %639 to i64
  %643 = lshr i64 %642, 32
  store i64 %643, i64* %.pre-phi, align 8
  %644 = load i64, i64* %RBP.i, align 8
  %645 = add i64 %644, -132
  %646 = add i64 %641, 9
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = zext i32 %648 to i64
  store i64 %649, i64* %RSI.i786, align 8
  %650 = add i64 %641, 11
  store i64 %650, i64* %3, align 8
  %651 = sext i32 %648 to i64
  %652 = shl nuw i64 %643, 32
  %653 = or i64 %652, %640
  %654 = sdiv i64 %653, %651
  %655 = shl i64 %654, 32
  %656 = ashr exact i64 %655, 32
  %657 = icmp eq i64 %654, %656
  br i1 %657, label %660, label %658

; <label>:658:                                    ; preds = %block_.L_4729bc
  %659 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %650, %struct.Memory* %MEMORY.4)
  %.pre38 = load i64, i64* %RBP.i, align 8
  %.pre39 = load i32, i32* %EAX.i761.pre-phi, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:660:                                    ; preds = %block_.L_4729bc
  %661 = srem i64 %653, %651
  %662 = and i64 %654, 4294967295
  store i64 %662, i64* %RAX.i794, align 8
  %663 = and i64 %661, 4294967295
  store i64 %663, i64* %RDX.i756, align 8
  store i8 0, i8* %19, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %664 = trunc i64 %654 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %660, %658
  %665 = phi i64 [ %.pre40, %658 ], [ %650, %660 ]
  %666 = phi i32 [ %.pre39, %658 ], [ %664, %660 ]
  %667 = phi i64 [ %.pre38, %658 ], [ %644, %660 ]
  %668 = phi %struct.Memory* [ %659, %658 ], [ %MEMORY.4, %660 ]
  %669 = add i64 %667, -60
  %670 = add i64 %665, 3
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i32*
  store i32 %666, i32* %671, align 4
  %672 = load i64, i64* %3, align 8
  %673 = add i64 %672, 147
  store i64 %673, i64* %3, align 8
  br label %block_.L_472a6c

block_.L_4729de:                                  ; preds = %block_.L_472973
  %674 = add i64 %544, -136
  %675 = add i64 %538, 24
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i32*
  store i32 %542, i32* %676, align 4
  %677 = load i64, i64* %3, align 8
  %678 = load i8, i8* %38, align 1
  %679 = icmp ne i8 %678, 0
  %680 = load i8, i8* %44, align 1
  %681 = icmp ne i8 %680, 0
  %682 = xor i1 %679, %681
  %.v70 = select i1 %682, i64 6, i64 21
  %683 = add i64 %677, %.v70
  store i64 %683, i64* %3, align 8
  br i1 %682, label %block_4729fc, label %block_.L_472a0b

block_4729fc:                                     ; preds = %block_.L_4729de
  %684 = load i64, i64* %RBP.i, align 8
  %685 = add i64 %684, -42
  %686 = add i64 %683, 4
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i16*
  %688 = load i16, i16* %687, align 2
  %689 = sext i16 %688 to i64
  %690 = and i64 %689, 4294967295
  store i64 %690, i64* %RAX.i794, align 8
  %691 = add i64 %684, -140
  %692 = sext i16 %688 to i32
  %693 = add i64 %683, 10
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %691 to i32*
  store i32 %692, i32* %694, align 4
  %695 = load i64, i64* %3, align 8
  %696 = add i64 %695, 21
  br label %block_.L_472a1b

block_.L_472a0b:                                  ; preds = %block_.L_4729de
  store i64 1, i64* %RAX.i794, align 8
  %697 = load i64, i64* %RBP.i, align 8
  %698 = add i64 %697, -140
  %699 = add i64 %683, 11
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  store i32 1, i32* %700, align 4
  %701 = load i64, i64* %3, align 8
  %702 = add i64 %701, 5
  store i64 %702, i64* %3, align 8
  br label %block_.L_472a1b

block_.L_472a1b:                                  ; preds = %block_.L_472a0b, %block_4729fc
  %storemerge21 = phi i64 [ %696, %block_4729fc ], [ %702, %block_.L_472a0b ]
  %703 = load i64, i64* %RBP.i, align 8
  %704 = add i64 %703, -140
  %705 = add i64 %storemerge21, 6
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  store i64 2, i64* %RCX.i759, align 8
  %708 = add i32 %707, 1
  %709 = zext i32 %708 to i64
  store i64 %709, i64* %RAX.i794, align 8
  %710 = icmp eq i32 %707, -1
  %711 = icmp eq i32 %708, 0
  %712 = or i1 %710, %711
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %19, align 1
  %714 = and i32 %708, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %26, align 1
  %719 = xor i32 %708, %707
  %720 = lshr i32 %719, 4
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %32, align 1
  %723 = zext i1 %711 to i8
  store i8 %723, i8* %35, align 1
  %724 = lshr i32 %708, 31
  %725 = trunc i32 %724 to i8
  store i8 %725, i8* %38, align 1
  %726 = lshr i32 %707, 31
  %727 = xor i32 %724, %726
  %728 = add nuw nsw i32 %727, %724
  %729 = icmp eq i32 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %44, align 1
  %731 = add i64 %703, -12
  %732 = add i64 %storemerge21, 17
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i32*
  %734 = load i32, i32* %733, align 4
  %735 = sub i32 2, %734
  %736 = icmp ugt i32 %734, 2
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %19, align 1
  %738 = and i32 %735, 255
  %739 = tail call i32 @llvm.ctpop.i32(i32 %738)
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  store i8 %742, i8* %26, align 1
  %743 = xor i32 %734, %735
  %744 = lshr i32 %743, 4
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  store i8 %746, i8* %32, align 1
  %747 = icmp eq i32 %735, 0
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %35, align 1
  %749 = lshr i32 %735, 31
  %750 = trunc i32 %749 to i8
  store i8 %750, i8* %38, align 1
  %751 = lshr i32 %734, 31
  %752 = add nuw nsw i32 %749, %751
  %753 = icmp eq i32 %752, 2
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %44, align 1
  %755 = add i64 %703, -144
  %756 = add i64 %storemerge21, 23
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  store i32 %708, i32* %757, align 4
  %758 = load i64, i64* %3, align 8
  %759 = load i8, i8* %38, align 1
  %760 = icmp ne i8 %759, 0
  %761 = load i8, i8* %44, align 1
  %762 = icmp ne i8 %761, 0
  %763 = xor i1 %760, %762
  %.v71 = select i1 %763, i64 6, i64 22
  %764 = add i64 %758, %.v71
  store i64 %764, i64* %3, align 8
  br i1 %763, label %block_472a38, label %block_.L_472a48

block_472a38:                                     ; preds = %block_.L_472a1b
  store i64 2, i64* %RAX.i794, align 8
  %765 = load i64, i64* %RBP.i, align 8
  %766 = add i64 %765, -148
  %767 = add i64 %764, 11
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %766 to i32*
  store i32 2, i32* %768, align 4
  %769 = load i64, i64* %3, align 8
  %770 = add i64 %769, 14
  store i64 %770, i64* %3, align 8
  br label %block_.L_472a51

block_.L_472a48:                                  ; preds = %block_.L_472a1b
  %771 = load i64, i64* %RBP.i, align 8
  %772 = add i64 %771, -12
  %773 = add i64 %764, 3
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RAX.i794, align 8
  %777 = add i64 %771, -148
  %778 = add i64 %764, 9
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to i32*
  store i32 %775, i32* %779, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_472a51

block_.L_472a51:                                  ; preds = %block_.L_472a48, %block_472a38
  %780 = phi i64 [ %.pre41, %block_.L_472a48 ], [ %770, %block_472a38 ]
  %781 = load i64, i64* %RBP.i, align 8
  %782 = add i64 %781, -148
  %783 = add i64 %780, 6
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  %785 = load i32, i32* %784, align 4
  %786 = zext i32 %785 to i64
  store i64 %786, i64* %RAX.i794, align 8
  %787 = add i64 %781, -144
  %788 = add i64 %780, 12
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = sext i32 %790 to i64
  %792 = sext i32 %785 to i64
  %793 = mul nsw i64 %792, %791
  %794 = trunc i64 %793 to i32
  %795 = and i64 %793, 4294967295
  store i64 %795, i64* %RCX.i759, align 8
  %796 = shl i64 %793, 32
  %797 = ashr exact i64 %796, 32
  %798 = icmp ne i64 %797, %793
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %19, align 1
  %800 = and i32 %794, 255
  %801 = tail call i32 @llvm.ctpop.i32(i32 %800)
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  %804 = xor i8 %803, 1
  store i8 %804, i8* %26, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  %805 = lshr i32 %794, 31
  %806 = trunc i32 %805 to i8
  store i8 %806, i8* %38, align 1
  store i8 %799, i8* %44, align 1
  %807 = add i64 %781, -136
  %808 = add i64 %780, 21
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %RAX.i794, align 8
  %812 = sext i32 %810 to i64
  %813 = lshr i64 %812, 32
  store i64 %813, i64* %.pre-phi, align 8
  %814 = add i64 %780, 24
  store i64 %814, i64* %3, align 8
  %sext = shl i64 %793, 32
  %815 = ashr exact i64 %sext, 32
  %816 = shl nuw i64 %813, 32
  %817 = or i64 %816, %811
  %818 = sdiv i64 %817, %815
  %819 = shl i64 %818, 32
  %820 = ashr exact i64 %819, 32
  %821 = icmp eq i64 %818, %820
  br i1 %821, label %824, label %822

; <label>:822:                                    ; preds = %block_.L_472a51
  %823 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %814, %struct.Memory* %MEMORY.4)
  %.pre42 = load i64, i64* %RBP.i, align 8
  %.pre43 = load i32, i32* %EAX.i761.pre-phi, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:824:                                    ; preds = %block_.L_472a51
  %825 = srem i64 %817, %815
  %826 = and i64 %818, 4294967295
  store i64 %826, i64* %RAX.i794, align 8
  %827 = and i64 %825, 4294967295
  store i64 %827, i64* %RDX.i756, align 8
  store i8 0, i8* %19, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %35, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %828 = trunc i64 %818 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %824, %822
  %829 = phi i64 [ %.pre44, %822 ], [ %814, %824 ]
  %830 = phi i32 [ %.pre43, %822 ], [ %828, %824 ]
  %831 = phi i64 [ %.pre42, %822 ], [ %781, %824 ]
  %832 = phi %struct.Memory* [ %823, %822 ], [ %MEMORY.4, %824 ]
  %833 = add i64 %831, -60
  %834 = add i64 %829, 3
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  store i32 %830, i32* %835, align 4
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_472a6c

block_.L_472a6c:                                  ; preds = %routine_idivl__ecx.exit, %routine_idivl__esi.exit
  %836 = phi i64 [ %.pre45, %routine_idivl__ecx.exit ], [ %673, %routine_idivl__esi.exit ]
  %MEMORY.8 = phi %struct.Memory* [ %832, %routine_idivl__ecx.exit ], [ %668, %routine_idivl__esi.exit ]
  %837 = add i64 %836, 5
  store i64 %837, i64* %3, align 8
  br label %block_.L_472a71

block_.L_472a71:                                  ; preds = %block_.L_472a6c, %block_472960
  %storemerge14 = phi i64 [ %514, %block_472960 ], [ %837, %block_.L_472a6c ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.4, %block_472960 ], [ %MEMORY.8, %block_.L_472a6c ]
  store i64 ptrtoint (%G__0x6cbd50_type* @G__0x6cbd50 to i64), i64* %RAX.i794, align 8
  %838 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %838, i64* %RCX.i759, align 8
  %839 = add i64 %838, 6480
  %840 = add i64 %storemerge14, 25
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i64*
  %842 = load i64, i64* %841, align 8
  store i64 %842, i64* %RCX.i759, align 8
  %843 = load i64, i64* %RBP.i, align 8
  %844 = add i64 %843, -104
  %845 = add i64 %storemerge14, 29
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = sext i32 %847 to i64
  store i64 %848, i64* %RDX.i756, align 8
  %849 = shl nsw i64 %848, 3
  %850 = add i64 %849, %842
  %851 = add i64 %storemerge14, 33
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i64*
  %853 = load i64, i64* %852, align 8
  %854 = add i64 %843, -32
  %855 = add i64 %storemerge14, 37
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i64*
  store i64 %853, i64* %856, align 8
  %857 = load i64, i64* %3, align 8
  %858 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %858, i64* %RCX.i759, align 8
  %859 = add i64 %858, 6504
  %860 = add i64 %857, 15
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i64*
  %862 = load i64, i64* %861, align 8
  store i64 %862, i64* %RCX.i759, align 8
  %863 = load i64, i64* %RBP.i, align 8
  %864 = add i64 %863, -104
  %865 = add i64 %857, 19
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i32*
  %867 = load i32, i32* %866, align 4
  %868 = sext i32 %867 to i64
  store i64 %868, i64* %RDX.i756, align 8
  %869 = shl nsw i64 %868, 3
  %870 = add i64 %869, %862
  %871 = add i64 %857, 23
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i64*
  %873 = load i64, i64* %872, align 8
  %874 = add i64 %863, -40
  %875 = add i64 %857, 27
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i64*
  store i64 %873, i64* %876, align 8
  %877 = load i64, i64* %3, align 8
  %878 = load i64, i64* bitcast (%G_0x6f9698_type* @G_0x6f9698 to i64*), align 8
  store i64 %878, i64* %RCX.i759, align 8
  %879 = load i64, i64* %RBP.i, align 8
  %880 = add i64 %879, -12
  %881 = add i64 %877, 12
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to i32*
  %883 = load i32, i32* %882, align 4
  %884 = sext i32 %883 to i64
  store i64 %884, i64* %RDX.i756, align 8
  %885 = shl nsw i64 %884, 3
  %886 = add i64 %885, %878
  %887 = add i64 %877, 16
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i64*
  %889 = load i64, i64* %888, align 8
  store i64 %889, i64* %RCX.i759, align 8
  %890 = add i64 %879, -104
  %891 = add i64 %877, 20
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = sext i32 %893 to i64
  store i64 %894, i64* %RDX.i756, align 8
  %895 = shl nsw i64 %894, 3
  %896 = add i64 %895, %889
  %897 = add i64 %877, 24
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %896 to i64*
  %899 = load i64, i64* %898, align 8
  store i64 %899, i64* %RCX.i759, align 8
  %900 = add i64 %879, -42
  %901 = add i64 %877, 29
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i16*
  %903 = load i16, i16* %902, align 2
  %904 = sext i16 %903 to i64
  store i64 %904, i64* %RDX.i756, align 8
  %905 = shl nsw i64 %904, 3
  %906 = add i64 %905, %899
  %907 = add i64 %877, 33
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i64*
  %909 = load i64, i64* %908, align 8
  store i64 %909, i64* %RCX.i759, align 8
  %910 = add i64 %879, -16
  %911 = add i64 %877, 37
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = sext i32 %913 to i64
  store i64 %914, i64* %RDX.i756, align 8
  %915 = shl nsw i64 %914, 2
  %916 = add i64 %915, %909
  %917 = add i64 %877, 44
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i32*
  store i32 0, i32* %918, align 4
  %919 = load i64, i64* %RBP.i, align 8
  %920 = add i64 %919, -84
  %921 = load i64, i64* %3, align 8
  %922 = add i64 %921, 4
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %920 to i32*
  %924 = load i32, i32* %923, align 4
  %925 = sext i32 %924 to i64
  %926 = shl nsw i64 %925, 4
  store i64 %926, i64* %RCX.i759, align 8
  %927 = load i64, i64* %RAX.i794, align 8
  %928 = add i64 %926, %927
  store i64 %928, i64* %RAX.i794, align 8
  %929 = icmp ult i64 %928, %927
  %930 = icmp ult i64 %928, %926
  %931 = or i1 %929, %930
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %19, align 1
  %933 = trunc i64 %928 to i32
  %934 = and i32 %933, 255
  %935 = tail call i32 @llvm.ctpop.i32(i32 %934)
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  %938 = xor i8 %937, 1
  store i8 %938, i8* %26, align 1
  %939 = xor i64 %926, %927
  %940 = xor i64 %939, %928
  %941 = lshr i64 %940, 4
  %942 = trunc i64 %941 to i8
  %943 = and i8 %942, 1
  store i8 %943, i8* %32, align 1
  %944 = icmp eq i64 %928, 0
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %35, align 1
  %946 = lshr i64 %928, 63
  %947 = trunc i64 %946 to i8
  store i8 %947, i8* %38, align 1
  %948 = lshr i64 %927, 63
  %949 = lshr i64 %925, 59
  %950 = and i64 %949, 1
  %951 = xor i64 %946, %948
  %952 = xor i64 %946, %950
  %953 = add nuw nsw i64 %951, %952
  %954 = icmp eq i64 %953, 2
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %44, align 1
  %956 = add i64 %919, -16
  %957 = add i64 %921, 15
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = sext i32 %959 to i64
  store i64 %960, i64* %RCX.i759, align 8
  %961 = shl nsw i64 %960, 2
  %962 = add i64 %961, %928
  %963 = add i64 %921, 18
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = zext i32 %965 to i64
  store i64 %966, i64* %RSI.i786, align 8
  %967 = add i64 %919, -48
  %968 = add i64 %921, 21
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i32*
  store i32 %965, i32* %969, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_472af2

block_.L_472af2:                                  ; preds = %block_.L_472d30, %block_.L_472a71
  %970 = phi i64 [ %2059, %block_.L_472d30 ], [ %.pre46, %block_.L_472a71 ]
  store i64 ptrtoint (%G__0x6cbd50_type* @G__0x6cbd50 to i64), i64* %RAX.i794, align 8
  %971 = load i64, i64* %RBP.i, align 8
  %972 = add i64 %971, -48
  %973 = add i64 %970, 13
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i32*
  %975 = load i32, i32* %974, align 4
  %976 = zext i32 %975 to i64
  store i64 %976, i64* %RCX.i759, align 8
  %977 = add i64 %971, -84
  %978 = add i64 %970, 17
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  %981 = sext i32 %980 to i64
  %982 = shl nsw i64 %981, 4
  store i64 %982, i64* %RDX.i756, align 8
  %983 = add i64 %982, ptrtoint (%G__0x6cbd50_type* @G__0x6cbd50 to i64)
  store i64 %983, i64* %RAX.i794, align 8
  %984 = icmp ult i64 %983, ptrtoint (%G__0x6cbd50_type* @G__0x6cbd50 to i64)
  %985 = icmp ult i64 %983, %982
  %986 = or i1 %984, %985
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %19, align 1
  %988 = trunc i64 %983 to i32
  %989 = and i32 %988, 248
  %990 = tail call i32 @llvm.ctpop.i32(i32 %989)
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  store i8 %993, i8* %26, align 1
  %994 = xor i64 %982, ptrtoint (%G__0x6cbd50_type* @G__0x6cbd50 to i64)
  %995 = xor i64 %994, %983
  %996 = lshr i64 %995, 4
  %997 = trunc i64 %996 to i8
  %998 = and i8 %997, 1
  store i8 %998, i8* %32, align 1
  %999 = icmp eq i64 %983, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %35, align 1
  %1001 = lshr i64 %983, 63
  %1002 = trunc i64 %1001 to i8
  store i8 %1002, i8* %38, align 1
  %1003 = lshr i64 %981, 59
  %1004 = and i64 %1003, 1
  %1005 = xor i64 %1001, lshr (i64 ptrtoint (%G__0x6cbd50_type* @G__0x6cbd50 to i64), i64 63)
  %1006 = xor i64 %1001, %1004
  %1007 = add nuw nsw i64 %1005, %1006
  %1008 = icmp eq i64 %1007, 2
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %44, align 1
  %1010 = add i64 %971, -16
  %1011 = add i64 %970, 28
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  %1014 = sext i32 %1013 to i64
  store i64 %1014, i64* %RDX.i756, align 8
  %1015 = shl nsw i64 %1014, 2
  %1016 = add i64 %1015, %983
  %1017 = add i64 %970, 31
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i32*
  %1019 = load i32, i32* %1018, align 4
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RSI.i786, align 8
  %1021 = add i64 %971, -92
  %1022 = add i64 %970, 34
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = add i32 %1024, %1019
  %1026 = zext i32 %1025 to i64
  store i64 %1026, i64* %RSI.i786, align 8
  %1027 = lshr i32 %1025, 31
  %1028 = load i32, i32* %ECX.i655, align 4
  %1029 = sub i32 %1028, %1025
  %1030 = icmp ult i32 %1028, %1025
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %19, align 1
  %1032 = and i32 %1029, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %26, align 1
  %1037 = xor i32 %1025, %1028
  %1038 = xor i32 %1037, %1029
  %1039 = lshr i32 %1038, 4
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %32, align 1
  %1042 = icmp eq i32 %1029, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %35, align 1
  %1044 = lshr i32 %1029, 31
  %1045 = trunc i32 %1044 to i8
  store i8 %1045, i8* %38, align 1
  %1046 = lshr i32 %1028, 31
  %1047 = xor i32 %1027, %1046
  %1048 = xor i32 %1044, %1046
  %1049 = add nuw nsw i32 %1048, %1047
  %1050 = icmp eq i32 %1049, 2
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %44, align 1
  %1052 = icmp ne i8 %1045, 0
  %1053 = xor i1 %1052, %1050
  %.v61 = select i1 %1053, i64 42, i64 593
  %1054 = add i64 %970, %.v61
  store i64 %1054, i64* %3, align 8
  br i1 %1053, label %block_472b1c, label %block_.L_472d43

block_472b1c:                                     ; preds = %block_.L_472af2
  store i64 ptrtoint (%G__0x6cbda0_type* @G__0x6cbda0 to i64), i64* %RAX.i794, align 8
  %1055 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1055, i64* %RCX.i759, align 8
  %1056 = add i64 %1055, 148
  %1057 = add i64 %1054, 24
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RDX.i756, align 8
  %1061 = load i64, i64* %RBP.i, align 8
  %1062 = add i64 %1061, -48
  %1063 = add i64 %1054, 27
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = add i32 %1065, %1059
  %1067 = zext i32 %1066 to i64
  store i64 %1067, i64* %RDX.i756, align 8
  %1068 = icmp ult i32 %1066, %1059
  %1069 = icmp ult i32 %1066, %1065
  %1070 = or i1 %1068, %1069
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %19, align 1
  %1072 = and i32 %1066, 255
  %1073 = tail call i32 @llvm.ctpop.i32(i32 %1072)
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  store i8 %1076, i8* %26, align 1
  %1077 = xor i32 %1065, %1059
  %1078 = xor i32 %1077, %1066
  %1079 = lshr i32 %1078, 4
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  store i8 %1081, i8* %32, align 1
  %1082 = icmp eq i32 %1066, 0
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %35, align 1
  %1084 = lshr i32 %1066, 31
  %1085 = trunc i32 %1084 to i8
  store i8 %1085, i8* %38, align 1
  %1086 = lshr i32 %1059, 31
  %1087 = lshr i32 %1065, 31
  %1088 = xor i32 %1084, %1086
  %1089 = xor i32 %1084, %1087
  %1090 = add nuw nsw i32 %1088, %1089
  %1091 = icmp eq i32 %1090, 2
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %44, align 1
  %1093 = add i64 %1061, -76
  %1094 = add i64 %1054, 30
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i32*
  store i32 %1066, i32* %1095, align 4
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -84
  %1098 = load i64, i64* %3, align 8
  %1099 = add i64 %1098, 4
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1097 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = sext i32 %1101 to i64
  %1103 = shl nsw i64 %1102, 4
  store i64 %1103, i64* %RCX.i759, align 8
  %1104 = load i64, i64* %RAX.i794, align 8
  %1105 = add i64 %1103, %1104
  store i64 %1105, i64* %RAX.i794, align 8
  %1106 = icmp ult i64 %1105, %1104
  %1107 = icmp ult i64 %1105, %1103
  %1108 = or i1 %1106, %1107
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %19, align 1
  %1110 = trunc i64 %1105 to i32
  %1111 = and i32 %1110, 255
  %1112 = tail call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  store i8 %1115, i8* %26, align 1
  %1116 = xor i64 %1103, %1104
  %1117 = xor i64 %1116, %1105
  %1118 = lshr i64 %1117, 4
  %1119 = trunc i64 %1118 to i8
  %1120 = and i8 %1119, 1
  store i8 %1120, i8* %32, align 1
  %1121 = icmp eq i64 %1105, 0
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %35, align 1
  %1123 = lshr i64 %1105, 63
  %1124 = trunc i64 %1123 to i8
  store i8 %1124, i8* %38, align 1
  %1125 = lshr i64 %1104, 63
  %1126 = lshr i64 %1102, 59
  %1127 = and i64 %1126, 1
  %1128 = xor i64 %1123, %1125
  %1129 = xor i64 %1123, %1127
  %1130 = add nuw nsw i64 %1128, %1129
  %1131 = icmp eq i64 %1130, 2
  %1132 = zext i1 %1131 to i8
  store i8 %1132, i8* %44, align 1
  %1133 = add i64 %1096, -16
  %1134 = add i64 %1098, 15
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = sext i32 %1136 to i64
  store i64 %1137, i64* %RCX.i759, align 8
  %1138 = shl nsw i64 %1137, 2
  %1139 = add i64 %1138, %1105
  %1140 = add i64 %1098, 18
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RDX.i756, align 8
  %1144 = add i64 %1096, -52
  %1145 = add i64 %1098, 21
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  store i32 %1142, i32* %1146, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_472b4f

block_.L_472b4f:                                  ; preds = %block_.L_472d1d, %block_472b1c
  %1147 = phi i64 [ %2019, %block_.L_472d1d ], [ %.pre47, %block_472b1c ]
  store i64 ptrtoint (%G__0x6cbda0_type* @G__0x6cbda0 to i64), i64* %RAX.i794, align 8
  %1148 = load i64, i64* %RBP.i, align 8
  %1149 = add i64 %1148, -52
  %1150 = add i64 %1147, 13
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = zext i32 %1152 to i64
  store i64 %1153, i64* %RCX.i759, align 8
  %1154 = add i64 %1148, -84
  %1155 = add i64 %1147, 17
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = sext i32 %1157 to i64
  %1159 = shl nsw i64 %1158, 4
  store i64 %1159, i64* %RDX.i756, align 8
  %1160 = add i64 %1159, ptrtoint (%G__0x6cbda0_type* @G__0x6cbda0 to i64)
  store i64 %1160, i64* %RAX.i794, align 8
  %1161 = icmp ult i64 %1160, ptrtoint (%G__0x6cbda0_type* @G__0x6cbda0 to i64)
  %1162 = icmp ult i64 %1160, %1159
  %1163 = or i1 %1161, %1162
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %19, align 1
  %1165 = trunc i64 %1160 to i32
  %1166 = and i32 %1165, 248
  %1167 = tail call i32 @llvm.ctpop.i32(i32 %1166)
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  %1170 = xor i8 %1169, 1
  store i8 %1170, i8* %26, align 1
  %1171 = xor i64 %1159, ptrtoint (%G__0x6cbda0_type* @G__0x6cbda0 to i64)
  %1172 = xor i64 %1171, %1160
  %1173 = lshr i64 %1172, 4
  %1174 = trunc i64 %1173 to i8
  %1175 = and i8 %1174, 1
  store i8 %1175, i8* %32, align 1
  %1176 = icmp eq i64 %1160, 0
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %35, align 1
  %1178 = lshr i64 %1160, 63
  %1179 = trunc i64 %1178 to i8
  store i8 %1179, i8* %38, align 1
  %1180 = lshr i64 %1158, 59
  %1181 = and i64 %1180, 1
  %1182 = xor i64 %1178, lshr (i64 ptrtoint (%G__0x6cbda0_type* @G__0x6cbda0 to i64), i64 63)
  %1183 = xor i64 %1178, %1181
  %1184 = add nuw nsw i64 %1182, %1183
  %1185 = icmp eq i64 %1184, 2
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %44, align 1
  %1187 = add i64 %1148, -16
  %1188 = add i64 %1147, 28
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = sext i32 %1190 to i64
  store i64 %1191, i64* %RDX.i756, align 8
  %1192 = shl nsw i64 %1191, 2
  %1193 = add i64 %1192, %1160
  %1194 = add i64 %1147, 31
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1193 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %RSI.i786, align 8
  %1198 = add i64 %1148, -88
  %1199 = add i64 %1147, 34
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = add i32 %1201, %1196
  %1203 = zext i32 %1202 to i64
  store i64 %1203, i64* %RSI.i786, align 8
  %1204 = lshr i32 %1202, 31
  %1205 = load i32, i32* %ECX.i655, align 4
  %1206 = sub i32 %1205, %1202
  %1207 = icmp ult i32 %1205, %1202
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %19, align 1
  %1209 = and i32 %1206, 255
  %1210 = tail call i32 @llvm.ctpop.i32(i32 %1209)
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = xor i8 %1212, 1
  store i8 %1213, i8* %26, align 1
  %1214 = xor i32 %1202, %1205
  %1215 = xor i32 %1214, %1206
  %1216 = lshr i32 %1215, 4
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  store i8 %1218, i8* %32, align 1
  %1219 = icmp eq i32 %1206, 0
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %35, align 1
  %1221 = lshr i32 %1206, 31
  %1222 = trunc i32 %1221 to i8
  store i8 %1222, i8* %38, align 1
  %1223 = lshr i32 %1205, 31
  %1224 = xor i32 %1204, %1223
  %1225 = xor i32 %1221, %1223
  %1226 = add nuw nsw i32 %1225, %1224
  %1227 = icmp eq i32 %1226, 2
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %44, align 1
  %1229 = icmp ne i8 %1222, 0
  %1230 = xor i1 %1229, %1227
  %.v62 = select i1 %1230, i64 42, i64 481
  %1231 = add i64 %1147, %.v62
  store i64 %1231, i64* %3, align 8
  br i1 %1230, label %block_472b79, label %block_.L_472d30

block_472b79:                                     ; preds = %block_.L_472b4f
  %1232 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1232, i64* %RAX.i794, align 8
  %1233 = add i64 %1232, 144
  %1234 = add i64 %1231, 14
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  %1236 = load i32, i32* %1235, align 4
  %1237 = zext i32 %1236 to i64
  store i64 %1237, i64* %RCX.i759, align 8
  %1238 = load i64, i64* %RBP.i, align 8
  %1239 = add i64 %1238, -52
  %1240 = add i64 %1231, 17
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  %1243 = add i32 %1242, %1236
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RCX.i759, align 8
  %1245 = icmp ult i32 %1243, %1236
  %1246 = icmp ult i32 %1243, %1242
  %1247 = or i1 %1245, %1246
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %19, align 1
  %1249 = and i32 %1243, 255
  %1250 = tail call i32 @llvm.ctpop.i32(i32 %1249)
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  store i8 %1253, i8* %26, align 1
  %1254 = xor i32 %1242, %1236
  %1255 = xor i32 %1254, %1243
  %1256 = lshr i32 %1255, 4
  %1257 = trunc i32 %1256 to i8
  %1258 = and i8 %1257, 1
  store i8 %1258, i8* %32, align 1
  %1259 = icmp eq i32 %1243, 0
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %35, align 1
  %1261 = lshr i32 %1243, 31
  %1262 = trunc i32 %1261 to i8
  store i8 %1262, i8* %38, align 1
  %1263 = lshr i32 %1236, 31
  %1264 = lshr i32 %1242, 31
  %1265 = xor i32 %1261, %1263
  %1266 = xor i32 %1261, %1264
  %1267 = add nuw nsw i32 %1265, %1266
  %1268 = icmp eq i32 %1267, 2
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %44, align 1
  %1270 = add i64 %1238, -72
  %1271 = add i64 %1231, 20
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i32*
  store i32 %1243, i32* %1272, align 4
  %1273 = load i64, i64* %RBP.i, align 8
  %1274 = add i64 %1273, -42
  %1275 = load i64, i64* %3, align 8
  %1276 = add i64 %1275, 4
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1274 to i16*
  %1278 = load i16, i16* %1277, align 2
  store i16 %1278, i16* %DX.i310, align 2
  %1279 = add i64 %1273, -104
  %1280 = add i64 %1275, 7
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to i32*
  %1282 = load i32, i32* %1281, align 4
  %1283 = zext i32 %1282 to i64
  store i64 %1283, i64* %RSI.i786, align 8
  %1284 = add i64 %1273, -52
  %1285 = add i64 %1275, 10
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  %1288 = shl i32 %1287, 2
  %1289 = zext i32 %1288 to i64
  store i64 %1289, i64* %RCX.i759, align 8
  %1290 = lshr i32 %1287, 30
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  store i8 %1292, i8* %19, align 1
  %1293 = and i32 %1288, 252
  %1294 = tail call i32 @llvm.ctpop.i32(i32 %1293)
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1298 = icmp eq i32 %1288, 0
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %35, align 1
  %1300 = lshr i32 %1287, 29
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  store i8 %1302, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %1303 = add i64 %1273, -48
  %1304 = add i64 %1275, 16
  store i64 %1304, i64* %3, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  %1307 = shl i32 %1306, 2
  %1308 = zext i32 %1307 to i64
  store i64 %1308, i64* %RDI.i299, align 8
  %1309 = lshr i32 %1306, 30
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  store i8 %1311, i8* %19, align 1
  %1312 = and i32 %1307, 252
  %1313 = tail call i32 @llvm.ctpop.i32(i32 %1312)
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  %1316 = xor i8 %1315, 1
  store i8 %1316, i8* %26, align 1
  store i8 0, i8* %32, align 1
  %1317 = icmp eq i32 %1307, 0
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %35, align 1
  %1319 = lshr i32 %1306, 29
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  store i8 %1321, i8* %38, align 1
  store i8 0, i8* %44, align 1
  %1322 = add i64 %1273, -12
  %1323 = add i64 %1275, 23
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %351, align 8
  %1327 = add i64 %1273, -60
  %1328 = add i64 %1275, 27
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i32*
  %1330 = load i32, i32* %1329, align 4
  %1331 = zext i32 %1330 to i64
  store i64 %1331, i64* %352, align 8
  %1332 = add i64 %1273, -24
  %1333 = add i64 %1275, 32
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i64*
  %1335 = load i64, i64* %1334, align 8
  store i64 %1335, i64* %62, align 1
  store double 0.000000e+00, double* %354, align 1
  %1336 = sext i16 %1278 to i64
  %1337 = and i64 %1336, 4294967295
  store i64 %1337, i64* %356, align 8
  %1338 = load i64, i64* %RBP.i, align 8
  %1339 = add i64 %1338, -152
  %1340 = add i64 %1275, 42
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i32*
  store i32 %1307, i32* %1341, align 4
  %1342 = load i32, i32* %R10D.i289, align 4
  %1343 = zext i32 %1342 to i64
  %1344 = load i64, i64* %3, align 8
  store i64 %1343, i64* %RDI.i299, align 8
  %1345 = load i32, i32* %ECX.i655, align 4
  %1346 = zext i32 %1345 to i64
  store i64 %1346, i64* %RDX.i756, align 8
  %1347 = load i64, i64* %RBP.i, align 8
  %1348 = add i64 %1347, -152
  %1349 = add i64 %1344, 11
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i32*
  %1351 = load i32, i32* %1350, align 4
  %1352 = zext i32 %1351 to i64
  store i64 %1352, i64* %RCX.i759, align 8
  %1353 = add i64 %1344, -18071
  %1354 = add i64 %1344, 16
  %1355 = load i64, i64* %6, align 8
  %1356 = add i64 %1355, -8
  %1357 = inttoptr i64 %1356 to i64*
  store i64 %1354, i64* %1357, align 8
  store i64 %1356, i64* %6, align 8
  store i64 %1353, i64* %3, align 8
  %call2_472bc2 = tail call %struct.Memory* @sub_46e520.BlockMotionSearch(%struct.State* nonnull %0, i64 %1353, %struct.Memory* %MEMORY.9)
  %1358 = load i64, i64* %RBP.i, align 8
  %1359 = add i64 %1358, -56
  %1360 = load i32, i32* %EAX.i761.pre-phi, align 4
  %1361 = load i64, i64* %3, align 8
  %1362 = add i64 %1361, 3
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1359 to i32*
  store i32 %1360, i32* %1363, align 4
  %1364 = load i64, i64* %RBP.i, align 8
  %1365 = add i64 %1364, -56
  %1366 = load i64, i64* %3, align 8
  %1367 = add i64 %1366, 3
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1365 to i32*
  %1369 = load i32, i32* %1368, align 4
  %1370 = zext i32 %1369 to i64
  store i64 %1370, i64* %RAX.i794, align 8
  %1371 = load i64, i64* bitcast (%G_0x6f9698_type* @G_0x6f9698 to i64*), align 8
  store i64 %1371, i64* %R11.i272, align 8
  %1372 = add i64 %1364, -12
  %1373 = add i64 %1366, 15
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i32*
  %1375 = load i32, i32* %1374, align 4
  %1376 = sext i32 %1375 to i64
  store i64 %1376, i64* %RBX.i560, align 8
  %1377 = shl nsw i64 %1376, 3
  %1378 = add i64 %1377, %1371
  %1379 = add i64 %1366, 19
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i64*
  %1381 = load i64, i64* %1380, align 8
  store i64 %1381, i64* %R11.i272, align 8
  %1382 = add i64 %1364, -104
  %1383 = add i64 %1366, 23
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = sext i32 %1385 to i64
  store i64 %1386, i64* %RBX.i560, align 8
  %1387 = shl nsw i64 %1386, 3
  %1388 = add i64 %1387, %1381
  %1389 = add i64 %1366, 27
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i64*
  %1391 = load i64, i64* %1390, align 8
  store i64 %1391, i64* %R11.i272, align 8
  %1392 = add i64 %1364, -42
  %1393 = add i64 %1366, 32
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i16*
  %1395 = load i16, i16* %1394, align 2
  %1396 = sext i16 %1395 to i64
  store i64 %1396, i64* %RBX.i560, align 8
  %1397 = shl nsw i64 %1396, 3
  %1398 = add i64 %1397, %1391
  %1399 = add i64 %1366, 36
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i64*
  %1401 = load i64, i64* %1400, align 8
  store i64 %1401, i64* %R11.i272, align 8
  %1402 = add i64 %1364, -16
  %1403 = add i64 %1366, 40
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1402 to i32*
  %1405 = load i32, i32* %1404, align 4
  %1406 = sext i32 %1405 to i64
  store i64 %1406, i64* %RBX.i560, align 8
  %1407 = shl nsw i64 %1406, 2
  %1408 = add i64 %1401, %1407
  %1409 = add i64 %1366, 44
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i32*
  %1411 = load i32, i32* %1410, align 4
  %1412 = add i32 %1411, %1369
  %1413 = zext i32 %1412 to i64
  store i64 %1413, i64* %RAX.i794, align 8
  %1414 = icmp ult i32 %1412, %1369
  %1415 = icmp ult i32 %1412, %1411
  %1416 = or i1 %1414, %1415
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %19, align 1
  %1418 = and i32 %1412, 255
  %1419 = tail call i32 @llvm.ctpop.i32(i32 %1418)
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  store i8 %1422, i8* %26, align 1
  %1423 = xor i32 %1411, %1369
  %1424 = xor i32 %1423, %1412
  %1425 = lshr i32 %1424, 4
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  store i8 %1427, i8* %32, align 1
  %1428 = icmp eq i32 %1412, 0
  %1429 = zext i1 %1428 to i8
  store i8 %1429, i8* %35, align 1
  %1430 = lshr i32 %1412, 31
  %1431 = trunc i32 %1430 to i8
  store i8 %1431, i8* %38, align 1
  %1432 = lshr i32 %1369, 31
  %1433 = lshr i32 %1411, 31
  %1434 = xor i32 %1430, %1432
  %1435 = xor i32 %1430, %1433
  %1436 = add nuw nsw i32 %1434, %1435
  %1437 = icmp eq i32 %1436, 2
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %44, align 1
  %1439 = add i64 %1366, 48
  store i64 %1439, i64* %3, align 8
  store i32 %1412, i32* %1410, align 4
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -68
  %1442 = load i64, i64* %3, align 8
  %1443 = add i64 %1442, 7
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1441 to i32*
  store i32 0, i32* %1444, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_472c01

block_.L_472c01:                                  ; preds = %block_.L_472d0a, %block_472b79
  %1445 = phi i64 [ %1980, %block_.L_472d0a ], [ %.pre48, %block_472b79 ]
  %1446 = load i64, i64* %RBP.i, align 8
  %1447 = add i64 %1446, -68
  %1448 = add i64 %1445, 3
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1447 to i32*
  %1450 = load i32, i32* %1449, align 4
  %1451 = zext i32 %1450 to i64
  store i64 %1451, i64* %RAX.i794, align 8
  %1452 = add i64 %1446, -100
  %1453 = add i64 %1445, 6
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1452 to i32*
  %1455 = load i32, i32* %1454, align 4
  %1456 = sub i32 %1450, %1455
  %1457 = icmp ult i32 %1450, %1455
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %19, align 1
  %1459 = and i32 %1456, 255
  %1460 = tail call i32 @llvm.ctpop.i32(i32 %1459)
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  %1463 = xor i8 %1462, 1
  store i8 %1463, i8* %26, align 1
  %1464 = xor i32 %1455, %1450
  %1465 = xor i32 %1464, %1456
  %1466 = lshr i32 %1465, 4
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  store i8 %1468, i8* %32, align 1
  %1469 = icmp eq i32 %1456, 0
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %35, align 1
  %1471 = lshr i32 %1456, 31
  %1472 = trunc i32 %1471 to i8
  store i8 %1472, i8* %38, align 1
  %1473 = lshr i32 %1450, 31
  %1474 = lshr i32 %1455, 31
  %1475 = xor i32 %1474, %1473
  %1476 = xor i32 %1471, %1473
  %1477 = add nuw nsw i32 %1476, %1475
  %1478 = icmp eq i32 %1477, 2
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %44, align 1
  %1480 = icmp ne i8 %1472, 0
  %1481 = xor i1 %1480, %1478
  %.v53 = select i1 %1481, i64 12, i64 284
  %1482 = add i64 %1445, %.v53
  store i64 %1482, i64* %3, align 8
  br i1 %1481, label %block_472c0d, label %block_.L_472d1d

block_472c0d:                                     ; preds = %block_.L_472c01
  %1483 = add i64 %1446, -64
  %1484 = add i64 %1482, 7
  store i64 %1484, i64* %3, align 8
  %1485 = inttoptr i64 %1483 to i32*
  store i32 0, i32* %1485, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_472c14

block_.L_472c14:                                  ; preds = %block_472c20, %block_472c0d
  %1486 = phi i64 [ %1950, %block_472c20 ], [ %.pre49, %block_472c0d ]
  %1487 = load i64, i64* %RBP.i, align 8
  %1488 = add i64 %1487, -64
  %1489 = add i64 %1486, 3
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1488 to i32*
  %1491 = load i32, i32* %1490, align 4
  %1492 = zext i32 %1491 to i64
  store i64 %1492, i64* %RAX.i794, align 8
  %1493 = add i64 %1487, -96
  %1494 = add i64 %1486, 6
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i32*
  %1496 = load i32, i32* %1495, align 4
  %1497 = sub i32 %1491, %1496
  %1498 = icmp ult i32 %1491, %1496
  %1499 = zext i1 %1498 to i8
  store i8 %1499, i8* %19, align 1
  %1500 = and i32 %1497, 255
  %1501 = tail call i32 @llvm.ctpop.i32(i32 %1500)
  %1502 = trunc i32 %1501 to i8
  %1503 = and i8 %1502, 1
  %1504 = xor i8 %1503, 1
  store i8 %1504, i8* %26, align 1
  %1505 = xor i32 %1496, %1491
  %1506 = xor i32 %1505, %1497
  %1507 = lshr i32 %1506, 4
  %1508 = trunc i32 %1507 to i8
  %1509 = and i8 %1508, 1
  store i8 %1509, i8* %32, align 1
  %1510 = icmp eq i32 %1497, 0
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %35, align 1
  %1512 = lshr i32 %1497, 31
  %1513 = trunc i32 %1512 to i8
  store i8 %1513, i8* %38, align 1
  %1514 = lshr i32 %1491, 31
  %1515 = lshr i32 %1496, 31
  %1516 = xor i32 %1515, %1514
  %1517 = xor i32 %1512, %1514
  %1518 = add nuw nsw i32 %1517, %1516
  %1519 = icmp eq i32 %1518, 2
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %44, align 1
  %1521 = icmp ne i8 %1513, 0
  %1522 = xor i1 %1521, %1519
  %.v54 = select i1 %1522, i64 12, i64 246
  %1523 = add i64 %1486, %.v54
  store i64 %1523, i64* %3, align 8
  br i1 %1522, label %block_472c20, label %block_.L_472d0a

block_472c20:                                     ; preds = %block_.L_472c14
  %1524 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1524, i64* %RAX.i794, align 8
  %1525 = add i64 %1524, 71928
  %1526 = add i64 %1523, 15
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1525 to i64*
  %1528 = load i64, i64* %1527, align 8
  store i64 %1528, i64* %RAX.i794, align 8
  %1529 = add i64 %1487, -52
  %1530 = add i64 %1523, 19
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1529 to i32*
  %1532 = load i32, i32* %1531, align 4
  %1533 = sext i32 %1532 to i64
  store i64 %1533, i64* %RCX.i759, align 8
  %1534 = shl nsw i64 %1533, 3
  %1535 = add i64 %1534, %1528
  %1536 = add i64 %1523, 23
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i64*
  %1538 = load i64, i64* %1537, align 8
  store i64 %1538, i64* %RAX.i794, align 8
  %1539 = add i64 %1487, -48
  %1540 = add i64 %1523, 27
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i32*
  %1542 = load i32, i32* %1541, align 4
  %1543 = sext i32 %1542 to i64
  store i64 %1543, i64* %RCX.i759, align 8
  %1544 = shl nsw i64 %1543, 3
  %1545 = add i64 %1544, %1538
  %1546 = add i64 %1523, 31
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i64*
  %1548 = load i64, i64* %1547, align 8
  store i64 %1548, i64* %RAX.i794, align 8
  %1549 = add i64 %1487, -104
  %1550 = add i64 %1523, 35
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i32*
  %1552 = load i32, i32* %1551, align 4
  %1553 = sext i32 %1552 to i64
  store i64 %1553, i64* %RCX.i759, align 8
  %1554 = shl nsw i64 %1553, 3
  %1555 = add i64 %1554, %1548
  %1556 = add i64 %1523, 39
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i64*
  %1558 = load i64, i64* %1557, align 8
  store i64 %1558, i64* %RAX.i794, align 8
  %1559 = add i64 %1487, -42
  %1560 = add i64 %1523, 44
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i16*
  %1562 = load i16, i16* %1561, align 2
  %1563 = sext i16 %1562 to i64
  store i64 %1563, i64* %RCX.i759, align 8
  %1564 = shl nsw i64 %1563, 3
  %1565 = add i64 %1564, %1558
  %1566 = add i64 %1523, 48
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i64*
  %1568 = load i64, i64* %1567, align 8
  store i64 %1568, i64* %RAX.i794, align 8
  %1569 = add i64 %1487, -12
  %1570 = add i64 %1523, 52
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = sext i32 %1572 to i64
  store i64 %1573, i64* %RCX.i759, align 8
  %1574 = shl nsw i64 %1573, 3
  %1575 = add i64 %1574, %1568
  %1576 = add i64 %1523, 56
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i64*
  %1578 = load i64, i64* %1577, align 8
  store i64 %1578, i64* %RAX.i794, align 8
  %1579 = add i64 %1523, 59
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1578 to i16*
  %1581 = load i16, i16* %1580, align 2
  store i16 %1581, i16* %DX.i310, align 2
  %1582 = add i64 %1487, -40
  %1583 = add i64 %1523, 63
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i64*
  %1585 = load i64, i64* %1584, align 8
  store i64 %1585, i64* %RAX.i794, align 8
  %1586 = add i64 %1487, -72
  %1587 = add i64 %1523, 66
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1586 to i32*
  %1589 = load i32, i32* %1588, align 4
  %1590 = zext i32 %1589 to i64
  store i64 %1590, i64* %RSI.i786, align 8
  %1591 = add i64 %1523, 69
  store i64 %1591, i64* %3, align 8
  %1592 = load i32, i32* %1490, align 4
  %1593 = add i32 %1592, %1589
  %1594 = zext i32 %1593 to i64
  store i64 %1594, i64* %RSI.i786, align 8
  %1595 = icmp ult i32 %1593, %1589
  %1596 = icmp ult i32 %1593, %1592
  %1597 = or i1 %1595, %1596
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %19, align 1
  %1599 = and i32 %1593, 255
  %1600 = tail call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  store i8 %1603, i8* %26, align 1
  %1604 = xor i32 %1592, %1589
  %1605 = xor i32 %1604, %1593
  %1606 = lshr i32 %1605, 4
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  store i8 %1608, i8* %32, align 1
  %1609 = icmp eq i32 %1593, 0
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %35, align 1
  %1611 = lshr i32 %1593, 31
  %1612 = trunc i32 %1611 to i8
  store i8 %1612, i8* %38, align 1
  %1613 = lshr i32 %1589, 31
  %1614 = lshr i32 %1592, 31
  %1615 = xor i32 %1611, %1613
  %1616 = xor i32 %1611, %1614
  %1617 = add nuw nsw i32 %1615, %1616
  %1618 = icmp eq i32 %1617, 2
  %1619 = zext i1 %1618 to i8
  store i8 %1619, i8* %44, align 1
  %1620 = sext i32 %1593 to i64
  store i64 %1620, i64* %RCX.i759, align 8
  %1621 = shl nsw i64 %1620, 3
  %1622 = add i64 %1585, %1621
  %1623 = add i64 %1523, 76
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i64*
  %1625 = load i64, i64* %1624, align 8
  store i64 %1625, i64* %RAX.i794, align 8
  %1626 = load i64, i64* %RBP.i, align 8
  %1627 = add i64 %1626, -76
  %1628 = add i64 %1523, 79
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i32*
  %1630 = load i32, i32* %1629, align 4
  %1631 = zext i32 %1630 to i64
  store i64 %1631, i64* %RSI.i786, align 8
  %1632 = add i64 %1626, -68
  %1633 = add i64 %1523, 82
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i32*
  %1635 = load i32, i32* %1634, align 4
  %1636 = add i32 %1635, %1630
  %1637 = zext i32 %1636 to i64
  store i64 %1637, i64* %RSI.i786, align 8
  %1638 = icmp ult i32 %1636, %1630
  %1639 = icmp ult i32 %1636, %1635
  %1640 = or i1 %1638, %1639
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %19, align 1
  %1642 = and i32 %1636, 255
  %1643 = tail call i32 @llvm.ctpop.i32(i32 %1642)
  %1644 = trunc i32 %1643 to i8
  %1645 = and i8 %1644, 1
  %1646 = xor i8 %1645, 1
  store i8 %1646, i8* %26, align 1
  %1647 = xor i32 %1635, %1630
  %1648 = xor i32 %1647, %1636
  %1649 = lshr i32 %1648, 4
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  store i8 %1651, i8* %32, align 1
  %1652 = icmp eq i32 %1636, 0
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %35, align 1
  %1654 = lshr i32 %1636, 31
  %1655 = trunc i32 %1654 to i8
  store i8 %1655, i8* %38, align 1
  %1656 = lshr i32 %1630, 31
  %1657 = lshr i32 %1635, 31
  %1658 = xor i32 %1654, %1656
  %1659 = xor i32 %1654, %1657
  %1660 = add nuw nsw i32 %1658, %1659
  %1661 = icmp eq i32 %1660, 2
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %44, align 1
  %1663 = sext i32 %1636 to i64
  store i64 %1663, i64* %RCX.i759, align 8
  %1664 = shl nsw i64 %1663, 3
  %1665 = add i64 %1625, %1664
  %1666 = add i64 %1523, 89
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i16**
  %1668 = load i16*, i16** %1667, align 8
  %1669 = load i16, i16* %DX.i310, align 2
  %1670 = add i64 %1523, 92
  store i64 %1670, i64* %3, align 8
  store i16 %1669, i16* %1668, align 2
  %1671 = load i64, i64* %3, align 8
  %1672 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1672, i64* %RAX.i794, align 8
  %1673 = add i64 %1672, 71928
  %1674 = add i64 %1671, 15
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1673 to i64*
  %1676 = load i64, i64* %1675, align 8
  store i64 %1676, i64* %RAX.i794, align 8
  %1677 = load i64, i64* %RBP.i, align 8
  %1678 = add i64 %1677, -52
  %1679 = add i64 %1671, 19
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  %1681 = load i32, i32* %1680, align 4
  %1682 = sext i32 %1681 to i64
  store i64 %1682, i64* %RCX.i759, align 8
  %1683 = shl nsw i64 %1682, 3
  %1684 = add i64 %1683, %1676
  %1685 = add i64 %1671, 23
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i64*
  %1687 = load i64, i64* %1686, align 8
  store i64 %1687, i64* %RAX.i794, align 8
  %1688 = add i64 %1677, -48
  %1689 = add i64 %1671, 27
  store i64 %1689, i64* %3, align 8
  %1690 = inttoptr i64 %1688 to i32*
  %1691 = load i32, i32* %1690, align 4
  %1692 = sext i32 %1691 to i64
  store i64 %1692, i64* %RCX.i759, align 8
  %1693 = shl nsw i64 %1692, 3
  %1694 = add i64 %1693, %1687
  %1695 = add i64 %1671, 31
  store i64 %1695, i64* %3, align 8
  %1696 = inttoptr i64 %1694 to i64*
  %1697 = load i64, i64* %1696, align 8
  store i64 %1697, i64* %RAX.i794, align 8
  %1698 = add i64 %1677, -104
  %1699 = add i64 %1671, 35
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to i32*
  %1701 = load i32, i32* %1700, align 4
  %1702 = sext i32 %1701 to i64
  store i64 %1702, i64* %RCX.i759, align 8
  %1703 = shl nsw i64 %1702, 3
  %1704 = add i64 %1703, %1697
  %1705 = add i64 %1671, 39
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i64*
  %1707 = load i64, i64* %1706, align 8
  store i64 %1707, i64* %RAX.i794, align 8
  %1708 = add i64 %1677, -42
  %1709 = add i64 %1671, 44
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i16*
  %1711 = load i16, i16* %1710, align 2
  %1712 = sext i16 %1711 to i64
  store i64 %1712, i64* %RCX.i759, align 8
  %1713 = shl nsw i64 %1712, 3
  %1714 = add i64 %1713, %1707
  %1715 = add i64 %1671, 48
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i64*
  %1717 = load i64, i64* %1716, align 8
  store i64 %1717, i64* %RAX.i794, align 8
  %1718 = add i64 %1677, -12
  %1719 = add i64 %1671, 52
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1718 to i32*
  %1721 = load i32, i32* %1720, align 4
  %1722 = sext i32 %1721 to i64
  store i64 %1722, i64* %RCX.i759, align 8
  %1723 = shl nsw i64 %1722, 3
  %1724 = add i64 %1723, %1717
  %1725 = add i64 %1671, 56
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1724 to i64*
  %1727 = load i64, i64* %1726, align 8
  store i64 %1727, i64* %RAX.i794, align 8
  %1728 = add i64 %1727, 2
  %1729 = add i64 %1671, 60
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i16*
  %1731 = load i16, i16* %1730, align 2
  store i16 %1731, i16* %DX.i310, align 2
  %1732 = add i64 %1677, -40
  %1733 = add i64 %1671, 64
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i64*
  %1735 = load i64, i64* %1734, align 8
  store i64 %1735, i64* %RAX.i794, align 8
  %1736 = add i64 %1677, -72
  %1737 = add i64 %1671, 67
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to i32*
  %1739 = load i32, i32* %1738, align 4
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RSI.i786, align 8
  %1741 = add i64 %1677, -64
  %1742 = add i64 %1671, 70
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = add i32 %1744, %1739
  %1746 = zext i32 %1745 to i64
  store i64 %1746, i64* %RSI.i786, align 8
  %1747 = icmp ult i32 %1745, %1739
  %1748 = icmp ult i32 %1745, %1744
  %1749 = or i1 %1747, %1748
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %19, align 1
  %1751 = and i32 %1745, 255
  %1752 = tail call i32 @llvm.ctpop.i32(i32 %1751)
  %1753 = trunc i32 %1752 to i8
  %1754 = and i8 %1753, 1
  %1755 = xor i8 %1754, 1
  store i8 %1755, i8* %26, align 1
  %1756 = xor i32 %1744, %1739
  %1757 = xor i32 %1756, %1745
  %1758 = lshr i32 %1757, 4
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  store i8 %1760, i8* %32, align 1
  %1761 = icmp eq i32 %1745, 0
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %35, align 1
  %1763 = lshr i32 %1745, 31
  %1764 = trunc i32 %1763 to i8
  store i8 %1764, i8* %38, align 1
  %1765 = lshr i32 %1739, 31
  %1766 = lshr i32 %1744, 31
  %1767 = xor i32 %1763, %1765
  %1768 = xor i32 %1763, %1766
  %1769 = add nuw nsw i32 %1767, %1768
  %1770 = icmp eq i32 %1769, 2
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %44, align 1
  %1772 = sext i32 %1745 to i64
  store i64 %1772, i64* %RCX.i759, align 8
  %1773 = shl nsw i64 %1772, 3
  %1774 = add i64 %1735, %1773
  %1775 = add i64 %1671, 77
  store i64 %1775, i64* %3, align 8
  %1776 = inttoptr i64 %1774 to i64*
  %1777 = load i64, i64* %1776, align 8
  store i64 %1777, i64* %RAX.i794, align 8
  %1778 = load i64, i64* %RBP.i, align 8
  %1779 = add i64 %1778, -76
  %1780 = add i64 %1671, 80
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1779 to i32*
  %1782 = load i32, i32* %1781, align 4
  %1783 = zext i32 %1782 to i64
  store i64 %1783, i64* %RSI.i786, align 8
  %1784 = add i64 %1778, -68
  %1785 = add i64 %1671, 83
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1784 to i32*
  %1787 = load i32, i32* %1786, align 4
  %1788 = add i32 %1787, %1782
  %1789 = zext i32 %1788 to i64
  store i64 %1789, i64* %RSI.i786, align 8
  %1790 = icmp ult i32 %1788, %1782
  %1791 = icmp ult i32 %1788, %1787
  %1792 = or i1 %1790, %1791
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %19, align 1
  %1794 = and i32 %1788, 255
  %1795 = tail call i32 @llvm.ctpop.i32(i32 %1794)
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  %1798 = xor i8 %1797, 1
  store i8 %1798, i8* %26, align 1
  %1799 = xor i32 %1787, %1782
  %1800 = xor i32 %1799, %1788
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  store i8 %1803, i8* %32, align 1
  %1804 = icmp eq i32 %1788, 0
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %35, align 1
  %1806 = lshr i32 %1788, 31
  %1807 = trunc i32 %1806 to i8
  store i8 %1807, i8* %38, align 1
  %1808 = lshr i32 %1782, 31
  %1809 = lshr i32 %1787, 31
  %1810 = xor i32 %1806, %1808
  %1811 = xor i32 %1806, %1809
  %1812 = add nuw nsw i32 %1810, %1811
  %1813 = icmp eq i32 %1812, 2
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %44, align 1
  %1815 = sext i32 %1788 to i64
  store i64 %1815, i64* %RCX.i759, align 8
  %1816 = shl nsw i64 %1815, 3
  %1817 = add i64 %1777, %1816
  %1818 = add i64 %1671, 90
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i64*
  %1820 = load i64, i64* %1819, align 8
  store i64 %1820, i64* %RAX.i794, align 8
  %1821 = add i64 %1820, 2
  %1822 = load i16, i16* %DX.i310, align 2
  %1823 = add i64 %1671, 94
  store i64 %1823, i64* %3, align 8
  %1824 = inttoptr i64 %1821 to i16*
  store i16 %1822, i16* %1824, align 2
  %1825 = load i64, i64* %RBP.i, align 8
  %1826 = add i64 %1825, -42
  %1827 = load i64, i64* %3, align 8
  %1828 = add i64 %1827, 4
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1826 to i16*
  %1830 = load i16, i16* %1829, align 2
  store i16 %1830, i16* %DX.i310, align 2
  %1831 = add i64 %1825, -32
  %1832 = add i64 %1827, 8
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i64*
  %1834 = load i64, i64* %1833, align 8
  store i64 %1834, i64* %RAX.i794, align 8
  %1835 = add i64 %1825, -72
  %1836 = add i64 %1827, 11
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i32*
  %1838 = load i32, i32* %1837, align 4
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %RSI.i786, align 8
  %1840 = add i64 %1825, -64
  %1841 = add i64 %1827, 14
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1840 to i32*
  %1843 = load i32, i32* %1842, align 4
  %1844 = add i32 %1843, %1838
  %1845 = zext i32 %1844 to i64
  store i64 %1845, i64* %RSI.i786, align 8
  %1846 = icmp ult i32 %1844, %1838
  %1847 = icmp ult i32 %1844, %1843
  %1848 = or i1 %1846, %1847
  %1849 = zext i1 %1848 to i8
  store i8 %1849, i8* %19, align 1
  %1850 = and i32 %1844, 255
  %1851 = tail call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  store i8 %1854, i8* %26, align 1
  %1855 = xor i32 %1843, %1838
  %1856 = xor i32 %1855, %1844
  %1857 = lshr i32 %1856, 4
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  store i8 %1859, i8* %32, align 1
  %1860 = icmp eq i32 %1844, 0
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %35, align 1
  %1862 = lshr i32 %1844, 31
  %1863 = trunc i32 %1862 to i8
  store i8 %1863, i8* %38, align 1
  %1864 = lshr i32 %1838, 31
  %1865 = lshr i32 %1843, 31
  %1866 = xor i32 %1862, %1864
  %1867 = xor i32 %1862, %1865
  %1868 = add nuw nsw i32 %1866, %1867
  %1869 = icmp eq i32 %1868, 2
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %44, align 1
  %1871 = sext i32 %1844 to i64
  store i64 %1871, i64* %RCX.i759, align 8
  %1872 = shl nsw i64 %1871, 3
  %1873 = add i64 %1834, %1872
  %1874 = add i64 %1827, 21
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i64*
  %1876 = load i64, i64* %1875, align 8
  store i64 %1876, i64* %RAX.i794, align 8
  %1877 = add i64 %1825, -76
  %1878 = add i64 %1827, 24
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i32*
  %1880 = load i32, i32* %1879, align 4
  %1881 = zext i32 %1880 to i64
  store i64 %1881, i64* %RSI.i786, align 8
  %1882 = add i64 %1825, -68
  %1883 = add i64 %1827, 27
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = add i32 %1885, %1880
  %1887 = zext i32 %1886 to i64
  store i64 %1887, i64* %RSI.i786, align 8
  %1888 = icmp ult i32 %1886, %1880
  %1889 = icmp ult i32 %1886, %1885
  %1890 = or i1 %1888, %1889
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %19, align 1
  %1892 = and i32 %1886, 255
  %1893 = tail call i32 @llvm.ctpop.i32(i32 %1892)
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = xor i8 %1895, 1
  store i8 %1896, i8* %26, align 1
  %1897 = xor i32 %1885, %1880
  %1898 = xor i32 %1897, %1886
  %1899 = lshr i32 %1898, 4
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  store i8 %1901, i8* %32, align 1
  %1902 = icmp eq i32 %1886, 0
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %35, align 1
  %1904 = lshr i32 %1886, 31
  %1905 = trunc i32 %1904 to i8
  store i8 %1905, i8* %38, align 1
  %1906 = lshr i32 %1880, 31
  %1907 = lshr i32 %1885, 31
  %1908 = xor i32 %1904, %1906
  %1909 = xor i32 %1904, %1907
  %1910 = add nuw nsw i32 %1908, %1909
  %1911 = icmp eq i32 %1910, 2
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %44, align 1
  %1913 = sext i32 %1886 to i64
  store i64 %1913, i64* %RCX.i759, align 8
  %1914 = shl nsw i64 %1913, 1
  %1915 = add i64 %1876, %1914
  %1916 = load i16, i16* %DX.i310, align 2
  %1917 = add i64 %1827, 34
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1915 to i16*
  store i16 %1916, i16* %1918, align 2
  %1919 = load i64, i64* %RBP.i, align 8
  %1920 = add i64 %1919, -64
  %1921 = load i64, i64* %3, align 8
  %1922 = add i64 %1921, 3
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1920 to i32*
  %1924 = load i32, i32* %1923, align 4
  %1925 = add i32 %1924, 1
  %1926 = zext i32 %1925 to i64
  store i64 %1926, i64* %RAX.i794, align 8
  %1927 = icmp eq i32 %1924, -1
  %1928 = icmp eq i32 %1925, 0
  %1929 = or i1 %1927, %1928
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %19, align 1
  %1931 = and i32 %1925, 255
  %1932 = tail call i32 @llvm.ctpop.i32(i32 %1931)
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  %1935 = xor i8 %1934, 1
  store i8 %1935, i8* %26, align 1
  %1936 = xor i32 %1925, %1924
  %1937 = lshr i32 %1936, 4
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  store i8 %1939, i8* %32, align 1
  %1940 = zext i1 %1928 to i8
  store i8 %1940, i8* %35, align 1
  %1941 = lshr i32 %1925, 31
  %1942 = trunc i32 %1941 to i8
  store i8 %1942, i8* %38, align 1
  %1943 = lshr i32 %1924, 31
  %1944 = xor i32 %1941, %1943
  %1945 = add nuw nsw i32 %1944, %1941
  %1946 = icmp eq i32 %1945, 2
  %1947 = zext i1 %1946 to i8
  store i8 %1947, i8* %44, align 1
  %1948 = add i64 %1921, 9
  store i64 %1948, i64* %3, align 8
  store i32 %1925, i32* %1923, align 4
  %1949 = load i64, i64* %3, align 8
  %1950 = add i64 %1949, -241
  store i64 %1950, i64* %3, align 8
  br label %block_.L_472c14

block_.L_472d0a:                                  ; preds = %block_.L_472c14
  %1951 = add i64 %1487, -68
  %1952 = add i64 %1523, 8
  store i64 %1952, i64* %3, align 8
  %1953 = inttoptr i64 %1951 to i32*
  %1954 = load i32, i32* %1953, align 4
  %1955 = add i32 %1954, 1
  %1956 = zext i32 %1955 to i64
  store i64 %1956, i64* %RAX.i794, align 8
  %1957 = icmp eq i32 %1954, -1
  %1958 = icmp eq i32 %1955, 0
  %1959 = or i1 %1957, %1958
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %19, align 1
  %1961 = and i32 %1955, 255
  %1962 = tail call i32 @llvm.ctpop.i32(i32 %1961)
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  store i8 %1965, i8* %26, align 1
  %1966 = xor i32 %1955, %1954
  %1967 = lshr i32 %1966, 4
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  store i8 %1969, i8* %32, align 1
  %1970 = zext i1 %1958 to i8
  store i8 %1970, i8* %35, align 1
  %1971 = lshr i32 %1955, 31
  %1972 = trunc i32 %1971 to i8
  store i8 %1972, i8* %38, align 1
  %1973 = lshr i32 %1954, 31
  %1974 = xor i32 %1971, %1973
  %1975 = add nuw nsw i32 %1974, %1971
  %1976 = icmp eq i32 %1975, 2
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %44, align 1
  %1978 = add i64 %1523, 14
  store i64 %1978, i64* %3, align 8
  store i32 %1955, i32* %1953, align 4
  %1979 = load i64, i64* %3, align 8
  %1980 = add i64 %1979, -279
  store i64 %1980, i64* %3, align 8
  br label %block_.L_472c01

block_.L_472d1d:                                  ; preds = %block_.L_472c01
  %1981 = add i64 %1446, -96
  %1982 = add i64 %1482, 8
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i32*
  %1984 = load i32, i32* %1983, align 4
  %1985 = zext i32 %1984 to i64
  store i64 %1985, i64* %RAX.i794, align 8
  %1986 = add i64 %1446, -52
  %1987 = add i64 %1482, 11
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = add i32 %1989, %1984
  %1991 = zext i32 %1990 to i64
  store i64 %1991, i64* %RAX.i794, align 8
  %1992 = icmp ult i32 %1990, %1984
  %1993 = icmp ult i32 %1990, %1989
  %1994 = or i1 %1992, %1993
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %19, align 1
  %1996 = and i32 %1990, 255
  %1997 = tail call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  store i8 %2000, i8* %26, align 1
  %2001 = xor i32 %1989, %1984
  %2002 = xor i32 %2001, %1990
  %2003 = lshr i32 %2002, 4
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %32, align 1
  %2006 = icmp eq i32 %1990, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %35, align 1
  %2008 = lshr i32 %1990, 31
  %2009 = trunc i32 %2008 to i8
  store i8 %2009, i8* %38, align 1
  %2010 = lshr i32 %1984, 31
  %2011 = lshr i32 %1989, 31
  %2012 = xor i32 %2008, %2010
  %2013 = xor i32 %2008, %2011
  %2014 = add nuw nsw i32 %2012, %2013
  %2015 = icmp eq i32 %2014, 2
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %44, align 1
  %2017 = add i64 %1482, 14
  store i64 %2017, i64* %3, align 8
  store i32 %1990, i32* %1988, align 4
  %2018 = load i64, i64* %3, align 8
  %2019 = add i64 %2018, -476
  store i64 %2019, i64* %3, align 8
  br label %block_.L_472b4f

block_.L_472d30:                                  ; preds = %block_.L_472b4f
  %2020 = load i64, i64* %RBP.i, align 8
  %2021 = add i64 %2020, -100
  %2022 = add i64 %1231, 8
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2021 to i32*
  %2024 = load i32, i32* %2023, align 4
  %2025 = zext i32 %2024 to i64
  store i64 %2025, i64* %RAX.i794, align 8
  %2026 = add i64 %2020, -48
  %2027 = add i64 %1231, 11
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  %2030 = add i32 %2029, %2024
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RAX.i794, align 8
  %2032 = icmp ult i32 %2030, %2024
  %2033 = icmp ult i32 %2030, %2029
  %2034 = or i1 %2032, %2033
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %19, align 1
  %2036 = and i32 %2030, 255
  %2037 = tail call i32 @llvm.ctpop.i32(i32 %2036)
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  store i8 %2040, i8* %26, align 1
  %2041 = xor i32 %2029, %2024
  %2042 = xor i32 %2041, %2030
  %2043 = lshr i32 %2042, 4
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  store i8 %2045, i8* %32, align 1
  %2046 = icmp eq i32 %2030, 0
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %35, align 1
  %2048 = lshr i32 %2030, 31
  %2049 = trunc i32 %2048 to i8
  store i8 %2049, i8* %38, align 1
  %2050 = lshr i32 %2024, 31
  %2051 = lshr i32 %2029, 31
  %2052 = xor i32 %2048, %2050
  %2053 = xor i32 %2048, %2051
  %2054 = add nuw nsw i32 %2052, %2053
  %2055 = icmp eq i32 %2054, 2
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %44, align 1
  %2057 = add i64 %1231, 14
  store i64 %2057, i64* %3, align 8
  store i32 %2030, i32* %2028, align 4
  %2058 = load i64, i64* %3, align 8
  %2059 = add i64 %2058, -588
  store i64 %2059, i64* %3, align 8
  br label %block_.L_472af2

block_.L_472d43:                                  ; preds = %block_.L_472af2
  %2060 = load i64, i64* %RBP.i, align 8
  %2061 = add i64 %2060, -42
  %2062 = add i64 %1054, 9
  store i64 %2062, i64* %3, align 8
  %2063 = inttoptr i64 %2061 to i16*
  %2064 = load i16, i16* %2063, align 2
  %2065 = add i16 %2064, 1
  store i16 %2065, i16* %AX.i20, align 2
  %2066 = icmp eq i16 %2064, -1
  %2067 = icmp eq i16 %2065, 0
  %2068 = or i1 %2066, %2067
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %19, align 1
  %2070 = and i16 %2065, 255
  %2071 = zext i16 %2070 to i32
  %2072 = tail call i32 @llvm.ctpop.i32(i32 %2071)
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  %2075 = xor i8 %2074, 1
  store i8 %2075, i8* %26, align 1
  %2076 = xor i16 %2065, %2064
  %2077 = lshr i16 %2076, 4
  %2078 = trunc i16 %2077 to i8
  %2079 = and i8 %2078, 1
  store i8 %2079, i8* %32, align 1
  %2080 = zext i1 %2067 to i8
  store i8 %2080, i8* %35, align 1
  %2081 = lshr i16 %2065, 15
  %2082 = trunc i16 %2081 to i8
  store i8 %2082, i8* %38, align 1
  %2083 = lshr i16 %2064, 15
  %2084 = xor i16 %2081, %2083
  %2085 = add nuw nsw i16 %2084, %2081
  %2086 = icmp eq i16 %2085, 2
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %44, align 1
  %2088 = add i64 %1054, 17
  store i64 %2088, i64* %3, align 8
  store i16 %2065, i16* %2063, align 2
  %2089 = load i64, i64* %3, align 8
  %2090 = add i64 %2089, -1059
  store i64 %2090, i64* %3, align 8
  br label %block_.L_472931

block_.L_472d59:                                  ; preds = %block_.L_472931
  %2091 = load i64, i64* %RBP.i, align 8
  %2092 = add i64 %2091, -104
  %2093 = add i64 %475, 8
  store i64 %2093, i64* %3, align 8
  %2094 = inttoptr i64 %2092 to i32*
  %2095 = load i32, i32* %2094, align 4
  %2096 = add i32 %2095, 1
  %2097 = zext i32 %2096 to i64
  store i64 %2097, i64* %RAX.i794, align 8
  %2098 = icmp eq i32 %2095, -1
  %2099 = icmp eq i32 %2096, 0
  %2100 = or i1 %2098, %2099
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %19, align 1
  %2102 = and i32 %2096, 255
  %2103 = tail call i32 @llvm.ctpop.i32(i32 %2102)
  %2104 = trunc i32 %2103 to i8
  %2105 = and i8 %2104, 1
  %2106 = xor i8 %2105, 1
  store i8 %2106, i8* %26, align 1
  %2107 = xor i32 %2096, %2095
  %2108 = lshr i32 %2107, 4
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  store i8 %2110, i8* %32, align 1
  %2111 = zext i1 %2099 to i8
  store i8 %2111, i8* %35, align 1
  %2112 = lshr i32 %2096, 31
  %2113 = trunc i32 %2112 to i8
  store i8 %2113, i8* %38, align 1
  %2114 = lshr i32 %2095, 31
  %2115 = xor i32 %2112, %2114
  %2116 = add nuw nsw i32 %2115, %2112
  %2117 = icmp eq i32 %2116, 2
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %44, align 1
  %2119 = add i64 %475, 14
  store i64 %2119, i64* %3, align 8
  store i32 %2096, i32* %2094, align 4
  %2120 = load i64, i64* %3, align 8
  %2121 = add i64 %2120, -1096
  store i64 %2121, i64* %3, align 8
  br label %block_.L_47291f

block_.L_472d6c:                                  ; preds = %block_.L_47291f
  %2122 = load i64, i64* %6, align 8
  %2123 = add i64 %2122, 152
  store i64 %2123, i64* %6, align 8
  %2124 = icmp ugt i64 %2122, -153
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %19, align 1
  %2126 = trunc i64 %2123 to i32
  %2127 = and i32 %2126, 255
  %2128 = tail call i32 @llvm.ctpop.i32(i32 %2127)
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  %2131 = xor i8 %2130, 1
  store i8 %2131, i8* %26, align 1
  %2132 = xor i64 %2122, 16
  %2133 = xor i64 %2132, %2123
  %2134 = lshr i64 %2133, 4
  %2135 = trunc i64 %2134 to i8
  %2136 = and i8 %2135, 1
  store i8 %2136, i8* %32, align 1
  %2137 = icmp eq i64 %2123, 0
  %2138 = zext i1 %2137 to i8
  store i8 %2138, i8* %35, align 1
  %2139 = lshr i64 %2123, 63
  %2140 = trunc i64 %2139 to i8
  store i8 %2140, i8* %38, align 1
  %2141 = lshr i64 %2122, 63
  %2142 = xor i64 %2139, %2141
  %2143 = add nuw nsw i64 %2142, %2139
  %2144 = icmp eq i64 %2143, 2
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %44, align 1
  %2146 = add i64 %394, 8
  store i64 %2146, i64* %3, align 8
  %2147 = add i64 %2122, 160
  %2148 = inttoptr i64 %2123 to i64*
  %2149 = load i64, i64* %2148, align 8
  store i64 %2149, i64* %RBX.i560, align 8
  store i64 %2147, i64* %6, align 8
  %2150 = add i64 %394, 9
  store i64 %2150, i64* %3, align 8
  %2151 = add i64 %2122, 168
  %2152 = inttoptr i64 %2147 to i64*
  %2153 = load i64, i64* %2152, align 8
  store i64 %2153, i64* %RBP.i, align 8
  store i64 %2151, i64* %6, align 8
  %2154 = add i64 %394, 10
  store i64 %2154, i64* %3, align 8
  %2155 = inttoptr i64 %2151 to i64*
  %2156 = load i64, i64* %2155, align 8
  store i64 %2156, i64* %3, align 8
  %2157 = add i64 %2122, 176
  store i64 %2157, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x98___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -152
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 152
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
define %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %CL, align 1
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
define %struct.Memory* @routine_movzbl__cl___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i8, i8* %CL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_472824(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_472831(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl_0x90__rcx__rdx_8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 144
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x94__rcx__rdx_8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, 148
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3758__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xc__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 632
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x214__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 532
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
define %struct.Memory* @routine_je_.L_4728fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movl_MINUS0x78__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_je_.L_4728f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 4, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4728f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_472904(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_cmpl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -108
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
define %struct.Memory* @routine_jge_.L_472d6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movw__0x0__MINUS0x2a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -42
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  store i16 0, i16* %7, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl_MINUS0x2a__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -42
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_addl_MINUS0x70__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x7247b0___rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 7489456
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
define %struct.Memory* @routine_jge_.L_472d59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__0x984__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_472973(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_472a71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x984__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_4729de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x20__rax____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movswl_MINUS0x2a__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -42
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_4729af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4729bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movl_MINUS0x84__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_472a6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_472a0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_472a1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12
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
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_472a48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_472a51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_imull__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RCX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__0x6cbd50___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cbd50_type* @G__0x6cbd50 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1950__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1968__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 6504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0x6f9698___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9698_type* @G_0x6f9698 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswq_MINUS0x2a__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -42
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
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
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
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
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x5c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jge_.L_472d43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6cbda0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cbda0_type* @G__0x6cbda0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 148
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
define %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x58__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_jge_.L_472d30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x90__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 144
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
define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movw_MINUS0x2a__rbp____dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -42
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_shll__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 2
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswl__dx___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %5 = load i16, i16* %DX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sext i16 %5 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x98__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_callq_.BlockMotionSearch(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movq_0x6f9698___r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6f9698_type* @G_0x6f9698 to i64*), align 8
  store i64 %5, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___r11__rbx_8____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %RBX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movswq_MINUS0x2a__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -42
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___r11__rbx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R11, align 8
  %5 = load i64, i64* %RBX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____r11__rbx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %R11, align 8
  %5 = load i64, i64* %RBX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -100
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
define %struct.Memory* @routine_jge_.L_472d1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_cmpl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -96
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
define %struct.Memory* @routine_jge_.L_472d0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x118f8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71928
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movswq_MINUS0x2a__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -42
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_movw___rax____dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i16, i16* %5, align 2
  store i16 %8, i16* %DX, align 2
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_addl_MINUS0x40__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_addl_MINUS0x44__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movw__dx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i16**
  %5 = load i16*, i16** %4, align 8
  %6 = load i16, i16* %DX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i16 %6, i16* %5, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_0x2__rax____dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx__0x2__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2
  %6 = load i16, i16* %DX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DX, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_472c14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_472d0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_472c01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_472d22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_jmpq_.L_472b4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_472d35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_472af2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_472d48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_MINUS0x2a__rbp____ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -42
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addw__0x1___ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = load i16, i16* %AX, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = add i16 %4, 1
  store i16 %7, i16* %AX, align 2
  %8 = icmp eq i16 %4, -1
  %9 = icmp eq i16 %7, 0
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i16 %7, 255
  %14 = zext i16 %13 to i32
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i16 %7, %4
  %21 = lshr i16 %20, 4
  %22 = trunc i16 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %9 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i16 %7, 15
  %28 = trunc i16 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i16 %4, 15
  %31 = xor i16 %27, %30
  %32 = add nuw nsw i16 %31, %27
  %33 = icmp eq i16 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax__MINUS0x2a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -42
  %6 = load i16, i16* %AX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_472931(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_472d5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_47291f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x98___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 152
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -153
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
